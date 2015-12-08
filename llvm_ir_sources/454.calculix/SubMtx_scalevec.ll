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
  %cmp = icmp eq %struct._SubMtx* %mtxA, null
  %cmp1 = icmp eq double* %y0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x0, null
  %or.cond45 = or i1 %or.cond, %cmp3
  br i1 %or.cond45, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %x0) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([99 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %x0, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end11:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb12
    i32 9, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end11
  %4 = bitcast double** %entriesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  %5 = bitcast i32* %nrowA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, double** %entriesA.i) #5
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %sw.epilog [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond10.preheader.i
  ]

for.cond10.preheader.i:                           ; preds = %sw.bb
  %7 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp1159.i = icmp sgt i32 %7, 0
  br i1 %cmp1159.i, label %for.body12.lr.ph.i, label %sw.epilog

for.body12.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %8 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body12.i

for.cond.preheader.i:                             ; preds = %sw.bb
  %9 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp156.i = icmp sgt i32 %9, 0
  br i1 %cmp156.i, label %for.body.lr.ph.i, label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %10 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds double* %10, i64 %indvars.iv.i
  %11 = load double* %arrayidx.i, align 8, !tbaa !4
  %arrayidx3.i = getelementptr inbounds double* %x0, i64 %indvars.iv.i
  %12 = load double* %arrayidx3.i, align 8, !tbaa !4
  %mul.i = fmul double %11, %12
  %arrayidx5.i = getelementptr inbounds double* %y0, i64 %indvars.iv.i
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %sw.epilog, label %for.body.i

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv65.i = phi i64 [ 1, %for.body12.lr.ph.i ], [ %indvars.iv.next66.i, %for.body12.i ]
  %indvars.iv63.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next64.i, %for.body12.i ]
  %irowA9.061.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc30.i, %for.body12.i ]
  %arrayidx14.i = getelementptr inbounds double* %x0, i64 %indvars.iv63.i
  %13 = load double* %arrayidx14.i, align 8, !tbaa !4
  %arrayidx16.i = getelementptr inbounds double* %x0, i64 %indvars.iv65.i
  %14 = load double* %arrayidx16.i, align 8, !tbaa !4
  %arrayidx18.i = getelementptr inbounds double* %8, i64 %indvars.iv63.i
  %15 = load double* %arrayidx18.i, align 8, !tbaa !4
  %arrayidx20.i = getelementptr inbounds double* %8, i64 %indvars.iv65.i
  %16 = load double* %arrayidx20.i, align 8, !tbaa !4
  %mul21.i = fmul double %13, %15
  %mul22.i = fmul double %14, %16
  %sub.i = fsub double %mul21.i, %mul22.i
  %arrayidx24.i = getelementptr inbounds double* %y0, i64 %indvars.iv63.i
  store double %sub.i, double* %arrayidx24.i, align 8, !tbaa !4
  %mul25.i = fmul double %14, %15
  %mul26.i = fmul double %13, %16
  %add.i = fadd double %mul25.i, %mul26.i
  %arrayidx28.i = getelementptr inbounds double* %y0, i64 %indvars.iv65.i
  store double %add.i, double* %arrayidx28.i, align 8, !tbaa !4
  %inc30.i = add nsw i32 %irowA9.061.i, 1
  %indvars.iv.next64.i = add i64 %indvars.iv63.i, 2
  %indvars.iv.next66.i = add i64 %indvars.iv65.i, 2
  %exitcond102 = icmp eq i32 %inc30.i, %7
  br i1 %exitcond102, label %sw.epilog, label %for.body12.i

sw.bb12:                                          ; preds = %if.end11
  %17 = bitcast double** %entries.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #4
  %18 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #4
  %19 = bitcast i32* %nrowA.i46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #4
  %20 = bitcast i32** %pivotsizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i46, i32* %nentA.i, i32** %pivotsizes.i, double** %entries.i) #5
  %21 = load i32* %type, align 4, !tbaa !3
  switch i32 %21, label %sw.epilog [
    i32 1, label %for.cond.preheader.i48
    i32 2, label %for.cond54.preheader.i
  ]

for.cond54.preheader.i:                           ; preds = %sw.bb12
  %22 = load i32* %nrowA.i46, align 4, !tbaa !3
  %cmp55269.i = icmp sgt i32 %22, 0
  br i1 %cmp55269.i, label %for.body56.lr.ph.i, label %sw.epilog

for.body56.lr.ph.i:                               ; preds = %for.cond54.preheader.i
  %23 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %24 = load double** %entries.i, align 8, !tbaa !0
  br label %for.body56.i

for.cond.preheader.i48:                           ; preds = %sw.bb12
  %25 = load i32* %nrowA.i46, align 4, !tbaa !3
  %cmp1262.i = icmp sgt i32 %25, 0
  br i1 %cmp1262.i, label %for.body.lr.ph.i49, label %sw.epilog

for.body.lr.ph.i49:                               ; preds = %for.cond.preheader.i48
  %26 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %27 = load double** %entries.i, align 8, !tbaa !0
  br label %for.body.i52

for.body.i52:                                     ; preds = %for.inc.i, %for.body.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ 0, %for.body.lr.ph.i49 ], [ %indvars.iv.next.i59, %for.inc.i ]
  %ipivot.0265.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %inc46.i, %for.inc.i ]
  %irowA.0264.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %irowA.1.i, %for.inc.i ]
  %kk.0263.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %kk.1.i, %for.inc.i ]
  %arrayidx.i51 = getelementptr inbounds i32* %26, i64 %indvars.iv.i50
  %28 = load i32* %arrayidx.i51, align 4, !tbaa !3
  switch i32 %28, label %if.else42.i [
    i32 1, label %if.then3.i
    i32 2, label %if.then14.i
  ]

if.then3.i:                                       ; preds = %for.body.i52
  %idxprom4.i = sext i32 %kk.0263.i to i64
  %arrayidx5.i53 = getelementptr inbounds double* %27, i64 %idxprom4.i
  %29 = load double* %arrayidx5.i53, align 8, !tbaa !4
  %idxprom6.i = sext i32 %irowA.0264.i to i64
  %arrayidx7.i = getelementptr inbounds double* %x0, i64 %idxprom6.i
  %30 = load double* %arrayidx7.i, align 8, !tbaa !4
  %mul.i54 = fmul double %29, %30
  %arrayidx9.i = getelementptr inbounds double* %y0, i64 %idxprom6.i
  store double %mul.i54, double* %arrayidx9.i, align 8, !tbaa !4
  %inc.i = add nsw i32 %kk.0263.i, 1
  %inc10.i = add nsw i32 %irowA.0264.i, 1
  br label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i52
  %idxprom17.i = sext i32 %kk.0263.i to i64
  %arrayidx18.i55 = getelementptr inbounds double* %27, i64 %idxprom17.i
  %31 = load double* %arrayidx18.i55, align 8, !tbaa !4
  %add.i56 = add nsw i32 %kk.0263.i, 1
  %idxprom19.i = sext i32 %add.i56 to i64
  %arrayidx20.i57 = getelementptr inbounds double* %27, i64 %idxprom19.i
  %32 = load double* %arrayidx20.i57, align 8, !tbaa !4
  %add21.i = add nsw i32 %kk.0263.i, 2
  %idxprom22.i = sext i32 %add21.i to i64
  %arrayidx23.i = getelementptr inbounds double* %27, i64 %idxprom22.i
  %33 = load double* %arrayidx23.i, align 8, !tbaa !4
  %idxprom24.i = sext i32 %irowA.0264.i to i64
  %arrayidx25.i = getelementptr inbounds double* %x0, i64 %idxprom24.i
  %34 = load double* %arrayidx25.i, align 8, !tbaa !4
  %add26.i = add nsw i32 %irowA.0264.i, 1
  %idxprom27.i = sext i32 %add26.i to i64
  %arrayidx28.i58 = getelementptr inbounds double* %x0, i64 %idxprom27.i
  %35 = load double* %arrayidx28.i58, align 8, !tbaa !4
  %mul29.i = fmul double %31, %34
  %mul30.i = fmul double %32, %35
  %add31.i = fadd double %mul29.i, %mul30.i
  %arrayidx33.i = getelementptr inbounds double* %y0, i64 %idxprom24.i
  store double %add31.i, double* %arrayidx33.i, align 8, !tbaa !4
  %mul34.i = fmul double %32, %34
  %mul35.i = fmul double %33, %35
  %add36.i = fadd double %mul34.i, %mul35.i
  %arrayidx39.i = getelementptr inbounds double* %y0, i64 %idxprom27.i
  store double %add36.i, double* %arrayidx39.i, align 8, !tbaa !4
  %add40.i = add nsw i32 %kk.0263.i, 3
  %add41.i = add nsw i32 %irowA.0264.i, 2
  br label %for.inc.i

if.else42.i:                                      ; preds = %for.body.i52
  %36 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0265.i, i32 %28) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc.i:                                        ; preds = %if.then14.i, %if.then3.i
  %kk.1.i = phi i32 [ %inc.i, %if.then3.i ], [ %add40.i, %if.then14.i ]
  %irowA.1.i = phi i32 [ %inc10.i, %if.then3.i ], [ %add41.i, %if.then14.i ]
  %indvars.iv.next.i59 = add i64 %indvars.iv.i50, 1
  %inc46.i = add nsw i32 %ipivot.0265.i, 1
  %cmp1.i60 = icmp slt i32 %irowA.1.i, %25
  br i1 %cmp1.i60, label %for.body.i52, label %sw.epilog

for.body56.i:                                     ; preds = %for.inc163.i, %for.body56.lr.ph.i
  %indvars.iv280.i = phi i64 [ 0, %for.body56.lr.ph.i ], [ %indvars.iv.next281.i, %for.inc163.i ]
  %iloc.0274.i = phi i32 [ 1, %for.body56.lr.ph.i ], [ %iloc.1.i, %for.inc163.i ]
  %ipivot51.0273.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %inc164.i, %for.inc163.i ]
  %irowA52.0272.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %irowA52.1.i, %for.inc163.i ]
  %kk53.0271.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %kk53.1.i, %for.inc163.i ]
  %rloc.0270.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %rloc.1.i, %for.inc163.i ]
  %arrayidx58.i = getelementptr inbounds i32* %23, i64 %indvars.iv280.i
  %37 = load i32* %arrayidx58.i, align 4, !tbaa !3
  switch i32 %37, label %if.else157.i [
    i32 1, label %if.then60.i
    i32 2, label %if.then87.i
  ]

if.then60.i:                                      ; preds = %for.body56.i
  %idxprom61.i = sext i32 %kk53.0271.i to i64
  %arrayidx62.i = getelementptr inbounds double* %24, i64 %idxprom61.i
  %38 = load double* %arrayidx62.i, align 8, !tbaa !4
  %add63.i = add nsw i32 %kk53.0271.i, 1
  %idxprom64.i = sext i32 %add63.i to i64
  %arrayidx65.i = getelementptr inbounds double* %24, i64 %idxprom64.i
  %39 = load double* %arrayidx65.i, align 8, !tbaa !4
  %idxprom66.i = sext i32 %rloc.0270.i to i64
  %arrayidx67.i = getelementptr inbounds double* %x0, i64 %idxprom66.i
  %40 = load double* %arrayidx67.i, align 8, !tbaa !4
  %idxprom68.i = sext i32 %iloc.0274.i to i64
  %arrayidx69.i = getelementptr inbounds double* %x0, i64 %idxprom68.i
  %41 = load double* %arrayidx69.i, align 8, !tbaa !4
  %mul70.i = fmul double %38, %40
  %mul71.i = fmul double %39, %41
  %sub.i61 = fsub double %mul70.i, %mul71.i
  %arrayidx73.i = getelementptr inbounds double* %y0, i64 %idxprom66.i
  store double %sub.i61, double* %arrayidx73.i, align 8, !tbaa !4
  %mul74.i = fmul double %38, %41
  %mul75.i = fmul double %39, %40
  %add76.i = fadd double %mul75.i, %mul74.i
  %arrayidx78.i = getelementptr inbounds double* %y0, i64 %idxprom68.i
  store double %add76.i, double* %arrayidx78.i, align 8, !tbaa !4
  %add79.i = add nsw i32 %kk53.0271.i, 2
  %inc80.i = add nsw i32 %irowA52.0272.i, 1
  %add81.i = add nsw i32 %rloc.0270.i, 2
  %add82.i = add nsw i32 %iloc.0274.i, 2
  br label %for.inc163.i

if.then87.i:                                      ; preds = %for.body56.i
  %idxprom90.i = sext i32 %kk53.0271.i to i64
  %arrayidx91.i = getelementptr inbounds double* %24, i64 %idxprom90.i
  %42 = load double* %arrayidx91.i, align 8, !tbaa !4
  %add92.i = add nsw i32 %kk53.0271.i, 1
  %idxprom93.i = sext i32 %add92.i to i64
  %arrayidx94.i = getelementptr inbounds double* %24, i64 %idxprom93.i
  %43 = load double* %arrayidx94.i, align 8, !tbaa !4
  %add95.i = add nsw i32 %kk53.0271.i, 2
  %idxprom96.i = sext i32 %add95.i to i64
  %arrayidx97.i = getelementptr inbounds double* %24, i64 %idxprom96.i
  %44 = load double* %arrayidx97.i, align 8, !tbaa !4
  %add98.i = add nsw i32 %kk53.0271.i, 3
  %idxprom99.i = sext i32 %add98.i to i64
  %arrayidx100.i = getelementptr inbounds double* %24, i64 %idxprom99.i
  %45 = load double* %arrayidx100.i, align 8, !tbaa !4
  %add101.i = add nsw i32 %kk53.0271.i, 4
  %idxprom102.i = sext i32 %add101.i to i64
  %arrayidx103.i = getelementptr inbounds double* %24, i64 %idxprom102.i
  %46 = load double* %arrayidx103.i, align 8, !tbaa !4
  %add104.i = add nsw i32 %kk53.0271.i, 5
  %idxprom105.i = sext i32 %add104.i to i64
  %arrayidx106.i = getelementptr inbounds double* %24, i64 %idxprom105.i
  %47 = load double* %arrayidx106.i, align 8, !tbaa !4
  %add107.i = add nsw i32 %rloc.0270.i, 2
  %add108.i = add nsw i32 %iloc.0274.i, 2
  %idxprom109.i = sext i32 %rloc.0270.i to i64
  %arrayidx110.i = getelementptr inbounds double* %x0, i64 %idxprom109.i
  %48 = load double* %arrayidx110.i, align 8, !tbaa !4
  %idxprom111.i = sext i32 %iloc.0274.i to i64
  %arrayidx112.i = getelementptr inbounds double* %x0, i64 %idxprom111.i
  %49 = load double* %arrayidx112.i, align 8, !tbaa !4
  %idxprom113.i = sext i32 %add107.i to i64
  %arrayidx114.i = getelementptr inbounds double* %x0, i64 %idxprom113.i
  %50 = load double* %arrayidx114.i, align 8, !tbaa !4
  %idxprom115.i = sext i32 %add108.i to i64
  %arrayidx116.i = getelementptr inbounds double* %x0, i64 %idxprom115.i
  %51 = load double* %arrayidx116.i, align 8, !tbaa !4
  %mul117.i = fmul double %42, %48
  %mul118.i = fmul double %43, %49
  %sub119.i = fsub double %mul117.i, %mul118.i
  %mul120.i = fmul double %44, %50
  %add121.i = fadd double %sub119.i, %mul120.i
  %mul122.i = fmul double %45, %51
  %sub123.i = fsub double %add121.i, %mul122.i
  %arrayidx125.i = getelementptr inbounds double* %y0, i64 %idxprom109.i
  store double %sub123.i, double* %arrayidx125.i, align 8, !tbaa !4
  %mul126.i = fmul double %42, %49
  %mul127.i = fmul double %43, %48
  %add128.i = fadd double %mul127.i, %mul126.i
  %mul129.i = fmul double %44, %51
  %add130.i = fadd double %add128.i, %mul129.i
  %mul131.i = fmul double %45, %50
  %add132.i = fadd double %mul131.i, %add130.i
  %arrayidx134.i = getelementptr inbounds double* %y0, i64 %idxprom111.i
  store double %add132.i, double* %arrayidx134.i, align 8, !tbaa !4
  %mul135.i = fmul double %44, %48
  %mul136.i = fmul double %45, %49
  %sub137.i = fsub double %mul135.i, %mul136.i
  %mul138.i = fmul double %46, %50
  %add139.i = fadd double %sub137.i, %mul138.i
  %mul140.i = fmul double %47, %51
  %sub141.i = fsub double %add139.i, %mul140.i
  %arrayidx143.i = getelementptr inbounds double* %y0, i64 %idxprom113.i
  store double %sub141.i, double* %arrayidx143.i, align 8, !tbaa !4
  %mul144.i = fmul double %44, %49
  %mul145.i = fmul double %45, %48
  %add146.i = fadd double %mul145.i, %mul144.i
  %mul147.i = fmul double %46, %51
  %add148.i = fadd double %add146.i, %mul147.i
  %mul149.i = fmul double %47, %50
  %add150.i = fadd double %mul149.i, %add148.i
  %arrayidx152.i = getelementptr inbounds double* %y0, i64 %idxprom115.i
  store double %add150.i, double* %arrayidx152.i, align 8, !tbaa !4
  %add153.i = add nsw i32 %kk53.0271.i, 6
  %add154.i = add nsw i32 %irowA52.0272.i, 2
  %add155.i = add nsw i32 %rloc.0270.i, 4
  %add156.i = add nsw i32 %iloc.0274.i, 4
  br label %for.inc163.i

if.else157.i:                                     ; preds = %for.body56.i
  %52 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call160.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([57 x i8]* @.str12, i64 0, i64 0), i32 %ipivot51.0273.i, i32 %37) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc163.i:                                     ; preds = %if.then87.i, %if.then60.i
  %rloc.1.i = phi i32 [ %add81.i, %if.then60.i ], [ %add155.i, %if.then87.i ]
  %kk53.1.i = phi i32 [ %add79.i, %if.then60.i ], [ %add153.i, %if.then87.i ]
  %irowA52.1.i = phi i32 [ %inc80.i, %if.then60.i ], [ %add154.i, %if.then87.i ]
  %iloc.1.i = phi i32 [ %add82.i, %if.then60.i ], [ %add156.i, %if.then87.i ]
  %indvars.iv.next281.i = add i64 %indvars.iv280.i, 1
  %inc164.i = add nsw i32 %ipivot51.0273.i, 1
  %cmp55.i = icmp slt i32 %irowA52.1.i, %22
  br i1 %cmp55.i, label %for.body56.i, label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  %cmp15 = icmp eq i32 %1, 2
  br i1 %cmp15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %sw.bb13
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([95 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %x0, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %sw.bb13
  %54 = bitcast double** %entries.i62 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #4
  %55 = bitcast i32* %nentA.i63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #4
  %56 = bitcast i32* %nrowA.i64 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #4
  %57 = bitcast i32** %pivotsizes.i65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i64, i32* %nentA.i63, i32** %pivotsizes.i65, double** %entries.i62) #5
  %58 = load i32* %nrowA.i64, align 4, !tbaa !3
  %cmp143.i = icmp sgt i32 %58, 0
  br i1 %cmp143.i, label %for.body.lr.ph.i66, label %sw.epilog

for.body.lr.ph.i66:                               ; preds = %if.end19
  %59 = load i32** %pivotsizes.i65, align 8, !tbaa !0
  %60 = load double** %entries.i62, align 8, !tbaa !0
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.inc.i89, %for.body.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %for.body.lr.ph.i66 ], [ %indvars.iv.next.i88, %for.inc.i89 ]
  %iloc.0148.i = phi i32 [ 1, %for.body.lr.ph.i66 ], [ %iloc.1.i87, %for.inc.i89 ]
  %ipivot.0147.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %inc84.i, %for.inc.i89 ]
  %irowA.0146.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %irowA.1.i86, %for.inc.i89 ]
  %kk.0145.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %kk.1.i85, %for.inc.i89 ]
  %rloc.0144.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %rloc.1.i84, %for.inc.i89 ]
  %arrayidx.i68 = getelementptr inbounds i32* %59, i64 %indvars.iv.i67
  %61 = load i32* %arrayidx.i68, align 4, !tbaa !3
  switch i32 %61, label %if.else80.i [
    i32 1, label %if.then.i
    i32 2, label %if.then22.i
  ]

if.then.i:                                        ; preds = %for.body.i69
  %idxprom2.i = sext i32 %kk.0145.i to i64
  %arrayidx3.i70 = getelementptr inbounds double* %60, i64 %idxprom2.i
  %62 = load double* %arrayidx3.i70, align 8, !tbaa !4
  %inc4.i = add nsw i32 %kk.0145.i, 2
  %idxprom5.i = sext i32 %rloc.0144.i to i64
  %arrayidx6.i = getelementptr inbounds double* %x0, i64 %idxprom5.i
  %63 = load double* %arrayidx6.i, align 8, !tbaa !4
  %idxprom7.i = sext i32 %iloc.0148.i to i64
  %arrayidx8.i = getelementptr inbounds double* %x0, i64 %idxprom7.i
  %64 = load double* %arrayidx8.i, align 8, !tbaa !4
  %mul.i71 = fmul double %62, %63
  %mul9.i = fmul double %64, 0.000000e+00
  %sub.i72 = fsub double %mul.i71, %mul9.i
  %arrayidx11.i = getelementptr inbounds double* %y0, i64 %idxprom5.i
  store double %sub.i72, double* %arrayidx11.i, align 8, !tbaa !4
  %mul12.i = fmul double %62, %64
  %mul13.i = fmul double %63, 0.000000e+00
  %add.i73 = fadd double %mul13.i, %mul12.i
  %arrayidx15.i = getelementptr inbounds double* %y0, i64 %idxprom7.i
  store double %add.i73, double* %arrayidx15.i, align 8, !tbaa !4
  %inc16.i = add nsw i32 %irowA.0146.i, 1
  %add17.i = add nsw i32 %rloc.0144.i, 2
  %add18.i = add nsw i32 %iloc.0148.i, 2
  br label %for.inc.i89

if.then22.i:                                      ; preds = %for.body.i69
  %add25.i = add nsw i32 %rloc.0144.i, 2
  %add26.i74 = add nsw i32 %iloc.0148.i, 2
  %idxprom28.i = sext i32 %kk.0145.i to i64
  %arrayidx29.i = getelementptr inbounds double* %60, i64 %idxprom28.i
  %65 = load double* %arrayidx29.i, align 8, !tbaa !4
  %inc30.i75 = add nsw i32 %kk.0145.i, 2
  %inc31.i = add nsw i32 %kk.0145.i, 3
  %idxprom32.i = sext i32 %inc30.i75 to i64
  %arrayidx33.i76 = getelementptr inbounds double* %60, i64 %idxprom32.i
  %66 = load double* %arrayidx33.i76, align 8, !tbaa !4
  %inc34.i = add nsw i32 %kk.0145.i, 4
  %idxprom35.i = sext i32 %inc31.i to i64
  %arrayidx36.i = getelementptr inbounds double* %60, i64 %idxprom35.i
  %67 = load double* %arrayidx36.i, align 8, !tbaa !4
  %idxprom38.i = sext i32 %inc34.i to i64
  %arrayidx39.i77 = getelementptr inbounds double* %60, i64 %idxprom38.i
  %68 = load double* %arrayidx39.i77, align 8, !tbaa !4
  %inc40.i = add nsw i32 %kk.0145.i, 6
  %idxprom41.i = sext i32 %rloc.0144.i to i64
  %arrayidx42.i = getelementptr inbounds double* %x0, i64 %idxprom41.i
  %69 = load double* %arrayidx42.i, align 8, !tbaa !4
  %idxprom43.i = sext i32 %iloc.0148.i to i64
  %arrayidx44.i = getelementptr inbounds double* %x0, i64 %idxprom43.i
  %70 = load double* %arrayidx44.i, align 8, !tbaa !4
  %idxprom45.i = sext i32 %add25.i to i64
  %arrayidx46.i = getelementptr inbounds double* %x0, i64 %idxprom45.i
  %71 = load double* %arrayidx46.i, align 8, !tbaa !4
  %idxprom47.i = sext i32 %add26.i74 to i64
  %arrayidx48.i = getelementptr inbounds double* %x0, i64 %idxprom47.i
  %72 = load double* %arrayidx48.i, align 8, !tbaa !4
  %mul49.i = fmul double %65, %69
  %mul50.i = fmul double %66, %71
  %add51.i = fadd double %mul49.i, %mul50.i
  %mul52.i = fmul double %67, %72
  %sub53.i = fsub double %add51.i, %mul52.i
  %arrayidx55.i = getelementptr inbounds double* %y0, i64 %idxprom41.i
  store double %sub53.i, double* %arrayidx55.i, align 8, !tbaa !4
  %mul56.i = fmul double %65, %70
  %mul57.i = fmul double %66, %72
  %add58.i = fadd double %mul56.i, %mul57.i
  %mul59.i = fmul double %67, %71
  %add60.i = fadd double %mul59.i, %add58.i
  %arrayidx62.i78 = getelementptr inbounds double* %y0, i64 %idxprom43.i
  store double %add60.i, double* %arrayidx62.i78, align 8, !tbaa !4
  %mul63.i = fmul double %66, %69
  %mul64.i = fmul double %67, %70
  %add65.i = fadd double %mul63.i, %mul64.i
  %mul66.i = fmul double %68, %71
  %add67.i = fadd double %add65.i, %mul66.i
  %arrayidx69.i79 = getelementptr inbounds double* %y0, i64 %idxprom45.i
  store double %add67.i, double* %arrayidx69.i79, align 8, !tbaa !4
  %mul70.i80 = fmul double %66, %70
  %mul71.i81 = fmul double %67, %69
  %sub72.i = fsub double %mul70.i80, %mul71.i81
  %mul73.i = fmul double %68, %72
  %add74.i = fadd double %sub72.i, %mul73.i
  %arrayidx76.i = getelementptr inbounds double* %y0, i64 %idxprom47.i
  store double %add74.i, double* %arrayidx76.i, align 8, !tbaa !4
  %add77.i = add nsw i32 %irowA.0146.i, 2
  %add78.i = add nsw i32 %rloc.0144.i, 4
  %add79.i82 = add nsw i32 %iloc.0148.i, 4
  br label %for.inc.i89

if.else80.i:                                      ; preds = %for.body.i69
  %73 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([57 x i8]* @.str12, i64 0, i64 0), i32 %ipivot.0147.i, i32 %61) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc.i89:                                      ; preds = %if.then22.i, %if.then.i
  %rloc.1.i84 = phi i32 [ %add17.i, %if.then.i ], [ %add78.i, %if.then22.i ]
  %kk.1.i85 = phi i32 [ %inc4.i, %if.then.i ], [ %inc40.i, %if.then22.i ]
  %irowA.1.i86 = phi i32 [ %inc16.i, %if.then.i ], [ %add77.i, %if.then22.i ]
  %iloc.1.i87 = phi i32 [ %add18.i, %if.then.i ], [ %add79.i82, %if.then22.i ]
  %indvars.iv.next.i88 = add i64 %indvars.iv.i67, 1
  %inc84.i = add nsw i32 %ipivot.0147.i, 1
  %cmp.i = icmp slt i32 %irowA.1.i86, %58
  br i1 %cmp.i, label %for.body.i69, label %sw.epilog

sw.default:                                       ; preds = %if.end11
  %74 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str3, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %74)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %for.inc.i89, %for.inc163.i, %for.inc.i, %for.body12.i, %for.body.i, %if.end19, %for.cond.preheader.i48, %for.cond54.preheader.i, %sw.bb12, %for.cond.preheader.i, %for.cond10.preheader.i, %sw.bb
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

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
  %cmp = icmp eq %struct._SubMtx* %mtxA, null
  %cmp1 = icmp eq double* %y0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %y1, null
  %or.cond61 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %x0, null
  %or.cond62 = or i1 %or.cond61, %cmp5
  %cmp7 = icmp eq double* %x1, null
  %or.cond63 = or i1 %or.cond62, %cmp7
  br i1 %or.cond63, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([105 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb16
    i32 9, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end15
  %4 = bitcast double** %entriesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  %5 = bitcast i32* %nrowA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, double** %entriesA.i) #5
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %sw.epilog [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond15.preheader.i
  ]

for.cond15.preheader.i:                           ; preds = %sw.bb
  %7 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp1695.i = icmp sgt i32 %7, 0
  br i1 %cmp1695.i, label %for.body17.lr.ph.i, label %sw.epilog

for.body17.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %8 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body17.i

for.cond.preheader.i:                             ; preds = %sw.bb
  %9 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp192.i = icmp sgt i32 %9, 0
  br i1 %cmp192.i, label %for.body.lr.ph.i, label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %10 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds double* %10, i64 %indvars.iv.i
  %11 = load double* %arrayidx.i, align 8, !tbaa !4
  %arrayidx3.i = getelementptr inbounds double* %x0, i64 %indvars.iv.i
  %12 = load double* %arrayidx3.i, align 8, !tbaa !4
  %mul.i = fmul double %11, %12
  %arrayidx5.i = getelementptr inbounds double* %y0, i64 %indvars.iv.i
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !4
  %arrayidx7.i = getelementptr inbounds double* %x1, i64 %indvars.iv.i
  %13 = load double* %arrayidx7.i, align 8, !tbaa !4
  %mul8.i = fmul double %11, %13
  %arrayidx10.i = getelementptr inbounds double* %y1, i64 %indvars.iv.i
  store double %mul8.i, double* %arrayidx10.i, align 8, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %sw.epilog, label %for.body.i

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.lr.ph.i
  %indvars.iv101.i = phi i64 [ 1, %for.body17.lr.ph.i ], [ %indvars.iv.next102.i, %for.body17.i ]
  %indvars.iv99.i = phi i64 [ 0, %for.body17.lr.ph.i ], [ %indvars.iv.next100.i, %for.body17.i ]
  %irowA14.097.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc49.i, %for.body17.i ]
  %arrayidx19.i = getelementptr inbounds double* %x0, i64 %indvars.iv99.i
  %14 = load double* %arrayidx19.i, align 8, !tbaa !4
  %arrayidx21.i = getelementptr inbounds double* %x0, i64 %indvars.iv101.i
  %15 = load double* %arrayidx21.i, align 8, !tbaa !4
  %arrayidx23.i = getelementptr inbounds double* %x1, i64 %indvars.iv99.i
  %16 = load double* %arrayidx23.i, align 8, !tbaa !4
  %arrayidx25.i = getelementptr inbounds double* %x1, i64 %indvars.iv101.i
  %17 = load double* %arrayidx25.i, align 8, !tbaa !4
  %arrayidx27.i = getelementptr inbounds double* %8, i64 %indvars.iv99.i
  %18 = load double* %arrayidx27.i, align 8, !tbaa !4
  %arrayidx29.i = getelementptr inbounds double* %8, i64 %indvars.iv101.i
  %19 = load double* %arrayidx29.i, align 8, !tbaa !4
  %mul30.i = fmul double %14, %18
  %mul31.i = fmul double %15, %19
  %sub.i = fsub double %mul30.i, %mul31.i
  %arrayidx33.i = getelementptr inbounds double* %y0, i64 %indvars.iv99.i
  store double %sub.i, double* %arrayidx33.i, align 8, !tbaa !4
  %mul34.i = fmul double %15, %18
  %mul35.i = fmul double %14, %19
  %add.i = fadd double %mul34.i, %mul35.i
  %arrayidx37.i = getelementptr inbounds double* %y0, i64 %indvars.iv101.i
  store double %add.i, double* %arrayidx37.i, align 8, !tbaa !4
  %mul38.i = fmul double %16, %18
  %mul39.i = fmul double %17, %19
  %sub40.i = fsub double %mul38.i, %mul39.i
  %arrayidx42.i = getelementptr inbounds double* %y1, i64 %indvars.iv99.i
  store double %sub40.i, double* %arrayidx42.i, align 8, !tbaa !4
  %mul43.i = fmul double %17, %18
  %mul44.i = fmul double %16, %19
  %add45.i = fadd double %mul43.i, %mul44.i
  %arrayidx47.i = getelementptr inbounds double* %y1, i64 %indvars.iv101.i
  store double %add45.i, double* %arrayidx47.i, align 8, !tbaa !4
  %inc49.i = add nsw i32 %irowA14.097.i, 1
  %indvars.iv.next100.i = add i64 %indvars.iv99.i, 2
  %indvars.iv.next102.i = add i64 %indvars.iv101.i, 2
  %exitcond124 = icmp eq i32 %inc49.i, %7
  br i1 %exitcond124, label %sw.epilog, label %for.body17.i

sw.bb16:                                          ; preds = %if.end15
  %20 = bitcast double** %entries.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #4
  %21 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #4
  %22 = bitcast i32* %nrowA.i64 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #4
  %23 = bitcast i32** %pivotsizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i64, i32* %nentA.i, i32** %pivotsizes.i, double** %entries.i) #5
  %24 = load i32* %type, align 4, !tbaa !3
  switch i32 %24, label %sw.epilog [
    i32 1, label %for.cond.preheader.i66
    i32 2, label %for.cond76.preheader.i
  ]

for.cond76.preheader.i:                           ; preds = %sw.bb16
  %25 = load i32* %nrowA.i64, align 4, !tbaa !3
  %cmp77424.i = icmp sgt i32 %25, 0
  br i1 %cmp77424.i, label %for.body78.lr.ph.i, label %sw.epilog

for.body78.lr.ph.i:                               ; preds = %for.cond76.preheader.i
  %26 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %27 = load double** %entries.i, align 8, !tbaa !0
  br label %for.body78.i

for.cond.preheader.i66:                           ; preds = %sw.bb16
  %28 = load i32* %nrowA.i64, align 4, !tbaa !3
  %cmp1417.i = icmp sgt i32 %28, 0
  br i1 %cmp1417.i, label %for.body.lr.ph.i67, label %sw.epilog

for.body.lr.ph.i67:                               ; preds = %for.cond.preheader.i66
  %29 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %30 = load double** %entries.i, align 8, !tbaa !0
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.inc.i, %for.body.lr.ph.i67
  %indvars.iv.i68 = phi i64 [ 0, %for.body.lr.ph.i67 ], [ %indvars.iv.next.i77, %for.inc.i ]
  %ipivot.0420.i = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %inc68.i, %for.inc.i ]
  %irowA.0419.i = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %irowA.1.i, %for.inc.i ]
  %kk.0418.i = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %kk.1.i, %for.inc.i ]
  %arrayidx.i69 = getelementptr inbounds i32* %29, i64 %indvars.iv.i68
  %31 = load i32* %arrayidx.i69, align 4, !tbaa !3
  switch i32 %31, label %if.else64.i [
    i32 1, label %if.then3.i
    i32 2, label %if.then19.i
  ]

if.then3.i:                                       ; preds = %for.body.i70
  %idxprom4.i = sext i32 %kk.0418.i to i64
  %arrayidx5.i71 = getelementptr inbounds double* %30, i64 %idxprom4.i
  %32 = load double* %arrayidx5.i71, align 8, !tbaa !4
  %idxprom6.i = sext i32 %irowA.0419.i to i64
  %arrayidx7.i72 = getelementptr inbounds double* %x0, i64 %idxprom6.i
  %33 = load double* %arrayidx7.i72, align 8, !tbaa !4
  %arrayidx9.i = getelementptr inbounds double* %x1, i64 %idxprom6.i
  %34 = load double* %arrayidx9.i, align 8, !tbaa !4
  %mul.i73 = fmul double %32, %33
  %arrayidx11.i = getelementptr inbounds double* %y0, i64 %idxprom6.i
  store double %mul.i73, double* %arrayidx11.i, align 8, !tbaa !4
  %mul12.i = fmul double %32, %34
  %arrayidx14.i = getelementptr inbounds double* %y1, i64 %idxprom6.i
  store double %mul12.i, double* %arrayidx14.i, align 8, !tbaa !4
  %inc.i = add nsw i32 %kk.0418.i, 1
  %inc15.i = add nsw i32 %irowA.0419.i, 1
  br label %for.inc.i

if.then19.i:                                      ; preds = %for.body.i70
  %idxprom23.i = sext i32 %kk.0418.i to i64
  %arrayidx24.i = getelementptr inbounds double* %30, i64 %idxprom23.i
  %35 = load double* %arrayidx24.i, align 8, !tbaa !4
  %add.i74 = add nsw i32 %kk.0418.i, 1
  %idxprom25.i = sext i32 %add.i74 to i64
  %arrayidx26.i = getelementptr inbounds double* %30, i64 %idxprom25.i
  %36 = load double* %arrayidx26.i, align 8, !tbaa !4
  %add27.i = add nsw i32 %kk.0418.i, 2
  %idxprom28.i = sext i32 %add27.i to i64
  %arrayidx29.i75 = getelementptr inbounds double* %30, i64 %idxprom28.i
  %37 = load double* %arrayidx29.i75, align 8, !tbaa !4
  %idxprom30.i = sext i32 %irowA.0419.i to i64
  %arrayidx31.i = getelementptr inbounds double* %x0, i64 %idxprom30.i
  %38 = load double* %arrayidx31.i, align 8, !tbaa !4
  %arrayidx33.i76 = getelementptr inbounds double* %x1, i64 %idxprom30.i
  %39 = load double* %arrayidx33.i76, align 8, !tbaa !4
  %add34.i = add nsw i32 %irowA.0419.i, 1
  %idxprom35.i = sext i32 %add34.i to i64
  %arrayidx36.i = getelementptr inbounds double* %x0, i64 %idxprom35.i
  %40 = load double* %arrayidx36.i, align 8, !tbaa !4
  %arrayidx39.i = getelementptr inbounds double* %x1, i64 %idxprom35.i
  %41 = load double* %arrayidx39.i, align 8, !tbaa !4
  %mul40.i = fmul double %35, %38
  %mul41.i = fmul double %36, %40
  %add42.i = fadd double %mul40.i, %mul41.i
  %arrayidx44.i = getelementptr inbounds double* %y0, i64 %idxprom30.i
  store double %add42.i, double* %arrayidx44.i, align 8, !tbaa !4
  %mul45.i = fmul double %35, %39
  %mul46.i = fmul double %36, %41
  %add47.i = fadd double %mul45.i, %mul46.i
  %arrayidx49.i = getelementptr inbounds double* %y1, i64 %idxprom30.i
  store double %add47.i, double* %arrayidx49.i, align 8, !tbaa !4
  %mul50.i = fmul double %36, %38
  %mul51.i = fmul double %37, %40
  %add52.i = fadd double %mul50.i, %mul51.i
  %arrayidx55.i = getelementptr inbounds double* %y0, i64 %idxprom35.i
  store double %add52.i, double* %arrayidx55.i, align 8, !tbaa !4
  %mul56.i = fmul double %36, %39
  %mul57.i = fmul double %37, %41
  %add58.i = fadd double %mul56.i, %mul57.i
  %arrayidx61.i = getelementptr inbounds double* %y1, i64 %idxprom35.i
  store double %add58.i, double* %arrayidx61.i, align 8, !tbaa !4
  %add62.i = add nsw i32 %kk.0418.i, 3
  %add63.i = add nsw i32 %irowA.0419.i, 2
  br label %for.inc.i

if.else64.i:                                      ; preds = %for.body.i70
  %42 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0420.i, i32 %31) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc.i:                                        ; preds = %if.then19.i, %if.then3.i
  %kk.1.i = phi i32 [ %inc.i, %if.then3.i ], [ %add62.i, %if.then19.i ]
  %irowA.1.i = phi i32 [ %inc15.i, %if.then3.i ], [ %add63.i, %if.then19.i ]
  %indvars.iv.next.i77 = add i64 %indvars.iv.i68, 1
  %inc68.i = add nsw i32 %ipivot.0420.i, 1
  %cmp1.i78 = icmp slt i32 %irowA.1.i, %28
  br i1 %cmp1.i78, label %for.body.i70, label %sw.epilog

for.body78.i:                                     ; preds = %for.inc243.i, %for.body78.lr.ph.i
  %indvars.iv435.i = phi i64 [ 0, %for.body78.lr.ph.i ], [ %indvars.iv.next436.i, %for.inc243.i ]
  %iloc.0429.i = phi i32 [ 1, %for.body78.lr.ph.i ], [ %iloc.1.i, %for.inc243.i ]
  %ipivot73.0428.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %inc244.i, %for.inc243.i ]
  %irowA74.0427.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %irowA74.1.i, %for.inc243.i ]
  %kk75.0426.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %kk75.1.i, %for.inc243.i ]
  %rloc.0425.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %rloc.1.i, %for.inc243.i ]
  %arrayidx80.i = getelementptr inbounds i32* %26, i64 %indvars.iv435.i
  %43 = load i32* %arrayidx80.i, align 4, !tbaa !3
  switch i32 %43, label %if.else237.i [
    i32 1, label %if.then82.i
    i32 2, label %if.then123.i
  ]

if.then82.i:                                      ; preds = %for.body78.i
  %idxprom83.i = sext i32 %kk75.0426.i to i64
  %arrayidx84.i = getelementptr inbounds double* %27, i64 %idxprom83.i
  %44 = load double* %arrayidx84.i, align 8, !tbaa !4
  %add85.i = add nsw i32 %kk75.0426.i, 1
  %idxprom86.i = sext i32 %add85.i to i64
  %arrayidx87.i = getelementptr inbounds double* %27, i64 %idxprom86.i
  %45 = load double* %arrayidx87.i, align 8, !tbaa !4
  %idxprom88.i = sext i32 %rloc.0425.i to i64
  %arrayidx89.i = getelementptr inbounds double* %x0, i64 %idxprom88.i
  %46 = load double* %arrayidx89.i, align 8, !tbaa !4
  %idxprom90.i = sext i32 %iloc.0429.i to i64
  %arrayidx91.i = getelementptr inbounds double* %x0, i64 %idxprom90.i
  %47 = load double* %arrayidx91.i, align 8, !tbaa !4
  %arrayidx93.i = getelementptr inbounds double* %x1, i64 %idxprom88.i
  %48 = load double* %arrayidx93.i, align 8, !tbaa !4
  %arrayidx95.i = getelementptr inbounds double* %x1, i64 %idxprom90.i
  %49 = load double* %arrayidx95.i, align 8, !tbaa !4
  %mul96.i = fmul double %44, %46
  %mul97.i = fmul double %45, %47
  %sub.i79 = fsub double %mul96.i, %mul97.i
  %arrayidx99.i = getelementptr inbounds double* %y0, i64 %idxprom88.i
  store double %sub.i79, double* %arrayidx99.i, align 8, !tbaa !4
  %mul100.i = fmul double %44, %47
  %mul101.i = fmul double %45, %46
  %add102.i = fadd double %mul101.i, %mul100.i
  %arrayidx104.i = getelementptr inbounds double* %y0, i64 %idxprom90.i
  store double %add102.i, double* %arrayidx104.i, align 8, !tbaa !4
  %mul105.i = fmul double %44, %48
  %mul106.i = fmul double %45, %49
  %sub107.i = fsub double %mul105.i, %mul106.i
  %arrayidx109.i = getelementptr inbounds double* %y1, i64 %idxprom88.i
  store double %sub107.i, double* %arrayidx109.i, align 8, !tbaa !4
  %mul110.i = fmul double %44, %49
  %mul111.i = fmul double %45, %48
  %add112.i = fadd double %mul111.i, %mul110.i
  %arrayidx114.i = getelementptr inbounds double* %y1, i64 %idxprom90.i
  store double %add112.i, double* %arrayidx114.i, align 8, !tbaa !4
  %add115.i = add nsw i32 %kk75.0426.i, 2
  %inc116.i = add nsw i32 %irowA74.0427.i, 1
  %add117.i = add nsw i32 %rloc.0425.i, 2
  %add118.i = add nsw i32 %iloc.0429.i, 2
  br label %for.inc243.i

if.then123.i:                                     ; preds = %for.body78.i
  %idxprom126.i = sext i32 %kk75.0426.i to i64
  %arrayidx127.i = getelementptr inbounds double* %27, i64 %idxprom126.i
  %50 = load double* %arrayidx127.i, align 8, !tbaa !4
  %add128.i = add nsw i32 %kk75.0426.i, 1
  %idxprom129.i = sext i32 %add128.i to i64
  %arrayidx130.i = getelementptr inbounds double* %27, i64 %idxprom129.i
  %51 = load double* %arrayidx130.i, align 8, !tbaa !4
  %add131.i = add nsw i32 %kk75.0426.i, 2
  %idxprom132.i = sext i32 %add131.i to i64
  %arrayidx133.i = getelementptr inbounds double* %27, i64 %idxprom132.i
  %52 = load double* %arrayidx133.i, align 8, !tbaa !4
  %add134.i = add nsw i32 %kk75.0426.i, 3
  %idxprom135.i = sext i32 %add134.i to i64
  %arrayidx136.i = getelementptr inbounds double* %27, i64 %idxprom135.i
  %53 = load double* %arrayidx136.i, align 8, !tbaa !4
  %add137.i = add nsw i32 %kk75.0426.i, 4
  %idxprom138.i = sext i32 %add137.i to i64
  %arrayidx139.i = getelementptr inbounds double* %27, i64 %idxprom138.i
  %54 = load double* %arrayidx139.i, align 8, !tbaa !4
  %add140.i = add nsw i32 %kk75.0426.i, 5
  %idxprom141.i = sext i32 %add140.i to i64
  %arrayidx142.i = getelementptr inbounds double* %27, i64 %idxprom141.i
  %55 = load double* %arrayidx142.i, align 8, !tbaa !4
  %add143.i = add nsw i32 %rloc.0425.i, 2
  %add144.i = add nsw i32 %iloc.0429.i, 2
  %idxprom145.i = sext i32 %rloc.0425.i to i64
  %arrayidx146.i = getelementptr inbounds double* %x0, i64 %idxprom145.i
  %56 = load double* %arrayidx146.i, align 8, !tbaa !4
  %idxprom147.i = sext i32 %iloc.0429.i to i64
  %arrayidx148.i = getelementptr inbounds double* %x0, i64 %idxprom147.i
  %57 = load double* %arrayidx148.i, align 8, !tbaa !4
  %arrayidx150.i = getelementptr inbounds double* %x1, i64 %idxprom145.i
  %58 = load double* %arrayidx150.i, align 8, !tbaa !4
  %arrayidx152.i = getelementptr inbounds double* %x1, i64 %idxprom147.i
  %59 = load double* %arrayidx152.i, align 8, !tbaa !4
  %idxprom153.i = sext i32 %add143.i to i64
  %arrayidx154.i = getelementptr inbounds double* %x0, i64 %idxprom153.i
  %60 = load double* %arrayidx154.i, align 8, !tbaa !4
  %idxprom155.i = sext i32 %add144.i to i64
  %arrayidx156.i = getelementptr inbounds double* %x0, i64 %idxprom155.i
  %61 = load double* %arrayidx156.i, align 8, !tbaa !4
  %arrayidx158.i = getelementptr inbounds double* %x1, i64 %idxprom153.i
  %62 = load double* %arrayidx158.i, align 8, !tbaa !4
  %arrayidx160.i = getelementptr inbounds double* %x1, i64 %idxprom155.i
  %63 = load double* %arrayidx160.i, align 8, !tbaa !4
  %mul161.i = fmul double %50, %56
  %mul162.i = fmul double %51, %57
  %sub163.i = fsub double %mul161.i, %mul162.i
  %mul164.i = fmul double %52, %60
  %add165.i = fadd double %sub163.i, %mul164.i
  %mul166.i = fmul double %53, %61
  %sub167.i = fsub double %add165.i, %mul166.i
  %arrayidx169.i = getelementptr inbounds double* %y0, i64 %idxprom145.i
  store double %sub167.i, double* %arrayidx169.i, align 8, !tbaa !4
  %mul170.i = fmul double %50, %57
  %mul171.i = fmul double %51, %56
  %add172.i = fadd double %mul171.i, %mul170.i
  %mul173.i = fmul double %52, %61
  %add174.i = fadd double %add172.i, %mul173.i
  %mul175.i = fmul double %53, %60
  %add176.i = fadd double %mul175.i, %add174.i
  %arrayidx178.i = getelementptr inbounds double* %y0, i64 %idxprom147.i
  store double %add176.i, double* %arrayidx178.i, align 8, !tbaa !4
  %mul179.i = fmul double %50, %58
  %mul180.i = fmul double %51, %59
  %sub181.i = fsub double %mul179.i, %mul180.i
  %mul182.i = fmul double %52, %62
  %add183.i = fadd double %sub181.i, %mul182.i
  %mul184.i = fmul double %53, %63
  %sub185.i = fsub double %add183.i, %mul184.i
  %arrayidx187.i = getelementptr inbounds double* %y1, i64 %idxprom145.i
  store double %sub185.i, double* %arrayidx187.i, align 8, !tbaa !4
  %mul188.i = fmul double %50, %59
  %mul189.i = fmul double %51, %58
  %add190.i = fadd double %mul189.i, %mul188.i
  %mul191.i = fmul double %52, %63
  %add192.i = fadd double %add190.i, %mul191.i
  %mul193.i = fmul double %53, %62
  %add194.i = fadd double %mul193.i, %add192.i
  %arrayidx196.i = getelementptr inbounds double* %y1, i64 %idxprom147.i
  store double %add194.i, double* %arrayidx196.i, align 8, !tbaa !4
  %mul197.i = fmul double %52, %56
  %mul198.i = fmul double %53, %57
  %sub199.i = fsub double %mul197.i, %mul198.i
  %mul200.i = fmul double %54, %60
  %add201.i = fadd double %sub199.i, %mul200.i
  %mul202.i = fmul double %55, %61
  %sub203.i = fsub double %add201.i, %mul202.i
  %arrayidx205.i = getelementptr inbounds double* %y0, i64 %idxprom153.i
  store double %sub203.i, double* %arrayidx205.i, align 8, !tbaa !4
  %mul206.i = fmul double %52, %57
  %mul207.i = fmul double %53, %56
  %add208.i = fadd double %mul207.i, %mul206.i
  %mul209.i = fmul double %54, %61
  %add210.i = fadd double %add208.i, %mul209.i
  %mul211.i = fmul double %55, %60
  %add212.i = fadd double %mul211.i, %add210.i
  %arrayidx214.i = getelementptr inbounds double* %y0, i64 %idxprom155.i
  store double %add212.i, double* %arrayidx214.i, align 8, !tbaa !4
  %mul215.i = fmul double %52, %58
  %mul216.i = fmul double %53, %59
  %sub217.i = fsub double %mul215.i, %mul216.i
  %mul218.i = fmul double %54, %62
  %add219.i = fadd double %sub217.i, %mul218.i
  %mul220.i = fmul double %55, %63
  %sub221.i = fsub double %add219.i, %mul220.i
  %arrayidx223.i = getelementptr inbounds double* %y1, i64 %idxprom153.i
  store double %sub221.i, double* %arrayidx223.i, align 8, !tbaa !4
  %mul224.i = fmul double %52, %59
  %mul225.i = fmul double %53, %58
  %add226.i = fadd double %mul225.i, %mul224.i
  %mul227.i = fmul double %54, %63
  %add228.i = fadd double %add226.i, %mul227.i
  %mul229.i = fmul double %55, %62
  %add230.i = fadd double %mul229.i, %add228.i
  %arrayidx232.i = getelementptr inbounds double* %y1, i64 %idxprom155.i
  store double %add230.i, double* %arrayidx232.i, align 8, !tbaa !4
  %add233.i = add nsw i32 %kk75.0426.i, 6
  %add234.i = add nsw i32 %irowA74.0427.i, 2
  %add235.i = add nsw i32 %rloc.0425.i, 4
  %add236.i = add nsw i32 %iloc.0429.i, 4
  br label %for.inc243.i

if.else237.i:                                     ; preds = %for.body78.i
  %64 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call240.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([57 x i8]* @.str13, i64 0, i64 0), i32 %ipivot73.0428.i, i32 %43) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc243.i:                                     ; preds = %if.then123.i, %if.then82.i
  %rloc.1.i = phi i32 [ %add117.i, %if.then82.i ], [ %add235.i, %if.then123.i ]
  %kk75.1.i = phi i32 [ %add115.i, %if.then82.i ], [ %add233.i, %if.then123.i ]
  %irowA74.1.i = phi i32 [ %inc116.i, %if.then82.i ], [ %add234.i, %if.then123.i ]
  %iloc.1.i = phi i32 [ %add118.i, %if.then82.i ], [ %add236.i, %if.then123.i ]
  %indvars.iv.next436.i = add i64 %indvars.iv435.i, 1
  %inc244.i = add nsw i32 %ipivot73.0428.i, 1
  %cmp77.i = icmp slt i32 %irowA74.1.i, %25
  br i1 %cmp77.i, label %for.body78.i, label %sw.epilog

sw.bb17:                                          ; preds = %if.end15
  %cmp19 = icmp eq i32 %1, 2
  br i1 %cmp19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  %65 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([101 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %sw.bb17
  %66 = bitcast double** %entries.i80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #4
  %67 = bitcast i32* %nentA.i81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #4
  %68 = bitcast i32* %nrowA.i82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #4
  %69 = bitcast i32** %pivotsizes.i83 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i82, i32* %nentA.i81, i32** %pivotsizes.i83, double** %entries.i80) #5
  %70 = load i32* %nrowA.i82, align 4, !tbaa !3
  %cmp241.i = icmp sgt i32 %70, 0
  br i1 %cmp241.i, label %for.body.lr.ph.i84, label %sw.epilog

for.body.lr.ph.i84:                               ; preds = %if.end23
  %71 = load i32** %pivotsizes.i83, align 8, !tbaa !0
  %72 = load double** %entries.i80, align 8, !tbaa !0
  br label %for.body.i87

for.body.i87:                                     ; preds = %for.inc.i111, %for.body.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ 0, %for.body.lr.ph.i84 ], [ %indvars.iv.next.i110, %for.inc.i111 ]
  %iloc.0246.i = phi i32 [ 1, %for.body.lr.ph.i84 ], [ %iloc.1.i109, %for.inc.i111 ]
  %ipivot.0245.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %inc134.i, %for.inc.i111 ]
  %irowA.0244.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %irowA.1.i108, %for.inc.i111 ]
  %kk.0243.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %kk.1.i107, %for.inc.i111 ]
  %rloc.0242.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %rloc.1.i106, %for.inc.i111 ]
  %arrayidx.i86 = getelementptr inbounds i32* %71, i64 %indvars.iv.i85
  %73 = load i32* %arrayidx.i86, align 4, !tbaa !3
  switch i32 %73, label %if.else130.i [
    i32 1, label %if.then.i
    i32 2, label %if.then36.i
  ]

if.then.i:                                        ; preds = %for.body.i87
  %idxprom2.i = sext i32 %kk.0243.i to i64
  %arrayidx3.i88 = getelementptr inbounds double* %72, i64 %idxprom2.i
  %74 = load double* %arrayidx3.i88, align 8, !tbaa !4
  %inc4.i = add nsw i32 %kk.0243.i, 2
  %idxprom5.i = sext i32 %rloc.0242.i to i64
  %arrayidx6.i = getelementptr inbounds double* %x0, i64 %idxprom5.i
  %75 = load double* %arrayidx6.i, align 8, !tbaa !4
  %idxprom7.i = sext i32 %iloc.0246.i to i64
  %arrayidx8.i = getelementptr inbounds double* %x0, i64 %idxprom7.i
  %76 = load double* %arrayidx8.i, align 8, !tbaa !4
  %arrayidx10.i89 = getelementptr inbounds double* %x1, i64 %idxprom5.i
  %77 = load double* %arrayidx10.i89, align 8, !tbaa !4
  %arrayidx12.i = getelementptr inbounds double* %x1, i64 %idxprom7.i
  %78 = load double* %arrayidx12.i, align 8, !tbaa !4
  %mul.i90 = fmul double %74, %75
  %mul13.i = fmul double %76, 0.000000e+00
  %sub.i91 = fsub double %mul.i90, %mul13.i
  %arrayidx15.i = getelementptr inbounds double* %y0, i64 %idxprom5.i
  store double %sub.i91, double* %arrayidx15.i, align 8, !tbaa !4
  %mul16.i = fmul double %74, %76
  %mul17.i = fmul double %75, 0.000000e+00
  %add.i92 = fadd double %mul17.i, %mul16.i
  %arrayidx19.i93 = getelementptr inbounds double* %y0, i64 %idxprom7.i
  store double %add.i92, double* %arrayidx19.i93, align 8, !tbaa !4
  %mul20.i = fmul double %74, %77
  %mul21.i = fmul double %78, 0.000000e+00
  %sub22.i = fsub double %mul20.i, %mul21.i
  %arrayidx24.i94 = getelementptr inbounds double* %y1, i64 %idxprom5.i
  store double %sub22.i, double* %arrayidx24.i94, align 8, !tbaa !4
  %mul25.i = fmul double %74, %78
  %mul26.i = fmul double %77, 0.000000e+00
  %add27.i95 = fadd double %mul26.i, %mul25.i
  %arrayidx29.i96 = getelementptr inbounds double* %y1, i64 %idxprom7.i
  store double %add27.i95, double* %arrayidx29.i96, align 8, !tbaa !4
  %inc30.i = add nsw i32 %irowA.0244.i, 1
  %add31.i = add nsw i32 %rloc.0242.i, 2
  %add32.i = add nsw i32 %iloc.0246.i, 2
  br label %for.inc.i111

if.then36.i:                                      ; preds = %for.body.i87
  %add39.i = add nsw i32 %rloc.0242.i, 2
  %add40.i = add nsw i32 %iloc.0246.i, 2
  %idxprom42.i = sext i32 %kk.0243.i to i64
  %arrayidx43.i = getelementptr inbounds double* %72, i64 %idxprom42.i
  %79 = load double* %arrayidx43.i, align 8, !tbaa !4
  %inc44.i = add nsw i32 %kk.0243.i, 2
  %inc45.i = add nsw i32 %kk.0243.i, 3
  %idxprom46.i = sext i32 %inc44.i to i64
  %arrayidx47.i97 = getelementptr inbounds double* %72, i64 %idxprom46.i
  %80 = load double* %arrayidx47.i97, align 8, !tbaa !4
  %inc48.i = add nsw i32 %kk.0243.i, 4
  %idxprom49.i = sext i32 %inc45.i to i64
  %arrayidx50.i = getelementptr inbounds double* %72, i64 %idxprom49.i
  %81 = load double* %arrayidx50.i, align 8, !tbaa !4
  %idxprom52.i = sext i32 %inc48.i to i64
  %arrayidx53.i = getelementptr inbounds double* %72, i64 %idxprom52.i
  %82 = load double* %arrayidx53.i, align 8, !tbaa !4
  %inc54.i = add nsw i32 %kk.0243.i, 6
  %idxprom55.i = sext i32 %rloc.0242.i to i64
  %arrayidx56.i = getelementptr inbounds double* %x0, i64 %idxprom55.i
  %83 = load double* %arrayidx56.i, align 8, !tbaa !4
  %idxprom57.i = sext i32 %iloc.0246.i to i64
  %arrayidx58.i = getelementptr inbounds double* %x0, i64 %idxprom57.i
  %84 = load double* %arrayidx58.i, align 8, !tbaa !4
  %arrayidx60.i = getelementptr inbounds double* %x1, i64 %idxprom55.i
  %85 = load double* %arrayidx60.i, align 8, !tbaa !4
  %arrayidx62.i = getelementptr inbounds double* %x1, i64 %idxprom57.i
  %86 = load double* %arrayidx62.i, align 8, !tbaa !4
  %idxprom63.i = sext i32 %add39.i to i64
  %arrayidx64.i = getelementptr inbounds double* %x0, i64 %idxprom63.i
  %87 = load double* %arrayidx64.i, align 8, !tbaa !4
  %idxprom65.i = sext i32 %add40.i to i64
  %arrayidx66.i = getelementptr inbounds double* %x0, i64 %idxprom65.i
  %88 = load double* %arrayidx66.i, align 8, !tbaa !4
  %arrayidx68.i = getelementptr inbounds double* %x1, i64 %idxprom63.i
  %89 = load double* %arrayidx68.i, align 8, !tbaa !4
  %arrayidx70.i = getelementptr inbounds double* %x1, i64 %idxprom65.i
  %90 = load double* %arrayidx70.i, align 8, !tbaa !4
  %mul71.i = fmul double %79, %83
  %mul72.i = fmul double %80, %87
  %add73.i = fadd double %mul71.i, %mul72.i
  %mul74.i = fmul double %81, %88
  %sub75.i = fsub double %add73.i, %mul74.i
  %arrayidx77.i = getelementptr inbounds double* %y0, i64 %idxprom55.i
  store double %sub75.i, double* %arrayidx77.i, align 8, !tbaa !4
  %mul78.i = fmul double %79, %84
  %mul79.i = fmul double %80, %88
  %add80.i = fadd double %mul78.i, %mul79.i
  %mul81.i = fmul double %81, %87
  %add82.i = fadd double %mul81.i, %add80.i
  %arrayidx84.i98 = getelementptr inbounds double* %y0, i64 %idxprom57.i
  store double %add82.i, double* %arrayidx84.i98, align 8, !tbaa !4
  %mul85.i = fmul double %79, %85
  %mul86.i = fmul double %80, %89
  %add87.i = fadd double %mul85.i, %mul86.i
  %mul88.i = fmul double %81, %90
  %sub89.i = fsub double %add87.i, %mul88.i
  %arrayidx91.i99 = getelementptr inbounds double* %y1, i64 %idxprom55.i
  store double %sub89.i, double* %arrayidx91.i99, align 8, !tbaa !4
  %mul92.i = fmul double %79, %86
  %mul93.i = fmul double %80, %90
  %add94.i = fadd double %mul92.i, %mul93.i
  %mul95.i = fmul double %81, %89
  %add96.i = fadd double %mul95.i, %add94.i
  %arrayidx98.i = getelementptr inbounds double* %y1, i64 %idxprom57.i
  store double %add96.i, double* %arrayidx98.i, align 8, !tbaa !4
  %mul99.i = fmul double %80, %83
  %mul100.i100 = fmul double %81, %84
  %add101.i = fadd double %mul99.i, %mul100.i100
  %mul102.i = fmul double %82, %87
  %add103.i = fadd double %add101.i, %mul102.i
  %arrayidx105.i = getelementptr inbounds double* %y0, i64 %idxprom63.i
  store double %add103.i, double* %arrayidx105.i, align 8, !tbaa !4
  %mul106.i101 = fmul double %80, %84
  %mul107.i = fmul double %81, %83
  %sub108.i = fsub double %mul106.i101, %mul107.i
  %mul109.i = fmul double %82, %88
  %add110.i = fadd double %sub108.i, %mul109.i
  %arrayidx112.i = getelementptr inbounds double* %y0, i64 %idxprom65.i
  store double %add110.i, double* %arrayidx112.i, align 8, !tbaa !4
  %mul113.i = fmul double %80, %85
  %mul114.i = fmul double %81, %86
  %add115.i102 = fadd double %mul113.i, %mul114.i
  %mul116.i = fmul double %82, %89
  %add117.i103 = fadd double %add115.i102, %mul116.i
  %arrayidx119.i = getelementptr inbounds double* %y1, i64 %idxprom63.i
  store double %add117.i103, double* %arrayidx119.i, align 8, !tbaa !4
  %mul120.i = fmul double %80, %86
  %mul121.i = fmul double %81, %85
  %sub122.i = fsub double %mul120.i, %mul121.i
  %mul123.i = fmul double %82, %90
  %add124.i = fadd double %sub122.i, %mul123.i
  %arrayidx126.i = getelementptr inbounds double* %y1, i64 %idxprom65.i
  store double %add124.i, double* %arrayidx126.i, align 8, !tbaa !4
  %add127.i = add nsw i32 %irowA.0244.i, 2
  %add128.i104 = add nsw i32 %rloc.0242.i, 4
  %add129.i = add nsw i32 %iloc.0246.i, 4
  br label %for.inc.i111

if.else130.i:                                     ; preds = %for.body.i87
  %91 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([57 x i8]* @.str13, i64 0, i64 0), i32 %ipivot.0245.i, i32 %73) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc.i111:                                     ; preds = %if.then36.i, %if.then.i
  %rloc.1.i106 = phi i32 [ %add31.i, %if.then.i ], [ %add128.i104, %if.then36.i ]
  %kk.1.i107 = phi i32 [ %inc4.i, %if.then.i ], [ %inc54.i, %if.then36.i ]
  %irowA.1.i108 = phi i32 [ %inc30.i, %if.then.i ], [ %add127.i, %if.then36.i ]
  %iloc.1.i109 = phi i32 [ %add32.i, %if.then.i ], [ %add129.i, %if.then36.i ]
  %indvars.iv.next.i110 = add i64 %indvars.iv.i85, 1
  %inc134.i = add nsw i32 %ipivot.0245.i, 1
  %cmp.i = icmp slt i32 %irowA.1.i108, %70
  br i1 %cmp.i, label %for.body.i87, label %sw.epilog

sw.default:                                       ; preds = %if.end15
  %92 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str7, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %92)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %for.inc.i111, %for.inc243.i, %for.inc.i, %for.body17.i, %for.body.i, %if.end23, %for.cond.preheader.i66, %for.cond76.preheader.i, %sw.bb16, %for.cond.preheader.i, %for.cond15.preheader.i, %sw.bb
  ret void
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
  %cmp = icmp eq %struct._SubMtx* %mtxA, null
  %cmp1 = icmp eq double* %y0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %y1, null
  %or.cond77 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %y2, null
  %or.cond78 = or i1 %or.cond77, %cmp5
  %cmp7 = icmp eq double* %x0, null
  %or.cond79 = or i1 %or.cond78, %cmp7
  %cmp9 = icmp eq double* %x1, null
  %or.cond80 = or i1 %or.cond79, %cmp9
  %cmp11 = icmp eq double* %x2, null
  %or.cond81 = or i1 %or.cond80, %cmp11
  br i1 %or.cond81, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([111 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb20
    i32 9, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end19
  %4 = bitcast double** %entriesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  %5 = bitcast i32* %nrowA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, double** %entriesA.i) #5
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %sw.epilog [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond20.preheader.i
  ]

for.cond20.preheader.i:                           ; preds = %sw.bb
  %7 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp21131.i = icmp sgt i32 %7, 0
  br i1 %cmp21131.i, label %for.body22.lr.ph.i, label %sw.epilog

for.body22.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  %8 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body22.i

for.cond.preheader.i:                             ; preds = %sw.bb
  %9 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp1128.i = icmp sgt i32 %9, 0
  br i1 %cmp1128.i, label %for.body.lr.ph.i, label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %10 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds double* %10, i64 %indvars.iv.i
  %11 = load double* %arrayidx.i, align 8, !tbaa !4
  %arrayidx3.i = getelementptr inbounds double* %x0, i64 %indvars.iv.i
  %12 = load double* %arrayidx3.i, align 8, !tbaa !4
  %mul.i = fmul double %11, %12
  %arrayidx5.i = getelementptr inbounds double* %y0, i64 %indvars.iv.i
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !4
  %arrayidx7.i = getelementptr inbounds double* %x1, i64 %indvars.iv.i
  %13 = load double* %arrayidx7.i, align 8, !tbaa !4
  %mul8.i = fmul double %11, %13
  %arrayidx10.i = getelementptr inbounds double* %y1, i64 %indvars.iv.i
  store double %mul8.i, double* %arrayidx10.i, align 8, !tbaa !4
  %arrayidx12.i = getelementptr inbounds double* %x2, i64 %indvars.iv.i
  %14 = load double* %arrayidx12.i, align 8, !tbaa !4
  %mul13.i = fmul double %11, %14
  %arrayidx15.i = getelementptr inbounds double* %y2, i64 %indvars.iv.i
  store double %mul13.i, double* %arrayidx15.i, align 8, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %sw.epilog, label %for.body.i

for.body22.i:                                     ; preds = %for.body22.i, %for.body22.lr.ph.i
  %indvars.iv137.i = phi i64 [ 1, %for.body22.lr.ph.i ], [ %indvars.iv.next138.i, %for.body22.i ]
  %indvars.iv135.i = phi i64 [ 0, %for.body22.lr.ph.i ], [ %indvars.iv.next136.i, %for.body22.i ]
  %irowA19.0133.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc68.i, %for.body22.i ]
  %arrayidx24.i = getelementptr inbounds double* %x0, i64 %indvars.iv135.i
  %15 = load double* %arrayidx24.i, align 8, !tbaa !4
  %arrayidx26.i = getelementptr inbounds double* %x0, i64 %indvars.iv137.i
  %16 = load double* %arrayidx26.i, align 8, !tbaa !4
  %arrayidx28.i = getelementptr inbounds double* %x1, i64 %indvars.iv135.i
  %17 = load double* %arrayidx28.i, align 8, !tbaa !4
  %arrayidx30.i = getelementptr inbounds double* %x1, i64 %indvars.iv137.i
  %18 = load double* %arrayidx30.i, align 8, !tbaa !4
  %arrayidx32.i = getelementptr inbounds double* %x2, i64 %indvars.iv135.i
  %19 = load double* %arrayidx32.i, align 8, !tbaa !4
  %arrayidx34.i = getelementptr inbounds double* %x2, i64 %indvars.iv137.i
  %20 = load double* %arrayidx34.i, align 8, !tbaa !4
  %arrayidx36.i = getelementptr inbounds double* %8, i64 %indvars.iv135.i
  %21 = load double* %arrayidx36.i, align 8, !tbaa !4
  %arrayidx38.i = getelementptr inbounds double* %8, i64 %indvars.iv137.i
  %22 = load double* %arrayidx38.i, align 8, !tbaa !4
  %mul39.i = fmul double %15, %21
  %mul40.i = fmul double %16, %22
  %sub.i = fsub double %mul39.i, %mul40.i
  %arrayidx42.i = getelementptr inbounds double* %y0, i64 %indvars.iv135.i
  store double %sub.i, double* %arrayidx42.i, align 8, !tbaa !4
  %mul43.i = fmul double %16, %21
  %mul44.i = fmul double %15, %22
  %add.i = fadd double %mul43.i, %mul44.i
  %arrayidx46.i = getelementptr inbounds double* %y0, i64 %indvars.iv137.i
  store double %add.i, double* %arrayidx46.i, align 8, !tbaa !4
  %mul47.i = fmul double %17, %21
  %mul48.i = fmul double %18, %22
  %sub49.i = fsub double %mul47.i, %mul48.i
  %arrayidx51.i = getelementptr inbounds double* %y1, i64 %indvars.iv135.i
  store double %sub49.i, double* %arrayidx51.i, align 8, !tbaa !4
  %mul52.i = fmul double %18, %21
  %mul53.i = fmul double %17, %22
  %add54.i = fadd double %mul52.i, %mul53.i
  %arrayidx56.i = getelementptr inbounds double* %y1, i64 %indvars.iv137.i
  store double %add54.i, double* %arrayidx56.i, align 8, !tbaa !4
  %mul57.i = fmul double %19, %21
  %mul58.i = fmul double %20, %22
  %sub59.i = fsub double %mul57.i, %mul58.i
  %arrayidx61.i = getelementptr inbounds double* %y2, i64 %indvars.iv135.i
  store double %sub59.i, double* %arrayidx61.i, align 8, !tbaa !4
  %mul62.i = fmul double %20, %21
  %mul63.i = fmul double %19, %22
  %add64.i = fadd double %mul62.i, %mul63.i
  %arrayidx66.i = getelementptr inbounds double* %y2, i64 %indvars.iv137.i
  store double %add64.i, double* %arrayidx66.i, align 8, !tbaa !4
  %inc68.i = add nsw i32 %irowA19.0133.i, 1
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 2
  %indvars.iv.next138.i = add i64 %indvars.iv137.i, 2
  %exitcond156 = icmp eq i32 %inc68.i, %7
  br i1 %exitcond156, label %sw.epilog, label %for.body22.i

sw.bb20:                                          ; preds = %if.end19
  %23 = bitcast double** %entries.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #4
  %24 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #4
  %25 = bitcast i32* %nrowA.i82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #4
  %26 = bitcast i32** %pivotsizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i82, i32* %nentA.i, i32** %pivotsizes.i, double** %entries.i) #5
  %27 = load i32* %type, align 4, !tbaa !3
  switch i32 %27, label %sw.epilog [
    i32 1, label %for.cond.preheader.i84
    i32 2, label %for.cond98.preheader.i
  ]

for.cond98.preheader.i:                           ; preds = %sw.bb20
  %28 = load i32* %nrowA.i82, align 4, !tbaa !3
  %cmp99579.i = icmp sgt i32 %28, 0
  br i1 %cmp99579.i, label %for.body100.lr.ph.i, label %sw.epilog

for.body100.lr.ph.i:                              ; preds = %for.cond98.preheader.i
  %29 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %30 = load double** %entries.i, align 8, !tbaa !0
  br label %for.body100.i

for.cond.preheader.i84:                           ; preds = %sw.bb20
  %31 = load i32* %nrowA.i82, align 4, !tbaa !3
  %cmp1572.i = icmp sgt i32 %31, 0
  br i1 %cmp1572.i, label %for.body.lr.ph.i85, label %sw.epilog

for.body.lr.ph.i85:                               ; preds = %for.cond.preheader.i84
  %32 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %33 = load double** %entries.i, align 8, !tbaa !0
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.inc.i, %for.body.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %for.body.lr.ph.i85 ], [ %indvars.iv.next.i98, %for.inc.i ]
  %ipivot.0575.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %inc90.i, %for.inc.i ]
  %irowA.0574.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %irowA.1.i, %for.inc.i ]
  %kk.0573.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %kk.1.i, %for.inc.i ]
  %arrayidx.i87 = getelementptr inbounds i32* %32, i64 %indvars.iv.i86
  %34 = load i32* %arrayidx.i87, align 4, !tbaa !3
  switch i32 %34, label %if.else86.i [
    i32 1, label %if.then3.i
    i32 2, label %if.then24.i
  ]

if.then3.i:                                       ; preds = %for.body.i88
  %idxprom4.i = sext i32 %kk.0573.i to i64
  %arrayidx5.i89 = getelementptr inbounds double* %33, i64 %idxprom4.i
  %35 = load double* %arrayidx5.i89, align 8, !tbaa !4
  %idxprom6.i = sext i32 %irowA.0574.i to i64
  %arrayidx7.i90 = getelementptr inbounds double* %x0, i64 %idxprom6.i
  %36 = load double* %arrayidx7.i90, align 8, !tbaa !4
  %arrayidx9.i = getelementptr inbounds double* %x1, i64 %idxprom6.i
  %37 = load double* %arrayidx9.i, align 8, !tbaa !4
  %arrayidx11.i = getelementptr inbounds double* %x2, i64 %idxprom6.i
  %38 = load double* %arrayidx11.i, align 8, !tbaa !4
  %mul.i91 = fmul double %35, %36
  %arrayidx13.i = getelementptr inbounds double* %y0, i64 %idxprom6.i
  store double %mul.i91, double* %arrayidx13.i, align 8, !tbaa !4
  %mul14.i = fmul double %35, %37
  %arrayidx16.i = getelementptr inbounds double* %y1, i64 %idxprom6.i
  store double %mul14.i, double* %arrayidx16.i, align 8, !tbaa !4
  %mul17.i = fmul double %35, %38
  %arrayidx19.i = getelementptr inbounds double* %y2, i64 %idxprom6.i
  store double %mul17.i, double* %arrayidx19.i, align 8, !tbaa !4
  %inc.i = add nsw i32 %kk.0573.i, 1
  %inc20.i = add nsw i32 %irowA.0574.i, 1
  br label %for.inc.i

if.then24.i:                                      ; preds = %for.body.i88
  %idxprom29.i = sext i32 %kk.0573.i to i64
  %arrayidx30.i92 = getelementptr inbounds double* %33, i64 %idxprom29.i
  %39 = load double* %arrayidx30.i92, align 8, !tbaa !4
  %add.i93 = add nsw i32 %kk.0573.i, 1
  %idxprom31.i = sext i32 %add.i93 to i64
  %arrayidx32.i94 = getelementptr inbounds double* %33, i64 %idxprom31.i
  %40 = load double* %arrayidx32.i94, align 8, !tbaa !4
  %add33.i = add nsw i32 %kk.0573.i, 2
  %idxprom34.i = sext i32 %add33.i to i64
  %arrayidx35.i = getelementptr inbounds double* %33, i64 %idxprom34.i
  %41 = load double* %arrayidx35.i, align 8, !tbaa !4
  %idxprom36.i = sext i32 %irowA.0574.i to i64
  %arrayidx37.i = getelementptr inbounds double* %x0, i64 %idxprom36.i
  %42 = load double* %arrayidx37.i, align 8, !tbaa !4
  %arrayidx39.i = getelementptr inbounds double* %x1, i64 %idxprom36.i
  %43 = load double* %arrayidx39.i, align 8, !tbaa !4
  %arrayidx41.i = getelementptr inbounds double* %x2, i64 %idxprom36.i
  %44 = load double* %arrayidx41.i, align 8, !tbaa !4
  %add42.i = add nsw i32 %irowA.0574.i, 1
  %idxprom43.i = sext i32 %add42.i to i64
  %arrayidx44.i = getelementptr inbounds double* %x0, i64 %idxprom43.i
  %45 = load double* %arrayidx44.i, align 8, !tbaa !4
  %arrayidx47.i = getelementptr inbounds double* %x1, i64 %idxprom43.i
  %46 = load double* %arrayidx47.i, align 8, !tbaa !4
  %arrayidx50.i = getelementptr inbounds double* %x2, i64 %idxprom43.i
  %47 = load double* %arrayidx50.i, align 8, !tbaa !4
  %mul51.i = fmul double %39, %42
  %mul52.i95 = fmul double %40, %45
  %add53.i = fadd double %mul51.i, %mul52.i95
  %arrayidx55.i = getelementptr inbounds double* %y0, i64 %idxprom36.i
  store double %add53.i, double* %arrayidx55.i, align 8, !tbaa !4
  %mul56.i = fmul double %39, %43
  %mul57.i96 = fmul double %40, %46
  %add58.i = fadd double %mul56.i, %mul57.i96
  %arrayidx60.i = getelementptr inbounds double* %y1, i64 %idxprom36.i
  store double %add58.i, double* %arrayidx60.i, align 8, !tbaa !4
  %mul61.i = fmul double %39, %44
  %mul62.i97 = fmul double %40, %47
  %add63.i = fadd double %mul61.i, %mul62.i97
  %arrayidx65.i = getelementptr inbounds double* %y2, i64 %idxprom36.i
  store double %add63.i, double* %arrayidx65.i, align 8, !tbaa !4
  %mul66.i = fmul double %40, %42
  %mul67.i = fmul double %41, %45
  %add68.i = fadd double %mul66.i, %mul67.i
  %arrayidx71.i = getelementptr inbounds double* %y0, i64 %idxprom43.i
  store double %add68.i, double* %arrayidx71.i, align 8, !tbaa !4
  %mul72.i = fmul double %40, %43
  %mul73.i = fmul double %41, %46
  %add74.i = fadd double %mul72.i, %mul73.i
  %arrayidx77.i = getelementptr inbounds double* %y1, i64 %idxprom43.i
  store double %add74.i, double* %arrayidx77.i, align 8, !tbaa !4
  %mul78.i = fmul double %40, %44
  %mul79.i = fmul double %41, %47
  %add80.i = fadd double %mul78.i, %mul79.i
  %arrayidx83.i = getelementptr inbounds double* %y2, i64 %idxprom43.i
  store double %add80.i, double* %arrayidx83.i, align 8, !tbaa !4
  %add84.i = add nsw i32 %kk.0573.i, 3
  %add85.i = add nsw i32 %irowA.0574.i, 2
  br label %for.inc.i

if.else86.i:                                      ; preds = %for.body.i88
  %48 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0575.i, i32 %34) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc.i:                                        ; preds = %if.then24.i, %if.then3.i
  %kk.1.i = phi i32 [ %inc.i, %if.then3.i ], [ %add84.i, %if.then24.i ]
  %irowA.1.i = phi i32 [ %inc20.i, %if.then3.i ], [ %add85.i, %if.then24.i ]
  %indvars.iv.next.i98 = add i64 %indvars.iv.i86, 1
  %inc90.i = add nsw i32 %ipivot.0575.i, 1
  %cmp1.i99 = icmp slt i32 %irowA.1.i, %31
  br i1 %cmp1.i99, label %for.body.i88, label %sw.epilog

for.body100.i:                                    ; preds = %for.inc323.i, %for.body100.lr.ph.i
  %indvars.iv590.i = phi i64 [ 0, %for.body100.lr.ph.i ], [ %indvars.iv.next591.i, %for.inc323.i ]
  %iloc.0584.i = phi i32 [ 1, %for.body100.lr.ph.i ], [ %iloc.1.i, %for.inc323.i ]
  %ipivot95.0583.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %inc324.i, %for.inc323.i ]
  %irowA96.0582.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %irowA96.1.i, %for.inc323.i ]
  %kk97.0581.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %kk97.1.i, %for.inc323.i ]
  %rloc.0580.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %rloc.1.i, %for.inc323.i ]
  %arrayidx102.i = getelementptr inbounds i32* %29, i64 %indvars.iv590.i
  %49 = load i32* %arrayidx102.i, align 4, !tbaa !3
  switch i32 %49, label %if.else317.i [
    i32 1, label %if.then104.i
    i32 2, label %if.then159.i
  ]

if.then104.i:                                     ; preds = %for.body100.i
  %idxprom105.i = sext i32 %kk97.0581.i to i64
  %arrayidx106.i = getelementptr inbounds double* %30, i64 %idxprom105.i
  %50 = load double* %arrayidx106.i, align 8, !tbaa !4
  %add107.i = add nsw i32 %kk97.0581.i, 1
  %idxprom108.i = sext i32 %add107.i to i64
  %arrayidx109.i = getelementptr inbounds double* %30, i64 %idxprom108.i
  %51 = load double* %arrayidx109.i, align 8, !tbaa !4
  %idxprom110.i = sext i32 %rloc.0580.i to i64
  %arrayidx111.i = getelementptr inbounds double* %x0, i64 %idxprom110.i
  %52 = load double* %arrayidx111.i, align 8, !tbaa !4
  %idxprom112.i = sext i32 %iloc.0584.i to i64
  %arrayidx113.i = getelementptr inbounds double* %x0, i64 %idxprom112.i
  %53 = load double* %arrayidx113.i, align 8, !tbaa !4
  %arrayidx115.i = getelementptr inbounds double* %x1, i64 %idxprom110.i
  %54 = load double* %arrayidx115.i, align 8, !tbaa !4
  %arrayidx117.i = getelementptr inbounds double* %x1, i64 %idxprom112.i
  %55 = load double* %arrayidx117.i, align 8, !tbaa !4
  %arrayidx119.i = getelementptr inbounds double* %x2, i64 %idxprom110.i
  %56 = load double* %arrayidx119.i, align 8, !tbaa !4
  %arrayidx121.i = getelementptr inbounds double* %x2, i64 %idxprom112.i
  %57 = load double* %arrayidx121.i, align 8, !tbaa !4
  %mul122.i = fmul double %50, %52
  %mul123.i = fmul double %51, %53
  %sub.i100 = fsub double %mul122.i, %mul123.i
  %arrayidx125.i = getelementptr inbounds double* %y0, i64 %idxprom110.i
  store double %sub.i100, double* %arrayidx125.i, align 8, !tbaa !4
  %mul126.i = fmul double %50, %53
  %mul127.i = fmul double %51, %52
  %add128.i = fadd double %mul127.i, %mul126.i
  %arrayidx130.i = getelementptr inbounds double* %y0, i64 %idxprom112.i
  store double %add128.i, double* %arrayidx130.i, align 8, !tbaa !4
  %mul131.i = fmul double %50, %54
  %mul132.i = fmul double %51, %55
  %sub133.i = fsub double %mul131.i, %mul132.i
  %arrayidx135.i = getelementptr inbounds double* %y1, i64 %idxprom110.i
  store double %sub133.i, double* %arrayidx135.i, align 8, !tbaa !4
  %mul136.i = fmul double %50, %55
  %mul137.i = fmul double %51, %54
  %add138.i = fadd double %mul137.i, %mul136.i
  %arrayidx140.i = getelementptr inbounds double* %y1, i64 %idxprom112.i
  store double %add138.i, double* %arrayidx140.i, align 8, !tbaa !4
  %mul141.i = fmul double %50, %56
  %mul142.i = fmul double %51, %57
  %sub143.i = fsub double %mul141.i, %mul142.i
  %arrayidx145.i = getelementptr inbounds double* %y2, i64 %idxprom110.i
  store double %sub143.i, double* %arrayidx145.i, align 8, !tbaa !4
  %mul146.i = fmul double %50, %57
  %mul147.i = fmul double %51, %56
  %add148.i = fadd double %mul147.i, %mul146.i
  %arrayidx150.i = getelementptr inbounds double* %y2, i64 %idxprom112.i
  store double %add148.i, double* %arrayidx150.i, align 8, !tbaa !4
  %add151.i = add nsw i32 %kk97.0581.i, 2
  %inc152.i = add nsw i32 %irowA96.0582.i, 1
  %add153.i = add nsw i32 %rloc.0580.i, 2
  %add154.i = add nsw i32 %iloc.0584.i, 2
  br label %for.inc323.i

if.then159.i:                                     ; preds = %for.body100.i
  %idxprom162.i = sext i32 %kk97.0581.i to i64
  %arrayidx163.i = getelementptr inbounds double* %30, i64 %idxprom162.i
  %58 = load double* %arrayidx163.i, align 8, !tbaa !4
  %add164.i = add nsw i32 %kk97.0581.i, 1
  %idxprom165.i = sext i32 %add164.i to i64
  %arrayidx166.i = getelementptr inbounds double* %30, i64 %idxprom165.i
  %59 = load double* %arrayidx166.i, align 8, !tbaa !4
  %add167.i = add nsw i32 %kk97.0581.i, 2
  %idxprom168.i = sext i32 %add167.i to i64
  %arrayidx169.i = getelementptr inbounds double* %30, i64 %idxprom168.i
  %60 = load double* %arrayidx169.i, align 8, !tbaa !4
  %add170.i = add nsw i32 %kk97.0581.i, 3
  %idxprom171.i = sext i32 %add170.i to i64
  %arrayidx172.i = getelementptr inbounds double* %30, i64 %idxprom171.i
  %61 = load double* %arrayidx172.i, align 8, !tbaa !4
  %add173.i = add nsw i32 %kk97.0581.i, 4
  %idxprom174.i = sext i32 %add173.i to i64
  %arrayidx175.i = getelementptr inbounds double* %30, i64 %idxprom174.i
  %62 = load double* %arrayidx175.i, align 8, !tbaa !4
  %add176.i = add nsw i32 %kk97.0581.i, 5
  %idxprom177.i = sext i32 %add176.i to i64
  %arrayidx178.i = getelementptr inbounds double* %30, i64 %idxprom177.i
  %63 = load double* %arrayidx178.i, align 8, !tbaa !4
  %add179.i = add nsw i32 %rloc.0580.i, 2
  %add180.i = add nsw i32 %iloc.0584.i, 2
  %idxprom181.i = sext i32 %rloc.0580.i to i64
  %arrayidx182.i = getelementptr inbounds double* %x0, i64 %idxprom181.i
  %64 = load double* %arrayidx182.i, align 8, !tbaa !4
  %idxprom183.i = sext i32 %iloc.0584.i to i64
  %arrayidx184.i = getelementptr inbounds double* %x0, i64 %idxprom183.i
  %65 = load double* %arrayidx184.i, align 8, !tbaa !4
  %arrayidx186.i = getelementptr inbounds double* %x1, i64 %idxprom181.i
  %66 = load double* %arrayidx186.i, align 8, !tbaa !4
  %arrayidx188.i = getelementptr inbounds double* %x1, i64 %idxprom183.i
  %67 = load double* %arrayidx188.i, align 8, !tbaa !4
  %arrayidx190.i = getelementptr inbounds double* %x2, i64 %idxprom181.i
  %68 = load double* %arrayidx190.i, align 8, !tbaa !4
  %arrayidx192.i = getelementptr inbounds double* %x2, i64 %idxprom183.i
  %69 = load double* %arrayidx192.i, align 8, !tbaa !4
  %idxprom193.i = sext i32 %add179.i to i64
  %arrayidx194.i = getelementptr inbounds double* %x0, i64 %idxprom193.i
  %70 = load double* %arrayidx194.i, align 8, !tbaa !4
  %idxprom195.i = sext i32 %add180.i to i64
  %arrayidx196.i = getelementptr inbounds double* %x0, i64 %idxprom195.i
  %71 = load double* %arrayidx196.i, align 8, !tbaa !4
  %arrayidx198.i = getelementptr inbounds double* %x1, i64 %idxprom193.i
  %72 = load double* %arrayidx198.i, align 8, !tbaa !4
  %arrayidx200.i = getelementptr inbounds double* %x1, i64 %idxprom195.i
  %73 = load double* %arrayidx200.i, align 8, !tbaa !4
  %arrayidx202.i = getelementptr inbounds double* %x2, i64 %idxprom193.i
  %74 = load double* %arrayidx202.i, align 8, !tbaa !4
  %arrayidx204.i = getelementptr inbounds double* %x2, i64 %idxprom195.i
  %75 = load double* %arrayidx204.i, align 8, !tbaa !4
  %mul205.i = fmul double %58, %64
  %mul206.i = fmul double %59, %65
  %sub207.i = fsub double %mul205.i, %mul206.i
  %mul208.i = fmul double %60, %70
  %add209.i = fadd double %sub207.i, %mul208.i
  %mul210.i = fmul double %61, %71
  %sub211.i = fsub double %add209.i, %mul210.i
  %arrayidx213.i = getelementptr inbounds double* %y0, i64 %idxprom181.i
  store double %sub211.i, double* %arrayidx213.i, align 8, !tbaa !4
  %mul214.i = fmul double %58, %65
  %mul215.i = fmul double %59, %64
  %add216.i = fadd double %mul215.i, %mul214.i
  %mul217.i = fmul double %60, %71
  %add218.i = fadd double %add216.i, %mul217.i
  %mul219.i = fmul double %61, %70
  %add220.i = fadd double %mul219.i, %add218.i
  %arrayidx222.i = getelementptr inbounds double* %y0, i64 %idxprom183.i
  store double %add220.i, double* %arrayidx222.i, align 8, !tbaa !4
  %mul223.i = fmul double %58, %66
  %mul224.i = fmul double %59, %67
  %sub225.i = fsub double %mul223.i, %mul224.i
  %mul226.i = fmul double %60, %72
  %add227.i = fadd double %sub225.i, %mul226.i
  %mul228.i = fmul double %61, %73
  %sub229.i = fsub double %add227.i, %mul228.i
  %arrayidx231.i = getelementptr inbounds double* %y1, i64 %idxprom181.i
  store double %sub229.i, double* %arrayidx231.i, align 8, !tbaa !4
  %mul232.i = fmul double %58, %67
  %mul233.i = fmul double %59, %66
  %add234.i = fadd double %mul233.i, %mul232.i
  %mul235.i = fmul double %60, %73
  %add236.i = fadd double %add234.i, %mul235.i
  %mul237.i = fmul double %61, %72
  %add238.i = fadd double %mul237.i, %add236.i
  %arrayidx240.i = getelementptr inbounds double* %y1, i64 %idxprom183.i
  store double %add238.i, double* %arrayidx240.i, align 8, !tbaa !4
  %mul241.i = fmul double %58, %68
  %mul242.i = fmul double %59, %69
  %sub243.i = fsub double %mul241.i, %mul242.i
  %mul244.i = fmul double %60, %74
  %add245.i = fadd double %sub243.i, %mul244.i
  %mul246.i = fmul double %61, %75
  %sub247.i = fsub double %add245.i, %mul246.i
  %arrayidx249.i = getelementptr inbounds double* %y2, i64 %idxprom181.i
  store double %sub247.i, double* %arrayidx249.i, align 8, !tbaa !4
  %mul250.i = fmul double %58, %69
  %mul251.i = fmul double %59, %68
  %add252.i = fadd double %mul251.i, %mul250.i
  %mul253.i = fmul double %60, %75
  %add254.i = fadd double %add252.i, %mul253.i
  %mul255.i = fmul double %61, %74
  %add256.i = fadd double %mul255.i, %add254.i
  %arrayidx258.i = getelementptr inbounds double* %y2, i64 %idxprom183.i
  store double %add256.i, double* %arrayidx258.i, align 8, !tbaa !4
  %mul259.i = fmul double %60, %64
  %mul260.i = fmul double %61, %65
  %sub261.i = fsub double %mul259.i, %mul260.i
  %mul262.i = fmul double %62, %70
  %add263.i = fadd double %sub261.i, %mul262.i
  %mul264.i = fmul double %63, %71
  %sub265.i = fsub double %add263.i, %mul264.i
  %arrayidx267.i = getelementptr inbounds double* %y0, i64 %idxprom193.i
  store double %sub265.i, double* %arrayidx267.i, align 8, !tbaa !4
  %mul268.i = fmul double %60, %65
  %mul269.i = fmul double %61, %64
  %add270.i = fadd double %mul269.i, %mul268.i
  %mul271.i = fmul double %62, %71
  %add272.i = fadd double %add270.i, %mul271.i
  %mul273.i = fmul double %63, %70
  %add274.i = fadd double %mul273.i, %add272.i
  %arrayidx276.i = getelementptr inbounds double* %y0, i64 %idxprom195.i
  store double %add274.i, double* %arrayidx276.i, align 8, !tbaa !4
  %mul277.i = fmul double %60, %66
  %mul278.i = fmul double %61, %67
  %sub279.i = fsub double %mul277.i, %mul278.i
  %mul280.i = fmul double %62, %72
  %add281.i = fadd double %sub279.i, %mul280.i
  %mul282.i = fmul double %63, %73
  %sub283.i = fsub double %add281.i, %mul282.i
  %arrayidx285.i = getelementptr inbounds double* %y1, i64 %idxprom193.i
  store double %sub283.i, double* %arrayidx285.i, align 8, !tbaa !4
  %mul286.i = fmul double %60, %67
  %mul287.i = fmul double %61, %66
  %add288.i = fadd double %mul287.i, %mul286.i
  %mul289.i = fmul double %62, %73
  %add290.i = fadd double %add288.i, %mul289.i
  %mul291.i = fmul double %63, %72
  %add292.i = fadd double %mul291.i, %add290.i
  %arrayidx294.i = getelementptr inbounds double* %y1, i64 %idxprom195.i
  store double %add292.i, double* %arrayidx294.i, align 8, !tbaa !4
  %mul295.i = fmul double %60, %68
  %mul296.i = fmul double %61, %69
  %sub297.i = fsub double %mul295.i, %mul296.i
  %mul298.i = fmul double %62, %74
  %add299.i = fadd double %sub297.i, %mul298.i
  %mul300.i = fmul double %63, %75
  %sub301.i = fsub double %add299.i, %mul300.i
  %arrayidx303.i = getelementptr inbounds double* %y2, i64 %idxprom193.i
  store double %sub301.i, double* %arrayidx303.i, align 8, !tbaa !4
  %mul304.i = fmul double %60, %69
  %mul305.i = fmul double %61, %68
  %add306.i = fadd double %mul305.i, %mul304.i
  %mul307.i = fmul double %62, %75
  %add308.i = fadd double %add306.i, %mul307.i
  %mul309.i = fmul double %63, %74
  %add310.i = fadd double %mul309.i, %add308.i
  %arrayidx312.i = getelementptr inbounds double* %y2, i64 %idxprom195.i
  store double %add310.i, double* %arrayidx312.i, align 8, !tbaa !4
  %add313.i = add nsw i32 %kk97.0581.i, 6
  %add314.i = add nsw i32 %irowA96.0582.i, 2
  %add315.i = add nsw i32 %rloc.0580.i, 4
  %add316.i = add nsw i32 %iloc.0584.i, 4
  br label %for.inc323.i

if.else317.i:                                     ; preds = %for.body100.i
  %76 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call320.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot95.0583.i, i32 %49) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc323.i:                                     ; preds = %if.then159.i, %if.then104.i
  %rloc.1.i = phi i32 [ %add153.i, %if.then104.i ], [ %add315.i, %if.then159.i ]
  %kk97.1.i = phi i32 [ %add151.i, %if.then104.i ], [ %add313.i, %if.then159.i ]
  %irowA96.1.i = phi i32 [ %inc152.i, %if.then104.i ], [ %add314.i, %if.then159.i ]
  %iloc.1.i = phi i32 [ %add154.i, %if.then104.i ], [ %add316.i, %if.then159.i ]
  %indvars.iv.next591.i = add i64 %indvars.iv590.i, 1
  %inc324.i = add nsw i32 %ipivot95.0583.i, 1
  %cmp99.i = icmp slt i32 %irowA96.1.i, %28
  br i1 %cmp99.i, label %for.body100.i, label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  %cmp23 = icmp eq i32 %1, 2
  br i1 %cmp23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %sw.bb21
  %77 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([107 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end27:                                         ; preds = %sw.bb21
  %78 = bitcast double** %entries.i101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #4
  %79 = bitcast i32* %nentA.i102 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #4
  %80 = bitcast i32* %nrowA.i103 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #4
  %81 = bitcast i32** %pivotsizes.i104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i103, i32* %nentA.i102, i32** %pivotsizes.i104, double** %entries.i101) #5
  %82 = load i32* %nrowA.i103, align 4, !tbaa !3
  %cmp316.i = icmp sgt i32 %82, 0
  br i1 %cmp316.i, label %for.body.lr.ph.i105, label %sw.epilog

for.body.lr.ph.i105:                              ; preds = %if.end27
  %83 = load i32** %pivotsizes.i104, align 8, !tbaa !0
  %84 = load double** %entries.i101, align 8, !tbaa !0
  br label %for.body.i108

for.body.i108:                                    ; preds = %for.inc.i143, %for.body.lr.ph.i105
  %indvars.iv.i106 = phi i64 [ 0, %for.body.lr.ph.i105 ], [ %indvars.iv.next.i142, %for.inc.i143 ]
  %iloc.0321.i = phi i32 [ 1, %for.body.lr.ph.i105 ], [ %iloc.1.i141, %for.inc.i143 ]
  %ipivot.0320.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %inc172.i, %for.inc.i143 ]
  %irowA.0319.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %irowA.1.i140, %for.inc.i143 ]
  %kk.0318.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %kk.1.i139, %for.inc.i143 ]
  %rloc.0317.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %rloc.1.i138, %for.inc.i143 ]
  %arrayidx.i107 = getelementptr inbounds i32* %83, i64 %indvars.iv.i106
  %85 = load i32* %arrayidx.i107, align 4, !tbaa !3
  switch i32 %85, label %if.else168.i [
    i32 1, label %if.then.i
    i32 2, label %if.then39.i
  ]

if.then.i:                                        ; preds = %for.body.i108
  %idxprom2.i = sext i32 %kk.0318.i to i64
  %arrayidx3.i109 = getelementptr inbounds double* %84, i64 %idxprom2.i
  %86 = load double* %arrayidx3.i109, align 8, !tbaa !4
  %inc4.i = add nsw i32 %kk.0318.i, 2
  %idxprom5.i = sext i32 %rloc.0317.i to i64
  %arrayidx6.i = getelementptr inbounds double* %x0, i64 %idxprom5.i
  %87 = load double* %arrayidx6.i, align 8, !tbaa !4
  %idxprom7.i = sext i32 %iloc.0321.i to i64
  %arrayidx8.i = getelementptr inbounds double* %x0, i64 %idxprom7.i
  %88 = load double* %arrayidx8.i, align 8, !tbaa !4
  %arrayidx10.i110 = getelementptr inbounds double* %x1, i64 %idxprom5.i
  %89 = load double* %arrayidx10.i110, align 8, !tbaa !4
  %arrayidx12.i111 = getelementptr inbounds double* %x1, i64 %idxprom7.i
  %90 = load double* %arrayidx12.i111, align 8, !tbaa !4
  %arrayidx14.i = getelementptr inbounds double* %x2, i64 %idxprom5.i
  %91 = load double* %arrayidx14.i, align 8, !tbaa !4
  %arrayidx16.i112 = getelementptr inbounds double* %x2, i64 %idxprom7.i
  %92 = load double* %arrayidx16.i112, align 8, !tbaa !4
  %mul.i113 = fmul double %86, %87
  %arrayidx18.i = getelementptr inbounds double* %y0, i64 %idxprom5.i
  store double %mul.i113, double* %arrayidx18.i, align 8, !tbaa !4
  %mul19.i = fmul double %86, %88
  %arrayidx21.i = getelementptr inbounds double* %y0, i64 %idxprom7.i
  store double %mul19.i, double* %arrayidx21.i, align 8, !tbaa !4
  %mul22.i = fmul double %86, %89
  %arrayidx24.i114 = getelementptr inbounds double* %y1, i64 %idxprom5.i
  store double %mul22.i, double* %arrayidx24.i114, align 8, !tbaa !4
  %mul25.i = fmul double %86, %90
  %arrayidx27.i = getelementptr inbounds double* %y1, i64 %idxprom7.i
  store double %mul25.i, double* %arrayidx27.i, align 8, !tbaa !4
  %mul28.i = fmul double %86, %91
  %arrayidx30.i115 = getelementptr inbounds double* %y2, i64 %idxprom5.i
  store double %mul28.i, double* %arrayidx30.i115, align 8, !tbaa !4
  %mul31.i = fmul double %86, %92
  %arrayidx33.i = getelementptr inbounds double* %y2, i64 %idxprom7.i
  store double %mul31.i, double* %arrayidx33.i, align 8, !tbaa !4
  %inc34.i = add nsw i32 %irowA.0319.i, 1
  %add.i116 = add nsw i32 %rloc.0317.i, 2
  %add35.i = add nsw i32 %iloc.0321.i, 2
  br label %for.inc.i143

if.then39.i:                                      ; preds = %for.body.i108
  %add42.i117 = add nsw i32 %rloc.0317.i, 2
  %add43.i = add nsw i32 %iloc.0321.i, 2
  %idxprom45.i = sext i32 %kk.0318.i to i64
  %arrayidx46.i118 = getelementptr inbounds double* %84, i64 %idxprom45.i
  %93 = load double* %arrayidx46.i118, align 8, !tbaa !4
  %inc47.i = add nsw i32 %kk.0318.i, 2
  %inc48.i = add nsw i32 %kk.0318.i, 3
  %idxprom49.i = sext i32 %inc47.i to i64
  %arrayidx50.i119 = getelementptr inbounds double* %84, i64 %idxprom49.i
  %94 = load double* %arrayidx50.i119, align 8, !tbaa !4
  %inc51.i = add nsw i32 %kk.0318.i, 4
  %idxprom52.i = sext i32 %inc48.i to i64
  %arrayidx53.i = getelementptr inbounds double* %84, i64 %idxprom52.i
  %95 = load double* %arrayidx53.i, align 8, !tbaa !4
  %idxprom55.i = sext i32 %inc51.i to i64
  %arrayidx56.i120 = getelementptr inbounds double* %84, i64 %idxprom55.i
  %96 = load double* %arrayidx56.i120, align 8, !tbaa !4
  %inc57.i = add nsw i32 %kk.0318.i, 6
  %idxprom58.i = sext i32 %rloc.0317.i to i64
  %arrayidx59.i = getelementptr inbounds double* %x0, i64 %idxprom58.i
  %97 = load double* %arrayidx59.i, align 8, !tbaa !4
  %idxprom60.i = sext i32 %iloc.0321.i to i64
  %arrayidx61.i121 = getelementptr inbounds double* %x0, i64 %idxprom60.i
  %98 = load double* %arrayidx61.i121, align 8, !tbaa !4
  %arrayidx63.i = getelementptr inbounds double* %x1, i64 %idxprom58.i
  %99 = load double* %arrayidx63.i, align 8, !tbaa !4
  %arrayidx65.i122 = getelementptr inbounds double* %x1, i64 %idxprom60.i
  %100 = load double* %arrayidx65.i122, align 8, !tbaa !4
  %arrayidx67.i = getelementptr inbounds double* %x2, i64 %idxprom58.i
  %101 = load double* %arrayidx67.i, align 8, !tbaa !4
  %arrayidx69.i = getelementptr inbounds double* %x2, i64 %idxprom60.i
  %102 = load double* %arrayidx69.i, align 8, !tbaa !4
  %idxprom70.i = sext i32 %add42.i117 to i64
  %arrayidx71.i123 = getelementptr inbounds double* %x0, i64 %idxprom70.i
  %103 = load double* %arrayidx71.i123, align 8, !tbaa !4
  %idxprom72.i = sext i32 %add43.i to i64
  %arrayidx73.i = getelementptr inbounds double* %x0, i64 %idxprom72.i
  %104 = load double* %arrayidx73.i, align 8, !tbaa !4
  %arrayidx75.i = getelementptr inbounds double* %x1, i64 %idxprom70.i
  %105 = load double* %arrayidx75.i, align 8, !tbaa !4
  %arrayidx77.i124 = getelementptr inbounds double* %x1, i64 %idxprom72.i
  %106 = load double* %arrayidx77.i124, align 8, !tbaa !4
  %arrayidx79.i = getelementptr inbounds double* %x2, i64 %idxprom70.i
  %107 = load double* %arrayidx79.i, align 8, !tbaa !4
  %arrayidx81.i = getelementptr inbounds double* %x2, i64 %idxprom72.i
  %108 = load double* %arrayidx81.i, align 8, !tbaa !4
  %mul82.i = fmul double %93, %97
  %mul83.i = fmul double %94, %103
  %add84.i125 = fadd double %mul82.i, %mul83.i
  %mul85.i = fmul double %95, %104
  %sub.i126 = fsub double %add84.i125, %mul85.i
  %arrayidx87.i = getelementptr inbounds double* %y0, i64 %idxprom58.i
  store double %sub.i126, double* %arrayidx87.i, align 8, !tbaa !4
  %mul88.i = fmul double %93, %98
  %mul89.i = fmul double %94, %104
  %add90.i = fadd double %mul88.i, %mul89.i
  %mul91.i = fmul double %95, %103
  %add92.i = fadd double %mul91.i, %add90.i
  %arrayidx94.i = getelementptr inbounds double* %y0, i64 %idxprom60.i
  store double %add92.i, double* %arrayidx94.i, align 8, !tbaa !4
  %mul95.i = fmul double %93, %99
  %mul96.i = fmul double %94, %105
  %add97.i = fadd double %mul95.i, %mul96.i
  %mul98.i = fmul double %95, %106
  %sub99.i = fsub double %add97.i, %mul98.i
  %arrayidx101.i = getelementptr inbounds double* %y1, i64 %idxprom58.i
  store double %sub99.i, double* %arrayidx101.i, align 8, !tbaa !4
  %mul102.i = fmul double %93, %100
  %mul103.i = fmul double %94, %106
  %add104.i = fadd double %mul102.i, %mul103.i
  %mul105.i = fmul double %95, %105
  %add106.i = fadd double %mul105.i, %add104.i
  %arrayidx108.i = getelementptr inbounds double* %y1, i64 %idxprom60.i
  store double %add106.i, double* %arrayidx108.i, align 8, !tbaa !4
  %mul109.i = fmul double %93, %101
  %mul110.i = fmul double %94, %107
  %add111.i = fadd double %mul109.i, %mul110.i
  %mul112.i = fmul double %95, %108
  %sub113.i = fsub double %add111.i, %mul112.i
  %arrayidx115.i127 = getelementptr inbounds double* %y2, i64 %idxprom58.i
  store double %sub113.i, double* %arrayidx115.i127, align 8, !tbaa !4
  %mul116.i = fmul double %93, %102
  %mul117.i = fmul double %94, %108
  %add118.i = fadd double %mul116.i, %mul117.i
  %mul119.i = fmul double %95, %107
  %add120.i = fadd double %mul119.i, %add118.i
  %arrayidx122.i = getelementptr inbounds double* %y2, i64 %idxprom60.i
  store double %add120.i, double* %arrayidx122.i, align 8, !tbaa !4
  %mul123.i128 = fmul double %94, %97
  %mul124.i = fmul double %95, %98
  %add125.i = fadd double %mul123.i128, %mul124.i
  %mul126.i129 = fmul double %96, %103
  %add127.i = fadd double %add125.i, %mul126.i129
  %arrayidx129.i = getelementptr inbounds double* %y0, i64 %idxprom70.i
  store double %add127.i, double* %arrayidx129.i, align 8, !tbaa !4
  %mul130.i = fmul double %94, %98
  %mul131.i130 = fmul double %95, %97
  %sub132.i = fsub double %mul130.i, %mul131.i130
  %mul133.i = fmul double %96, %104
  %add134.i = fadd double %sub132.i, %mul133.i
  %arrayidx136.i = getelementptr inbounds double* %y0, i64 %idxprom72.i
  store double %add134.i, double* %arrayidx136.i, align 8, !tbaa !4
  %mul137.i131 = fmul double %94, %99
  %mul138.i = fmul double %95, %100
  %add139.i = fadd double %mul137.i131, %mul138.i
  %mul140.i = fmul double %96, %105
  %add141.i = fadd double %add139.i, %mul140.i
  %arrayidx143.i = getelementptr inbounds double* %y1, i64 %idxprom70.i
  store double %add141.i, double* %arrayidx143.i, align 8, !tbaa !4
  %mul144.i = fmul double %94, %100
  %mul145.i = fmul double %95, %99
  %sub146.i = fsub double %mul144.i, %mul145.i
  %mul147.i132 = fmul double %96, %106
  %add148.i133 = fadd double %sub146.i, %mul147.i132
  %arrayidx150.i134 = getelementptr inbounds double* %y1, i64 %idxprom72.i
  store double %add148.i133, double* %arrayidx150.i134, align 8, !tbaa !4
  %mul151.i = fmul double %94, %101
  %mul152.i = fmul double %95, %102
  %add153.i135 = fadd double %mul151.i, %mul152.i
  %mul154.i = fmul double %96, %107
  %add155.i = fadd double %add153.i135, %mul154.i
  %arrayidx157.i = getelementptr inbounds double* %y2, i64 %idxprom70.i
  store double %add155.i, double* %arrayidx157.i, align 8, !tbaa !4
  %mul158.i = fmul double %94, %102
  %mul159.i = fmul double %95, %101
  %sub160.i = fsub double %mul158.i, %mul159.i
  %mul161.i = fmul double %96, %108
  %add162.i = fadd double %sub160.i, %mul161.i
  %arrayidx164.i = getelementptr inbounds double* %y2, i64 %idxprom72.i
  store double %add162.i, double* %arrayidx164.i, align 8, !tbaa !4
  %add165.i = add nsw i32 %irowA.0319.i, 2
  %add166.i = add nsw i32 %rloc.0317.i, 4
  %add167.i136 = add nsw i32 %iloc.0321.i, 4
  br label %for.inc.i143

if.else168.i:                                     ; preds = %for.body.i108
  %109 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i137 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0320.i, i32 %85) #5
  call void @exit(i32 -1) #6
  unreachable

for.inc.i143:                                     ; preds = %if.then39.i, %if.then.i
  %rloc.1.i138 = phi i32 [ %add.i116, %if.then.i ], [ %add166.i, %if.then39.i ]
  %kk.1.i139 = phi i32 [ %inc4.i, %if.then.i ], [ %inc57.i, %if.then39.i ]
  %irowA.1.i140 = phi i32 [ %inc34.i, %if.then.i ], [ %add165.i, %if.then39.i ]
  %iloc.1.i141 = phi i32 [ %add35.i, %if.then.i ], [ %add167.i136, %if.then39.i ]
  %indvars.iv.next.i142 = add i64 %indvars.iv.i106, 1
  %inc172.i = add nsw i32 %ipivot.0320.i, 1
  %cmp.i = icmp slt i32 %irowA.1.i140, %82
  br i1 %cmp.i, label %for.body.i108, label %sw.epilog

sw.default:                                       ; preds = %if.end19
  %110 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %111 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str11, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %110)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %for.inc.i143, %for.inc323.i, %for.inc.i, %for.body22.i, %for.body.i, %if.end27, %for.cond.preheader.i84, %for.cond98.preheader.i, %sw.bb20, %for.cond.preheader.i, %for.cond20.preheader.i, %sw.bb
  ret void
}

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

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
