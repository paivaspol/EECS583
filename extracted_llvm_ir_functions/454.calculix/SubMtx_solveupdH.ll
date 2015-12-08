; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveupdH.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_solveupdH(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"\0A fatal error in SubMtx_solveupdH(%p,%p,%p)\0A Y has type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [84 x i8] c"\0A fatal error in SubMtx_solveupdH(%p,%p,%p)\0A Y must have mode SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str3 = private unnamed_addr constant [84 x i8] c"\0A fatal error in SubMtx_solveupdH(%p,%p,%p)\0A X must have mode SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in SubMtx_solveupdH(%p,%p,%p)\0A unsupported mode %d for A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solveupdH(%struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #0 {
entry:
  %entA.i357 = alloca double*, align 8
  %entX.i358 = alloca double*, align 8
  %entY.i359 = alloca double*, align 8
  %inc1.i360 = alloca i32, align 4
  %inc2.i361 = alloca i32, align 4
  %ncolAT.i362 = alloca i32, align 4
  %ncolX.i363 = alloca i32, align 4
  %ncolY.i364 = alloca i32, align 4
  %nentA.i365 = alloca i32, align 4
  %nrowAT.i366 = alloca i32, align 4
  %nrowX.i367 = alloca i32, align 4
  %nrowY.i368 = alloca i32, align 4
  %colindAT.i369 = alloca i32*, align 8
  %indices.i370 = alloca i32*, align 8
  %rowindAT.i371 = alloca i32*, align 8
  %sizes.i372 = alloca i32*, align 8
  %entA.i263 = alloca double*, align 8
  %entX.i264 = alloca double*, align 8
  %entY.i265 = alloca double*, align 8
  %inc1.i266 = alloca i32, align 4
  %inc2.i267 = alloca i32, align 4
  %ncolAT.i268 = alloca i32, align 4
  %ncolX.i269 = alloca i32, align 4
  %ncolY.i270 = alloca i32, align 4
  %nentA.i = alloca i32, align 4
  %nrowAT.i271 = alloca i32, align 4
  %nrowX.i272 = alloca i32, align 4
  %nrowY.i273 = alloca i32, align 4
  %colindAT.i274 = alloca i32*, align 8
  %indices.i = alloca i32*, align 8
  %rowindAT.i275 = alloca i32*, align 8
  %sizes.i = alloca i32*, align 8
  %entA.i60 = alloca double*, align 8
  %entX.i61 = alloca double*, align 8
  %entY.i62 = alloca double*, align 8
  %inc1.i63 = alloca i32, align 4
  %inc2.i64 = alloca i32, align 4
  %ncolAT.i65 = alloca i32, align 4
  %ncolX.i66 = alloca i32, align 4
  %ncolY.i67 = alloca i32, align 4
  %nrowAT.i68 = alloca i32, align 4
  %nrowX.i69 = alloca i32, align 4
  %nrowY.i70 = alloca i32, align 4
  %colindAT.i71 = alloca i32*, align 8
  %rowindAT.i72 = alloca i32*, align 8
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
  %or.cond59 = or i1 %or.cond, %cmp3
  br i1 %or.cond59, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 2
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end8:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxY, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([84 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end8
  %mode13 = getelementptr inbounds %struct._SubMtx* %mtxX, i64 0, i32 1
  %5 = load i32* %mode13, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %5, 1
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([84 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end17:                                         ; preds = %if.end12
  %mode18 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %7 = load i32* %mode18, align 4, !tbaa !3
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb19
    i32 2, label %sw.bb20
    i32 3, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end17
  %8 = bitcast double** %entA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #4
  %9 = bitcast double** %entX.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  %10 = bitcast double** %entY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #4
  %11 = bitcast i32* %inc1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #4
  %12 = bitcast i32* %inc2.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #4
  %13 = bitcast i32* %ncolAT.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #4
  %14 = bitcast i32* %ncolX.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #4
  %15 = bitcast i32* %ncolY.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #4
  %16 = bitcast i32* %nrowAT.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #4
  %17 = bitcast i32* %nrowX.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #4
  %18 = bitcast i32* %nrowY.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #4
  %19 = bitcast i32** %colindAT.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #4
  %20 = bitcast i32** %rowindAT.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i, i32* %ncolY.i, i32* %inc1.i, i32* %inc2.i, double** %entY.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i, i32* %ncolX.i, i32* %inc1.i, i32* %inc2.i, double** %entX.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i, i32* %nrowAT.i, i32* %inc1.i, i32* %inc2.i, double** %entA.i) #5
  %21 = load i32* %ncolAT.i, align 4, !tbaa !3
  %22 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %21, %22
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i, i32** %colindAT.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  store i32* null, i32** %colindAT.i, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %23 = load i32* %nrowAT.i, align 4, !tbaa !3
  %24 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %23, %24
  br i1 %cmp1.i, label %if.else3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i, i32** %rowindAT.i) #5
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.end.i
  store i32* null, i32** %rowindAT.i, align 8, !tbaa !0
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i
  %25 = load double** %entX.i, align 8, !tbaa !0
  %26 = load double** %entY.i, align 8, !tbaa !0
  %27 = load i32* %ncolX.i, align 4, !tbaa !3
  %sub3928.i = add nsw i32 %27, -2
  %cmp53929.i = icmp sgt i32 %sub3928.i, 0
  br i1 %cmp53929.i, label %for.body.lr.ph.i, label %for.end840.i

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %28 = load i32* %nrowX.i, align 4, !tbaa !3
  %mul.i = shl nsw i32 %28, 1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1
  %29 = load i32* %nrowY.i, align 4, !tbaa !3
  %mul9.i = shl nsw i32 %29, 1
  %idx.ext10.i = sext i32 %mul9.i to i64
  %add.ptr11.sum.i = shl nsw i64 %idx.ext10.i, 1
  %30 = load double** %entA.i, align 8, !tbaa !0
  %31 = load i32* %nrowAT.i, align 4, !tbaa !3
  %sub163832.i = add nsw i32 %31, -2
  %cmp173833.i = icmp sgt i32 %sub163832.i, 0
  %32 = load i32* %ncolAT.i, align 4, !tbaa !3
  %mul404.i = shl nsw i32 %32, 1
  %idx.ext405.i = sext i32 %mul404.i to i64
  %cmp407.i = icmp eq i32 %32, %28
  %cmp567.i = icmp eq i32 %29, %31
  %33 = load i32** %rowindAT.i, align 8, !tbaa !0
  %cmp4873872.i = icmp sgt i32 %32, 0
  %34 = load i32** %colindAT.i, align 8, !tbaa !0
  %add.ptr8.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i
  %add.ptr14.sum.i = add i64 %add.ptr11.sum.i, %idx.ext10.i
  %add.ptr21.sum.i = shl nsw i64 %idx.ext405.i, 1
  %add.ptr24.sum.i = add i64 %add.ptr21.sum.i, %idx.ext405.i
  %mul569.i = shl nsw i32 %sub163832.i, 1
  %add5703488.i = or i32 %mul569.i, 1
  %idxprom571.i = sext i32 %mul569.i to i64
  %idxprom574.i = sext i32 %add5703488.i to i64
  %add.ptr11.sum3489.i = add i64 %idxprom571.i, %idx.ext10.i
  %add.ptr11.sum3490.i = add i64 %idxprom574.i, %idx.ext10.i
  %add.ptr14.sum3491.i = add i64 %idxprom571.i, %add.ptr11.sum.i
  %add.ptr14.sum3492.i = add i64 %idxprom574.i, %add.ptr11.sum.i
  %add589.i = add nsw i32 %mul569.i, 2
  %add590.i = add nsw i32 %add5703488.i, 2
  %idxprom591.i = sext i32 %add589.i to i64
  %idxprom594.i = sext i32 %add590.i to i64
  %add.ptr11.sum3493.i = add i64 %idxprom591.i, %idx.ext10.i
  %add.ptr11.sum3494.i = add i64 %idxprom594.i, %idx.ext10.i
  %add.ptr14.sum3495.i = add i64 %idxprom591.i, %add.ptr11.sum.i
  %add.ptr14.sum3496.i = add i64 %idxprom594.i, %add.ptr11.sum.i
  %idxprom610.i = sext i32 %sub163832.i to i64
  %arrayidx611.i = getelementptr inbounds i32* %33, i64 %idxprom610.i
  %add632.i = add nsw i32 %31, -1
  %idxprom633.i = sext i32 %add632.i to i64
  %arrayidx634.i = getelementptr inbounds i32* %33, i64 %idxprom633.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end831.i, %for.body.lr.ph.i
  %colX0.03934.i = phi double* [ %25, %for.body.lr.ph.i ], [ %add.ptr834.i, %if.end831.i ]
  %colY0.03931.i = phi double* [ %26, %for.body.lr.ph.i ], [ %add.ptr837.i, %if.end831.i ]
  %jcolX.03930.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add839.i, %if.end831.i ]
  br i1 %cmp173833.i, label %for.body18.i, label %for.end372.i

for.body18.i:                                     ; preds = %for.body.i, %if.end366.i
  %indvars.iv3986.i = phi i64 [ %indvars.iv.next3987.i, %if.end366.i ], [ 0, %for.body.i ]
  %rowAT0.03835.i = phi double* [ %add.ptr369.i, %if.end366.i ], [ %30, %for.body.i ]
  %irowAT.03834.i = phi i32 [ %add371.i, %if.end366.i ], [ 0, %for.body.i ]
  br i1 %cmp407.i, label %for.cond27.preheader.i, label %for.cond126.preheader.i

for.cond27.preheader.i:                           ; preds = %for.body18.i
  br i1 %cmp4873872.i, label %for.body29.i, label %if.end234.i

for.cond126.preheader.i:                          ; preds = %for.body18.i
  br i1 %cmp4873872.i, label %for.body128.i, label %if.end234.i

for.body29.i:                                     ; preds = %for.cond27.preheader.i, %for.body29.i
  %indvars.iv3982.i = phi i64 [ %indvars.iv.next3983.i, %for.body29.i ], [ 0, %for.cond27.preheader.i ]
  %isum00.03811.i = phi double [ %add60.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum01.03810.i = phi double [ %add68.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum02.03809.i = phi double [ %add76.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum10.03808.i = phi double [ %add84.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum11.03807.i = phi double [ %add92.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum12.03806.i = phi double [ %add100.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum20.03805.i = phi double [ %add108.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum21.03804.i = phi double [ %add116.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum22.03803.i = phi double [ %add124.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum00.03802.i = phi double [ %add56.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum01.03801.i = phi double [ %add64.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum02.03800.i = phi double [ %add72.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum10.03799.i = phi double [ %add80.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum11.03798.i = phi double [ %add88.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum12.03797.i = phi double [ %add96.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum20.03796.i = phi double [ %add104.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum21.03795.i = phi double [ %add112.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum22.03794.i = phi double [ %add120.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %35 = trunc i64 %indvars.iv3982.i to i32
  %mul30.i = shl nsw i32 %35, 1
  %add3549.i = or i32 %mul30.i, 1
  %idxprom.i = sext i32 %mul30.i to i64
  %arrayidx.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom.i
  %36 = load double* %arrayidx.i, align 8, !tbaa !4
  %idxprom31.i = sext i32 %add3549.i to i64
  %arrayidx32.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom31.i
  %37 = load double* %arrayidx32.i, align 8, !tbaa !4
  %add.ptr21.sum3550.i = add i64 %idxprom.i, %idx.ext405.i
  %arrayidx34.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3550.i
  %38 = load double* %arrayidx34.i, align 8, !tbaa !4
  %add.ptr21.sum3551.i = add i64 %idxprom31.i, %idx.ext405.i
  %arrayidx36.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3551.i
  %39 = load double* %arrayidx36.i, align 8, !tbaa !4
  %add.ptr24.sum3552.i = add i64 %idxprom.i, %add.ptr21.sum.i
  %arrayidx38.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3552.i
  %40 = load double* %arrayidx38.i, align 8, !tbaa !4
  %add.ptr24.sum3553.i = add i64 %idxprom31.i, %add.ptr21.sum.i
  %arrayidx40.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3553.i
  %41 = load double* %arrayidx40.i, align 8, !tbaa !4
  %arrayidx42.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom.i
  %42 = load double* %arrayidx42.i, align 8, !tbaa !4
  %arrayidx44.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom31.i
  %43 = load double* %arrayidx44.i, align 8, !tbaa !4
  %add.ptr.sum3554.i = add i64 %idxprom.i, %idx.ext.i
  %arrayidx46.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3554.i
  %44 = load double* %arrayidx46.i, align 8, !tbaa !4
  %add.ptr.sum3555.i = add i64 %idxprom31.i, %idx.ext.i
  %arrayidx48.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3555.i
  %45 = load double* %arrayidx48.i, align 8, !tbaa !4
  %add.ptr8.sum3556.i = add i64 %idxprom.i, %add.ptr.sum.i
  %arrayidx50.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3556.i
  %46 = load double* %arrayidx50.i, align 8, !tbaa !4
  %add.ptr8.sum3557.i = add i64 %idxprom31.i, %add.ptr.sum.i
  %arrayidx52.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3557.i
  %47 = load double* %arrayidx52.i, align 8, !tbaa !4
  %mul53.i = fmul double %36, %42
  %mul54.i = fmul double %37, %43
  %add55.i = fadd double %mul53.i, %mul54.i
  %add56.i = fadd double %rsum00.03802.i, %add55.i
  %mul57.i = fmul double %36, %43
  %mul58.i = fmul double %37, %42
  %sub59.i = fsub double %mul57.i, %mul58.i
  %add60.i = fadd double %isum00.03811.i, %sub59.i
  %mul61.i = fmul double %36, %44
  %mul62.i = fmul double %37, %45
  %add63.i = fadd double %mul61.i, %mul62.i
  %add64.i = fadd double %rsum01.03801.i, %add63.i
  %mul65.i = fmul double %36, %45
  %mul66.i = fmul double %37, %44
  %sub67.i = fsub double %mul65.i, %mul66.i
  %add68.i = fadd double %isum01.03810.i, %sub67.i
  %mul69.i = fmul double %36, %46
  %mul70.i = fmul double %37, %47
  %add71.i = fadd double %mul69.i, %mul70.i
  %add72.i = fadd double %rsum02.03800.i, %add71.i
  %mul73.i = fmul double %36, %47
  %mul74.i = fmul double %37, %46
  %sub75.i = fsub double %mul73.i, %mul74.i
  %add76.i = fadd double %isum02.03809.i, %sub75.i
  %mul77.i = fmul double %38, %42
  %mul78.i = fmul double %39, %43
  %add79.i = fadd double %mul77.i, %mul78.i
  %add80.i = fadd double %rsum10.03799.i, %add79.i
  %mul81.i = fmul double %38, %43
  %mul82.i = fmul double %39, %42
  %sub83.i = fsub double %mul81.i, %mul82.i
  %add84.i = fadd double %isum10.03808.i, %sub83.i
  %mul85.i = fmul double %38, %44
  %mul86.i = fmul double %39, %45
  %add87.i = fadd double %mul85.i, %mul86.i
  %add88.i = fadd double %rsum11.03798.i, %add87.i
  %mul89.i = fmul double %38, %45
  %mul90.i = fmul double %39, %44
  %sub91.i = fsub double %mul89.i, %mul90.i
  %add92.i = fadd double %isum11.03807.i, %sub91.i
  %mul93.i = fmul double %38, %46
  %mul94.i = fmul double %39, %47
  %add95.i = fadd double %mul93.i, %mul94.i
  %add96.i = fadd double %rsum12.03797.i, %add95.i
  %mul97.i = fmul double %38, %47
  %mul98.i = fmul double %39, %46
  %sub99.i = fsub double %mul97.i, %mul98.i
  %add100.i = fadd double %isum12.03806.i, %sub99.i
  %mul101.i = fmul double %40, %42
  %mul102.i = fmul double %41, %43
  %add103.i = fadd double %mul101.i, %mul102.i
  %add104.i = fadd double %rsum20.03796.i, %add103.i
  %mul105.i = fmul double %40, %43
  %mul106.i = fmul double %41, %42
  %sub107.i = fsub double %mul105.i, %mul106.i
  %add108.i = fadd double %isum20.03805.i, %sub107.i
  %mul109.i = fmul double %40, %44
  %mul110.i = fmul double %41, %45
  %add111.i = fadd double %mul109.i, %mul110.i
  %add112.i = fadd double %rsum21.03795.i, %add111.i
  %mul113.i = fmul double %40, %45
  %mul114.i = fmul double %41, %44
  %sub115.i = fsub double %mul113.i, %mul114.i
  %add116.i = fadd double %isum21.03804.i, %sub115.i
  %mul117.i = fmul double %40, %46
  %mul118.i = fmul double %41, %47
  %add119.i = fadd double %mul117.i, %mul118.i
  %add120.i = fadd double %rsum22.03794.i, %add119.i
  %mul121.i = fmul double %40, %47
  %mul122.i = fmul double %41, %46
  %sub123.i = fsub double %mul121.i, %mul122.i
  %add124.i = fadd double %isum22.03803.i, %sub123.i
  %indvars.iv.next3983.i = add i64 %indvars.iv3982.i, 1
  %lftr.wideiv542 = trunc i64 %indvars.iv.next3983.i to i32
  %exitcond543 = icmp eq i32 %lftr.wideiv542, %28
  br i1 %exitcond543, label %if.end234.i, label %for.body29.i

for.body128.i:                                    ; preds = %for.cond126.preheader.i, %for.body128.i
  %indvars.iv3980.i = phi i64 [ %indvars.iv.next3981.i, %for.body128.i ], [ 0, %for.cond126.preheader.i ]
  %isum00.13772.i = phi double [ %add166.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum01.13771.i = phi double [ %add174.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum02.13770.i = phi double [ %add182.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum10.13769.i = phi double [ %add190.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum11.13768.i = phi double [ %add198.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum12.13767.i = phi double [ %add206.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum20.13766.i = phi double [ %add214.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum21.13765.i = phi double [ %add222.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum22.13764.i = phi double [ %add230.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum00.13763.i = phi double [ %add162.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum01.13762.i = phi double [ %add170.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum02.13761.i = phi double [ %add178.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum10.13760.i = phi double [ %add186.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum11.13759.i = phi double [ %add194.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum12.13758.i = phi double [ %add202.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum20.13757.i = phi double [ %add210.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum21.13756.i = phi double [ %add218.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum22.13755.i = phi double [ %add226.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %48 = trunc i64 %indvars.iv3980.i to i32
  %mul129.i = shl nsw i32 %48, 1
  %add1303539.i = or i32 %mul129.i, 1
  %idxprom131.i = sext i32 %mul129.i to i64
  %arrayidx132.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom131.i
  %49 = load double* %arrayidx132.i, align 8, !tbaa !4
  %idxprom133.i = sext i32 %add1303539.i to i64
  %arrayidx134.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom133.i
  %50 = load double* %arrayidx134.i, align 8, !tbaa !4
  %add.ptr21.sum3540.i = add i64 %idxprom131.i, %idx.ext405.i
  %arrayidx136.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3540.i
  %51 = load double* %arrayidx136.i, align 8, !tbaa !4
  %add.ptr21.sum3541.i = add i64 %idxprom133.i, %idx.ext405.i
  %arrayidx138.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3541.i
  %52 = load double* %arrayidx138.i, align 8, !tbaa !4
  %add.ptr24.sum3542.i = add i64 %idxprom131.i, %add.ptr21.sum.i
  %arrayidx140.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3542.i
  %53 = load double* %arrayidx140.i, align 8, !tbaa !4
  %add.ptr24.sum3543.i = add i64 %idxprom133.i, %add.ptr21.sum.i
  %arrayidx142.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3543.i
  %54 = load double* %arrayidx142.i, align 8, !tbaa !4
  %arrayidx144.i = getelementptr inbounds i32* %34, i64 %indvars.iv3980.i
  %55 = load i32* %arrayidx144.i, align 4, !tbaa !3
  %mul145.i = shl nsw i32 %55, 1
  %add1463544.i = or i32 %mul145.i, 1
  %idxprom147.i = sext i32 %mul145.i to i64
  %arrayidx148.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom147.i
  %56 = load double* %arrayidx148.i, align 8, !tbaa !4
  %idxprom149.i = sext i32 %add1463544.i to i64
  %arrayidx150.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom149.i
  %57 = load double* %arrayidx150.i, align 8, !tbaa !4
  %add.ptr.sum3545.i = add i64 %idxprom147.i, %idx.ext.i
  %arrayidx152.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3545.i
  %58 = load double* %arrayidx152.i, align 8, !tbaa !4
  %add.ptr.sum3546.i = add i64 %idxprom149.i, %idx.ext.i
  %arrayidx154.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3546.i
  %59 = load double* %arrayidx154.i, align 8, !tbaa !4
  %add.ptr8.sum3547.i = add i64 %idxprom147.i, %add.ptr.sum.i
  %arrayidx156.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3547.i
  %60 = load double* %arrayidx156.i, align 8, !tbaa !4
  %add.ptr8.sum3548.i = add i64 %idxprom149.i, %add.ptr.sum.i
  %arrayidx158.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3548.i
  %61 = load double* %arrayidx158.i, align 8, !tbaa !4
  %mul159.i = fmul double %49, %56
  %mul160.i = fmul double %50, %57
  %add161.i = fadd double %mul159.i, %mul160.i
  %add162.i = fadd double %rsum00.13763.i, %add161.i
  %mul163.i = fmul double %49, %57
  %mul164.i = fmul double %50, %56
  %sub165.i = fsub double %mul163.i, %mul164.i
  %add166.i = fadd double %isum00.13772.i, %sub165.i
  %mul167.i = fmul double %49, %58
  %mul168.i = fmul double %50, %59
  %add169.i = fadd double %mul167.i, %mul168.i
  %add170.i = fadd double %rsum01.13762.i, %add169.i
  %mul171.i = fmul double %49, %59
  %mul172.i = fmul double %50, %58
  %sub173.i = fsub double %mul171.i, %mul172.i
  %add174.i = fadd double %isum01.13771.i, %sub173.i
  %mul175.i = fmul double %49, %60
  %mul176.i = fmul double %50, %61
  %add177.i = fadd double %mul175.i, %mul176.i
  %add178.i = fadd double %rsum02.13761.i, %add177.i
  %mul179.i = fmul double %49, %61
  %mul180.i = fmul double %50, %60
  %sub181.i = fsub double %mul179.i, %mul180.i
  %add182.i = fadd double %isum02.13770.i, %sub181.i
  %mul183.i = fmul double %51, %56
  %mul184.i = fmul double %52, %57
  %add185.i = fadd double %mul183.i, %mul184.i
  %add186.i = fadd double %rsum10.13760.i, %add185.i
  %mul187.i = fmul double %51, %57
  %mul188.i = fmul double %52, %56
  %sub189.i = fsub double %mul187.i, %mul188.i
  %add190.i = fadd double %isum10.13769.i, %sub189.i
  %mul191.i = fmul double %51, %58
  %mul192.i = fmul double %52, %59
  %add193.i = fadd double %mul191.i, %mul192.i
  %add194.i = fadd double %rsum11.13759.i, %add193.i
  %mul195.i = fmul double %51, %59
  %mul196.i = fmul double %52, %58
  %sub197.i = fsub double %mul195.i, %mul196.i
  %add198.i = fadd double %isum11.13768.i, %sub197.i
  %mul199.i = fmul double %51, %60
  %mul200.i = fmul double %52, %61
  %add201.i = fadd double %mul199.i, %mul200.i
  %add202.i = fadd double %rsum12.13758.i, %add201.i
  %mul203.i = fmul double %51, %61
  %mul204.i = fmul double %52, %60
  %sub205.i = fsub double %mul203.i, %mul204.i
  %add206.i = fadd double %isum12.13767.i, %sub205.i
  %mul207.i = fmul double %53, %56
  %mul208.i = fmul double %54, %57
  %add209.i = fadd double %mul207.i, %mul208.i
  %add210.i = fadd double %rsum20.13757.i, %add209.i
  %mul211.i = fmul double %53, %57
  %mul212.i = fmul double %54, %56
  %sub213.i = fsub double %mul211.i, %mul212.i
  %add214.i = fadd double %isum20.13766.i, %sub213.i
  %mul215.i = fmul double %53, %58
  %mul216.i = fmul double %54, %59
  %add217.i = fadd double %mul215.i, %mul216.i
  %add218.i = fadd double %rsum21.13756.i, %add217.i
  %mul219.i = fmul double %53, %59
  %mul220.i = fmul double %54, %58
  %sub221.i = fsub double %mul219.i, %mul220.i
  %add222.i = fadd double %isum21.13765.i, %sub221.i
  %mul223.i = fmul double %53, %60
  %mul224.i = fmul double %54, %61
  %add225.i = fadd double %mul223.i, %mul224.i
  %add226.i = fadd double %rsum22.13755.i, %add225.i
  %mul227.i = fmul double %53, %61
  %mul228.i = fmul double %54, %60
  %sub229.i = fsub double %mul227.i, %mul228.i
  %add230.i = fadd double %isum22.13764.i, %sub229.i
  %indvars.iv.next3981.i = add i64 %indvars.iv3980.i, 1
  %lftr.wideiv540 = trunc i64 %indvars.iv.next3981.i to i32
  %exitcond541 = icmp eq i32 %lftr.wideiv540, %32
  br i1 %exitcond541, label %if.end234.i, label %for.body128.i

if.end234.i:                                      ; preds = %for.body29.i, %for.body128.i, %for.cond126.preheader.i, %for.cond27.preheader.i
  %rsum22.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add226.i, %for.body128.i ], [ %add120.i, %for.body29.i ]
  %rsum21.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add218.i, %for.body128.i ], [ %add112.i, %for.body29.i ]
  %rsum20.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add210.i, %for.body128.i ], [ %add104.i, %for.body29.i ]
  %rsum12.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add202.i, %for.body128.i ], [ %add96.i, %for.body29.i ]
  %rsum11.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add194.i, %for.body128.i ], [ %add88.i, %for.body29.i ]
  %rsum10.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add186.i, %for.body128.i ], [ %add80.i, %for.body29.i ]
  %rsum02.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add178.i, %for.body128.i ], [ %add72.i, %for.body29.i ]
  %rsum01.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add170.i, %for.body128.i ], [ %add64.i, %for.body29.i ]
  %rsum00.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add162.i, %for.body128.i ], [ %add56.i, %for.body29.i ]
  %isum22.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add230.i, %for.body128.i ], [ %add124.i, %for.body29.i ]
  %isum21.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add222.i, %for.body128.i ], [ %add116.i, %for.body29.i ]
  %isum20.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add214.i, %for.body128.i ], [ %add108.i, %for.body29.i ]
  %isum12.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add206.i, %for.body128.i ], [ %add100.i, %for.body29.i ]
  %isum11.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add198.i, %for.body128.i ], [ %add92.i, %for.body29.i ]
  %isum10.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add190.i, %for.body128.i ], [ %add84.i, %for.body29.i ]
  %isum02.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add182.i, %for.body128.i ], [ %add76.i, %for.body29.i ]
  %isum01.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add174.i, %for.body128.i ], [ %add68.i, %for.body29.i ]
  %isum00.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add166.i, %for.body128.i ], [ %add60.i, %for.body29.i ]
  br i1 %cmp567.i, label %if.then236.i, label %if.else297.i

if.then236.i:                                     ; preds = %if.end234.i
  %62 = trunc i64 %indvars.iv3986.i to i32
  %mul237.i = shl nsw i32 %62, 1
  %add2383526.i = or i32 %mul237.i, 1
  %idxprom239.i = sext i32 %mul237.i to i64
  %arrayidx240.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom239.i
  %63 = load double* %arrayidx240.i, align 8, !tbaa !4
  %sub241.i = fsub double %63, %rsum00.2.i
  store double %sub241.i, double* %arrayidx240.i, align 8, !tbaa !4
  %idxprom242.i = sext i32 %add2383526.i to i64
  %arrayidx243.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom242.i
  %64 = load double* %arrayidx243.i, align 8, !tbaa !4
  %sub244.i = fsub double %64, %isum00.2.i
  store double %sub244.i, double* %arrayidx243.i, align 8, !tbaa !4
  %add.ptr11.sum3527.i = add i64 %idxprom239.i, %idx.ext10.i
  %arrayidx246.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3527.i
  %65 = load double* %arrayidx246.i, align 8, !tbaa !4
  %sub247.i = fsub double %65, %rsum01.2.i
  store double %sub247.i, double* %arrayidx246.i, align 8, !tbaa !4
  %add.ptr11.sum3528.i = add i64 %idxprom242.i, %idx.ext10.i
  %arrayidx249.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3528.i
  %66 = load double* %arrayidx249.i, align 8, !tbaa !4
  %sub250.i = fsub double %66, %isum01.2.i
  store double %sub250.i, double* %arrayidx249.i, align 8, !tbaa !4
  %add.ptr14.sum3529.i = add i64 %idxprom239.i, %add.ptr11.sum.i
  %arrayidx252.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3529.i
  %67 = load double* %arrayidx252.i, align 8, !tbaa !4
  %sub253.i = fsub double %67, %rsum02.2.i
  store double %sub253.i, double* %arrayidx252.i, align 8, !tbaa !4
  %add.ptr14.sum3530.i = add i64 %idxprom242.i, %add.ptr11.sum.i
  %arrayidx255.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3530.i
  %68 = load double* %arrayidx255.i, align 8, !tbaa !4
  %sub256.i = fsub double %68, %isum02.2.i
  store double %sub256.i, double* %arrayidx255.i, align 8, !tbaa !4
  %add257.i = add nsw i32 %mul237.i, 2
  %add258.i = add nsw i32 %add2383526.i, 2
  %idxprom259.i = sext i32 %add257.i to i64
  %arrayidx260.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom259.i
  %69 = load double* %arrayidx260.i, align 8, !tbaa !4
  %sub261.i = fsub double %69, %rsum10.2.i
  store double %sub261.i, double* %arrayidx260.i, align 8, !tbaa !4
  %idxprom262.i = sext i32 %add258.i to i64
  %arrayidx263.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom262.i
  %70 = load double* %arrayidx263.i, align 8, !tbaa !4
  %sub264.i = fsub double %70, %isum10.2.i
  store double %sub264.i, double* %arrayidx263.i, align 8, !tbaa !4
  %add.ptr11.sum3531.i = add i64 %idxprom259.i, %idx.ext10.i
  %arrayidx266.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3531.i
  %71 = load double* %arrayidx266.i, align 8, !tbaa !4
  %sub267.i = fsub double %71, %rsum11.2.i
  store double %sub267.i, double* %arrayidx266.i, align 8, !tbaa !4
  %add.ptr11.sum3532.i = add i64 %idxprom262.i, %idx.ext10.i
  %arrayidx269.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3532.i
  %72 = load double* %arrayidx269.i, align 8, !tbaa !4
  %sub270.i = fsub double %72, %isum11.2.i
  store double %sub270.i, double* %arrayidx269.i, align 8, !tbaa !4
  %add.ptr14.sum3533.i = add i64 %idxprom259.i, %add.ptr11.sum.i
  %arrayidx272.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3533.i
  %73 = load double* %arrayidx272.i, align 8, !tbaa !4
  %sub273.i = fsub double %73, %rsum12.2.i
  store double %sub273.i, double* %arrayidx272.i, align 8, !tbaa !4
  %add.ptr14.sum3534.i = add i64 %idxprom262.i, %add.ptr11.sum.i
  %arrayidx275.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3534.i
  %74 = load double* %arrayidx275.i, align 8, !tbaa !4
  %sub276.i = fsub double %74, %isum12.2.i
  store double %sub276.i, double* %arrayidx275.i, align 8, !tbaa !4
  %add277.i = add nsw i32 %mul237.i, 4
  %add278.i = add nsw i32 %add2383526.i, 4
  %idxprom279.i = sext i32 %add277.i to i64
  %arrayidx280.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom279.i
  %75 = load double* %arrayidx280.i, align 8, !tbaa !4
  %sub281.i = fsub double %75, %rsum20.2.i
  store double %sub281.i, double* %arrayidx280.i, align 8, !tbaa !4
  %idxprom282.i = sext i32 %add278.i to i64
  %arrayidx283.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom282.i
  %76 = load double* %arrayidx283.i, align 8, !tbaa !4
  %sub284.i = fsub double %76, %isum20.2.i
  store double %sub284.i, double* %arrayidx283.i, align 8, !tbaa !4
  %add.ptr11.sum3535.i = add i64 %idxprom279.i, %idx.ext10.i
  %arrayidx286.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3535.i
  %77 = load double* %arrayidx286.i, align 8, !tbaa !4
  %sub287.i = fsub double %77, %rsum21.2.i
  store double %sub287.i, double* %arrayidx286.i, align 8, !tbaa !4
  %add.ptr11.sum3536.i = add i64 %idxprom282.i, %idx.ext10.i
  %arrayidx289.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3536.i
  %78 = load double* %arrayidx289.i, align 8, !tbaa !4
  %sub290.i = fsub double %78, %isum21.2.i
  store double %sub290.i, double* %arrayidx289.i, align 8, !tbaa !4
  %add.ptr14.sum3537.i = add i64 %idxprom279.i, %add.ptr11.sum.i
  %arrayidx292.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3537.i
  %79 = load double* %arrayidx292.i, align 8, !tbaa !4
  %sub293.i = fsub double %79, %rsum22.2.i
  store double %sub293.i, double* %arrayidx292.i, align 8, !tbaa !4
  %add.ptr14.sum3538.i = add i64 %idxprom282.i, %add.ptr11.sum.i
  %arrayidx295.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3538.i
  %80 = load double* %arrayidx295.i, align 8, !tbaa !4
  %sub296.i = fsub double %80, %isum22.2.i
  store double %sub296.i, double* %arrayidx295.i, align 8, !tbaa !4
  br label %if.end366.i

if.else297.i:                                     ; preds = %if.end234.i
  %arrayidx299.i = getelementptr inbounds i32* %33, i64 %indvars.iv3986.i
  %81 = load i32* %arrayidx299.i, align 4, !tbaa !3
  %mul300.i = shl nsw i32 %81, 1
  %add3013511.i = or i32 %mul300.i, 1
  %idxprom302.i = sext i32 %mul300.i to i64
  %arrayidx303.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom302.i
  %82 = load double* %arrayidx303.i, align 8, !tbaa !4
  %sub304.i = fsub double %82, %rsum00.2.i
  store double %sub304.i, double* %arrayidx303.i, align 8, !tbaa !4
  %idxprom305.i = sext i32 %add3013511.i to i64
  %arrayidx306.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom305.i
  %83 = load double* %arrayidx306.i, align 8, !tbaa !4
  %sub307.i = fsub double %83, %isum00.2.i
  store double %sub307.i, double* %arrayidx306.i, align 8, !tbaa !4
  %add.ptr11.sum3512.i = add i64 %idxprom302.i, %idx.ext10.i
  %arrayidx309.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3512.i
  %84 = load double* %arrayidx309.i, align 8, !tbaa !4
  %sub310.i = fsub double %84, %rsum01.2.i
  store double %sub310.i, double* %arrayidx309.i, align 8, !tbaa !4
  %add.ptr11.sum3513.i = add i64 %idxprom305.i, %idx.ext10.i
  %arrayidx312.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3513.i
  %85 = load double* %arrayidx312.i, align 8, !tbaa !4
  %sub313.i = fsub double %85, %isum01.2.i
  store double %sub313.i, double* %arrayidx312.i, align 8, !tbaa !4
  %add.ptr14.sum3514.i = add i64 %idxprom302.i, %add.ptr11.sum.i
  %arrayidx315.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3514.i
  %86 = load double* %arrayidx315.i, align 8, !tbaa !4
  %sub316.i = fsub double %86, %rsum02.2.i
  store double %sub316.i, double* %arrayidx315.i, align 8, !tbaa !4
  %add.ptr14.sum3515.i = add i64 %idxprom305.i, %add.ptr11.sum.i
  %arrayidx318.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3515.i
  %87 = load double* %arrayidx318.i, align 8, !tbaa !4
  %sub319.i = fsub double %87, %isum02.2.i
  store double %sub319.i, double* %arrayidx318.i, align 8, !tbaa !4
  %88 = add nsw i64 %indvars.iv3986.i, 1
  %arrayidx322.i = getelementptr inbounds i32* %33, i64 %88
  %89 = load i32* %arrayidx322.i, align 4, !tbaa !3
  %mul323.i = shl nsw i32 %89, 1
  %add3243516.i = or i32 %mul323.i, 1
  %idxprom325.i = sext i32 %mul323.i to i64
  %arrayidx326.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom325.i
  %90 = load double* %arrayidx326.i, align 8, !tbaa !4
  %sub327.i = fsub double %90, %rsum10.2.i
  store double %sub327.i, double* %arrayidx326.i, align 8, !tbaa !4
  %idxprom328.i = sext i32 %add3243516.i to i64
  %arrayidx329.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom328.i
  %91 = load double* %arrayidx329.i, align 8, !tbaa !4
  %sub330.i = fsub double %91, %isum10.2.i
  store double %sub330.i, double* %arrayidx329.i, align 8, !tbaa !4
  %add.ptr11.sum3517.i = add i64 %idxprom325.i, %idx.ext10.i
  %arrayidx332.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3517.i
  %92 = load double* %arrayidx332.i, align 8, !tbaa !4
  %sub333.i = fsub double %92, %rsum11.2.i
  store double %sub333.i, double* %arrayidx332.i, align 8, !tbaa !4
  %add.ptr11.sum3518.i = add i64 %idxprom328.i, %idx.ext10.i
  %arrayidx335.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3518.i
  %93 = load double* %arrayidx335.i, align 8, !tbaa !4
  %sub336.i = fsub double %93, %isum11.2.i
  store double %sub336.i, double* %arrayidx335.i, align 8, !tbaa !4
  %add.ptr14.sum3519.i = add i64 %idxprom325.i, %add.ptr11.sum.i
  %arrayidx338.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3519.i
  %94 = load double* %arrayidx338.i, align 8, !tbaa !4
  %sub339.i = fsub double %94, %rsum12.2.i
  store double %sub339.i, double* %arrayidx338.i, align 8, !tbaa !4
  %add.ptr14.sum3520.i = add i64 %idxprom328.i, %add.ptr11.sum.i
  %arrayidx341.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3520.i
  %95 = load double* %arrayidx341.i, align 8, !tbaa !4
  %sub342.i = fsub double %95, %isum12.2.i
  store double %sub342.i, double* %arrayidx341.i, align 8, !tbaa !4
  %96 = add nsw i64 %indvars.iv3986.i, 2
  %arrayidx345.i = getelementptr inbounds i32* %33, i64 %96
  %97 = load i32* %arrayidx345.i, align 4, !tbaa !3
  %mul346.i = shl nsw i32 %97, 1
  %add3473521.i = or i32 %mul346.i, 1
  %idxprom348.i = sext i32 %mul346.i to i64
  %arrayidx349.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom348.i
  %98 = load double* %arrayidx349.i, align 8, !tbaa !4
  %sub350.i = fsub double %98, %rsum20.2.i
  store double %sub350.i, double* %arrayidx349.i, align 8, !tbaa !4
  %idxprom351.i = sext i32 %add3473521.i to i64
  %arrayidx352.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom351.i
  %99 = load double* %arrayidx352.i, align 8, !tbaa !4
  %sub353.i = fsub double %99, %isum20.2.i
  store double %sub353.i, double* %arrayidx352.i, align 8, !tbaa !4
  %add.ptr11.sum3522.i = add i64 %idxprom348.i, %idx.ext10.i
  %arrayidx355.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3522.i
  %100 = load double* %arrayidx355.i, align 8, !tbaa !4
  %sub356.i = fsub double %100, %rsum21.2.i
  store double %sub356.i, double* %arrayidx355.i, align 8, !tbaa !4
  %add.ptr11.sum3523.i = add i64 %idxprom351.i, %idx.ext10.i
  %arrayidx358.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3523.i
  %101 = load double* %arrayidx358.i, align 8, !tbaa !4
  %sub359.i = fsub double %101, %isum21.2.i
  store double %sub359.i, double* %arrayidx358.i, align 8, !tbaa !4
  %add.ptr14.sum3524.i = add i64 %idxprom348.i, %add.ptr11.sum.i
  %arrayidx361.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3524.i
  %102 = load double* %arrayidx361.i, align 8, !tbaa !4
  %sub362.i = fsub double %102, %rsum22.2.i
  store double %sub362.i, double* %arrayidx361.i, align 8, !tbaa !4
  %add.ptr14.sum3525.i = add i64 %idxprom351.i, %add.ptr11.sum.i
  %arrayidx364.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3525.i
  %103 = load double* %arrayidx364.i, align 8, !tbaa !4
  %sub365.i = fsub double %103, %isum22.2.i
  store double %sub365.i, double* %arrayidx364.i, align 8, !tbaa !4
  br label %if.end366.i

if.end366.i:                                      ; preds = %if.else297.i, %if.then236.i
  %add.ptr369.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum.i
  %indvars.iv.next3987.i = add i64 %indvars.iv3986.i, 3
  %add371.i = add nsw i32 %irowAT.03834.i, 3
  %104 = trunc i64 %indvars.iv.next3987.i to i32
  %cmp17.i = icmp slt i32 %104, %sub163832.i
  br i1 %cmp17.i, label %for.body18.i, label %for.end372.i

for.end372.i:                                     ; preds = %if.end366.i, %for.body.i
  %rowAT0.0.lcssa.i = phi double* [ %30, %for.body.i ], [ %add.ptr369.i, %if.end366.i ]
  %irowAT.0.lcssa.i = phi i32 [ 0, %for.body.i ], [ %add371.i, %if.end366.i ]
  %cmp374.i = icmp eq i32 %irowAT.0.lcssa.i, %sub163832.i
  br i1 %cmp374.i, label %if.then375.i, label %if.else656.i

if.then375.i:                                     ; preds = %for.end372.i
  br i1 %cmp407.i, label %for.cond409.preheader.i, label %for.cond486.preheader.i

for.cond409.preheader.i:                          ; preds = %if.then375.i
  br i1 %cmp4873872.i, label %for.body411.i, label %if.end566.i

for.cond486.preheader.i:                          ; preds = %if.then375.i
  br i1 %cmp4873872.i, label %for.body488.i, label %if.end566.i

for.body411.i:                                    ; preds = %for.cond409.preheader.i, %for.body411.i
  %indvars.iv4002.i = phi i64 [ %indvars.iv.next4003.i, %for.body411.i ], [ 0, %for.cond409.preheader.i ]
  %rsum12391.03911.i = phi double [ %add477.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum11390.03910.i = phi double [ %add469.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum10389.03909.i = phi double [ %add461.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum02388.03908.i = phi double [ %add453.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum01387.03907.i = phi double [ %add445.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum00386.03906.i = phi double [ %add437.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum12385.03905.i = phi double [ %add481.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum11384.03904.i = phi double [ %add473.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum10383.03903.i = phi double [ %add465.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum02382.03902.i = phi double [ %add457.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum01381.03901.i = phi double [ %add449.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum00380.03900.i = phi double [ %add441.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %105 = trunc i64 %indvars.iv4002.i to i32
  %mul412.i = shl nsw i32 %105, 1
  %add4133504.i = or i32 %mul412.i, 1
  %idxprom414.i = sext i32 %mul412.i to i64
  %arrayidx415.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom414.i
  %106 = load double* %arrayidx415.i, align 8, !tbaa !4
  %idxprom416.i = sext i32 %add4133504.i to i64
  %arrayidx417.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom416.i
  %107 = load double* %arrayidx417.i, align 8, !tbaa !4
  %add.ptr406.sum3505.i = add i64 %idxprom414.i, %idx.ext405.i
  %arrayidx419.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %add.ptr406.sum3505.i
  %108 = load double* %arrayidx419.i, align 8, !tbaa !4
  %add.ptr406.sum3506.i = add i64 %idxprom416.i, %idx.ext405.i
  %arrayidx421.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %add.ptr406.sum3506.i
  %109 = load double* %arrayidx421.i, align 8, !tbaa !4
  %arrayidx423.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom414.i
  %110 = load double* %arrayidx423.i, align 8, !tbaa !4
  %arrayidx425.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom416.i
  %111 = load double* %arrayidx425.i, align 8, !tbaa !4
  %add.ptr.sum3507.i = add i64 %idxprom414.i, %idx.ext.i
  %arrayidx427.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3507.i
  %112 = load double* %arrayidx427.i, align 8, !tbaa !4
  %add.ptr.sum3508.i = add i64 %idxprom416.i, %idx.ext.i
  %arrayidx429.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3508.i
  %113 = load double* %arrayidx429.i, align 8, !tbaa !4
  %add.ptr8.sum3509.i = add i64 %idxprom414.i, %add.ptr.sum.i
  %arrayidx431.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3509.i
  %114 = load double* %arrayidx431.i, align 8, !tbaa !4
  %add.ptr8.sum3510.i = add i64 %idxprom416.i, %add.ptr.sum.i
  %arrayidx433.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3510.i
  %115 = load double* %arrayidx433.i, align 8, !tbaa !4
  %mul434.i = fmul double %106, %110
  %mul435.i = fmul double %107, %111
  %add436.i = fadd double %mul434.i, %mul435.i
  %add437.i = fadd double %rsum00386.03906.i, %add436.i
  %mul438.i = fmul double %106, %111
  %mul439.i = fmul double %107, %110
  %sub440.i = fsub double %mul438.i, %mul439.i
  %add441.i = fadd double %isum00380.03900.i, %sub440.i
  %mul442.i = fmul double %106, %112
  %mul443.i = fmul double %107, %113
  %add444.i = fadd double %mul442.i, %mul443.i
  %add445.i = fadd double %rsum01387.03907.i, %add444.i
  %mul446.i = fmul double %106, %113
  %mul447.i = fmul double %107, %112
  %sub448.i = fsub double %mul446.i, %mul447.i
  %add449.i = fadd double %isum01381.03901.i, %sub448.i
  %mul450.i = fmul double %106, %114
  %mul451.i = fmul double %107, %115
  %add452.i = fadd double %mul450.i, %mul451.i
  %add453.i = fadd double %rsum02388.03908.i, %add452.i
  %mul454.i = fmul double %106, %115
  %mul455.i = fmul double %107, %114
  %sub456.i = fsub double %mul454.i, %mul455.i
  %add457.i = fadd double %isum02382.03902.i, %sub456.i
  %mul458.i = fmul double %108, %110
  %mul459.i = fmul double %109, %111
  %add460.i = fadd double %mul458.i, %mul459.i
  %add461.i = fadd double %rsum10389.03909.i, %add460.i
  %mul462.i = fmul double %108, %111
  %mul463.i = fmul double %109, %110
  %sub464.i = fsub double %mul462.i, %mul463.i
  %add465.i = fadd double %isum10383.03903.i, %sub464.i
  %mul466.i = fmul double %108, %112
  %mul467.i = fmul double %109, %113
  %add468.i = fadd double %mul466.i, %mul467.i
  %add469.i = fadd double %rsum11390.03910.i, %add468.i
  %mul470.i = fmul double %108, %113
  %mul471.i = fmul double %109, %112
  %sub472.i = fsub double %mul470.i, %mul471.i
  %add473.i = fadd double %isum11384.03904.i, %sub472.i
  %mul474.i = fmul double %108, %114
  %mul475.i = fmul double %109, %115
  %add476.i = fadd double %mul474.i, %mul475.i
  %add477.i = fadd double %rsum12391.03911.i, %add476.i
  %mul478.i = fmul double %108, %115
  %mul479.i = fmul double %109, %114
  %sub480.i = fsub double %mul478.i, %mul479.i
  %add481.i = fadd double %isum12385.03905.i, %sub480.i
  %indvars.iv.next4003.i = add i64 %indvars.iv4002.i, 1
  %lftr.wideiv550 = trunc i64 %indvars.iv.next4003.i to i32
  %exitcond551 = icmp eq i32 %lftr.wideiv550, %28
  br i1 %exitcond551, label %if.end566.i, label %for.body411.i

for.body488.i:                                    ; preds = %for.cond486.preheader.i, %for.body488.i
  %indvars.iv3998.i = phi i64 [ %indvars.iv.next3999.i, %for.body488.i ], [ 0, %for.cond486.preheader.i ]
  %rsum12391.13884.i = phi double [ %add558.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %rsum11390.13883.i = phi double [ %add550.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %rsum10389.13882.i = phi double [ %add542.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %rsum02388.13881.i = phi double [ %add534.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %rsum01387.13880.i = phi double [ %add526.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %rsum00386.13879.i = phi double [ %add518.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %isum12385.13878.i = phi double [ %add562.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %isum11384.13877.i = phi double [ %add554.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %isum10383.13876.i = phi double [ %add546.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %isum02382.13875.i = phi double [ %add538.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %isum01381.13874.i = phi double [ %add530.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %isum00380.13873.i = phi double [ %add522.i, %for.body488.i ], [ 0.000000e+00, %for.cond486.preheader.i ]
  %116 = trunc i64 %indvars.iv3998.i to i32
  %mul489.i = shl nsw i32 %116, 1
  %add4903497.i = or i32 %mul489.i, 1
  %idxprom491.i = sext i32 %mul489.i to i64
  %arrayidx492.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom491.i
  %117 = load double* %arrayidx492.i, align 8, !tbaa !4
  %idxprom493.i = sext i32 %add4903497.i to i64
  %arrayidx494.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom493.i
  %118 = load double* %arrayidx494.i, align 8, !tbaa !4
  %add.ptr406.sum.i = add i64 %idxprom491.i, %idx.ext405.i
  %arrayidx496.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %add.ptr406.sum.i
  %119 = load double* %arrayidx496.i, align 8, !tbaa !4
  %add.ptr406.sum3498.i = add i64 %idxprom493.i, %idx.ext405.i
  %arrayidx498.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %add.ptr406.sum3498.i
  %120 = load double* %arrayidx498.i, align 8, !tbaa !4
  %arrayidx500.i = getelementptr inbounds i32* %34, i64 %indvars.iv3998.i
  %121 = load i32* %arrayidx500.i, align 4, !tbaa !3
  %mul501.i = shl nsw i32 %121, 1
  %add5023499.i = or i32 %mul501.i, 1
  %idxprom503.i = sext i32 %mul501.i to i64
  %arrayidx504.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom503.i
  %122 = load double* %arrayidx504.i, align 8, !tbaa !4
  %idxprom505.i = sext i32 %add5023499.i to i64
  %arrayidx506.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom505.i
  %123 = load double* %arrayidx506.i, align 8, !tbaa !4
  %add.ptr.sum3500.i = add i64 %idxprom503.i, %idx.ext.i
  %arrayidx508.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3500.i
  %124 = load double* %arrayidx508.i, align 8, !tbaa !4
  %add.ptr.sum3501.i = add i64 %idxprom505.i, %idx.ext.i
  %arrayidx510.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3501.i
  %125 = load double* %arrayidx510.i, align 8, !tbaa !4
  %add.ptr8.sum3502.i = add i64 %idxprom503.i, %add.ptr.sum.i
  %arrayidx512.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3502.i
  %126 = load double* %arrayidx512.i, align 8, !tbaa !4
  %add.ptr8.sum3503.i = add i64 %idxprom505.i, %add.ptr.sum.i
  %arrayidx514.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3503.i
  %127 = load double* %arrayidx514.i, align 8, !tbaa !4
  %mul515.i = fmul double %117, %122
  %mul516.i = fmul double %118, %123
  %add517.i = fadd double %mul515.i, %mul516.i
  %add518.i = fadd double %rsum00386.13879.i, %add517.i
  %mul519.i = fmul double %117, %123
  %mul520.i = fmul double %118, %122
  %sub521.i = fsub double %mul519.i, %mul520.i
  %add522.i = fadd double %isum00380.13873.i, %sub521.i
  %mul523.i = fmul double %117, %124
  %mul524.i = fmul double %118, %125
  %add525.i = fadd double %mul523.i, %mul524.i
  %add526.i = fadd double %rsum01387.13880.i, %add525.i
  %mul527.i = fmul double %117, %125
  %mul528.i = fmul double %118, %124
  %sub529.i = fsub double %mul527.i, %mul528.i
  %add530.i = fadd double %isum01381.13874.i, %sub529.i
  %mul531.i = fmul double %117, %126
  %mul532.i = fmul double %118, %127
  %add533.i = fadd double %mul531.i, %mul532.i
  %add534.i = fadd double %rsum02388.13881.i, %add533.i
  %mul535.i = fmul double %117, %127
  %mul536.i = fmul double %118, %126
  %sub537.i = fsub double %mul535.i, %mul536.i
  %add538.i = fadd double %isum02382.13875.i, %sub537.i
  %mul539.i = fmul double %119, %122
  %mul540.i = fmul double %120, %123
  %add541.i = fadd double %mul539.i, %mul540.i
  %add542.i = fadd double %rsum10389.13882.i, %add541.i
  %mul543.i = fmul double %119, %123
  %mul544.i = fmul double %120, %122
  %sub545.i = fsub double %mul543.i, %mul544.i
  %add546.i = fadd double %isum10383.13876.i, %sub545.i
  %mul547.i = fmul double %119, %124
  %mul548.i = fmul double %120, %125
  %add549.i = fadd double %mul547.i, %mul548.i
  %add550.i = fadd double %rsum11390.13883.i, %add549.i
  %mul551.i = fmul double %119, %125
  %mul552.i = fmul double %120, %124
  %sub553.i = fsub double %mul551.i, %mul552.i
  %add554.i = fadd double %isum11384.13877.i, %sub553.i
  %mul555.i = fmul double %119, %126
  %mul556.i = fmul double %120, %127
  %add557.i = fadd double %mul555.i, %mul556.i
  %add558.i = fadd double %rsum12391.13884.i, %add557.i
  %mul559.i = fmul double %119, %127
  %mul560.i = fmul double %120, %126
  %sub561.i = fsub double %mul559.i, %mul560.i
  %add562.i = fadd double %isum12385.13878.i, %sub561.i
  %indvars.iv.next3999.i = add i64 %indvars.iv3998.i, 1
  %lftr.wideiv548 = trunc i64 %indvars.iv.next3999.i to i32
  %exitcond549 = icmp eq i32 %lftr.wideiv548, %32
  br i1 %exitcond549, label %if.end566.i, label %for.body488.i

if.end566.i:                                      ; preds = %for.body411.i, %for.body488.i, %for.cond486.preheader.i, %for.cond409.preheader.i
  %isum00380.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add522.i, %for.body488.i ], [ %add441.i, %for.body411.i ]
  %isum01381.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add530.i, %for.body488.i ], [ %add449.i, %for.body411.i ]
  %isum02382.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add538.i, %for.body488.i ], [ %add457.i, %for.body411.i ]
  %isum10383.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add546.i, %for.body488.i ], [ %add465.i, %for.body411.i ]
  %isum11384.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add554.i, %for.body488.i ], [ %add473.i, %for.body411.i ]
  %isum12385.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add562.i, %for.body488.i ], [ %add481.i, %for.body411.i ]
  %rsum00386.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add518.i, %for.body488.i ], [ %add437.i, %for.body411.i ]
  %rsum01387.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add526.i, %for.body488.i ], [ %add445.i, %for.body411.i ]
  %rsum02388.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add534.i, %for.body488.i ], [ %add453.i, %for.body411.i ]
  %rsum10389.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add542.i, %for.body488.i ], [ %add461.i, %for.body411.i ]
  %rsum11390.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add550.i, %for.body488.i ], [ %add469.i, %for.body411.i ]
  %rsum12391.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add558.i, %for.body488.i ], [ %add477.i, %for.body411.i ]
  br i1 %cmp567.i, label %if.then568.i, label %if.else609.i

if.then568.i:                                     ; preds = %if.end566.i
  %arrayidx572.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom571.i
  %128 = load double* %arrayidx572.i, align 8, !tbaa !4
  %sub573.i = fsub double %128, %rsum00386.2.i
  store double %sub573.i, double* %arrayidx572.i, align 8, !tbaa !4
  %arrayidx575.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom574.i
  %129 = load double* %arrayidx575.i, align 8, !tbaa !4
  %sub576.i = fsub double %129, %isum00380.2.i
  store double %sub576.i, double* %arrayidx575.i, align 8, !tbaa !4
  %arrayidx578.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3489.i
  %130 = load double* %arrayidx578.i, align 8, !tbaa !4
  %sub579.i = fsub double %130, %rsum01387.2.i
  store double %sub579.i, double* %arrayidx578.i, align 8, !tbaa !4
  %arrayidx581.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3490.i
  %131 = load double* %arrayidx581.i, align 8, !tbaa !4
  %sub582.i = fsub double %131, %isum01381.2.i
  store double %sub582.i, double* %arrayidx581.i, align 8, !tbaa !4
  %arrayidx584.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3491.i
  %132 = load double* %arrayidx584.i, align 8, !tbaa !4
  %sub585.i = fsub double %132, %rsum02388.2.i
  store double %sub585.i, double* %arrayidx584.i, align 8, !tbaa !4
  %arrayidx587.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3492.i
  %133 = load double* %arrayidx587.i, align 8, !tbaa !4
  %sub588.i = fsub double %133, %isum02382.2.i
  store double %sub588.i, double* %arrayidx587.i, align 8, !tbaa !4
  %arrayidx592.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom591.i
  %134 = load double* %arrayidx592.i, align 8, !tbaa !4
  %sub593.i = fsub double %134, %rsum10389.2.i
  store double %sub593.i, double* %arrayidx592.i, align 8, !tbaa !4
  %arrayidx595.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom594.i
  %135 = load double* %arrayidx595.i, align 8, !tbaa !4
  %sub596.i = fsub double %135, %isum10383.2.i
  store double %sub596.i, double* %arrayidx595.i, align 8, !tbaa !4
  %arrayidx598.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3493.i
  %136 = load double* %arrayidx598.i, align 8, !tbaa !4
  %sub599.i = fsub double %136, %rsum11390.2.i
  store double %sub599.i, double* %arrayidx598.i, align 8, !tbaa !4
  %arrayidx601.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3494.i
  %137 = load double* %arrayidx601.i, align 8, !tbaa !4
  %sub602.i = fsub double %137, %isum11384.2.i
  store double %sub602.i, double* %arrayidx601.i, align 8, !tbaa !4
  %arrayidx604.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3495.i
  %138 = load double* %arrayidx604.i, align 8, !tbaa !4
  %sub605.i = fsub double %138, %rsum12391.2.i
  store double %sub605.i, double* %arrayidx604.i, align 8, !tbaa !4
  %arrayidx607.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3496.i
  %139 = load double* %arrayidx607.i, align 8, !tbaa !4
  %sub608.i = fsub double %139, %isum12385.2.i
  store double %sub608.i, double* %arrayidx607.i, align 8, !tbaa !4
  br label %if.end831.i

if.else609.i:                                     ; preds = %if.end566.i
  %140 = load i32* %arrayidx611.i, align 4, !tbaa !3
  %mul612.i = shl nsw i32 %140, 1
  %add6133478.i = or i32 %mul612.i, 1
  %idxprom614.i = sext i32 %mul612.i to i64
  %arrayidx615.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom614.i
  %141 = load double* %arrayidx615.i, align 8, !tbaa !4
  %sub616.i = fsub double %141, %rsum00386.2.i
  store double %sub616.i, double* %arrayidx615.i, align 8, !tbaa !4
  %idxprom617.i = sext i32 %add6133478.i to i64
  %arrayidx618.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom617.i
  %142 = load double* %arrayidx618.i, align 8, !tbaa !4
  %sub619.i = fsub double %142, %isum00380.2.i
  store double %sub619.i, double* %arrayidx618.i, align 8, !tbaa !4
  %add.ptr11.sum3479.i = add i64 %idxprom614.i, %idx.ext10.i
  %arrayidx621.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3479.i
  %143 = load double* %arrayidx621.i, align 8, !tbaa !4
  %sub622.i = fsub double %143, %rsum01387.2.i
  store double %sub622.i, double* %arrayidx621.i, align 8, !tbaa !4
  %add.ptr11.sum3480.i = add i64 %idxprom617.i, %idx.ext10.i
  %arrayidx624.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3480.i
  %144 = load double* %arrayidx624.i, align 8, !tbaa !4
  %sub625.i = fsub double %144, %isum01381.2.i
  store double %sub625.i, double* %arrayidx624.i, align 8, !tbaa !4
  %add.ptr14.sum3481.i = add i64 %idxprom614.i, %add.ptr11.sum.i
  %arrayidx627.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3481.i
  %145 = load double* %arrayidx627.i, align 8, !tbaa !4
  %sub628.i = fsub double %145, %rsum02388.2.i
  store double %sub628.i, double* %arrayidx627.i, align 8, !tbaa !4
  %add.ptr14.sum3482.i = add i64 %idxprom617.i, %add.ptr11.sum.i
  %arrayidx630.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3482.i
  %146 = load double* %arrayidx630.i, align 8, !tbaa !4
  %sub631.i = fsub double %146, %isum02382.2.i
  store double %sub631.i, double* %arrayidx630.i, align 8, !tbaa !4
  %147 = load i32* %arrayidx634.i, align 4, !tbaa !3
  %mul635.i = shl nsw i32 %147, 1
  %add6363483.i = or i32 %mul635.i, 1
  %idxprom637.i = sext i32 %mul635.i to i64
  %arrayidx638.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom637.i
  %148 = load double* %arrayidx638.i, align 8, !tbaa !4
  %sub639.i = fsub double %148, %rsum10389.2.i
  store double %sub639.i, double* %arrayidx638.i, align 8, !tbaa !4
  %idxprom640.i = sext i32 %add6363483.i to i64
  %arrayidx641.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom640.i
  %149 = load double* %arrayidx641.i, align 8, !tbaa !4
  %sub642.i = fsub double %149, %isum10383.2.i
  store double %sub642.i, double* %arrayidx641.i, align 8, !tbaa !4
  %add.ptr11.sum3484.i = add i64 %idxprom637.i, %idx.ext10.i
  %arrayidx644.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3484.i
  %150 = load double* %arrayidx644.i, align 8, !tbaa !4
  %sub645.i = fsub double %150, %rsum11390.2.i
  store double %sub645.i, double* %arrayidx644.i, align 8, !tbaa !4
  %add.ptr11.sum3485.i = add i64 %idxprom640.i, %idx.ext10.i
  %arrayidx647.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3485.i
  %151 = load double* %arrayidx647.i, align 8, !tbaa !4
  %sub648.i = fsub double %151, %isum11384.2.i
  store double %sub648.i, double* %arrayidx647.i, align 8, !tbaa !4
  %add.ptr14.sum3486.i = add i64 %idxprom637.i, %add.ptr11.sum.i
  %arrayidx650.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3486.i
  %152 = load double* %arrayidx650.i, align 8, !tbaa !4
  %sub651.i = fsub double %152, %rsum12391.2.i
  store double %sub651.i, double* %arrayidx650.i, align 8, !tbaa !4
  %add.ptr14.sum3487.i = add i64 %idxprom640.i, %add.ptr11.sum.i
  %arrayidx653.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3487.i
  %153 = load double* %arrayidx653.i, align 8, !tbaa !4
  %sub654.i = fsub double %153, %isum12385.2.i
  store double %sub654.i, double* %arrayidx653.i, align 8, !tbaa !4
  br label %if.end831.i

if.else656.i:                                     ; preds = %for.end372.i
  %cmp658.i = icmp eq i32 %irowAT.0.lcssa.i, %add632.i
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
  %154 = trunc i64 %indvars.iv3994.i to i32
  %mul685.i = shl nsw i32 %154, 1
  %add6863473.i = or i32 %mul685.i, 1
  %idxprom687.i = sext i32 %mul685.i to i64
  %arrayidx688.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom687.i
  %155 = load double* %arrayidx688.i, align 8, !tbaa !4
  %idxprom689.i = sext i32 %add6863473.i to i64
  %arrayidx690.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom689.i
  %156 = load double* %arrayidx690.i, align 8, !tbaa !4
  %arrayidx692.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom687.i
  %157 = load double* %arrayidx692.i, align 8, !tbaa !4
  %arrayidx694.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom689.i
  %158 = load double* %arrayidx694.i, align 8, !tbaa !4
  %add.ptr.sum3474.i = add i64 %idxprom687.i, %idx.ext.i
  %arrayidx696.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3474.i
  %159 = load double* %arrayidx696.i, align 8, !tbaa !4
  %add.ptr.sum3475.i = add i64 %idxprom689.i, %idx.ext.i
  %arrayidx698.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3475.i
  %160 = load double* %arrayidx698.i, align 8, !tbaa !4
  %add.ptr8.sum3476.i = add i64 %idxprom687.i, %add.ptr.sum.i
  %arrayidx700.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3476.i
  %161 = load double* %arrayidx700.i, align 8, !tbaa !4
  %add.ptr8.sum3477.i = add i64 %idxprom689.i, %add.ptr.sum.i
  %arrayidx702.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3477.i
  %162 = load double* %arrayidx702.i, align 8, !tbaa !4
  %mul703.i = fmul double %155, %157
  %mul704.i = fmul double %156, %158
  %add705.i = fadd double %mul703.i, %mul704.i
  %add706.i = fadd double %rsum00665.03862.i, %add705.i
  %mul707.i = fmul double %155, %158
  %mul708.i = fmul double %156, %157
  %sub709.i = fsub double %mul707.i, %mul708.i
  %add710.i = fadd double %isum00662.03859.i, %sub709.i
  %mul711.i = fmul double %155, %159
  %mul712.i = fmul double %156, %160
  %add713.i = fadd double %mul711.i, %mul712.i
  %add714.i = fadd double %rsum01666.03863.i, %add713.i
  %mul715.i = fmul double %155, %160
  %mul716.i = fmul double %156, %159
  %sub717.i = fsub double %mul715.i, %mul716.i
  %add718.i = fadd double %isum01663.03860.i, %sub717.i
  %mul719.i = fmul double %155, %161
  %mul720.i = fmul double %156, %162
  %add721.i = fadd double %mul719.i, %mul720.i
  %add722.i = fadd double %rsum02667.03864.i, %add721.i
  %mul723.i = fmul double %155, %162
  %mul724.i = fmul double %156, %161
  %sub725.i = fsub double %mul723.i, %mul724.i
  %add726.i = fadd double %isum02664.03861.i, %sub725.i
  %indvars.iv.next3995.i = add i64 %indvars.iv3994.i, 1
  %lftr.wideiv546 = trunc i64 %indvars.iv.next3995.i to i32
  %exitcond547 = icmp eq i32 %lftr.wideiv546, %28
  br i1 %exitcond547, label %if.end783.i, label %for.body684.i

for.body733.i:                                    ; preds = %for.cond731.preheader.i, %for.body733.i
  %indvars.iv3990.i = phi i64 [ %indvars.iv.next3991.i, %for.body733.i ], [ 0, %for.cond731.preheader.i ]
  %rsum02667.13849.i = phi double [ %add775.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %rsum01666.13848.i = phi double [ %add767.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %rsum00665.13847.i = phi double [ %add759.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %isum02664.13846.i = phi double [ %add779.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %isum01663.13845.i = phi double [ %add771.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %isum00662.13844.i = phi double [ %add763.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %163 = trunc i64 %indvars.iv3990.i to i32
  %mul734.i = shl nsw i32 %163, 1
  %add7353467.i = or i32 %mul734.i, 1
  %idxprom736.i = sext i32 %mul734.i to i64
  %arrayidx737.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom736.i
  %164 = load double* %arrayidx737.i, align 8, !tbaa !4
  %idxprom738.i = sext i32 %add7353467.i to i64
  %arrayidx739.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %idxprom738.i
  %165 = load double* %arrayidx739.i, align 8, !tbaa !4
  %arrayidx741.i = getelementptr inbounds i32* %34, i64 %indvars.iv3990.i
  %166 = load i32* %arrayidx741.i, align 4, !tbaa !3
  %mul742.i = shl nsw i32 %166, 1
  %add7433468.i = or i32 %mul742.i, 1
  %idxprom744.i = sext i32 %mul742.i to i64
  %arrayidx745.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom744.i
  %167 = load double* %arrayidx745.i, align 8, !tbaa !4
  %idxprom746.i = sext i32 %add7433468.i to i64
  %arrayidx747.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom746.i
  %168 = load double* %arrayidx747.i, align 8, !tbaa !4
  %add.ptr.sum3469.i = add i64 %idxprom744.i, %idx.ext.i
  %arrayidx749.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3469.i
  %169 = load double* %arrayidx749.i, align 8, !tbaa !4
  %add.ptr.sum3470.i = add i64 %idxprom746.i, %idx.ext.i
  %arrayidx751.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3470.i
  %170 = load double* %arrayidx751.i, align 8, !tbaa !4
  %add.ptr8.sum3471.i = add i64 %idxprom744.i, %add.ptr.sum.i
  %arrayidx753.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3471.i
  %171 = load double* %arrayidx753.i, align 8, !tbaa !4
  %add.ptr8.sum3472.i = add i64 %idxprom746.i, %add.ptr.sum.i
  %arrayidx755.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3472.i
  %172 = load double* %arrayidx755.i, align 8, !tbaa !4
  %mul756.i = fmul double %164, %167
  %mul757.i = fmul double %165, %168
  %add758.i = fadd double %mul756.i, %mul757.i
  %add759.i = fadd double %rsum00665.13847.i, %add758.i
  %mul760.i = fmul double %164, %168
  %mul761.i = fmul double %165, %167
  %sub762.i = fsub double %mul760.i, %mul761.i
  %add763.i = fadd double %isum00662.13844.i, %sub762.i
  %mul764.i = fmul double %164, %169
  %mul765.i = fmul double %165, %170
  %add766.i = fadd double %mul764.i, %mul765.i
  %add767.i = fadd double %rsum01666.13848.i, %add766.i
  %mul768.i = fmul double %164, %170
  %mul769.i = fmul double %165, %169
  %sub770.i = fsub double %mul768.i, %mul769.i
  %add771.i = fadd double %isum01663.13845.i, %sub770.i
  %mul772.i = fmul double %164, %171
  %mul773.i = fmul double %165, %172
  %add774.i = fadd double %mul772.i, %mul773.i
  %add775.i = fadd double %rsum02667.13849.i, %add774.i
  %mul776.i = fmul double %164, %172
  %mul777.i = fmul double %165, %171
  %sub778.i = fsub double %mul776.i, %mul777.i
  %add779.i = fadd double %isum02664.13846.i, %sub778.i
  %indvars.iv.next3991.i = add i64 %indvars.iv3990.i, 1
  %lftr.wideiv544 = trunc i64 %indvars.iv.next3991.i to i32
  %exitcond545 = icmp eq i32 %lftr.wideiv544, %32
  br i1 %exitcond545, label %if.end783.i, label %for.body733.i

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
  %173 = load double* %arrayidx789.i, align 8, !tbaa !4
  %sub790.i = fsub double %173, %rsum00665.2.i
  store double %sub790.i, double* %arrayidx789.i, align 8, !tbaa !4
  %idxprom791.i = sext i32 %add7873462.i to i64
  %arrayidx792.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom791.i
  %174 = load double* %arrayidx792.i, align 8, !tbaa !4
  %sub793.i = fsub double %174, %isum00662.2.i
  store double %sub793.i, double* %arrayidx792.i, align 8, !tbaa !4
  %add.ptr11.sum3463.i = add i64 %idxprom788.i, %idx.ext10.i
  %arrayidx795.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3463.i
  %175 = load double* %arrayidx795.i, align 8, !tbaa !4
  %sub796.i = fsub double %175, %rsum01666.2.i
  store double %sub796.i, double* %arrayidx795.i, align 8, !tbaa !4
  %add.ptr11.sum3464.i = add i64 %idxprom791.i, %idx.ext10.i
  %arrayidx798.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3464.i
  %176 = load double* %arrayidx798.i, align 8, !tbaa !4
  %sub799.i = fsub double %176, %isum01663.2.i
  store double %sub799.i, double* %arrayidx798.i, align 8, !tbaa !4
  %add.ptr14.sum3465.i = add i64 %idxprom788.i, %add.ptr11.sum.i
  %arrayidx801.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3465.i
  %177 = load double* %arrayidx801.i, align 8, !tbaa !4
  %sub802.i = fsub double %177, %rsum02667.2.i
  store double %sub802.i, double* %arrayidx801.i, align 8, !tbaa !4
  %add.ptr14.sum3466.i = add i64 %idxprom791.i, %add.ptr11.sum.i
  %arrayidx804.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3466.i
  %178 = load double* %arrayidx804.i, align 8, !tbaa !4
  %sub805.i = fsub double %178, %isum02664.2.i
  store double %sub805.i, double* %arrayidx804.i, align 8, !tbaa !4
  br label %if.end831.i

if.else806.i:                                     ; preds = %if.end783.i
  %179 = load i32* %arrayidx634.i, align 4, !tbaa !3
  %mul809.i = shl nsw i32 %179, 1
  %add8103457.i = or i32 %mul809.i, 1
  %idxprom811.i = sext i32 %mul809.i to i64
  %arrayidx812.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom811.i
  %180 = load double* %arrayidx812.i, align 8, !tbaa !4
  %sub813.i = fsub double %180, %rsum00665.2.i
  store double %sub813.i, double* %arrayidx812.i, align 8, !tbaa !4
  %idxprom814.i = sext i32 %add8103457.i to i64
  %arrayidx815.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom814.i
  %181 = load double* %arrayidx815.i, align 8, !tbaa !4
  %sub816.i = fsub double %181, %isum00662.2.i
  store double %sub816.i, double* %arrayidx815.i, align 8, !tbaa !4
  %add.ptr11.sum3458.i = add i64 %idxprom811.i, %idx.ext10.i
  %arrayidx818.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3458.i
  %182 = load double* %arrayidx818.i, align 8, !tbaa !4
  %sub819.i = fsub double %182, %rsum01666.2.i
  store double %sub819.i, double* %arrayidx818.i, align 8, !tbaa !4
  %add.ptr11.sum3459.i = add i64 %idxprom814.i, %idx.ext10.i
  %arrayidx821.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3459.i
  %183 = load double* %arrayidx821.i, align 8, !tbaa !4
  %sub822.i = fsub double %183, %isum01663.2.i
  store double %sub822.i, double* %arrayidx821.i, align 8, !tbaa !4
  %add.ptr14.sum3460.i = add i64 %idxprom811.i, %add.ptr11.sum.i
  %arrayidx824.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3460.i
  %184 = load double* %arrayidx824.i, align 8, !tbaa !4
  %sub825.i = fsub double %184, %rsum02667.2.i
  store double %sub825.i, double* %arrayidx824.i, align 8, !tbaa !4
  %add.ptr14.sum3461.i = add i64 %idxprom814.i, %add.ptr11.sum.i
  %arrayidx827.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3461.i
  %185 = load double* %arrayidx827.i, align 8, !tbaa !4
  %sub828.i = fsub double %185, %isum02664.2.i
  store double %sub828.i, double* %arrayidx827.i, align 8, !tbaa !4
  br label %if.end831.i

if.end831.i:                                      ; preds = %if.else806.i, %if.then785.i, %if.else656.i, %if.else609.i, %if.then568.i
  %add.ptr834.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum.i
  %add.ptr837.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum.i
  %add839.i = add nsw i32 %jcolX.03930.i, 3
  %cmp5.i = icmp slt i32 %add839.i, %sub3928.i
  br i1 %cmp5.i, label %for.body.i, label %for.end840.i

for.end840.i:                                     ; preds = %if.end831.i, %if.end4.i
  %colX0.0.lcssa.i = phi double* [ %25, %if.end4.i ], [ %add.ptr834.i, %if.end831.i ]
  %colY0.0.lcssa.i = phi double* [ %26, %if.end4.i ], [ %add.ptr837.i, %if.end831.i ]
  %jcolX.0.lcssa.i = phi i32 [ 0, %if.end4.i ], [ %add839.i, %if.end831.i ]
  %cmp842.i = icmp eq i32 %jcolX.0.lcssa.i, %sub3928.i
  br i1 %cmp842.i, label %if.then843.i, label %if.else1499.i

if.then843.i:                                     ; preds = %for.end840.i
  %186 = load i32* %nrowX.i, align 4, !tbaa !3
  %mul844.i = shl nsw i32 %186, 1
  %idx.ext845.i = sext i32 %mul844.i to i64
  %187 = load i32* %nrowY.i, align 4, !tbaa !3
  %mul847.i = shl nsw i32 %187, 1
  %idx.ext848.i = sext i32 %mul847.i to i64
  %188 = load double** %entA.i, align 8, !tbaa !0
  %189 = load i32* %nrowAT.i, align 4, !tbaa !3
  %sub8513668.i = add nsw i32 %189, -2
  %cmp8523669.i = icmp sgt i32 %sub8513668.i, 0
  br i1 %cmp8523669.i, label %for.body853.lr.ph.i, label %for.end1149.i

for.body853.lr.ph.i:                              ; preds = %if.then843.i
  %190 = load i32* %ncolAT.i, align 4, !tbaa !3
  %mul882.i = shl nsw i32 %190, 1
  %idx.ext883.i = sext i32 %mul882.i to i64
  %add.ptr884.sum.i = shl nsw i64 %idx.ext883.i, 1
  %cmp888.i = icmp eq i32 %190, %186
  %cmp1048.i = icmp eq i32 %187, %189
  %add.ptr887.sum.i = add i64 %add.ptr884.sum.i, %idx.ext883.i
  %191 = load i32** %rowindAT.i, align 8, !tbaa !0
  %cmp9683615.i = icmp sgt i32 %190, 0
  %192 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body853.i

for.body853.i:                                    ; preds = %if.end1143.i, %for.body853.lr.ph.i
  %indvars.iv3958.i = phi i64 [ 0, %for.body853.lr.ph.i ], [ %indvars.iv.next3959.i, %if.end1143.i ]
  %rowAT0.13671.i = phi double* [ %188, %for.body853.lr.ph.i ], [ %add.ptr1146.i, %if.end1143.i ]
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
  %193 = trunc i64 %indvars.iv3956.i to i32
  %mul893.i = shl nsw i32 %193, 1
  %add8943450.i = or i32 %mul893.i, 1
  %idxprom895.i = sext i32 %mul893.i to i64
  %arrayidx896.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom895.i
  %194 = load double* %arrayidx896.i, align 8, !tbaa !4
  %idxprom897.i = sext i32 %add8943450.i to i64
  %arrayidx898.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom897.i
  %195 = load double* %arrayidx898.i, align 8, !tbaa !4
  %add.ptr884.sum3451.i = add i64 %idxprom895.i, %idx.ext883.i
  %arrayidx900.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3451.i
  %196 = load double* %arrayidx900.i, align 8, !tbaa !4
  %add.ptr884.sum3452.i = add i64 %idxprom897.i, %idx.ext883.i
  %arrayidx902.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3452.i
  %197 = load double* %arrayidx902.i, align 8, !tbaa !4
  %add.ptr887.sum3453.i = add i64 %idxprom895.i, %add.ptr884.sum.i
  %arrayidx904.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3453.i
  %198 = load double* %arrayidx904.i, align 8, !tbaa !4
  %add.ptr887.sum3454.i = add i64 %idxprom897.i, %add.ptr884.sum.i
  %arrayidx906.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3454.i
  %199 = load double* %arrayidx906.i, align 8, !tbaa !4
  %arrayidx908.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom895.i
  %200 = load double* %arrayidx908.i, align 8, !tbaa !4
  %arrayidx910.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom897.i
  %201 = load double* %arrayidx910.i, align 8, !tbaa !4
  %add.ptr846.sum3455.i = add i64 %idxprom895.i, %idx.ext845.i
  %arrayidx912.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3455.i
  %202 = load double* %arrayidx912.i, align 8, !tbaa !4
  %add.ptr846.sum3456.i = add i64 %idxprom897.i, %idx.ext845.i
  %arrayidx914.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3456.i
  %203 = load double* %arrayidx914.i, align 8, !tbaa !4
  %mul915.i = fmul double %194, %200
  %mul916.i = fmul double %195, %201
  %add917.i = fadd double %mul915.i, %mul916.i
  %add918.i = fadd double %rsum00866.03649.i, %add917.i
  %mul919.i = fmul double %194, %201
  %mul920.i = fmul double %195, %200
  %sub921.i = fsub double %mul919.i, %mul920.i
  %add922.i = fadd double %isum00860.03643.i, %sub921.i
  %mul923.i = fmul double %194, %202
  %mul924.i = fmul double %195, %203
  %add925.i = fadd double %mul923.i, %mul924.i
  %add926.i = fadd double %rsum01867.03650.i, %add925.i
  %mul927.i = fmul double %194, %203
  %mul928.i = fmul double %195, %202
  %sub929.i = fsub double %mul927.i, %mul928.i
  %add930.i = fadd double %isum01861.03644.i, %sub929.i
  %mul931.i = fmul double %196, %200
  %mul932.i = fmul double %197, %201
  %add933.i = fadd double %mul931.i, %mul932.i
  %add934.i = fadd double %rsum10868.03651.i, %add933.i
  %mul935.i = fmul double %196, %201
  %mul936.i = fmul double %197, %200
  %sub937.i = fsub double %mul935.i, %mul936.i
  %add938.i = fadd double %isum10862.03645.i, %sub937.i
  %mul939.i = fmul double %196, %202
  %mul940.i = fmul double %197, %203
  %add941.i = fadd double %mul939.i, %mul940.i
  %add942.i = fadd double %rsum11869.03652.i, %add941.i
  %mul943.i = fmul double %196, %203
  %mul944.i = fmul double %197, %202
  %sub945.i = fsub double %mul943.i, %mul944.i
  %add946.i = fadd double %isum11863.03646.i, %sub945.i
  %mul947.i = fmul double %198, %200
  %mul948.i = fmul double %199, %201
  %add949.i = fadd double %mul947.i, %mul948.i
  %add950.i = fadd double %rsum20870.03653.i, %add949.i
  %mul951.i = fmul double %198, %201
  %mul952.i = fmul double %199, %200
  %sub953.i = fsub double %mul951.i, %mul952.i
  %add954.i = fadd double %isum20864.03647.i, %sub953.i
  %mul955.i = fmul double %198, %202
  %mul956.i = fmul double %199, %203
  %add957.i = fadd double %mul955.i, %mul956.i
  %add958.i = fadd double %rsum21871.03654.i, %add957.i
  %mul959.i = fmul double %198, %203
  %mul960.i = fmul double %199, %202
  %sub961.i = fsub double %mul959.i, %mul960.i
  %add962.i = fadd double %isum21865.03648.i, %sub961.i
  %indvars.iv.next3957.i = add i64 %indvars.iv3956.i, 1
  %lftr.wideiv526 = trunc i64 %indvars.iv.next3957.i to i32
  %exitcond527 = icmp eq i32 %lftr.wideiv526, %186
  br i1 %exitcond527, label %if.end1047.i, label %for.body892.i

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
  %204 = trunc i64 %indvars.iv3954.i to i32
  %mul970.i = shl nsw i32 %204, 1
  %add9713442.i = or i32 %mul970.i, 1
  %idxprom972.i = sext i32 %mul970.i to i64
  %arrayidx973.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom972.i
  %205 = load double* %arrayidx973.i, align 8, !tbaa !4
  %idxprom974.i = sext i32 %add9713442.i to i64
  %arrayidx975.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom974.i
  %206 = load double* %arrayidx975.i, align 8, !tbaa !4
  %add.ptr884.sum3443.i = add i64 %idxprom972.i, %idx.ext883.i
  %arrayidx977.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3443.i
  %207 = load double* %arrayidx977.i, align 8, !tbaa !4
  %add.ptr884.sum3444.i = add i64 %idxprom974.i, %idx.ext883.i
  %arrayidx979.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3444.i
  %208 = load double* %arrayidx979.i, align 8, !tbaa !4
  %add.ptr887.sum3445.i = add i64 %idxprom972.i, %add.ptr884.sum.i
  %arrayidx981.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3445.i
  %209 = load double* %arrayidx981.i, align 8, !tbaa !4
  %add.ptr887.sum3446.i = add i64 %idxprom974.i, %add.ptr884.sum.i
  %arrayidx983.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3446.i
  %210 = load double* %arrayidx983.i, align 8, !tbaa !4
  %arrayidx985.i = getelementptr inbounds i32* %192, i64 %indvars.iv3954.i
  %211 = load i32* %arrayidx985.i, align 4, !tbaa !3
  %mul986.i = shl nsw i32 %211, 1
  %add9873447.i = or i32 %mul986.i, 1
  %idxprom988.i = sext i32 %mul986.i to i64
  %arrayidx989.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom988.i
  %212 = load double* %arrayidx989.i, align 8, !tbaa !4
  %idxprom990.i = sext i32 %add9873447.i to i64
  %arrayidx991.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom990.i
  %213 = load double* %arrayidx991.i, align 8, !tbaa !4
  %add.ptr846.sum3448.i = add i64 %idxprom988.i, %idx.ext845.i
  %arrayidx993.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3448.i
  %214 = load double* %arrayidx993.i, align 8, !tbaa !4
  %add.ptr846.sum3449.i = add i64 %idxprom990.i, %idx.ext845.i
  %arrayidx995.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3449.i
  %215 = load double* %arrayidx995.i, align 8, !tbaa !4
  %mul996.i = fmul double %205, %212
  %mul997.i = fmul double %206, %213
  %add998.i = fadd double %mul996.i, %mul997.i
  %add999.i = fadd double %rsum00866.13622.i, %add998.i
  %mul1000.i = fmul double %205, %213
  %mul1001.i = fmul double %206, %212
  %sub1002.i = fsub double %mul1000.i, %mul1001.i
  %add1003.i = fadd double %isum00860.13616.i, %sub1002.i
  %mul1004.i = fmul double %205, %214
  %mul1005.i = fmul double %206, %215
  %add1006.i = fadd double %mul1004.i, %mul1005.i
  %add1007.i = fadd double %rsum01867.13623.i, %add1006.i
  %mul1008.i = fmul double %205, %215
  %mul1009.i = fmul double %206, %214
  %sub1010.i = fsub double %mul1008.i, %mul1009.i
  %add1011.i = fadd double %isum01861.13617.i, %sub1010.i
  %mul1012.i = fmul double %207, %212
  %mul1013.i = fmul double %208, %213
  %add1014.i = fadd double %mul1012.i, %mul1013.i
  %add1015.i = fadd double %rsum10868.13624.i, %add1014.i
  %mul1016.i = fmul double %207, %213
  %mul1017.i = fmul double %208, %212
  %sub1018.i = fsub double %mul1016.i, %mul1017.i
  %add1019.i = fadd double %isum10862.13618.i, %sub1018.i
  %mul1020.i = fmul double %207, %214
  %mul1021.i = fmul double %208, %215
  %add1022.i = fadd double %mul1020.i, %mul1021.i
  %add1023.i = fadd double %rsum11869.13625.i, %add1022.i
  %mul1024.i = fmul double %207, %215
  %mul1025.i = fmul double %208, %214
  %sub1026.i = fsub double %mul1024.i, %mul1025.i
  %add1027.i = fadd double %isum11863.13619.i, %sub1026.i
  %mul1028.i = fmul double %209, %212
  %mul1029.i = fmul double %210, %213
  %add1030.i = fadd double %mul1028.i, %mul1029.i
  %add1031.i = fadd double %rsum20870.13626.i, %add1030.i
  %mul1032.i = fmul double %209, %213
  %mul1033.i = fmul double %210, %212
  %sub1034.i = fsub double %mul1032.i, %mul1033.i
  %add1035.i = fadd double %isum20864.13620.i, %sub1034.i
  %mul1036.i = fmul double %209, %214
  %mul1037.i = fmul double %210, %215
  %add1038.i = fadd double %mul1036.i, %mul1037.i
  %add1039.i = fadd double %rsum21871.13627.i, %add1038.i
  %mul1040.i = fmul double %209, %215
  %mul1041.i = fmul double %210, %214
  %sub1042.i = fsub double %mul1040.i, %mul1041.i
  %add1043.i = fadd double %isum21865.13621.i, %sub1042.i
  %indvars.iv.next3955.i = add i64 %indvars.iv3954.i, 1
  %lftr.wideiv524 = trunc i64 %indvars.iv.next3955.i to i32
  %exitcond525 = icmp eq i32 %lftr.wideiv524, %190
  br i1 %exitcond525, label %if.end1047.i, label %for.body969.i

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
  %216 = trunc i64 %indvars.iv3958.i to i32
  %mul1050.i = shl nsw i32 %216, 1
  %add10513435.i = or i32 %mul1050.i, 1
  %idxprom1052.i = sext i32 %mul1050.i to i64
  %arrayidx1053.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1052.i
  %217 = load double* %arrayidx1053.i, align 8, !tbaa !4
  %sub1054.i = fsub double %217, %rsum00866.2.i
  store double %sub1054.i, double* %arrayidx1053.i, align 8, !tbaa !4
  %idxprom1055.i = sext i32 %add10513435.i to i64
  %arrayidx1056.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1055.i
  %218 = load double* %arrayidx1056.i, align 8, !tbaa !4
  %sub1057.i = fsub double %218, %isum00860.2.i
  store double %sub1057.i, double* %arrayidx1056.i, align 8, !tbaa !4
  %add.ptr849.sum3436.i = add i64 %idxprom1052.i, %idx.ext848.i
  %arrayidx1059.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3436.i
  %219 = load double* %arrayidx1059.i, align 8, !tbaa !4
  %sub1060.i = fsub double %219, %rsum01867.2.i
  store double %sub1060.i, double* %arrayidx1059.i, align 8, !tbaa !4
  %add.ptr849.sum3437.i = add i64 %idxprom1055.i, %idx.ext848.i
  %arrayidx1062.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3437.i
  %220 = load double* %arrayidx1062.i, align 8, !tbaa !4
  %sub1063.i = fsub double %220, %isum01861.2.i
  store double %sub1063.i, double* %arrayidx1062.i, align 8, !tbaa !4
  %add1064.i = add nsw i32 %mul1050.i, 2
  %add1065.i = add nsw i32 %add10513435.i, 2
  %idxprom1066.i = sext i32 %add1064.i to i64
  %arrayidx1067.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1066.i
  %221 = load double* %arrayidx1067.i, align 8, !tbaa !4
  %sub1068.i = fsub double %221, %rsum10868.2.i
  store double %sub1068.i, double* %arrayidx1067.i, align 8, !tbaa !4
  %idxprom1069.i = sext i32 %add1065.i to i64
  %arrayidx1070.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1069.i
  %222 = load double* %arrayidx1070.i, align 8, !tbaa !4
  %sub1071.i = fsub double %222, %isum10862.2.i
  store double %sub1071.i, double* %arrayidx1070.i, align 8, !tbaa !4
  %add.ptr849.sum3438.i = add i64 %idxprom1066.i, %idx.ext848.i
  %arrayidx1073.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3438.i
  %223 = load double* %arrayidx1073.i, align 8, !tbaa !4
  %sub1074.i = fsub double %223, %rsum11869.2.i
  store double %sub1074.i, double* %arrayidx1073.i, align 8, !tbaa !4
  %add.ptr849.sum3439.i = add i64 %idxprom1069.i, %idx.ext848.i
  %arrayidx1076.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3439.i
  %224 = load double* %arrayidx1076.i, align 8, !tbaa !4
  %sub1077.i = fsub double %224, %isum11863.2.i
  store double %sub1077.i, double* %arrayidx1076.i, align 8, !tbaa !4
  %add1078.i = add nsw i32 %mul1050.i, 4
  %add1079.i = add nsw i32 %add10513435.i, 4
  %idxprom1080.i = sext i32 %add1078.i to i64
  %arrayidx1081.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1080.i
  %225 = load double* %arrayidx1081.i, align 8, !tbaa !4
  %sub1082.i = fsub double %225, %rsum20870.2.i
  store double %sub1082.i, double* %arrayidx1081.i, align 8, !tbaa !4
  %idxprom1083.i = sext i32 %add1079.i to i64
  %arrayidx1084.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1083.i
  %226 = load double* %arrayidx1084.i, align 8, !tbaa !4
  %sub1085.i = fsub double %226, %isum20864.2.i
  store double %sub1085.i, double* %arrayidx1084.i, align 8, !tbaa !4
  %add.ptr849.sum3440.i = add i64 %idxprom1080.i, %idx.ext848.i
  %arrayidx1087.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3440.i
  %227 = load double* %arrayidx1087.i, align 8, !tbaa !4
  %sub1088.i = fsub double %227, %rsum21871.2.i
  store double %sub1088.i, double* %arrayidx1087.i, align 8, !tbaa !4
  %add.ptr849.sum3441.i = add i64 %idxprom1083.i, %idx.ext848.i
  %arrayidx1090.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3441.i
  %228 = load double* %arrayidx1090.i, align 8, !tbaa !4
  %sub1091.i = fsub double %228, %isum21865.2.i
  store double %sub1091.i, double* %arrayidx1090.i, align 8, !tbaa !4
  br label %if.end1143.i

if.else1092.i:                                    ; preds = %if.end1047.i
  %arrayidx1094.i = getelementptr inbounds i32* %191, i64 %indvars.iv3958.i
  %229 = load i32* %arrayidx1094.i, align 4, !tbaa !3
  %mul1095.i = shl nsw i32 %229, 1
  %add10963426.i = or i32 %mul1095.i, 1
  %idxprom1097.i = sext i32 %mul1095.i to i64
  %arrayidx1098.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1097.i
  %230 = load double* %arrayidx1098.i, align 8, !tbaa !4
  %sub1099.i = fsub double %230, %rsum00866.2.i
  store double %sub1099.i, double* %arrayidx1098.i, align 8, !tbaa !4
  %idxprom1100.i = sext i32 %add10963426.i to i64
  %arrayidx1101.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1100.i
  %231 = load double* %arrayidx1101.i, align 8, !tbaa !4
  %sub1102.i = fsub double %231, %isum00860.2.i
  store double %sub1102.i, double* %arrayidx1101.i, align 8, !tbaa !4
  %add.ptr849.sum3427.i = add i64 %idxprom1097.i, %idx.ext848.i
  %arrayidx1104.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3427.i
  %232 = load double* %arrayidx1104.i, align 8, !tbaa !4
  %sub1105.i = fsub double %232, %rsum01867.2.i
  store double %sub1105.i, double* %arrayidx1104.i, align 8, !tbaa !4
  %add.ptr849.sum3428.i = add i64 %idxprom1100.i, %idx.ext848.i
  %arrayidx1107.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3428.i
  %233 = load double* %arrayidx1107.i, align 8, !tbaa !4
  %sub1108.i = fsub double %233, %isum01861.2.i
  store double %sub1108.i, double* %arrayidx1107.i, align 8, !tbaa !4
  %234 = add nsw i64 %indvars.iv3958.i, 1
  %arrayidx1111.i = getelementptr inbounds i32* %191, i64 %234
  %235 = load i32* %arrayidx1111.i, align 4, !tbaa !3
  %mul1112.i = shl nsw i32 %235, 1
  %add11133429.i = or i32 %mul1112.i, 1
  %idxprom1114.i = sext i32 %mul1112.i to i64
  %arrayidx1115.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1114.i
  %236 = load double* %arrayidx1115.i, align 8, !tbaa !4
  %sub1116.i = fsub double %236, %rsum10868.2.i
  store double %sub1116.i, double* %arrayidx1115.i, align 8, !tbaa !4
  %idxprom1117.i = sext i32 %add11133429.i to i64
  %arrayidx1118.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1117.i
  %237 = load double* %arrayidx1118.i, align 8, !tbaa !4
  %sub1119.i = fsub double %237, %isum10862.2.i
  store double %sub1119.i, double* %arrayidx1118.i, align 8, !tbaa !4
  %add.ptr849.sum3430.i = add i64 %idxprom1114.i, %idx.ext848.i
  %arrayidx1121.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3430.i
  %238 = load double* %arrayidx1121.i, align 8, !tbaa !4
  %sub1122.i = fsub double %238, %rsum11869.2.i
  store double %sub1122.i, double* %arrayidx1121.i, align 8, !tbaa !4
  %add.ptr849.sum3431.i = add i64 %idxprom1117.i, %idx.ext848.i
  %arrayidx1124.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3431.i
  %239 = load double* %arrayidx1124.i, align 8, !tbaa !4
  %sub1125.i = fsub double %239, %isum11863.2.i
  store double %sub1125.i, double* %arrayidx1124.i, align 8, !tbaa !4
  %240 = add nsw i64 %indvars.iv3958.i, 2
  %arrayidx1128.i = getelementptr inbounds i32* %191, i64 %240
  %241 = load i32* %arrayidx1128.i, align 4, !tbaa !3
  %mul1129.i = shl nsw i32 %241, 1
  %add11303432.i = or i32 %mul1129.i, 1
  %idxprom1131.i = sext i32 %mul1129.i to i64
  %arrayidx1132.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1131.i
  %242 = load double* %arrayidx1132.i, align 8, !tbaa !4
  %sub1133.i = fsub double %242, %rsum20870.2.i
  store double %sub1133.i, double* %arrayidx1132.i, align 8, !tbaa !4
  %idxprom1134.i = sext i32 %add11303432.i to i64
  %arrayidx1135.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1134.i
  %243 = load double* %arrayidx1135.i, align 8, !tbaa !4
  %sub1136.i = fsub double %243, %isum20864.2.i
  store double %sub1136.i, double* %arrayidx1135.i, align 8, !tbaa !4
  %add.ptr849.sum3433.i = add i64 %idxprom1131.i, %idx.ext848.i
  %arrayidx1138.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3433.i
  %244 = load double* %arrayidx1138.i, align 8, !tbaa !4
  %sub1139.i = fsub double %244, %rsum21871.2.i
  store double %sub1139.i, double* %arrayidx1138.i, align 8, !tbaa !4
  %add.ptr849.sum3434.i = add i64 %idxprom1134.i, %idx.ext848.i
  %arrayidx1141.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3434.i
  %245 = load double* %arrayidx1141.i, align 8, !tbaa !4
  %sub1142.i = fsub double %245, %isum21865.2.i
  store double %sub1142.i, double* %arrayidx1141.i, align 8, !tbaa !4
  br label %if.end1143.i

if.end1143.i:                                     ; preds = %if.else1092.i, %if.then1049.i
  %add.ptr1146.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum.i
  %indvars.iv.next3959.i = add i64 %indvars.iv3958.i, 3
  %add1148.i = add nsw i32 %irowAT.13670.i, 3
  %246 = trunc i64 %indvars.iv.next3959.i to i32
  %cmp852.i = icmp slt i32 %246, %sub8513668.i
  br i1 %cmp852.i, label %for.body853.i, label %for.end1149.i

for.end1149.i:                                    ; preds = %if.end1143.i, %if.then843.i
  %rowAT0.1.lcssa.i = phi double* [ %188, %if.then843.i ], [ %add.ptr1146.i, %if.end1143.i ]
  %irowAT.1.lcssa.i = phi i32 [ 0, %if.then843.i ], [ %add1148.i, %if.end1143.i ]
  %cmp1151.i = icmp eq i32 %irowAT.1.lcssa.i, %sub8513668.i
  br i1 %cmp1151.i, label %if.then1152.i, label %if.else1363.i

if.then1152.i:                                    ; preds = %for.end1149.i
  %247 = load i32* %ncolAT.i, align 4, !tbaa !3
  %mul1175.i = shl nsw i32 %247, 1
  %idx.ext1176.i = sext i32 %mul1175.i to i64
  %248 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp1178.i = icmp eq i32 %247, %248
  %cmp11813558.i = icmp sgt i32 %247, 0
  br i1 %cmp1178.i, label %for.cond1180.preheader.i, label %for.cond1237.preheader.i

for.cond1237.preheader.i:                         ; preds = %if.then1152.i
  br i1 %cmp11813558.i, label %for.body1239.lr.ph.i, label %if.end1297.i

for.body1239.lr.ph.i:                             ; preds = %for.cond1237.preheader.i
  %249 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body1239.i

for.cond1180.preheader.i:                         ; preds = %if.then1152.i
  br i1 %cmp11813558.i, label %for.body1182.i, label %if.end1297.i

for.body1182.i:                                   ; preds = %for.cond1180.preheader.i, %for.body1182.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body1182.i ], [ 0, %for.cond1180.preheader.i ]
  %rsum111164.03566.i = phi double [ %add1228.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %rsum101163.03565.i = phi double [ %add1220.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %rsum011162.03564.i = phi double [ %add1212.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %rsum001161.03563.i = phi double [ %add1204.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum111160.03562.i = phi double [ %add1232.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum101159.03561.i = phi double [ %add1224.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum011158.03560.i = phi double [ %add1216.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum001157.03559.i = phi double [ %add1208.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %250 = trunc i64 %indvars.iv.i to i32
  %mul1183.i = shl nsw i32 %250, 1
  %add11843421.i = or i32 %mul1183.i, 1
  %idxprom1185.i = sext i32 %mul1183.i to i64
  %arrayidx1186.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1185.i
  %251 = load double* %arrayidx1186.i, align 8, !tbaa !4
  %idxprom1187.i = sext i32 %add11843421.i to i64
  %arrayidx1188.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1187.i
  %252 = load double* %arrayidx1188.i, align 8, !tbaa !4
  %add.ptr1177.sum3422.i = add i64 %idxprom1185.i, %idx.ext1176.i
  %arrayidx1190.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %add.ptr1177.sum3422.i
  %253 = load double* %arrayidx1190.i, align 8, !tbaa !4
  %add.ptr1177.sum3423.i = add i64 %idxprom1187.i, %idx.ext1176.i
  %arrayidx1192.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %add.ptr1177.sum3423.i
  %254 = load double* %arrayidx1192.i, align 8, !tbaa !4
  %arrayidx1194.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1185.i
  %255 = load double* %arrayidx1194.i, align 8, !tbaa !4
  %arrayidx1196.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1187.i
  %256 = load double* %arrayidx1196.i, align 8, !tbaa !4
  %add.ptr846.sum3424.i = add i64 %idxprom1185.i, %idx.ext845.i
  %arrayidx1198.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3424.i
  %257 = load double* %arrayidx1198.i, align 8, !tbaa !4
  %add.ptr846.sum3425.i = add i64 %idxprom1187.i, %idx.ext845.i
  %arrayidx1200.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3425.i
  %258 = load double* %arrayidx1200.i, align 8, !tbaa !4
  %mul1201.i = fmul double %251, %255
  %mul1202.i = fmul double %252, %256
  %add1203.i = fadd double %mul1201.i, %mul1202.i
  %add1204.i = fadd double %rsum001161.03563.i, %add1203.i
  %mul1205.i = fmul double %251, %256
  %mul1206.i = fmul double %252, %255
  %sub1207.i = fsub double %mul1205.i, %mul1206.i
  %add1208.i = fadd double %isum001157.03559.i, %sub1207.i
  %mul1209.i = fmul double %251, %257
  %mul1210.i = fmul double %252, %258
  %add1211.i = fadd double %mul1209.i, %mul1210.i
  %add1212.i = fadd double %rsum011162.03564.i, %add1211.i
  %mul1213.i = fmul double %251, %258
  %mul1214.i = fmul double %252, %257
  %sub1215.i = fsub double %mul1213.i, %mul1214.i
  %add1216.i = fadd double %isum011158.03560.i, %sub1215.i
  %mul1217.i = fmul double %253, %255
  %mul1218.i = fmul double %254, %256
  %add1219.i = fadd double %mul1217.i, %mul1218.i
  %add1220.i = fadd double %rsum101163.03565.i, %add1219.i
  %mul1221.i = fmul double %253, %256
  %mul1222.i = fmul double %254, %255
  %sub1223.i = fsub double %mul1221.i, %mul1222.i
  %add1224.i = fadd double %isum101159.03561.i, %sub1223.i
  %mul1225.i = fmul double %253, %257
  %mul1226.i = fmul double %254, %258
  %add1227.i = fadd double %mul1225.i, %mul1226.i
  %add1228.i = fadd double %rsum111164.03566.i, %add1227.i
  %mul1229.i = fmul double %253, %258
  %mul1230.i = fmul double %254, %257
  %sub1231.i = fsub double %mul1229.i, %mul1230.i
  %add1232.i = fadd double %isum111160.03562.i, %sub1231.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %247
  br i1 %exitcond, label %if.end1297.i, label %for.body1182.i

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
  %259 = trunc i64 %indvars.iv3948.i to i32
  %mul1240.i = shl nsw i32 %259, 1
  %add12413416.i = or i32 %mul1240.i, 1
  %idxprom1242.i = sext i32 %mul1240.i to i64
  %arrayidx1243.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1242.i
  %260 = load double* %arrayidx1243.i, align 8, !tbaa !4
  %idxprom1244.i = sext i32 %add12413416.i to i64
  %arrayidx1245.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1244.i
  %261 = load double* %arrayidx1245.i, align 8, !tbaa !4
  %add.ptr1177.sum.i = add i64 %idxprom1242.i, %idx.ext1176.i
  %arrayidx1247.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %add.ptr1177.sum.i
  %262 = load double* %arrayidx1247.i, align 8, !tbaa !4
  %add.ptr1177.sum3417.i = add i64 %idxprom1244.i, %idx.ext1176.i
  %arrayidx1249.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %add.ptr1177.sum3417.i
  %263 = load double* %arrayidx1249.i, align 8, !tbaa !4
  %arrayidx1251.i = getelementptr inbounds i32* %249, i64 %indvars.iv3948.i
  %264 = load i32* %arrayidx1251.i, align 4, !tbaa !3
  %mul1252.i = shl nsw i32 %264, 1
  %add12533418.i = or i32 %mul1252.i, 1
  %idxprom1254.i = sext i32 %mul1252.i to i64
  %arrayidx1255.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1254.i
  %265 = load double* %arrayidx1255.i, align 8, !tbaa !4
  %idxprom1256.i = sext i32 %add12533418.i to i64
  %arrayidx1257.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1256.i
  %266 = load double* %arrayidx1257.i, align 8, !tbaa !4
  %add.ptr846.sum3419.i = add i64 %idxprom1254.i, %idx.ext845.i
  %arrayidx1259.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3419.i
  %267 = load double* %arrayidx1259.i, align 8, !tbaa !4
  %add.ptr846.sum3420.i = add i64 %idxprom1256.i, %idx.ext845.i
  %arrayidx1261.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3420.i
  %268 = load double* %arrayidx1261.i, align 8, !tbaa !4
  %mul1262.i = fmul double %260, %265
  %mul1263.i = fmul double %261, %266
  %add1264.i = fadd double %mul1262.i, %mul1263.i
  %add1265.i = fadd double %rsum001161.13581.i, %add1264.i
  %mul1266.i = fmul double %260, %266
  %mul1267.i = fmul double %261, %265
  %sub1268.i = fsub double %mul1266.i, %mul1267.i
  %add1269.i = fadd double %isum001157.13577.i, %sub1268.i
  %mul1270.i = fmul double %260, %267
  %mul1271.i = fmul double %261, %268
  %add1272.i = fadd double %mul1270.i, %mul1271.i
  %add1273.i = fadd double %rsum011162.13582.i, %add1272.i
  %mul1274.i = fmul double %260, %268
  %mul1275.i = fmul double %261, %267
  %sub1276.i = fsub double %mul1274.i, %mul1275.i
  %add1277.i = fadd double %isum011158.13578.i, %sub1276.i
  %mul1278.i = fmul double %262, %265
  %mul1279.i = fmul double %263, %266
  %add1280.i = fadd double %mul1278.i, %mul1279.i
  %add1281.i = fadd double %rsum101163.13583.i, %add1280.i
  %mul1282.i = fmul double %262, %266
  %mul1283.i = fmul double %263, %265
  %sub1284.i = fsub double %mul1282.i, %mul1283.i
  %add1285.i = fadd double %isum101159.13579.i, %sub1284.i
  %mul1286.i = fmul double %262, %267
  %mul1287.i = fmul double %263, %268
  %add1288.i = fadd double %mul1286.i, %mul1287.i
  %add1289.i = fadd double %rsum111164.13584.i, %add1288.i
  %mul1290.i = fmul double %262, %268
  %mul1291.i = fmul double %263, %267
  %sub1292.i = fsub double %mul1290.i, %mul1291.i
  %add1293.i = fadd double %isum111160.13580.i, %sub1292.i
  %indvars.iv.next3949.i = add i64 %indvars.iv3948.i, 1
  %lftr.wideiv518 = trunc i64 %indvars.iv.next3949.i to i32
  %exitcond519 = icmp eq i32 %lftr.wideiv518, %247
  br i1 %exitcond519, label %if.end1297.i, label %for.body1239.i

if.end1297.i:                                     ; preds = %for.body1239.i, %for.body1182.i, %for.cond1180.preheader.i, %for.cond1237.preheader.i
  %isum001157.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1208.i, %for.body1182.i ], [ %add1269.i, %for.body1239.i ]
  %isum011158.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1216.i, %for.body1182.i ], [ %add1277.i, %for.body1239.i ]
  %isum101159.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1224.i, %for.body1182.i ], [ %add1285.i, %for.body1239.i ]
  %isum111160.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1232.i, %for.body1182.i ], [ %add1293.i, %for.body1239.i ]
  %rsum001161.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1204.i, %for.body1182.i ], [ %add1265.i, %for.body1239.i ]
  %rsum011162.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1212.i, %for.body1182.i ], [ %add1273.i, %for.body1239.i ]
  %rsum101163.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1220.i, %for.body1182.i ], [ %add1281.i, %for.body1239.i ]
  %rsum111164.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1228.i, %for.body1182.i ], [ %add1289.i, %for.body1239.i ]
  %269 = load i32* %nrowY.i, align 4, !tbaa !3
  %270 = load i32* %nrowAT.i, align 4, !tbaa !3
  %cmp1298.i = icmp eq i32 %269, %270
  br i1 %cmp1298.i, label %if.then1299.i, label %if.else1328.i

if.then1299.i:                                    ; preds = %if.end1297.i
  %mul1300.i = shl nsw i32 %sub8513668.i, 1
  %add13013411.i = or i32 %mul1300.i, 1
  %idxprom1302.i = sext i32 %mul1300.i to i64
  %arrayidx1303.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1302.i
  %271 = load double* %arrayidx1303.i, align 8, !tbaa !4
  %sub1304.i = fsub double %271, %rsum001161.2.i
  store double %sub1304.i, double* %arrayidx1303.i, align 8, !tbaa !4
  %idxprom1305.i = sext i32 %add13013411.i to i64
  %arrayidx1306.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1305.i
  %272 = load double* %arrayidx1306.i, align 8, !tbaa !4
  %sub1307.i = fsub double %272, %isum001157.2.i
  store double %sub1307.i, double* %arrayidx1306.i, align 8, !tbaa !4
  %add.ptr849.sum3412.i = add i64 %idxprom1302.i, %idx.ext848.i
  %arrayidx1309.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3412.i
  %273 = load double* %arrayidx1309.i, align 8, !tbaa !4
  %sub1310.i = fsub double %273, %rsum011162.2.i
  store double %sub1310.i, double* %arrayidx1309.i, align 8, !tbaa !4
  %add.ptr849.sum3413.i = add i64 %idxprom1305.i, %idx.ext848.i
  %arrayidx1312.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3413.i
  %274 = load double* %arrayidx1312.i, align 8, !tbaa !4
  %sub1313.i = fsub double %274, %isum011158.2.i
  store double %sub1313.i, double* %arrayidx1312.i, align 8, !tbaa !4
  %add1314.i = add nsw i32 %mul1300.i, 2
  %add1315.i = add nsw i32 %add13013411.i, 2
  %idxprom1316.i = sext i32 %add1314.i to i64
  %arrayidx1317.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1316.i
  %275 = load double* %arrayidx1317.i, align 8, !tbaa !4
  %sub1318.i = fsub double %275, %rsum101163.2.i
  store double %sub1318.i, double* %arrayidx1317.i, align 8, !tbaa !4
  %idxprom1319.i = sext i32 %add1315.i to i64
  %arrayidx1320.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1319.i
  %276 = load double* %arrayidx1320.i, align 8, !tbaa !4
  %sub1321.i = fsub double %276, %isum101159.2.i
  store double %sub1321.i, double* %arrayidx1320.i, align 8, !tbaa !4
  %add.ptr849.sum3414.i = add i64 %idxprom1316.i, %idx.ext848.i
  %arrayidx1323.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3414.i
  %277 = load double* %arrayidx1323.i, align 8, !tbaa !4
  %sub1324.i = fsub double %277, %rsum111164.2.i
  store double %sub1324.i, double* %arrayidx1323.i, align 8, !tbaa !4
  %add.ptr849.sum3415.i = add i64 %idxprom1319.i, %idx.ext848.i
  %arrayidx1326.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3415.i
  %278 = load double* %arrayidx1326.i, align 8, !tbaa !4
  %sub1327.i = fsub double %278, %isum111160.2.i
  store double %sub1327.i, double* %arrayidx1326.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1328.i:                                    ; preds = %if.end1297.i
  %idxprom1329.i = sext i32 %sub8513668.i to i64
  %279 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx1330.i = getelementptr inbounds i32* %279, i64 %idxprom1329.i
  %280 = load i32* %arrayidx1330.i, align 4, !tbaa !3
  %mul1331.i = shl nsw i32 %280, 1
  %add13323405.i = or i32 %mul1331.i, 1
  %idxprom1333.i = sext i32 %mul1331.i to i64
  %arrayidx1334.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1333.i
  %281 = load double* %arrayidx1334.i, align 8, !tbaa !4
  %sub1335.i = fsub double %281, %rsum001161.2.i
  store double %sub1335.i, double* %arrayidx1334.i, align 8, !tbaa !4
  %idxprom1336.i = sext i32 %add13323405.i to i64
  %arrayidx1337.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1336.i
  %282 = load double* %arrayidx1337.i, align 8, !tbaa !4
  %sub1338.i = fsub double %282, %isum001157.2.i
  store double %sub1338.i, double* %arrayidx1337.i, align 8, !tbaa !4
  %add.ptr849.sum3406.i = add i64 %idxprom1333.i, %idx.ext848.i
  %arrayidx1340.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3406.i
  %283 = load double* %arrayidx1340.i, align 8, !tbaa !4
  %sub1341.i = fsub double %283, %rsum011162.2.i
  store double %sub1341.i, double* %arrayidx1340.i, align 8, !tbaa !4
  %add.ptr849.sum3407.i = add i64 %idxprom1336.i, %idx.ext848.i
  %arrayidx1343.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3407.i
  %284 = load double* %arrayidx1343.i, align 8, !tbaa !4
  %sub1344.i = fsub double %284, %isum011158.2.i
  store double %sub1344.i, double* %arrayidx1343.i, align 8, !tbaa !4
  %add1345.i = add nsw i32 %189, -1
  %idxprom1346.i = sext i32 %add1345.i to i64
  %arrayidx1347.i = getelementptr inbounds i32* %279, i64 %idxprom1346.i
  %285 = load i32* %arrayidx1347.i, align 4, !tbaa !3
  %mul1348.i = shl nsw i32 %285, 1
  %add13493408.i = or i32 %mul1348.i, 1
  %idxprom1350.i = sext i32 %mul1348.i to i64
  %arrayidx1351.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1350.i
  %286 = load double* %arrayidx1351.i, align 8, !tbaa !4
  %sub1352.i = fsub double %286, %rsum101163.2.i
  store double %sub1352.i, double* %arrayidx1351.i, align 8, !tbaa !4
  %idxprom1353.i = sext i32 %add13493408.i to i64
  %arrayidx1354.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1353.i
  %287 = load double* %arrayidx1354.i, align 8, !tbaa !4
  %sub1355.i = fsub double %287, %isum101159.2.i
  store double %sub1355.i, double* %arrayidx1354.i, align 8, !tbaa !4
  %add.ptr849.sum3409.i = add i64 %idxprom1350.i, %idx.ext848.i
  %arrayidx1357.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3409.i
  %288 = load double* %arrayidx1357.i, align 8, !tbaa !4
  %sub1358.i = fsub double %288, %rsum111164.2.i
  store double %sub1358.i, double* %arrayidx1357.i, align 8, !tbaa !4
  %add.ptr849.sum3410.i = add i64 %idxprom1353.i, %idx.ext848.i
  %arrayidx1360.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3410.i
  %289 = load double* %arrayidx1360.i, align 8, !tbaa !4
  %sub1361.i = fsub double %289, %isum111160.2.i
  store double %sub1361.i, double* %arrayidx1360.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1363.i:                                    ; preds = %for.end1149.i
  %sub1364.i = add nsw i32 %189, -1
  %cmp1365.i = icmp eq i32 %irowAT.1.lcssa.i, %sub1364.i
  br i1 %cmp1365.i, label %if.then1366.i, label %sw.epilog

if.then1366.i:                                    ; preds = %if.else1363.i
  %290 = load i32* %ncolAT.i, align 4, !tbaa !3
  %291 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp1383.i = icmp eq i32 %290, %291
  %cmp13863594.i = icmp sgt i32 %290, 0
  br i1 %cmp1383.i, label %for.cond1385.preheader.i, label %for.cond1422.preheader.i

for.cond1422.preheader.i:                         ; preds = %if.then1366.i
  br i1 %cmp13863594.i, label %for.body1424.lr.ph.i, label %if.end1462.i

for.body1424.lr.ph.i:                             ; preds = %for.cond1422.preheader.i
  %292 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body1424.i

for.cond1385.preheader.i:                         ; preds = %if.then1366.i
  br i1 %cmp13863594.i, label %for.body1387.i, label %if.end1462.i

for.body1387.i:                                   ; preds = %for.cond1385.preheader.i, %for.body1387.i
  %indvars.iv3950.i = phi i64 [ %indvars.iv.next3951.i, %for.body1387.i ], [ 0, %for.cond1385.preheader.i ]
  %rsum011372.03598.i = phi double [ %add1413.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %rsum001371.03597.i = phi double [ %add1405.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %isum011370.03596.i = phi double [ %add1417.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %isum001369.03595.i = phi double [ %add1409.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %293 = trunc i64 %indvars.iv3950.i to i32
  %mul1388.i = shl nsw i32 %293, 1
  %add13893402.i = or i32 %mul1388.i, 1
  %idxprom1390.i = sext i32 %mul1388.i to i64
  %arrayidx1391.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1390.i
  %294 = load double* %arrayidx1391.i, align 8, !tbaa !4
  %idxprom1392.i = sext i32 %add13893402.i to i64
  %arrayidx1393.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1392.i
  %295 = load double* %arrayidx1393.i, align 8, !tbaa !4
  %arrayidx1395.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1390.i
  %296 = load double* %arrayidx1395.i, align 8, !tbaa !4
  %arrayidx1397.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1392.i
  %297 = load double* %arrayidx1397.i, align 8, !tbaa !4
  %add.ptr846.sum3403.i = add i64 %idxprom1390.i, %idx.ext845.i
  %arrayidx1399.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3403.i
  %298 = load double* %arrayidx1399.i, align 8, !tbaa !4
  %add.ptr846.sum3404.i = add i64 %idxprom1392.i, %idx.ext845.i
  %arrayidx1401.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3404.i
  %299 = load double* %arrayidx1401.i, align 8, !tbaa !4
  %mul1402.i = fmul double %294, %296
  %mul1403.i = fmul double %295, %297
  %add1404.i = fadd double %mul1402.i, %mul1403.i
  %add1405.i = fadd double %rsum001371.03597.i, %add1404.i
  %mul1406.i = fmul double %294, %297
  %mul1407.i = fmul double %295, %296
  %sub1408.i = fsub double %mul1406.i, %mul1407.i
  %add1409.i = fadd double %isum001369.03595.i, %sub1408.i
  %mul1410.i = fmul double %294, %298
  %mul1411.i = fmul double %295, %299
  %add1412.i = fadd double %mul1410.i, %mul1411.i
  %add1413.i = fadd double %rsum011372.03598.i, %add1412.i
  %mul1414.i = fmul double %294, %299
  %mul1415.i = fmul double %295, %298
  %sub1416.i = fsub double %mul1414.i, %mul1415.i
  %add1417.i = fadd double %isum011370.03596.i, %sub1416.i
  %indvars.iv.next3951.i = add i64 %indvars.iv3950.i, 1
  %lftr.wideiv520 = trunc i64 %indvars.iv.next3951.i to i32
  %exitcond521 = icmp eq i32 %lftr.wideiv520, %290
  br i1 %exitcond521, label %if.end1462.i, label %for.body1387.i

for.body1424.i:                                   ; preds = %for.body1424.i, %for.body1424.lr.ph.i
  %indvars.iv3952.i = phi i64 [ 0, %for.body1424.lr.ph.i ], [ %indvars.iv.next3953.i, %for.body1424.i ]
  %rsum011372.13609.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1454.i, %for.body1424.i ]
  %rsum001371.13608.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1446.i, %for.body1424.i ]
  %isum011370.13607.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1458.i, %for.body1424.i ]
  %isum001369.13606.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1450.i, %for.body1424.i ]
  %300 = trunc i64 %indvars.iv3952.i to i32
  %mul1425.i = shl nsw i32 %300, 1
  %add14263399.i = or i32 %mul1425.i, 1
  %idxprom1427.i = sext i32 %mul1425.i to i64
  %arrayidx1428.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1427.i
  %301 = load double* %arrayidx1428.i, align 8, !tbaa !4
  %idxprom1429.i = sext i32 %add14263399.i to i64
  %arrayidx1430.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %idxprom1429.i
  %302 = load double* %arrayidx1430.i, align 8, !tbaa !4
  %arrayidx1432.i = getelementptr inbounds i32* %292, i64 %indvars.iv3952.i
  %303 = load i32* %arrayidx1432.i, align 4, !tbaa !3
  %mul1433.i = shl nsw i32 %303, 1
  %add14343400.i = or i32 %mul1433.i, 1
  %idxprom1435.i = sext i32 %mul1433.i to i64
  %arrayidx1436.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1435.i
  %304 = load double* %arrayidx1436.i, align 8, !tbaa !4
  %idxprom1437.i = sext i32 %add14343400.i to i64
  %arrayidx1438.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1437.i
  %305 = load double* %arrayidx1438.i, align 8, !tbaa !4
  %add.ptr846.sum.i = add i64 %idxprom1435.i, %idx.ext845.i
  %arrayidx1440.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum.i
  %306 = load double* %arrayidx1440.i, align 8, !tbaa !4
  %add.ptr846.sum3401.i = add i64 %idxprom1437.i, %idx.ext845.i
  %arrayidx1442.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr846.sum3401.i
  %307 = load double* %arrayidx1442.i, align 8, !tbaa !4
  %mul1443.i = fmul double %301, %304
  %mul1444.i = fmul double %302, %305
  %add1445.i = fadd double %mul1443.i, %mul1444.i
  %add1446.i = fadd double %rsum001371.13608.i, %add1445.i
  %mul1447.i = fmul double %301, %305
  %mul1448.i = fmul double %302, %304
  %sub1449.i = fsub double %mul1447.i, %mul1448.i
  %add1450.i = fadd double %isum001369.13606.i, %sub1449.i
  %mul1451.i = fmul double %301, %306
  %mul1452.i = fmul double %302, %307
  %add1453.i = fadd double %mul1451.i, %mul1452.i
  %add1454.i = fadd double %rsum011372.13609.i, %add1453.i
  %mul1455.i = fmul double %301, %307
  %mul1456.i = fmul double %302, %306
  %sub1457.i = fsub double %mul1455.i, %mul1456.i
  %add1458.i = fadd double %isum011370.13607.i, %sub1457.i
  %indvars.iv.next3953.i = add i64 %indvars.iv3952.i, 1
  %lftr.wideiv522 = trunc i64 %indvars.iv.next3953.i to i32
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %290
  br i1 %exitcond523, label %if.end1462.i, label %for.body1424.i

if.end1462.i:                                     ; preds = %for.body1424.i, %for.body1387.i, %for.cond1385.preheader.i, %for.cond1422.preheader.i
  %isum001369.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1409.i, %for.body1387.i ], [ %add1450.i, %for.body1424.i ]
  %isum011370.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1417.i, %for.body1387.i ], [ %add1458.i, %for.body1424.i ]
  %rsum001371.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1405.i, %for.body1387.i ], [ %add1446.i, %for.body1424.i ]
  %rsum011372.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1413.i, %for.body1387.i ], [ %add1454.i, %for.body1424.i ]
  %308 = load i32* %nrowY.i, align 4, !tbaa !3
  %309 = load i32* %nrowAT.i, align 4, !tbaa !3
  %cmp1463.i = icmp eq i32 %308, %309
  br i1 %cmp1463.i, label %if.then1464.i, label %if.else1479.i

if.then1464.i:                                    ; preds = %if.end1462.i
  %mul1465.i = shl nsw i32 %irowAT.1.lcssa.i, 1
  %add14663396.i = or i32 %mul1465.i, 1
  %idxprom1467.i = sext i32 %mul1465.i to i64
  %arrayidx1468.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1467.i
  %310 = load double* %arrayidx1468.i, align 8, !tbaa !4
  %sub1469.i = fsub double %310, %rsum001371.2.i
  store double %sub1469.i, double* %arrayidx1468.i, align 8, !tbaa !4
  %idxprom1470.i = sext i32 %add14663396.i to i64
  %arrayidx1471.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1470.i
  %311 = load double* %arrayidx1471.i, align 8, !tbaa !4
  %sub1472.i = fsub double %311, %isum001369.2.i
  store double %sub1472.i, double* %arrayidx1471.i, align 8, !tbaa !4
  %add.ptr849.sum3397.i = add i64 %idxprom1467.i, %idx.ext848.i
  %arrayidx1474.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3397.i
  %312 = load double* %arrayidx1474.i, align 8, !tbaa !4
  %sub1475.i = fsub double %312, %rsum011372.2.i
  store double %sub1475.i, double* %arrayidx1474.i, align 8, !tbaa !4
  %add.ptr849.sum3398.i = add i64 %idxprom1470.i, %idx.ext848.i
  %arrayidx1477.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3398.i
  %313 = load double* %arrayidx1477.i, align 8, !tbaa !4
  %sub1478.i = fsub double %313, %isum011370.2.i
  store double %sub1478.i, double* %arrayidx1477.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1479.i:                                    ; preds = %if.end1462.i
  %idxprom1480.i = sext i32 %irowAT.1.lcssa.i to i64
  %314 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx1481.i = getelementptr inbounds i32* %314, i64 %idxprom1480.i
  %315 = load i32* %arrayidx1481.i, align 4, !tbaa !3
  %mul1482.i = shl nsw i32 %315, 1
  %add14833394.i = or i32 %mul1482.i, 1
  %idxprom1484.i = sext i32 %mul1482.i to i64
  %arrayidx1485.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1484.i
  %316 = load double* %arrayidx1485.i, align 8, !tbaa !4
  %sub1486.i = fsub double %316, %rsum001371.2.i
  store double %sub1486.i, double* %arrayidx1485.i, align 8, !tbaa !4
  %idxprom1487.i = sext i32 %add14833394.i to i64
  %arrayidx1488.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1487.i
  %317 = load double* %arrayidx1488.i, align 8, !tbaa !4
  %sub1489.i = fsub double %317, %isum001369.2.i
  store double %sub1489.i, double* %arrayidx1488.i, align 8, !tbaa !4
  %add.ptr849.sum.i = add i64 %idxprom1484.i, %idx.ext848.i
  %arrayidx1491.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum.i
  %318 = load double* %arrayidx1491.i, align 8, !tbaa !4
  %sub1492.i = fsub double %318, %rsum011372.2.i
  store double %sub1492.i, double* %arrayidx1491.i, align 8, !tbaa !4
  %add.ptr849.sum3395.i = add i64 %idxprom1487.i, %idx.ext848.i
  %arrayidx1494.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr849.sum3395.i
  %319 = load double* %arrayidx1494.i, align 8, !tbaa !4
  %sub1495.i = fsub double %319, %isum011370.2.i
  store double %sub1495.i, double* %arrayidx1494.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1499.i:                                    ; preds = %for.end840.i
  %sub1500.i = add nsw i32 %27, -1
  %cmp1501.i = icmp eq i32 %jcolX.0.lcssa.i, %sub1500.i
  br i1 %cmp1501.i, label %if.then1502.i, label %sw.epilog

if.then1502.i:                                    ; preds = %if.else1499.i
  %320 = load double** %entA.i, align 8, !tbaa !0
  %321 = load i32* %nrowAT.i, align 4, !tbaa !3
  %sub15043743.i = add nsw i32 %321, -2
  %cmp15053744.i = icmp sgt i32 %sub15043743.i, 0
  br i1 %cmp15053744.i, label %for.body1506.lr.ph.i, label %for.end1702.i

for.body1506.lr.ph.i:                             ; preds = %if.then1502.i
  %322 = load i32* %ncolAT.i, align 4, !tbaa !3
  %mul1527.i = shl nsw i32 %322, 1
  %idx.ext1528.i = sext i32 %mul1527.i to i64
  %add.ptr1529.sum.i = shl nsw i64 %idx.ext1528.i, 1
  %323 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp1533.i = icmp eq i32 %322, %323
  %324 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp1637.i = icmp eq i32 %324, %321
  %add.ptr1532.sum.i = add i64 %add.ptr1529.sum.i, %idx.ext1528.i
  %325 = load i32** %rowindAT.i, align 8, !tbaa !0
  %cmp15853713.i = icmp sgt i32 %322, 0
  %326 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body1506.i

for.body1506.i:                                   ; preds = %if.end1696.i, %for.body1506.lr.ph.i
  %indvars.iv3976.i = phi i64 [ 0, %for.body1506.lr.ph.i ], [ %indvars.iv.next3977.i, %if.end1696.i ]
  %rowAT0.23746.i = phi double* [ %320, %for.body1506.lr.ph.i ], [ %add.ptr1699.i, %if.end1696.i ]
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
  %327 = trunc i64 %indvars.iv3972.i to i32
  %mul1538.i = shl nsw i32 %327, 1
  %add15393389.i = or i32 %mul1538.i, 1
  %idxprom1540.i = sext i32 %mul1538.i to i64
  %arrayidx1541.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1540.i
  %328 = load double* %arrayidx1541.i, align 8, !tbaa !4
  %idxprom1542.i = sext i32 %add15393389.i to i64
  %arrayidx1543.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1542.i
  %329 = load double* %arrayidx1543.i, align 8, !tbaa !4
  %add.ptr1529.sum3390.i = add i64 %idxprom1540.i, %idx.ext1528.i
  %arrayidx1545.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3390.i
  %330 = load double* %arrayidx1545.i, align 8, !tbaa !4
  %add.ptr1529.sum3391.i = add i64 %idxprom1542.i, %idx.ext1528.i
  %arrayidx1547.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3391.i
  %331 = load double* %arrayidx1547.i, align 8, !tbaa !4
  %add.ptr1532.sum3392.i = add i64 %idxprom1540.i, %add.ptr1529.sum.i
  %arrayidx1549.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3392.i
  %332 = load double* %arrayidx1549.i, align 8, !tbaa !4
  %add.ptr1532.sum3393.i = add i64 %idxprom1542.i, %add.ptr1529.sum.i
  %arrayidx1551.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3393.i
  %333 = load double* %arrayidx1551.i, align 8, !tbaa !4
  %arrayidx1553.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1540.i
  %334 = load double* %arrayidx1553.i, align 8, !tbaa !4
  %arrayidx1555.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1542.i
  %335 = load double* %arrayidx1555.i, align 8, !tbaa !4
  %mul1556.i = fmul double %328, %334
  %mul1557.i = fmul double %329, %335
  %add1558.i = fadd double %mul1556.i, %mul1557.i
  %add1559.i = fadd double %rsum001516.03732.i, %add1558.i
  %mul1560.i = fmul double %328, %335
  %mul1561.i = fmul double %329, %334
  %sub1562.i = fsub double %mul1560.i, %mul1561.i
  %add1563.i = fadd double %isum001513.03729.i, %sub1562.i
  %mul1564.i = fmul double %330, %334
  %mul1565.i = fmul double %331, %335
  %add1566.i = fadd double %mul1564.i, %mul1565.i
  %add1567.i = fadd double %rsum101517.03733.i, %add1566.i
  %mul1568.i = fmul double %330, %335
  %mul1569.i = fmul double %331, %334
  %sub1570.i = fsub double %mul1568.i, %mul1569.i
  %add1571.i = fadd double %isum101514.03730.i, %sub1570.i
  %mul1572.i = fmul double %332, %334
  %mul1573.i = fmul double %333, %335
  %add1574.i = fadd double %mul1572.i, %mul1573.i
  %add1575.i = fadd double %rsum201518.03734.i, %add1574.i
  %mul1576.i = fmul double %332, %335
  %mul1577.i = fmul double %333, %334
  %sub1578.i = fsub double %mul1576.i, %mul1577.i
  %add1579.i = fadd double %isum201515.03731.i, %sub1578.i
  %indvars.iv.next3973.i = add i64 %indvars.iv3972.i, 1
  %lftr.wideiv538 = trunc i64 %indvars.iv.next3973.i to i32
  %exitcond539 = icmp eq i32 %lftr.wideiv538, %322
  br i1 %exitcond539, label %if.end1636.i, label %for.body1537.i

for.body1586.i:                                   ; preds = %for.cond1584.preheader.i, %for.body1586.i
  %indvars.iv3970.i = phi i64 [ %indvars.iv.next3971.i, %for.body1586.i ], [ 0, %for.cond1584.preheader.i ]
  %rsum201518.13719.i = phi double [ %add1628.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %rsum101517.13718.i = phi double [ %add1620.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %rsum001516.13717.i = phi double [ %add1612.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %isum201515.13716.i = phi double [ %add1632.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %isum101514.13715.i = phi double [ %add1624.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %isum001513.13714.i = phi double [ %add1616.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %336 = trunc i64 %indvars.iv3970.i to i32
  %mul1587.i = shl nsw i32 %336, 1
  %add15883383.i = or i32 %mul1587.i, 1
  %idxprom1589.i = sext i32 %mul1587.i to i64
  %arrayidx1590.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1589.i
  %337 = load double* %arrayidx1590.i, align 8, !tbaa !4
  %idxprom1591.i = sext i32 %add15883383.i to i64
  %arrayidx1592.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1591.i
  %338 = load double* %arrayidx1592.i, align 8, !tbaa !4
  %add.ptr1529.sum3384.i = add i64 %idxprom1589.i, %idx.ext1528.i
  %arrayidx1594.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3384.i
  %339 = load double* %arrayidx1594.i, align 8, !tbaa !4
  %add.ptr1529.sum3385.i = add i64 %idxprom1591.i, %idx.ext1528.i
  %arrayidx1596.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3385.i
  %340 = load double* %arrayidx1596.i, align 8, !tbaa !4
  %add.ptr1532.sum3386.i = add i64 %idxprom1589.i, %add.ptr1529.sum.i
  %arrayidx1598.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3386.i
  %341 = load double* %arrayidx1598.i, align 8, !tbaa !4
  %add.ptr1532.sum3387.i = add i64 %idxprom1591.i, %add.ptr1529.sum.i
  %arrayidx1600.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3387.i
  %342 = load double* %arrayidx1600.i, align 8, !tbaa !4
  %arrayidx1602.i = getelementptr inbounds i32* %326, i64 %indvars.iv3970.i
  %343 = load i32* %arrayidx1602.i, align 4, !tbaa !3
  %mul1603.i = shl nsw i32 %343, 1
  %add16043388.i = or i32 %mul1603.i, 1
  %idxprom1605.i = sext i32 %mul1603.i to i64
  %arrayidx1606.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1605.i
  %344 = load double* %arrayidx1606.i, align 8, !tbaa !4
  %idxprom1607.i = sext i32 %add16043388.i to i64
  %arrayidx1608.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1607.i
  %345 = load double* %arrayidx1608.i, align 8, !tbaa !4
  %mul1609.i = fmul double %337, %344
  %mul1610.i = fmul double %338, %345
  %add1611.i = fadd double %mul1609.i, %mul1610.i
  %add1612.i = fadd double %rsum001516.13717.i, %add1611.i
  %mul1613.i = fmul double %337, %345
  %mul1614.i = fmul double %338, %344
  %sub1615.i = fsub double %mul1613.i, %mul1614.i
  %add1616.i = fadd double %isum001513.13714.i, %sub1615.i
  %mul1617.i = fmul double %339, %344
  %mul1618.i = fmul double %340, %345
  %add1619.i = fadd double %mul1617.i, %mul1618.i
  %add1620.i = fadd double %rsum101517.13718.i, %add1619.i
  %mul1621.i = fmul double %339, %345
  %mul1622.i = fmul double %340, %344
  %sub1623.i = fsub double %mul1621.i, %mul1622.i
  %add1624.i = fadd double %isum101514.13715.i, %sub1623.i
  %mul1625.i = fmul double %341, %344
  %mul1626.i = fmul double %342, %345
  %add1627.i = fadd double %mul1625.i, %mul1626.i
  %add1628.i = fadd double %rsum201518.13719.i, %add1627.i
  %mul1629.i = fmul double %341, %345
  %mul1630.i = fmul double %342, %344
  %sub1631.i = fsub double %mul1629.i, %mul1630.i
  %add1632.i = fadd double %isum201515.13716.i, %sub1631.i
  %indvars.iv.next3971.i = add i64 %indvars.iv3970.i, 1
  %lftr.wideiv536 = trunc i64 %indvars.iv.next3971.i to i32
  %exitcond537 = icmp eq i32 %lftr.wideiv536, %322
  br i1 %exitcond537, label %if.end1636.i, label %for.body1586.i

if.end1636.i:                                     ; preds = %for.body1537.i, %for.body1586.i, %for.cond1584.preheader.i, %for.cond1535.preheader.i
  %isum001513.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1616.i, %for.body1586.i ], [ %add1563.i, %for.body1537.i ]
  %isum101514.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1624.i, %for.body1586.i ], [ %add1571.i, %for.body1537.i ]
  %isum201515.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1632.i, %for.body1586.i ], [ %add1579.i, %for.body1537.i ]
  %rsum001516.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1612.i, %for.body1586.i ], [ %add1559.i, %for.body1537.i ]
  %rsum101517.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1620.i, %for.body1586.i ], [ %add1567.i, %for.body1537.i ]
  %rsum201518.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1628.i, %for.body1586.i ], [ %add1575.i, %for.body1537.i ]
  br i1 %cmp1637.i, label %if.then1638.i, label %if.else1663.i

if.then1638.i:                                    ; preds = %if.end1636.i
  %346 = trunc i64 %indvars.iv3976.i to i32
  %mul1639.i = shl nsw i32 %346, 1
  %add16403382.i = or i32 %mul1639.i, 1
  %idxprom1641.i = sext i32 %mul1639.i to i64
  %arrayidx1642.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1641.i
  %347 = load double* %arrayidx1642.i, align 8, !tbaa !4
  %sub1643.i = fsub double %347, %rsum001516.2.i
  store double %sub1643.i, double* %arrayidx1642.i, align 8, !tbaa !4
  %idxprom1644.i = sext i32 %add16403382.i to i64
  %arrayidx1645.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1644.i
  %348 = load double* %arrayidx1645.i, align 8, !tbaa !4
  %sub1646.i = fsub double %348, %isum001513.2.i
  store double %sub1646.i, double* %arrayidx1645.i, align 8, !tbaa !4
  %add1647.i = add nsw i32 %mul1639.i, 2
  %add1648.i = add nsw i32 %add16403382.i, 2
  %idxprom1649.i = sext i32 %add1647.i to i64
  %arrayidx1650.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1649.i
  %349 = load double* %arrayidx1650.i, align 8, !tbaa !4
  %sub1651.i = fsub double %349, %rsum101517.2.i
  store double %sub1651.i, double* %arrayidx1650.i, align 8, !tbaa !4
  %idxprom1652.i = sext i32 %add1648.i to i64
  %arrayidx1653.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1652.i
  %350 = load double* %arrayidx1653.i, align 8, !tbaa !4
  %sub1654.i = fsub double %350, %isum101514.2.i
  store double %sub1654.i, double* %arrayidx1653.i, align 8, !tbaa !4
  %add1655.i = add nsw i32 %mul1639.i, 4
  %add1656.i = add nsw i32 %add16403382.i, 4
  %idxprom1657.i = sext i32 %add1655.i to i64
  %arrayidx1658.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1657.i
  %351 = load double* %arrayidx1658.i, align 8, !tbaa !4
  %sub1659.i = fsub double %351, %rsum201518.2.i
  store double %sub1659.i, double* %arrayidx1658.i, align 8, !tbaa !4
  %idxprom1660.i = sext i32 %add1656.i to i64
  %arrayidx1661.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1660.i
  %352 = load double* %arrayidx1661.i, align 8, !tbaa !4
  %sub1662.i = fsub double %352, %isum201515.2.i
  store double %sub1662.i, double* %arrayidx1661.i, align 8, !tbaa !4
  br label %if.end1696.i

if.else1663.i:                                    ; preds = %if.end1636.i
  %arrayidx1665.i = getelementptr inbounds i32* %325, i64 %indvars.iv3976.i
  %353 = load i32* %arrayidx1665.i, align 4, !tbaa !3
  %mul1666.i = shl nsw i32 %353, 1
  %add16673379.i = or i32 %mul1666.i, 1
  %idxprom1668.i = sext i32 %mul1666.i to i64
  %arrayidx1669.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1668.i
  %354 = load double* %arrayidx1669.i, align 8, !tbaa !4
  %sub1670.i = fsub double %354, %rsum001516.2.i
  store double %sub1670.i, double* %arrayidx1669.i, align 8, !tbaa !4
  %idxprom1671.i = sext i32 %add16673379.i to i64
  %arrayidx1672.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1671.i
  %355 = load double* %arrayidx1672.i, align 8, !tbaa !4
  %sub1673.i = fsub double %355, %isum001513.2.i
  store double %sub1673.i, double* %arrayidx1672.i, align 8, !tbaa !4
  %356 = add nsw i64 %indvars.iv3976.i, 1
  %arrayidx1676.i = getelementptr inbounds i32* %325, i64 %356
  %357 = load i32* %arrayidx1676.i, align 4, !tbaa !3
  %mul1677.i = shl nsw i32 %357, 1
  %add16783380.i = or i32 %mul1677.i, 1
  %idxprom1679.i = sext i32 %mul1677.i to i64
  %arrayidx1680.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1679.i
  %358 = load double* %arrayidx1680.i, align 8, !tbaa !4
  %sub1681.i = fsub double %358, %rsum101517.2.i
  store double %sub1681.i, double* %arrayidx1680.i, align 8, !tbaa !4
  %idxprom1682.i = sext i32 %add16783380.i to i64
  %arrayidx1683.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1682.i
  %359 = load double* %arrayidx1683.i, align 8, !tbaa !4
  %sub1684.i = fsub double %359, %isum101514.2.i
  store double %sub1684.i, double* %arrayidx1683.i, align 8, !tbaa !4
  %360 = add nsw i64 %indvars.iv3976.i, 2
  %arrayidx1687.i = getelementptr inbounds i32* %325, i64 %360
  %361 = load i32* %arrayidx1687.i, align 4, !tbaa !3
  %mul1688.i = shl nsw i32 %361, 1
  %add16893381.i = or i32 %mul1688.i, 1
  %idxprom1690.i = sext i32 %mul1688.i to i64
  %arrayidx1691.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1690.i
  %362 = load double* %arrayidx1691.i, align 8, !tbaa !4
  %sub1692.i = fsub double %362, %rsum201518.2.i
  store double %sub1692.i, double* %arrayidx1691.i, align 8, !tbaa !4
  %idxprom1693.i = sext i32 %add16893381.i to i64
  %arrayidx1694.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1693.i
  %363 = load double* %arrayidx1694.i, align 8, !tbaa !4
  %sub1695.i = fsub double %363, %isum201515.2.i
  store double %sub1695.i, double* %arrayidx1694.i, align 8, !tbaa !4
  br label %if.end1696.i

if.end1696.i:                                     ; preds = %if.else1663.i, %if.then1638.i
  %add.ptr1699.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum.i
  %indvars.iv.next3977.i = add i64 %indvars.iv3976.i, 3
  %add1701.i = add nsw i32 %irowAT.23745.i, 3
  %364 = trunc i64 %indvars.iv.next3977.i to i32
  %cmp1505.i = icmp slt i32 %364, %sub15043743.i
  br i1 %cmp1505.i, label %for.body1506.i, label %for.end1702.i

for.end1702.i:                                    ; preds = %if.end1696.i, %if.then1502.i
  %rowAT0.2.lcssa.i = phi double* [ %320, %if.then1502.i ], [ %add.ptr1699.i, %if.end1696.i ]
  %irowAT.2.lcssa.i = phi i32 [ 0, %if.then1502.i ], [ %add1701.i, %if.end1696.i ]
  %cmp1704.i = icmp eq i32 %irowAT.2.lcssa.i, %sub15043743.i
  br i1 %cmp1704.i, label %if.then1705.i, label %if.else1846.i

if.then1705.i:                                    ; preds = %for.end1702.i
  %365 = load i32* %ncolAT.i, align 4, !tbaa !3
  %mul1722.i = shl nsw i32 %365, 1
  %idx.ext1723.i = sext i32 %mul1722.i to i64
  %366 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp1725.i = icmp eq i32 %365, %366
  %cmp17283679.i = icmp sgt i32 %365, 0
  br i1 %cmp1725.i, label %for.cond1727.preheader.i, label %for.cond1764.preheader.i

for.cond1764.preheader.i:                         ; preds = %if.then1705.i
  br i1 %cmp17283679.i, label %for.body1766.lr.ph.i, label %if.end1804.i

for.body1766.lr.ph.i:                             ; preds = %for.cond1764.preheader.i
  %367 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body1766.i

for.cond1727.preheader.i:                         ; preds = %if.then1705.i
  br i1 %cmp17283679.i, label %for.body1729.i, label %if.end1804.i

for.body1729.i:                                   ; preds = %for.cond1727.preheader.i, %for.body1729.i
  %indvars.iv3962.i = phi i64 [ %indvars.iv.next3963.i, %for.body1729.i ], [ 0, %for.cond1727.preheader.i ]
  %rsum101713.03684.i = phi double [ %add1755.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %rsum001712.03683.i = phi double [ %add1747.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %isum101711.03682.i = phi double [ %add1759.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %isum001710.03681.i = phi double [ %add1751.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %368 = trunc i64 %indvars.iv3962.i to i32
  %mul1730.i = shl nsw i32 %368, 1
  %add17313376.i = or i32 %mul1730.i, 1
  %idxprom1732.i = sext i32 %mul1730.i to i64
  %arrayidx1733.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1732.i
  %369 = load double* %arrayidx1733.i, align 8, !tbaa !4
  %idxprom1734.i = sext i32 %add17313376.i to i64
  %arrayidx1735.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1734.i
  %370 = load double* %arrayidx1735.i, align 8, !tbaa !4
  %add.ptr1724.sum3377.i = add i64 %idxprom1732.i, %idx.ext1723.i
  %arrayidx1737.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %add.ptr1724.sum3377.i
  %371 = load double* %arrayidx1737.i, align 8, !tbaa !4
  %add.ptr1724.sum3378.i = add i64 %idxprom1734.i, %idx.ext1723.i
  %arrayidx1739.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %add.ptr1724.sum3378.i
  %372 = load double* %arrayidx1739.i, align 8, !tbaa !4
  %arrayidx1741.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1732.i
  %373 = load double* %arrayidx1741.i, align 8, !tbaa !4
  %arrayidx1743.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1734.i
  %374 = load double* %arrayidx1743.i, align 8, !tbaa !4
  %mul1744.i = fmul double %369, %373
  %mul1745.i = fmul double %370, %374
  %add1746.i = fadd double %mul1744.i, %mul1745.i
  %add1747.i = fadd double %rsum001712.03683.i, %add1746.i
  %mul1748.i = fmul double %369, %374
  %mul1749.i = fmul double %370, %373
  %sub1750.i = fsub double %mul1748.i, %mul1749.i
  %add1751.i = fadd double %isum001710.03681.i, %sub1750.i
  %mul1752.i = fmul double %371, %373
  %mul1753.i = fmul double %372, %374
  %add1754.i = fadd double %mul1752.i, %mul1753.i
  %add1755.i = fadd double %rsum101713.03684.i, %add1754.i
  %mul1756.i = fmul double %371, %374
  %mul1757.i = fmul double %372, %373
  %sub1758.i = fsub double %mul1756.i, %mul1757.i
  %add1759.i = fadd double %isum101711.03682.i, %sub1758.i
  %indvars.iv.next3963.i = add i64 %indvars.iv3962.i, 1
  %lftr.wideiv528 = trunc i64 %indvars.iv.next3963.i to i32
  %exitcond529 = icmp eq i32 %lftr.wideiv528, %365
  br i1 %exitcond529, label %if.end1804.i, label %for.body1729.i

for.body1766.i:                                   ; preds = %for.body1766.i, %for.body1766.lr.ph.i
  %indvars.iv3964.i = phi i64 [ 0, %for.body1766.lr.ph.i ], [ %indvars.iv.next3965.i, %for.body1766.i ]
  %rsum101713.13695.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1796.i, %for.body1766.i ]
  %rsum001712.13694.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1788.i, %for.body1766.i ]
  %isum101711.13693.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1800.i, %for.body1766.i ]
  %isum001710.13692.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1792.i, %for.body1766.i ]
  %375 = trunc i64 %indvars.iv3964.i to i32
  %mul1767.i = shl nsw i32 %375, 1
  %add17683373.i = or i32 %mul1767.i, 1
  %idxprom1769.i = sext i32 %mul1767.i to i64
  %arrayidx1770.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1769.i
  %376 = load double* %arrayidx1770.i, align 8, !tbaa !4
  %idxprom1771.i = sext i32 %add17683373.i to i64
  %arrayidx1772.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1771.i
  %377 = load double* %arrayidx1772.i, align 8, !tbaa !4
  %add.ptr1724.sum.i = add i64 %idxprom1769.i, %idx.ext1723.i
  %arrayidx1774.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %add.ptr1724.sum.i
  %378 = load double* %arrayidx1774.i, align 8, !tbaa !4
  %add.ptr1724.sum3374.i = add i64 %idxprom1771.i, %idx.ext1723.i
  %arrayidx1776.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %add.ptr1724.sum3374.i
  %379 = load double* %arrayidx1776.i, align 8, !tbaa !4
  %arrayidx1778.i = getelementptr inbounds i32* %367, i64 %indvars.iv3964.i
  %380 = load i32* %arrayidx1778.i, align 4, !tbaa !3
  %mul1779.i = shl nsw i32 %380, 1
  %add17803375.i = or i32 %mul1779.i, 1
  %idxprom1781.i = sext i32 %mul1779.i to i64
  %arrayidx1782.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1781.i
  %381 = load double* %arrayidx1782.i, align 8, !tbaa !4
  %idxprom1783.i = sext i32 %add17803375.i to i64
  %arrayidx1784.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1783.i
  %382 = load double* %arrayidx1784.i, align 8, !tbaa !4
  %mul1785.i = fmul double %376, %381
  %mul1786.i = fmul double %377, %382
  %add1787.i = fadd double %mul1785.i, %mul1786.i
  %add1788.i = fadd double %rsum001712.13694.i, %add1787.i
  %mul1789.i = fmul double %376, %382
  %mul1790.i = fmul double %377, %381
  %sub1791.i = fsub double %mul1789.i, %mul1790.i
  %add1792.i = fadd double %isum001710.13692.i, %sub1791.i
  %mul1793.i = fmul double %378, %381
  %mul1794.i = fmul double %379, %382
  %add1795.i = fadd double %mul1793.i, %mul1794.i
  %add1796.i = fadd double %rsum101713.13695.i, %add1795.i
  %mul1797.i = fmul double %378, %382
  %mul1798.i = fmul double %379, %381
  %sub1799.i = fsub double %mul1797.i, %mul1798.i
  %add1800.i = fadd double %isum101711.13693.i, %sub1799.i
  %indvars.iv.next3965.i = add i64 %indvars.iv3964.i, 1
  %lftr.wideiv530 = trunc i64 %indvars.iv.next3965.i to i32
  %exitcond531 = icmp eq i32 %lftr.wideiv530, %365
  br i1 %exitcond531, label %if.end1804.i, label %for.body1766.i

if.end1804.i:                                     ; preds = %for.body1766.i, %for.body1729.i, %for.cond1727.preheader.i, %for.cond1764.preheader.i
  %isum001710.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1751.i, %for.body1729.i ], [ %add1792.i, %for.body1766.i ]
  %isum101711.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1759.i, %for.body1729.i ], [ %add1800.i, %for.body1766.i ]
  %rsum001712.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1747.i, %for.body1729.i ], [ %add1788.i, %for.body1766.i ]
  %rsum101713.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1755.i, %for.body1729.i ], [ %add1796.i, %for.body1766.i ]
  %383 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp1805.i = icmp eq i32 %383, %321
  br i1 %cmp1805.i, label %if.then1806.i, label %if.else1823.i

if.then1806.i:                                    ; preds = %if.end1804.i
  %mul1807.i = shl nsw i32 %sub15043743.i, 1
  %add18083372.i = or i32 %mul1807.i, 1
  %idxprom1809.i = sext i32 %mul1807.i to i64
  %arrayidx1810.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1809.i
  %384 = load double* %arrayidx1810.i, align 8, !tbaa !4
  %sub1811.i = fsub double %384, %rsum001712.2.i
  store double %sub1811.i, double* %arrayidx1810.i, align 8, !tbaa !4
  %idxprom1812.i = sext i32 %add18083372.i to i64
  %arrayidx1813.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1812.i
  %385 = load double* %arrayidx1813.i, align 8, !tbaa !4
  %sub1814.i = fsub double %385, %isum001710.2.i
  store double %sub1814.i, double* %arrayidx1813.i, align 8, !tbaa !4
  %add1815.i = add nsw i32 %mul1807.i, 2
  %add1816.i = add nsw i32 %add18083372.i, 2
  %idxprom1817.i = sext i32 %add1815.i to i64
  %arrayidx1818.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1817.i
  %386 = load double* %arrayidx1818.i, align 8, !tbaa !4
  %sub1819.i = fsub double %386, %rsum101713.2.i
  store double %sub1819.i, double* %arrayidx1818.i, align 8, !tbaa !4
  %idxprom1820.i = sext i32 %add1816.i to i64
  %arrayidx1821.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1820.i
  %387 = load double* %arrayidx1821.i, align 8, !tbaa !4
  %sub1822.i = fsub double %387, %isum101711.2.i
  store double %sub1822.i, double* %arrayidx1821.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1823.i:                                    ; preds = %if.end1804.i
  %idxprom1824.i = sext i32 %sub15043743.i to i64
  %388 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx1825.i = getelementptr inbounds i32* %388, i64 %idxprom1824.i
  %389 = load i32* %arrayidx1825.i, align 4, !tbaa !3
  %mul1826.i = shl nsw i32 %389, 1
  %add18273370.i = or i32 %mul1826.i, 1
  %idxprom1828.i = sext i32 %mul1826.i to i64
  %arrayidx1829.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1828.i
  %390 = load double* %arrayidx1829.i, align 8, !tbaa !4
  %sub1830.i = fsub double %390, %rsum001712.2.i
  store double %sub1830.i, double* %arrayidx1829.i, align 8, !tbaa !4
  %idxprom1831.i = sext i32 %add18273370.i to i64
  %arrayidx1832.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1831.i
  %391 = load double* %arrayidx1832.i, align 8, !tbaa !4
  %sub1833.i = fsub double %391, %isum001710.2.i
  store double %sub1833.i, double* %arrayidx1832.i, align 8, !tbaa !4
  %add1834.i = add nsw i32 %321, -1
  %idxprom1835.i = sext i32 %add1834.i to i64
  %arrayidx1836.i = getelementptr inbounds i32* %388, i64 %idxprom1835.i
  %392 = load i32* %arrayidx1836.i, align 4, !tbaa !3
  %mul1837.i = shl nsw i32 %392, 1
  %add18383371.i = or i32 %mul1837.i, 1
  %idxprom1839.i = sext i32 %mul1837.i to i64
  %arrayidx1840.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1839.i
  %393 = load double* %arrayidx1840.i, align 8, !tbaa !4
  %sub1841.i = fsub double %393, %rsum101713.2.i
  store double %sub1841.i, double* %arrayidx1840.i, align 8, !tbaa !4
  %idxprom1842.i = sext i32 %add18383371.i to i64
  %arrayidx1843.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1842.i
  %394 = load double* %arrayidx1843.i, align 8, !tbaa !4
  %sub1844.i = fsub double %394, %isum101711.2.i
  store double %sub1844.i, double* %arrayidx1843.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1846.i:                                    ; preds = %for.end1702.i
  %sub1847.i = add nsw i32 %321, -1
  %cmp1848.i = icmp eq i32 %irowAT.2.lcssa.i, %sub1847.i
  br i1 %cmp1848.i, label %if.then1849.i, label %sw.epilog

if.then1849.i:                                    ; preds = %if.else1846.i
  %395 = load i32* %ncolAT.i, align 4, !tbaa !3
  %396 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp1862.i = icmp eq i32 %395, %396
  %cmp18653700.i = icmp sgt i32 %395, 0
  br i1 %cmp1862.i, label %for.cond1864.preheader.i, label %for.cond1889.preheader.i

for.cond1889.preheader.i:                         ; preds = %if.then1849.i
  br i1 %cmp18653700.i, label %for.body1891.lr.ph.i, label %if.end1917.i

for.body1891.lr.ph.i:                             ; preds = %for.cond1889.preheader.i
  %397 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body1891.i

for.cond1864.preheader.i:                         ; preds = %if.then1849.i
  br i1 %cmp18653700.i, label %for.body1866.i, label %if.end1917.i

for.body1866.i:                                   ; preds = %for.cond1864.preheader.i, %for.body1866.i
  %indvars.iv3966.i = phi i64 [ %indvars.iv.next3967.i, %for.body1866.i ], [ 0, %for.cond1864.preheader.i ]
  %rsum001853.03703.i = phi double [ %add1880.i, %for.body1866.i ], [ 0.000000e+00, %for.cond1864.preheader.i ]
  %isum001852.03702.i = phi double [ %add1884.i, %for.body1866.i ], [ 0.000000e+00, %for.cond1864.preheader.i ]
  %398 = trunc i64 %indvars.iv3966.i to i32
  %mul1867.i = shl nsw i32 %398, 1
  %add18683369.i = or i32 %mul1867.i, 1
  %idxprom1869.i = sext i32 %mul1867.i to i64
  %arrayidx1870.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1869.i
  %399 = load double* %arrayidx1870.i, align 8, !tbaa !4
  %idxprom1871.i = sext i32 %add18683369.i to i64
  %arrayidx1872.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1871.i
  %400 = load double* %arrayidx1872.i, align 8, !tbaa !4
  %arrayidx1874.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1869.i
  %401 = load double* %arrayidx1874.i, align 8, !tbaa !4
  %arrayidx1876.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1871.i
  %402 = load double* %arrayidx1876.i, align 8, !tbaa !4
  %mul1877.i = fmul double %399, %401
  %mul1878.i = fmul double %400, %402
  %add1879.i = fadd double %mul1877.i, %mul1878.i
  %add1880.i = fadd double %rsum001853.03703.i, %add1879.i
  %mul1881.i = fmul double %399, %402
  %mul1882.i = fmul double %400, %401
  %sub1883.i = fsub double %mul1881.i, %mul1882.i
  %add1884.i = fadd double %isum001852.03702.i, %sub1883.i
  %indvars.iv.next3967.i = add i64 %indvars.iv3966.i, 1
  %lftr.wideiv532 = trunc i64 %indvars.iv.next3967.i to i32
  %exitcond533 = icmp eq i32 %lftr.wideiv532, %395
  br i1 %exitcond533, label %if.end1917.i, label %for.body1866.i

for.body1891.i:                                   ; preds = %for.body1891.i, %for.body1891.lr.ph.i
  %indvars.iv3968.i = phi i64 [ 0, %for.body1891.lr.ph.i ], [ %indvars.iv.next3969.i, %for.body1891.i ]
  %rsum001853.13710.i = phi double [ 0.000000e+00, %for.body1891.lr.ph.i ], [ %add1909.i, %for.body1891.i ]
  %isum001852.13709.i = phi double [ 0.000000e+00, %for.body1891.lr.ph.i ], [ %add1913.i, %for.body1891.i ]
  %403 = trunc i64 %indvars.iv3968.i to i32
  %mul1892.i = shl nsw i32 %403, 1
  %add18933367.i = or i32 %mul1892.i, 1
  %idxprom1894.i = sext i32 %mul1892.i to i64
  %arrayidx1895.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1894.i
  %404 = load double* %arrayidx1895.i, align 8, !tbaa !4
  %idxprom1896.i = sext i32 %add18933367.i to i64
  %arrayidx1897.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %idxprom1896.i
  %405 = load double* %arrayidx1897.i, align 8, !tbaa !4
  %arrayidx1899.i = getelementptr inbounds i32* %397, i64 %indvars.iv3968.i
  %406 = load i32* %arrayidx1899.i, align 4, !tbaa !3
  %mul1900.i = shl nsw i32 %406, 1
  %add19013368.i = or i32 %mul1900.i, 1
  %idxprom1902.i = sext i32 %mul1900.i to i64
  %arrayidx1903.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1902.i
  %407 = load double* %arrayidx1903.i, align 8, !tbaa !4
  %idxprom1904.i = sext i32 %add19013368.i to i64
  %arrayidx1905.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom1904.i
  %408 = load double* %arrayidx1905.i, align 8, !tbaa !4
  %mul1906.i = fmul double %404, %407
  %mul1907.i = fmul double %405, %408
  %add1908.i = fadd double %mul1906.i, %mul1907.i
  %add1909.i = fadd double %rsum001853.13710.i, %add1908.i
  %mul1910.i = fmul double %404, %408
  %mul1911.i = fmul double %405, %407
  %sub1912.i = fsub double %mul1910.i, %mul1911.i
  %add1913.i = fadd double %isum001852.13709.i, %sub1912.i
  %indvars.iv.next3969.i = add i64 %indvars.iv3968.i, 1
  %lftr.wideiv534 = trunc i64 %indvars.iv.next3969.i to i32
  %exitcond535 = icmp eq i32 %lftr.wideiv534, %395
  br i1 %exitcond535, label %if.end1917.i, label %for.body1891.i

if.end1917.i:                                     ; preds = %for.body1891.i, %for.body1866.i, %for.cond1864.preheader.i, %for.cond1889.preheader.i
  %isum001852.2.i = phi double [ 0.000000e+00, %for.cond1889.preheader.i ], [ 0.000000e+00, %for.cond1864.preheader.i ], [ %add1884.i, %for.body1866.i ], [ %add1913.i, %for.body1891.i ]
  %rsum001853.2.i = phi double [ 0.000000e+00, %for.cond1889.preheader.i ], [ 0.000000e+00, %for.cond1864.preheader.i ], [ %add1880.i, %for.body1866.i ], [ %add1909.i, %for.body1891.i ]
  %409 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp1918.i = icmp eq i32 %409, %321
  br i1 %cmp1918.i, label %if.then1919.i, label %if.else1928.i

if.then1919.i:                                    ; preds = %if.end1917.i
  %mul1920.i = shl nsw i32 %irowAT.2.lcssa.i, 1
  %add19213366.i = or i32 %mul1920.i, 1
  %idxprom1922.i = sext i32 %mul1920.i to i64
  %arrayidx1923.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1922.i
  %410 = load double* %arrayidx1923.i, align 8, !tbaa !4
  %sub1924.i = fsub double %410, %rsum001853.2.i
  store double %sub1924.i, double* %arrayidx1923.i, align 8, !tbaa !4
  %idxprom1925.i = sext i32 %add19213366.i to i64
  %arrayidx1926.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1925.i
  %411 = load double* %arrayidx1926.i, align 8, !tbaa !4
  %sub1927.i = fsub double %411, %isum001852.2.i
  store double %sub1927.i, double* %arrayidx1926.i, align 8, !tbaa !4
  br label %sw.epilog

if.else1928.i:                                    ; preds = %if.end1917.i
  %idxprom1929.i = sext i32 %irowAT.2.lcssa.i to i64
  %412 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx1930.i = getelementptr inbounds i32* %412, i64 %idxprom1929.i
  %413 = load i32* %arrayidx1930.i, align 4, !tbaa !3
  %mul1931.i = shl nsw i32 %413, 1
  %add19323365.i = or i32 %mul1931.i, 1
  %idxprom1933.i = sext i32 %mul1931.i to i64
  %arrayidx1934.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1933.i
  %414 = load double* %arrayidx1934.i, align 8, !tbaa !4
  %sub1935.i = fsub double %414, %rsum001853.2.i
  store double %sub1935.i, double* %arrayidx1934.i, align 8, !tbaa !4
  %idxprom1936.i = sext i32 %add19323365.i to i64
  %arrayidx1937.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom1936.i
  %415 = load double* %arrayidx1937.i, align 8, !tbaa !4
  %sub1938.i = fsub double %415, %isum001852.2.i
  store double %sub1938.i, double* %arrayidx1937.i, align 8, !tbaa !4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end17
  %416 = bitcast double** %entA.i60 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %416) #4
  %417 = bitcast double** %entX.i61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %417) #4
  %418 = bitcast double** %entY.i62 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %418) #4
  %419 = bitcast i32* %inc1.i63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %419) #4
  %420 = bitcast i32* %inc2.i64 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %420) #4
  %421 = bitcast i32* %ncolAT.i65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %421) #4
  %422 = bitcast i32* %ncolX.i66 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %422) #4
  %423 = bitcast i32* %ncolY.i67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #4
  %424 = bitcast i32* %nrowAT.i68 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #4
  %425 = bitcast i32* %nrowX.i69 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %425) #4
  %426 = bitcast i32* %nrowY.i70 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #4
  %427 = bitcast i32** %colindAT.i71 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %427) #4
  %428 = bitcast i32** %rowindAT.i72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %428) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i70, i32* %ncolY.i67, i32* %inc1.i63, i32* %inc2.i64, double** %entY.i62) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i69, i32* %ncolX.i66, i32* %inc1.i63, i32* %inc2.i64, double** %entX.i61) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i65, i32* %nrowAT.i68, i32* %inc1.i63, i32* %inc2.i64, double** %entA.i60) #5
  %429 = load double** %entX.i61, align 8, !tbaa !0
  %430 = load double** %entY.i62, align 8, !tbaa !0
  %431 = load i32* %ncolAT.i65, align 4, !tbaa !3
  %432 = load i32* %nrowX.i69, align 4, !tbaa !3
  %cmp.i73 = icmp eq i32 %431, %432
  br i1 %cmp.i73, label %if.else.i75, label %if.then.i74

if.then.i74:                                      ; preds = %sw.bb19
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i65, i32** %colindAT.i71) #5
  br label %if.end.i77

if.else.i75:                                      ; preds = %sw.bb19
  store i32* null, i32** %colindAT.i71, align 8, !tbaa !0
  br label %if.end.i77

if.end.i77:                                       ; preds = %if.else.i75, %if.then.i74
  %433 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %434 = load i32* %nrowY.i70, align 4, !tbaa !3
  %cmp1.i76 = icmp eq i32 %433, %434
  br i1 %cmp1.i76, label %if.else3.i79, label %if.then2.i78

if.then2.i78:                                     ; preds = %if.end.i77
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i68, i32** %rowindAT.i72) #5
  br label %for.cond.preheader.i

if.else3.i79:                                     ; preds = %if.end.i77
  store i32* null, i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else3.i79, %if.then2.i78
  %435 = load i32* %ncolX.i66, align 4, !tbaa !3
  %sub3653.i = add nsw i32 %435, -2
  %cmp53654.i = icmp sgt i32 %sub3653.i, 0
  br i1 %cmp53654.i, label %for.body.lr.ph.i80, label %for.end813.i

for.body.lr.ph.i80:                               ; preds = %for.cond.preheader.i
  %.pre3727.i = load i32* %nrowX.i69, align 4, !tbaa !3
  %.pre3728.i = load i32* %nrowY.i70, align 4, !tbaa !3
  %.pre3729.i = load i32* %ncolAT.i65, align 4, !tbaa !3
  br label %for.body.i87

for.body.i87:                                     ; preds = %if.end804.i.for.body.i87_crit_edge, %for.body.lr.ph.i80
  %436 = phi i32 [ %.pre3729.i, %for.body.lr.ph.i80 ], [ %482, %if.end804.i.for.body.i87_crit_edge ]
  %437 = phi i32 [ %.pre3728.i, %for.body.lr.ph.i80 ], [ %538, %if.end804.i.for.body.i87_crit_edge ]
  %438 = phi i32 [ %.pre3727.i, %for.body.lr.ph.i80 ], [ %539, %if.end804.i.for.body.i87_crit_edge ]
  %jcolX.03665.i = phi i32 [ 3, %for.body.lr.ph.i80 ], [ %phitmp.i, %if.end804.i.for.body.i87_crit_edge ]
  %colY0.03658.i = phi double* [ %430, %for.body.lr.ph.i80 ], [ %add.ptr810.i, %if.end804.i.for.body.i87_crit_edge ]
  %colX0.03655.i = phi double* [ %429, %for.body.lr.ph.i80 ], [ %add.ptr807.i, %if.end804.i.for.body.i87_crit_edge ]
  %mul.i81 = shl nsw i32 %438, 1
  %idx.ext.i82 = sext i32 %mul.i81 to i64
  %add.ptr.sum.i83 = shl nsw i64 %idx.ext.i82, 1
  %mul9.i84 = shl nsw i32 %437, 1
  %idx.ext10.i85 = sext i32 %mul9.i84 to i64
  %add.ptr11.sum.i86 = shl nsw i64 %idx.ext10.i85, 1
  %439 = load double** %entA.i60, align 8, !tbaa !0
  %sub163627.i = add nsw i32 %436, -2
  %cmp173628.i = icmp sgt i32 %sub163627.i, 0
  br i1 %cmp173628.i, label %for.body18.lr.ph.i, label %for.end336.i

for.body18.lr.ph.i:                               ; preds = %for.body.i87
  %.pre3730.i = load i32* %nrowAT.i68, align 4, !tbaa !3
  br label %for.body18.i89

for.body18.i89:                                   ; preds = %if.end330.for.body18_crit_edge.i, %for.body18.lr.ph.i
  %440 = phi i32 [ %438, %for.body18.lr.ph.i ], [ %.pre3733.i, %if.end330.for.body18_crit_edge.i ]
  %441 = phi i32 [ %.pre3730.i, %for.body18.lr.ph.i ], [ %479, %if.end330.for.body18_crit_edge.i ]
  %indvars.iv3711.i = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next3712.i, %if.end330.for.body18_crit_edge.i ]
  %442 = phi i32 [ %436, %for.body18.lr.ph.i ], [ %480, %if.end330.for.body18_crit_edge.i ]
  %icolAT.03633.i = phi i32 [ 3, %for.body18.lr.ph.i ], [ %phitmp3734.i, %if.end330.for.body18_crit_edge.i ]
  %colAT0.03629.i = phi double* [ %439, %for.body18.lr.ph.i ], [ %add.ptr333.i, %if.end330.for.body18_crit_edge.i ]
  %mul19.i = shl nsw i32 %441, 1
  %idx.ext20.i = sext i32 %mul19.i to i64
  %add.ptr21.sum.i88 = shl nsw i64 %idx.ext20.i, 1
  %cmp25.i = icmp eq i32 %442, %440
  br i1 %cmp25.i, label %if.then26.i, label %if.else66.i

if.then26.i:                                      ; preds = %for.body18.i89
  %443 = trunc i64 %indvars.iv3711.i to i32
  %mul27.i = shl nsw i32 %443, 1
  %add3517.i = or i32 %mul27.i, 1
  %add38.i = add nsw i32 %mul27.i, 2
  %add39.i = add nsw i32 %add3517.i, 2
  %add52.i = add nsw i32 %mul27.i, 4
  %add53.i = add nsw i32 %add3517.i, 4
  br label %if.end117.i

if.else66.i:                                      ; preds = %for.body18.i89
  %444 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx68.i = getelementptr inbounds i32* %444, i64 %indvars.iv3711.i
  %445 = load i32* %arrayidx68.i, align 4, !tbaa !3
  %mul69.i90 = shl nsw i32 %445, 1
  %add703483.i = or i32 %mul69.i90, 1
  %446 = add nsw i64 %indvars.iv3711.i, 1
  %arrayidx85.i = getelementptr inbounds i32* %444, i64 %446
  %447 = load i32* %arrayidx85.i, align 4, !tbaa !3
  %mul86.i91 = shl nsw i32 %447, 1
  %add873488.i = or i32 %mul86.i91, 1
  %448 = add nsw i64 %indvars.iv3711.i, 2
  %arrayidx102.i = getelementptr inbounds i32* %444, i64 %448
  %449 = load i32* %arrayidx102.i, align 4, !tbaa !3
  %mul103.i = shl nsw i32 %449, 1
  %add1043493.i = or i32 %mul103.i, 1
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else66.i, %if.then26.i
  %add52.sink.i = phi i32 [ %add52.i, %if.then26.i ], [ %mul103.i, %if.else66.i ]
  %add53.sink.i = phi i32 [ %add53.i, %if.then26.i ], [ %add1043493.i, %if.else66.i ]
  %idxprom28.pn.in.i = phi i32 [ %add3517.i, %if.then26.i ], [ %add703483.i, %if.else66.i ]
  %idxprom42.pn.in.i = phi i32 [ %add39.i, %if.then26.i ], [ %add873488.i, %if.else66.i ]
  %idxprom.pn.in.i = phi i32 [ %mul27.i, %if.then26.i ], [ %mul69.i90, %if.else66.i ]
  %idxprom40.pn.in.i = phi i32 [ %add38.i, %if.then26.i ], [ %mul86.i91, %if.else66.i ]
  %idxprom40.pn.i = sext i32 %idxprom40.pn.in.i to i64
  %idxprom.pn.i = sext i32 %idxprom.pn.in.i to i64
  %idxprom42.pn.i = sext i32 %idxprom42.pn.in.i to i64
  %idxprom28.pn.i = sext i32 %idxprom28.pn.in.i to i64
  %idxprom54.i = sext i32 %add52.sink.i to i64
  %idxprom56.i = sext i32 %add53.sink.i to i64
  %add.ptr8.sum3528.pn.i = add i64 %idxprom54.i, %add.ptr.sum.i83
  %add.ptr.sum3526.pn.i = add i64 %idxprom54.i, %idx.ext.i82
  %add.ptr8.sum3524.pn.i = add i64 %idxprom40.pn.i, %add.ptr.sum.i83
  %add.ptr.sum3522.pn.i = add i64 %idxprom40.pn.i, %idx.ext.i82
  %add.ptr8.sum3520.pn.i = add i64 %idxprom.pn.i, %add.ptr.sum.i83
  %add.ptr.sum3518.pn.i = add i64 %idxprom.pn.i, %idx.ext.i82
  %add.ptr8.sum3529.pn.i = add i64 %idxprom56.i, %add.ptr.sum.i83
  %add.ptr.sum3527.pn.i = add i64 %idxprom56.i, %idx.ext.i82
  %add.ptr8.sum3525.pn.i = add i64 %idxprom42.pn.i, %add.ptr.sum.i83
  %add.ptr.sum3523.pn.i = add i64 %idxprom42.pn.i, %idx.ext.i82
  %add.ptr8.sum3521.pn.i = add i64 %idxprom28.pn.i, %add.ptr.sum.i83
  %add.ptr.sum3519.pn.i = add i64 %idxprom28.pn.i, %idx.ext.i82
  %xr22.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3528.pn.i
  %xr21.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3526.pn.i
  %xr20.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom54.i
  %xr12.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3524.pn.i
  %xr11.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3522.pn.i
  %xr10.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom40.pn.i
  %xr02.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3520.pn.i
  %xr01.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3518.pn.i
  %xr00.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom.pn.i
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
  %450 = load i32* %nrowY.i70, align 4, !tbaa !3
  %cmp118.i = icmp eq i32 %450, %441
  %cmp1213624.i = icmp sgt i32 %441, 0
  br i1 %cmp118.i, label %for.cond120.preheader.i, label %for.cond222.preheader.i

for.cond120.preheader.i:                          ; preds = %if.end117.i
  br i1 %cmp1213624.i, label %for.body122.i, label %if.end330.i

for.cond222.preheader.i:                          ; preds = %if.end117.i
  br i1 %cmp1213624.i, label %for.body224.lr.ph.i, label %if.end330.i

for.body224.lr.ph.i:                              ; preds = %for.cond222.preheader.i
  %451 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body224.i

for.body122.i:                                    ; preds = %for.cond120.preheader.i, %for.body122.i
  %indvars.iv3707.i = phi i64 [ %indvars.iv.next3708.i, %for.body122.i ], [ 0, %for.cond120.preheader.i ]
  %452 = trunc i64 %indvars.iv3707.i to i32
  %mul123.i = shl nsw i32 %452, 1
  %add1243508.i = or i32 %mul123.i, 1
  %idxprom125.i = sext i32 %mul123.i to i64
  %arrayidx126.i = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom125.i
  %453 = load double* %arrayidx126.i, align 8, !tbaa !4
  %idxprom127.i = sext i32 %add1243508.i to i64
  %arrayidx128.i = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom127.i
  %454 = load double* %arrayidx128.i, align 8, !tbaa !4
  %add.ptr21.sum3509.i = add i64 %idxprom125.i, %idx.ext20.i
  %arrayidx130.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3509.i
  %455 = load double* %arrayidx130.i, align 8, !tbaa !4
  %add.ptr21.sum3510.i = add i64 %idxprom127.i, %idx.ext20.i
  %arrayidx132.i92 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3510.i
  %456 = load double* %arrayidx132.i92, align 8, !tbaa !4
  %add.ptr24.sum3511.i = add i64 %idxprom125.i, %add.ptr21.sum.i88
  %arrayidx134.i93 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3511.i
  %457 = load double* %arrayidx134.i93, align 8, !tbaa !4
  %add.ptr24.sum3512.i = add i64 %idxprom127.i, %add.ptr21.sum.i88
  %arrayidx136.i94 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3512.i
  %458 = load double* %arrayidx136.i94, align 8, !tbaa !4
  %mul137.i = fmul double %xr00.0.i, %453
  %mul138.i = fmul double %xi00.0.i, %454
  %add139.i = fadd double %mul137.i, %mul138.i
  %mul140.i = fmul double %xr10.0.i, %455
  %add141.i = fadd double %add139.i, %mul140.i
  %mul142.i = fmul double %xi10.0.i, %456
  %add143.i = fadd double %add141.i, %mul142.i
  %mul144.i = fmul double %xr20.0.i, %457
  %add145.i = fadd double %add143.i, %mul144.i
  %mul146.i = fmul double %xi20.0.i, %458
  %add147.i = fadd double %add145.i, %mul146.i
  %arrayidx149.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom125.i
  %459 = load double* %arrayidx149.i, align 8, !tbaa !4
  %sub150.i = fsub double %459, %add147.i
  store double %sub150.i, double* %arrayidx149.i, align 8, !tbaa !4
  %mul151.i = fmul double %xi00.0.i, %453
  %mul152.i = fmul double %xr00.0.i, %454
  %sub153.i = fsub double %mul151.i, %mul152.i
  %mul154.i = fmul double %xi10.0.i, %455
  %add155.i = fadd double %sub153.i, %mul154.i
  %mul156.i = fmul double %xr10.0.i, %456
  %sub157.i = fsub double %add155.i, %mul156.i
  %mul158.i = fmul double %xi20.0.i, %457
  %add159.i = fadd double %sub157.i, %mul158.i
  %mul160.i95 = fmul double %xr20.0.i, %458
  %sub161.i = fsub double %add159.i, %mul160.i95
  %arrayidx163.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom127.i
  %460 = load double* %arrayidx163.i, align 8, !tbaa !4
  %sub164.i = fsub double %460, %sub161.i
  store double %sub164.i, double* %arrayidx163.i, align 8, !tbaa !4
  %mul165.i = fmul double %xr01.0.i, %453
  %mul166.i = fmul double %xi01.0.i, %454
  %add167.i = fadd double %mul165.i, %mul166.i
  %mul168.i96 = fmul double %xr11.0.i, %455
  %add169.i97 = fadd double %add167.i, %mul168.i96
  %mul170.i = fmul double %xi11.0.i, %456
  %add171.i = fadd double %add169.i97, %mul170.i
  %mul172.i98 = fmul double %xr21.0.i, %457
  %add173.i = fadd double %add171.i, %mul172.i98
  %mul174.i = fmul double %xi21.0.i, %458
  %add175.i = fadd double %add173.i, %mul174.i
  %add.ptr11.sum3513.i99 = add i64 %idxprom125.i, %idx.ext10.i85
  %arrayidx177.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3513.i99
  %461 = load double* %arrayidx177.i, align 8, !tbaa !4
  %sub178.i = fsub double %461, %add175.i
  store double %sub178.i, double* %arrayidx177.i, align 8, !tbaa !4
  %mul179.i100 = fmul double %xi01.0.i, %453
  %mul180.i101 = fmul double %xr01.0.i, %454
  %sub181.i102 = fsub double %mul179.i100, %mul180.i101
  %mul182.i = fmul double %xi11.0.i, %455
  %add183.i = fadd double %sub181.i102, %mul182.i
  %mul184.i103 = fmul double %xr11.0.i, %456
  %sub185.i = fsub double %add183.i, %mul184.i103
  %mul186.i = fmul double %xi21.0.i, %457
  %add187.i = fadd double %sub185.i, %mul186.i
  %mul188.i104 = fmul double %xr21.0.i, %458
  %sub189.i105 = fsub double %add187.i, %mul188.i104
  %add.ptr11.sum3514.i = add i64 %idxprom127.i, %idx.ext10.i85
  %arrayidx191.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3514.i
  %462 = load double* %arrayidx191.i, align 8, !tbaa !4
  %sub192.i = fsub double %462, %sub189.i105
  store double %sub192.i, double* %arrayidx191.i, align 8, !tbaa !4
  %mul193.i = fmul double %xr02.0.i, %453
  %mul194.i = fmul double %xi02.0.i, %454
  %add195.i = fadd double %mul193.i, %mul194.i
  %mul196.i106 = fmul double %xr12.0.i, %455
  %add197.i = fadd double %add195.i, %mul196.i106
  %mul198.i = fmul double %xi12.0.i, %456
  %add199.i = fadd double %add197.i, %mul198.i
  %mul200.i107 = fmul double %xr22.0.i, %457
  %add201.i108 = fadd double %add199.i, %mul200.i107
  %mul202.i = fmul double %xi22.0.i, %458
  %add203.i = fadd double %add201.i108, %mul202.i
  %add.ptr14.sum3515.i109 = add i64 %idxprom125.i, %add.ptr11.sum.i86
  %arrayidx205.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3515.i109
  %463 = load double* %arrayidx205.i, align 8, !tbaa !4
  %sub206.i = fsub double %463, %add203.i
  store double %sub206.i, double* %arrayidx205.i, align 8, !tbaa !4
  %mul207.i110 = fmul double %xi02.0.i, %453
  %mul208.i111 = fmul double %xr02.0.i, %454
  %sub209.i = fsub double %mul207.i110, %mul208.i111
  %mul210.i = fmul double %xi12.0.i, %455
  %add211.i = fadd double %sub209.i, %mul210.i
  %mul212.i112 = fmul double %xr12.0.i, %456
  %sub213.i113 = fsub double %add211.i, %mul212.i112
  %mul214.i = fmul double %xi22.0.i, %457
  %add215.i = fadd double %sub213.i113, %mul214.i
  %mul216.i114 = fmul double %xr22.0.i, %458
  %sub217.i = fsub double %add215.i, %mul216.i114
  %add.ptr14.sum3516.i = add i64 %idxprom127.i, %add.ptr11.sum.i86
  %arrayidx219.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3516.i
  %464 = load double* %arrayidx219.i, align 8, !tbaa !4
  %sub220.i = fsub double %464, %sub217.i
  store double %sub220.i, double* %arrayidx219.i, align 8, !tbaa !4
  %indvars.iv.next3708.i = add i64 %indvars.iv3707.i, 1
  %lftr.wideiv578 = trunc i64 %indvars.iv.next3708.i to i32
  %exitcond579 = icmp eq i32 %lftr.wideiv578, %441
  br i1 %exitcond579, label %if.end330.i, label %for.body122.i

for.body224.i:                                    ; preds = %for.body224.i, %for.body224.lr.ph.i
  %indvars.iv3705.i = phi i64 [ 0, %for.body224.lr.ph.i ], [ %indvars.iv.next3706.i, %for.body224.i ]
  %465 = trunc i64 %indvars.iv3705.i to i32
  %mul225.i = shl nsw i32 %465, 1
  %add2263498.i = or i32 %mul225.i, 1
  %idxprom227.i = sext i32 %mul225.i to i64
  %arrayidx228.i = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom227.i
  %466 = load double* %arrayidx228.i, align 8, !tbaa !4
  %idxprom229.i = sext i32 %add2263498.i to i64
  %arrayidx230.i = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom229.i
  %467 = load double* %arrayidx230.i, align 8, !tbaa !4
  %add.ptr21.sum3499.i = add i64 %idxprom227.i, %idx.ext20.i
  %arrayidx232.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3499.i
  %468 = load double* %arrayidx232.i, align 8, !tbaa !4
  %add.ptr21.sum3500.i = add i64 %idxprom229.i, %idx.ext20.i
  %arrayidx234.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3500.i
  %469 = load double* %arrayidx234.i, align 8, !tbaa !4
  %add.ptr24.sum3501.i = add i64 %idxprom227.i, %add.ptr21.sum.i88
  %arrayidx236.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3501.i
  %470 = load double* %arrayidx236.i, align 8, !tbaa !4
  %add.ptr24.sum3502.i = add i64 %idxprom229.i, %add.ptr21.sum.i88
  %arrayidx238.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3502.i
  %471 = load double* %arrayidx238.i, align 8, !tbaa !4
  %arrayidx240.i115 = getelementptr inbounds i32* %451, i64 %indvars.iv3705.i
  %472 = load i32* %arrayidx240.i115, align 4, !tbaa !3
  %mul241.i = shl nsw i32 %472, 1
  %add2423503.i = or i32 %mul241.i, 1
  %mul243.i = fmul double %xr00.0.i, %466
  %mul244.i = fmul double %xi00.0.i, %467
  %add245.i = fadd double %mul243.i, %mul244.i
  %mul246.i = fmul double %xr10.0.i, %468
  %add247.i = fadd double %add245.i, %mul246.i
  %mul248.i = fmul double %xi10.0.i, %469
  %add249.i = fadd double %add247.i, %mul248.i
  %mul250.i = fmul double %xr20.0.i, %470
  %add251.i = fadd double %add249.i, %mul250.i
  %mul252.i = fmul double %xi20.0.i, %471
  %add253.i = fadd double %add251.i, %mul252.i
  %idxprom254.i = sext i32 %mul241.i to i64
  %arrayidx255.i116 = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom254.i
  %473 = load double* %arrayidx255.i116, align 8, !tbaa !4
  %sub256.i117 = fsub double %473, %add253.i
  store double %sub256.i117, double* %arrayidx255.i116, align 8, !tbaa !4
  %mul257.i = fmul double %xi00.0.i, %466
  %mul258.i = fmul double %xr00.0.i, %467
  %sub259.i = fsub double %mul257.i, %mul258.i
  %mul260.i = fmul double %xi10.0.i, %468
  %add261.i = fadd double %sub259.i, %mul260.i
  %mul262.i = fmul double %xr10.0.i, %469
  %sub263.i = fsub double %add261.i, %mul262.i
  %mul264.i = fmul double %xi20.0.i, %470
  %add265.i = fadd double %sub263.i, %mul264.i
  %mul266.i = fmul double %xr20.0.i, %471
  %sub267.i118 = fsub double %add265.i, %mul266.i
  %idxprom268.i = sext i32 %add2423503.i to i64
  %arrayidx269.i119 = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom268.i
  %474 = load double* %arrayidx269.i119, align 8, !tbaa !4
  %sub270.i120 = fsub double %474, %sub267.i118
  store double %sub270.i120, double* %arrayidx269.i119, align 8, !tbaa !4
  %mul271.i = fmul double %xr01.0.i, %466
  %mul272.i = fmul double %xi01.0.i, %467
  %add273.i = fadd double %mul271.i, %mul272.i
  %mul274.i = fmul double %xr11.0.i, %468
  %add275.i = fadd double %add273.i, %mul274.i
  %mul276.i = fmul double %xi11.0.i, %469
  %add277.i121 = fadd double %add275.i, %mul276.i
  %mul278.i = fmul double %xr21.0.i, %470
  %add279.i = fadd double %add277.i121, %mul278.i
  %mul280.i = fmul double %xi21.0.i, %471
  %add281.i = fadd double %add279.i, %mul280.i
  %add.ptr11.sum3504.i = add i64 %idxprom254.i, %idx.ext10.i85
  %arrayidx283.i122 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3504.i
  %475 = load double* %arrayidx283.i122, align 8, !tbaa !4
  %sub284.i123 = fsub double %475, %add281.i
  store double %sub284.i123, double* %arrayidx283.i122, align 8, !tbaa !4
  %mul285.i = fmul double %xi01.0.i, %466
  %mul286.i = fmul double %xr01.0.i, %467
  %sub287.i124 = fsub double %mul285.i, %mul286.i
  %mul288.i = fmul double %xi11.0.i, %468
  %add289.i = fadd double %sub287.i124, %mul288.i
  %mul290.i = fmul double %xr11.0.i, %469
  %sub291.i = fsub double %add289.i, %mul290.i
  %mul292.i = fmul double %xi21.0.i, %470
  %add293.i = fadd double %sub291.i, %mul292.i
  %mul294.i = fmul double %xr21.0.i, %471
  %sub295.i = fsub double %add293.i, %mul294.i
  %add.ptr11.sum3505.i = add i64 %idxprom268.i, %idx.ext10.i85
  %arrayidx297.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3505.i
  %476 = load double* %arrayidx297.i, align 8, !tbaa !4
  %sub298.i = fsub double %476, %sub295.i
  store double %sub298.i, double* %arrayidx297.i, align 8, !tbaa !4
  %mul299.i = fmul double %xr02.0.i, %466
  %mul300.i125 = fmul double %xi02.0.i, %467
  %add301.i = fadd double %mul299.i, %mul300.i125
  %mul302.i = fmul double %xr12.0.i, %468
  %add303.i = fadd double %add301.i, %mul302.i
  %mul304.i = fmul double %xi12.0.i, %469
  %add305.i = fadd double %add303.i, %mul304.i
  %mul306.i = fmul double %xr22.0.i, %470
  %add307.i = fadd double %add305.i, %mul306.i
  %mul308.i = fmul double %xi22.0.i, %471
  %add309.i = fadd double %add307.i, %mul308.i
  %add.ptr14.sum3506.i = add i64 %idxprom254.i, %add.ptr11.sum.i86
  %arrayidx311.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3506.i
  %477 = load double* %arrayidx311.i, align 8, !tbaa !4
  %sub312.i = fsub double %477, %add309.i
  store double %sub312.i, double* %arrayidx311.i, align 8, !tbaa !4
  %mul313.i = fmul double %xi02.0.i, %466
  %mul314.i = fmul double %xr02.0.i, %467
  %sub315.i = fsub double %mul313.i, %mul314.i
  %mul316.i = fmul double %xi12.0.i, %468
  %add317.i = fadd double %sub315.i, %mul316.i
  %mul318.i = fmul double %xr12.0.i, %469
  %sub319.i126 = fsub double %add317.i, %mul318.i
  %mul320.i = fmul double %xi22.0.i, %470
  %add321.i = fadd double %sub319.i126, %mul320.i
  %mul322.i = fmul double %xr22.0.i, %471
  %sub323.i = fsub double %add321.i, %mul322.i
  %add.ptr14.sum3507.i = add i64 %idxprom268.i, %add.ptr11.sum.i86
  %arrayidx325.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3507.i
  %478 = load double* %arrayidx325.i, align 8, !tbaa !4
  %sub326.i = fsub double %478, %sub323.i
  store double %sub326.i, double* %arrayidx325.i, align 8, !tbaa !4
  %indvars.iv.next3706.i = add i64 %indvars.iv3705.i, 1
  %lftr.wideiv576 = trunc i64 %indvars.iv.next3706.i to i32
  %exitcond577 = icmp eq i32 %lftr.wideiv576, %441
  br i1 %exitcond577, label %if.end330.i, label %for.body224.i

if.end330.i:                                      ; preds = %for.body122.i, %for.body224.i, %for.cond222.preheader.i, %for.cond120.preheader.i
  %479 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %mul331.i = shl nsw i32 %479, 1
  %idx.ext332.i = sext i32 %mul331.i to i64
  %add.ptr24.sum.i127 = add i64 %idx.ext332.i, %add.ptr21.sum.i88
  %add.ptr333.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum.i127
  %indvars.iv.next3712.i = add i64 %indvars.iv3711.i, 3
  %480 = load i32* %ncolAT.i65, align 4, !tbaa !3
  %sub16.i = add nsw i32 %480, -2
  %481 = trunc i64 %indvars.iv.next3712.i to i32
  %cmp17.i128 = icmp slt i32 %481, %sub16.i
  br i1 %cmp17.i128, label %if.end330.for.body18_crit_edge.i, label %for.end336.i

if.end330.for.body18_crit_edge.i:                 ; preds = %if.end330.i
  %.pre3733.i = load i32* %nrowX.i69, align 4, !tbaa !3
  %phitmp3734.i = add i32 %icolAT.03633.i, 3
  br label %for.body18.i89

for.end336.i:                                     ; preds = %if.end330.i, %for.body.i87
  %482 = phi i32 [ %436, %for.body.i87 ], [ %480, %if.end330.i ]
  %sub16.lcssa.i = phi i32 [ %sub163627.i, %for.body.i87 ], [ %sub16.i, %if.end330.i ]
  %icolAT.0.lcssa.i = phi i32 [ 0, %for.body.i87 ], [ %icolAT.03633.i, %if.end330.i ]
  %colAT0.0.lcssa.i = phi double* [ %439, %for.body.i87 ], [ %add.ptr333.i, %if.end330.i ]
  %cmp338.i = icmp eq i32 %icolAT.0.lcssa.i, %sub16.lcssa.i
  br i1 %cmp338.i, label %if.then339.i, label %if.else599.i

if.then339.i:                                     ; preds = %for.end336.i
  %483 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %mul340.i = shl nsw i32 %483, 1
  %idx.ext341.i = sext i32 %mul340.i to i64
  %484 = load i32* %nrowX.i69, align 4, !tbaa !3
  %cmp343.i = icmp eq i32 %482, %484
  br i1 %cmp343.i, label %if.then344.i, label %if.else387.i

if.then344.i:                                     ; preds = %if.then339.i
  %mul345.i = shl nsw i32 %sub16.lcssa.i, 1
  %add3463474.i = or i32 %mul345.i, 1
  %add359.i = add nsw i32 %mul345.i, 2
  %add360.i = add nsw i32 %add3463474.i, 2
  br label %if.end438.i

if.else387.i:                                     ; preds = %if.then339.i
  %idxprom388.i = sext i32 %sub16.lcssa.i to i64
  %485 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx389.i = getelementptr inbounds i32* %485, i64 %idxprom388.i
  %486 = load i32* %arrayidx389.i, align 4, !tbaa !3
  %mul390.i = shl nsw i32 %486, 1
  %add3913449.i = or i32 %mul390.i, 1
  %add404.i = add nsw i32 %sub16.lcssa.i, 1
  %idxprom405.i = sext i32 %add404.i to i64
  %arrayidx406.i = getelementptr inbounds i32* %485, i64 %idxprom405.i
  %487 = load i32* %arrayidx406.i, align 4, !tbaa !3
  %mul407.i = shl nsw i32 %487, 1
  %add4083454.i = or i32 %mul407.i, 1
  br label %if.end438.i

if.end438.i:                                      ; preds = %if.else387.i, %if.then344.i
  %add359.sink.i = phi i32 [ %add359.i, %if.then344.i ], [ %mul407.i, %if.else387.i ]
  %add360.sink.i = phi i32 [ %add360.i, %if.then344.i ], [ %add4083454.i, %if.else387.i ]
  %idxprom349.pn.in.i = phi i32 [ %add3463474.i, %if.then344.i ], [ %add3913449.i, %if.else387.i ]
  %idxprom347.pn.in.i = phi i32 [ %mul345.i, %if.then344.i ], [ %mul390.i, %if.else387.i ]
  %idxprom347.pn.i = sext i32 %idxprom347.pn.in.i to i64
  %idxprom349.pn.i = sext i32 %idxprom349.pn.in.i to i64
  %idxprom361.i = sext i32 %add359.sink.i to i64
  %idxprom363.i = sext i32 %add360.sink.i to i64
  %add.ptr8.sum3481.pn.i = add i64 %idxprom361.i, %add.ptr.sum.i83
  %add.ptr.sum3479.pn.i = add i64 %idxprom361.i, %idx.ext.i82
  %add.ptr8.sum3477.pn.i = add i64 %idxprom347.pn.i, %add.ptr.sum.i83
  %add.ptr.sum3475.pn.i = add i64 %idxprom347.pn.i, %idx.ext.i82
  %add.ptr8.sum3482.pn.i = add i64 %idxprom363.i, %add.ptr.sum.i83
  %add.ptr.sum3480.pn.i = add i64 %idxprom363.i, %idx.ext.i82
  %add.ptr8.sum3478.pn.i = add i64 %idxprom349.pn.i, %add.ptr.sum.i83
  %add.ptr.sum3476.pn.i = add i64 %idxprom349.pn.i, %idx.ext.i82
  %xr12.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3481.pn.i
  %xr11.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3479.pn.i
  %xr10.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom361.i
  %xr02.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3477.pn.i
  %xr01.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3475.pn.i
  %xr00.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom347.pn.i
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
  %488 = load i32* %nrowY.i70, align 4, !tbaa !3
  %cmp439.i = icmp eq i32 %488, %483
  %cmp4423647.i = icmp sgt i32 %483, 0
  br i1 %cmp439.i, label %for.cond441.preheader.i, label %for.cond518.preheader.i

for.cond441.preheader.i:                          ; preds = %if.end438.i
  br i1 %cmp4423647.i, label %for.body443.i, label %if.end804.i

for.cond518.preheader.i:                          ; preds = %if.end438.i
  br i1 %cmp4423647.i, label %for.body520.lr.ph.i, label %if.end804.i

for.body520.lr.ph.i:                              ; preds = %for.cond518.preheader.i
  %489 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body520.i

for.body443.i:                                    ; preds = %for.cond441.preheader.i, %for.body443.i
  %indvars.iv3721.i = phi i64 [ %indvars.iv.next3722.i, %for.body443.i ], [ 0, %for.cond441.preheader.i ]
  %490 = trunc i64 %indvars.iv3721.i to i32
  %mul444.i = shl nsw i32 %490, 1
  %add4453467.i = or i32 %mul444.i, 1
  %idxprom446.i = sext i32 %mul444.i to i64
  %arrayidx447.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom446.i
  %491 = load double* %arrayidx447.i, align 8, !tbaa !4
  %idxprom448.i = sext i32 %add4453467.i to i64
  %arrayidx449.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom448.i
  %492 = load double* %arrayidx449.i, align 8, !tbaa !4
  %add.ptr342.sum3468.i = add i64 %idxprom446.i, %idx.ext341.i
  %arrayidx451.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %add.ptr342.sum3468.i
  %493 = load double* %arrayidx451.i, align 8, !tbaa !4
  %add.ptr342.sum3469.i = add i64 %idxprom448.i, %idx.ext341.i
  %arrayidx453.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %add.ptr342.sum3469.i
  %494 = load double* %arrayidx453.i, align 8, !tbaa !4
  %mul454.i129 = fmul double %xr00.1.i, %491
  %mul455.i130 = fmul double %xi00.1.i, %492
  %add456.i = fadd double %mul454.i129, %mul455.i130
  %mul457.i = fmul double %xr10.1.i, %493
  %add458.i = fadd double %add456.i, %mul457.i
  %mul459.i131 = fmul double %xi10.1.i, %494
  %add460.i132 = fadd double %add458.i, %mul459.i131
  %arrayidx462.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom446.i
  %495 = load double* %arrayidx462.i, align 8, !tbaa !4
  %sub463.i = fsub double %495, %add460.i132
  store double %sub463.i, double* %arrayidx462.i, align 8, !tbaa !4
  %mul464.i = fmul double %xi00.1.i, %491
  %mul465.i = fmul double %xr00.1.i, %492
  %sub466.i = fsub double %mul464.i, %mul465.i
  %mul467.i133 = fmul double %xi10.1.i, %493
  %add468.i134 = fadd double %sub466.i, %mul467.i133
  %mul469.i = fmul double %xr10.1.i, %494
  %sub470.i = fsub double %add468.i134, %mul469.i
  %arrayidx472.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom448.i
  %496 = load double* %arrayidx472.i, align 8, !tbaa !4
  %sub473.i = fsub double %496, %sub470.i
  store double %sub473.i, double* %arrayidx472.i, align 8, !tbaa !4
  %mul474.i135 = fmul double %xr01.1.i, %491
  %mul475.i136 = fmul double %xi01.1.i, %492
  %add476.i137 = fadd double %mul474.i135, %mul475.i136
  %mul477.i = fmul double %xr11.1.i, %493
  %add478.i = fadd double %add476.i137, %mul477.i
  %mul479.i138 = fmul double %xi11.1.i, %494
  %add480.i = fadd double %add478.i, %mul479.i138
  %add.ptr11.sum3470.i = add i64 %idxprom446.i, %idx.ext10.i85
  %arrayidx482.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3470.i
  %497 = load double* %arrayidx482.i, align 8, !tbaa !4
  %sub483.i = fsub double %497, %add480.i
  store double %sub483.i, double* %arrayidx482.i, align 8, !tbaa !4
  %mul484.i = fmul double %xi01.1.i, %491
  %mul485.i = fmul double %xr01.1.i, %492
  %sub486.i = fsub double %mul484.i, %mul485.i
  %mul487.i = fmul double %xi11.1.i, %493
  %add488.i = fadd double %sub486.i, %mul487.i
  %mul489.i139 = fmul double %xr11.1.i, %494
  %sub490.i = fsub double %add488.i, %mul489.i139
  %add.ptr11.sum3471.i = add i64 %idxprom448.i, %idx.ext10.i85
  %arrayidx492.i140 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3471.i
  %498 = load double* %arrayidx492.i140, align 8, !tbaa !4
  %sub493.i = fsub double %498, %sub490.i
  store double %sub493.i, double* %arrayidx492.i140, align 8, !tbaa !4
  %mul494.i = fmul double %xr02.1.i, %491
  %mul495.i = fmul double %xi02.1.i, %492
  %add496.i = fadd double %mul494.i, %mul495.i
  %mul497.i = fmul double %xr12.1.i, %493
  %add498.i = fadd double %add496.i, %mul497.i
  %mul499.i = fmul double %xi12.1.i, %494
  %add500.i = fadd double %add498.i, %mul499.i
  %add.ptr14.sum3472.i = add i64 %idxprom446.i, %add.ptr11.sum.i86
  %arrayidx502.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3472.i
  %499 = load double* %arrayidx502.i, align 8, !tbaa !4
  %sub503.i = fsub double %499, %add500.i
  store double %sub503.i, double* %arrayidx502.i, align 8, !tbaa !4
  %mul504.i = fmul double %xi02.1.i, %491
  %mul505.i = fmul double %xr02.1.i, %492
  %sub506.i = fsub double %mul504.i, %mul505.i
  %mul507.i = fmul double %xi12.1.i, %493
  %add508.i = fadd double %sub506.i, %mul507.i
  %mul509.i = fmul double %xr12.1.i, %494
  %sub510.i = fsub double %add508.i, %mul509.i
  %add.ptr14.sum3473.i = add i64 %idxprom448.i, %add.ptr11.sum.i86
  %arrayidx512.i141 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3473.i
  %500 = load double* %arrayidx512.i141, align 8, !tbaa !4
  %sub513.i = fsub double %500, %sub510.i
  store double %sub513.i, double* %arrayidx512.i141, align 8, !tbaa !4
  %indvars.iv.next3722.i = add i64 %indvars.iv3721.i, 1
  %lftr.wideiv586 = trunc i64 %indvars.iv.next3722.i to i32
  %exitcond587 = icmp eq i32 %lftr.wideiv586, %483
  br i1 %exitcond587, label %if.end804.i, label %for.body443.i

for.body520.i:                                    ; preds = %for.body520.i, %for.body520.lr.ph.i
  %indvars.iv3719.i = phi i64 [ 0, %for.body520.lr.ph.i ], [ %indvars.iv.next3720.i, %for.body520.i ]
  %501 = trunc i64 %indvars.iv3719.i to i32
  %mul521.i = shl nsw i32 %501, 1
  %add5223460.i = or i32 %mul521.i, 1
  %idxprom523.i = sext i32 %mul521.i to i64
  %arrayidx524.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom523.i
  %502 = load double* %arrayidx524.i, align 8, !tbaa !4
  %idxprom525.i = sext i32 %add5223460.i to i64
  %arrayidx526.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom525.i
  %503 = load double* %arrayidx526.i, align 8, !tbaa !4
  %add.ptr342.sum.i = add i64 %idxprom523.i, %idx.ext341.i
  %arrayidx528.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %add.ptr342.sum.i
  %504 = load double* %arrayidx528.i, align 8, !tbaa !4
  %add.ptr342.sum3461.i = add i64 %idxprom525.i, %idx.ext341.i
  %arrayidx530.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %add.ptr342.sum3461.i
  %505 = load double* %arrayidx530.i, align 8, !tbaa !4
  %arrayidx532.i = getelementptr inbounds i32* %489, i64 %indvars.iv3719.i
  %506 = load i32* %arrayidx532.i, align 4, !tbaa !3
  %mul533.i = shl nsw i32 %506, 1
  %add5343462.i = or i32 %mul533.i, 1
  %mul535.i142 = fmul double %xr00.1.i, %502
  %mul536.i143 = fmul double %xi00.1.i, %503
  %add537.i = fadd double %mul535.i142, %mul536.i143
  %mul538.i = fmul double %xr10.1.i, %504
  %add539.i = fadd double %add537.i, %mul538.i
  %mul540.i144 = fmul double %xi10.1.i, %505
  %add541.i145 = fadd double %add539.i, %mul540.i144
  %idxprom542.i = sext i32 %mul533.i to i64
  %arrayidx543.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom542.i
  %507 = load double* %arrayidx543.i, align 8, !tbaa !4
  %sub544.i = fsub double %507, %add541.i145
  store double %sub544.i, double* %arrayidx543.i, align 8, !tbaa !4
  %mul545.i = fmul double %xi00.1.i, %502
  %mul546.i = fmul double %xr00.1.i, %503
  %sub547.i = fsub double %mul545.i, %mul546.i
  %mul548.i146 = fmul double %xi10.1.i, %504
  %add549.i147 = fadd double %sub547.i, %mul548.i146
  %mul550.i = fmul double %xr10.1.i, %505
  %sub551.i = fsub double %add549.i147, %mul550.i
  %idxprom552.i = sext i32 %add5343462.i to i64
  %arrayidx553.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom552.i
  %508 = load double* %arrayidx553.i, align 8, !tbaa !4
  %sub554.i = fsub double %508, %sub551.i
  store double %sub554.i, double* %arrayidx553.i, align 8, !tbaa !4
  %mul555.i148 = fmul double %xr01.1.i, %502
  %mul556.i149 = fmul double %xi01.1.i, %503
  %add557.i150 = fadd double %mul555.i148, %mul556.i149
  %mul558.i = fmul double %xr11.1.i, %504
  %add559.i = fadd double %add557.i150, %mul558.i
  %mul560.i151 = fmul double %xi11.1.i, %505
  %add561.i = fadd double %add559.i, %mul560.i151
  %add.ptr11.sum3463.i152 = add i64 %idxprom542.i, %idx.ext10.i85
  %arrayidx563.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3463.i152
  %509 = load double* %arrayidx563.i, align 8, !tbaa !4
  %sub564.i = fsub double %509, %add561.i
  store double %sub564.i, double* %arrayidx563.i, align 8, !tbaa !4
  %mul565.i = fmul double %xi01.1.i, %502
  %mul566.i = fmul double %xr01.1.i, %503
  %sub567.i = fsub double %mul565.i, %mul566.i
  %mul568.i = fmul double %xi11.1.i, %504
  %add569.i = fadd double %sub567.i, %mul568.i
  %mul570.i = fmul double %xr11.1.i, %505
  %sub571.i = fsub double %add569.i, %mul570.i
  %add.ptr11.sum3464.i153 = add i64 %idxprom552.i, %idx.ext10.i85
  %arrayidx573.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3464.i153
  %510 = load double* %arrayidx573.i, align 8, !tbaa !4
  %sub574.i = fsub double %510, %sub571.i
  store double %sub574.i, double* %arrayidx573.i, align 8, !tbaa !4
  %mul575.i = fmul double %xr02.1.i, %502
  %mul576.i = fmul double %xi02.1.i, %503
  %add577.i = fadd double %mul575.i, %mul576.i
  %mul578.i = fmul double %xr12.1.i, %504
  %add579.i = fadd double %add577.i, %mul578.i
  %mul580.i = fmul double %xi12.1.i, %505
  %add581.i = fadd double %add579.i, %mul580.i
  %add.ptr14.sum3465.i154 = add i64 %idxprom542.i, %add.ptr11.sum.i86
  %arrayidx583.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3465.i154
  %511 = load double* %arrayidx583.i, align 8, !tbaa !4
  %sub584.i = fsub double %511, %add581.i
  store double %sub584.i, double* %arrayidx583.i, align 8, !tbaa !4
  %mul585.i = fmul double %xi02.1.i, %502
  %mul586.i = fmul double %xr02.1.i, %503
  %sub587.i = fsub double %mul585.i, %mul586.i
  %mul588.i = fmul double %xi12.1.i, %504
  %add589.i155 = fadd double %sub587.i, %mul588.i
  %mul590.i = fmul double %xr12.1.i, %505
  %sub591.i = fsub double %add589.i155, %mul590.i
  %add.ptr14.sum3466.i156 = add i64 %idxprom552.i, %add.ptr11.sum.i86
  %arrayidx593.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3466.i156
  %512 = load double* %arrayidx593.i, align 8, !tbaa !4
  %sub594.i = fsub double %512, %sub591.i
  store double %sub594.i, double* %arrayidx593.i, align 8, !tbaa !4
  %indvars.iv.next3720.i = add i64 %indvars.iv3719.i, 1
  %lftr.wideiv584 = trunc i64 %indvars.iv.next3720.i to i32
  %exitcond585 = icmp eq i32 %lftr.wideiv584, %483
  br i1 %exitcond585, label %if.end804.i, label %for.body520.i

if.else599.i:                                     ; preds = %for.end336.i
  %sub600.i = add nsw i32 %482, -1
  %cmp601.i = icmp eq i32 %icolAT.0.lcssa.i, %sub600.i
  %513 = load i32* %nrowX.i69, align 4, !tbaa !3
  br i1 %cmp601.i, label %if.then602.i, label %if.else599.if.end804_crit_edge.i

if.else599.if.end804_crit_edge.i:                 ; preds = %if.else599.i
  %.pre3732.i = load i32* %nrowY.i70, align 4, !tbaa !3
  br label %if.end804.i

if.then602.i:                                     ; preds = %if.else599.i
  %cmp603.i = icmp eq i32 %482, %513
  br i1 %cmp603.i, label %if.end698.i, label %if.else647.i

if.else647.i:                                     ; preds = %if.then602.i
  %idxprom648.i = sext i32 %icolAT.0.lcssa.i to i64
  %514 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx649.i = getelementptr inbounds i32* %514, i64 %idxprom648.i
  %515 = load i32* %arrayidx649.i, align 4, !tbaa !3
  br label %if.end698.i

if.end698.i:                                      ; preds = %if.then602.i, %if.else647.i
  %icolAT.0.sink.i = phi i32 [ %515, %if.else647.i ], [ %icolAT.0.lcssa.i, %if.then602.i ]
  %mul605.i = shl nsw i32 %icolAT.0.sink.i, 1
  %add6063444.sink.i = or i32 %mul605.i, 1
  %idxprom607.i = sext i32 %mul605.i to i64
  %idxprom609.i = sext i32 %add6063444.sink.i to i64
  %add.ptr8.sum3447.pn.i = add i64 %idxprom607.i, %add.ptr.sum.i83
  %add.ptr.sum3445.pn.i = add i64 %idxprom607.i, %idx.ext.i82
  %add.ptr8.sum3448.pn.i = add i64 %idxprom609.i, %add.ptr.sum.i83
  %add.ptr.sum3446.pn.i = add i64 %idxprom609.i, %idx.ext.i82
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
  %516 = load i32* %nrowY.i70, align 4, !tbaa !3
  %517 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %cmp699.i = icmp eq i32 %516, %517
  br i1 %cmp699.i, label %for.cond701.preheader.i, label %for.cond750.preheader.i

for.cond701.preheader.i:                          ; preds = %if.end698.i
  %cmp7023641.i = icmp sgt i32 %516, 0
  br i1 %cmp7023641.i, label %for.body703.i, label %if.end804.i

for.cond750.preheader.i:                          ; preds = %if.end698.i
  %cmp7513638.i = icmp sgt i32 %517, 0
  br i1 %cmp7513638.i, label %for.body752.lr.ph.i, label %if.end804.i

for.body752.lr.ph.i:                              ; preds = %for.cond750.preheader.i
  %518 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body752.i

for.body703.i:                                    ; preds = %for.cond701.preheader.i, %for.body703.i
  %indvars.iv3717.i = phi i64 [ %indvars.iv.next3718.i, %for.body703.i ], [ 0, %for.cond701.preheader.i ]
  %519 = trunc i64 %indvars.iv3717.i to i32
  %mul704.i157 = shl nsw i32 %519, 1
  %add7053439.i = or i32 %mul704.i157, 1
  %idxprom706.i = sext i32 %mul704.i157 to i64
  %arrayidx707.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom706.i
  %520 = load double* %arrayidx707.i, align 8, !tbaa !4
  %idxprom708.i = sext i32 %add7053439.i to i64
  %arrayidx709.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom708.i
  %521 = load double* %arrayidx709.i, align 8, !tbaa !4
  %mul710.i = fmul double %xr00.2.i, %520
  %mul711.i158 = fmul double %xi00.2.i, %521
  %add712.i = fadd double %mul710.i, %mul711.i158
  %arrayidx714.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom706.i
  %522 = load double* %arrayidx714.i, align 8, !tbaa !4
  %sub715.i = fsub double %522, %add712.i
  store double %sub715.i, double* %arrayidx714.i, align 8, !tbaa !4
  %mul716.i159 = fmul double %xi00.2.i, %520
  %mul717.i = fmul double %xr00.2.i, %521
  %sub718.i = fsub double %mul716.i159, %mul717.i
  %arrayidx720.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom708.i
  %523 = load double* %arrayidx720.i, align 8, !tbaa !4
  %sub721.i = fsub double %523, %sub718.i
  store double %sub721.i, double* %arrayidx720.i, align 8, !tbaa !4
  %mul722.i = fmul double %xr01.2.i, %520
  %mul723.i160 = fmul double %xi01.2.i, %521
  %add724.i = fadd double %mul722.i, %mul723.i160
  %add.ptr11.sum3440.i = add i64 %idxprom706.i, %idx.ext10.i85
  %arrayidx726.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3440.i
  %524 = load double* %arrayidx726.i, align 8, !tbaa !4
  %sub727.i = fsub double %524, %add724.i
  store double %sub727.i, double* %arrayidx726.i, align 8, !tbaa !4
  %mul728.i = fmul double %xi01.2.i, %520
  %mul729.i = fmul double %xr01.2.i, %521
  %sub730.i = fsub double %mul728.i, %mul729.i
  %add.ptr11.sum3441.i = add i64 %idxprom708.i, %idx.ext10.i85
  %arrayidx732.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3441.i
  %525 = load double* %arrayidx732.i, align 8, !tbaa !4
  %sub733.i = fsub double %525, %sub730.i
  store double %sub733.i, double* %arrayidx732.i, align 8, !tbaa !4
  %mul734.i161 = fmul double %xr02.2.i, %520
  %mul735.i = fmul double %xi02.2.i, %521
  %add736.i = fadd double %mul734.i161, %mul735.i
  %add.ptr14.sum3442.i = add i64 %idxprom706.i, %add.ptr11.sum.i86
  %arrayidx738.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3442.i
  %526 = load double* %arrayidx738.i, align 8, !tbaa !4
  %sub739.i = fsub double %526, %add736.i
  store double %sub739.i, double* %arrayidx738.i, align 8, !tbaa !4
  %mul740.i = fmul double %xi02.2.i, %520
  %mul741.i = fmul double %xr02.2.i, %521
  %sub742.i = fsub double %mul740.i, %mul741.i
  %add.ptr14.sum3443.i = add i64 %idxprom708.i, %add.ptr11.sum.i86
  %arrayidx744.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3443.i
  %527 = load double* %arrayidx744.i, align 8, !tbaa !4
  %sub745.i = fsub double %527, %sub742.i
  store double %sub745.i, double* %arrayidx744.i, align 8, !tbaa !4
  %indvars.iv.next3718.i = add i64 %indvars.iv3717.i, 1
  %lftr.wideiv582 = trunc i64 %indvars.iv.next3718.i to i32
  %exitcond583 = icmp eq i32 %lftr.wideiv582, %516
  br i1 %exitcond583, label %if.end804.i, label %for.body703.i

for.body752.i:                                    ; preds = %for.body752.i, %for.body752.lr.ph.i
  %indvars.iv3715.i = phi i64 [ 0, %for.body752.lr.ph.i ], [ %indvars.iv.next3716.i, %for.body752.i ]
  %528 = trunc i64 %indvars.iv3715.i to i32
  %mul753.i = shl nsw i32 %528, 1
  %add7543433.i = or i32 %mul753.i, 1
  %idxprom755.i = sext i32 %mul753.i to i64
  %arrayidx756.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom755.i
  %529 = load double* %arrayidx756.i, align 8, !tbaa !4
  %idxprom757.i = sext i32 %add7543433.i to i64
  %arrayidx758.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %idxprom757.i
  %530 = load double* %arrayidx758.i, align 8, !tbaa !4
  %arrayidx760.i = getelementptr inbounds i32* %518, i64 %indvars.iv3715.i
  %531 = load i32* %arrayidx760.i, align 4, !tbaa !3
  %mul761.i162 = shl nsw i32 %531, 1
  %add7623434.i = or i32 %mul761.i162, 1
  %mul763.i = fmul double %xr00.2.i, %529
  %mul764.i163 = fmul double %xi00.2.i, %530
  %add765.i = fadd double %mul763.i, %mul764.i163
  %idxprom766.i = sext i32 %mul761.i162 to i64
  %arrayidx767.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom766.i
  %532 = load double* %arrayidx767.i, align 8, !tbaa !4
  %sub768.i = fsub double %532, %add765.i
  store double %sub768.i, double* %arrayidx767.i, align 8, !tbaa !4
  %mul769.i164 = fmul double %xi00.2.i, %529
  %mul770.i = fmul double %xr00.2.i, %530
  %sub771.i = fsub double %mul769.i164, %mul770.i
  %idxprom772.i = sext i32 %add7623434.i to i64
  %arrayidx773.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom772.i
  %533 = load double* %arrayidx773.i, align 8, !tbaa !4
  %sub774.i = fsub double %533, %sub771.i
  store double %sub774.i, double* %arrayidx773.i, align 8, !tbaa !4
  %mul775.i = fmul double %xr01.2.i, %529
  %mul776.i165 = fmul double %xi01.2.i, %530
  %add777.i = fadd double %mul775.i, %mul776.i165
  %add.ptr11.sum3435.i = add i64 %idxprom766.i, %idx.ext10.i85
  %arrayidx779.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3435.i
  %534 = load double* %arrayidx779.i, align 8, !tbaa !4
  %sub780.i = fsub double %534, %add777.i
  store double %sub780.i, double* %arrayidx779.i, align 8, !tbaa !4
  %mul781.i = fmul double %xi01.2.i, %529
  %mul782.i = fmul double %xr01.2.i, %530
  %sub783.i = fsub double %mul781.i, %mul782.i
  %add.ptr11.sum3436.i = add i64 %idxprom772.i, %idx.ext10.i85
  %arrayidx785.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3436.i
  %535 = load double* %arrayidx785.i, align 8, !tbaa !4
  %sub786.i = fsub double %535, %sub783.i
  store double %sub786.i, double* %arrayidx785.i, align 8, !tbaa !4
  %mul787.i = fmul double %xr02.2.i, %529
  %mul788.i = fmul double %xi02.2.i, %530
  %add789.i = fadd double %mul787.i, %mul788.i
  %add.ptr14.sum3437.i = add i64 %idxprom766.i, %add.ptr11.sum.i86
  %arrayidx791.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3437.i
  %536 = load double* %arrayidx791.i, align 8, !tbaa !4
  %sub792.i = fsub double %536, %add789.i
  store double %sub792.i, double* %arrayidx791.i, align 8, !tbaa !4
  %mul793.i = fmul double %xi02.2.i, %529
  %mul794.i = fmul double %xr02.2.i, %530
  %sub795.i = fsub double %mul793.i, %mul794.i
  %add.ptr14.sum3438.i = add i64 %idxprom772.i, %add.ptr11.sum.i86
  %arrayidx797.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3438.i
  %537 = load double* %arrayidx797.i, align 8, !tbaa !4
  %sub798.i = fsub double %537, %sub795.i
  store double %sub798.i, double* %arrayidx797.i, align 8, !tbaa !4
  %indvars.iv.next3716.i = add i64 %indvars.iv3715.i, 1
  %lftr.wideiv580 = trunc i64 %indvars.iv.next3716.i to i32
  %exitcond581 = icmp eq i32 %lftr.wideiv580, %517
  br i1 %exitcond581, label %if.end804.i, label %for.body752.i

if.end804.i:                                      ; preds = %for.body443.i, %for.body520.i, %for.body703.i, %for.body752.i, %for.cond750.preheader.i, %for.cond701.preheader.i, %for.cond518.preheader.i, %for.cond441.preheader.i, %if.else599.if.end804_crit_edge.i
  %538 = phi i32 [ %.pre3732.i, %if.else599.if.end804_crit_edge.i ], [ %483, %for.cond441.preheader.i ], [ %488, %for.cond518.preheader.i ], [ %516, %for.cond701.preheader.i ], [ %516, %for.cond750.preheader.i ], [ %516, %for.body752.i ], [ %516, %for.body703.i ], [ %488, %for.body520.i ], [ %483, %for.body443.i ]
  %539 = phi i32 [ %513, %if.else599.if.end804_crit_edge.i ], [ %484, %for.cond441.preheader.i ], [ %484, %for.cond518.preheader.i ], [ %513, %for.cond701.preheader.i ], [ %513, %for.cond750.preheader.i ], [ %513, %for.body752.i ], [ %513, %for.body703.i ], [ %484, %for.body520.i ], [ %484, %for.body443.i ]
  %mul805.i = shl nsw i32 %539, 1
  %idx.ext806.i = sext i32 %mul805.i to i64
  %add.ptr8.sum.i166 = add i64 %idx.ext806.i, %add.ptr.sum.i83
  %add.ptr807.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum.i166
  %mul808.i = shl nsw i32 %538, 1
  %idx.ext809.i = sext i32 %mul808.i to i64
  %add.ptr14.sum.i167 = add i64 %idx.ext809.i, %add.ptr11.sum.i86
  %add.ptr810.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum.i167
  %540 = load i32* %ncolX.i66, align 4, !tbaa !3
  %sub.i = add nsw i32 %540, -2
  %cmp5.i168 = icmp slt i32 %jcolX.03665.i, %sub.i
  br i1 %cmp5.i168, label %if.end804.i.for.body.i87_crit_edge, label %for.end813.i

if.end804.i.for.body.i87_crit_edge:               ; preds = %if.end804.i
  %phitmp.i = add i32 %jcolX.03665.i, 3
  br label %for.body.i87

for.end813.i:                                     ; preds = %if.end804.i, %for.cond.preheader.i
  %sub.lcssa.i = phi i32 [ %sub3653.i, %for.cond.preheader.i ], [ %sub.i, %if.end804.i ]
  %.lcssa3652.i = phi i32 [ %435, %for.cond.preheader.i ], [ %540, %if.end804.i ]
  %jcolX.0.lcssa.i169 = phi i32 [ 0, %for.cond.preheader.i ], [ %jcolX.03665.i, %if.end804.i ]
  %colY0.0.lcssa.i170 = phi double* [ %430, %for.cond.preheader.i ], [ %add.ptr810.i, %if.end804.i ]
  %colX0.0.lcssa.i171 = phi double* [ %429, %for.cond.preheader.i ], [ %add.ptr807.i, %if.end804.i ]
  %cmp815.i = icmp eq i32 %jcolX.0.lcssa.i169, %sub.lcssa.i
  br i1 %cmp815.i, label %if.then816.i, label %if.else1427.i

if.then816.i:                                     ; preds = %for.end813.i
  %541 = load i32* %nrowX.i69, align 4, !tbaa !3
  %mul817.i = shl nsw i32 %541, 1
  %idx.ext818.i = sext i32 %mul817.i to i64
  %542 = load i32* %nrowY.i70, align 4, !tbaa !3
  %mul820.i = shl nsw i32 %542, 1
  %idx.ext821.i = sext i32 %mul820.i to i64
  %543 = load double** %entA.i60, align 8, !tbaa !0
  %544 = load i32* %ncolAT.i65, align 4, !tbaa !3
  %sub8243582.i = add nsw i32 %544, -2
  %cmp8253583.i = icmp sgt i32 %sub8243582.i, 0
  br i1 %cmp8253583.i, label %for.body826.lr.ph.i, label %for.end1070.i

for.body826.lr.ph.i:                              ; preds = %if.then816.i
  %.pre.i = load i32* %nrowAT.i68, align 4, !tbaa !3
  %mul827.i = shl nsw i32 %.pre.i, 1
  %idx.ext828.i = sext i32 %mul827.i to i64
  %add.ptr829.sum.i = shl nsw i64 %idx.ext828.i, 1
  %cmp833.i = icmp eq i32 %544, %541
  %cmp905.i = icmp eq i32 %542, %.pre.i
  %cmp9083580.i = icmp sgt i32 %.pre.i, 0
  %add.ptr832.sum.i = add i64 %add.ptr829.sum.i, %idx.ext828.i
  br label %for.body826.i

for.body826.i:                                    ; preds = %if.end1064.i, %for.body826.lr.ph.i
  %indvars.iv3683.i = phi i64 [ 0, %for.body826.lr.ph.i ], [ %indvars.iv.next3684.i, %if.end1064.i ]
  %icolAT.13588.i = phi i32 [ 0, %for.body826.lr.ph.i ], [ %add1069.i, %if.end1064.i ]
  %colAT0.13584.i = phi double* [ %543, %for.body826.lr.ph.i ], [ %add.ptr1067.i, %if.end1064.i ]
  br i1 %cmp833.i, label %if.then834.i, label %if.else865.i

if.then834.i:                                     ; preds = %for.body826.i
  %545 = trunc i64 %indvars.iv3683.i to i32
  %mul835.i = shl nsw i32 %545, 1
  %add8363419.i = or i32 %mul835.i, 1
  %add845.i = add nsw i32 %mul835.i, 2
  %add846.i = add nsw i32 %add8363419.i, 2
  %add855.i = add nsw i32 %mul835.i, 4
  %add856.i = add nsw i32 %add8363419.i, 4
  br label %if.end904.i

if.else865.i:                                     ; preds = %for.body826.i
  %546 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx867.i = getelementptr inbounds i32* %546, i64 %indvars.iv3683.i
  %547 = load i32* %arrayidx867.i, align 4, !tbaa !3
  %mul868.i = shl nsw i32 %547, 1
  %add8693395.i = or i32 %mul868.i, 1
  %548 = add nsw i64 %indvars.iv3683.i, 1
  %arrayidx880.i = getelementptr inbounds i32* %546, i64 %548
  %549 = load i32* %arrayidx880.i, align 4, !tbaa !3
  %mul881.i = shl nsw i32 %549, 1
  %add8823398.i = or i32 %mul881.i, 1
  %550 = add nsw i64 %indvars.iv3683.i, 2
  %arrayidx893.i = getelementptr inbounds i32* %546, i64 %550
  %551 = load i32* %arrayidx893.i, align 4, !tbaa !3
  %mul894.i = shl nsw i32 %551, 1
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
  %xr21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3424.pn.i
  %xr20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom857.i
  %xr11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3422.pn.i
  %xr10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom847.pn.i
  %xr01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3420.pn.i
  %xr00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom837.pn.i
  %xi21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3425.pn.i
  %xi20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom859.i
  %xi11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3423.pn.i
  %xi10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom849.pn.i
  %xi01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3421.pn.i
  %xi00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom839.pn.i
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
  %552 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body986.i

for.body909.i:                                    ; preds = %for.cond907.preheader.i, %for.body909.i
  %indvars.iv3679.i = phi i64 [ %indvars.iv.next3680.i, %for.body909.i ], [ 0, %for.cond907.preheader.i ]
  %553 = trunc i64 %indvars.iv3679.i to i32
  %mul910.i = shl nsw i32 %553, 1
  %add9113412.i = or i32 %mul910.i, 1
  %idxprom912.i = sext i32 %mul910.i to i64
  %arrayidx913.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom912.i
  %554 = load double* %arrayidx913.i, align 8, !tbaa !4
  %idxprom914.i = sext i32 %add9113412.i to i64
  %arrayidx915.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom914.i
  %555 = load double* %arrayidx915.i, align 8, !tbaa !4
  %add.ptr829.sum3413.i = add i64 %idxprom912.i, %idx.ext828.i
  %arrayidx917.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3413.i
  %556 = load double* %arrayidx917.i, align 8, !tbaa !4
  %add.ptr829.sum3414.i = add i64 %idxprom914.i, %idx.ext828.i
  %arrayidx919.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3414.i
  %557 = load double* %arrayidx919.i, align 8, !tbaa !4
  %add.ptr832.sum3415.i = add i64 %idxprom912.i, %add.ptr829.sum.i
  %arrayidx921.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3415.i
  %558 = load double* %arrayidx921.i, align 8, !tbaa !4
  %add.ptr832.sum3416.i = add i64 %idxprom914.i, %add.ptr829.sum.i
  %arrayidx923.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3416.i
  %559 = load double* %arrayidx923.i, align 8, !tbaa !4
  %mul924.i172 = fmul double %xr00.3.i, %554
  %mul925.i = fmul double %xi00.3.i, %555
  %add926.i173 = fadd double %mul924.i172, %mul925.i
  %mul927.i174 = fmul double %xr10.2.i, %556
  %add928.i = fadd double %add926.i173, %mul927.i174
  %mul929.i = fmul double %xi10.2.i, %557
  %add930.i175 = fadd double %add928.i, %mul929.i
  %mul931.i176 = fmul double %xr20.1.i, %558
  %add932.i = fadd double %add930.i175, %mul931.i176
  %mul933.i = fmul double %xi20.1.i, %559
  %add934.i177 = fadd double %add932.i, %mul933.i
  %arrayidx936.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom912.i
  %560 = load double* %arrayidx936.i, align 8, !tbaa !4
  %sub937.i178 = fsub double %560, %add934.i177
  store double %sub937.i178, double* %arrayidx936.i, align 8, !tbaa !4
  %mul938.i = fmul double %xi00.3.i, %554
  %mul939.i179 = fmul double %xr00.3.i, %555
  %sub940.i = fsub double %mul938.i, %mul939.i179
  %mul941.i = fmul double %xi10.2.i, %556
  %add942.i180 = fadd double %sub940.i, %mul941.i
  %mul943.i181 = fmul double %xr10.2.i, %557
  %sub944.i = fsub double %add942.i180, %mul943.i181
  %mul945.i = fmul double %xi20.1.i, %558
  %add946.i182 = fadd double %sub944.i, %mul945.i
  %mul947.i183 = fmul double %xr20.1.i, %559
  %sub948.i = fsub double %add946.i182, %mul947.i183
  %arrayidx950.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom914.i
  %561 = load double* %arrayidx950.i, align 8, !tbaa !4
  %sub951.i = fsub double %561, %sub948.i
  store double %sub951.i, double* %arrayidx950.i, align 8, !tbaa !4
  %mul952.i184 = fmul double %xr01.3.i, %554
  %mul953.i = fmul double %xi01.3.i, %555
  %add954.i185 = fadd double %mul952.i184, %mul953.i
  %mul955.i186 = fmul double %xr11.2.i, %556
  %add956.i = fadd double %add954.i185, %mul955.i186
  %mul957.i = fmul double %xi11.2.i, %557
  %add958.i187 = fadd double %add956.i, %mul957.i
  %mul959.i188 = fmul double %xr21.1.i, %558
  %add960.i = fadd double %add958.i187, %mul959.i188
  %mul961.i = fmul double %xi21.1.i, %559
  %add962.i189 = fadd double %add960.i, %mul961.i
  %add.ptr822.sum3417.i = add i64 %idxprom912.i, %idx.ext821.i
  %arrayidx964.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3417.i
  %562 = load double* %arrayidx964.i, align 8, !tbaa !4
  %sub965.i = fsub double %562, %add962.i189
  store double %sub965.i, double* %arrayidx964.i, align 8, !tbaa !4
  %mul966.i = fmul double %xi01.3.i, %554
  %mul967.i = fmul double %xr01.3.i, %555
  %sub968.i = fsub double %mul966.i, %mul967.i
  %mul969.i = fmul double %xi11.2.i, %556
  %add970.i = fadd double %sub968.i, %mul969.i
  %mul971.i = fmul double %xr11.2.i, %557
  %sub972.i = fsub double %add970.i, %mul971.i
  %mul973.i = fmul double %xi21.1.i, %558
  %add974.i = fadd double %sub972.i, %mul973.i
  %mul975.i = fmul double %xr21.1.i, %559
  %sub976.i = fsub double %add974.i, %mul975.i
  %add.ptr822.sum3418.i = add i64 %idxprom914.i, %idx.ext821.i
  %arrayidx978.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3418.i
  %563 = load double* %arrayidx978.i, align 8, !tbaa !4
  %sub979.i = fsub double %563, %sub976.i
  store double %sub979.i, double* %arrayidx978.i, align 8, !tbaa !4
  %indvars.iv.next3680.i = add i64 %indvars.iv3679.i, 1
  %lftr.wideiv562 = trunc i64 %indvars.iv.next3680.i to i32
  %exitcond563 = icmp eq i32 %lftr.wideiv562, %542
  br i1 %exitcond563, label %if.end1064.i, label %for.body909.i

for.body986.i:                                    ; preds = %for.body986.i, %for.body986.lr.ph.i
  %indvars.iv3677.i = phi i64 [ 0, %for.body986.lr.ph.i ], [ %indvars.iv.next3678.i, %for.body986.i ]
  %564 = trunc i64 %indvars.iv3677.i to i32
  %mul987.i = shl nsw i32 %564, 1
  %add9883404.i = or i32 %mul987.i, 1
  %idxprom989.i = sext i32 %mul987.i to i64
  %arrayidx990.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom989.i
  %565 = load double* %arrayidx990.i, align 8, !tbaa !4
  %idxprom991.i = sext i32 %add9883404.i to i64
  %arrayidx992.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom991.i
  %566 = load double* %arrayidx992.i, align 8, !tbaa !4
  %add.ptr829.sum3405.i = add i64 %idxprom989.i, %idx.ext828.i
  %arrayidx994.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3405.i
  %567 = load double* %arrayidx994.i, align 8, !tbaa !4
  %add.ptr829.sum3406.i = add i64 %idxprom991.i, %idx.ext828.i
  %arrayidx996.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3406.i
  %568 = load double* %arrayidx996.i, align 8, !tbaa !4
  %add.ptr832.sum3407.i = add i64 %idxprom989.i, %add.ptr829.sum.i
  %arrayidx998.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3407.i
  %569 = load double* %arrayidx998.i, align 8, !tbaa !4
  %add.ptr832.sum3408.i = add i64 %idxprom991.i, %add.ptr829.sum.i
  %arrayidx1000.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3408.i
  %570 = load double* %arrayidx1000.i, align 8, !tbaa !4
  %arrayidx1002.i = getelementptr inbounds i32* %552, i64 %indvars.iv3677.i
  %571 = load i32* %arrayidx1002.i, align 4, !tbaa !3
  %mul1003.i = shl nsw i32 %571, 1
  %add10043409.i = or i32 %mul1003.i, 1
  %mul1005.i190 = fmul double %xr00.3.i, %565
  %mul1006.i = fmul double %xi00.3.i, %566
  %add1007.i191 = fadd double %mul1005.i190, %mul1006.i
  %mul1008.i192 = fmul double %xr10.2.i, %567
  %add1009.i = fadd double %add1007.i191, %mul1008.i192
  %mul1010.i = fmul double %xi10.2.i, %568
  %add1011.i193 = fadd double %add1009.i, %mul1010.i
  %mul1012.i194 = fmul double %xr20.1.i, %569
  %add1013.i = fadd double %add1011.i193, %mul1012.i194
  %mul1014.i = fmul double %xi20.1.i, %570
  %add1015.i195 = fadd double %add1013.i, %mul1014.i
  %idxprom1016.i = sext i32 %mul1003.i to i64
  %arrayidx1017.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1016.i
  %572 = load double* %arrayidx1017.i, align 8, !tbaa !4
  %sub1018.i196 = fsub double %572, %add1015.i195
  store double %sub1018.i196, double* %arrayidx1017.i, align 8, !tbaa !4
  %mul1019.i = fmul double %xi00.3.i, %565
  %mul1020.i197 = fmul double %xr00.3.i, %566
  %sub1021.i = fsub double %mul1019.i, %mul1020.i197
  %mul1022.i = fmul double %xi10.2.i, %567
  %add1023.i198 = fadd double %sub1021.i, %mul1022.i
  %mul1024.i199 = fmul double %xr10.2.i, %568
  %sub1025.i = fsub double %add1023.i198, %mul1024.i199
  %mul1026.i = fmul double %xi20.1.i, %569
  %add1027.i200 = fadd double %sub1025.i, %mul1026.i
  %mul1028.i201 = fmul double %xr20.1.i, %570
  %sub1029.i = fsub double %add1027.i200, %mul1028.i201
  %idxprom1030.i = sext i32 %add10043409.i to i64
  %arrayidx1031.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1030.i
  %573 = load double* %arrayidx1031.i, align 8, !tbaa !4
  %sub1032.i = fsub double %573, %sub1029.i
  store double %sub1032.i, double* %arrayidx1031.i, align 8, !tbaa !4
  %mul1033.i202 = fmul double %xr01.3.i, %565
  %mul1034.i = fmul double %xi01.3.i, %566
  %add1035.i203 = fadd double %mul1033.i202, %mul1034.i
  %mul1036.i204 = fmul double %xr11.2.i, %567
  %add1037.i = fadd double %add1035.i203, %mul1036.i204
  %mul1038.i = fmul double %xi11.2.i, %568
  %add1039.i205 = fadd double %add1037.i, %mul1038.i
  %mul1040.i206 = fmul double %xr21.1.i, %569
  %add1041.i = fadd double %add1039.i205, %mul1040.i206
  %mul1042.i = fmul double %xi21.1.i, %570
  %add1043.i207 = fadd double %add1041.i, %mul1042.i
  %add.ptr822.sum3410.i = add i64 %idxprom1016.i, %idx.ext821.i
  %arrayidx1045.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3410.i
  %574 = load double* %arrayidx1045.i, align 8, !tbaa !4
  %sub1046.i = fsub double %574, %add1043.i207
  store double %sub1046.i, double* %arrayidx1045.i, align 8, !tbaa !4
  %mul1047.i = fmul double %xi01.3.i, %565
  %mul1048.i = fmul double %xr01.3.i, %566
  %sub1049.i = fsub double %mul1047.i, %mul1048.i
  %mul1050.i208 = fmul double %xi11.2.i, %567
  %add1051.i = fadd double %sub1049.i, %mul1050.i208
  %mul1052.i = fmul double %xr11.2.i, %568
  %sub1053.i = fsub double %add1051.i, %mul1052.i
  %mul1054.i = fmul double %xi21.1.i, %569
  %add1055.i = fadd double %sub1053.i, %mul1054.i
  %mul1056.i = fmul double %xr21.1.i, %570
  %sub1057.i209 = fsub double %add1055.i, %mul1056.i
  %add.ptr822.sum3411.i = add i64 %idxprom1030.i, %idx.ext821.i
  %arrayidx1059.i210 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3411.i
  %575 = load double* %arrayidx1059.i210, align 8, !tbaa !4
  %sub1060.i211 = fsub double %575, %sub1057.i209
  store double %sub1060.i211, double* %arrayidx1059.i210, align 8, !tbaa !4
  %indvars.iv.next3678.i = add i64 %indvars.iv3677.i, 1
  %lftr.wideiv560 = trunc i64 %indvars.iv.next3678.i to i32
  %exitcond561 = icmp eq i32 %lftr.wideiv560, %.pre.i
  br i1 %exitcond561, label %if.end1064.i, label %for.body986.i

if.end1064.i:                                     ; preds = %for.body909.i, %for.body986.i, %for.cond984.preheader.i, %for.cond907.preheader.i
  %add.ptr1067.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum.i
  %indvars.iv.next3684.i = add i64 %indvars.iv3683.i, 3
  %add1069.i = add nsw i32 %icolAT.13588.i, 3
  %576 = trunc i64 %indvars.iv.next3684.i to i32
  %cmp825.i = icmp slt i32 %576, %sub8243582.i
  br i1 %cmp825.i, label %for.body826.i, label %for.end1070.i

for.end1070.i:                                    ; preds = %if.end1064.i, %if.then816.i
  %icolAT.1.lcssa.i = phi i32 [ 0, %if.then816.i ], [ %add1069.i, %if.end1064.i ]
  %colAT0.1.lcssa.i = phi double* [ %543, %if.then816.i ], [ %add.ptr1067.i, %if.end1064.i ]
  %cmp1072.i = icmp eq i32 %icolAT.1.lcssa.i, %sub8243582.i
  br i1 %cmp1072.i, label %if.then1073.i, label %if.else1269.i

if.then1073.i:                                    ; preds = %for.end1070.i
  %577 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %mul1074.i = shl nsw i32 %577, 1
  %idx.ext1075.i = sext i32 %mul1074.i to i64
  %cmp1077.i = icmp eq i32 %544, %541
  br i1 %cmp1077.i, label %if.then1078.i, label %if.else1109.i

if.then1078.i:                                    ; preds = %if.then1073.i
  %mul1079.i = shl nsw i32 %sub8243582.i, 1
  %add10803390.i = or i32 %mul1079.i, 1
  %add1089.i = add nsw i32 %mul1079.i, 2
  %add1090.i = add nsw i32 %add10803390.i, 2
  br label %if.end1148.i

if.else1109.i:                                    ; preds = %if.then1073.i
  %idxprom1110.i = sext i32 %sub8243582.i to i64
  %578 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx1111.i212 = getelementptr inbounds i32* %578, i64 %idxprom1110.i
  %579 = load i32* %arrayidx1111.i212, align 4, !tbaa !3
  %mul1112.i213 = shl nsw i32 %579, 1
  %add11133373.i = or i32 %mul1112.i213, 1
  %add1122.i = add nsw i32 %544, -1
  %idxprom1123.i = sext i32 %add1122.i to i64
  %arrayidx1124.i214 = getelementptr inbounds i32* %578, i64 %idxprom1123.i
  %580 = load i32* %arrayidx1124.i214, align 4, !tbaa !3
  %mul1125.i = shl nsw i32 %580, 1
  %add11263376.i = or i32 %mul1125.i, 1
  br label %if.end1148.i

if.end1148.i:                                     ; preds = %if.else1109.i, %if.then1078.i
  %add1089.sink.i = phi i32 [ %add1089.i, %if.then1078.i ], [ %mul1125.i, %if.else1109.i ]
  %add1090.sink.i = phi i32 [ %add1090.i, %if.then1078.i ], [ %add11263376.i, %if.else1109.i ]
  %idxprom1083.pn.in.i = phi i32 [ %add10803390.i, %if.then1078.i ], [ %add11133373.i, %if.else1109.i ]
  %idxprom1081.pn.in.i = phi i32 [ %mul1079.i, %if.then1078.i ], [ %mul1112.i213, %if.else1109.i ]
  %idxprom1081.pn.i = sext i32 %idxprom1081.pn.in.i to i64
  %idxprom1083.pn.i = sext i32 %idxprom1083.pn.in.i to i64
  %idxprom1091.i = sext i32 %add1089.sink.i to i64
  %idxprom1093.i = sext i32 %add1090.sink.i to i64
  %add.ptr819.sum3393.pn.i = add i64 %idxprom1091.i, %idx.ext818.i
  %add.ptr819.sum3391.pn.i = add i64 %idxprom1081.pn.i, %idx.ext818.i
  %add.ptr819.sum3394.pn.i = add i64 %idxprom1093.i, %idx.ext818.i
  %add.ptr819.sum3392.pn.i = add i64 %idxprom1083.pn.i, %idx.ext818.i
  %xr11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3393.pn.i
  %xr10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1091.i
  %xr01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3391.pn.i
  %xr00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1081.pn.i
  %xi11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3394.pn.i
  %xi10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1093.i
  %xi01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3392.pn.i
  %xi00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1083.pn.i
  %xr11.3.i = load double* %xr11.3.in.i, align 8
  %xr10.3.i = load double* %xr10.3.in.i, align 8
  %xr01.4.i = load double* %xr01.4.in.i, align 8
  %xr00.4.i = load double* %xr00.4.in.i, align 8
  %xi11.3.i = load double* %xi11.3.in.i, align 8
  %xi10.3.i = load double* %xi10.3.in.i, align 8
  %xi01.4.i = load double* %xi01.4.in.i, align 8
  %xi00.4.i = load double* %xi00.4.in.i, align 8
  %cmp1149.i = icmp eq i32 %542, %577
  br i1 %cmp1149.i, label %for.cond1151.preheader.i, label %for.cond1208.preheader.i

for.cond1208.preheader.i:                         ; preds = %if.end1148.i
  %cmp12093569.i = icmp sgt i32 %577, 0
  br i1 %cmp12093569.i, label %for.body1210.lr.ph.i, label %sw.epilog

for.body1210.lr.ph.i:                             ; preds = %for.cond1208.preheader.i
  %581 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body1210.i

for.cond1151.preheader.i:                         ; preds = %if.end1148.i
  %cmp11523566.i = icmp sgt i32 %542, 0
  br i1 %cmp11523566.i, label %for.body1153.i, label %sw.epilog

for.body1153.i:                                   ; preds = %for.cond1151.preheader.i, %for.body1153.i
  %indvars.iv.i215 = phi i64 [ %indvars.iv.next.i218, %for.body1153.i ], [ 0, %for.cond1151.preheader.i ]
  %582 = trunc i64 %indvars.iv.i215 to i32
  %mul1154.i = shl nsw i32 %582, 1
  %add11553385.i = or i32 %mul1154.i, 1
  %idxprom1156.i = sext i32 %mul1154.i to i64
  %arrayidx1157.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1156.i
  %583 = load double* %arrayidx1157.i, align 8, !tbaa !4
  %idxprom1158.i = sext i32 %add11553385.i to i64
  %arrayidx1159.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1158.i
  %584 = load double* %arrayidx1159.i, align 8, !tbaa !4
  %add.ptr1076.sum3386.i = add i64 %idxprom1156.i, %idx.ext1075.i
  %arrayidx1161.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %add.ptr1076.sum3386.i
  %585 = load double* %arrayidx1161.i, align 8, !tbaa !4
  %add.ptr1076.sum3387.i = add i64 %idxprom1158.i, %idx.ext1075.i
  %arrayidx1163.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %add.ptr1076.sum3387.i
  %586 = load double* %arrayidx1163.i, align 8, !tbaa !4
  %mul1164.i = fmul double %xr00.4.i, %583
  %mul1165.i = fmul double %xi00.4.i, %584
  %add1166.i = fadd double %mul1164.i, %mul1165.i
  %mul1167.i = fmul double %xr10.3.i, %585
  %add1168.i = fadd double %add1166.i, %mul1167.i
  %mul1169.i = fmul double %xi10.3.i, %586
  %add1170.i = fadd double %add1168.i, %mul1169.i
  %arrayidx1172.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1156.i
  %587 = load double* %arrayidx1172.i, align 8, !tbaa !4
  %sub1173.i = fsub double %587, %add1170.i
  store double %sub1173.i, double* %arrayidx1172.i, align 8, !tbaa !4
  %mul1174.i = fmul double %xi00.4.i, %583
  %mul1175.i216 = fmul double %xr00.4.i, %584
  %sub1176.i = fsub double %mul1174.i, %mul1175.i216
  %mul1177.i = fmul double %xi10.3.i, %585
  %add1178.i = fadd double %sub1176.i, %mul1177.i
  %mul1179.i = fmul double %xr10.3.i, %586
  %sub1180.i = fsub double %add1178.i, %mul1179.i
  %arrayidx1182.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1158.i
  %588 = load double* %arrayidx1182.i, align 8, !tbaa !4
  %sub1183.i = fsub double %588, %sub1180.i
  store double %sub1183.i, double* %arrayidx1182.i, align 8, !tbaa !4
  %mul1184.i = fmul double %xr01.4.i, %583
  %mul1185.i = fmul double %xi01.4.i, %584
  %add1186.i = fadd double %mul1184.i, %mul1185.i
  %mul1187.i = fmul double %xr11.3.i, %585
  %add1188.i = fadd double %add1186.i, %mul1187.i
  %mul1189.i = fmul double %xi11.3.i, %586
  %add1190.i = fadd double %add1188.i, %mul1189.i
  %add.ptr822.sum3388.i = add i64 %idxprom1156.i, %idx.ext821.i
  %arrayidx1192.i217 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3388.i
  %589 = load double* %arrayidx1192.i217, align 8, !tbaa !4
  %sub1193.i = fsub double %589, %add1190.i
  store double %sub1193.i, double* %arrayidx1192.i217, align 8, !tbaa !4
  %mul1194.i = fmul double %xi01.4.i, %583
  %mul1195.i = fmul double %xr01.4.i, %584
  %sub1196.i = fsub double %mul1194.i, %mul1195.i
  %mul1197.i = fmul double %xi11.3.i, %585
  %add1198.i = fadd double %sub1196.i, %mul1197.i
  %mul1199.i = fmul double %xr11.3.i, %586
  %sub1200.i = fsub double %add1198.i, %mul1199.i
  %add.ptr822.sum3389.i = add i64 %idxprom1158.i, %idx.ext821.i
  %arrayidx1202.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3389.i
  %590 = load double* %arrayidx1202.i, align 8, !tbaa !4
  %sub1203.i = fsub double %590, %sub1200.i
  store double %sub1203.i, double* %arrayidx1202.i, align 8, !tbaa !4
  %indvars.iv.next.i218 = add i64 %indvars.iv.i215, 1
  %lftr.wideiv552 = trunc i64 %indvars.iv.next.i218 to i32
  %exitcond553 = icmp eq i32 %lftr.wideiv552, %542
  br i1 %exitcond553, label %sw.epilog, label %for.body1153.i

for.body1210.i:                                   ; preds = %for.body1210.i, %for.body1210.lr.ph.i
  %indvars.iv3671.i = phi i64 [ 0, %for.body1210.lr.ph.i ], [ %indvars.iv.next3672.i, %for.body1210.i ]
  %591 = trunc i64 %indvars.iv3671.i to i32
  %mul1211.i = shl nsw i32 %591, 1
  %add12123380.i = or i32 %mul1211.i, 1
  %idxprom1213.i = sext i32 %mul1211.i to i64
  %arrayidx1214.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1213.i
  %592 = load double* %arrayidx1214.i, align 8, !tbaa !4
  %idxprom1215.i = sext i32 %add12123380.i to i64
  %arrayidx1216.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1215.i
  %593 = load double* %arrayidx1216.i, align 8, !tbaa !4
  %add.ptr1076.sum.i = add i64 %idxprom1213.i, %idx.ext1075.i
  %arrayidx1218.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %add.ptr1076.sum.i
  %594 = load double* %arrayidx1218.i, align 8, !tbaa !4
  %add.ptr1076.sum3381.i = add i64 %idxprom1215.i, %idx.ext1075.i
  %arrayidx1220.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %add.ptr1076.sum3381.i
  %595 = load double* %arrayidx1220.i, align 8, !tbaa !4
  %arrayidx1222.i = getelementptr inbounds i32* %581, i64 %indvars.iv3671.i
  %596 = load i32* %arrayidx1222.i, align 4, !tbaa !3
  %mul1223.i = shl nsw i32 %596, 1
  %add12243382.i = or i32 %mul1223.i, 1
  %mul1225.i219 = fmul double %xr00.4.i, %592
  %mul1226.i220 = fmul double %xi00.4.i, %593
  %add1227.i221 = fadd double %mul1225.i219, %mul1226.i220
  %mul1228.i = fmul double %xr10.3.i, %594
  %add1229.i = fadd double %add1227.i221, %mul1228.i
  %mul1230.i222 = fmul double %xi10.3.i, %595
  %add1231.i = fadd double %add1229.i, %mul1230.i222
  %idxprom1232.i = sext i32 %mul1223.i to i64
  %arrayidx1233.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1232.i
  %597 = load double* %arrayidx1233.i, align 8, !tbaa !4
  %sub1234.i = fsub double %597, %add1231.i
  store double %sub1234.i, double* %arrayidx1233.i, align 8, !tbaa !4
  %mul1235.i = fmul double %xi00.4.i, %592
  %mul1236.i = fmul double %xr00.4.i, %593
  %sub1237.i = fsub double %mul1235.i, %mul1236.i
  %mul1238.i = fmul double %xi10.3.i, %594
  %add1239.i = fadd double %sub1237.i, %mul1238.i
  %mul1240.i223 = fmul double %xr10.3.i, %595
  %sub1241.i = fsub double %add1239.i, %mul1240.i223
  %idxprom1242.i224 = sext i32 %add12243382.i to i64
  %arrayidx1243.i225 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1242.i224
  %598 = load double* %arrayidx1243.i225, align 8, !tbaa !4
  %sub1244.i = fsub double %598, %sub1241.i
  store double %sub1244.i, double* %arrayidx1243.i225, align 8, !tbaa !4
  %mul1245.i = fmul double %xr01.4.i, %592
  %mul1246.i = fmul double %xi01.4.i, %593
  %add1247.i = fadd double %mul1245.i, %mul1246.i
  %mul1248.i = fmul double %xr11.3.i, %594
  %add1249.i = fadd double %add1247.i, %mul1248.i
  %mul1250.i = fmul double %xi11.3.i, %595
  %add1251.i = fadd double %add1249.i, %mul1250.i
  %add.ptr822.sum3383.i = add i64 %idxprom1232.i, %idx.ext821.i
  %arrayidx1253.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3383.i
  %599 = load double* %arrayidx1253.i, align 8, !tbaa !4
  %sub1254.i = fsub double %599, %add1251.i
  store double %sub1254.i, double* %arrayidx1253.i, align 8, !tbaa !4
  %mul1255.i = fmul double %xi01.4.i, %592
  %mul1256.i = fmul double %xr01.4.i, %593
  %sub1257.i = fsub double %mul1255.i, %mul1256.i
  %mul1258.i = fmul double %xi11.3.i, %594
  %add1259.i = fadd double %sub1257.i, %mul1258.i
  %mul1260.i = fmul double %xr11.3.i, %595
  %sub1261.i = fsub double %add1259.i, %mul1260.i
  %add.ptr822.sum3384.i = add i64 %idxprom1242.i224, %idx.ext821.i
  %arrayidx1263.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3384.i
  %600 = load double* %arrayidx1263.i, align 8, !tbaa !4
  %sub1264.i = fsub double %600, %sub1261.i
  store double %sub1264.i, double* %arrayidx1263.i, align 8, !tbaa !4
  %indvars.iv.next3672.i = add i64 %indvars.iv3671.i, 1
  %lftr.wideiv554 = trunc i64 %indvars.iv.next3672.i to i32
  %exitcond555 = icmp eq i32 %lftr.wideiv554, %577
  br i1 %exitcond555, label %sw.epilog, label %for.body1210.i

if.else1269.i:                                    ; preds = %for.end1070.i
  %sub1270.i = add nsw i32 %544, -1
  %cmp1271.i = icmp eq i32 %icolAT.1.lcssa.i, %sub1270.i
  br i1 %cmp1271.i, label %if.then1272.i, label %sw.epilog

if.then1272.i:                                    ; preds = %if.else1269.i
  %cmp1273.i = icmp eq i32 %544, %541
  br i1 %cmp1273.i, label %if.end1344.i, label %if.else1305.i

if.else1305.i:                                    ; preds = %if.then1272.i
  %idxprom1306.i = sext i32 %icolAT.1.lcssa.i to i64
  %601 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx1307.i = getelementptr inbounds i32* %601, i64 %idxprom1306.i
  %602 = load i32* %arrayidx1307.i, align 4, !tbaa !3
  br label %if.end1344.i

if.end1344.i:                                     ; preds = %if.then1272.i, %if.else1305.i
  %icolAT.1.sink.i = phi i32 [ %602, %if.else1305.i ], [ %icolAT.1.lcssa.i, %if.then1272.i ]
  %mul1275.i226 = shl nsw i32 %icolAT.1.sink.i, 1
  %add12763370.sink.i = or i32 %mul1275.i226, 1
  %idxprom1277.i = sext i32 %mul1275.i226 to i64
  %idxprom1279.i = sext i32 %add12763370.sink.i to i64
  %add.ptr819.sum3371.pn.i = add i64 %idxprom1277.i, %idx.ext818.i
  %add.ptr819.sum3372.pn.i = add i64 %idxprom1279.i, %idx.ext818.i
  %xr01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3371.pn.i
  %xr00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1277.i
  %xi01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %add.ptr819.sum3372.pn.i
  %xi00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1279.i
  %xr01.5.i = load double* %xr01.5.in.i, align 8
  %xr00.5.i = load double* %xr00.5.in.i, align 8
  %xi01.5.i = load double* %xi01.5.in.i, align 8
  %xi00.5.i = load double* %xi00.5.in.i, align 8
  %603 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %cmp1345.i = icmp eq i32 %542, %603
  br i1 %cmp1345.i, label %for.cond1347.preheader.i, label %for.cond1384.preheader.i

for.cond1384.preheader.i:                         ; preds = %if.end1344.i
  %cmp13853575.i = icmp sgt i32 %603, 0
  br i1 %cmp13853575.i, label %for.body1386.lr.ph.i, label %sw.epilog

for.body1386.lr.ph.i:                             ; preds = %for.cond1384.preheader.i
  %604 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body1386.i

for.cond1347.preheader.i:                         ; preds = %if.end1344.i
  %cmp13483572.i = icmp sgt i32 %542, 0
  br i1 %cmp13483572.i, label %for.body1349.i, label %sw.epilog

for.body1349.i:                                   ; preds = %for.cond1347.preheader.i, %for.body1349.i
  %indvars.iv3673.i = phi i64 [ %indvars.iv.next3674.i, %for.body1349.i ], [ 0, %for.cond1347.preheader.i ]
  %605 = trunc i64 %indvars.iv3673.i to i32
  %mul1350.i = shl nsw i32 %605, 1
  %add13513367.i = or i32 %mul1350.i, 1
  %idxprom1352.i = sext i32 %mul1350.i to i64
  %arrayidx1353.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1352.i
  %606 = load double* %arrayidx1353.i, align 8, !tbaa !4
  %idxprom1354.i = sext i32 %add13513367.i to i64
  %arrayidx1355.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1354.i
  %607 = load double* %arrayidx1355.i, align 8, !tbaa !4
  %mul1356.i = fmul double %xr00.5.i, %606
  %mul1357.i = fmul double %xi00.5.i, %607
  %add1358.i = fadd double %mul1356.i, %mul1357.i
  %arrayidx1360.i227 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1352.i
  %608 = load double* %arrayidx1360.i227, align 8, !tbaa !4
  %sub1361.i228 = fsub double %608, %add1358.i
  store double %sub1361.i228, double* %arrayidx1360.i227, align 8, !tbaa !4
  %mul1362.i = fmul double %xi00.5.i, %606
  %mul1363.i = fmul double %xr00.5.i, %607
  %sub1364.i229 = fsub double %mul1362.i, %mul1363.i
  %arrayidx1366.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1354.i
  %609 = load double* %arrayidx1366.i, align 8, !tbaa !4
  %sub1367.i = fsub double %609, %sub1364.i229
  store double %sub1367.i, double* %arrayidx1366.i, align 8, !tbaa !4
  %mul1368.i = fmul double %xr01.5.i, %606
  %mul1369.i = fmul double %xi01.5.i, %607
  %add1370.i = fadd double %mul1368.i, %mul1369.i
  %add.ptr822.sum3368.i = add i64 %idxprom1352.i, %idx.ext821.i
  %arrayidx1372.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3368.i
  %610 = load double* %arrayidx1372.i, align 8, !tbaa !4
  %sub1373.i = fsub double %610, %add1370.i
  store double %sub1373.i, double* %arrayidx1372.i, align 8, !tbaa !4
  %mul1374.i = fmul double %xi01.5.i, %606
  %mul1375.i = fmul double %xr01.5.i, %607
  %sub1376.i = fsub double %mul1374.i, %mul1375.i
  %add.ptr822.sum3369.i = add i64 %idxprom1354.i, %idx.ext821.i
  %arrayidx1378.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3369.i
  %611 = load double* %arrayidx1378.i, align 8, !tbaa !4
  %sub1379.i = fsub double %611, %sub1376.i
  store double %sub1379.i, double* %arrayidx1378.i, align 8, !tbaa !4
  %indvars.iv.next3674.i = add i64 %indvars.iv3673.i, 1
  %lftr.wideiv556 = trunc i64 %indvars.iv.next3674.i to i32
  %exitcond557 = icmp eq i32 %lftr.wideiv556, %542
  br i1 %exitcond557, label %sw.epilog, label %for.body1349.i

for.body1386.i:                                   ; preds = %for.body1386.i, %for.body1386.lr.ph.i
  %indvars.iv3675.i = phi i64 [ 0, %for.body1386.lr.ph.i ], [ %indvars.iv.next3676.i, %for.body1386.i ]
  %612 = trunc i64 %indvars.iv3675.i to i32
  %mul1387.i = shl nsw i32 %612, 1
  %add13883364.i = or i32 %mul1387.i, 1
  %idxprom1389.i = sext i32 %mul1387.i to i64
  %arrayidx1390.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1389.i
  %613 = load double* %arrayidx1390.i, align 8, !tbaa !4
  %idxprom1391.i = sext i32 %add13883364.i to i64
  %arrayidx1392.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %idxprom1391.i
  %614 = load double* %arrayidx1392.i, align 8, !tbaa !4
  %arrayidx1394.i = getelementptr inbounds i32* %604, i64 %indvars.iv3675.i
  %615 = load i32* %arrayidx1394.i, align 4, !tbaa !3
  %mul1395.i = shl nsw i32 %615, 1
  %add13963365.i = or i32 %mul1395.i, 1
  %mul1397.i = fmul double %xr00.5.i, %613
  %mul1398.i = fmul double %xi00.5.i, %614
  %add1399.i = fadd double %mul1397.i, %mul1398.i
  %idxprom1400.i = sext i32 %mul1395.i to i64
  %arrayidx1401.i230 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1400.i
  %616 = load double* %arrayidx1401.i230, align 8, !tbaa !4
  %sub1402.i = fsub double %616, %add1399.i
  store double %sub1402.i, double* %arrayidx1401.i230, align 8, !tbaa !4
  %mul1403.i231 = fmul double %xi00.5.i, %613
  %mul1404.i = fmul double %xr00.5.i, %614
  %sub1405.i = fsub double %mul1403.i231, %mul1404.i
  %idxprom1406.i = sext i32 %add13963365.i to i64
  %arrayidx1407.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1406.i
  %617 = load double* %arrayidx1407.i, align 8, !tbaa !4
  %sub1408.i232 = fsub double %617, %sub1405.i
  store double %sub1408.i232, double* %arrayidx1407.i, align 8, !tbaa !4
  %mul1409.i = fmul double %xr01.5.i, %613
  %mul1410.i233 = fmul double %xi01.5.i, %614
  %add1411.i = fadd double %mul1409.i, %mul1410.i233
  %add.ptr822.sum.i = add i64 %idxprom1400.i, %idx.ext821.i
  %arrayidx1413.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum.i
  %618 = load double* %arrayidx1413.i, align 8, !tbaa !4
  %sub1414.i = fsub double %618, %add1411.i
  store double %sub1414.i, double* %arrayidx1413.i, align 8, !tbaa !4
  %mul1415.i234 = fmul double %xi01.5.i, %613
  %mul1416.i = fmul double %xr01.5.i, %614
  %sub1417.i = fsub double %mul1415.i234, %mul1416.i
  %add.ptr822.sum3366.i = add i64 %idxprom1406.i, %idx.ext821.i
  %arrayidx1419.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %add.ptr822.sum3366.i
  %619 = load double* %arrayidx1419.i, align 8, !tbaa !4
  %sub1420.i = fsub double %619, %sub1417.i
  store double %sub1420.i, double* %arrayidx1419.i, align 8, !tbaa !4
  %indvars.iv.next3676.i = add i64 %indvars.iv3675.i, 1
  %lftr.wideiv558 = trunc i64 %indvars.iv.next3676.i to i32
  %exitcond559 = icmp eq i32 %lftr.wideiv558, %603
  br i1 %exitcond559, label %sw.epilog, label %for.body1386.i

if.else1427.i:                                    ; preds = %for.end813.i
  %sub1428.i = add nsw i32 %.lcssa3652.i, -1
  %cmp1429.i = icmp eq i32 %jcolX.0.lcssa.i169, %sub1428.i
  br i1 %cmp1429.i, label %if.then1430.i, label %sw.epilog

if.then1430.i:                                    ; preds = %if.else1427.i
  %620 = load double** %entA.i60, align 8, !tbaa !0
  %621 = load i32* %ncolAT.i65, align 4, !tbaa !3
  %sub14323610.i = add nsw i32 %621, -2
  %cmp14333611.i = icmp sgt i32 %sub14323610.i, 0
  br i1 %cmp14333611.i, label %for.body1434.lr.ph.i, label %for.end1598.i

for.body1434.lr.ph.i:                             ; preds = %if.then1430.i
  %.pre3725.i = load i32* %nrowAT.i68, align 4, !tbaa !3
  %.pre3726.i = load i32* %nrowX.i69, align 4, !tbaa !3
  %mul1435.i = shl nsw i32 %.pre3725.i, 1
  %idx.ext1436.i = sext i32 %mul1435.i to i64
  %add.ptr1437.sum.i = shl nsw i64 %idx.ext1436.i, 1
  %cmp1441.i = icmp eq i32 %621, %.pre3726.i
  %cmp14923607.i = icmp sgt i32 %.pre3725.i, 0
  %add.ptr1440.sum.i = add i64 %add.ptr1437.sum.i, %idx.ext1436.i
  br label %for.body1434.i

for.body1434.i:                                   ; preds = %if.end1592.i, %for.body1434.lr.ph.i
  %indvars.iv3701.i = phi i64 [ 0, %for.body1434.lr.ph.i ], [ %indvars.iv.next3702.i, %if.end1592.i ]
  %icolAT.23616.i = phi i32 [ 0, %for.body1434.lr.ph.i ], [ %add1597.i, %if.end1592.i ]
  %colAT0.23612.i = phi double* [ %620, %for.body1434.lr.ph.i ], [ %add.ptr1595.i, %if.end1592.i ]
  br i1 %cmp1441.i, label %if.then1442.i, label %if.else1461.i

if.then1442.i:                                    ; preds = %for.body1434.i
  %622 = trunc i64 %indvars.iv3701.i to i32
  %mul1443.i235 = shl nsw i32 %622, 1
  %add14443359.i = or i32 %mul1443.i235, 1
  %add1449.i = add nsw i32 %mul1443.i235, 2
  %add1450.i236 = add nsw i32 %add14443359.i, 2
  %add1455.i = add nsw i32 %mul1443.i235, 4
  %add1456.i = add nsw i32 %add14443359.i, 4
  br label %if.end1488.i

if.else1461.i:                                    ; preds = %for.body1434.i
  %623 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx1463.i = getelementptr inbounds i32* %623, i64 %indvars.iv3701.i
  %624 = load i32* %arrayidx1463.i, align 4, !tbaa !3
  %mul1464.i = shl nsw i32 %624, 1
  %add14653345.i = or i32 %mul1464.i, 1
  %625 = add nsw i64 %indvars.iv3701.i, 1
  %arrayidx1472.i = getelementptr inbounds i32* %623, i64 %625
  %626 = load i32* %arrayidx1472.i, align 4, !tbaa !3
  %mul1473.i = shl nsw i32 %626, 1
  %add14743346.i = or i32 %mul1473.i, 1
  %627 = add nsw i64 %indvars.iv3701.i, 2
  %arrayidx1481.i237 = getelementptr inbounds i32* %623, i64 %627
  %628 = load i32* %arrayidx1481.i237, align 4, !tbaa !3
  %mul1482.i238 = shl nsw i32 %628, 1
  %add14833347.i = or i32 %mul1482.i238, 1
  br label %if.end1488.i

if.end1488.i:                                     ; preds = %if.else1461.i, %if.then1442.i
  %idxprom1447.pn.in.i = phi i32 [ %add14443359.i, %if.then1442.i ], [ %add14653345.i, %if.else1461.i ]
  %idxprom1453.pn.in.i = phi i32 [ %add1450.i236, %if.then1442.i ], [ %add14743346.i, %if.else1461.i ]
  %idxprom1459.pn.in.i = phi i32 [ %add1456.i, %if.then1442.i ], [ %add14833347.i, %if.else1461.i ]
  %idxprom1445.pn.in.i = phi i32 [ %mul1443.i235, %if.then1442.i ], [ %mul1464.i, %if.else1461.i ]
  %idxprom1451.pn.in.i = phi i32 [ %add1449.i, %if.then1442.i ], [ %mul1473.i, %if.else1461.i ]
  %idxprom1457.pn.in.i = phi i32 [ %add1455.i, %if.then1442.i ], [ %mul1482.i238, %if.else1461.i ]
  %idxprom1457.pn.i = sext i32 %idxprom1457.pn.in.i to i64
  %idxprom1451.pn.i = sext i32 %idxprom1451.pn.in.i to i64
  %idxprom1445.pn.i = sext i32 %idxprom1445.pn.in.i to i64
  %idxprom1459.pn.i = sext i32 %idxprom1459.pn.in.i to i64
  %idxprom1453.pn.i = sext i32 %idxprom1453.pn.in.i to i64
  %idxprom1447.pn.i = sext i32 %idxprom1447.pn.in.i to i64
  %xr20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1457.pn.i
  %xr10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1451.pn.i
  %xr00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1445.pn.i
  %xi20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1459.pn.i
  %xi10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1453.pn.i
  %xi00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1447.pn.i
  %xr20.2.i = load double* %xr20.2.in.i, align 8
  %xr10.4.i = load double* %xr10.4.in.i, align 8
  %xr00.6.i = load double* %xr00.6.in.i, align 8
  %xi20.2.i = load double* %xi20.2.in.i, align 8
  %xi10.4.i = load double* %xi10.4.in.i, align 8
  %xi00.6.i = load double* %xi00.6.in.i, align 8
  %629 = load i32* %nrowY.i70, align 4, !tbaa !3
  %cmp1489.i = icmp eq i32 %629, %.pre3725.i
  br i1 %cmp1489.i, label %for.cond1491.preheader.i, label %for.cond1540.preheader.i

for.cond1491.preheader.i:                         ; preds = %if.end1488.i
  br i1 %cmp14923607.i, label %for.body1493.i, label %if.end1592.i

for.cond1540.preheader.i:                         ; preds = %if.end1488.i
  br i1 %cmp14923607.i, label %for.body1542.lr.ph.i, label %if.end1592.i

for.body1542.lr.ph.i:                             ; preds = %for.cond1540.preheader.i
  %630 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body1542.i

for.body1493.i:                                   ; preds = %for.cond1491.preheader.i, %for.body1493.i
  %indvars.iv3697.i = phi i64 [ %indvars.iv.next3698.i, %for.body1493.i ], [ 0, %for.cond1491.preheader.i ]
  %631 = trunc i64 %indvars.iv3697.i to i32
  %mul1494.i = shl nsw i32 %631, 1
  %add14953354.i = or i32 %mul1494.i, 1
  %idxprom1496.i = sext i32 %mul1494.i to i64
  %arrayidx1497.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1496.i
  %632 = load double* %arrayidx1497.i, align 8, !tbaa !4
  %idxprom1498.i = sext i32 %add14953354.i to i64
  %arrayidx1499.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1498.i
  %633 = load double* %arrayidx1499.i, align 8, !tbaa !4
  %add.ptr1437.sum3355.i = add i64 %idxprom1496.i, %idx.ext1436.i
  %arrayidx1501.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3355.i
  %634 = load double* %arrayidx1501.i, align 8, !tbaa !4
  %add.ptr1437.sum3356.i = add i64 %idxprom1498.i, %idx.ext1436.i
  %arrayidx1503.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3356.i
  %635 = load double* %arrayidx1503.i, align 8, !tbaa !4
  %add.ptr1440.sum3357.i = add i64 %idxprom1496.i, %add.ptr1437.sum.i
  %arrayidx1505.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3357.i
  %636 = load double* %arrayidx1505.i, align 8, !tbaa !4
  %add.ptr1440.sum3358.i = add i64 %idxprom1498.i, %add.ptr1437.sum.i
  %arrayidx1507.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3358.i
  %637 = load double* %arrayidx1507.i, align 8, !tbaa !4
  %mul1508.i = fmul double %xr00.6.i, %632
  %mul1509.i = fmul double %xi00.6.i, %633
  %add1510.i = fadd double %mul1508.i, %mul1509.i
  %mul1511.i = fmul double %xr10.4.i, %634
  %add1512.i = fadd double %add1510.i, %mul1511.i
  %mul1513.i = fmul double %xi10.4.i, %635
  %add1514.i = fadd double %add1512.i, %mul1513.i
  %mul1515.i = fmul double %xr20.2.i, %636
  %add1516.i = fadd double %add1514.i, %mul1515.i
  %mul1517.i = fmul double %xi20.2.i, %637
  %add1518.i = fadd double %add1516.i, %mul1517.i
  %arrayidx1520.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1496.i
  %638 = load double* %arrayidx1520.i, align 8, !tbaa !4
  %sub1521.i = fsub double %638, %add1518.i
  store double %sub1521.i, double* %arrayidx1520.i, align 8, !tbaa !4
  %mul1522.i = fmul double %xi00.6.i, %632
  %mul1523.i = fmul double %xr00.6.i, %633
  %sub1524.i = fsub double %mul1522.i, %mul1523.i
  %mul1525.i = fmul double %xi10.4.i, %634
  %add1526.i = fadd double %sub1524.i, %mul1525.i
  %mul1527.i239 = fmul double %xr10.4.i, %635
  %sub1528.i = fsub double %add1526.i, %mul1527.i239
  %mul1529.i = fmul double %xi20.2.i, %636
  %add1530.i = fadd double %sub1528.i, %mul1529.i
  %mul1531.i = fmul double %xr20.2.i, %637
  %sub1532.i = fsub double %add1530.i, %mul1531.i
  %arrayidx1534.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1498.i
  %639 = load double* %arrayidx1534.i, align 8, !tbaa !4
  %sub1535.i = fsub double %639, %sub1532.i
  store double %sub1535.i, double* %arrayidx1534.i, align 8, !tbaa !4
  %indvars.iv.next3698.i = add i64 %indvars.iv3697.i, 1
  %lftr.wideiv574 = trunc i64 %indvars.iv.next3698.i to i32
  %exitcond575 = icmp eq i32 %lftr.wideiv574, %.pre3725.i
  br i1 %exitcond575, label %if.end1592.i, label %for.body1493.i

for.body1542.i:                                   ; preds = %for.body1542.i, %for.body1542.lr.ph.i
  %indvars.iv3695.i = phi i64 [ 0, %for.body1542.lr.ph.i ], [ %indvars.iv.next3696.i, %for.body1542.i ]
  %640 = trunc i64 %indvars.iv3695.i to i32
  %mul1543.i = shl nsw i32 %640, 1
  %add15443348.i = or i32 %mul1543.i, 1
  %idxprom1545.i = sext i32 %mul1543.i to i64
  %arrayidx1546.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1545.i
  %641 = load double* %arrayidx1546.i, align 8, !tbaa !4
  %idxprom1547.i = sext i32 %add15443348.i to i64
  %arrayidx1548.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1547.i
  %642 = load double* %arrayidx1548.i, align 8, !tbaa !4
  %add.ptr1437.sum3349.i = add i64 %idxprom1545.i, %idx.ext1436.i
  %arrayidx1550.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3349.i
  %643 = load double* %arrayidx1550.i, align 8, !tbaa !4
  %add.ptr1437.sum3350.i = add i64 %idxprom1547.i, %idx.ext1436.i
  %arrayidx1552.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3350.i
  %644 = load double* %arrayidx1552.i, align 8, !tbaa !4
  %add.ptr1440.sum3351.i = add i64 %idxprom1545.i, %add.ptr1437.sum.i
  %arrayidx1554.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3351.i
  %645 = load double* %arrayidx1554.i, align 8, !tbaa !4
  %add.ptr1440.sum3352.i = add i64 %idxprom1547.i, %add.ptr1437.sum.i
  %arrayidx1556.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3352.i
  %646 = load double* %arrayidx1556.i, align 8, !tbaa !4
  %arrayidx1558.i = getelementptr inbounds i32* %630, i64 %indvars.iv3695.i
  %647 = load i32* %arrayidx1558.i, align 4, !tbaa !3
  %mul1559.i = shl nsw i32 %647, 1
  %add15603353.i = or i32 %mul1559.i, 1
  %mul1561.i240 = fmul double %xr00.6.i, %641
  %mul1562.i = fmul double %xi00.6.i, %642
  %add1563.i241 = fadd double %mul1561.i240, %mul1562.i
  %mul1564.i242 = fmul double %xr10.4.i, %643
  %add1565.i = fadd double %add1563.i241, %mul1564.i242
  %mul1566.i = fmul double %xi10.4.i, %644
  %add1567.i243 = fadd double %add1565.i, %mul1566.i
  %mul1568.i244 = fmul double %xr20.2.i, %645
  %add1569.i = fadd double %add1567.i243, %mul1568.i244
  %mul1570.i = fmul double %xi20.2.i, %646
  %add1571.i245 = fadd double %add1569.i, %mul1570.i
  %idxprom1572.i = sext i32 %mul1559.i to i64
  %arrayidx1573.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1572.i
  %648 = load double* %arrayidx1573.i, align 8, !tbaa !4
  %sub1574.i = fsub double %648, %add1571.i245
  store double %sub1574.i, double* %arrayidx1573.i, align 8, !tbaa !4
  %mul1575.i = fmul double %xi00.6.i, %641
  %mul1576.i246 = fmul double %xr00.6.i, %642
  %sub1577.i = fsub double %mul1575.i, %mul1576.i246
  %mul1578.i = fmul double %xi10.4.i, %643
  %add1579.i247 = fadd double %sub1577.i, %mul1578.i
  %mul1580.i = fmul double %xr10.4.i, %644
  %sub1581.i = fsub double %add1579.i247, %mul1580.i
  %mul1582.i = fmul double %xi20.2.i, %645
  %add1583.i = fadd double %sub1581.i, %mul1582.i
  %mul1584.i = fmul double %xr20.2.i, %646
  %sub1585.i = fsub double %add1583.i, %mul1584.i
  %idxprom1586.i = sext i32 %add15603353.i to i64
  %arrayidx1587.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1586.i
  %649 = load double* %arrayidx1587.i, align 8, !tbaa !4
  %sub1588.i = fsub double %649, %sub1585.i
  store double %sub1588.i, double* %arrayidx1587.i, align 8, !tbaa !4
  %indvars.iv.next3696.i = add i64 %indvars.iv3695.i, 1
  %lftr.wideiv572 = trunc i64 %indvars.iv.next3696.i to i32
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %.pre3725.i
  br i1 %exitcond573, label %if.end1592.i, label %for.body1542.i

if.end1592.i:                                     ; preds = %for.body1493.i, %for.body1542.i, %for.cond1540.preheader.i, %for.cond1491.preheader.i
  %add.ptr1595.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum.i
  %indvars.iv.next3702.i = add i64 %indvars.iv3701.i, 3
  %add1597.i = add nsw i32 %icolAT.23616.i, 3
  %650 = trunc i64 %indvars.iv.next3702.i to i32
  %cmp1433.i = icmp slt i32 %650, %sub14323610.i
  br i1 %cmp1433.i, label %for.body1434.i, label %for.end1598.i

for.end1598.i:                                    ; preds = %if.end1592.i, %if.then1430.i
  %icolAT.2.lcssa.i = phi i32 [ 0, %if.then1430.i ], [ %add1597.i, %if.end1592.i ]
  %colAT0.2.lcssa.i = phi double* [ %620, %if.then1430.i ], [ %add.ptr1595.i, %if.end1592.i ]
  %cmp1600.i = icmp eq i32 %icolAT.2.lcssa.i, %sub14323610.i
  br i1 %cmp1600.i, label %if.then1601.i, label %if.else1733.i

if.then1601.i:                                    ; preds = %for.end1598.i
  %651 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %mul1602.i = shl nsw i32 %651, 1
  %idx.ext1603.i = sext i32 %mul1602.i to i64
  %652 = load i32* %nrowX.i69, align 4, !tbaa !3
  %cmp1605.i = icmp eq i32 %621, %652
  br i1 %cmp1605.i, label %if.then1606.i, label %if.else1625.i

if.then1606.i:                                    ; preds = %if.then1601.i
  %mul1607.i = shl nsw i32 %sub14323610.i, 1
  %add16083344.i = or i32 %mul1607.i, 1
  %add1613.i = add nsw i32 %mul1607.i, 2
  %add1614.i = add nsw i32 %add16083344.i, 2
  br label %if.end1652.i

if.else1625.i:                                    ; preds = %if.then1601.i
  %idxprom1626.i = sext i32 %sub14323610.i to i64
  %653 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx1627.i = getelementptr inbounds i32* %653, i64 %idxprom1626.i
  %654 = load i32* %arrayidx1627.i, align 4, !tbaa !3
  %mul1628.i = shl nsw i32 %654, 1
  %add16293335.i = or i32 %mul1628.i, 1
  %add1634.i = add nsw i32 %621, -1
  %idxprom1635.i = sext i32 %add1634.i to i64
  %arrayidx1636.i = getelementptr inbounds i32* %653, i64 %idxprom1635.i
  %655 = load i32* %arrayidx1636.i, align 4, !tbaa !3
  %mul1637.i = shl nsw i32 %655, 1
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
  %xr10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1615.pn.i
  %xr00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1609.pn.i
  %xi10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1617.pn.i
  %xi00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1611.pn.i
  %xr10.5.i = load double* %xr10.5.in.i, align 8
  %xr00.7.i = load double* %xr00.7.in.i, align 8
  %xi10.5.i = load double* %xi10.5.in.i, align 8
  %xi00.7.i = load double* %xi00.7.in.i, align 8
  %656 = load i32* %nrowY.i70, align 4, !tbaa !3
  %cmp1653.i = icmp eq i32 %656, %651
  %cmp16563593.i = icmp sgt i32 %651, 0
  br i1 %cmp1653.i, label %for.cond1655.preheader.i, label %for.cond1692.preheader.i

for.cond1692.preheader.i:                         ; preds = %if.end1652.i
  br i1 %cmp16563593.i, label %for.body1694.lr.ph.i, label %sw.epilog

for.body1694.lr.ph.i:                             ; preds = %for.cond1692.preheader.i
  %657 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body1694.i

for.cond1655.preheader.i:                         ; preds = %if.end1652.i
  br i1 %cmp16563593.i, label %for.body1657.i, label %sw.epilog

for.body1657.i:                                   ; preds = %for.cond1655.preheader.i, %for.body1657.i
  %indvars.iv3687.i = phi i64 [ %indvars.iv.next3688.i, %for.body1657.i ], [ 0, %for.cond1655.preheader.i ]
  %658 = trunc i64 %indvars.iv3687.i to i32
  %mul1658.i = shl nsw i32 %658, 1
  %add16593341.i = or i32 %mul1658.i, 1
  %idxprom1660.i248 = sext i32 %mul1658.i to i64
  %arrayidx1661.i249 = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1660.i248
  %659 = load double* %arrayidx1661.i249, align 8, !tbaa !4
  %idxprom1662.i = sext i32 %add16593341.i to i64
  %arrayidx1663.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1662.i
  %660 = load double* %arrayidx1663.i, align 8, !tbaa !4
  %add.ptr1604.sum3342.i = add i64 %idxprom1660.i248, %idx.ext1603.i
  %arrayidx1665.i250 = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %add.ptr1604.sum3342.i
  %661 = load double* %arrayidx1665.i250, align 8, !tbaa !4
  %add.ptr1604.sum3343.i = add i64 %idxprom1662.i, %idx.ext1603.i
  %arrayidx1667.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %add.ptr1604.sum3343.i
  %662 = load double* %arrayidx1667.i, align 8, !tbaa !4
  %mul1668.i = fmul double %xr00.7.i, %659
  %mul1669.i = fmul double %xi00.7.i, %660
  %add1670.i = fadd double %mul1668.i, %mul1669.i
  %mul1671.i = fmul double %xr10.5.i, %661
  %add1672.i = fadd double %add1670.i, %mul1671.i
  %mul1673.i = fmul double %xi10.5.i, %662
  %add1674.i = fadd double %add1672.i, %mul1673.i
  %arrayidx1676.i251 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1660.i248
  %663 = load double* %arrayidx1676.i251, align 8, !tbaa !4
  %sub1677.i = fsub double %663, %add1674.i
  store double %sub1677.i, double* %arrayidx1676.i251, align 8, !tbaa !4
  %mul1678.i = fmul double %xi00.7.i, %659
  %mul1679.i = fmul double %xr00.7.i, %660
  %sub1680.i = fsub double %mul1678.i, %mul1679.i
  %mul1681.i = fmul double %xi10.5.i, %661
  %add1682.i = fadd double %sub1680.i, %mul1681.i
  %mul1683.i = fmul double %xr10.5.i, %662
  %sub1684.i252 = fsub double %add1682.i, %mul1683.i
  %arrayidx1686.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1662.i
  %664 = load double* %arrayidx1686.i, align 8, !tbaa !4
  %sub1687.i = fsub double %664, %sub1684.i252
  store double %sub1687.i, double* %arrayidx1686.i, align 8, !tbaa !4
  %indvars.iv.next3688.i = add i64 %indvars.iv3687.i, 1
  %lftr.wideiv564 = trunc i64 %indvars.iv.next3688.i to i32
  %exitcond565 = icmp eq i32 %lftr.wideiv564, %651
  br i1 %exitcond565, label %sw.epilog, label %for.body1657.i

for.body1694.i:                                   ; preds = %for.body1694.i, %for.body1694.lr.ph.i
  %indvars.iv3689.i = phi i64 [ 0, %for.body1694.lr.ph.i ], [ %indvars.iv.next3690.i, %for.body1694.i ]
  %665 = trunc i64 %indvars.iv3689.i to i32
  %mul1695.i = shl nsw i32 %665, 1
  %add16963338.i = or i32 %mul1695.i, 1
  %idxprom1697.i = sext i32 %mul1695.i to i64
  %arrayidx1698.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1697.i
  %666 = load double* %arrayidx1698.i, align 8, !tbaa !4
  %idxprom1699.i = sext i32 %add16963338.i to i64
  %arrayidx1700.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1699.i
  %667 = load double* %arrayidx1700.i, align 8, !tbaa !4
  %add.ptr1604.sum.i = add i64 %idxprom1697.i, %idx.ext1603.i
  %arrayidx1702.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %add.ptr1604.sum.i
  %668 = load double* %arrayidx1702.i, align 8, !tbaa !4
  %add.ptr1604.sum3339.i = add i64 %idxprom1699.i, %idx.ext1603.i
  %arrayidx1704.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %add.ptr1604.sum3339.i
  %669 = load double* %arrayidx1704.i, align 8, !tbaa !4
  %arrayidx1706.i = getelementptr inbounds i32* %657, i64 %indvars.iv3689.i
  %670 = load i32* %arrayidx1706.i, align 4, !tbaa !3
  %mul1707.i = shl nsw i32 %670, 1
  %add17083340.i = or i32 %mul1707.i, 1
  %mul1709.i = fmul double %xr00.7.i, %666
  %mul1710.i = fmul double %xi00.7.i, %667
  %add1711.i = fadd double %mul1709.i, %mul1710.i
  %mul1712.i = fmul double %xr10.5.i, %668
  %add1713.i = fadd double %add1711.i, %mul1712.i
  %mul1714.i = fmul double %xi10.5.i, %669
  %add1715.i = fadd double %add1713.i, %mul1714.i
  %idxprom1716.i = sext i32 %mul1707.i to i64
  %arrayidx1717.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1716.i
  %671 = load double* %arrayidx1717.i, align 8, !tbaa !4
  %sub1718.i = fsub double %671, %add1715.i
  store double %sub1718.i, double* %arrayidx1717.i, align 8, !tbaa !4
  %mul1719.i = fmul double %xi00.7.i, %666
  %mul1720.i = fmul double %xr00.7.i, %667
  %sub1721.i = fsub double %mul1719.i, %mul1720.i
  %mul1722.i253 = fmul double %xi10.5.i, %668
  %add1723.i = fadd double %sub1721.i, %mul1722.i253
  %mul1724.i = fmul double %xr10.5.i, %669
  %sub1725.i = fsub double %add1723.i, %mul1724.i
  %idxprom1726.i = sext i32 %add17083340.i to i64
  %arrayidx1727.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1726.i
  %672 = load double* %arrayidx1727.i, align 8, !tbaa !4
  %sub1728.i = fsub double %672, %sub1725.i
  store double %sub1728.i, double* %arrayidx1727.i, align 8, !tbaa !4
  %indvars.iv.next3690.i = add i64 %indvars.iv3689.i, 1
  %lftr.wideiv566 = trunc i64 %indvars.iv.next3690.i to i32
  %exitcond567 = icmp eq i32 %lftr.wideiv566, %651
  br i1 %exitcond567, label %sw.epilog, label %for.body1694.i

if.else1733.i:                                    ; preds = %for.end1598.i
  %sub1734.i = add nsw i32 %621, -1
  %cmp1735.i = icmp eq i32 %icolAT.2.lcssa.i, %sub1734.i
  br i1 %cmp1735.i, label %if.then1736.i, label %sw.epilog

if.then1736.i:                                    ; preds = %if.else1733.i
  %673 = load i32* %nrowX.i69, align 4, !tbaa !3
  %cmp1737.i = icmp eq i32 %621, %673
  br i1 %cmp1737.i, label %if.end1784.i, label %if.else1757.i

if.else1757.i:                                    ; preds = %if.then1736.i
  %idxprom1758.i = sext i32 %icolAT.2.lcssa.i to i64
  %674 = load i32** %colindAT.i71, align 8, !tbaa !0
  %arrayidx1759.i = getelementptr inbounds i32* %674, i64 %idxprom1758.i
  %675 = load i32* %arrayidx1759.i, align 4, !tbaa !3
  br label %if.end1784.i

if.end1784.i:                                     ; preds = %if.then1736.i, %if.else1757.i
  %icolAT.2.sink.i = phi i32 [ %675, %if.else1757.i ], [ %icolAT.2.lcssa.i, %if.then1736.i ]
  %mul1739.i = shl nsw i32 %icolAT.2.sink.i, 1
  %idxprom1743.pn.in.i = or i32 %mul1739.i, 1
  %idxprom1741.pn.i = sext i32 %mul1739.i to i64
  %idxprom1743.pn.i = sext i32 %idxprom1743.pn.in.i to i64
  %xr00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1741.pn.i
  %xi00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i171, i64 %idxprom1743.pn.i
  %xr00.8.i = load double* %xr00.8.in.i, align 8
  %xi00.8.i = load double* %xi00.8.in.i, align 8
  %676 = load i32* %nrowY.i70, align 4, !tbaa !3
  %677 = load i32* %nrowAT.i68, align 4, !tbaa !3
  %cmp1785.i = icmp eq i32 %676, %677
  br i1 %cmp1785.i, label %for.cond1787.preheader.i, label %for.cond1812.preheader.i

for.cond1812.preheader.i:                         ; preds = %if.end1784.i
  %cmp18133602.i = icmp sgt i32 %677, 0
  br i1 %cmp18133602.i, label %for.body1814.lr.ph.i, label %sw.epilog

for.body1814.lr.ph.i:                             ; preds = %for.cond1812.preheader.i
  %678 = load i32** %rowindAT.i72, align 8, !tbaa !0
  br label %for.body1814.i

for.cond1787.preheader.i:                         ; preds = %if.end1784.i
  %cmp17883599.i = icmp sgt i32 %676, 0
  br i1 %cmp17883599.i, label %for.body1789.i, label %sw.epilog

for.body1789.i:                                   ; preds = %for.cond1787.preheader.i, %for.body1789.i
  %indvars.iv3691.i = phi i64 [ %indvars.iv.next3692.i, %for.body1789.i ], [ 0, %for.cond1787.preheader.i ]
  %679 = trunc i64 %indvars.iv3691.i to i32
  %mul1790.i254 = shl nsw i32 %679, 1
  %add17913333.i = or i32 %mul1790.i254, 1
  %idxprom1792.i = sext i32 %mul1790.i254 to i64
  %arrayidx1793.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1792.i
  %680 = load double* %arrayidx1793.i, align 8, !tbaa !4
  %idxprom1794.i = sext i32 %add17913333.i to i64
  %arrayidx1795.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1794.i
  %681 = load double* %arrayidx1795.i, align 8, !tbaa !4
  %mul1796.i = fmul double %xr00.8.i, %680
  %mul1797.i255 = fmul double %xi00.8.i, %681
  %add1798.i = fadd double %mul1796.i, %mul1797.i255
  %arrayidx1800.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1792.i
  %682 = load double* %arrayidx1800.i, align 8, !tbaa !4
  %sub1801.i = fsub double %682, %add1798.i
  store double %sub1801.i, double* %arrayidx1800.i, align 8, !tbaa !4
  %mul1802.i = fmul double %xi00.8.i, %680
  %mul1803.i = fmul double %xr00.8.i, %681
  %sub1804.i = fsub double %mul1802.i, %mul1803.i
  %arrayidx1806.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1794.i
  %683 = load double* %arrayidx1806.i, align 8, !tbaa !4
  %sub1807.i = fsub double %683, %sub1804.i
  store double %sub1807.i, double* %arrayidx1806.i, align 8, !tbaa !4
  %indvars.iv.next3692.i = add i64 %indvars.iv3691.i, 1
  %lftr.wideiv568 = trunc i64 %indvars.iv.next3692.i to i32
  %exitcond569 = icmp eq i32 %lftr.wideiv568, %676
  br i1 %exitcond569, label %sw.epilog, label %for.body1789.i

for.body1814.i:                                   ; preds = %for.body1814.i, %for.body1814.lr.ph.i
  %indvars.iv3693.i = phi i64 [ 0, %for.body1814.lr.ph.i ], [ %indvars.iv.next3694.i, %for.body1814.i ]
  %684 = trunc i64 %indvars.iv3693.i to i32
  %mul1815.i = shl nsw i32 %684, 1
  %add18163331.i = or i32 %mul1815.i, 1
  %idxprom1817.i256 = sext i32 %mul1815.i to i64
  %arrayidx1818.i257 = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1817.i256
  %685 = load double* %arrayidx1818.i257, align 8, !tbaa !4
  %idxprom1819.i = sext i32 %add18163331.i to i64
  %arrayidx1820.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %idxprom1819.i
  %686 = load double* %arrayidx1820.i, align 8, !tbaa !4
  %arrayidx1822.i = getelementptr inbounds i32* %678, i64 %indvars.iv3693.i
  %687 = load i32* %arrayidx1822.i, align 4, !tbaa !3
  %mul1823.i = shl nsw i32 %687, 1
  %add18243332.i = or i32 %mul1823.i, 1
  %mul1825.i = fmul double %xr00.8.i, %685
  %mul1826.i258 = fmul double %xi00.8.i, %686
  %add1827.i = fadd double %mul1825.i, %mul1826.i258
  %idxprom1828.i259 = sext i32 %mul1823.i to i64
  %arrayidx1829.i260 = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1828.i259
  %688 = load double* %arrayidx1829.i260, align 8, !tbaa !4
  %sub1830.i261 = fsub double %688, %add1827.i
  store double %sub1830.i261, double* %arrayidx1829.i260, align 8, !tbaa !4
  %mul1831.i = fmul double %xi00.8.i, %685
  %mul1832.i = fmul double %xr00.8.i, %686
  %sub1833.i262 = fsub double %mul1831.i, %mul1832.i
  %idxprom1834.i = sext i32 %add18243332.i to i64
  %arrayidx1835.i = getelementptr inbounds double* %colY0.0.lcssa.i170, i64 %idxprom1834.i
  %689 = load double* %arrayidx1835.i, align 8, !tbaa !4
  %sub1836.i = fsub double %689, %sub1833.i262
  store double %sub1836.i, double* %arrayidx1835.i, align 8, !tbaa !4
  %indvars.iv.next3694.i = add i64 %indvars.iv3693.i, 1
  %lftr.wideiv570 = trunc i64 %indvars.iv.next3694.i to i32
  %exitcond571 = icmp eq i32 %lftr.wideiv570, %677
  br i1 %exitcond571, label %sw.epilog, label %for.body1814.i

sw.bb20:                                          ; preds = %if.end17
  %690 = bitcast double** %entA.i263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %690) #4
  %691 = bitcast double** %entX.i264 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %691) #4
  %692 = bitcast double** %entY.i265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %692) #4
  %693 = bitcast i32* %inc1.i266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %693) #4
  %694 = bitcast i32* %inc2.i267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %694) #4
  %695 = bitcast i32* %ncolAT.i268 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %695) #4
  %696 = bitcast i32* %ncolX.i269 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %696) #4
  %697 = bitcast i32* %ncolY.i270 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %697) #4
  %698 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %698) #4
  %699 = bitcast i32* %nrowAT.i271 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %699) #4
  %700 = bitcast i32* %nrowX.i272 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %700) #4
  %701 = bitcast i32* %nrowY.i273 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %701) #4
  %702 = bitcast i32** %colindAT.i274 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %702) #4
  %703 = bitcast i32** %indices.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %703) #4
  %704 = bitcast i32** %rowindAT.i275 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %704) #4
  %705 = bitcast i32** %sizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %705) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i273, i32* %ncolY.i270, i32* %inc1.i266, i32* %inc2.i267, double** %entY.i265) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i272, i32* %ncolX.i269, i32* %inc1.i266, i32* %inc2.i267, double** %entX.i264) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i268, i32* %nentA.i, i32** %sizes.i, i32** %indices.i, double** %entA.i263) #5
  %nrow.i = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %706 = load i32* %nrow.i, align 4, !tbaa !3
  store i32 %706, i32* %ncolAT.i268, align 4, !tbaa !3
  %707 = load i32* %nrowX.i272, align 4, !tbaa !3
  %cmp.i276 = icmp eq i32 %706, %707
  br i1 %cmp.i276, label %if.else.i278, label %if.then.i277

if.then.i277:                                     ; preds = %sw.bb20
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i268, i32** %colindAT.i274) #5
  br label %if.end.i280

if.else.i278:                                     ; preds = %sw.bb20
  store i32* null, i32** %colindAT.i274, align 8, !tbaa !0
  br label %if.end.i280

if.end.i280:                                      ; preds = %if.else.i278, %if.then.i277
  %ncol.i = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %708 = load i32* %ncol.i, align 4, !tbaa !3
  store i32 %708, i32* %nrowAT.i271, align 4, !tbaa !3
  %709 = load i32* %nrowY.i273, align 4, !tbaa !3
  %cmp1.i279 = icmp eq i32 %708, %709
  br i1 %cmp1.i279, label %if.else3.i282, label %if.then2.i281

if.then2.i281:                                    ; preds = %if.end.i280
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i271, i32** %rowindAT.i275) #5
  br label %if.end4.i283

if.else3.i282:                                    ; preds = %if.end.i280
  store i32* null, i32** %rowindAT.i275, align 8, !tbaa !0
  br label %if.end4.i283

if.end4.i283:                                     ; preds = %if.else3.i282, %if.then2.i281
  %710 = load double** %entX.i264, align 8, !tbaa !0
  %711 = load double** %entY.i265, align 8, !tbaa !0
  %712 = load i32* %ncolX.i269, align 4, !tbaa !3
  %sub679.i = add nsw i32 %712, -2
  %cmp5680.i = icmp sgt i32 %sub679.i, 0
  br i1 %cmp5680.i, label %for.body.lr.ph.i292, label %for.end162.i

for.body.lr.ph.i292:                              ; preds = %if.end4.i283
  %713 = load i32* %nrowX.i272, align 4, !tbaa !3
  %mul.i284 = shl nsw i32 %713, 1
  %idx.ext.i285 = sext i32 %mul.i284 to i64
  %add.ptr.sum.i286 = shl nsw i64 %idx.ext.i285, 1
  %714 = load i32* %nrowY.i273, align 4, !tbaa !3
  %mul9.i287 = shl nsw i32 %714, 1
  %idx.ext10.i288 = sext i32 %mul9.i287 to i64
  %add.ptr11.sum.i289 = shl nsw i64 %idx.ext10.i288, 1
  %715 = load i32* %ncolAT.i268, align 4, !tbaa !3
  %cmp16676.i = icmp sgt i32 %715, 0
  %add.ptr8.sum.i290 = add i64 %add.ptr.sum.i286, %idx.ext.i285
  %add.ptr14.sum.i291 = add i64 %add.ptr11.sum.i289, %idx.ext10.i288
  %716 = load i32** %sizes.i, align 8, !tbaa !0
  %717 = load i32* %nrowAT.i271, align 4, !tbaa !3
  %cmp39.i = icmp eq i32 %717, %714
  %718 = load double** %entA.i263, align 8, !tbaa !0
  %719 = load i32** %indices.i, align 8, !tbaa !0
  %720 = load i32** %rowindAT.i275, align 8, !tbaa !0
  %721 = load i32** %colindAT.i274, align 8, !tbaa !0
  %cmp20.i = icmp eq i32 %715, %713
  br label %for.body.i293

for.body.i293:                                    ; preds = %for.end153.i, %for.body.lr.ph.i292
  %colX0.0684.i = phi double* [ %710, %for.body.lr.ph.i292 ], [ %add.ptr156.i, %for.end153.i ]
  %colY0.0682.i = phi double* [ %711, %for.body.lr.ph.i292 ], [ %add.ptr159.i, %for.end153.i ]
  %jcolX.0681.i = phi i32 [ 0, %for.body.lr.ph.i292 ], [ %add161.i317, %for.end153.i ]
  br i1 %cmp16676.i, label %for.body17.i, label %for.end153.i

for.body17.i:                                     ; preds = %for.body.i293, %for.inc151.i
  %indvars.iv710.i = phi i64 [ %indvars.iv.next711.i, %for.inc151.i ], [ 0, %for.body.i293 ]
  %kk.0677.i = phi i32 [ %kk.3.i, %for.inc151.i ], [ 0, %for.body.i293 ]
  %arrayidx.i294 = getelementptr inbounds i32* %716, i64 %indvars.iv710.i
  %722 = load i32* %arrayidx.i294, align 4, !tbaa !3
  %cmp18.i = icmp sgt i32 %722, 0
  br i1 %cmp18.i, label %if.then19.i, label %for.inc151.i

if.then19.i:                                      ; preds = %for.body17.i
  %723 = trunc i64 %indvars.iv710.i to i32
  br i1 %cmp20.i, label %if.end25.i, label %if.else22.i

if.else22.i:                                      ; preds = %if.then19.i
  %arrayidx24.i = getelementptr inbounds i32* %721, i64 %indvars.iv710.i
  %724 = load i32* %arrayidx24.i, align 4, !tbaa !3
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then19.i
  %jrowX.0.i = phi i32 [ %724, %if.else22.i ], [ %723, %if.then19.i ]
  %mul26.i = shl nsw i32 %jrowX.0.i, 1
  %add626.i = or i32 %mul26.i, 1
  %idxprom27.i = sext i32 %mul26.i to i64
  %arrayidx28.i = getelementptr inbounds double* %colX0.0684.i, i64 %idxprom27.i
  %725 = load double* %arrayidx28.i, align 8, !tbaa !4
  %idxprom29.i = sext i32 %add626.i to i64
  %arrayidx30.i = getelementptr inbounds double* %colX0.0684.i, i64 %idxprom29.i
  %726 = load double* %arrayidx30.i, align 8, !tbaa !4
  %add.ptr.sum627.i = add i64 %idxprom27.i, %idx.ext.i285
  %arrayidx32.i295 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr.sum627.i
  %727 = load double* %arrayidx32.i295, align 8, !tbaa !4
  %add.ptr.sum628.i = add i64 %idxprom29.i, %idx.ext.i285
  %arrayidx34.i296 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr.sum628.i
  %728 = load double* %arrayidx34.i296, align 8, !tbaa !4
  %add.ptr8.sum629.i = add i64 %idxprom27.i, %add.ptr.sum.i286
  %arrayidx36.i297 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr8.sum629.i
  %729 = load double* %arrayidx36.i297, align 8, !tbaa !4
  %add.ptr8.sum630.i = add i64 %idxprom29.i, %add.ptr.sum.i286
  %arrayidx38.i298 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr8.sum630.i
  %730 = load double* %arrayidx38.i298, align 8, !tbaa !4
  %731 = sext i32 %kk.0677.i to i64
  br i1 %cmp39.i, label %for.body43.i, label %for.body95.i

for.body43.i:                                     ; preds = %if.end25.i, %for.body43.i
  %indvars.iv707.i = phi i64 [ %indvars.iv.next708.i, %for.body43.i ], [ %731, %if.end25.i ]
  %ii.0674.i = phi i32 [ %inc.i, %for.body43.i ], [ 0, %if.end25.i ]
  %732 = trunc i64 %indvars.iv707.i to i32
  %mul44.i = shl nsw i32 %732, 1
  %idxprom45.i = sext i32 %mul44.i to i64
  %arrayidx46.i299 = getelementptr inbounds double* %718, i64 %idxprom45.i
  %733 = load double* %arrayidx46.i299, align 8, !tbaa !4
  %add48637.i = or i32 %mul44.i, 1
  %idxprom49.i = sext i32 %add48637.i to i64
  %arrayidx50.i300 = getelementptr inbounds double* %718, i64 %idxprom49.i
  %734 = load double* %arrayidx50.i300, align 8, !tbaa !4
  %arrayidx52.i301 = getelementptr inbounds i32* %719, i64 %indvars.iv707.i
  %735 = load i32* %arrayidx52.i301, align 4, !tbaa !3
  %mul53.i302 = shl nsw i32 %735, 1
  %add54638.i = or i32 %mul53.i302, 1
  %mul55.i = fmul double %725, %733
  %mul56.i = fmul double %726, %734
  %add57.i = fadd double %mul55.i, %mul56.i
  %idxprom58.i = sext i32 %mul53.i302 to i64
  %arrayidx59.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom58.i
  %736 = load double* %arrayidx59.i, align 8, !tbaa !4
  %sub60.i = fsub double %736, %add57.i
  store double %sub60.i, double* %arrayidx59.i, align 8, !tbaa !4
  %mul61.i303 = fmul double %726, %733
  %mul62.i304 = fmul double %725, %734
  %sub63.i = fsub double %mul61.i303, %mul62.i304
  %idxprom64.i = sext i32 %add54638.i to i64
  %arrayidx65.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom64.i
  %737 = load double* %arrayidx65.i, align 8, !tbaa !4
  %sub66.i = fsub double %737, %sub63.i
  store double %sub66.i, double* %arrayidx65.i, align 8, !tbaa !4
  %mul67.i = fmul double %727, %733
  %mul68.i = fmul double %728, %734
  %add69.i = fadd double %mul67.i, %mul68.i
  %add.ptr11.sum639.i = add i64 %idxprom58.i, %idx.ext10.i288
  %arrayidx71.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum639.i
  %738 = load double* %arrayidx71.i, align 8, !tbaa !4
  %sub72.i = fsub double %738, %add69.i
  store double %sub72.i, double* %arrayidx71.i, align 8, !tbaa !4
  %mul73.i305 = fmul double %728, %733
  %mul74.i306 = fmul double %727, %734
  %sub75.i307 = fsub double %mul73.i305, %mul74.i306
  %add.ptr11.sum640.i = add i64 %idxprom64.i, %idx.ext10.i288
  %arrayidx77.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum640.i
  %739 = load double* %arrayidx77.i, align 8, !tbaa !4
  %sub78.i = fsub double %739, %sub75.i307
  store double %sub78.i, double* %arrayidx77.i, align 8, !tbaa !4
  %mul79.i = fmul double %729, %733
  %mul80.i = fmul double %730, %734
  %add81.i = fadd double %mul79.i, %mul80.i
  %add.ptr14.sum641.i = add i64 %idxprom58.i, %add.ptr11.sum.i289
  %arrayidx83.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum641.i
  %740 = load double* %arrayidx83.i, align 8, !tbaa !4
  %sub84.i = fsub double %740, %add81.i
  store double %sub84.i, double* %arrayidx83.i, align 8, !tbaa !4
  %mul85.i308 = fmul double %730, %733
  %mul86.i309 = fmul double %729, %734
  %sub87.i = fsub double %mul85.i308, %mul86.i309
  %add.ptr14.sum642.i = add i64 %idxprom64.i, %add.ptr11.sum.i289
  %arrayidx89.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum642.i
  %741 = load double* %arrayidx89.i, align 8, !tbaa !4
  %sub90.i = fsub double %741, %sub87.i
  store double %sub90.i, double* %arrayidx89.i, align 8, !tbaa !4
  %inc.i = add nsw i32 %ii.0674.i, 1
  %indvars.iv.next708.i = add i64 %indvars.iv707.i, 1
  %exitcond709.i = icmp eq i32 %inc.i, %722
  br i1 %exitcond709.i, label %for.inc151.loopexit671.i, label %for.body43.i

for.body95.i:                                     ; preds = %if.end25.i, %for.body95.i
  %indvars.iv704.i = phi i64 [ %indvars.iv.next705.i, %for.body95.i ], [ %731, %if.end25.i ]
  %ii.1669.i = phi i32 [ %inc146.i, %for.body95.i ], [ 0, %if.end25.i ]
  %742 = trunc i64 %indvars.iv704.i to i32
  %mul96.i = shl nsw i32 %742, 1
  %idxprom97.i = sext i32 %mul96.i to i64
  %arrayidx98.i = getelementptr inbounds double* %718, i64 %idxprom97.i
  %743 = load double* %arrayidx98.i, align 8, !tbaa !4
  %add100631.i = or i32 %mul96.i, 1
  %idxprom101.i = sext i32 %add100631.i to i64
  %arrayidx102.i310 = getelementptr inbounds double* %718, i64 %idxprom101.i
  %744 = load double* %arrayidx102.i310, align 8, !tbaa !4
  %arrayidx104.i = getelementptr inbounds i32* %719, i64 %indvars.iv704.i
  %745 = load i32* %arrayidx104.i, align 4, !tbaa !3
  %idxprom105.i = sext i32 %745 to i64
  %arrayidx106.i = getelementptr inbounds i32* %720, i64 %idxprom105.i
  %746 = load i32* %arrayidx106.i, align 4, !tbaa !3
  %mul107.i = shl nsw i32 %746, 1
  %add108632.i = or i32 %mul107.i, 1
  %mul109.i311 = fmul double %725, %743
  %mul110.i312 = fmul double %726, %744
  %add111.i313 = fadd double %mul109.i311, %mul110.i312
  %idxprom112.i = sext i32 %mul107.i to i64
  %arrayidx113.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom112.i
  %747 = load double* %arrayidx113.i, align 8, !tbaa !4
  %sub114.i = fsub double %747, %add111.i313
  store double %sub114.i, double* %arrayidx113.i, align 8, !tbaa !4
  %mul115.i = fmul double %726, %743
  %mul116.i = fmul double %725, %744
  %sub117.i = fsub double %mul115.i, %mul116.i
  %idxprom118.i = sext i32 %add108632.i to i64
  %arrayidx119.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom118.i
  %748 = load double* %arrayidx119.i, align 8, !tbaa !4
  %sub120.i = fsub double %748, %sub117.i
  store double %sub120.i, double* %arrayidx119.i, align 8, !tbaa !4
  %mul121.i314 = fmul double %727, %743
  %mul122.i315 = fmul double %728, %744
  %add123.i = fadd double %mul121.i314, %mul122.i315
  %add.ptr11.sum633.i = add i64 %idxprom112.i, %idx.ext10.i288
  %arrayidx125.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum633.i
  %749 = load double* %arrayidx125.i, align 8, !tbaa !4
  %sub126.i = fsub double %749, %add123.i
  store double %sub126.i, double* %arrayidx125.i, align 8, !tbaa !4
  %mul127.i = fmul double %728, %743
  %mul128.i = fmul double %727, %744
  %sub129.i = fsub double %mul127.i, %mul128.i
  %add.ptr11.sum634.i = add i64 %idxprom118.i, %idx.ext10.i288
  %arrayidx131.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum634.i
  %750 = load double* %arrayidx131.i, align 8, !tbaa !4
  %sub132.i = fsub double %750, %sub129.i
  store double %sub132.i, double* %arrayidx131.i, align 8, !tbaa !4
  %mul133.i = fmul double %729, %743
  %mul134.i = fmul double %730, %744
  %add135.i = fadd double %mul133.i, %mul134.i
  %add.ptr14.sum635.i = add i64 %idxprom112.i, %add.ptr11.sum.i289
  %arrayidx137.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum635.i
  %751 = load double* %arrayidx137.i, align 8, !tbaa !4
  %sub138.i = fsub double %751, %add135.i
  store double %sub138.i, double* %arrayidx137.i, align 8, !tbaa !4
  %mul139.i = fmul double %730, %743
  %mul140.i316 = fmul double %729, %744
  %sub141.i = fsub double %mul139.i, %mul140.i316
  %add.ptr14.sum636.i = add i64 %idxprom118.i, %add.ptr11.sum.i289
  %arrayidx143.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum636.i
  %752 = load double* %arrayidx143.i, align 8, !tbaa !4
  %sub144.i = fsub double %752, %sub141.i
  store double %sub144.i, double* %arrayidx143.i, align 8, !tbaa !4
  %inc146.i = add nsw i32 %ii.1669.i, 1
  %indvars.iv.next705.i = add i64 %indvars.iv704.i, 1
  %exitcond706.i = icmp eq i32 %inc146.i, %722
  br i1 %exitcond706.i, label %for.inc151.loopexit.i, label %for.body95.i

for.inc151.loopexit.i:                            ; preds = %for.body95.i
  %753 = add i32 %722, %kk.0677.i
  br label %for.inc151.i

for.inc151.loopexit671.i:                         ; preds = %for.body43.i
  %754 = add i32 %722, %kk.0677.i
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %for.inc151.loopexit671.i, %for.inc151.loopexit.i, %for.body17.i
  %kk.3.i = phi i32 [ %kk.0677.i, %for.body17.i ], [ %753, %for.inc151.loopexit.i ], [ %754, %for.inc151.loopexit671.i ]
  %indvars.iv.next711.i = add i64 %indvars.iv710.i, 1
  %lftr.wideiv593 = trunc i64 %indvars.iv.next711.i to i32
  %exitcond594 = icmp eq i32 %lftr.wideiv593, %715
  br i1 %exitcond594, label %for.end153.i, label %for.body17.i

for.end153.i:                                     ; preds = %for.inc151.i, %for.body.i293
  %add.ptr156.i = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr8.sum.i290
  %add.ptr159.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum.i291
  %add161.i317 = add nsw i32 %jcolX.0681.i, 3
  %cmp5.i318 = icmp slt i32 %add161.i317, %sub679.i
  br i1 %cmp5.i318, label %for.body.i293, label %for.end162.i

for.end162.i:                                     ; preds = %for.end153.i, %if.end4.i283
  %colX0.0.lcssa.i319 = phi double* [ %710, %if.end4.i283 ], [ %add.ptr156.i, %for.end153.i ]
  %colY0.0.lcssa.i320 = phi double* [ %711, %if.end4.i283 ], [ %add.ptr159.i, %for.end153.i ]
  %jcolX.0.lcssa.i321 = phi i32 [ 0, %if.end4.i283 ], [ %add161.i317, %for.end153.i ]
  %cmp164.i = icmp eq i32 %jcolX.0.lcssa.i321, %sub679.i
  br i1 %cmp164.i, label %if.then165.i, label %if.else297.i344

if.then165.i:                                     ; preds = %for.end162.i
  %755 = load i32* %nrowX.i272, align 4, !tbaa !3
  %mul174.i322 = shl nsw i32 %755, 1
  %idx.ext175.i = sext i32 %mul174.i322 to i64
  %756 = load i32* %nrowY.i273, align 4, !tbaa !3
  %mul177.i = shl nsw i32 %756, 1
  %idx.ext178.i = sext i32 %mul177.i to i64
  %757 = load i32* %ncolAT.i268, align 4, !tbaa !3
  %cmp181651.i = icmp sgt i32 %757, 0
  br i1 %cmp181651.i, label %for.body182.lr.ph.i, label %sw.epilog

for.body182.lr.ph.i:                              ; preds = %if.then165.i
  %758 = load i32** %sizes.i, align 8, !tbaa !0
  %759 = load i32* %nrowAT.i271, align 4, !tbaa !3
  %cmp203.i = icmp eq i32 %759, %756
  %760 = load double** %entA.i263, align 8, !tbaa !0
  %761 = load i32** %indices.i, align 8, !tbaa !0
  %762 = load i32** %rowindAT.i275, align 8, !tbaa !0
  %763 = load i32** %colindAT.i274, align 8, !tbaa !0
  %cmp187.i = icmp eq i32 %757, %755
  br label %for.body182.i

for.body182.i:                                    ; preds = %for.inc294.i, %for.body182.lr.ph.i
  %indvars.iv694.i = phi i64 [ 0, %for.body182.lr.ph.i ], [ %indvars.iv.next695.i, %for.inc294.i ]
  %kk.4652.i = phi i32 [ 0, %for.body182.lr.ph.i ], [ %kk.7.i, %for.inc294.i ]
  %arrayidx184.i = getelementptr inbounds i32* %758, i64 %indvars.iv694.i
  %764 = load i32* %arrayidx184.i, align 4, !tbaa !3
  %cmp185.i = icmp sgt i32 %764, 0
  br i1 %cmp185.i, label %if.then186.i, label %for.inc294.i

if.then186.i:                                     ; preds = %for.body182.i
  %765 = trunc i64 %indvars.iv694.i to i32
  br i1 %cmp187.i, label %if.end192.i, label %if.else189.i

if.else189.i:                                     ; preds = %if.then186.i
  %arrayidx191.i323 = getelementptr inbounds i32* %763, i64 %indvars.iv694.i
  %766 = load i32* %arrayidx191.i323, align 4, !tbaa !3
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else189.i, %if.then186.i
  %jrowX.1.i = phi i32 [ %766, %if.else189.i ], [ %765, %if.then186.i ]
  %mul193.i324 = shl nsw i32 %jrowX.1.i, 1
  %add194617.i = or i32 %mul193.i324, 1
  %idxprom195.i = sext i32 %mul193.i324 to i64
  %arrayidx196.i = getelementptr inbounds double* %colX0.0.lcssa.i319, i64 %idxprom195.i
  %767 = load double* %arrayidx196.i, align 8, !tbaa !4
  %idxprom197.i = sext i32 %add194617.i to i64
  %arrayidx198.i = getelementptr inbounds double* %colX0.0.lcssa.i319, i64 %idxprom197.i
  %768 = load double* %arrayidx198.i, align 8, !tbaa !4
  %add.ptr176.sum.i = add i64 %idxprom195.i, %idx.ext175.i
  %arrayidx200.i = getelementptr inbounds double* %colX0.0.lcssa.i319, i64 %add.ptr176.sum.i
  %769 = load double* %arrayidx200.i, align 8, !tbaa !4
  %add.ptr176.sum618.i = add i64 %idxprom197.i, %idx.ext175.i
  %arrayidx202.i = getelementptr inbounds double* %colX0.0.lcssa.i319, i64 %add.ptr176.sum618.i
  %770 = load double* %arrayidx202.i, align 8, !tbaa !4
  %771 = sext i32 %kk.4652.i to i64
  br i1 %cmp203.i, label %for.body207.i, label %for.body250.i

for.body207.i:                                    ; preds = %if.end192.i, %for.body207.i
  %indvars.iv691.i = phi i64 [ %indvars.iv.next692.i, %for.body207.i ], [ %771, %if.end192.i ]
  %ii.2649.i = phi i32 [ %inc244.i, %for.body207.i ], [ 0, %if.end192.i ]
  %772 = trunc i64 %indvars.iv691.i to i32
  %mul208.i325 = shl nsw i32 %772, 1
  %idxprom209.i = sext i32 %mul208.i325 to i64
  %arrayidx210.i = getelementptr inbounds double* %760, i64 %idxprom209.i
  %773 = load double* %arrayidx210.i, align 8, !tbaa !4
  %add212622.i = or i32 %mul208.i325, 1
  %idxprom213.i = sext i32 %add212622.i to i64
  %arrayidx214.i = getelementptr inbounds double* %760, i64 %idxprom213.i
  %774 = load double* %arrayidx214.i, align 8, !tbaa !4
  %arrayidx216.i = getelementptr inbounds i32* %761, i64 %indvars.iv691.i
  %775 = load i32* %arrayidx216.i, align 4, !tbaa !3
  %mul217.i = shl nsw i32 %775, 1
  %add218623.i = or i32 %mul217.i, 1
  %mul219.i326 = fmul double %767, %773
  %mul220.i327 = fmul double %768, %774
  %add221.i = fadd double %mul219.i326, %mul220.i327
  %idxprom222.i = sext i32 %mul217.i to i64
  %arrayidx223.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom222.i
  %776 = load double* %arrayidx223.i, align 8, !tbaa !4
  %sub224.i = fsub double %776, %add221.i
  store double %sub224.i, double* %arrayidx223.i, align 8, !tbaa !4
  %mul225.i328 = fmul double %768, %773
  %mul226.i = fmul double %767, %774
  %sub227.i = fsub double %mul225.i328, %mul226.i
  %idxprom228.i = sext i32 %add218623.i to i64
  %arrayidx229.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom228.i
  %777 = load double* %arrayidx229.i, align 8, !tbaa !4
  %sub230.i = fsub double %777, %sub227.i
  store double %sub230.i, double* %arrayidx229.i, align 8, !tbaa !4
  %mul231.i = fmul double %769, %773
  %mul232.i = fmul double %770, %774
  %add233.i = fadd double %mul231.i, %mul232.i
  %add.ptr179.sum624.i = add i64 %idxprom222.i, %idx.ext178.i
  %arrayidx235.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %add.ptr179.sum624.i
  %778 = load double* %arrayidx235.i, align 8, !tbaa !4
  %sub236.i = fsub double %778, %add233.i
  store double %sub236.i, double* %arrayidx235.i, align 8, !tbaa !4
  %mul237.i329 = fmul double %770, %773
  %mul238.i = fmul double %769, %774
  %sub239.i = fsub double %mul237.i329, %mul238.i
  %add.ptr179.sum625.i = add i64 %idxprom228.i, %idx.ext178.i
  %arrayidx241.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %add.ptr179.sum625.i
  %779 = load double* %arrayidx241.i, align 8, !tbaa !4
  %sub242.i = fsub double %779, %sub239.i
  store double %sub242.i, double* %arrayidx241.i, align 8, !tbaa !4
  %inc244.i = add nsw i32 %ii.2649.i, 1
  %indvars.iv.next692.i = add i64 %indvars.iv691.i, 1
  %exitcond693.i = icmp eq i32 %inc244.i, %764
  br i1 %exitcond693.i, label %for.inc294.loopexit646.i, label %for.body207.i

for.body250.i:                                    ; preds = %if.end192.i, %for.body250.i
  %indvars.iv.i330 = phi i64 [ %indvars.iv.next.i341, %for.body250.i ], [ %771, %if.end192.i ]
  %ii.3645.i = phi i32 [ %inc289.i, %for.body250.i ], [ 0, %if.end192.i ]
  %780 = trunc i64 %indvars.iv.i330 to i32
  %mul251.i = shl nsw i32 %780, 1
  %idxprom252.i = sext i32 %mul251.i to i64
  %arrayidx253.i = getelementptr inbounds double* %760, i64 %idxprom252.i
  %781 = load double* %arrayidx253.i, align 8, !tbaa !4
  %add255619.i = or i32 %mul251.i, 1
  %idxprom256.i = sext i32 %add255619.i to i64
  %arrayidx257.i = getelementptr inbounds double* %760, i64 %idxprom256.i
  %782 = load double* %arrayidx257.i, align 8, !tbaa !4
  %arrayidx259.i = getelementptr inbounds i32* %761, i64 %indvars.iv.i330
  %783 = load i32* %arrayidx259.i, align 4, !tbaa !3
  %idxprom260.i = sext i32 %783 to i64
  %arrayidx261.i = getelementptr inbounds i32* %762, i64 %idxprom260.i
  %784 = load i32* %arrayidx261.i, align 4, !tbaa !3
  %mul262.i331 = shl nsw i32 %784, 1
  %add263620.i = or i32 %mul262.i331, 1
  %mul264.i332 = fmul double %767, %781
  %mul265.i = fmul double %768, %782
  %add266.i = fadd double %mul264.i332, %mul265.i
  %idxprom267.i = sext i32 %mul262.i331 to i64
  %arrayidx268.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom267.i
  %785 = load double* %arrayidx268.i, align 8, !tbaa !4
  %sub269.i = fsub double %785, %add266.i
  store double %sub269.i, double* %arrayidx268.i, align 8, !tbaa !4
  %mul270.i = fmul double %768, %781
  %mul271.i333 = fmul double %767, %782
  %sub272.i = fsub double %mul270.i, %mul271.i333
  %idxprom273.i = sext i32 %add263620.i to i64
  %arrayidx274.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom273.i
  %786 = load double* %arrayidx274.i, align 8, !tbaa !4
  %sub275.i = fsub double %786, %sub272.i
  store double %sub275.i, double* %arrayidx274.i, align 8, !tbaa !4
  %mul276.i334 = fmul double %769, %781
  %mul277.i = fmul double %770, %782
  %add278.i335 = fadd double %mul276.i334, %mul277.i
  %add.ptr179.sum.i = add i64 %idxprom267.i, %idx.ext178.i
  %arrayidx280.i336 = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %add.ptr179.sum.i
  %787 = load double* %arrayidx280.i336, align 8, !tbaa !4
  %sub281.i337 = fsub double %787, %add278.i335
  store double %sub281.i337, double* %arrayidx280.i336, align 8, !tbaa !4
  %mul282.i = fmul double %770, %781
  %mul283.i = fmul double %769, %782
  %sub284.i338 = fsub double %mul282.i, %mul283.i
  %add.ptr179.sum621.i = add i64 %idxprom273.i, %idx.ext178.i
  %arrayidx286.i339 = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %add.ptr179.sum621.i
  %788 = load double* %arrayidx286.i339, align 8, !tbaa !4
  %sub287.i340 = fsub double %788, %sub284.i338
  store double %sub287.i340, double* %arrayidx286.i339, align 8, !tbaa !4
  %inc289.i = add nsw i32 %ii.3645.i, 1
  %indvars.iv.next.i341 = add i64 %indvars.iv.i330, 1
  %exitcond.i342 = icmp eq i32 %inc289.i, %764
  br i1 %exitcond.i342, label %for.inc294.loopexit.i, label %for.body250.i

for.inc294.loopexit.i:                            ; preds = %for.body250.i
  %789 = add i32 %764, %kk.4652.i
  br label %for.inc294.i

for.inc294.loopexit646.i:                         ; preds = %for.body207.i
  %790 = add i32 %764, %kk.4652.i
  br label %for.inc294.i

for.inc294.i:                                     ; preds = %for.inc294.loopexit646.i, %for.inc294.loopexit.i, %for.body182.i
  %kk.7.i = phi i32 [ %kk.4652.i, %for.body182.i ], [ %789, %for.inc294.loopexit.i ], [ %790, %for.inc294.loopexit646.i ]
  %indvars.iv.next695.i = add i64 %indvars.iv694.i, 1
  %lftr.wideiv589 = trunc i64 %indvars.iv.next695.i to i32
  %exitcond590 = icmp eq i32 %lftr.wideiv589, %757
  br i1 %exitcond590, label %sw.epilog, label %for.body182.i

if.else297.i344:                                  ; preds = %for.end162.i
  %sub298.i343 = add nsw i32 %712, -1
  %cmp299.i = icmp eq i32 %jcolX.0.lcssa.i321, %sub298.i343
  br i1 %cmp299.i, label %for.cond307.preheader.i, label %sw.epilog

for.cond307.preheader.i:                          ; preds = %if.else297.i344
  %791 = load i32* %ncolAT.i268, align 4, !tbaa !3
  %cmp308664.i = icmp sgt i32 %791, 0
  br i1 %cmp308664.i, label %for.body309.lr.ph.i, label %sw.epilog

for.body309.lr.ph.i:                              ; preds = %for.cond307.preheader.i
  %792 = load i32** %sizes.i, align 8, !tbaa !0
  %793 = load i32* %nrowX.i272, align 4, !tbaa !3
  %794 = load i32* %nrowAT.i271, align 4, !tbaa !3
  %795 = load i32* %nrowY.i273, align 4, !tbaa !3
  %cmp326.i = icmp eq i32 %794, %795
  %796 = load double** %entA.i263, align 8, !tbaa !0
  %797 = load i32** %indices.i, align 8, !tbaa !0
  %798 = load i32** %rowindAT.i275, align 8, !tbaa !0
  %799 = load i32** %colindAT.i274, align 8, !tbaa !0
  %cmp314.i = icmp eq i32 %791, %793
  br label %for.body309.i

for.body309.i:                                    ; preds = %for.inc393.i, %for.body309.lr.ph.i
  %indvars.iv702.i = phi i64 [ 0, %for.body309.lr.ph.i ], [ %indvars.iv.next703.i, %for.inc393.i ]
  %kk.8665.i = phi i32 [ 0, %for.body309.lr.ph.i ], [ %kk.11.i, %for.inc393.i ]
  %arrayidx311.i345 = getelementptr inbounds i32* %792, i64 %indvars.iv702.i
  %800 = load i32* %arrayidx311.i345, align 4, !tbaa !3
  %cmp312.i = icmp sgt i32 %800, 0
  br i1 %cmp312.i, label %if.then313.i, label %for.inc393.i

if.then313.i:                                     ; preds = %for.body309.i
  %801 = trunc i64 %indvars.iv702.i to i32
  br i1 %cmp314.i, label %if.end319.i, label %if.else316.i

if.else316.i:                                     ; preds = %if.then313.i
  %arrayidx318.i346 = getelementptr inbounds i32* %799, i64 %indvars.iv702.i
  %802 = load i32* %arrayidx318.i346, align 4, !tbaa !3
  br label %if.end319.i

if.end319.i:                                      ; preds = %if.else316.i, %if.then313.i
  %jrowX.2.i = phi i32 [ %802, %if.else316.i ], [ %801, %if.then313.i ]
  %mul320.i347 = shl nsw i32 %jrowX.2.i, 1
  %add321612.i = or i32 %mul320.i347, 1
  %idxprom322.i = sext i32 %mul320.i347 to i64
  %arrayidx323.i = getelementptr inbounds double* %colX0.0.lcssa.i319, i64 %idxprom322.i
  %803 = load double* %arrayidx323.i, align 8, !tbaa !4
  %idxprom324.i = sext i32 %add321612.i to i64
  %arrayidx325.i348 = getelementptr inbounds double* %colX0.0.lcssa.i319, i64 %idxprom324.i
  %804 = load double* %arrayidx325.i348, align 8, !tbaa !4
  %805 = sext i32 %kk.8665.i to i64
  br i1 %cmp326.i, label %for.body330.i, label %for.body361.i

for.body330.i:                                    ; preds = %if.end319.i, %for.body330.i
  %indvars.iv699.i = phi i64 [ %indvars.iv.next700.i, %for.body330.i ], [ %805, %if.end319.i ]
  %ii.4661.i = phi i32 [ %inc355.i, %for.body330.i ], [ 0, %if.end319.i ]
  %806 = trunc i64 %indvars.iv699.i to i32
  %mul331.i349 = shl nsw i32 %806, 1
  %idxprom332.i = sext i32 %mul331.i349 to i64
  %arrayidx333.i = getelementptr inbounds double* %796, i64 %idxprom332.i
  %807 = load double* %arrayidx333.i, align 8, !tbaa !4
  %add335615.i = or i32 %mul331.i349, 1
  %idxprom336.i = sext i32 %add335615.i to i64
  %arrayidx337.i = getelementptr inbounds double* %796, i64 %idxprom336.i
  %808 = load double* %arrayidx337.i, align 8, !tbaa !4
  %arrayidx339.i = getelementptr inbounds i32* %797, i64 %indvars.iv699.i
  %809 = load i32* %arrayidx339.i, align 4, !tbaa !3
  %mul340.i350 = shl nsw i32 %809, 1
  %add341616.i = or i32 %mul340.i350, 1
  %mul342.i = fmul double %803, %807
  %mul343.i = fmul double %804, %808
  %add344.i = fadd double %mul342.i, %mul343.i
  %idxprom345.i = sext i32 %mul340.i350 to i64
  %arrayidx346.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom345.i
  %810 = load double* %arrayidx346.i, align 8, !tbaa !4
  %sub347.i = fsub double %810, %add344.i
  store double %sub347.i, double* %arrayidx346.i, align 8, !tbaa !4
  %mul348.i = fmul double %804, %807
  %mul349.i = fmul double %803, %808
  %sub350.i351 = fsub double %mul348.i, %mul349.i
  %idxprom351.i352 = sext i32 %add341616.i to i64
  %arrayidx352.i353 = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom351.i352
  %811 = load double* %arrayidx352.i353, align 8, !tbaa !4
  %sub353.i354 = fsub double %811, %sub350.i351
  store double %sub353.i354, double* %arrayidx352.i353, align 8, !tbaa !4
  %inc355.i = add nsw i32 %ii.4661.i, 1
  %indvars.iv.next700.i = add i64 %indvars.iv699.i, 1
  %exitcond701.i = icmp eq i32 %inc355.i, %800
  br i1 %exitcond701.i, label %for.inc393.loopexit658.i, label %for.body330.i

for.body361.i:                                    ; preds = %if.end319.i, %for.body361.i
  %indvars.iv696.i = phi i64 [ %indvars.iv.next697.i, %for.body361.i ], [ %805, %if.end319.i ]
  %ii.5656.i = phi i32 [ %inc388.i, %for.body361.i ], [ 0, %if.end319.i ]
  %812 = trunc i64 %indvars.iv696.i to i32
  %mul362.i = shl nsw i32 %812, 1
  %idxprom363.i355 = sext i32 %mul362.i to i64
  %arrayidx364.i356 = getelementptr inbounds double* %796, i64 %idxprom363.i355
  %813 = load double* %arrayidx364.i356, align 8, !tbaa !4
  %add366613.i = or i32 %mul362.i, 1
  %idxprom367.i = sext i32 %add366613.i to i64
  %arrayidx368.i = getelementptr inbounds double* %796, i64 %idxprom367.i
  %814 = load double* %arrayidx368.i, align 8, !tbaa !4
  %arrayidx370.i = getelementptr inbounds i32* %797, i64 %indvars.iv696.i
  %815 = load i32* %arrayidx370.i, align 4, !tbaa !3
  %idxprom371.i = sext i32 %815 to i64
  %arrayidx372.i = getelementptr inbounds i32* %798, i64 %idxprom371.i
  %816 = load i32* %arrayidx372.i, align 4, !tbaa !3
  %mul373.i = shl nsw i32 %816, 1
  %add374614.i = or i32 %mul373.i, 1
  %mul375.i = fmul double %803, %813
  %mul376.i = fmul double %804, %814
  %add377.i = fadd double %mul375.i, %mul376.i
  %idxprom378.i = sext i32 %mul373.i to i64
  %arrayidx379.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom378.i
  %817 = load double* %arrayidx379.i, align 8, !tbaa !4
  %sub380.i = fsub double %817, %add377.i
  store double %sub380.i, double* %arrayidx379.i, align 8, !tbaa !4
  %mul381.i = fmul double %804, %813
  %mul382.i = fmul double %803, %814
  %sub383.i = fsub double %mul381.i, %mul382.i
  %idxprom384.i = sext i32 %add374614.i to i64
  %arrayidx385.i = getelementptr inbounds double* %colY0.0.lcssa.i320, i64 %idxprom384.i
  %818 = load double* %arrayidx385.i, align 8, !tbaa !4
  %sub386.i = fsub double %818, %sub383.i
  store double %sub386.i, double* %arrayidx385.i, align 8, !tbaa !4
  %inc388.i = add nsw i32 %ii.5656.i, 1
  %indvars.iv.next697.i = add i64 %indvars.iv696.i, 1
  %exitcond698.i = icmp eq i32 %inc388.i, %800
  br i1 %exitcond698.i, label %for.inc393.loopexit.i, label %for.body361.i

for.inc393.loopexit.i:                            ; preds = %for.body361.i
  %819 = add i32 %800, %kk.8665.i
  br label %for.inc393.i

for.inc393.loopexit658.i:                         ; preds = %for.body330.i
  %820 = add i32 %800, %kk.8665.i
  br label %for.inc393.i

for.inc393.i:                                     ; preds = %for.inc393.loopexit658.i, %for.inc393.loopexit.i, %for.body309.i
  %kk.11.i = phi i32 [ %kk.8665.i, %for.body309.i ], [ %819, %for.inc393.loopexit.i ], [ %820, %for.inc393.loopexit658.i ]
  %indvars.iv.next703.i = add i64 %indvars.iv702.i, 1
  %lftr.wideiv591 = trunc i64 %indvars.iv.next703.i to i32
  %exitcond592 = icmp eq i32 %lftr.wideiv591, %791
  br i1 %exitcond592, label %sw.epilog, label %for.body309.i

sw.bb21:                                          ; preds = %if.end17
  %821 = bitcast double** %entA.i357 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %821) #4
  %822 = bitcast double** %entX.i358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %822) #4
  %823 = bitcast double** %entY.i359 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %823) #4
  %824 = bitcast i32* %inc1.i360 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %824) #4
  %825 = bitcast i32* %inc2.i361 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %825) #4
  %826 = bitcast i32* %ncolAT.i362 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %826) #4
  %827 = bitcast i32* %ncolX.i363 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %827) #4
  %828 = bitcast i32* %ncolY.i364 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %828) #4
  %829 = bitcast i32* %nentA.i365 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %829) #4
  %830 = bitcast i32* %nrowAT.i366 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %830) #4
  %831 = bitcast i32* %nrowX.i367 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %831) #4
  %832 = bitcast i32* %nrowY.i368 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %832) #4
  %833 = bitcast i32** %colindAT.i369 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %833) #4
  %834 = bitcast i32** %indices.i370 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %834) #4
  %835 = bitcast i32** %rowindAT.i371 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %835) #4
  %836 = bitcast i32** %sizes.i372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %836) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i368, i32* %ncolY.i364, i32* %inc1.i360, i32* %inc2.i361, double** %entY.i359) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i367, i32* %ncolX.i363, i32* %inc1.i360, i32* %inc2.i361, double** %entX.i358) #5
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowAT.i366, i32* %nentA.i365, i32** %sizes.i372, i32** %indices.i370, double** %entA.i357) #5
  %nrow.i373 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %837 = load i32* %nrow.i373, align 4, !tbaa !3
  store i32 %837, i32* %ncolAT.i362, align 4, !tbaa !3
  %838 = load i32* %nrowX.i367, align 4, !tbaa !3
  %cmp.i374 = icmp eq i32 %837, %838
  br i1 %cmp.i374, label %if.else.i376, label %if.then.i375

if.then.i375:                                     ; preds = %sw.bb21
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i362, i32** %colindAT.i369) #5
  br label %if.end.i379

if.else.i376:                                     ; preds = %sw.bb21
  store i32* null, i32** %colindAT.i369, align 8, !tbaa !0
  br label %if.end.i379

if.end.i379:                                      ; preds = %if.else.i376, %if.then.i375
  %ncol.i377 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %839 = load i32* %ncol.i377, align 4, !tbaa !3
  store i32 %839, i32* %nrowAT.i366, align 4, !tbaa !3
  %840 = load i32* %nrowY.i368, align 4, !tbaa !3
  %cmp1.i378 = icmp eq i32 %839, %840
  br i1 %cmp1.i378, label %if.else3.i381, label %if.then2.i380

if.then2.i380:                                    ; preds = %if.end.i379
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i366, i32** %rowindAT.i371) #5
  br label %if.end4.i382

if.else3.i381:                                    ; preds = %if.end.i379
  store i32* null, i32** %rowindAT.i371, align 8, !tbaa !0
  br label %if.end4.i382

if.end4.i382:                                     ; preds = %if.else3.i381, %if.then2.i380
  %841 = load double** %entX.i358, align 8, !tbaa !0
  %842 = load double** %entY.i359, align 8, !tbaa !0
  %843 = load i32* %ncolX.i363, align 4, !tbaa !3
  %sub860.i = add nsw i32 %843, -2
  %cmp5861.i = icmp sgt i32 %sub860.i, 0
  br i1 %cmp5861.i, label %for.body.lr.ph.i392, label %for.end188.i

for.body.lr.ph.i392:                              ; preds = %if.end4.i382
  %844 = load i32* %nrowX.i367, align 4, !tbaa !3
  %mul.i383 = shl nsw i32 %844, 1
  %idx.ext.i384 = sext i32 %mul.i383 to i64
  %add.ptr.sum.i385 = shl nsw i64 %idx.ext.i384, 1
  %845 = load i32* %nrowY.i368, align 4, !tbaa !3
  %mul9.i386 = shl nsw i32 %845, 1
  %idx.ext10.i387 = sext i32 %mul9.i386 to i64
  %add.ptr11.sum.i388 = shl nsw i64 %idx.ext10.i387, 1
  %846 = load i32* %nrowAT.i366, align 4, !tbaa !3
  %cmp16856.i = icmp sgt i32 %846, 0
  %add.ptr8.sum.i389 = add i64 %add.ptr.sum.i385, %idx.ext.i384
  %add.ptr14.sum.i390 = add i64 %add.ptr11.sum.i388, %idx.ext10.i387
  %847 = load i32** %sizes.i372, align 8, !tbaa !0
  %848 = load i32* %ncolAT.i362, align 4, !tbaa !3
  %cmp20.i391 = icmp eq i32 %848, %844
  %cmp130.i = icmp eq i32 %846, %845
  %849 = load i32** %rowindAT.i371, align 8, !tbaa !0
  %850 = load double** %entA.i357, align 8, !tbaa !0
  %851 = load i32** %indices.i370, align 8, !tbaa !0
  %852 = load i32** %colindAT.i369, align 8, !tbaa !0
  br label %for.body.i393

for.body.i393:                                    ; preds = %for.end179.i, %for.body.lr.ph.i392
  %jcolX.0866.i = phi i32 [ 0, %for.body.lr.ph.i392 ], [ %add187.i446, %for.end179.i ]
  %colX0.0864.i = phi double* [ %841, %for.body.lr.ph.i392 ], [ %add.ptr182.i, %for.end179.i ]
  %colY0.0862.i = phi double* [ %842, %for.body.lr.ph.i392 ], [ %add.ptr185.i, %for.end179.i ]
  br i1 %cmp16856.i, label %for.body17.i396, label %for.end179.i

for.body17.i396:                                  ; preds = %for.body.i393, %for.inc177.i
  %indvars.iv891.i = phi i64 [ %indvars.iv.next892.i, %for.inc177.i ], [ 0, %for.body.i393 ]
  %kk.0859.i = phi i32 [ %kk.4.i, %for.inc177.i ], [ 0, %for.body.i393 ]
  %arrayidx.i394 = getelementptr inbounds i32* %847, i64 %indvars.iv891.i
  %853 = load i32* %arrayidx.i394, align 4, !tbaa !3
  %cmp18.i395 = icmp sgt i32 %853, 0
  br i1 %cmp18.i395, label %if.then19.i397, label %for.inc177.i

if.then19.i397:                                   ; preds = %for.body17.i396
  %854 = sext i32 %kk.0859.i to i64
  br i1 %cmp20.i391, label %for.body24.i, label %for.body75.i

for.body24.i:                                     ; preds = %if.then19.i397, %for.body24.i
  %indvars.iv888.i = phi i64 [ %indvars.iv.next889.i, %for.body24.i ], [ %854, %if.then19.i397 ]
  %rsum2.0848.i = phi double [ %add66.i, %for.body24.i ], [ 0.000000e+00, %if.then19.i397 ]
  %rsum1.0847.i = phi double [ %add58.i, %for.body24.i ], [ 0.000000e+00, %if.then19.i397 ]
  %rsum0.0846.i = phi double [ %add50.i, %for.body24.i ], [ 0.000000e+00, %if.then19.i397 ]
  %isum2.0845.i = phi double [ %add70.i, %for.body24.i ], [ 0.000000e+00, %if.then19.i397 ]
  %isum1.0844.i = phi double [ %add62.i, %for.body24.i ], [ 0.000000e+00, %if.then19.i397 ]
  %isum0.0843.i = phi double [ %add54.i, %for.body24.i ], [ 0.000000e+00, %if.then19.i397 ]
  %ii.0841.i = phi i32 [ %inc.i413, %for.body24.i ], [ 0, %if.then19.i397 ]
  %855 = trunc i64 %indvars.iv888.i to i32
  %mul25.i = shl nsw i32 %855, 1
  %idxprom26.i = sext i32 %mul25.i to i64
  %arrayidx27.i = getelementptr inbounds double* %850, i64 %idxprom26.i
  %856 = load double* %arrayidx27.i, align 8, !tbaa !4
  %add767.i398 = or i32 %mul25.i, 1
  %idxprom29.i399 = sext i32 %add767.i398 to i64
  %arrayidx30.i400 = getelementptr inbounds double* %850, i64 %idxprom29.i399
  %857 = load double* %arrayidx30.i400, align 8, !tbaa !4
  %arrayidx32.i401 = getelementptr inbounds i32* %851, i64 %indvars.iv888.i
  %858 = load i32* %arrayidx32.i401, align 4, !tbaa !3
  %mul33.i = shl nsw i32 %858, 1
  %add34768.i = or i32 %mul33.i, 1
  %idxprom35.i = sext i32 %mul33.i to i64
  %arrayidx36.i402 = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom35.i
  %859 = load double* %arrayidx36.i402, align 8, !tbaa !4
  %idxprom37.i = sext i32 %add34768.i to i64
  %arrayidx38.i403 = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom37.i
  %860 = load double* %arrayidx38.i403, align 8, !tbaa !4
  %add.ptr.sum769.i = add i64 %idxprom35.i, %idx.ext.i384
  %arrayidx40.i404 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum769.i
  %861 = load double* %arrayidx40.i404, align 8, !tbaa !4
  %add.ptr.sum770.i = add i64 %idxprom37.i, %idx.ext.i384
  %arrayidx42.i405 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum770.i
  %862 = load double* %arrayidx42.i405, align 8, !tbaa !4
  %add.ptr8.sum771.i = add i64 %idxprom35.i, %add.ptr.sum.i385
  %arrayidx44.i406 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum771.i
  %863 = load double* %arrayidx44.i406, align 8, !tbaa !4
  %add.ptr8.sum772.i = add i64 %idxprom37.i, %add.ptr.sum.i385
  %arrayidx46.i407 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum772.i
  %864 = load double* %arrayidx46.i407, align 8, !tbaa !4
  %mul47.i = fmul double %856, %859
  %mul48.i = fmul double %857, %860
  %add49.i = fadd double %mul47.i, %mul48.i
  %add50.i = fadd double %rsum0.0846.i, %add49.i
  %mul51.i = fmul double %856, %860
  %mul52.i = fmul double %857, %859
  %sub53.i = fsub double %mul51.i, %mul52.i
  %add54.i = fadd double %isum0.0843.i, %sub53.i
  %mul55.i408 = fmul double %856, %861
  %mul56.i409 = fmul double %857, %862
  %add57.i410 = fadd double %mul55.i408, %mul56.i409
  %add58.i = fadd double %rsum1.0847.i, %add57.i410
  %mul59.i = fmul double %856, %862
  %mul60.i = fmul double %857, %861
  %sub61.i = fsub double %mul59.i, %mul60.i
  %add62.i = fadd double %isum1.0844.i, %sub61.i
  %mul63.i = fmul double %856, %863
  %mul64.i = fmul double %857, %864
  %add65.i = fadd double %mul63.i, %mul64.i
  %add66.i = fadd double %rsum2.0848.i, %add65.i
  %mul67.i411 = fmul double %856, %864
  %mul68.i412 = fmul double %857, %863
  %sub69.i = fsub double %mul67.i411, %mul68.i412
  %add70.i = fadd double %isum2.0845.i, %sub69.i
  %inc.i413 = add nsw i32 %ii.0841.i, 1
  %indvars.iv.next889.i = add i64 %indvars.iv888.i, 1
  %exitcond890.i = icmp eq i32 %inc.i413, %853
  br i1 %exitcond890.i, label %if.end129.i, label %for.body24.i

for.body75.i:                                     ; preds = %if.then19.i397, %for.body75.i
  %indvars.iv885.i = phi i64 [ %indvars.iv.next886.i, %for.body75.i ], [ %854, %if.then19.i397 ]
  %rsum2.1831.i = phi double [ %add120.i434, %for.body75.i ], [ 0.000000e+00, %if.then19.i397 ]
  %rsum1.1830.i = phi double [ %add112.i426, %for.body75.i ], [ 0.000000e+00, %if.then19.i397 ]
  %rsum0.1829.i = phi double [ %add104.i418, %for.body75.i ], [ 0.000000e+00, %if.then19.i397 ]
  %isum2.1828.i = phi double [ %add124.i438, %for.body75.i ], [ 0.000000e+00, %if.then19.i397 ]
  %isum1.1827.i = phi double [ %add116.i430, %for.body75.i ], [ 0.000000e+00, %if.then19.i397 ]
  %isum0.1826.i = phi double [ %add108.i422, %for.body75.i ], [ 0.000000e+00, %if.then19.i397 ]
  %ii.1824.i = phi i32 [ %inc126.i, %for.body75.i ], [ 0, %if.then19.i397 ]
  %865 = trunc i64 %indvars.iv885.i to i32
  %mul76.i = shl nsw i32 %865, 1
  %idxprom77.i = sext i32 %mul76.i to i64
  %arrayidx78.i = getelementptr inbounds double* %850, i64 %idxprom77.i
  %866 = load double* %arrayidx78.i, align 8, !tbaa !4
  %add80761.i = or i32 %mul76.i, 1
  %idxprom81.i = sext i32 %add80761.i to i64
  %arrayidx82.i = getelementptr inbounds double* %850, i64 %idxprom81.i
  %867 = load double* %arrayidx82.i, align 8, !tbaa !4
  %arrayidx84.i = getelementptr inbounds i32* %851, i64 %indvars.iv885.i
  %868 = load i32* %arrayidx84.i, align 4, !tbaa !3
  %idxprom85.i = sext i32 %868 to i64
  %arrayidx86.i = getelementptr inbounds i32* %852, i64 %idxprom85.i
  %869 = load i32* %arrayidx86.i, align 4, !tbaa !3
  %mul87.i = shl nsw i32 %869, 1
  %add88762.i = or i32 %mul87.i, 1
  %idxprom89.i = sext i32 %mul87.i to i64
  %arrayidx90.i = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom89.i
  %870 = load double* %arrayidx90.i, align 8, !tbaa !4
  %idxprom91.i = sext i32 %add88762.i to i64
  %arrayidx92.i = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom91.i
  %871 = load double* %arrayidx92.i, align 8, !tbaa !4
  %add.ptr.sum763.i = add i64 %idxprom89.i, %idx.ext.i384
  %arrayidx94.i = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum763.i
  %872 = load double* %arrayidx94.i, align 8, !tbaa !4
  %add.ptr.sum764.i = add i64 %idxprom91.i, %idx.ext.i384
  %arrayidx96.i = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum764.i
  %873 = load double* %arrayidx96.i, align 8, !tbaa !4
  %add.ptr8.sum765.i = add i64 %idxprom89.i, %add.ptr.sum.i385
  %arrayidx98.i414 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum765.i
  %874 = load double* %arrayidx98.i414, align 8, !tbaa !4
  %add.ptr8.sum766.i = add i64 %idxprom91.i, %add.ptr.sum.i385
  %arrayidx100.i = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum766.i
  %875 = load double* %arrayidx100.i, align 8, !tbaa !4
  %mul101.i415 = fmul double %866, %870
  %mul102.i416 = fmul double %867, %871
  %add103.i417 = fadd double %mul101.i415, %mul102.i416
  %add104.i418 = fadd double %rsum0.1829.i, %add103.i417
  %mul105.i419 = fmul double %866, %871
  %mul106.i420 = fmul double %867, %870
  %sub107.i421 = fsub double %mul105.i419, %mul106.i420
  %add108.i422 = fadd double %isum0.1826.i, %sub107.i421
  %mul109.i423 = fmul double %866, %872
  %mul110.i424 = fmul double %867, %873
  %add111.i425 = fadd double %mul109.i423, %mul110.i424
  %add112.i426 = fadd double %rsum1.1830.i, %add111.i425
  %mul113.i427 = fmul double %866, %873
  %mul114.i428 = fmul double %867, %872
  %sub115.i429 = fsub double %mul113.i427, %mul114.i428
  %add116.i430 = fadd double %isum1.1827.i, %sub115.i429
  %mul117.i431 = fmul double %866, %874
  %mul118.i432 = fmul double %867, %875
  %add119.i433 = fadd double %mul117.i431, %mul118.i432
  %add120.i434 = fadd double %rsum2.1831.i, %add119.i433
  %mul121.i435 = fmul double %866, %875
  %mul122.i436 = fmul double %867, %874
  %sub123.i437 = fsub double %mul121.i435, %mul122.i436
  %add124.i438 = fadd double %isum2.1828.i, %sub123.i437
  %inc126.i = add nsw i32 %ii.1824.i, 1
  %indvars.iv.next886.i = add i64 %indvars.iv885.i, 1
  %exitcond887.i = icmp eq i32 %inc126.i, %853
  br i1 %exitcond887.i, label %if.end129.i, label %for.body75.i

if.end129.i:                                      ; preds = %for.body24.i, %for.body75.i
  %isum0.2.i = phi double [ %add108.i422, %for.body75.i ], [ %add54.i, %for.body24.i ]
  %isum1.2.i = phi double [ %add116.i430, %for.body75.i ], [ %add62.i, %for.body24.i ]
  %isum2.2.i = phi double [ %add124.i438, %for.body75.i ], [ %add70.i, %for.body24.i ]
  %rsum0.2.i = phi double [ %add104.i418, %for.body75.i ], [ %add50.i, %for.body24.i ]
  %rsum1.2.i = phi double [ %add112.i426, %for.body75.i ], [ %add58.i, %for.body24.i ]
  %rsum2.2.i = phi double [ %add120.i434, %for.body75.i ], [ %add66.i, %for.body24.i ]
  %876 = add i32 %853, %kk.0859.i
  br i1 %cmp130.i, label %if.then131.i, label %if.else152.i

if.then131.i:                                     ; preds = %if.end129.i
  %877 = trunc i64 %indvars.iv891.i to i32
  %mul132.i = shl nsw i32 %877, 1
  %add133756.i = or i32 %mul132.i, 1
  %idxprom134.i = sext i32 %mul132.i to i64
  %arrayidx135.i = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom134.i
  %878 = load double* %arrayidx135.i, align 8, !tbaa !4
  %sub136.i = fsub double %878, %rsum0.2.i
  store double %sub136.i, double* %arrayidx135.i, align 8, !tbaa !4
  %idxprom137.i = sext i32 %add133756.i to i64
  %arrayidx138.i439 = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom137.i
  %879 = load double* %arrayidx138.i439, align 8, !tbaa !4
  %sub139.i = fsub double %879, %isum0.2.i
  store double %sub139.i, double* %arrayidx138.i439, align 8, !tbaa !4
  %add.ptr11.sum757.i = add i64 %idxprom134.i, %idx.ext10.i387
  %arrayidx141.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum757.i
  %880 = load double* %arrayidx141.i, align 8, !tbaa !4
  %sub142.i = fsub double %880, %rsum1.2.i
  store double %sub142.i, double* %arrayidx141.i, align 8, !tbaa !4
  %add.ptr11.sum758.i = add i64 %idxprom137.i, %idx.ext10.i387
  %arrayidx144.i440 = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum758.i
  %881 = load double* %arrayidx144.i440, align 8, !tbaa !4
  %sub145.i = fsub double %881, %isum1.2.i
  store double %sub145.i, double* %arrayidx144.i440, align 8, !tbaa !4
  %add.ptr14.sum759.i = add i64 %idxprom134.i, %add.ptr11.sum.i388
  %arrayidx147.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum759.i
  %882 = load double* %arrayidx147.i, align 8, !tbaa !4
  %sub148.i = fsub double %882, %rsum2.2.i
  store double %sub148.i, double* %arrayidx147.i, align 8, !tbaa !4
  %add.ptr14.sum760.i = add i64 %idxprom137.i, %add.ptr11.sum.i388
  %arrayidx150.i441 = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum760.i
  %883 = load double* %arrayidx150.i441, align 8, !tbaa !4
  %sub151.i = fsub double %883, %isum2.2.i
  store double %sub151.i, double* %arrayidx150.i441, align 8, !tbaa !4
  br label %for.inc177.i

if.else152.i:                                     ; preds = %if.end129.i
  %arrayidx154.i442 = getelementptr inbounds i32* %849, i64 %indvars.iv891.i
  %884 = load i32* %arrayidx154.i442, align 4, !tbaa !3
  %mul155.i = shl nsw i32 %884, 1
  %add156751.i = or i32 %mul155.i, 1
  %idxprom157.i = sext i32 %mul155.i to i64
  %arrayidx158.i443 = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom157.i
  %885 = load double* %arrayidx158.i443, align 8, !tbaa !4
  %sub159.i = fsub double %885, %rsum0.2.i
  store double %sub159.i, double* %arrayidx158.i443, align 8, !tbaa !4
  %idxprom160.i = sext i32 %add156751.i to i64
  %arrayidx161.i = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom160.i
  %886 = load double* %arrayidx161.i, align 8, !tbaa !4
  %sub162.i = fsub double %886, %isum0.2.i
  store double %sub162.i, double* %arrayidx161.i, align 8, !tbaa !4
  %add.ptr11.sum752.i = add i64 %idxprom157.i, %idx.ext10.i387
  %arrayidx164.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum752.i
  %887 = load double* %arrayidx164.i, align 8, !tbaa !4
  %sub165.i444 = fsub double %887, %rsum1.2.i
  store double %sub165.i444, double* %arrayidx164.i, align 8, !tbaa !4
  %add.ptr11.sum753.i = add i64 %idxprom160.i, %idx.ext10.i387
  %arrayidx167.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum753.i
  %888 = load double* %arrayidx167.i, align 8, !tbaa !4
  %sub168.i = fsub double %888, %isum1.2.i
  store double %sub168.i, double* %arrayidx167.i, align 8, !tbaa !4
  %add.ptr14.sum754.i = add i64 %idxprom157.i, %add.ptr11.sum.i388
  %arrayidx170.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum754.i
  %889 = load double* %arrayidx170.i, align 8, !tbaa !4
  %sub171.i = fsub double %889, %rsum2.2.i
  store double %sub171.i, double* %arrayidx170.i, align 8, !tbaa !4
  %add.ptr14.sum755.i = add i64 %idxprom160.i, %add.ptr11.sum.i388
  %arrayidx173.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum755.i
  %890 = load double* %arrayidx173.i, align 8, !tbaa !4
  %sub174.i = fsub double %890, %isum2.2.i
  store double %sub174.i, double* %arrayidx173.i, align 8, !tbaa !4
  br label %for.inc177.i

for.inc177.i:                                     ; preds = %if.else152.i, %if.then131.i, %for.body17.i396
  %kk.4.i = phi i32 [ %876, %if.then131.i ], [ %876, %if.else152.i ], [ %kk.0859.i, %for.body17.i396 ]
  %indvars.iv.next892.i = add i64 %indvars.iv891.i, 1
  %lftr.wideiv599 = trunc i64 %indvars.iv.next892.i to i32
  %exitcond600 = icmp eq i32 %lftr.wideiv599, %846
  br i1 %exitcond600, label %for.end179.i, label %for.body17.i396

for.end179.i:                                     ; preds = %for.inc177.i, %for.body.i393
  %add.ptr182.i = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum.i389
  %add.ptr185.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum.i390
  %add187.i446 = add nsw i32 %jcolX.0866.i, 3
  %cmp5.i447 = icmp slt i32 %add187.i446, %sub860.i
  br i1 %cmp5.i447, label %for.body.i393, label %for.end188.i

for.end188.i:                                     ; preds = %for.end179.i, %if.end4.i382
  %jcolX.0.lcssa.i448 = phi i32 [ 0, %if.end4.i382 ], [ %add187.i446, %for.end179.i ]
  %colX0.0.lcssa.i449 = phi double* [ %841, %if.end4.i382 ], [ %add.ptr182.i, %for.end179.i ]
  %colY0.0.lcssa.i450 = phi double* [ %842, %if.end4.i382 ], [ %add.ptr185.i, %for.end179.i ]
  %cmp190.i = icmp eq i32 %jcolX.0.lcssa.i448, %sub860.i
  br i1 %cmp190.i, label %if.then191.i, label %if.else343.i

if.then191.i:                                     ; preds = %for.end188.i
  %891 = load i32* %nrowX.i367, align 4, !tbaa !3
  %mul202.i451 = shl nsw i32 %891, 1
  %idx.ext203.i = sext i32 %mul202.i451 to i64
  %892 = load i32* %nrowY.i368, align 4, !tbaa !3
  %mul205.i = shl nsw i32 %892, 1
  %idx.ext206.i = sext i32 %mul205.i to i64
  %893 = load i32* %nrowAT.i366, align 4, !tbaa !3
  %cmp209797.i = icmp sgt i32 %893, 0
  br i1 %cmp209797.i, label %for.body210.lr.ph.i, label %sw.epilog

for.body210.lr.ph.i:                              ; preds = %if.then191.i
  %894 = load i32** %sizes.i372, align 8, !tbaa !0
  %895 = load i32* %ncolAT.i362, align 4, !tbaa !3
  %cmp215.i = icmp eq i32 %895, %891
  %cmp305.i = icmp eq i32 %893, %892
  %896 = load i32** %rowindAT.i371, align 8, !tbaa !0
  %897 = load double** %entA.i357, align 8, !tbaa !0
  %898 = load i32** %indices.i370, align 8, !tbaa !0
  %899 = load i32** %colindAT.i369, align 8, !tbaa !0
  br label %for.body210.i

for.body210.i:                                    ; preds = %for.inc340.i, %for.body210.lr.ph.i
  %indvars.iv875.i = phi i64 [ 0, %for.body210.lr.ph.i ], [ %indvars.iv.next876.i, %for.inc340.i ]
  %kk.5800.i = phi i32 [ 0, %for.body210.lr.ph.i ], [ %kk.9.i, %for.inc340.i ]
  %arrayidx212.i = getelementptr inbounds i32* %894, i64 %indvars.iv875.i
  %900 = load i32* %arrayidx212.i, align 4, !tbaa !3
  %cmp213.i = icmp sgt i32 %900, 0
  br i1 %cmp213.i, label %if.then214.i, label %for.inc340.i

if.then214.i:                                     ; preds = %for.body210.i
  %901 = sext i32 %kk.5800.i to i64
  br i1 %cmp215.i, label %for.body219.i, label %for.body262.i

for.body219.i:                                    ; preds = %if.then214.i, %for.body219.i
  %indvars.iv872.i = phi i64 [ %indvars.iv.next873.i, %for.body219.i ], [ %901, %if.then214.i ]
  %rsum1197.0791.i = phi double [ %add250.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %rsum0196.0790.i = phi double [ %add242.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %isum1195.0789.i = phi double [ %add254.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %isum0194.0788.i = phi double [ %add246.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %ii.2786.i = phi i32 [ %inc256.i, %for.body219.i ], [ 0, %if.then214.i ]
  %902 = trunc i64 %indvars.iv872.i to i32
  %mul220.i452 = shl nsw i32 %902, 1
  %idxprom221.i = sext i32 %mul220.i452 to i64
  %arrayidx222.i = getelementptr inbounds double* %897, i64 %idxprom221.i
  %903 = load double* %arrayidx222.i, align 8, !tbaa !4
  %add224747.i = or i32 %mul220.i452, 1
  %idxprom225.i = sext i32 %add224747.i to i64
  %arrayidx226.i = getelementptr inbounds double* %897, i64 %idxprom225.i
  %904 = load double* %arrayidx226.i, align 8, !tbaa !4
  %arrayidx228.i453 = getelementptr inbounds i32* %898, i64 %indvars.iv872.i
  %905 = load i32* %arrayidx228.i453, align 4, !tbaa !3
  %mul229.i = shl nsw i32 %905, 1
  %add230748.i = or i32 %mul229.i, 1
  %idxprom231.i = sext i32 %mul229.i to i64
  %arrayidx232.i454 = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom231.i
  %906 = load double* %arrayidx232.i454, align 8, !tbaa !4
  %idxprom233.i = sext i32 %add230748.i to i64
  %arrayidx234.i455 = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom233.i
  %907 = load double* %arrayidx234.i455, align 8, !tbaa !4
  %add.ptr204.sum749.i = add i64 %idxprom231.i, %idx.ext203.i
  %arrayidx236.i456 = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %add.ptr204.sum749.i
  %908 = load double* %arrayidx236.i456, align 8, !tbaa !4
  %add.ptr204.sum750.i = add i64 %idxprom233.i, %idx.ext203.i
  %arrayidx238.i457 = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %add.ptr204.sum750.i
  %909 = load double* %arrayidx238.i457, align 8, !tbaa !4
  %mul239.i = fmul double %903, %906
  %mul240.i = fmul double %904, %907
  %add241.i = fadd double %mul239.i, %mul240.i
  %add242.i = fadd double %rsum0196.0790.i, %add241.i
  %mul243.i458 = fmul double %903, %907
  %mul244.i459 = fmul double %904, %906
  %sub245.i = fsub double %mul243.i458, %mul244.i459
  %add246.i = fadd double %isum0194.0788.i, %sub245.i
  %mul247.i = fmul double %903, %908
  %mul248.i460 = fmul double %904, %909
  %add249.i461 = fadd double %mul247.i, %mul248.i460
  %add250.i = fadd double %rsum1197.0791.i, %add249.i461
  %mul251.i462 = fmul double %903, %909
  %mul252.i463 = fmul double %904, %908
  %sub253.i464 = fsub double %mul251.i462, %mul252.i463
  %add254.i = fadd double %isum1195.0789.i, %sub253.i464
  %inc256.i = add nsw i32 %ii.2786.i, 1
  %indvars.iv.next873.i = add i64 %indvars.iv872.i, 1
  %exitcond874.i = icmp eq i32 %inc256.i, %900
  br i1 %exitcond874.i, label %if.end304.i, label %for.body219.i

for.body262.i:                                    ; preds = %if.then214.i, %for.body262.i
  %indvars.iv.i465 = phi i64 [ %indvars.iv.next.i475, %for.body262.i ], [ %901, %if.then214.i ]
  %rsum1197.1779.i = phi double [ %add295.i, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %rsum0196.1778.i = phi double [ %add287.i, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %isum1195.1777.i = phi double [ %add299.i, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %isum0194.1776.i = phi double [ %add291.i, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %ii.3774.i = phi i32 [ %inc301.i, %for.body262.i ], [ 0, %if.then214.i ]
  %910 = trunc i64 %indvars.iv.i465 to i32
  %mul263.i = shl nsw i32 %910, 1
  %idxprom264.i = sext i32 %mul263.i to i64
  %arrayidx265.i = getelementptr inbounds double* %897, i64 %idxprom264.i
  %911 = load double* %arrayidx265.i, align 8, !tbaa !4
  %add267744.i = or i32 %mul263.i, 1
  %idxprom268.i466 = sext i32 %add267744.i to i64
  %arrayidx269.i467 = getelementptr inbounds double* %897, i64 %idxprom268.i466
  %912 = load double* %arrayidx269.i467, align 8, !tbaa !4
  %arrayidx271.i = getelementptr inbounds i32* %898, i64 %indvars.iv.i465
  %913 = load i32* %arrayidx271.i, align 4, !tbaa !3
  %idxprom272.i = sext i32 %913 to i64
  %arrayidx273.i = getelementptr inbounds i32* %899, i64 %idxprom272.i
  %914 = load i32* %arrayidx273.i, align 4, !tbaa !3
  %mul274.i468 = shl nsw i32 %914, 1
  %add275745.i = or i32 %mul274.i468, 1
  %idxprom276.i = sext i32 %mul274.i468 to i64
  %arrayidx277.i = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom276.i
  %915 = load double* %arrayidx277.i, align 8, !tbaa !4
  %idxprom278.i = sext i32 %add275745.i to i64
  %arrayidx279.i = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom278.i
  %916 = load double* %arrayidx279.i, align 8, !tbaa !4
  %add.ptr204.sum.i = add i64 %idxprom276.i, %idx.ext203.i
  %arrayidx281.i = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %add.ptr204.sum.i
  %917 = load double* %arrayidx281.i, align 8, !tbaa !4
  %add.ptr204.sum746.i = add i64 %idxprom278.i, %idx.ext203.i
  %arrayidx283.i469 = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %add.ptr204.sum746.i
  %918 = load double* %arrayidx283.i469, align 8, !tbaa !4
  %mul284.i = fmul double %911, %915
  %mul285.i470 = fmul double %912, %916
  %add286.i = fadd double %mul284.i, %mul285.i470
  %add287.i = fadd double %rsum0196.1778.i, %add286.i
  %mul288.i471 = fmul double %911, %916
  %mul289.i = fmul double %912, %915
  %sub290.i472 = fsub double %mul288.i471, %mul289.i
  %add291.i = fadd double %isum0194.1776.i, %sub290.i472
  %mul292.i473 = fmul double %911, %917
  %mul293.i = fmul double %912, %918
  %add294.i = fadd double %mul292.i473, %mul293.i
  %add295.i = fadd double %rsum1197.1779.i, %add294.i
  %mul296.i = fmul double %911, %918
  %mul297.i = fmul double %912, %917
  %sub298.i474 = fsub double %mul296.i, %mul297.i
  %add299.i = fadd double %isum1195.1777.i, %sub298.i474
  %inc301.i = add nsw i32 %ii.3774.i, 1
  %indvars.iv.next.i475 = add i64 %indvars.iv.i465, 1
  %exitcond.i476 = icmp eq i32 %inc301.i, %900
  br i1 %exitcond.i476, label %if.end304.i, label %for.body262.i

if.end304.i:                                      ; preds = %for.body219.i, %for.body262.i
  %isum0194.2.i = phi double [ %add291.i, %for.body262.i ], [ %add246.i, %for.body219.i ]
  %isum1195.2.i = phi double [ %add299.i, %for.body262.i ], [ %add254.i, %for.body219.i ]
  %rsum0196.2.i = phi double [ %add287.i, %for.body262.i ], [ %add242.i, %for.body219.i ]
  %rsum1197.2.i = phi double [ %add295.i, %for.body262.i ], [ %add250.i, %for.body219.i ]
  %919 = add i32 %900, %kk.5800.i
  br i1 %cmp305.i, label %if.then306.i, label %if.else321.i

if.then306.i:                                     ; preds = %if.end304.i
  %920 = trunc i64 %indvars.iv875.i to i32
  %mul307.i = shl nsw i32 %920, 1
  %add308741.i = or i32 %mul307.i, 1
  %idxprom309.i = sext i32 %mul307.i to i64
  %arrayidx310.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom309.i
  %921 = load double* %arrayidx310.i, align 8, !tbaa !4
  %sub311.i = fsub double %921, %rsum0196.2.i
  store double %sub311.i, double* %arrayidx310.i, align 8, !tbaa !4
  %idxprom312.i = sext i32 %add308741.i to i64
  %arrayidx313.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom312.i
  %922 = load double* %arrayidx313.i, align 8, !tbaa !4
  %sub314.i = fsub double %922, %isum0194.2.i
  store double %sub314.i, double* %arrayidx313.i, align 8, !tbaa !4
  %add.ptr207.sum742.i = add i64 %idxprom309.i, %idx.ext206.i
  %arrayidx316.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %add.ptr207.sum742.i
  %923 = load double* %arrayidx316.i, align 8, !tbaa !4
  %sub317.i = fsub double %923, %rsum1197.2.i
  store double %sub317.i, double* %arrayidx316.i, align 8, !tbaa !4
  %add.ptr207.sum743.i = add i64 %idxprom312.i, %idx.ext206.i
  %arrayidx319.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %add.ptr207.sum743.i
  %924 = load double* %arrayidx319.i, align 8, !tbaa !4
  %sub320.i = fsub double %924, %isum1195.2.i
  store double %sub320.i, double* %arrayidx319.i, align 8, !tbaa !4
  br label %for.inc340.i

if.else321.i:                                     ; preds = %if.end304.i
  %arrayidx323.i477 = getelementptr inbounds i32* %896, i64 %indvars.iv875.i
  %925 = load i32* %arrayidx323.i477, align 4, !tbaa !3
  %mul324.i = shl nsw i32 %925, 1
  %add325739.i = or i32 %mul324.i, 1
  %idxprom326.i = sext i32 %mul324.i to i64
  %arrayidx327.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom326.i
  %926 = load double* %arrayidx327.i, align 8, !tbaa !4
  %sub328.i = fsub double %926, %rsum0196.2.i
  store double %sub328.i, double* %arrayidx327.i, align 8, !tbaa !4
  %idxprom329.i = sext i32 %add325739.i to i64
  %arrayidx330.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom329.i
  %927 = load double* %arrayidx330.i, align 8, !tbaa !4
  %sub331.i = fsub double %927, %isum0194.2.i
  store double %sub331.i, double* %arrayidx330.i, align 8, !tbaa !4
  %add.ptr207.sum.i = add i64 %idxprom326.i, %idx.ext206.i
  %arrayidx333.i478 = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %add.ptr207.sum.i
  %928 = load double* %arrayidx333.i478, align 8, !tbaa !4
  %sub334.i = fsub double %928, %rsum1197.2.i
  store double %sub334.i, double* %arrayidx333.i478, align 8, !tbaa !4
  %add.ptr207.sum740.i = add i64 %idxprom329.i, %idx.ext206.i
  %arrayidx336.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %add.ptr207.sum740.i
  %929 = load double* %arrayidx336.i, align 8, !tbaa !4
  %sub337.i = fsub double %929, %isum1195.2.i
  store double %sub337.i, double* %arrayidx336.i, align 8, !tbaa !4
  br label %for.inc340.i

for.inc340.i:                                     ; preds = %if.else321.i, %if.then306.i, %for.body210.i
  %kk.9.i = phi i32 [ %919, %if.then306.i ], [ %919, %if.else321.i ], [ %kk.5800.i, %for.body210.i ]
  %indvars.iv.next876.i = add i64 %indvars.iv875.i, 1
  %lftr.wideiv595 = trunc i64 %indvars.iv.next876.i to i32
  %exitcond596 = icmp eq i32 %lftr.wideiv595, %893
  br i1 %exitcond596, label %sw.epilog, label %for.body210.i

if.else343.i:                                     ; preds = %for.end188.i
  %sub344.i = add nsw i32 %843, -1
  %cmp345.i = icmp eq i32 %jcolX.0.lcssa.i448, %sub344.i
  br i1 %cmp345.i, label %for.cond353.preheader.i, label %sw.epilog

for.cond353.preheader.i:                          ; preds = %if.else343.i
  %930 = load i32* %nrowAT.i366, align 4, !tbaa !3
  %cmp354819.i = icmp sgt i32 %930, 0
  br i1 %cmp354819.i, label %for.body355.lr.ph.i, label %sw.epilog

for.body355.lr.ph.i:                              ; preds = %for.cond353.preheader.i
  %931 = load i32** %sizes.i372, align 8, !tbaa !0
  %932 = load i32* %ncolAT.i362, align 4, !tbaa !3
  %933 = load i32* %nrowX.i367, align 4, !tbaa !3
  %cmp360.i = icmp eq i32 %932, %933
  %934 = load i32* %nrowY.i368, align 4, !tbaa !3
  %cmp426.i = icmp eq i32 %930, %934
  %935 = load i32** %rowindAT.i371, align 8, !tbaa !0
  %936 = load double** %entA.i357, align 8, !tbaa !0
  %937 = load i32** %indices.i370, align 8, !tbaa !0
  %938 = load i32** %colindAT.i369, align 8, !tbaa !0
  br label %for.body355.i

for.body355.i:                                    ; preds = %for.inc449.i, %for.body355.lr.ph.i
  %indvars.iv883.i = phi i64 [ 0, %for.body355.lr.ph.i ], [ %indvars.iv.next884.i, %for.inc449.i ]
  %kk.10822.i = phi i32 [ 0, %for.body355.lr.ph.i ], [ %kk.14.i, %for.inc449.i ]
  %arrayidx357.i = getelementptr inbounds i32* %931, i64 %indvars.iv883.i
  %939 = load i32* %arrayidx357.i, align 4, !tbaa !3
  %cmp358.i = icmp sgt i32 %939, 0
  br i1 %cmp358.i, label %if.then359.i, label %for.inc449.i

if.then359.i:                                     ; preds = %for.body355.i
  %940 = sext i32 %kk.10822.i to i64
  br i1 %cmp360.i, label %for.body364.i, label %for.body395.i

for.body364.i:                                    ; preds = %if.then359.i, %for.body364.i
  %indvars.iv880.i = phi i64 [ %indvars.iv.next881.i, %for.body364.i ], [ %940, %if.then359.i ]
  %rsum0350.0814.i = phi double [ %add383.i, %for.body364.i ], [ 0.000000e+00, %if.then359.i ]
  %isum0349.0813.i = phi double [ %add387.i, %for.body364.i ], [ 0.000000e+00, %if.then359.i ]
  %ii.4811.i = phi i32 [ %inc389.i, %for.body364.i ], [ 0, %if.then359.i ]
  %941 = trunc i64 %indvars.iv880.i to i32
  %mul365.i = shl nsw i32 %941, 1
  %idxprom366.i = sext i32 %mul365.i to i64
  %arrayidx367.i = getelementptr inbounds double* %936, i64 %idxprom366.i
  %942 = load double* %arrayidx367.i, align 8, !tbaa !4
  %add369737.i = or i32 %mul365.i, 1
  %idxprom370.i = sext i32 %add369737.i to i64
  %arrayidx371.i = getelementptr inbounds double* %936, i64 %idxprom370.i
  %943 = load double* %arrayidx371.i, align 8, !tbaa !4
  %arrayidx373.i = getelementptr inbounds i32* %937, i64 %indvars.iv880.i
  %944 = load i32* %arrayidx373.i, align 4, !tbaa !3
  %mul374.i = shl nsw i32 %944, 1
  %add375738.i = or i32 %mul374.i, 1
  %idxprom376.i = sext i32 %mul374.i to i64
  %arrayidx377.i = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom376.i
  %945 = load double* %arrayidx377.i, align 8, !tbaa !4
  %idxprom378.i479 = sext i32 %add375738.i to i64
  %arrayidx379.i480 = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom378.i479
  %946 = load double* %arrayidx379.i480, align 8, !tbaa !4
  %mul380.i = fmul double %942, %945
  %mul381.i481 = fmul double %943, %946
  %add382.i = fadd double %mul380.i, %mul381.i481
  %add383.i = fadd double %rsum0350.0814.i, %add382.i
  %mul384.i = fmul double %942, %946
  %mul385.i = fmul double %943, %945
  %sub386.i482 = fsub double %mul384.i, %mul385.i
  %add387.i = fadd double %isum0349.0813.i, %sub386.i482
  %inc389.i = add nsw i32 %ii.4811.i, 1
  %indvars.iv.next881.i = add i64 %indvars.iv880.i, 1
  %exitcond882.i = icmp eq i32 %inc389.i, %939
  br i1 %exitcond882.i, label %if.end425.i, label %for.body364.i

for.body395.i:                                    ; preds = %if.then359.i, %for.body395.i
  %indvars.iv877.i = phi i64 [ %indvars.iv.next878.i, %for.body395.i ], [ %940, %if.then359.i ]
  %rsum0350.1805.i = phi double [ %add416.i, %for.body395.i ], [ 0.000000e+00, %if.then359.i ]
  %isum0349.1804.i = phi double [ %add420.i, %for.body395.i ], [ 0.000000e+00, %if.then359.i ]
  %ii.5802.i = phi i32 [ %inc422.i, %for.body395.i ], [ 0, %if.then359.i ]
  %947 = trunc i64 %indvars.iv877.i to i32
  %mul396.i = shl nsw i32 %947, 1
  %idxprom397.i = sext i32 %mul396.i to i64
  %arrayidx398.i = getelementptr inbounds double* %936, i64 %idxprom397.i
  %948 = load double* %arrayidx398.i, align 8, !tbaa !4
  %add400735.i = or i32 %mul396.i, 1
  %idxprom401.i = sext i32 %add400735.i to i64
  %arrayidx402.i = getelementptr inbounds double* %936, i64 %idxprom401.i
  %949 = load double* %arrayidx402.i, align 8, !tbaa !4
  %arrayidx404.i = getelementptr inbounds i32* %937, i64 %indvars.iv877.i
  %950 = load i32* %arrayidx404.i, align 4, !tbaa !3
  %idxprom405.i483 = sext i32 %950 to i64
  %arrayidx406.i484 = getelementptr inbounds i32* %938, i64 %idxprom405.i483
  %951 = load i32* %arrayidx406.i484, align 4, !tbaa !3
  %mul407.i485 = shl nsw i32 %951, 1
  %add408736.i = or i32 %mul407.i485, 1
  %idxprom409.i = sext i32 %mul407.i485 to i64
  %arrayidx410.i = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom409.i
  %952 = load double* %arrayidx410.i, align 8, !tbaa !4
  %idxprom411.i = sext i32 %add408736.i to i64
  %arrayidx412.i = getelementptr inbounds double* %colX0.0.lcssa.i449, i64 %idxprom411.i
  %953 = load double* %arrayidx412.i, align 8, !tbaa !4
  %mul413.i = fmul double %948, %952
  %mul414.i = fmul double %949, %953
  %add415.i = fadd double %mul413.i, %mul414.i
  %add416.i = fadd double %rsum0350.1805.i, %add415.i
  %mul417.i = fmul double %948, %953
  %mul418.i = fmul double %949, %952
  %sub419.i = fsub double %mul417.i, %mul418.i
  %add420.i = fadd double %isum0349.1804.i, %sub419.i
  %inc422.i = add nsw i32 %ii.5802.i, 1
  %indvars.iv.next878.i = add i64 %indvars.iv877.i, 1
  %exitcond879.i = icmp eq i32 %inc422.i, %939
  br i1 %exitcond879.i, label %if.end425.i, label %for.body395.i

if.end425.i:                                      ; preds = %for.body364.i, %for.body395.i
  %isum0349.2.i = phi double [ %add420.i, %for.body395.i ], [ %add387.i, %for.body364.i ]
  %rsum0350.2.i = phi double [ %add416.i, %for.body395.i ], [ %add383.i, %for.body364.i ]
  %954 = add i32 %939, %kk.10822.i
  br i1 %cmp426.i, label %if.then427.i, label %if.else436.i

if.then427.i:                                     ; preds = %if.end425.i
  %955 = trunc i64 %indvars.iv883.i to i32
  %mul428.i = shl nsw i32 %955, 1
  %add429734.i = or i32 %mul428.i, 1
  %idxprom430.i = sext i32 %mul428.i to i64
  %arrayidx431.i486 = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom430.i
  %956 = load double* %arrayidx431.i486, align 8, !tbaa !4
  %sub432.i = fsub double %956, %rsum0350.2.i
  store double %sub432.i, double* %arrayidx431.i486, align 8, !tbaa !4
  %idxprom433.i = sext i32 %add429734.i to i64
  %arrayidx434.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom433.i
  %957 = load double* %arrayidx434.i, align 8, !tbaa !4
  %sub435.i = fsub double %957, %isum0349.2.i
  store double %sub435.i, double* %arrayidx434.i, align 8, !tbaa !4
  br label %for.inc449.i

if.else436.i:                                     ; preds = %if.end425.i
  %arrayidx438.i = getelementptr inbounds i32* %935, i64 %indvars.iv883.i
  %958 = load i32* %arrayidx438.i, align 4, !tbaa !3
  %mul439.i487 = shl nsw i32 %958, 1
  %add440733.i = or i32 %mul439.i487, 1
  %idxprom441.i = sext i32 %mul439.i487 to i64
  %arrayidx442.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom441.i
  %959 = load double* %arrayidx442.i, align 8, !tbaa !4
  %sub443.i = fsub double %959, %rsum0350.2.i
  store double %sub443.i, double* %arrayidx442.i, align 8, !tbaa !4
  %idxprom444.i = sext i32 %add440733.i to i64
  %arrayidx445.i = getelementptr inbounds double* %colY0.0.lcssa.i450, i64 %idxprom444.i
  %960 = load double* %arrayidx445.i, align 8, !tbaa !4
  %sub446.i = fsub double %960, %isum0349.2.i
  store double %sub446.i, double* %arrayidx445.i, align 8, !tbaa !4
  br label %for.inc449.i

for.inc449.i:                                     ; preds = %if.else436.i, %if.then427.i, %for.body355.i
  %kk.14.i = phi i32 [ %954, %if.then427.i ], [ %954, %if.else436.i ], [ %kk.10822.i, %for.body355.i ]
  %indvars.iv.next884.i = add i64 %indvars.iv883.i, 1
  %lftr.wideiv597 = trunc i64 %indvars.iv.next884.i to i32
  %exitcond598 = icmp eq i32 %lftr.wideiv597, %930
  br i1 %exitcond598, label %sw.epilog, label %for.body355.i

sw.default:                                       ; preds = %if.end17
  %961 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %961, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %7) #5
  %962 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtxA, %struct._IO_FILE* %962) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %for.inc449.i, %for.inc340.i, %for.inc393.i, %for.inc294.i, %for.body1814.i, %for.body1789.i, %for.body1694.i, %for.body1657.i, %for.body1386.i, %for.body1349.i, %for.body1210.i, %for.body1153.i, %for.cond353.preheader.i, %if.else343.i, %if.then191.i, %for.cond307.preheader.i, %if.else297.i344, %if.then165.i, %for.cond1787.preheader.i, %for.cond1812.preheader.i, %if.else1733.i, %for.cond1655.preheader.i, %for.cond1692.preheader.i, %if.else1427.i, %for.cond1347.preheader.i, %for.cond1384.preheader.i, %if.else1269.i, %for.cond1151.preheader.i, %for.cond1208.preheader.i, %if.else1928.i, %if.then1919.i, %if.else1846.i, %if.else1823.i, %if.then1806.i, %if.else1499.i, %if.else1479.i, %if.then1464.i, %if.else1363.i, %if.else1328.i, %if.then1299.i
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
