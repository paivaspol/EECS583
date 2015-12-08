; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A mtxB has bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A mtxB has bad mode %d\0A\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A mtxA->nrow = %d, mtxB->nrwo = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A bad mode %d\0A\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error, irowA = %d, kk =%d, ii = %d, jj = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solveH(%struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #0 {
entry:
  %entriesA.i187 = alloca double*, align 8
  %entriesB.i188 = alloca double*, align 8
  %inc1.i189 = alloca i32, align 4
  %inc2.i190 = alloca i32, align 4
  %ncolB.i191 = alloca i32, align 4
  %nentA.i192 = alloca i32, align 4
  %nrowA.i193 = alloca i32, align 4
  %nrowB.i194 = alloca i32, align 4
  %indicesA.i195 = alloca i32*, align 8
  %sizesA.i196 = alloca i32*, align 8
  %entriesA.i123 = alloca double*, align 8
  %entriesB.i124 = alloca double*, align 8
  %inc1.i125 = alloca i32, align 4
  %inc2.i126 = alloca i32, align 4
  %ncolB.i127 = alloca i32, align 4
  %nentA.i128 = alloca i32, align 4
  %nrowA.i129 = alloca i32, align 4
  %nrowB.i130 = alloca i32, align 4
  %firstlocsA.i131 = alloca i32*, align 8
  %sizesA.i132 = alloca i32*, align 8
  %entriesA.i53 = alloca double*, align 8
  %entriesB.i54 = alloca double*, align 8
  %inc1.i55 = alloca i32, align 4
  %inc2.i56 = alloca i32, align 4
  %ncolB.i57 = alloca i32, align 4
  %nentA.i58 = alloca i32, align 4
  %nrowA.i59 = alloca i32, align 4
  %nrowB.i60 = alloca i32, align 4
  %indicesA.i = alloca i32*, align 8
  %sizesA.i61 = alloca i32*, align 8
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
  %type = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end6:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %3) #5
  call void @exit(i32 -1) #6
  unreachable

if.end11:                                         ; preds = %if.end6
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %5 = load i32* %nrow, align 4, !tbaa !3
  %nrow12 = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 4
  %6 = load i32* %nrow12, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %5, %6
  br i1 %cmp13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end11
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %5, i32 %6) #5
  call void @exit(i32 -1) #6
  unreachable

if.end18:                                         ; preds = %if.end11
  %mode19 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %8 = load i32* %mode19, align 4, !tbaa !3
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb
    i32 2, label %sw.bb20
    i32 6, label %sw.bb21
    i32 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end18
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
  %sub410.i = add nsw i32 %20, -2
  %cmp411.i = icmp sgt i32 %sub410.i, 0
  br i1 %cmp411.i, label %for.body.lr.ph.i, label %for.end87.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %21 = load i32* %nrowB.i, align 4, !tbaa !3
  %mul.i = shl nsw i32 %21, 1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1
  %22 = load i32* %nrowA.i, align 4, !tbaa !3
  %23 = load i32* %nentA.i, align 4, !tbaa !3
  %24 = load i32** %sizesA.i, align 8, !tbaa !0
  %25 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %26 = load double** %entriesA.i, align 8, !tbaa !0
  %add.ptr3.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.end81.i, %for.body.lr.ph.i
  %jcolB.0413.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add86.i, %for.end81.i ]
  %colB0.0412.i = phi double* [ %19, %for.body.lr.ph.i ], [ %add.ptr84.i, %for.end81.i ]
  br label %for.cond5.outer.i

for.cond5.outer.i:                                ; preds = %if.then.i, %for.body33.i, %for.body.i
  %colstart.0.ph.i = phi i32 [ %23, %for.body.i ], [ %sub16.i, %for.body33.i ], [ %sub16.i, %if.then.i ]
  %irowA.0.in.ph.i = phi i32 [ %22, %for.body.i ], [ %irowA.0.i, %for.body33.i ], [ %irowA.0.i, %if.then.i ]
  %27 = sext i32 %irowA.0.in.ph.i to i64
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body7.i, %for.cond5.outer.i
  %indvars.iv432.i = phi i64 [ %27, %for.cond5.outer.i ], [ %indvars.iv.next433.i, %for.body7.i ]
  %irowA.0.in.i = phi i32 [ %irowA.0.in.ph.i, %for.cond5.outer.i ], [ %irowA.0.i, %for.body7.i ]
  %indvars.iv.next433.i = add i64 %indvars.iv432.i, -1
  %irowA.0.i = add nsw i32 %irowA.0.in.i, -1
  %28 = trunc i64 %indvars.iv432.i to i32
  %cmp6.i = icmp sgt i32 %28, 0
  br i1 %cmp6.i, label %for.body7.i, label %for.end81.i

for.body7.i:                                      ; preds = %for.cond5.i
  %arrayidx.i = getelementptr inbounds i32* %24, i64 %indvars.iv.next433.i
  %29 = load i32* %arrayidx.i, align 4, !tbaa !3
  %cmp8.i = icmp sgt i32 %29, 0
  br i1 %cmp8.i, label %if.then.i, label %for.cond5.i

if.then.i:                                        ; preds = %for.body7.i
  %arrayidx10.i = getelementptr inbounds i32* %25, i64 %indvars.iv.next433.i
  %30 = load i32* %arrayidx10.i, align 4, !tbaa !3
  %add.i = add i32 %29, -1
  %sub13.i = add i32 %add.i, %30
  %sub14.neg.i = add i32 %colstart.0.ph.i, -1
  %add15.neg.i = add i32 %sub14.neg.i, %30
  %sub16.i = sub i32 %add15.neg.i, %sub13.i
  %mul17.i = shl nsw i32 %irowA.0.i, 1
  %add18381.i = or i32 %mul17.i, 1
  %idxprom19.i = sext i32 %mul17.i to i64
  %arrayidx20.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom19.i
  %31 = load double* %arrayidx20.i, align 8, !tbaa !4
  %idxprom21.i = sext i32 %add18381.i to i64
  %arrayidx22.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom21.i
  %32 = load double* %arrayidx22.i, align 8, !tbaa !4
  %add.ptr.sum382.i = add i64 %idxprom19.i, %idx.ext.i
  %arrayidx24.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum382.i
  %33 = load double* %arrayidx24.i, align 8, !tbaa !4
  %add.ptr.sum383.i = add i64 %idxprom21.i, %idx.ext.i
  %arrayidx26.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum383.i
  %34 = load double* %arrayidx26.i, align 8, !tbaa !4
  %add.ptr3.sum384.i = add i64 %idxprom19.i, %add.ptr.sum.i
  %arrayidx28.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum384.i
  %35 = load double* %arrayidx28.i, align 8, !tbaa !4
  %add.ptr3.sum385.i = add i64 %idxprom21.i, %add.ptr.sum.i
  %arrayidx30.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum385.i
  %36 = load double* %arrayidx30.i, align 8, !tbaa !4
  %cmp32404.i = icmp sgt i32 %30, %sub13.i
  br i1 %cmp32404.i, label %for.cond5.outer.i, label %for.body33.lr.ph.i

for.body33.lr.ph.i:                               ; preds = %if.then.i
  %37 = sub i32 %colstart.0.ph.i, %29
  %38 = sext i32 %37 to i64
  %39 = sext i32 %30 to i64
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %for.body33.i ], [ %39, %for.body33.lr.ph.i ]
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i, %for.body33.i ], [ %38, %for.body33.lr.ph.i ]
  %40 = trunc i64 %indvars.iv434.i to i32
  %mul34.i = shl nsw i32 %40, 1
  %idxprom35.i = sext i32 %mul34.i to i64
  %arrayidx36.i = getelementptr inbounds double* %26, i64 %idxprom35.i
  %41 = load double* %arrayidx36.i, align 8, !tbaa !4
  %add38386.i = or i32 %mul34.i, 1
  %idxprom39.i = sext i32 %add38386.i to i64
  %arrayidx40.i = getelementptr inbounds double* %26, i64 %idxprom39.i
  %42 = load double* %arrayidx40.i, align 8, !tbaa !4
  %43 = trunc i64 %indvars.iv436.i to i32
  %mul41.i = shl nsw i32 %43, 1
  %add42387.i = or i32 %mul41.i, 1
  %mul43.i = fmul double %31, %41
  %mul44.i = fmul double %32, %42
  %add45.i = fadd double %mul43.i, %mul44.i
  %idxprom46.i = sext i32 %mul41.i to i64
  %arrayidx47.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom46.i
  %44 = load double* %arrayidx47.i, align 8, !tbaa !4
  %sub48.i = fsub double %44, %add45.i
  store double %sub48.i, double* %arrayidx47.i, align 8, !tbaa !4
  %mul49.i = fmul double %32, %41
  %mul50.i = fmul double %31, %42
  %sub51.i = fsub double %mul49.i, %mul50.i
  %idxprom52.i = sext i32 %add42387.i to i64
  %arrayidx53.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom52.i
  %45 = load double* %arrayidx53.i, align 8, !tbaa !4
  %sub54.i = fsub double %45, %sub51.i
  store double %sub54.i, double* %arrayidx53.i, align 8, !tbaa !4
  %mul55.i = fmul double %33, %41
  %mul56.i = fmul double %34, %42
  %add57.i = fadd double %mul55.i, %mul56.i
  %add.ptr.sum388.i = add i64 %idxprom46.i, %idx.ext.i
  %arrayidx59.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum388.i
  %46 = load double* %arrayidx59.i, align 8, !tbaa !4
  %sub60.i = fsub double %46, %add57.i
  store double %sub60.i, double* %arrayidx59.i, align 8, !tbaa !4
  %mul61.i = fmul double %34, %41
  %mul62.i = fmul double %33, %42
  %sub63.i = fsub double %mul61.i, %mul62.i
  %add.ptr.sum389.i = add i64 %idxprom52.i, %idx.ext.i
  %arrayidx65.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum389.i
  %47 = load double* %arrayidx65.i, align 8, !tbaa !4
  %sub66.i = fsub double %47, %sub63.i
  store double %sub66.i, double* %arrayidx65.i, align 8, !tbaa !4
  %mul67.i = fmul double %35, %41
  %mul68.i = fmul double %36, %42
  %add69.i = fadd double %mul67.i, %mul68.i
  %add.ptr3.sum390.i = add i64 %idxprom46.i, %add.ptr.sum.i
  %arrayidx71.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum390.i
  %48 = load double* %arrayidx71.i, align 8, !tbaa !4
  %sub72.i = fsub double %48, %add69.i
  store double %sub72.i, double* %arrayidx71.i, align 8, !tbaa !4
  %mul73.i = fmul double %36, %41
  %mul74.i = fmul double %35, %42
  %sub75.i = fsub double %mul73.i, %mul74.i
  %add.ptr3.sum391.i = add i64 %idxprom52.i, %add.ptr.sum.i
  %arrayidx77.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum391.i
  %49 = load double* %arrayidx77.i, align 8, !tbaa !4
  %sub78.i = fsub double %49, %sub75.i
  store double %sub78.i, double* %arrayidx77.i, align 8, !tbaa !4
  %indvars.iv.next437.i = add i64 %indvars.iv436.i, 1
  %indvars.iv.next435.i = add i64 %indvars.iv434.i, 1
  %cmp32.i = icmp slt i32 %43, %sub13.i
  br i1 %cmp32.i, label %for.body33.i, label %for.cond5.outer.i

for.end81.i:                                      ; preds = %for.cond5.i
  %add.ptr84.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum.i
  %add86.i = add nsw i32 %jcolB.0413.i, 3
  %cmp.i = icmp slt i32 %add86.i, %sub410.i
  br i1 %cmp.i, label %for.body.i, label %for.end87.i

for.end87.i:                                      ; preds = %for.end81.i, %sw.bb
  %jcolB.0.lcssa.i = phi i32 [ 0, %sw.bb ], [ %add86.i, %for.end81.i ]
  %colB0.0.lcssa.i = phi double* [ %19, %sw.bb ], [ %add.ptr84.i, %for.end81.i ]
  %cmp89.i = icmp eq i32 %jcolB.0.lcssa.i, %sub410.i
  br i1 %cmp89.i, label %if.then90.i, label %if.else.i

if.then90.i:                                      ; preds = %for.end87.i
  %50 = load i32* %nrowB.i, align 4, !tbaa !3
  %mul91.i = shl nsw i32 %50, 1
  %idx.ext92.i = sext i32 %mul91.i to i64
  %51 = load i32* %nrowA.i, align 4, !tbaa !3
  %52 = load i32* %nentA.i, align 4, !tbaa !3
  %53 = load i32** %sizesA.i, align 8, !tbaa !0
  %54 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %55 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.cond95.outer.i

for.cond95.outer.i:                               ; preds = %if.then101.i, %for.body123.i, %if.then90.i
  %colstart.2.ph.i = phi i32 [ %52, %if.then90.i ], [ %sub110.i, %for.body123.i ], [ %sub110.i, %if.then101.i ]
  %irowA.1.in.ph.i = phi i32 [ %51, %if.then90.i ], [ %irowA.1.i, %for.body123.i ], [ %irowA.1.i, %if.then101.i ]
  %56 = sext i32 %irowA.1.in.ph.i to i64
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %for.body97.i, %for.cond95.outer.i
  %indvars.iv.i = phi i64 [ %56, %for.cond95.outer.i ], [ %indvars.iv.next.i, %for.body97.i ]
  %irowA.1.in.i = phi i32 [ %irowA.1.in.ph.i, %for.cond95.outer.i ], [ %irowA.1.i, %for.body97.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %irowA.1.i = add nsw i32 %irowA.1.in.i, -1
  %57 = trunc i64 %indvars.iv.i to i32
  %cmp96.i = icmp sgt i32 %57, 0
  br i1 %cmp96.i, label %for.body97.i, label %sw.epilog

for.body97.i:                                     ; preds = %for.cond95.i
  %arrayidx99.i = getelementptr inbounds i32* %53, i64 %indvars.iv.next.i
  %58 = load i32* %arrayidx99.i, align 4, !tbaa !3
  %cmp100.i = icmp sgt i32 %58, 0
  br i1 %cmp100.i, label %if.then101.i, label %for.cond95.i

if.then101.i:                                     ; preds = %for.body97.i
  %arrayidx103.i = getelementptr inbounds i32* %54, i64 %indvars.iv.next.i
  %59 = load i32* %arrayidx103.i, align 4, !tbaa !3
  %add106.i = add i32 %58, -1
  %sub107.i = add i32 %add106.i, %59
  %sub108.neg.i = add i32 %colstart.2.ph.i, -1
  %add109.neg.i = add i32 %sub108.neg.i, %59
  %sub110.i = sub i32 %add109.neg.i, %sub107.i
  %mul111.i = shl nsw i32 %irowA.1.i, 1
  %add112375.i = or i32 %mul111.i, 1
  %idxprom113.i = sext i32 %mul111.i to i64
  %arrayidx114.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom113.i
  %60 = load double* %arrayidx114.i, align 8, !tbaa !4
  %idxprom115.i = sext i32 %add112375.i to i64
  %arrayidx116.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom115.i
  %61 = load double* %arrayidx116.i, align 8, !tbaa !4
  %add.ptr93.sum.i = add i64 %idxprom113.i, %idx.ext92.i
  %arrayidx118.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum.i
  %62 = load double* %arrayidx118.i, align 8, !tbaa !4
  %add.ptr93.sum376.i = add i64 %idxprom115.i, %idx.ext92.i
  %arrayidx120.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum376.i
  %63 = load double* %arrayidx120.i, align 8, !tbaa !4
  %cmp122394.i = icmp sgt i32 %59, %sub107.i
  br i1 %cmp122394.i, label %for.cond95.outer.i, label %for.body123.lr.ph.i

for.body123.lr.ph.i:                              ; preds = %if.then101.i
  %64 = sub i32 %colstart.2.ph.i, %58
  %65 = sext i32 %64 to i64
  %66 = sext i32 %59 to i64
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.body123.i, %for.body123.lr.ph.i
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %for.body123.i ], [ %66, %for.body123.lr.ph.i ]
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i, %for.body123.i ], [ %65, %for.body123.lr.ph.i ]
  %67 = trunc i64 %indvars.iv418.i to i32
  %mul124.i = shl nsw i32 %67, 1
  %idxprom125.i = sext i32 %mul124.i to i64
  %arrayidx126.i = getelementptr inbounds double* %55, i64 %idxprom125.i
  %68 = load double* %arrayidx126.i, align 8, !tbaa !4
  %add128377.i = or i32 %mul124.i, 1
  %idxprom129.i = sext i32 %add128377.i to i64
  %arrayidx130.i = getelementptr inbounds double* %55, i64 %idxprom129.i
  %69 = load double* %arrayidx130.i, align 8, !tbaa !4
  %70 = trunc i64 %indvars.iv420.i to i32
  %mul131.i = shl nsw i32 %70, 1
  %add132378.i = or i32 %mul131.i, 1
  %mul133.i = fmul double %60, %68
  %mul134.i = fmul double %61, %69
  %add135.i = fadd double %mul133.i, %mul134.i
  %idxprom136.i = sext i32 %mul131.i to i64
  %arrayidx137.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom136.i
  %71 = load double* %arrayidx137.i, align 8, !tbaa !4
  %sub138.i = fsub double %71, %add135.i
  store double %sub138.i, double* %arrayidx137.i, align 8, !tbaa !4
  %mul139.i = fmul double %61, %68
  %mul140.i = fmul double %60, %69
  %sub141.i = fsub double %mul139.i, %mul140.i
  %idxprom142.i = sext i32 %add132378.i to i64
  %arrayidx143.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom142.i
  %72 = load double* %arrayidx143.i, align 8, !tbaa !4
  %sub144.i = fsub double %72, %sub141.i
  store double %sub144.i, double* %arrayidx143.i, align 8, !tbaa !4
  %mul145.i = fmul double %62, %68
  %mul146.i = fmul double %63, %69
  %add147.i = fadd double %mul145.i, %mul146.i
  %add.ptr93.sum379.i = add i64 %idxprom136.i, %idx.ext92.i
  %arrayidx149.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum379.i
  %73 = load double* %arrayidx149.i, align 8, !tbaa !4
  %sub150.i = fsub double %73, %add147.i
  store double %sub150.i, double* %arrayidx149.i, align 8, !tbaa !4
  %mul151.i = fmul double %63, %68
  %mul152.i = fmul double %62, %69
  %sub153.i = fsub double %mul151.i, %mul152.i
  %add.ptr93.sum380.i = add i64 %idxprom142.i, %idx.ext92.i
  %arrayidx155.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum380.i
  %74 = load double* %arrayidx155.i, align 8, !tbaa !4
  %sub156.i = fsub double %74, %sub153.i
  store double %sub156.i, double* %arrayidx155.i, align 8, !tbaa !4
  %indvars.iv.next421.i = add i64 %indvars.iv420.i, 1
  %indvars.iv.next419.i = add i64 %indvars.iv418.i, 1
  %cmp122.i = icmp slt i32 %70, %sub107.i
  br i1 %cmp122.i, label %for.body123.i, label %for.cond95.outer.i

if.else.i:                                        ; preds = %for.end87.i
  %sub165.i = add nsw i32 %20, -1
  %cmp166.i = icmp eq i32 %jcolB.0.lcssa.i, %sub165.i
  br i1 %cmp166.i, label %if.then167.i, label %sw.epilog

if.then167.i:                                     ; preds = %if.else.i
  %75 = load i32* %nrowA.i, align 4, !tbaa !3
  %76 = load i32* %nentA.i, align 4, !tbaa !3
  %77 = load i32** %sizesA.i, align 8, !tbaa !0
  %78 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %79 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.cond169.outer.i

for.cond169.outer.i:                              ; preds = %if.then175.i, %for.body193.i, %if.then167.i
  %colstart.4.ph.i = phi i32 [ %76, %if.then167.i ], [ %sub184.i, %for.body193.i ], [ %sub184.i, %if.then175.i ]
  %irowA.2.in.ph.i = phi i32 [ %75, %if.then167.i ], [ %irowA.2.i, %for.body193.i ], [ %irowA.2.i, %if.then175.i ]
  %80 = sext i32 %irowA.2.in.ph.i to i64
  br label %for.cond169.i

for.cond169.i:                                    ; preds = %for.body171.i, %for.cond169.outer.i
  %indvars.iv424.i = phi i64 [ %80, %for.cond169.outer.i ], [ %indvars.iv.next425.i, %for.body171.i ]
  %irowA.2.in.i = phi i32 [ %irowA.2.in.ph.i, %for.cond169.outer.i ], [ %irowA.2.i, %for.body171.i ]
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, -1
  %irowA.2.i = add nsw i32 %irowA.2.in.i, -1
  %81 = trunc i64 %indvars.iv424.i to i32
  %cmp170.i = icmp sgt i32 %81, 0
  br i1 %cmp170.i, label %for.body171.i, label %sw.epilog

for.body171.i:                                    ; preds = %for.cond169.i
  %arrayidx173.i = getelementptr inbounds i32* %77, i64 %indvars.iv.next425.i
  %82 = load i32* %arrayidx173.i, align 4, !tbaa !3
  %cmp174.i = icmp sgt i32 %82, 0
  br i1 %cmp174.i, label %if.then175.i, label %for.cond169.i

if.then175.i:                                     ; preds = %for.body171.i
  %arrayidx177.i = getelementptr inbounds i32* %78, i64 %indvars.iv.next425.i
  %83 = load i32* %arrayidx177.i, align 4, !tbaa !3
  %add180.i = add i32 %82, -1
  %sub181.i = add i32 %add180.i, %83
  %sub182.neg.i = add i32 %colstart.4.ph.i, -1
  %add183.neg.i = add i32 %sub182.neg.i, %83
  %sub184.i = sub i32 %add183.neg.i, %sub181.i
  %mul185.i = shl nsw i32 %irowA.2.i, 1
  %add186372.i = or i32 %mul185.i, 1
  %idxprom187.i = sext i32 %mul185.i to i64
  %arrayidx188.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom187.i
  %84 = load double* %arrayidx188.i, align 8, !tbaa !4
  %idxprom189.i = sext i32 %add186372.i to i64
  %arrayidx190.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom189.i
  %85 = load double* %arrayidx190.i, align 8, !tbaa !4
  %cmp192398.i = icmp sgt i32 %83, %sub181.i
  br i1 %cmp192398.i, label %for.cond169.outer.i, label %for.body193.lr.ph.i

for.body193.lr.ph.i:                              ; preds = %if.then175.i
  %86 = sub i32 %colstart.4.ph.i, %82
  %87 = sext i32 %86 to i64
  %88 = sext i32 %83 to i64
  br label %for.body193.i

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %for.body193.i ], [ %88, %for.body193.lr.ph.i ]
  %indvars.iv426.i = phi i64 [ %indvars.iv.next427.i, %for.body193.i ], [ %87, %for.body193.lr.ph.i ]
  %89 = trunc i64 %indvars.iv426.i to i32
  %mul194.i = shl nsw i32 %89, 1
  %idxprom195.i = sext i32 %mul194.i to i64
  %arrayidx196.i = getelementptr inbounds double* %79, i64 %idxprom195.i
  %90 = load double* %arrayidx196.i, align 8, !tbaa !4
  %add198373.i = or i32 %mul194.i, 1
  %idxprom199.i = sext i32 %add198373.i to i64
  %arrayidx200.i = getelementptr inbounds double* %79, i64 %idxprom199.i
  %91 = load double* %arrayidx200.i, align 8, !tbaa !4
  %92 = trunc i64 %indvars.iv428.i to i32
  %mul201.i = shl nsw i32 %92, 1
  %add202374.i = or i32 %mul201.i, 1
  %mul203.i = fmul double %84, %90
  %mul204.i = fmul double %85, %91
  %add205.i = fadd double %mul203.i, %mul204.i
  %idxprom206.i = sext i32 %mul201.i to i64
  %arrayidx207.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom206.i
  %93 = load double* %arrayidx207.i, align 8, !tbaa !4
  %sub208.i = fsub double %93, %add205.i
  store double %sub208.i, double* %arrayidx207.i, align 8, !tbaa !4
  %mul209.i = fmul double %85, %90
  %mul210.i = fmul double %84, %91
  %sub211.i = fsub double %mul209.i, %mul210.i
  %idxprom212.i = sext i32 %add202374.i to i64
  %arrayidx213.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom212.i
  %94 = load double* %arrayidx213.i, align 8, !tbaa !4
  %sub214.i = fsub double %94, %sub211.i
  store double %sub214.i, double* %arrayidx213.i, align 8, !tbaa !4
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1
  %indvars.iv.next427.i = add i64 %indvars.iv426.i, 1
  %cmp192.i = icmp slt i32 %92, %sub181.i
  br i1 %cmp192.i, label %for.body193.i, label %for.cond169.outer.i

sw.bb20:                                          ; preds = %if.end18
  %95 = bitcast double** %entriesA.i53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #4
  %96 = bitcast double** %entriesB.i54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #4
  %97 = bitcast i32* %inc1.i55 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #4
  %98 = bitcast i32* %inc2.i56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #4
  %99 = bitcast i32* %ncolB.i57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #4
  %100 = bitcast i32* %nentA.i58 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #4
  %101 = bitcast i32* %nrowA.i59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #4
  %102 = bitcast i32* %nrowB.i60 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #4
  %103 = bitcast i32** %indicesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #4
  %104 = bitcast i32** %sizesA.i61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i59, i32* %nentA.i58, i32** %sizesA.i61, i32** %indicesA.i, double** %entriesA.i53) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i60, i32* %ncolB.i57, i32* %inc1.i55, i32* %inc2.i56, double** %entriesB.i54) #5
  %105 = load double** %entriesB.i54, align 8, !tbaa !0
  %106 = load i32* %ncolB.i57, align 4, !tbaa !3
  %sub378.i = add nsw i32 %106, -2
  %cmp379.i = icmp sgt i32 %sub378.i, 0
  br i1 %cmp379.i, label %for.body.lr.ph.i66, label %for.end81.i102

for.body.lr.ph.i66:                               ; preds = %sw.bb20
  %107 = load i32* %nrowB.i60, align 4, !tbaa !3
  %mul.i62 = shl nsw i32 %107, 1
  %idx.ext.i63 = sext i32 %mul.i62 to i64
  %add.ptr.sum.i64 = shl nsw i64 %idx.ext.i63, 1
  %108 = load i32* %nrowA.i59, align 4, !tbaa !3
  %109 = load i32* %nentA.i58, align 4, !tbaa !3
  %110 = load i32** %sizesA.i61, align 8, !tbaa !0
  %111 = load double** %entriesA.i53, align 8, !tbaa !0
  %112 = load i32** %indicesA.i, align 8, !tbaa !0
  %add.ptr3.sum.i65 = add i64 %add.ptr.sum.i64, %idx.ext.i63
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.end75.i, %for.body.lr.ph.i66
  %jcolB.0381.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %add80.i, %for.end75.i ]
  %colB0.0380.i = phi double* [ %105, %for.body.lr.ph.i66 ], [ %add.ptr78.i, %for.end75.i ]
  br label %for.cond5.outer.i69

for.cond5.outer.i69:                              ; preds = %for.body25.i, %for.body.i67
  %colstart.0.ph.i68 = phi i32 [ %109, %for.body.i67 ], [ %sub9.i, %for.body25.i ]
  %jcolA.0.in.ph.i = phi i32 [ %108, %for.body.i67 ], [ %jcolA.0.i, %for.body25.i ]
  %113 = sext i32 %jcolA.0.in.ph.i to i64
  br label %for.cond5.i71

for.cond5.i71:                                    ; preds = %for.body7.i74, %for.cond5.outer.i69
  %indvars.iv397.i = phi i64 [ %113, %for.cond5.outer.i69 ], [ %indvars.iv.next398.i, %for.body7.i74 ]
  %jcolA.0.in.i = phi i32 [ %jcolA.0.in.ph.i, %for.cond5.outer.i69 ], [ %jcolA.0.i, %for.body7.i74 ]
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, -1
  %jcolA.0.i = add nsw i32 %jcolA.0.in.i, -1
  %114 = trunc i64 %indvars.iv397.i to i32
  %cmp6.i70 = icmp sgt i32 %114, 0
  br i1 %cmp6.i70, label %for.body7.i74, label %for.end75.i

for.body7.i74:                                    ; preds = %for.cond5.i71
  %arrayidx.i72 = getelementptr inbounds i32* %110, i64 %indvars.iv.next398.i
  %115 = load i32* %arrayidx.i72, align 4, !tbaa !3
  %cmp8.i73 = icmp sgt i32 %115, 0
  br i1 %cmp8.i73, label %for.body25.lr.ph.i, label %for.cond5.i71

for.body25.lr.ph.i:                               ; preds = %for.body7.i74
  %sub9.i = sub i32 %colstart.0.ph.i68, %115
  %mul10.i = shl nsw i32 %jcolA.0.i, 1
  %add351.i = or i32 %mul10.i, 1
  %idxprom11.i = sext i32 %mul10.i to i64
  %arrayidx12.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom11.i
  %116 = load double* %arrayidx12.i, align 8, !tbaa !4
  %idxprom13.i = sext i32 %add351.i to i64
  %arrayidx14.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom13.i
  %117 = load double* %arrayidx14.i, align 8, !tbaa !4
  %add.ptr.sum352.i = add i64 %idxprom11.i, %idx.ext.i63
  %arrayidx16.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum352.i
  %118 = load double* %arrayidx16.i, align 8, !tbaa !4
  %add.ptr.sum353.i = add i64 %idxprom13.i, %idx.ext.i63
  %arrayidx18.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum353.i
  %119 = load double* %arrayidx18.i, align 8, !tbaa !4
  %add.ptr3.sum354.i = add i64 %idxprom11.i, %add.ptr.sum.i64
  %arrayidx20.i75 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum354.i
  %120 = load double* %arrayidx20.i75, align 8, !tbaa !4
  %add.ptr3.sum355.i = add i64 %idxprom13.i, %add.ptr.sum.i64
  %arrayidx22.i76 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum355.i
  %121 = load double* %arrayidx22.i76, align 8, !tbaa !4
  %122 = sext i32 %sub9.i to i64
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.lr.ph.i
  %indvars.iv399.i = phi i64 [ %122, %for.body25.lr.ph.i ], [ %indvars.iv.next400.i, %for.body25.i ]
  %ii.0373.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i, %for.body25.i ]
  %123 = trunc i64 %indvars.iv399.i to i32
  %mul26.i = shl nsw i32 %123, 1
  %idxprom27.i = sext i32 %mul26.i to i64
  %arrayidx28.i77 = getelementptr inbounds double* %111, i64 %idxprom27.i
  %124 = load double* %arrayidx28.i77, align 8, !tbaa !4
  %add30356.i = or i32 %mul26.i, 1
  %idxprom31.i = sext i32 %add30356.i to i64
  %arrayidx32.i = getelementptr inbounds double* %111, i64 %idxprom31.i
  %125 = load double* %arrayidx32.i, align 8, !tbaa !4
  %arrayidx34.i = getelementptr inbounds i32* %112, i64 %indvars.iv399.i
  %126 = load i32* %arrayidx34.i, align 4, !tbaa !3
  %mul35.i = shl nsw i32 %126, 1
  %add36357.i = or i32 %mul35.i, 1
  %mul37.i = fmul double %116, %124
  %mul38.i = fmul double %117, %125
  %add39.i = fadd double %mul37.i, %mul38.i
  %idxprom40.i = sext i32 %mul35.i to i64
  %arrayidx41.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom40.i
  %127 = load double* %arrayidx41.i, align 8, !tbaa !4
  %sub42.i = fsub double %127, %add39.i
  store double %sub42.i, double* %arrayidx41.i, align 8, !tbaa !4
  %mul43.i78 = fmul double %117, %124
  %mul44.i79 = fmul double %116, %125
  %sub45.i = fsub double %mul43.i78, %mul44.i79
  %idxprom46.i80 = sext i32 %add36357.i to i64
  %arrayidx47.i81 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom46.i80
  %128 = load double* %arrayidx47.i81, align 8, !tbaa !4
  %sub48.i82 = fsub double %128, %sub45.i
  store double %sub48.i82, double* %arrayidx47.i81, align 8, !tbaa !4
  %mul49.i83 = fmul double %118, %124
  %mul50.i84 = fmul double %119, %125
  %add51.i = fadd double %mul49.i83, %mul50.i84
  %add.ptr.sum358.i = add i64 %idxprom40.i, %idx.ext.i63
  %arrayidx53.i85 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum358.i
  %129 = load double* %arrayidx53.i85, align 8, !tbaa !4
  %sub54.i86 = fsub double %129, %add51.i
  store double %sub54.i86, double* %arrayidx53.i85, align 8, !tbaa !4
  %mul55.i87 = fmul double %119, %124
  %mul56.i88 = fmul double %118, %125
  %sub57.i = fsub double %mul55.i87, %mul56.i88
  %add.ptr.sum359.i = add i64 %idxprom46.i80, %idx.ext.i63
  %arrayidx59.i89 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum359.i
  %130 = load double* %arrayidx59.i89, align 8, !tbaa !4
  %sub60.i90 = fsub double %130, %sub57.i
  store double %sub60.i90, double* %arrayidx59.i89, align 8, !tbaa !4
  %mul61.i91 = fmul double %120, %124
  %mul62.i92 = fmul double %121, %125
  %add63.i = fadd double %mul61.i91, %mul62.i92
  %add.ptr3.sum360.i = add i64 %idxprom40.i, %add.ptr.sum.i64
  %arrayidx65.i93 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum360.i
  %131 = load double* %arrayidx65.i93, align 8, !tbaa !4
  %sub66.i94 = fsub double %131, %add63.i
  store double %sub66.i94, double* %arrayidx65.i93, align 8, !tbaa !4
  %mul67.i95 = fmul double %121, %124
  %mul68.i96 = fmul double %120, %125
  %sub69.i = fsub double %mul67.i95, %mul68.i96
  %add.ptr3.sum361.i = add i64 %idxprom46.i80, %add.ptr.sum.i64
  %arrayidx71.i97 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum361.i
  %132 = load double* %arrayidx71.i97, align 8, !tbaa !4
  %sub72.i98 = fsub double %132, %sub69.i
  store double %sub72.i98, double* %arrayidx71.i97, align 8, !tbaa !4
  %inc.i = add nsw i32 %ii.0373.i, 1
  %indvars.iv.next400.i = add i64 %indvars.iv399.i, 1
  %exitcond401.i = icmp eq i32 %inc.i, %115
  br i1 %exitcond401.i, label %for.cond5.outer.i69, label %for.body25.i

for.end75.i:                                      ; preds = %for.cond5.i71
  %add.ptr78.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum.i65
  %add80.i = add nsw i32 %jcolB.0381.i, 3
  %cmp.i99 = icmp slt i32 %add80.i, %sub378.i
  br i1 %cmp.i99, label %for.body.i67, label %for.end81.i102

for.end81.i102:                                   ; preds = %for.end75.i, %sw.bb20
  %jcolB.0.lcssa.i100 = phi i32 [ 0, %sw.bb20 ], [ %add80.i, %for.end75.i ]
  %colB0.0.lcssa.i101 = phi double* [ %105, %sw.bb20 ], [ %add.ptr78.i, %for.end75.i ]
  %cmp83.i = icmp eq i32 %jcolB.0.lcssa.i100, %sub378.i
  br i1 %cmp83.i, label %if.then84.i, label %if.else.i120

if.then84.i:                                      ; preds = %for.end81.i102
  %133 = load i32* %nrowB.i60, align 4, !tbaa !3
  %mul85.i = shl nsw i32 %133, 1
  %idx.ext86.i = sext i32 %mul85.i to i64
  %134 = load i32* %nrowA.i59, align 4, !tbaa !3
  %135 = load i32* %nentA.i58, align 4, !tbaa !3
  %136 = load i32** %sizesA.i61, align 8, !tbaa !0
  %137 = load double** %entriesA.i53, align 8, !tbaa !0
  %138 = load i32** %indicesA.i, align 8, !tbaa !0
  br label %for.cond89.outer.i

for.cond89.outer.i:                               ; preds = %for.body109.i, %if.then84.i
  %colstart.2.ph.i103 = phi i32 [ %135, %if.then84.i ], [ %sub96.i, %for.body109.i ]
  %jcolA.1.in.ph.i = phi i32 [ %134, %if.then84.i ], [ %jcolA.1.i, %for.body109.i ]
  %139 = sext i32 %jcolA.1.in.ph.i to i64
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body91.i, %for.cond89.outer.i
  %indvars.iv.i104 = phi i64 [ %139, %for.cond89.outer.i ], [ %indvars.iv.next.i105, %for.body91.i ]
  %jcolA.1.in.i = phi i32 [ %jcolA.1.in.ph.i, %for.cond89.outer.i ], [ %jcolA.1.i, %for.body91.i ]
  %indvars.iv.next.i105 = add i64 %indvars.iv.i104, -1
  %jcolA.1.i = add nsw i32 %jcolA.1.in.i, -1
  %140 = trunc i64 %indvars.iv.i104 to i32
  %cmp90.i = icmp sgt i32 %140, 0
  br i1 %cmp90.i, label %for.body91.i, label %sw.epilog

for.body91.i:                                     ; preds = %for.cond89.i
  %arrayidx93.i = getelementptr inbounds i32* %136, i64 %indvars.iv.next.i105
  %141 = load i32* %arrayidx93.i, align 4, !tbaa !3
  %cmp94.i = icmp sgt i32 %141, 0
  br i1 %cmp94.i, label %for.body109.lr.ph.i, label %for.cond89.i

for.body109.lr.ph.i:                              ; preds = %for.body91.i
  %sub96.i = sub i32 %colstart.2.ph.i103, %141
  %mul97.i = shl nsw i32 %jcolA.1.i, 1
  %add98345.i = or i32 %mul97.i, 1
  %idxprom99.i = sext i32 %mul97.i to i64
  %arrayidx100.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom99.i
  %142 = load double* %arrayidx100.i, align 8, !tbaa !4
  %idxprom101.i = sext i32 %add98345.i to i64
  %arrayidx102.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom101.i
  %143 = load double* %arrayidx102.i, align 8, !tbaa !4
  %add.ptr87.sum.i = add i64 %idxprom99.i, %idx.ext86.i
  %arrayidx104.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum.i
  %144 = load double* %arrayidx104.i, align 8, !tbaa !4
  %add.ptr87.sum346.i = add i64 %idxprom101.i, %idx.ext86.i
  %arrayidx106.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum346.i
  %145 = load double* %arrayidx106.i, align 8, !tbaa !4
  %146 = sext i32 %sub96.i to i64
  br label %for.body109.i

for.body109.i:                                    ; preds = %for.body109.i, %for.body109.lr.ph.i
  %indvars.iv386.i = phi i64 [ %146, %for.body109.lr.ph.i ], [ %indvars.iv.next387.i, %for.body109.i ]
  %ii.1363.i = phi i32 [ 0, %for.body109.lr.ph.i ], [ %inc146.i, %for.body109.i ]
  %147 = trunc i64 %indvars.iv386.i to i32
  %mul110.i = shl nsw i32 %147, 1
  %idxprom111.i = sext i32 %mul110.i to i64
  %arrayidx112.i = getelementptr inbounds double* %137, i64 %idxprom111.i
  %148 = load double* %arrayidx112.i, align 8, !tbaa !4
  %add114347.i = or i32 %mul110.i, 1
  %idxprom115.i106 = sext i32 %add114347.i to i64
  %arrayidx116.i107 = getelementptr inbounds double* %137, i64 %idxprom115.i106
  %149 = load double* %arrayidx116.i107, align 8, !tbaa !4
  %arrayidx118.i108 = getelementptr inbounds i32* %138, i64 %indvars.iv386.i
  %150 = load i32* %arrayidx118.i108, align 4, !tbaa !3
  %mul119.i = shl nsw i32 %150, 1
  %add120348.i = or i32 %mul119.i, 1
  %mul121.i = fmul double %142, %148
  %mul122.i = fmul double %143, %149
  %add123.i = fadd double %mul121.i, %mul122.i
  %idxprom124.i = sext i32 %mul119.i to i64
  %arrayidx125.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom124.i
  %151 = load double* %arrayidx125.i, align 8, !tbaa !4
  %sub126.i = fsub double %151, %add123.i
  store double %sub126.i, double* %arrayidx125.i, align 8, !tbaa !4
  %mul127.i = fmul double %143, %148
  %mul128.i = fmul double %142, %149
  %sub129.i = fsub double %mul127.i, %mul128.i
  %idxprom130.i = sext i32 %add120348.i to i64
  %arrayidx131.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom130.i
  %152 = load double* %arrayidx131.i, align 8, !tbaa !4
  %sub132.i = fsub double %152, %sub129.i
  store double %sub132.i, double* %arrayidx131.i, align 8, !tbaa !4
  %mul133.i109 = fmul double %144, %148
  %mul134.i110 = fmul double %145, %149
  %add135.i111 = fadd double %mul133.i109, %mul134.i110
  %add.ptr87.sum349.i = add i64 %idxprom124.i, %idx.ext86.i
  %arrayidx137.i112 = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum349.i
  %153 = load double* %arrayidx137.i112, align 8, !tbaa !4
  %sub138.i113 = fsub double %153, %add135.i111
  store double %sub138.i113, double* %arrayidx137.i112, align 8, !tbaa !4
  %mul139.i114 = fmul double %145, %148
  %mul140.i115 = fmul double %144, %149
  %sub141.i116 = fsub double %mul139.i114, %mul140.i115
  %add.ptr87.sum350.i = add i64 %idxprom130.i, %idx.ext86.i
  %arrayidx143.i117 = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum350.i
  %154 = load double* %arrayidx143.i117, align 8, !tbaa !4
  %sub144.i118 = fsub double %154, %sub141.i116
  store double %sub144.i118, double* %arrayidx143.i117, align 8, !tbaa !4
  %inc146.i = add nsw i32 %ii.1363.i, 1
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1
  %exitcond.i = icmp eq i32 %inc146.i, %141
  br i1 %exitcond.i, label %for.cond89.outer.i, label %for.body109.i

if.else.i120:                                     ; preds = %for.end81.i102
  %sub153.i119 = add nsw i32 %106, -1
  %cmp154.i = icmp eq i32 %jcolB.0.lcssa.i100, %sub153.i119
  br i1 %cmp154.i, label %if.then155.i, label %sw.epilog

if.then155.i:                                     ; preds = %if.else.i120
  %155 = load i32* %nrowA.i59, align 4, !tbaa !3
  %156 = load i32* %nentA.i58, align 4, !tbaa !3
  %157 = load i32** %sizesA.i61, align 8, !tbaa !0
  %158 = load double** %entriesA.i53, align 8, !tbaa !0
  %159 = load i32** %indicesA.i, align 8, !tbaa !0
  br label %for.cond157.outer.i

for.cond157.outer.i:                              ; preds = %for.body173.i, %if.then155.i
  %colstart.4.ph.i121 = phi i32 [ %156, %if.then155.i ], [ %sub164.i, %for.body173.i ]
  %jcolA.2.in.ph.i = phi i32 [ %155, %if.then155.i ], [ %jcolA.2.i, %for.body173.i ]
  %160 = sext i32 %jcolA.2.in.ph.i to i64
  br label %for.cond157.i

for.cond157.i:                                    ; preds = %for.body159.i, %for.cond157.outer.i
  %indvars.iv390.i = phi i64 [ %160, %for.cond157.outer.i ], [ %indvars.iv.next391.i, %for.body159.i ]
  %jcolA.2.in.i = phi i32 [ %jcolA.2.in.ph.i, %for.cond157.outer.i ], [ %jcolA.2.i, %for.body159.i ]
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, -1
  %jcolA.2.i = add nsw i32 %jcolA.2.in.i, -1
  %161 = trunc i64 %indvars.iv390.i to i32
  %cmp158.i = icmp sgt i32 %161, 0
  br i1 %cmp158.i, label %for.body159.i, label %sw.epilog

for.body159.i:                                    ; preds = %for.cond157.i
  %arrayidx161.i = getelementptr inbounds i32* %157, i64 %indvars.iv.next391.i
  %162 = load i32* %arrayidx161.i, align 4, !tbaa !3
  %cmp162.i = icmp sgt i32 %162, 0
  br i1 %cmp162.i, label %for.body173.lr.ph.i, label %for.cond157.i

for.body173.lr.ph.i:                              ; preds = %for.body159.i
  %sub164.i = sub i32 %colstart.4.ph.i121, %162
  %mul165.i = shl nsw i32 %jcolA.2.i, 1
  %add166342.i = or i32 %mul165.i, 1
  %idxprom167.i = sext i32 %mul165.i to i64
  %arrayidx168.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom167.i
  %163 = load double* %arrayidx168.i, align 8, !tbaa !4
  %idxprom169.i = sext i32 %add166342.i to i64
  %arrayidx170.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom169.i
  %164 = load double* %arrayidx170.i, align 8, !tbaa !4
  %165 = sext i32 %sub164.i to i64
  br label %for.body173.i

for.body173.i:                                    ; preds = %for.body173.i, %for.body173.lr.ph.i
  %indvars.iv392.i = phi i64 [ %165, %for.body173.lr.ph.i ], [ %indvars.iv.next393.i, %for.body173.i ]
  %ii.2367.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc198.i, %for.body173.i ]
  %166 = trunc i64 %indvars.iv392.i to i32
  %mul174.i = shl nsw i32 %166, 1
  %idxprom175.i = sext i32 %mul174.i to i64
  %arrayidx176.i = getelementptr inbounds double* %158, i64 %idxprom175.i
  %167 = load double* %arrayidx176.i, align 8, !tbaa !4
  %add178343.i = or i32 %mul174.i, 1
  %idxprom179.i = sext i32 %add178343.i to i64
  %arrayidx180.i = getelementptr inbounds double* %158, i64 %idxprom179.i
  %168 = load double* %arrayidx180.i, align 8, !tbaa !4
  %arrayidx182.i = getelementptr inbounds i32* %159, i64 %indvars.iv392.i
  %169 = load i32* %arrayidx182.i, align 4, !tbaa !3
  %mul183.i = shl nsw i32 %169, 1
  %add184344.i = or i32 %mul183.i, 1
  %mul185.i122 = fmul double %163, %167
  %mul186.i = fmul double %164, %168
  %add187.i = fadd double %mul185.i122, %mul186.i
  %idxprom188.i = sext i32 %mul183.i to i64
  %arrayidx189.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom188.i
  %170 = load double* %arrayidx189.i, align 8, !tbaa !4
  %sub190.i = fsub double %170, %add187.i
  store double %sub190.i, double* %arrayidx189.i, align 8, !tbaa !4
  %mul191.i = fmul double %164, %167
  %mul192.i = fmul double %163, %168
  %sub193.i = fsub double %mul191.i, %mul192.i
  %idxprom194.i = sext i32 %add184344.i to i64
  %arrayidx195.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom194.i
  %171 = load double* %arrayidx195.i, align 8, !tbaa !4
  %sub196.i = fsub double %171, %sub193.i
  store double %sub196.i, double* %arrayidx195.i, align 8, !tbaa !4
  %inc198.i = add nsw i32 %ii.2367.i, 1
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1
  %exitcond394.i = icmp eq i32 %inc198.i, %162
  br i1 %exitcond394.i, label %for.cond157.outer.i, label %for.body173.i

sw.bb21:                                          ; preds = %if.end18
  %172 = bitcast double** %entriesA.i123 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #4
  %173 = bitcast double** %entriesB.i124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #4
  %174 = bitcast i32* %inc1.i125 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #4
  %175 = bitcast i32* %inc2.i126 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #4
  %176 = bitcast i32* %ncolB.i127 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #4
  %177 = bitcast i32* %nentA.i128 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #4
  %178 = bitcast i32* %nrowA.i129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #4
  %179 = bitcast i32* %nrowB.i130 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #4
  %180 = bitcast i32** %firstlocsA.i131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #4
  %181 = bitcast i32** %sizesA.i132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #4
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i129, i32* %nentA.i128, i32** %firstlocsA.i131, i32** %sizesA.i132, double** %entriesA.i123) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i130, i32* %ncolB.i127, i32* %inc1.i125, i32* %inc2.i126, double** %entriesB.i124) #5
  %182 = load double** %entriesB.i124, align 8, !tbaa !0
  %183 = load i32* %ncolB.i127, align 4, !tbaa !3
  %sub448.i = add nsw i32 %183, -2
  %cmp449.i = icmp sgt i32 %sub448.i, 0
  br i1 %cmp449.i, label %for.body.lr.ph.i137, label %for.end90.i

for.body.lr.ph.i137:                              ; preds = %sw.bb21
  %184 = load i32* %nrowB.i130, align 4, !tbaa !3
  %mul.i133 = shl nsw i32 %184, 1
  %idx.ext.i134 = sext i32 %mul.i133 to i64
  %add.ptr.sum.i135 = shl nsw i64 %idx.ext.i134, 1
  %185 = load i32* %nrowA.i129, align 4, !tbaa !3
  %cmp5444.i = icmp sgt i32 %185, 0
  %add.ptr3.sum.i136 = add i64 %add.ptr.sum.i135, %idx.ext.i134
  %186 = load i32** %sizesA.i132, align 8, !tbaa !0
  %187 = load i32** %firstlocsA.i131, align 8, !tbaa !0
  %188 = load double** %entriesA.i123, align 8, !tbaa !0
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.end84.i, %for.body.lr.ph.i137
  %jcolB.0452.i = phi i32 [ 0, %for.body.lr.ph.i137 ], [ %add89.i, %for.end84.i ]
  %colB0.0450.i = phi double* [ %182, %for.body.lr.ph.i137 ], [ %add.ptr87.i, %for.end84.i ]
  br i1 %cmp5444.i, label %for.body6.i, label %for.end84.i

for.body6.i:                                      ; preds = %for.body.i138, %for.inc82.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.inc82.i ], [ 0, %for.body.i138 ]
  %kk.0447.i = phi i32 [ %kk.2.i, %for.inc82.i ], [ 0, %for.body.i138 ]
  %arrayidx.i139 = getelementptr inbounds i32* %186, i64 %indvars.iv473.i
  %189 = load i32* %arrayidx.i139, align 4, !tbaa !3
  %cmp7.i = icmp sgt i32 %189, 0
  br i1 %cmp7.i, label %if.then.i141, label %for.inc82.i

if.then.i141:                                     ; preds = %for.body6.i
  %arrayidx9.i = getelementptr inbounds i32* %187, i64 %indvars.iv473.i
  %190 = load i32* %arrayidx9.i, align 4, !tbaa !3
  %add.i140 = add i32 %189, -1
  %sub12.i = add i32 %add.i140, %190
  %cmp14428.i = icmp sgt i32 %190, %sub12.i
  br i1 %cmp14428.i, label %for.end.i, label %for.body15.lr.ph.i

for.body15.lr.ph.i:                               ; preds = %if.then.i141
  %191 = sext i32 %kk.0447.i to i64
  %192 = sext i32 %190 to i64
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %for.body15.i ], [ %192, %for.body15.lr.ph.i ]
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %for.body15.i ], [ %191, %for.body15.lr.ph.i ]
  %rsum2.0434.i = phi double [ %add56.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum1.0433.i = phi double [ %add48.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum0.0432.i = phi double [ %add40.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum2.0431.i = phi double [ %add60.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum1.0430.i = phi double [ %add52.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum0.0429.i = phi double [ %add44.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %193 = trunc i64 %indvars.iv468.i to i32
  %mul16.i = shl nsw i32 %193, 1
  %idxprom17.i = sext i32 %mul16.i to i64
  %arrayidx18.i142 = getelementptr inbounds double* %188, i64 %idxprom17.i
  %194 = load double* %arrayidx18.i142, align 8, !tbaa !4
  %add20394.i = or i32 %mul16.i, 1
  %idxprom21.i143 = sext i32 %add20394.i to i64
  %arrayidx22.i144 = getelementptr inbounds double* %188, i64 %idxprom21.i143
  %195 = load double* %arrayidx22.i144, align 8, !tbaa !4
  %196 = trunc i64 %indvars.iv470.i to i32
  %mul23.i = shl nsw i32 %196, 1
  %add24395.i = or i32 %mul23.i, 1
  %idxprom25.i = sext i32 %mul23.i to i64
  %arrayidx26.i145 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom25.i
  %197 = load double* %arrayidx26.i145, align 8, !tbaa !4
  %idxprom27.i146 = sext i32 %add24395.i to i64
  %arrayidx28.i147 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom27.i146
  %198 = load double* %arrayidx28.i147, align 8, !tbaa !4
  %add.ptr.sum396.i = add i64 %idxprom25.i, %idx.ext.i134
  %arrayidx30.i148 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum396.i
  %199 = load double* %arrayidx30.i148, align 8, !tbaa !4
  %add.ptr.sum397.i = add i64 %idxprom27.i146, %idx.ext.i134
  %arrayidx32.i149 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum397.i
  %200 = load double* %arrayidx32.i149, align 8, !tbaa !4
  %add.ptr3.sum398.i = add i64 %idxprom25.i, %add.ptr.sum.i135
  %arrayidx34.i150 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum398.i
  %201 = load double* %arrayidx34.i150, align 8, !tbaa !4
  %add.ptr3.sum399.i = add i64 %idxprom27.i146, %add.ptr.sum.i135
  %arrayidx36.i151 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum399.i
  %202 = load double* %arrayidx36.i151, align 8, !tbaa !4
  %mul37.i152 = fmul double %194, %197
  %mul38.i153 = fmul double %195, %198
  %add39.i154 = fadd double %mul37.i152, %mul38.i153
  %add40.i = fadd double %rsum0.0432.i, %add39.i154
  %mul41.i155 = fmul double %194, %198
  %mul42.i = fmul double %195, %197
  %sub43.i = fsub double %mul41.i155, %mul42.i
  %add44.i = fadd double %isum0.0429.i, %sub43.i
  %mul45.i = fmul double %194, %199
  %mul46.i = fmul double %195, %200
  %add47.i = fadd double %mul45.i, %mul46.i
  %add48.i = fadd double %rsum1.0433.i, %add47.i
  %mul49.i156 = fmul double %194, %200
  %mul50.i157 = fmul double %195, %199
  %sub51.i158 = fsub double %mul49.i156, %mul50.i157
  %add52.i = fadd double %isum1.0430.i, %sub51.i158
  %mul53.i = fmul double %194, %201
  %mul54.i = fmul double %195, %202
  %add55.i = fadd double %mul53.i, %mul54.i
  %add56.i = fadd double %rsum2.0434.i, %add55.i
  %mul57.i = fmul double %194, %202
  %mul58.i = fmul double %195, %201
  %sub59.i = fsub double %mul57.i, %mul58.i
  %add60.i = fadd double %isum2.0431.i, %sub59.i
  %indvars.iv.next471.i = add i64 %indvars.iv470.i, 1
  %indvars.iv.next469.i = add i64 %indvars.iv468.i, 1
  %cmp14.i = icmp slt i32 %196, %sub12.i
  br i1 %cmp14.i, label %for.body15.i, label %for.cond13.for.end_crit_edge.i

for.cond13.for.end_crit_edge.i:                   ; preds = %for.body15.i
  %203 = add i32 %189, %kk.0447.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond13.for.end_crit_edge.i, %if.then.i141
  %kk.1.lcssa.i = phi i32 [ %203, %for.cond13.for.end_crit_edge.i ], [ %kk.0447.i, %if.then.i141 ]
  %rsum2.0.lcssa.i = phi double [ %add56.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %rsum1.0.lcssa.i = phi double [ %add48.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %rsum0.0.lcssa.i = phi double [ %add40.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %isum2.0.lcssa.i = phi double [ %add60.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %isum1.0.lcssa.i = phi double [ %add52.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %isum0.0.lcssa.i = phi double [ %add44.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %204 = trunc i64 %indvars.iv473.i to i32
  %mul62.i159 = shl nsw i32 %204, 1
  %add63389.i = or i32 %mul62.i159, 1
  %idxprom64.i = sext i32 %mul62.i159 to i64
  %arrayidx65.i160 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom64.i
  %205 = load double* %arrayidx65.i160, align 8, !tbaa !4
  %sub66.i161 = fsub double %205, %rsum0.0.lcssa.i
  store double %sub66.i161, double* %arrayidx65.i160, align 8, !tbaa !4
  %idxprom67.i = sext i32 %add63389.i to i64
  %arrayidx68.i = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom67.i
  %206 = load double* %arrayidx68.i, align 8, !tbaa !4
  %sub69.i162 = fsub double %206, %isum0.0.lcssa.i
  store double %sub69.i162, double* %arrayidx68.i, align 8, !tbaa !4
  %add.ptr.sum390.i = add i64 %idxprom64.i, %idx.ext.i134
  %arrayidx71.i163 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum390.i
  %207 = load double* %arrayidx71.i163, align 8, !tbaa !4
  %sub72.i164 = fsub double %207, %rsum1.0.lcssa.i
  store double %sub72.i164, double* %arrayidx71.i163, align 8, !tbaa !4
  %add.ptr.sum391.i = add i64 %idxprom67.i, %idx.ext.i134
  %arrayidx74.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum391.i
  %208 = load double* %arrayidx74.i, align 8, !tbaa !4
  %sub75.i165 = fsub double %208, %isum1.0.lcssa.i
  store double %sub75.i165, double* %arrayidx74.i, align 8, !tbaa !4
  %add.ptr3.sum392.i = add i64 %idxprom64.i, %add.ptr.sum.i135
  %arrayidx77.i166 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum392.i
  %209 = load double* %arrayidx77.i166, align 8, !tbaa !4
  %sub78.i167 = fsub double %209, %rsum2.0.lcssa.i
  store double %sub78.i167, double* %arrayidx77.i166, align 8, !tbaa !4
  %add.ptr3.sum393.i = add i64 %idxprom67.i, %add.ptr.sum.i135
  %arrayidx80.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum393.i
  %210 = load double* %arrayidx80.i, align 8, !tbaa !4
  %sub81.i = fsub double %210, %isum2.0.lcssa.i
  store double %sub81.i, double* %arrayidx80.i, align 8, !tbaa !4
  br label %for.inc82.i

for.inc82.i:                                      ; preds = %for.end.i, %for.body6.i
  %kk.2.i = phi i32 [ %kk.1.lcssa.i, %for.end.i ], [ %kk.0447.i, %for.body6.i ]
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1
  %lftr.wideiv335 = trunc i64 %indvars.iv.next474.i to i32
  %exitcond336 = icmp eq i32 %lftr.wideiv335, %185
  br i1 %exitcond336, label %for.end84.i, label %for.body6.i

for.end84.i:                                      ; preds = %for.inc82.i, %for.body.i138
  %add.ptr87.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum.i136
  %add89.i = add nsw i32 %jcolB.0452.i, 3
  %cmp.i168 = icmp slt i32 %add89.i, %sub448.i
  br i1 %cmp.i168, label %for.body.i138, label %for.end90.i

for.end90.i:                                      ; preds = %for.end84.i, %sw.bb21
  %jcolB.0.lcssa.i169 = phi i32 [ 0, %sw.bb21 ], [ %add89.i, %for.end84.i ]
  %colB0.0.lcssa.i170 = phi double* [ %182, %sw.bb21 ], [ %add.ptr87.i, %for.end84.i ]
  %cmp92.i = icmp eq i32 %jcolB.0.lcssa.i169, %sub448.i
  br i1 %cmp92.i, label %if.then93.i, label %if.else.i179

if.then93.i:                                      ; preds = %for.end90.i
  %211 = load i32* %nrowB.i130, align 4, !tbaa !3
  %mul94.i = shl nsw i32 %211, 1
  %idx.ext95.i = sext i32 %mul94.i to i64
  %212 = load i32* %nrowA.i129, align 4, !tbaa !3
  %cmp98411.i = icmp sgt i32 %212, 0
  br i1 %cmp98411.i, label %for.body99.lr.ph.i, label %sw.epilog

for.body99.lr.ph.i:                               ; preds = %if.then93.i
  %213 = load i32** %sizesA.i132, align 8, !tbaa !0
  %214 = load i32** %firstlocsA.i131, align 8, !tbaa !0
  %215 = load double** %entriesA.i123, align 8, !tbaa !0
  br label %for.body99.i

for.body99.i:                                     ; preds = %for.inc165.i, %for.body99.lr.ph.i
  %indvars.iv459.i = phi i64 [ 0, %for.body99.lr.ph.i ], [ %indvars.iv.next460.i, %for.inc165.i ]
  %kk.3414.i = phi i32 [ 0, %for.body99.lr.ph.i ], [ %kk.5.i, %for.inc165.i ]
  %arrayidx101.i = getelementptr inbounds i32* %213, i64 %indvars.iv459.i
  %216 = load i32* %arrayidx101.i, align 4, !tbaa !3
  %cmp102.i = icmp sgt i32 %216, 0
  br i1 %cmp102.i, label %if.then103.i, label %for.inc165.i

if.then103.i:                                     ; preds = %for.body99.i
  %arrayidx105.i = getelementptr inbounds i32* %214, i64 %indvars.iv459.i
  %217 = load i32* %arrayidx105.i, align 4, !tbaa !3
  %add108.i = add i32 %216, -1
  %sub109.i = add i32 %add108.i, %217
  %cmp111400.i = icmp sgt i32 %217, %sub109.i
  br i1 %cmp111400.i, label %for.end149.i, label %for.body112.lr.ph.i

for.body112.lr.ph.i:                              ; preds = %if.then103.i
  %218 = sext i32 %kk.3414.i to i64
  %219 = sext i32 %217 to i64
  br label %for.body112.i

for.body112.i:                                    ; preds = %for.body112.i, %for.body112.lr.ph.i
  %indvars.iv457.i = phi i64 [ %indvars.iv.next458.i, %for.body112.i ], [ %219, %for.body112.lr.ph.i ]
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i178, %for.body112.i ], [ %218, %for.body112.lr.ph.i ]
  %rsum1.1404.i = phi double [ %add141.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %rsum0.1403.i = phi double [ %add133.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum1.1402.i = phi double [ %add145.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum0.1401.i = phi double [ %add137.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %220 = trunc i64 %indvars.iv.i171 to i32
  %mul113.i = shl nsw i32 %220, 1
  %idxprom114.i = sext i32 %mul113.i to i64
  %arrayidx115.i = getelementptr inbounds double* %215, i64 %idxprom114.i
  %221 = load double* %arrayidx115.i, align 8, !tbaa !4
  %add117385.i = or i32 %mul113.i, 1
  %idxprom118.i = sext i32 %add117385.i to i64
  %arrayidx119.i = getelementptr inbounds double* %215, i64 %idxprom118.i
  %222 = load double* %arrayidx119.i, align 8, !tbaa !4
  %223 = trunc i64 %indvars.iv457.i to i32
  %mul120.i = shl nsw i32 %223, 1
  %add121386.i = or i32 %mul120.i, 1
  %idxprom122.i = sext i32 %mul120.i to i64
  %arrayidx123.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom122.i
  %224 = load double* %arrayidx123.i, align 8, !tbaa !4
  %idxprom124.i172 = sext i32 %add121386.i to i64
  %arrayidx125.i173 = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom124.i172
  %225 = load double* %arrayidx125.i173, align 8, !tbaa !4
  %add.ptr96.sum387.i = add i64 %idxprom122.i, %idx.ext95.i
  %arrayidx127.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum387.i
  %226 = load double* %arrayidx127.i, align 8, !tbaa !4
  %add.ptr96.sum388.i = add i64 %idxprom124.i172, %idx.ext95.i
  %arrayidx129.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum388.i
  %227 = load double* %arrayidx129.i, align 8, !tbaa !4
  %mul130.i = fmul double %221, %224
  %mul131.i174 = fmul double %222, %225
  %add132.i = fadd double %mul130.i, %mul131.i174
  %add133.i = fadd double %rsum0.1403.i, %add132.i
  %mul134.i175 = fmul double %221, %225
  %mul135.i = fmul double %222, %224
  %sub136.i = fsub double %mul134.i175, %mul135.i
  %add137.i = fadd double %isum0.1401.i, %sub136.i
  %mul138.i = fmul double %221, %226
  %mul139.i176 = fmul double %222, %227
  %add140.i = fadd double %mul138.i, %mul139.i176
  %add141.i = fadd double %rsum1.1404.i, %add140.i
  %mul142.i = fmul double %221, %227
  %mul143.i = fmul double %222, %226
  %sub144.i177 = fsub double %mul142.i, %mul143.i
  %add145.i = fadd double %isum1.1402.i, %sub144.i177
  %indvars.iv.next458.i = add i64 %indvars.iv457.i, 1
  %indvars.iv.next.i178 = add i64 %indvars.iv.i171, 1
  %cmp111.i = icmp slt i32 %223, %sub109.i
  br i1 %cmp111.i, label %for.body112.i, label %for.cond110.for.end149_crit_edge.i

for.cond110.for.end149_crit_edge.i:               ; preds = %for.body112.i
  %228 = add i32 %216, %kk.3414.i
  br label %for.end149.i

for.end149.i:                                     ; preds = %for.cond110.for.end149_crit_edge.i, %if.then103.i
  %kk.4.lcssa.i = phi i32 [ %228, %for.cond110.for.end149_crit_edge.i ], [ %kk.3414.i, %if.then103.i ]
  %rsum1.1.lcssa.i = phi double [ %add141.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %rsum0.1.lcssa.i = phi double [ %add133.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %isum1.1.lcssa.i = phi double [ %add145.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %isum0.1.lcssa.i = phi double [ %add137.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %229 = trunc i64 %indvars.iv459.i to i32
  %mul150.i = shl nsw i32 %229, 1
  %add151383.i = or i32 %mul150.i, 1
  %idxprom152.i = sext i32 %mul150.i to i64
  %arrayidx153.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom152.i
  %230 = load double* %arrayidx153.i, align 8, !tbaa !4
  %sub154.i = fsub double %230, %rsum0.1.lcssa.i
  store double %sub154.i, double* %arrayidx153.i, align 8, !tbaa !4
  %idxprom155.i = sext i32 %add151383.i to i64
  %arrayidx156.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom155.i
  %231 = load double* %arrayidx156.i, align 8, !tbaa !4
  %sub157.i = fsub double %231, %isum0.1.lcssa.i
  store double %sub157.i, double* %arrayidx156.i, align 8, !tbaa !4
  %add.ptr96.sum.i = add i64 %idxprom152.i, %idx.ext95.i
  %arrayidx159.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum.i
  %232 = load double* %arrayidx159.i, align 8, !tbaa !4
  %sub160.i = fsub double %232, %rsum1.1.lcssa.i
  store double %sub160.i, double* %arrayidx159.i, align 8, !tbaa !4
  %add.ptr96.sum384.i = add i64 %idxprom155.i, %idx.ext95.i
  %arrayidx162.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum384.i
  %233 = load double* %arrayidx162.i, align 8, !tbaa !4
  %sub163.i = fsub double %233, %isum1.1.lcssa.i
  store double %sub163.i, double* %arrayidx162.i, align 8, !tbaa !4
  br label %for.inc165.i

for.inc165.i:                                     ; preds = %for.end149.i, %for.body99.i
  %kk.5.i = phi i32 [ %kk.4.lcssa.i, %for.end149.i ], [ %kk.3414.i, %for.body99.i ]
  %indvars.iv.next460.i = add i64 %indvars.iv459.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next460.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %212
  br i1 %exitcond, label %sw.epilog, label %for.body99.i

if.else.i179:                                     ; preds = %for.end90.i
  %sub168.i = add nsw i32 %183, -1
  %cmp169.i = icmp eq i32 %jcolB.0.lcssa.i169, %sub168.i
  br i1 %cmp169.i, label %for.cond171.preheader.i, label %sw.epilog

for.cond171.preheader.i:                          ; preds = %if.else.i179
  %234 = load i32* %nrowA.i129, align 4, !tbaa !3
  %cmp172424.i = icmp sgt i32 %234, 0
  br i1 %cmp172424.i, label %for.body173.lr.ph.i180, label %sw.epilog

for.body173.lr.ph.i180:                           ; preds = %for.cond171.preheader.i
  %235 = load i32** %sizesA.i132, align 8, !tbaa !0
  %236 = load i32** %firstlocsA.i131, align 8, !tbaa !0
  %237 = load double** %entriesA.i123, align 8, !tbaa !0
  br label %for.body173.i181

for.body173.i181:                                 ; preds = %for.inc221.i, %for.body173.lr.ph.i180
  %indvars.iv466.i = phi i64 [ 0, %for.body173.lr.ph.i180 ], [ %indvars.iv.next467.i, %for.inc221.i ]
  %kk.6427.i = phi i32 [ 0, %for.body173.lr.ph.i180 ], [ %kk.8.i, %for.inc221.i ]
  %arrayidx175.i = getelementptr inbounds i32* %235, i64 %indvars.iv466.i
  %238 = load i32* %arrayidx175.i, align 4, !tbaa !3
  %cmp176.i = icmp sgt i32 %238, 0
  br i1 %cmp176.i, label %if.then177.i, label %for.inc221.i

if.then177.i:                                     ; preds = %for.body173.i181
  %arrayidx179.i = getelementptr inbounds i32* %236, i64 %indvars.iv466.i
  %239 = load i32* %arrayidx179.i, align 4, !tbaa !3
  %add182.i = add i32 %238, -1
  %sub183.i = add i32 %add182.i, %239
  %cmp185415.i = icmp sgt i32 %239, %sub183.i
  br i1 %cmp185415.i, label %for.end211.i, label %for.body186.lr.ph.i

for.body186.lr.ph.i:                              ; preds = %if.then177.i
  %240 = sext i32 %kk.6427.i to i64
  %241 = sext i32 %239 to i64
  br label %for.body186.i

for.body186.i:                                    ; preds = %for.body186.i, %for.body186.lr.ph.i
  %indvars.iv463.i = phi i64 [ %indvars.iv.next464.i, %for.body186.i ], [ %241, %for.body186.lr.ph.i ]
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %for.body186.i ], [ %240, %for.body186.lr.ph.i ]
  %rsum0.2417.i = phi double [ %add203.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %isum0.2416.i = phi double [ %add207.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %242 = trunc i64 %indvars.iv461.i to i32
  %mul187.i = shl nsw i32 %242, 1
  %idxprom188.i182 = sext i32 %mul187.i to i64
  %arrayidx189.i183 = getelementptr inbounds double* %237, i64 %idxprom188.i182
  %243 = load double* %arrayidx189.i183, align 8, !tbaa !4
  %add191381.i = or i32 %mul187.i, 1
  %idxprom192.i = sext i32 %add191381.i to i64
  %arrayidx193.i = getelementptr inbounds double* %237, i64 %idxprom192.i
  %244 = load double* %arrayidx193.i, align 8, !tbaa !4
  %245 = trunc i64 %indvars.iv463.i to i32
  %mul194.i184 = shl nsw i32 %245, 1
  %add195382.i = or i32 %mul194.i184, 1
  %idxprom196.i = sext i32 %mul194.i184 to i64
  %arrayidx197.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom196.i
  %246 = load double* %arrayidx197.i, align 8, !tbaa !4
  %idxprom198.i = sext i32 %add195382.i to i64
  %arrayidx199.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom198.i
  %247 = load double* %arrayidx199.i, align 8, !tbaa !4
  %mul200.i = fmul double %243, %246
  %mul201.i185 = fmul double %244, %247
  %add202.i = fadd double %mul200.i, %mul201.i185
  %add203.i = fadd double %rsum0.2417.i, %add202.i
  %mul204.i186 = fmul double %243, %247
  %mul205.i = fmul double %244, %246
  %sub206.i = fsub double %mul204.i186, %mul205.i
  %add207.i = fadd double %isum0.2416.i, %sub206.i
  %indvars.iv.next464.i = add i64 %indvars.iv463.i, 1
  %indvars.iv.next462.i = add i64 %indvars.iv461.i, 1
  %cmp185.i = icmp slt i32 %245, %sub183.i
  br i1 %cmp185.i, label %for.body186.i, label %for.cond184.for.end211_crit_edge.i

for.cond184.for.end211_crit_edge.i:               ; preds = %for.body186.i
  %248 = add i32 %238, %kk.6427.i
  br label %for.end211.i

for.end211.i:                                     ; preds = %for.cond184.for.end211_crit_edge.i, %if.then177.i
  %kk.7.lcssa.i = phi i32 [ %248, %for.cond184.for.end211_crit_edge.i ], [ %kk.6427.i, %if.then177.i ]
  %rsum0.2.lcssa.i = phi double [ %add203.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %isum0.2.lcssa.i = phi double [ %add207.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %249 = trunc i64 %indvars.iv466.i to i32
  %mul212.i = shl nsw i32 %249, 1
  %add213380.i = or i32 %mul212.i, 1
  %idxprom214.i = sext i32 %mul212.i to i64
  %arrayidx215.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom214.i
  %250 = load double* %arrayidx215.i, align 8, !tbaa !4
  %sub216.i = fsub double %250, %rsum0.2.lcssa.i
  store double %sub216.i, double* %arrayidx215.i, align 8, !tbaa !4
  %idxprom217.i = sext i32 %add213380.i to i64
  %arrayidx218.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom217.i
  %251 = load double* %arrayidx218.i, align 8, !tbaa !4
  %sub219.i = fsub double %251, %isum0.2.lcssa.i
  store double %sub219.i, double* %arrayidx218.i, align 8, !tbaa !4
  br label %for.inc221.i

for.inc221.i:                                     ; preds = %for.end211.i, %for.body173.i181
  %kk.8.i = phi i32 [ %kk.7.lcssa.i, %for.end211.i ], [ %kk.6427.i, %for.body173.i181 ]
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1
  %lftr.wideiv333 = trunc i64 %indvars.iv.next467.i to i32
  %exitcond334 = icmp eq i32 %lftr.wideiv333, %234
  br i1 %exitcond334, label %sw.epilog, label %for.body173.i181

sw.bb22:                                          ; preds = %if.end18
  %252 = bitcast double** %entriesA.i187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #4
  %253 = bitcast double** %entriesB.i188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #4
  %254 = bitcast i32* %inc1.i189 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #4
  %255 = bitcast i32* %inc2.i190 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #4
  %256 = bitcast i32* %ncolB.i191 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #4
  %257 = bitcast i32* %nentA.i192 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #4
  %258 = bitcast i32* %nrowA.i193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #4
  %259 = bitcast i32* %nrowB.i194 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #4
  %260 = bitcast i32** %indicesA.i195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #4
  %261 = bitcast i32** %sizesA.i196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %261) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i193, i32* %nentA.i192, i32** %sizesA.i196, i32** %indicesA.i195, double** %entriesA.i187) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i194, i32* %ncolB.i191, i32* %inc1.i189, i32* %inc2.i190, double** %entriesB.i188) #5
  %262 = load double** %entriesB.i188, align 8, !tbaa !0
  %263 = load i32* %ncolB.i191, align 4, !tbaa !3
  %sub497.i = add nsw i32 %263, -2
  %cmp498.i = icmp sgt i32 %sub497.i, 0
  br i1 %cmp498.i, label %for.body.lr.ph.i201, label %for.end90.i233

for.body.lr.ph.i201:                              ; preds = %sw.bb22
  %264 = load i32* %nrowB.i194, align 4, !tbaa !3
  %mul.i197 = shl nsw i32 %264, 1
  %idx.ext.i198 = sext i32 %mul.i197 to i64
  %add.ptr.sum.i199 = shl nsw i64 %idx.ext.i198, 1
  %265 = load i32* %nrowA.i193, align 4, !tbaa !3
  %cmp5487.i = icmp sgt i32 %265, 0
  %add.ptr3.sum.i200 = add i64 %add.ptr.sum.i199, %idx.ext.i198
  %266 = load i32** %sizesA.i196, align 8, !tbaa !0
  %267 = load double** %entriesA.i187, align 8, !tbaa !0
  %268 = load i32** %indicesA.i195, align 8, !tbaa !0
  br label %for.body.i202

for.body.i202:                                    ; preds = %for.end84.i229, %for.body.lr.ph.i201
  %jcolB.0501.i = phi i32 [ 0, %for.body.lr.ph.i201 ], [ %add89.i227, %for.end84.i229 ]
  %colB0.0499.i = phi double* [ %262, %for.body.lr.ph.i201 ], [ %add.ptr87.i226, %for.end84.i229 ]
  br i1 %cmp5487.i, label %for.body6.i205, label %for.end84.i229

for.body6.i205:                                   ; preds = %for.body.i202, %for.inc82.i225
  %indvars.iv528.i = phi i64 [ %indvars.iv.next529.i, %for.inc82.i225 ], [ 0, %for.body.i202 ]
  %kk.0491.i = phi i32 [ %kk.2.i223, %for.inc82.i225 ], [ 0, %for.body.i202 ]
  %irowA.0488.i = phi i32 [ %inc83.i, %for.inc82.i225 ], [ 0, %for.body.i202 ]
  %arrayidx.i203 = getelementptr inbounds i32* %266, i64 %indvars.iv528.i
  %269 = load i32* %arrayidx.i203, align 4, !tbaa !3
  %cmp7.i204 = icmp sgt i32 %269, 0
  br i1 %cmp7.i204, label %for.body10.lr.ph.i, label %for.inc82.i225

for.body10.lr.ph.i:                               ; preds = %for.body6.i205
  %270 = sext i32 %kk.0491.i to i64
  %271 = trunc i64 %indvars.iv528.i to i32
  br label %for.body10.i

for.body10.i:                                     ; preds = %if.end.i, %for.body10.lr.ph.i
  %indvars.iv525.i = phi i64 [ %270, %for.body10.lr.ph.i ], [ %indvars.iv.next526.i, %if.end.i ]
  %kk.1478.i = phi i32 [ %kk.0491.i, %for.body10.lr.ph.i ], [ %inc60.i, %if.end.i ]
  %ii.0477.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i221, %if.end.i ]
  %rsum2.0476.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add55.i218, %if.end.i ]
  %rsum1.0475.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add47.i214, %if.end.i ]
  %rsum0.0474.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add39.i209, %if.end.i ]
  %isum2.0473.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add59.i, %if.end.i ]
  %isum1.0472.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add51.i216, %if.end.i ]
  %isum0.0471.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add43.i, %if.end.i ]
  %272 = trunc i64 %indvars.iv525.i to i32
  %mul11.i = shl nsw i32 %272, 1
  %idxprom12.i = sext i32 %mul11.i to i64
  %arrayidx13.i = getelementptr inbounds double* %267, i64 %idxprom12.i
  %273 = load double* %arrayidx13.i, align 8, !tbaa !4
  %add410.i = or i32 %mul11.i, 1
  %idxprom15.i = sext i32 %add410.i to i64
  %arrayidx16.i206 = getelementptr inbounds double* %267, i64 %idxprom15.i
  %274 = load double* %arrayidx16.i206, align 8, !tbaa !4
  %arrayidx18.i207 = getelementptr inbounds i32* %268, i64 %indvars.iv525.i
  %275 = load i32* %arrayidx18.i207, align 4, !tbaa !3
  %cmp19.i = icmp sgt i32 %275, -1
  %cmp20.i = icmp slt i32 %275, %271
  %or.cond.i = and i1 %cmp19.i, %cmp20.i
  br i1 %or.cond.i, label %if.end.i, label %if.then21.i

if.then21.i:                                      ; preds = %for.body10.i
  %276 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.0488.i, i32 %kk.1478.i, i32 %ii.0477.i, i32 %275) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i:                                         ; preds = %for.body10.i
  %mul22.i = shl nsw i32 %275, 1
  %add23411.i = or i32 %mul22.i, 1
  %idxprom24.i = sext i32 %mul22.i to i64
  %arrayidx25.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom24.i
  %277 = load double* %arrayidx25.i, align 8, !tbaa !4
  %idxprom26.i = sext i32 %add23411.i to i64
  %arrayidx27.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom26.i
  %278 = load double* %arrayidx27.i, align 8, !tbaa !4
  %add.ptr.sum412.i = add i64 %idxprom24.i, %idx.ext.i198
  %arrayidx29.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum412.i
  %279 = load double* %arrayidx29.i, align 8, !tbaa !4
  %add.ptr.sum413.i = add i64 %idxprom26.i, %idx.ext.i198
  %arrayidx31.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum413.i
  %280 = load double* %arrayidx31.i, align 8, !tbaa !4
  %add.ptr3.sum414.i = add i64 %idxprom24.i, %add.ptr.sum.i199
  %arrayidx33.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum414.i
  %281 = load double* %arrayidx33.i, align 8, !tbaa !4
  %add.ptr3.sum415.i = add i64 %idxprom26.i, %add.ptr.sum.i199
  %arrayidx35.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum415.i
  %282 = load double* %arrayidx35.i, align 8, !tbaa !4
  %mul36.i = fmul double %273, %277
  %mul37.i208 = fmul double %274, %278
  %add38.i = fadd double %mul36.i, %mul37.i208
  %add39.i209 = fadd double %rsum0.0474.i, %add38.i
  %mul40.i = fmul double %273, %278
  %mul41.i210 = fmul double %274, %277
  %sub42.i211 = fsub double %mul40.i, %mul41.i210
  %add43.i = fadd double %isum0.0471.i, %sub42.i211
  %mul44.i212 = fmul double %273, %279
  %mul45.i213 = fmul double %274, %280
  %add46.i = fadd double %mul44.i212, %mul45.i213
  %add47.i214 = fadd double %rsum1.0475.i, %add46.i
  %mul48.i = fmul double %273, %280
  %mul49.i215 = fmul double %274, %279
  %sub50.i = fsub double %mul48.i, %mul49.i215
  %add51.i216 = fadd double %isum1.0472.i, %sub50.i
  %mul52.i = fmul double %273, %281
  %mul53.i217 = fmul double %274, %282
  %add54.i = fadd double %mul52.i, %mul53.i217
  %add55.i218 = fadd double %rsum2.0476.i, %add54.i
  %mul56.i219 = fmul double %273, %282
  %mul57.i220 = fmul double %274, %281
  %sub58.i = fsub double %mul56.i219, %mul57.i220
  %add59.i = fadd double %isum2.0473.i, %sub58.i
  %inc.i221 = add nsw i32 %ii.0477.i, 1
  %indvars.iv.next526.i = add i64 %indvars.iv525.i, 1
  %inc60.i = add nsw i32 %kk.1478.i, 1
  %cmp9.i = icmp slt i32 %inc.i221, %269
  br i1 %cmp9.i, label %for.body10.i, label %for.end.i222

for.end.i222:                                     ; preds = %if.end.i
  %phitmp535.i = shl i32 %271, 1
  %add62405.i = or i32 %phitmp535.i, 1
  %idxprom63.i = sext i32 %phitmp535.i to i64
  %arrayidx64.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom63.i
  %283 = load double* %arrayidx64.i, align 8, !tbaa !4
  %sub65.i = fsub double %283, %add39.i209
  store double %sub65.i, double* %arrayidx64.i, align 8, !tbaa !4
  %idxprom66.i = sext i32 %add62405.i to i64
  %arrayidx67.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom66.i
  %284 = load double* %arrayidx67.i, align 8, !tbaa !4
  %sub68.i = fsub double %284, %add43.i
  store double %sub68.i, double* %arrayidx67.i, align 8, !tbaa !4
  %add.ptr.sum406.i = add i64 %idxprom63.i, %idx.ext.i198
  %arrayidx70.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum406.i
  %285 = load double* %arrayidx70.i, align 8, !tbaa !4
  %sub71.i = fsub double %285, %add47.i214
  store double %sub71.i, double* %arrayidx70.i, align 8, !tbaa !4
  %add.ptr.sum407.i = add i64 %idxprom66.i, %idx.ext.i198
  %arrayidx73.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum407.i
  %286 = load double* %arrayidx73.i, align 8, !tbaa !4
  %sub74.i = fsub double %286, %add51.i216
  store double %sub74.i, double* %arrayidx73.i, align 8, !tbaa !4
  %add.ptr3.sum408.i = add i64 %idxprom63.i, %add.ptr.sum.i199
  %arrayidx76.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum408.i
  %287 = load double* %arrayidx76.i, align 8, !tbaa !4
  %sub77.i = fsub double %287, %add55.i218
  store double %sub77.i, double* %arrayidx76.i, align 8, !tbaa !4
  %add.ptr3.sum409.i = add i64 %idxprom66.i, %add.ptr.sum.i199
  %arrayidx79.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum409.i
  %288 = load double* %arrayidx79.i, align 8, !tbaa !4
  %sub80.i = fsub double %288, %add59.i
  store double %sub80.i, double* %arrayidx79.i, align 8, !tbaa !4
  br label %for.inc82.i225

for.inc82.i225:                                   ; preds = %for.end.i222, %for.body6.i205
  %kk.2.i223 = phi i32 [ %inc60.i, %for.end.i222 ], [ %kk.0491.i, %for.body6.i205 ]
  %indvars.iv.next529.i = add i64 %indvars.iv528.i, 1
  %inc83.i = add nsw i32 %irowA.0488.i, 1
  %289 = trunc i64 %indvars.iv.next529.i to i32
  %cmp5.i224 = icmp slt i32 %289, %265
  br i1 %cmp5.i224, label %for.body6.i205, label %for.end84.i229

for.end84.i229:                                   ; preds = %for.inc82.i225, %for.body.i202
  %add.ptr87.i226 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum.i200
  %add89.i227 = add nsw i32 %jcolB.0501.i, 3
  %cmp.i228 = icmp slt i32 %add89.i227, %sub497.i
  br i1 %cmp.i228, label %for.body.i202, label %for.end90.i233

for.end90.i233:                                   ; preds = %for.end84.i229, %sw.bb22
  %jcolB.0.lcssa.i230 = phi i32 [ 0, %sw.bb22 ], [ %add89.i227, %for.end84.i229 ]
  %colB0.0.lcssa.i231 = phi double* [ %262, %sw.bb22 ], [ %add.ptr87.i226, %for.end84.i229 ]
  %cmp92.i232 = icmp eq i32 %jcolB.0.lcssa.i230, %sub497.i
  br i1 %cmp92.i232, label %if.then93.i236, label %if.else.i263

if.then93.i236:                                   ; preds = %for.end90.i233
  %290 = load i32* %nrowB.i194, align 4, !tbaa !3
  %mul94.i234 = shl nsw i32 %290, 1
  %idx.ext95.i235 = sext i32 %mul94.i234 to i64
  %291 = load i32* %nrowA.i193, align 4, !tbaa !3
  %cmp98436.i = icmp sgt i32 %291, 0
  br i1 %cmp98436.i, label %for.body99.lr.ph.i237, label %sw.epilog

for.body99.lr.ph.i237:                            ; preds = %if.then93.i236
  %292 = load i32** %sizesA.i196, align 8, !tbaa !0
  %293 = load double** %entriesA.i187, align 8, !tbaa !0
  %294 = load i32** %indicesA.i195, align 8, !tbaa !0
  br label %for.body99.i240

for.body99.i240:                                  ; preds = %for.inc167.i, %for.body99.lr.ph.i237
  %indvars.iv510.i = phi i64 [ 0, %for.body99.lr.ph.i237 ], [ %indvars.iv.next511.i, %for.inc167.i ]
  %kk.3440.i = phi i32 [ 0, %for.body99.lr.ph.i237 ], [ %kk.5.i261, %for.inc167.i ]
  %irowA.1437.i = phi i32 [ 0, %for.body99.lr.ph.i237 ], [ %inc168.i, %for.inc167.i ]
  %arrayidx101.i238 = getelementptr inbounds i32* %292, i64 %indvars.iv510.i
  %295 = load i32* %arrayidx101.i238, align 4, !tbaa !3
  %cmp102.i239 = icmp sgt i32 %295, 0
  br i1 %cmp102.i239, label %for.body106.lr.ph.i, label %for.inc167.i

for.body106.lr.ph.i:                              ; preds = %for.body99.i240
  %296 = sext i32 %kk.3440.i to i64
  %297 = trunc i64 %indvars.iv510.i to i32
  br label %for.body106.i

for.body106.i:                                    ; preds = %if.end121.i, %for.body106.lr.ph.i
  %indvars.iv.i241 = phi i64 [ %296, %for.body106.lr.ph.i ], [ %indvars.iv.next.i255, %if.end121.i ]
  %kk.4430.i = phi i32 [ %kk.3440.i, %for.body106.lr.ph.i ], [ %inc150.i, %if.end121.i ]
  %ii.1429.i = phi i32 [ 0, %for.body106.lr.ph.i ], [ %inc149.i, %if.end121.i ]
  %rsum1.1428.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add143.i, %if.end121.i ]
  %rsum0.1427.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add135.i250, %if.end121.i ]
  %isum1.1426.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add147.i254, %if.end121.i ]
  %isum0.1425.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add139.i, %if.end121.i ]
  %298 = trunc i64 %indvars.iv.i241 to i32
  %mul107.i = shl nsw i32 %298, 1
  %idxprom108.i = sext i32 %mul107.i to i64
  %arrayidx109.i = getelementptr inbounds double* %293, i64 %idxprom108.i
  %299 = load double* %arrayidx109.i, align 8, !tbaa !4
  %add111401.i = or i32 %mul107.i, 1
  %idxprom112.i = sext i32 %add111401.i to i64
  %arrayidx113.i = getelementptr inbounds double* %293, i64 %idxprom112.i
  %300 = load double* %arrayidx113.i, align 8, !tbaa !4
  %arrayidx115.i242 = getelementptr inbounds i32* %294, i64 %indvars.iv.i241
  %301 = load i32* %arrayidx115.i242, align 4, !tbaa !3
  %cmp116.i = icmp sgt i32 %301, -1
  %cmp118.i = icmp slt i32 %301, %297
  %or.cond416.i = and i1 %cmp116.i, %cmp118.i
  br i1 %or.cond416.i, label %if.end121.i, label %if.then119.i

if.then119.i:                                     ; preds = %for.body106.i
  %302 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call120.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.1437.i, i32 %kk.4430.i, i32 %ii.1429.i, i32 %301) #5
  call void @exit(i32 -1) #6
  unreachable

if.end121.i:                                      ; preds = %for.body106.i
  %mul122.i243 = shl nsw i32 %301, 1
  %add123402.i = or i32 %mul122.i243, 1
  %idxprom124.i244 = sext i32 %mul122.i243 to i64
  %arrayidx125.i245 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom124.i244
  %303 = load double* %arrayidx125.i245, align 8, !tbaa !4
  %idxprom126.i = sext i32 %add123402.i to i64
  %arrayidx127.i246 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom126.i
  %304 = load double* %arrayidx127.i246, align 8, !tbaa !4
  %add.ptr96.sum403.i = add i64 %idxprom124.i244, %idx.ext95.i235
  %arrayidx129.i247 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum403.i
  %305 = load double* %arrayidx129.i247, align 8, !tbaa !4
  %add.ptr96.sum404.i = add i64 %idxprom126.i, %idx.ext95.i235
  %arrayidx131.i248 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum404.i
  %306 = load double* %arrayidx131.i248, align 8, !tbaa !4
  %mul132.i = fmul double %299, %303
  %mul133.i249 = fmul double %300, %304
  %add134.i = fadd double %mul132.i, %mul133.i249
  %add135.i250 = fadd double %rsum0.1427.i, %add134.i
  %mul136.i = fmul double %299, %304
  %mul137.i = fmul double %300, %303
  %sub138.i251 = fsub double %mul136.i, %mul137.i
  %add139.i = fadd double %isum0.1425.i, %sub138.i251
  %mul140.i252 = fmul double %299, %305
  %mul141.i = fmul double %300, %306
  %add142.i = fadd double %mul140.i252, %mul141.i
  %add143.i = fadd double %rsum1.1428.i, %add142.i
  %mul144.i = fmul double %299, %306
  %mul145.i253 = fmul double %300, %305
  %sub146.i = fsub double %mul144.i, %mul145.i253
  %add147.i254 = fadd double %isum1.1426.i, %sub146.i
  %inc149.i = add nsw i32 %ii.1429.i, 1
  %indvars.iv.next.i255 = add i64 %indvars.iv.i241, 1
  %inc150.i = add nsw i32 %kk.4430.i, 1
  %cmp105.i = icmp slt i32 %inc149.i, %295
  br i1 %cmp105.i, label %for.body106.i, label %for.end151.i

for.end151.i:                                     ; preds = %if.end121.i
  %phitmp534.i = shl i32 %297, 1
  %add153399.i = or i32 %phitmp534.i, 1
  %idxprom154.i = sext i32 %phitmp534.i to i64
  %arrayidx155.i256 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom154.i
  %307 = load double* %arrayidx155.i256, align 8, !tbaa !4
  %sub156.i257 = fsub double %307, %add135.i250
  store double %sub156.i257, double* %arrayidx155.i256, align 8, !tbaa !4
  %idxprom157.i = sext i32 %add153399.i to i64
  %arrayidx158.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom157.i
  %308 = load double* %arrayidx158.i, align 8, !tbaa !4
  %sub159.i = fsub double %308, %add139.i
  store double %sub159.i, double* %arrayidx158.i, align 8, !tbaa !4
  %add.ptr96.sum.i258 = add i64 %idxprom154.i, %idx.ext95.i235
  %arrayidx161.i259 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum.i258
  %309 = load double* %arrayidx161.i259, align 8, !tbaa !4
  %sub162.i = fsub double %309, %add143.i
  store double %sub162.i, double* %arrayidx161.i259, align 8, !tbaa !4
  %add.ptr96.sum400.i = add i64 %idxprom157.i, %idx.ext95.i235
  %arrayidx164.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum400.i
  %310 = load double* %arrayidx164.i, align 8, !tbaa !4
  %sub165.i260 = fsub double %310, %add147.i254
  store double %sub165.i260, double* %arrayidx164.i, align 8, !tbaa !4
  br label %for.inc167.i

for.inc167.i:                                     ; preds = %for.end151.i, %for.body99.i240
  %kk.5.i261 = phi i32 [ %inc150.i, %for.end151.i ], [ %kk.3440.i, %for.body99.i240 ]
  %indvars.iv.next511.i = add i64 %indvars.iv510.i, 1
  %inc168.i = add nsw i32 %irowA.1437.i, 1
  %311 = trunc i64 %indvars.iv.next511.i to i32
  %cmp98.i262 = icmp slt i32 %311, %291
  br i1 %cmp98.i262, label %for.body99.i240, label %sw.epilog

if.else.i263:                                     ; preds = %for.end90.i233
  %sub170.i = add nsw i32 %263, -1
  %cmp171.i = icmp eq i32 %jcolB.0.lcssa.i230, %sub170.i
  br i1 %cmp171.i, label %for.cond173.preheader.i, label %sw.epilog

for.cond173.preheader.i:                          ; preds = %if.else.i263
  %312 = load i32* %nrowA.i193, align 4, !tbaa !3
  %cmp174456.i = icmp sgt i32 %312, 0
  br i1 %cmp174456.i, label %for.body175.lr.ph.i, label %sw.epilog

for.body175.lr.ph.i:                              ; preds = %for.cond173.preheader.i
  %313 = load i32** %sizesA.i196, align 8, !tbaa !0
  %314 = load double** %entriesA.i187, align 8, !tbaa !0
  %315 = load i32** %indicesA.i195, align 8, !tbaa !0
  br label %for.body175.i

for.body175.i:                                    ; preds = %for.inc225.i, %for.body175.lr.ph.i
  %indvars.iv519.i = phi i64 [ 0, %for.body175.lr.ph.i ], [ %indvars.iv.next520.i, %for.inc225.i ]
  %kk.6460.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %kk.8.i273, %for.inc225.i ]
  %irowA.2457.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %inc226.i, %for.inc225.i ]
  %arrayidx177.i264 = getelementptr inbounds i32* %313, i64 %indvars.iv519.i
  %316 = load i32* %arrayidx177.i264, align 4, !tbaa !3
  %cmp178.i = icmp sgt i32 %316, 0
  br i1 %cmp178.i, label %for.body182.lr.ph.i, label %for.inc225.i

for.body182.lr.ph.i:                              ; preds = %for.body175.i
  %317 = sext i32 %kk.6460.i to i64
  %318 = trunc i64 %indvars.iv519.i to i32
  br label %for.body182.i

for.body182.i:                                    ; preds = %if.end197.i, %for.body182.lr.ph.i
  %indvars.iv516.i = phi i64 [ %317, %for.body182.lr.ph.i ], [ %indvars.iv.next517.i, %if.end197.i ]
  %kk.7450.i = phi i32 [ %kk.6460.i, %for.body182.lr.ph.i ], [ %inc214.i, %if.end197.i ]
  %ii.2449.i = phi i32 [ 0, %for.body182.lr.ph.i ], [ %inc213.i, %if.end197.i ]
  %rsum0.2448.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add207.i271, %if.end197.i ]
  %isum0.2447.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add211.i, %if.end197.i ]
  %319 = trunc i64 %indvars.iv516.i to i32
  %mul183.i265 = shl nsw i32 %319, 1
  %idxprom184.i = sext i32 %mul183.i265 to i64
  %arrayidx185.i = getelementptr inbounds double* %314, i64 %idxprom184.i
  %320 = load double* %arrayidx185.i, align 8, !tbaa !4
  %add187397.i = or i32 %mul183.i265, 1
  %idxprom188.i266 = sext i32 %add187397.i to i64
  %arrayidx189.i267 = getelementptr inbounds double* %314, i64 %idxprom188.i266
  %321 = load double* %arrayidx189.i267, align 8, !tbaa !4
  %arrayidx191.i = getelementptr inbounds i32* %315, i64 %indvars.iv516.i
  %322 = load i32* %arrayidx191.i, align 4, !tbaa !3
  %cmp192.i268 = icmp sgt i32 %322, -1
  %cmp194.i = icmp slt i32 %322, %318
  %or.cond417.i = and i1 %cmp192.i268, %cmp194.i
  br i1 %or.cond417.i, label %if.end197.i, label %if.then195.i

if.then195.i:                                     ; preds = %for.body182.i
  %323 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call196.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %323, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.2457.i, i32 %kk.7450.i, i32 %ii.2449.i, i32 %322) #5
  call void @exit(i32 -1) #6
  unreachable

if.end197.i:                                      ; preds = %for.body182.i
  %mul198.i = shl nsw i32 %322, 1
  %add199398.i = or i32 %mul198.i, 1
  %idxprom200.i = sext i32 %mul198.i to i64
  %arrayidx201.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom200.i
  %324 = load double* %arrayidx201.i, align 8, !tbaa !4
  %idxprom202.i = sext i32 %add199398.i to i64
  %arrayidx203.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom202.i
  %325 = load double* %arrayidx203.i, align 8, !tbaa !4
  %mul204.i269 = fmul double %320, %324
  %mul205.i270 = fmul double %321, %325
  %add206.i = fadd double %mul204.i269, %mul205.i270
  %add207.i271 = fadd double %rsum0.2448.i, %add206.i
  %mul208.i = fmul double %320, %325
  %mul209.i272 = fmul double %321, %324
  %sub210.i = fsub double %mul208.i, %mul209.i272
  %add211.i = fadd double %isum0.2447.i, %sub210.i
  %inc213.i = add nsw i32 %ii.2449.i, 1
  %indvars.iv.next517.i = add i64 %indvars.iv516.i, 1
  %inc214.i = add nsw i32 %kk.7450.i, 1
  %cmp181.i = icmp slt i32 %inc213.i, %316
  br i1 %cmp181.i, label %for.body182.i, label %for.end215.i

for.end215.i:                                     ; preds = %if.end197.i
  %phitmp.i = shl i32 %318, 1
  %add217396.i = or i32 %phitmp.i, 1
  %idxprom218.i = sext i32 %phitmp.i to i64
  %arrayidx219.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom218.i
  %326 = load double* %arrayidx219.i, align 8, !tbaa !4
  %sub220.i = fsub double %326, %add207.i271
  store double %sub220.i, double* %arrayidx219.i, align 8, !tbaa !4
  %idxprom221.i = sext i32 %add217396.i to i64
  %arrayidx222.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom221.i
  %327 = load double* %arrayidx222.i, align 8, !tbaa !4
  %sub223.i = fsub double %327, %add211.i
  store double %sub223.i, double* %arrayidx222.i, align 8, !tbaa !4
  br label %for.inc225.i

for.inc225.i:                                     ; preds = %for.end215.i, %for.body175.i
  %kk.8.i273 = phi i32 [ %inc214.i, %for.end215.i ], [ %kk.6460.i, %for.body175.i ]
  %indvars.iv.next520.i = add i64 %indvars.iv519.i, 1
  %inc226.i = add nsw i32 %irowA.2457.i, 1
  %328 = trunc i64 %indvars.iv.next520.i to i32
  %cmp174.i274 = icmp slt i32 %328, %312
  br i1 %cmp174.i274, label %for.body175.i, label %sw.epilog

sw.default:                                       ; preds = %if.end18
  %329 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %8) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %for.inc225.i, %for.inc167.i, %for.inc221.i, %for.inc165.i, %for.cond157.i, %for.cond89.i, %for.cond169.i, %for.cond95.i, %for.cond173.preheader.i, %if.else.i263, %if.then93.i236, %for.cond171.preheader.i, %if.else.i179, %if.then93.i, %if.else.i120, %if.else.i
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
