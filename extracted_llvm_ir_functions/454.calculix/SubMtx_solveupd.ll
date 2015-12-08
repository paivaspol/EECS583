; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveupd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtx_solveupd(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"\0A fatal error in SubMtx_solveupd(%p,%p,%p)\0A Y must have mode SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str2 = private unnamed_addr constant [83 x i8] c"\0A fatal error in SubMtx_solveupd(%p,%p,%p)\0A X must have mode SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str3 = private unnamed_addr constant [71 x i8] c"\0A fatal error in SubMtx_solveupd(%p,%p,%p)\0A unsupported mode %d for A\0A\00", align 1
@.str4 = private unnamed_addr constant [71 x i8] c"\0A fatal error in SubMtx_solveupd(%p,%p,%p)\0A unsupported type %d for A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solveupd(%struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #0 {
entry:
  %entA.i888 = alloca double*, align 8
  %entX.i889 = alloca double*, align 8
  %entY.i890 = alloca double*, align 8
  %inc1.i891 = alloca i32, align 4
  %inc2.i892 = alloca i32, align 4
  %ncolA.i893 = alloca i32, align 4
  %ncolX.i894 = alloca i32, align 4
  %ncolY.i895 = alloca i32, align 4
  %nentA.i896 = alloca i32, align 4
  %nrowA.i897 = alloca i32, align 4
  %nrowX.i898 = alloca i32, align 4
  %nrowY.i899 = alloca i32, align 4
  %colindA.i900 = alloca i32*, align 8
  %indices.i901 = alloca i32*, align 8
  %rowindA.i902 = alloca i32*, align 8
  %sizes.i903 = alloca i32*, align 8
  %entA.i744 = alloca double*, align 8
  %entX.i745 = alloca double*, align 8
  %entY.i746 = alloca double*, align 8
  %inc1.i747 = alloca i32, align 4
  %inc2.i748 = alloca i32, align 4
  %ncolA.i749 = alloca i32, align 4
  %ncolX.i750 = alloca i32, align 4
  %ncolY.i751 = alloca i32, align 4
  %nentA.i752 = alloca i32, align 4
  %nrowA.i753 = alloca i32, align 4
  %nrowX.i754 = alloca i32, align 4
  %nrowY.i755 = alloca i32, align 4
  %colindA.i756 = alloca i32*, align 8
  %indices.i757 = alloca i32*, align 8
  %rowindA.i758 = alloca i32*, align 8
  %sizes.i759 = alloca i32*, align 8
  %entA.i455 = alloca double*, align 8
  %entX.i456 = alloca double*, align 8
  %entY.i457 = alloca double*, align 8
  %inc1.i458 = alloca i32, align 4
  %inc2.i459 = alloca i32, align 4
  %ncolA.i460 = alloca i32, align 4
  %ncolX.i461 = alloca i32, align 4
  %ncolY.i462 = alloca i32, align 4
  %nrowA.i463 = alloca i32, align 4
  %nrowX.i464 = alloca i32, align 4
  %nrowY.i465 = alloca i32, align 4
  %colindA.i466 = alloca i32*, align 8
  %rowindA.i467 = alloca i32*, align 8
  %entA.i303 = alloca double*, align 8
  %entX.i304 = alloca double*, align 8
  %entY.i305 = alloca double*, align 8
  %inc1.i306 = alloca i32, align 4
  %inc2.i307 = alloca i32, align 4
  %ncolA.i308 = alloca i32, align 4
  %ncolX.i309 = alloca i32, align 4
  %ncolY.i310 = alloca i32, align 4
  %nrowA.i311 = alloca i32, align 4
  %nrowX.i312 = alloca i32, align 4
  %nrowY.i313 = alloca i32, align 4
  %colindA.i314 = alloca i32*, align 8
  %rowindA.i315 = alloca i32*, align 8
  %entA.i230 = alloca double*, align 8
  %entX.i231 = alloca double*, align 8
  %entY.i232 = alloca double*, align 8
  %inc1.i233 = alloca i32, align 4
  %inc2.i234 = alloca i32, align 4
  %ncolA.i235 = alloca i32, align 4
  %ncolX.i236 = alloca i32, align 4
  %ncolY.i237 = alloca i32, align 4
  %nentA.i238 = alloca i32, align 4
  %nrowA.i239 = alloca i32, align 4
  %nrowX.i240 = alloca i32, align 4
  %nrowY.i241 = alloca i32, align 4
  %colindA.i242 = alloca i32*, align 8
  %indices.i243 = alloca i32*, align 8
  %rowindA.i244 = alloca i32*, align 8
  %sizes.i245 = alloca i32*, align 8
  %entA.i164 = alloca double*, align 8
  %entX.i165 = alloca double*, align 8
  %entY.i166 = alloca double*, align 8
  %inc1.i167 = alloca i32, align 4
  %inc2.i168 = alloca i32, align 4
  %ncolA.i169 = alloca i32, align 4
  %ncolX.i170 = alloca i32, align 4
  %ncolY.i171 = alloca i32, align 4
  %nentA.i = alloca i32, align 4
  %nrowA.i172 = alloca i32, align 4
  %nrowX.i173 = alloca i32, align 4
  %nrowY.i174 = alloca i32, align 4
  %colindA.i175 = alloca i32*, align 8
  %indices.i = alloca i32*, align 8
  %rowindA.i176 = alloca i32*, align 8
  %sizes.i = alloca i32*, align 8
  %entA.i87 = alloca double*, align 8
  %entX.i88 = alloca double*, align 8
  %entY.i89 = alloca double*, align 8
  %inc1.i90 = alloca i32, align 4
  %inc2.i91 = alloca i32, align 4
  %ncolA.i92 = alloca i32, align 4
  %ncolX.i93 = alloca i32, align 4
  %ncolY.i94 = alloca i32, align 4
  %nrowA.i95 = alloca i32, align 4
  %nrowX.i96 = alloca i32, align 4
  %nrowY.i97 = alloca i32, align 4
  %colindA.i98 = alloca i32*, align 8
  %rowindA.i99 = alloca i32*, align 8
  %entA.i = alloca double*, align 8
  %entX.i = alloca double*, align 8
  %entY.i = alloca double*, align 8
  %inc1.i = alloca i32, align 4
  %inc2.i = alloca i32, align 4
  %ncolA.i = alloca i32, align 4
  %ncolX.i = alloca i32, align 4
  %ncolY.i = alloca i32, align 4
  %nrowA.i = alloca i32, align 4
  %nrowX.i = alloca i32, align 4
  %nrowY.i = alloca i32, align 4
  %colindA.i = alloca i32*, align 8
  %rowindA.i = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtxY, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxA, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._SubMtx* %mtxX, null
  %or.cond86 = or i1 %or.cond, %cmp3
  br i1 %or.cond86, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._SubMtx* %mtxY, i64 0, i32 1
  %1 = load i32* %mode, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %mode8 = getelementptr inbounds %struct._SubMtx* %mtxX, i64 0, i32 1
  %3 = load i32* %mode8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([83 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %5 = load i32* %type, align 4, !tbaa !3
  switch i32 %5, label %sw.default31 [
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
  %12 = bitcast i32* %ncolA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #4
  %13 = bitcast i32* %ncolX.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #4
  %14 = bitcast i32* %ncolY.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #4
  %15 = bitcast i32* %nrowA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #4
  %16 = bitcast i32* %nrowX.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #4
  %17 = bitcast i32* %nrowY.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #4
  %18 = bitcast i32** %colindA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #4
  %19 = bitcast i32** %rowindA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i, i32* %ncolY.i, i32* %inc1.i, i32* %inc2.i, double** %entY.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i, i32* %ncolX.i, i32* %inc1.i, i32* %inc2.i, double** %entX.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, i32* %ncolA.i, i32* %inc1.i, i32* %inc2.i, double** %entA.i) #5
  %20 = load double** %entX.i, align 8, !tbaa !0
  %21 = load double** %entY.i, align 8, !tbaa !0
  %22 = load i32* %ncolA.i, align 4, !tbaa !3
  %23 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %22, %23
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb14
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i, i32** %colindA.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb14
  store i32* null, i32** %colindA.i, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %24 = load i32* %nrowA.i, align 4, !tbaa !3
  %25 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %24, %25
  br i1 %cmp1.i, label %if.else3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i, i32** %rowindA.i) #5
  br label %for.cond.preheader.i

if.else3.i:                                       ; preds = %if.end.i
  store i32* null, i32** %rowindA.i, align 8, !tbaa !0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else3.i, %if.then2.i
  %26 = load i32* %ncolX.i, align 4, !tbaa !3
  %sub1460.i = add nsw i32 %26, -2
  %cmp51461.i = icmp sgt i32 %sub1460.i, 0
  br i1 %cmp51461.i, label %for.body.lr.ph.i, label %for.end329.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %.pre1540.i = load i32* %nrowX.i, align 4, !tbaa !3
  %.pre1541.i = load i32* %nrowY.i, align 4, !tbaa !3
  %.pre1542.i = load double** %entA.i, align 8, !tbaa !0
  %.pre1543.i = load i32* %ncolA.i, align 4, !tbaa !3
  %idx.ext.i = sext i32 %.pre1540.i to i64
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1
  %idx.ext8.i = sext i32 %.pre1541.i to i64
  %add.ptr9.sum.i = shl nsw i64 %idx.ext8.i, 1
  %sub131434.i = add nsw i32 %.pre1543.i, -2
  %cmp141435.i = icmp sgt i32 %sub131434.i, 0
  %cmp20.i = icmp eq i32 %.pre1543.i, %.pre1540.i
  %idxprom157.i = sext i32 %sub131434.i to i64
  %add163.i = add nsw i32 %.pre1543.i, -1
  %cmp1941454.i = icmp sgt i32 %.pre1541.i, 0
  %idxprom182.i = sext i32 %add163.i to i64
  %add.ptr7.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i
  %add.ptr11.sum.i = add i64 %add.ptr9.sum.i, %idx.ext8.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end322.i, %for.body.lr.ph.i
  %jcolX.01472.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add328.i, %if.end322.i ]
  %colY0.01465.i = phi double* [ %21, %for.body.lr.ph.i ], [ %add.ptr326.i, %if.end322.i ]
  %colX0.01462.i = phi double* [ %20, %for.body.lr.ph.i ], [ %add.ptr324.i, %if.end322.i ]
  br i1 %cmp141435.i, label %for.body15.lr.ph.i, label %for.end149.i

for.body15.lr.ph.i:                               ; preds = %for.body.i
  %.pre1544.i = load i32* %nrowA.i, align 4, !tbaa !3
  %idx.ext16.i = sext i32 %.pre1544.i to i64
  %add.ptr17.sum.i = shl nsw i64 %idx.ext16.i, 1
  %cmp71.i = icmp eq i32 %.pre1541.i, %.pre1544.i
  %cmp741431.i = icmp sgt i32 %.pre1544.i, 0
  %add.ptr19.sum.i = add i64 %add.ptr17.sum.i, %idx.ext16.i
  br label %for.body15.i

for.body15.i:                                     ; preds = %if.end144.i, %for.body15.lr.ph.i
  %indvars.iv1522.i = phi i64 [ 0, %for.body15.lr.ph.i ], [ %indvars.iv.next1523.i, %if.end144.i ]
  %icolA.01440.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %add148.i, %if.end144.i ]
  %colA0.01436.i = phi double* [ %.pre1542.i, %for.body15.lr.ph.i ], [ %add.ptr146.i, %if.end144.i ]
  br i1 %cmp20.i, label %if.then21.i, label %if.else43.i

if.then21.i:                                      ; preds = %for.body15.i
  %27 = add nsw i64 %indvars.iv1522.i, 1
  %28 = add nsw i64 %indvars.iv1522.i, 2
  %29 = trunc i64 %28 to i32
  %30 = trunc i64 %27 to i32
  br label %if.end70.i

if.else43.i:                                      ; preds = %for.body15.i
  %31 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx45.i = getelementptr inbounds i32* %31, i64 %indvars.iv1522.i
  %32 = load i32* %arrayidx45.i, align 4, !tbaa !3
  %idxprom46.i = sext i32 %32 to i64
  %33 = add nsw i64 %indvars.iv1522.i, 1
  %arrayidx54.i = getelementptr inbounds i32* %31, i64 %33
  %34 = load i32* %arrayidx54.i, align 4, !tbaa !3
  %35 = add nsw i64 %indvars.iv1522.i, 2
  %arrayidx63.i = getelementptr inbounds i32* %31, i64 %35
  %36 = load i32* %arrayidx63.i, align 4, !tbaa !3
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else43.i, %if.then21.i
  %add34.sink.i = phi i32 [ %29, %if.then21.i ], [ %36, %if.else43.i ]
  %idxprom.pn.i = phi i64 [ %indvars.iv1522.i, %if.then21.i ], [ %idxprom46.i, %if.else43.i ]
  %idxprom26.pn.in.i = phi i32 [ %30, %if.then21.i ], [ %34, %if.else43.i ]
  %idxprom26.pn.i = sext i32 %idxprom26.pn.in.i to i64
  %idxprom35.i = sext i32 %add34.sink.i to i64
  %add.ptr7.sum1354.pn.i = add i64 %idxprom35.i, %add.ptr.sum.i
  %add.ptr.sum1353.pn.i = add i64 %idxprom35.i, %idx.ext.i
  %add.ptr7.sum1352.pn.i = add i64 %idxprom26.pn.i, %add.ptr.sum.i
  %add.ptr.sum1351.pn.i = add i64 %idxprom26.pn.i, %idx.ext.i
  %add.ptr7.sum1350.pn.i = add i64 %idxprom.pn.i, %add.ptr.sum.i
  %add.ptr.sum1349.pn.i = add i64 %idxprom.pn.i, %idx.ext.i
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
  %37 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body108.i

for.body75.i:                                     ; preds = %for.cond73.preheader.i, %for.body75.i
  %indvars.iv1518.i = phi i64 [ %indvars.iv.next1519.i, %for.body75.i ], [ 0, %for.cond73.preheader.i ]
  %arrayidx77.i = getelementptr inbounds double* %colA0.01436.i, i64 %indvars.iv1518.i
  %38 = load double* %arrayidx77.i, align 8, !tbaa !4
  %add.ptr17.sum1345.i = add i64 %indvars.iv1518.i, %idx.ext16.i
  %arrayidx79.i = getelementptr inbounds double* %colA0.01436.i, i64 %add.ptr17.sum1345.i
  %39 = load double* %arrayidx79.i, align 8, !tbaa !4
  %add.ptr19.sum1346.i = add i64 %indvars.iv1518.i, %add.ptr17.sum.i
  %arrayidx81.i = getelementptr inbounds double* %colA0.01436.i, i64 %add.ptr19.sum1346.i
  %40 = load double* %arrayidx81.i, align 8, !tbaa !4
  %mul.i = fmul double %x00.0.i, %38
  %mul82.i = fmul double %x10.0.i, %39
  %add83.i = fadd double %mul.i, %mul82.i
  %mul84.i = fmul double %x20.0.i, %40
  %add85.i = fadd double %add83.i, %mul84.i
  %arrayidx87.i = getelementptr inbounds double* %colY0.01465.i, i64 %indvars.iv1518.i
  %41 = load double* %arrayidx87.i, align 8, !tbaa !4
  %sub88.i = fsub double %41, %add85.i
  store double %sub88.i, double* %arrayidx87.i, align 8, !tbaa !4
  %mul89.i = fmul double %x01.0.i, %38
  %mul90.i = fmul double %x11.0.i, %39
  %add91.i = fadd double %mul89.i, %mul90.i
  %mul92.i = fmul double %x21.0.i, %40
  %add93.i = fadd double %add91.i, %mul92.i
  %add.ptr9.sum1347.i = add i64 %indvars.iv1518.i, %idx.ext8.i
  %arrayidx95.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1347.i
  %42 = load double* %arrayidx95.i, align 8, !tbaa !4
  %sub96.i = fsub double %42, %add93.i
  store double %sub96.i, double* %arrayidx95.i, align 8, !tbaa !4
  %mul97.i = fmul double %x02.0.i, %38
  %mul98.i = fmul double %x12.0.i, %39
  %add99.i = fadd double %mul97.i, %mul98.i
  %mul100.i = fmul double %x22.0.i, %40
  %add101.i = fadd double %add99.i, %mul100.i
  %add.ptr11.sum1348.i = add i64 %indvars.iv1518.i, %add.ptr9.sum.i
  %arrayidx103.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1348.i
  %43 = load double* %arrayidx103.i, align 8, !tbaa !4
  %sub104.i = fsub double %43, %add101.i
  store double %sub104.i, double* %arrayidx103.i, align 8, !tbaa !4
  %indvars.iv.next1519.i = add i64 %indvars.iv1518.i, 1
  %lftr.wideiv1137 = trunc i64 %indvars.iv.next1519.i to i32
  %exitcond1138 = icmp eq i32 %lftr.wideiv1137, %.pre1541.i
  br i1 %exitcond1138, label %if.end144.i, label %for.body75.i

for.body108.i:                                    ; preds = %for.body108.i, %for.body108.lr.ph.i
  %indvars.iv1516.i = phi i64 [ 0, %for.body108.lr.ph.i ], [ %indvars.iv.next1517.i, %for.body108.i ]
  %arrayidx110.i = getelementptr inbounds double* %colA0.01436.i, i64 %indvars.iv1516.i
  %44 = load double* %arrayidx110.i, align 8, !tbaa !4
  %add.ptr17.sum1341.i = add i64 %indvars.iv1516.i, %idx.ext16.i
  %arrayidx112.i = getelementptr inbounds double* %colA0.01436.i, i64 %add.ptr17.sum1341.i
  %45 = load double* %arrayidx112.i, align 8, !tbaa !4
  %add.ptr19.sum1342.i = add i64 %indvars.iv1516.i, %add.ptr17.sum.i
  %arrayidx114.i = getelementptr inbounds double* %colA0.01436.i, i64 %add.ptr19.sum1342.i
  %46 = load double* %arrayidx114.i, align 8, !tbaa !4
  %arrayidx116.i = getelementptr inbounds i32* %37, i64 %indvars.iv1516.i
  %47 = load i32* %arrayidx116.i, align 4, !tbaa !3
  %mul117.i = fmul double %x00.0.i, %44
  %mul118.i = fmul double %x10.0.i, %45
  %add119.i = fadd double %mul117.i, %mul118.i
  %mul120.i = fmul double %x20.0.i, %46
  %add121.i = fadd double %add119.i, %mul120.i
  %idxprom122.i = sext i32 %47 to i64
  %arrayidx123.i = getelementptr inbounds double* %colY0.01465.i, i64 %idxprom122.i
  %48 = load double* %arrayidx123.i, align 8, !tbaa !4
  %sub124.i = fsub double %48, %add121.i
  store double %sub124.i, double* %arrayidx123.i, align 8, !tbaa !4
  %mul125.i = fmul double %x01.0.i, %44
  %mul126.i = fmul double %x11.0.i, %45
  %add127.i = fadd double %mul125.i, %mul126.i
  %mul128.i = fmul double %x21.0.i, %46
  %add129.i = fadd double %add127.i, %mul128.i
  %add.ptr9.sum1343.i = add i64 %idxprom122.i, %idx.ext8.i
  %arrayidx131.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1343.i
  %49 = load double* %arrayidx131.i, align 8, !tbaa !4
  %sub132.i = fsub double %49, %add129.i
  store double %sub132.i, double* %arrayidx131.i, align 8, !tbaa !4
  %mul133.i = fmul double %x02.0.i, %44
  %mul134.i = fmul double %x12.0.i, %45
  %add135.i = fadd double %mul133.i, %mul134.i
  %mul136.i = fmul double %x22.0.i, %46
  %add137.i = fadd double %add135.i, %mul136.i
  %add.ptr11.sum1344.i = add i64 %idxprom122.i, %add.ptr9.sum.i
  %arrayidx139.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1344.i
  %50 = load double* %arrayidx139.i, align 8, !tbaa !4
  %sub140.i = fsub double %50, %add137.i
  store double %sub140.i, double* %arrayidx139.i, align 8, !tbaa !4
  %indvars.iv.next1517.i = add i64 %indvars.iv1516.i, 1
  %lftr.wideiv1135 = trunc i64 %indvars.iv.next1517.i to i32
  %exitcond1136 = icmp eq i32 %lftr.wideiv1135, %.pre1544.i
  br i1 %exitcond1136, label %if.end144.i, label %for.body108.i

if.end144.i:                                      ; preds = %for.body75.i, %for.body108.i, %for.cond106.preheader.i, %for.cond73.preheader.i
  %add.ptr146.i = getelementptr inbounds double* %colA0.01436.i, i64 %add.ptr19.sum.i
  %indvars.iv.next1523.i = add i64 %indvars.iv1522.i, 3
  %add148.i = add nsw i32 %icolA.01440.i, 3
  %51 = trunc i64 %indvars.iv.next1523.i to i32
  %cmp14.i = icmp slt i32 %51, %sub131434.i
  br i1 %cmp14.i, label %for.body15.i, label %for.end149.i

for.end149.i:                                     ; preds = %if.end144.i, %for.body.i
  %icolA.0.lcssa.i = phi i32 [ 0, %for.body.i ], [ %add148.i, %if.end144.i ]
  %colA0.0.lcssa.i = phi double* [ %.pre1542.i, %for.body.i ], [ %add.ptr146.i, %if.end144.i ]
  %cmp151.i = icmp eq i32 %icolA.0.lcssa.i, %sub131434.i
  br i1 %cmp151.i, label %if.then152.i, label %if.else253.i

if.then152.i:                                     ; preds = %for.end149.i
  %52 = load i32* %nrowA.i, align 4, !tbaa !3
  %idx.ext153.i = sext i32 %52 to i64
  br i1 %cmp20.i, label %if.end190.i, label %if.else172.i

if.else172.i:                                     ; preds = %if.then152.i
  %53 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx174.i = getelementptr inbounds i32* %53, i64 %idxprom157.i
  %54 = load i32* %arrayidx174.i, align 4, !tbaa !3
  %idxprom175.i = sext i32 %54 to i64
  %arrayidx183.i = getelementptr inbounds i32* %53, i64 %idxprom182.i
  %55 = load i32* %arrayidx183.i, align 4, !tbaa !3
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then152.i, %if.else172.i
  %add163.sink.i = phi i32 [ %55, %if.else172.i ], [ %add163.i, %if.then152.i ]
  %idxprom157.pn.i = phi i64 [ %idxprom175.i, %if.else172.i ], [ %idxprom157.i, %if.then152.i ]
  %idxprom164.i = sext i32 %add163.sink.i to i64
  %add.ptr7.sum1334.pn.i = add i64 %idxprom164.i, %add.ptr.sum.i
  %add.ptr.sum1333.pn.i = add i64 %idxprom164.i, %idx.ext.i
  %add.ptr7.sum1332.pn.i = add i64 %idxprom157.pn.i, %add.ptr.sum.i
  %add.ptr.sum1331.pn.i = add i64 %idxprom157.pn.i, %idx.ext.i
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
  %cmp191.i = icmp eq i32 %.pre1541.i, %52
  br i1 %cmp191.i, label %for.cond193.preheader.i, label %for.cond222.preheader.i

for.cond193.preheader.i:                          ; preds = %if.end190.i
  br i1 %cmp1941454.i, label %for.body195.i, label %if.end322.i

for.cond222.preheader.i:                          ; preds = %if.end190.i
  %cmp2231451.i = icmp sgt i32 %52, 0
  br i1 %cmp2231451.i, label %for.body224.lr.ph.i, label %if.end322.i

for.body224.lr.ph.i:                              ; preds = %for.cond222.preheader.i
  %56 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body224.i

for.body195.i:                                    ; preds = %for.cond193.preheader.i, %for.body195.i
  %indvars.iv1534.i = phi i64 [ %indvars.iv.next1535.i, %for.body195.i ], [ 0, %for.cond193.preheader.i ]
  %arrayidx197.i = getelementptr inbounds double* %colA0.0.lcssa.i, i64 %indvars.iv1534.i
  %57 = load double* %arrayidx197.i, align 8, !tbaa !4
  %add.ptr154.sum1328.i = add i64 %indvars.iv1534.i, %idx.ext153.i
  %arrayidx199.i = getelementptr inbounds double* %colA0.0.lcssa.i, i64 %add.ptr154.sum1328.i
  %58 = load double* %arrayidx199.i, align 8, !tbaa !4
  %mul200.i = fmul double %x00.1.i, %57
  %mul201.i = fmul double %x10.1.i, %58
  %add202.i = fadd double %mul200.i, %mul201.i
  %arrayidx204.i = getelementptr inbounds double* %colY0.01465.i, i64 %indvars.iv1534.i
  %59 = load double* %arrayidx204.i, align 8, !tbaa !4
  %sub205.i = fsub double %59, %add202.i
  store double %sub205.i, double* %arrayidx204.i, align 8, !tbaa !4
  %mul206.i = fmul double %x01.1.i, %57
  %mul207.i = fmul double %x11.1.i, %58
  %add208.i = fadd double %mul206.i, %mul207.i
  %add.ptr9.sum1329.i = add i64 %indvars.iv1534.i, %idx.ext8.i
  %arrayidx210.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1329.i
  %60 = load double* %arrayidx210.i, align 8, !tbaa !4
  %sub211.i = fsub double %60, %add208.i
  store double %sub211.i, double* %arrayidx210.i, align 8, !tbaa !4
  %mul212.i = fmul double %x02.1.i, %57
  %mul213.i = fmul double %x12.1.i, %58
  %add214.i = fadd double %mul212.i, %mul213.i
  %add.ptr11.sum1330.i = add i64 %indvars.iv1534.i, %add.ptr9.sum.i
  %arrayidx216.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1330.i
  %61 = load double* %arrayidx216.i, align 8, !tbaa !4
  %sub217.i = fsub double %61, %add214.i
  store double %sub217.i, double* %arrayidx216.i, align 8, !tbaa !4
  %indvars.iv.next1535.i = add i64 %indvars.iv1534.i, 1
  %lftr.wideiv1145 = trunc i64 %indvars.iv.next1535.i to i32
  %exitcond1146 = icmp eq i32 %lftr.wideiv1145, %.pre1541.i
  br i1 %exitcond1146, label %if.end322.i, label %for.body195.i

for.body224.i:                                    ; preds = %for.body224.i, %for.body224.lr.ph.i
  %indvars.iv1532.i = phi i64 [ 0, %for.body224.lr.ph.i ], [ %indvars.iv.next1533.i, %for.body224.i ]
  %arrayidx226.i = getelementptr inbounds double* %colA0.0.lcssa.i, i64 %indvars.iv1532.i
  %62 = load double* %arrayidx226.i, align 8, !tbaa !4
  %add.ptr154.sum.i = add i64 %indvars.iv1532.i, %idx.ext153.i
  %arrayidx228.i = getelementptr inbounds double* %colA0.0.lcssa.i, i64 %add.ptr154.sum.i
  %63 = load double* %arrayidx228.i, align 8, !tbaa !4
  %arrayidx230.i = getelementptr inbounds i32* %56, i64 %indvars.iv1532.i
  %64 = load i32* %arrayidx230.i, align 4, !tbaa !3
  %mul231.i = fmul double %x00.1.i, %62
  %mul232.i = fmul double %x10.1.i, %63
  %add233.i = fadd double %mul231.i, %mul232.i
  %idxprom234.i = sext i32 %64 to i64
  %arrayidx235.i = getelementptr inbounds double* %colY0.01465.i, i64 %idxprom234.i
  %65 = load double* %arrayidx235.i, align 8, !tbaa !4
  %sub236.i = fsub double %65, %add233.i
  store double %sub236.i, double* %arrayidx235.i, align 8, !tbaa !4
  %mul237.i = fmul double %x01.1.i, %62
  %mul238.i = fmul double %x11.1.i, %63
  %add239.i = fadd double %mul237.i, %mul238.i
  %add.ptr9.sum1326.i = add i64 %idxprom234.i, %idx.ext8.i
  %arrayidx241.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1326.i
  %66 = load double* %arrayidx241.i, align 8, !tbaa !4
  %sub242.i = fsub double %66, %add239.i
  store double %sub242.i, double* %arrayidx241.i, align 8, !tbaa !4
  %mul243.i = fmul double %x02.1.i, %62
  %mul244.i = fmul double %x12.1.i, %63
  %add245.i = fadd double %mul243.i, %mul244.i
  %add.ptr11.sum1327.i = add i64 %idxprom234.i, %add.ptr9.sum.i
  %arrayidx247.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1327.i
  %67 = load double* %arrayidx247.i, align 8, !tbaa !4
  %sub248.i = fsub double %67, %add245.i
  store double %sub248.i, double* %arrayidx247.i, align 8, !tbaa !4
  %indvars.iv.next1533.i = add i64 %indvars.iv1532.i, 1
  %lftr.wideiv1143 = trunc i64 %indvars.iv.next1533.i to i32
  %exitcond1144 = icmp eq i32 %lftr.wideiv1143, %52
  br i1 %exitcond1144, label %if.end322.i, label %for.body224.i

if.else253.i:                                     ; preds = %for.end149.i
  %cmp255.i = icmp eq i32 %icolA.0.lcssa.i, %add163.i
  br i1 %cmp255.i, label %if.then256.i, label %if.end322.i

if.then256.i:                                     ; preds = %if.else253.i
  br i1 %cmp20.i, label %if.end274.i, label %if.else265.i

if.else265.i:                                     ; preds = %if.then256.i
  %68 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx267.i = getelementptr inbounds i32* %68, i64 %idxprom182.i
  %69 = load i32* %arrayidx267.i, align 4, !tbaa !3
  %idxprom268.i = sext i32 %69 to i64
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then256.i, %if.else265.i
  %idxprom259.pn.i = phi i64 [ %idxprom268.i, %if.else265.i ], [ %idxprom182.i, %if.then256.i ]
  %add.ptr7.sum1321.pn.i = add i64 %idxprom259.pn.i, %add.ptr.sum.i
  %add.ptr.sum1320.pn.i = add i64 %idxprom259.pn.i, %idx.ext.i
  %x02.2.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1321.pn.i
  %x01.2.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1320.pn.i
  %x00.2.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom259.pn.i
  %x02.2.i = load double* %x02.2.in.i, align 8
  %x01.2.i = load double* %x01.2.in.i, align 8
  %x00.2.i = load double* %x00.2.in.i, align 8
  %70 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp275.i = icmp eq i32 %.pre1541.i, %70
  br i1 %cmp275.i, label %for.cond277.preheader.i, label %for.cond298.preheader.i

for.cond277.preheader.i:                          ; preds = %if.end274.i
  br i1 %cmp1941454.i, label %for.body279.i, label %if.end322.i

for.cond298.preheader.i:                          ; preds = %if.end274.i
  %cmp2991445.i = icmp sgt i32 %70, 0
  br i1 %cmp2991445.i, label %for.body300.lr.ph.i, label %if.end322.i

for.body300.lr.ph.i:                              ; preds = %for.cond298.preheader.i
  %71 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body300.i

for.body279.i:                                    ; preds = %for.cond277.preheader.i, %for.body279.i
  %indvars.iv1530.i = phi i64 [ %indvars.iv.next1531.i, %for.body279.i ], [ 0, %for.cond277.preheader.i ]
  %arrayidx281.i = getelementptr inbounds double* %colA0.0.lcssa.i, i64 %indvars.iv1530.i
  %72 = load double* %arrayidx281.i, align 8, !tbaa !4
  %mul282.i = fmul double %x00.2.i, %72
  %arrayidx284.i = getelementptr inbounds double* %colY0.01465.i, i64 %indvars.iv1530.i
  %73 = load double* %arrayidx284.i, align 8, !tbaa !4
  %sub285.i = fsub double %73, %mul282.i
  store double %sub285.i, double* %arrayidx284.i, align 8, !tbaa !4
  %mul286.i = fmul double %x01.2.i, %72
  %add.ptr9.sum1318.i = add i64 %indvars.iv1530.i, %idx.ext8.i
  %arrayidx288.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1318.i
  %74 = load double* %arrayidx288.i, align 8, !tbaa !4
  %sub289.i = fsub double %74, %mul286.i
  store double %sub289.i, double* %arrayidx288.i, align 8, !tbaa !4
  %mul290.i = fmul double %x02.2.i, %72
  %add.ptr11.sum1319.i = add i64 %indvars.iv1530.i, %add.ptr9.sum.i
  %arrayidx292.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1319.i
  %75 = load double* %arrayidx292.i, align 8, !tbaa !4
  %sub293.i = fsub double %75, %mul290.i
  store double %sub293.i, double* %arrayidx292.i, align 8, !tbaa !4
  %indvars.iv.next1531.i = add i64 %indvars.iv1530.i, 1
  %lftr.wideiv1141 = trunc i64 %indvars.iv.next1531.i to i32
  %exitcond1142 = icmp eq i32 %lftr.wideiv1141, %.pre1541.i
  br i1 %exitcond1142, label %if.end322.i, label %for.body279.i

for.body300.i:                                    ; preds = %for.body300.i, %for.body300.lr.ph.i
  %indvars.iv1528.i = phi i64 [ 0, %for.body300.lr.ph.i ], [ %indvars.iv.next1529.i, %for.body300.i ]
  %arrayidx302.i = getelementptr inbounds double* %colA0.0.lcssa.i, i64 %indvars.iv1528.i
  %76 = load double* %arrayidx302.i, align 8, !tbaa !4
  %arrayidx304.i = getelementptr inbounds i32* %71, i64 %indvars.iv1528.i
  %77 = load i32* %arrayidx304.i, align 4, !tbaa !3
  %mul305.i = fmul double %x00.2.i, %76
  %idxprom306.i = sext i32 %77 to i64
  %arrayidx307.i = getelementptr inbounds double* %colY0.01465.i, i64 %idxprom306.i
  %78 = load double* %arrayidx307.i, align 8, !tbaa !4
  %sub308.i = fsub double %78, %mul305.i
  store double %sub308.i, double* %arrayidx307.i, align 8, !tbaa !4
  %mul309.i = fmul double %x01.2.i, %76
  %add.ptr9.sum1316.i = add i64 %idxprom306.i, %idx.ext8.i
  %arrayidx311.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1316.i
  %79 = load double* %arrayidx311.i, align 8, !tbaa !4
  %sub312.i = fsub double %79, %mul309.i
  store double %sub312.i, double* %arrayidx311.i, align 8, !tbaa !4
  %mul313.i = fmul double %x02.2.i, %76
  %add.ptr11.sum1317.i = add i64 %idxprom306.i, %add.ptr9.sum.i
  %arrayidx315.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1317.i
  %80 = load double* %arrayidx315.i, align 8, !tbaa !4
  %sub316.i = fsub double %80, %mul313.i
  store double %sub316.i, double* %arrayidx315.i, align 8, !tbaa !4
  %indvars.iv.next1529.i = add i64 %indvars.iv1528.i, 1
  %lftr.wideiv1139 = trunc i64 %indvars.iv.next1529.i to i32
  %exitcond1140 = icmp eq i32 %lftr.wideiv1139, %70
  br i1 %exitcond1140, label %if.end322.i, label %for.body300.i

if.end322.i:                                      ; preds = %for.body195.i, %for.body224.i, %for.body279.i, %for.body300.i, %for.cond298.preheader.i, %for.cond277.preheader.i, %if.else253.i, %for.cond222.preheader.i, %for.cond193.preheader.i
  %add.ptr324.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum.i
  %add.ptr326.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum.i
  %add328.i = add nsw i32 %jcolX.01472.i, 3
  %cmp5.i = icmp slt i32 %add328.i, %sub1460.i
  br i1 %cmp5.i, label %for.body.i, label %for.end329.i

for.end329.i:                                     ; preds = %if.end322.i, %for.cond.preheader.i
  %jcolX.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add328.i, %if.end322.i ]
  %colY0.0.lcssa.i = phi double* [ %21, %for.cond.preheader.i ], [ %add.ptr326.i, %if.end322.i ]
  %colX0.0.lcssa.i = phi double* [ %20, %for.cond.preheader.i ], [ %add.ptr324.i, %if.end322.i ]
  %cmp331.i = icmp eq i32 %jcolX.0.lcssa.i, %sub1460.i
  br i1 %cmp331.i, label %if.then332.i, label %if.else592.i

if.then332.i:                                     ; preds = %for.end329.i
  %81 = load i32* %nrowX.i, align 4, !tbaa !3
  %idx.ext333.i = sext i32 %81 to i64
  %82 = load i32* %nrowY.i, align 4, !tbaa !3
  %idx.ext335.i = sext i32 %82 to i64
  %83 = load double** %entA.i, align 8, !tbaa !0
  %84 = load i32* %ncolA.i, align 4, !tbaa !3
  %sub3381389.i = add nsw i32 %84, -2
  %cmp3391390.i = icmp sgt i32 %sub3381389.i, 0
  br i1 %cmp3391390.i, label %for.body340.lr.ph.i, label %for.end451.i

for.body340.lr.ph.i:                              ; preds = %if.then332.i
  %.pre.i = load i32* %nrowA.i, align 4, !tbaa !3
  %idx.ext341.i = sext i32 %.pre.i to i64
  %add.ptr342.sum.i = shl nsw i64 %idx.ext341.i, 1
  %cmp345.i = icmp eq i32 %84, %81
  %cmp385.i = icmp eq i32 %82, %.pre.i
  %cmp3881387.i = icmp sgt i32 %.pre.i, 0
  %add.ptr344.sum.i = add i64 %add.ptr342.sum.i, %idx.ext341.i
  br label %for.body340.i

for.body340.i:                                    ; preds = %if.end446.i, %for.body340.lr.ph.i
  %indvars.iv1490.i = phi i64 [ 0, %for.body340.lr.ph.i ], [ %indvars.iv.next1491.i, %if.end446.i ]
  %icolA.11395.i = phi i32 [ 0, %for.body340.lr.ph.i ], [ %add450.i, %if.end446.i ]
  %colA0.11391.i = phi double* [ %83, %for.body340.lr.ph.i ], [ %add.ptr448.i, %if.end446.i ]
  br i1 %cmp345.i, label %if.then346.i, label %if.else363.i

if.then346.i:                                     ; preds = %for.body340.i
  %85 = add nsw i64 %indvars.iv1490.i, 1
  %86 = add nsw i64 %indvars.iv1490.i, 2
  %87 = trunc i64 %86 to i32
  %88 = trunc i64 %85 to i32
  br label %if.end384.i

if.else363.i:                                     ; preds = %for.body340.i
  %89 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx365.i = getelementptr inbounds i32* %89, i64 %indvars.iv1490.i
  %90 = load i32* %arrayidx365.i, align 4, !tbaa !3
  %idxprom366.i = sext i32 %90 to i64
  %91 = add nsw i64 %indvars.iv1490.i, 1
  %arrayidx372.i = getelementptr inbounds i32* %89, i64 %91
  %92 = load i32* %arrayidx372.i, align 4, !tbaa !3
  %93 = add nsw i64 %indvars.iv1490.i, 2
  %arrayidx379.i = getelementptr inbounds i32* %89, i64 %93
  %94 = load i32* %arrayidx379.i, align 4, !tbaa !3
  br label %if.end384.i

if.end384.i:                                      ; preds = %if.else363.i, %if.then346.i
  %add357.sink.i = phi i32 [ %87, %if.then346.i ], [ %94, %if.else363.i ]
  %idxprom347.pn.i = phi i64 [ %indvars.iv1490.i, %if.then346.i ], [ %idxprom366.i, %if.else363.i ]
  %idxprom352.pn.in.i = phi i32 [ %88, %if.then346.i ], [ %92, %if.else363.i ]
  %idxprom352.pn.i = sext i32 %idxprom352.pn.in.i to i64
  %idxprom358.i = sext i32 %add357.sink.i to i64
  %add.ptr334.sum1313.pn.i = add i64 %idxprom358.i, %idx.ext333.i
  %add.ptr334.sum1312.pn.i = add i64 %idxprom352.pn.i, %idx.ext333.i
  %add.ptr334.sum1311.pn.i = add i64 %idxprom347.pn.i, %idx.ext333.i
  %x21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr334.sum1313.pn.i
  %x20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom358.i
  %x11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr334.sum1312.pn.i
  %x10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom352.pn.i
  %x01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr334.sum1311.pn.i
  %x00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom347.pn.i
  %x21.1.i = load double* %x21.1.in.i, align 8
  %x20.1.i = load double* %x20.1.in.i, align 8
  %x11.2.i = load double* %x11.2.in.i, align 8
  %x10.2.i = load double* %x10.2.in.i, align 8
  %x01.3.i = load double* %x01.3.in.i, align 8
  %x00.3.i = load double* %x00.3.in.i, align 8
  br i1 %cmp385.i, label %for.cond387.preheader.i, label %for.cond416.preheader.i

for.cond387.preheader.i:                          ; preds = %if.end384.i
  br i1 %cmp3881387.i, label %for.body389.i, label %if.end446.i

for.cond416.preheader.i:                          ; preds = %if.end384.i
  br i1 %cmp3881387.i, label %for.body418.lr.ph.i, label %if.end446.i

for.body418.lr.ph.i:                              ; preds = %for.cond416.preheader.i
  %95 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body418.i

for.body389.i:                                    ; preds = %for.cond387.preheader.i, %for.body389.i
  %indvars.iv1486.i = phi i64 [ %indvars.iv.next1487.i, %for.body389.i ], [ 0, %for.cond387.preheader.i ]
  %arrayidx391.i = getelementptr inbounds double* %colA0.11391.i, i64 %indvars.iv1486.i
  %96 = load double* %arrayidx391.i, align 8, !tbaa !4
  %add.ptr342.sum1308.i = add i64 %indvars.iv1486.i, %idx.ext341.i
  %arrayidx393.i = getelementptr inbounds double* %colA0.11391.i, i64 %add.ptr342.sum1308.i
  %97 = load double* %arrayidx393.i, align 8, !tbaa !4
  %add.ptr344.sum1309.i = add i64 %indvars.iv1486.i, %add.ptr342.sum.i
  %arrayidx395.i = getelementptr inbounds double* %colA0.11391.i, i64 %add.ptr344.sum1309.i
  %98 = load double* %arrayidx395.i, align 8, !tbaa !4
  %mul396.i = fmul double %x00.3.i, %96
  %mul397.i = fmul double %x10.2.i, %97
  %add398.i = fadd double %mul396.i, %mul397.i
  %mul399.i = fmul double %x20.1.i, %98
  %add400.i = fadd double %add398.i, %mul399.i
  %arrayidx402.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1486.i
  %99 = load double* %arrayidx402.i, align 8, !tbaa !4
  %sub403.i = fsub double %99, %add400.i
  store double %sub403.i, double* %arrayidx402.i, align 8, !tbaa !4
  %mul404.i = fmul double %x01.3.i, %96
  %mul405.i = fmul double %x11.2.i, %97
  %add406.i = fadd double %mul404.i, %mul405.i
  %mul407.i = fmul double %x21.1.i, %98
  %add408.i = fadd double %add406.i, %mul407.i
  %add.ptr336.sum1310.i = add i64 %indvars.iv1486.i, %idx.ext335.i
  %arrayidx410.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr336.sum1310.i
  %100 = load double* %arrayidx410.i, align 8, !tbaa !4
  %sub411.i = fsub double %100, %add408.i
  store double %sub411.i, double* %arrayidx410.i, align 8, !tbaa !4
  %indvars.iv.next1487.i = add i64 %indvars.iv1486.i, 1
  %lftr.wideiv1121 = trunc i64 %indvars.iv.next1487.i to i32
  %exitcond1122 = icmp eq i32 %lftr.wideiv1121, %82
  br i1 %exitcond1122, label %if.end446.i, label %for.body389.i

for.body418.i:                                    ; preds = %for.body418.i, %for.body418.lr.ph.i
  %indvars.iv1484.i = phi i64 [ 0, %for.body418.lr.ph.i ], [ %indvars.iv.next1485.i, %for.body418.i ]
  %arrayidx420.i = getelementptr inbounds double* %colA0.11391.i, i64 %indvars.iv1484.i
  %101 = load double* %arrayidx420.i, align 8, !tbaa !4
  %add.ptr342.sum1305.i = add i64 %indvars.iv1484.i, %idx.ext341.i
  %arrayidx422.i = getelementptr inbounds double* %colA0.11391.i, i64 %add.ptr342.sum1305.i
  %102 = load double* %arrayidx422.i, align 8, !tbaa !4
  %add.ptr344.sum1306.i = add i64 %indvars.iv1484.i, %add.ptr342.sum.i
  %arrayidx424.i = getelementptr inbounds double* %colA0.11391.i, i64 %add.ptr344.sum1306.i
  %103 = load double* %arrayidx424.i, align 8, !tbaa !4
  %arrayidx426.i = getelementptr inbounds i32* %95, i64 %indvars.iv1484.i
  %104 = load i32* %arrayidx426.i, align 4, !tbaa !3
  %mul427.i = fmul double %x00.3.i, %101
  %mul428.i = fmul double %x10.2.i, %102
  %add429.i = fadd double %mul427.i, %mul428.i
  %mul430.i = fmul double %x20.1.i, %103
  %add431.i = fadd double %add429.i, %mul430.i
  %idxprom432.i = sext i32 %104 to i64
  %arrayidx433.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom432.i
  %105 = load double* %arrayidx433.i, align 8, !tbaa !4
  %sub434.i = fsub double %105, %add431.i
  store double %sub434.i, double* %arrayidx433.i, align 8, !tbaa !4
  %mul435.i = fmul double %x01.3.i, %101
  %mul436.i = fmul double %x11.2.i, %102
  %add437.i = fadd double %mul435.i, %mul436.i
  %mul438.i = fmul double %x21.1.i, %103
  %add439.i = fadd double %add437.i, %mul438.i
  %add.ptr336.sum1307.i = add i64 %idxprom432.i, %idx.ext335.i
  %arrayidx441.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr336.sum1307.i
  %106 = load double* %arrayidx441.i, align 8, !tbaa !4
  %sub442.i = fsub double %106, %add439.i
  store double %sub442.i, double* %arrayidx441.i, align 8, !tbaa !4
  %indvars.iv.next1485.i = add i64 %indvars.iv1484.i, 1
  %lftr.wideiv1119 = trunc i64 %indvars.iv.next1485.i to i32
  %exitcond1120 = icmp eq i32 %lftr.wideiv1119, %.pre.i
  br i1 %exitcond1120, label %if.end446.i, label %for.body418.i

if.end446.i:                                      ; preds = %for.body389.i, %for.body418.i, %for.cond416.preheader.i, %for.cond387.preheader.i
  %add.ptr448.i = getelementptr inbounds double* %colA0.11391.i, i64 %add.ptr344.sum.i
  %indvars.iv.next1491.i = add i64 %indvars.iv1490.i, 3
  %add450.i = add nsw i32 %icolA.11395.i, 3
  %107 = trunc i64 %indvars.iv.next1491.i to i32
  %cmp339.i = icmp slt i32 %107, %sub3381389.i
  br i1 %cmp339.i, label %for.body340.i, label %for.end451.i

for.end451.i:                                     ; preds = %if.end446.i, %if.then332.i
  %icolA.1.lcssa.i = phi i32 [ 0, %if.then332.i ], [ %add450.i, %if.end446.i ]
  %colA0.1.lcssa.i = phi double* [ %83, %if.then332.i ], [ %add.ptr448.i, %if.end446.i ]
  %cmp453.i = icmp eq i32 %icolA.1.lcssa.i, %sub3381389.i
  br i1 %cmp453.i, label %if.then454.i, label %if.else534.i

if.then454.i:                                     ; preds = %for.end451.i
  %108 = load i32* %nrowA.i, align 4, !tbaa !3
  %idx.ext455.i = sext i32 %108 to i64
  %cmp457.i = icmp eq i32 %84, %81
  %idxprom459.i = sext i32 %sub3381389.i to i64
  br i1 %cmp457.i, label %if.then458.i, label %if.else469.i

if.then458.i:                                     ; preds = %if.then454.i
  %add463.i = add nsw i32 %81, -1
  br label %if.end483.i

if.else469.i:                                     ; preds = %if.then454.i
  %109 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx471.i = getelementptr inbounds i32* %109, i64 %idxprom459.i
  %110 = load i32* %arrayidx471.i, align 4, !tbaa !3
  %idxprom472.i = sext i32 %110 to i64
  %add476.i = add nsw i32 %84, -1
  %idxprom477.i = sext i32 %add476.i to i64
  %arrayidx478.i = getelementptr inbounds i32* %109, i64 %idxprom477.i
  %111 = load i32* %arrayidx478.i, align 4, !tbaa !3
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.else469.i, %if.then458.i
  %add463.sink.i = phi i32 [ %add463.i, %if.then458.i ], [ %111, %if.else469.i ]
  %idxprom459.pn.i = phi i64 [ %idxprom459.i, %if.then458.i ], [ %idxprom472.i, %if.else469.i ]
  %idxprom464.i = sext i32 %add463.sink.i to i64
  %add.ptr334.sum1301.pn.i = add i64 %idxprom464.i, %idx.ext333.i
  %add.ptr334.sum1300.pn.i = add i64 %idxprom459.pn.i, %idx.ext333.i
  %x11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr334.sum1301.pn.i
  %x10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom464.i
  %x01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr334.sum1300.pn.i
  %x00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom459.pn.i
  %x11.3.i = load double* %x11.3.in.i, align 8
  %x10.3.i = load double* %x10.3.in.i, align 8
  %x01.4.i = load double* %x01.4.in.i, align 8
  %x00.4.i = load double* %x00.4.in.i, align 8
  %cmp484.i = icmp eq i32 %82, %108
  br i1 %cmp484.i, label %for.cond486.preheader.i, label %for.cond509.preheader.i

for.cond509.preheader.i:                          ; preds = %if.end483.i
  %cmp5101376.i = icmp sgt i32 %108, 0
  br i1 %cmp5101376.i, label %for.body511.lr.ph.i, label %sw.epilog34

for.body511.lr.ph.i:                              ; preds = %for.cond509.preheader.i
  %112 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body511.i

for.cond486.preheader.i:                          ; preds = %if.end483.i
  %cmp4871373.i = icmp sgt i32 %82, 0
  br i1 %cmp4871373.i, label %for.body488.i, label %sw.epilog34

for.body488.i:                                    ; preds = %for.cond486.preheader.i, %for.body488.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body488.i ], [ 0, %for.cond486.preheader.i ]
  %arrayidx490.i = getelementptr inbounds double* %colA0.1.lcssa.i, i64 %indvars.iv.i
  %113 = load double* %arrayidx490.i, align 8, !tbaa !4
  %add.ptr456.sum1298.i = add i64 %indvars.iv.i, %idx.ext455.i
  %arrayidx492.i = getelementptr inbounds double* %colA0.1.lcssa.i, i64 %add.ptr456.sum1298.i
  %114 = load double* %arrayidx492.i, align 8, !tbaa !4
  %mul493.i = fmul double %x00.4.i, %113
  %mul494.i = fmul double %x10.3.i, %114
  %add495.i = fadd double %mul493.i, %mul494.i
  %arrayidx497.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv.i
  %115 = load double* %arrayidx497.i, align 8, !tbaa !4
  %sub498.i = fsub double %115, %add495.i
  store double %sub498.i, double* %arrayidx497.i, align 8, !tbaa !4
  %mul499.i = fmul double %x01.4.i, %113
  %mul500.i = fmul double %x11.3.i, %114
  %add501.i = fadd double %mul499.i, %mul500.i
  %add.ptr336.sum1299.i = add i64 %indvars.iv.i, %idx.ext335.i
  %arrayidx503.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr336.sum1299.i
  %116 = load double* %arrayidx503.i, align 8, !tbaa !4
  %sub504.i = fsub double %116, %add501.i
  store double %sub504.i, double* %arrayidx503.i, align 8, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %82
  br i1 %exitcond, label %sw.epilog34, label %for.body488.i

for.body511.i:                                    ; preds = %for.body511.i, %for.body511.lr.ph.i
  %indvars.iv1478.i = phi i64 [ 0, %for.body511.lr.ph.i ], [ %indvars.iv.next1479.i, %for.body511.i ]
  %arrayidx513.i = getelementptr inbounds double* %colA0.1.lcssa.i, i64 %indvars.iv1478.i
  %117 = load double* %arrayidx513.i, align 8, !tbaa !4
  %add.ptr456.sum.i = add i64 %indvars.iv1478.i, %idx.ext455.i
  %arrayidx515.i = getelementptr inbounds double* %colA0.1.lcssa.i, i64 %add.ptr456.sum.i
  %118 = load double* %arrayidx515.i, align 8, !tbaa !4
  %arrayidx517.i = getelementptr inbounds i32* %112, i64 %indvars.iv1478.i
  %119 = load i32* %arrayidx517.i, align 4, !tbaa !3
  %mul518.i = fmul double %x00.4.i, %117
  %mul519.i = fmul double %x10.3.i, %118
  %add520.i = fadd double %mul518.i, %mul519.i
  %idxprom521.i = sext i32 %119 to i64
  %arrayidx522.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom521.i
  %120 = load double* %arrayidx522.i, align 8, !tbaa !4
  %sub523.i = fsub double %120, %add520.i
  store double %sub523.i, double* %arrayidx522.i, align 8, !tbaa !4
  %mul524.i = fmul double %x01.4.i, %117
  %mul525.i = fmul double %x11.3.i, %118
  %add526.i = fadd double %mul524.i, %mul525.i
  %add.ptr336.sum1297.i = add i64 %idxprom521.i, %idx.ext335.i
  %arrayidx528.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr336.sum1297.i
  %121 = load double* %arrayidx528.i, align 8, !tbaa !4
  %sub529.i = fsub double %121, %add526.i
  store double %sub529.i, double* %arrayidx528.i, align 8, !tbaa !4
  %indvars.iv.next1479.i = add i64 %indvars.iv1478.i, 1
  %lftr.wideiv1113 = trunc i64 %indvars.iv.next1479.i to i32
  %exitcond1114 = icmp eq i32 %lftr.wideiv1113, %108
  br i1 %exitcond1114, label %sw.epilog34, label %for.body511.i

if.else534.i:                                     ; preds = %for.end451.i
  %sub535.i = add nsw i32 %84, -1
  %cmp536.i = icmp eq i32 %icolA.1.lcssa.i, %sub535.i
  br i1 %cmp536.i, label %if.then537.i, label %sw.epilog34

if.then537.i:                                     ; preds = %if.else534.i
  %cmp538.i = icmp eq i32 %84, %81
  %idxprom540.i = sext i32 %icolA.1.lcssa.i to i64
  br i1 %cmp538.i, label %if.end551.i, label %if.else544.i

if.else544.i:                                     ; preds = %if.then537.i
  %122 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx546.i = getelementptr inbounds i32* %122, i64 %idxprom540.i
  %123 = load i32* %arrayidx546.i, align 4, !tbaa !3
  %idxprom547.i = sext i32 %123 to i64
  br label %if.end551.i

if.end551.i:                                      ; preds = %if.then537.i, %if.else544.i
  %idxprom540.pn.i = phi i64 [ %idxprom547.i, %if.else544.i ], [ %idxprom540.i, %if.then537.i ]
  %add.ptr334.sum1294.pn.i = add i64 %idxprom540.pn.i, %idx.ext333.i
  %x01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr334.sum1294.pn.i
  %x00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom540.pn.i
  %x01.5.i = load double* %x01.5.in.i, align 8
  %x00.5.i = load double* %x00.5.in.i, align 8
  %124 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp552.i = icmp eq i32 %82, %124
  br i1 %cmp552.i, label %for.cond554.preheader.i, label %for.cond571.preheader.i

for.cond571.preheader.i:                          ; preds = %if.end551.i
  %cmp5721382.i = icmp sgt i32 %124, 0
  br i1 %cmp5721382.i, label %for.body573.lr.ph.i, label %sw.epilog34

for.body573.lr.ph.i:                              ; preds = %for.cond571.preheader.i
  %125 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body573.i

for.cond554.preheader.i:                          ; preds = %if.end551.i
  %cmp5551379.i = icmp sgt i32 %82, 0
  br i1 %cmp5551379.i, label %for.body556.i, label %sw.epilog34

for.body556.i:                                    ; preds = %for.cond554.preheader.i, %for.body556.i
  %indvars.iv1480.i = phi i64 [ %indvars.iv.next1481.i, %for.body556.i ], [ 0, %for.cond554.preheader.i ]
  %arrayidx558.i = getelementptr inbounds double* %colA0.1.lcssa.i, i64 %indvars.iv1480.i
  %126 = load double* %arrayidx558.i, align 8, !tbaa !4
  %mul559.i = fmul double %x00.5.i, %126
  %arrayidx561.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1480.i
  %127 = load double* %arrayidx561.i, align 8, !tbaa !4
  %sub562.i = fsub double %127, %mul559.i
  store double %sub562.i, double* %arrayidx561.i, align 8, !tbaa !4
  %mul563.i = fmul double %x01.5.i, %126
  %add.ptr336.sum1293.i = add i64 %indvars.iv1480.i, %idx.ext335.i
  %arrayidx565.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr336.sum1293.i
  %128 = load double* %arrayidx565.i, align 8, !tbaa !4
  %sub566.i = fsub double %128, %mul563.i
  store double %sub566.i, double* %arrayidx565.i, align 8, !tbaa !4
  %indvars.iv.next1481.i = add i64 %indvars.iv1480.i, 1
  %lftr.wideiv1115 = trunc i64 %indvars.iv.next1481.i to i32
  %exitcond1116 = icmp eq i32 %lftr.wideiv1115, %82
  br i1 %exitcond1116, label %sw.epilog34, label %for.body556.i

for.body573.i:                                    ; preds = %for.body573.i, %for.body573.lr.ph.i
  %indvars.iv1482.i = phi i64 [ 0, %for.body573.lr.ph.i ], [ %indvars.iv.next1483.i, %for.body573.i ]
  %arrayidx575.i = getelementptr inbounds double* %colA0.1.lcssa.i, i64 %indvars.iv1482.i
  %129 = load double* %arrayidx575.i, align 8, !tbaa !4
  %arrayidx577.i = getelementptr inbounds i32* %125, i64 %indvars.iv1482.i
  %130 = load i32* %arrayidx577.i, align 4, !tbaa !3
  %mul578.i = fmul double %x00.5.i, %129
  %idxprom579.i = sext i32 %130 to i64
  %arrayidx580.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom579.i
  %131 = load double* %arrayidx580.i, align 8, !tbaa !4
  %sub581.i = fsub double %131, %mul578.i
  store double %sub581.i, double* %arrayidx580.i, align 8, !tbaa !4
  %mul582.i = fmul double %x01.5.i, %129
  %add.ptr336.sum.i = add i64 %idxprom579.i, %idx.ext335.i
  %arrayidx584.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr336.sum.i
  %132 = load double* %arrayidx584.i, align 8, !tbaa !4
  %sub585.i = fsub double %132, %mul582.i
  store double %sub585.i, double* %arrayidx584.i, align 8, !tbaa !4
  %indvars.iv.next1483.i = add i64 %indvars.iv1482.i, 1
  %lftr.wideiv1117 = trunc i64 %indvars.iv.next1483.i to i32
  %exitcond1118 = icmp eq i32 %lftr.wideiv1117, %124
  br i1 %exitcond1118, label %sw.epilog34, label %for.body573.i

if.else592.i:                                     ; preds = %for.end329.i
  %sub593.i = add nsw i32 %26, -1
  %cmp594.i = icmp eq i32 %jcolX.0.lcssa.i, %sub593.i
  br i1 %cmp594.i, label %if.then595.i, label %sw.epilog34

if.then595.i:                                     ; preds = %if.else592.i
  %133 = load double** %entA.i, align 8, !tbaa !0
  %134 = load i32* %ncolA.i, align 4, !tbaa !3
  %sub5971417.i = add nsw i32 %134, -2
  %cmp5981418.i = icmp sgt i32 %sub5971417.i, 0
  br i1 %cmp5981418.i, label %for.body599.lr.ph.i, label %for.end680.i

for.body599.lr.ph.i:                              ; preds = %if.then595.i
  %.pre1538.i = load i32* %nrowA.i, align 4, !tbaa !3
  %.pre1539.i = load i32* %nrowX.i, align 4, !tbaa !3
  %idx.ext600.i = sext i32 %.pre1538.i to i64
  %add.ptr601.sum.i = shl nsw i64 %idx.ext600.i, 1
  %cmp604.i = icmp eq i32 %134, %.pre1539.i
  %cmp6331414.i = icmp sgt i32 %.pre1538.i, 0
  %add.ptr603.sum.i = add i64 %add.ptr601.sum.i, %idx.ext600.i
  br label %for.body599.i

for.body599.i:                                    ; preds = %if.end675.i, %for.body599.lr.ph.i
  %indvars.iv1510.i = phi i64 [ 0, %for.body599.lr.ph.i ], [ %indvars.iv.next1511.i, %if.end675.i ]
  %icolA.21423.i = phi i32 [ 0, %for.body599.lr.ph.i ], [ %add679.i, %if.end675.i ]
  %colA0.21419.i = phi double* [ %133, %for.body599.lr.ph.i ], [ %add.ptr677.i, %if.end675.i ]
  br i1 %cmp604.i, label %if.then605.i, label %if.else614.i

if.then605.i:                                     ; preds = %for.body599.i
  %135 = add nsw i64 %indvars.iv1510.i, 1
  %136 = add nsw i64 %indvars.iv1510.i, 2
  %137 = trunc i64 %136 to i32
  %138 = trunc i64 %135 to i32
  br label %if.end629.i

if.else614.i:                                     ; preds = %for.body599.i
  %139 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx616.i = getelementptr inbounds i32* %139, i64 %indvars.iv1510.i
  %140 = load i32* %arrayidx616.i, align 4, !tbaa !3
  %idxprom617.i = sext i32 %140 to i64
  %141 = add nsw i64 %indvars.iv1510.i, 1
  %arrayidx621.i = getelementptr inbounds i32* %139, i64 %141
  %142 = load i32* %arrayidx621.i, align 4, !tbaa !3
  %143 = add nsw i64 %indvars.iv1510.i, 2
  %arrayidx626.i = getelementptr inbounds i32* %139, i64 %143
  %144 = load i32* %arrayidx626.i, align 4, !tbaa !3
  br label %if.end629.i

if.end629.i:                                      ; preds = %if.else614.i, %if.then605.i
  %idxprom606.pn.i = phi i64 [ %indvars.iv1510.i, %if.then605.i ], [ %idxprom617.i, %if.else614.i ]
  %idxprom609.pn.in.i = phi i32 [ %138, %if.then605.i ], [ %142, %if.else614.i ]
  %idxprom612.pn.in.i = phi i32 [ %137, %if.then605.i ], [ %144, %if.else614.i ]
  %idxprom612.pn.i = sext i32 %idxprom612.pn.in.i to i64
  %idxprom609.pn.i = sext i32 %idxprom609.pn.in.i to i64
  %x20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom612.pn.i
  %x10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom609.pn.i
  %x00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom606.pn.i
  %x20.2.i = load double* %x20.2.in.i, align 8
  %x10.4.i = load double* %x10.4.in.i, align 8
  %x00.6.i = load double* %x00.6.in.i, align 8
  %145 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp630.i = icmp eq i32 %145, %.pre1538.i
  br i1 %cmp630.i, label %for.cond632.preheader.i, label %for.cond653.preheader.i

for.cond632.preheader.i:                          ; preds = %if.end629.i
  br i1 %cmp6331414.i, label %for.body634.i, label %if.end675.i

for.cond653.preheader.i:                          ; preds = %if.end629.i
  br i1 %cmp6331414.i, label %for.body655.lr.ph.i, label %if.end675.i

for.body655.lr.ph.i:                              ; preds = %for.cond653.preheader.i
  %146 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body655.i

for.body634.i:                                    ; preds = %for.cond632.preheader.i, %for.body634.i
  %indvars.iv1506.i = phi i64 [ %indvars.iv.next1507.i, %for.body634.i ], [ 0, %for.cond632.preheader.i ]
  %arrayidx636.i = getelementptr inbounds double* %colA0.21419.i, i64 %indvars.iv1506.i
  %147 = load double* %arrayidx636.i, align 8, !tbaa !4
  %add.ptr601.sum1291.i = add i64 %indvars.iv1506.i, %idx.ext600.i
  %arrayidx638.i = getelementptr inbounds double* %colA0.21419.i, i64 %add.ptr601.sum1291.i
  %148 = load double* %arrayidx638.i, align 8, !tbaa !4
  %add.ptr603.sum1292.i = add i64 %indvars.iv1506.i, %add.ptr601.sum.i
  %arrayidx640.i = getelementptr inbounds double* %colA0.21419.i, i64 %add.ptr603.sum1292.i
  %149 = load double* %arrayidx640.i, align 8, !tbaa !4
  %mul641.i = fmul double %x00.6.i, %147
  %mul642.i = fmul double %x10.4.i, %148
  %add643.i = fadd double %mul641.i, %mul642.i
  %mul644.i = fmul double %x20.2.i, %149
  %add645.i = fadd double %add643.i, %mul644.i
  %arrayidx647.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1506.i
  %150 = load double* %arrayidx647.i, align 8, !tbaa !4
  %sub648.i = fsub double %150, %add645.i
  store double %sub648.i, double* %arrayidx647.i, align 8, !tbaa !4
  %indvars.iv.next1507.i = add i64 %indvars.iv1506.i, 1
  %lftr.wideiv1133 = trunc i64 %indvars.iv.next1507.i to i32
  %exitcond1134 = icmp eq i32 %lftr.wideiv1133, %.pre1538.i
  br i1 %exitcond1134, label %if.end675.i, label %for.body634.i

for.body655.i:                                    ; preds = %for.body655.i, %for.body655.lr.ph.i
  %indvars.iv1504.i = phi i64 [ 0, %for.body655.lr.ph.i ], [ %indvars.iv.next1505.i, %for.body655.i ]
  %arrayidx657.i = getelementptr inbounds double* %colA0.21419.i, i64 %indvars.iv1504.i
  %151 = load double* %arrayidx657.i, align 8, !tbaa !4
  %add.ptr601.sum1289.i = add i64 %indvars.iv1504.i, %idx.ext600.i
  %arrayidx659.i = getelementptr inbounds double* %colA0.21419.i, i64 %add.ptr601.sum1289.i
  %152 = load double* %arrayidx659.i, align 8, !tbaa !4
  %add.ptr603.sum1290.i = add i64 %indvars.iv1504.i, %add.ptr601.sum.i
  %arrayidx661.i = getelementptr inbounds double* %colA0.21419.i, i64 %add.ptr603.sum1290.i
  %153 = load double* %arrayidx661.i, align 8, !tbaa !4
  %arrayidx663.i = getelementptr inbounds i32* %146, i64 %indvars.iv1504.i
  %154 = load i32* %arrayidx663.i, align 4, !tbaa !3
  %mul664.i = fmul double %x00.6.i, %151
  %mul665.i = fmul double %x10.4.i, %152
  %add666.i = fadd double %mul664.i, %mul665.i
  %mul667.i = fmul double %x20.2.i, %153
  %add668.i = fadd double %add666.i, %mul667.i
  %idxprom669.i = sext i32 %154 to i64
  %arrayidx670.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom669.i
  %155 = load double* %arrayidx670.i, align 8, !tbaa !4
  %sub671.i = fsub double %155, %add668.i
  store double %sub671.i, double* %arrayidx670.i, align 8, !tbaa !4
  %indvars.iv.next1505.i = add i64 %indvars.iv1504.i, 1
  %lftr.wideiv1131 = trunc i64 %indvars.iv.next1505.i to i32
  %exitcond1132 = icmp eq i32 %lftr.wideiv1131, %.pre1538.i
  br i1 %exitcond1132, label %if.end675.i, label %for.body655.i

if.end675.i:                                      ; preds = %for.body634.i, %for.body655.i, %for.cond653.preheader.i, %for.cond632.preheader.i
  %add.ptr677.i = getelementptr inbounds double* %colA0.21419.i, i64 %add.ptr603.sum.i
  %indvars.iv.next1511.i = add i64 %indvars.iv1510.i, 3
  %add679.i = add nsw i32 %icolA.21423.i, 3
  %156 = trunc i64 %indvars.iv.next1511.i to i32
  %cmp598.i = icmp slt i32 %156, %sub5971417.i
  br i1 %cmp598.i, label %for.body599.i, label %for.end680.i

for.end680.i:                                     ; preds = %if.end675.i, %if.then595.i
  %icolA.2.lcssa.i = phi i32 [ 0, %if.then595.i ], [ %add679.i, %if.end675.i ]
  %colA0.2.lcssa.i = phi double* [ %133, %if.then595.i ], [ %add.ptr677.i, %if.end675.i ]
  %cmp682.i = icmp eq i32 %icolA.2.lcssa.i, %sub5971417.i
  br i1 %cmp682.i, label %if.then683.i, label %if.else742.i

if.then683.i:                                     ; preds = %for.end680.i
  %157 = load i32* %nrowA.i, align 4, !tbaa !3
  %idx.ext684.i = sext i32 %157 to i64
  %158 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp686.i = icmp eq i32 %134, %158
  %idxprom688.i = sext i32 %sub5971417.i to i64
  br i1 %cmp686.i, label %if.then687.i, label %if.else693.i

if.then687.i:                                     ; preds = %if.then683.i
  %add690.i = add nsw i32 %134, -1
  br label %if.end703.i

if.else693.i:                                     ; preds = %if.then683.i
  %159 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx695.i = getelementptr inbounds i32* %159, i64 %idxprom688.i
  %160 = load i32* %arrayidx695.i, align 4, !tbaa !3
  %idxprom696.i = sext i32 %160 to i64
  %add698.i = add nsw i32 %134, -1
  %idxprom699.i = sext i32 %add698.i to i64
  %arrayidx700.i = getelementptr inbounds i32* %159, i64 %idxprom699.i
  %161 = load i32* %arrayidx700.i, align 4, !tbaa !3
  br label %if.end703.i

if.end703.i:                                      ; preds = %if.else693.i, %if.then687.i
  %idxprom688.pn.i = phi i64 [ %idxprom688.i, %if.then687.i ], [ %idxprom696.i, %if.else693.i ]
  %idxprom691.pn.in.i = phi i32 [ %add690.i, %if.then687.i ], [ %161, %if.else693.i ]
  %idxprom691.pn.i = sext i32 %idxprom691.pn.in.i to i64
  %x10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom691.pn.i
  %x00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom688.pn.i
  %x10.5.i = load double* %x10.5.in.i, align 8
  %x00.7.i = load double* %x00.7.in.i, align 8
  %162 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp704.i = icmp eq i32 %162, %157
  %cmp7071400.i = icmp sgt i32 %157, 0
  br i1 %cmp704.i, label %for.cond706.preheader.i, label %for.cond723.preheader.i

for.cond723.preheader.i:                          ; preds = %if.end703.i
  br i1 %cmp7071400.i, label %for.body725.lr.ph.i, label %sw.epilog34

for.body725.lr.ph.i:                              ; preds = %for.cond723.preheader.i
  %163 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body725.i

for.cond706.preheader.i:                          ; preds = %if.end703.i
  br i1 %cmp7071400.i, label %for.body708.i, label %sw.epilog34

for.body708.i:                                    ; preds = %for.cond706.preheader.i, %for.body708.i
  %indvars.iv1496.i = phi i64 [ %indvars.iv.next1497.i, %for.body708.i ], [ 0, %for.cond706.preheader.i ]
  %arrayidx710.i = getelementptr inbounds double* %colA0.2.lcssa.i, i64 %indvars.iv1496.i
  %164 = load double* %arrayidx710.i, align 8, !tbaa !4
  %add.ptr685.sum1288.i = add i64 %indvars.iv1496.i, %idx.ext684.i
  %arrayidx712.i = getelementptr inbounds double* %colA0.2.lcssa.i, i64 %add.ptr685.sum1288.i
  %165 = load double* %arrayidx712.i, align 8, !tbaa !4
  %mul713.i = fmul double %x00.7.i, %164
  %mul714.i = fmul double %x10.5.i, %165
  %add715.i = fadd double %mul713.i, %mul714.i
  %arrayidx717.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1496.i
  %166 = load double* %arrayidx717.i, align 8, !tbaa !4
  %sub718.i = fsub double %166, %add715.i
  store double %sub718.i, double* %arrayidx717.i, align 8, !tbaa !4
  %indvars.iv.next1497.i = add i64 %indvars.iv1496.i, 1
  %lftr.wideiv1123 = trunc i64 %indvars.iv.next1497.i to i32
  %exitcond1124 = icmp eq i32 %lftr.wideiv1123, %157
  br i1 %exitcond1124, label %sw.epilog34, label %for.body708.i

for.body725.i:                                    ; preds = %for.body725.i, %for.body725.lr.ph.i
  %indvars.iv1498.i = phi i64 [ 0, %for.body725.lr.ph.i ], [ %indvars.iv.next1499.i, %for.body725.i ]
  %arrayidx727.i = getelementptr inbounds double* %colA0.2.lcssa.i, i64 %indvars.iv1498.i
  %167 = load double* %arrayidx727.i, align 8, !tbaa !4
  %add.ptr685.sum.i = add i64 %indvars.iv1498.i, %idx.ext684.i
  %arrayidx729.i = getelementptr inbounds double* %colA0.2.lcssa.i, i64 %add.ptr685.sum.i
  %168 = load double* %arrayidx729.i, align 8, !tbaa !4
  %arrayidx731.i = getelementptr inbounds i32* %163, i64 %indvars.iv1498.i
  %169 = load i32* %arrayidx731.i, align 4, !tbaa !3
  %mul732.i = fmul double %x00.7.i, %167
  %mul733.i = fmul double %x10.5.i, %168
  %add734.i = fadd double %mul732.i, %mul733.i
  %idxprom735.i = sext i32 %169 to i64
  %arrayidx736.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom735.i
  %170 = load double* %arrayidx736.i, align 8, !tbaa !4
  %sub737.i = fsub double %170, %add734.i
  store double %sub737.i, double* %arrayidx736.i, align 8, !tbaa !4
  %indvars.iv.next1499.i = add i64 %indvars.iv1498.i, 1
  %lftr.wideiv1125 = trunc i64 %indvars.iv.next1499.i to i32
  %exitcond1126 = icmp eq i32 %lftr.wideiv1125, %157
  br i1 %exitcond1126, label %sw.epilog34, label %for.body725.i

if.else742.i:                                     ; preds = %for.end680.i
  %sub743.i = add nsw i32 %134, -1
  %cmp744.i = icmp eq i32 %icolA.2.lcssa.i, %sub743.i
  br i1 %cmp744.i, label %if.then745.i, label %sw.epilog34

if.then745.i:                                     ; preds = %if.else742.i
  %171 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp746.i = icmp eq i32 %134, %171
  %idxprom748.i = sext i32 %icolA.2.lcssa.i to i64
  br i1 %cmp746.i, label %if.end755.i, label %if.else750.i

if.else750.i:                                     ; preds = %if.then745.i
  %172 = load i32** %colindA.i, align 8, !tbaa !0
  %arrayidx752.i = getelementptr inbounds i32* %172, i64 %idxprom748.i
  %173 = load i32* %arrayidx752.i, align 4, !tbaa !3
  %idxprom753.i = sext i32 %173 to i64
  br label %if.end755.i

if.end755.i:                                      ; preds = %if.then745.i, %if.else750.i
  %idxprom748.pn.i = phi i64 [ %idxprom753.i, %if.else750.i ], [ %idxprom748.i, %if.then745.i ]
  %x00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom748.pn.i
  %x00.8.i = load double* %x00.8.in.i, align 8
  %174 = load i32* %nrowY.i, align 4, !tbaa !3
  %175 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp756.i = icmp eq i32 %174, %175
  br i1 %cmp756.i, label %for.cond758.preheader.i, label %for.cond771.preheader.i

for.cond771.preheader.i:                          ; preds = %if.end755.i
  %cmp7721409.i = icmp sgt i32 %175, 0
  br i1 %cmp7721409.i, label %for.body773.lr.ph.i, label %sw.epilog34

for.body773.lr.ph.i:                              ; preds = %for.cond771.preheader.i
  %176 = load i32** %rowindA.i, align 8, !tbaa !0
  br label %for.body773.i

for.cond758.preheader.i:                          ; preds = %if.end755.i
  %cmp7591406.i = icmp sgt i32 %174, 0
  br i1 %cmp7591406.i, label %for.body760.i, label %sw.epilog34

for.body760.i:                                    ; preds = %for.cond758.preheader.i, %for.body760.i
  %indvars.iv1500.i = phi i64 [ %indvars.iv.next1501.i, %for.body760.i ], [ 0, %for.cond758.preheader.i ]
  %arrayidx762.i = getelementptr inbounds double* %colA0.2.lcssa.i, i64 %indvars.iv1500.i
  %177 = load double* %arrayidx762.i, align 8, !tbaa !4
  %mul763.i = fmul double %x00.8.i, %177
  %arrayidx765.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1500.i
  %178 = load double* %arrayidx765.i, align 8, !tbaa !4
  %sub766.i = fsub double %178, %mul763.i
  store double %sub766.i, double* %arrayidx765.i, align 8, !tbaa !4
  %indvars.iv.next1501.i = add i64 %indvars.iv1500.i, 1
  %lftr.wideiv1127 = trunc i64 %indvars.iv.next1501.i to i32
  %exitcond1128 = icmp eq i32 %lftr.wideiv1127, %174
  br i1 %exitcond1128, label %sw.epilog34, label %for.body760.i

for.body773.i:                                    ; preds = %for.body773.i, %for.body773.lr.ph.i
  %indvars.iv1502.i = phi i64 [ 0, %for.body773.lr.ph.i ], [ %indvars.iv.next1503.i, %for.body773.i ]
  %arrayidx775.i = getelementptr inbounds double* %colA0.2.lcssa.i, i64 %indvars.iv1502.i
  %179 = load double* %arrayidx775.i, align 8, !tbaa !4
  %arrayidx777.i = getelementptr inbounds i32* %176, i64 %indvars.iv1502.i
  %180 = load i32* %arrayidx777.i, align 4, !tbaa !3
  %mul778.i = fmul double %x00.8.i, %179
  %idxprom779.i = sext i32 %180 to i64
  %arrayidx780.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom779.i
  %181 = load double* %arrayidx780.i, align 8, !tbaa !4
  %sub781.i = fsub double %181, %mul778.i
  store double %sub781.i, double* %arrayidx780.i, align 8, !tbaa !4
  %indvars.iv.next1503.i = add i64 %indvars.iv1502.i, 1
  %lftr.wideiv1129 = trunc i64 %indvars.iv.next1503.i to i32
  %exitcond1130 = icmp eq i32 %lftr.wideiv1129, %175
  br i1 %exitcond1130, label %sw.epilog34, label %for.body773.i

sw.bb15:                                          ; preds = %sw.bb
  %182 = bitcast double** %entA.i87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #4
  %183 = bitcast double** %entX.i88 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #4
  %184 = bitcast double** %entY.i89 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %184) #4
  %185 = bitcast i32* %inc1.i90 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #4
  %186 = bitcast i32* %inc2.i91 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #4
  %187 = bitcast i32* %ncolA.i92 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #4
  %188 = bitcast i32* %ncolX.i93 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %188) #4
  %189 = bitcast i32* %ncolY.i94 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #4
  %190 = bitcast i32* %nrowA.i95 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #4
  %191 = bitcast i32* %nrowX.i96 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #4
  %192 = bitcast i32* %nrowY.i97 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #4
  %193 = bitcast i32** %colindA.i98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %193) #4
  %194 = bitcast i32** %rowindA.i99 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i97, i32* %ncolY.i94, i32* %inc1.i90, i32* %inc2.i91, double** %entY.i89) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i96, i32* %ncolX.i93, i32* %inc1.i90, i32* %inc2.i91, double** %entX.i88) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i95, i32* %ncolA.i92, i32* %inc1.i90, i32* %inc2.i91, double** %entA.i87) #5
  %195 = load i32* %ncolA.i92, align 4, !tbaa !3
  %196 = load i32* %nrowX.i96, align 4, !tbaa !3
  %cmp.i100 = icmp eq i32 %195, %196
  br i1 %cmp.i100, label %if.else.i102, label %if.then.i101

if.then.i101:                                     ; preds = %sw.bb15
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i92, i32** %colindA.i98) #5
  br label %if.end.i104

if.else.i102:                                     ; preds = %sw.bb15
  store i32* null, i32** %colindA.i98, align 8, !tbaa !0
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.else.i102, %if.then.i101
  %197 = load i32* %nrowA.i95, align 4, !tbaa !3
  %198 = load i32* %nrowY.i97, align 4, !tbaa !3
  %cmp1.i103 = icmp eq i32 %197, %198
  br i1 %cmp1.i103, label %if.else3.i106, label %if.then2.i105

if.then2.i105:                                    ; preds = %if.end.i104
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i95, i32** %rowindA.i99) #5
  br label %if.end4.i

if.else3.i106:                                    ; preds = %if.end.i104
  store i32* null, i32** %rowindA.i99, align 8, !tbaa !0
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i106, %if.then2.i105
  %199 = load double** %entX.i88, align 8, !tbaa !0
  %200 = load double** %entY.i89, align 8, !tbaa !0
  %201 = load i32* %ncolX.i93, align 4, !tbaa !3
  %sub1803.i = add nsw i32 %201, -2
  %cmp51804.i = icmp sgt i32 %sub1803.i, 0
  br i1 %cmp51804.i, label %for.body.lr.ph.i115, label %for.end383.i

for.body.lr.ph.i115:                              ; preds = %if.end4.i
  %202 = load i32* %nrowX.i96, align 4, !tbaa !3
  %idx.ext.i107 = sext i32 %202 to i64
  %add.ptr.sum.i108 = shl nsw i64 %idx.ext.i107, 1
  %203 = load i32* %nrowY.i97, align 4, !tbaa !3
  %idx.ext8.i109 = sext i32 %203 to i64
  %add.ptr9.sum.i110 = shl nsw i64 %idx.ext8.i109, 1
  %204 = load double** %entA.i87, align 8, !tbaa !0
  %205 = load i32* %nrowA.i95, align 4, !tbaa !3
  %sub131743.i = add nsw i32 %205, -2
  %cmp141744.i = icmp sgt i32 %sub131743.i, 0
  %206 = load i32* %ncolA.i92, align 4, !tbaa !3
  %idx.ext182.i = sext i32 %206 to i64
  %cmp184.i = icmp eq i32 %206, %202
  %cmp246.i = icmp eq i32 %203, %205
  %207 = load i32** %rowindA.i99, align 8, !tbaa !0
  %cmp2161771.i = icmp sgt i32 %206, 0
  %208 = load i32** %colindA.i98, align 8, !tbaa !0
  %add.ptr7.sum.i111 = add i64 %add.ptr.sum.i108, %idx.ext.i107
  %add.ptr11.sum.i112 = add i64 %add.ptr9.sum.i110, %idx.ext8.i109
  %add.ptr17.sum.i113 = shl nsw i64 %idx.ext182.i, 1
  %add.ptr19.sum.i114 = add i64 %add.ptr17.sum.i113, %idx.ext182.i
  %idxprom248.i = sext i32 %sub131743.i to i64
  %add.ptr9.sum1548.i = add i64 %idxprom248.i, %idx.ext8.i109
  %add.ptr11.sum1549.i = add i64 %idxprom248.i, %add.ptr9.sum.i110
  %add257.i = add nsw i32 %205, -1
  %idxprom258.i = sext i32 %add257.i to i64
  %add.ptr9.sum1550.i = add i64 %idxprom258.i, %idx.ext8.i109
  %add.ptr11.sum1551.i = add i64 %idxprom258.i, %add.ptr9.sum.i110
  %arrayidx271.i = getelementptr inbounds i32* %207, i64 %idxprom248.i
  %arrayidx283.i = getelementptr inbounds i32* %207, i64 %idxprom258.i
  br label %for.body.i116

for.body.i116:                                    ; preds = %if.end376.i, %for.body.lr.ph.i115
  %jcolX.01817.i = phi i32 [ 0, %for.body.lr.ph.i115 ], [ %add382.i, %if.end376.i ]
  %colX0.01808.i = phi double* [ %199, %for.body.lr.ph.i115 ], [ %add.ptr378.i, %if.end376.i ]
  %colY0.01805.i = phi double* [ %200, %for.body.lr.ph.i115 ], [ %add.ptr380.i, %if.end376.i ]
  br i1 %cmp141744.i, label %for.body15.i117, label %for.end167.i

for.body15.i117:                                  ; preds = %for.body.i116, %if.end162.i
  %indvars.iv1865.i = phi i64 [ %indvars.iv.next1866.i, %if.end162.i ], [ 0, %for.body.i116 ]
  %irowA.01749.i = phi i32 [ %add166.i, %if.end162.i ], [ 0, %for.body.i116 ]
  %rowA0.01745.i = phi double* [ %add.ptr164.i, %if.end162.i ], [ %204, %for.body.i116 ]
  br i1 %cmp184.i, label %for.cond22.preheader.i, label %for.cond52.preheader.i

for.cond22.preheader.i:                           ; preds = %for.body15.i117
  br i1 %cmp2161771.i, label %for.body24.i, label %if.end90.i

for.cond52.preheader.i:                           ; preds = %for.body15.i117
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
  %arrayidx.i = getelementptr inbounds double* %rowA0.01745.i, i64 %indvars.iv1861.i
  %209 = load double* %arrayidx.i, align 8, !tbaa !4
  %add.ptr17.sum1573.i = add i64 %indvars.iv1861.i, %idx.ext182.i
  %arrayidx26.i = getelementptr inbounds double* %rowA0.01745.i, i64 %add.ptr17.sum1573.i
  %210 = load double* %arrayidx26.i, align 8, !tbaa !4
  %add.ptr19.sum1574.i = add i64 %indvars.iv1861.i, %add.ptr17.sum.i113
  %arrayidx28.i = getelementptr inbounds double* %rowA0.01745.i, i64 %add.ptr19.sum1574.i
  %211 = load double* %arrayidx28.i, align 8, !tbaa !4
  %arrayidx30.i = getelementptr inbounds double* %colX0.01808.i, i64 %indvars.iv1861.i
  %212 = load double* %arrayidx30.i, align 8, !tbaa !4
  %add.ptr.sum1575.i = add i64 %indvars.iv1861.i, %idx.ext.i107
  %arrayidx32.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1575.i
  %213 = load double* %arrayidx32.i, align 8, !tbaa !4
  %add.ptr7.sum1576.i = add i64 %indvars.iv1861.i, %add.ptr.sum.i108
  %arrayidx34.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1576.i
  %214 = load double* %arrayidx34.i, align 8, !tbaa !4
  %mul.i118 = fmul double %209, %212
  %add.i = fadd double %sum00.01724.i, %mul.i118
  %mul35.i = fmul double %209, %213
  %add36.i = fadd double %sum01.01725.i, %mul35.i
  %mul37.i = fmul double %209, %214
  %add38.i = fadd double %sum02.01726.i, %mul37.i
  %mul39.i = fmul double %210, %212
  %add40.i = fadd double %sum10.01727.i, %mul39.i
  %mul41.i = fmul double %210, %213
  %add42.i = fadd double %sum11.01728.i, %mul41.i
  %mul43.i = fmul double %210, %214
  %add44.i = fadd double %sum12.01729.i, %mul43.i
  %mul45.i = fmul double %211, %212
  %add46.i = fadd double %sum20.01730.i, %mul45.i
  %mul47.i = fmul double %211, %213
  %add48.i = fadd double %sum21.01731.i, %mul47.i
  %mul49.i = fmul double %211, %214
  %add50.i = fadd double %sum22.01732.i, %mul49.i
  %indvars.iv.next1862.i = add i64 %indvars.iv1861.i, 1
  %lftr.wideiv1173 = trunc i64 %indvars.iv.next1862.i to i32
  %exitcond1174 = icmp eq i32 %lftr.wideiv1173, %202
  br i1 %exitcond1174, label %if.end90.i, label %for.body24.i

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
  %arrayidx56.i = getelementptr inbounds double* %rowA0.01745.i, i64 %indvars.iv1859.i
  %215 = load double* %arrayidx56.i, align 8, !tbaa !4
  %add.ptr17.sum1569.i = add i64 %indvars.iv1859.i, %idx.ext182.i
  %arrayidx58.i = getelementptr inbounds double* %rowA0.01745.i, i64 %add.ptr17.sum1569.i
  %216 = load double* %arrayidx58.i, align 8, !tbaa !4
  %add.ptr19.sum1570.i = add i64 %indvars.iv1859.i, %add.ptr17.sum.i113
  %arrayidx60.i = getelementptr inbounds double* %rowA0.01745.i, i64 %add.ptr19.sum1570.i
  %217 = load double* %arrayidx60.i, align 8, !tbaa !4
  %arrayidx62.i = getelementptr inbounds i32* %208, i64 %indvars.iv1859.i
  %218 = load i32* %arrayidx62.i, align 4, !tbaa !3
  %idxprom63.i = sext i32 %218 to i64
  %arrayidx64.i = getelementptr inbounds double* %colX0.01808.i, i64 %idxprom63.i
  %219 = load double* %arrayidx64.i, align 8, !tbaa !4
  %add.ptr.sum1571.i = add i64 %idxprom63.i, %idx.ext.i107
  %arrayidx66.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1571.i
  %220 = load double* %arrayidx66.i, align 8, !tbaa !4
  %add.ptr7.sum1572.i = add i64 %idxprom63.i, %add.ptr.sum.i108
  %arrayidx68.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1572.i
  %221 = load double* %arrayidx68.i, align 8, !tbaa !4
  %mul69.i = fmul double %215, %219
  %add70.i = fadd double %sum00.11703.i, %mul69.i
  %mul71.i = fmul double %215, %220
  %add72.i = fadd double %sum01.11704.i, %mul71.i
  %mul73.i = fmul double %215, %221
  %add74.i = fadd double %sum02.11705.i, %mul73.i
  %mul75.i = fmul double %216, %219
  %add76.i = fadd double %sum10.11706.i, %mul75.i
  %mul77.i = fmul double %216, %220
  %add78.i = fadd double %sum11.11707.i, %mul77.i
  %mul79.i = fmul double %216, %221
  %add80.i = fadd double %sum12.11708.i, %mul79.i
  %mul81.i = fmul double %217, %219
  %add82.i = fadd double %sum20.11709.i, %mul81.i
  %mul83.i = fmul double %217, %220
  %add84.i = fadd double %sum21.11710.i, %mul83.i
  %mul85.i = fmul double %217, %221
  %add86.i = fadd double %sum22.11711.i, %mul85.i
  %indvars.iv.next1860.i = add i64 %indvars.iv1859.i, 1
  %lftr.wideiv1171 = trunc i64 %indvars.iv.next1860.i to i32
  %exitcond1172 = icmp eq i32 %lftr.wideiv1171, %206
  br i1 %exitcond1172, label %if.end90.i, label %for.body54.i

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
  %222 = load double* %arrayidx94.i, align 8, !tbaa !4
  %sub95.i = fsub double %222, %sum00.2.i
  store double %sub95.i, double* %arrayidx94.i, align 8, !tbaa !4
  %add.ptr9.sum1563.i = add i64 %indvars.iv1865.i, %idx.ext8.i109
  %arrayidx97.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1563.i
  %223 = load double* %arrayidx97.i, align 8, !tbaa !4
  %sub98.i = fsub double %223, %sum01.2.i
  store double %sub98.i, double* %arrayidx97.i, align 8, !tbaa !4
  %add.ptr11.sum1564.i = add i64 %indvars.iv1865.i, %add.ptr9.sum.i110
  %arrayidx100.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1564.i
  %224 = load double* %arrayidx100.i, align 8, !tbaa !4
  %sub101.i = fsub double %224, %sum02.2.i
  store double %sub101.i, double* %arrayidx100.i, align 8, !tbaa !4
  %225 = add nsw i64 %indvars.iv1865.i, 1
  %arrayidx104.i = getelementptr inbounds double* %colY0.01805.i, i64 %225
  %226 = load double* %arrayidx104.i, align 8, !tbaa !4
  %sub105.i = fsub double %226, %sum10.2.i
  store double %sub105.i, double* %arrayidx104.i, align 8, !tbaa !4
  %add.ptr9.sum1565.i = add i64 %225, %idx.ext8.i109
  %arrayidx108.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1565.i
  %227 = load double* %arrayidx108.i, align 8, !tbaa !4
  %sub109.i = fsub double %227, %sum11.2.i
  store double %sub109.i, double* %arrayidx108.i, align 8, !tbaa !4
  %add.ptr11.sum1566.i = add i64 %225, %add.ptr9.sum.i110
  %arrayidx112.i119 = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1566.i
  %228 = load double* %arrayidx112.i119, align 8, !tbaa !4
  %sub113.i = fsub double %228, %sum12.2.i
  store double %sub113.i, double* %arrayidx112.i119, align 8, !tbaa !4
  %229 = add nsw i64 %indvars.iv1865.i, 2
  %arrayidx116.i120 = getelementptr inbounds double* %colY0.01805.i, i64 %229
  %230 = load double* %arrayidx116.i120, align 8, !tbaa !4
  %sub117.i = fsub double %230, %sum20.2.i
  store double %sub117.i, double* %arrayidx116.i120, align 8, !tbaa !4
  %add.ptr9.sum1567.i = add i64 %229, %idx.ext8.i109
  %arrayidx120.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1567.i
  %231 = load double* %arrayidx120.i, align 8, !tbaa !4
  %sub121.i = fsub double %231, %sum21.2.i
  store double %sub121.i, double* %arrayidx120.i, align 8, !tbaa !4
  %add.ptr11.sum1568.i = add i64 %229, %add.ptr9.sum.i110
  %arrayidx124.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1568.i
  %232 = load double* %arrayidx124.i, align 8, !tbaa !4
  %sub125.i = fsub double %232, %sum22.2.i
  store double %sub125.i, double* %arrayidx124.i, align 8, !tbaa !4
  br label %if.end162.i

if.else126.i:                                     ; preds = %if.end90.i
  %arrayidx128.i = getelementptr inbounds i32* %207, i64 %indvars.iv1865.i
  %233 = load i32* %arrayidx128.i, align 4, !tbaa !3
  %idxprom129.i = sext i32 %233 to i64
  %arrayidx130.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom129.i
  %234 = load double* %arrayidx130.i, align 8, !tbaa !4
  %sub131.i = fsub double %234, %sum00.2.i
  store double %sub131.i, double* %arrayidx130.i, align 8, !tbaa !4
  %add.ptr9.sum1557.i = add i64 %idxprom129.i, %idx.ext8.i109
  %arrayidx133.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1557.i
  %235 = load double* %arrayidx133.i, align 8, !tbaa !4
  %sub134.i = fsub double %235, %sum01.2.i
  store double %sub134.i, double* %arrayidx133.i, align 8, !tbaa !4
  %add.ptr11.sum1558.i = add i64 %idxprom129.i, %add.ptr9.sum.i110
  %arrayidx136.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1558.i
  %236 = load double* %arrayidx136.i, align 8, !tbaa !4
  %sub137.i = fsub double %236, %sum02.2.i
  store double %sub137.i, double* %arrayidx136.i, align 8, !tbaa !4
  %237 = add nsw i64 %indvars.iv1865.i, 1
  %arrayidx140.i = getelementptr inbounds i32* %207, i64 %237
  %238 = load i32* %arrayidx140.i, align 4, !tbaa !3
  %idxprom141.i = sext i32 %238 to i64
  %arrayidx142.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom141.i
  %239 = load double* %arrayidx142.i, align 8, !tbaa !4
  %sub143.i = fsub double %239, %sum10.2.i
  store double %sub143.i, double* %arrayidx142.i, align 8, !tbaa !4
  %add.ptr9.sum1559.i = add i64 %idxprom141.i, %idx.ext8.i109
  %arrayidx145.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1559.i
  %240 = load double* %arrayidx145.i, align 8, !tbaa !4
  %sub146.i = fsub double %240, %sum11.2.i
  store double %sub146.i, double* %arrayidx145.i, align 8, !tbaa !4
  %add.ptr11.sum1560.i = add i64 %idxprom141.i, %add.ptr9.sum.i110
  %arrayidx148.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1560.i
  %241 = load double* %arrayidx148.i, align 8, !tbaa !4
  %sub149.i = fsub double %241, %sum12.2.i
  store double %sub149.i, double* %arrayidx148.i, align 8, !tbaa !4
  %242 = add nsw i64 %indvars.iv1865.i, 2
  %arrayidx152.i = getelementptr inbounds i32* %207, i64 %242
  %243 = load i32* %arrayidx152.i, align 4, !tbaa !3
  %idxprom153.i = sext i32 %243 to i64
  %arrayidx154.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom153.i
  %244 = load double* %arrayidx154.i, align 8, !tbaa !4
  %sub155.i = fsub double %244, %sum20.2.i
  store double %sub155.i, double* %arrayidx154.i, align 8, !tbaa !4
  %add.ptr9.sum1561.i = add i64 %idxprom153.i, %idx.ext8.i109
  %arrayidx157.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1561.i
  %245 = load double* %arrayidx157.i, align 8, !tbaa !4
  %sub158.i = fsub double %245, %sum21.2.i
  store double %sub158.i, double* %arrayidx157.i, align 8, !tbaa !4
  %add.ptr11.sum1562.i = add i64 %idxprom153.i, %add.ptr9.sum.i110
  %arrayidx160.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1562.i
  %246 = load double* %arrayidx160.i, align 8, !tbaa !4
  %sub161.i = fsub double %246, %sum22.2.i
  store double %sub161.i, double* %arrayidx160.i, align 8, !tbaa !4
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.else126.i, %if.then92.i
  %add.ptr164.i = getelementptr inbounds double* %rowA0.01745.i, i64 %add.ptr19.sum.i114
  %indvars.iv.next1866.i = add i64 %indvars.iv1865.i, 3
  %add166.i = add nsw i32 %irowA.01749.i, 3
  %247 = trunc i64 %indvars.iv.next1866.i to i32
  %cmp14.i121 = icmp slt i32 %247, %sub131743.i
  br i1 %cmp14.i121, label %for.body15.i117, label %for.end167.i

for.end167.i:                                     ; preds = %if.end162.i, %for.body.i116
  %irowA.0.lcssa.i = phi i32 [ 0, %for.body.i116 ], [ %add166.i, %if.end162.i ]
  %rowA0.0.lcssa.i = phi double* [ %204, %for.body.i116 ], [ %add.ptr164.i, %if.end162.i ]
  %cmp169.i = icmp eq i32 %irowA.0.lcssa.i, %sub131743.i
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
  %sum11180.01792.i = phi double [ %add208.i125, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum10179.01791.i = phi double [ %add206.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum02178.01790.i = phi double [ %add204.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum01177.01789.i = phi double [ %add202.i123, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum00176.01788.i = phi double [ %add200.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %arrayidx190.i = getelementptr inbounds double* %rowA0.0.lcssa.i, i64 %indvars.iv1883.i
  %248 = load double* %arrayidx190.i, align 8, !tbaa !4
  %add.ptr183.sum1554.i = add i64 %indvars.iv1883.i, %idx.ext182.i
  %arrayidx192.i = getelementptr inbounds double* %rowA0.0.lcssa.i, i64 %add.ptr183.sum1554.i
  %249 = load double* %arrayidx192.i, align 8, !tbaa !4
  %arrayidx194.i = getelementptr inbounds double* %colX0.01808.i, i64 %indvars.iv1883.i
  %250 = load double* %arrayidx194.i, align 8, !tbaa !4
  %add.ptr.sum1555.i = add i64 %indvars.iv1883.i, %idx.ext.i107
  %arrayidx196.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1555.i
  %251 = load double* %arrayidx196.i, align 8, !tbaa !4
  %add.ptr7.sum1556.i = add i64 %indvars.iv1883.i, %add.ptr.sum.i108
  %arrayidx198.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1556.i
  %252 = load double* %arrayidx198.i, align 8, !tbaa !4
  %mul199.i = fmul double %248, %250
  %add200.i = fadd double %sum00176.01788.i, %mul199.i
  %mul201.i122 = fmul double %248, %251
  %add202.i123 = fadd double %sum01177.01789.i, %mul201.i122
  %mul203.i = fmul double %248, %252
  %add204.i = fadd double %sum02178.01790.i, %mul203.i
  %mul205.i = fmul double %249, %250
  %add206.i = fadd double %sum10179.01791.i, %mul205.i
  %mul207.i124 = fmul double %249, %251
  %add208.i125 = fadd double %sum11180.01792.i, %mul207.i124
  %mul209.i = fmul double %249, %252
  %add210.i = fadd double %sum12181.01793.i, %mul209.i
  %indvars.iv.next1884.i = add i64 %indvars.iv1883.i, 1
  %lftr.wideiv1181 = trunc i64 %indvars.iv.next1884.i to i32
  %exitcond1182 = icmp eq i32 %lftr.wideiv1181, %202
  br i1 %exitcond1182, label %if.end245.i, label %for.body188.i

for.body217.i:                                    ; preds = %for.cond215.preheader.i, %for.body217.i
  %indvars.iv1879.i = phi i64 [ %indvars.iv.next1880.i, %for.body217.i ], [ 0, %for.cond215.preheader.i ]
  %sum12181.11778.i = phi double [ %add241.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum11180.11777.i = phi double [ %add239.i129, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum10179.11776.i = phi double [ %add237.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum02178.11775.i = phi double [ %add235.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum01177.11774.i = phi double [ %add233.i127, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum00176.11773.i = phi double [ %add231.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %arrayidx219.i = getelementptr inbounds double* %rowA0.0.lcssa.i, i64 %indvars.iv1879.i
  %253 = load double* %arrayidx219.i, align 8, !tbaa !4
  %add.ptr183.sum.i = add i64 %indvars.iv1879.i, %idx.ext182.i
  %arrayidx221.i = getelementptr inbounds double* %rowA0.0.lcssa.i, i64 %add.ptr183.sum.i
  %254 = load double* %arrayidx221.i, align 8, !tbaa !4
  %arrayidx223.i = getelementptr inbounds i32* %208, i64 %indvars.iv1879.i
  %255 = load i32* %arrayidx223.i, align 4, !tbaa !3
  %idxprom224.i = sext i32 %255 to i64
  %arrayidx225.i = getelementptr inbounds double* %colX0.01808.i, i64 %idxprom224.i
  %256 = load double* %arrayidx225.i, align 8, !tbaa !4
  %add.ptr.sum1552.i = add i64 %idxprom224.i, %idx.ext.i107
  %arrayidx227.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1552.i
  %257 = load double* %arrayidx227.i, align 8, !tbaa !4
  %add.ptr7.sum1553.i = add i64 %idxprom224.i, %add.ptr.sum.i108
  %arrayidx229.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1553.i
  %258 = load double* %arrayidx229.i, align 8, !tbaa !4
  %mul230.i = fmul double %253, %256
  %add231.i = fadd double %sum00176.11773.i, %mul230.i
  %mul232.i126 = fmul double %253, %257
  %add233.i127 = fadd double %sum01177.11774.i, %mul232.i126
  %mul234.i = fmul double %253, %258
  %add235.i = fadd double %sum02178.11775.i, %mul234.i
  %mul236.i = fmul double %254, %256
  %add237.i = fadd double %sum10179.11776.i, %mul236.i
  %mul238.i128 = fmul double %254, %257
  %add239.i129 = fadd double %sum11180.11777.i, %mul238.i128
  %mul240.i = fmul double %254, %258
  %add241.i = fadd double %sum12181.11778.i, %mul240.i
  %indvars.iv.next1880.i = add i64 %indvars.iv1879.i, 1
  %lftr.wideiv1179 = trunc i64 %indvars.iv.next1880.i to i32
  %exitcond1180 = icmp eq i32 %lftr.wideiv1179, %206
  br i1 %exitcond1180, label %if.end245.i, label %for.body217.i

if.end245.i:                                      ; preds = %for.body188.i, %for.body217.i, %for.cond215.preheader.i, %for.cond186.preheader.i
  %sum00176.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add231.i, %for.body217.i ], [ %add200.i, %for.body188.i ]
  %sum01177.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add233.i127, %for.body217.i ], [ %add202.i123, %for.body188.i ]
  %sum02178.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add235.i, %for.body217.i ], [ %add204.i, %for.body188.i ]
  %sum10179.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add237.i, %for.body217.i ], [ %add206.i, %for.body188.i ]
  %sum11180.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add239.i129, %for.body217.i ], [ %add208.i125, %for.body188.i ]
  %sum12181.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add241.i, %for.body217.i ], [ %add210.i, %for.body188.i ]
  br i1 %cmp246.i, label %if.then247.i, label %if.else269.i

if.then247.i:                                     ; preds = %if.end245.i
  %arrayidx249.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom248.i
  %259 = load double* %arrayidx249.i, align 8, !tbaa !4
  %sub250.i = fsub double %259, %sum00176.2.i
  store double %sub250.i, double* %arrayidx249.i, align 8, !tbaa !4
  %arrayidx252.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1548.i
  %260 = load double* %arrayidx252.i, align 8, !tbaa !4
  %sub253.i = fsub double %260, %sum01177.2.i
  store double %sub253.i, double* %arrayidx252.i, align 8, !tbaa !4
  %arrayidx255.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1549.i
  %261 = load double* %arrayidx255.i, align 8, !tbaa !4
  %sub256.i = fsub double %261, %sum02178.2.i
  store double %sub256.i, double* %arrayidx255.i, align 8, !tbaa !4
  %arrayidx259.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom258.i
  %262 = load double* %arrayidx259.i, align 8, !tbaa !4
  %sub260.i = fsub double %262, %sum10179.2.i
  store double %sub260.i, double* %arrayidx259.i, align 8, !tbaa !4
  %arrayidx263.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1550.i
  %263 = load double* %arrayidx263.i, align 8, !tbaa !4
  %sub264.i = fsub double %263, %sum11180.2.i
  store double %sub264.i, double* %arrayidx263.i, align 8, !tbaa !4
  %arrayidx267.i130 = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1551.i
  %264 = load double* %arrayidx267.i130, align 8, !tbaa !4
  %sub268.i = fsub double %264, %sum12181.2.i
  store double %sub268.i, double* %arrayidx267.i130, align 8, !tbaa !4
  br label %if.end376.i

if.else269.i:                                     ; preds = %if.end245.i
  %265 = load i32* %arrayidx271.i, align 4, !tbaa !3
  %idxprom272.i = sext i32 %265 to i64
  %arrayidx273.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom272.i
  %266 = load double* %arrayidx273.i, align 8, !tbaa !4
  %sub274.i = fsub double %266, %sum00176.2.i
  store double %sub274.i, double* %arrayidx273.i, align 8, !tbaa !4
  %add.ptr9.sum1544.i = add i64 %idxprom272.i, %idx.ext8.i109
  %arrayidx276.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1544.i
  %267 = load double* %arrayidx276.i, align 8, !tbaa !4
  %sub277.i = fsub double %267, %sum01177.2.i
  store double %sub277.i, double* %arrayidx276.i, align 8, !tbaa !4
  %add.ptr11.sum1545.i = add i64 %idxprom272.i, %add.ptr9.sum.i110
  %arrayidx279.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1545.i
  %268 = load double* %arrayidx279.i, align 8, !tbaa !4
  %sub280.i = fsub double %268, %sum02178.2.i
  store double %sub280.i, double* %arrayidx279.i, align 8, !tbaa !4
  %269 = load i32* %arrayidx283.i, align 4, !tbaa !3
  %idxprom284.i = sext i32 %269 to i64
  %arrayidx285.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom284.i
  %270 = load double* %arrayidx285.i, align 8, !tbaa !4
  %sub286.i = fsub double %270, %sum10179.2.i
  store double %sub286.i, double* %arrayidx285.i, align 8, !tbaa !4
  %add.ptr9.sum1546.i = add i64 %idxprom284.i, %idx.ext8.i109
  %arrayidx288.i131 = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1546.i
  %271 = load double* %arrayidx288.i131, align 8, !tbaa !4
  %sub289.i132 = fsub double %271, %sum11180.2.i
  store double %sub289.i132, double* %arrayidx288.i131, align 8, !tbaa !4
  %add.ptr11.sum1547.i = add i64 %idxprom284.i, %add.ptr9.sum.i110
  %arrayidx291.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1547.i
  %272 = load double* %arrayidx291.i, align 8, !tbaa !4
  %sub292.i = fsub double %272, %sum12181.2.i
  store double %sub292.i, double* %arrayidx291.i, align 8, !tbaa !4
  br label %if.end376.i

if.else294.i:                                     ; preds = %for.end167.i
  %cmp296.i = icmp eq i32 %irowA.0.lcssa.i, %add257.i
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
  %arrayidx311.i133 = getelementptr inbounds double* %rowA0.0.lcssa.i, i64 %indvars.iv1875.i
  %273 = load double* %arrayidx311.i133, align 8, !tbaa !4
  %arrayidx313.i = getelementptr inbounds double* %colX0.01808.i, i64 %indvars.iv1875.i
  %274 = load double* %arrayidx313.i, align 8, !tbaa !4
  %add.ptr.sum1542.i = add i64 %indvars.iv1875.i, %idx.ext.i107
  %arrayidx315.i134 = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1542.i
  %275 = load double* %arrayidx315.i134, align 8, !tbaa !4
  %add.ptr7.sum1543.i = add i64 %indvars.iv1875.i, %add.ptr.sum.i108
  %arrayidx317.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1543.i
  %276 = load double* %arrayidx317.i, align 8, !tbaa !4
  %mul318.i = fmul double %273, %274
  %add319.i = fadd double %sum00302.01765.i, %mul318.i
  %mul320.i = fmul double %273, %275
  %add321.i = fadd double %sum01303.01766.i, %mul320.i
  %mul322.i = fmul double %273, %276
  %add323.i = fadd double %sum02304.01767.i, %mul322.i
  %indvars.iv.next1876.i = add i64 %indvars.iv1875.i, 1
  %lftr.wideiv1177 = trunc i64 %indvars.iv.next1876.i to i32
  %exitcond1178 = icmp eq i32 %lftr.wideiv1177, %202
  br i1 %exitcond1178, label %if.end350.i, label %for.body309.i

for.body330.i:                                    ; preds = %for.cond328.preheader.i, %for.body330.i
  %indvars.iv1871.i = phi i64 [ %indvars.iv.next1872.i, %for.body330.i ], [ 0, %for.cond328.preheader.i ]
  %sum02304.11758.i = phi double [ %add346.i, %for.body330.i ], [ 0.000000e+00, %for.cond328.preheader.i ]
  %sum01303.11757.i = phi double [ %add344.i, %for.body330.i ], [ 0.000000e+00, %for.cond328.preheader.i ]
  %sum00302.11756.i = phi double [ %add342.i, %for.body330.i ], [ 0.000000e+00, %for.cond328.preheader.i ]
  %arrayidx332.i = getelementptr inbounds double* %rowA0.0.lcssa.i, i64 %indvars.iv1871.i
  %277 = load double* %arrayidx332.i, align 8, !tbaa !4
  %arrayidx334.i = getelementptr inbounds i32* %208, i64 %indvars.iv1871.i
  %278 = load i32* %arrayidx334.i, align 4, !tbaa !3
  %idxprom335.i = sext i32 %278 to i64
  %arrayidx336.i = getelementptr inbounds double* %colX0.01808.i, i64 %idxprom335.i
  %279 = load double* %arrayidx336.i, align 8, !tbaa !4
  %add.ptr.sum1540.i = add i64 %idxprom335.i, %idx.ext.i107
  %arrayidx338.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1540.i
  %280 = load double* %arrayidx338.i, align 8, !tbaa !4
  %add.ptr7.sum1541.i = add i64 %idxprom335.i, %add.ptr.sum.i108
  %arrayidx340.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1541.i
  %281 = load double* %arrayidx340.i, align 8, !tbaa !4
  %mul341.i = fmul double %277, %279
  %add342.i = fadd double %sum00302.11756.i, %mul341.i
  %mul343.i = fmul double %277, %280
  %add344.i = fadd double %sum01303.11757.i, %mul343.i
  %mul345.i = fmul double %277, %281
  %add346.i = fadd double %sum02304.11758.i, %mul345.i
  %indvars.iv.next1872.i = add i64 %indvars.iv1871.i, 1
  %lftr.wideiv1175 = trunc i64 %indvars.iv.next1872.i to i32
  %exitcond1176 = icmp eq i32 %lftr.wideiv1175, %206
  br i1 %exitcond1176, label %if.end350.i, label %for.body330.i

if.end350.i:                                      ; preds = %for.body309.i, %for.body330.i, %for.cond328.preheader.i, %for.cond307.preheader.i
  %sum00302.2.i = phi double [ 0.000000e+00, %for.cond328.preheader.i ], [ 0.000000e+00, %for.cond307.preheader.i ], [ %add342.i, %for.body330.i ], [ %add319.i, %for.body309.i ]
  %sum01303.2.i = phi double [ 0.000000e+00, %for.cond328.preheader.i ], [ 0.000000e+00, %for.cond307.preheader.i ], [ %add344.i, %for.body330.i ], [ %add321.i, %for.body309.i ]
  %sum02304.2.i = phi double [ 0.000000e+00, %for.cond328.preheader.i ], [ 0.000000e+00, %for.cond307.preheader.i ], [ %add346.i, %for.body330.i ], [ %add323.i, %for.body309.i ]
  br i1 %cmp246.i, label %if.then352.i, label %if.else362.i

if.then352.i:                                     ; preds = %if.end350.i
  %arrayidx354.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom258.i
  %282 = load double* %arrayidx354.i, align 8, !tbaa !4
  %sub355.i = fsub double %282, %sum00302.2.i
  store double %sub355.i, double* %arrayidx354.i, align 8, !tbaa !4
  %arrayidx357.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1550.i
  %283 = load double* %arrayidx357.i, align 8, !tbaa !4
  %sub358.i = fsub double %283, %sum01303.2.i
  store double %sub358.i, double* %arrayidx357.i, align 8, !tbaa !4
  %arrayidx360.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1551.i
  %284 = load double* %arrayidx360.i, align 8, !tbaa !4
  %sub361.i = fsub double %284, %sum02304.2.i
  store double %sub361.i, double* %arrayidx360.i, align 8, !tbaa !4
  br label %if.end376.i

if.else362.i:                                     ; preds = %if.end350.i
  %285 = load i32* %arrayidx283.i, align 4, !tbaa !3
  %idxprom365.i = sext i32 %285 to i64
  %arrayidx366.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom365.i
  %286 = load double* %arrayidx366.i, align 8, !tbaa !4
  %sub367.i = fsub double %286, %sum00302.2.i
  store double %sub367.i, double* %arrayidx366.i, align 8, !tbaa !4
  %add.ptr9.sum1536.i = add i64 %idxprom365.i, %idx.ext8.i109
  %arrayidx369.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1536.i
  %287 = load double* %arrayidx369.i, align 8, !tbaa !4
  %sub370.i = fsub double %287, %sum01303.2.i
  store double %sub370.i, double* %arrayidx369.i, align 8, !tbaa !4
  %add.ptr11.sum1537.i = add i64 %idxprom365.i, %add.ptr9.sum.i110
  %arrayidx372.i135 = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1537.i
  %288 = load double* %arrayidx372.i135, align 8, !tbaa !4
  %sub373.i = fsub double %288, %sum02304.2.i
  store double %sub373.i, double* %arrayidx372.i135, align 8, !tbaa !4
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.else362.i, %if.then352.i, %if.else294.i, %if.else269.i, %if.then247.i
  %add.ptr378.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum.i111
  %add.ptr380.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum.i112
  %add382.i = add nsw i32 %jcolX.01817.i, 3
  %cmp5.i136 = icmp slt i32 %add382.i, %sub1803.i
  br i1 %cmp5.i136, label %for.body.i116, label %for.end383.i

for.end383.i:                                     ; preds = %if.end376.i, %if.end4.i
  %jcolX.0.lcssa.i137 = phi i32 [ 0, %if.end4.i ], [ %add382.i, %if.end376.i ]
  %colX0.0.lcssa.i138 = phi double* [ %199, %if.end4.i ], [ %add.ptr378.i, %if.end376.i ]
  %colY0.0.lcssa.i139 = phi double* [ %200, %if.end4.i ], [ %add.ptr380.i, %if.end376.i ]
  %cmp385.i140 = icmp eq i32 %jcolX.0.lcssa.i137, %sub1803.i
  br i1 %cmp385.i140, label %if.then386.i, label %if.else694.i

if.then386.i:                                     ; preds = %for.end383.i
  %289 = load i32* %nrowX.i96, align 4, !tbaa !3
  %idx.ext387.i = sext i32 %289 to i64
  %290 = load i32* %nrowY.i97, align 4, !tbaa !3
  %idx.ext389.i = sext i32 %290 to i64
  %291 = load double** %entA.i87, align 8, !tbaa !0
  %292 = load i32* %nrowA.i95, align 4, !tbaa !3
  %sub3921639.i = add nsw i32 %292, -2
  %cmp3931640.i = icmp sgt i32 %sub3921639.i, 0
  br i1 %cmp3931640.i, label %for.body394.lr.ph.i, label %for.end528.i

for.body394.lr.ph.i:                              ; preds = %if.then386.i
  %293 = load i32* %ncolA.i92, align 4, !tbaa !3
  %idx.ext406.i = sext i32 %293 to i64
  %add.ptr407.sum.i = shl nsw i64 %idx.ext406.i, 1
  %cmp410.i = icmp eq i32 %293, %289
  %cmp472.i = icmp eq i32 %290, %292
  %add.ptr409.sum.i = add i64 %add.ptr407.sum.i, %idx.ext406.i
  %294 = load i32** %rowindA.i99, align 8, !tbaa !0
  %cmp4421610.i = icmp sgt i32 %293, 0
  %295 = load i32** %colindA.i98, align 8, !tbaa !0
  br label %for.body394.i

for.body394.i:                                    ; preds = %if.end523.i, %for.body394.lr.ph.i
  %indvars.iv1833.i = phi i64 [ 0, %for.body394.lr.ph.i ], [ %indvars.iv.next1834.i, %if.end523.i ]
  %irowA.11645.i = phi i32 [ 0, %for.body394.lr.ph.i ], [ %add527.i, %if.end523.i ]
  %rowA0.11641.i = phi double* [ %291, %for.body394.lr.ph.i ], [ %add.ptr525.i, %if.end523.i ]
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
  %arrayidx416.i = getelementptr inbounds double* %rowA0.11641.i, i64 %indvars.iv1831.i
  %296 = load double* %arrayidx416.i, align 8, !tbaa !4
  %add.ptr407.sum1533.i = add i64 %indvars.iv1831.i, %idx.ext406.i
  %arrayidx418.i = getelementptr inbounds double* %rowA0.11641.i, i64 %add.ptr407.sum1533.i
  %297 = load double* %arrayidx418.i, align 8, !tbaa !4
  %add.ptr409.sum1534.i = add i64 %indvars.iv1831.i, %add.ptr407.sum.i
  %arrayidx420.i141 = getelementptr inbounds double* %rowA0.11641.i, i64 %add.ptr409.sum1534.i
  %298 = load double* %arrayidx420.i141, align 8, !tbaa !4
  %arrayidx422.i142 = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %indvars.iv1831.i
  %299 = load double* %arrayidx422.i142, align 8, !tbaa !4
  %add.ptr388.sum1535.i = add i64 %indvars.iv1831.i, %idx.ext387.i
  %arrayidx424.i143 = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %add.ptr388.sum1535.i
  %300 = load double* %arrayidx424.i143, align 8, !tbaa !4
  %mul425.i = fmul double %296, %299
  %add426.i = fadd double %sum00400.01627.i, %mul425.i
  %mul427.i144 = fmul double %296, %300
  %add428.i = fadd double %sum01401.01628.i, %mul427.i144
  %mul429.i = fmul double %297, %299
  %add430.i = fadd double %sum10402.01629.i, %mul429.i
  %mul431.i = fmul double %297, %300
  %add432.i = fadd double %sum11403.01630.i, %mul431.i
  %mul433.i = fmul double %298, %299
  %add434.i = fadd double %sum20404.01631.i, %mul433.i
  %mul435.i145 = fmul double %298, %300
  %add436.i = fadd double %sum21405.01632.i, %mul435.i145
  %indvars.iv.next1832.i = add i64 %indvars.iv1831.i, 1
  %lftr.wideiv1157 = trunc i64 %indvars.iv.next1832.i to i32
  %exitcond1158 = icmp eq i32 %lftr.wideiv1157, %289
  br i1 %exitcond1158, label %if.end471.i, label %for.body414.i

for.body443.i:                                    ; preds = %for.cond441.preheader.i, %for.body443.i
  %indvars.iv1829.i = phi i64 [ %indvars.iv.next1830.i, %for.body443.i ], [ 0, %for.cond441.preheader.i ]
  %sum21405.11617.i = phi double [ %add467.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum20404.11616.i = phi double [ %add465.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum11403.11615.i = phi double [ %add463.i146, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum10402.11614.i = phi double [ %add461.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum01401.11613.i = phi double [ %add459.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum00400.11612.i = phi double [ %add457.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %arrayidx445.i = getelementptr inbounds double* %rowA0.11641.i, i64 %indvars.iv1829.i
  %301 = load double* %arrayidx445.i, align 8, !tbaa !4
  %add.ptr407.sum1530.i = add i64 %indvars.iv1829.i, %idx.ext406.i
  %arrayidx447.i = getelementptr inbounds double* %rowA0.11641.i, i64 %add.ptr407.sum1530.i
  %302 = load double* %arrayidx447.i, align 8, !tbaa !4
  %add.ptr409.sum1531.i = add i64 %indvars.iv1829.i, %add.ptr407.sum.i
  %arrayidx449.i = getelementptr inbounds double* %rowA0.11641.i, i64 %add.ptr409.sum1531.i
  %303 = load double* %arrayidx449.i, align 8, !tbaa !4
  %arrayidx451.i = getelementptr inbounds i32* %295, i64 %indvars.iv1829.i
  %304 = load i32* %arrayidx451.i, align 4, !tbaa !3
  %idxprom452.i = sext i32 %304 to i64
  %arrayidx453.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %idxprom452.i
  %305 = load double* %arrayidx453.i, align 8, !tbaa !4
  %add.ptr388.sum1532.i = add i64 %idxprom452.i, %idx.ext387.i
  %arrayidx455.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %add.ptr388.sum1532.i
  %306 = load double* %arrayidx455.i, align 8, !tbaa !4
  %mul456.i = fmul double %301, %305
  %add457.i = fadd double %sum00400.11612.i, %mul456.i
  %mul458.i = fmul double %301, %306
  %add459.i = fadd double %sum01401.11613.i, %mul458.i
  %mul460.i = fmul double %302, %305
  %add461.i = fadd double %sum10402.11614.i, %mul460.i
  %mul462.i = fmul double %302, %306
  %add463.i146 = fadd double %sum11403.11615.i, %mul462.i
  %mul464.i = fmul double %303, %305
  %add465.i = fadd double %sum20404.11616.i, %mul464.i
  %mul466.i = fmul double %303, %306
  %add467.i = fadd double %sum21405.11617.i, %mul466.i
  %indvars.iv.next1830.i = add i64 %indvars.iv1829.i, 1
  %lftr.wideiv1155 = trunc i64 %indvars.iv.next1830.i to i32
  %exitcond1156 = icmp eq i32 %lftr.wideiv1155, %293
  br i1 %exitcond1156, label %if.end471.i, label %for.body443.i

if.end471.i:                                      ; preds = %for.body414.i, %for.body443.i, %for.cond441.preheader.i, %for.cond412.preheader.i
  %sum00400.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add457.i, %for.body443.i ], [ %add426.i, %for.body414.i ]
  %sum01401.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add459.i, %for.body443.i ], [ %add428.i, %for.body414.i ]
  %sum10402.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add461.i, %for.body443.i ], [ %add430.i, %for.body414.i ]
  %sum11403.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add463.i146, %for.body443.i ], [ %add432.i, %for.body414.i ]
  %sum20404.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add465.i, %for.body443.i ], [ %add434.i, %for.body414.i ]
  %sum21405.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add467.i, %for.body443.i ], [ %add436.i, %for.body414.i ]
  br i1 %cmp472.i, label %if.then473.i, label %if.else496.i

if.then473.i:                                     ; preds = %if.end471.i
  %arrayidx475.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %indvars.iv1833.i
  %307 = load double* %arrayidx475.i, align 8, !tbaa !4
  %sub476.i = fsub double %307, %sum00400.2.i
  store double %sub476.i, double* %arrayidx475.i, align 8, !tbaa !4
  %add.ptr390.sum1527.i = add i64 %indvars.iv1833.i, %idx.ext389.i
  %arrayidx478.i147 = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1527.i
  %308 = load double* %arrayidx478.i147, align 8, !tbaa !4
  %sub479.i = fsub double %308, %sum01401.2.i
  store double %sub479.i, double* %arrayidx478.i147, align 8, !tbaa !4
  %309 = add nsw i64 %indvars.iv1833.i, 1
  %arrayidx482.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %309
  %310 = load double* %arrayidx482.i, align 8, !tbaa !4
  %sub483.i = fsub double %310, %sum10402.2.i
  store double %sub483.i, double* %arrayidx482.i, align 8, !tbaa !4
  %add.ptr390.sum1528.i = add i64 %309, %idx.ext389.i
  %arrayidx486.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1528.i
  %311 = load double* %arrayidx486.i, align 8, !tbaa !4
  %sub487.i = fsub double %311, %sum11403.2.i
  store double %sub487.i, double* %arrayidx486.i, align 8, !tbaa !4
  %312 = add nsw i64 %indvars.iv1833.i, 2
  %arrayidx490.i148 = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %312
  %313 = load double* %arrayidx490.i148, align 8, !tbaa !4
  %sub491.i = fsub double %313, %sum20404.2.i
  store double %sub491.i, double* %arrayidx490.i148, align 8, !tbaa !4
  %add.ptr390.sum1529.i = add i64 %312, %idx.ext389.i
  %arrayidx494.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1529.i
  %314 = load double* %arrayidx494.i, align 8, !tbaa !4
  %sub495.i = fsub double %314, %sum21405.2.i
  store double %sub495.i, double* %arrayidx494.i, align 8, !tbaa !4
  br label %if.end523.i

if.else496.i:                                     ; preds = %if.end471.i
  %arrayidx498.i = getelementptr inbounds i32* %294, i64 %indvars.iv1833.i
  %315 = load i32* %arrayidx498.i, align 4, !tbaa !3
  %idxprom499.i = sext i32 %315 to i64
  %arrayidx500.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom499.i
  %316 = load double* %arrayidx500.i, align 8, !tbaa !4
  %sub501.i = fsub double %316, %sum00400.2.i
  store double %sub501.i, double* %arrayidx500.i, align 8, !tbaa !4
  %add.ptr390.sum1524.i = add i64 %idxprom499.i, %idx.ext389.i
  %arrayidx503.i149 = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1524.i
  %317 = load double* %arrayidx503.i149, align 8, !tbaa !4
  %sub504.i150 = fsub double %317, %sum01401.2.i
  store double %sub504.i150, double* %arrayidx503.i149, align 8, !tbaa !4
  %318 = add nsw i64 %indvars.iv1833.i, 1
  %arrayidx507.i = getelementptr inbounds i32* %294, i64 %318
  %319 = load i32* %arrayidx507.i, align 4, !tbaa !3
  %idxprom508.i = sext i32 %319 to i64
  %arrayidx509.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom508.i
  %320 = load double* %arrayidx509.i, align 8, !tbaa !4
  %sub510.i = fsub double %320, %sum10402.2.i
  store double %sub510.i, double* %arrayidx509.i, align 8, !tbaa !4
  %add.ptr390.sum1525.i = add i64 %idxprom508.i, %idx.ext389.i
  %arrayidx512.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1525.i
  %321 = load double* %arrayidx512.i, align 8, !tbaa !4
  %sub513.i = fsub double %321, %sum11403.2.i
  store double %sub513.i, double* %arrayidx512.i, align 8, !tbaa !4
  %322 = add nsw i64 %indvars.iv1833.i, 2
  %arrayidx516.i = getelementptr inbounds i32* %294, i64 %322
  %323 = load i32* %arrayidx516.i, align 4, !tbaa !3
  %idxprom517.i = sext i32 %323 to i64
  %arrayidx518.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom517.i
  %324 = load double* %arrayidx518.i, align 8, !tbaa !4
  %sub519.i = fsub double %324, %sum20404.2.i
  store double %sub519.i, double* %arrayidx518.i, align 8, !tbaa !4
  %add.ptr390.sum1526.i = add i64 %idxprom517.i, %idx.ext389.i
  %arrayidx521.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1526.i
  %325 = load double* %arrayidx521.i, align 8, !tbaa !4
  %sub522.i = fsub double %325, %sum21405.2.i
  store double %sub522.i, double* %arrayidx521.i, align 8, !tbaa !4
  br label %if.end523.i

if.end523.i:                                      ; preds = %if.else496.i, %if.then473.i
  %add.ptr525.i = getelementptr inbounds double* %rowA0.11641.i, i64 %add.ptr409.sum.i
  %indvars.iv.next1834.i = add i64 %indvars.iv1833.i, 3
  %add527.i = add nsw i32 %irowA.11645.i, 3
  %326 = trunc i64 %indvars.iv.next1834.i to i32
  %cmp393.i = icmp slt i32 %326, %sub3921639.i
  br i1 %cmp393.i, label %for.body394.i, label %for.end528.i

for.end528.i:                                     ; preds = %if.end523.i, %if.then386.i
  %irowA.1.lcssa.i = phi i32 [ 0, %if.then386.i ], [ %add527.i, %if.end523.i ]
  %rowA0.1.lcssa.i = phi double* [ %291, %if.then386.i ], [ %add.ptr525.i, %if.end523.i ]
  %cmp530.i = icmp eq i32 %irowA.1.lcssa.i, %sub3921639.i
  br i1 %cmp530.i, label %if.then531.i, label %if.else627.i

if.then531.i:                                     ; preds = %for.end528.i
  %327 = load i32* %ncolA.i92, align 4, !tbaa !3
  %idx.ext540.i = sext i32 %327 to i64
  %cmp542.i = icmp eq i32 %327, %289
  br i1 %cmp542.i, label %for.cond544.preheader.i, label %for.cond567.preheader.i

for.cond567.preheader.i:                          ; preds = %if.then531.i
  %cmp5681587.i = icmp sgt i32 %327, 0
  br i1 %cmp5681587.i, label %for.body569.lr.ph.i, label %if.end591.i

for.body569.lr.ph.i:                              ; preds = %for.cond567.preheader.i
  %328 = load i32** %colindA.i98, align 8, !tbaa !0
  br label %for.body569.i

for.cond544.preheader.i:                          ; preds = %if.then531.i
  %cmp5451577.i = icmp sgt i32 %289, 0
  br i1 %cmp5451577.i, label %for.body546.i, label %if.end591.i

for.body546.i:                                    ; preds = %for.cond544.preheader.i, %for.body546.i
  %indvars.iv.i151 = phi i64 [ %indvars.iv.next.i153, %for.body546.i ], [ 0, %for.cond544.preheader.i ]
  %sum11539.01582.i = phi double [ %add562.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %sum10538.01581.i = phi double [ %add560.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %sum01537.01580.i = phi double [ %add558.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %sum00536.01579.i = phi double [ %add556.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %arrayidx548.i = getelementptr inbounds double* %rowA0.1.lcssa.i, i64 %indvars.iv.i151
  %329 = load double* %arrayidx548.i, align 8, !tbaa !4
  %add.ptr541.sum1522.i = add i64 %indvars.iv.i151, %idx.ext540.i
  %arrayidx550.i = getelementptr inbounds double* %rowA0.1.lcssa.i, i64 %add.ptr541.sum1522.i
  %330 = load double* %arrayidx550.i, align 8, !tbaa !4
  %arrayidx552.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %indvars.iv.i151
  %331 = load double* %arrayidx552.i, align 8, !tbaa !4
  %add.ptr388.sum1523.i = add i64 %indvars.iv.i151, %idx.ext387.i
  %arrayidx554.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %add.ptr388.sum1523.i
  %332 = load double* %arrayidx554.i, align 8, !tbaa !4
  %mul555.i = fmul double %329, %331
  %add556.i = fadd double %sum00536.01579.i, %mul555.i
  %mul557.i = fmul double %329, %332
  %add558.i = fadd double %sum01537.01580.i, %mul557.i
  %mul559.i152 = fmul double %330, %331
  %add560.i = fadd double %sum10538.01581.i, %mul559.i152
  %mul561.i = fmul double %330, %332
  %add562.i = fadd double %sum11539.01582.i, %mul561.i
  %indvars.iv.next.i153 = add i64 %indvars.iv.i151, 1
  %lftr.wideiv1147 = trunc i64 %indvars.iv.next.i153 to i32
  %exitcond1148 = icmp eq i32 %lftr.wideiv1147, %289
  br i1 %exitcond1148, label %if.end591.i, label %for.body546.i

for.body569.i:                                    ; preds = %for.body569.i, %for.body569.lr.ph.i
  %indvars.iv1823.i = phi i64 [ 0, %for.body569.lr.ph.i ], [ %indvars.iv.next1824.i, %for.body569.i ]
  %sum11539.11592.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add587.i, %for.body569.i ]
  %sum10538.11591.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add585.i, %for.body569.i ]
  %sum01537.11590.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add583.i, %for.body569.i ]
  %sum00536.11589.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add581.i, %for.body569.i ]
  %arrayidx571.i = getelementptr inbounds double* %rowA0.1.lcssa.i, i64 %indvars.iv1823.i
  %333 = load double* %arrayidx571.i, align 8, !tbaa !4
  %add.ptr541.sum.i = add i64 %indvars.iv1823.i, %idx.ext540.i
  %arrayidx573.i = getelementptr inbounds double* %rowA0.1.lcssa.i, i64 %add.ptr541.sum.i
  %334 = load double* %arrayidx573.i, align 8, !tbaa !4
  %arrayidx575.i154 = getelementptr inbounds i32* %328, i64 %indvars.iv1823.i
  %335 = load i32* %arrayidx575.i154, align 4, !tbaa !3
  %idxprom576.i = sext i32 %335 to i64
  %arrayidx577.i155 = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %idxprom576.i
  %336 = load double* %arrayidx577.i155, align 8, !tbaa !4
  %add.ptr388.sum1521.i = add i64 %idxprom576.i, %idx.ext387.i
  %arrayidx579.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %add.ptr388.sum1521.i
  %337 = load double* %arrayidx579.i, align 8, !tbaa !4
  %mul580.i = fmul double %333, %336
  %add581.i = fadd double %sum00536.11589.i, %mul580.i
  %mul582.i156 = fmul double %333, %337
  %add583.i = fadd double %sum01537.11590.i, %mul582.i156
  %mul584.i = fmul double %334, %336
  %add585.i = fadd double %sum10538.11591.i, %mul584.i
  %mul586.i = fmul double %334, %337
  %add587.i = fadd double %sum11539.11592.i, %mul586.i
  %indvars.iv.next1824.i = add i64 %indvars.iv1823.i, 1
  %lftr.wideiv1149 = trunc i64 %indvars.iv.next1824.i to i32
  %exitcond1150 = icmp eq i32 %lftr.wideiv1149, %327
  br i1 %exitcond1150, label %if.end591.i, label %for.body569.i

if.end591.i:                                      ; preds = %for.body569.i, %for.body546.i, %for.cond544.preheader.i, %for.cond567.preheader.i
  %sum00536.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add556.i, %for.body546.i ], [ %add581.i, %for.body569.i ]
  %sum01537.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add558.i, %for.body546.i ], [ %add583.i, %for.body569.i ]
  %sum10538.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add560.i, %for.body546.i ], [ %add585.i, %for.body569.i ]
  %sum11539.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add562.i, %for.body546.i ], [ %add587.i, %for.body569.i ]
  %cmp592.i = icmp eq i32 %290, %292
  %idxprom594.i = sext i32 %sub3921639.i to i64
  br i1 %cmp592.i, label %if.then593.i, label %if.else608.i

if.then593.i:                                     ; preds = %if.end591.i
  %arrayidx595.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom594.i
  %338 = load double* %arrayidx595.i, align 8, !tbaa !4
  %sub596.i = fsub double %338, %sum00536.2.i
  store double %sub596.i, double* %arrayidx595.i, align 8, !tbaa !4
  %add.ptr390.sum1519.i = add i64 %idxprom594.i, %idx.ext389.i
  %arrayidx598.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1519.i
  %339 = load double* %arrayidx598.i, align 8, !tbaa !4
  %sub599.i = fsub double %339, %sum01537.2.i
  store double %sub599.i, double* %arrayidx598.i, align 8, !tbaa !4
  %add600.i = add nsw i32 %290, -1
  %idxprom601.i = sext i32 %add600.i to i64
  %arrayidx602.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom601.i
  %340 = load double* %arrayidx602.i, align 8, !tbaa !4
  %sub603.i = fsub double %340, %sum10538.2.i
  store double %sub603.i, double* %arrayidx602.i, align 8, !tbaa !4
  %add.ptr390.sum1520.i = add i64 %idxprom601.i, %idx.ext389.i
  %arrayidx606.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1520.i
  %341 = load double* %arrayidx606.i, align 8, !tbaa !4
  %sub607.i = fsub double %341, %sum11539.2.i
  store double %sub607.i, double* %arrayidx606.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else608.i:                                     ; preds = %if.end591.i
  %342 = load i32** %rowindA.i99, align 8, !tbaa !0
  %arrayidx610.i = getelementptr inbounds i32* %342, i64 %idxprom594.i
  %343 = load i32* %arrayidx610.i, align 4, !tbaa !3
  %idxprom611.i = sext i32 %343 to i64
  %arrayidx612.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom611.i
  %344 = load double* %arrayidx612.i, align 8, !tbaa !4
  %sub613.i = fsub double %344, %sum00536.2.i
  store double %sub613.i, double* %arrayidx612.i, align 8, !tbaa !4
  %add.ptr390.sum1517.i = add i64 %idxprom611.i, %idx.ext389.i
  %arrayidx615.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1517.i
  %345 = load double* %arrayidx615.i, align 8, !tbaa !4
  %sub616.i = fsub double %345, %sum01537.2.i
  store double %sub616.i, double* %arrayidx615.i, align 8, !tbaa !4
  %add617.i = add nsw i32 %292, -1
  %idxprom618.i = sext i32 %add617.i to i64
  %arrayidx619.i = getelementptr inbounds i32* %342, i64 %idxprom618.i
  %346 = load i32* %arrayidx619.i, align 4, !tbaa !3
  %idxprom620.i = sext i32 %346 to i64
  %arrayidx621.i157 = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom620.i
  %347 = load double* %arrayidx621.i157, align 8, !tbaa !4
  %sub622.i = fsub double %347, %sum10538.2.i
  store double %sub622.i, double* %arrayidx621.i157, align 8, !tbaa !4
  %add.ptr390.sum1518.i = add i64 %idxprom620.i, %idx.ext389.i
  %arrayidx624.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1518.i
  %348 = load double* %arrayidx624.i, align 8, !tbaa !4
  %sub625.i = fsub double %348, %sum11539.2.i
  store double %sub625.i, double* %arrayidx624.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else627.i:                                     ; preds = %for.end528.i
  %sub628.i = add nsw i32 %292, -1
  %cmp629.i = icmp eq i32 %irowA.1.lcssa.i, %sub628.i
  br i1 %cmp629.i, label %if.then630.i, label %sw.epilog34

if.then630.i:                                     ; preds = %if.else627.i
  %349 = load i32* %ncolA.i92, align 4, !tbaa !3
  %cmp636.i = icmp eq i32 %349, %289
  br i1 %cmp636.i, label %for.cond638.preheader.i, label %for.cond655.preheader.i

for.cond655.preheader.i:                          ; preds = %if.then630.i
  %cmp6561604.i = icmp sgt i32 %349, 0
  br i1 %cmp6561604.i, label %for.body657.lr.ph.i, label %if.end673.i

for.body657.lr.ph.i:                              ; preds = %for.cond655.preheader.i
  %350 = load i32** %colindA.i98, align 8, !tbaa !0
  br label %for.body657.i

for.cond638.preheader.i:                          ; preds = %if.then630.i
  %cmp6391597.i = icmp sgt i32 %289, 0
  br i1 %cmp6391597.i, label %for.body640.i, label %if.end673.i

for.body640.i:                                    ; preds = %for.cond638.preheader.i, %for.body640.i
  %indvars.iv1825.i = phi i64 [ %indvars.iv.next1826.i, %for.body640.i ], [ 0, %for.cond638.preheader.i ]
  %sum01635.01600.i = phi double [ %add650.i, %for.body640.i ], [ 0.000000e+00, %for.cond638.preheader.i ]
  %sum00634.01599.i = phi double [ %add648.i, %for.body640.i ], [ 0.000000e+00, %for.cond638.preheader.i ]
  %arrayidx642.i = getelementptr inbounds double* %rowA0.1.lcssa.i, i64 %indvars.iv1825.i
  %351 = load double* %arrayidx642.i, align 8, !tbaa !4
  %arrayidx644.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %indvars.iv1825.i
  %352 = load double* %arrayidx644.i, align 8, !tbaa !4
  %add.ptr388.sum1516.i = add i64 %indvars.iv1825.i, %idx.ext387.i
  %arrayidx646.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %add.ptr388.sum1516.i
  %353 = load double* %arrayidx646.i, align 8, !tbaa !4
  %mul647.i = fmul double %351, %352
  %add648.i = fadd double %sum00634.01599.i, %mul647.i
  %mul649.i = fmul double %351, %353
  %add650.i = fadd double %sum01635.01600.i, %mul649.i
  %indvars.iv.next1826.i = add i64 %indvars.iv1825.i, 1
  %lftr.wideiv1151 = trunc i64 %indvars.iv.next1826.i to i32
  %exitcond1152 = icmp eq i32 %lftr.wideiv1151, %289
  br i1 %exitcond1152, label %if.end673.i, label %for.body640.i

for.body657.i:                                    ; preds = %for.body657.i, %for.body657.lr.ph.i
  %indvars.iv1827.i = phi i64 [ 0, %for.body657.lr.ph.i ], [ %indvars.iv.next1828.i, %for.body657.i ]
  %sum01635.11607.i = phi double [ 0.000000e+00, %for.body657.lr.ph.i ], [ %add669.i, %for.body657.i ]
  %sum00634.11606.i = phi double [ 0.000000e+00, %for.body657.lr.ph.i ], [ %add667.i, %for.body657.i ]
  %arrayidx659.i158 = getelementptr inbounds double* %rowA0.1.lcssa.i, i64 %indvars.iv1827.i
  %354 = load double* %arrayidx659.i158, align 8, !tbaa !4
  %arrayidx661.i159 = getelementptr inbounds i32* %350, i64 %indvars.iv1827.i
  %355 = load i32* %arrayidx661.i159, align 4, !tbaa !3
  %idxprom662.i = sext i32 %355 to i64
  %arrayidx663.i160 = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %idxprom662.i
  %356 = load double* %arrayidx663.i160, align 8, !tbaa !4
  %add.ptr388.sum.i = add i64 %idxprom662.i, %idx.ext387.i
  %arrayidx665.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %add.ptr388.sum.i
  %357 = load double* %arrayidx665.i, align 8, !tbaa !4
  %mul666.i = fmul double %354, %356
  %add667.i = fadd double %sum00634.11606.i, %mul666.i
  %mul668.i = fmul double %354, %357
  %add669.i = fadd double %sum01635.11607.i, %mul668.i
  %indvars.iv.next1828.i = add i64 %indvars.iv1827.i, 1
  %lftr.wideiv1153 = trunc i64 %indvars.iv.next1828.i to i32
  %exitcond1154 = icmp eq i32 %lftr.wideiv1153, %349
  br i1 %exitcond1154, label %if.end673.i, label %for.body657.i

if.end673.i:                                      ; preds = %for.body657.i, %for.body640.i, %for.cond638.preheader.i, %for.cond655.preheader.i
  %sum00634.2.i = phi double [ 0.000000e+00, %for.cond638.preheader.i ], [ 0.000000e+00, %for.cond655.preheader.i ], [ %add648.i, %for.body640.i ], [ %add667.i, %for.body657.i ]
  %sum01635.2.i = phi double [ 0.000000e+00, %for.cond638.preheader.i ], [ 0.000000e+00, %for.cond655.preheader.i ], [ %add650.i, %for.body640.i ], [ %add669.i, %for.body657.i ]
  %cmp674.i = icmp eq i32 %290, %292
  %idxprom676.i = sext i32 %irowA.1.lcssa.i to i64
  br i1 %cmp674.i, label %if.then675.i, label %if.else682.i

if.then675.i:                                     ; preds = %if.end673.i
  %arrayidx677.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom676.i
  %358 = load double* %arrayidx677.i, align 8, !tbaa !4
  %sub678.i = fsub double %358, %sum00634.2.i
  store double %sub678.i, double* %arrayidx677.i, align 8, !tbaa !4
  %add.ptr390.sum1515.i = add i64 %idxprom676.i, %idx.ext389.i
  %arrayidx680.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum1515.i
  %359 = load double* %arrayidx680.i, align 8, !tbaa !4
  %sub681.i = fsub double %359, %sum01635.2.i
  store double %sub681.i, double* %arrayidx680.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else682.i:                                     ; preds = %if.end673.i
  %360 = load i32** %rowindA.i99, align 8, !tbaa !0
  %arrayidx684.i = getelementptr inbounds i32* %360, i64 %idxprom676.i
  %361 = load i32* %arrayidx684.i, align 4, !tbaa !3
  %idxprom685.i = sext i32 %361 to i64
  %arrayidx686.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom685.i
  %362 = load double* %arrayidx686.i, align 8, !tbaa !4
  %sub687.i = fsub double %362, %sum00634.2.i
  store double %sub687.i, double* %arrayidx686.i, align 8, !tbaa !4
  %add.ptr390.sum.i = add i64 %idxprom685.i, %idx.ext389.i
  %arrayidx689.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %add.ptr390.sum.i
  %363 = load double* %arrayidx689.i, align 8, !tbaa !4
  %sub690.i = fsub double %363, %sum01635.2.i
  store double %sub690.i, double* %arrayidx689.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else694.i:                                     ; preds = %for.end383.i
  %sub695.i = add nsw i32 %201, -1
  %cmp696.i = icmp eq i32 %jcolX.0.lcssa.i137, %sub695.i
  br i1 %cmp696.i, label %if.then697.i, label %sw.epilog34

if.then697.i:                                     ; preds = %if.else694.i
  %364 = load double** %entA.i87, align 8, !tbaa !0
  %365 = load i32* %nrowA.i95, align 4, !tbaa !3
  %sub6991690.i = add nsw i32 %365, -2
  %cmp7001691.i = icmp sgt i32 %sub6991690.i, 0
  br i1 %cmp7001691.i, label %for.body701.lr.ph.i, label %for.end795.i

for.body701.lr.ph.i:                              ; preds = %if.then697.i
  %366 = load i32* %ncolA.i92, align 4, !tbaa !3
  %idx.ext709.i = sext i32 %366 to i64
  %add.ptr710.sum.i = shl nsw i64 %idx.ext709.i, 1
  %367 = load i32* %nrowX.i96, align 4, !tbaa !3
  %cmp713.i = icmp eq i32 %366, %367
  %368 = load i32* %nrowY.i97, align 4, !tbaa !3
  %cmp759.i161 = icmp eq i32 %368, %365
  %add.ptr712.sum.i = add i64 %add.ptr710.sum.i, %idx.ext709.i
  %369 = load i32** %rowindA.i99, align 8, !tbaa !0
  %cmp7371672.i = icmp sgt i32 %366, 0
  %370 = load i32** %colindA.i98, align 8, !tbaa !0
  br label %for.body701.i

for.body701.i:                                    ; preds = %if.end790.i, %for.body701.lr.ph.i
  %indvars.iv1853.i = phi i64 [ 0, %for.body701.lr.ph.i ], [ %indvars.iv.next1854.i, %if.end790.i ]
  %irowA.21696.i = phi i32 [ 0, %for.body701.lr.ph.i ], [ %add794.i, %if.end790.i ]
  %rowA0.21692.i = phi double* [ %364, %for.body701.lr.ph.i ], [ %add.ptr792.i, %if.end790.i ]
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
  %arrayidx719.i = getelementptr inbounds double* %rowA0.21692.i, i64 %indvars.iv1849.i
  %371 = load double* %arrayidx719.i, align 8, !tbaa !4
  %add.ptr710.sum1513.i = add i64 %indvars.iv1849.i, %idx.ext709.i
  %arrayidx721.i = getelementptr inbounds double* %rowA0.21692.i, i64 %add.ptr710.sum1513.i
  %372 = load double* %arrayidx721.i, align 8, !tbaa !4
  %add.ptr712.sum1514.i = add i64 %indvars.iv1849.i, %add.ptr710.sum.i
  %arrayidx723.i = getelementptr inbounds double* %rowA0.21692.i, i64 %add.ptr712.sum1514.i
  %373 = load double* %arrayidx723.i, align 8, !tbaa !4
  %arrayidx725.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %indvars.iv1849.i
  %374 = load double* %arrayidx725.i, align 8, !tbaa !4
  %mul726.i = fmul double %371, %374
  %add727.i = fadd double %sum00706.01683.i, %mul726.i
  %mul728.i = fmul double %372, %374
  %add729.i = fadd double %sum10707.01684.i, %mul728.i
  %mul730.i = fmul double %373, %374
  %add731.i = fadd double %sum20708.01685.i, %mul730.i
  %indvars.iv.next1850.i = add i64 %indvars.iv1849.i, 1
  %lftr.wideiv1169 = trunc i64 %indvars.iv.next1850.i to i32
  %exitcond1170 = icmp eq i32 %lftr.wideiv1169, %366
  br i1 %exitcond1170, label %if.end758.i, label %for.body717.i

for.body738.i:                                    ; preds = %for.cond736.preheader.i, %for.body738.i
  %indvars.iv1847.i = phi i64 [ %indvars.iv.next1848.i, %for.body738.i ], [ 0, %for.cond736.preheader.i ]
  %sum20708.11676.i = phi double [ %add754.i, %for.body738.i ], [ 0.000000e+00, %for.cond736.preheader.i ]
  %sum10707.11675.i = phi double [ %add752.i, %for.body738.i ], [ 0.000000e+00, %for.cond736.preheader.i ]
  %sum00706.11674.i = phi double [ %add750.i, %for.body738.i ], [ 0.000000e+00, %for.cond736.preheader.i ]
  %arrayidx740.i = getelementptr inbounds double* %rowA0.21692.i, i64 %indvars.iv1847.i
  %375 = load double* %arrayidx740.i, align 8, !tbaa !4
  %add.ptr710.sum1511.i = add i64 %indvars.iv1847.i, %idx.ext709.i
  %arrayidx742.i = getelementptr inbounds double* %rowA0.21692.i, i64 %add.ptr710.sum1511.i
  %376 = load double* %arrayidx742.i, align 8, !tbaa !4
  %add.ptr712.sum1512.i = add i64 %indvars.iv1847.i, %add.ptr710.sum.i
  %arrayidx744.i = getelementptr inbounds double* %rowA0.21692.i, i64 %add.ptr712.sum1512.i
  %377 = load double* %arrayidx744.i, align 8, !tbaa !4
  %arrayidx746.i = getelementptr inbounds i32* %370, i64 %indvars.iv1847.i
  %378 = load i32* %arrayidx746.i, align 4, !tbaa !3
  %idxprom747.i = sext i32 %378 to i64
  %arrayidx748.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %idxprom747.i
  %379 = load double* %arrayidx748.i, align 8, !tbaa !4
  %mul749.i = fmul double %375, %379
  %add750.i = fadd double %sum00706.11674.i, %mul749.i
  %mul751.i = fmul double %376, %379
  %add752.i = fadd double %sum10707.11675.i, %mul751.i
  %mul753.i = fmul double %377, %379
  %add754.i = fadd double %sum20708.11676.i, %mul753.i
  %indvars.iv.next1848.i = add i64 %indvars.iv1847.i, 1
  %lftr.wideiv1167 = trunc i64 %indvars.iv.next1848.i to i32
  %exitcond1168 = icmp eq i32 %lftr.wideiv1167, %366
  br i1 %exitcond1168, label %if.end758.i, label %for.body738.i

if.end758.i:                                      ; preds = %for.body717.i, %for.body738.i, %for.cond736.preheader.i, %for.cond715.preheader.i
  %sum00706.2.i = phi double [ 0.000000e+00, %for.cond736.preheader.i ], [ 0.000000e+00, %for.cond715.preheader.i ], [ %add750.i, %for.body738.i ], [ %add727.i, %for.body717.i ]
  %sum10707.2.i = phi double [ 0.000000e+00, %for.cond736.preheader.i ], [ 0.000000e+00, %for.cond715.preheader.i ], [ %add752.i, %for.body738.i ], [ %add729.i, %for.body717.i ]
  %sum20708.2.i = phi double [ 0.000000e+00, %for.cond736.preheader.i ], [ 0.000000e+00, %for.cond715.preheader.i ], [ %add754.i, %for.body738.i ], [ %add731.i, %for.body717.i ]
  br i1 %cmp759.i161, label %if.then760.i, label %if.else772.i

if.then760.i:                                     ; preds = %if.end758.i
  %arrayidx762.i162 = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %indvars.iv1853.i
  %380 = load double* %arrayidx762.i162, align 8, !tbaa !4
  %sub763.i = fsub double %380, %sum00706.2.i
  store double %sub763.i, double* %arrayidx762.i162, align 8, !tbaa !4
  %381 = add nsw i64 %indvars.iv1853.i, 1
  %arrayidx766.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %381
  %382 = load double* %arrayidx766.i, align 8, !tbaa !4
  %sub767.i = fsub double %382, %sum10707.2.i
  store double %sub767.i, double* %arrayidx766.i, align 8, !tbaa !4
  %383 = add nsw i64 %indvars.iv1853.i, 2
  %arrayidx770.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %383
  %384 = load double* %arrayidx770.i, align 8, !tbaa !4
  %sub771.i = fsub double %384, %sum20708.2.i
  store double %sub771.i, double* %arrayidx770.i, align 8, !tbaa !4
  br label %if.end790.i

if.else772.i:                                     ; preds = %if.end758.i
  %arrayidx774.i = getelementptr inbounds i32* %369, i64 %indvars.iv1853.i
  %385 = load i32* %arrayidx774.i, align 4, !tbaa !3
  %idxprom775.i = sext i32 %385 to i64
  %arrayidx776.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom775.i
  %386 = load double* %arrayidx776.i, align 8, !tbaa !4
  %sub777.i = fsub double %386, %sum00706.2.i
  store double %sub777.i, double* %arrayidx776.i, align 8, !tbaa !4
  %387 = add nsw i64 %indvars.iv1853.i, 1
  %arrayidx780.i163 = getelementptr inbounds i32* %369, i64 %387
  %388 = load i32* %arrayidx780.i163, align 4, !tbaa !3
  %idxprom781.i = sext i32 %388 to i64
  %arrayidx782.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom781.i
  %389 = load double* %arrayidx782.i, align 8, !tbaa !4
  %sub783.i = fsub double %389, %sum10707.2.i
  store double %sub783.i, double* %arrayidx782.i, align 8, !tbaa !4
  %390 = add nsw i64 %indvars.iv1853.i, 2
  %arrayidx786.i = getelementptr inbounds i32* %369, i64 %390
  %391 = load i32* %arrayidx786.i, align 4, !tbaa !3
  %idxprom787.i = sext i32 %391 to i64
  %arrayidx788.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom787.i
  %392 = load double* %arrayidx788.i, align 8, !tbaa !4
  %sub789.i = fsub double %392, %sum20708.2.i
  store double %sub789.i, double* %arrayidx788.i, align 8, !tbaa !4
  br label %if.end790.i

if.end790.i:                                      ; preds = %if.else772.i, %if.then760.i
  %add.ptr792.i = getelementptr inbounds double* %rowA0.21692.i, i64 %add.ptr712.sum.i
  %indvars.iv.next1854.i = add i64 %indvars.iv1853.i, 3
  %add794.i = add nsw i32 %irowA.21696.i, 3
  %393 = trunc i64 %indvars.iv.next1854.i to i32
  %cmp700.i = icmp slt i32 %393, %sub6991690.i
  br i1 %cmp700.i, label %for.body701.i, label %for.end795.i

for.end795.i:                                     ; preds = %if.end790.i, %if.then697.i
  %irowA.2.lcssa.i = phi i32 [ 0, %if.then697.i ], [ %add794.i, %if.end790.i ]
  %rowA0.2.lcssa.i = phi double* [ %364, %if.then697.i ], [ %add.ptr792.i, %if.end790.i ]
  %cmp797.i = icmp eq i32 %irowA.2.lcssa.i, %sub6991690.i
  br i1 %cmp797.i, label %if.then798.i, label %if.else866.i

if.then798.i:                                     ; preds = %for.end795.i
  %394 = load i32* %ncolA.i92, align 4, !tbaa !3
  %idx.ext804.i = sext i32 %394 to i64
  %395 = load i32* %nrowX.i96, align 4, !tbaa !3
  %cmp806.i = icmp eq i32 %394, %395
  %cmp8091650.i = icmp sgt i32 %394, 0
  br i1 %cmp806.i, label %for.cond808.preheader.i, label %for.cond825.preheader.i

for.cond825.preheader.i:                          ; preds = %if.then798.i
  br i1 %cmp8091650.i, label %for.body827.lr.ph.i, label %if.end843.i

for.body827.lr.ph.i:                              ; preds = %for.cond825.preheader.i
  %396 = load i32** %colindA.i98, align 8, !tbaa !0
  br label %for.body827.i

for.cond808.preheader.i:                          ; preds = %if.then798.i
  br i1 %cmp8091650.i, label %for.body810.i, label %if.end843.i

for.body810.i:                                    ; preds = %for.cond808.preheader.i, %for.body810.i
  %indvars.iv1839.i = phi i64 [ %indvars.iv.next1840.i, %for.body810.i ], [ 0, %for.cond808.preheader.i ]
  %sum10803.01653.i = phi double [ %add820.i, %for.body810.i ], [ 0.000000e+00, %for.cond808.preheader.i ]
  %sum00802.01652.i = phi double [ %add818.i, %for.body810.i ], [ 0.000000e+00, %for.cond808.preheader.i ]
  %arrayidx812.i = getelementptr inbounds double* %rowA0.2.lcssa.i, i64 %indvars.iv1839.i
  %397 = load double* %arrayidx812.i, align 8, !tbaa !4
  %add.ptr805.sum1510.i = add i64 %indvars.iv1839.i, %idx.ext804.i
  %arrayidx814.i = getelementptr inbounds double* %rowA0.2.lcssa.i, i64 %add.ptr805.sum1510.i
  %398 = load double* %arrayidx814.i, align 8, !tbaa !4
  %arrayidx816.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %indvars.iv1839.i
  %399 = load double* %arrayidx816.i, align 8, !tbaa !4
  %mul817.i = fmul double %397, %399
  %add818.i = fadd double %sum00802.01652.i, %mul817.i
  %mul819.i = fmul double %398, %399
  %add820.i = fadd double %sum10803.01653.i, %mul819.i
  %indvars.iv.next1840.i = add i64 %indvars.iv1839.i, 1
  %lftr.wideiv1159 = trunc i64 %indvars.iv.next1840.i to i32
  %exitcond1160 = icmp eq i32 %lftr.wideiv1159, %394
  br i1 %exitcond1160, label %if.end843.i, label %for.body810.i

for.body827.i:                                    ; preds = %for.body827.i, %for.body827.lr.ph.i
  %indvars.iv1841.i = phi i64 [ 0, %for.body827.lr.ph.i ], [ %indvars.iv.next1842.i, %for.body827.i ]
  %sum10803.11660.i = phi double [ 0.000000e+00, %for.body827.lr.ph.i ], [ %add839.i, %for.body827.i ]
  %sum00802.11659.i = phi double [ 0.000000e+00, %for.body827.lr.ph.i ], [ %add837.i, %for.body827.i ]
  %arrayidx829.i = getelementptr inbounds double* %rowA0.2.lcssa.i, i64 %indvars.iv1841.i
  %400 = load double* %arrayidx829.i, align 8, !tbaa !4
  %add.ptr805.sum.i = add i64 %indvars.iv1841.i, %idx.ext804.i
  %arrayidx831.i = getelementptr inbounds double* %rowA0.2.lcssa.i, i64 %add.ptr805.sum.i
  %401 = load double* %arrayidx831.i, align 8, !tbaa !4
  %arrayidx833.i = getelementptr inbounds i32* %396, i64 %indvars.iv1841.i
  %402 = load i32* %arrayidx833.i, align 4, !tbaa !3
  %idxprom834.i = sext i32 %402 to i64
  %arrayidx835.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %idxprom834.i
  %403 = load double* %arrayidx835.i, align 8, !tbaa !4
  %mul836.i = fmul double %400, %403
  %add837.i = fadd double %sum00802.11659.i, %mul836.i
  %mul838.i = fmul double %401, %403
  %add839.i = fadd double %sum10803.11660.i, %mul838.i
  %indvars.iv.next1842.i = add i64 %indvars.iv1841.i, 1
  %lftr.wideiv1161 = trunc i64 %indvars.iv.next1842.i to i32
  %exitcond1162 = icmp eq i32 %lftr.wideiv1161, %394
  br i1 %exitcond1162, label %if.end843.i, label %for.body827.i

if.end843.i:                                      ; preds = %for.body827.i, %for.body810.i, %for.cond808.preheader.i, %for.cond825.preheader.i
  %sum00802.2.i = phi double [ 0.000000e+00, %for.cond825.preheader.i ], [ 0.000000e+00, %for.cond808.preheader.i ], [ %add818.i, %for.body810.i ], [ %add837.i, %for.body827.i ]
  %sum10803.2.i = phi double [ 0.000000e+00, %for.cond825.preheader.i ], [ 0.000000e+00, %for.cond808.preheader.i ], [ %add820.i, %for.body810.i ], [ %add839.i, %for.body827.i ]
  %404 = load i32* %nrowY.i97, align 4, !tbaa !3
  %cmp844.i = icmp eq i32 %404, %365
  %idxprom846.i = sext i32 %sub6991690.i to i64
  br i1 %cmp844.i, label %if.then845.i, label %if.else853.i

if.then845.i:                                     ; preds = %if.end843.i
  %arrayidx847.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom846.i
  %405 = load double* %arrayidx847.i, align 8, !tbaa !4
  %sub848.i = fsub double %405, %sum00802.2.i
  store double %sub848.i, double* %arrayidx847.i, align 8, !tbaa !4
  %add849.i = add nsw i32 %365, -1
  %idxprom850.i = sext i32 %add849.i to i64
  %arrayidx851.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom850.i
  %406 = load double* %arrayidx851.i, align 8, !tbaa !4
  %sub852.i = fsub double %406, %sum10803.2.i
  store double %sub852.i, double* %arrayidx851.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else853.i:                                     ; preds = %if.end843.i
  %407 = load i32** %rowindA.i99, align 8, !tbaa !0
  %arrayidx855.i = getelementptr inbounds i32* %407, i64 %idxprom846.i
  %408 = load i32* %arrayidx855.i, align 4, !tbaa !3
  %idxprom856.i = sext i32 %408 to i64
  %arrayidx857.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom856.i
  %409 = load double* %arrayidx857.i, align 8, !tbaa !4
  %sub858.i = fsub double %409, %sum00802.2.i
  store double %sub858.i, double* %arrayidx857.i, align 8, !tbaa !4
  %add859.i = add nsw i32 %365, -1
  %idxprom860.i = sext i32 %add859.i to i64
  %arrayidx861.i = getelementptr inbounds i32* %407, i64 %idxprom860.i
  %410 = load i32* %arrayidx861.i, align 4, !tbaa !3
  %idxprom862.i = sext i32 %410 to i64
  %arrayidx863.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom862.i
  %411 = load double* %arrayidx863.i, align 8, !tbaa !4
  %sub864.i = fsub double %411, %sum10803.2.i
  store double %sub864.i, double* %arrayidx863.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else866.i:                                     ; preds = %for.end795.i
  %sub867.i = add nsw i32 %365, -1
  %cmp868.i = icmp eq i32 %irowA.2.lcssa.i, %sub867.i
  br i1 %cmp868.i, label %if.then869.i, label %sw.epilog34

if.then869.i:                                     ; preds = %if.else866.i
  %412 = load i32* %ncolA.i92, align 4, !tbaa !3
  %413 = load i32* %nrowX.i96, align 4, !tbaa !3
  %cmp873.i = icmp eq i32 %412, %413
  %cmp8761663.i = icmp sgt i32 %412, 0
  br i1 %cmp873.i, label %for.cond875.preheader.i, label %for.cond888.preheader.i

for.cond888.preheader.i:                          ; preds = %if.then869.i
  br i1 %cmp8761663.i, label %for.body890.lr.ph.i, label %if.end902.i

for.body890.lr.ph.i:                              ; preds = %for.cond888.preheader.i
  %414 = load i32** %colindA.i98, align 8, !tbaa !0
  br label %for.body890.i

for.cond875.preheader.i:                          ; preds = %if.then869.i
  br i1 %cmp8761663.i, label %for.body877.i, label %if.end902.i

for.body877.i:                                    ; preds = %for.cond875.preheader.i, %for.body877.i
  %indvars.iv1843.i = phi i64 [ %indvars.iv.next1844.i, %for.body877.i ], [ 0, %for.cond875.preheader.i ]
  %sum00872.01665.i = phi double [ %add883.i, %for.body877.i ], [ 0.000000e+00, %for.cond875.preheader.i ]
  %arrayidx879.i = getelementptr inbounds double* %rowA0.2.lcssa.i, i64 %indvars.iv1843.i
  %415 = load double* %arrayidx879.i, align 8, !tbaa !4
  %arrayidx881.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %indvars.iv1843.i
  %416 = load double* %arrayidx881.i, align 8, !tbaa !4
  %mul882.i = fmul double %415, %416
  %add883.i = fadd double %sum00872.01665.i, %mul882.i
  %indvars.iv.next1844.i = add i64 %indvars.iv1843.i, 1
  %lftr.wideiv1163 = trunc i64 %indvars.iv.next1844.i to i32
  %exitcond1164 = icmp eq i32 %lftr.wideiv1163, %412
  br i1 %exitcond1164, label %if.end902.i, label %for.body877.i

for.body890.i:                                    ; preds = %for.body890.i, %for.body890.lr.ph.i
  %indvars.iv1845.i = phi i64 [ 0, %for.body890.lr.ph.i ], [ %indvars.iv.next1846.i, %for.body890.i ]
  %sum00872.11670.i = phi double [ 0.000000e+00, %for.body890.lr.ph.i ], [ %add898.i, %for.body890.i ]
  %arrayidx892.i = getelementptr inbounds double* %rowA0.2.lcssa.i, i64 %indvars.iv1845.i
  %417 = load double* %arrayidx892.i, align 8, !tbaa !4
  %arrayidx894.i = getelementptr inbounds i32* %414, i64 %indvars.iv1845.i
  %418 = load i32* %arrayidx894.i, align 4, !tbaa !3
  %idxprom895.i = sext i32 %418 to i64
  %arrayidx896.i = getelementptr inbounds double* %colX0.0.lcssa.i138, i64 %idxprom895.i
  %419 = load double* %arrayidx896.i, align 8, !tbaa !4
  %mul897.i = fmul double %417, %419
  %add898.i = fadd double %sum00872.11670.i, %mul897.i
  %indvars.iv.next1846.i = add i64 %indvars.iv1845.i, 1
  %lftr.wideiv1165 = trunc i64 %indvars.iv.next1846.i to i32
  %exitcond1166 = icmp eq i32 %lftr.wideiv1165, %412
  br i1 %exitcond1166, label %if.end902.i, label %for.body890.i

if.end902.i:                                      ; preds = %for.body890.i, %for.body877.i, %for.cond875.preheader.i, %for.cond888.preheader.i
  %sum00872.2.i = phi double [ 0.000000e+00, %for.cond888.preheader.i ], [ 0.000000e+00, %for.cond875.preheader.i ], [ %add883.i, %for.body877.i ], [ %add898.i, %for.body890.i ]
  %420 = load i32* %nrowY.i97, align 4, !tbaa !3
  %cmp903.i = icmp eq i32 %420, %365
  %idxprom905.i = sext i32 %irowA.2.lcssa.i to i64
  br i1 %cmp903.i, label %if.then904.i, label %if.else908.i

if.then904.i:                                     ; preds = %if.end902.i
  %arrayidx906.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom905.i
  %421 = load double* %arrayidx906.i, align 8, !tbaa !4
  %sub907.i = fsub double %421, %sum00872.2.i
  store double %sub907.i, double* %arrayidx906.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else908.i:                                     ; preds = %if.end902.i
  %422 = load i32** %rowindA.i99, align 8, !tbaa !0
  %arrayidx910.i = getelementptr inbounds i32* %422, i64 %idxprom905.i
  %423 = load i32* %arrayidx910.i, align 4, !tbaa !3
  %idxprom911.i = sext i32 %423 to i64
  %arrayidx912.i = getelementptr inbounds double* %colY0.0.lcssa.i139, i64 %idxprom911.i
  %424 = load double* %arrayidx912.i, align 8, !tbaa !4
  %sub913.i = fsub double %424, %sum00872.2.i
  store double %sub913.i, double* %arrayidx912.i, align 8, !tbaa !4
  br label %sw.epilog34

sw.bb16:                                          ; preds = %sw.bb
  %425 = bitcast double** %entA.i164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %425) #4
  %426 = bitcast double** %entX.i165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %426) #4
  %427 = bitcast double** %entY.i166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %427) #4
  %428 = bitcast i32* %inc1.i167 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #4
  %429 = bitcast i32* %inc2.i168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %429) #4
  %430 = bitcast i32* %ncolA.i169 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %430) #4
  %431 = bitcast i32* %ncolX.i170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %431) #4
  %432 = bitcast i32* %ncolY.i171 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %432) #4
  %433 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %433) #4
  %434 = bitcast i32* %nrowA.i172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %434) #4
  %435 = bitcast i32* %nrowX.i173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #4
  %436 = bitcast i32* %nrowY.i174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %436) #4
  %437 = bitcast i32** %colindA.i175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %437) #4
  %438 = bitcast i32** %indices.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %438) #4
  %439 = bitcast i32** %rowindA.i176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %439) #4
  %440 = bitcast i32** %sizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i174, i32* %ncolY.i171, i32* %inc1.i167, i32* %inc2.i168, double** %entY.i166) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i173, i32* %ncolX.i170, i32* %inc1.i167, i32* %inc2.i168, double** %entX.i165) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i172, i32* %nentA.i, i32** %sizes.i, i32** %indices.i, double** %entA.i164) #5
  %ncol.i = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %441 = load i32* %ncol.i, align 4, !tbaa !3
  store i32 %441, i32* %ncolA.i169, align 4, !tbaa !3
  %442 = load i32* %nrowX.i173, align 4, !tbaa !3
  %cmp.i177 = icmp eq i32 %441, %442
  br i1 %cmp.i177, label %if.else.i179, label %if.then.i178

if.then.i178:                                     ; preds = %sw.bb16
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i169, i32** %colindA.i175) #5
  br label %if.end.i181

if.else.i179:                                     ; preds = %sw.bb16
  store i32* null, i32** %colindA.i175, align 8, !tbaa !0
  br label %if.end.i181

if.end.i181:                                      ; preds = %if.else.i179, %if.then.i178
  %443 = load i32* %nrowA.i172, align 4, !tbaa !3
  %444 = load i32* %nrowY.i174, align 4, !tbaa !3
  %cmp1.i180 = icmp eq i32 %443, %444
  br i1 %cmp1.i180, label %if.else3.i183, label %if.then2.i182

if.then2.i182:                                    ; preds = %if.end.i181
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i172, i32** %rowindA.i176) #5
  br label %if.end4.i184

if.else3.i183:                                    ; preds = %if.end.i181
  store i32* null, i32** %rowindA.i176, align 8, !tbaa !0
  br label %if.end4.i184

if.end4.i184:                                     ; preds = %if.else3.i183, %if.then2.i182
  %445 = load double** %entX.i165, align 8, !tbaa !0
  %446 = load double** %entY.i166, align 8, !tbaa !0
  %447 = load i32* %ncolX.i170, align 4, !tbaa !3
  %sub444.i = add nsw i32 %447, -2
  %cmp5445.i = icmp sgt i32 %sub444.i, 0
  br i1 %cmp5445.i, label %for.body.lr.ph.i191, label %for.end98.i

for.body.lr.ph.i191:                              ; preds = %if.end4.i184
  %448 = load i32* %nrowX.i173, align 4, !tbaa !3
  %idx.ext.i185 = sext i32 %448 to i64
  %add.ptr.sum.i186 = shl nsw i64 %idx.ext.i185, 1
  %449 = load i32* %nrowY.i174, align 4, !tbaa !3
  %idx.ext8.i187 = sext i32 %449 to i64
  %add.ptr9.sum.i188 = shl nsw i64 %idx.ext8.i187, 1
  %450 = load i32* %nrowA.i172, align 4, !tbaa !3
  %cmp13441.i = icmp sgt i32 %450, 0
  %add.ptr7.sum.i189 = add i64 %add.ptr.sum.i186, %idx.ext.i185
  %add.ptr11.sum.i190 = add i64 %add.ptr9.sum.i188, %idx.ext8.i187
  %451 = load i32** %sizes.i, align 8, !tbaa !0
  %452 = load i32* %ncolA.i169, align 4, !tbaa !3
  %cmp17.i = icmp eq i32 %452, %448
  %cmp64.i = icmp eq i32 %450, %449
  %453 = load i32** %rowindA.i176, align 8, !tbaa !0
  %454 = load double** %entA.i164, align 8, !tbaa !0
  %455 = load i32** %indices.i, align 8, !tbaa !0
  %456 = load i32** %colindA.i175, align 8, !tbaa !0
  br label %for.body.i192

for.body.i192:                                    ; preds = %for.end91.i, %for.body.lr.ph.i191
  %jcolX.0450.i = phi i32 [ 0, %for.body.lr.ph.i191 ], [ %add97.i, %for.end91.i ]
  %colY0.0448.i = phi double* [ %446, %for.body.lr.ph.i191 ], [ %add.ptr95.i, %for.end91.i ]
  %colX0.0446.i = phi double* [ %445, %for.body.lr.ph.i191 ], [ %add.ptr93.i, %for.end91.i ]
  br i1 %cmp13441.i, label %for.body14.i, label %for.end91.i

for.body14.i:                                     ; preds = %for.body.i192, %for.inc89.i
  %indvars.iv475.i = phi i64 [ %indvars.iv.next476.i, %for.inc89.i ], [ 0, %for.body.i192 ]
  %kk.0443.i = phi i32 [ %kk.4.i, %for.inc89.i ], [ 0, %for.body.i192 ]
  %arrayidx.i193 = getelementptr inbounds i32* %451, i64 %indvars.iv475.i
  %457 = load i32* %arrayidx.i193, align 4, !tbaa !3
  %cmp15.i = icmp sgt i32 %457, 0
  br i1 %cmp15.i, label %if.then16.i, label %for.inc89.i

if.then16.i:                                      ; preds = %for.body14.i
  %458 = sext i32 %kk.0443.i to i64
  br i1 %cmp17.i, label %for.body21.i, label %for.body40.i

for.body21.i:                                     ; preds = %if.then16.i, %for.body21.i
  %indvars.iv472.i = phi i64 [ %indvars.iv.next473.i, %for.body21.i ], [ %458, %if.then16.i ]
  %ii.0435.i = phi i32 [ %inc.i, %for.body21.i ], [ 0, %if.then16.i ]
  %sum0.0434.i = phi double [ %add.i195, %for.body21.i ], [ 0.000000e+00, %if.then16.i ]
  %sum2.0433.i = phi double [ %add35.i, %for.body21.i ], [ 0.000000e+00, %if.then16.i ]
  %sum1.0432.i = phi double [ %add31.i, %for.body21.i ], [ 0.000000e+00, %if.then16.i ]
  %arrayidx23.i = getelementptr inbounds double* %454, i64 %indvars.iv472.i
  %459 = load double* %arrayidx23.i, align 8, !tbaa !4
  %arrayidx25.i = getelementptr inbounds i32* %455, i64 %indvars.iv472.i
  %460 = load i32* %arrayidx25.i, align 4, !tbaa !3
  %idxprom26.i = sext i32 %460 to i64
  %arrayidx27.i = getelementptr inbounds double* %colX0.0446.i, i64 %idxprom26.i
  %461 = load double* %arrayidx27.i, align 8, !tbaa !4
  %mul.i194 = fmul double %459, %461
  %add.i195 = fadd double %sum0.0434.i, %mul.i194
  %add.ptr.sum382.i = add i64 %idxprom26.i, %idx.ext.i185
  %arrayidx29.i = getelementptr inbounds double* %colX0.0446.i, i64 %add.ptr.sum382.i
  %462 = load double* %arrayidx29.i, align 8, !tbaa !4
  %mul30.i = fmul double %459, %462
  %add31.i = fadd double %sum1.0432.i, %mul30.i
  %add.ptr7.sum383.i = add i64 %idxprom26.i, %add.ptr.sum.i186
  %arrayidx33.i = getelementptr inbounds double* %colX0.0446.i, i64 %add.ptr7.sum383.i
  %463 = load double* %arrayidx33.i, align 8, !tbaa !4
  %mul34.i = fmul double %459, %463
  %add35.i = fadd double %sum2.0433.i, %mul34.i
  %inc.i = add nsw i32 %ii.0435.i, 1
  %indvars.iv.next473.i = add i64 %indvars.iv472.i, 1
  %exitcond474.i = icmp eq i32 %inc.i, %457
  br i1 %exitcond474.i, label %if.end63.i, label %for.body21.i

for.body40.i:                                     ; preds = %if.then16.i, %for.body40.i
  %indvars.iv469.i = phi i64 [ %indvars.iv.next470.i, %for.body40.i ], [ %458, %if.then16.i ]
  %ii.1424.i = phi i32 [ %inc60.i, %for.body40.i ], [ 0, %if.then16.i ]
  %sum0.1423.i = phi double [ %add50.i197, %for.body40.i ], [ 0.000000e+00, %if.then16.i ]
  %sum2.1422.i = phi double [ %add58.i, %for.body40.i ], [ 0.000000e+00, %if.then16.i ]
  %sum1.1421.i = phi double [ %add54.i, %for.body40.i ], [ 0.000000e+00, %if.then16.i ]
  %arrayidx42.i = getelementptr inbounds double* %454, i64 %indvars.iv469.i
  %464 = load double* %arrayidx42.i, align 8, !tbaa !4
  %arrayidx44.i = getelementptr inbounds i32* %455, i64 %indvars.iv469.i
  %465 = load i32* %arrayidx44.i, align 4, !tbaa !3
  %idxprom45.i = sext i32 %465 to i64
  %arrayidx46.i = getelementptr inbounds i32* %456, i64 %idxprom45.i
  %466 = load i32* %arrayidx46.i, align 4, !tbaa !3
  %idxprom47.i = sext i32 %466 to i64
  %arrayidx48.i = getelementptr inbounds double* %colX0.0446.i, i64 %idxprom47.i
  %467 = load double* %arrayidx48.i, align 8, !tbaa !4
  %mul49.i196 = fmul double %464, %467
  %add50.i197 = fadd double %sum0.1423.i, %mul49.i196
  %add.ptr.sum380.i = add i64 %idxprom47.i, %idx.ext.i185
  %arrayidx52.i = getelementptr inbounds double* %colX0.0446.i, i64 %add.ptr.sum380.i
  %468 = load double* %arrayidx52.i, align 8, !tbaa !4
  %mul53.i = fmul double %464, %468
  %add54.i = fadd double %sum1.1421.i, %mul53.i
  %add.ptr7.sum381.i = add i64 %idxprom47.i, %add.ptr.sum.i186
  %arrayidx56.i198 = getelementptr inbounds double* %colX0.0446.i, i64 %add.ptr7.sum381.i
  %469 = load double* %arrayidx56.i198, align 8, !tbaa !4
  %mul57.i = fmul double %464, %469
  %add58.i = fadd double %sum2.1422.i, %mul57.i
  %inc60.i = add nsw i32 %ii.1424.i, 1
  %indvars.iv.next470.i = add i64 %indvars.iv469.i, 1
  %exitcond471.i = icmp eq i32 %inc60.i, %457
  br i1 %exitcond471.i, label %if.end63.i, label %for.body40.i

if.end63.i:                                       ; preds = %for.body21.i, %for.body40.i
  %sum1.2.i = phi double [ %add54.i, %for.body40.i ], [ %add31.i, %for.body21.i ]
  %sum2.2.i = phi double [ %add58.i, %for.body40.i ], [ %add35.i, %for.body21.i ]
  %sum0.2.i = phi double [ %add50.i197, %for.body40.i ], [ %add.i195, %for.body21.i ]
  %470 = add i32 %457, %kk.0443.i
  br i1 %cmp64.i, label %if.then65.i, label %if.else75.i

if.then65.i:                                      ; preds = %if.end63.i
  %arrayidx67.i = getelementptr inbounds double* %colY0.0448.i, i64 %indvars.iv475.i
  %471 = load double* %arrayidx67.i, align 8, !tbaa !4
  %sub68.i = fsub double %471, %sum0.2.i
  store double %sub68.i, double* %arrayidx67.i, align 8, !tbaa !4
  %add.ptr9.sum378.i = add i64 %indvars.iv475.i, %idx.ext8.i187
  %arrayidx70.i = getelementptr inbounds double* %colY0.0448.i, i64 %add.ptr9.sum378.i
  %472 = load double* %arrayidx70.i, align 8, !tbaa !4
  %sub71.i = fsub double %472, %sum1.2.i
  store double %sub71.i, double* %arrayidx70.i, align 8, !tbaa !4
  %add.ptr11.sum379.i = add i64 %indvars.iv475.i, %add.ptr9.sum.i188
  %arrayidx73.i = getelementptr inbounds double* %colY0.0448.i, i64 %add.ptr11.sum379.i
  %473 = load double* %arrayidx73.i, align 8, !tbaa !4
  %sub74.i = fsub double %473, %sum2.2.i
  store double %sub74.i, double* %arrayidx73.i, align 8, !tbaa !4
  br label %for.inc89.i

if.else75.i:                                      ; preds = %if.end63.i
  %arrayidx77.i199 = getelementptr inbounds i32* %453, i64 %indvars.iv475.i
  %474 = load i32* %arrayidx77.i199, align 4, !tbaa !3
  %idxprom78.i = sext i32 %474 to i64
  %arrayidx79.i200 = getelementptr inbounds double* %colY0.0448.i, i64 %idxprom78.i
  %475 = load double* %arrayidx79.i200, align 8, !tbaa !4
  %sub80.i = fsub double %475, %sum0.2.i
  store double %sub80.i, double* %arrayidx79.i200, align 8, !tbaa !4
  %add.ptr9.sum376.i = add i64 %idxprom78.i, %idx.ext8.i187
  %arrayidx82.i = getelementptr inbounds double* %colY0.0448.i, i64 %add.ptr9.sum376.i
  %476 = load double* %arrayidx82.i, align 8, !tbaa !4
  %sub83.i = fsub double %476, %sum1.2.i
  store double %sub83.i, double* %arrayidx82.i, align 8, !tbaa !4
  %add.ptr11.sum377.i = add i64 %idxprom78.i, %add.ptr9.sum.i188
  %arrayidx85.i = getelementptr inbounds double* %colY0.0448.i, i64 %add.ptr11.sum377.i
  %477 = load double* %arrayidx85.i, align 8, !tbaa !4
  %sub86.i = fsub double %477, %sum2.2.i
  store double %sub86.i, double* %arrayidx85.i, align 8, !tbaa !4
  br label %for.inc89.i

for.inc89.i:                                      ; preds = %if.else75.i, %if.then65.i, %for.body14.i
  %kk.4.i = phi i32 [ %470, %if.then65.i ], [ %470, %if.else75.i ], [ %kk.0443.i, %for.body14.i ]
  %indvars.iv.next476.i = add i64 %indvars.iv475.i, 1
  %lftr.wideiv1187 = trunc i64 %indvars.iv.next476.i to i32
  %exitcond1188 = icmp eq i32 %lftr.wideiv1187, %450
  br i1 %exitcond1188, label %for.end91.i, label %for.body14.i

for.end91.i:                                      ; preds = %for.inc89.i, %for.body.i192
  %add.ptr93.i = getelementptr inbounds double* %colX0.0446.i, i64 %add.ptr7.sum.i189
  %add.ptr95.i = getelementptr inbounds double* %colY0.0448.i, i64 %add.ptr11.sum.i190
  %add97.i = add nsw i32 %jcolX.0450.i, 3
  %cmp5.i201 = icmp slt i32 %add97.i, %sub444.i
  br i1 %cmp5.i201, label %for.body.i192, label %for.end98.i

for.end98.i:                                      ; preds = %for.end91.i, %if.end4.i184
  %jcolX.0.lcssa.i202 = phi i32 [ 0, %if.end4.i184 ], [ %add97.i, %for.end91.i ]
  %colY0.0.lcssa.i203 = phi double* [ %446, %if.end4.i184 ], [ %add.ptr95.i, %for.end91.i ]
  %colX0.0.lcssa.i204 = phi double* [ %445, %if.end4.i184 ], [ %add.ptr93.i, %for.end91.i ]
  %cmp100.i = icmp eq i32 %jcolX.0.lcssa.i202, %sub444.i
  br i1 %cmp100.i, label %if.then101.i, label %if.else179.i

if.then101.i:                                     ; preds = %for.end98.i
  %478 = load i32* %nrowX.i173, align 4, !tbaa !3
  %idx.ext102.i = sext i32 %478 to i64
  %479 = load i32* %nrowY.i174, align 4, !tbaa !3
  %idx.ext104.i = sext i32 %479 to i64
  %480 = load i32* %nrowA.i172, align 4, !tbaa !3
  %cmp107400.i = icmp sgt i32 %480, 0
  br i1 %cmp107400.i, label %for.body108.lr.ph.i205, label %sw.epilog34

for.body108.lr.ph.i205:                           ; preds = %if.then101.i
  %481 = load i32** %sizes.i, align 8, !tbaa !0
  %482 = load i32* %ncolA.i169, align 4, !tbaa !3
  %cmp113.i = icmp eq i32 %482, %478
  %cmp157.i = icmp eq i32 %480, %479
  %483 = load i32** %rowindA.i176, align 8, !tbaa !0
  %484 = load double** %entA.i164, align 8, !tbaa !0
  %485 = load i32** %indices.i, align 8, !tbaa !0
  %486 = load i32** %colindA.i175, align 8, !tbaa !0
  br label %for.body108.i207

for.body108.i207:                                 ; preds = %for.inc176.i, %for.body108.lr.ph.i205
  %indvars.iv459.i = phi i64 [ 0, %for.body108.lr.ph.i205 ], [ %indvars.iv.next460.i, %for.inc176.i ]
  %kk.5402.i = phi i32 [ 0, %for.body108.lr.ph.i205 ], [ %kk.9.i, %for.inc176.i ]
  %arrayidx110.i206 = getelementptr inbounds i32* %481, i64 %indvars.iv459.i
  %487 = load i32* %arrayidx110.i206, align 4, !tbaa !3
  %cmp111.i = icmp sgt i32 %487, 0
  br i1 %cmp111.i, label %if.then112.i, label %for.inc176.i

if.then112.i:                                     ; preds = %for.body108.i207
  %488 = sext i32 %kk.5402.i to i64
  br i1 %cmp113.i, label %for.body117.i, label %for.body137.i

for.body117.i:                                    ; preds = %if.then112.i, %for.body117.i
  %indvars.iv456.i = phi i64 [ %indvars.iv.next457.i, %for.body117.i ], [ %488, %if.then112.i ]
  %ii.2395.i = phi i32 [ %inc131.i, %for.body117.i ], [ 0, %if.then112.i ]
  %sum0.3394.i = phi double [ %add125.i, %for.body117.i ], [ 0.000000e+00, %if.then112.i ]
  %sum1.3393.i = phi double [ %add129.i211, %for.body117.i ], [ 0.000000e+00, %if.then112.i ]
  %arrayidx119.i = getelementptr inbounds double* %484, i64 %indvars.iv456.i
  %489 = load double* %arrayidx119.i, align 8, !tbaa !4
  %arrayidx121.i = getelementptr inbounds i32* %485, i64 %indvars.iv456.i
  %490 = load i32* %arrayidx121.i, align 4, !tbaa !3
  %idxprom122.i208 = sext i32 %490 to i64
  %arrayidx123.i209 = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %idxprom122.i208
  %491 = load double* %arrayidx123.i209, align 8, !tbaa !4
  %mul124.i = fmul double %489, %491
  %add125.i = fadd double %sum0.3394.i, %mul124.i
  %add.ptr103.sum375.i = add i64 %idxprom122.i208, %idx.ext102.i
  %arrayidx127.i = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %add.ptr103.sum375.i
  %492 = load double* %arrayidx127.i, align 8, !tbaa !4
  %mul128.i210 = fmul double %489, %492
  %add129.i211 = fadd double %sum1.3393.i, %mul128.i210
  %inc131.i = add nsw i32 %ii.2395.i, 1
  %indvars.iv.next457.i = add i64 %indvars.iv456.i, 1
  %exitcond458.i = icmp eq i32 %inc131.i, %487
  br i1 %exitcond458.i, label %if.end156.i, label %for.body117.i

for.body137.i:                                    ; preds = %if.then112.i, %for.body137.i
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i215, %for.body137.i ], [ %488, %if.then112.i ]
  %ii.3387.i = phi i32 [ %inc153.i, %for.body137.i ], [ 0, %if.then112.i ]
  %sum0.4386.i = phi double [ %add147.i, %for.body137.i ], [ 0.000000e+00, %if.then112.i ]
  %sum1.4385.i = phi double [ %add151.i, %for.body137.i ], [ 0.000000e+00, %if.then112.i ]
  %arrayidx139.i213 = getelementptr inbounds double* %484, i64 %indvars.iv.i212
  %493 = load double* %arrayidx139.i213, align 8, !tbaa !4
  %arrayidx141.i = getelementptr inbounds i32* %485, i64 %indvars.iv.i212
  %494 = load i32* %arrayidx141.i, align 4, !tbaa !3
  %idxprom142.i = sext i32 %494 to i64
  %arrayidx143.i = getelementptr inbounds i32* %486, i64 %idxprom142.i
  %495 = load i32* %arrayidx143.i, align 4, !tbaa !3
  %idxprom144.i = sext i32 %495 to i64
  %arrayidx145.i214 = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %idxprom144.i
  %496 = load double* %arrayidx145.i214, align 8, !tbaa !4
  %mul146.i = fmul double %493, %496
  %add147.i = fadd double %sum0.4386.i, %mul146.i
  %add.ptr103.sum.i = add i64 %idxprom144.i, %idx.ext102.i
  %arrayidx149.i = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %add.ptr103.sum.i
  %497 = load double* %arrayidx149.i, align 8, !tbaa !4
  %mul150.i = fmul double %493, %497
  %add151.i = fadd double %sum1.4385.i, %mul150.i
  %inc153.i = add nsw i32 %ii.3387.i, 1
  %indvars.iv.next.i215 = add i64 %indvars.iv.i212, 1
  %exitcond.i216 = icmp eq i32 %inc153.i, %487
  br i1 %exitcond.i216, label %if.end156.i, label %for.body137.i

if.end156.i:                                      ; preds = %for.body117.i, %for.body137.i
  %sum1.5.i = phi double [ %add151.i, %for.body137.i ], [ %add129.i211, %for.body117.i ]
  %sum0.5.i = phi double [ %add147.i, %for.body137.i ], [ %add125.i, %for.body117.i ]
  %498 = add i32 %487, %kk.5402.i
  br i1 %cmp157.i, label %if.then158.i, label %if.else165.i

if.then158.i:                                     ; preds = %if.end156.i
  %arrayidx160.i217 = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %indvars.iv459.i
  %499 = load double* %arrayidx160.i217, align 8, !tbaa !4
  %sub161.i218 = fsub double %499, %sum0.5.i
  store double %sub161.i218, double* %arrayidx160.i217, align 8, !tbaa !4
  %add.ptr105.sum374.i = add i64 %indvars.iv459.i, %idx.ext104.i
  %arrayidx163.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %add.ptr105.sum374.i
  %500 = load double* %arrayidx163.i, align 8, !tbaa !4
  %sub164.i = fsub double %500, %sum1.5.i
  store double %sub164.i, double* %arrayidx163.i, align 8, !tbaa !4
  br label %for.inc176.i

if.else165.i:                                     ; preds = %if.end156.i
  %arrayidx167.i = getelementptr inbounds i32* %483, i64 %indvars.iv459.i
  %501 = load i32* %arrayidx167.i, align 4, !tbaa !3
  %idxprom168.i = sext i32 %501 to i64
  %arrayidx169.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %idxprom168.i
  %502 = load double* %arrayidx169.i, align 8, !tbaa !4
  %sub170.i = fsub double %502, %sum0.5.i
  store double %sub170.i, double* %arrayidx169.i, align 8, !tbaa !4
  %add.ptr105.sum.i = add i64 %idxprom168.i, %idx.ext104.i
  %arrayidx172.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %add.ptr105.sum.i
  %503 = load double* %arrayidx172.i, align 8, !tbaa !4
  %sub173.i = fsub double %503, %sum1.5.i
  store double %sub173.i, double* %arrayidx172.i, align 8, !tbaa !4
  br label %for.inc176.i

for.inc176.i:                                     ; preds = %if.else165.i, %if.then158.i, %for.body108.i207
  %kk.9.i = phi i32 [ %498, %if.then158.i ], [ %498, %if.else165.i ], [ %kk.5402.i, %for.body108.i207 ]
  %indvars.iv.next460.i = add i64 %indvars.iv459.i, 1
  %lftr.wideiv1183 = trunc i64 %indvars.iv.next460.i to i32
  %exitcond1184 = icmp eq i32 %lftr.wideiv1183, %480
  br i1 %exitcond1184, label %sw.epilog34, label %for.body108.i207

if.else179.i:                                     ; preds = %for.end98.i
  %sub180.i = add nsw i32 %447, -1
  %cmp181.i = icmp eq i32 %jcolX.0.lcssa.i202, %sub180.i
  br i1 %cmp181.i, label %for.cond183.preheader.i, label %sw.epilog34

for.cond183.preheader.i:                          ; preds = %if.else179.i
  %504 = load i32* %nrowA.i172, align 4, !tbaa !3
  %cmp184417.i = icmp sgt i32 %504, 0
  br i1 %cmp184417.i, label %for.body185.lr.ph.i, label %sw.epilog34

for.body185.lr.ph.i:                              ; preds = %for.cond183.preheader.i
  %505 = load i32** %sizes.i, align 8, !tbaa !0
  %506 = load i32* %ncolA.i169, align 4, !tbaa !3
  %507 = load i32* %nrowX.i173, align 4, !tbaa !3
  %cmp190.i = icmp eq i32 %506, %507
  %508 = load i32* %nrowY.i174, align 4, !tbaa !3
  %cmp226.i = icmp eq i32 %504, %508
  %509 = load i32** %rowindA.i176, align 8, !tbaa !0
  %510 = load double** %entA.i164, align 8, !tbaa !0
  %511 = load i32** %indices.i, align 8, !tbaa !0
  %512 = load i32** %colindA.i175, align 8, !tbaa !0
  br label %for.body185.i

for.body185.i:                                    ; preds = %for.inc239.i, %for.body185.lr.ph.i
  %indvars.iv467.i = phi i64 [ 0, %for.body185.lr.ph.i ], [ %indvars.iv.next468.i, %for.inc239.i ]
  %kk.10419.i = phi i32 [ 0, %for.body185.lr.ph.i ], [ %kk.14.i, %for.inc239.i ]
  %arrayidx187.i = getelementptr inbounds i32* %505, i64 %indvars.iv467.i
  %513 = load i32* %arrayidx187.i, align 4, !tbaa !3
  %cmp188.i = icmp sgt i32 %513, 0
  br i1 %cmp188.i, label %if.then189.i, label %for.inc239.i

if.then189.i:                                     ; preds = %for.body185.i
  %514 = sext i32 %kk.10419.i to i64
  br i1 %cmp190.i, label %for.body194.i, label %for.body210.i

for.body194.i:                                    ; preds = %if.then189.i, %for.body194.i
  %indvars.iv464.i = phi i64 [ %indvars.iv.next465.i, %for.body194.i ], [ %514, %if.then189.i ]
  %ii.4412.i = phi i32 [ %inc204.i, %for.body194.i ], [ 0, %if.then189.i ]
  %sum0.6411.i = phi double [ %add202.i223, %for.body194.i ], [ 0.000000e+00, %if.then189.i ]
  %arrayidx196.i220 = getelementptr inbounds double* %510, i64 %indvars.iv464.i
  %515 = load double* %arrayidx196.i220, align 8, !tbaa !4
  %arrayidx198.i221 = getelementptr inbounds i32* %511, i64 %indvars.iv464.i
  %516 = load i32* %arrayidx198.i221, align 4, !tbaa !3
  %idxprom199.i = sext i32 %516 to i64
  %arrayidx200.i = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %idxprom199.i
  %517 = load double* %arrayidx200.i, align 8, !tbaa !4
  %mul201.i222 = fmul double %515, %517
  %add202.i223 = fadd double %sum0.6411.i, %mul201.i222
  %inc204.i = add nsw i32 %ii.4412.i, 1
  %indvars.iv.next465.i = add i64 %indvars.iv464.i, 1
  %exitcond466.i = icmp eq i32 %inc204.i, %513
  br i1 %exitcond466.i, label %if.end225.i, label %for.body194.i

for.body210.i:                                    ; preds = %if.then189.i, %for.body210.i
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %for.body210.i ], [ %514, %if.then189.i ]
  %ii.5405.i = phi i32 [ %inc222.i, %for.body210.i ], [ 0, %if.then189.i ]
  %sum0.7404.i = phi double [ %add220.i, %for.body210.i ], [ 0.000000e+00, %if.then189.i ]
  %arrayidx212.i = getelementptr inbounds double* %510, i64 %indvars.iv461.i
  %518 = load double* %arrayidx212.i, align 8, !tbaa !4
  %arrayidx214.i = getelementptr inbounds i32* %511, i64 %indvars.iv461.i
  %519 = load i32* %arrayidx214.i, align 4, !tbaa !3
  %idxprom215.i = sext i32 %519 to i64
  %arrayidx216.i224 = getelementptr inbounds i32* %512, i64 %idxprom215.i
  %520 = load i32* %arrayidx216.i224, align 4, !tbaa !3
  %idxprom217.i = sext i32 %520 to i64
  %arrayidx218.i = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %idxprom217.i
  %521 = load double* %arrayidx218.i, align 8, !tbaa !4
  %mul219.i = fmul double %518, %521
  %add220.i = fadd double %sum0.7404.i, %mul219.i
  %inc222.i = add nsw i32 %ii.5405.i, 1
  %indvars.iv.next462.i = add i64 %indvars.iv461.i, 1
  %exitcond463.i = icmp eq i32 %inc222.i, %513
  br i1 %exitcond463.i, label %if.end225.i, label %for.body210.i

if.end225.i:                                      ; preds = %for.body194.i, %for.body210.i
  %sum0.8.i = phi double [ %add220.i, %for.body210.i ], [ %add202.i223, %for.body194.i ]
  %522 = add i32 %513, %kk.10419.i
  br i1 %cmp226.i, label %if.then227.i, label %if.else231.i

if.then227.i:                                     ; preds = %if.end225.i
  %arrayidx229.i225 = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %indvars.iv467.i
  %523 = load double* %arrayidx229.i225, align 8, !tbaa !4
  %sub230.i = fsub double %523, %sum0.8.i
  store double %sub230.i, double* %arrayidx229.i225, align 8, !tbaa !4
  br label %for.inc239.i

if.else231.i:                                     ; preds = %if.end225.i
  %arrayidx233.i = getelementptr inbounds i32* %509, i64 %indvars.iv467.i
  %524 = load i32* %arrayidx233.i, align 4, !tbaa !3
  %idxprom234.i226 = sext i32 %524 to i64
  %arrayidx235.i227 = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %idxprom234.i226
  %525 = load double* %arrayidx235.i227, align 8, !tbaa !4
  %sub236.i228 = fsub double %525, %sum0.8.i
  store double %sub236.i228, double* %arrayidx235.i227, align 8, !tbaa !4
  br label %for.inc239.i

for.inc239.i:                                     ; preds = %if.else231.i, %if.then227.i, %for.body185.i
  %kk.14.i = phi i32 [ %522, %if.then227.i ], [ %522, %if.else231.i ], [ %kk.10419.i, %for.body185.i ]
  %indvars.iv.next468.i = add i64 %indvars.iv467.i, 1
  %lftr.wideiv1185 = trunc i64 %indvars.iv.next468.i to i32
  %exitcond1186 = icmp eq i32 %lftr.wideiv1185, %504
  br i1 %exitcond1186, label %sw.epilog34, label %for.body185.i

sw.bb17:                                          ; preds = %sw.bb
  %526 = bitcast double** %entA.i230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %526) #4
  %527 = bitcast double** %entX.i231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %527) #4
  %528 = bitcast double** %entY.i232 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %528) #4
  %529 = bitcast i32* %inc1.i233 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %529) #4
  %530 = bitcast i32* %inc2.i234 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %530) #4
  %531 = bitcast i32* %ncolA.i235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %531) #4
  %532 = bitcast i32* %ncolX.i236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #4
  %533 = bitcast i32* %ncolY.i237 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %533) #4
  %534 = bitcast i32* %nentA.i238 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %534) #4
  %535 = bitcast i32* %nrowA.i239 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %535) #4
  %536 = bitcast i32* %nrowX.i240 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %536) #4
  %537 = bitcast i32* %nrowY.i241 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %537) #4
  %538 = bitcast i32** %colindA.i242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %538) #4
  %539 = bitcast i32** %indices.i243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %539) #4
  %540 = bitcast i32** %rowindA.i244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %540) #4
  %541 = bitcast i32** %sizes.i245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %541) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i241, i32* %ncolY.i237, i32* %inc1.i233, i32* %inc2.i234, double** %entY.i232) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i240, i32* %ncolX.i236, i32* %inc1.i233, i32* %inc2.i234, double** %entX.i231) #5
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %ncolA.i235, i32* %nentA.i238, i32** %sizes.i245, i32** %indices.i243, double** %entA.i230) #5
  %542 = load i32* %ncolA.i235, align 4, !tbaa !3
  %543 = load i32* %nrowX.i240, align 4, !tbaa !3
  %cmp.i246 = icmp eq i32 %542, %543
  br i1 %cmp.i246, label %if.else.i248, label %if.then.i247

if.then.i247:                                     ; preds = %sw.bb17
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i235, i32** %colindA.i242) #5
  br label %if.end.i250

if.else.i248:                                     ; preds = %sw.bb17
  store i32* null, i32** %colindA.i242, align 8, !tbaa !0
  br label %if.end.i250

if.end.i250:                                      ; preds = %if.else.i248, %if.then.i247
  %nrow.i = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %544 = load i32* %nrow.i, align 4, !tbaa !3
  store i32 %544, i32* %nrowA.i239, align 4, !tbaa !3
  %545 = load i32* %nrowY.i241, align 4, !tbaa !3
  %cmp1.i249 = icmp eq i32 %544, %545
  br i1 %cmp1.i249, label %if.else3.i252, label %if.then2.i251

if.then2.i251:                                    ; preds = %if.end.i250
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i239, i32** %rowindA.i244) #5
  br label %if.end4.i253

if.else3.i252:                                    ; preds = %if.end.i250
  store i32* null, i32** %rowindA.i244, align 8, !tbaa !0
  br label %if.end4.i253

if.end4.i253:                                     ; preds = %if.else3.i252, %if.then2.i251
  %546 = load double** %entX.i231, align 8, !tbaa !0
  %547 = load double** %entY.i232, align 8, !tbaa !0
  %548 = load i32* %ncolX.i236, align 4, !tbaa !3
  %sub369.i = add nsw i32 %548, -2
  %cmp5370.i = icmp sgt i32 %sub369.i, 0
  br i1 %cmp5370.i, label %for.body.lr.ph.i260, label %for.end86.i

for.body.lr.ph.i260:                              ; preds = %if.end4.i253
  %549 = load i32* %nrowX.i240, align 4, !tbaa !3
  %idx.ext.i254 = sext i32 %549 to i64
  %add.ptr.sum.i255 = shl nsw i64 %idx.ext.i254, 1
  %550 = load i32* %nrowY.i241, align 4, !tbaa !3
  %idx.ext8.i256 = sext i32 %550 to i64
  %add.ptr9.sum.i257 = shl nsw i64 %idx.ext8.i256, 1
  %551 = load i32* %ncolA.i235, align 4, !tbaa !3
  %cmp13366.i = icmp sgt i32 %551, 0
  %add.ptr7.sum.i258 = add i64 %add.ptr.sum.i255, %idx.ext.i254
  %add.ptr11.sum.i259 = add i64 %add.ptr9.sum.i257, %idx.ext8.i256
  %552 = load i32** %sizes.i245, align 8, !tbaa !0
  %553 = load i32* %nrowA.i239, align 4, !tbaa !3
  %cmp29.i = icmp eq i32 %553, %550
  %554 = load double** %entA.i230, align 8, !tbaa !0
  %555 = load i32** %indices.i243, align 8, !tbaa !0
  %556 = load i32** %rowindA.i244, align 8, !tbaa !0
  %557 = load i32** %colindA.i242, align 8, !tbaa !0
  %cmp17.i265 = icmp eq i32 %551, %549
  br label %for.body.i261

for.body.i261:                                    ; preds = %for.end80.i, %for.body.lr.ph.i260
  %jcolX.0375.i = phi i32 [ 0, %for.body.lr.ph.i260 ], [ %add.i278, %for.end80.i ]
  %colY0.0373.i = phi double* [ %547, %for.body.lr.ph.i260 ], [ %add.ptr84.i, %for.end80.i ]
  %colX0.0371.i = phi double* [ %546, %for.body.lr.ph.i260 ], [ %add.ptr82.i, %for.end80.i ]
  br i1 %cmp13366.i, label %for.body14.i264, label %for.end80.i

for.body14.i264:                                  ; preds = %for.body.i261, %for.inc78.i
  %indvars.iv400.i = phi i64 [ %indvars.iv.next401.i, %for.inc78.i ], [ 0, %for.body.i261 ]
  %kk.0368.i = phi i32 [ %kk.3.i, %for.inc78.i ], [ 0, %for.body.i261 ]
  %arrayidx.i262 = getelementptr inbounds i32* %552, i64 %indvars.iv400.i
  %558 = load i32* %arrayidx.i262, align 4, !tbaa !3
  %cmp15.i263 = icmp sgt i32 %558, 0
  br i1 %cmp15.i263, label %if.then16.i266, label %for.inc78.i

if.then16.i266:                                   ; preds = %for.body14.i264
  %559 = trunc i64 %indvars.iv400.i to i32
  br i1 %cmp17.i265, label %if.end22.i, label %if.else19.i

if.else19.i:                                      ; preds = %if.then16.i266
  %arrayidx21.i = getelementptr inbounds i32* %557, i64 %indvars.iv400.i
  %560 = load i32* %arrayidx21.i, align 4, !tbaa !3
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.then16.i266
  %jrowX.0.i = phi i32 [ %560, %if.else19.i ], [ %559, %if.then16.i266 ]
  %idxprom23.i = sext i32 %jrowX.0.i to i64
  %arrayidx24.i = getelementptr inbounds double* %colX0.0371.i, i64 %idxprom23.i
  %561 = load double* %arrayidx24.i, align 8, !tbaa !4
  %add.ptr.sum327.i = add i64 %idxprom23.i, %idx.ext.i254
  %arrayidx26.i267 = getelementptr inbounds double* %colX0.0371.i, i64 %add.ptr.sum327.i
  %562 = load double* %arrayidx26.i267, align 8, !tbaa !4
  %add.ptr7.sum328.i = add i64 %idxprom23.i, %add.ptr.sum.i255
  %arrayidx28.i268 = getelementptr inbounds double* %colX0.0371.i, i64 %add.ptr7.sum328.i
  %563 = load double* %arrayidx28.i268, align 8, !tbaa !4
  %564 = sext i32 %kk.0368.i to i64
  br i1 %cmp29.i, label %for.body33.i, label %for.body53.i

for.body33.i:                                     ; preds = %if.end22.i, %for.body33.i
  %indvars.iv397.i = phi i64 [ %indvars.iv.next398.i, %for.body33.i ], [ %564, %if.end22.i ]
  %ii.0363.i = phi i32 [ %inc.i272, %for.body33.i ], [ 0, %if.end22.i ]
  %arrayidx35.i = getelementptr inbounds double* %554, i64 %indvars.iv397.i
  %565 = load double* %arrayidx35.i, align 8, !tbaa !4
  %arrayidx37.i = getelementptr inbounds i32* %555, i64 %indvars.iv397.i
  %566 = load i32* %arrayidx37.i, align 4, !tbaa !3
  %mul.i269 = fmul double %561, %565
  %idxprom38.i = sext i32 %566 to i64
  %arrayidx39.i = getelementptr inbounds double* %colY0.0373.i, i64 %idxprom38.i
  %567 = load double* %arrayidx39.i, align 8, !tbaa !4
  %sub40.i = fsub double %567, %mul.i269
  store double %sub40.i, double* %arrayidx39.i, align 8, !tbaa !4
  %mul41.i270 = fmul double %562, %565
  %add.ptr9.sum331.i = add i64 %idxprom38.i, %idx.ext8.i256
  %arrayidx43.i = getelementptr inbounds double* %colY0.0373.i, i64 %add.ptr9.sum331.i
  %568 = load double* %arrayidx43.i, align 8, !tbaa !4
  %sub44.i = fsub double %568, %mul41.i270
  store double %sub44.i, double* %arrayidx43.i, align 8, !tbaa !4
  %mul45.i271 = fmul double %563, %565
  %add.ptr11.sum332.i = add i64 %idxprom38.i, %add.ptr9.sum.i257
  %arrayidx47.i = getelementptr inbounds double* %colY0.0373.i, i64 %add.ptr11.sum332.i
  %569 = load double* %arrayidx47.i, align 8, !tbaa !4
  %sub48.i = fsub double %569, %mul45.i271
  store double %sub48.i, double* %arrayidx47.i, align 8, !tbaa !4
  %inc.i272 = add nsw i32 %ii.0363.i, 1
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, 1
  %exitcond399.i = icmp eq i32 %inc.i272, %558
  br i1 %exitcond399.i, label %for.inc78.loopexit361.i, label %for.body33.i

for.body53.i:                                     ; preds = %if.end22.i, %for.body53.i
  %indvars.iv394.i = phi i64 [ %indvars.iv.next395.i, %for.body53.i ], [ %564, %if.end22.i ]
  %ii.1358.i = phi i32 [ %inc73.i, %for.body53.i ], [ 0, %if.end22.i ]
  %arrayidx55.i = getelementptr inbounds double* %554, i64 %indvars.iv394.i
  %570 = load double* %arrayidx55.i, align 8, !tbaa !4
  %arrayidx57.i = getelementptr inbounds i32* %555, i64 %indvars.iv394.i
  %571 = load i32* %arrayidx57.i, align 4, !tbaa !3
  %idxprom58.i = sext i32 %571 to i64
  %arrayidx59.i = getelementptr inbounds i32* %556, i64 %idxprom58.i
  %572 = load i32* %arrayidx59.i, align 4, !tbaa !3
  %mul60.i = fmul double %561, %570
  %idxprom61.i = sext i32 %572 to i64
  %arrayidx62.i273 = getelementptr inbounds double* %colY0.0373.i, i64 %idxprom61.i
  %573 = load double* %arrayidx62.i273, align 8, !tbaa !4
  %sub63.i = fsub double %573, %mul60.i
  store double %sub63.i, double* %arrayidx62.i273, align 8, !tbaa !4
  %mul64.i = fmul double %562, %570
  %add.ptr9.sum329.i = add i64 %idxprom61.i, %idx.ext8.i256
  %arrayidx66.i274 = getelementptr inbounds double* %colY0.0373.i, i64 %add.ptr9.sum329.i
  %574 = load double* %arrayidx66.i274, align 8, !tbaa !4
  %sub67.i = fsub double %574, %mul64.i
  store double %sub67.i, double* %arrayidx66.i274, align 8, !tbaa !4
  %mul68.i = fmul double %563, %570
  %add.ptr11.sum330.i = add i64 %idxprom61.i, %add.ptr9.sum.i257
  %arrayidx70.i275 = getelementptr inbounds double* %colY0.0373.i, i64 %add.ptr11.sum330.i
  %575 = load double* %arrayidx70.i275, align 8, !tbaa !4
  %sub71.i276 = fsub double %575, %mul68.i
  store double %sub71.i276, double* %arrayidx70.i275, align 8, !tbaa !4
  %inc73.i = add nsw i32 %ii.1358.i, 1
  %indvars.iv.next395.i = add i64 %indvars.iv394.i, 1
  %exitcond396.i = icmp eq i32 %inc73.i, %558
  br i1 %exitcond396.i, label %for.inc78.loopexit.i, label %for.body53.i

for.inc78.loopexit.i:                             ; preds = %for.body53.i
  %576 = add i32 %558, %kk.0368.i
  br label %for.inc78.i

for.inc78.loopexit361.i:                          ; preds = %for.body33.i
  %577 = add i32 %558, %kk.0368.i
  br label %for.inc78.i

for.inc78.i:                                      ; preds = %for.inc78.loopexit361.i, %for.inc78.loopexit.i, %for.body14.i264
  %kk.3.i = phi i32 [ %kk.0368.i, %for.body14.i264 ], [ %576, %for.inc78.loopexit.i ], [ %577, %for.inc78.loopexit361.i ]
  %indvars.iv.next401.i = add i64 %indvars.iv400.i, 1
  %lftr.wideiv1193 = trunc i64 %indvars.iv.next401.i to i32
  %exitcond1194 = icmp eq i32 %lftr.wideiv1193, %551
  br i1 %exitcond1194, label %for.end80.i, label %for.body14.i264

for.end80.i:                                      ; preds = %for.inc78.i, %for.body.i261
  %add.ptr82.i = getelementptr inbounds double* %colX0.0371.i, i64 %add.ptr7.sum.i258
  %add.ptr84.i = getelementptr inbounds double* %colY0.0373.i, i64 %add.ptr11.sum.i259
  %add.i278 = add nsw i32 %jcolX.0375.i, 3
  %cmp5.i279 = icmp slt i32 %add.i278, %sub369.i
  br i1 %cmp5.i279, label %for.body.i261, label %for.end86.i

for.end86.i:                                      ; preds = %for.end80.i, %if.end4.i253
  %jcolX.0.lcssa.i280 = phi i32 [ 0, %if.end4.i253 ], [ %add.i278, %for.end80.i ]
  %colY0.0.lcssa.i281 = phi double* [ %547, %if.end4.i253 ], [ %add.ptr84.i, %for.end80.i ]
  %colX0.0.lcssa.i282 = phi double* [ %546, %if.end4.i253 ], [ %add.ptr82.i, %for.end80.i ]
  %cmp88.i = icmp eq i32 %jcolX.0.lcssa.i280, %sub369.i
  br i1 %cmp88.i, label %if.then89.i, label %if.else159.i

if.then89.i:                                      ; preds = %for.end86.i
  %578 = load i32* %nrowX.i240, align 4, !tbaa !3
  %idx.ext90.i = sext i32 %578 to i64
  %579 = load i32* %nrowY.i241, align 4, !tbaa !3
  %idx.ext92.i = sext i32 %579 to i64
  %580 = load i32* %ncolA.i235, align 4, !tbaa !3
  %cmp95341.i = icmp sgt i32 %580, 0
  br i1 %cmp95341.i, label %for.body96.lr.ph.i, label %sw.epilog34

for.body96.lr.ph.i:                               ; preds = %if.then89.i
  %581 = load i32** %sizes.i245, align 8, !tbaa !0
  %582 = load i32* %nrowA.i239, align 4, !tbaa !3
  %cmp111.i283 = icmp eq i32 %582, %579
  %583 = load double** %entA.i230, align 8, !tbaa !0
  %584 = load i32** %indices.i243, align 8, !tbaa !0
  %585 = load i32** %rowindA.i244, align 8, !tbaa !0
  %586 = load i32** %colindA.i242, align 8, !tbaa !0
  %cmp101.i = icmp eq i32 %580, %578
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.inc156.i, %for.body96.lr.ph.i
  %indvars.iv384.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next385.i, %for.inc156.i ]
  %kk.4343.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %kk.7.i, %for.inc156.i ]
  %arrayidx98.i = getelementptr inbounds i32* %581, i64 %indvars.iv384.i
  %587 = load i32* %arrayidx98.i, align 4, !tbaa !3
  %cmp99.i = icmp sgt i32 %587, 0
  br i1 %cmp99.i, label %if.then100.i, label %for.inc156.i

if.then100.i:                                     ; preds = %for.body96.i
  %588 = trunc i64 %indvars.iv384.i to i32
  br i1 %cmp101.i, label %if.end106.i, label %if.else103.i

if.else103.i:                                     ; preds = %if.then100.i
  %arrayidx105.i = getelementptr inbounds i32* %586, i64 %indvars.iv384.i
  %589 = load i32* %arrayidx105.i, align 4, !tbaa !3
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else103.i, %if.then100.i
  %jrowX.1.i = phi i32 [ %589, %if.else103.i ], [ %588, %if.then100.i ]
  %idxprom107.i = sext i32 %jrowX.1.i to i64
  %arrayidx108.i284 = getelementptr inbounds double* %colX0.0.lcssa.i282, i64 %idxprom107.i
  %590 = load double* %arrayidx108.i284, align 8, !tbaa !4
  %add.ptr91.sum.i = add i64 %idxprom107.i, %idx.ext90.i
  %arrayidx110.i285 = getelementptr inbounds double* %colX0.0.lcssa.i282, i64 %add.ptr91.sum.i
  %591 = load double* %arrayidx110.i285, align 8, !tbaa !4
  %592 = sext i32 %kk.4343.i to i64
  br i1 %cmp111.i283, label %for.body115.i, label %for.body135.i

for.body115.i:                                    ; preds = %if.end106.i, %for.body115.i
  %indvars.iv381.i = phi i64 [ %indvars.iv.next382.i, %for.body115.i ], [ %592, %if.end106.i ]
  %ii.2338.i = phi i32 [ %inc129.i, %for.body115.i ], [ 0, %if.end106.i ]
  %arrayidx117.i = getelementptr inbounds double* %583, i64 %indvars.iv381.i
  %593 = load double* %arrayidx117.i, align 8, !tbaa !4
  %arrayidx119.i286 = getelementptr inbounds i32* %584, i64 %indvars.iv381.i
  %594 = load i32* %arrayidx119.i286, align 4, !tbaa !3
  %mul120.i287 = fmul double %590, %593
  %idxprom121.i = sext i32 %594 to i64
  %arrayidx122.i = getelementptr inbounds double* %colY0.0.lcssa.i281, i64 %idxprom121.i
  %595 = load double* %arrayidx122.i, align 8, !tbaa !4
  %sub123.i = fsub double %595, %mul120.i287
  store double %sub123.i, double* %arrayidx122.i, align 8, !tbaa !4
  %mul124.i288 = fmul double %591, %593
  %add.ptr93.sum326.i = add i64 %idxprom121.i, %idx.ext92.i
  %arrayidx126.i = getelementptr inbounds double* %colY0.0.lcssa.i281, i64 %add.ptr93.sum326.i
  %596 = load double* %arrayidx126.i, align 8, !tbaa !4
  %sub127.i = fsub double %596, %mul124.i288
  store double %sub127.i, double* %arrayidx126.i, align 8, !tbaa !4
  %inc129.i = add nsw i32 %ii.2338.i, 1
  %indvars.iv.next382.i = add i64 %indvars.iv381.i, 1
  %exitcond383.i = icmp eq i32 %inc129.i, %587
  br i1 %exitcond383.i, label %for.inc156.loopexit336.i, label %for.body115.i

for.body135.i:                                    ; preds = %if.end106.i, %for.body135.i
  %indvars.iv.i289 = phi i64 [ %indvars.iv.next.i295, %for.body135.i ], [ %592, %if.end106.i ]
  %ii.3334.i = phi i32 [ %inc151.i, %for.body135.i ], [ 0, %if.end106.i ]
  %arrayidx137.i = getelementptr inbounds double* %583, i64 %indvars.iv.i289
  %597 = load double* %arrayidx137.i, align 8, !tbaa !4
  %arrayidx139.i290 = getelementptr inbounds i32* %584, i64 %indvars.iv.i289
  %598 = load i32* %arrayidx139.i290, align 4, !tbaa !3
  %idxprom140.i = sext i32 %598 to i64
  %arrayidx141.i291 = getelementptr inbounds i32* %585, i64 %idxprom140.i
  %599 = load i32* %arrayidx141.i291, align 4, !tbaa !3
  %mul142.i = fmul double %590, %597
  %idxprom143.i = sext i32 %599 to i64
  %arrayidx144.i = getelementptr inbounds double* %colY0.0.lcssa.i281, i64 %idxprom143.i
  %600 = load double* %arrayidx144.i, align 8, !tbaa !4
  %sub145.i = fsub double %600, %mul142.i
  store double %sub145.i, double* %arrayidx144.i, align 8, !tbaa !4
  %mul146.i292 = fmul double %591, %597
  %add.ptr93.sum.i = add i64 %idxprom143.i, %idx.ext92.i
  %arrayidx148.i293 = getelementptr inbounds double* %colY0.0.lcssa.i281, i64 %add.ptr93.sum.i
  %601 = load double* %arrayidx148.i293, align 8, !tbaa !4
  %sub149.i294 = fsub double %601, %mul146.i292
  store double %sub149.i294, double* %arrayidx148.i293, align 8, !tbaa !4
  %inc151.i = add nsw i32 %ii.3334.i, 1
  %indvars.iv.next.i295 = add i64 %indvars.iv.i289, 1
  %exitcond.i296 = icmp eq i32 %inc151.i, %587
  br i1 %exitcond.i296, label %for.inc156.loopexit.i, label %for.body135.i

for.inc156.loopexit.i:                            ; preds = %for.body135.i
  %602 = add i32 %587, %kk.4343.i
  br label %for.inc156.i

for.inc156.loopexit336.i:                         ; preds = %for.body115.i
  %603 = add i32 %587, %kk.4343.i
  br label %for.inc156.i

for.inc156.i:                                     ; preds = %for.inc156.loopexit336.i, %for.inc156.loopexit.i, %for.body96.i
  %kk.7.i = phi i32 [ %kk.4343.i, %for.body96.i ], [ %602, %for.inc156.loopexit.i ], [ %603, %for.inc156.loopexit336.i ]
  %indvars.iv.next385.i = add i64 %indvars.iv384.i, 1
  %lftr.wideiv1189 = trunc i64 %indvars.iv.next385.i to i32
  %exitcond1190 = icmp eq i32 %lftr.wideiv1189, %580
  br i1 %exitcond1190, label %sw.epilog34, label %for.body96.i

if.else159.i:                                     ; preds = %for.end86.i
  %sub160.i = add nsw i32 %548, -1
  %cmp161.i = icmp eq i32 %jcolX.0.lcssa.i280, %sub160.i
  br i1 %cmp161.i, label %for.cond163.preheader.i, label %sw.epilog34

for.cond163.preheader.i:                          ; preds = %if.else159.i
  %604 = load i32* %ncolA.i235, align 4, !tbaa !3
  %cmp164354.i = icmp sgt i32 %604, 0
  br i1 %cmp164354.i, label %for.body165.lr.ph.i, label %sw.epilog34

for.body165.lr.ph.i:                              ; preds = %for.cond163.preheader.i
  %605 = load i32** %sizes.i245, align 8, !tbaa !0
  %606 = load i32* %nrowX.i240, align 4, !tbaa !3
  %607 = load i32* %nrowA.i239, align 4, !tbaa !3
  %608 = load i32* %nrowY.i241, align 4, !tbaa !3
  %cmp178.i = icmp eq i32 %607, %608
  %609 = load double** %entA.i230, align 8, !tbaa !0
  %610 = load i32** %indices.i243, align 8, !tbaa !0
  %611 = load i32** %rowindA.i244, align 8, !tbaa !0
  %612 = load i32** %colindA.i242, align 8, !tbaa !0
  %cmp170.i = icmp eq i32 %604, %606
  br label %for.body165.i

for.body165.i:                                    ; preds = %for.inc215.i, %for.body165.lr.ph.i
  %indvars.iv392.i = phi i64 [ 0, %for.body165.lr.ph.i ], [ %indvars.iv.next393.i, %for.inc215.i ]
  %kk.8356.i = phi i32 [ 0, %for.body165.lr.ph.i ], [ %kk.11.i, %for.inc215.i ]
  %arrayidx167.i297 = getelementptr inbounds i32* %605, i64 %indvars.iv392.i
  %613 = load i32* %arrayidx167.i297, align 4, !tbaa !3
  %cmp168.i = icmp sgt i32 %613, 0
  br i1 %cmp168.i, label %if.then169.i, label %for.inc215.i

if.then169.i:                                     ; preds = %for.body165.i
  %614 = trunc i64 %indvars.iv392.i to i32
  br i1 %cmp170.i, label %if.end175.i, label %if.else172.i299

if.else172.i299:                                  ; preds = %if.then169.i
  %arrayidx174.i298 = getelementptr inbounds i32* %612, i64 %indvars.iv392.i
  %615 = load i32* %arrayidx174.i298, align 4, !tbaa !3
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.else172.i299, %if.then169.i
  %jrowX.2.i = phi i32 [ %615, %if.else172.i299 ], [ %614, %if.then169.i ]
  %idxprom176.i = sext i32 %jrowX.2.i to i64
  %arrayidx177.i = getelementptr inbounds double* %colX0.0.lcssa.i282, i64 %idxprom176.i
  %616 = load double* %arrayidx177.i, align 8, !tbaa !4
  %617 = sext i32 %kk.8356.i to i64
  br i1 %cmp178.i, label %for.body182.i, label %for.body198.i

for.body182.i:                                    ; preds = %if.end175.i, %for.body182.i
  %indvars.iv389.i = phi i64 [ %indvars.iv.next390.i, %for.body182.i ], [ %617, %if.end175.i ]
  %ii.4350.i = phi i32 [ %inc192.i, %for.body182.i ], [ 0, %if.end175.i ]
  %arrayidx184.i = getelementptr inbounds double* %609, i64 %indvars.iv389.i
  %618 = load double* %arrayidx184.i, align 8, !tbaa !4
  %arrayidx186.i = getelementptr inbounds i32* %610, i64 %indvars.iv389.i
  %619 = load i32* %arrayidx186.i, align 4, !tbaa !3
  %mul187.i = fmul double %616, %618
  %idxprom188.i = sext i32 %619 to i64
  %arrayidx189.i = getelementptr inbounds double* %colY0.0.lcssa.i281, i64 %idxprom188.i
  %620 = load double* %arrayidx189.i, align 8, !tbaa !4
  %sub190.i = fsub double %620, %mul187.i
  store double %sub190.i, double* %arrayidx189.i, align 8, !tbaa !4
  %inc192.i = add nsw i32 %ii.4350.i, 1
  %indvars.iv.next390.i = add i64 %indvars.iv389.i, 1
  %exitcond391.i = icmp eq i32 %inc192.i, %613
  br i1 %exitcond391.i, label %for.inc215.loopexit348.i, label %for.body182.i

for.body198.i:                                    ; preds = %if.end175.i, %for.body198.i
  %indvars.iv386.i = phi i64 [ %indvars.iv.next387.i, %for.body198.i ], [ %617, %if.end175.i ]
  %ii.5345.i = phi i32 [ %inc210.i, %for.body198.i ], [ 0, %if.end175.i ]
  %arrayidx200.i300 = getelementptr inbounds double* %609, i64 %indvars.iv386.i
  %621 = load double* %arrayidx200.i300, align 8, !tbaa !4
  %arrayidx202.i = getelementptr inbounds i32* %610, i64 %indvars.iv386.i
  %622 = load i32* %arrayidx202.i, align 4, !tbaa !3
  %idxprom203.i = sext i32 %622 to i64
  %arrayidx204.i301 = getelementptr inbounds i32* %611, i64 %idxprom203.i
  %623 = load i32* %arrayidx204.i301, align 4, !tbaa !3
  %mul205.i302 = fmul double %616, %621
  %idxprom206.i = sext i32 %623 to i64
  %arrayidx207.i = getelementptr inbounds double* %colY0.0.lcssa.i281, i64 %idxprom206.i
  %624 = load double* %arrayidx207.i, align 8, !tbaa !4
  %sub208.i = fsub double %624, %mul205.i302
  store double %sub208.i, double* %arrayidx207.i, align 8, !tbaa !4
  %inc210.i = add nsw i32 %ii.5345.i, 1
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1
  %exitcond388.i = icmp eq i32 %inc210.i, %613
  br i1 %exitcond388.i, label %for.inc215.loopexit.i, label %for.body198.i

for.inc215.loopexit.i:                            ; preds = %for.body198.i
  %625 = add i32 %613, %kk.8356.i
  br label %for.inc215.i

for.inc215.loopexit348.i:                         ; preds = %for.body182.i
  %626 = add i32 %613, %kk.8356.i
  br label %for.inc215.i

for.inc215.i:                                     ; preds = %for.inc215.loopexit348.i, %for.inc215.loopexit.i, %for.body165.i
  %kk.11.i = phi i32 [ %kk.8356.i, %for.body165.i ], [ %625, %for.inc215.loopexit.i ], [ %626, %for.inc215.loopexit348.i ]
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1
  %lftr.wideiv1191 = trunc i64 %indvars.iv.next393.i to i32
  %exitcond1192 = icmp eq i32 %lftr.wideiv1191, %604
  br i1 %exitcond1192, label %sw.epilog34, label %for.body165.i

sw.default:                                       ; preds = %sw.bb
  %627 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %627, i8* getelementptr inbounds ([71 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %6) #5
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
  %629 = bitcast double** %entA.i303 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %629) #4
  %630 = bitcast double** %entX.i304 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %630) #4
  %631 = bitcast double** %entY.i305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %631) #4
  %632 = bitcast i32* %inc1.i306 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %632) #4
  %633 = bitcast i32* %inc2.i307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %633) #4
  %634 = bitcast i32* %ncolA.i308 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %634) #4
  %635 = bitcast i32* %ncolX.i309 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %635) #4
  %636 = bitcast i32* %ncolY.i310 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %636) #4
  %637 = bitcast i32* %nrowA.i311 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %637) #4
  %638 = bitcast i32* %nrowX.i312 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %638) #4
  %639 = bitcast i32* %nrowY.i313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %639) #4
  %640 = bitcast i32** %colindA.i314 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %640) #4
  %641 = bitcast i32** %rowindA.i315 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %641) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i313, i32* %ncolY.i310, i32* %inc1.i306, i32* %inc2.i307, double** %entY.i305) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i312, i32* %ncolX.i309, i32* %inc1.i306, i32* %inc2.i307, double** %entX.i304) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i311, i32* %ncolA.i308, i32* %inc1.i306, i32* %inc2.i307, double** %entA.i303) #5
  %642 = load double** %entX.i304, align 8, !tbaa !0
  %643 = load double** %entY.i305, align 8, !tbaa !0
  %644 = load i32* %ncolA.i308, align 4, !tbaa !3
  %645 = load i32* %nrowX.i312, align 4, !tbaa !3
  %cmp.i316 = icmp eq i32 %644, %645
  br i1 %cmp.i316, label %if.else.i318, label %if.then.i317

if.then.i317:                                     ; preds = %sw.bb22
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i308, i32** %colindA.i314) #5
  br label %if.end.i320

if.else.i318:                                     ; preds = %sw.bb22
  store i32* null, i32** %colindA.i314, align 8, !tbaa !0
  br label %if.end.i320

if.end.i320:                                      ; preds = %if.else.i318, %if.then.i317
  %646 = load i32* %nrowA.i311, align 4, !tbaa !3
  %647 = load i32* %nrowY.i313, align 4, !tbaa !3
  %cmp1.i319 = icmp eq i32 %646, %647
  br i1 %cmp1.i319, label %if.else3.i322, label %if.then2.i321

if.then2.i321:                                    ; preds = %if.end.i320
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i311, i32** %rowindA.i315) #5
  br label %for.cond.preheader.i323

if.else3.i322:                                    ; preds = %if.end.i320
  store i32* null, i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.cond.preheader.i323

for.cond.preheader.i323:                          ; preds = %if.else3.i322, %if.then2.i321
  %648 = load i32* %ncolX.i309, align 4, !tbaa !3
  %sub3302.i = add nsw i32 %648, -2
  %cmp53303.i = icmp sgt i32 %sub3302.i, 0
  br i1 %cmp53303.i, label %for.body.lr.ph.i324, label %for.end726.i

for.body.lr.ph.i324:                              ; preds = %for.cond.preheader.i323
  %.pre3430.i = load i32* %nrowX.i312, align 4, !tbaa !3
  %.pre3431.i = load i32* %nrowY.i313, align 4, !tbaa !3
  %.pre3432.i = load i32* %ncolA.i308, align 4, !tbaa !3
  br label %for.body.i329

for.body.i329:                                    ; preds = %if.end717.i.for.body.i329_crit_edge, %for.body.lr.ph.i324
  %649 = phi i32 [ %.pre3432.i, %for.body.lr.ph.i324 ], [ %693, %if.end717.i.for.body.i329_crit_edge ]
  %650 = phi i32 [ %.pre3431.i, %for.body.lr.ph.i324 ], [ %745, %if.end717.i.for.body.i329_crit_edge ]
  %651 = phi i32 [ %.pre3430.i, %for.body.lr.ph.i324 ], [ %746, %if.end717.i.for.body.i329_crit_edge ]
  %jcolX.03314.i = phi i32 [ 3, %for.body.lr.ph.i324 ], [ %phitmp.i, %if.end717.i.for.body.i329_crit_edge ]
  %colY0.03307.i = phi double* [ %643, %for.body.lr.ph.i324 ], [ %add.ptr723.i, %if.end717.i.for.body.i329_crit_edge ]
  %colX0.03304.i = phi double* [ %642, %for.body.lr.ph.i324 ], [ %add.ptr720.i, %if.end717.i.for.body.i329_crit_edge ]
  %mul.i325 = shl nsw i32 %651, 1
  %idx.ext.i326 = sext i32 %mul.i325 to i64
  %add.ptr.sum.i327 = shl nsw i64 %idx.ext.i326, 1
  %mul9.i = shl nsw i32 %650, 1
  %idx.ext10.i = sext i32 %mul9.i to i64
  %add.ptr11.sum.i328 = shl nsw i64 %idx.ext10.i, 1
  %652 = load double** %entA.i303, align 8, !tbaa !0
  %sub163268.i = add nsw i32 %649, -2
  %cmp173269.i = icmp sgt i32 %sub163268.i, 0
  br i1 %cmp173269.i, label %for.body18.lr.ph.i, label %for.end338.i

for.body18.lr.ph.i:                               ; preds = %for.body.i329
  %.pre3433.i = load i32* %nrowA.i311, align 4, !tbaa !3
  br label %for.body18.i

for.body18.i:                                     ; preds = %if.end332.for.body18_crit_edge.i, %for.body18.lr.ph.i
  %653 = phi i32 [ %651, %for.body18.lr.ph.i ], [ %.pre3436.i, %if.end332.for.body18_crit_edge.i ]
  %654 = phi i32 [ %.pre3433.i, %for.body18.lr.ph.i ], [ %690, %if.end332.for.body18_crit_edge.i ]
  %indvars.iv3402.i = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next3403.i, %if.end332.for.body18_crit_edge.i ]
  %655 = phi i32 [ %649, %for.body18.lr.ph.i ], [ %691, %if.end332.for.body18_crit_edge.i ]
  %icolA.03274.i = phi i32 [ 3, %for.body18.lr.ph.i ], [ %phitmp3437.i, %if.end332.for.body18_crit_edge.i ]
  %colA0.03270.i = phi double* [ %652, %for.body18.lr.ph.i ], [ %add.ptr335.i, %if.end332.for.body18_crit_edge.i ]
  %mul19.i = shl nsw i32 %654, 1
  %idx.ext20.i = sext i32 %mul19.i to i64
  %add.ptr21.sum.i = shl nsw i64 %idx.ext20.i, 1
  %cmp25.i = icmp eq i32 %655, %653
  br i1 %cmp25.i, label %if.then26.i, label %if.else66.i

if.then26.i:                                      ; preds = %for.body18.i
  %656 = trunc i64 %indvars.iv3402.i to i32
  %mul27.i = shl nsw i32 %656, 1
  %add3130.i = or i32 %mul27.i, 1
  %add38.i330 = add nsw i32 %mul27.i, 2
  %add39.i = add nsw i32 %add3130.i, 2
  %add52.i = add nsw i32 %mul27.i, 4
  %add53.i = add nsw i32 %add3130.i, 4
  br label %if.end117.i

if.else66.i:                                      ; preds = %for.body18.i
  %657 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx68.i331 = getelementptr inbounds i32* %657, i64 %indvars.iv3402.i
  %658 = load i32* %arrayidx68.i331, align 4, !tbaa !3
  %mul69.i332 = shl nsw i32 %658, 1
  %add703098.i = or i32 %mul69.i332, 1
  %659 = add nsw i64 %indvars.iv3402.i, 1
  %arrayidx85.i333 = getelementptr inbounds i32* %657, i64 %659
  %660 = load i32* %arrayidx85.i333, align 4, !tbaa !3
  %mul86.i = shl nsw i32 %660, 1
  %add873103.i = or i32 %mul86.i, 1
  %661 = add nsw i64 %indvars.iv3402.i, 2
  %arrayidx102.i = getelementptr inbounds i32* %657, i64 %661
  %662 = load i32* %arrayidx102.i, align 4, !tbaa !3
  %mul103.i = shl nsw i32 %662, 1
  %add1043108.i = or i32 %mul103.i, 1
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else66.i, %if.then26.i
  %add52.sink.i = phi i32 [ %add52.i, %if.then26.i ], [ %mul103.i, %if.else66.i ]
  %add53.sink.i = phi i32 [ %add53.i, %if.then26.i ], [ %add1043108.i, %if.else66.i ]
  %idxprom28.pn.in.i = phi i32 [ %add3130.i, %if.then26.i ], [ %add703098.i, %if.else66.i ]
  %idxprom42.pn.in.i = phi i32 [ %add39.i, %if.then26.i ], [ %add873103.i, %if.else66.i ]
  %idxprom.pn.in.i = phi i32 [ %mul27.i, %if.then26.i ], [ %mul69.i332, %if.else66.i ]
  %idxprom40.pn.in.i = phi i32 [ %add38.i330, %if.then26.i ], [ %mul86.i, %if.else66.i ]
  %idxprom40.pn.i = sext i32 %idxprom40.pn.in.i to i64
  %idxprom.pn.i334 = sext i32 %idxprom.pn.in.i to i64
  %idxprom42.pn.i = sext i32 %idxprom42.pn.in.i to i64
  %idxprom28.pn.i = sext i32 %idxprom28.pn.in.i to i64
  %idxprom54.i = sext i32 %add52.sink.i to i64
  %idxprom56.i = sext i32 %add53.sink.i to i64
  %add.ptr8.sum3141.pn.i = add i64 %idxprom54.i, %add.ptr.sum.i327
  %add.ptr.sum3139.pn.i = add i64 %idxprom54.i, %idx.ext.i326
  %add.ptr8.sum3137.pn.i = add i64 %idxprom40.pn.i, %add.ptr.sum.i327
  %add.ptr.sum3135.pn.i = add i64 %idxprom40.pn.i, %idx.ext.i326
  %add.ptr8.sum3133.pn.i = add i64 %idxprom.pn.i334, %add.ptr.sum.i327
  %add.ptr.sum3131.pn.i = add i64 %idxprom.pn.i334, %idx.ext.i326
  %add.ptr8.sum3142.pn.i = add i64 %idxprom56.i, %add.ptr.sum.i327
  %add.ptr.sum3140.pn.i = add i64 %idxprom56.i, %idx.ext.i326
  %add.ptr8.sum3138.pn.i = add i64 %idxprom42.pn.i, %add.ptr.sum.i327
  %add.ptr.sum3136.pn.i = add i64 %idxprom42.pn.i, %idx.ext.i326
  %add.ptr8.sum3134.pn.i = add i64 %idxprom28.pn.i, %add.ptr.sum.i327
  %add.ptr.sum3132.pn.i = add i64 %idxprom28.pn.i, %idx.ext.i326
  %xr22.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3141.pn.i
  %xr21.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3139.pn.i
  %xr20.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom54.i
  %xr12.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3137.pn.i
  %xr11.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3135.pn.i
  %xr10.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom40.pn.i
  %xr02.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3133.pn.i
  %xr01.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3131.pn.i
  %xr00.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom.pn.i334
  %xi22.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3142.pn.i
  %xi21.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3140.pn.i
  %xi20.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom56.i
  %xi12.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3138.pn.i
  %xi11.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3136.pn.i
  %xi10.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom42.pn.i
  %xi02.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3134.pn.i
  %xi01.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3132.pn.i
  %xi00.0.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom28.pn.i
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
  %663 = load i32* %nrowY.i313, align 4, !tbaa !3
  %cmp118.i = icmp eq i32 %663, %654
  %cmp1213263.i = icmp sgt i32 %654, 0
  br i1 %cmp118.i, label %for.cond120.preheader.i, label %for.cond222.preheader.i335

for.cond120.preheader.i:                          ; preds = %if.end117.i
  br i1 %cmp1213263.i, label %for.body122.i, label %if.end332.i

for.cond222.preheader.i335:                       ; preds = %if.end117.i
  br i1 %cmp1213263.i, label %for.body224.lr.ph.i336, label %if.end332.i

for.body224.lr.ph.i336:                           ; preds = %for.cond222.preheader.i335
  %664 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body224.i379

for.body122.i:                                    ; preds = %for.cond120.preheader.i, %for.body122.i
  %indvars.iv3398.i = phi i64 [ %indvars.iv.next3399.i, %for.body122.i ], [ 1, %for.cond120.preheader.i ]
  %indvars.iv3396.i = phi i64 [ %indvars.iv.next3397.i, %for.body122.i ], [ 0, %for.cond120.preheader.i ]
  %krowA.03265.i = phi i32 [ %inc.i355, %for.body122.i ], [ 0, %for.cond120.preheader.i ]
  %arrayidx124.i337 = getelementptr inbounds double* %colA0.03270.i, i64 %indvars.iv3396.i
  %665 = load double* %arrayidx124.i337, align 8, !tbaa !4
  %arrayidx126.i338 = getelementptr inbounds double* %colA0.03270.i, i64 %indvars.iv3398.i
  %666 = load double* %arrayidx126.i338, align 8, !tbaa !4
  %add.ptr21.sum3122.i = add i64 %indvars.iv3396.i, %idx.ext20.i
  %arrayidx128.i339 = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr21.sum3122.i
  %667 = load double* %arrayidx128.i339, align 8, !tbaa !4
  %add.ptr21.sum3123.i = add i64 %indvars.iv3398.i, %idx.ext20.i
  %arrayidx130.i340 = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr21.sum3123.i
  %668 = load double* %arrayidx130.i340, align 8, !tbaa !4
  %add.ptr24.sum3124.i = add i64 %indvars.iv3396.i, %add.ptr21.sum.i
  %arrayidx132.i = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr24.sum3124.i
  %669 = load double* %arrayidx132.i, align 8, !tbaa !4
  %add.ptr24.sum3125.i = add i64 %indvars.iv3398.i, %add.ptr21.sum.i
  %arrayidx134.i = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr24.sum3125.i
  %670 = load double* %arrayidx134.i, align 8, !tbaa !4
  %mul135.i = fmul double %xr00.0.i, %665
  %mul136.i341 = fmul double %xi00.0.i, %666
  %sub137.i342 = fsub double %mul135.i, %mul136.i341
  %mul138.i = fmul double %xr10.0.i, %667
  %add139.i = fadd double %sub137.i342, %mul138.i
  %mul140.i = fmul double %xi10.0.i, %668
  %sub141.i = fsub double %add139.i, %mul140.i
  %mul142.i343 = fmul double %xr20.0.i, %669
  %add143.i = fadd double %sub141.i, %mul142.i343
  %mul144.i = fmul double %xi20.0.i, %670
  %sub145.i344 = fsub double %add143.i, %mul144.i
  %arrayidx147.i = getelementptr inbounds double* %colY0.03307.i, i64 %indvars.iv3396.i
  %671 = load double* %arrayidx147.i, align 8, !tbaa !4
  %sub148.i = fsub double %671, %sub145.i344
  store double %sub148.i, double* %arrayidx147.i, align 8, !tbaa !4
  %mul149.i = fmul double %xi00.0.i, %665
  %mul150.i345 = fmul double %xr00.0.i, %666
  %add151.i346 = fadd double %mul149.i, %mul150.i345
  %mul152.i = fmul double %xi10.0.i, %667
  %add153.i = fadd double %add151.i346, %mul152.i
  %mul154.i = fmul double %xr10.0.i, %668
  %add155.i = fadd double %add153.i, %mul154.i
  %mul156.i = fmul double %xi20.0.i, %669
  %add157.i = fadd double %add155.i, %mul156.i
  %mul158.i = fmul double %xr20.0.i, %670
  %add159.i = fadd double %add157.i, %mul158.i
  %arrayidx161.i = getelementptr inbounds double* %colY0.03307.i, i64 %indvars.iv3398.i
  %672 = load double* %arrayidx161.i, align 8, !tbaa !4
  %sub162.i = fsub double %672, %add159.i
  store double %sub162.i, double* %arrayidx161.i, align 8, !tbaa !4
  %mul163.i = fmul double %xr01.0.i, %665
  %mul164.i = fmul double %xi01.0.i, %666
  %sub165.i = fsub double %mul163.i, %mul164.i
  %mul166.i = fmul double %xr11.0.i, %667
  %add167.i = fadd double %sub165.i, %mul166.i
  %mul168.i = fmul double %xi11.0.i, %668
  %sub169.i = fsub double %add167.i, %mul168.i
  %mul170.i = fmul double %xr21.0.i, %669
  %add171.i = fadd double %sub169.i, %mul170.i
  %mul172.i = fmul double %xi21.0.i, %670
  %sub173.i347 = fsub double %add171.i, %mul172.i
  %add.ptr11.sum3126.i = add i64 %indvars.iv3396.i, %idx.ext10.i
  %arrayidx175.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3126.i
  %673 = load double* %arrayidx175.i, align 8, !tbaa !4
  %sub176.i = fsub double %673, %sub173.i347
  store double %sub176.i, double* %arrayidx175.i, align 8, !tbaa !4
  %mul177.i = fmul double %xi01.0.i, %665
  %mul178.i = fmul double %xr01.0.i, %666
  %add179.i = fadd double %mul177.i, %mul178.i
  %mul180.i = fmul double %xi11.0.i, %667
  %add181.i348 = fadd double %add179.i, %mul180.i
  %mul182.i = fmul double %xr11.0.i, %668
  %add183.i = fadd double %add181.i348, %mul182.i
  %mul184.i = fmul double %xi21.0.i, %669
  %add185.i = fadd double %add183.i, %mul184.i
  %mul186.i = fmul double %xr21.0.i, %670
  %add187.i = fadd double %add185.i, %mul186.i
  %add.ptr11.sum3127.i = add i64 %indvars.iv3398.i, %idx.ext10.i
  %arrayidx189.i349 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3127.i
  %674 = load double* %arrayidx189.i349, align 8, !tbaa !4
  %sub190.i350 = fsub double %674, %add187.i
  store double %sub190.i350, double* %arrayidx189.i349, align 8, !tbaa !4
  %mul191.i = fmul double %xr02.0.i, %665
  %mul192.i = fmul double %xi02.0.i, %666
  %sub193.i = fsub double %mul191.i, %mul192.i
  %mul194.i = fmul double %xr12.0.i, %667
  %add195.i = fadd double %sub193.i, %mul194.i
  %mul196.i = fmul double %xi12.0.i, %668
  %sub197.i = fsub double %add195.i, %mul196.i
  %mul198.i = fmul double %xr22.0.i, %669
  %add199.i = fadd double %sub197.i, %mul198.i
  %mul200.i351 = fmul double %xi22.0.i, %670
  %sub201.i = fsub double %add199.i, %mul200.i351
  %add.ptr14.sum3128.i = add i64 %indvars.iv3396.i, %add.ptr11.sum.i328
  %arrayidx203.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3128.i
  %675 = load double* %arrayidx203.i, align 8, !tbaa !4
  %sub204.i = fsub double %675, %sub201.i
  store double %sub204.i, double* %arrayidx203.i, align 8, !tbaa !4
  %mul205.i352 = fmul double %xi02.0.i, %665
  %mul206.i353 = fmul double %xr02.0.i, %666
  %add207.i = fadd double %mul205.i352, %mul206.i353
  %mul208.i = fmul double %xi12.0.i, %667
  %add209.i = fadd double %add207.i, %mul208.i
  %mul210.i = fmul double %xr12.0.i, %668
  %add211.i = fadd double %add209.i, %mul210.i
  %mul212.i354 = fmul double %xi22.0.i, %669
  %add213.i = fadd double %add211.i, %mul212.i354
  %mul214.i = fmul double %xr22.0.i, %670
  %add215.i = fadd double %add213.i, %mul214.i
  %add.ptr14.sum3129.i = add i64 %indvars.iv3398.i, %add.ptr11.sum.i328
  %arrayidx217.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3129.i
  %676 = load double* %arrayidx217.i, align 8, !tbaa !4
  %sub218.i = fsub double %676, %add215.i
  store double %sub218.i, double* %arrayidx217.i, align 8, !tbaa !4
  %inc.i355 = add nsw i32 %krowA.03265.i, 1
  %indvars.iv.next3397.i = add i64 %indvars.iv3396.i, 2
  %indvars.iv.next3399.i = add i64 %indvars.iv3398.i, 2
  %exitcond1215 = icmp eq i32 %inc.i355, %654
  br i1 %exitcond1215, label %if.end332.i, label %for.body122.i

for.body224.i379:                                 ; preds = %for.body224.i379, %for.body224.lr.ph.i336
  %indvars.iv3394.i = phi i64 [ 1, %for.body224.lr.ph.i336 ], [ %indvars.iv.next3395.i, %for.body224.i379 ]
  %indvars.iv3392.i = phi i64 [ 0, %for.body224.lr.ph.i336 ], [ %indvars.iv.next3393.i, %for.body224.i379 ]
  %indvars.iv3390.i = phi i64 [ 0, %for.body224.lr.ph.i336 ], [ %indvars.iv.next3391.i, %for.body224.i379 ]
  %arrayidx226.i356 = getelementptr inbounds double* %colA0.03270.i, i64 %indvars.iv3390.i
  %677 = load double* %arrayidx226.i356, align 8, !tbaa !4
  %arrayidx228.i357 = getelementptr inbounds double* %colA0.03270.i, i64 %indvars.iv3394.i
  %678 = load double* %arrayidx228.i357, align 8, !tbaa !4
  %add.ptr21.sum3113.i = add i64 %indvars.iv3390.i, %idx.ext20.i
  %arrayidx230.i358 = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr21.sum3113.i
  %679 = load double* %arrayidx230.i358, align 8, !tbaa !4
  %add.ptr21.sum3114.i = add i64 %indvars.iv3394.i, %idx.ext20.i
  %arrayidx232.i = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr21.sum3114.i
  %680 = load double* %arrayidx232.i, align 8, !tbaa !4
  %add.ptr24.sum3115.i = add i64 %indvars.iv3390.i, %add.ptr21.sum.i
  %arrayidx234.i = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr24.sum3115.i
  %681 = load double* %arrayidx234.i, align 8, !tbaa !4
  %add.ptr24.sum3116.i = add i64 %indvars.iv3394.i, %add.ptr21.sum.i
  %arrayidx236.i = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr24.sum3116.i
  %682 = load double* %arrayidx236.i, align 8, !tbaa !4
  %arrayidx238.i = getelementptr inbounds i32* %664, i64 %indvars.iv3392.i
  %683 = load i32* %arrayidx238.i, align 4, !tbaa !3
  %mul241.i = shl nsw i32 %683, 1
  %add2423117.i = or i32 %mul241.i, 1
  %mul243.i359 = fmul double %xr00.0.i, %677
  %mul244.i360 = fmul double %xi00.0.i, %678
  %sub245.i = fsub double %mul243.i359, %mul244.i360
  %mul246.i = fmul double %xr10.0.i, %679
  %add247.i = fadd double %sub245.i, %mul246.i
  %mul248.i = fmul double %xi10.0.i, %680
  %sub249.i = fsub double %add247.i, %mul248.i
  %mul250.i = fmul double %xr20.0.i, %681
  %add251.i = fadd double %sub249.i, %mul250.i
  %mul252.i = fmul double %xi20.0.i, %682
  %sub253.i361 = fsub double %add251.i, %mul252.i
  %idxprom254.i = sext i32 %mul241.i to i64
  %arrayidx255.i362 = getelementptr inbounds double* %colY0.03307.i, i64 %idxprom254.i
  %684 = load double* %arrayidx255.i362, align 8, !tbaa !4
  %sub256.i363 = fsub double %684, %sub253.i361
  store double %sub256.i363, double* %arrayidx255.i362, align 8, !tbaa !4
  %mul257.i = fmul double %xi00.0.i, %677
  %mul258.i = fmul double %xr00.0.i, %678
  %add259.i = fadd double %mul257.i, %mul258.i
  %mul260.i = fmul double %xi10.0.i, %679
  %add261.i = fadd double %add259.i, %mul260.i
  %mul262.i = fmul double %xr10.0.i, %680
  %add263.i = fadd double %add261.i, %mul262.i
  %mul264.i = fmul double %xi20.0.i, %681
  %add265.i = fadd double %add263.i, %mul264.i
  %mul266.i = fmul double %xr20.0.i, %682
  %add267.i = fadd double %add265.i, %mul266.i
  %idxprom268.i364 = sext i32 %add2423117.i to i64
  %arrayidx269.i = getelementptr inbounds double* %colY0.03307.i, i64 %idxprom268.i364
  %685 = load double* %arrayidx269.i, align 8, !tbaa !4
  %sub270.i = fsub double %685, %add267.i
  store double %sub270.i, double* %arrayidx269.i, align 8, !tbaa !4
  %mul271.i = fmul double %xr01.0.i, %677
  %mul272.i = fmul double %xi01.0.i, %678
  %sub273.i = fsub double %mul271.i, %mul272.i
  %mul274.i = fmul double %xr11.0.i, %679
  %add275.i = fadd double %sub273.i, %mul274.i
  %mul276.i = fmul double %xi11.0.i, %680
  %sub277.i365 = fsub double %add275.i, %mul276.i
  %mul278.i = fmul double %xr21.0.i, %681
  %add279.i = fadd double %sub277.i365, %mul278.i
  %mul280.i = fmul double %xi21.0.i, %682
  %sub281.i = fsub double %add279.i, %mul280.i
  %add.ptr11.sum3118.i = add i64 %idxprom254.i, %idx.ext10.i
  %arrayidx283.i366 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3118.i
  %686 = load double* %arrayidx283.i366, align 8, !tbaa !4
  %sub284.i = fsub double %686, %sub281.i
  store double %sub284.i, double* %arrayidx283.i366, align 8, !tbaa !4
  %mul285.i = fmul double %xi01.0.i, %677
  %mul286.i367 = fmul double %xr01.0.i, %678
  %add287.i = fadd double %mul285.i, %mul286.i367
  %mul288.i = fmul double %xi11.0.i, %679
  %add289.i = fadd double %add287.i, %mul288.i
  %mul290.i368 = fmul double %xr11.0.i, %680
  %add291.i = fadd double %add289.i, %mul290.i368
  %mul292.i = fmul double %xi21.0.i, %681
  %add293.i = fadd double %add291.i, %mul292.i
  %mul294.i = fmul double %xr21.0.i, %682
  %add295.i = fadd double %add293.i, %mul294.i
  %add.ptr11.sum3119.i = add i64 %idxprom268.i364, %idx.ext10.i
  %arrayidx297.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3119.i
  %687 = load double* %arrayidx297.i, align 8, !tbaa !4
  %sub298.i = fsub double %687, %add295.i
  store double %sub298.i, double* %arrayidx297.i, align 8, !tbaa !4
  %mul299.i = fmul double %xr02.0.i, %677
  %mul300.i = fmul double %xi02.0.i, %678
  %sub301.i = fsub double %mul299.i, %mul300.i
  %mul302.i = fmul double %xr12.0.i, %679
  %add303.i = fadd double %sub301.i, %mul302.i
  %mul304.i = fmul double %xi12.0.i, %680
  %sub305.i = fsub double %add303.i, %mul304.i
  %mul306.i = fmul double %xr22.0.i, %681
  %add307.i = fadd double %sub305.i, %mul306.i
  %mul308.i = fmul double %xi22.0.i, %682
  %sub309.i = fsub double %add307.i, %mul308.i
  %add.ptr14.sum3120.i = add i64 %idxprom254.i, %add.ptr11.sum.i328
  %arrayidx311.i369 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3120.i
  %688 = load double* %arrayidx311.i369, align 8, !tbaa !4
  %sub312.i370 = fsub double %688, %sub309.i
  store double %sub312.i370, double* %arrayidx311.i369, align 8, !tbaa !4
  %mul313.i371 = fmul double %xi02.0.i, %677
  %mul314.i = fmul double %xr02.0.i, %678
  %add315.i = fadd double %mul313.i371, %mul314.i
  %mul316.i = fmul double %xi12.0.i, %679
  %add317.i = fadd double %add315.i, %mul316.i
  %mul318.i372 = fmul double %xr12.0.i, %680
  %add319.i373 = fadd double %add317.i, %mul318.i372
  %mul320.i374 = fmul double %xi22.0.i, %681
  %add321.i375 = fadd double %add319.i373, %mul320.i374
  %mul322.i376 = fmul double %xr22.0.i, %682
  %add323.i377 = fadd double %add321.i375, %mul322.i376
  %add.ptr14.sum3121.i = add i64 %idxprom268.i364, %add.ptr11.sum.i328
  %arrayidx325.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3121.i
  %689 = load double* %arrayidx325.i, align 8, !tbaa !4
  %sub326.i = fsub double %689, %add323.i377
  store double %sub326.i, double* %arrayidx325.i, align 8, !tbaa !4
  %indvars.iv.next3393.i = add i64 %indvars.iv3392.i, 1
  %indvars.iv.next3391.i = add i64 %indvars.iv3390.i, 2
  %indvars.iv.next3395.i = add i64 %indvars.iv3394.i, 2
  %lftr.wideiv1213 = trunc i64 %indvars.iv.next3393.i to i32
  %exitcond1214 = icmp eq i32 %lftr.wideiv1213, %654
  br i1 %exitcond1214, label %if.end332.i, label %for.body224.i379

if.end332.i:                                      ; preds = %for.body122.i, %for.body224.i379, %for.cond222.preheader.i335, %for.cond120.preheader.i
  %690 = load i32* %nrowA.i311, align 4, !tbaa !3
  %mul333.i = shl nsw i32 %690, 1
  %idx.ext334.i = sext i32 %mul333.i to i64
  %add.ptr24.sum.i = add i64 %idx.ext334.i, %add.ptr21.sum.i
  %add.ptr335.i = getelementptr inbounds double* %colA0.03270.i, i64 %add.ptr24.sum.i
  %indvars.iv.next3403.i = add i64 %indvars.iv3402.i, 3
  %691 = load i32* %ncolA.i308, align 4, !tbaa !3
  %sub16.i = add nsw i32 %691, -2
  %692 = trunc i64 %indvars.iv.next3403.i to i32
  %cmp17.i380 = icmp slt i32 %692, %sub16.i
  br i1 %cmp17.i380, label %if.end332.for.body18_crit_edge.i, label %for.end338.i

if.end332.for.body18_crit_edge.i:                 ; preds = %if.end332.i
  %.pre3436.i = load i32* %nrowX.i312, align 4, !tbaa !3
  %phitmp3437.i = add i32 %icolA.03274.i, 3
  br label %for.body18.i

for.end338.i:                                     ; preds = %if.end332.i, %for.body.i329
  %693 = phi i32 [ %649, %for.body.i329 ], [ %691, %if.end332.i ]
  %sub16.lcssa.i = phi i32 [ %sub163268.i, %for.body.i329 ], [ %sub16.i, %if.end332.i ]
  %icolA.0.lcssa.i381 = phi i32 [ 0, %for.body.i329 ], [ %icolA.03274.i, %if.end332.i ]
  %colA0.0.lcssa.i382 = phi double* [ %652, %for.body.i329 ], [ %add.ptr335.i, %if.end332.i ]
  %cmp340.i = icmp eq i32 %icolA.0.lcssa.i381, %sub16.lcssa.i
  br i1 %cmp340.i, label %if.then341.i, label %if.else572.i

if.then341.i:                                     ; preds = %for.end338.i
  %694 = load i32* %nrowA.i311, align 4, !tbaa !3
  %mul342.i = shl nsw i32 %694, 1
  %idx.ext343.i = sext i32 %mul342.i to i64
  %695 = load i32* %nrowX.i312, align 4, !tbaa !3
  %cmp345.i383 = icmp eq i32 %693, %695
  br i1 %cmp345.i383, label %if.then346.i384, label %if.else375.i

if.then346.i384:                                  ; preds = %if.then341.i
  %mul347.i = shl nsw i32 %sub16.lcssa.i, 1
  %add3483089.i = or i32 %mul347.i, 1
  %add361.i = add nsw i32 %mul347.i, 2
  %add362.i = add nsw i32 %add3483089.i, 2
  br label %if.end409.i

if.else375.i:                                     ; preds = %if.then341.i
  %idxprom376.i = sext i32 %sub16.lcssa.i to i64
  %696 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx377.i = getelementptr inbounds i32* %696, i64 %idxprom376.i
  %697 = load i32* %arrayidx377.i, align 4, !tbaa !3
  %mul378.i = shl nsw i32 %697, 1
  %add3793067.i = or i32 %mul378.i, 1
  %add392.i = add nsw i32 %sub16.lcssa.i, 1
  %idxprom393.i = sext i32 %add392.i to i64
  %arrayidx394.i = getelementptr inbounds i32* %696, i64 %idxprom393.i
  %698 = load i32* %arrayidx394.i, align 4, !tbaa !3
  %mul395.i = shl nsw i32 %698, 1
  %add3963072.i = or i32 %mul395.i, 1
  br label %if.end409.i

if.end409.i:                                      ; preds = %if.else375.i, %if.then346.i384
  %add361.sink.i = phi i32 [ %add361.i, %if.then346.i384 ], [ %mul395.i, %if.else375.i ]
  %add362.sink.i = phi i32 [ %add362.i, %if.then346.i384 ], [ %add3963072.i, %if.else375.i ]
  %idxprom351.pn.in.i = phi i32 [ %add3483089.i, %if.then346.i384 ], [ %add3793067.i, %if.else375.i ]
  %idxprom349.pn.in.i = phi i32 [ %mul347.i, %if.then346.i384 ], [ %mul378.i, %if.else375.i ]
  %idxprom349.pn.i = sext i32 %idxprom349.pn.in.i to i64
  %idxprom351.pn.i = sext i32 %idxprom351.pn.in.i to i64
  %idxprom363.i = sext i32 %add361.sink.i to i64
  %idxprom365.i385 = sext i32 %add362.sink.i to i64
  %add.ptr8.sum3096.pn.i = add i64 %idxprom363.i, %add.ptr.sum.i327
  %add.ptr.sum3094.pn.i = add i64 %idxprom363.i, %idx.ext.i326
  %add.ptr8.sum3092.pn.i = add i64 %idxprom349.pn.i, %add.ptr.sum.i327
  %add.ptr.sum3090.pn.i = add i64 %idxprom349.pn.i, %idx.ext.i326
  %add.ptr8.sum3097.pn.i = add i64 %idxprom365.i385, %add.ptr.sum.i327
  %add.ptr.sum3095.pn.i = add i64 %idxprom365.i385, %idx.ext.i326
  %add.ptr8.sum3093.pn.i = add i64 %idxprom351.pn.i, %add.ptr.sum.i327
  %add.ptr.sum3091.pn.i = add i64 %idxprom351.pn.i, %idx.ext.i326
  %xr12.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3096.pn.i
  %xr11.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3094.pn.i
  %xr10.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom363.i
  %xr02.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3092.pn.i
  %xr01.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3090.pn.i
  %xr00.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom349.pn.i
  %xi12.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3097.pn.i
  %xi11.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3095.pn.i
  %xi10.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom365.i385
  %xi02.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3093.pn.i
  %xi01.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3091.pn.i
  %xi00.1.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom351.pn.i
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
  %699 = load i32* %nrowY.i313, align 4, !tbaa !3
  %cmp410.i386 = icmp eq i32 %699, %694
  %cmp4133294.i = icmp sgt i32 %694, 0
  br i1 %cmp410.i386, label %for.cond412.preheader.i387, label %for.cond489.preheader.i

for.cond412.preheader.i387:                       ; preds = %if.end409.i
  br i1 %cmp4133294.i, label %for.body414.i409, label %if.end717.i

for.cond489.preheader.i:                          ; preds = %if.end409.i
  br i1 %cmp4133294.i, label %for.body491.lr.ph.i, label %if.end717.i

for.body491.lr.ph.i:                              ; preds = %for.cond489.preheader.i
  %700 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body491.i

for.body414.i409:                                 ; preds = %for.cond412.preheader.i387, %for.body414.i409
  %indvars.iv3424.i = phi i64 [ %indvars.iv.next3425.i, %for.body414.i409 ], [ 1, %for.cond412.preheader.i387 ]
  %indvars.iv3422.i = phi i64 [ %indvars.iv.next3423.i, %for.body414.i409 ], [ 0, %for.cond412.preheader.i387 ]
  %krowA.23296.i = phi i32 [ %inc484.i, %for.body414.i409 ], [ 0, %for.cond412.preheader.i387 ]
  %arrayidx416.i388 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3422.i
  %701 = load double* %arrayidx416.i388, align 8, !tbaa !4
  %arrayidx418.i389 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3424.i
  %702 = load double* %arrayidx418.i389, align 8, !tbaa !4
  %add.ptr344.sum3083.i = add i64 %indvars.iv3422.i, %idx.ext343.i
  %arrayidx420.i390 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %add.ptr344.sum3083.i
  %703 = load double* %arrayidx420.i390, align 8, !tbaa !4
  %add.ptr344.sum3084.i = add i64 %indvars.iv3424.i, %idx.ext343.i
  %arrayidx422.i391 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %add.ptr344.sum3084.i
  %704 = load double* %arrayidx422.i391, align 8, !tbaa !4
  %mul423.i = fmul double %xr00.1.i, %701
  %mul424.i = fmul double %xi00.1.i, %702
  %sub425.i = fsub double %mul423.i, %mul424.i
  %mul426.i = fmul double %xr10.1.i, %703
  %add427.i = fadd double %sub425.i, %mul426.i
  %mul428.i392 = fmul double %xi10.1.i, %704
  %sub429.i = fsub double %add427.i, %mul428.i392
  %arrayidx431.i = getelementptr inbounds double* %colY0.03307.i, i64 %indvars.iv3422.i
  %705 = load double* %arrayidx431.i, align 8, !tbaa !4
  %sub432.i = fsub double %705, %sub429.i
  store double %sub432.i, double* %arrayidx431.i, align 8, !tbaa !4
  %mul433.i393 = fmul double %xi00.1.i, %701
  %mul434.i = fmul double %xr00.1.i, %702
  %add435.i = fadd double %mul433.i393, %mul434.i
  %mul436.i394 = fmul double %xi10.1.i, %703
  %add437.i395 = fadd double %add435.i, %mul436.i394
  %mul438.i396 = fmul double %xr10.1.i, %704
  %add439.i397 = fadd double %add437.i395, %mul438.i396
  %arrayidx441.i398 = getelementptr inbounds double* %colY0.03307.i, i64 %indvars.iv3424.i
  %706 = load double* %arrayidx441.i398, align 8, !tbaa !4
  %sub442.i399 = fsub double %706, %add439.i397
  store double %sub442.i399, double* %arrayidx441.i398, align 8, !tbaa !4
  %mul443.i = fmul double %xr01.1.i, %701
  %mul444.i = fmul double %xi01.1.i, %702
  %sub445.i = fsub double %mul443.i, %mul444.i
  %mul446.i = fmul double %xr11.1.i, %703
  %add447.i = fadd double %sub445.i, %mul446.i
  %mul448.i = fmul double %xi11.1.i, %704
  %sub449.i = fsub double %add447.i, %mul448.i
  %add.ptr11.sum3085.i = add i64 %indvars.iv3422.i, %idx.ext10.i
  %arrayidx451.i400 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3085.i
  %707 = load double* %arrayidx451.i400, align 8, !tbaa !4
  %sub452.i = fsub double %707, %sub449.i
  store double %sub452.i, double* %arrayidx451.i400, align 8, !tbaa !4
  %mul453.i = fmul double %xi01.1.i, %701
  %mul454.i = fmul double %xr01.1.i, %702
  %add455.i = fadd double %mul453.i, %mul454.i
  %mul456.i401 = fmul double %xi11.1.i, %703
  %add457.i402 = fadd double %add455.i, %mul456.i401
  %mul458.i403 = fmul double %xr11.1.i, %704
  %add459.i404 = fadd double %add457.i402, %mul458.i403
  %add.ptr11.sum3086.i = add i64 %indvars.iv3424.i, %idx.ext10.i
  %arrayidx461.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3086.i
  %708 = load double* %arrayidx461.i, align 8, !tbaa !4
  %sub462.i = fsub double %708, %add459.i404
  store double %sub462.i, double* %arrayidx461.i, align 8, !tbaa !4
  %mul463.i = fmul double %xr02.1.i, %701
  %mul464.i405 = fmul double %xi02.1.i, %702
  %sub465.i = fsub double %mul463.i, %mul464.i405
  %mul466.i406 = fmul double %xr12.1.i, %703
  %add467.i407 = fadd double %sub465.i, %mul466.i406
  %mul468.i = fmul double %xi12.1.i, %704
  %sub469.i = fsub double %add467.i407, %mul468.i
  %add.ptr14.sum3087.i = add i64 %indvars.iv3422.i, %add.ptr11.sum.i328
  %arrayidx471.i408 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3087.i
  %709 = load double* %arrayidx471.i408, align 8, !tbaa !4
  %sub472.i = fsub double %709, %sub469.i
  store double %sub472.i, double* %arrayidx471.i408, align 8, !tbaa !4
  %mul473.i = fmul double %xi02.1.i, %701
  %mul474.i = fmul double %xr02.1.i, %702
  %add475.i = fadd double %mul473.i, %mul474.i
  %mul476.i = fmul double %xi12.1.i, %703
  %add477.i = fadd double %add475.i, %mul476.i
  %mul478.i = fmul double %xr12.1.i, %704
  %add479.i = fadd double %add477.i, %mul478.i
  %add.ptr14.sum3088.i = add i64 %indvars.iv3424.i, %add.ptr11.sum.i328
  %arrayidx481.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3088.i
  %710 = load double* %arrayidx481.i, align 8, !tbaa !4
  %sub482.i = fsub double %710, %add479.i
  store double %sub482.i, double* %arrayidx481.i, align 8, !tbaa !4
  %inc484.i = add nsw i32 %krowA.23296.i, 1
  %indvars.iv.next3423.i = add i64 %indvars.iv3422.i, 2
  %indvars.iv.next3425.i = add i64 %indvars.iv3424.i, 2
  %exitcond1221 = icmp eq i32 %inc484.i, %694
  br i1 %exitcond1221, label %if.end717.i, label %for.body414.i409

for.body491.i:                                    ; preds = %for.body491.i, %for.body491.lr.ph.i
  %indvars.iv3420.i = phi i64 [ 1, %for.body491.lr.ph.i ], [ %indvars.iv.next3421.i, %for.body491.i ]
  %indvars.iv3418.i = phi i64 [ 0, %for.body491.lr.ph.i ], [ %indvars.iv.next3419.i, %for.body491.i ]
  %indvars.iv3416.i = phi i64 [ 0, %for.body491.lr.ph.i ], [ %indvars.iv.next3417.i, %for.body491.i ]
  %arrayidx493.i = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3416.i
  %711 = load double* %arrayidx493.i, align 8, !tbaa !4
  %arrayidx495.i = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3420.i
  %712 = load double* %arrayidx495.i, align 8, !tbaa !4
  %add.ptr344.sum.i410 = add i64 %indvars.iv3416.i, %idx.ext343.i
  %arrayidx497.i411 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %add.ptr344.sum.i410
  %713 = load double* %arrayidx497.i411, align 8, !tbaa !4
  %add.ptr344.sum3077.i = add i64 %indvars.iv3420.i, %idx.ext343.i
  %arrayidx499.i = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %add.ptr344.sum3077.i
  %714 = load double* %arrayidx499.i, align 8, !tbaa !4
  %arrayidx501.i = getelementptr inbounds i32* %700, i64 %indvars.iv3418.i
  %715 = load i32* %arrayidx501.i, align 4, !tbaa !3
  %mul504.i = shl nsw i32 %715, 1
  %add5053078.i = or i32 %mul504.i, 1
  %mul506.i = fmul double %xr00.1.i, %711
  %mul507.i = fmul double %xi00.1.i, %712
  %sub508.i = fsub double %mul506.i, %mul507.i
  %mul509.i = fmul double %xr10.1.i, %713
  %add510.i = fadd double %sub508.i, %mul509.i
  %mul511.i = fmul double %xi10.1.i, %714
  %sub512.i = fsub double %add510.i, %mul511.i
  %idxprom513.i = sext i32 %mul504.i to i64
  %arrayidx514.i = getelementptr inbounds double* %colY0.03307.i, i64 %idxprom513.i
  %716 = load double* %arrayidx514.i, align 8, !tbaa !4
  %sub515.i = fsub double %716, %sub512.i
  store double %sub515.i, double* %arrayidx514.i, align 8, !tbaa !4
  %mul516.i = fmul double %xi00.1.i, %711
  %mul517.i = fmul double %xr00.1.i, %712
  %add518.i = fadd double %mul516.i, %mul517.i
  %mul519.i412 = fmul double %xi10.1.i, %713
  %add520.i413 = fadd double %add518.i, %mul519.i412
  %mul521.i = fmul double %xr10.1.i, %714
  %add522.i = fadd double %add520.i413, %mul521.i
  %idxprom523.i = sext i32 %add5053078.i to i64
  %arrayidx524.i = getelementptr inbounds double* %colY0.03307.i, i64 %idxprom523.i
  %717 = load double* %arrayidx524.i, align 8, !tbaa !4
  %sub525.i = fsub double %717, %add522.i
  store double %sub525.i, double* %arrayidx524.i, align 8, !tbaa !4
  %mul526.i = fmul double %xr01.1.i, %711
  %mul527.i = fmul double %xi01.1.i, %712
  %sub528.i = fsub double %mul526.i, %mul527.i
  %mul529.i = fmul double %xr11.1.i, %713
  %add530.i = fadd double %sub528.i, %mul529.i
  %mul531.i = fmul double %xi11.1.i, %714
  %sub532.i = fsub double %add530.i, %mul531.i
  %add.ptr11.sum3079.i = add i64 %idxprom513.i, %idx.ext10.i
  %arrayidx534.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3079.i
  %718 = load double* %arrayidx534.i, align 8, !tbaa !4
  %sub535.i414 = fsub double %718, %sub532.i
  store double %sub535.i414, double* %arrayidx534.i, align 8, !tbaa !4
  %mul536.i = fmul double %xi01.1.i, %711
  %mul537.i = fmul double %xr01.1.i, %712
  %add538.i = fadd double %mul536.i, %mul537.i
  %mul539.i = fmul double %xi11.1.i, %713
  %add540.i = fadd double %add538.i, %mul539.i
  %mul541.i = fmul double %xr11.1.i, %714
  %add542.i = fadd double %add540.i, %mul541.i
  %add.ptr11.sum3080.i = add i64 %idxprom523.i, %idx.ext10.i
  %arrayidx544.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3080.i
  %719 = load double* %arrayidx544.i, align 8, !tbaa !4
  %sub545.i = fsub double %719, %add542.i
  store double %sub545.i, double* %arrayidx544.i, align 8, !tbaa !4
  %mul546.i = fmul double %xr02.1.i, %711
  %mul547.i = fmul double %xi02.1.i, %712
  %sub548.i = fsub double %mul546.i, %mul547.i
  %mul549.i = fmul double %xr12.1.i, %713
  %add550.i = fadd double %sub548.i, %mul549.i
  %mul551.i = fmul double %xi12.1.i, %714
  %sub552.i = fsub double %add550.i, %mul551.i
  %add.ptr14.sum3081.i = add i64 %idxprom513.i, %add.ptr11.sum.i328
  %arrayidx554.i415 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3081.i
  %720 = load double* %arrayidx554.i415, align 8, !tbaa !4
  %sub555.i = fsub double %720, %sub552.i
  store double %sub555.i, double* %arrayidx554.i415, align 8, !tbaa !4
  %mul556.i = fmul double %xi02.1.i, %711
  %mul557.i416 = fmul double %xr02.1.i, %712
  %add558.i417 = fadd double %mul556.i, %mul557.i416
  %mul559.i418 = fmul double %xi12.1.i, %713
  %add560.i419 = fadd double %add558.i417, %mul559.i418
  %mul561.i420 = fmul double %xr12.1.i, %714
  %add562.i421 = fadd double %add560.i419, %mul561.i420
  %add.ptr14.sum3082.i = add i64 %idxprom523.i, %add.ptr11.sum.i328
  %arrayidx564.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3082.i
  %721 = load double* %arrayidx564.i, align 8, !tbaa !4
  %sub565.i = fsub double %721, %add562.i421
  store double %sub565.i, double* %arrayidx564.i, align 8, !tbaa !4
  %indvars.iv.next3419.i = add i64 %indvars.iv3418.i, 1
  %indvars.iv.next3417.i = add i64 %indvars.iv3416.i, 2
  %indvars.iv.next3421.i = add i64 %indvars.iv3420.i, 2
  %lftr.wideiv1219 = trunc i64 %indvars.iv.next3419.i to i32
  %exitcond1220 = icmp eq i32 %lftr.wideiv1219, %694
  br i1 %exitcond1220, label %if.end717.i, label %for.body491.i

if.else572.i:                                     ; preds = %for.end338.i
  %sub573.i = add nsw i32 %693, -1
  %cmp574.i = icmp eq i32 %icolA.0.lcssa.i381, %sub573.i
  %722 = load i32* %nrowX.i312, align 4, !tbaa !3
  br i1 %cmp574.i, label %if.then575.i, label %if.else572.if.end717_crit_edge.i

if.else572.if.end717_crit_edge.i:                 ; preds = %if.else572.i
  %.pre3435.i = load i32* %nrowY.i313, align 4, !tbaa !3
  br label %if.end717.i

if.then575.i:                                     ; preds = %if.else572.i
  %cmp576.i = icmp eq i32 %693, %722
  br i1 %cmp576.i, label %if.end609.i, label %if.else592.i422

if.else592.i422:                                  ; preds = %if.then575.i
  %idxprom593.i = sext i32 %icolA.0.lcssa.i381 to i64
  %723 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx594.i = getelementptr inbounds i32* %723, i64 %idxprom593.i
  %724 = load i32* %arrayidx594.i, align 4, !tbaa !3
  br label %if.end609.i

if.end609.i:                                      ; preds = %if.then575.i, %if.else592.i422
  %icolA.0.sink.i = phi i32 [ %724, %if.else592.i422 ], [ %icolA.0.lcssa.i381, %if.then575.i ]
  %mul578.i423 = shl nsw i32 %icolA.0.sink.i, 1
  %add5793062.sink.i = or i32 %mul578.i423, 1
  %idxprom580.i = sext i32 %mul578.i423 to i64
  %idxprom582.i = sext i32 %add5793062.sink.i to i64
  %add.ptr8.sum3065.pn.i = add i64 %idxprom580.i, %add.ptr.sum.i327
  %add.ptr.sum3063.pn.i = add i64 %idxprom580.i, %idx.ext.i326
  %add.ptr8.sum3066.pn.i = add i64 %idxprom582.i, %add.ptr.sum.i327
  %add.ptr.sum3064.pn.i = add i64 %idxprom582.i, %idx.ext.i326
  %xr02.2.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3065.pn.i
  %xr01.2.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3063.pn.i
  %xr00.2.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom580.i
  %xi02.2.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum3066.pn.i
  %xi01.2.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr.sum3064.pn.i
  %xi00.2.in.i = getelementptr inbounds double* %colX0.03304.i, i64 %idxprom582.i
  %xr02.2.i = load double* %xr02.2.in.i, align 8
  %xr01.2.i = load double* %xr01.2.in.i, align 8
  %xr00.2.i = load double* %xr00.2.in.i, align 8
  %xi02.2.i = load double* %xi02.2.in.i, align 8
  %xi01.2.i = load double* %xi01.2.in.i, align 8
  %xi00.2.i = load double* %xi00.2.in.i, align 8
  %725 = load i32* %nrowY.i313, align 4, !tbaa !3
  %726 = load i32* %nrowA.i311, align 4, !tbaa !3
  %cmp610.i = icmp eq i32 %725, %726
  br i1 %cmp610.i, label %for.cond612.preheader.i, label %for.cond661.preheader.i

for.cond612.preheader.i:                          ; preds = %if.end609.i
  %cmp6133284.i = icmp sgt i32 %725, 0
  br i1 %cmp6133284.i, label %for.body614.i, label %if.end717.i

for.cond661.preheader.i:                          ; preds = %if.end609.i
  %cmp6623279.i = icmp sgt i32 %726, 0
  br i1 %cmp6623279.i, label %for.body663.lr.ph.i, label %if.end717.i

for.body663.lr.ph.i:                              ; preds = %for.cond661.preheader.i
  %727 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body663.i

for.body614.i:                                    ; preds = %for.cond612.preheader.i, %for.body614.i
  %indvars.iv3414.i = phi i64 [ %indvars.iv.next3415.i, %for.body614.i ], [ 1, %for.cond612.preheader.i ]
  %indvars.iv3412.i = phi i64 [ %indvars.iv.next3413.i, %for.body614.i ], [ 0, %for.cond612.preheader.i ]
  %krowA.43286.i = phi i32 [ %inc656.i, %for.body614.i ], [ 0, %for.cond612.preheader.i ]
  %arrayidx616.i424 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3412.i
  %728 = load double* %arrayidx616.i424, align 8, !tbaa !4
  %arrayidx618.i = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3414.i
  %729 = load double* %arrayidx618.i, align 8, !tbaa !4
  %mul619.i = fmul double %xr00.2.i, %728
  %mul620.i = fmul double %xi00.2.i, %729
  %sub621.i = fsub double %mul619.i, %mul620.i
  %arrayidx623.i = getelementptr inbounds double* %colY0.03307.i, i64 %indvars.iv3412.i
  %730 = load double* %arrayidx623.i, align 8, !tbaa !4
  %sub624.i = fsub double %730, %sub621.i
  store double %sub624.i, double* %arrayidx623.i, align 8, !tbaa !4
  %mul625.i = fmul double %xi00.2.i, %728
  %mul626.i = fmul double %xr00.2.i, %729
  %add627.i = fadd double %mul625.i, %mul626.i
  %arrayidx629.i = getelementptr inbounds double* %colY0.03307.i, i64 %indvars.iv3414.i
  %731 = load double* %arrayidx629.i, align 8, !tbaa !4
  %sub630.i = fsub double %731, %add627.i
  store double %sub630.i, double* %arrayidx629.i, align 8, !tbaa !4
  %mul631.i = fmul double %xr01.2.i, %728
  %mul632.i = fmul double %xi01.2.i, %729
  %sub633.i = fsub double %mul631.i, %mul632.i
  %add.ptr11.sum3058.i = add i64 %indvars.iv3412.i, %idx.ext10.i
  %arrayidx635.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3058.i
  %732 = load double* %arrayidx635.i, align 8, !tbaa !4
  %sub636.i = fsub double %732, %sub633.i
  store double %sub636.i, double* %arrayidx635.i, align 8, !tbaa !4
  %mul637.i = fmul double %xi01.2.i, %728
  %mul638.i = fmul double %xr01.2.i, %729
  %add639.i = fadd double %mul637.i, %mul638.i
  %add.ptr11.sum3059.i = add i64 %indvars.iv3414.i, %idx.ext10.i
  %arrayidx641.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3059.i
  %733 = load double* %arrayidx641.i, align 8, !tbaa !4
  %sub642.i = fsub double %733, %add639.i
  store double %sub642.i, double* %arrayidx641.i, align 8, !tbaa !4
  %mul643.i = fmul double %xr02.2.i, %728
  %mul644.i425 = fmul double %xi02.2.i, %729
  %sub645.i = fsub double %mul643.i, %mul644.i425
  %add.ptr14.sum3060.i = add i64 %indvars.iv3412.i, %add.ptr11.sum.i328
  %arrayidx647.i426 = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3060.i
  %734 = load double* %arrayidx647.i426, align 8, !tbaa !4
  %sub648.i427 = fsub double %734, %sub645.i
  store double %sub648.i427, double* %arrayidx647.i426, align 8, !tbaa !4
  %mul649.i428 = fmul double %xi02.2.i, %728
  %mul650.i = fmul double %xr02.2.i, %729
  %add651.i = fadd double %mul649.i428, %mul650.i
  %add.ptr14.sum3061.i = add i64 %indvars.iv3414.i, %add.ptr11.sum.i328
  %arrayidx653.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3061.i
  %735 = load double* %arrayidx653.i, align 8, !tbaa !4
  %sub654.i = fsub double %735, %add651.i
  store double %sub654.i, double* %arrayidx653.i, align 8, !tbaa !4
  %inc656.i = add nsw i32 %krowA.43286.i, 1
  %indvars.iv.next3413.i = add i64 %indvars.iv3412.i, 2
  %indvars.iv.next3415.i = add i64 %indvars.iv3414.i, 2
  %exitcond1218 = icmp eq i32 %inc656.i, %725
  br i1 %exitcond1218, label %if.end717.i, label %for.body614.i

for.body663.i:                                    ; preds = %for.body663.i, %for.body663.lr.ph.i
  %indvars.iv3410.i = phi i64 [ 1, %for.body663.lr.ph.i ], [ %indvars.iv.next3411.i, %for.body663.i ]
  %indvars.iv3408.i = phi i64 [ 0, %for.body663.lr.ph.i ], [ %indvars.iv.next3409.i, %for.body663.i ]
  %indvars.iv3406.i = phi i64 [ 0, %for.body663.lr.ph.i ], [ %indvars.iv.next3407.i, %for.body663.i ]
  %arrayidx665.i429 = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3406.i
  %736 = load double* %arrayidx665.i429, align 8, !tbaa !4
  %arrayidx667.i = getelementptr inbounds double* %colA0.0.lcssa.i382, i64 %indvars.iv3410.i
  %737 = load double* %arrayidx667.i, align 8, !tbaa !4
  %arrayidx669.i = getelementptr inbounds i32* %727, i64 %indvars.iv3408.i
  %738 = load i32* %arrayidx669.i, align 4, !tbaa !3
  %mul672.i = shl nsw i32 %738, 1
  %add6733053.i = or i32 %mul672.i, 1
  %mul674.i = fmul double %xr00.2.i, %736
  %mul675.i = fmul double %xi00.2.i, %737
  %sub676.i = fsub double %mul674.i, %mul675.i
  %idxprom677.i = sext i32 %mul672.i to i64
  %arrayidx678.i = getelementptr inbounds double* %colY0.03307.i, i64 %idxprom677.i
  %739 = load double* %arrayidx678.i, align 8, !tbaa !4
  %sub679.i = fsub double %739, %sub676.i
  store double %sub679.i, double* %arrayidx678.i, align 8, !tbaa !4
  %mul680.i = fmul double %xi00.2.i, %736
  %mul681.i = fmul double %xr00.2.i, %737
  %add682.i = fadd double %mul680.i, %mul681.i
  %idxprom683.i = sext i32 %add6733053.i to i64
  %arrayidx684.i430 = getelementptr inbounds double* %colY0.03307.i, i64 %idxprom683.i
  %740 = load double* %arrayidx684.i430, align 8, !tbaa !4
  %sub685.i = fsub double %740, %add682.i
  store double %sub685.i, double* %arrayidx684.i430, align 8, !tbaa !4
  %mul686.i = fmul double %xr01.2.i, %736
  %mul687.i = fmul double %xi01.2.i, %737
  %sub688.i = fsub double %mul686.i, %mul687.i
  %add.ptr11.sum3054.i = add i64 %idxprom677.i, %idx.ext10.i
  %arrayidx690.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3054.i
  %741 = load double* %arrayidx690.i, align 8, !tbaa !4
  %sub691.i = fsub double %741, %sub688.i
  store double %sub691.i, double* %arrayidx690.i, align 8, !tbaa !4
  %mul692.i = fmul double %xi01.2.i, %736
  %mul693.i = fmul double %xr01.2.i, %737
  %add694.i = fadd double %mul692.i, %mul693.i
  %add.ptr11.sum3055.i = add i64 %idxprom683.i, %idx.ext10.i
  %arrayidx696.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr11.sum3055.i
  %742 = load double* %arrayidx696.i, align 8, !tbaa !4
  %sub697.i = fsub double %742, %add694.i
  store double %sub697.i, double* %arrayidx696.i, align 8, !tbaa !4
  %mul698.i = fmul double %xr02.2.i, %736
  %mul699.i = fmul double %xi02.2.i, %737
  %sub700.i = fsub double %mul698.i, %mul699.i
  %add.ptr14.sum3056.i = add i64 %idxprom677.i, %add.ptr11.sum.i328
  %arrayidx702.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3056.i
  %743 = load double* %arrayidx702.i, align 8, !tbaa !4
  %sub703.i = fsub double %743, %sub700.i
  store double %sub703.i, double* %arrayidx702.i, align 8, !tbaa !4
  %mul704.i = fmul double %xi02.2.i, %736
  %mul705.i = fmul double %xr02.2.i, %737
  %add706.i = fadd double %mul704.i, %mul705.i
  %add.ptr14.sum3057.i = add i64 %idxprom683.i, %add.ptr11.sum.i328
  %arrayidx708.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum3057.i
  %744 = load double* %arrayidx708.i, align 8, !tbaa !4
  %sub709.i = fsub double %744, %add706.i
  store double %sub709.i, double* %arrayidx708.i, align 8, !tbaa !4
  %indvars.iv.next3409.i = add i64 %indvars.iv3408.i, 1
  %indvars.iv.next3407.i = add i64 %indvars.iv3406.i, 2
  %indvars.iv.next3411.i = add i64 %indvars.iv3410.i, 2
  %lftr.wideiv1216 = trunc i64 %indvars.iv.next3409.i to i32
  %exitcond1217 = icmp eq i32 %lftr.wideiv1216, %726
  br i1 %exitcond1217, label %if.end717.i, label %for.body663.i

if.end717.i:                                      ; preds = %for.body414.i409, %for.body491.i, %for.body614.i, %for.body663.i, %for.cond661.preheader.i, %for.cond612.preheader.i, %for.cond489.preheader.i, %for.cond412.preheader.i387, %if.else572.if.end717_crit_edge.i
  %745 = phi i32 [ %.pre3435.i, %if.else572.if.end717_crit_edge.i ], [ %694, %for.cond412.preheader.i387 ], [ %699, %for.cond489.preheader.i ], [ %725, %for.cond612.preheader.i ], [ %725, %for.cond661.preheader.i ], [ %725, %for.body663.i ], [ %725, %for.body614.i ], [ %699, %for.body491.i ], [ %694, %for.body414.i409 ]
  %746 = phi i32 [ %722, %if.else572.if.end717_crit_edge.i ], [ %695, %for.cond412.preheader.i387 ], [ %695, %for.cond489.preheader.i ], [ %722, %for.cond612.preheader.i ], [ %722, %for.cond661.preheader.i ], [ %722, %for.body663.i ], [ %722, %for.body614.i ], [ %695, %for.body491.i ], [ %695, %for.body414.i409 ]
  %mul718.i = shl nsw i32 %746, 1
  %idx.ext719.i = sext i32 %mul718.i to i64
  %add.ptr8.sum.i = add i64 %idx.ext719.i, %add.ptr.sum.i327
  %add.ptr720.i = getelementptr inbounds double* %colX0.03304.i, i64 %add.ptr8.sum.i
  %mul721.i = shl nsw i32 %745, 1
  %idx.ext722.i = sext i32 %mul721.i to i64
  %add.ptr14.sum.i = add i64 %idx.ext722.i, %add.ptr11.sum.i328
  %add.ptr723.i = getelementptr inbounds double* %colY0.03307.i, i64 %add.ptr14.sum.i
  %747 = load i32* %ncolX.i309, align 4, !tbaa !3
  %sub.i = add nsw i32 %747, -2
  %cmp5.i431 = icmp slt i32 %jcolX.03314.i, %sub.i
  br i1 %cmp5.i431, label %if.end717.i.for.body.i329_crit_edge, label %for.end726.i

if.end717.i.for.body.i329_crit_edge:              ; preds = %if.end717.i
  %phitmp.i = add i32 %jcolX.03314.i, 3
  br label %for.body.i329

for.end726.i:                                     ; preds = %if.end717.i, %for.cond.preheader.i323
  %sub.lcssa.i = phi i32 [ %sub3302.i, %for.cond.preheader.i323 ], [ %sub.i, %if.end717.i ]
  %.lcssa3301.i = phi i32 [ %648, %for.cond.preheader.i323 ], [ %747, %if.end717.i ]
  %jcolX.0.lcssa.i432 = phi i32 [ 0, %for.cond.preheader.i323 ], [ %jcolX.03314.i, %if.end717.i ]
  %colY0.0.lcssa.i433 = phi double* [ %643, %for.cond.preheader.i323 ], [ %add.ptr723.i, %if.end717.i ]
  %colX0.0.lcssa.i434 = phi double* [ %642, %for.cond.preheader.i323 ], [ %add.ptr720.i, %if.end717.i ]
  %cmp728.i = icmp eq i32 %jcolX.0.lcssa.i432, %sub.lcssa.i
  br i1 %cmp728.i, label %if.then729.i, label %if.else1277.i

if.then729.i:                                     ; preds = %for.end726.i
  %748 = load i32* %nrowX.i312, align 4, !tbaa !3
  %mul730.i435 = shl nsw i32 %748, 1
  %idx.ext731.i = sext i32 %mul730.i435 to i64
  %749 = load i32* %nrowY.i313, align 4, !tbaa !3
  %mul733.i436 = shl nsw i32 %749, 1
  %idx.ext734.i = sext i32 %mul733.i436 to i64
  %750 = load double** %entA.i303, align 8, !tbaa !0
  %751 = load i32* %ncolA.i308, align 4, !tbaa !3
  %sub7373207.i = add nsw i32 %751, -2
  %cmp7383208.i = icmp sgt i32 %sub7373207.i, 0
  br i1 %cmp7383208.i, label %for.body739.lr.ph.i, label %for.end985.i

for.body739.lr.ph.i:                              ; preds = %if.then729.i
  %.pre.i437 = load i32* %nrowA.i311, align 4, !tbaa !3
  %mul740.i = shl nsw i32 %.pre.i437, 1
  %idx.ext741.i = sext i32 %mul740.i to i64
  %add.ptr742.sum.i = shl nsw i64 %idx.ext741.i, 1
  %cmp746.i438 = icmp eq i32 %751, %748
  %cmp818.i = icmp eq i32 %749, %.pre.i437
  %cmp8213203.i = icmp sgt i32 %.pre.i437, 0
  %add.ptr745.sum.i = add i64 %add.ptr742.sum.i, %idx.ext741.i
  br label %for.body739.i

for.body739.i:                                    ; preds = %if.end979.i, %for.body739.lr.ph.i
  %indvars.iv3350.i = phi i64 [ 0, %for.body739.lr.ph.i ], [ %indvars.iv.next3351.i, %if.end979.i ]
  %icolA.13213.i = phi i32 [ 0, %for.body739.lr.ph.i ], [ %add984.i, %if.end979.i ]
  %colA0.13209.i = phi double* [ %750, %for.body739.lr.ph.i ], [ %add.ptr982.i, %if.end979.i ]
  br i1 %cmp746.i438, label %if.then747.i, label %if.else778.i

if.then747.i:                                     ; preds = %for.body739.i
  %752 = trunc i64 %indvars.iv3350.i to i32
  %mul748.i = shl nsw i32 %752, 1
  %add7493041.i = or i32 %mul748.i, 1
  %add758.i = add nsw i32 %mul748.i, 2
  %add759.i = add nsw i32 %add7493041.i, 2
  %add768.i = add nsw i32 %mul748.i, 4
  %add769.i = add nsw i32 %add7493041.i, 4
  br label %if.end817.i

if.else778.i:                                     ; preds = %for.body739.i
  %753 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx780.i439 = getelementptr inbounds i32* %753, i64 %indvars.iv3350.i
  %754 = load i32* %arrayidx780.i439, align 4, !tbaa !3
  %mul781.i = shl nsw i32 %754, 1
  %add7823019.i = or i32 %mul781.i, 1
  %755 = add nsw i64 %indvars.iv3350.i, 1
  %arrayidx793.i = getelementptr inbounds i32* %753, i64 %755
  %756 = load i32* %arrayidx793.i, align 4, !tbaa !3
  %mul794.i = shl nsw i32 %756, 1
  %add7953022.i = or i32 %mul794.i, 1
  %757 = add nsw i64 %indvars.iv3350.i, 2
  %arrayidx806.i = getelementptr inbounds i32* %753, i64 %757
  %758 = load i32* %arrayidx806.i, align 4, !tbaa !3
  %mul807.i = shl nsw i32 %758, 1
  %add8083025.i = or i32 %mul807.i, 1
  br label %if.end817.i

if.end817.i:                                      ; preds = %if.else778.i, %if.then747.i
  %add768.sink.i = phi i32 [ %add768.i, %if.then747.i ], [ %mul807.i, %if.else778.i ]
  %add769.sink.i = phi i32 [ %add769.i, %if.then747.i ], [ %add8083025.i, %if.else778.i ]
  %idxprom752.pn.in.i = phi i32 [ %add7493041.i, %if.then747.i ], [ %add7823019.i, %if.else778.i ]
  %idxprom762.pn.in.i = phi i32 [ %add759.i, %if.then747.i ], [ %add7953022.i, %if.else778.i ]
  %idxprom750.pn.in.i = phi i32 [ %mul748.i, %if.then747.i ], [ %mul781.i, %if.else778.i ]
  %idxprom760.pn.in.i = phi i32 [ %add758.i, %if.then747.i ], [ %mul794.i, %if.else778.i ]
  %idxprom760.pn.i = sext i32 %idxprom760.pn.in.i to i64
  %idxprom750.pn.i = sext i32 %idxprom750.pn.in.i to i64
  %idxprom762.pn.i = sext i32 %idxprom762.pn.in.i to i64
  %idxprom752.pn.i = sext i32 %idxprom752.pn.in.i to i64
  %idxprom770.i = sext i32 %add768.sink.i to i64
  %idxprom772.i = sext i32 %add769.sink.i to i64
  %add.ptr732.sum3046.pn.i = add i64 %idxprom770.i, %idx.ext731.i
  %add.ptr732.sum3044.pn.i = add i64 %idxprom760.pn.i, %idx.ext731.i
  %add.ptr732.sum3042.pn.i = add i64 %idxprom750.pn.i, %idx.ext731.i
  %add.ptr732.sum3047.pn.i = add i64 %idxprom772.i, %idx.ext731.i
  %add.ptr732.sum3045.pn.i = add i64 %idxprom762.pn.i, %idx.ext731.i
  %add.ptr732.sum3043.pn.i = add i64 %idxprom752.pn.i, %idx.ext731.i
  %xr21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3046.pn.i
  %xr20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom770.i
  %xr11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3044.pn.i
  %xr10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom760.pn.i
  %xr01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3042.pn.i
  %xr00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom750.pn.i
  %xi21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3047.pn.i
  %xi20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom772.i
  %xi11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3045.pn.i
  %xi10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom762.pn.i
  %xi01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3043.pn.i
  %xi00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom752.pn.i
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
  br i1 %cmp818.i, label %for.cond820.preheader.i, label %for.cond897.preheader.i

for.cond820.preheader.i:                          ; preds = %if.end817.i
  br i1 %cmp8213203.i, label %for.body822.i, label %if.end979.i

for.cond897.preheader.i:                          ; preds = %if.end817.i
  br i1 %cmp8213203.i, label %for.body899.lr.ph.i, label %if.end979.i

for.body899.lr.ph.i:                              ; preds = %for.cond897.preheader.i
  %759 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body899.i

for.body822.i:                                    ; preds = %for.cond820.preheader.i, %for.body822.i
  %indvars.iv3346.i = phi i64 [ %indvars.iv.next3347.i, %for.body822.i ], [ 1, %for.cond820.preheader.i ]
  %indvars.iv3344.i = phi i64 [ %indvars.iv.next3345.i, %for.body822.i ], [ 0, %for.cond820.preheader.i ]
  %krowA.63205.i = phi i32 [ %inc892.i, %for.body822.i ], [ 0, %for.cond820.preheader.i ]
  %arrayidx824.i = getelementptr inbounds double* %colA0.13209.i, i64 %indvars.iv3344.i
  %760 = load double* %arrayidx824.i, align 8, !tbaa !4
  %arrayidx826.i = getelementptr inbounds double* %colA0.13209.i, i64 %indvars.iv3346.i
  %761 = load double* %arrayidx826.i, align 8, !tbaa !4
  %add.ptr742.sum3035.i = add i64 %indvars.iv3344.i, %idx.ext741.i
  %arrayidx828.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr742.sum3035.i
  %762 = load double* %arrayidx828.i, align 8, !tbaa !4
  %add.ptr742.sum3036.i = add i64 %indvars.iv3346.i, %idx.ext741.i
  %arrayidx830.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr742.sum3036.i
  %763 = load double* %arrayidx830.i, align 8, !tbaa !4
  %add.ptr745.sum3037.i = add i64 %indvars.iv3344.i, %add.ptr742.sum.i
  %arrayidx832.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr745.sum3037.i
  %764 = load double* %arrayidx832.i, align 8, !tbaa !4
  %add.ptr745.sum3038.i = add i64 %indvars.iv3346.i, %add.ptr742.sum.i
  %arrayidx834.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr745.sum3038.i
  %765 = load double* %arrayidx834.i, align 8, !tbaa !4
  %mul835.i = fmul double %xr00.3.i, %760
  %mul836.i440 = fmul double %xi00.3.i, %761
  %sub837.i = fsub double %mul835.i, %mul836.i440
  %mul838.i441 = fmul double %xr10.2.i, %762
  %add839.i442 = fadd double %sub837.i, %mul838.i441
  %mul840.i = fmul double %xi10.2.i, %763
  %sub841.i = fsub double %add839.i442, %mul840.i
  %mul842.i = fmul double %xr20.1.i, %764
  %add843.i = fadd double %sub841.i, %mul842.i
  %mul844.i = fmul double %xi20.1.i, %765
  %sub845.i = fsub double %add843.i, %mul844.i
  %arrayidx847.i443 = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3344.i
  %766 = load double* %arrayidx847.i443, align 8, !tbaa !4
  %sub848.i444 = fsub double %766, %sub845.i
  store double %sub848.i444, double* %arrayidx847.i443, align 8, !tbaa !4
  %mul849.i = fmul double %xi00.3.i, %760
  %mul850.i = fmul double %xr00.3.i, %761
  %add851.i = fadd double %mul849.i, %mul850.i
  %mul852.i = fmul double %xi10.2.i, %762
  %add853.i = fadd double %add851.i, %mul852.i
  %mul854.i = fmul double %xr10.2.i, %763
  %add855.i = fadd double %add853.i, %mul854.i
  %mul856.i = fmul double %xi20.1.i, %764
  %add857.i = fadd double %add855.i, %mul856.i
  %mul858.i = fmul double %xr20.1.i, %765
  %add859.i445 = fadd double %add857.i, %mul858.i
  %arrayidx861.i446 = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3346.i
  %767 = load double* %arrayidx861.i446, align 8, !tbaa !4
  %sub862.i = fsub double %767, %add859.i445
  store double %sub862.i, double* %arrayidx861.i446, align 8, !tbaa !4
  %mul863.i = fmul double %xr01.3.i, %760
  %mul864.i = fmul double %xi01.3.i, %761
  %sub865.i = fsub double %mul863.i, %mul864.i
  %mul866.i = fmul double %xr11.2.i, %762
  %add867.i = fadd double %sub865.i, %mul866.i
  %mul868.i = fmul double %xi11.2.i, %763
  %sub869.i = fsub double %add867.i, %mul868.i
  %mul870.i = fmul double %xr21.1.i, %764
  %add871.i = fadd double %sub869.i, %mul870.i
  %mul872.i = fmul double %xi21.1.i, %765
  %sub873.i = fsub double %add871.i, %mul872.i
  %add.ptr735.sum3039.i = add i64 %indvars.iv3344.i, %idx.ext734.i
  %arrayidx875.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3039.i
  %768 = load double* %arrayidx875.i, align 8, !tbaa !4
  %sub876.i = fsub double %768, %sub873.i
  store double %sub876.i, double* %arrayidx875.i, align 8, !tbaa !4
  %mul877.i = fmul double %xi01.3.i, %760
  %mul878.i = fmul double %xr01.3.i, %761
  %add879.i = fadd double %mul877.i, %mul878.i
  %mul880.i = fmul double %xi11.2.i, %762
  %add881.i = fadd double %add879.i, %mul880.i
  %mul882.i447 = fmul double %xr11.2.i, %763
  %add883.i448 = fadd double %add881.i, %mul882.i447
  %mul884.i = fmul double %xi21.1.i, %764
  %add885.i = fadd double %add883.i448, %mul884.i
  %mul886.i = fmul double %xr21.1.i, %765
  %add887.i = fadd double %add885.i, %mul886.i
  %add.ptr735.sum3040.i = add i64 %indvars.iv3346.i, %idx.ext734.i
  %arrayidx889.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3040.i
  %769 = load double* %arrayidx889.i, align 8, !tbaa !4
  %sub890.i = fsub double %769, %add887.i
  store double %sub890.i, double* %arrayidx889.i, align 8, !tbaa !4
  %inc892.i = add nsw i32 %krowA.63205.i, 1
  %indvars.iv.next3345.i = add i64 %indvars.iv3344.i, 2
  %indvars.iv.next3347.i = add i64 %indvars.iv3346.i, 2
  %exitcond1203 = icmp eq i32 %inc892.i, %749
  br i1 %exitcond1203, label %if.end979.i, label %for.body822.i

for.body899.i:                                    ; preds = %for.body899.i, %for.body899.lr.ph.i
  %indvars.iv3342.i = phi i64 [ 1, %for.body899.lr.ph.i ], [ %indvars.iv.next3343.i, %for.body899.i ]
  %indvars.iv3340.i = phi i64 [ 0, %for.body899.lr.ph.i ], [ %indvars.iv.next3341.i, %for.body899.i ]
  %indvars.iv3338.i = phi i64 [ 0, %for.body899.lr.ph.i ], [ %indvars.iv.next3339.i, %for.body899.i ]
  %arrayidx901.i = getelementptr inbounds double* %colA0.13209.i, i64 %indvars.iv3338.i
  %770 = load double* %arrayidx901.i, align 8, !tbaa !4
  %arrayidx903.i = getelementptr inbounds double* %colA0.13209.i, i64 %indvars.iv3342.i
  %771 = load double* %arrayidx903.i, align 8, !tbaa !4
  %add.ptr742.sum3028.i = add i64 %indvars.iv3338.i, %idx.ext741.i
  %arrayidx905.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr742.sum3028.i
  %772 = load double* %arrayidx905.i, align 8, !tbaa !4
  %add.ptr742.sum3029.i = add i64 %indvars.iv3342.i, %idx.ext741.i
  %arrayidx907.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr742.sum3029.i
  %773 = load double* %arrayidx907.i, align 8, !tbaa !4
  %add.ptr745.sum3030.i = add i64 %indvars.iv3338.i, %add.ptr742.sum.i
  %arrayidx909.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr745.sum3030.i
  %774 = load double* %arrayidx909.i, align 8, !tbaa !4
  %add.ptr745.sum3031.i = add i64 %indvars.iv3342.i, %add.ptr742.sum.i
  %arrayidx911.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr745.sum3031.i
  %775 = load double* %arrayidx911.i, align 8, !tbaa !4
  %arrayidx913.i = getelementptr inbounds i32* %759, i64 %indvars.iv3340.i
  %776 = load i32* %arrayidx913.i, align 4, !tbaa !3
  %mul916.i = shl nsw i32 %776, 1
  %add9173032.i = or i32 %mul916.i, 1
  %mul918.i = fmul double %xr00.3.i, %770
  %mul919.i = fmul double %xi00.3.i, %771
  %sub920.i = fsub double %mul918.i, %mul919.i
  %mul921.i = fmul double %xr10.2.i, %772
  %add922.i = fadd double %sub920.i, %mul921.i
  %mul923.i = fmul double %xi10.2.i, %773
  %sub924.i = fsub double %add922.i, %mul923.i
  %mul925.i = fmul double %xr20.1.i, %774
  %add926.i = fadd double %sub924.i, %mul925.i
  %mul927.i = fmul double %xi20.1.i, %775
  %sub928.i = fsub double %add926.i, %mul927.i
  %idxprom929.i = sext i32 %mul916.i to i64
  %arrayidx930.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom929.i
  %777 = load double* %arrayidx930.i, align 8, !tbaa !4
  %sub931.i = fsub double %777, %sub928.i
  store double %sub931.i, double* %arrayidx930.i, align 8, !tbaa !4
  %mul932.i = fmul double %xi00.3.i, %770
  %mul933.i = fmul double %xr00.3.i, %771
  %add934.i = fadd double %mul932.i, %mul933.i
  %mul935.i = fmul double %xi10.2.i, %772
  %add936.i = fadd double %add934.i, %mul935.i
  %mul937.i = fmul double %xr10.2.i, %773
  %add938.i = fadd double %add936.i, %mul937.i
  %mul939.i = fmul double %xi20.1.i, %774
  %add940.i = fadd double %add938.i, %mul939.i
  %mul941.i = fmul double %xr20.1.i, %775
  %add942.i = fadd double %add940.i, %mul941.i
  %idxprom943.i = sext i32 %add9173032.i to i64
  %arrayidx944.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom943.i
  %778 = load double* %arrayidx944.i, align 8, !tbaa !4
  %sub945.i = fsub double %778, %add942.i
  store double %sub945.i, double* %arrayidx944.i, align 8, !tbaa !4
  %mul946.i = fmul double %xr01.3.i, %770
  %mul947.i = fmul double %xi01.3.i, %771
  %sub948.i = fsub double %mul946.i, %mul947.i
  %mul949.i = fmul double %xr11.2.i, %772
  %add950.i = fadd double %sub948.i, %mul949.i
  %mul951.i = fmul double %xi11.2.i, %773
  %sub952.i = fsub double %add950.i, %mul951.i
  %mul953.i = fmul double %xr21.1.i, %774
  %add954.i = fadd double %sub952.i, %mul953.i
  %mul955.i = fmul double %xi21.1.i, %775
  %sub956.i = fsub double %add954.i, %mul955.i
  %add.ptr735.sum3033.i = add i64 %idxprom929.i, %idx.ext734.i
  %arrayidx958.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3033.i
  %779 = load double* %arrayidx958.i, align 8, !tbaa !4
  %sub959.i = fsub double %779, %sub956.i
  store double %sub959.i, double* %arrayidx958.i, align 8, !tbaa !4
  %mul960.i = fmul double %xi01.3.i, %770
  %mul961.i = fmul double %xr01.3.i, %771
  %add962.i = fadd double %mul960.i, %mul961.i
  %mul963.i = fmul double %xi11.2.i, %772
  %add964.i = fadd double %add962.i, %mul963.i
  %mul965.i = fmul double %xr11.2.i, %773
  %add966.i = fadd double %add964.i, %mul965.i
  %mul967.i = fmul double %xi21.1.i, %774
  %add968.i = fadd double %add966.i, %mul967.i
  %mul969.i = fmul double %xr21.1.i, %775
  %add970.i = fadd double %add968.i, %mul969.i
  %add.ptr735.sum3034.i = add i64 %idxprom943.i, %idx.ext734.i
  %arrayidx972.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3034.i
  %780 = load double* %arrayidx972.i, align 8, !tbaa !4
  %sub973.i = fsub double %780, %add970.i
  store double %sub973.i, double* %arrayidx972.i, align 8, !tbaa !4
  %indvars.iv.next3341.i = add i64 %indvars.iv3340.i, 1
  %indvars.iv.next3339.i = add i64 %indvars.iv3338.i, 2
  %indvars.iv.next3343.i = add i64 %indvars.iv3342.i, 2
  %lftr.wideiv1201 = trunc i64 %indvars.iv.next3341.i to i32
  %exitcond1202 = icmp eq i32 %lftr.wideiv1201, %.pre.i437
  br i1 %exitcond1202, label %if.end979.i, label %for.body899.i

if.end979.i:                                      ; preds = %for.body822.i, %for.body899.i, %for.cond897.preheader.i, %for.cond820.preheader.i
  %add.ptr982.i = getelementptr inbounds double* %colA0.13209.i, i64 %add.ptr745.sum.i
  %indvars.iv.next3351.i = add i64 %indvars.iv3350.i, 3
  %add984.i = add nsw i32 %icolA.13213.i, 3
  %781 = trunc i64 %indvars.iv.next3351.i to i32
  %cmp738.i = icmp slt i32 %781, %sub7373207.i
  br i1 %cmp738.i, label %for.body739.i, label %for.end985.i

for.end985.i:                                     ; preds = %if.end979.i, %if.then729.i
  %icolA.1.lcssa.i449 = phi i32 [ 0, %if.then729.i ], [ %add984.i, %if.end979.i ]
  %colA0.1.lcssa.i450 = phi double* [ %750, %if.then729.i ], [ %add.ptr982.i, %if.end979.i ]
  %cmp987.i = icmp eq i32 %icolA.1.lcssa.i449, %sub7373207.i
  br i1 %cmp987.i, label %if.then988.i, label %if.else1163.i

if.then988.i:                                     ; preds = %for.end985.i
  %782 = load i32* %nrowA.i311, align 4, !tbaa !3
  %mul989.i = shl nsw i32 %782, 1
  %idx.ext990.i = sext i32 %mul989.i to i64
  %cmp992.i = icmp eq i32 %751, %748
  br i1 %cmp992.i, label %if.then993.i, label %if.else1014.i

if.then993.i:                                     ; preds = %if.then988.i
  %mul994.i = shl nsw i32 %sub7373207.i, 1
  %add9953014.i = or i32 %mul994.i, 1
  %add1004.i = add nsw i32 %mul994.i, 2
  %add1005.i = add nsw i32 %add9953014.i, 2
  br label %if.end1040.i

if.else1014.i:                                    ; preds = %if.then988.i
  %idxprom1015.i = sext i32 %sub7373207.i to i64
  %783 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx1016.i = getelementptr inbounds i32* %783, i64 %idxprom1015.i
  %784 = load i32* %arrayidx1016.i, align 4, !tbaa !3
  %mul1017.i = shl nsw i32 %784, 1
  %add10183000.i = or i32 %mul1017.i, 1
  %add1027.i = add nsw i32 %751, -1
  %idxprom1028.i = sext i32 %add1027.i to i64
  %arrayidx1029.i = getelementptr inbounds i32* %783, i64 %idxprom1028.i
  %785 = load i32* %arrayidx1029.i, align 4, !tbaa !3
  %mul1030.i = shl nsw i32 %785, 1
  %add10313003.i = or i32 %mul1030.i, 1
  br label %if.end1040.i

if.end1040.i:                                     ; preds = %if.else1014.i, %if.then993.i
  %add1004.sink.i = phi i32 [ %add1004.i, %if.then993.i ], [ %mul1030.i, %if.else1014.i ]
  %add1005.sink.i = phi i32 [ %add1005.i, %if.then993.i ], [ %add10313003.i, %if.else1014.i ]
  %idxprom998.pn.in.i = phi i32 [ %add9953014.i, %if.then993.i ], [ %add10183000.i, %if.else1014.i ]
  %idxprom996.pn.in.i = phi i32 [ %mul994.i, %if.then993.i ], [ %mul1017.i, %if.else1014.i ]
  %idxprom996.pn.i = sext i32 %idxprom996.pn.in.i to i64
  %idxprom998.pn.i = sext i32 %idxprom998.pn.in.i to i64
  %idxprom1006.i = sext i32 %add1004.sink.i to i64
  %idxprom1008.i = sext i32 %add1005.sink.i to i64
  %add.ptr732.sum3017.pn.i = add i64 %idxprom1006.i, %idx.ext731.i
  %add.ptr732.sum3015.pn.i = add i64 %idxprom996.pn.i, %idx.ext731.i
  %add.ptr732.sum3018.pn.i = add i64 %idxprom1008.i, %idx.ext731.i
  %add.ptr732.sum3016.pn.i = add i64 %idxprom998.pn.i, %idx.ext731.i
  %xr11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3017.pn.i
  %xr10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1006.i
  %xr01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3015.pn.i
  %xr00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom996.pn.i
  %xi11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3018.pn.i
  %xi10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1008.i
  %xi01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum3016.pn.i
  %xi00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom998.pn.i
  %xr11.3.i = load double* %xr11.3.in.i, align 8
  %xr10.3.i = load double* %xr10.3.in.i, align 8
  %xr01.4.i = load double* %xr01.4.in.i, align 8
  %xr00.4.i = load double* %xr00.4.in.i, align 8
  %xi11.3.i = load double* %xi11.3.in.i, align 8
  %xi10.3.i = load double* %xi10.3.in.i, align 8
  %xi01.4.i = load double* %xi01.4.in.i, align 8
  %xi00.4.i = load double* %xi00.4.in.i, align 8
  %cmp1041.i = icmp eq i32 %749, %782
  br i1 %cmp1041.i, label %for.cond1043.preheader.i, label %for.cond1100.preheader.i

for.cond1100.preheader.i:                         ; preds = %if.end1040.i
  %cmp11013184.i = icmp sgt i32 %782, 0
  br i1 %cmp11013184.i, label %for.body1102.lr.ph.i, label %sw.epilog34

for.body1102.lr.ph.i:                             ; preds = %for.cond1100.preheader.i
  %786 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body1102.i

for.cond1043.preheader.i:                         ; preds = %if.end1040.i
  %cmp10443179.i = icmp sgt i32 %749, 0
  br i1 %cmp10443179.i, label %for.body1045.i, label %sw.epilog34

for.body1045.i:                                   ; preds = %for.cond1043.preheader.i, %for.body1045.i
  %indvars.iv3320.i = phi i64 [ %indvars.iv.next3321.i, %for.body1045.i ], [ 1, %for.cond1043.preheader.i ]
  %indvars.iv.i451 = phi i64 [ %indvars.iv.next.i452, %for.body1045.i ], [ 0, %for.cond1043.preheader.i ]
  %krowA.83181.i = phi i32 [ %inc1095.i, %for.body1045.i ], [ 0, %for.cond1043.preheader.i ]
  %arrayidx1047.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv.i451
  %787 = load double* %arrayidx1047.i, align 8, !tbaa !4
  %arrayidx1049.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3320.i
  %788 = load double* %arrayidx1049.i, align 8, !tbaa !4
  %add.ptr991.sum3010.i = add i64 %indvars.iv.i451, %idx.ext990.i
  %arrayidx1051.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %add.ptr991.sum3010.i
  %789 = load double* %arrayidx1051.i, align 8, !tbaa !4
  %add.ptr991.sum3011.i = add i64 %indvars.iv3320.i, %idx.ext990.i
  %arrayidx1053.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %add.ptr991.sum3011.i
  %790 = load double* %arrayidx1053.i, align 8, !tbaa !4
  %mul1054.i = fmul double %xr00.4.i, %787
  %mul1055.i = fmul double %xi00.4.i, %788
  %sub1056.i = fsub double %mul1054.i, %mul1055.i
  %mul1057.i = fmul double %xr10.3.i, %789
  %add1058.i = fadd double %sub1056.i, %mul1057.i
  %mul1059.i = fmul double %xi10.3.i, %790
  %sub1060.i = fsub double %add1058.i, %mul1059.i
  %arrayidx1062.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv.i451
  %791 = load double* %arrayidx1062.i, align 8, !tbaa !4
  %sub1063.i = fsub double %791, %sub1060.i
  store double %sub1063.i, double* %arrayidx1062.i, align 8, !tbaa !4
  %mul1064.i = fmul double %xi00.4.i, %787
  %mul1065.i = fmul double %xr00.4.i, %788
  %add1066.i = fadd double %mul1064.i, %mul1065.i
  %mul1067.i = fmul double %xi10.3.i, %789
  %add1068.i = fadd double %add1066.i, %mul1067.i
  %mul1069.i = fmul double %xr10.3.i, %790
  %add1070.i = fadd double %add1068.i, %mul1069.i
  %arrayidx1072.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3320.i
  %792 = load double* %arrayidx1072.i, align 8, !tbaa !4
  %sub1073.i = fsub double %792, %add1070.i
  store double %sub1073.i, double* %arrayidx1072.i, align 8, !tbaa !4
  %mul1074.i = fmul double %xr01.4.i, %787
  %mul1075.i = fmul double %xi01.4.i, %788
  %sub1076.i = fsub double %mul1074.i, %mul1075.i
  %mul1077.i = fmul double %xr11.3.i, %789
  %add1078.i = fadd double %sub1076.i, %mul1077.i
  %mul1079.i = fmul double %xi11.3.i, %790
  %sub1080.i = fsub double %add1078.i, %mul1079.i
  %add.ptr735.sum3012.i = add i64 %indvars.iv.i451, %idx.ext734.i
  %arrayidx1082.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3012.i
  %793 = load double* %arrayidx1082.i, align 8, !tbaa !4
  %sub1083.i = fsub double %793, %sub1080.i
  store double %sub1083.i, double* %arrayidx1082.i, align 8, !tbaa !4
  %mul1084.i = fmul double %xi01.4.i, %787
  %mul1085.i = fmul double %xr01.4.i, %788
  %add1086.i = fadd double %mul1084.i, %mul1085.i
  %mul1087.i = fmul double %xi11.3.i, %789
  %add1088.i = fadd double %add1086.i, %mul1087.i
  %mul1089.i = fmul double %xr11.3.i, %790
  %add1090.i = fadd double %add1088.i, %mul1089.i
  %add.ptr735.sum3013.i = add i64 %indvars.iv3320.i, %idx.ext734.i
  %arrayidx1092.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3013.i
  %794 = load double* %arrayidx1092.i, align 8, !tbaa !4
  %sub1093.i = fsub double %794, %add1090.i
  store double %sub1093.i, double* %arrayidx1092.i, align 8, !tbaa !4
  %inc1095.i = add nsw i32 %krowA.83181.i, 1
  %indvars.iv.next.i452 = add i64 %indvars.iv.i451, 2
  %indvars.iv.next3321.i = add i64 %indvars.iv3320.i, 2
  %exitcond1195 = icmp eq i32 %inc1095.i, %749
  br i1 %exitcond1195, label %sw.epilog34, label %for.body1045.i

for.body1102.i:                                   ; preds = %for.body1102.i, %for.body1102.lr.ph.i
  %indvars.iv3326.i = phi i64 [ 1, %for.body1102.lr.ph.i ], [ %indvars.iv.next3327.i, %for.body1102.i ]
  %indvars.iv3324.i = phi i64 [ 0, %for.body1102.lr.ph.i ], [ %indvars.iv.next3325.i, %for.body1102.i ]
  %indvars.iv3322.i = phi i64 [ 0, %for.body1102.lr.ph.i ], [ %indvars.iv.next3323.i, %for.body1102.i ]
  %arrayidx1104.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3322.i
  %795 = load double* %arrayidx1104.i, align 8, !tbaa !4
  %arrayidx1106.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3326.i
  %796 = load double* %arrayidx1106.i, align 8, !tbaa !4
  %add.ptr991.sum.i = add i64 %indvars.iv3322.i, %idx.ext990.i
  %arrayidx1108.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %add.ptr991.sum.i
  %797 = load double* %arrayidx1108.i, align 8, !tbaa !4
  %add.ptr991.sum3006.i = add i64 %indvars.iv3326.i, %idx.ext990.i
  %arrayidx1110.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %add.ptr991.sum3006.i
  %798 = load double* %arrayidx1110.i, align 8, !tbaa !4
  %arrayidx1112.i = getelementptr inbounds i32* %786, i64 %indvars.iv3324.i
  %799 = load i32* %arrayidx1112.i, align 4, !tbaa !3
  %mul1115.i = shl nsw i32 %799, 1
  %add11163007.i = or i32 %mul1115.i, 1
  %mul1117.i = fmul double %xr00.4.i, %795
  %mul1118.i = fmul double %xi00.4.i, %796
  %sub1119.i = fsub double %mul1117.i, %mul1118.i
  %mul1120.i = fmul double %xr10.3.i, %797
  %add1121.i = fadd double %sub1119.i, %mul1120.i
  %mul1122.i = fmul double %xi10.3.i, %798
  %sub1123.i = fsub double %add1121.i, %mul1122.i
  %idxprom1124.i = sext i32 %mul1115.i to i64
  %arrayidx1125.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1124.i
  %800 = load double* %arrayidx1125.i, align 8, !tbaa !4
  %sub1126.i = fsub double %800, %sub1123.i
  store double %sub1126.i, double* %arrayidx1125.i, align 8, !tbaa !4
  %mul1127.i = fmul double %xi00.4.i, %795
  %mul1128.i = fmul double %xr00.4.i, %796
  %add1129.i = fadd double %mul1127.i, %mul1128.i
  %mul1130.i = fmul double %xi10.3.i, %797
  %add1131.i = fadd double %add1129.i, %mul1130.i
  %mul1132.i = fmul double %xr10.3.i, %798
  %add1133.i = fadd double %add1131.i, %mul1132.i
  %idxprom1134.i = sext i32 %add11163007.i to i64
  %arrayidx1135.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1134.i
  %801 = load double* %arrayidx1135.i, align 8, !tbaa !4
  %sub1136.i = fsub double %801, %add1133.i
  store double %sub1136.i, double* %arrayidx1135.i, align 8, !tbaa !4
  %mul1137.i = fmul double %xr01.4.i, %795
  %mul1138.i = fmul double %xi01.4.i, %796
  %sub1139.i = fsub double %mul1137.i, %mul1138.i
  %mul1140.i = fmul double %xr11.3.i, %797
  %add1141.i = fadd double %sub1139.i, %mul1140.i
  %mul1142.i = fmul double %xi11.3.i, %798
  %sub1143.i = fsub double %add1141.i, %mul1142.i
  %add.ptr735.sum3008.i = add i64 %idxprom1124.i, %idx.ext734.i
  %arrayidx1145.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3008.i
  %802 = load double* %arrayidx1145.i, align 8, !tbaa !4
  %sub1146.i = fsub double %802, %sub1143.i
  store double %sub1146.i, double* %arrayidx1145.i, align 8, !tbaa !4
  %mul1147.i = fmul double %xi01.4.i, %795
  %mul1148.i = fmul double %xr01.4.i, %796
  %add1149.i = fadd double %mul1147.i, %mul1148.i
  %mul1150.i = fmul double %xi11.3.i, %797
  %add1151.i = fadd double %add1149.i, %mul1150.i
  %mul1152.i = fmul double %xr11.3.i, %798
  %add1153.i = fadd double %add1151.i, %mul1152.i
  %add.ptr735.sum3009.i = add i64 %idxprom1134.i, %idx.ext734.i
  %arrayidx1155.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum3009.i
  %803 = load double* %arrayidx1155.i, align 8, !tbaa !4
  %sub1156.i = fsub double %803, %add1153.i
  store double %sub1156.i, double* %arrayidx1155.i, align 8, !tbaa !4
  %indvars.iv.next3325.i = add i64 %indvars.iv3324.i, 1
  %indvars.iv.next3323.i = add i64 %indvars.iv3322.i, 2
  %indvars.iv.next3327.i = add i64 %indvars.iv3326.i, 2
  %lftr.wideiv1196 = trunc i64 %indvars.iv.next3325.i to i32
  %exitcond1197 = icmp eq i32 %lftr.wideiv1196, %782
  br i1 %exitcond1197, label %sw.epilog34, label %for.body1102.i

if.else1163.i:                                    ; preds = %for.end985.i
  %sub1164.i = add nsw i32 %751, -1
  %cmp1165.i = icmp eq i32 %icolA.1.lcssa.i449, %sub1164.i
  br i1 %cmp1165.i, label %if.then1166.i, label %sw.epilog34

if.then1166.i:                                    ; preds = %if.else1163.i
  %cmp1167.i = icmp eq i32 %751, %748
  br i1 %cmp1167.i, label %if.end1192.i, label %if.else1179.i

if.else1179.i:                                    ; preds = %if.then1166.i
  %idxprom1180.i = sext i32 %icolA.1.lcssa.i449 to i64
  %804 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx1181.i = getelementptr inbounds i32* %804, i64 %idxprom1180.i
  %805 = load i32* %arrayidx1181.i, align 4, !tbaa !3
  br label %if.end1192.i

if.end1192.i:                                     ; preds = %if.then1166.i, %if.else1179.i
  %icolA.1.sink.i = phi i32 [ %805, %if.else1179.i ], [ %icolA.1.lcssa.i449, %if.then1166.i ]
  %mul1169.i = shl nsw i32 %icolA.1.sink.i, 1
  %add11702997.sink.i = or i32 %mul1169.i, 1
  %idxprom1171.i = sext i32 %mul1169.i to i64
  %idxprom1173.i = sext i32 %add11702997.sink.i to i64
  %add.ptr732.sum2998.pn.i = add i64 %idxprom1171.i, %idx.ext731.i
  %add.ptr732.sum2999.pn.i = add i64 %idxprom1173.i, %idx.ext731.i
  %xr01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum2998.pn.i
  %xr00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1171.i
  %xi01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %add.ptr732.sum2999.pn.i
  %xi00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1173.i
  %xr01.5.i = load double* %xr01.5.in.i, align 8
  %xr00.5.i = load double* %xr00.5.in.i, align 8
  %xi01.5.i = load double* %xi01.5.in.i, align 8
  %xi00.5.i = load double* %xi00.5.in.i, align 8
  %806 = load i32* %nrowA.i311, align 4, !tbaa !3
  %cmp1193.i = icmp eq i32 %749, %806
  br i1 %cmp1193.i, label %for.cond1195.preheader.i, label %for.cond1232.preheader.i

for.cond1232.preheader.i:                         ; preds = %if.end1192.i
  %cmp12333194.i = icmp sgt i32 %806, 0
  br i1 %cmp12333194.i, label %for.body1234.lr.ph.i, label %sw.epilog34

for.body1234.lr.ph.i:                             ; preds = %for.cond1232.preheader.i
  %807 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body1234.i

for.cond1195.preheader.i:                         ; preds = %if.end1192.i
  %cmp11963189.i = icmp sgt i32 %749, 0
  br i1 %cmp11963189.i, label %for.body1197.i, label %sw.epilog34

for.body1197.i:                                   ; preds = %for.cond1195.preheader.i, %for.body1197.i
  %indvars.iv3330.i = phi i64 [ %indvars.iv.next3331.i, %for.body1197.i ], [ 1, %for.cond1195.preheader.i ]
  %indvars.iv3328.i = phi i64 [ %indvars.iv.next3329.i, %for.body1197.i ], [ 0, %for.cond1195.preheader.i ]
  %krowA.103191.i = phi i32 [ %inc1227.i, %for.body1197.i ], [ 0, %for.cond1195.preheader.i ]
  %arrayidx1199.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3328.i
  %808 = load double* %arrayidx1199.i, align 8, !tbaa !4
  %arrayidx1201.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3330.i
  %809 = load double* %arrayidx1201.i, align 8, !tbaa !4
  %mul1202.i = fmul double %xr00.5.i, %808
  %mul1203.i = fmul double %xi00.5.i, %809
  %sub1204.i = fsub double %mul1202.i, %mul1203.i
  %arrayidx1206.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3328.i
  %810 = load double* %arrayidx1206.i, align 8, !tbaa !4
  %sub1207.i = fsub double %810, %sub1204.i
  store double %sub1207.i, double* %arrayidx1206.i, align 8, !tbaa !4
  %mul1208.i = fmul double %xi00.5.i, %808
  %mul1209.i = fmul double %xr00.5.i, %809
  %add1210.i = fadd double %mul1208.i, %mul1209.i
  %arrayidx1212.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3330.i
  %811 = load double* %arrayidx1212.i, align 8, !tbaa !4
  %sub1213.i = fsub double %811, %add1210.i
  store double %sub1213.i, double* %arrayidx1212.i, align 8, !tbaa !4
  %mul1214.i = fmul double %xr01.5.i, %808
  %mul1215.i = fmul double %xi01.5.i, %809
  %sub1216.i = fsub double %mul1214.i, %mul1215.i
  %add.ptr735.sum2995.i = add i64 %indvars.iv3328.i, %idx.ext734.i
  %arrayidx1218.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum2995.i
  %812 = load double* %arrayidx1218.i, align 8, !tbaa !4
  %sub1219.i = fsub double %812, %sub1216.i
  store double %sub1219.i, double* %arrayidx1218.i, align 8, !tbaa !4
  %mul1220.i = fmul double %xi01.5.i, %808
  %mul1221.i = fmul double %xr01.5.i, %809
  %add1222.i = fadd double %mul1220.i, %mul1221.i
  %add.ptr735.sum2996.i = add i64 %indvars.iv3330.i, %idx.ext734.i
  %arrayidx1224.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum2996.i
  %813 = load double* %arrayidx1224.i, align 8, !tbaa !4
  %sub1225.i = fsub double %813, %add1222.i
  store double %sub1225.i, double* %arrayidx1224.i, align 8, !tbaa !4
  %inc1227.i = add nsw i32 %krowA.103191.i, 1
  %indvars.iv.next3329.i = add i64 %indvars.iv3328.i, 2
  %indvars.iv.next3331.i = add i64 %indvars.iv3330.i, 2
  %exitcond1198 = icmp eq i32 %inc1227.i, %749
  br i1 %exitcond1198, label %sw.epilog34, label %for.body1197.i

for.body1234.i:                                   ; preds = %for.body1234.i, %for.body1234.lr.ph.i
  %indvars.iv3336.i = phi i64 [ 1, %for.body1234.lr.ph.i ], [ %indvars.iv.next3337.i, %for.body1234.i ]
  %indvars.iv3334.i = phi i64 [ 0, %for.body1234.lr.ph.i ], [ %indvars.iv.next3335.i, %for.body1234.i ]
  %indvars.iv3332.i = phi i64 [ 0, %for.body1234.lr.ph.i ], [ %indvars.iv.next3333.i, %for.body1234.i ]
  %arrayidx1236.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3332.i
  %814 = load double* %arrayidx1236.i, align 8, !tbaa !4
  %arrayidx1238.i = getelementptr inbounds double* %colA0.1.lcssa.i450, i64 %indvars.iv3336.i
  %815 = load double* %arrayidx1238.i, align 8, !tbaa !4
  %arrayidx1240.i = getelementptr inbounds i32* %807, i64 %indvars.iv3334.i
  %816 = load i32* %arrayidx1240.i, align 4, !tbaa !3
  %mul1243.i = shl nsw i32 %816, 1
  %add12442993.i = or i32 %mul1243.i, 1
  %mul1245.i = fmul double %xr00.5.i, %814
  %mul1246.i = fmul double %xi00.5.i, %815
  %sub1247.i = fsub double %mul1245.i, %mul1246.i
  %idxprom1248.i = sext i32 %mul1243.i to i64
  %arrayidx1249.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1248.i
  %817 = load double* %arrayidx1249.i, align 8, !tbaa !4
  %sub1250.i = fsub double %817, %sub1247.i
  store double %sub1250.i, double* %arrayidx1249.i, align 8, !tbaa !4
  %mul1251.i = fmul double %xi00.5.i, %814
  %mul1252.i = fmul double %xr00.5.i, %815
  %add1253.i = fadd double %mul1251.i, %mul1252.i
  %idxprom1254.i = sext i32 %add12442993.i to i64
  %arrayidx1255.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1254.i
  %818 = load double* %arrayidx1255.i, align 8, !tbaa !4
  %sub1256.i = fsub double %818, %add1253.i
  store double %sub1256.i, double* %arrayidx1255.i, align 8, !tbaa !4
  %mul1257.i = fmul double %xr01.5.i, %814
  %mul1258.i = fmul double %xi01.5.i, %815
  %sub1259.i = fsub double %mul1257.i, %mul1258.i
  %add.ptr735.sum.i = add i64 %idxprom1248.i, %idx.ext734.i
  %arrayidx1261.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum.i
  %819 = load double* %arrayidx1261.i, align 8, !tbaa !4
  %sub1262.i = fsub double %819, %sub1259.i
  store double %sub1262.i, double* %arrayidx1261.i, align 8, !tbaa !4
  %mul1263.i = fmul double %xi01.5.i, %814
  %mul1264.i = fmul double %xr01.5.i, %815
  %add1265.i = fadd double %mul1263.i, %mul1264.i
  %add.ptr735.sum2994.i = add i64 %idxprom1254.i, %idx.ext734.i
  %arrayidx1267.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %add.ptr735.sum2994.i
  %820 = load double* %arrayidx1267.i, align 8, !tbaa !4
  %sub1268.i = fsub double %820, %add1265.i
  store double %sub1268.i, double* %arrayidx1267.i, align 8, !tbaa !4
  %indvars.iv.next3335.i = add i64 %indvars.iv3334.i, 1
  %indvars.iv.next3333.i = add i64 %indvars.iv3332.i, 2
  %indvars.iv.next3337.i = add i64 %indvars.iv3336.i, 2
  %lftr.wideiv1199 = trunc i64 %indvars.iv.next3335.i to i32
  %exitcond1200 = icmp eq i32 %lftr.wideiv1199, %806
  br i1 %exitcond1200, label %sw.epilog34, label %for.body1234.i

if.else1277.i:                                    ; preds = %for.end726.i
  %sub1278.i = add nsw i32 %.lcssa3301.i, -1
  %cmp1279.i = icmp eq i32 %jcolX.0.lcssa.i432, %sub1278.i
  br i1 %cmp1279.i, label %if.then1280.i, label %sw.epilog34

if.then1280.i:                                    ; preds = %if.else1277.i
  %821 = load double** %entA.i303, align 8, !tbaa !0
  %822 = load i32* %ncolA.i308, align 4, !tbaa !3
  %sub12823247.i = add nsw i32 %822, -2
  %cmp12833248.i = icmp sgt i32 %sub12823247.i, 0
  br i1 %cmp12833248.i, label %for.body1284.lr.ph.i, label %for.end1450.i

for.body1284.lr.ph.i:                             ; preds = %if.then1280.i
  %.pre3428.i = load i32* %nrowA.i311, align 4, !tbaa !3
  %.pre3429.i = load i32* %nrowX.i312, align 4, !tbaa !3
  %mul1285.i = shl nsw i32 %.pre3428.i, 1
  %idx.ext1286.i = sext i32 %mul1285.i to i64
  %add.ptr1287.sum.i = shl nsw i64 %idx.ext1286.i, 1
  %cmp1291.i = icmp eq i32 %822, %.pre3429.i
  %cmp13423242.i = icmp sgt i32 %.pre3428.i, 0
  %add.ptr1290.sum.i = add i64 %add.ptr1287.sum.i, %idx.ext1286.i
  br label %for.body1284.i

for.body1284.i:                                   ; preds = %if.end1444.i, %for.body1284.lr.ph.i
  %indvars.iv3386.i = phi i64 [ 0, %for.body1284.lr.ph.i ], [ %indvars.iv.next3387.i, %if.end1444.i ]
  %icolA.23253.i = phi i32 [ 0, %for.body1284.lr.ph.i ], [ %add1449.i, %if.end1444.i ]
  %colA0.23249.i = phi double* [ %821, %for.body1284.lr.ph.i ], [ %add.ptr1447.i, %if.end1444.i ]
  br i1 %cmp1291.i, label %if.then1292.i, label %if.else1311.i

if.then1292.i:                                    ; preds = %for.body1284.i
  %823 = trunc i64 %indvars.iv3386.i to i32
  %mul1293.i = shl nsw i32 %823, 1
  %add12942990.i = or i32 %mul1293.i, 1
  %add1299.i = add nsw i32 %mul1293.i, 2
  %add1300.i = add nsw i32 %add12942990.i, 2
  %add1305.i = add nsw i32 %mul1293.i, 4
  %add1306.i = add nsw i32 %add12942990.i, 4
  br label %if.end1338.i

if.else1311.i:                                    ; preds = %for.body1284.i
  %824 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx1313.i = getelementptr inbounds i32* %824, i64 %indvars.iv3386.i
  %825 = load i32* %arrayidx1313.i, align 4, !tbaa !3
  %mul1314.i = shl nsw i32 %825, 1
  %add13152978.i = or i32 %mul1314.i, 1
  %826 = add nsw i64 %indvars.iv3386.i, 1
  %arrayidx1322.i = getelementptr inbounds i32* %824, i64 %826
  %827 = load i32* %arrayidx1322.i, align 4, !tbaa !3
  %mul1323.i = shl nsw i32 %827, 1
  %add13242979.i = or i32 %mul1323.i, 1
  %828 = add nsw i64 %indvars.iv3386.i, 2
  %arrayidx1331.i = getelementptr inbounds i32* %824, i64 %828
  %829 = load i32* %arrayidx1331.i, align 4, !tbaa !3
  %mul1332.i = shl nsw i32 %829, 1
  %add13332980.i = or i32 %mul1332.i, 1
  br label %if.end1338.i

if.end1338.i:                                     ; preds = %if.else1311.i, %if.then1292.i
  %idxprom1297.pn.in.i = phi i32 [ %add12942990.i, %if.then1292.i ], [ %add13152978.i, %if.else1311.i ]
  %idxprom1303.pn.in.i = phi i32 [ %add1300.i, %if.then1292.i ], [ %add13242979.i, %if.else1311.i ]
  %idxprom1309.pn.in.i = phi i32 [ %add1306.i, %if.then1292.i ], [ %add13332980.i, %if.else1311.i ]
  %idxprom1295.pn.in.i = phi i32 [ %mul1293.i, %if.then1292.i ], [ %mul1314.i, %if.else1311.i ]
  %idxprom1301.pn.in.i = phi i32 [ %add1299.i, %if.then1292.i ], [ %mul1323.i, %if.else1311.i ]
  %idxprom1307.pn.in.i = phi i32 [ %add1305.i, %if.then1292.i ], [ %mul1332.i, %if.else1311.i ]
  %idxprom1307.pn.i = sext i32 %idxprom1307.pn.in.i to i64
  %idxprom1301.pn.i = sext i32 %idxprom1301.pn.in.i to i64
  %idxprom1295.pn.i = sext i32 %idxprom1295.pn.in.i to i64
  %idxprom1309.pn.i = sext i32 %idxprom1309.pn.in.i to i64
  %idxprom1303.pn.i = sext i32 %idxprom1303.pn.in.i to i64
  %idxprom1297.pn.i = sext i32 %idxprom1297.pn.in.i to i64
  %xr20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1307.pn.i
  %xr10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1301.pn.i
  %xr00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1295.pn.i
  %xi20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1309.pn.i
  %xi10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1303.pn.i
  %xi00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1297.pn.i
  %xr20.2.i = load double* %xr20.2.in.i, align 8
  %xr10.4.i = load double* %xr10.4.in.i, align 8
  %xr00.6.i = load double* %xr00.6.in.i, align 8
  %xi20.2.i = load double* %xi20.2.in.i, align 8
  %xi10.4.i = load double* %xi10.4.in.i, align 8
  %xi00.6.i = load double* %xi00.6.in.i, align 8
  %830 = load i32* %nrowY.i313, align 4, !tbaa !3
  %cmp1339.i = icmp eq i32 %830, %.pre3428.i
  br i1 %cmp1339.i, label %for.cond1341.preheader.i, label %for.cond1390.preheader.i

for.cond1341.preheader.i:                         ; preds = %if.end1338.i
  br i1 %cmp13423242.i, label %for.body1343.i, label %if.end1444.i

for.cond1390.preheader.i:                         ; preds = %if.end1338.i
  br i1 %cmp13423242.i, label %for.body1392.lr.ph.i, label %if.end1444.i

for.body1392.lr.ph.i:                             ; preds = %for.cond1390.preheader.i
  %831 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body1392.i

for.body1343.i:                                   ; preds = %for.cond1341.preheader.i, %for.body1343.i
  %indvars.iv3382.i = phi i64 [ %indvars.iv.next3383.i, %for.body1343.i ], [ 1, %for.cond1341.preheader.i ]
  %indvars.iv3380.i = phi i64 [ %indvars.iv.next3381.i, %for.body1343.i ], [ 0, %for.cond1341.preheader.i ]
  %krowA.123244.i = phi i32 [ %inc1385.i, %for.body1343.i ], [ 0, %for.cond1341.preheader.i ]
  %arrayidx1345.i = getelementptr inbounds double* %colA0.23249.i, i64 %indvars.iv3380.i
  %832 = load double* %arrayidx1345.i, align 8, !tbaa !4
  %arrayidx1347.i = getelementptr inbounds double* %colA0.23249.i, i64 %indvars.iv3382.i
  %833 = load double* %arrayidx1347.i, align 8, !tbaa !4
  %add.ptr1287.sum2986.i = add i64 %indvars.iv3380.i, %idx.ext1286.i
  %arrayidx1349.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1287.sum2986.i
  %834 = load double* %arrayidx1349.i, align 8, !tbaa !4
  %add.ptr1287.sum2987.i = add i64 %indvars.iv3382.i, %idx.ext1286.i
  %arrayidx1351.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1287.sum2987.i
  %835 = load double* %arrayidx1351.i, align 8, !tbaa !4
  %add.ptr1290.sum2988.i = add i64 %indvars.iv3380.i, %add.ptr1287.sum.i
  %arrayidx1353.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1290.sum2988.i
  %836 = load double* %arrayidx1353.i, align 8, !tbaa !4
  %add.ptr1290.sum2989.i = add i64 %indvars.iv3382.i, %add.ptr1287.sum.i
  %arrayidx1355.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1290.sum2989.i
  %837 = load double* %arrayidx1355.i, align 8, !tbaa !4
  %mul1356.i = fmul double %xr00.6.i, %832
  %mul1357.i = fmul double %xi00.6.i, %833
  %sub1358.i = fsub double %mul1356.i, %mul1357.i
  %mul1359.i = fmul double %xr10.4.i, %834
  %add1360.i = fadd double %sub1358.i, %mul1359.i
  %mul1361.i = fmul double %xi10.4.i, %835
  %sub1362.i = fsub double %add1360.i, %mul1361.i
  %mul1363.i = fmul double %xr20.2.i, %836
  %add1364.i = fadd double %sub1362.i, %mul1363.i
  %mul1365.i = fmul double %xi20.2.i, %837
  %sub1366.i = fsub double %add1364.i, %mul1365.i
  %arrayidx1368.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3380.i
  %838 = load double* %arrayidx1368.i, align 8, !tbaa !4
  %sub1369.i = fsub double %838, %sub1366.i
  store double %sub1369.i, double* %arrayidx1368.i, align 8, !tbaa !4
  %mul1370.i = fmul double %xi00.6.i, %832
  %mul1371.i = fmul double %xr00.6.i, %833
  %add1372.i = fadd double %mul1370.i, %mul1371.i
  %mul1373.i = fmul double %xi10.4.i, %834
  %add1374.i = fadd double %add1372.i, %mul1373.i
  %mul1375.i = fmul double %xr10.4.i, %835
  %add1376.i = fadd double %add1374.i, %mul1375.i
  %mul1377.i = fmul double %xi20.2.i, %836
  %add1378.i = fadd double %add1376.i, %mul1377.i
  %mul1379.i = fmul double %xr20.2.i, %837
  %add1380.i = fadd double %add1378.i, %mul1379.i
  %arrayidx1382.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3382.i
  %839 = load double* %arrayidx1382.i, align 8, !tbaa !4
  %sub1383.i = fsub double %839, %add1380.i
  store double %sub1383.i, double* %arrayidx1382.i, align 8, !tbaa !4
  %inc1385.i = add nsw i32 %krowA.123244.i, 1
  %indvars.iv.next3381.i = add i64 %indvars.iv3380.i, 2
  %indvars.iv.next3383.i = add i64 %indvars.iv3382.i, 2
  %exitcond1212 = icmp eq i32 %inc1385.i, %.pre3428.i
  br i1 %exitcond1212, label %if.end1444.i, label %for.body1343.i

for.body1392.i:                                   ; preds = %for.body1392.i, %for.body1392.lr.ph.i
  %indvars.iv3378.i = phi i64 [ 1, %for.body1392.lr.ph.i ], [ %indvars.iv.next3379.i, %for.body1392.i ]
  %indvars.iv3376.i = phi i64 [ 0, %for.body1392.lr.ph.i ], [ %indvars.iv.next3377.i, %for.body1392.i ]
  %indvars.iv3374.i = phi i64 [ 0, %for.body1392.lr.ph.i ], [ %indvars.iv.next3375.i, %for.body1392.i ]
  %arrayidx1394.i = getelementptr inbounds double* %colA0.23249.i, i64 %indvars.iv3374.i
  %840 = load double* %arrayidx1394.i, align 8, !tbaa !4
  %arrayidx1396.i = getelementptr inbounds double* %colA0.23249.i, i64 %indvars.iv3378.i
  %841 = load double* %arrayidx1396.i, align 8, !tbaa !4
  %add.ptr1287.sum2981.i = add i64 %indvars.iv3374.i, %idx.ext1286.i
  %arrayidx1398.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1287.sum2981.i
  %842 = load double* %arrayidx1398.i, align 8, !tbaa !4
  %add.ptr1287.sum2982.i = add i64 %indvars.iv3378.i, %idx.ext1286.i
  %arrayidx1400.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1287.sum2982.i
  %843 = load double* %arrayidx1400.i, align 8, !tbaa !4
  %add.ptr1290.sum2983.i = add i64 %indvars.iv3374.i, %add.ptr1287.sum.i
  %arrayidx1402.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1290.sum2983.i
  %844 = load double* %arrayidx1402.i, align 8, !tbaa !4
  %add.ptr1290.sum2984.i = add i64 %indvars.iv3378.i, %add.ptr1287.sum.i
  %arrayidx1404.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1290.sum2984.i
  %845 = load double* %arrayidx1404.i, align 8, !tbaa !4
  %arrayidx1406.i = getelementptr inbounds i32* %831, i64 %indvars.iv3376.i
  %846 = load i32* %arrayidx1406.i, align 4, !tbaa !3
  %mul1409.i = shl nsw i32 %846, 1
  %add14102985.i = or i32 %mul1409.i, 1
  %mul1411.i = fmul double %xr00.6.i, %840
  %mul1412.i = fmul double %xi00.6.i, %841
  %sub1413.i = fsub double %mul1411.i, %mul1412.i
  %mul1414.i = fmul double %xr10.4.i, %842
  %add1415.i = fadd double %sub1413.i, %mul1414.i
  %mul1416.i = fmul double %xi10.4.i, %843
  %sub1417.i = fsub double %add1415.i, %mul1416.i
  %mul1418.i = fmul double %xr20.2.i, %844
  %add1419.i = fadd double %sub1417.i, %mul1418.i
  %mul1420.i = fmul double %xi20.2.i, %845
  %sub1421.i = fsub double %add1419.i, %mul1420.i
  %idxprom1422.i = sext i32 %mul1409.i to i64
  %arrayidx1423.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1422.i
  %847 = load double* %arrayidx1423.i, align 8, !tbaa !4
  %sub1424.i = fsub double %847, %sub1421.i
  store double %sub1424.i, double* %arrayidx1423.i, align 8, !tbaa !4
  %mul1425.i = fmul double %xi00.6.i, %840
  %mul1426.i = fmul double %xr00.6.i, %841
  %add1427.i = fadd double %mul1425.i, %mul1426.i
  %mul1428.i = fmul double %xi10.4.i, %842
  %add1429.i = fadd double %add1427.i, %mul1428.i
  %mul1430.i = fmul double %xr10.4.i, %843
  %add1431.i = fadd double %add1429.i, %mul1430.i
  %mul1432.i = fmul double %xi20.2.i, %844
  %add1433.i = fadd double %add1431.i, %mul1432.i
  %mul1434.i = fmul double %xr20.2.i, %845
  %add1435.i = fadd double %add1433.i, %mul1434.i
  %idxprom1436.i = sext i32 %add14102985.i to i64
  %arrayidx1437.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1436.i
  %848 = load double* %arrayidx1437.i, align 8, !tbaa !4
  %sub1438.i = fsub double %848, %add1435.i
  store double %sub1438.i, double* %arrayidx1437.i, align 8, !tbaa !4
  %indvars.iv.next3377.i = add i64 %indvars.iv3376.i, 1
  %indvars.iv.next3375.i = add i64 %indvars.iv3374.i, 2
  %indvars.iv.next3379.i = add i64 %indvars.iv3378.i, 2
  %lftr.wideiv1210 = trunc i64 %indvars.iv.next3377.i to i32
  %exitcond1211 = icmp eq i32 %lftr.wideiv1210, %.pre3428.i
  br i1 %exitcond1211, label %if.end1444.i, label %for.body1392.i

if.end1444.i:                                     ; preds = %for.body1343.i, %for.body1392.i, %for.cond1390.preheader.i, %for.cond1341.preheader.i
  %add.ptr1447.i = getelementptr inbounds double* %colA0.23249.i, i64 %add.ptr1290.sum.i
  %indvars.iv.next3387.i = add i64 %indvars.iv3386.i, 3
  %add1449.i = add nsw i32 %icolA.23253.i, 3
  %849 = trunc i64 %indvars.iv.next3387.i to i32
  %cmp1283.i = icmp slt i32 %849, %sub12823247.i
  br i1 %cmp1283.i, label %for.body1284.i, label %for.end1450.i

for.end1450.i:                                    ; preds = %if.end1444.i, %if.then1280.i
  %icolA.2.lcssa.i453 = phi i32 [ 0, %if.then1280.i ], [ %add1449.i, %if.end1444.i ]
  %colA0.2.lcssa.i454 = phi double* [ %821, %if.then1280.i ], [ %add.ptr1447.i, %if.end1444.i ]
  %cmp1452.i = icmp eq i32 %icolA.2.lcssa.i453, %sub12823247.i
  br i1 %cmp1452.i, label %if.then1453.i, label %if.else1572.i

if.then1453.i:                                    ; preds = %for.end1450.i
  %850 = load i32* %nrowA.i311, align 4, !tbaa !3
  %mul1454.i = shl nsw i32 %850, 1
  %idx.ext1455.i = sext i32 %mul1454.i to i64
  %851 = load i32* %nrowX.i312, align 4, !tbaa !3
  %cmp1457.i = icmp eq i32 %822, %851
  br i1 %cmp1457.i, label %if.then1458.i, label %if.else1471.i

if.then1458.i:                                    ; preds = %if.then1453.i
  %mul1459.i = shl nsw i32 %sub12823247.i, 1
  %add14602977.i = or i32 %mul1459.i, 1
  %add1465.i = add nsw i32 %mul1459.i, 2
  %add1466.i = add nsw i32 %add14602977.i, 2
  br label %if.end1489.i

if.else1471.i:                                    ; preds = %if.then1453.i
  %idxprom1472.i = sext i32 %sub12823247.i to i64
  %852 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx1473.i = getelementptr inbounds i32* %852, i64 %idxprom1472.i
  %853 = load i32* %arrayidx1473.i, align 4, !tbaa !3
  %mul1474.i = shl nsw i32 %853, 1
  %add14752971.i = or i32 %mul1474.i, 1
  %add1480.i = add nsw i32 %822, -1
  %idxprom1481.i = sext i32 %add1480.i to i64
  %arrayidx1482.i = getelementptr inbounds i32* %852, i64 %idxprom1481.i
  %854 = load i32* %arrayidx1482.i, align 4, !tbaa !3
  %mul1483.i = shl nsw i32 %854, 1
  %add14842972.i = or i32 %mul1483.i, 1
  br label %if.end1489.i

if.end1489.i:                                     ; preds = %if.else1471.i, %if.then1458.i
  %idxprom1463.pn.in.i = phi i32 [ %add14602977.i, %if.then1458.i ], [ %add14752971.i, %if.else1471.i ]
  %idxprom1469.pn.in.i = phi i32 [ %add1466.i, %if.then1458.i ], [ %add14842972.i, %if.else1471.i ]
  %idxprom1461.pn.in.i = phi i32 [ %mul1459.i, %if.then1458.i ], [ %mul1474.i, %if.else1471.i ]
  %idxprom1467.pn.in.i = phi i32 [ %add1465.i, %if.then1458.i ], [ %mul1483.i, %if.else1471.i ]
  %idxprom1467.pn.i = sext i32 %idxprom1467.pn.in.i to i64
  %idxprom1461.pn.i = sext i32 %idxprom1461.pn.in.i to i64
  %idxprom1469.pn.i = sext i32 %idxprom1469.pn.in.i to i64
  %idxprom1463.pn.i = sext i32 %idxprom1463.pn.in.i to i64
  %xr10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1467.pn.i
  %xr00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1461.pn.i
  %xi10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1469.pn.i
  %xi00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1463.pn.i
  %xr10.5.i = load double* %xr10.5.in.i, align 8
  %xr00.7.i = load double* %xr00.7.in.i, align 8
  %xi10.5.i = load double* %xi10.5.in.i, align 8
  %xi00.7.i = load double* %xi00.7.in.i, align 8
  %855 = load i32* %nrowY.i313, align 4, !tbaa !3
  %cmp1490.i = icmp eq i32 %855, %850
  %cmp14933218.i = icmp sgt i32 %850, 0
  br i1 %cmp1490.i, label %for.cond1492.preheader.i, label %for.cond1529.preheader.i

for.cond1529.preheader.i:                         ; preds = %if.end1489.i
  br i1 %cmp14933218.i, label %for.body1531.lr.ph.i, label %sw.epilog34

for.body1531.lr.ph.i:                             ; preds = %for.cond1529.preheader.i
  %856 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body1531.i

for.cond1492.preheader.i:                         ; preds = %if.end1489.i
  br i1 %cmp14933218.i, label %for.body1494.i, label %sw.epilog34

for.body1494.i:                                   ; preds = %for.cond1492.preheader.i, %for.body1494.i
  %indvars.iv3356.i = phi i64 [ %indvars.iv.next3357.i, %for.body1494.i ], [ 1, %for.cond1492.preheader.i ]
  %indvars.iv3354.i = phi i64 [ %indvars.iv.next3355.i, %for.body1494.i ], [ 0, %for.cond1492.preheader.i ]
  %krowA.143220.i = phi i32 [ %inc1524.i, %for.body1494.i ], [ 0, %for.cond1492.preheader.i ]
  %arrayidx1496.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3354.i
  %857 = load double* %arrayidx1496.i, align 8, !tbaa !4
  %arrayidx1498.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3356.i
  %858 = load double* %arrayidx1498.i, align 8, !tbaa !4
  %add.ptr1456.sum2975.i = add i64 %indvars.iv3354.i, %idx.ext1455.i
  %arrayidx1500.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %add.ptr1456.sum2975.i
  %859 = load double* %arrayidx1500.i, align 8, !tbaa !4
  %add.ptr1456.sum2976.i = add i64 %indvars.iv3356.i, %idx.ext1455.i
  %arrayidx1502.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %add.ptr1456.sum2976.i
  %860 = load double* %arrayidx1502.i, align 8, !tbaa !4
  %mul1503.i = fmul double %xr00.7.i, %857
  %mul1504.i = fmul double %xi00.7.i, %858
  %sub1505.i = fsub double %mul1503.i, %mul1504.i
  %mul1506.i = fmul double %xr10.5.i, %859
  %add1507.i = fadd double %sub1505.i, %mul1506.i
  %mul1508.i = fmul double %xi10.5.i, %860
  %sub1509.i = fsub double %add1507.i, %mul1508.i
  %arrayidx1511.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3354.i
  %861 = load double* %arrayidx1511.i, align 8, !tbaa !4
  %sub1512.i = fsub double %861, %sub1509.i
  store double %sub1512.i, double* %arrayidx1511.i, align 8, !tbaa !4
  %mul1513.i = fmul double %xi00.7.i, %857
  %mul1514.i = fmul double %xr00.7.i, %858
  %add1515.i = fadd double %mul1513.i, %mul1514.i
  %mul1516.i = fmul double %xi10.5.i, %859
  %add1517.i = fadd double %add1515.i, %mul1516.i
  %mul1518.i = fmul double %xr10.5.i, %860
  %add1519.i = fadd double %add1517.i, %mul1518.i
  %arrayidx1521.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3356.i
  %862 = load double* %arrayidx1521.i, align 8, !tbaa !4
  %sub1522.i = fsub double %862, %add1519.i
  store double %sub1522.i, double* %arrayidx1521.i, align 8, !tbaa !4
  %inc1524.i = add nsw i32 %krowA.143220.i, 1
  %indvars.iv.next3355.i = add i64 %indvars.iv3354.i, 2
  %indvars.iv.next3357.i = add i64 %indvars.iv3356.i, 2
  %exitcond1204 = icmp eq i32 %inc1524.i, %850
  br i1 %exitcond1204, label %sw.epilog34, label %for.body1494.i

for.body1531.i:                                   ; preds = %for.body1531.i, %for.body1531.lr.ph.i
  %indvars.iv3362.i = phi i64 [ 1, %for.body1531.lr.ph.i ], [ %indvars.iv.next3363.i, %for.body1531.i ]
  %indvars.iv3360.i = phi i64 [ 0, %for.body1531.lr.ph.i ], [ %indvars.iv.next3361.i, %for.body1531.i ]
  %indvars.iv3358.i = phi i64 [ 0, %for.body1531.lr.ph.i ], [ %indvars.iv.next3359.i, %for.body1531.i ]
  %arrayidx1533.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3358.i
  %863 = load double* %arrayidx1533.i, align 8, !tbaa !4
  %arrayidx1535.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3362.i
  %864 = load double* %arrayidx1535.i, align 8, !tbaa !4
  %add.ptr1456.sum.i = add i64 %indvars.iv3358.i, %idx.ext1455.i
  %arrayidx1537.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %add.ptr1456.sum.i
  %865 = load double* %arrayidx1537.i, align 8, !tbaa !4
  %add.ptr1456.sum2973.i = add i64 %indvars.iv3362.i, %idx.ext1455.i
  %arrayidx1539.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %add.ptr1456.sum2973.i
  %866 = load double* %arrayidx1539.i, align 8, !tbaa !4
  %arrayidx1541.i = getelementptr inbounds i32* %856, i64 %indvars.iv3360.i
  %867 = load i32* %arrayidx1541.i, align 4, !tbaa !3
  %mul1544.i = shl nsw i32 %867, 1
  %add15452974.i = or i32 %mul1544.i, 1
  %mul1546.i = fmul double %xr00.7.i, %863
  %mul1547.i = fmul double %xi00.7.i, %864
  %sub1548.i = fsub double %mul1546.i, %mul1547.i
  %mul1549.i = fmul double %xr10.5.i, %865
  %add1550.i = fadd double %sub1548.i, %mul1549.i
  %mul1551.i = fmul double %xi10.5.i, %866
  %sub1552.i = fsub double %add1550.i, %mul1551.i
  %idxprom1553.i = sext i32 %mul1544.i to i64
  %arrayidx1554.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1553.i
  %868 = load double* %arrayidx1554.i, align 8, !tbaa !4
  %sub1555.i = fsub double %868, %sub1552.i
  store double %sub1555.i, double* %arrayidx1554.i, align 8, !tbaa !4
  %mul1556.i = fmul double %xi00.7.i, %863
  %mul1557.i = fmul double %xr00.7.i, %864
  %add1558.i = fadd double %mul1556.i, %mul1557.i
  %mul1559.i = fmul double %xi10.5.i, %865
  %add1560.i = fadd double %add1558.i, %mul1559.i
  %mul1561.i = fmul double %xr10.5.i, %866
  %add1562.i = fadd double %add1560.i, %mul1561.i
  %idxprom1563.i = sext i32 %add15452974.i to i64
  %arrayidx1564.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1563.i
  %869 = load double* %arrayidx1564.i, align 8, !tbaa !4
  %sub1565.i = fsub double %869, %add1562.i
  store double %sub1565.i, double* %arrayidx1564.i, align 8, !tbaa !4
  %indvars.iv.next3361.i = add i64 %indvars.iv3360.i, 1
  %indvars.iv.next3359.i = add i64 %indvars.iv3358.i, 2
  %indvars.iv.next3363.i = add i64 %indvars.iv3362.i, 2
  %lftr.wideiv1205 = trunc i64 %indvars.iv.next3361.i to i32
  %exitcond1206 = icmp eq i32 %lftr.wideiv1205, %850
  br i1 %exitcond1206, label %sw.epilog34, label %for.body1531.i

if.else1572.i:                                    ; preds = %for.end1450.i
  %sub1573.i = add nsw i32 %822, -1
  %cmp1574.i = icmp eq i32 %icolA.2.lcssa.i453, %sub1573.i
  br i1 %cmp1574.i, label %if.then1575.i, label %sw.epilog34

if.then1575.i:                                    ; preds = %if.else1572.i
  %870 = load i32* %nrowX.i312, align 4, !tbaa !3
  %cmp1576.i = icmp eq i32 %822, %870
  br i1 %cmp1576.i, label %if.end1593.i, label %if.else1584.i

if.else1584.i:                                    ; preds = %if.then1575.i
  %idxprom1585.i = sext i32 %icolA.2.lcssa.i453 to i64
  %871 = load i32** %colindA.i314, align 8, !tbaa !0
  %arrayidx1586.i = getelementptr inbounds i32* %871, i64 %idxprom1585.i
  %872 = load i32* %arrayidx1586.i, align 4, !tbaa !3
  br label %if.end1593.i

if.end1593.i:                                     ; preds = %if.then1575.i, %if.else1584.i
  %icolA.2.sink.i = phi i32 [ %872, %if.else1584.i ], [ %icolA.2.lcssa.i453, %if.then1575.i ]
  %mul1578.i = shl nsw i32 %icolA.2.sink.i, 1
  %idxprom1582.pn.in.i = or i32 %mul1578.i, 1
  %idxprom1580.pn.i = sext i32 %mul1578.i to i64
  %idxprom1582.pn.i = sext i32 %idxprom1582.pn.in.i to i64
  %xr00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1580.pn.i
  %xi00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i434, i64 %idxprom1582.pn.i
  %xr00.8.i = load double* %xr00.8.in.i, align 8
  %xi00.8.i = load double* %xi00.8.in.i, align 8
  %873 = load i32* %nrowY.i313, align 4, !tbaa !3
  %874 = load i32* %nrowA.i311, align 4, !tbaa !3
  %cmp1594.i = icmp eq i32 %873, %874
  br i1 %cmp1594.i, label %for.cond1596.preheader.i, label %for.cond1621.preheader.i

for.cond1621.preheader.i:                         ; preds = %if.end1593.i
  %cmp16223233.i = icmp sgt i32 %874, 0
  br i1 %cmp16223233.i, label %for.body1623.lr.ph.i, label %sw.epilog34

for.body1623.lr.ph.i:                             ; preds = %for.cond1621.preheader.i
  %875 = load i32** %rowindA.i315, align 8, !tbaa !0
  br label %for.body1623.i

for.cond1596.preheader.i:                         ; preds = %if.end1593.i
  %cmp15973228.i = icmp sgt i32 %873, 0
  br i1 %cmp15973228.i, label %for.body1598.i, label %sw.epilog34

for.body1598.i:                                   ; preds = %for.cond1596.preheader.i, %for.body1598.i
  %indvars.iv3366.i = phi i64 [ %indvars.iv.next3367.i, %for.body1598.i ], [ 1, %for.cond1596.preheader.i ]
  %indvars.iv3364.i = phi i64 [ %indvars.iv.next3365.i, %for.body1598.i ], [ 0, %for.cond1596.preheader.i ]
  %krowA.163230.i = phi i32 [ %inc1616.i, %for.body1598.i ], [ 0, %for.cond1596.preheader.i ]
  %arrayidx1600.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3364.i
  %876 = load double* %arrayidx1600.i, align 8, !tbaa !4
  %arrayidx1602.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3366.i
  %877 = load double* %arrayidx1602.i, align 8, !tbaa !4
  %mul1603.i = fmul double %xr00.8.i, %876
  %mul1604.i = fmul double %xi00.8.i, %877
  %sub1605.i = fsub double %mul1603.i, %mul1604.i
  %arrayidx1607.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3364.i
  %878 = load double* %arrayidx1607.i, align 8, !tbaa !4
  %sub1608.i = fsub double %878, %sub1605.i
  store double %sub1608.i, double* %arrayidx1607.i, align 8, !tbaa !4
  %mul1609.i = fmul double %xi00.8.i, %876
  %mul1610.i = fmul double %xr00.8.i, %877
  %add1611.i = fadd double %mul1609.i, %mul1610.i
  %arrayidx1613.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %indvars.iv3366.i
  %879 = load double* %arrayidx1613.i, align 8, !tbaa !4
  %sub1614.i = fsub double %879, %add1611.i
  store double %sub1614.i, double* %arrayidx1613.i, align 8, !tbaa !4
  %inc1616.i = add nsw i32 %krowA.163230.i, 1
  %indvars.iv.next3365.i = add i64 %indvars.iv3364.i, 2
  %indvars.iv.next3367.i = add i64 %indvars.iv3366.i, 2
  %exitcond1207 = icmp eq i32 %inc1616.i, %873
  br i1 %exitcond1207, label %sw.epilog34, label %for.body1598.i

for.body1623.i:                                   ; preds = %for.body1623.i, %for.body1623.lr.ph.i
  %indvars.iv3372.i = phi i64 [ 1, %for.body1623.lr.ph.i ], [ %indvars.iv.next3373.i, %for.body1623.i ]
  %indvars.iv3370.i = phi i64 [ 0, %for.body1623.lr.ph.i ], [ %indvars.iv.next3371.i, %for.body1623.i ]
  %indvars.iv3368.i = phi i64 [ 0, %for.body1623.lr.ph.i ], [ %indvars.iv.next3369.i, %for.body1623.i ]
  %arrayidx1625.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3368.i
  %880 = load double* %arrayidx1625.i, align 8, !tbaa !4
  %arrayidx1627.i = getelementptr inbounds double* %colA0.2.lcssa.i454, i64 %indvars.iv3372.i
  %881 = load double* %arrayidx1627.i, align 8, !tbaa !4
  %arrayidx1629.i = getelementptr inbounds i32* %875, i64 %indvars.iv3370.i
  %882 = load i32* %arrayidx1629.i, align 4, !tbaa !3
  %mul1632.i = shl nsw i32 %882, 1
  %add16332969.i = or i32 %mul1632.i, 1
  %mul1634.i = fmul double %xr00.8.i, %880
  %mul1635.i = fmul double %xi00.8.i, %881
  %sub1636.i = fsub double %mul1634.i, %mul1635.i
  %idxprom1637.i = sext i32 %mul1632.i to i64
  %arrayidx1638.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1637.i
  %883 = load double* %arrayidx1638.i, align 8, !tbaa !4
  %sub1639.i = fsub double %883, %sub1636.i
  store double %sub1639.i, double* %arrayidx1638.i, align 8, !tbaa !4
  %mul1640.i = fmul double %xi00.8.i, %880
  %mul1641.i = fmul double %xr00.8.i, %881
  %add1642.i = fadd double %mul1640.i, %mul1641.i
  %idxprom1643.i = sext i32 %add16332969.i to i64
  %arrayidx1644.i = getelementptr inbounds double* %colY0.0.lcssa.i433, i64 %idxprom1643.i
  %884 = load double* %arrayidx1644.i, align 8, !tbaa !4
  %sub1645.i = fsub double %884, %add1642.i
  store double %sub1645.i, double* %arrayidx1644.i, align 8, !tbaa !4
  %indvars.iv.next3371.i = add i64 %indvars.iv3370.i, 1
  %indvars.iv.next3369.i = add i64 %indvars.iv3368.i, 2
  %indvars.iv.next3373.i = add i64 %indvars.iv3372.i, 2
  %lftr.wideiv1208 = trunc i64 %indvars.iv.next3371.i to i32
  %exitcond1209 = icmp eq i32 %lftr.wideiv1208, %874
  br i1 %exitcond1209, label %sw.epilog34, label %for.body1623.i

sw.bb23:                                          ; preds = %sw.bb20
  %885 = bitcast double** %entA.i455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %885) #4
  %886 = bitcast double** %entX.i456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %886) #4
  %887 = bitcast double** %entY.i457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %887) #4
  %888 = bitcast i32* %inc1.i458 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %888) #4
  %889 = bitcast i32* %inc2.i459 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %889) #4
  %890 = bitcast i32* %ncolA.i460 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %890) #4
  %891 = bitcast i32* %ncolX.i461 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %891) #4
  %892 = bitcast i32* %ncolY.i462 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %892) #4
  %893 = bitcast i32* %nrowA.i463 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %893) #4
  %894 = bitcast i32* %nrowX.i464 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %894) #4
  %895 = bitcast i32* %nrowY.i465 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %895) #4
  %896 = bitcast i32** %colindA.i466 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %896) #4
  %897 = bitcast i32** %rowindA.i467 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %897) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i465, i32* %ncolY.i462, i32* %inc1.i458, i32* %inc2.i459, double** %entY.i457) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i464, i32* %ncolX.i461, i32* %inc1.i458, i32* %inc2.i459, double** %entX.i456) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i463, i32* %ncolA.i460, i32* %inc1.i458, i32* %inc2.i459, double** %entA.i455) #5
  %898 = load i32* %ncolA.i460, align 4, !tbaa !3
  %899 = load i32* %nrowX.i464, align 4, !tbaa !3
  %cmp.i468 = icmp eq i32 %898, %899
  br i1 %cmp.i468, label %if.else.i470, label %if.then.i469

if.then.i469:                                     ; preds = %sw.bb23
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i460, i32** %colindA.i466) #5
  br label %if.end.i472

if.else.i470:                                     ; preds = %sw.bb23
  store i32* null, i32** %colindA.i466, align 8, !tbaa !0
  br label %if.end.i472

if.end.i472:                                      ; preds = %if.else.i470, %if.then.i469
  %900 = load i32* %nrowA.i463, align 4, !tbaa !3
  %901 = load i32* %nrowY.i465, align 4, !tbaa !3
  %cmp1.i471 = icmp eq i32 %900, %901
  br i1 %cmp1.i471, label %if.else3.i474, label %if.then2.i473

if.then2.i473:                                    ; preds = %if.end.i472
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i463, i32** %rowindA.i467) #5
  br label %if.end4.i475

if.else3.i474:                                    ; preds = %if.end.i472
  store i32* null, i32** %rowindA.i467, align 8, !tbaa !0
  br label %if.end4.i475

if.end4.i475:                                     ; preds = %if.else3.i474, %if.then2.i473
  %902 = load double** %entX.i456, align 8, !tbaa !0
  %903 = load double** %entY.i457, align 8, !tbaa !0
  %904 = load i32* %ncolX.i461, align 4, !tbaa !3
  %sub3930.i = add nsw i32 %904, -2
  %cmp53931.i = icmp sgt i32 %sub3930.i, 0
  br i1 %cmp53931.i, label %for.body.lr.ph.i486, label %for.end844.i

for.body.lr.ph.i486:                              ; preds = %if.end4.i475
  %905 = load i32* %nrowX.i464, align 4, !tbaa !3
  %mul.i476 = shl nsw i32 %905, 1
  %idx.ext.i477 = sext i32 %mul.i476 to i64
  %add.ptr.sum.i478 = shl nsw i64 %idx.ext.i477, 1
  %906 = load i32* %nrowY.i465, align 4, !tbaa !3
  %mul9.i479 = shl nsw i32 %906, 1
  %idx.ext10.i480 = sext i32 %mul9.i479 to i64
  %add.ptr11.sum.i481 = shl nsw i64 %idx.ext10.i480, 1
  %907 = load double** %entA.i455, align 8, !tbaa !0
  %908 = load i32* %nrowA.i463, align 4, !tbaa !3
  %sub163834.i = add nsw i32 %908, -2
  %cmp173835.i = icmp sgt i32 %sub163834.i, 0
  %909 = load i32* %ncolA.i460, align 4, !tbaa !3
  %mul406.i = shl nsw i32 %909, 1
  %idx.ext407.i = sext i32 %mul406.i to i64
  %cmp409.i = icmp eq i32 %909, %905
  %cmp569.i = icmp eq i32 %906, %908
  %910 = load i32** %rowindA.i467, align 8, !tbaa !0
  %cmp4893874.i = icmp sgt i32 %909, 0
  %911 = load i32** %colindA.i466, align 8, !tbaa !0
  %add.ptr8.sum.i482 = add i64 %add.ptr.sum.i478, %idx.ext.i477
  %add.ptr14.sum.i483 = add i64 %add.ptr11.sum.i481, %idx.ext10.i480
  %add.ptr21.sum.i484 = shl nsw i64 %idx.ext407.i, 1
  %add.ptr24.sum.i485 = add i64 %add.ptr21.sum.i484, %idx.ext407.i
  %mul571.i = shl nsw i32 %sub163834.i, 1
  %add5723490.i = or i32 %mul571.i, 1
  %idxprom573.i = sext i32 %mul571.i to i64
  %idxprom576.i636 = sext i32 %add5723490.i to i64
  %add.ptr11.sum3491.i = add i64 %idxprom573.i, %idx.ext10.i480
  %add.ptr11.sum3492.i = add i64 %idxprom576.i636, %idx.ext10.i480
  %add.ptr14.sum3493.i = add i64 %idxprom573.i, %add.ptr11.sum.i481
  %add.ptr14.sum3494.i = add i64 %idxprom576.i636, %add.ptr11.sum.i481
  %add591.i = add nsw i32 %mul571.i, 2
  %add592.i = add nsw i32 %add5723490.i, 2
  %idxprom593.i640 = sext i32 %add591.i to i64
  %idxprom596.i = sext i32 %add592.i to i64
  %add.ptr11.sum3495.i = add i64 %idxprom593.i640, %idx.ext10.i480
  %add.ptr11.sum3496.i = add i64 %idxprom596.i, %idx.ext10.i480
  %add.ptr14.sum3497.i = add i64 %idxprom593.i640, %add.ptr11.sum.i481
  %add.ptr14.sum3498.i = add i64 %idxprom596.i, %add.ptr11.sum.i481
  %idxprom612.i = sext i32 %sub163834.i to i64
  %arrayidx613.i = getelementptr inbounds i32* %910, i64 %idxprom612.i
  %add634.i = add nsw i32 %908, -1
  %idxprom635.i = sext i32 %add634.i to i64
  %arrayidx636.i651 = getelementptr inbounds i32* %910, i64 %idxprom635.i
  br label %for.body.i487

for.body.i487:                                    ; preds = %if.end835.i, %for.body.lr.ph.i486
  %colX0.03936.i = phi double* [ %902, %for.body.lr.ph.i486 ], [ %add.ptr838.i, %if.end835.i ]
  %colY0.03933.i = phi double* [ %903, %for.body.lr.ph.i486 ], [ %add.ptr841.i, %if.end835.i ]
  %jcolX.03932.i = phi i32 [ 0, %for.body.lr.ph.i486 ], [ %add843.i668, %if.end835.i ]
  br i1 %cmp173835.i, label %for.body18.i488, label %for.end372.i

for.body18.i488:                                  ; preds = %for.body.i487, %if.end366.i
  %indvars.iv3988.i = phi i64 [ %indvars.iv.next3989.i, %if.end366.i ], [ 0, %for.body.i487 ]
  %rowA0.03837.i = phi double* [ %add.ptr369.i, %if.end366.i ], [ %907, %for.body.i487 ]
  %irowA.03836.i = phi i32 [ %add371.i, %if.end366.i ], [ 0, %for.body.i487 ]
  br i1 %cmp409.i, label %for.cond27.preheader.i, label %for.cond126.preheader.i

for.cond27.preheader.i:                           ; preds = %for.body18.i488
  br i1 %cmp4893874.i, label %for.body29.i, label %if.end234.i

for.cond126.preheader.i:                          ; preds = %for.body18.i488
  br i1 %cmp4893874.i, label %for.body128.i, label %if.end234.i

for.body29.i:                                     ; preds = %for.cond27.preheader.i, %for.body29.i
  %indvars.iv3984.i = phi i64 [ %indvars.iv.next3985.i, %for.body29.i ], [ 0, %for.cond27.preheader.i ]
  %isum00.03813.i = phi double [ %add60.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum01.03812.i = phi double [ %add68.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum02.03811.i = phi double [ %add76.i505, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum10.03810.i = phi double [ %add84.i511, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum11.03809.i = phi double [ %add92.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum12.03808.i = phi double [ %add100.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum20.03807.i = phi double [ %add108.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum21.03806.i = phi double [ %add116.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum22.03805.i = phi double [ %add124.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum00.03804.i = phi double [ %add56.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum01.03803.i = phi double [ %add64.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum02.03802.i = phi double [ %add72.i503, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum10.03801.i = phi double [ %add80.i507, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum11.03800.i = phi double [ %add88.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum12.03799.i = phi double [ %add96.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum20.03798.i = phi double [ %add104.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum21.03797.i = phi double [ %add112.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum22.03796.i = phi double [ %add120.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %912 = trunc i64 %indvars.iv3984.i to i32
  %mul30.i489 = shl nsw i32 %912, 1
  %add3551.i = or i32 %mul30.i489, 1
  %idxprom.i = sext i32 %mul30.i489 to i64
  %arrayidx.i490 = getelementptr inbounds double* %rowA0.03837.i, i64 %idxprom.i
  %913 = load double* %arrayidx.i490, align 8, !tbaa !4
  %idxprom31.i = sext i32 %add3551.i to i64
  %arrayidx32.i491 = getelementptr inbounds double* %rowA0.03837.i, i64 %idxprom31.i
  %914 = load double* %arrayidx32.i491, align 8, !tbaa !4
  %add.ptr21.sum3552.i = add i64 %idxprom.i, %idx.ext407.i
  %arrayidx34.i492 = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr21.sum3552.i
  %915 = load double* %arrayidx34.i492, align 8, !tbaa !4
  %add.ptr21.sum3553.i = add i64 %idxprom31.i, %idx.ext407.i
  %arrayidx36.i = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr21.sum3553.i
  %916 = load double* %arrayidx36.i, align 8, !tbaa !4
  %add.ptr24.sum3554.i = add i64 %idxprom.i, %add.ptr21.sum.i484
  %arrayidx38.i = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr24.sum3554.i
  %917 = load double* %arrayidx38.i, align 8, !tbaa !4
  %add.ptr24.sum3555.i = add i64 %idxprom31.i, %add.ptr21.sum.i484
  %arrayidx40.i = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr24.sum3555.i
  %918 = load double* %arrayidx40.i, align 8, !tbaa !4
  %arrayidx42.i493 = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom.i
  %919 = load double* %arrayidx42.i493, align 8, !tbaa !4
  %arrayidx44.i494 = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom31.i
  %920 = load double* %arrayidx44.i494, align 8, !tbaa !4
  %add.ptr.sum3556.i = add i64 %idxprom.i, %idx.ext.i477
  %arrayidx46.i495 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3556.i
  %921 = load double* %arrayidx46.i495, align 8, !tbaa !4
  %add.ptr.sum3557.i = add i64 %idxprom31.i, %idx.ext.i477
  %arrayidx48.i496 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3557.i
  %922 = load double* %arrayidx48.i496, align 8, !tbaa !4
  %add.ptr8.sum3558.i = add i64 %idxprom.i, %add.ptr.sum.i478
  %arrayidx50.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3558.i
  %923 = load double* %arrayidx50.i, align 8, !tbaa !4
  %add.ptr8.sum3559.i = add i64 %idxprom31.i, %add.ptr.sum.i478
  %arrayidx52.i497 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3559.i
  %924 = load double* %arrayidx52.i497, align 8, !tbaa !4
  %mul53.i498 = fmul double %913, %919
  %mul54.i = fmul double %914, %920
  %sub55.i = fsub double %mul53.i498, %mul54.i
  %add56.i = fadd double %rsum00.03804.i, %sub55.i
  %mul57.i499 = fmul double %913, %920
  %mul58.i = fmul double %914, %919
  %add59.i = fadd double %mul58.i, %mul57.i499
  %add60.i = fadd double %isum00.03813.i, %add59.i
  %mul61.i = fmul double %913, %921
  %mul62.i = fmul double %914, %922
  %sub63.i500 = fsub double %mul61.i, %mul62.i
  %add64.i = fadd double %rsum01.03803.i, %sub63.i500
  %mul65.i = fmul double %913, %922
  %mul66.i = fmul double %914, %921
  %add67.i = fadd double %mul66.i, %mul65.i
  %add68.i = fadd double %isum01.03812.i, %add67.i
  %mul69.i501 = fmul double %913, %923
  %mul70.i = fmul double %914, %924
  %sub71.i502 = fsub double %mul69.i501, %mul70.i
  %add72.i503 = fadd double %rsum02.03802.i, %sub71.i502
  %mul73.i504 = fmul double %913, %924
  %mul74.i = fmul double %914, %923
  %add75.i = fadd double %mul74.i, %mul73.i504
  %add76.i505 = fadd double %isum02.03811.i, %add75.i
  %mul77.i506 = fmul double %915, %919
  %mul78.i = fmul double %916, %920
  %sub79.i = fsub double %mul77.i506, %mul78.i
  %add80.i507 = fadd double %rsum10.03801.i, %sub79.i
  %mul81.i508 = fmul double %915, %920
  %mul82.i509 = fmul double %916, %919
  %add83.i510 = fadd double %mul82.i509, %mul81.i508
  %add84.i511 = fadd double %isum10.03810.i, %add83.i510
  %mul85.i512 = fmul double %915, %921
  %mul86.i513 = fmul double %916, %922
  %sub87.i = fsub double %mul85.i512, %mul86.i513
  %add88.i = fadd double %rsum11.03800.i, %sub87.i
  %mul89.i514 = fmul double %915, %922
  %mul90.i515 = fmul double %916, %921
  %add91.i516 = fadd double %mul90.i515, %mul89.i514
  %add92.i = fadd double %isum11.03809.i, %add91.i516
  %mul93.i = fmul double %915, %923
  %mul94.i = fmul double %916, %924
  %sub95.i517 = fsub double %mul93.i, %mul94.i
  %add96.i = fadd double %rsum12.03799.i, %sub95.i517
  %mul97.i518 = fmul double %915, %924
  %mul98.i519 = fmul double %916, %923
  %add99.i520 = fadd double %mul98.i519, %mul97.i518
  %add100.i = fadd double %isum12.03808.i, %add99.i520
  %mul101.i = fmul double %917, %919
  %mul102.i = fmul double %918, %920
  %sub103.i = fsub double %mul101.i, %mul102.i
  %add104.i = fadd double %rsum20.03798.i, %sub103.i
  %mul105.i = fmul double %917, %920
  %mul106.i = fmul double %918, %919
  %add107.i = fadd double %mul106.i, %mul105.i
  %add108.i = fadd double %isum20.03807.i, %add107.i
  %mul109.i = fmul double %917, %921
  %mul110.i = fmul double %918, %922
  %sub111.i = fsub double %mul109.i, %mul110.i
  %add112.i = fadd double %rsum21.03797.i, %sub111.i
  %mul113.i = fmul double %917, %922
  %mul114.i = fmul double %918, %921
  %add115.i = fadd double %mul114.i, %mul113.i
  %add116.i = fadd double %isum21.03806.i, %add115.i
  %mul117.i521 = fmul double %917, %923
  %mul118.i522 = fmul double %918, %924
  %sub119.i = fsub double %mul117.i521, %mul118.i522
  %add120.i = fadd double %rsum22.03796.i, %sub119.i
  %mul121.i = fmul double %917, %924
  %mul122.i = fmul double %918, %923
  %add123.i = fadd double %mul122.i, %mul121.i
  %add124.i = fadd double %isum22.03805.i, %add123.i
  %indvars.iv.next3985.i = add i64 %indvars.iv3984.i, 1
  %lftr.wideiv1249 = trunc i64 %indvars.iv.next3985.i to i32
  %exitcond1250 = icmp eq i32 %lftr.wideiv1249, %905
  br i1 %exitcond1250, label %if.end234.i, label %for.body29.i

for.body128.i:                                    ; preds = %for.cond126.preheader.i, %for.body128.i
  %indvars.iv3982.i = phi i64 [ %indvars.iv.next3983.i, %for.body128.i ], [ 0, %for.cond126.preheader.i ]
  %isum00.13774.i = phi double [ %add166.i535, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum01.13773.i = phi double [ %add174.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum02.13772.i = phi double [ %add182.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum10.13771.i = phi double [ %add190.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum11.13770.i = phi double [ %add198.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum12.13769.i = phi double [ %add206.i552, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum20.13768.i = phi double [ %add214.i558, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum21.13767.i = phi double [ %add222.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum22.13766.i = phi double [ %add230.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum00.13765.i = phi double [ %add162.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum01.13764.i = phi double [ %add170.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum02.13763.i = phi double [ %add178.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum10.13762.i = phi double [ %add186.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum11.13761.i = phi double [ %add194.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum12.13760.i = phi double [ %add202.i550, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum20.13759.i = phi double [ %add210.i555, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum21.13758.i = phi double [ %add218.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum22.13757.i = phi double [ %add226.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %925 = trunc i64 %indvars.iv3982.i to i32
  %mul129.i = shl nsw i32 %925, 1
  %add1303541.i = or i32 %mul129.i, 1
  %idxprom131.i = sext i32 %mul129.i to i64
  %arrayidx132.i523 = getelementptr inbounds double* %rowA0.03837.i, i64 %idxprom131.i
  %926 = load double* %arrayidx132.i523, align 8, !tbaa !4
  %idxprom133.i = sext i32 %add1303541.i to i64
  %arrayidx134.i524 = getelementptr inbounds double* %rowA0.03837.i, i64 %idxprom133.i
  %927 = load double* %arrayidx134.i524, align 8, !tbaa !4
  %add.ptr21.sum3542.i = add i64 %idxprom131.i, %idx.ext407.i
  %arrayidx136.i525 = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr21.sum3542.i
  %928 = load double* %arrayidx136.i525, align 8, !tbaa !4
  %add.ptr21.sum3543.i = add i64 %idxprom133.i, %idx.ext407.i
  %arrayidx138.i = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr21.sum3543.i
  %929 = load double* %arrayidx138.i, align 8, !tbaa !4
  %add.ptr24.sum3544.i = add i64 %idxprom131.i, %add.ptr21.sum.i484
  %arrayidx140.i526 = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr24.sum3544.i
  %930 = load double* %arrayidx140.i526, align 8, !tbaa !4
  %add.ptr24.sum3545.i = add i64 %idxprom133.i, %add.ptr21.sum.i484
  %arrayidx142.i527 = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr24.sum3545.i
  %931 = load double* %arrayidx142.i527, align 8, !tbaa !4
  %arrayidx144.i528 = getelementptr inbounds i32* %911, i64 %indvars.iv3982.i
  %932 = load i32* %arrayidx144.i528, align 4, !tbaa !3
  %mul145.i = shl nsw i32 %932, 1
  %add1463546.i = or i32 %mul145.i, 1
  %idxprom147.i = sext i32 %mul145.i to i64
  %arrayidx148.i529 = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom147.i
  %933 = load double* %arrayidx148.i529, align 8, !tbaa !4
  %idxprom149.i = sext i32 %add1463546.i to i64
  %arrayidx150.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom149.i
  %934 = load double* %arrayidx150.i, align 8, !tbaa !4
  %add.ptr.sum3547.i = add i64 %idxprom147.i, %idx.ext.i477
  %arrayidx152.i530 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3547.i
  %935 = load double* %arrayidx152.i530, align 8, !tbaa !4
  %add.ptr.sum3548.i = add i64 %idxprom149.i, %idx.ext.i477
  %arrayidx154.i531 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3548.i
  %936 = load double* %arrayidx154.i531, align 8, !tbaa !4
  %add.ptr8.sum3549.i = add i64 %idxprom147.i, %add.ptr.sum.i478
  %arrayidx156.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3549.i
  %937 = load double* %arrayidx156.i, align 8, !tbaa !4
  %add.ptr8.sum3550.i = add i64 %idxprom149.i, %add.ptr.sum.i478
  %arrayidx158.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3550.i
  %938 = load double* %arrayidx158.i, align 8, !tbaa !4
  %mul159.i = fmul double %926, %933
  %mul160.i = fmul double %927, %934
  %sub161.i532 = fsub double %mul159.i, %mul160.i
  %add162.i = fadd double %rsum00.13765.i, %sub161.i532
  %mul163.i533 = fmul double %926, %934
  %mul164.i534 = fmul double %927, %933
  %add165.i = fadd double %mul164.i534, %mul163.i533
  %add166.i535 = fadd double %isum00.13774.i, %add165.i
  %mul167.i = fmul double %926, %935
  %mul168.i536 = fmul double %927, %936
  %sub169.i537 = fsub double %mul167.i, %mul168.i536
  %add170.i = fadd double %rsum01.13764.i, %sub169.i537
  %mul171.i = fmul double %926, %936
  %mul172.i538 = fmul double %927, %935
  %add173.i = fadd double %mul172.i538, %mul171.i
  %add174.i = fadd double %isum01.13773.i, %add173.i
  %mul175.i = fmul double %926, %937
  %mul176.i = fmul double %927, %938
  %sub177.i = fsub double %mul175.i, %mul176.i
  %add178.i = fadd double %rsum02.13763.i, %sub177.i
  %mul179.i = fmul double %926, %938
  %mul180.i539 = fmul double %927, %937
  %add181.i540 = fadd double %mul180.i539, %mul179.i
  %add182.i = fadd double %isum02.13772.i, %add181.i540
  %mul183.i = fmul double %928, %933
  %mul184.i541 = fmul double %929, %934
  %sub185.i = fsub double %mul183.i, %mul184.i541
  %add186.i = fadd double %rsum10.13762.i, %sub185.i
  %mul187.i542 = fmul double %928, %934
  %mul188.i = fmul double %929, %933
  %add189.i = fadd double %mul188.i, %mul187.i542
  %add190.i = fadd double %isum10.13771.i, %add189.i
  %mul191.i543 = fmul double %928, %935
  %mul192.i544 = fmul double %929, %936
  %sub193.i545 = fsub double %mul191.i543, %mul192.i544
  %add194.i = fadd double %rsum11.13761.i, %sub193.i545
  %mul195.i = fmul double %928, %936
  %mul196.i546 = fmul double %929, %935
  %add197.i = fadd double %mul196.i546, %mul195.i
  %add198.i = fadd double %isum11.13770.i, %add197.i
  %mul199.i547 = fmul double %928, %937
  %mul200.i548 = fmul double %929, %938
  %sub201.i549 = fsub double %mul199.i547, %mul200.i548
  %add202.i550 = fadd double %rsum12.13760.i, %sub201.i549
  %mul203.i551 = fmul double %928, %938
  %mul204.i = fmul double %929, %937
  %add205.i = fadd double %mul204.i, %mul203.i551
  %add206.i552 = fadd double %isum12.13769.i, %add205.i
  %mul207.i553 = fmul double %930, %933
  %mul208.i554 = fmul double %931, %934
  %sub209.i = fsub double %mul207.i553, %mul208.i554
  %add210.i555 = fadd double %rsum20.13759.i, %sub209.i
  %mul211.i = fmul double %930, %934
  %mul212.i556 = fmul double %931, %933
  %add213.i557 = fadd double %mul212.i556, %mul211.i
  %add214.i558 = fadd double %isum20.13768.i, %add213.i557
  %mul215.i = fmul double %930, %935
  %mul216.i = fmul double %931, %936
  %sub217.i559 = fsub double %mul215.i, %mul216.i
  %add218.i = fadd double %rsum21.13758.i, %sub217.i559
  %mul219.i560 = fmul double %930, %936
  %mul220.i = fmul double %931, %935
  %add221.i = fadd double %mul220.i, %mul219.i560
  %add222.i = fadd double %isum21.13767.i, %add221.i
  %mul223.i = fmul double %930, %937
  %mul224.i = fmul double %931, %938
  %sub225.i = fsub double %mul223.i, %mul224.i
  %add226.i = fadd double %rsum22.13757.i, %sub225.i
  %mul227.i = fmul double %930, %938
  %mul228.i = fmul double %931, %937
  %add229.i = fadd double %mul228.i, %mul227.i
  %add230.i = fadd double %isum22.13766.i, %add229.i
  %indvars.iv.next3983.i = add i64 %indvars.iv3982.i, 1
  %lftr.wideiv1247 = trunc i64 %indvars.iv.next3983.i to i32
  %exitcond1248 = icmp eq i32 %lftr.wideiv1247, %909
  br i1 %exitcond1248, label %if.end234.i, label %for.body128.i

if.end234.i:                                      ; preds = %for.body29.i, %for.body128.i, %for.cond126.preheader.i, %for.cond27.preheader.i
  %rsum22.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add226.i, %for.body128.i ], [ %add120.i, %for.body29.i ]
  %rsum21.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add218.i, %for.body128.i ], [ %add112.i, %for.body29.i ]
  %rsum20.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add210.i555, %for.body128.i ], [ %add104.i, %for.body29.i ]
  %rsum12.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add202.i550, %for.body128.i ], [ %add96.i, %for.body29.i ]
  %rsum11.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add194.i, %for.body128.i ], [ %add88.i, %for.body29.i ]
  %rsum10.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add186.i, %for.body128.i ], [ %add80.i507, %for.body29.i ]
  %rsum02.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add178.i, %for.body128.i ], [ %add72.i503, %for.body29.i ]
  %rsum01.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add170.i, %for.body128.i ], [ %add64.i, %for.body29.i ]
  %rsum00.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add162.i, %for.body128.i ], [ %add56.i, %for.body29.i ]
  %isum22.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add230.i, %for.body128.i ], [ %add124.i, %for.body29.i ]
  %isum21.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add222.i, %for.body128.i ], [ %add116.i, %for.body29.i ]
  %isum20.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add214.i558, %for.body128.i ], [ %add108.i, %for.body29.i ]
  %isum12.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add206.i552, %for.body128.i ], [ %add100.i, %for.body29.i ]
  %isum11.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add198.i, %for.body128.i ], [ %add92.i, %for.body29.i ]
  %isum10.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add190.i, %for.body128.i ], [ %add84.i511, %for.body29.i ]
  %isum02.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add182.i, %for.body128.i ], [ %add76.i505, %for.body29.i ]
  %isum01.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add174.i, %for.body128.i ], [ %add68.i, %for.body29.i ]
  %isum00.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add166.i535, %for.body128.i ], [ %add60.i, %for.body29.i ]
  br i1 %cmp569.i, label %if.then236.i, label %if.else297.i

if.then236.i:                                     ; preds = %if.end234.i
  %939 = trunc i64 %indvars.iv3988.i to i32
  %mul237.i561 = shl nsw i32 %939, 1
  %add2383528.i = or i32 %mul237.i561, 1
  %idxprom239.i = sext i32 %mul237.i561 to i64
  %arrayidx240.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom239.i
  %940 = load double* %arrayidx240.i, align 8, !tbaa !4
  %sub241.i = fsub double %940, %rsum00.2.i
  store double %sub241.i, double* %arrayidx240.i, align 8, !tbaa !4
  %idxprom242.i = sext i32 %add2383528.i to i64
  %arrayidx243.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom242.i
  %941 = load double* %arrayidx243.i, align 8, !tbaa !4
  %sub244.i = fsub double %941, %isum00.2.i
  store double %sub244.i, double* %arrayidx243.i, align 8, !tbaa !4
  %add.ptr11.sum3529.i = add i64 %idxprom239.i, %idx.ext10.i480
  %arrayidx246.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3529.i
  %942 = load double* %arrayidx246.i, align 8, !tbaa !4
  %sub247.i = fsub double %942, %rsum01.2.i
  store double %sub247.i, double* %arrayidx246.i, align 8, !tbaa !4
  %add.ptr11.sum3530.i = add i64 %idxprom242.i, %idx.ext10.i480
  %arrayidx249.i562 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3530.i
  %943 = load double* %arrayidx249.i562, align 8, !tbaa !4
  %sub250.i563 = fsub double %943, %isum01.2.i
  store double %sub250.i563, double* %arrayidx249.i562, align 8, !tbaa !4
  %add.ptr14.sum3531.i = add i64 %idxprom239.i, %add.ptr11.sum.i481
  %arrayidx252.i564 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3531.i
  %944 = load double* %arrayidx252.i564, align 8, !tbaa !4
  %sub253.i565 = fsub double %944, %rsum02.2.i
  store double %sub253.i565, double* %arrayidx252.i564, align 8, !tbaa !4
  %add.ptr14.sum3532.i = add i64 %idxprom242.i, %add.ptr11.sum.i481
  %arrayidx255.i566 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3532.i
  %945 = load double* %arrayidx255.i566, align 8, !tbaa !4
  %sub256.i567 = fsub double %945, %isum02.2.i
  store double %sub256.i567, double* %arrayidx255.i566, align 8, !tbaa !4
  %add257.i568 = add nsw i32 %mul237.i561, 2
  %add258.i = add nsw i32 %add2383528.i, 2
  %idxprom259.i569 = sext i32 %add257.i568 to i64
  %arrayidx260.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom259.i569
  %946 = load double* %arrayidx260.i, align 8, !tbaa !4
  %sub261.i = fsub double %946, %rsum10.2.i
  store double %sub261.i, double* %arrayidx260.i, align 8, !tbaa !4
  %idxprom262.i = sext i32 %add258.i to i64
  %arrayidx263.i570 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom262.i
  %947 = load double* %arrayidx263.i570, align 8, !tbaa !4
  %sub264.i571 = fsub double %947, %isum10.2.i
  store double %sub264.i571, double* %arrayidx263.i570, align 8, !tbaa !4
  %add.ptr11.sum3533.i = add i64 %idxprom259.i569, %idx.ext10.i480
  %arrayidx266.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3533.i
  %948 = load double* %arrayidx266.i, align 8, !tbaa !4
  %sub267.i = fsub double %948, %rsum11.2.i
  store double %sub267.i, double* %arrayidx266.i, align 8, !tbaa !4
  %add.ptr11.sum3534.i = add i64 %idxprom262.i, %idx.ext10.i480
  %arrayidx269.i572 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3534.i
  %949 = load double* %arrayidx269.i572, align 8, !tbaa !4
  %sub270.i573 = fsub double %949, %isum11.2.i
  store double %sub270.i573, double* %arrayidx269.i572, align 8, !tbaa !4
  %add.ptr14.sum3535.i = add i64 %idxprom259.i569, %add.ptr11.sum.i481
  %arrayidx272.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3535.i
  %950 = load double* %arrayidx272.i, align 8, !tbaa !4
  %sub273.i574 = fsub double %950, %rsum12.2.i
  store double %sub273.i574, double* %arrayidx272.i, align 8, !tbaa !4
  %add.ptr14.sum3536.i = add i64 %idxprom262.i, %add.ptr11.sum.i481
  %arrayidx275.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3536.i
  %951 = load double* %arrayidx275.i, align 8, !tbaa !4
  %sub276.i = fsub double %951, %isum12.2.i
  store double %sub276.i, double* %arrayidx275.i, align 8, !tbaa !4
  %add277.i = add nsw i32 %mul237.i561, 4
  %add278.i = add nsw i32 %add2383528.i, 4
  %idxprom279.i = sext i32 %add277.i to i64
  %arrayidx280.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom279.i
  %952 = load double* %arrayidx280.i, align 8, !tbaa !4
  %sub281.i575 = fsub double %952, %rsum20.2.i
  store double %sub281.i575, double* %arrayidx280.i, align 8, !tbaa !4
  %idxprom282.i576 = sext i32 %add278.i to i64
  %arrayidx283.i577 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom282.i576
  %953 = load double* %arrayidx283.i577, align 8, !tbaa !4
  %sub284.i578 = fsub double %953, %isum20.2.i
  store double %sub284.i578, double* %arrayidx283.i577, align 8, !tbaa !4
  %add.ptr11.sum3537.i = add i64 %idxprom279.i, %idx.ext10.i480
  %arrayidx286.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3537.i
  %954 = load double* %arrayidx286.i, align 8, !tbaa !4
  %sub287.i = fsub double %954, %rsum21.2.i
  store double %sub287.i, double* %arrayidx286.i, align 8, !tbaa !4
  %add.ptr11.sum3538.i = add i64 %idxprom282.i576, %idx.ext10.i480
  %arrayidx289.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3538.i
  %955 = load double* %arrayidx289.i, align 8, !tbaa !4
  %sub290.i = fsub double %955, %isum21.2.i
  store double %sub290.i, double* %arrayidx289.i, align 8, !tbaa !4
  %add.ptr14.sum3539.i = add i64 %idxprom279.i, %add.ptr11.sum.i481
  %arrayidx292.i579 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3539.i
  %956 = load double* %arrayidx292.i579, align 8, !tbaa !4
  %sub293.i580 = fsub double %956, %rsum22.2.i
  store double %sub293.i580, double* %arrayidx292.i579, align 8, !tbaa !4
  %add.ptr14.sum3540.i = add i64 %idxprom282.i576, %add.ptr11.sum.i481
  %arrayidx295.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3540.i
  %957 = load double* %arrayidx295.i, align 8, !tbaa !4
  %sub296.i = fsub double %957, %isum22.2.i
  store double %sub296.i, double* %arrayidx295.i, align 8, !tbaa !4
  br label %if.end366.i

if.else297.i:                                     ; preds = %if.end234.i
  %arrayidx299.i = getelementptr inbounds i32* %910, i64 %indvars.iv3988.i
  %958 = load i32* %arrayidx299.i, align 4, !tbaa !3
  %mul300.i581 = shl nsw i32 %958, 1
  %add3013513.i = or i32 %mul300.i581, 1
  %idxprom302.i = sext i32 %mul300.i581 to i64
  %arrayidx303.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom302.i
  %959 = load double* %arrayidx303.i, align 8, !tbaa !4
  %sub304.i = fsub double %959, %rsum00.2.i
  store double %sub304.i, double* %arrayidx303.i, align 8, !tbaa !4
  %idxprom305.i = sext i32 %add3013513.i to i64
  %arrayidx306.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom305.i
  %960 = load double* %arrayidx306.i, align 8, !tbaa !4
  %sub307.i = fsub double %960, %isum00.2.i
  store double %sub307.i, double* %arrayidx306.i, align 8, !tbaa !4
  %add.ptr11.sum3514.i = add i64 %idxprom302.i, %idx.ext10.i480
  %arrayidx309.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3514.i
  %961 = load double* %arrayidx309.i, align 8, !tbaa !4
  %sub310.i = fsub double %961, %rsum01.2.i
  store double %sub310.i, double* %arrayidx309.i, align 8, !tbaa !4
  %add.ptr11.sum3515.i = add i64 %idxprom305.i, %idx.ext10.i480
  %arrayidx312.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3515.i
  %962 = load double* %arrayidx312.i, align 8, !tbaa !4
  %sub313.i = fsub double %962, %isum01.2.i
  store double %sub313.i, double* %arrayidx312.i, align 8, !tbaa !4
  %add.ptr14.sum3516.i = add i64 %idxprom302.i, %add.ptr11.sum.i481
  %arrayidx315.i582 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3516.i
  %963 = load double* %arrayidx315.i582, align 8, !tbaa !4
  %sub316.i583 = fsub double %963, %rsum02.2.i
  store double %sub316.i583, double* %arrayidx315.i582, align 8, !tbaa !4
  %add.ptr14.sum3517.i = add i64 %idxprom305.i, %add.ptr11.sum.i481
  %arrayidx318.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3517.i
  %964 = load double* %arrayidx318.i, align 8, !tbaa !4
  %sub319.i = fsub double %964, %isum02.2.i
  store double %sub319.i, double* %arrayidx318.i, align 8, !tbaa !4
  %965 = add nsw i64 %indvars.iv3988.i, 1
  %arrayidx322.i = getelementptr inbounds i32* %910, i64 %965
  %966 = load i32* %arrayidx322.i, align 4, !tbaa !3
  %mul323.i = shl nsw i32 %966, 1
  %add3243518.i = or i32 %mul323.i, 1
  %idxprom325.i = sext i32 %mul323.i to i64
  %arrayidx326.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom325.i
  %967 = load double* %arrayidx326.i, align 8, !tbaa !4
  %sub327.i = fsub double %967, %rsum10.2.i
  store double %sub327.i, double* %arrayidx326.i, align 8, !tbaa !4
  %idxprom328.i = sext i32 %add3243518.i to i64
  %arrayidx329.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom328.i
  %968 = load double* %arrayidx329.i, align 8, !tbaa !4
  %sub330.i = fsub double %968, %isum10.2.i
  store double %sub330.i, double* %arrayidx329.i, align 8, !tbaa !4
  %add.ptr11.sum3519.i = add i64 %idxprom325.i, %idx.ext10.i480
  %arrayidx332.i584 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3519.i
  %969 = load double* %arrayidx332.i584, align 8, !tbaa !4
  %sub333.i = fsub double %969, %rsum11.2.i
  store double %sub333.i, double* %arrayidx332.i584, align 8, !tbaa !4
  %add.ptr11.sum3520.i = add i64 %idxprom328.i, %idx.ext10.i480
  %arrayidx335.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3520.i
  %970 = load double* %arrayidx335.i, align 8, !tbaa !4
  %sub336.i = fsub double %970, %isum11.2.i
  store double %sub336.i, double* %arrayidx335.i, align 8, !tbaa !4
  %add.ptr14.sum3521.i = add i64 %idxprom325.i, %add.ptr11.sum.i481
  %arrayidx338.i585 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3521.i
  %971 = load double* %arrayidx338.i585, align 8, !tbaa !4
  %sub339.i = fsub double %971, %rsum12.2.i
  store double %sub339.i, double* %arrayidx338.i585, align 8, !tbaa !4
  %add.ptr14.sum3522.i = add i64 %idxprom328.i, %add.ptr11.sum.i481
  %arrayidx341.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3522.i
  %972 = load double* %arrayidx341.i, align 8, !tbaa !4
  %sub342.i = fsub double %972, %isum12.2.i
  store double %sub342.i, double* %arrayidx341.i, align 8, !tbaa !4
  %973 = add nsw i64 %indvars.iv3988.i, 2
  %arrayidx345.i = getelementptr inbounds i32* %910, i64 %973
  %974 = load i32* %arrayidx345.i, align 4, !tbaa !3
  %mul346.i = shl nsw i32 %974, 1
  %add3473523.i = or i32 %mul346.i, 1
  %idxprom348.i = sext i32 %mul346.i to i64
  %arrayidx349.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom348.i
  %975 = load double* %arrayidx349.i, align 8, !tbaa !4
  %sub350.i = fsub double %975, %rsum20.2.i
  store double %sub350.i, double* %arrayidx349.i, align 8, !tbaa !4
  %idxprom351.i = sext i32 %add3473523.i to i64
  %arrayidx352.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom351.i
  %976 = load double* %arrayidx352.i, align 8, !tbaa !4
  %sub353.i = fsub double %976, %isum20.2.i
  store double %sub353.i, double* %arrayidx352.i, align 8, !tbaa !4
  %add.ptr11.sum3524.i = add i64 %idxprom348.i, %idx.ext10.i480
  %arrayidx355.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3524.i
  %977 = load double* %arrayidx355.i, align 8, !tbaa !4
  %sub356.i = fsub double %977, %rsum21.2.i
  store double %sub356.i, double* %arrayidx355.i, align 8, !tbaa !4
  %add.ptr11.sum3525.i = add i64 %idxprom351.i, %idx.ext10.i480
  %arrayidx358.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3525.i
  %978 = load double* %arrayidx358.i, align 8, !tbaa !4
  %sub359.i = fsub double %978, %isum21.2.i
  store double %sub359.i, double* %arrayidx358.i, align 8, !tbaa !4
  %add.ptr14.sum3526.i = add i64 %idxprom348.i, %add.ptr11.sum.i481
  %arrayidx361.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3526.i
  %979 = load double* %arrayidx361.i, align 8, !tbaa !4
  %sub362.i = fsub double %979, %rsum22.2.i
  store double %sub362.i, double* %arrayidx361.i, align 8, !tbaa !4
  %add.ptr14.sum3527.i = add i64 %idxprom351.i, %add.ptr11.sum.i481
  %arrayidx364.i586 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3527.i
  %980 = load double* %arrayidx364.i586, align 8, !tbaa !4
  %sub365.i = fsub double %980, %isum22.2.i
  store double %sub365.i, double* %arrayidx364.i586, align 8, !tbaa !4
  br label %if.end366.i

if.end366.i:                                      ; preds = %if.else297.i, %if.then236.i
  %add.ptr369.i = getelementptr inbounds double* %rowA0.03837.i, i64 %add.ptr24.sum.i485
  %indvars.iv.next3989.i = add i64 %indvars.iv3988.i, 3
  %add371.i = add nsw i32 %irowA.03836.i, 3
  %981 = trunc i64 %indvars.iv.next3989.i to i32
  %cmp17.i587 = icmp slt i32 %981, %sub163834.i
  br i1 %cmp17.i587, label %for.body18.i488, label %for.end372.i

for.end372.i:                                     ; preds = %if.end366.i, %for.body.i487
  %rowA0.0.lcssa.i588 = phi double* [ %907, %for.body.i487 ], [ %add.ptr369.i, %if.end366.i ]
  %irowA.0.lcssa.i589 = phi i32 [ 0, %for.body.i487 ], [ %add371.i, %if.end366.i ]
  %cmp374.i = icmp eq i32 %irowA.0.lcssa.i589, %sub163834.i
  br i1 %cmp374.i, label %if.then375.i, label %if.else658.i

if.then375.i:                                     ; preds = %for.end372.i
  br i1 %cmp409.i, label %for.cond411.preheader.i, label %for.cond488.preheader.i

for.cond411.preheader.i:                          ; preds = %if.then375.i
  br i1 %cmp4893874.i, label %for.body413.i, label %if.end568.i

for.cond488.preheader.i:                          ; preds = %if.then375.i
  br i1 %cmp4893874.i, label %for.body490.i, label %if.end568.i

for.body413.i:                                    ; preds = %for.cond411.preheader.i, %for.body413.i
  %indvars.iv4004.i = phi i64 [ %indvars.iv.next4005.i, %for.body413.i ], [ 0, %for.cond411.preheader.i ]
  %rsum12397.03913.i = phi double [ %add479.i611, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %rsum11396.03912.i = phi double [ %add471.i, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %rsum10395.03911.i = phi double [ %add463.i604, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %rsum02394.03910.i = phi double [ %add455.i599, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %rsum01393.03909.i = phi double [ %add447.i595, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %rsum00392.03908.i = phi double [ %add439.i593, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %isum12391.03907.i = phi double [ %add483.i, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %isum11390.03906.i = phi double [ %add475.i609, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %isum10389.03905.i = phi double [ %add467.i606, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %isum02388.03904.i = phi double [ %add459.i601, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %isum01387.03903.i = phi double [ %add451.i, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %isum00386.03902.i = phi double [ %add443.i, %for.body413.i ], [ 0.000000e+00, %for.cond411.preheader.i ]
  %982 = trunc i64 %indvars.iv4004.i to i32
  %mul414.i = shl nsw i32 %982, 1
  %add4153506.i = or i32 %mul414.i, 1
  %idxprom416.i = sext i32 %mul414.i to i64
  %arrayidx417.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom416.i
  %983 = load double* %arrayidx417.i, align 8, !tbaa !4
  %idxprom418.i = sext i32 %add4153506.i to i64
  %arrayidx419.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom418.i
  %984 = load double* %arrayidx419.i, align 8, !tbaa !4
  %add.ptr408.sum3507.i = add i64 %idxprom416.i, %idx.ext407.i
  %arrayidx421.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %add.ptr408.sum3507.i
  %985 = load double* %arrayidx421.i, align 8, !tbaa !4
  %add.ptr408.sum3508.i = add i64 %idxprom418.i, %idx.ext407.i
  %arrayidx423.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %add.ptr408.sum3508.i
  %986 = load double* %arrayidx423.i, align 8, !tbaa !4
  %arrayidx425.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom416.i
  %987 = load double* %arrayidx425.i, align 8, !tbaa !4
  %arrayidx427.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom418.i
  %988 = load double* %arrayidx427.i, align 8, !tbaa !4
  %add.ptr.sum3509.i = add i64 %idxprom416.i, %idx.ext.i477
  %arrayidx429.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3509.i
  %989 = load double* %arrayidx429.i, align 8, !tbaa !4
  %add.ptr.sum3510.i = add i64 %idxprom418.i, %idx.ext.i477
  %arrayidx431.i590 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3510.i
  %990 = load double* %arrayidx431.i590, align 8, !tbaa !4
  %add.ptr8.sum3511.i = add i64 %idxprom416.i, %add.ptr.sum.i478
  %arrayidx433.i591 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3511.i
  %991 = load double* %arrayidx433.i591, align 8, !tbaa !4
  %add.ptr8.sum3512.i = add i64 %idxprom418.i, %add.ptr.sum.i478
  %arrayidx435.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3512.i
  %992 = load double* %arrayidx435.i, align 8, !tbaa !4
  %mul436.i592 = fmul double %983, %987
  %mul437.i = fmul double %984, %988
  %sub438.i = fsub double %mul436.i592, %mul437.i
  %add439.i593 = fadd double %rsum00392.03908.i, %sub438.i
  %mul440.i = fmul double %983, %988
  %mul441.i = fmul double %984, %987
  %add442.i = fadd double %mul441.i, %mul440.i
  %add443.i = fadd double %isum00386.03902.i, %add442.i
  %mul444.i594 = fmul double %983, %989
  %mul445.i = fmul double %984, %990
  %sub446.i = fsub double %mul444.i594, %mul445.i
  %add447.i595 = fadd double %rsum01393.03909.i, %sub446.i
  %mul448.i596 = fmul double %983, %990
  %mul449.i = fmul double %984, %989
  %add450.i597 = fadd double %mul449.i, %mul448.i596
  %add451.i = fadd double %isum01387.03903.i, %add450.i597
  %mul452.i = fmul double %983, %991
  %mul453.i598 = fmul double %984, %992
  %sub454.i = fsub double %mul452.i, %mul453.i598
  %add455.i599 = fadd double %rsum02394.03910.i, %sub454.i
  %mul456.i600 = fmul double %983, %992
  %mul457.i = fmul double %984, %991
  %add458.i = fadd double %mul457.i, %mul456.i600
  %add459.i601 = fadd double %isum02388.03904.i, %add458.i
  %mul460.i602 = fmul double %985, %987
  %mul461.i = fmul double %986, %988
  %sub462.i603 = fsub double %mul460.i602, %mul461.i
  %add463.i604 = fadd double %rsum10395.03911.i, %sub462.i603
  %mul464.i605 = fmul double %985, %988
  %mul465.i = fmul double %986, %987
  %add466.i = fadd double %mul465.i, %mul464.i605
  %add467.i606 = fadd double %isum10389.03905.i, %add466.i
  %mul468.i607 = fmul double %985, %989
  %mul469.i = fmul double %986, %990
  %sub470.i = fsub double %mul468.i607, %mul469.i
  %add471.i = fadd double %rsum11396.03912.i, %sub470.i
  %mul472.i = fmul double %985, %990
  %mul473.i608 = fmul double %986, %989
  %add474.i = fadd double %mul473.i608, %mul472.i
  %add475.i609 = fadd double %isum11390.03906.i, %add474.i
  %mul476.i610 = fmul double %985, %991
  %mul477.i = fmul double %986, %992
  %sub478.i = fsub double %mul476.i610, %mul477.i
  %add479.i611 = fadd double %rsum12397.03913.i, %sub478.i
  %mul480.i = fmul double %985, %992
  %mul481.i = fmul double %986, %991
  %add482.i = fadd double %mul481.i, %mul480.i
  %add483.i = fadd double %isum12391.03907.i, %add482.i
  %indvars.iv.next4005.i = add i64 %indvars.iv4004.i, 1
  %lftr.wideiv1257 = trunc i64 %indvars.iv.next4005.i to i32
  %exitcond1258 = icmp eq i32 %lftr.wideiv1257, %905
  br i1 %exitcond1258, label %if.end568.i, label %for.body413.i

for.body490.i:                                    ; preds = %for.cond488.preheader.i, %for.body490.i
  %indvars.iv4000.i = phi i64 [ %indvars.iv.next4001.i, %for.body490.i ], [ 0, %for.cond488.preheader.i ]
  %rsum12397.13886.i = phi double [ %add560.i634, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %rsum11396.13885.i = phi double [ %add552.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %rsum10395.13884.i = phi double [ %add544.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %rsum02394.13883.i = phi double [ %add536.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %rsum01393.13882.i = phi double [ %add528.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %rsum00392.13881.i = phi double [ %add520.i621, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %isum12391.13880.i = phi double [ %add564.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %isum11390.13879.i = phi double [ %add556.i632, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %isum10389.13878.i = phi double [ %add548.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %isum02388.13877.i = phi double [ %add540.i628, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %isum01387.13876.i = phi double [ %add532.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %isum00386.13875.i = phi double [ %add524.i, %for.body490.i ], [ 0.000000e+00, %for.cond488.preheader.i ]
  %993 = trunc i64 %indvars.iv4000.i to i32
  %mul491.i = shl nsw i32 %993, 1
  %add4923499.i = or i32 %mul491.i, 1
  %idxprom493.i = sext i32 %mul491.i to i64
  %arrayidx494.i612 = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom493.i
  %994 = load double* %arrayidx494.i612, align 8, !tbaa !4
  %idxprom495.i = sext i32 %add4923499.i to i64
  %arrayidx496.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom495.i
  %995 = load double* %arrayidx496.i, align 8, !tbaa !4
  %add.ptr408.sum.i = add i64 %idxprom493.i, %idx.ext407.i
  %arrayidx498.i613 = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %add.ptr408.sum.i
  %996 = load double* %arrayidx498.i613, align 8, !tbaa !4
  %add.ptr408.sum3500.i = add i64 %idxprom495.i, %idx.ext407.i
  %arrayidx500.i614 = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %add.ptr408.sum3500.i
  %997 = load double* %arrayidx500.i614, align 8, !tbaa !4
  %arrayidx502.i = getelementptr inbounds i32* %911, i64 %indvars.iv4000.i
  %998 = load i32* %arrayidx502.i, align 4, !tbaa !3
  %mul503.i = shl nsw i32 %998, 1
  %add5043501.i = or i32 %mul503.i, 1
  %idxprom505.i = sext i32 %mul503.i to i64
  %arrayidx506.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom505.i
  %999 = load double* %arrayidx506.i, align 8, !tbaa !4
  %idxprom507.i = sext i32 %add5043501.i to i64
  %arrayidx508.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom507.i
  %1000 = load double* %arrayidx508.i, align 8, !tbaa !4
  %add.ptr.sum3502.i = add i64 %idxprom505.i, %idx.ext.i477
  %arrayidx510.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3502.i
  %1001 = load double* %arrayidx510.i, align 8, !tbaa !4
  %add.ptr.sum3503.i = add i64 %idxprom507.i, %idx.ext.i477
  %arrayidx512.i615 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3503.i
  %1002 = load double* %arrayidx512.i615, align 8, !tbaa !4
  %add.ptr8.sum3504.i = add i64 %idxprom505.i, %add.ptr.sum.i478
  %arrayidx514.i616 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3504.i
  %1003 = load double* %arrayidx514.i616, align 8, !tbaa !4
  %add.ptr8.sum3505.i = add i64 %idxprom507.i, %add.ptr.sum.i478
  %arrayidx516.i617 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3505.i
  %1004 = load double* %arrayidx516.i617, align 8, !tbaa !4
  %mul517.i618 = fmul double %994, %999
  %mul518.i619 = fmul double %995, %1000
  %sub519.i620 = fsub double %mul517.i618, %mul518.i619
  %add520.i621 = fadd double %rsum00392.13881.i, %sub519.i620
  %mul521.i622 = fmul double %994, %1000
  %mul522.i = fmul double %995, %999
  %add523.i = fadd double %mul522.i, %mul521.i622
  %add524.i = fadd double %isum00386.13875.i, %add523.i
  %mul525.i623 = fmul double %994, %1001
  %mul526.i624 = fmul double %995, %1002
  %sub527.i = fsub double %mul525.i623, %mul526.i624
  %add528.i = fadd double %rsum01393.13882.i, %sub527.i
  %mul529.i625 = fmul double %994, %1002
  %mul530.i = fmul double %995, %1001
  %add531.i = fadd double %mul530.i, %mul529.i625
  %add532.i = fadd double %isum01387.13876.i, %add531.i
  %mul533.i = fmul double %994, %1003
  %mul534.i = fmul double %995, %1004
  %sub535.i626 = fsub double %mul533.i, %mul534.i
  %add536.i = fadd double %rsum02394.13883.i, %sub535.i626
  %mul537.i627 = fmul double %994, %1004
  %mul538.i = fmul double %995, %1003
  %add539.i = fadd double %mul538.i, %mul537.i627
  %add540.i628 = fadd double %isum02388.13877.i, %add539.i
  %mul541.i629 = fmul double %996, %999
  %mul542.i = fmul double %997, %1000
  %sub543.i = fsub double %mul541.i629, %mul542.i
  %add544.i = fadd double %rsum10395.13884.i, %sub543.i
  %mul545.i = fmul double %996, %1000
  %mul546.i630 = fmul double %997, %999
  %add547.i = fadd double %mul546.i630, %mul545.i
  %add548.i = fadd double %isum10389.13878.i, %add547.i
  %mul549.i631 = fmul double %996, %1001
  %mul550.i = fmul double %997, %1002
  %sub551.i = fsub double %mul549.i631, %mul550.i
  %add552.i = fadd double %rsum11396.13885.i, %sub551.i
  %mul553.i = fmul double %996, %1002
  %mul554.i = fmul double %997, %1001
  %add555.i = fadd double %mul554.i, %mul553.i
  %add556.i632 = fadd double %isum11390.13879.i, %add555.i
  %mul557.i633 = fmul double %996, %1003
  %mul558.i = fmul double %997, %1004
  %sub559.i = fsub double %mul557.i633, %mul558.i
  %add560.i634 = fadd double %rsum12397.13886.i, %sub559.i
  %mul561.i635 = fmul double %996, %1004
  %mul562.i = fmul double %997, %1003
  %add563.i = fadd double %mul562.i, %mul561.i635
  %add564.i = fadd double %isum12391.13880.i, %add563.i
  %indvars.iv.next4001.i = add i64 %indvars.iv4000.i, 1
  %lftr.wideiv1255 = trunc i64 %indvars.iv.next4001.i to i32
  %exitcond1256 = icmp eq i32 %lftr.wideiv1255, %909
  br i1 %exitcond1256, label %if.end568.i, label %for.body490.i

if.end568.i:                                      ; preds = %for.body413.i, %for.body490.i, %for.cond488.preheader.i, %for.cond411.preheader.i
  %isum00386.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add524.i, %for.body490.i ], [ %add443.i, %for.body413.i ]
  %isum01387.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add532.i, %for.body490.i ], [ %add451.i, %for.body413.i ]
  %isum02388.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add540.i628, %for.body490.i ], [ %add459.i601, %for.body413.i ]
  %isum10389.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add548.i, %for.body490.i ], [ %add467.i606, %for.body413.i ]
  %isum11390.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add556.i632, %for.body490.i ], [ %add475.i609, %for.body413.i ]
  %isum12391.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add564.i, %for.body490.i ], [ %add483.i, %for.body413.i ]
  %rsum00392.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add520.i621, %for.body490.i ], [ %add439.i593, %for.body413.i ]
  %rsum01393.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add528.i, %for.body490.i ], [ %add447.i595, %for.body413.i ]
  %rsum02394.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add536.i, %for.body490.i ], [ %add455.i599, %for.body413.i ]
  %rsum10395.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add544.i, %for.body490.i ], [ %add463.i604, %for.body413.i ]
  %rsum11396.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add552.i, %for.body490.i ], [ %add471.i, %for.body413.i ]
  %rsum12397.2.i = phi double [ 0.000000e+00, %for.cond488.preheader.i ], [ 0.000000e+00, %for.cond411.preheader.i ], [ %add560.i634, %for.body490.i ], [ %add479.i611, %for.body413.i ]
  br i1 %cmp569.i, label %if.then570.i, label %if.else611.i

if.then570.i:                                     ; preds = %if.end568.i
  %arrayidx574.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom573.i
  %1005 = load double* %arrayidx574.i, align 8, !tbaa !4
  %sub575.i = fsub double %1005, %rsum00392.2.i
  store double %sub575.i, double* %arrayidx574.i, align 8, !tbaa !4
  %arrayidx577.i637 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom576.i636
  %1006 = load double* %arrayidx577.i637, align 8, !tbaa !4
  %sub578.i = fsub double %1006, %isum00386.2.i
  store double %sub578.i, double* %arrayidx577.i637, align 8, !tbaa !4
  %arrayidx580.i638 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3491.i
  %1007 = load double* %arrayidx580.i638, align 8, !tbaa !4
  %sub581.i639 = fsub double %1007, %rsum01393.2.i
  store double %sub581.i639, double* %arrayidx580.i638, align 8, !tbaa !4
  %arrayidx583.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3492.i
  %1008 = load double* %arrayidx583.i, align 8, !tbaa !4
  %sub584.i = fsub double %1008, %isum01387.2.i
  store double %sub584.i, double* %arrayidx583.i, align 8, !tbaa !4
  %arrayidx586.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3493.i
  %1009 = load double* %arrayidx586.i, align 8, !tbaa !4
  %sub587.i = fsub double %1009, %rsum02394.2.i
  store double %sub587.i, double* %arrayidx586.i, align 8, !tbaa !4
  %arrayidx589.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3494.i
  %1010 = load double* %arrayidx589.i, align 8, !tbaa !4
  %sub590.i = fsub double %1010, %isum02388.2.i
  store double %sub590.i, double* %arrayidx589.i, align 8, !tbaa !4
  %arrayidx594.i641 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom593.i640
  %1011 = load double* %arrayidx594.i641, align 8, !tbaa !4
  %sub595.i = fsub double %1011, %rsum10395.2.i
  store double %sub595.i, double* %arrayidx594.i641, align 8, !tbaa !4
  %arrayidx597.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom596.i
  %1012 = load double* %arrayidx597.i, align 8, !tbaa !4
  %sub598.i = fsub double %1012, %isum10389.2.i
  store double %sub598.i, double* %arrayidx597.i, align 8, !tbaa !4
  %arrayidx600.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3495.i
  %1013 = load double* %arrayidx600.i, align 8, !tbaa !4
  %sub601.i = fsub double %1013, %rsum11396.2.i
  store double %sub601.i, double* %arrayidx600.i, align 8, !tbaa !4
  %arrayidx603.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3496.i
  %1014 = load double* %arrayidx603.i, align 8, !tbaa !4
  %sub604.i = fsub double %1014, %isum11390.2.i
  store double %sub604.i, double* %arrayidx603.i, align 8, !tbaa !4
  %arrayidx606.i642 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3497.i
  %1015 = load double* %arrayidx606.i642, align 8, !tbaa !4
  %sub607.i643 = fsub double %1015, %rsum12397.2.i
  store double %sub607.i643, double* %arrayidx606.i642, align 8, !tbaa !4
  %arrayidx609.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3498.i
  %1016 = load double* %arrayidx609.i, align 8, !tbaa !4
  %sub610.i = fsub double %1016, %isum12391.2.i
  store double %sub610.i, double* %arrayidx609.i, align 8, !tbaa !4
  br label %if.end835.i

if.else611.i:                                     ; preds = %if.end568.i
  %1017 = load i32* %arrayidx613.i, align 4, !tbaa !3
  %mul614.i = shl nsw i32 %1017, 1
  %add6153480.i = or i32 %mul614.i, 1
  %idxprom616.i = sext i32 %mul614.i to i64
  %arrayidx617.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom616.i
  %1018 = load double* %arrayidx617.i, align 8, !tbaa !4
  %sub618.i = fsub double %1018, %rsum00392.2.i
  store double %sub618.i, double* %arrayidx617.i, align 8, !tbaa !4
  %idxprom619.i = sext i32 %add6153480.i to i64
  %arrayidx620.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom619.i
  %1019 = load double* %arrayidx620.i, align 8, !tbaa !4
  %sub621.i644 = fsub double %1019, %isum00386.2.i
  store double %sub621.i644, double* %arrayidx620.i, align 8, !tbaa !4
  %add.ptr11.sum3481.i = add i64 %idxprom616.i, %idx.ext10.i480
  %arrayidx623.i645 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3481.i
  %1020 = load double* %arrayidx623.i645, align 8, !tbaa !4
  %sub624.i646 = fsub double %1020, %rsum01393.2.i
  store double %sub624.i646, double* %arrayidx623.i645, align 8, !tbaa !4
  %add.ptr11.sum3482.i = add i64 %idxprom619.i, %idx.ext10.i480
  %arrayidx626.i647 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3482.i
  %1021 = load double* %arrayidx626.i647, align 8, !tbaa !4
  %sub627.i = fsub double %1021, %isum01387.2.i
  store double %sub627.i, double* %arrayidx626.i647, align 8, !tbaa !4
  %add.ptr14.sum3483.i = add i64 %idxprom616.i, %add.ptr11.sum.i481
  %arrayidx629.i648 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3483.i
  %1022 = load double* %arrayidx629.i648, align 8, !tbaa !4
  %sub630.i649 = fsub double %1022, %rsum02394.2.i
  store double %sub630.i649, double* %arrayidx629.i648, align 8, !tbaa !4
  %add.ptr14.sum3484.i = add i64 %idxprom619.i, %add.ptr11.sum.i481
  %arrayidx632.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3484.i
  %1023 = load double* %arrayidx632.i, align 8, !tbaa !4
  %sub633.i650 = fsub double %1023, %isum02388.2.i
  store double %sub633.i650, double* %arrayidx632.i, align 8, !tbaa !4
  %1024 = load i32* %arrayidx636.i651, align 4, !tbaa !3
  %mul637.i652 = shl nsw i32 %1024, 1
  %add6383485.i = or i32 %mul637.i652, 1
  %idxprom639.i = sext i32 %mul637.i652 to i64
  %arrayidx640.i653 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom639.i
  %1025 = load double* %arrayidx640.i653, align 8, !tbaa !4
  %sub641.i = fsub double %1025, %rsum10395.2.i
  store double %sub641.i, double* %arrayidx640.i653, align 8, !tbaa !4
  %idxprom642.i = sext i32 %add6383485.i to i64
  %arrayidx643.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom642.i
  %1026 = load double* %arrayidx643.i, align 8, !tbaa !4
  %sub644.i = fsub double %1026, %isum10389.2.i
  store double %sub644.i, double* %arrayidx643.i, align 8, !tbaa !4
  %add.ptr11.sum3486.i = add i64 %idxprom639.i, %idx.ext10.i480
  %arrayidx646.i654 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3486.i
  %1027 = load double* %arrayidx646.i654, align 8, !tbaa !4
  %sub647.i = fsub double %1027, %rsum11396.2.i
  store double %sub647.i, double* %arrayidx646.i654, align 8, !tbaa !4
  %add.ptr11.sum3487.i = add i64 %idxprom642.i, %idx.ext10.i480
  %arrayidx649.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3487.i
  %1028 = load double* %arrayidx649.i, align 8, !tbaa !4
  %sub650.i = fsub double %1028, %isum11390.2.i
  store double %sub650.i, double* %arrayidx649.i, align 8, !tbaa !4
  %add.ptr14.sum3488.i = add i64 %idxprom639.i, %add.ptr11.sum.i481
  %arrayidx652.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3488.i
  %1029 = load double* %arrayidx652.i, align 8, !tbaa !4
  %sub653.i = fsub double %1029, %rsum12397.2.i
  store double %sub653.i, double* %arrayidx652.i, align 8, !tbaa !4
  %add.ptr14.sum3489.i = add i64 %idxprom642.i, %add.ptr11.sum.i481
  %arrayidx655.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3489.i
  %1030 = load double* %arrayidx655.i, align 8, !tbaa !4
  %sub656.i = fsub double %1030, %isum12391.2.i
  store double %sub656.i, double* %arrayidx655.i, align 8, !tbaa !4
  br label %if.end835.i

if.else658.i:                                     ; preds = %for.end372.i
  %cmp660.i = icmp eq i32 %irowA.0.lcssa.i589, %add634.i
  br i1 %cmp660.i, label %if.then661.i, label %if.end835.i

if.then661.i:                                     ; preds = %if.else658.i
  br i1 %cmp409.i, label %for.cond686.preheader.i, label %for.cond735.preheader.i

for.cond686.preheader.i:                          ; preds = %if.then661.i
  br i1 %cmp4893874.i, label %for.body688.i, label %if.end787.i

for.cond735.preheader.i:                          ; preds = %if.then661.i
  br i1 %cmp4893874.i, label %for.body737.i, label %if.end787.i

for.body688.i:                                    ; preds = %for.cond686.preheader.i, %for.body688.i
  %indvars.iv3996.i = phi i64 [ %indvars.iv.next3997.i, %for.body688.i ], [ 0, %for.cond686.preheader.i ]
  %rsum02675.03866.i = phi double [ %add726.i, %for.body688.i ], [ 0.000000e+00, %for.cond686.preheader.i ]
  %rsum01674.03865.i = phi double [ %add718.i, %for.body688.i ], [ 0.000000e+00, %for.cond686.preheader.i ]
  %rsum00673.03864.i = phi double [ %add710.i, %for.body688.i ], [ 0.000000e+00, %for.cond686.preheader.i ]
  %isum02672.03863.i = phi double [ %add730.i, %for.body688.i ], [ 0.000000e+00, %for.cond686.preheader.i ]
  %isum01671.03862.i = phi double [ %add722.i, %for.body688.i ], [ 0.000000e+00, %for.cond686.preheader.i ]
  %isum00670.03861.i = phi double [ %add714.i, %for.body688.i ], [ 0.000000e+00, %for.cond686.preheader.i ]
  %1031 = trunc i64 %indvars.iv3996.i to i32
  %mul689.i = shl nsw i32 %1031, 1
  %add6903475.i = or i32 %mul689.i, 1
  %idxprom691.i = sext i32 %mul689.i to i64
  %arrayidx692.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom691.i
  %1032 = load double* %arrayidx692.i, align 8, !tbaa !4
  %idxprom693.i = sext i32 %add6903475.i to i64
  %arrayidx694.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom693.i
  %1033 = load double* %arrayidx694.i, align 8, !tbaa !4
  %arrayidx696.i655 = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom691.i
  %1034 = load double* %arrayidx696.i655, align 8, !tbaa !4
  %arrayidx698.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom693.i
  %1035 = load double* %arrayidx698.i, align 8, !tbaa !4
  %add.ptr.sum3476.i = add i64 %idxprom691.i, %idx.ext.i477
  %arrayidx700.i656 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3476.i
  %1036 = load double* %arrayidx700.i656, align 8, !tbaa !4
  %add.ptr.sum3477.i = add i64 %idxprom693.i, %idx.ext.i477
  %arrayidx702.i657 = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3477.i
  %1037 = load double* %arrayidx702.i657, align 8, !tbaa !4
  %add.ptr8.sum3478.i = add i64 %idxprom691.i, %add.ptr.sum.i478
  %arrayidx704.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3478.i
  %1038 = load double* %arrayidx704.i, align 8, !tbaa !4
  %add.ptr8.sum3479.i = add i64 %idxprom693.i, %add.ptr.sum.i478
  %arrayidx706.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3479.i
  %1039 = load double* %arrayidx706.i, align 8, !tbaa !4
  %mul707.i = fmul double %1032, %1034
  %mul708.i = fmul double %1033, %1035
  %sub709.i658 = fsub double %mul707.i, %mul708.i
  %add710.i = fadd double %rsum00673.03864.i, %sub709.i658
  %mul711.i = fmul double %1032, %1035
  %mul712.i = fmul double %1033, %1034
  %add713.i = fadd double %mul712.i, %mul711.i
  %add714.i = fadd double %isum00670.03861.i, %add713.i
  %mul715.i = fmul double %1032, %1036
  %mul716.i = fmul double %1033, %1037
  %sub717.i = fsub double %mul715.i, %mul716.i
  %add718.i = fadd double %rsum01674.03865.i, %sub717.i
  %mul719.i = fmul double %1032, %1037
  %mul720.i = fmul double %1033, %1036
  %add721.i = fadd double %mul720.i, %mul719.i
  %add722.i = fadd double %isum01671.03862.i, %add721.i
  %mul723.i = fmul double %1032, %1038
  %mul724.i = fmul double %1033, %1039
  %sub725.i = fsub double %mul723.i, %mul724.i
  %add726.i = fadd double %rsum02675.03866.i, %sub725.i
  %mul727.i = fmul double %1032, %1039
  %mul728.i659 = fmul double %1033, %1038
  %add729.i660 = fadd double %mul728.i659, %mul727.i
  %add730.i = fadd double %isum02672.03863.i, %add729.i660
  %indvars.iv.next3997.i = add i64 %indvars.iv3996.i, 1
  %lftr.wideiv1253 = trunc i64 %indvars.iv.next3997.i to i32
  %exitcond1254 = icmp eq i32 %lftr.wideiv1253, %905
  br i1 %exitcond1254, label %if.end787.i, label %for.body688.i

for.body737.i:                                    ; preds = %for.cond735.preheader.i, %for.body737.i
  %indvars.iv3992.i = phi i64 [ %indvars.iv.next3993.i, %for.body737.i ], [ 0, %for.cond735.preheader.i ]
  %rsum02675.13851.i = phi double [ %add779.i, %for.body737.i ], [ 0.000000e+00, %for.cond735.preheader.i ]
  %rsum01674.13850.i = phi double [ %add771.i, %for.body737.i ], [ 0.000000e+00, %for.cond735.preheader.i ]
  %rsum00673.13849.i = phi double [ %add763.i, %for.body737.i ], [ 0.000000e+00, %for.cond735.preheader.i ]
  %isum02672.13848.i = phi double [ %add783.i, %for.body737.i ], [ 0.000000e+00, %for.cond735.preheader.i ]
  %isum01671.13847.i = phi double [ %add775.i, %for.body737.i ], [ 0.000000e+00, %for.cond735.preheader.i ]
  %isum00670.13846.i = phi double [ %add767.i, %for.body737.i ], [ 0.000000e+00, %for.cond735.preheader.i ]
  %1040 = trunc i64 %indvars.iv3992.i to i32
  %mul738.i = shl nsw i32 %1040, 1
  %add7393469.i = or i32 %mul738.i, 1
  %idxprom740.i = sext i32 %mul738.i to i64
  %arrayidx741.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom740.i
  %1041 = load double* %arrayidx741.i, align 8, !tbaa !4
  %idxprom742.i = sext i32 %add7393469.i to i64
  %arrayidx743.i = getelementptr inbounds double* %rowA0.0.lcssa.i588, i64 %idxprom742.i
  %1042 = load double* %arrayidx743.i, align 8, !tbaa !4
  %arrayidx745.i = getelementptr inbounds i32* %911, i64 %indvars.iv3992.i
  %1043 = load i32* %arrayidx745.i, align 4, !tbaa !3
  %mul746.i = shl nsw i32 %1043, 1
  %add7473470.i = or i32 %mul746.i, 1
  %idxprom748.i661 = sext i32 %mul746.i to i64
  %arrayidx749.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom748.i661
  %1044 = load double* %arrayidx749.i, align 8, !tbaa !4
  %idxprom750.i = sext i32 %add7473470.i to i64
  %arrayidx751.i = getelementptr inbounds double* %colX0.03936.i, i64 %idxprom750.i
  %1045 = load double* %arrayidx751.i, align 8, !tbaa !4
  %add.ptr.sum3471.i = add i64 %idxprom748.i661, %idx.ext.i477
  %arrayidx753.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3471.i
  %1046 = load double* %arrayidx753.i, align 8, !tbaa !4
  %add.ptr.sum3472.i = add i64 %idxprom750.i, %idx.ext.i477
  %arrayidx755.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr.sum3472.i
  %1047 = load double* %arrayidx755.i, align 8, !tbaa !4
  %add.ptr8.sum3473.i = add i64 %idxprom748.i661, %add.ptr.sum.i478
  %arrayidx757.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3473.i
  %1048 = load double* %arrayidx757.i, align 8, !tbaa !4
  %add.ptr8.sum3474.i = add i64 %idxprom750.i, %add.ptr.sum.i478
  %arrayidx759.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum3474.i
  %1049 = load double* %arrayidx759.i, align 8, !tbaa !4
  %mul760.i = fmul double %1041, %1044
  %mul761.i = fmul double %1042, %1045
  %sub762.i = fsub double %mul760.i, %mul761.i
  %add763.i = fadd double %rsum00673.13849.i, %sub762.i
  %mul764.i = fmul double %1041, %1045
  %mul765.i = fmul double %1042, %1044
  %add766.i = fadd double %mul765.i, %mul764.i
  %add767.i = fadd double %isum00670.13846.i, %add766.i
  %mul768.i = fmul double %1041, %1046
  %mul769.i = fmul double %1042, %1047
  %sub770.i = fsub double %mul768.i, %mul769.i
  %add771.i = fadd double %rsum01674.13850.i, %sub770.i
  %mul772.i = fmul double %1041, %1047
  %mul773.i = fmul double %1042, %1046
  %add774.i = fadd double %mul773.i, %mul772.i
  %add775.i = fadd double %isum01671.13847.i, %add774.i
  %mul776.i = fmul double %1041, %1048
  %mul777.i = fmul double %1042, %1049
  %sub778.i = fsub double %mul776.i, %mul777.i
  %add779.i = fadd double %rsum02675.13851.i, %sub778.i
  %mul780.i = fmul double %1041, %1049
  %mul781.i662 = fmul double %1042, %1048
  %add782.i = fadd double %mul781.i662, %mul780.i
  %add783.i = fadd double %isum02672.13848.i, %add782.i
  %indvars.iv.next3993.i = add i64 %indvars.iv3992.i, 1
  %lftr.wideiv1251 = trunc i64 %indvars.iv.next3993.i to i32
  %exitcond1252 = icmp eq i32 %lftr.wideiv1251, %909
  br i1 %exitcond1252, label %if.end787.i, label %for.body737.i

if.end787.i:                                      ; preds = %for.body688.i, %for.body737.i, %for.cond735.preheader.i, %for.cond686.preheader.i
  %isum00670.2.i = phi double [ 0.000000e+00, %for.cond735.preheader.i ], [ 0.000000e+00, %for.cond686.preheader.i ], [ %add767.i, %for.body737.i ], [ %add714.i, %for.body688.i ]
  %isum01671.2.i = phi double [ 0.000000e+00, %for.cond735.preheader.i ], [ 0.000000e+00, %for.cond686.preheader.i ], [ %add775.i, %for.body737.i ], [ %add722.i, %for.body688.i ]
  %isum02672.2.i = phi double [ 0.000000e+00, %for.cond735.preheader.i ], [ 0.000000e+00, %for.cond686.preheader.i ], [ %add783.i, %for.body737.i ], [ %add730.i, %for.body688.i ]
  %rsum00673.2.i = phi double [ 0.000000e+00, %for.cond735.preheader.i ], [ 0.000000e+00, %for.cond686.preheader.i ], [ %add763.i, %for.body737.i ], [ %add710.i, %for.body688.i ]
  %rsum01674.2.i = phi double [ 0.000000e+00, %for.cond735.preheader.i ], [ 0.000000e+00, %for.cond686.preheader.i ], [ %add771.i, %for.body737.i ], [ %add718.i, %for.body688.i ]
  %rsum02675.2.i = phi double [ 0.000000e+00, %for.cond735.preheader.i ], [ 0.000000e+00, %for.cond686.preheader.i ], [ %add779.i, %for.body737.i ], [ %add726.i, %for.body688.i ]
  br i1 %cmp569.i, label %if.then789.i, label %if.else810.i

if.then789.i:                                     ; preds = %if.end787.i
  %mul790.i = shl nsw i32 %add634.i, 1
  %add7913464.i = or i32 %mul790.i, 1
  %idxprom792.i = sext i32 %mul790.i to i64
  %arrayidx793.i663 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom792.i
  %1050 = load double* %arrayidx793.i663, align 8, !tbaa !4
  %sub794.i = fsub double %1050, %rsum00673.2.i
  store double %sub794.i, double* %arrayidx793.i663, align 8, !tbaa !4
  %idxprom795.i = sext i32 %add7913464.i to i64
  %arrayidx796.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom795.i
  %1051 = load double* %arrayidx796.i, align 8, !tbaa !4
  %sub797.i = fsub double %1051, %isum00670.2.i
  store double %sub797.i, double* %arrayidx796.i, align 8, !tbaa !4
  %add.ptr11.sum3465.i = add i64 %idxprom792.i, %idx.ext10.i480
  %arrayidx799.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3465.i
  %1052 = load double* %arrayidx799.i, align 8, !tbaa !4
  %sub800.i = fsub double %1052, %rsum01674.2.i
  store double %sub800.i, double* %arrayidx799.i, align 8, !tbaa !4
  %add.ptr11.sum3466.i = add i64 %idxprom795.i, %idx.ext10.i480
  %arrayidx802.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3466.i
  %1053 = load double* %arrayidx802.i, align 8, !tbaa !4
  %sub803.i = fsub double %1053, %isum01671.2.i
  store double %sub803.i, double* %arrayidx802.i, align 8, !tbaa !4
  %add.ptr14.sum3467.i = add i64 %idxprom792.i, %add.ptr11.sum.i481
  %arrayidx805.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3467.i
  %1054 = load double* %arrayidx805.i, align 8, !tbaa !4
  %sub806.i = fsub double %1054, %rsum02675.2.i
  store double %sub806.i, double* %arrayidx805.i, align 8, !tbaa !4
  %add.ptr14.sum3468.i = add i64 %idxprom795.i, %add.ptr11.sum.i481
  %arrayidx808.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3468.i
  %1055 = load double* %arrayidx808.i, align 8, !tbaa !4
  %sub809.i = fsub double %1055, %isum02672.2.i
  store double %sub809.i, double* %arrayidx808.i, align 8, !tbaa !4
  br label %if.end835.i

if.else810.i:                                     ; preds = %if.end787.i
  %1056 = load i32* %arrayidx636.i651, align 4, !tbaa !3
  %mul813.i = shl nsw i32 %1056, 1
  %add8143459.i = or i32 %mul813.i, 1
  %idxprom815.i = sext i32 %mul813.i to i64
  %arrayidx816.i665 = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom815.i
  %1057 = load double* %arrayidx816.i665, align 8, !tbaa !4
  %sub817.i = fsub double %1057, %rsum00673.2.i
  store double %sub817.i, double* %arrayidx816.i665, align 8, !tbaa !4
  %idxprom818.i = sext i32 %add8143459.i to i64
  %arrayidx819.i = getelementptr inbounds double* %colY0.03933.i, i64 %idxprom818.i
  %1058 = load double* %arrayidx819.i, align 8, !tbaa !4
  %sub820.i = fsub double %1058, %isum00670.2.i
  store double %sub820.i, double* %arrayidx819.i, align 8, !tbaa !4
  %add.ptr11.sum3460.i = add i64 %idxprom815.i, %idx.ext10.i480
  %arrayidx822.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3460.i
  %1059 = load double* %arrayidx822.i, align 8, !tbaa !4
  %sub823.i = fsub double %1059, %rsum01674.2.i
  store double %sub823.i, double* %arrayidx822.i, align 8, !tbaa !4
  %add.ptr11.sum3461.i = add i64 %idxprom818.i, %idx.ext10.i480
  %arrayidx825.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr11.sum3461.i
  %1060 = load double* %arrayidx825.i, align 8, !tbaa !4
  %sub826.i = fsub double %1060, %isum01671.2.i
  store double %sub826.i, double* %arrayidx825.i, align 8, !tbaa !4
  %add.ptr14.sum3462.i = add i64 %idxprom815.i, %add.ptr11.sum.i481
  %arrayidx828.i666 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3462.i
  %1061 = load double* %arrayidx828.i666, align 8, !tbaa !4
  %sub829.i = fsub double %1061, %rsum02675.2.i
  store double %sub829.i, double* %arrayidx828.i666, align 8, !tbaa !4
  %add.ptr14.sum3463.i = add i64 %idxprom818.i, %add.ptr11.sum.i481
  %arrayidx831.i667 = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum3463.i
  %1062 = load double* %arrayidx831.i667, align 8, !tbaa !4
  %sub832.i = fsub double %1062, %isum02672.2.i
  store double %sub832.i, double* %arrayidx831.i667, align 8, !tbaa !4
  br label %if.end835.i

if.end835.i:                                      ; preds = %if.else810.i, %if.then789.i, %if.else658.i, %if.else611.i, %if.then570.i
  %add.ptr838.i = getelementptr inbounds double* %colX0.03936.i, i64 %add.ptr8.sum.i482
  %add.ptr841.i = getelementptr inbounds double* %colY0.03933.i, i64 %add.ptr14.sum.i483
  %add843.i668 = add nsw i32 %jcolX.03932.i, 3
  %cmp5.i669 = icmp slt i32 %add843.i668, %sub3930.i
  br i1 %cmp5.i669, label %for.body.i487, label %for.end844.i

for.end844.i:                                     ; preds = %if.end835.i, %if.end4.i475
  %colX0.0.lcssa.i670 = phi double* [ %902, %if.end4.i475 ], [ %add.ptr838.i, %if.end835.i ]
  %colY0.0.lcssa.i671 = phi double* [ %903, %if.end4.i475 ], [ %add.ptr841.i, %if.end835.i ]
  %jcolX.0.lcssa.i672 = phi i32 [ 0, %if.end4.i475 ], [ %add843.i668, %if.end835.i ]
  %cmp846.i = icmp eq i32 %jcolX.0.lcssa.i672, %sub3930.i
  br i1 %cmp846.i, label %if.then847.i, label %if.else1512.i

if.then847.i:                                     ; preds = %for.end844.i
  %1063 = load i32* %nrowX.i464, align 4, !tbaa !3
  %mul848.i = shl nsw i32 %1063, 1
  %idx.ext849.i = sext i32 %mul848.i to i64
  %1064 = load i32* %nrowY.i465, align 4, !tbaa !3
  %mul851.i = shl nsw i32 %1064, 1
  %idx.ext852.i = sext i32 %mul851.i to i64
  %1065 = load double** %entA.i455, align 8, !tbaa !0
  %1066 = load i32* %nrowA.i463, align 4, !tbaa !3
  %sub8553670.i = add nsw i32 %1066, -2
  %cmp8563671.i = icmp sgt i32 %sub8553670.i, 0
  br i1 %cmp8563671.i, label %for.body857.lr.ph.i, label %for.end1155.i

for.body857.lr.ph.i:                              ; preds = %if.then847.i
  %1067 = load i32* %ncolA.i460, align 4, !tbaa !3
  %mul888.i = shl nsw i32 %1067, 1
  %idx.ext889.i = sext i32 %mul888.i to i64
  %add.ptr890.sum.i = shl nsw i64 %idx.ext889.i, 1
  %cmp894.i = icmp eq i32 %1067, %1063
  %cmp1054.i = icmp eq i32 %1064, %1066
  %add.ptr893.sum.i = add i64 %add.ptr890.sum.i, %idx.ext889.i
  %1068 = load i32** %rowindA.i467, align 8, !tbaa !0
  %cmp9743617.i = icmp sgt i32 %1067, 0
  %1069 = load i32** %colindA.i466, align 8, !tbaa !0
  br label %for.body857.i

for.body857.i:                                    ; preds = %if.end1149.i, %for.body857.lr.ph.i
  %indvars.iv3960.i = phi i64 [ 0, %for.body857.lr.ph.i ], [ %indvars.iv.next3961.i, %if.end1149.i ]
  %rowA0.13673.i = phi double* [ %1065, %for.body857.lr.ph.i ], [ %add.ptr1152.i, %if.end1149.i ]
  %irowA.13672.i = phi i32 [ 0, %for.body857.lr.ph.i ], [ %add1154.i, %if.end1149.i ]
  br i1 %cmp894.i, label %for.cond896.preheader.i, label %for.cond973.preheader.i

for.cond896.preheader.i:                          ; preds = %for.body857.i
  br i1 %cmp9743617.i, label %for.body898.i, label %if.end1053.i

for.cond973.preheader.i:                          ; preds = %for.body857.i
  br i1 %cmp9743617.i, label %for.body975.i, label %if.end1053.i

for.body898.i:                                    ; preds = %for.cond896.preheader.i, %for.body898.i
  %indvars.iv3958.i = phi i64 [ %indvars.iv.next3959.i, %for.body898.i ], [ 0, %for.cond896.preheader.i ]
  %rsum21879.03656.i = phi double [ %add964.i688, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %rsum20878.03655.i = phi double [ %add956.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %rsum11877.03654.i = phi double [ %add948.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %rsum10876.03653.i = phi double [ %add940.i682, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %rsum01875.03652.i = phi double [ %add932.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %rsum00874.03651.i = phi double [ %add924.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %isum21873.03650.i = phi double [ %add968.i690, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %isum20872.03649.i = phi double [ %add960.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %isum11871.03648.i = phi double [ %add952.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %isum10870.03647.i = phi double [ %add944.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %isum01869.03646.i = phi double [ %add936.i680, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %isum00868.03645.i = phi double [ %add928.i, %for.body898.i ], [ 0.000000e+00, %for.cond896.preheader.i ]
  %1070 = trunc i64 %indvars.iv3958.i to i32
  %mul899.i = shl nsw i32 %1070, 1
  %add9003452.i = or i32 %mul899.i, 1
  %idxprom901.i = sext i32 %mul899.i to i64
  %arrayidx902.i = getelementptr inbounds double* %rowA0.13673.i, i64 %idxprom901.i
  %1071 = load double* %arrayidx902.i, align 8, !tbaa !4
  %idxprom903.i = sext i32 %add9003452.i to i64
  %arrayidx904.i = getelementptr inbounds double* %rowA0.13673.i, i64 %idxprom903.i
  %1072 = load double* %arrayidx904.i, align 8, !tbaa !4
  %add.ptr890.sum3453.i = add i64 %idxprom901.i, %idx.ext889.i
  %arrayidx906.i673 = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr890.sum3453.i
  %1073 = load double* %arrayidx906.i673, align 8, !tbaa !4
  %add.ptr890.sum3454.i = add i64 %idxprom903.i, %idx.ext889.i
  %arrayidx908.i = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr890.sum3454.i
  %1074 = load double* %arrayidx908.i, align 8, !tbaa !4
  %add.ptr893.sum3455.i = add i64 %idxprom901.i, %add.ptr890.sum.i
  %arrayidx910.i674 = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr893.sum3455.i
  %1075 = load double* %arrayidx910.i674, align 8, !tbaa !4
  %add.ptr893.sum3456.i = add i64 %idxprom903.i, %add.ptr890.sum.i
  %arrayidx912.i675 = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr893.sum3456.i
  %1076 = load double* %arrayidx912.i675, align 8, !tbaa !4
  %arrayidx914.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom901.i
  %1077 = load double* %arrayidx914.i, align 8, !tbaa !4
  %arrayidx916.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom903.i
  %1078 = load double* %arrayidx916.i, align 8, !tbaa !4
  %add.ptr850.sum3457.i = add i64 %idxprom901.i, %idx.ext849.i
  %arrayidx918.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3457.i
  %1079 = load double* %arrayidx918.i, align 8, !tbaa !4
  %add.ptr850.sum3458.i = add i64 %idxprom903.i, %idx.ext849.i
  %arrayidx920.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3458.i
  %1080 = load double* %arrayidx920.i, align 8, !tbaa !4
  %mul921.i676 = fmul double %1071, %1077
  %mul922.i = fmul double %1072, %1078
  %sub923.i = fsub double %mul921.i676, %mul922.i
  %add924.i = fadd double %rsum00874.03651.i, %sub923.i
  %mul925.i677 = fmul double %1071, %1078
  %mul926.i = fmul double %1072, %1077
  %add927.i = fadd double %mul926.i, %mul925.i677
  %add928.i = fadd double %isum00868.03645.i, %add927.i
  %mul929.i = fmul double %1071, %1079
  %mul930.i = fmul double %1072, %1080
  %sub931.i678 = fsub double %mul929.i, %mul930.i
  %add932.i = fadd double %rsum01875.03652.i, %sub931.i678
  %mul933.i679 = fmul double %1071, %1080
  %mul934.i = fmul double %1072, %1079
  %add935.i = fadd double %mul934.i, %mul933.i679
  %add936.i680 = fadd double %isum01869.03646.i, %add935.i
  %mul937.i681 = fmul double %1073, %1077
  %mul938.i = fmul double %1074, %1078
  %sub939.i = fsub double %mul937.i681, %mul938.i
  %add940.i682 = fadd double %rsum10876.03653.i, %sub939.i
  %mul941.i683 = fmul double %1073, %1078
  %mul942.i = fmul double %1074, %1077
  %add943.i = fadd double %mul942.i, %mul941.i683
  %add944.i = fadd double %isum10870.03647.i, %add943.i
  %mul945.i = fmul double %1073, %1079
  %mul946.i684 = fmul double %1074, %1080
  %sub947.i = fsub double %mul945.i, %mul946.i684
  %add948.i = fadd double %rsum11877.03654.i, %sub947.i
  %mul949.i685 = fmul double %1073, %1080
  %mul950.i = fmul double %1074, %1079
  %add951.i = fadd double %mul950.i, %mul949.i685
  %add952.i = fadd double %isum11871.03648.i, %add951.i
  %mul953.i686 = fmul double %1075, %1077
  %mul954.i = fmul double %1076, %1078
  %sub955.i = fsub double %mul953.i686, %mul954.i
  %add956.i = fadd double %rsum20878.03655.i, %sub955.i
  %mul957.i = fmul double %1075, %1078
  %mul958.i = fmul double %1076, %1077
  %add959.i = fadd double %mul958.i, %mul957.i
  %add960.i = fadd double %isum20872.03649.i, %add959.i
  %mul961.i687 = fmul double %1075, %1079
  %mul962.i = fmul double %1076, %1080
  %sub963.i = fsub double %mul961.i687, %mul962.i
  %add964.i688 = fadd double %rsum21879.03656.i, %sub963.i
  %mul965.i689 = fmul double %1075, %1080
  %mul966.i = fmul double %1076, %1079
  %add967.i = fadd double %mul966.i, %mul965.i689
  %add968.i690 = fadd double %isum21873.03650.i, %add967.i
  %indvars.iv.next3959.i = add i64 %indvars.iv3958.i, 1
  %lftr.wideiv1233 = trunc i64 %indvars.iv.next3959.i to i32
  %exitcond1234 = icmp eq i32 %lftr.wideiv1233, %1063
  br i1 %exitcond1234, label %if.end1053.i, label %for.body898.i

for.body975.i:                                    ; preds = %for.cond973.preheader.i, %for.body975.i
  %indvars.iv3956.i = phi i64 [ %indvars.iv.next3957.i, %for.body975.i ], [ 0, %for.cond973.preheader.i ]
  %rsum21879.13629.i = phi double [ %add1045.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %rsum20878.13628.i = phi double [ %add1037.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %rsum11877.13627.i = phi double [ %add1029.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %rsum10876.13626.i = phi double [ %add1021.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %rsum01875.13625.i = phi double [ %add1013.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %rsum00874.13624.i = phi double [ %add1005.i693, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %isum21873.13623.i = phi double [ %add1049.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %isum20872.13622.i = phi double [ %add1041.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %isum11871.13621.i = phi double [ %add1033.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %isum10870.13620.i = phi double [ %add1025.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %isum01869.13619.i = phi double [ %add1017.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %isum00868.13618.i = phi double [ %add1009.i, %for.body975.i ], [ 0.000000e+00, %for.cond973.preheader.i ]
  %1081 = trunc i64 %indvars.iv3956.i to i32
  %mul976.i = shl nsw i32 %1081, 1
  %add9773444.i = or i32 %mul976.i, 1
  %idxprom978.i = sext i32 %mul976.i to i64
  %arrayidx979.i = getelementptr inbounds double* %rowA0.13673.i, i64 %idxprom978.i
  %1082 = load double* %arrayidx979.i, align 8, !tbaa !4
  %idxprom980.i = sext i32 %add9773444.i to i64
  %arrayidx981.i = getelementptr inbounds double* %rowA0.13673.i, i64 %idxprom980.i
  %1083 = load double* %arrayidx981.i, align 8, !tbaa !4
  %add.ptr890.sum3445.i = add i64 %idxprom978.i, %idx.ext889.i
  %arrayidx983.i = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr890.sum3445.i
  %1084 = load double* %arrayidx983.i, align 8, !tbaa !4
  %add.ptr890.sum3446.i = add i64 %idxprom980.i, %idx.ext889.i
  %arrayidx985.i = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr890.sum3446.i
  %1085 = load double* %arrayidx985.i, align 8, !tbaa !4
  %add.ptr893.sum3447.i = add i64 %idxprom978.i, %add.ptr890.sum.i
  %arrayidx987.i = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr893.sum3447.i
  %1086 = load double* %arrayidx987.i, align 8, !tbaa !4
  %add.ptr893.sum3448.i = add i64 %idxprom980.i, %add.ptr890.sum.i
  %arrayidx989.i = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr893.sum3448.i
  %1087 = load double* %arrayidx989.i, align 8, !tbaa !4
  %arrayidx991.i = getelementptr inbounds i32* %1069, i64 %indvars.iv3956.i
  %1088 = load i32* %arrayidx991.i, align 4, !tbaa !3
  %mul992.i = shl nsw i32 %1088, 1
  %add9933449.i = or i32 %mul992.i, 1
  %idxprom994.i = sext i32 %mul992.i to i64
  %arrayidx995.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom994.i
  %1089 = load double* %arrayidx995.i, align 8, !tbaa !4
  %idxprom996.i = sext i32 %add9933449.i to i64
  %arrayidx997.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom996.i
  %1090 = load double* %arrayidx997.i, align 8, !tbaa !4
  %add.ptr850.sum3450.i = add i64 %idxprom994.i, %idx.ext849.i
  %arrayidx999.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3450.i
  %1091 = load double* %arrayidx999.i, align 8, !tbaa !4
  %add.ptr850.sum3451.i = add i64 %idxprom996.i, %idx.ext849.i
  %arrayidx1001.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3451.i
  %1092 = load double* %arrayidx1001.i, align 8, !tbaa !4
  %mul1002.i = fmul double %1082, %1089
  %mul1003.i = fmul double %1083, %1090
  %sub1004.i = fsub double %mul1002.i, %mul1003.i
  %add1005.i693 = fadd double %rsum00874.13624.i, %sub1004.i
  %mul1006.i = fmul double %1082, %1090
  %mul1007.i = fmul double %1083, %1089
  %add1008.i = fadd double %mul1007.i, %mul1006.i
  %add1009.i = fadd double %isum00868.13618.i, %add1008.i
  %mul1010.i = fmul double %1082, %1091
  %mul1011.i = fmul double %1083, %1092
  %sub1012.i = fsub double %mul1010.i, %mul1011.i
  %add1013.i = fadd double %rsum01875.13625.i, %sub1012.i
  %mul1014.i = fmul double %1082, %1092
  %mul1015.i = fmul double %1083, %1091
  %add1016.i = fadd double %mul1015.i, %mul1014.i
  %add1017.i = fadd double %isum01869.13619.i, %add1016.i
  %mul1018.i = fmul double %1084, %1089
  %mul1019.i = fmul double %1085, %1090
  %sub1020.i = fsub double %mul1018.i, %mul1019.i
  %add1021.i = fadd double %rsum10876.13626.i, %sub1020.i
  %mul1022.i = fmul double %1084, %1090
  %mul1023.i = fmul double %1085, %1089
  %add1024.i = fadd double %mul1023.i, %mul1022.i
  %add1025.i = fadd double %isum10870.13620.i, %add1024.i
  %mul1026.i = fmul double %1084, %1091
  %mul1027.i = fmul double %1085, %1092
  %sub1028.i = fsub double %mul1026.i, %mul1027.i
  %add1029.i = fadd double %rsum11877.13627.i, %sub1028.i
  %mul1030.i694 = fmul double %1084, %1092
  %mul1031.i = fmul double %1085, %1091
  %add1032.i = fadd double %mul1031.i, %mul1030.i694
  %add1033.i = fadd double %isum11871.13621.i, %add1032.i
  %mul1034.i = fmul double %1086, %1089
  %mul1035.i = fmul double %1087, %1090
  %sub1036.i = fsub double %mul1034.i, %mul1035.i
  %add1037.i = fadd double %rsum20878.13628.i, %sub1036.i
  %mul1038.i = fmul double %1086, %1090
  %mul1039.i = fmul double %1087, %1089
  %add1040.i = fadd double %mul1039.i, %mul1038.i
  %add1041.i = fadd double %isum20872.13622.i, %add1040.i
  %mul1042.i = fmul double %1086, %1091
  %mul1043.i = fmul double %1087, %1092
  %sub1044.i = fsub double %mul1042.i, %mul1043.i
  %add1045.i = fadd double %rsum21879.13629.i, %sub1044.i
  %mul1046.i = fmul double %1086, %1092
  %mul1047.i = fmul double %1087, %1091
  %add1048.i = fadd double %mul1047.i, %mul1046.i
  %add1049.i = fadd double %isum21873.13623.i, %add1048.i
  %indvars.iv.next3957.i = add i64 %indvars.iv3956.i, 1
  %lftr.wideiv1231 = trunc i64 %indvars.iv.next3957.i to i32
  %exitcond1232 = icmp eq i32 %lftr.wideiv1231, %1067
  br i1 %exitcond1232, label %if.end1053.i, label %for.body975.i

if.end1053.i:                                     ; preds = %for.body898.i, %for.body975.i, %for.cond973.preheader.i, %for.cond896.preheader.i
  %isum00868.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1009.i, %for.body975.i ], [ %add928.i, %for.body898.i ]
  %isum01869.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1017.i, %for.body975.i ], [ %add936.i680, %for.body898.i ]
  %isum10870.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1025.i, %for.body975.i ], [ %add944.i, %for.body898.i ]
  %isum11871.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1033.i, %for.body975.i ], [ %add952.i, %for.body898.i ]
  %isum20872.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1041.i, %for.body975.i ], [ %add960.i, %for.body898.i ]
  %isum21873.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1049.i, %for.body975.i ], [ %add968.i690, %for.body898.i ]
  %rsum00874.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1005.i693, %for.body975.i ], [ %add924.i, %for.body898.i ]
  %rsum01875.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1013.i, %for.body975.i ], [ %add932.i, %for.body898.i ]
  %rsum10876.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1021.i, %for.body975.i ], [ %add940.i682, %for.body898.i ]
  %rsum11877.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1029.i, %for.body975.i ], [ %add948.i, %for.body898.i ]
  %rsum20878.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1037.i, %for.body975.i ], [ %add956.i, %for.body898.i ]
  %rsum21879.2.i = phi double [ 0.000000e+00, %for.cond973.preheader.i ], [ 0.000000e+00, %for.cond896.preheader.i ], [ %add1045.i, %for.body975.i ], [ %add964.i688, %for.body898.i ]
  br i1 %cmp1054.i, label %if.then1055.i, label %if.else1098.i

if.then1055.i:                                    ; preds = %if.end1053.i
  %1093 = trunc i64 %indvars.iv3960.i to i32
  %mul1056.i = shl nsw i32 %1093, 1
  %add10573437.i = or i32 %mul1056.i, 1
  %idxprom1058.i = sext i32 %mul1056.i to i64
  %arrayidx1059.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1058.i
  %1094 = load double* %arrayidx1059.i, align 8, !tbaa !4
  %sub1060.i695 = fsub double %1094, %rsum00874.2.i
  store double %sub1060.i695, double* %arrayidx1059.i, align 8, !tbaa !4
  %idxprom1061.i = sext i32 %add10573437.i to i64
  %arrayidx1062.i696 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1061.i
  %1095 = load double* %arrayidx1062.i696, align 8, !tbaa !4
  %sub1063.i697 = fsub double %1095, %isum00868.2.i
  store double %sub1063.i697, double* %arrayidx1062.i696, align 8, !tbaa !4
  %add.ptr853.sum3438.i = add i64 %idxprom1058.i, %idx.ext852.i
  %arrayidx1065.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3438.i
  %1096 = load double* %arrayidx1065.i, align 8, !tbaa !4
  %sub1066.i = fsub double %1096, %rsum01875.2.i
  store double %sub1066.i, double* %arrayidx1065.i, align 8, !tbaa !4
  %add.ptr853.sum3439.i = add i64 %idxprom1061.i, %idx.ext852.i
  %arrayidx1068.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3439.i
  %1097 = load double* %arrayidx1068.i, align 8, !tbaa !4
  %sub1069.i = fsub double %1097, %isum01869.2.i
  store double %sub1069.i, double* %arrayidx1068.i, align 8, !tbaa !4
  %add1070.i698 = add nsw i32 %mul1056.i, 2
  %add1071.i = add nsw i32 %add10573437.i, 2
  %idxprom1072.i = sext i32 %add1070.i698 to i64
  %arrayidx1073.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1072.i
  %1098 = load double* %arrayidx1073.i, align 8, !tbaa !4
  %sub1074.i = fsub double %1098, %rsum10876.2.i
  store double %sub1074.i, double* %arrayidx1073.i, align 8, !tbaa !4
  %idxprom1075.i = sext i32 %add1071.i to i64
  %arrayidx1076.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1075.i
  %1099 = load double* %arrayidx1076.i, align 8, !tbaa !4
  %sub1077.i = fsub double %1099, %isum10870.2.i
  store double %sub1077.i, double* %arrayidx1076.i, align 8, !tbaa !4
  %add.ptr853.sum3440.i = add i64 %idxprom1072.i, %idx.ext852.i
  %arrayidx1079.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3440.i
  %1100 = load double* %arrayidx1079.i, align 8, !tbaa !4
  %sub1080.i699 = fsub double %1100, %rsum11877.2.i
  store double %sub1080.i699, double* %arrayidx1079.i, align 8, !tbaa !4
  %add.ptr853.sum3441.i = add i64 %idxprom1075.i, %idx.ext852.i
  %arrayidx1082.i700 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3441.i
  %1101 = load double* %arrayidx1082.i700, align 8, !tbaa !4
  %sub1083.i701 = fsub double %1101, %isum11871.2.i
  store double %sub1083.i701, double* %arrayidx1082.i700, align 8, !tbaa !4
  %add1084.i = add nsw i32 %mul1056.i, 4
  %add1085.i = add nsw i32 %add10573437.i, 4
  %idxprom1086.i = sext i32 %add1084.i to i64
  %arrayidx1087.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1086.i
  %1102 = load double* %arrayidx1087.i, align 8, !tbaa !4
  %sub1088.i = fsub double %1102, %rsum20878.2.i
  store double %sub1088.i, double* %arrayidx1087.i, align 8, !tbaa !4
  %idxprom1089.i = sext i32 %add1085.i to i64
  %arrayidx1090.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1089.i
  %1103 = load double* %arrayidx1090.i, align 8, !tbaa !4
  %sub1091.i = fsub double %1103, %isum20872.2.i
  store double %sub1091.i, double* %arrayidx1090.i, align 8, !tbaa !4
  %add.ptr853.sum3442.i = add i64 %idxprom1086.i, %idx.ext852.i
  %arrayidx1093.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3442.i
  %1104 = load double* %arrayidx1093.i, align 8, !tbaa !4
  %sub1094.i = fsub double %1104, %rsum21879.2.i
  store double %sub1094.i, double* %arrayidx1093.i, align 8, !tbaa !4
  %add.ptr853.sum3443.i = add i64 %idxprom1089.i, %idx.ext852.i
  %arrayidx1096.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3443.i
  %1105 = load double* %arrayidx1096.i, align 8, !tbaa !4
  %sub1097.i = fsub double %1105, %isum21873.2.i
  store double %sub1097.i, double* %arrayidx1096.i, align 8, !tbaa !4
  br label %if.end1149.i

if.else1098.i:                                    ; preds = %if.end1053.i
  %arrayidx1100.i = getelementptr inbounds i32* %1068, i64 %indvars.iv3960.i
  %1106 = load i32* %arrayidx1100.i, align 4, !tbaa !3
  %mul1101.i = shl nsw i32 %1106, 1
  %add11023428.i = or i32 %mul1101.i, 1
  %idxprom1103.i = sext i32 %mul1101.i to i64
  %arrayidx1104.i702 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1103.i
  %1107 = load double* %arrayidx1104.i702, align 8, !tbaa !4
  %sub1105.i = fsub double %1107, %rsum00874.2.i
  store double %sub1105.i, double* %arrayidx1104.i702, align 8, !tbaa !4
  %idxprom1106.i = sext i32 %add11023428.i to i64
  %arrayidx1107.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1106.i
  %1108 = load double* %arrayidx1107.i, align 8, !tbaa !4
  %sub1108.i = fsub double %1108, %isum00868.2.i
  store double %sub1108.i, double* %arrayidx1107.i, align 8, !tbaa !4
  %add.ptr853.sum3429.i = add i64 %idxprom1103.i, %idx.ext852.i
  %arrayidx1110.i703 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3429.i
  %1109 = load double* %arrayidx1110.i703, align 8, !tbaa !4
  %sub1111.i = fsub double %1109, %rsum01875.2.i
  store double %sub1111.i, double* %arrayidx1110.i703, align 8, !tbaa !4
  %add.ptr853.sum3430.i = add i64 %idxprom1106.i, %idx.ext852.i
  %arrayidx1113.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3430.i
  %1110 = load double* %arrayidx1113.i, align 8, !tbaa !4
  %sub1114.i = fsub double %1110, %isum01869.2.i
  store double %sub1114.i, double* %arrayidx1113.i, align 8, !tbaa !4
  %1111 = add nsw i64 %indvars.iv3960.i, 1
  %arrayidx1117.i = getelementptr inbounds i32* %1068, i64 %1111
  %1112 = load i32* %arrayidx1117.i, align 4, !tbaa !3
  %mul1118.i704 = shl nsw i32 %1112, 1
  %add11193431.i = or i32 %mul1118.i704, 1
  %idxprom1120.i = sext i32 %mul1118.i704 to i64
  %arrayidx1121.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1120.i
  %1113 = load double* %arrayidx1121.i, align 8, !tbaa !4
  %sub1122.i = fsub double %1113, %rsum10876.2.i
  store double %sub1122.i, double* %arrayidx1121.i, align 8, !tbaa !4
  %idxprom1123.i = sext i32 %add11193431.i to i64
  %arrayidx1124.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1123.i
  %1114 = load double* %arrayidx1124.i, align 8, !tbaa !4
  %sub1125.i = fsub double %1114, %isum10870.2.i
  store double %sub1125.i, double* %arrayidx1124.i, align 8, !tbaa !4
  %add.ptr853.sum3432.i = add i64 %idxprom1120.i, %idx.ext852.i
  %arrayidx1127.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3432.i
  %1115 = load double* %arrayidx1127.i, align 8, !tbaa !4
  %sub1128.i = fsub double %1115, %rsum11877.2.i
  store double %sub1128.i, double* %arrayidx1127.i, align 8, !tbaa !4
  %add.ptr853.sum3433.i = add i64 %idxprom1123.i, %idx.ext852.i
  %arrayidx1130.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3433.i
  %1116 = load double* %arrayidx1130.i, align 8, !tbaa !4
  %sub1131.i = fsub double %1116, %isum11871.2.i
  store double %sub1131.i, double* %arrayidx1130.i, align 8, !tbaa !4
  %1117 = add nsw i64 %indvars.iv3960.i, 2
  %arrayidx1134.i = getelementptr inbounds i32* %1068, i64 %1117
  %1118 = load i32* %arrayidx1134.i, align 4, !tbaa !3
  %mul1135.i = shl nsw i32 %1118, 1
  %add11363434.i = or i32 %mul1135.i, 1
  %idxprom1137.i = sext i32 %mul1135.i to i64
  %arrayidx1138.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1137.i
  %1119 = load double* %arrayidx1138.i, align 8, !tbaa !4
  %sub1139.i705 = fsub double %1119, %rsum20878.2.i
  store double %sub1139.i705, double* %arrayidx1138.i, align 8, !tbaa !4
  %idxprom1140.i = sext i32 %add11363434.i to i64
  %arrayidx1141.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1140.i
  %1120 = load double* %arrayidx1141.i, align 8, !tbaa !4
  %sub1142.i = fsub double %1120, %isum20872.2.i
  store double %sub1142.i, double* %arrayidx1141.i, align 8, !tbaa !4
  %add.ptr853.sum3435.i = add i64 %idxprom1137.i, %idx.ext852.i
  %arrayidx1144.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3435.i
  %1121 = load double* %arrayidx1144.i, align 8, !tbaa !4
  %sub1145.i = fsub double %1121, %rsum21879.2.i
  store double %sub1145.i, double* %arrayidx1144.i, align 8, !tbaa !4
  %add.ptr853.sum3436.i = add i64 %idxprom1140.i, %idx.ext852.i
  %arrayidx1147.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3436.i
  %1122 = load double* %arrayidx1147.i, align 8, !tbaa !4
  %sub1148.i = fsub double %1122, %isum21873.2.i
  store double %sub1148.i, double* %arrayidx1147.i, align 8, !tbaa !4
  br label %if.end1149.i

if.end1149.i:                                     ; preds = %if.else1098.i, %if.then1055.i
  %add.ptr1152.i = getelementptr inbounds double* %rowA0.13673.i, i64 %add.ptr893.sum.i
  %indvars.iv.next3961.i = add i64 %indvars.iv3960.i, 3
  %add1154.i = add nsw i32 %irowA.13672.i, 3
  %1123 = trunc i64 %indvars.iv.next3961.i to i32
  %cmp856.i = icmp slt i32 %1123, %sub8553670.i
  br i1 %cmp856.i, label %for.body857.i, label %for.end1155.i

for.end1155.i:                                    ; preds = %if.end1149.i, %if.then847.i
  %rowA0.1.lcssa.i706 = phi double* [ %1065, %if.then847.i ], [ %add.ptr1152.i, %if.end1149.i ]
  %irowA.1.lcssa.i707 = phi i32 [ 0, %if.then847.i ], [ %add1154.i, %if.end1149.i ]
  %cmp1157.i = icmp eq i32 %irowA.1.lcssa.i707, %sub8553670.i
  br i1 %cmp1157.i, label %if.then1158.i, label %if.else1374.i

if.then1158.i:                                    ; preds = %for.end1155.i
  %1124 = load i32* %ncolA.i460, align 4, !tbaa !3
  %mul1183.i = shl nsw i32 %1124, 1
  %idx.ext1184.i = sext i32 %mul1183.i to i64
  %1125 = load i32* %nrowX.i464, align 4, !tbaa !3
  %cmp1186.i = icmp eq i32 %1124, %1125
  %cmp11893560.i = icmp sgt i32 %1124, 0
  br i1 %cmp1186.i, label %for.cond1188.preheader.i, label %for.cond1245.preheader.i

for.cond1245.preheader.i:                         ; preds = %if.then1158.i
  br i1 %cmp11893560.i, label %for.body1247.lr.ph.i, label %if.end1305.i

for.body1247.lr.ph.i:                             ; preds = %for.cond1245.preheader.i
  %1126 = load i32** %colindA.i466, align 8, !tbaa !0
  br label %for.body1247.i

for.cond1188.preheader.i:                         ; preds = %if.then1158.i
  br i1 %cmp11893560.i, label %for.body1190.i, label %if.end1305.i

for.body1190.i:                                   ; preds = %for.cond1188.preheader.i, %for.body1190.i
  %indvars.iv.i708 = phi i64 [ %indvars.iv.next.i714, %for.body1190.i ], [ 0, %for.cond1188.preheader.i ]
  %rsum111174.03568.i = phi double [ %add1236.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %rsum101173.03567.i = phi double [ %add1228.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %rsum011172.03566.i = phi double [ %add1220.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %rsum001171.03565.i = phi double [ %add1212.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %isum111170.03564.i = phi double [ %add1240.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %isum101169.03563.i = phi double [ %add1232.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %isum011168.03562.i = phi double [ %add1224.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %isum001167.03561.i = phi double [ %add1216.i, %for.body1190.i ], [ 0.000000e+00, %for.cond1188.preheader.i ]
  %1127 = trunc i64 %indvars.iv.i708 to i32
  %mul1191.i = shl nsw i32 %1127, 1
  %add11923423.i = or i32 %mul1191.i, 1
  %idxprom1193.i = sext i32 %mul1191.i to i64
  %arrayidx1194.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1193.i
  %1128 = load double* %arrayidx1194.i, align 8, !tbaa !4
  %idxprom1195.i = sext i32 %add11923423.i to i64
  %arrayidx1196.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1195.i
  %1129 = load double* %arrayidx1196.i, align 8, !tbaa !4
  %add.ptr1185.sum3424.i = add i64 %idxprom1193.i, %idx.ext1184.i
  %arrayidx1198.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %add.ptr1185.sum3424.i
  %1130 = load double* %arrayidx1198.i, align 8, !tbaa !4
  %add.ptr1185.sum3425.i = add i64 %idxprom1195.i, %idx.ext1184.i
  %arrayidx1200.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %add.ptr1185.sum3425.i
  %1131 = load double* %arrayidx1200.i, align 8, !tbaa !4
  %arrayidx1202.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1193.i
  %1132 = load double* %arrayidx1202.i, align 8, !tbaa !4
  %arrayidx1204.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1195.i
  %1133 = load double* %arrayidx1204.i, align 8, !tbaa !4
  %add.ptr850.sum3426.i = add i64 %idxprom1193.i, %idx.ext849.i
  %arrayidx1206.i709 = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3426.i
  %1134 = load double* %arrayidx1206.i709, align 8, !tbaa !4
  %add.ptr850.sum3427.i = add i64 %idxprom1195.i, %idx.ext849.i
  %arrayidx1208.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3427.i
  %1135 = load double* %arrayidx1208.i, align 8, !tbaa !4
  %mul1209.i710 = fmul double %1128, %1132
  %mul1210.i = fmul double %1129, %1133
  %sub1211.i = fsub double %mul1209.i710, %mul1210.i
  %add1212.i = fadd double %rsum001171.03565.i, %sub1211.i
  %mul1213.i = fmul double %1128, %1133
  %mul1214.i711 = fmul double %1129, %1132
  %add1215.i = fadd double %mul1214.i711, %mul1213.i
  %add1216.i = fadd double %isum001167.03561.i, %add1215.i
  %mul1217.i = fmul double %1128, %1134
  %mul1218.i = fmul double %1129, %1135
  %sub1219.i712 = fsub double %mul1217.i, %mul1218.i
  %add1220.i = fadd double %rsum011172.03566.i, %sub1219.i712
  %mul1221.i713 = fmul double %1128, %1135
  %mul1222.i = fmul double %1129, %1134
  %add1223.i = fadd double %mul1222.i, %mul1221.i713
  %add1224.i = fadd double %isum011168.03562.i, %add1223.i
  %mul1225.i = fmul double %1130, %1132
  %mul1226.i = fmul double %1131, %1133
  %sub1227.i = fsub double %mul1225.i, %mul1226.i
  %add1228.i = fadd double %rsum101173.03567.i, %sub1227.i
  %mul1229.i = fmul double %1130, %1133
  %mul1230.i = fmul double %1131, %1132
  %add1231.i = fadd double %mul1230.i, %mul1229.i
  %add1232.i = fadd double %isum101169.03563.i, %add1231.i
  %mul1233.i = fmul double %1130, %1134
  %mul1234.i = fmul double %1131, %1135
  %sub1235.i = fsub double %mul1233.i, %mul1234.i
  %add1236.i = fadd double %rsum111174.03568.i, %sub1235.i
  %mul1237.i = fmul double %1130, %1135
  %mul1238.i = fmul double %1131, %1134
  %add1239.i = fadd double %mul1238.i, %mul1237.i
  %add1240.i = fadd double %isum111170.03564.i, %add1239.i
  %indvars.iv.next.i714 = add i64 %indvars.iv.i708, 1
  %lftr.wideiv1223 = trunc i64 %indvars.iv.next.i714 to i32
  %exitcond1224 = icmp eq i32 %lftr.wideiv1223, %1124
  br i1 %exitcond1224, label %if.end1305.i, label %for.body1190.i

for.body1247.i:                                   ; preds = %for.body1247.i, %for.body1247.lr.ph.i
  %indvars.iv3950.i = phi i64 [ 0, %for.body1247.lr.ph.i ], [ %indvars.iv.next3951.i, %for.body1247.i ]
  %rsum111174.13586.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1297.i, %for.body1247.i ]
  %rsum101173.13585.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1289.i, %for.body1247.i ]
  %rsum011172.13584.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1281.i, %for.body1247.i ]
  %rsum001171.13583.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1273.i, %for.body1247.i ]
  %isum111170.13582.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1301.i, %for.body1247.i ]
  %isum101169.13581.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1293.i, %for.body1247.i ]
  %isum011168.13580.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1285.i, %for.body1247.i ]
  %isum001167.13579.i = phi double [ 0.000000e+00, %for.body1247.lr.ph.i ], [ %add1277.i, %for.body1247.i ]
  %1136 = trunc i64 %indvars.iv3950.i to i32
  %mul1248.i = shl nsw i32 %1136, 1
  %add12493418.i = or i32 %mul1248.i, 1
  %idxprom1250.i = sext i32 %mul1248.i to i64
  %arrayidx1251.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1250.i
  %1137 = load double* %arrayidx1251.i, align 8, !tbaa !4
  %idxprom1252.i = sext i32 %add12493418.i to i64
  %arrayidx1253.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1252.i
  %1138 = load double* %arrayidx1253.i, align 8, !tbaa !4
  %add.ptr1185.sum.i = add i64 %idxprom1250.i, %idx.ext1184.i
  %arrayidx1255.i715 = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %add.ptr1185.sum.i
  %1139 = load double* %arrayidx1255.i715, align 8, !tbaa !4
  %add.ptr1185.sum3419.i = add i64 %idxprom1252.i, %idx.ext1184.i
  %arrayidx1257.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %add.ptr1185.sum3419.i
  %1140 = load double* %arrayidx1257.i, align 8, !tbaa !4
  %arrayidx1259.i = getelementptr inbounds i32* %1126, i64 %indvars.iv3950.i
  %1141 = load i32* %arrayidx1259.i, align 4, !tbaa !3
  %mul1260.i = shl nsw i32 %1141, 1
  %add12613420.i = or i32 %mul1260.i, 1
  %idxprom1262.i = sext i32 %mul1260.i to i64
  %arrayidx1263.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1262.i
  %1142 = load double* %arrayidx1263.i, align 8, !tbaa !4
  %idxprom1264.i = sext i32 %add12613420.i to i64
  %arrayidx1265.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1264.i
  %1143 = load double* %arrayidx1265.i, align 8, !tbaa !4
  %add.ptr850.sum3421.i = add i64 %idxprom1262.i, %idx.ext849.i
  %arrayidx1267.i716 = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3421.i
  %1144 = load double* %arrayidx1267.i716, align 8, !tbaa !4
  %add.ptr850.sum3422.i = add i64 %idxprom1264.i, %idx.ext849.i
  %arrayidx1269.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3422.i
  %1145 = load double* %arrayidx1269.i, align 8, !tbaa !4
  %mul1270.i = fmul double %1137, %1142
  %mul1271.i = fmul double %1138, %1143
  %sub1272.i = fsub double %mul1270.i, %mul1271.i
  %add1273.i = fadd double %rsum001171.13583.i, %sub1272.i
  %mul1274.i = fmul double %1137, %1143
  %mul1275.i = fmul double %1138, %1142
  %add1276.i = fadd double %mul1275.i, %mul1274.i
  %add1277.i = fadd double %isum001167.13579.i, %add1276.i
  %mul1278.i = fmul double %1137, %1144
  %mul1279.i = fmul double %1138, %1145
  %sub1280.i = fsub double %mul1278.i, %mul1279.i
  %add1281.i = fadd double %rsum011172.13584.i, %sub1280.i
  %mul1282.i = fmul double %1137, %1145
  %mul1283.i = fmul double %1138, %1144
  %add1284.i = fadd double %mul1283.i, %mul1282.i
  %add1285.i = fadd double %isum011168.13580.i, %add1284.i
  %mul1286.i = fmul double %1139, %1142
  %mul1287.i = fmul double %1140, %1143
  %sub1288.i = fsub double %mul1286.i, %mul1287.i
  %add1289.i = fadd double %rsum101173.13585.i, %sub1288.i
  %mul1290.i = fmul double %1139, %1143
  %mul1291.i = fmul double %1140, %1142
  %add1292.i = fadd double %mul1291.i, %mul1290.i
  %add1293.i = fadd double %isum101169.13581.i, %add1292.i
  %mul1294.i = fmul double %1139, %1144
  %mul1295.i = fmul double %1140, %1145
  %sub1296.i = fsub double %mul1294.i, %mul1295.i
  %add1297.i = fadd double %rsum111174.13586.i, %sub1296.i
  %mul1298.i = fmul double %1139, %1145
  %mul1299.i = fmul double %1140, %1144
  %add1300.i717 = fadd double %mul1299.i, %mul1298.i
  %add1301.i = fadd double %isum111170.13582.i, %add1300.i717
  %indvars.iv.next3951.i = add i64 %indvars.iv3950.i, 1
  %lftr.wideiv1225 = trunc i64 %indvars.iv.next3951.i to i32
  %exitcond1226 = icmp eq i32 %lftr.wideiv1225, %1124
  br i1 %exitcond1226, label %if.end1305.i, label %for.body1247.i

if.end1305.i:                                     ; preds = %for.body1247.i, %for.body1190.i, %for.cond1188.preheader.i, %for.cond1245.preheader.i
  %isum001167.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1216.i, %for.body1190.i ], [ %add1277.i, %for.body1247.i ]
  %isum011168.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1224.i, %for.body1190.i ], [ %add1285.i, %for.body1247.i ]
  %isum101169.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1232.i, %for.body1190.i ], [ %add1293.i, %for.body1247.i ]
  %isum111170.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1240.i, %for.body1190.i ], [ %add1301.i, %for.body1247.i ]
  %rsum001171.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1212.i, %for.body1190.i ], [ %add1273.i, %for.body1247.i ]
  %rsum011172.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1220.i, %for.body1190.i ], [ %add1281.i, %for.body1247.i ]
  %rsum101173.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1228.i, %for.body1190.i ], [ %add1289.i, %for.body1247.i ]
  %rsum111174.2.i = phi double [ 0.000000e+00, %for.cond1245.preheader.i ], [ 0.000000e+00, %for.cond1188.preheader.i ], [ %add1236.i, %for.body1190.i ], [ %add1297.i, %for.body1247.i ]
  %1146 = load i32* %nrowY.i465, align 4, !tbaa !3
  %1147 = load i32* %nrowA.i463, align 4, !tbaa !3
  %cmp1306.i = icmp eq i32 %1146, %1147
  br i1 %cmp1306.i, label %if.then1307.i, label %if.else1336.i

if.then1307.i:                                    ; preds = %if.end1305.i
  %mul1308.i = shl nsw i32 %sub8553670.i, 1
  %add13093413.i = or i32 %mul1308.i, 1
  %idxprom1310.i = sext i32 %mul1308.i to i64
  %arrayidx1311.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1310.i
  %1148 = load double* %arrayidx1311.i, align 8, !tbaa !4
  %sub1312.i = fsub double %1148, %rsum001171.2.i
  store double %sub1312.i, double* %arrayidx1311.i, align 8, !tbaa !4
  %idxprom1313.i = sext i32 %add13093413.i to i64
  %arrayidx1314.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1313.i
  %1149 = load double* %arrayidx1314.i, align 8, !tbaa !4
  %sub1315.i = fsub double %1149, %isum001167.2.i
  store double %sub1315.i, double* %arrayidx1314.i, align 8, !tbaa !4
  %add.ptr853.sum3414.i = add i64 %idxprom1310.i, %idx.ext852.i
  %arrayidx1317.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3414.i
  %1150 = load double* %arrayidx1317.i, align 8, !tbaa !4
  %sub1318.i = fsub double %1150, %rsum011172.2.i
  store double %sub1318.i, double* %arrayidx1317.i, align 8, !tbaa !4
  %add.ptr853.sum3415.i = add i64 %idxprom1313.i, %idx.ext852.i
  %arrayidx1320.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3415.i
  %1151 = load double* %arrayidx1320.i, align 8, !tbaa !4
  %sub1321.i = fsub double %1151, %isum011168.2.i
  store double %sub1321.i, double* %arrayidx1320.i, align 8, !tbaa !4
  %add1322.i = add nsw i32 %mul1308.i, 2
  %add1323.i = add nsw i32 %add13093413.i, 2
  %idxprom1324.i = sext i32 %add1322.i to i64
  %arrayidx1325.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1324.i
  %1152 = load double* %arrayidx1325.i, align 8, !tbaa !4
  %sub1326.i = fsub double %1152, %rsum101173.2.i
  store double %sub1326.i, double* %arrayidx1325.i, align 8, !tbaa !4
  %idxprom1327.i = sext i32 %add1323.i to i64
  %arrayidx1328.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1327.i
  %1153 = load double* %arrayidx1328.i, align 8, !tbaa !4
  %sub1329.i = fsub double %1153, %isum101169.2.i
  store double %sub1329.i, double* %arrayidx1328.i, align 8, !tbaa !4
  %add.ptr853.sum3416.i = add i64 %idxprom1324.i, %idx.ext852.i
  %arrayidx1331.i718 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3416.i
  %1154 = load double* %arrayidx1331.i718, align 8, !tbaa !4
  %sub1332.i = fsub double %1154, %rsum111174.2.i
  store double %sub1332.i, double* %arrayidx1331.i718, align 8, !tbaa !4
  %add.ptr853.sum3417.i = add i64 %idxprom1327.i, %idx.ext852.i
  %arrayidx1334.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3417.i
  %1155 = load double* %arrayidx1334.i, align 8, !tbaa !4
  %sub1335.i = fsub double %1155, %isum111170.2.i
  store double %sub1335.i, double* %arrayidx1334.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else1336.i:                                    ; preds = %if.end1305.i
  %idxprom1337.i = sext i32 %sub8553670.i to i64
  %1156 = load i32** %rowindA.i467, align 8, !tbaa !0
  %arrayidx1338.i = getelementptr inbounds i32* %1156, i64 %idxprom1337.i
  %1157 = load i32* %arrayidx1338.i, align 4, !tbaa !3
  %mul1339.i = shl nsw i32 %1157, 1
  %add13403407.i = or i32 %mul1339.i, 1
  %idxprom1341.i = sext i32 %mul1339.i to i64
  %arrayidx1342.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1341.i
  %1158 = load double* %arrayidx1342.i, align 8, !tbaa !4
  %sub1343.i = fsub double %1158, %rsum001171.2.i
  store double %sub1343.i, double* %arrayidx1342.i, align 8, !tbaa !4
  %idxprom1344.i = sext i32 %add13403407.i to i64
  %arrayidx1345.i719 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1344.i
  %1159 = load double* %arrayidx1345.i719, align 8, !tbaa !4
  %sub1346.i = fsub double %1159, %isum001167.2.i
  store double %sub1346.i, double* %arrayidx1345.i719, align 8, !tbaa !4
  %add.ptr853.sum3408.i = add i64 %idxprom1341.i, %idx.ext852.i
  %arrayidx1348.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3408.i
  %1160 = load double* %arrayidx1348.i, align 8, !tbaa !4
  %sub1349.i = fsub double %1160, %rsum011172.2.i
  store double %sub1349.i, double* %arrayidx1348.i, align 8, !tbaa !4
  %add.ptr853.sum3409.i = add i64 %idxprom1344.i, %idx.ext852.i
  %arrayidx1351.i720 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3409.i
  %1161 = load double* %arrayidx1351.i720, align 8, !tbaa !4
  %sub1352.i = fsub double %1161, %isum011168.2.i
  store double %sub1352.i, double* %arrayidx1351.i720, align 8, !tbaa !4
  %add1353.i = add nsw i32 %1066, -1
  %idxprom1354.i = sext i32 %add1353.i to i64
  %arrayidx1355.i721 = getelementptr inbounds i32* %1156, i64 %idxprom1354.i
  %1162 = load i32* %arrayidx1355.i721, align 4, !tbaa !3
  %mul1356.i722 = shl nsw i32 %1162, 1
  %add13573410.i = or i32 %mul1356.i722, 1
  %idxprom1358.i = sext i32 %mul1356.i722 to i64
  %arrayidx1359.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1358.i
  %1163 = load double* %arrayidx1359.i, align 8, !tbaa !4
  %sub1360.i = fsub double %1163, %rsum101173.2.i
  store double %sub1360.i, double* %arrayidx1359.i, align 8, !tbaa !4
  %idxprom1361.i = sext i32 %add13573410.i to i64
  %arrayidx1362.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1361.i
  %1164 = load double* %arrayidx1362.i, align 8, !tbaa !4
  %sub1363.i = fsub double %1164, %isum101169.2.i
  store double %sub1363.i, double* %arrayidx1362.i, align 8, !tbaa !4
  %add.ptr853.sum3411.i = add i64 %idxprom1358.i, %idx.ext852.i
  %arrayidx1365.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3411.i
  %1165 = load double* %arrayidx1365.i, align 8, !tbaa !4
  %sub1366.i723 = fsub double %1165, %rsum111174.2.i
  store double %sub1366.i723, double* %arrayidx1365.i, align 8, !tbaa !4
  %add.ptr853.sum3412.i = add i64 %idxprom1361.i, %idx.ext852.i
  %arrayidx1368.i724 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3412.i
  %1166 = load double* %arrayidx1368.i724, align 8, !tbaa !4
  %sub1369.i725 = fsub double %1166, %isum111170.2.i
  store double %sub1369.i725, double* %arrayidx1368.i724, align 8, !tbaa !4
  br label %sw.epilog34

if.else1374.i:                                    ; preds = %for.end1155.i
  %sub1375.i = add nsw i32 %1066, -1
  %cmp1376.i = icmp eq i32 %irowA.1.lcssa.i707, %sub1375.i
  br i1 %cmp1376.i, label %if.then1377.i, label %sw.epilog34

if.then1377.i:                                    ; preds = %if.else1374.i
  %1167 = load i32* %ncolA.i460, align 4, !tbaa !3
  %1168 = load i32* %nrowX.i464, align 4, !tbaa !3
  %cmp1396.i = icmp eq i32 %1167, %1168
  %cmp13993596.i = icmp sgt i32 %1167, 0
  br i1 %cmp1396.i, label %for.cond1398.preheader.i, label %for.cond1435.preheader.i

for.cond1435.preheader.i:                         ; preds = %if.then1377.i
  br i1 %cmp13993596.i, label %for.body1437.lr.ph.i, label %if.end1475.i

for.body1437.lr.ph.i:                             ; preds = %for.cond1435.preheader.i
  %1169 = load i32** %colindA.i466, align 8, !tbaa !0
  br label %for.body1437.i

for.cond1398.preheader.i:                         ; preds = %if.then1377.i
  br i1 %cmp13993596.i, label %for.body1400.i, label %if.end1475.i

for.body1400.i:                                   ; preds = %for.cond1398.preheader.i, %for.body1400.i
  %indvars.iv3952.i = phi i64 [ %indvars.iv.next3953.i, %for.body1400.i ], [ 0, %for.cond1398.preheader.i ]
  %rsum011387.03600.i = phi double [ %add1426.i, %for.body1400.i ], [ 0.000000e+00, %for.cond1398.preheader.i ]
  %rsum001386.03599.i = phi double [ %add1418.i, %for.body1400.i ], [ 0.000000e+00, %for.cond1398.preheader.i ]
  %isum011385.03598.i = phi double [ %add1430.i, %for.body1400.i ], [ 0.000000e+00, %for.cond1398.preheader.i ]
  %isum001384.03597.i = phi double [ %add1422.i, %for.body1400.i ], [ 0.000000e+00, %for.cond1398.preheader.i ]
  %1170 = trunc i64 %indvars.iv3952.i to i32
  %mul1401.i = shl nsw i32 %1170, 1
  %add14023404.i = or i32 %mul1401.i, 1
  %idxprom1403.i = sext i32 %mul1401.i to i64
  %arrayidx1404.i726 = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1403.i
  %1171 = load double* %arrayidx1404.i726, align 8, !tbaa !4
  %idxprom1405.i = sext i32 %add14023404.i to i64
  %arrayidx1406.i727 = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1405.i
  %1172 = load double* %arrayidx1406.i727, align 8, !tbaa !4
  %arrayidx1408.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1403.i
  %1173 = load double* %arrayidx1408.i, align 8, !tbaa !4
  %arrayidx1410.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1405.i
  %1174 = load double* %arrayidx1410.i, align 8, !tbaa !4
  %add.ptr850.sum3405.i = add i64 %idxprom1403.i, %idx.ext849.i
  %arrayidx1412.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3405.i
  %1175 = load double* %arrayidx1412.i, align 8, !tbaa !4
  %add.ptr850.sum3406.i = add i64 %idxprom1405.i, %idx.ext849.i
  %arrayidx1414.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3406.i
  %1176 = load double* %arrayidx1414.i, align 8, !tbaa !4
  %mul1415.i = fmul double %1171, %1173
  %mul1416.i728 = fmul double %1172, %1174
  %sub1417.i729 = fsub double %mul1415.i, %mul1416.i728
  %add1418.i = fadd double %rsum001386.03599.i, %sub1417.i729
  %mul1419.i = fmul double %1171, %1174
  %mul1420.i730 = fmul double %1172, %1173
  %add1421.i = fadd double %mul1420.i730, %mul1419.i
  %add1422.i = fadd double %isum001384.03597.i, %add1421.i
  %mul1423.i = fmul double %1171, %1175
  %mul1424.i = fmul double %1172, %1176
  %sub1425.i = fsub double %mul1423.i, %mul1424.i
  %add1426.i = fadd double %rsum011387.03600.i, %sub1425.i
  %mul1427.i = fmul double %1171, %1176
  %mul1428.i731 = fmul double %1172, %1175
  %add1429.i732 = fadd double %mul1428.i731, %mul1427.i
  %add1430.i = fadd double %isum011385.03598.i, %add1429.i732
  %indvars.iv.next3953.i = add i64 %indvars.iv3952.i, 1
  %lftr.wideiv1227 = trunc i64 %indvars.iv.next3953.i to i32
  %exitcond1228 = icmp eq i32 %lftr.wideiv1227, %1167
  br i1 %exitcond1228, label %if.end1475.i, label %for.body1400.i

for.body1437.i:                                   ; preds = %for.body1437.i, %for.body1437.lr.ph.i
  %indvars.iv3954.i = phi i64 [ 0, %for.body1437.lr.ph.i ], [ %indvars.iv.next3955.i, %for.body1437.i ]
  %rsum011387.13611.i = phi double [ 0.000000e+00, %for.body1437.lr.ph.i ], [ %add1467.i, %for.body1437.i ]
  %rsum001386.13610.i = phi double [ 0.000000e+00, %for.body1437.lr.ph.i ], [ %add1459.i, %for.body1437.i ]
  %isum011385.13609.i = phi double [ 0.000000e+00, %for.body1437.lr.ph.i ], [ %add1471.i, %for.body1437.i ]
  %isum001384.13608.i = phi double [ 0.000000e+00, %for.body1437.lr.ph.i ], [ %add1463.i, %for.body1437.i ]
  %1177 = trunc i64 %indvars.iv3954.i to i32
  %mul1438.i = shl nsw i32 %1177, 1
  %add14393401.i = or i32 %mul1438.i, 1
  %idxprom1440.i = sext i32 %mul1438.i to i64
  %arrayidx1441.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1440.i
  %1178 = load double* %arrayidx1441.i, align 8, !tbaa !4
  %idxprom1442.i = sext i32 %add14393401.i to i64
  %arrayidx1443.i = getelementptr inbounds double* %rowA0.1.lcssa.i706, i64 %idxprom1442.i
  %1179 = load double* %arrayidx1443.i, align 8, !tbaa !4
  %arrayidx1445.i = getelementptr inbounds i32* %1169, i64 %indvars.iv3954.i
  %1180 = load i32* %arrayidx1445.i, align 4, !tbaa !3
  %mul1446.i = shl nsw i32 %1180, 1
  %add14473402.i = or i32 %mul1446.i, 1
  %idxprom1448.i = sext i32 %mul1446.i to i64
  %arrayidx1449.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1448.i
  %1181 = load double* %arrayidx1449.i, align 8, !tbaa !4
  %idxprom1450.i = sext i32 %add14473402.i to i64
  %arrayidx1451.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1450.i
  %1182 = load double* %arrayidx1451.i, align 8, !tbaa !4
  %add.ptr850.sum.i = add i64 %idxprom1448.i, %idx.ext849.i
  %arrayidx1453.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum.i
  %1183 = load double* %arrayidx1453.i, align 8, !tbaa !4
  %add.ptr850.sum3403.i = add i64 %idxprom1450.i, %idx.ext849.i
  %arrayidx1455.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %add.ptr850.sum3403.i
  %1184 = load double* %arrayidx1455.i, align 8, !tbaa !4
  %mul1456.i = fmul double %1178, %1181
  %mul1457.i = fmul double %1179, %1182
  %sub1458.i = fsub double %mul1456.i, %mul1457.i
  %add1459.i = fadd double %rsum001386.13610.i, %sub1458.i
  %mul1460.i = fmul double %1178, %1182
  %mul1461.i = fmul double %1179, %1181
  %add1462.i = fadd double %mul1461.i, %mul1460.i
  %add1463.i = fadd double %isum001384.13608.i, %add1462.i
  %mul1464.i = fmul double %1178, %1183
  %mul1465.i = fmul double %1179, %1184
  %sub1466.i = fsub double %mul1464.i, %mul1465.i
  %add1467.i = fadd double %rsum011387.13611.i, %sub1466.i
  %mul1468.i = fmul double %1178, %1184
  %mul1469.i = fmul double %1179, %1183
  %add1470.i = fadd double %mul1469.i, %mul1468.i
  %add1471.i = fadd double %isum011385.13609.i, %add1470.i
  %indvars.iv.next3955.i = add i64 %indvars.iv3954.i, 1
  %lftr.wideiv1229 = trunc i64 %indvars.iv.next3955.i to i32
  %exitcond1230 = icmp eq i32 %lftr.wideiv1229, %1167
  br i1 %exitcond1230, label %if.end1475.i, label %for.body1437.i

if.end1475.i:                                     ; preds = %for.body1437.i, %for.body1400.i, %for.cond1398.preheader.i, %for.cond1435.preheader.i
  %isum001384.2.i = phi double [ 0.000000e+00, %for.cond1435.preheader.i ], [ 0.000000e+00, %for.cond1398.preheader.i ], [ %add1422.i, %for.body1400.i ], [ %add1463.i, %for.body1437.i ]
  %isum011385.2.i = phi double [ 0.000000e+00, %for.cond1435.preheader.i ], [ 0.000000e+00, %for.cond1398.preheader.i ], [ %add1430.i, %for.body1400.i ], [ %add1471.i, %for.body1437.i ]
  %rsum001386.2.i = phi double [ 0.000000e+00, %for.cond1435.preheader.i ], [ 0.000000e+00, %for.cond1398.preheader.i ], [ %add1418.i, %for.body1400.i ], [ %add1459.i, %for.body1437.i ]
  %rsum011387.2.i = phi double [ 0.000000e+00, %for.cond1435.preheader.i ], [ 0.000000e+00, %for.cond1398.preheader.i ], [ %add1426.i, %for.body1400.i ], [ %add1467.i, %for.body1437.i ]
  %1185 = load i32* %nrowY.i465, align 4, !tbaa !3
  %1186 = load i32* %nrowA.i463, align 4, !tbaa !3
  %cmp1476.i = icmp eq i32 %1185, %1186
  br i1 %cmp1476.i, label %if.then1477.i, label %if.else1492.i

if.then1477.i:                                    ; preds = %if.end1475.i
  %mul1478.i = shl nsw i32 %irowA.1.lcssa.i707, 1
  %add14793398.i = or i32 %mul1478.i, 1
  %idxprom1480.i = sext i32 %mul1478.i to i64
  %arrayidx1481.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1480.i
  %1187 = load double* %arrayidx1481.i, align 8, !tbaa !4
  %sub1482.i = fsub double %1187, %rsum001386.2.i
  store double %sub1482.i, double* %arrayidx1481.i, align 8, !tbaa !4
  %idxprom1483.i = sext i32 %add14793398.i to i64
  %arrayidx1484.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1483.i
  %1188 = load double* %arrayidx1484.i, align 8, !tbaa !4
  %sub1485.i = fsub double %1188, %isum001384.2.i
  store double %sub1485.i, double* %arrayidx1484.i, align 8, !tbaa !4
  %add.ptr853.sum3399.i = add i64 %idxprom1480.i, %idx.ext852.i
  %arrayidx1487.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3399.i
  %1189 = load double* %arrayidx1487.i, align 8, !tbaa !4
  %sub1488.i = fsub double %1189, %rsum011387.2.i
  store double %sub1488.i, double* %arrayidx1487.i, align 8, !tbaa !4
  %add.ptr853.sum3400.i = add i64 %idxprom1483.i, %idx.ext852.i
  %arrayidx1490.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3400.i
  %1190 = load double* %arrayidx1490.i, align 8, !tbaa !4
  %sub1491.i = fsub double %1190, %isum011385.2.i
  store double %sub1491.i, double* %arrayidx1490.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else1492.i:                                    ; preds = %if.end1475.i
  %idxprom1493.i = sext i32 %irowA.1.lcssa.i707 to i64
  %1191 = load i32** %rowindA.i467, align 8, !tbaa !0
  %arrayidx1494.i = getelementptr inbounds i32* %1191, i64 %idxprom1493.i
  %1192 = load i32* %arrayidx1494.i, align 4, !tbaa !3
  %mul1495.i = shl nsw i32 %1192, 1
  %add14963396.i = or i32 %mul1495.i, 1
  %idxprom1497.i = sext i32 %mul1495.i to i64
  %arrayidx1498.i733 = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1497.i
  %1193 = load double* %arrayidx1498.i733, align 8, !tbaa !4
  %sub1499.i = fsub double %1193, %rsum001386.2.i
  store double %sub1499.i, double* %arrayidx1498.i733, align 8, !tbaa !4
  %idxprom1500.i = sext i32 %add14963396.i to i64
  %arrayidx1501.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1500.i
  %1194 = load double* %arrayidx1501.i, align 8, !tbaa !4
  %sub1502.i = fsub double %1194, %isum001384.2.i
  store double %sub1502.i, double* %arrayidx1501.i, align 8, !tbaa !4
  %add.ptr853.sum.i = add i64 %idxprom1497.i, %idx.ext852.i
  %arrayidx1504.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum.i
  %1195 = load double* %arrayidx1504.i, align 8, !tbaa !4
  %sub1505.i734 = fsub double %1195, %rsum011387.2.i
  store double %sub1505.i734, double* %arrayidx1504.i, align 8, !tbaa !4
  %add.ptr853.sum3397.i = add i64 %idxprom1500.i, %idx.ext852.i
  %arrayidx1507.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %add.ptr853.sum3397.i
  %1196 = load double* %arrayidx1507.i, align 8, !tbaa !4
  %sub1508.i = fsub double %1196, %isum011385.2.i
  store double %sub1508.i, double* %arrayidx1507.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else1512.i:                                    ; preds = %for.end844.i
  %sub1513.i = add nsw i32 %904, -1
  %cmp1514.i = icmp eq i32 %jcolX.0.lcssa.i672, %sub1513.i
  br i1 %cmp1514.i, label %if.then1515.i, label %sw.epilog34

if.then1515.i:                                    ; preds = %if.else1512.i
  %1197 = load double** %entA.i455, align 8, !tbaa !0
  %1198 = load i32* %nrowA.i463, align 4, !tbaa !3
  %sub15173745.i = add nsw i32 %1198, -2
  %cmp15183746.i = icmp sgt i32 %sub15173745.i, 0
  br i1 %cmp15183746.i, label %for.body1519.lr.ph.i, label %for.end1717.i

for.body1519.lr.ph.i:                             ; preds = %if.then1515.i
  %1199 = load i32* %ncolA.i460, align 4, !tbaa !3
  %mul1542.i = shl nsw i32 %1199, 1
  %idx.ext1543.i = sext i32 %mul1542.i to i64
  %add.ptr1544.sum.i = shl nsw i64 %idx.ext1543.i, 1
  %1200 = load i32* %nrowX.i464, align 4, !tbaa !3
  %cmp1548.i = icmp eq i32 %1199, %1200
  %1201 = load i32* %nrowY.i465, align 4, !tbaa !3
  %cmp1652.i = icmp eq i32 %1201, %1198
  %add.ptr1547.sum.i = add i64 %add.ptr1544.sum.i, %idx.ext1543.i
  %1202 = load i32** %rowindA.i467, align 8, !tbaa !0
  %cmp16003715.i = icmp sgt i32 %1199, 0
  %1203 = load i32** %colindA.i466, align 8, !tbaa !0
  br label %for.body1519.i

for.body1519.i:                                   ; preds = %if.end1711.i, %for.body1519.lr.ph.i
  %indvars.iv3978.i = phi i64 [ 0, %for.body1519.lr.ph.i ], [ %indvars.iv.next3979.i, %if.end1711.i ]
  %rowA0.23748.i = phi double* [ %1197, %for.body1519.lr.ph.i ], [ %add.ptr1714.i, %if.end1711.i ]
  %irowA.23747.i = phi i32 [ 0, %for.body1519.lr.ph.i ], [ %add1716.i, %if.end1711.i ]
  br i1 %cmp1548.i, label %for.cond1550.preheader.i, label %for.cond1599.preheader.i

for.cond1550.preheader.i:                         ; preds = %for.body1519.i
  br i1 %cmp16003715.i, label %for.body1552.i, label %if.end1651.i

for.cond1599.preheader.i:                         ; preds = %for.body1519.i
  br i1 %cmp16003715.i, label %for.body1601.i, label %if.end1651.i

for.body1552.i:                                   ; preds = %for.cond1550.preheader.i, %for.body1552.i
  %indvars.iv3974.i = phi i64 [ %indvars.iv.next3975.i, %for.body1552.i ], [ 0, %for.cond1550.preheader.i ]
  %rsum201533.03736.i = phi double [ %add1590.i, %for.body1552.i ], [ 0.000000e+00, %for.cond1550.preheader.i ]
  %rsum101532.03735.i = phi double [ %add1582.i, %for.body1552.i ], [ 0.000000e+00, %for.cond1550.preheader.i ]
  %rsum001531.03734.i = phi double [ %add1574.i, %for.body1552.i ], [ 0.000000e+00, %for.cond1550.preheader.i ]
  %isum201530.03733.i = phi double [ %add1594.i, %for.body1552.i ], [ 0.000000e+00, %for.cond1550.preheader.i ]
  %isum101529.03732.i = phi double [ %add1586.i, %for.body1552.i ], [ 0.000000e+00, %for.cond1550.preheader.i ]
  %isum001528.03731.i = phi double [ %add1578.i, %for.body1552.i ], [ 0.000000e+00, %for.cond1550.preheader.i ]
  %1204 = trunc i64 %indvars.iv3974.i to i32
  %mul1553.i = shl nsw i32 %1204, 1
  %add15543391.i = or i32 %mul1553.i, 1
  %idxprom1555.i = sext i32 %mul1553.i to i64
  %arrayidx1556.i = getelementptr inbounds double* %rowA0.23748.i, i64 %idxprom1555.i
  %1205 = load double* %arrayidx1556.i, align 8, !tbaa !4
  %idxprom1557.i = sext i32 %add15543391.i to i64
  %arrayidx1558.i = getelementptr inbounds double* %rowA0.23748.i, i64 %idxprom1557.i
  %1206 = load double* %arrayidx1558.i, align 8, !tbaa !4
  %add.ptr1544.sum3392.i = add i64 %idxprom1555.i, %idx.ext1543.i
  %arrayidx1560.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1544.sum3392.i
  %1207 = load double* %arrayidx1560.i, align 8, !tbaa !4
  %add.ptr1544.sum3393.i = add i64 %idxprom1557.i, %idx.ext1543.i
  %arrayidx1562.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1544.sum3393.i
  %1208 = load double* %arrayidx1562.i, align 8, !tbaa !4
  %add.ptr1547.sum3394.i = add i64 %idxprom1555.i, %add.ptr1544.sum.i
  %arrayidx1564.i735 = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1547.sum3394.i
  %1209 = load double* %arrayidx1564.i735, align 8, !tbaa !4
  %add.ptr1547.sum3395.i = add i64 %idxprom1557.i, %add.ptr1544.sum.i
  %arrayidx1566.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1547.sum3395.i
  %1210 = load double* %arrayidx1566.i, align 8, !tbaa !4
  %arrayidx1568.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1555.i
  %1211 = load double* %arrayidx1568.i, align 8, !tbaa !4
  %arrayidx1570.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1557.i
  %1212 = load double* %arrayidx1570.i, align 8, !tbaa !4
  %mul1571.i = fmul double %1205, %1211
  %mul1572.i = fmul double %1206, %1212
  %sub1573.i736 = fsub double %mul1571.i, %mul1572.i
  %add1574.i = fadd double %rsum001531.03734.i, %sub1573.i736
  %mul1575.i = fmul double %1205, %1212
  %mul1576.i = fmul double %1206, %1211
  %add1577.i = fadd double %mul1576.i, %mul1575.i
  %add1578.i = fadd double %isum001528.03731.i, %add1577.i
  %mul1579.i = fmul double %1207, %1211
  %mul1580.i = fmul double %1208, %1212
  %sub1581.i = fsub double %mul1579.i, %mul1580.i
  %add1582.i = fadd double %rsum101532.03735.i, %sub1581.i
  %mul1583.i = fmul double %1207, %1212
  %mul1584.i = fmul double %1208, %1211
  %add1585.i = fadd double %mul1584.i, %mul1583.i
  %add1586.i = fadd double %isum101529.03732.i, %add1585.i
  %mul1587.i = fmul double %1209, %1211
  %mul1588.i = fmul double %1210, %1212
  %sub1589.i = fsub double %mul1587.i, %mul1588.i
  %add1590.i = fadd double %rsum201533.03736.i, %sub1589.i
  %mul1591.i = fmul double %1209, %1212
  %mul1592.i = fmul double %1210, %1211
  %add1593.i = fadd double %mul1592.i, %mul1591.i
  %add1594.i = fadd double %isum201530.03733.i, %add1593.i
  %indvars.iv.next3975.i = add i64 %indvars.iv3974.i, 1
  %lftr.wideiv1245 = trunc i64 %indvars.iv.next3975.i to i32
  %exitcond1246 = icmp eq i32 %lftr.wideiv1245, %1199
  br i1 %exitcond1246, label %if.end1651.i, label %for.body1552.i

for.body1601.i:                                   ; preds = %for.cond1599.preheader.i, %for.body1601.i
  %indvars.iv3972.i = phi i64 [ %indvars.iv.next3973.i, %for.body1601.i ], [ 0, %for.cond1599.preheader.i ]
  %rsum201533.13721.i = phi double [ %add1643.i, %for.body1601.i ], [ 0.000000e+00, %for.cond1599.preheader.i ]
  %rsum101532.13720.i = phi double [ %add1635.i, %for.body1601.i ], [ 0.000000e+00, %for.cond1599.preheader.i ]
  %rsum001531.13719.i = phi double [ %add1627.i, %for.body1601.i ], [ 0.000000e+00, %for.cond1599.preheader.i ]
  %isum201530.13718.i = phi double [ %add1647.i, %for.body1601.i ], [ 0.000000e+00, %for.cond1599.preheader.i ]
  %isum101529.13717.i = phi double [ %add1639.i, %for.body1601.i ], [ 0.000000e+00, %for.cond1599.preheader.i ]
  %isum001528.13716.i = phi double [ %add1631.i, %for.body1601.i ], [ 0.000000e+00, %for.cond1599.preheader.i ]
  %1213 = trunc i64 %indvars.iv3972.i to i32
  %mul1602.i = shl nsw i32 %1213, 1
  %add16033385.i = or i32 %mul1602.i, 1
  %idxprom1604.i = sext i32 %mul1602.i to i64
  %arrayidx1605.i = getelementptr inbounds double* %rowA0.23748.i, i64 %idxprom1604.i
  %1214 = load double* %arrayidx1605.i, align 8, !tbaa !4
  %idxprom1606.i = sext i32 %add16033385.i to i64
  %arrayidx1607.i737 = getelementptr inbounds double* %rowA0.23748.i, i64 %idxprom1606.i
  %1215 = load double* %arrayidx1607.i737, align 8, !tbaa !4
  %add.ptr1544.sum3386.i = add i64 %idxprom1604.i, %idx.ext1543.i
  %arrayidx1609.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1544.sum3386.i
  %1216 = load double* %arrayidx1609.i, align 8, !tbaa !4
  %add.ptr1544.sum3387.i = add i64 %idxprom1606.i, %idx.ext1543.i
  %arrayidx1611.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1544.sum3387.i
  %1217 = load double* %arrayidx1611.i, align 8, !tbaa !4
  %add.ptr1547.sum3388.i = add i64 %idxprom1604.i, %add.ptr1544.sum.i
  %arrayidx1613.i738 = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1547.sum3388.i
  %1218 = load double* %arrayidx1613.i738, align 8, !tbaa !4
  %add.ptr1547.sum3389.i = add i64 %idxprom1606.i, %add.ptr1544.sum.i
  %arrayidx1615.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1547.sum3389.i
  %1219 = load double* %arrayidx1615.i, align 8, !tbaa !4
  %arrayidx1617.i = getelementptr inbounds i32* %1203, i64 %indvars.iv3972.i
  %1220 = load i32* %arrayidx1617.i, align 4, !tbaa !3
  %mul1618.i = shl nsw i32 %1220, 1
  %add16193390.i = or i32 %mul1618.i, 1
  %idxprom1620.i = sext i32 %mul1618.i to i64
  %arrayidx1621.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1620.i
  %1221 = load double* %arrayidx1621.i, align 8, !tbaa !4
  %idxprom1622.i = sext i32 %add16193390.i to i64
  %arrayidx1623.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1622.i
  %1222 = load double* %arrayidx1623.i, align 8, !tbaa !4
  %mul1624.i = fmul double %1214, %1221
  %mul1625.i = fmul double %1215, %1222
  %sub1626.i = fsub double %mul1624.i, %mul1625.i
  %add1627.i = fadd double %rsum001531.13719.i, %sub1626.i
  %mul1628.i = fmul double %1214, %1222
  %mul1629.i = fmul double %1215, %1221
  %add1630.i = fadd double %mul1629.i, %mul1628.i
  %add1631.i = fadd double %isum001528.13716.i, %add1630.i
  %mul1632.i739 = fmul double %1216, %1221
  %mul1633.i = fmul double %1217, %1222
  %sub1634.i = fsub double %mul1632.i739, %mul1633.i
  %add1635.i = fadd double %rsum101532.13720.i, %sub1634.i
  %mul1636.i = fmul double %1216, %1222
  %mul1637.i = fmul double %1217, %1221
  %add1638.i = fadd double %mul1637.i, %mul1636.i
  %add1639.i = fadd double %isum101529.13717.i, %add1638.i
  %mul1640.i740 = fmul double %1218, %1221
  %mul1641.i741 = fmul double %1219, %1222
  %sub1642.i = fsub double %mul1640.i740, %mul1641.i741
  %add1643.i = fadd double %rsum201533.13721.i, %sub1642.i
  %mul1644.i = fmul double %1218, %1222
  %mul1645.i = fmul double %1219, %1221
  %add1646.i = fadd double %mul1645.i, %mul1644.i
  %add1647.i = fadd double %isum201530.13718.i, %add1646.i
  %indvars.iv.next3973.i = add i64 %indvars.iv3972.i, 1
  %lftr.wideiv1243 = trunc i64 %indvars.iv.next3973.i to i32
  %exitcond1244 = icmp eq i32 %lftr.wideiv1243, %1199
  br i1 %exitcond1244, label %if.end1651.i, label %for.body1601.i

if.end1651.i:                                     ; preds = %for.body1552.i, %for.body1601.i, %for.cond1599.preheader.i, %for.cond1550.preheader.i
  %isum001528.2.i = phi double [ 0.000000e+00, %for.cond1599.preheader.i ], [ 0.000000e+00, %for.cond1550.preheader.i ], [ %add1631.i, %for.body1601.i ], [ %add1578.i, %for.body1552.i ]
  %isum101529.2.i = phi double [ 0.000000e+00, %for.cond1599.preheader.i ], [ 0.000000e+00, %for.cond1550.preheader.i ], [ %add1639.i, %for.body1601.i ], [ %add1586.i, %for.body1552.i ]
  %isum201530.2.i = phi double [ 0.000000e+00, %for.cond1599.preheader.i ], [ 0.000000e+00, %for.cond1550.preheader.i ], [ %add1647.i, %for.body1601.i ], [ %add1594.i, %for.body1552.i ]
  %rsum001531.2.i = phi double [ 0.000000e+00, %for.cond1599.preheader.i ], [ 0.000000e+00, %for.cond1550.preheader.i ], [ %add1627.i, %for.body1601.i ], [ %add1574.i, %for.body1552.i ]
  %rsum101532.2.i = phi double [ 0.000000e+00, %for.cond1599.preheader.i ], [ 0.000000e+00, %for.cond1550.preheader.i ], [ %add1635.i, %for.body1601.i ], [ %add1582.i, %for.body1552.i ]
  %rsum201533.2.i = phi double [ 0.000000e+00, %for.cond1599.preheader.i ], [ 0.000000e+00, %for.cond1550.preheader.i ], [ %add1643.i, %for.body1601.i ], [ %add1590.i, %for.body1552.i ]
  br i1 %cmp1652.i, label %if.then1653.i, label %if.else1678.i

if.then1653.i:                                    ; preds = %if.end1651.i
  %1223 = trunc i64 %indvars.iv3978.i to i32
  %mul1654.i = shl nsw i32 %1223, 1
  %add16553384.i = or i32 %mul1654.i, 1
  %idxprom1656.i = sext i32 %mul1654.i to i64
  %arrayidx1657.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1656.i
  %1224 = load double* %arrayidx1657.i, align 8, !tbaa !4
  %sub1658.i = fsub double %1224, %rsum001531.2.i
  store double %sub1658.i, double* %arrayidx1657.i, align 8, !tbaa !4
  %idxprom1659.i = sext i32 %add16553384.i to i64
  %arrayidx1660.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1659.i
  %1225 = load double* %arrayidx1660.i, align 8, !tbaa !4
  %sub1661.i = fsub double %1225, %isum001528.2.i
  store double %sub1661.i, double* %arrayidx1660.i, align 8, !tbaa !4
  %add1662.i = add nsw i32 %mul1654.i, 2
  %add1663.i = add nsw i32 %add16553384.i, 2
  %idxprom1664.i = sext i32 %add1662.i to i64
  %arrayidx1665.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1664.i
  %1226 = load double* %arrayidx1665.i, align 8, !tbaa !4
  %sub1666.i = fsub double %1226, %rsum101532.2.i
  store double %sub1666.i, double* %arrayidx1665.i, align 8, !tbaa !4
  %idxprom1667.i = sext i32 %add1663.i to i64
  %arrayidx1668.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1667.i
  %1227 = load double* %arrayidx1668.i, align 8, !tbaa !4
  %sub1669.i = fsub double %1227, %isum101529.2.i
  store double %sub1669.i, double* %arrayidx1668.i, align 8, !tbaa !4
  %add1670.i = add nsw i32 %mul1654.i, 4
  %add1671.i = add nsw i32 %add16553384.i, 4
  %idxprom1672.i = sext i32 %add1670.i to i64
  %arrayidx1673.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1672.i
  %1228 = load double* %arrayidx1673.i, align 8, !tbaa !4
  %sub1674.i = fsub double %1228, %rsum201533.2.i
  store double %sub1674.i, double* %arrayidx1673.i, align 8, !tbaa !4
  %idxprom1675.i = sext i32 %add1671.i to i64
  %arrayidx1676.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1675.i
  %1229 = load double* %arrayidx1676.i, align 8, !tbaa !4
  %sub1677.i = fsub double %1229, %isum201530.2.i
  store double %sub1677.i, double* %arrayidx1676.i, align 8, !tbaa !4
  br label %if.end1711.i

if.else1678.i:                                    ; preds = %if.end1651.i
  %arrayidx1680.i = getelementptr inbounds i32* %1202, i64 %indvars.iv3978.i
  %1230 = load i32* %arrayidx1680.i, align 4, !tbaa !3
  %mul1681.i = shl nsw i32 %1230, 1
  %add16823381.i = or i32 %mul1681.i, 1
  %idxprom1683.i = sext i32 %mul1681.i to i64
  %arrayidx1684.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1683.i
  %1231 = load double* %arrayidx1684.i, align 8, !tbaa !4
  %sub1685.i = fsub double %1231, %rsum001531.2.i
  store double %sub1685.i, double* %arrayidx1684.i, align 8, !tbaa !4
  %idxprom1686.i = sext i32 %add16823381.i to i64
  %arrayidx1687.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1686.i
  %1232 = load double* %arrayidx1687.i, align 8, !tbaa !4
  %sub1688.i = fsub double %1232, %isum001528.2.i
  store double %sub1688.i, double* %arrayidx1687.i, align 8, !tbaa !4
  %1233 = add nsw i64 %indvars.iv3978.i, 1
  %arrayidx1691.i = getelementptr inbounds i32* %1202, i64 %1233
  %1234 = load i32* %arrayidx1691.i, align 4, !tbaa !3
  %mul1692.i = shl nsw i32 %1234, 1
  %add16933382.i = or i32 %mul1692.i, 1
  %idxprom1694.i = sext i32 %mul1692.i to i64
  %arrayidx1695.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1694.i
  %1235 = load double* %arrayidx1695.i, align 8, !tbaa !4
  %sub1696.i = fsub double %1235, %rsum101532.2.i
  store double %sub1696.i, double* %arrayidx1695.i, align 8, !tbaa !4
  %idxprom1697.i = sext i32 %add16933382.i to i64
  %arrayidx1698.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1697.i
  %1236 = load double* %arrayidx1698.i, align 8, !tbaa !4
  %sub1699.i = fsub double %1236, %isum101529.2.i
  store double %sub1699.i, double* %arrayidx1698.i, align 8, !tbaa !4
  %1237 = add nsw i64 %indvars.iv3978.i, 2
  %arrayidx1702.i = getelementptr inbounds i32* %1202, i64 %1237
  %1238 = load i32* %arrayidx1702.i, align 4, !tbaa !3
  %mul1703.i = shl nsw i32 %1238, 1
  %add17043383.i = or i32 %mul1703.i, 1
  %idxprom1705.i = sext i32 %mul1703.i to i64
  %arrayidx1706.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1705.i
  %1239 = load double* %arrayidx1706.i, align 8, !tbaa !4
  %sub1707.i = fsub double %1239, %rsum201533.2.i
  store double %sub1707.i, double* %arrayidx1706.i, align 8, !tbaa !4
  %idxprom1708.i = sext i32 %add17043383.i to i64
  %arrayidx1709.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1708.i
  %1240 = load double* %arrayidx1709.i, align 8, !tbaa !4
  %sub1710.i = fsub double %1240, %isum201530.2.i
  store double %sub1710.i, double* %arrayidx1709.i, align 8, !tbaa !4
  br label %if.end1711.i

if.end1711.i:                                     ; preds = %if.else1678.i, %if.then1653.i
  %add.ptr1714.i = getelementptr inbounds double* %rowA0.23748.i, i64 %add.ptr1547.sum.i
  %indvars.iv.next3979.i = add i64 %indvars.iv3978.i, 3
  %add1716.i = add nsw i32 %irowA.23747.i, 3
  %1241 = trunc i64 %indvars.iv.next3979.i to i32
  %cmp1518.i = icmp slt i32 %1241, %sub15173745.i
  br i1 %cmp1518.i, label %for.body1519.i, label %for.end1717.i

for.end1717.i:                                    ; preds = %if.end1711.i, %if.then1515.i
  %rowA0.2.lcssa.i742 = phi double* [ %1197, %if.then1515.i ], [ %add.ptr1714.i, %if.end1711.i ]
  %irowA.2.lcssa.i743 = phi i32 [ 0, %if.then1515.i ], [ %add1716.i, %if.end1711.i ]
  %cmp1719.i = icmp eq i32 %irowA.2.lcssa.i743, %sub15173745.i
  br i1 %cmp1719.i, label %if.then1720.i, label %if.else1863.i

if.then1720.i:                                    ; preds = %for.end1717.i
  %1242 = load i32* %ncolA.i460, align 4, !tbaa !3
  %mul1739.i = shl nsw i32 %1242, 1
  %idx.ext1740.i = sext i32 %mul1739.i to i64
  %1243 = load i32* %nrowX.i464, align 4, !tbaa !3
  %cmp1742.i = icmp eq i32 %1242, %1243
  %cmp17453681.i = icmp sgt i32 %1242, 0
  br i1 %cmp1742.i, label %for.cond1744.preheader.i, label %for.cond1781.preheader.i

for.cond1781.preheader.i:                         ; preds = %if.then1720.i
  br i1 %cmp17453681.i, label %for.body1783.lr.ph.i, label %if.end1821.i

for.body1783.lr.ph.i:                             ; preds = %for.cond1781.preheader.i
  %1244 = load i32** %colindA.i466, align 8, !tbaa !0
  br label %for.body1783.i

for.cond1744.preheader.i:                         ; preds = %if.then1720.i
  br i1 %cmp17453681.i, label %for.body1746.i, label %if.end1821.i

for.body1746.i:                                   ; preds = %for.cond1744.preheader.i, %for.body1746.i
  %indvars.iv3964.i = phi i64 [ %indvars.iv.next3965.i, %for.body1746.i ], [ 0, %for.cond1744.preheader.i ]
  %rsum101730.03685.i = phi double [ %add1772.i, %for.body1746.i ], [ 0.000000e+00, %for.cond1744.preheader.i ]
  %rsum001729.03684.i = phi double [ %add1764.i, %for.body1746.i ], [ 0.000000e+00, %for.cond1744.preheader.i ]
  %isum101728.03683.i = phi double [ %add1776.i, %for.body1746.i ], [ 0.000000e+00, %for.cond1744.preheader.i ]
  %isum001727.03682.i = phi double [ %add1768.i, %for.body1746.i ], [ 0.000000e+00, %for.cond1744.preheader.i ]
  %1245 = trunc i64 %indvars.iv3964.i to i32
  %mul1747.i = shl nsw i32 %1245, 1
  %add17483378.i = or i32 %mul1747.i, 1
  %idxprom1749.i = sext i32 %mul1747.i to i64
  %arrayidx1750.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1749.i
  %1246 = load double* %arrayidx1750.i, align 8, !tbaa !4
  %idxprom1751.i = sext i32 %add17483378.i to i64
  %arrayidx1752.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1751.i
  %1247 = load double* %arrayidx1752.i, align 8, !tbaa !4
  %add.ptr1741.sum3379.i = add i64 %idxprom1749.i, %idx.ext1740.i
  %arrayidx1754.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %add.ptr1741.sum3379.i
  %1248 = load double* %arrayidx1754.i, align 8, !tbaa !4
  %add.ptr1741.sum3380.i = add i64 %idxprom1751.i, %idx.ext1740.i
  %arrayidx1756.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %add.ptr1741.sum3380.i
  %1249 = load double* %arrayidx1756.i, align 8, !tbaa !4
  %arrayidx1758.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1749.i
  %1250 = load double* %arrayidx1758.i, align 8, !tbaa !4
  %arrayidx1760.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1751.i
  %1251 = load double* %arrayidx1760.i, align 8, !tbaa !4
  %mul1761.i = fmul double %1246, %1250
  %mul1762.i = fmul double %1247, %1251
  %sub1763.i = fsub double %mul1761.i, %mul1762.i
  %add1764.i = fadd double %rsum001729.03684.i, %sub1763.i
  %mul1765.i = fmul double %1246, %1251
  %mul1766.i = fmul double %1247, %1250
  %add1767.i = fadd double %mul1766.i, %mul1765.i
  %add1768.i = fadd double %isum001727.03682.i, %add1767.i
  %mul1769.i = fmul double %1248, %1250
  %mul1770.i = fmul double %1249, %1251
  %sub1771.i = fsub double %mul1769.i, %mul1770.i
  %add1772.i = fadd double %rsum101730.03685.i, %sub1771.i
  %mul1773.i = fmul double %1248, %1251
  %mul1774.i = fmul double %1249, %1250
  %add1775.i = fadd double %mul1774.i, %mul1773.i
  %add1776.i = fadd double %isum101728.03683.i, %add1775.i
  %indvars.iv.next3965.i = add i64 %indvars.iv3964.i, 1
  %lftr.wideiv1235 = trunc i64 %indvars.iv.next3965.i to i32
  %exitcond1236 = icmp eq i32 %lftr.wideiv1235, %1242
  br i1 %exitcond1236, label %if.end1821.i, label %for.body1746.i

for.body1783.i:                                   ; preds = %for.body1783.i, %for.body1783.lr.ph.i
  %indvars.iv3966.i = phi i64 [ 0, %for.body1783.lr.ph.i ], [ %indvars.iv.next3967.i, %for.body1783.i ]
  %rsum101730.13696.i = phi double [ 0.000000e+00, %for.body1783.lr.ph.i ], [ %add1813.i, %for.body1783.i ]
  %rsum001729.13695.i = phi double [ 0.000000e+00, %for.body1783.lr.ph.i ], [ %add1805.i, %for.body1783.i ]
  %isum101728.13694.i = phi double [ 0.000000e+00, %for.body1783.lr.ph.i ], [ %add1817.i, %for.body1783.i ]
  %isum001727.13693.i = phi double [ 0.000000e+00, %for.body1783.lr.ph.i ], [ %add1809.i, %for.body1783.i ]
  %1252 = trunc i64 %indvars.iv3966.i to i32
  %mul1784.i = shl nsw i32 %1252, 1
  %add17853375.i = or i32 %mul1784.i, 1
  %idxprom1786.i = sext i32 %mul1784.i to i64
  %arrayidx1787.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1786.i
  %1253 = load double* %arrayidx1787.i, align 8, !tbaa !4
  %idxprom1788.i = sext i32 %add17853375.i to i64
  %arrayidx1789.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1788.i
  %1254 = load double* %arrayidx1789.i, align 8, !tbaa !4
  %add.ptr1741.sum.i = add i64 %idxprom1786.i, %idx.ext1740.i
  %arrayidx1791.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %add.ptr1741.sum.i
  %1255 = load double* %arrayidx1791.i, align 8, !tbaa !4
  %add.ptr1741.sum3376.i = add i64 %idxprom1788.i, %idx.ext1740.i
  %arrayidx1793.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %add.ptr1741.sum3376.i
  %1256 = load double* %arrayidx1793.i, align 8, !tbaa !4
  %arrayidx1795.i = getelementptr inbounds i32* %1244, i64 %indvars.iv3966.i
  %1257 = load i32* %arrayidx1795.i, align 4, !tbaa !3
  %mul1796.i = shl nsw i32 %1257, 1
  %add17973377.i = or i32 %mul1796.i, 1
  %idxprom1798.i = sext i32 %mul1796.i to i64
  %arrayidx1799.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1798.i
  %1258 = load double* %arrayidx1799.i, align 8, !tbaa !4
  %idxprom1800.i = sext i32 %add17973377.i to i64
  %arrayidx1801.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1800.i
  %1259 = load double* %arrayidx1801.i, align 8, !tbaa !4
  %mul1802.i = fmul double %1253, %1258
  %mul1803.i = fmul double %1254, %1259
  %sub1804.i = fsub double %mul1802.i, %mul1803.i
  %add1805.i = fadd double %rsum001729.13695.i, %sub1804.i
  %mul1806.i = fmul double %1253, %1259
  %mul1807.i = fmul double %1254, %1258
  %add1808.i = fadd double %mul1807.i, %mul1806.i
  %add1809.i = fadd double %isum001727.13693.i, %add1808.i
  %mul1810.i = fmul double %1255, %1258
  %mul1811.i = fmul double %1256, %1259
  %sub1812.i = fsub double %mul1810.i, %mul1811.i
  %add1813.i = fadd double %rsum101730.13696.i, %sub1812.i
  %mul1814.i = fmul double %1255, %1259
  %mul1815.i = fmul double %1256, %1258
  %add1816.i = fadd double %mul1815.i, %mul1814.i
  %add1817.i = fadd double %isum101728.13694.i, %add1816.i
  %indvars.iv.next3967.i = add i64 %indvars.iv3966.i, 1
  %lftr.wideiv1237 = trunc i64 %indvars.iv.next3967.i to i32
  %exitcond1238 = icmp eq i32 %lftr.wideiv1237, %1242
  br i1 %exitcond1238, label %if.end1821.i, label %for.body1783.i

if.end1821.i:                                     ; preds = %for.body1783.i, %for.body1746.i, %for.cond1744.preheader.i, %for.cond1781.preheader.i
  %isum001727.2.i = phi double [ 0.000000e+00, %for.cond1781.preheader.i ], [ 0.000000e+00, %for.cond1744.preheader.i ], [ %add1768.i, %for.body1746.i ], [ %add1809.i, %for.body1783.i ]
  %isum101728.2.i = phi double [ 0.000000e+00, %for.cond1781.preheader.i ], [ 0.000000e+00, %for.cond1744.preheader.i ], [ %add1776.i, %for.body1746.i ], [ %add1817.i, %for.body1783.i ]
  %rsum001729.2.i = phi double [ 0.000000e+00, %for.cond1781.preheader.i ], [ 0.000000e+00, %for.cond1744.preheader.i ], [ %add1764.i, %for.body1746.i ], [ %add1805.i, %for.body1783.i ]
  %rsum101730.2.i = phi double [ 0.000000e+00, %for.cond1781.preheader.i ], [ 0.000000e+00, %for.cond1744.preheader.i ], [ %add1772.i, %for.body1746.i ], [ %add1813.i, %for.body1783.i ]
  %1260 = load i32* %nrowY.i465, align 4, !tbaa !3
  %cmp1822.i = icmp eq i32 %1260, %1198
  br i1 %cmp1822.i, label %if.then1823.i, label %if.else1840.i

if.then1823.i:                                    ; preds = %if.end1821.i
  %mul1824.i = shl nsw i32 %sub15173745.i, 1
  %add18253374.i = or i32 %mul1824.i, 1
  %idxprom1826.i = sext i32 %mul1824.i to i64
  %arrayidx1827.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1826.i
  %1261 = load double* %arrayidx1827.i, align 8, !tbaa !4
  %sub1828.i = fsub double %1261, %rsum001729.2.i
  store double %sub1828.i, double* %arrayidx1827.i, align 8, !tbaa !4
  %idxprom1829.i = sext i32 %add18253374.i to i64
  %arrayidx1830.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1829.i
  %1262 = load double* %arrayidx1830.i, align 8, !tbaa !4
  %sub1831.i = fsub double %1262, %isum001727.2.i
  store double %sub1831.i, double* %arrayidx1830.i, align 8, !tbaa !4
  %add1832.i = add nsw i32 %mul1824.i, 2
  %add1833.i = add nsw i32 %add18253374.i, 2
  %idxprom1834.i = sext i32 %add1832.i to i64
  %arrayidx1835.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1834.i
  %1263 = load double* %arrayidx1835.i, align 8, !tbaa !4
  %sub1836.i = fsub double %1263, %rsum101730.2.i
  store double %sub1836.i, double* %arrayidx1835.i, align 8, !tbaa !4
  %idxprom1837.i = sext i32 %add1833.i to i64
  %arrayidx1838.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1837.i
  %1264 = load double* %arrayidx1838.i, align 8, !tbaa !4
  %sub1839.i = fsub double %1264, %isum101728.2.i
  store double %sub1839.i, double* %arrayidx1838.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else1840.i:                                    ; preds = %if.end1821.i
  %idxprom1841.i = sext i32 %sub15173745.i to i64
  %1265 = load i32** %rowindA.i467, align 8, !tbaa !0
  %arrayidx1842.i = getelementptr inbounds i32* %1265, i64 %idxprom1841.i
  %1266 = load i32* %arrayidx1842.i, align 4, !tbaa !3
  %mul1843.i = shl nsw i32 %1266, 1
  %add18443372.i = or i32 %mul1843.i, 1
  %idxprom1845.i = sext i32 %mul1843.i to i64
  %arrayidx1846.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1845.i
  %1267 = load double* %arrayidx1846.i, align 8, !tbaa !4
  %sub1847.i = fsub double %1267, %rsum001729.2.i
  store double %sub1847.i, double* %arrayidx1846.i, align 8, !tbaa !4
  %idxprom1848.i = sext i32 %add18443372.i to i64
  %arrayidx1849.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1848.i
  %1268 = load double* %arrayidx1849.i, align 8, !tbaa !4
  %sub1850.i = fsub double %1268, %isum001727.2.i
  store double %sub1850.i, double* %arrayidx1849.i, align 8, !tbaa !4
  %add1851.i = add nsw i32 %1198, -1
  %idxprom1852.i = sext i32 %add1851.i to i64
  %arrayidx1853.i = getelementptr inbounds i32* %1265, i64 %idxprom1852.i
  %1269 = load i32* %arrayidx1853.i, align 4, !tbaa !3
  %mul1854.i = shl nsw i32 %1269, 1
  %add18553373.i = or i32 %mul1854.i, 1
  %idxprom1856.i = sext i32 %mul1854.i to i64
  %arrayidx1857.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1856.i
  %1270 = load double* %arrayidx1857.i, align 8, !tbaa !4
  %sub1858.i = fsub double %1270, %rsum101730.2.i
  store double %sub1858.i, double* %arrayidx1857.i, align 8, !tbaa !4
  %idxprom1859.i = sext i32 %add18553373.i to i64
  %arrayidx1860.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1859.i
  %1271 = load double* %arrayidx1860.i, align 8, !tbaa !4
  %sub1861.i = fsub double %1271, %isum101728.2.i
  store double %sub1861.i, double* %arrayidx1860.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else1863.i:                                    ; preds = %for.end1717.i
  %sub1864.i = add nsw i32 %1198, -1
  %cmp1865.i = icmp eq i32 %irowA.2.lcssa.i743, %sub1864.i
  br i1 %cmp1865.i, label %if.then1866.i, label %sw.epilog34

if.then1866.i:                                    ; preds = %if.else1863.i
  %1272 = load i32* %ncolA.i460, align 4, !tbaa !3
  %1273 = load i32* %nrowX.i464, align 4, !tbaa !3
  %cmp1881.i = icmp eq i32 %1272, %1273
  %cmp18843702.i = icmp sgt i32 %1272, 0
  br i1 %cmp1881.i, label %for.cond1883.preheader.i, label %for.cond1908.preheader.i

for.cond1908.preheader.i:                         ; preds = %if.then1866.i
  br i1 %cmp18843702.i, label %for.body1910.lr.ph.i, label %if.end1936.i

for.body1910.lr.ph.i:                             ; preds = %for.cond1908.preheader.i
  %1274 = load i32** %colindA.i466, align 8, !tbaa !0
  br label %for.body1910.i

for.cond1883.preheader.i:                         ; preds = %if.then1866.i
  br i1 %cmp18843702.i, label %for.body1885.i, label %if.end1936.i

for.body1885.i:                                   ; preds = %for.cond1883.preheader.i, %for.body1885.i
  %indvars.iv3968.i = phi i64 [ %indvars.iv.next3969.i, %for.body1885.i ], [ 0, %for.cond1883.preheader.i ]
  %rsum001872.03705.i = phi double [ %add1899.i, %for.body1885.i ], [ 0.000000e+00, %for.cond1883.preheader.i ]
  %isum001871.03704.i = phi double [ %add1903.i, %for.body1885.i ], [ 0.000000e+00, %for.cond1883.preheader.i ]
  %1275 = trunc i64 %indvars.iv3968.i to i32
  %mul1886.i = shl nsw i32 %1275, 1
  %add18873371.i = or i32 %mul1886.i, 1
  %idxprom1888.i = sext i32 %mul1886.i to i64
  %arrayidx1889.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1888.i
  %1276 = load double* %arrayidx1889.i, align 8, !tbaa !4
  %idxprom1890.i = sext i32 %add18873371.i to i64
  %arrayidx1891.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1890.i
  %1277 = load double* %arrayidx1891.i, align 8, !tbaa !4
  %arrayidx1893.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1888.i
  %1278 = load double* %arrayidx1893.i, align 8, !tbaa !4
  %arrayidx1895.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1890.i
  %1279 = load double* %arrayidx1895.i, align 8, !tbaa !4
  %mul1896.i = fmul double %1276, %1278
  %mul1897.i = fmul double %1277, %1279
  %sub1898.i = fsub double %mul1896.i, %mul1897.i
  %add1899.i = fadd double %rsum001872.03705.i, %sub1898.i
  %mul1900.i = fmul double %1276, %1279
  %mul1901.i = fmul double %1277, %1278
  %add1902.i = fadd double %mul1901.i, %mul1900.i
  %add1903.i = fadd double %isum001871.03704.i, %add1902.i
  %indvars.iv.next3969.i = add i64 %indvars.iv3968.i, 1
  %lftr.wideiv1239 = trunc i64 %indvars.iv.next3969.i to i32
  %exitcond1240 = icmp eq i32 %lftr.wideiv1239, %1272
  br i1 %exitcond1240, label %if.end1936.i, label %for.body1885.i

for.body1910.i:                                   ; preds = %for.body1910.i, %for.body1910.lr.ph.i
  %indvars.iv3970.i = phi i64 [ 0, %for.body1910.lr.ph.i ], [ %indvars.iv.next3971.i, %for.body1910.i ]
  %rsum001872.13712.i = phi double [ 0.000000e+00, %for.body1910.lr.ph.i ], [ %add1928.i, %for.body1910.i ]
  %isum001871.13711.i = phi double [ 0.000000e+00, %for.body1910.lr.ph.i ], [ %add1932.i, %for.body1910.i ]
  %1280 = trunc i64 %indvars.iv3970.i to i32
  %mul1911.i = shl nsw i32 %1280, 1
  %add19123369.i = or i32 %mul1911.i, 1
  %idxprom1913.i = sext i32 %mul1911.i to i64
  %arrayidx1914.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1913.i
  %1281 = load double* %arrayidx1914.i, align 8, !tbaa !4
  %idxprom1915.i = sext i32 %add19123369.i to i64
  %arrayidx1916.i = getelementptr inbounds double* %rowA0.2.lcssa.i742, i64 %idxprom1915.i
  %1282 = load double* %arrayidx1916.i, align 8, !tbaa !4
  %arrayidx1918.i = getelementptr inbounds i32* %1274, i64 %indvars.iv3970.i
  %1283 = load i32* %arrayidx1918.i, align 4, !tbaa !3
  %mul1919.i = shl nsw i32 %1283, 1
  %add19203370.i = or i32 %mul1919.i, 1
  %idxprom1921.i = sext i32 %mul1919.i to i64
  %arrayidx1922.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1921.i
  %1284 = load double* %arrayidx1922.i, align 8, !tbaa !4
  %idxprom1923.i = sext i32 %add19203370.i to i64
  %arrayidx1924.i = getelementptr inbounds double* %colX0.0.lcssa.i670, i64 %idxprom1923.i
  %1285 = load double* %arrayidx1924.i, align 8, !tbaa !4
  %mul1925.i = fmul double %1281, %1284
  %mul1926.i = fmul double %1282, %1285
  %sub1927.i = fsub double %mul1925.i, %mul1926.i
  %add1928.i = fadd double %rsum001872.13712.i, %sub1927.i
  %mul1929.i = fmul double %1281, %1285
  %mul1930.i = fmul double %1282, %1284
  %add1931.i = fadd double %mul1930.i, %mul1929.i
  %add1932.i = fadd double %isum001871.13711.i, %add1931.i
  %indvars.iv.next3971.i = add i64 %indvars.iv3970.i, 1
  %lftr.wideiv1241 = trunc i64 %indvars.iv.next3971.i to i32
  %exitcond1242 = icmp eq i32 %lftr.wideiv1241, %1272
  br i1 %exitcond1242, label %if.end1936.i, label %for.body1910.i

if.end1936.i:                                     ; preds = %for.body1910.i, %for.body1885.i, %for.cond1883.preheader.i, %for.cond1908.preheader.i
  %isum001871.2.i = phi double [ 0.000000e+00, %for.cond1908.preheader.i ], [ 0.000000e+00, %for.cond1883.preheader.i ], [ %add1903.i, %for.body1885.i ], [ %add1932.i, %for.body1910.i ]
  %rsum001872.2.i = phi double [ 0.000000e+00, %for.cond1908.preheader.i ], [ 0.000000e+00, %for.cond1883.preheader.i ], [ %add1899.i, %for.body1885.i ], [ %add1928.i, %for.body1910.i ]
  %1286 = load i32* %nrowY.i465, align 4, !tbaa !3
  %cmp1937.i = icmp eq i32 %1286, %1198
  br i1 %cmp1937.i, label %if.then1938.i, label %if.else1947.i

if.then1938.i:                                    ; preds = %if.end1936.i
  %mul1939.i = shl nsw i32 %irowA.2.lcssa.i743, 1
  %add19403368.i = or i32 %mul1939.i, 1
  %idxprom1941.i = sext i32 %mul1939.i to i64
  %arrayidx1942.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1941.i
  %1287 = load double* %arrayidx1942.i, align 8, !tbaa !4
  %sub1943.i = fsub double %1287, %rsum001872.2.i
  store double %sub1943.i, double* %arrayidx1942.i, align 8, !tbaa !4
  %idxprom1944.i = sext i32 %add19403368.i to i64
  %arrayidx1945.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1944.i
  %1288 = load double* %arrayidx1945.i, align 8, !tbaa !4
  %sub1946.i = fsub double %1288, %isum001871.2.i
  store double %sub1946.i, double* %arrayidx1945.i, align 8, !tbaa !4
  br label %sw.epilog34

if.else1947.i:                                    ; preds = %if.end1936.i
  %idxprom1948.i = sext i32 %irowA.2.lcssa.i743 to i64
  %1289 = load i32** %rowindA.i467, align 8, !tbaa !0
  %arrayidx1949.i = getelementptr inbounds i32* %1289, i64 %idxprom1948.i
  %1290 = load i32* %arrayidx1949.i, align 4, !tbaa !3
  %mul1950.i = shl nsw i32 %1290, 1
  %add19513367.i = or i32 %mul1950.i, 1
  %idxprom1952.i = sext i32 %mul1950.i to i64
  %arrayidx1953.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1952.i
  %1291 = load double* %arrayidx1953.i, align 8, !tbaa !4
  %sub1954.i = fsub double %1291, %rsum001872.2.i
  store double %sub1954.i, double* %arrayidx1953.i, align 8, !tbaa !4
  %idxprom1955.i = sext i32 %add19513367.i to i64
  %arrayidx1956.i = getelementptr inbounds double* %colY0.0.lcssa.i671, i64 %idxprom1955.i
  %1292 = load double* %arrayidx1956.i, align 8, !tbaa !4
  %sub1957.i = fsub double %1292, %isum001871.2.i
  store double %sub1957.i, double* %arrayidx1956.i, align 8, !tbaa !4
  br label %sw.epilog34

sw.bb24:                                          ; preds = %sw.bb20
  %1293 = bitcast double** %entA.i744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1293) #4
  %1294 = bitcast double** %entX.i745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1294) #4
  %1295 = bitcast double** %entY.i746 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1295) #4
  %1296 = bitcast i32* %inc1.i747 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1296) #4
  %1297 = bitcast i32* %inc2.i748 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1297) #4
  %1298 = bitcast i32* %ncolA.i749 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1298) #4
  %1299 = bitcast i32* %ncolX.i750 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1299) #4
  %1300 = bitcast i32* %ncolY.i751 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1300) #4
  %1301 = bitcast i32* %nentA.i752 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1301) #4
  %1302 = bitcast i32* %nrowA.i753 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1302) #4
  %1303 = bitcast i32* %nrowX.i754 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1303) #4
  %1304 = bitcast i32* %nrowY.i755 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1304) #4
  %1305 = bitcast i32** %colindA.i756 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1305) #4
  %1306 = bitcast i32** %indices.i757 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1306) #4
  %1307 = bitcast i32** %rowindA.i758 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1307) #4
  %1308 = bitcast i32** %sizes.i759 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1308) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i755, i32* %ncolY.i751, i32* %inc1.i747, i32* %inc2.i748, double** %entY.i746) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i754, i32* %ncolX.i750, i32* %inc1.i747, i32* %inc2.i748, double** %entX.i745) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i753, i32* %nentA.i752, i32** %sizes.i759, i32** %indices.i757, double** %entA.i744) #5
  %ncol.i760 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %1309 = load i32* %ncol.i760, align 4, !tbaa !3
  store i32 %1309, i32* %ncolA.i749, align 4, !tbaa !3
  %1310 = load i32* %nrowX.i754, align 4, !tbaa !3
  %cmp.i761 = icmp eq i32 %1309, %1310
  br i1 %cmp.i761, label %if.else.i763, label %if.then.i762

if.then.i762:                                     ; preds = %sw.bb24
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i749, i32** %colindA.i756) #5
  br label %if.end.i765

if.else.i763:                                     ; preds = %sw.bb24
  store i32* null, i32** %colindA.i756, align 8, !tbaa !0
  br label %if.end.i765

if.end.i765:                                      ; preds = %if.else.i763, %if.then.i762
  %1311 = load i32* %nrowA.i753, align 4, !tbaa !3
  %1312 = load i32* %nrowY.i755, align 4, !tbaa !3
  %cmp1.i764 = icmp eq i32 %1311, %1312
  br i1 %cmp1.i764, label %if.else3.i767, label %if.then2.i766

if.then2.i766:                                    ; preds = %if.end.i765
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i753, i32** %rowindA.i758) #5
  br label %if.end4.i768

if.else3.i767:                                    ; preds = %if.end.i765
  store i32* null, i32** %rowindA.i758, align 8, !tbaa !0
  br label %if.end4.i768

if.end4.i768:                                     ; preds = %if.else3.i767, %if.then2.i766
  %1313 = load double** %entX.i745, align 8, !tbaa !0
  %1314 = load double** %entY.i746, align 8, !tbaa !0
  %1315 = load i32* %ncolX.i750, align 4, !tbaa !3
  %sub798.i = add nsw i32 %1315, -2
  %cmp5799.i = icmp sgt i32 %sub798.i, 0
  br i1 %cmp5799.i, label %for.body.lr.ph.i778, label %for.end184.i

for.body.lr.ph.i778:                              ; preds = %if.end4.i768
  %1316 = load i32* %nrowX.i754, align 4, !tbaa !3
  %mul.i769 = shl nsw i32 %1316, 1
  %idx.ext.i770 = sext i32 %mul.i769 to i64
  %add.ptr.sum.i771 = shl nsw i64 %idx.ext.i770, 1
  %1317 = load i32* %nrowY.i755, align 4, !tbaa !3
  %mul9.i772 = shl nsw i32 %1317, 1
  %idx.ext10.i773 = sext i32 %mul9.i772 to i64
  %add.ptr11.sum.i774 = shl nsw i64 %idx.ext10.i773, 1
  %1318 = load i32* %nrowA.i753, align 4, !tbaa !3
  %cmp16794.i = icmp sgt i32 %1318, 0
  %add.ptr8.sum.i775 = add i64 %add.ptr.sum.i771, %idx.ext.i770
  %add.ptr14.sum.i776 = add i64 %add.ptr11.sum.i774, %idx.ext10.i773
  %1319 = load i32** %sizes.i759, align 8, !tbaa !0
  %1320 = load i32* %ncolA.i749, align 4, !tbaa !3
  %cmp20.i777 = icmp eq i32 %1320, %1316
  %cmp144.i = icmp eq i32 %1318, %1317
  %1321 = load i32** %rowindA.i758, align 8, !tbaa !0
  %1322 = load double** %entA.i744, align 8, !tbaa !0
  %1323 = load i32** %indices.i757, align 8, !tbaa !0
  %1324 = load i32** %colindA.i756, align 8, !tbaa !0
  br label %for.body.i779

for.body.i779:                                    ; preds = %for.end175.i, %for.body.lr.ph.i778
  %jcolX.0804.i = phi i32 [ 0, %for.body.lr.ph.i778 ], [ %add183.i829, %for.end175.i ]
  %colY0.0802.i = phi double* [ %1314, %for.body.lr.ph.i778 ], [ %add.ptr181.i, %for.end175.i ]
  %colX0.0800.i = phi double* [ %1313, %for.body.lr.ph.i778 ], [ %add.ptr178.i, %for.end175.i ]
  br i1 %cmp16794.i, label %for.body17.i, label %for.end175.i

for.body17.i:                                     ; preds = %for.body.i779, %for.inc173.i
  %indvars.iv829.i = phi i64 [ %indvars.iv.next830.i, %for.inc173.i ], [ 0, %for.body.i779 ]
  %kk.0797.i = phi i32 [ %kk.4.i828, %for.inc173.i ], [ 0, %for.body.i779 ]
  %arrayidx.i780 = getelementptr inbounds i32* %1319, i64 %indvars.iv829.i
  %1325 = load i32* %arrayidx.i780, align 4, !tbaa !3
  %cmp18.i = icmp sgt i32 %1325, 0
  br i1 %cmp18.i, label %if.then19.i, label %for.inc173.i

if.then19.i:                                      ; preds = %for.body17.i
  %1326 = sext i32 %kk.0797.i to i64
  br i1 %cmp20.i777, label %for.body24.i802, label %for.body82.i

for.body24.i802:                                  ; preds = %if.then19.i, %for.body24.i802
  %indvars.iv826.i = phi i64 [ %indvars.iv.next827.i, %for.body24.i802 ], [ %1326, %if.then19.i ]
  %ii.0785.i = phi i32 [ %inc.i801, %for.body24.i802 ], [ 0, %if.then19.i ]
  %rsum2.0784.i = phi double [ %add73.i, %for.body24.i802 ], [ 0.000000e+00, %if.then19.i ]
  %rsum1.0783.i = phi double [ %add65.i, %for.body24.i802 ], [ 0.000000e+00, %if.then19.i ]
  %rsum0.0782.i = phi double [ %add57.i, %for.body24.i802 ], [ 0.000000e+00, %if.then19.i ]
  %isum2.0781.i = phi double [ %add77.i, %for.body24.i802 ], [ 0.000000e+00, %if.then19.i ]
  %isum1.0780.i = phi double [ %add69.i, %for.body24.i802 ], [ 0.000000e+00, %if.then19.i ]
  %isum0.0779.i = phi double [ %add61.i, %for.body24.i802 ], [ 0.000000e+00, %if.then19.i ]
  %1327 = trunc i64 %indvars.iv826.i to i32
  %mul25.i = shl nsw i32 %1327, 1
  %idxprom26.i781 = sext i32 %mul25.i to i64
  %arrayidx27.i782 = getelementptr inbounds double* %1322, i64 %idxprom26.i781
  %1328 = load double* %arrayidx27.i782, align 8, !tbaa !4
  %add705.i = or i32 %mul25.i, 1
  %idxprom29.i = sext i32 %add705.i to i64
  %arrayidx30.i783 = getelementptr inbounds double* %1322, i64 %idxprom29.i
  %1329 = load double* %arrayidx30.i783, align 8, !tbaa !4
  %arrayidx32.i784 = getelementptr inbounds i32* %1323, i64 %indvars.iv826.i
  %1330 = load i32* %arrayidx32.i784, align 4, !tbaa !3
  %mul33.i = shl nsw i32 %1330, 1
  %idxprom34.i = sext i32 %mul33.i to i64
  %arrayidx35.i785 = getelementptr inbounds double* %colX0.0800.i, i64 %idxprom34.i
  %1331 = load double* %arrayidx35.i785, align 8, !tbaa !4
  %add37706.i = or i32 %mul33.i, 1
  %idxprom38.i786 = sext i32 %add37706.i to i64
  %arrayidx39.i787 = getelementptr inbounds double* %colX0.0800.i, i64 %idxprom38.i786
  %1332 = load double* %arrayidx39.i787, align 8, !tbaa !4
  %add.ptr.sum707.i = add i64 %idxprom34.i, %idx.ext.i770
  %arrayidx42.i788 = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr.sum707.i
  %1333 = load double* %arrayidx42.i788, align 8, !tbaa !4
  %add.ptr.sum708.i = add i64 %idxprom38.i786, %idx.ext.i770
  %arrayidx46.i789 = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr.sum708.i
  %1334 = load double* %arrayidx46.i789, align 8, !tbaa !4
  %add.ptr8.sum709.i = add i64 %idxprom34.i, %add.ptr.sum.i771
  %arrayidx49.i = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr8.sum709.i
  %1335 = load double* %arrayidx49.i, align 8, !tbaa !4
  %add.ptr8.sum710.i = add i64 %idxprom38.i786, %add.ptr.sum.i771
  %arrayidx53.i = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr8.sum710.i
  %1336 = load double* %arrayidx53.i, align 8, !tbaa !4
  %mul54.i790 = fmul double %1328, %1331
  %mul55.i = fmul double %1329, %1332
  %sub56.i = fsub double %mul54.i790, %mul55.i
  %add57.i = fadd double %rsum0.0782.i, %sub56.i
  %mul58.i791 = fmul double %1328, %1332
  %mul59.i = fmul double %1329, %1331
  %add60.i792 = fadd double %mul59.i, %mul58.i791
  %add61.i = fadd double %isum0.0779.i, %add60.i792
  %mul62.i793 = fmul double %1328, %1333
  %mul63.i = fmul double %1329, %1334
  %sub64.i = fsub double %mul62.i793, %mul63.i
  %add65.i = fadd double %rsum1.0783.i, %sub64.i
  %mul66.i794 = fmul double %1328, %1334
  %mul67.i = fmul double %1329, %1333
  %add68.i795 = fadd double %mul67.i, %mul66.i794
  %add69.i = fadd double %isum1.0780.i, %add68.i795
  %mul70.i796 = fmul double %1328, %1335
  %mul71.i797 = fmul double %1329, %1336
  %sub72.i = fsub double %mul70.i796, %mul71.i797
  %add73.i = fadd double %rsum2.0784.i, %sub72.i
  %mul74.i798 = fmul double %1328, %1336
  %mul75.i799 = fmul double %1329, %1335
  %add76.i800 = fadd double %mul75.i799, %mul74.i798
  %add77.i = fadd double %isum2.0781.i, %add76.i800
  %inc.i801 = add nsw i32 %ii.0785.i, 1
  %indvars.iv.next827.i = add i64 %indvars.iv826.i, 1
  %exitcond828.i = icmp eq i32 %inc.i801, %1325
  br i1 %exitcond828.i, label %if.end143.i, label %for.body24.i802

for.body82.i:                                     ; preds = %if.then19.i, %for.body82.i
  %indvars.iv823.i = phi i64 [ %indvars.iv.next824.i, %for.body82.i ], [ %1326, %if.then19.i ]
  %ii.1768.i = phi i32 [ %inc140.i, %for.body82.i ], [ 0, %if.then19.i ]
  %rsum2.1767.i = phi double [ %add134.i, %for.body82.i ], [ 0.000000e+00, %if.then19.i ]
  %rsum1.1766.i = phi double [ %add126.i, %for.body82.i ], [ 0.000000e+00, %if.then19.i ]
  %rsum0.1765.i = phi double [ %add118.i, %for.body82.i ], [ 0.000000e+00, %if.then19.i ]
  %isum2.1764.i = phi double [ %add138.i, %for.body82.i ], [ 0.000000e+00, %if.then19.i ]
  %isum1.1763.i = phi double [ %add130.i, %for.body82.i ], [ 0.000000e+00, %if.then19.i ]
  %isum0.1762.i = phi double [ %add122.i, %for.body82.i ], [ 0.000000e+00, %if.then19.i ]
  %1337 = trunc i64 %indvars.iv823.i to i32
  %mul83.i803 = shl nsw i32 %1337, 1
  %idxprom84.i = sext i32 %mul83.i803 to i64
  %arrayidx85.i804 = getelementptr inbounds double* %1322, i64 %idxprom84.i
  %1338 = load double* %arrayidx85.i804, align 8, !tbaa !4
  %add87699.i = or i32 %mul83.i803, 1
  %idxprom88.i = sext i32 %add87699.i to i64
  %arrayidx89.i = getelementptr inbounds double* %1322, i64 %idxprom88.i
  %1339 = load double* %arrayidx89.i, align 8, !tbaa !4
  %arrayidx91.i = getelementptr inbounds i32* %1323, i64 %indvars.iv823.i
  %1340 = load i32* %arrayidx91.i, align 4, !tbaa !3
  %idxprom92.i = sext i32 %1340 to i64
  %arrayidx93.i = getelementptr inbounds i32* %1324, i64 %idxprom92.i
  %1341 = load i32* %arrayidx93.i, align 4, !tbaa !3
  %mul94.i805 = shl nsw i32 %1341, 1
  %idxprom95.i = sext i32 %mul94.i805 to i64
  %arrayidx96.i = getelementptr inbounds double* %colX0.0800.i, i64 %idxprom95.i
  %1342 = load double* %arrayidx96.i, align 8, !tbaa !4
  %add98700.i = or i32 %mul94.i805, 1
  %idxprom99.i = sext i32 %add98700.i to i64
  %arrayidx100.i806 = getelementptr inbounds double* %colX0.0800.i, i64 %idxprom99.i
  %1343 = load double* %arrayidx100.i806, align 8, !tbaa !4
  %add.ptr.sum701.i = add i64 %idxprom95.i, %idx.ext.i770
  %arrayidx103.i807 = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr.sum701.i
  %1344 = load double* %arrayidx103.i807, align 8, !tbaa !4
  %add.ptr.sum702.i = add i64 %idxprom99.i, %idx.ext.i770
  %arrayidx107.i = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr.sum702.i
  %1345 = load double* %arrayidx107.i, align 8, !tbaa !4
  %add.ptr8.sum703.i = add i64 %idxprom95.i, %add.ptr.sum.i771
  %arrayidx110.i808 = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr8.sum703.i
  %1346 = load double* %arrayidx110.i808, align 8, !tbaa !4
  %add.ptr8.sum704.i = add i64 %idxprom99.i, %add.ptr.sum.i771
  %arrayidx114.i809 = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr8.sum704.i
  %1347 = load double* %arrayidx114.i809, align 8, !tbaa !4
  %mul115.i = fmul double %1338, %1342
  %mul116.i = fmul double %1339, %1343
  %sub117.i810 = fsub double %mul115.i, %mul116.i
  %add118.i = fadd double %rsum0.1765.i, %sub117.i810
  %mul119.i = fmul double %1338, %1343
  %mul120.i811 = fmul double %1339, %1342
  %add121.i812 = fadd double %mul120.i811, %mul119.i
  %add122.i = fadd double %isum0.1762.i, %add121.i812
  %mul123.i = fmul double %1338, %1344
  %mul124.i813 = fmul double %1339, %1345
  %sub125.i814 = fsub double %mul123.i, %mul124.i813
  %add126.i = fadd double %rsum1.1766.i, %sub125.i814
  %mul127.i = fmul double %1338, %1345
  %mul128.i815 = fmul double %1339, %1344
  %add129.i816 = fadd double %mul128.i815, %mul127.i
  %add130.i = fadd double %isum1.1763.i, %add129.i816
  %mul131.i = fmul double %1338, %1346
  %mul132.i = fmul double %1339, %1347
  %sub133.i = fsub double %mul131.i, %mul132.i
  %add134.i = fadd double %rsum2.1767.i, %sub133.i
  %mul135.i817 = fmul double %1338, %1347
  %mul136.i818 = fmul double %1339, %1346
  %add137.i819 = fadd double %mul136.i818, %mul135.i817
  %add138.i = fadd double %isum2.1764.i, %add137.i819
  %inc140.i = add nsw i32 %ii.1768.i, 1
  %indvars.iv.next824.i = add i64 %indvars.iv823.i, 1
  %exitcond825.i = icmp eq i32 %inc140.i, %1325
  br i1 %exitcond825.i, label %if.end143.i, label %for.body82.i

if.end143.i:                                      ; preds = %for.body24.i802, %for.body82.i
  %isum0.2.i = phi double [ %add122.i, %for.body82.i ], [ %add61.i, %for.body24.i802 ]
  %isum1.2.i = phi double [ %add130.i, %for.body82.i ], [ %add69.i, %for.body24.i802 ]
  %isum2.2.i = phi double [ %add138.i, %for.body82.i ], [ %add77.i, %for.body24.i802 ]
  %rsum0.2.i = phi double [ %add118.i, %for.body82.i ], [ %add57.i, %for.body24.i802 ]
  %rsum1.2.i = phi double [ %add126.i, %for.body82.i ], [ %add65.i, %for.body24.i802 ]
  %rsum2.2.i = phi double [ %add134.i, %for.body82.i ], [ %add73.i, %for.body24.i802 ]
  %1348 = add i32 %1325, %kk.0797.i
  %1349 = trunc i64 %indvars.iv829.i to i32
  br i1 %cmp144.i, label %if.end153.i, label %if.else148.i

if.else148.i:                                     ; preds = %if.end143.i
  %arrayidx150.i820 = getelementptr inbounds i32* %1321, i64 %indvars.iv829.i
  %1350 = load i32* %arrayidx150.i820, align 4, !tbaa !3
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.else148.i, %if.end143.i
  %irowA.0.sink.i = phi i32 [ %1350, %if.else148.i ], [ %1349, %if.end143.i ]
  %mul146.i821 = shl nsw i32 %irowA.0.sink.i, 1
  %iloc.0.i = or i32 %mul146.i821, 1
  %idxprom154.i = sext i32 %mul146.i821 to i64
  %arrayidx155.i = getelementptr inbounds double* %colY0.0802.i, i64 %idxprom154.i
  %1351 = load double* %arrayidx155.i, align 8, !tbaa !4
  %sub156.i = fsub double %1351, %rsum0.2.i
  store double %sub156.i, double* %arrayidx155.i, align 8, !tbaa !4
  %idxprom157.i822 = sext i32 %iloc.0.i to i64
  %arrayidx158.i823 = getelementptr inbounds double* %colY0.0802.i, i64 %idxprom157.i822
  %1352 = load double* %arrayidx158.i823, align 8, !tbaa !4
  %sub159.i = fsub double %1352, %isum0.2.i
  store double %sub159.i, double* %arrayidx158.i823, align 8, !tbaa !4
  %add.ptr11.sum694.i = add i64 %idxprom154.i, %idx.ext10.i773
  %arrayidx161.i824 = getelementptr inbounds double* %colY0.0802.i, i64 %add.ptr11.sum694.i
  %1353 = load double* %arrayidx161.i824, align 8, !tbaa !4
  %sub162.i825 = fsub double %1353, %rsum1.2.i
  store double %sub162.i825, double* %arrayidx161.i824, align 8, !tbaa !4
  %add.ptr11.sum695.i = add i64 %idxprom157.i822, %idx.ext10.i773
  %arrayidx164.i = getelementptr inbounds double* %colY0.0802.i, i64 %add.ptr11.sum695.i
  %1354 = load double* %arrayidx164.i, align 8, !tbaa !4
  %sub165.i826 = fsub double %1354, %isum1.2.i
  store double %sub165.i826, double* %arrayidx164.i, align 8, !tbaa !4
  %add.ptr14.sum696.i = add i64 %idxprom154.i, %add.ptr11.sum.i774
  %arrayidx167.i827 = getelementptr inbounds double* %colY0.0802.i, i64 %add.ptr14.sum696.i
  %1355 = load double* %arrayidx167.i827, align 8, !tbaa !4
  %sub168.i = fsub double %1355, %rsum2.2.i
  store double %sub168.i, double* %arrayidx167.i827, align 8, !tbaa !4
  %add.ptr14.sum697.i = add i64 %idxprom157.i822, %add.ptr11.sum.i774
  %arrayidx170.i = getelementptr inbounds double* %colY0.0802.i, i64 %add.ptr14.sum697.i
  %1356 = load double* %arrayidx170.i, align 8, !tbaa !4
  %sub171.i = fsub double %1356, %isum2.2.i
  store double %sub171.i, double* %arrayidx170.i, align 8, !tbaa !4
  br label %for.inc173.i

for.inc173.i:                                     ; preds = %if.end153.i, %for.body17.i
  %kk.4.i828 = phi i32 [ %1348, %if.end153.i ], [ %kk.0797.i, %for.body17.i ]
  %indvars.iv.next830.i = add i64 %indvars.iv829.i, 1
  %lftr.wideiv1263 = trunc i64 %indvars.iv.next830.i to i32
  %exitcond1264 = icmp eq i32 %lftr.wideiv1263, %1318
  br i1 %exitcond1264, label %for.end175.i, label %for.body17.i

for.end175.i:                                     ; preds = %for.inc173.i, %for.body.i779
  %add.ptr178.i = getelementptr inbounds double* %colX0.0800.i, i64 %add.ptr8.sum.i775
  %add.ptr181.i = getelementptr inbounds double* %colY0.0802.i, i64 %add.ptr14.sum.i776
  %add183.i829 = add nsw i32 %jcolX.0804.i, 3
  %cmp5.i830 = icmp slt i32 %add183.i829, %sub798.i
  br i1 %cmp5.i830, label %for.body.i779, label %for.end184.i

for.end184.i:                                     ; preds = %for.end175.i, %if.end4.i768
  %jcolX.0.lcssa.i831 = phi i32 [ 0, %if.end4.i768 ], [ %add183.i829, %for.end175.i ]
  %colY0.0.lcssa.i832 = phi double* [ %1314, %if.end4.i768 ], [ %add.ptr181.i, %for.end175.i ]
  %colX0.0.lcssa.i833 = phi double* [ %1313, %if.end4.i768 ], [ %add.ptr178.i, %for.end175.i ]
  %cmp186.i = icmp eq i32 %jcolX.0.lcssa.i831, %sub798.i
  br i1 %cmp186.i, label %if.then187.i, label %if.else325.i

if.then187.i:                                     ; preds = %for.end184.i
  %1357 = load i32* %nrowX.i754, align 4, !tbaa !3
  %mul188.i834 = shl nsw i32 %1357, 1
  %idx.ext189.i = sext i32 %mul188.i834 to i64
  %1358 = load i32* %nrowY.i755, align 4, !tbaa !3
  %mul191.i835 = shl nsw i32 %1358, 1
  %idx.ext192.i = sext i32 %mul191.i835 to i64
  %1359 = load i32* %nrowA.i753, align 4, !tbaa !3
  %cmp195735.i = icmp sgt i32 %1359, 0
  br i1 %cmp195735.i, label %for.body196.lr.ph.i, label %sw.epilog34

for.body196.lr.ph.i:                              ; preds = %if.then187.i
  %1360 = load i32** %sizes.i759, align 8, !tbaa !0
  %1361 = load i32* %ncolA.i749, align 4, !tbaa !3
  %cmp201.i = icmp eq i32 %1361, %1357
  %cmp299.i836 = icmp eq i32 %1359, %1358
  %1362 = load i32** %rowindA.i758, align 8, !tbaa !0
  %1363 = load double** %entA.i744, align 8, !tbaa !0
  %1364 = load i32** %indices.i757, align 8, !tbaa !0
  %1365 = load i32** %colindA.i756, align 8, !tbaa !0
  br label %for.body196.i

for.body196.i:                                    ; preds = %for.inc322.i, %for.body196.lr.ph.i
  %indvars.iv813.i = phi i64 [ 0, %for.body196.lr.ph.i ], [ %indvars.iv.next814.i, %for.inc322.i ]
  %kk.5738.i = phi i32 [ 0, %for.body196.lr.ph.i ], [ %kk.9.i872, %for.inc322.i ]
  %arrayidx198.i837 = getelementptr inbounds i32* %1360, i64 %indvars.iv813.i
  %1366 = load i32* %arrayidx198.i837, align 4, !tbaa !3
  %cmp199.i = icmp sgt i32 %1366, 0
  br i1 %cmp199.i, label %if.then200.i, label %for.inc322.i

if.then200.i:                                     ; preds = %for.body196.i
  %1367 = sext i32 %kk.5738.i to i64
  br i1 %cmp201.i, label %for.body205.i, label %for.body252.i

for.body205.i:                                    ; preds = %if.then200.i, %for.body205.i
  %indvars.iv810.i = phi i64 [ %indvars.iv.next811.i, %for.body205.i ], [ %1367, %if.then200.i ]
  %ii.2728.i = phi i32 [ %inc246.i, %for.body205.i ], [ 0, %if.then200.i ]
  %rsum1.3727.i = phi double [ %add240.i, %for.body205.i ], [ 0.000000e+00, %if.then200.i ]
  %rsum0.3726.i = phi double [ %add232.i, %for.body205.i ], [ 0.000000e+00, %if.then200.i ]
  %isum1.3725.i = phi double [ %add244.i, %for.body205.i ], [ 0.000000e+00, %if.then200.i ]
  %isum0.3724.i = phi double [ %add236.i, %for.body205.i ], [ 0.000000e+00, %if.then200.i ]
  %1368 = trunc i64 %indvars.iv810.i to i32
  %mul206.i838 = shl nsw i32 %1368, 1
  %idxprom207.i = sext i32 %mul206.i838 to i64
  %arrayidx208.i = getelementptr inbounds double* %1363, i64 %idxprom207.i
  %1369 = load double* %arrayidx208.i, align 8, !tbaa !4
  %add210689.i = or i32 %mul206.i838, 1
  %idxprom211.i = sext i32 %add210689.i to i64
  %arrayidx212.i839 = getelementptr inbounds double* %1363, i64 %idxprom211.i
  %1370 = load double* %arrayidx212.i839, align 8, !tbaa !4
  %arrayidx214.i840 = getelementptr inbounds i32* %1364, i64 %indvars.iv810.i
  %1371 = load i32* %arrayidx214.i840, align 4, !tbaa !3
  %mul215.i841 = shl nsw i32 %1371, 1
  %idxprom216.i = sext i32 %mul215.i841 to i64
  %arrayidx217.i842 = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom216.i
  %1372 = load double* %arrayidx217.i842, align 8, !tbaa !4
  %add219690.i = or i32 %mul215.i841, 1
  %idxprom220.i = sext i32 %add219690.i to i64
  %arrayidx221.i843 = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom220.i
  %1373 = load double* %arrayidx221.i843, align 8, !tbaa !4
  %add.ptr190.sum691.i = add i64 %idxprom216.i, %idx.ext189.i
  %arrayidx224.i = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %add.ptr190.sum691.i
  %1374 = load double* %arrayidx224.i, align 8, !tbaa !4
  %add.ptr190.sum692.i = add i64 %idxprom220.i, %idx.ext189.i
  %arrayidx228.i844 = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %add.ptr190.sum692.i
  %1375 = load double* %arrayidx228.i844, align 8, !tbaa !4
  %mul229.i = fmul double %1369, %1372
  %mul230.i845 = fmul double %1370, %1373
  %sub231.i = fsub double %mul229.i, %mul230.i845
  %add232.i = fadd double %rsum0.3726.i, %sub231.i
  %mul233.i = fmul double %1369, %1373
  %mul234.i846 = fmul double %1370, %1372
  %add235.i847 = fadd double %mul234.i846, %mul233.i
  %add236.i = fadd double %isum0.3724.i, %add235.i847
  %mul237.i848 = fmul double %1369, %1374
  %mul238.i849 = fmul double %1370, %1375
  %sub239.i = fsub double %mul237.i848, %mul238.i849
  %add240.i = fadd double %rsum1.3727.i, %sub239.i
  %mul241.i850 = fmul double %1369, %1375
  %mul242.i = fmul double %1370, %1374
  %add243.i = fadd double %mul242.i, %mul241.i850
  %add244.i = fadd double %isum1.3725.i, %add243.i
  %inc246.i = add nsw i32 %ii.2728.i, 1
  %indvars.iv.next811.i = add i64 %indvars.iv810.i, 1
  %exitcond812.i = icmp eq i32 %inc246.i, %1366
  br i1 %exitcond812.i, label %if.end298.i, label %for.body205.i

for.body252.i:                                    ; preds = %if.then200.i, %for.body252.i
  %indvars.iv.i851 = phi i64 [ %indvars.iv.next.i869, %for.body252.i ], [ %1367, %if.then200.i ]
  %ii.3716.i = phi i32 [ %inc295.i, %for.body252.i ], [ 0, %if.then200.i ]
  %rsum1.4715.i = phi double [ %add289.i866, %for.body252.i ], [ 0.000000e+00, %if.then200.i ]
  %rsum0.4714.i = phi double [ %add281.i863, %for.body252.i ], [ 0.000000e+00, %if.then200.i ]
  %isum1.4713.i = phi double [ %add293.i868, %for.body252.i ], [ 0.000000e+00, %if.then200.i ]
  %isum0.4712.i = phi double [ %add285.i, %for.body252.i ], [ 0.000000e+00, %if.then200.i ]
  %1376 = trunc i64 %indvars.iv.i851 to i32
  %mul253.i = shl nsw i32 %1376, 1
  %idxprom254.i852 = sext i32 %mul253.i to i64
  %arrayidx255.i853 = getelementptr inbounds double* %1363, i64 %idxprom254.i852
  %1377 = load double* %arrayidx255.i853, align 8, !tbaa !4
  %add257686.i = or i32 %mul253.i, 1
  %idxprom258.i854 = sext i32 %add257686.i to i64
  %arrayidx259.i855 = getelementptr inbounds double* %1363, i64 %idxprom258.i854
  %1378 = load double* %arrayidx259.i855, align 8, !tbaa !4
  %arrayidx261.i = getelementptr inbounds i32* %1364, i64 %indvars.iv.i851
  %1379 = load i32* %arrayidx261.i, align 4, !tbaa !3
  %idxprom262.i856 = sext i32 %1379 to i64
  %arrayidx263.i857 = getelementptr inbounds i32* %1365, i64 %idxprom262.i856
  %1380 = load i32* %arrayidx263.i857, align 4, !tbaa !3
  %mul264.i858 = shl nsw i32 %1380, 1
  %idxprom265.i = sext i32 %mul264.i858 to i64
  %arrayidx266.i859 = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom265.i
  %1381 = load double* %arrayidx266.i859, align 8, !tbaa !4
  %add268687.i = or i32 %mul264.i858, 1
  %idxprom269.i = sext i32 %add268687.i to i64
  %arrayidx270.i = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom269.i
  %1382 = load double* %arrayidx270.i, align 8, !tbaa !4
  %add.ptr190.sum.i = add i64 %idxprom265.i, %idx.ext189.i
  %arrayidx273.i860 = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %add.ptr190.sum.i
  %1383 = load double* %arrayidx273.i860, align 8, !tbaa !4
  %add.ptr190.sum688.i = add i64 %idxprom269.i, %idx.ext189.i
  %arrayidx277.i = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %add.ptr190.sum688.i
  %1384 = load double* %arrayidx277.i, align 8, !tbaa !4
  %mul278.i861 = fmul double %1377, %1381
  %mul279.i = fmul double %1378, %1382
  %sub280.i862 = fsub double %mul278.i861, %mul279.i
  %add281.i863 = fadd double %rsum0.4714.i, %sub280.i862
  %mul282.i864 = fmul double %1377, %1382
  %mul283.i = fmul double %1378, %1381
  %add284.i = fadd double %mul283.i, %mul282.i864
  %add285.i = fadd double %isum0.4712.i, %add284.i
  %mul286.i865 = fmul double %1377, %1383
  %mul287.i = fmul double %1378, %1384
  %sub288.i = fsub double %mul286.i865, %mul287.i
  %add289.i866 = fadd double %rsum1.4715.i, %sub288.i
  %mul290.i867 = fmul double %1377, %1384
  %mul291.i = fmul double %1378, %1383
  %add292.i = fadd double %mul291.i, %mul290.i867
  %add293.i868 = fadd double %isum1.4713.i, %add292.i
  %inc295.i = add nsw i32 %ii.3716.i, 1
  %indvars.iv.next.i869 = add i64 %indvars.iv.i851, 1
  %exitcond.i870 = icmp eq i32 %inc295.i, %1366
  br i1 %exitcond.i870, label %if.end298.i, label %for.body252.i

if.end298.i:                                      ; preds = %for.body205.i, %for.body252.i
  %isum0.5.i = phi double [ %add285.i, %for.body252.i ], [ %add236.i, %for.body205.i ]
  %isum1.5.i = phi double [ %add293.i868, %for.body252.i ], [ %add244.i, %for.body205.i ]
  %rsum0.5.i = phi double [ %add281.i863, %for.body252.i ], [ %add232.i, %for.body205.i ]
  %rsum1.5.i = phi double [ %add289.i866, %for.body252.i ], [ %add240.i, %for.body205.i ]
  %1385 = add i32 %1366, %kk.5738.i
  %1386 = trunc i64 %indvars.iv813.i to i32
  br i1 %cmp299.i836, label %if.end308.i, label %if.else303.i

if.else303.i:                                     ; preds = %if.end298.i
  %arrayidx305.i = getelementptr inbounds i32* %1362, i64 %indvars.iv813.i
  %1387 = load i32* %arrayidx305.i, align 4, !tbaa !3
  br label %if.end308.i

if.end308.i:                                      ; preds = %if.else303.i, %if.end298.i
  %irowA.1.sink.i = phi i32 [ %1387, %if.else303.i ], [ %1386, %if.end298.i ]
  %mul301.i = shl nsw i32 %irowA.1.sink.i, 1
  %iloc.1.i = or i32 %mul301.i, 1
  %idxprom309.i = sext i32 %mul301.i to i64
  %arrayidx310.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom309.i
  %1388 = load double* %arrayidx310.i, align 8, !tbaa !4
  %sub311.i = fsub double %1388, %rsum0.5.i
  store double %sub311.i, double* %arrayidx310.i, align 8, !tbaa !4
  %idxprom312.i = sext i32 %iloc.1.i to i64
  %arrayidx313.i871 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom312.i
  %1389 = load double* %arrayidx313.i871, align 8, !tbaa !4
  %sub314.i = fsub double %1389, %isum0.5.i
  store double %sub314.i, double* %arrayidx313.i871, align 8, !tbaa !4
  %add.ptr193.sum.i = add i64 %idxprom309.i, %idx.ext192.i
  %arrayidx316.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %add.ptr193.sum.i
  %1390 = load double* %arrayidx316.i, align 8, !tbaa !4
  %sub317.i = fsub double %1390, %rsum1.5.i
  store double %sub317.i, double* %arrayidx316.i, align 8, !tbaa !4
  %add.ptr193.sum684.i = add i64 %idxprom312.i, %idx.ext192.i
  %arrayidx319.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %add.ptr193.sum684.i
  %1391 = load double* %arrayidx319.i, align 8, !tbaa !4
  %sub320.i = fsub double %1391, %isum1.5.i
  store double %sub320.i, double* %arrayidx319.i, align 8, !tbaa !4
  br label %for.inc322.i

for.inc322.i:                                     ; preds = %if.end308.i, %for.body196.i
  %kk.9.i872 = phi i32 [ %1385, %if.end308.i ], [ %kk.5738.i, %for.body196.i ]
  %indvars.iv.next814.i = add i64 %indvars.iv813.i, 1
  %lftr.wideiv1259 = trunc i64 %indvars.iv.next814.i to i32
  %exitcond1260 = icmp eq i32 %lftr.wideiv1259, %1359
  br i1 %exitcond1260, label %sw.epilog34, label %for.body196.i

if.else325.i:                                     ; preds = %for.end184.i
  %sub326.i873 = add nsw i32 %1315, -1
  %cmp327.i = icmp eq i32 %jcolX.0.lcssa.i831, %sub326.i873
  br i1 %cmp327.i, label %for.cond329.preheader.i, label %sw.epilog34

for.cond329.preheader.i:                          ; preds = %if.else325.i
  %1392 = load i32* %nrowA.i753, align 4, !tbaa !3
  %cmp330757.i = icmp sgt i32 %1392, 0
  br i1 %cmp330757.i, label %for.body331.lr.ph.i, label %sw.epilog34

for.body331.lr.ph.i:                              ; preds = %for.cond329.preheader.i
  %1393 = load i32** %sizes.i759, align 8, !tbaa !0
  %1394 = load i32* %ncolA.i749, align 4, !tbaa !3
  %1395 = load i32* %nrowX.i754, align 4, !tbaa !3
  %cmp336.i = icmp eq i32 %1394, %1395
  %1396 = load i32* %nrowY.i755, align 4, !tbaa !3
  %cmp404.i = icmp eq i32 %1392, %1396
  %1397 = load i32** %rowindA.i758, align 8, !tbaa !0
  %1398 = load double** %entA.i744, align 8, !tbaa !0
  %1399 = load i32** %indices.i757, align 8, !tbaa !0
  %1400 = load i32** %colindA.i756, align 8, !tbaa !0
  br label %for.body331.i

for.body331.i:                                    ; preds = %for.inc421.i, %for.body331.lr.ph.i
  %indvars.iv821.i = phi i64 [ 0, %for.body331.lr.ph.i ], [ %indvars.iv.next822.i, %for.inc421.i ]
  %kk.10760.i = phi i32 [ 0, %for.body331.lr.ph.i ], [ %kk.14.i887, %for.inc421.i ]
  %arrayidx333.i = getelementptr inbounds i32* %1393, i64 %indvars.iv821.i
  %1401 = load i32* %arrayidx333.i, align 4, !tbaa !3
  %cmp334.i = icmp sgt i32 %1401, 0
  br i1 %cmp334.i, label %if.then335.i, label %for.inc421.i

if.then335.i:                                     ; preds = %for.body331.i
  %1402 = sext i32 %kk.10760.i to i64
  br i1 %cmp336.i, label %for.body340.i879, label %for.body372.i

for.body340.i879:                                 ; preds = %if.then335.i, %for.body340.i879
  %indvars.iv818.i = phi i64 [ %indvars.iv.next819.i, %for.body340.i879 ], [ %1402, %if.then335.i ]
  %ii.4751.i = phi i32 [ %inc366.i, %for.body340.i879 ], [ 0, %if.then335.i ]
  %rsum0.6750.i = phi double [ %add360.i, %for.body340.i879 ], [ 0.000000e+00, %if.then335.i ]
  %isum0.6749.i = phi double [ %add364.i, %for.body340.i879 ], [ 0.000000e+00, %if.then335.i ]
  %1403 = trunc i64 %indvars.iv818.i to i32
  %mul341.i874 = shl nsw i32 %1403, 1
  %idxprom342.i = sext i32 %mul341.i874 to i64
  %arrayidx343.i = getelementptr inbounds double* %1398, i64 %idxprom342.i
  %1404 = load double* %arrayidx343.i, align 8, !tbaa !4
  %add345681.i = or i32 %mul341.i874, 1
  %idxprom346.i = sext i32 %add345681.i to i64
  %arrayidx347.i = getelementptr inbounds double* %1398, i64 %idxprom346.i
  %1405 = load double* %arrayidx347.i, align 8, !tbaa !4
  %arrayidx349.i875 = getelementptr inbounds i32* %1399, i64 %indvars.iv818.i
  %1406 = load i32* %arrayidx349.i875, align 4, !tbaa !3
  %mul350.i = shl nsw i32 %1406, 1
  %idxprom351.i876 = sext i32 %mul350.i to i64
  %arrayidx352.i877 = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom351.i876
  %1407 = load double* %arrayidx352.i877, align 8, !tbaa !4
  %add354682.i = or i32 %mul350.i, 1
  %idxprom355.i = sext i32 %add354682.i to i64
  %arrayidx356.i = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom355.i
  %1408 = load double* %arrayidx356.i, align 8, !tbaa !4
  %mul357.i = fmul double %1404, %1407
  %mul358.i = fmul double %1405, %1408
  %sub359.i878 = fsub double %mul357.i, %mul358.i
  %add360.i = fadd double %rsum0.6750.i, %sub359.i878
  %mul361.i = fmul double %1404, %1408
  %mul362.i = fmul double %1405, %1407
  %add363.i = fadd double %mul362.i, %mul361.i
  %add364.i = fadd double %isum0.6749.i, %add363.i
  %inc366.i = add nsw i32 %ii.4751.i, 1
  %indvars.iv.next819.i = add i64 %indvars.iv818.i, 1
  %exitcond820.i = icmp eq i32 %inc366.i, %1401
  br i1 %exitcond820.i, label %if.end403.i, label %for.body340.i879

for.body372.i:                                    ; preds = %if.then335.i, %for.body372.i
  %indvars.iv815.i = phi i64 [ %indvars.iv.next816.i, %for.body372.i ], [ %1402, %if.then335.i ]
  %ii.5742.i = phi i32 [ %inc400.i, %for.body372.i ], [ 0, %if.then335.i ]
  %rsum0.7741.i = phi double [ %add394.i, %for.body372.i ], [ 0.000000e+00, %if.then335.i ]
  %isum0.7740.i = phi double [ %add398.i883, %for.body372.i ], [ 0.000000e+00, %if.then335.i ]
  %1409 = trunc i64 %indvars.iv815.i to i32
  %mul373.i = shl nsw i32 %1409, 1
  %idxprom374.i = sext i32 %mul373.i to i64
  %arrayidx375.i = getelementptr inbounds double* %1398, i64 %idxprom374.i
  %1410 = load double* %arrayidx375.i, align 8, !tbaa !4
  %add377679.i = or i32 %mul373.i, 1
  %idxprom378.i = sext i32 %add377679.i to i64
  %arrayidx379.i880 = getelementptr inbounds double* %1398, i64 %idxprom378.i
  %1411 = load double* %arrayidx379.i880, align 8, !tbaa !4
  %arrayidx381.i = getelementptr inbounds i32* %1399, i64 %indvars.iv815.i
  %1412 = load i32* %arrayidx381.i, align 4, !tbaa !3
  %idxprom382.i = sext i32 %1412 to i64
  %arrayidx383.i = getelementptr inbounds i32* %1400, i64 %idxprom382.i
  %1413 = load i32* %arrayidx383.i, align 4, !tbaa !3
  %mul384.i = shl nsw i32 %1413, 1
  %idxprom385.i = sext i32 %mul384.i to i64
  %arrayidx386.i = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom385.i
  %1414 = load double* %arrayidx386.i, align 8, !tbaa !4
  %add388680.i = or i32 %mul384.i, 1
  %idxprom389.i = sext i32 %add388680.i to i64
  %arrayidx390.i = getelementptr inbounds double* %colX0.0.lcssa.i833, i64 %idxprom389.i
  %1415 = load double* %arrayidx390.i, align 8, !tbaa !4
  %mul391.i = fmul double %1410, %1414
  %mul392.i = fmul double %1411, %1415
  %sub393.i = fsub double %mul391.i, %mul392.i
  %add394.i = fadd double %rsum0.7741.i, %sub393.i
  %mul395.i881 = fmul double %1410, %1415
  %mul396.i882 = fmul double %1411, %1414
  %add397.i = fadd double %mul396.i882, %mul395.i881
  %add398.i883 = fadd double %isum0.7740.i, %add397.i
  %inc400.i = add nsw i32 %ii.5742.i, 1
  %indvars.iv.next816.i = add i64 %indvars.iv815.i, 1
  %exitcond817.i = icmp eq i32 %inc400.i, %1401
  br i1 %exitcond817.i, label %if.end403.i, label %for.body372.i

if.end403.i:                                      ; preds = %for.body340.i879, %for.body372.i
  %isum0.8.i = phi double [ %add398.i883, %for.body372.i ], [ %add364.i, %for.body340.i879 ]
  %rsum0.8.i = phi double [ %add394.i, %for.body372.i ], [ %add360.i, %for.body340.i879 ]
  %1416 = add i32 %1401, %kk.10760.i
  %1417 = trunc i64 %indvars.iv821.i to i32
  br i1 %cmp404.i, label %if.end413.i, label %if.else408.i

if.else408.i:                                     ; preds = %if.end403.i
  %arrayidx410.i884 = getelementptr inbounds i32* %1397, i64 %indvars.iv821.i
  %1418 = load i32* %arrayidx410.i884, align 4, !tbaa !3
  br label %if.end413.i

if.end413.i:                                      ; preds = %if.else408.i, %if.end403.i
  %irowA.2.sink.i = phi i32 [ %1418, %if.else408.i ], [ %1417, %if.end403.i ]
  %mul406.i885 = shl nsw i32 %irowA.2.sink.i, 1
  %iloc.2.i = or i32 %mul406.i885, 1
  %idxprom414.i = sext i32 %mul406.i885 to i64
  %arrayidx415.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom414.i
  %1419 = load double* %arrayidx415.i, align 8, !tbaa !4
  %sub416.i = fsub double %1419, %rsum0.8.i
  store double %sub416.i, double* %arrayidx415.i, align 8, !tbaa !4
  %idxprom417.i = sext i32 %iloc.2.i to i64
  %arrayidx418.i886 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom417.i
  %1420 = load double* %arrayidx418.i886, align 8, !tbaa !4
  %sub419.i = fsub double %1420, %isum0.8.i
  store double %sub419.i, double* %arrayidx418.i886, align 8, !tbaa !4
  br label %for.inc421.i

for.inc421.i:                                     ; preds = %if.end413.i, %for.body331.i
  %kk.14.i887 = phi i32 [ %1416, %if.end413.i ], [ %kk.10760.i, %for.body331.i ]
  %indvars.iv.next822.i = add i64 %indvars.iv821.i, 1
  %lftr.wideiv1261 = trunc i64 %indvars.iv.next822.i to i32
  %exitcond1262 = icmp eq i32 %lftr.wideiv1261, %1392
  br i1 %exitcond1262, label %sw.epilog34, label %for.body331.i

sw.bb25:                                          ; preds = %sw.bb20
  %1421 = bitcast double** %entA.i888 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1421) #4
  %1422 = bitcast double** %entX.i889 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1422) #4
  %1423 = bitcast double** %entY.i890 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1423) #4
  %1424 = bitcast i32* %inc1.i891 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1424) #4
  %1425 = bitcast i32* %inc2.i892 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1425) #4
  %1426 = bitcast i32* %ncolA.i893 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1426) #4
  %1427 = bitcast i32* %ncolX.i894 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1427) #4
  %1428 = bitcast i32* %ncolY.i895 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1428) #4
  %1429 = bitcast i32* %nentA.i896 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1429) #4
  %1430 = bitcast i32* %nrowA.i897 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1430) #4
  %1431 = bitcast i32* %nrowX.i898 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1431) #4
  %1432 = bitcast i32* %nrowY.i899 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1432) #4
  %1433 = bitcast i32** %colindA.i900 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1433) #4
  %1434 = bitcast i32** %indices.i901 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1434) #4
  %1435 = bitcast i32** %rowindA.i902 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1435) #4
  %1436 = bitcast i32** %sizes.i903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1436) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i899, i32* %ncolY.i895, i32* %inc1.i891, i32* %inc2.i892, double** %entY.i890) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i898, i32* %ncolX.i894, i32* %inc1.i891, i32* %inc2.i892, double** %entX.i889) #5
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %ncolA.i893, i32* %nentA.i896, i32** %sizes.i903, i32** %indices.i901, double** %entA.i888) #5
  %1437 = load i32* %ncolA.i893, align 4, !tbaa !3
  %1438 = load i32* %nrowX.i898, align 4, !tbaa !3
  %cmp.i904 = icmp eq i32 %1437, %1438
  br i1 %cmp.i904, label %if.else.i906, label %if.then.i905

if.then.i905:                                     ; preds = %sw.bb25
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %ncolA.i893, i32** %colindA.i900) #5
  br label %if.end.i909

if.else.i906:                                     ; preds = %sw.bb25
  store i32* null, i32** %colindA.i900, align 8, !tbaa !0
  br label %if.end.i909

if.end.i909:                                      ; preds = %if.else.i906, %if.then.i905
  %nrow.i907 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %1439 = load i32* %nrow.i907, align 4, !tbaa !3
  store i32 %1439, i32* %nrowA.i897, align 4, !tbaa !3
  %1440 = load i32* %nrowY.i899, align 4, !tbaa !3
  %cmp1.i908 = icmp eq i32 %1439, %1440
  br i1 %cmp1.i908, label %if.else3.i911, label %if.then2.i910

if.then2.i910:                                    ; preds = %if.end.i909
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %nrowA.i897, i32** %rowindA.i902) #5
  br label %if.end4.i913

if.else3.i911:                                    ; preds = %if.end.i909
  store i32* null, i32** %rowindA.i902, align 8, !tbaa !0
  br label %if.end4.i913

if.end4.i913:                                     ; preds = %if.else3.i911, %if.then2.i910
  %1441 = load double** %entX.i889, align 8, !tbaa !0
  %1442 = load double** %entY.i890, align 8, !tbaa !0
  %1443 = load i32* %ncolX.i894, align 4, !tbaa !3
  %sub678.i912 = add nsw i32 %1443, -2
  %cmp5679.i = icmp sgt i32 %sub678.i912, 0
  br i1 %cmp5679.i, label %for.body.lr.ph.i922, label %for.end162.i

for.body.lr.ph.i922:                              ; preds = %if.end4.i913
  %1444 = load i32* %nrowX.i898, align 4, !tbaa !3
  %mul.i914 = shl nsw i32 %1444, 1
  %idx.ext.i915 = sext i32 %mul.i914 to i64
  %add.ptr.sum.i916 = shl nsw i64 %idx.ext.i915, 1
  %1445 = load i32* %nrowY.i899, align 4, !tbaa !3
  %mul9.i917 = shl nsw i32 %1445, 1
  %idx.ext10.i918 = sext i32 %mul9.i917 to i64
  %add.ptr11.sum.i919 = shl nsw i64 %idx.ext10.i918, 1
  %1446 = load i32* %ncolA.i893, align 4, !tbaa !3
  %cmp16675.i = icmp sgt i32 %1446, 0
  %add.ptr8.sum.i920 = add i64 %add.ptr.sum.i916, %idx.ext.i915
  %add.ptr14.sum.i921 = add i64 %add.ptr11.sum.i919, %idx.ext10.i918
  %1447 = load i32** %sizes.i903, align 8, !tbaa !0
  %1448 = load i32* %nrowA.i897, align 4, !tbaa !3
  %cmp39.i = icmp eq i32 %1448, %1445
  %1449 = load double** %entA.i888, align 8, !tbaa !0
  %1450 = load i32** %indices.i901, align 8, !tbaa !0
  %1451 = load i32** %rowindA.i902, align 8, !tbaa !0
  %1452 = load i32** %colindA.i900, align 8, !tbaa !0
  %cmp20.i927 = icmp eq i32 %1446, %1444
  br label %for.body.i923

for.body.i923:                                    ; preds = %for.end153.i, %for.body.lr.ph.i922
  %jcolX.0684.i = phi i32 [ 0, %for.body.lr.ph.i922 ], [ %add161.i, %for.end153.i ]
  %colY0.0682.i = phi double* [ %1442, %for.body.lr.ph.i922 ], [ %add.ptr159.i, %for.end153.i ]
  %colX0.0680.i = phi double* [ %1441, %for.body.lr.ph.i922 ], [ %add.ptr156.i, %for.end153.i ]
  br i1 %cmp16675.i, label %for.body17.i926, label %for.end153.i

for.body17.i926:                                  ; preds = %for.body.i923, %for.inc151.i
  %indvars.iv709.i = phi i64 [ %indvars.iv.next710.i, %for.inc151.i ], [ 0, %for.body.i923 ]
  %kk.0677.i = phi i32 [ %kk.3.i982, %for.inc151.i ], [ 0, %for.body.i923 ]
  %arrayidx.i924 = getelementptr inbounds i32* %1447, i64 %indvars.iv709.i
  %1453 = load i32* %arrayidx.i924, align 4, !tbaa !3
  %cmp18.i925 = icmp sgt i32 %1453, 0
  br i1 %cmp18.i925, label %if.then19.i928, label %for.inc151.i

if.then19.i928:                                   ; preds = %for.body17.i926
  %1454 = trunc i64 %indvars.iv709.i to i32
  br i1 %cmp20.i927, label %if.end25.i, label %if.else22.i

if.else22.i:                                      ; preds = %if.then19.i928
  %arrayidx24.i929 = getelementptr inbounds i32* %1452, i64 %indvars.iv709.i
  %1455 = load i32* %arrayidx24.i929, align 4, !tbaa !3
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then19.i928
  %jrowX.0.i930 = phi i32 [ %1455, %if.else22.i ], [ %1454, %if.then19.i928 ]
  %mul26.i = shl nsw i32 %jrowX.0.i930, 1
  %add625.i = or i32 %mul26.i, 1
  %idxprom27.i = sext i32 %mul26.i to i64
  %arrayidx28.i931 = getelementptr inbounds double* %colX0.0680.i, i64 %idxprom27.i
  %1456 = load double* %arrayidx28.i931, align 8, !tbaa !4
  %idxprom29.i932 = sext i32 %add625.i to i64
  %arrayidx30.i933 = getelementptr inbounds double* %colX0.0680.i, i64 %idxprom29.i932
  %1457 = load double* %arrayidx30.i933, align 8, !tbaa !4
  %add.ptr.sum626.i = add i64 %idxprom27.i, %idx.ext.i915
  %arrayidx32.i934 = getelementptr inbounds double* %colX0.0680.i, i64 %add.ptr.sum626.i
  %1458 = load double* %arrayidx32.i934, align 8, !tbaa !4
  %add.ptr.sum627.i = add i64 %idxprom29.i932, %idx.ext.i915
  %arrayidx34.i935 = getelementptr inbounds double* %colX0.0680.i, i64 %add.ptr.sum627.i
  %1459 = load double* %arrayidx34.i935, align 8, !tbaa !4
  %add.ptr8.sum628.i = add i64 %idxprom27.i, %add.ptr.sum.i916
  %arrayidx36.i936 = getelementptr inbounds double* %colX0.0680.i, i64 %add.ptr8.sum628.i
  %1460 = load double* %arrayidx36.i936, align 8, !tbaa !4
  %add.ptr8.sum629.i = add i64 %idxprom29.i932, %add.ptr.sum.i916
  %arrayidx38.i937 = getelementptr inbounds double* %colX0.0680.i, i64 %add.ptr8.sum629.i
  %1461 = load double* %arrayidx38.i937, align 8, !tbaa !4
  %1462 = sext i32 %kk.0677.i to i64
  br i1 %cmp39.i, label %for.body43.i, label %for.body95.i

for.body43.i:                                     ; preds = %if.end25.i, %for.body43.i
  %indvars.iv706.i = phi i64 [ %indvars.iv.next707.i, %for.body43.i ], [ %1462, %if.end25.i ]
  %ii.0672.i = phi i32 [ %inc.i959, %for.body43.i ], [ 0, %if.end25.i ]
  %1463 = trunc i64 %indvars.iv706.i to i32
  %mul44.i = shl nsw i32 %1463, 1
  %idxprom45.i938 = sext i32 %mul44.i to i64
  %arrayidx46.i939 = getelementptr inbounds double* %1449, i64 %idxprom45.i938
  %1464 = load double* %arrayidx46.i939, align 8, !tbaa !4
  %add48636.i = or i32 %mul44.i, 1
  %idxprom49.i = sext i32 %add48636.i to i64
  %arrayidx50.i940 = getelementptr inbounds double* %1449, i64 %idxprom49.i
  %1465 = load double* %arrayidx50.i940, align 8, !tbaa !4
  %arrayidx52.i941 = getelementptr inbounds i32* %1450, i64 %indvars.iv706.i
  %1466 = load i32* %arrayidx52.i941, align 4, !tbaa !3
  %mul53.i942 = shl nsw i32 %1466, 1
  %add54637.i = or i32 %mul53.i942, 1
  %mul55.i943 = fmul double %1456, %1464
  %mul56.i = fmul double %1457, %1465
  %sub57.i = fsub double %mul55.i943, %mul56.i
  %idxprom58.i944 = sext i32 %mul53.i942 to i64
  %arrayidx59.i945 = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom58.i944
  %1467 = load double* %arrayidx59.i945, align 8, !tbaa !4
  %sub60.i = fsub double %1467, %sub57.i
  store double %sub60.i, double* %arrayidx59.i945, align 8, !tbaa !4
  %mul61.i946 = fmul double %1457, %1464
  %mul62.i947 = fmul double %1456, %1465
  %add63.i = fadd double %mul61.i946, %mul62.i947
  %idxprom64.i = sext i32 %add54637.i to i64
  %arrayidx65.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom64.i
  %1468 = load double* %arrayidx65.i, align 8, !tbaa !4
  %sub66.i = fsub double %1468, %add63.i
  store double %sub66.i, double* %arrayidx65.i, align 8, !tbaa !4
  %mul67.i948 = fmul double %1458, %1464
  %mul68.i949 = fmul double %1459, %1465
  %sub69.i = fsub double %mul67.i948, %mul68.i949
  %add.ptr11.sum638.i = add i64 %idxprom58.i944, %idx.ext10.i918
  %arrayidx71.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum638.i
  %1469 = load double* %arrayidx71.i, align 8, !tbaa !4
  %sub72.i950 = fsub double %1469, %sub69.i
  store double %sub72.i950, double* %arrayidx71.i, align 8, !tbaa !4
  %mul73.i951 = fmul double %1459, %1464
  %mul74.i952 = fmul double %1458, %1465
  %add75.i953 = fadd double %mul73.i951, %mul74.i952
  %add.ptr11.sum639.i = add i64 %idxprom64.i, %idx.ext10.i918
  %arrayidx77.i954 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum639.i
  %1470 = load double* %arrayidx77.i954, align 8, !tbaa !4
  %sub78.i = fsub double %1470, %add75.i953
  store double %sub78.i, double* %arrayidx77.i954, align 8, !tbaa !4
  %mul79.i955 = fmul double %1460, %1464
  %mul80.i = fmul double %1461, %1465
  %sub81.i = fsub double %mul79.i955, %mul80.i
  %add.ptr14.sum640.i = add i64 %idxprom58.i944, %add.ptr11.sum.i919
  %arrayidx83.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum640.i
  %1471 = load double* %arrayidx83.i, align 8, !tbaa !4
  %sub84.i = fsub double %1471, %sub81.i
  store double %sub84.i, double* %arrayidx83.i, align 8, !tbaa !4
  %mul85.i956 = fmul double %1461, %1464
  %mul86.i957 = fmul double %1460, %1465
  %add87.i = fadd double %mul85.i956, %mul86.i957
  %add.ptr14.sum641.i = add i64 %idxprom64.i, %add.ptr11.sum.i919
  %arrayidx89.i958 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum641.i
  %1472 = load double* %arrayidx89.i958, align 8, !tbaa !4
  %sub90.i = fsub double %1472, %add87.i
  store double %sub90.i, double* %arrayidx89.i958, align 8, !tbaa !4
  %inc.i959 = add nsw i32 %ii.0672.i, 1
  %indvars.iv.next707.i = add i64 %indvars.iv706.i, 1
  %exitcond708.i = icmp eq i32 %inc.i959, %1453
  br i1 %exitcond708.i, label %for.inc151.loopexit670.i, label %for.body43.i

for.body95.i:                                     ; preds = %if.end25.i, %for.body95.i
  %indvars.iv703.i = phi i64 [ %indvars.iv.next704.i, %for.body95.i ], [ %1462, %if.end25.i ]
  %ii.1667.i = phi i32 [ %inc146.i, %for.body95.i ], [ 0, %if.end25.i ]
  %1473 = trunc i64 %indvars.iv703.i to i32
  %mul96.i = shl nsw i32 %1473, 1
  %idxprom97.i = sext i32 %mul96.i to i64
  %arrayidx98.i960 = getelementptr inbounds double* %1449, i64 %idxprom97.i
  %1474 = load double* %arrayidx98.i960, align 8, !tbaa !4
  %add100630.i = or i32 %mul96.i, 1
  %idxprom101.i = sext i32 %add100630.i to i64
  %arrayidx102.i961 = getelementptr inbounds double* %1449, i64 %idxprom101.i
  %1475 = load double* %arrayidx102.i961, align 8, !tbaa !4
  %arrayidx104.i962 = getelementptr inbounds i32* %1450, i64 %indvars.iv703.i
  %1476 = load i32* %arrayidx104.i962, align 4, !tbaa !3
  %idxprom105.i = sext i32 %1476 to i64
  %arrayidx106.i = getelementptr inbounds i32* %1451, i64 %idxprom105.i
  %1477 = load i32* %arrayidx106.i, align 4, !tbaa !3
  %mul107.i = shl nsw i32 %1477, 1
  %add108631.i = or i32 %mul107.i, 1
  %mul109.i963 = fmul double %1456, %1474
  %mul110.i964 = fmul double %1457, %1475
  %sub111.i965 = fsub double %mul109.i963, %mul110.i964
  %idxprom112.i = sext i32 %mul107.i to i64
  %arrayidx113.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom112.i
  %1478 = load double* %arrayidx113.i, align 8, !tbaa !4
  %sub114.i = fsub double %1478, %sub111.i965
  store double %sub114.i, double* %arrayidx113.i, align 8, !tbaa !4
  %mul115.i966 = fmul double %1457, %1474
  %mul116.i967 = fmul double %1456, %1475
  %add117.i = fadd double %mul115.i966, %mul116.i967
  %idxprom118.i = sext i32 %add108631.i to i64
  %arrayidx119.i968 = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom118.i
  %1479 = load double* %arrayidx119.i968, align 8, !tbaa !4
  %sub120.i = fsub double %1479, %add117.i
  store double %sub120.i, double* %arrayidx119.i968, align 8, !tbaa !4
  %mul121.i969 = fmul double %1458, %1474
  %mul122.i970 = fmul double %1459, %1475
  %sub123.i971 = fsub double %mul121.i969, %mul122.i970
  %add.ptr11.sum632.i = add i64 %idxprom112.i, %idx.ext10.i918
  %arrayidx125.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum632.i
  %1480 = load double* %arrayidx125.i, align 8, !tbaa !4
  %sub126.i = fsub double %1480, %sub123.i971
  store double %sub126.i, double* %arrayidx125.i, align 8, !tbaa !4
  %mul127.i972 = fmul double %1459, %1474
  %mul128.i973 = fmul double %1458, %1475
  %add129.i974 = fadd double %mul127.i972, %mul128.i973
  %add.ptr11.sum633.i = add i64 %idxprom118.i, %idx.ext10.i918
  %arrayidx131.i975 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum633.i
  %1481 = load double* %arrayidx131.i975, align 8, !tbaa !4
  %sub132.i976 = fsub double %1481, %add129.i974
  store double %sub132.i976, double* %arrayidx131.i975, align 8, !tbaa !4
  %mul133.i977 = fmul double %1460, %1474
  %mul134.i978 = fmul double %1461, %1475
  %sub135.i = fsub double %mul133.i977, %mul134.i978
  %add.ptr14.sum634.i = add i64 %idxprom112.i, %add.ptr11.sum.i919
  %arrayidx137.i979 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum634.i
  %1482 = load double* %arrayidx137.i979, align 8, !tbaa !4
  %sub138.i = fsub double %1482, %sub135.i
  store double %sub138.i, double* %arrayidx137.i979, align 8, !tbaa !4
  %mul139.i = fmul double %1461, %1474
  %mul140.i980 = fmul double %1460, %1475
  %add141.i = fadd double %mul139.i, %mul140.i980
  %add.ptr14.sum635.i = add i64 %idxprom118.i, %add.ptr11.sum.i919
  %arrayidx143.i981 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum635.i
  %1483 = load double* %arrayidx143.i981, align 8, !tbaa !4
  %sub144.i = fsub double %1483, %add141.i
  store double %sub144.i, double* %arrayidx143.i981, align 8, !tbaa !4
  %inc146.i = add nsw i32 %ii.1667.i, 1
  %indvars.iv.next704.i = add i64 %indvars.iv703.i, 1
  %exitcond705.i = icmp eq i32 %inc146.i, %1453
  br i1 %exitcond705.i, label %for.inc151.loopexit.i, label %for.body95.i

for.inc151.loopexit.i:                            ; preds = %for.body95.i
  %1484 = add i32 %1453, %kk.0677.i
  br label %for.inc151.i

for.inc151.loopexit670.i:                         ; preds = %for.body43.i
  %1485 = add i32 %1453, %kk.0677.i
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %for.inc151.loopexit670.i, %for.inc151.loopexit.i, %for.body17.i926
  %kk.3.i982 = phi i32 [ %kk.0677.i, %for.body17.i926 ], [ %1484, %for.inc151.loopexit.i ], [ %1485, %for.inc151.loopexit670.i ]
  %indvars.iv.next710.i = add i64 %indvars.iv709.i, 1
  %lftr.wideiv1269 = trunc i64 %indvars.iv.next710.i to i32
  %exitcond1270 = icmp eq i32 %lftr.wideiv1269, %1446
  br i1 %exitcond1270, label %for.end153.i, label %for.body17.i926

for.end153.i:                                     ; preds = %for.inc151.i, %for.body.i923
  %add.ptr156.i = getelementptr inbounds double* %colX0.0680.i, i64 %add.ptr8.sum.i920
  %add.ptr159.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum.i921
  %add161.i = add nsw i32 %jcolX.0684.i, 3
  %cmp5.i984 = icmp slt i32 %add161.i, %sub678.i912
  br i1 %cmp5.i984, label %for.body.i923, label %for.end162.i

for.end162.i:                                     ; preds = %for.end153.i, %if.end4.i913
  %jcolX.0.lcssa.i985 = phi i32 [ 0, %if.end4.i913 ], [ %add161.i, %for.end153.i ]
  %colY0.0.lcssa.i986 = phi double* [ %1442, %if.end4.i913 ], [ %add.ptr159.i, %for.end153.i ]
  %colX0.0.lcssa.i987 = phi double* [ %1441, %if.end4.i913 ], [ %add.ptr156.i, %for.end153.i ]
  %cmp164.i988 = icmp eq i32 %jcolX.0.lcssa.i985, %sub678.i912
  br i1 %cmp164.i988, label %if.then165.i, label %if.else289.i

if.then165.i:                                     ; preds = %for.end162.i
  %1486 = load i32* %nrowX.i898, align 4, !tbaa !3
  %mul166.i989 = shl nsw i32 %1486, 1
  %idx.ext167.i = sext i32 %mul166.i989 to i64
  %1487 = load i32* %nrowY.i899, align 4, !tbaa !3
  %mul169.i = shl nsw i32 %1487, 1
  %idx.ext170.i = sext i32 %mul169.i to i64
  %1488 = load i32* %ncolA.i893, align 4, !tbaa !3
  %cmp173650.i = icmp sgt i32 %1488, 0
  br i1 %cmp173650.i, label %for.body174.lr.ph.i, label %sw.epilog34

for.body174.lr.ph.i:                              ; preds = %if.then165.i
  %1489 = load i32** %sizes.i903, align 8, !tbaa !0
  %1490 = load i32* %nrowA.i897, align 4, !tbaa !3
  %cmp195.i990 = icmp eq i32 %1490, %1487
  %1491 = load double** %entA.i888, align 8, !tbaa !0
  %1492 = load i32** %indices.i901, align 8, !tbaa !0
  %1493 = load i32** %rowindA.i902, align 8, !tbaa !0
  %1494 = load i32** %colindA.i900, align 8, !tbaa !0
  %cmp179.i = icmp eq i32 %1488, %1486
  br label %for.body174.i

for.body174.i:                                    ; preds = %for.inc286.i, %for.body174.lr.ph.i
  %indvars.iv693.i = phi i64 [ 0, %for.body174.lr.ph.i ], [ %indvars.iv.next694.i, %for.inc286.i ]
  %kk.4652.i = phi i32 [ 0, %for.body174.lr.ph.i ], [ %kk.7.i1030, %for.inc286.i ]
  %arrayidx176.i = getelementptr inbounds i32* %1489, i64 %indvars.iv693.i
  %1495 = load i32* %arrayidx176.i, align 4, !tbaa !3
  %cmp177.i = icmp sgt i32 %1495, 0
  br i1 %cmp177.i, label %if.then178.i, label %for.inc286.i

if.then178.i:                                     ; preds = %for.body174.i
  %1496 = trunc i64 %indvars.iv693.i to i32
  br i1 %cmp179.i, label %if.end184.i, label %if.else181.i

if.else181.i:                                     ; preds = %if.then178.i
  %arrayidx183.i991 = getelementptr inbounds i32* %1494, i64 %indvars.iv693.i
  %1497 = load i32* %arrayidx183.i991, align 4, !tbaa !3
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else181.i, %if.then178.i
  %jrowX.1.i992 = phi i32 [ %1497, %if.else181.i ], [ %1496, %if.then178.i ]
  %mul185.i = shl nsw i32 %jrowX.1.i992, 1
  %add186616.i = or i32 %mul185.i, 1
  %idxprom187.i = sext i32 %mul185.i to i64
  %arrayidx188.i = getelementptr inbounds double* %colX0.0.lcssa.i987, i64 %idxprom187.i
  %1498 = load double* %arrayidx188.i, align 8, !tbaa !4
  %idxprom189.i = sext i32 %add186616.i to i64
  %arrayidx190.i993 = getelementptr inbounds double* %colX0.0.lcssa.i987, i64 %idxprom189.i
  %1499 = load double* %arrayidx190.i993, align 8, !tbaa !4
  %add.ptr168.sum.i = add i64 %idxprom187.i, %idx.ext167.i
  %arrayidx192.i994 = getelementptr inbounds double* %colX0.0.lcssa.i987, i64 %add.ptr168.sum.i
  %1500 = load double* %arrayidx192.i994, align 8, !tbaa !4
  %add.ptr168.sum617.i = add i64 %idxprom189.i, %idx.ext167.i
  %arrayidx194.i995 = getelementptr inbounds double* %colX0.0.lcssa.i987, i64 %add.ptr168.sum617.i
  %1501 = load double* %arrayidx194.i995, align 8, !tbaa !4
  %1502 = sext i32 %kk.4652.i to i64
  br i1 %cmp195.i990, label %for.body199.i, label %for.body242.i

for.body199.i:                                    ; preds = %if.end184.i, %for.body199.i
  %indvars.iv690.i = phi i64 [ %indvars.iv.next691.i, %for.body199.i ], [ %1502, %if.end184.i ]
  %ii.2647.i = phi i32 [ %inc236.i, %for.body199.i ], [ 0, %if.end184.i ]
  %1503 = trunc i64 %indvars.iv690.i to i32
  %mul200.i996 = shl nsw i32 %1503, 1
  %idxprom201.i = sext i32 %mul200.i996 to i64
  %arrayidx202.i997 = getelementptr inbounds double* %1491, i64 %idxprom201.i
  %1504 = load double* %arrayidx202.i997, align 8, !tbaa !4
  %add204621.i = or i32 %mul200.i996, 1
  %idxprom205.i = sext i32 %add204621.i to i64
  %arrayidx206.i = getelementptr inbounds double* %1491, i64 %idxprom205.i
  %1505 = load double* %arrayidx206.i, align 8, !tbaa !4
  %arrayidx208.i998 = getelementptr inbounds i32* %1492, i64 %indvars.iv690.i
  %1506 = load i32* %arrayidx208.i998, align 4, !tbaa !3
  %mul209.i999 = shl nsw i32 %1506, 1
  %add210622.i = or i32 %mul209.i999, 1
  %mul211.i1000 = fmul double %1498, %1504
  %mul212.i1001 = fmul double %1499, %1505
  %sub213.i = fsub double %mul211.i1000, %mul212.i1001
  %idxprom214.i = sext i32 %mul209.i999 to i64
  %arrayidx215.i = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom214.i
  %1507 = load double* %arrayidx215.i, align 8, !tbaa !4
  %sub216.i = fsub double %1507, %sub213.i
  store double %sub216.i, double* %arrayidx215.i, align 8, !tbaa !4
  %mul217.i = fmul double %1499, %1504
  %mul218.i = fmul double %1498, %1505
  %add219.i = fadd double %mul217.i, %mul218.i
  %idxprom220.i1002 = sext i32 %add210622.i to i64
  %arrayidx221.i1003 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom220.i1002
  %1508 = load double* %arrayidx221.i1003, align 8, !tbaa !4
  %sub222.i = fsub double %1508, %add219.i
  store double %sub222.i, double* %arrayidx221.i1003, align 8, !tbaa !4
  %mul223.i1004 = fmul double %1500, %1504
  %mul224.i1005 = fmul double %1501, %1505
  %sub225.i1006 = fsub double %mul223.i1004, %mul224.i1005
  %add.ptr171.sum623.i = add i64 %idxprom214.i, %idx.ext170.i
  %arrayidx227.i1007 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %add.ptr171.sum623.i
  %1509 = load double* %arrayidx227.i1007, align 8, !tbaa !4
  %sub228.i = fsub double %1509, %sub225.i1006
  store double %sub228.i, double* %arrayidx227.i1007, align 8, !tbaa !4
  %mul229.i1008 = fmul double %1501, %1504
  %mul230.i1009 = fmul double %1500, %1505
  %add231.i1010 = fadd double %mul229.i1008, %mul230.i1009
  %add.ptr171.sum624.i = add i64 %idxprom220.i1002, %idx.ext170.i
  %arrayidx233.i1011 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %add.ptr171.sum624.i
  %1510 = load double* %arrayidx233.i1011, align 8, !tbaa !4
  %sub234.i = fsub double %1510, %add231.i1010
  store double %sub234.i, double* %arrayidx233.i1011, align 8, !tbaa !4
  %inc236.i = add nsw i32 %ii.2647.i, 1
  %indvars.iv.next691.i = add i64 %indvars.iv690.i, 1
  %exitcond692.i = icmp eq i32 %inc236.i, %1495
  br i1 %exitcond692.i, label %for.inc286.loopexit645.i, label %for.body199.i

for.body242.i:                                    ; preds = %if.end184.i, %for.body242.i
  %indvars.iv.i1012 = phi i64 [ %indvars.iv.next.i1028, %for.body242.i ], [ %1502, %if.end184.i ]
  %ii.3643.i = phi i32 [ %inc281.i, %for.body242.i ], [ 0, %if.end184.i ]
  %1511 = trunc i64 %indvars.iv.i1012 to i32
  %mul243.i1013 = shl nsw i32 %1511, 1
  %idxprom244.i = sext i32 %mul243.i1013 to i64
  %arrayidx245.i = getelementptr inbounds double* %1491, i64 %idxprom244.i
  %1512 = load double* %arrayidx245.i, align 8, !tbaa !4
  %add247618.i = or i32 %mul243.i1013, 1
  %idxprom248.i1014 = sext i32 %add247618.i to i64
  %arrayidx249.i1015 = getelementptr inbounds double* %1491, i64 %idxprom248.i1014
  %1513 = load double* %arrayidx249.i1015, align 8, !tbaa !4
  %arrayidx251.i = getelementptr inbounds i32* %1492, i64 %indvars.iv.i1012
  %1514 = load i32* %arrayidx251.i, align 4, !tbaa !3
  %idxprom252.i = sext i32 %1514 to i64
  %arrayidx253.i = getelementptr inbounds i32* %1493, i64 %idxprom252.i
  %1515 = load i32* %arrayidx253.i, align 4, !tbaa !3
  %mul254.i = shl nsw i32 %1515, 1
  %add255619.i = or i32 %mul254.i, 1
  %mul256.i = fmul double %1498, %1512
  %mul257.i1016 = fmul double %1499, %1513
  %sub258.i = fsub double %mul256.i, %mul257.i1016
  %idxprom259.i1017 = sext i32 %mul254.i to i64
  %arrayidx260.i1018 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom259.i1017
  %1516 = load double* %arrayidx260.i1018, align 8, !tbaa !4
  %sub261.i1019 = fsub double %1516, %sub258.i
  store double %sub261.i1019, double* %arrayidx260.i1018, align 8, !tbaa !4
  %mul262.i1020 = fmul double %1499, %1512
  %mul263.i = fmul double %1498, %1513
  %add264.i = fadd double %mul262.i1020, %mul263.i
  %idxprom265.i1021 = sext i32 %add255619.i to i64
  %arrayidx266.i1022 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom265.i1021
  %1517 = load double* %arrayidx266.i1022, align 8, !tbaa !4
  %sub267.i1023 = fsub double %1517, %add264.i
  store double %sub267.i1023, double* %arrayidx266.i1022, align 8, !tbaa !4
  %mul268.i = fmul double %1500, %1512
  %mul269.i = fmul double %1501, %1513
  %sub270.i1024 = fsub double %mul268.i, %mul269.i
  %add.ptr171.sum.i = add i64 %idxprom259.i1017, %idx.ext170.i
  %arrayidx272.i1025 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %add.ptr171.sum.i
  %1518 = load double* %arrayidx272.i1025, align 8, !tbaa !4
  %sub273.i1026 = fsub double %1518, %sub270.i1024
  store double %sub273.i1026, double* %arrayidx272.i1025, align 8, !tbaa !4
  %mul274.i1027 = fmul double %1501, %1512
  %mul275.i = fmul double %1500, %1513
  %add276.i = fadd double %mul274.i1027, %mul275.i
  %add.ptr171.sum620.i = add i64 %idxprom265.i1021, %idx.ext170.i
  %arrayidx278.i = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %add.ptr171.sum620.i
  %1519 = load double* %arrayidx278.i, align 8, !tbaa !4
  %sub279.i = fsub double %1519, %add276.i
  store double %sub279.i, double* %arrayidx278.i, align 8, !tbaa !4
  %inc281.i = add nsw i32 %ii.3643.i, 1
  %indvars.iv.next.i1028 = add i64 %indvars.iv.i1012, 1
  %exitcond.i1029 = icmp eq i32 %inc281.i, %1495
  br i1 %exitcond.i1029, label %for.inc286.loopexit.i, label %for.body242.i

for.inc286.loopexit.i:                            ; preds = %for.body242.i
  %1520 = add i32 %1495, %kk.4652.i
  br label %for.inc286.i

for.inc286.loopexit645.i:                         ; preds = %for.body199.i
  %1521 = add i32 %1495, %kk.4652.i
  br label %for.inc286.i

for.inc286.i:                                     ; preds = %for.inc286.loopexit645.i, %for.inc286.loopexit.i, %for.body174.i
  %kk.7.i1030 = phi i32 [ %kk.4652.i, %for.body174.i ], [ %1520, %for.inc286.loopexit.i ], [ %1521, %for.inc286.loopexit645.i ]
  %indvars.iv.next694.i = add i64 %indvars.iv693.i, 1
  %lftr.wideiv1265 = trunc i64 %indvars.iv.next694.i to i32
  %exitcond1266 = icmp eq i32 %lftr.wideiv1265, %1488
  br i1 %exitcond1266, label %sw.epilog34, label %for.body174.i

if.else289.i:                                     ; preds = %for.end162.i
  %sub290.i1031 = add nsw i32 %1443, -1
  %cmp291.i = icmp eq i32 %jcolX.0.lcssa.i985, %sub290.i1031
  br i1 %cmp291.i, label %for.cond293.preheader.i, label %sw.epilog34

for.cond293.preheader.i:                          ; preds = %if.else289.i
  %1522 = load i32* %ncolA.i893, align 4, !tbaa !3
  %cmp294663.i = icmp sgt i32 %1522, 0
  br i1 %cmp294663.i, label %for.body295.lr.ph.i, label %sw.epilog34

for.body295.lr.ph.i:                              ; preds = %for.cond293.preheader.i
  %1523 = load i32** %sizes.i903, align 8, !tbaa !0
  %1524 = load i32* %nrowX.i898, align 4, !tbaa !3
  %1525 = load i32* %nrowA.i897, align 4, !tbaa !3
  %1526 = load i32* %nrowY.i899, align 4, !tbaa !3
  %cmp312.i = icmp eq i32 %1525, %1526
  %1527 = load double** %entA.i888, align 8, !tbaa !0
  %1528 = load i32** %indices.i901, align 8, !tbaa !0
  %1529 = load i32** %rowindA.i902, align 8, !tbaa !0
  %1530 = load i32** %colindA.i900, align 8, !tbaa !0
  %cmp300.i = icmp eq i32 %1522, %1524
  br label %for.body295.i

for.body295.i:                                    ; preds = %for.inc379.i, %for.body295.lr.ph.i
  %indvars.iv701.i = phi i64 [ 0, %for.body295.lr.ph.i ], [ %indvars.iv.next702.i, %for.inc379.i ]
  %kk.8665.i = phi i32 [ 0, %for.body295.lr.ph.i ], [ %kk.11.i1052, %for.inc379.i ]
  %arrayidx297.i1032 = getelementptr inbounds i32* %1523, i64 %indvars.iv701.i
  %1531 = load i32* %arrayidx297.i1032, align 4, !tbaa !3
  %cmp298.i = icmp sgt i32 %1531, 0
  br i1 %cmp298.i, label %if.then299.i, label %for.inc379.i

if.then299.i:                                     ; preds = %for.body295.i
  %1532 = trunc i64 %indvars.iv701.i to i32
  br i1 %cmp300.i, label %if.end305.i, label %if.else302.i

if.else302.i:                                     ; preds = %if.then299.i
  %arrayidx304.i1033 = getelementptr inbounds i32* %1530, i64 %indvars.iv701.i
  %1533 = load i32* %arrayidx304.i1033, align 4, !tbaa !3
  br label %if.end305.i

if.end305.i:                                      ; preds = %if.else302.i, %if.then299.i
  %jrowX.2.i1034 = phi i32 [ %1533, %if.else302.i ], [ %1532, %if.then299.i ]
  %mul306.i1035 = shl nsw i32 %jrowX.2.i1034, 1
  %add307611.i = or i32 %mul306.i1035, 1
  %idxprom308.i = sext i32 %mul306.i1035 to i64
  %arrayidx309.i1036 = getelementptr inbounds double* %colX0.0.lcssa.i987, i64 %idxprom308.i
  %1534 = load double* %arrayidx309.i1036, align 8, !tbaa !4
  %idxprom310.i = sext i32 %add307611.i to i64
  %arrayidx311.i1037 = getelementptr inbounds double* %colX0.0.lcssa.i987, i64 %idxprom310.i
  %1535 = load double* %arrayidx311.i1037, align 8, !tbaa !4
  %1536 = sext i32 %kk.8665.i to i64
  br i1 %cmp312.i, label %for.body316.i, label %for.body347.i

for.body316.i:                                    ; preds = %if.end305.i, %for.body316.i
  %indvars.iv698.i = phi i64 [ %indvars.iv.next699.i, %for.body316.i ], [ %1536, %if.end305.i ]
  %ii.4659.i = phi i32 [ %inc341.i, %for.body316.i ], [ 0, %if.end305.i ]
  %1537 = trunc i64 %indvars.iv698.i to i32
  %mul317.i = shl nsw i32 %1537, 1
  %idxprom318.i = sext i32 %mul317.i to i64
  %arrayidx319.i1038 = getelementptr inbounds double* %1527, i64 %idxprom318.i
  %1538 = load double* %arrayidx319.i1038, align 8, !tbaa !4
  %add321614.i = or i32 %mul317.i, 1
  %idxprom322.i = sext i32 %add321614.i to i64
  %arrayidx323.i = getelementptr inbounds double* %1527, i64 %idxprom322.i
  %1539 = load double* %arrayidx323.i, align 8, !tbaa !4
  %arrayidx325.i1039 = getelementptr inbounds i32* %1528, i64 %indvars.iv698.i
  %1540 = load i32* %arrayidx325.i1039, align 4, !tbaa !3
  %mul326.i = shl nsw i32 %1540, 1
  %add327615.i = or i32 %mul326.i, 1
  %mul328.i = fmul double %1534, %1538
  %mul329.i = fmul double %1535, %1539
  %sub330.i1040 = fsub double %mul328.i, %mul329.i
  %idxprom331.i = sext i32 %mul326.i to i64
  %arrayidx332.i1041 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom331.i
  %1541 = load double* %arrayidx332.i1041, align 8, !tbaa !4
  %sub333.i1042 = fsub double %1541, %sub330.i1040
  store double %sub333.i1042, double* %arrayidx332.i1041, align 8, !tbaa !4
  %mul334.i = fmul double %1535, %1538
  %mul335.i = fmul double %1534, %1539
  %add336.i = fadd double %mul334.i, %mul335.i
  %idxprom337.i = sext i32 %add327615.i to i64
  %arrayidx338.i1043 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom337.i
  %1542 = load double* %arrayidx338.i1043, align 8, !tbaa !4
  %sub339.i1044 = fsub double %1542, %add336.i
  store double %sub339.i1044, double* %arrayidx338.i1043, align 8, !tbaa !4
  %inc341.i = add nsw i32 %ii.4659.i, 1
  %indvars.iv.next699.i = add i64 %indvars.iv698.i, 1
  %exitcond700.i = icmp eq i32 %inc341.i, %1531
  br i1 %exitcond700.i, label %for.inc379.loopexit657.i, label %for.body316.i

for.body347.i:                                    ; preds = %if.end305.i, %for.body347.i
  %indvars.iv695.i = phi i64 [ %indvars.iv.next696.i, %for.body347.i ], [ %1536, %if.end305.i ]
  %ii.5654.i = phi i32 [ %inc374.i, %for.body347.i ], [ 0, %if.end305.i ]
  %1543 = trunc i64 %indvars.iv695.i to i32
  %mul348.i = shl nsw i32 %1543, 1
  %idxprom349.i = sext i32 %mul348.i to i64
  %arrayidx350.i = getelementptr inbounds double* %1527, i64 %idxprom349.i
  %1544 = load double* %arrayidx350.i, align 8, !tbaa !4
  %add352612.i = or i32 %mul348.i, 1
  %idxprom353.i1045 = sext i32 %add352612.i to i64
  %arrayidx354.i1046 = getelementptr inbounds double* %1527, i64 %idxprom353.i1045
  %1545 = load double* %arrayidx354.i1046, align 8, !tbaa !4
  %arrayidx356.i1047 = getelementptr inbounds i32* %1528, i64 %indvars.iv695.i
  %1546 = load i32* %arrayidx356.i1047, align 4, !tbaa !3
  %idxprom357.i = sext i32 %1546 to i64
  %arrayidx358.i1048 = getelementptr inbounds i32* %1529, i64 %idxprom357.i
  %1547 = load i32* %arrayidx358.i1048, align 4, !tbaa !3
  %mul359.i = shl nsw i32 %1547, 1
  %add360613.i = or i32 %mul359.i, 1
  %mul361.i1049 = fmul double %1534, %1544
  %mul362.i1050 = fmul double %1535, %1545
  %sub363.i = fsub double %mul361.i1049, %mul362.i1050
  %idxprom364.i = sext i32 %mul359.i to i64
  %arrayidx365.i1051 = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom364.i
  %1548 = load double* %arrayidx365.i1051, align 8, !tbaa !4
  %sub366.i = fsub double %1548, %sub363.i
  store double %sub366.i, double* %arrayidx365.i1051, align 8, !tbaa !4
  %mul367.i = fmul double %1535, %1544
  %mul368.i = fmul double %1534, %1545
  %add369.i = fadd double %mul367.i, %mul368.i
  %idxprom370.i = sext i32 %add360613.i to i64
  %arrayidx371.i = getelementptr inbounds double* %colY0.0.lcssa.i986, i64 %idxprom370.i
  %1549 = load double* %arrayidx371.i, align 8, !tbaa !4
  %sub372.i = fsub double %1549, %add369.i
  store double %sub372.i, double* %arrayidx371.i, align 8, !tbaa !4
  %inc374.i = add nsw i32 %ii.5654.i, 1
  %indvars.iv.next696.i = add i64 %indvars.iv695.i, 1
  %exitcond697.i = icmp eq i32 %inc374.i, %1531
  br i1 %exitcond697.i, label %for.inc379.loopexit.i, label %for.body347.i

for.inc379.loopexit.i:                            ; preds = %for.body347.i
  %1550 = add i32 %1531, %kk.8665.i
  br label %for.inc379.i

for.inc379.loopexit657.i:                         ; preds = %for.body316.i
  %1551 = add i32 %1531, %kk.8665.i
  br label %for.inc379.i

for.inc379.i:                                     ; preds = %for.inc379.loopexit657.i, %for.inc379.loopexit.i, %for.body295.i
  %kk.11.i1052 = phi i32 [ %kk.8665.i, %for.body295.i ], [ %1550, %for.inc379.loopexit.i ], [ %1551, %for.inc379.loopexit657.i ]
  %indvars.iv.next702.i = add i64 %indvars.iv701.i, 1
  %lftr.wideiv1267 = trunc i64 %indvars.iv.next702.i to i32
  %exitcond1268 = icmp eq i32 %lftr.wideiv1267, %1522
  br i1 %exitcond1268, label %sw.epilog34, label %for.body295.i

sw.default26:                                     ; preds = %sw.bb20
  %1552 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1552, i8* getelementptr inbounds ([71 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %628) #5
  %1553 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtxA, %struct._IO_FILE* %1553) #5
  call void @exit(i32 -1) #6
  unreachable

sw.default31:                                     ; preds = %if.end12
  %1554 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1554, i8* getelementptr inbounds ([71 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %5) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog34:                                      ; preds = %for.inc379.i, %for.inc286.i, %for.inc421.i, %for.inc322.i, %for.body1623.i, %for.body1598.i, %for.body1531.i, %for.body1494.i, %for.body1234.i, %for.body1197.i, %for.body1102.i, %for.body1045.i, %for.inc215.i, %for.inc156.i, %for.inc239.i, %for.inc176.i, %for.body773.i, %for.body760.i, %for.body725.i, %for.body708.i, %for.body573.i, %for.body556.i, %for.body511.i, %for.body488.i, %for.cond293.preheader.i, %if.else289.i, %if.then165.i, %for.cond329.preheader.i, %if.else325.i, %if.then187.i, %if.else1947.i, %if.then1938.i, %if.else1863.i, %if.else1840.i, %if.then1823.i, %if.else1512.i, %if.else1492.i, %if.then1477.i, %if.else1374.i, %if.else1336.i, %if.then1307.i, %for.cond1596.preheader.i, %for.cond1621.preheader.i, %if.else1572.i, %for.cond1492.preheader.i, %for.cond1529.preheader.i, %if.else1277.i, %for.cond1195.preheader.i, %for.cond1232.preheader.i, %if.else1163.i, %for.cond1043.preheader.i, %for.cond1100.preheader.i, %for.cond163.preheader.i, %if.else159.i, %if.then89.i, %for.cond183.preheader.i, %if.else179.i, %if.then101.i, %if.else908.i, %if.then904.i, %if.else866.i, %if.else853.i, %if.then845.i, %if.else694.i, %if.else682.i, %if.then675.i, %if.else627.i, %if.else608.i, %if.then593.i, %for.cond758.preheader.i, %for.cond771.preheader.i, %if.else742.i, %for.cond706.preheader.i, %for.cond723.preheader.i, %if.else592.i, %for.cond554.preheader.i, %for.cond571.preheader.i, %if.else534.i, %for.cond486.preheader.i, %for.cond509.preheader.i
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

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
