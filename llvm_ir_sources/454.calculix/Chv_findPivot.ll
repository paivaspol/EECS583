; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [108 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad symflag %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN or CHV_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad symflag %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_findPivot(%struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest) #0 {
entry:
  %maxval.i106 = alloca double, align 8
  %irow.i107 = alloca i32, align 4
  %jcol.i = alloca i32, align 4
  %value.i.i = alloca double, align 8
  %imag.i.i = alloca double, align 8
  %real.i.i = alloca double, align 8
  %maxval.i = alloca double, align 8
  %irow.i = alloca i32, align 4
  %jrow.i = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq %struct._DV* %workDV, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = fcmp olt double %tau, 1.000000e+00
  %or.cond100 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %ndelay, 0
  %or.cond101 = or i1 %or.cond100, %cmp5
  %cmp7 = icmp eq i32* %pirow, null
  %or.cond102 = or i1 %or.cond101, %cmp7
  %cmp9 = icmp eq i32* %pjcol, null
  %or.cond103 = or i1 %or.cond102, %cmp9
  %cmp11 = icmp eq i32* %pntest, null
  %or.cond104 = or i1 %or.cond103, %cmp11
  br i1 %or.cond104, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([108 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest, i32 %1) #6
  call void @exit(i32 -1) #7
  unreachable

if.end19:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  %switch105 = icmp ult i32 %3, 3
  br i1 %switch105, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end19
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([136 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest, i32 %3) #6
  call void @exit(i32 -1) #7
  unreachable

if.end30:                                         ; preds = %if.end19
  switch i32 %3, label %if.else42 [
    i32 0, label %if.then36
    i32 1, label %if.then36
    i32 2, label %if.then40
  ]

if.then36:                                        ; preds = %if.end30, %if.end30
  %5 = bitcast double* %maxval.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = bitcast i32* %irow.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = bitcast i32* %jrow.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #5
  %nD1.i = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %8 = load i32* %nD1.i, align 4, !tbaa !3
  store i32 -1, i32* %pjcol, align 4, !tbaa !3
  store i32 -1, i32* %pirow, align 4, !tbaa !3
  %9 = load i32* %pntest, align 4, !tbaa !3
  %mul.i = shl nsw i32 %8, 1
  call void @DV_setSize(%struct._DV* %workDV, i32 %mul.i) #6
  %call.i = call double* @DV_entries(%struct._DV* %workDV) #6
  call void @DVfill(i32 %8, double* %call.i, double 0.000000e+00) #6
  %idx.ext.i = sext i32 %8 to i64
  %add.ptr.i = getelementptr inbounds double* %call.i, i64 %idx.ext.i
  %10 = bitcast double* %add.ptr.i to i32*
  %cmp.i = icmp sgt i32 %ndelay, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then36
  call void @IVfill(i32 %ndelay, i32* %10, i32 0) #6
  %sub.i = sub nsw i32 %8, %ndelay
  %idx.ext4.i = sext i32 %ndelay to i64
  %add.ptr5.i = getelementptr inbounds i32* %10, i64 %idx.ext4.i
  call void @IVfill(i32 %sub.i, i32* %add.ptr5.i, i32 1) #6
  br label %do.body.preheader.i

if.else.i:                                        ; preds = %if.then36
  call void @IVfill(i32 %8, i32* %10, i32 1) #6
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.else.i, %if.then.i
  call void @Chv_fastBunchParlettPivot(%struct._Chv* %chv, i32* %10, i32 1, i32* %irow.i, i32* %jrow.i) #6
  %11 = load i32* %irow.i, align 4, !tbaa !3
  %cmp6183.i = icmp eq i32 %11, -1
  br i1 %cmp6183.i, label %findPivotSH.exit, label %if.else8.lr.ph.i

if.else8.lr.ph.i:                                 ; preds = %do.body.preheader.i
  %12 = bitcast double* %value.i.i to i8*
  %13 = bitcast double* %imag.i.i to i8*
  %14 = bitcast double* %real.i.i to i8*
  br label %if.else8.i

if.else8.i:                                       ; preds = %do.body.backedge.i, %if.else8.lr.ph.i
  %15 = phi i32 [ %11, %if.else8.lr.ph.i ], [ %45, %do.body.backedge.i ]
  %ncand.0185.i = phi i32 [ 0, %if.else8.lr.ph.i ], [ %ncand.0.be.i, %do.body.backedge.i ]
  %ntest.0184.i = phi i32 [ %9, %if.else8.lr.ph.i ], [ %ntest.3.i, %do.body.backedge.i ]
  %call9.i = call i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %15, double* %maxval.i) #6
  %16 = load double* %maxval.i, align 8, !tbaa !4
  %17 = load i32* %irow.i, align 4, !tbaa !3
  %idxprom.i = sext i32 %17 to i64
  %arrayidx.i = getelementptr inbounds double* %call.i, i64 %idxprom.i
  store double %16, double* %arrayidx.i, align 8, !tbaa !4
  %arrayidx11.i = getelementptr inbounds i32* %10, i64 %idxprom.i
  store i32 0, i32* %arrayidx11.i, align 4, !tbaa !3
  %18 = load i32* %irow.i, align 4, !tbaa !3
  %19 = load i32* %jrow.i, align 4, !tbaa !3
  %cmp12.i = icmp eq i32 %18, %19
  br i1 %cmp12.i, label %if.then21.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.else8.i
  %call14.i = call i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %19, double* %maxval.i) #6
  %20 = load double* %maxval.i, align 8, !tbaa !4
  %21 = load i32* %jrow.i, align 4, !tbaa !3
  %idxprom15.i = sext i32 %21 to i64
  %arrayidx16.i = getelementptr inbounds double* %call.i, i64 %idxprom15.i
  store double %20, double* %arrayidx16.i, align 8, !tbaa !4
  %arrayidx18.i = getelementptr inbounds i32* %10, i64 %idxprom15.i
  store i32 0, i32* %arrayidx18.i, align 4, !tbaa !3
  %.pre.i = load i32* %irow.i, align 4, !tbaa !3
  %.pre205.i = load i32* %jrow.i, align 4, !tbaa !3
  %cmp20.i = icmp eq i32 %.pre.i, %.pre205.i
  br i1 %cmp20.i, label %if.then21.i, label %if.else36.i

if.then21.i:                                      ; preds = %if.end19.i, %if.else8.i
  %22 = phi i32 [ %.pre.i, %if.end19.i ], [ %18, %if.else8.i ]
  call void @llvm.lifetime.start(i64 8, i8* %12) #5
  call void @llvm.lifetime.start(i64 8, i8* %13) #5
  call void @llvm.lifetime.start(i64 8, i8* %14) #5
  %23 = load i32* %type, align 4, !tbaa !3
  switch i32 %23, label %sym1x1.exit.i [
    i32 1, label %if.then.i.i
    i32 2, label %if.then3.i.i
  ]

if.then.i.i:                                      ; preds = %if.then21.i
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %22, i32 %22, double* %value.i.i) #6
  %24 = load double* %value.i.i, align 8, !tbaa !4
  %call.i.i = call double @fabs(double %24) #8
  %mul.i.i = fmul double %call.i.i, %tau
  br label %sym1x1.exit.i

if.then3.i.i:                                     ; preds = %if.then21.i
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %22, i32 %22, double* %real.i.i, double* %imag.i.i) #6
  %25 = load double* %real.i.i, align 8, !tbaa !4
  %26 = load double* %imag.i.i, align 8, !tbaa !4
  %call4.i.i = call double @Zabs(double %25, double %26) #6
  %mul5.i.i = fmul double %call4.i.i, %tau
  br label %sym1x1.exit.i

sym1x1.exit.i:                                    ; preds = %if.then3.i.i, %if.then.i.i, %if.then21.i
  %cutoff.0.i.i = phi double [ %mul.i.i, %if.then.i.i ], [ %mul5.i.i, %if.then3.i.i ], [ undef, %if.then21.i ]
  %idxprom.i.i = sext i32 %22 to i64
  %arrayidx.i.i = getelementptr inbounds double* %call.i, i64 %idxprom.i.i
  %27 = load double* %arrayidx.i.i, align 8, !tbaa !4
  %not.cmp7.i.i = fcmp ole double %27, %cutoff.0.i.i
  %..i.i = zext i1 %not.cmp7.i.i to i32
  call void @llvm.lifetime.end(i64 8, i8* %12) #5
  call void @llvm.lifetime.end(i64 8, i8* %13) #5
  call void @llvm.lifetime.end(i64 8, i8* %14) #5
  %inc.i = add nsw i32 %ntest.0184.i, 1
  br i1 %not.cmp7.i.i, label %if.then24.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sym1x1.exit.i
  %cmp26176.i = icmp sgt i32 %ncand.0185.i, 0
  br i1 %cmp26176.i, label %for.body.i, label %if.end61.i

if.then24.i:                                      ; preds = %sym1x1.exit.i
  %28 = load i32* %irow.i, align 4, !tbaa !3
  store i32 %28, i32* %pirow, align 4, !tbaa !3
  %29 = load i32* %jrow.i, align 4, !tbaa !3
  store i32 %29, i32* %pjcol, align 4, !tbaa !3
  br label %if.end61.i

for.cond.i:                                       ; preds = %for.body.i
  %30 = trunc i64 %indvars.iv.next200.i to i32
  %cmp26.i = icmp slt i32 %30, %ncand.0185.i
  br i1 %cmp26.i, label %for.body.i, label %if.end61.i

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %indvars.iv199.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next200.i, %for.cond.i ]
  %ntest.1177.i = phi i32 [ %inc.i, %for.cond.preheader.i ], [ %inc30.i, %for.cond.i ]
  %add.ptr3.sum155.i = add i64 %indvars.iv199.i, %idx.ext.i
  %arrayidx28.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum155.i
  %31 = load i32* %arrayidx28.i, align 4, !tbaa !3
  %32 = load i32* %irow.i, align 4, !tbaa !3
  %call29.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %32, i32 %31, double %tau, double* %call.i) #6
  %inc30.i = add nsw i32 %ntest.1177.i, 1
  %cmp31.i = icmp eq i32 %call29.i, 2
  %indvars.iv.next200.i = add i64 %indvars.iv199.i, 1
  br i1 %cmp31.i, label %if.then32.i, label %for.cond.i

if.then32.i:                                      ; preds = %for.body.i
  %33 = load i32* %irow.i, align 4, !tbaa !3
  store i32 %33, i32* %pirow, align 4, !tbaa !3
  store i32 %31, i32* %pjcol, align 4, !tbaa !3
  br label %findPivotSH.exit

if.else36.i:                                      ; preds = %if.end19.i
  %call37.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %.pre.i, i32 %.pre205.i, double %tau, double* %call.i) #6
  %inc38.i = add nsw i32 %ntest.0184.i, 1
  %cmp39.i = icmp eq i32 %call37.i, 2
  br i1 %cmp39.i, label %if.then40.i, label %for.cond42.preheader.i

for.cond42.preheader.i:                           ; preds = %if.else36.i
  %cmp43168.i = icmp sgt i32 %ncand.0185.i, 0
  br i1 %cmp43168.i, label %for.body44.i, label %if.end61.i

if.then40.i:                                      ; preds = %if.else36.i
  %34 = load i32* %irow.i, align 4, !tbaa !3
  store i32 %34, i32* %pirow, align 4, !tbaa !3
  %35 = load i32* %jrow.i, align 4, !tbaa !3
  store i32 %35, i32* %pjcol, align 4, !tbaa !3
  br label %findPivotSH.exit

for.cond42.i:                                     ; preds = %if.end51.i
  %36 = trunc i64 %indvars.iv.next.i to i32
  %cmp43.i = icmp slt i32 %36, %ncand.0185.i
  br i1 %cmp43.i, label %for.body44.i, label %if.end61.i

for.body44.i:                                     ; preds = %for.cond42.preheader.i, %for.cond42.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.cond42.i ], [ 0, %for.cond42.preheader.i ]
  %ntest.2169.i = phi i32 [ %inc53.i, %for.cond42.i ], [ %inc38.i, %for.cond42.preheader.i ]
  %add.ptr3.sum154.i = add i64 %indvars.iv.i, %idx.ext.i
  %arrayidx46.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum154.i
  %37 = load i32* %arrayidx46.i, align 4, !tbaa !3
  %38 = load i32* %irow.i, align 4, !tbaa !3
  %call47.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %38, i32 %37, double %tau, double* %call.i) #6
  %cmp49.i = icmp eq i32 %call47.i, 2
  br i1 %cmp49.i, label %if.then50.i, label %if.end51.i

if.then50.i:                                      ; preds = %for.body44.i
  %inc48.i = add nsw i32 %ntest.2169.i, 1
  %39 = load i32* %irow.i, align 4, !tbaa !3
  store i32 %39, i32* %pirow, align 4, !tbaa !3
  store i32 %37, i32* %pjcol, align 4, !tbaa !3
  br label %findPivotSH.exit

if.end51.i:                                       ; preds = %for.body44.i
  %40 = load i32* %jrow.i, align 4, !tbaa !3
  %call52.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %40, i32 %37, double %tau, double* %call.i) #6
  %inc53.i = add nsw i32 %ntest.2169.i, 2
  %cmp54.i = icmp eq i32 %call52.i, 2
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %cmp54.i, label %if.then55.i, label %for.cond42.i

if.then55.i:                                      ; preds = %if.end51.i
  %41 = load i32* %jrow.i, align 4, !tbaa !3
  store i32 %41, i32* %pirow, align 4, !tbaa !3
  store i32 %37, i32* %pjcol, align 4, !tbaa !3
  br label %findPivotSH.exit

if.end61.i:                                       ; preds = %for.cond.i, %for.cond42.i, %for.cond42.preheader.i, %if.then24.i, %for.cond.preheader.i
  %pivotsize.2.i = phi i32 [ %..i.i, %if.then24.i ], [ %call37.i, %for.cond42.preheader.i ], [ %..i.i, %for.cond.preheader.i ], [ %call52.i, %for.cond42.i ], [ %call29.i, %for.cond.i ]
  %ntest.3.i = phi i32 [ %inc.i, %if.then24.i ], [ %inc38.i, %for.cond42.preheader.i ], [ %inc.i, %for.cond.preheader.i ], [ %inc53.i, %for.cond42.i ], [ %inc30.i, %for.cond.i ]
  %cmp62.i = icmp eq i32 %pivotsize.2.i, 0
  br i1 %cmp62.i, label %if.then63.i, label %findPivotSH.exit

if.then63.i:                                      ; preds = %if.end61.i
  %42 = load i32* %irow.i, align 4, !tbaa !3
  %inc64.i = add nsw i32 %ncand.0185.i, 1
  %idxprom65.i = sext i32 %ncand.0185.i to i64
  %add.ptr3.sum.i = add i64 %idxprom65.i, %idx.ext.i
  %arrayidx66.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum.i
  store i32 %42, i32* %arrayidx66.i, align 4, !tbaa !3
  %43 = load i32* %irow.i, align 4, !tbaa !3
  %44 = load i32* %jrow.i, align 4, !tbaa !3
  %cmp67.i = icmp eq i32 %43, %44
  br i1 %cmp67.i, label %do.body.backedge.i, label %if.then68.i

do.body.backedge.i:                               ; preds = %if.then68.i, %if.then63.i
  %ncand.0.be.i = phi i32 [ %inc69.i, %if.then68.i ], [ %inc64.i, %if.then63.i ]
  call void @Chv_fastBunchParlettPivot(%struct._Chv* %chv, i32* %10, i32 1, i32* %irow.i, i32* %jrow.i) #6
  %45 = load i32* %irow.i, align 4, !tbaa !3
  %cmp6.i = icmp eq i32 %45, -1
  br i1 %cmp6.i, label %findPivotSH.exit, label %if.else8.i

if.then68.i:                                      ; preds = %if.then63.i
  %inc69.i = add nsw i32 %ncand.0185.i, 2
  %idxprom70.i = sext i32 %inc64.i to i64
  %add.ptr3.sum153.i = add i64 %idxprom70.i, %idx.ext.i
  %arrayidx71.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum153.i
  store i32 %44, i32* %arrayidx71.i, align 4, !tbaa !3
  br label %do.body.backedge.i

findPivotSH.exit:                                 ; preds = %if.end61.i, %do.body.backedge.i, %do.body.preheader.i, %if.then32.i, %if.then40.i, %if.then50.i, %if.then55.i
  %pivotsize.3.i = phi i32 [ 2, %if.then32.i ], [ 2, %if.then40.i ], [ 2, %if.then50.i ], [ 2, %if.then55.i ], [ 0, %do.body.preheader.i ], [ %pivotsize.2.i, %if.end61.i ], [ 0, %do.body.backedge.i ]
  %ntest.4.i = phi i32 [ %inc30.i, %if.then32.i ], [ %inc38.i, %if.then40.i ], [ %inc48.i, %if.then50.i ], [ %inc53.i, %if.then55.i ], [ %9, %do.body.preheader.i ], [ %ntest.3.i, %if.end61.i ], [ %ntest.3.i, %do.body.backedge.i ]
  store i32 %ntest.4.i, i32* %pntest, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 8, i8* %5) #5
  call void @llvm.lifetime.end(i64 4, i8* %6) #5
  call void @llvm.lifetime.end(i64 4, i8* %7) #5
  br label %if.end46

if.then40:                                        ; preds = %if.end30
  %46 = bitcast double* %maxval.i106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #5
  %47 = bitcast i32* %irow.i107 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #5
  %48 = bitcast i32* %jcol.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #5
  %nD1.i108 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %49 = load i32* %nD1.i108, align 4, !tbaa !3
  store i32 -1, i32* %pjcol, align 4, !tbaa !3
  store i32 -1, i32* %pirow, align 4, !tbaa !3
  %50 = load i32* %pntest, align 4, !tbaa !3
  %mul.i109 = shl nsw i32 %49, 2
  call void @DV_setSize(%struct._DV* %workDV, i32 %mul.i109) #6
  %call.i110 = call double* @DV_entries(%struct._DV* %workDV) #6
  %idx.ext.i111 = sext i32 %49 to i64
  %add.ptr.i112 = getelementptr inbounds double* %call.i110, i64 %idx.ext.i111
  call void @DVfill(i32 %49, double* %call.i110, double 0.000000e+00) #6
  call void @DVfill(i32 %49, double* %add.ptr.i112, double 0.000000e+00) #6
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i111, 1
  %add.ptr3.i = getelementptr inbounds double* %call.i110, i64 %add.ptr.sum.i
  %51 = bitcast double* %add.ptr3.i to i32*
  %add.ptr5.i113 = getelementptr inbounds i32* %51, i64 %idx.ext.i111
  %add.ptr3.sum.i114 = add i64 %add.ptr.sum.i, %idx.ext.i111
  %add.ptr7133.i = getelementptr double* %call.i110, i64 %add.ptr3.sum.i114
  %add.ptr7.i = bitcast double* %add.ptr7133.i to i32*
  %cmp.i115 = icmp sgt i32 %ndelay, 0
  br i1 %cmp.i115, label %if.then.i117, label %if.else.i118

if.then.i117:                                     ; preds = %if.then40
  call void @IVfill(i32 %ndelay, i32* %51, i32 0) #6
  %sub.i116 = sub nsw i32 %49, %ndelay
  %idx.ext10.i = sext i32 %ndelay to i64
  %add.ptr11.i = getelementptr inbounds i32* %51, i64 %idx.ext10.i
  call void @IVfill(i32 %sub.i116, i32* %add.ptr11.i, i32 1) #6
  call void @IVfill(i32 %ndelay, i32* %add.ptr5.i113, i32 0) #6
  %add.ptr5.sum136.i = add i64 %idx.ext.i111, %idx.ext10.i
  %add.ptr14.i = getelementptr inbounds i32* %51, i64 %add.ptr5.sum136.i
  call void @IVfill(i32 %sub.i116, i32* %add.ptr14.i, i32 1) #6
  br label %do.body.i

if.else.i118:                                     ; preds = %if.then40
  call void @IVfill(i32 %49, i32* %51, i32 1) #6
  call void @IVfill(i32 %49, i32* %add.ptr5.i113, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i118, %if.then.i117, %do.cond.i
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %do.cond.i ], [ 0, %if.then.i117 ], [ 0, %if.else.i118 ]
  %ntest.0.i = phi i32 [ %ntest.2.i, %do.cond.i ], [ %50, %if.then.i117 ], [ %50, %if.else.i118 ]
  %call15.i = call double @Chv_quasimax(%struct._Chv* %chv, i32* %51, i32* %add.ptr5.i113, i32 1, i32* %irow.i107, i32* %jcol.i) #6
  %52 = load i32* %irow.i107, align 4, !tbaa !3
  %cmp16.i = icmp eq i32 %52, -1
  br i1 %cmp16.i, label %findPivotN.exit, label %if.else18.i

if.else18.i:                                      ; preds = %do.body.i
  %call19.i = call i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %52, double* %maxval.i106) #6
  %53 = load double* %maxval.i106, align 8, !tbaa !4
  %54 = load i32* %irow.i107, align 4, !tbaa !3
  %idxprom.i119 = sext i32 %54 to i64
  %arrayidx.i120 = getelementptr inbounds double* %call.i110, i64 %idxprom.i119
  store double %53, double* %arrayidx.i120, align 8, !tbaa !4
  %55 = load i32* %jcol.i, align 4, !tbaa !3
  %call20.i = call i32 @Chv_maxabsInColumn(%struct._Chv* %chv, i32 %55, double* %maxval.i106) #6
  %56 = load double* %maxval.i106, align 8, !tbaa !4
  %57 = load i32* %jcol.i, align 4, !tbaa !3
  %idxprom21.i = sext i32 %57 to i64
  %add.ptr.sum134.i = add i64 %idxprom21.i, %idx.ext.i111
  %arrayidx22.i = getelementptr inbounds double* %call.i110, i64 %add.ptr.sum134.i
  store double %56, double* %arrayidx22.i, align 8, !tbaa !4
  %58 = load i32* %irow.i107, align 4, !tbaa !3
  %idxprom23.i = sext i32 %58 to i64
  %arrayidx24.i = getelementptr inbounds i32* %51, i64 %idxprom23.i
  store i32 0, i32* %arrayidx24.i, align 4, !tbaa !3
  %59 = load i32* %jcol.i, align 4, !tbaa !3
  %idxprom25.i = sext i32 %59 to i64
  %add.ptr5.sum.i = add i64 %idxprom25.i, %idx.ext.i111
  %arrayidx26.i = getelementptr inbounds i32* %51, i64 %add.ptr5.sum.i
  store i32 0, i32* %arrayidx26.i, align 4, !tbaa !3
  %60 = load i32* %irow.i107, align 4, !tbaa !3
  %61 = load i32* %jcol.i, align 4, !tbaa !3
  %call27.i = call fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %60, i32 %61, double %tau, double* %call.i110, double* %add.ptr.i112) #6
  %inc.i121 = add nsw i32 %ntest.0.i, 1
  %cmp28.i = icmp eq i32 %call27.i, 1
  br i1 %cmp28.i, label %do.cond.thread.i, label %for.cond.preheader.i122

for.cond.preheader.i122:                          ; preds = %if.else18.i
  %62 = trunc i64 %indvars.iv156.i to i32
  %cmp31144.i = icmp sgt i32 %62, 0
  br i1 %cmp31144.i, label %for.body.i126, label %do.cond.i

do.cond.thread.i:                                 ; preds = %if.else18.i
  %63 = load i32* %irow.i107, align 4, !tbaa !3
  store i32 %63, i32* %pirow, align 4, !tbaa !3
  %64 = load i32* %jcol.i, align 4, !tbaa !3
  store i32 %64, i32* %pjcol, align 4, !tbaa !3
  br label %findPivotN.exit

for.cond.i124:                                    ; preds = %if.end40.i
  %65 = trunc i64 %indvars.iv.next.i128 to i32
  %cmp31.i123 = icmp slt i32 %65, %62
  br i1 %cmp31.i123, label %for.body.i126, label %do.cond.i

for.body.i126:                                    ; preds = %for.cond.preheader.i122, %for.cond.i124
  %indvars.iv.i125 = phi i64 [ %indvars.iv.next.i128, %for.cond.i124 ], [ 0, %for.cond.preheader.i122 ]
  %ntest.1145.i = phi i32 [ %inc42.i, %for.cond.i124 ], [ %inc.i121, %for.cond.preheader.i122 ]
  %arrayidx33.i = getelementptr inbounds i32* %add.ptr7.i, i64 %indvars.iv.i125
  %66 = load i32* %arrayidx33.i, align 4, !tbaa !3
  %add.ptr9.sum135.i = add i64 %indvars.iv.i125, %idx.ext.i111
  %arrayidx35.i = getelementptr inbounds i32* %add.ptr7.i, i64 %add.ptr9.sum135.i
  %67 = load i32* %arrayidx35.i, align 4, !tbaa !3
  %68 = load i32* %irow.i107, align 4, !tbaa !3
  %call36.i = call fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %68, i32 %67, double %tau, double* %call.i110, double* %add.ptr.i112) #6
  %cmp38.i = icmp eq i32 %call36.i, 1
  br i1 %cmp38.i, label %if.then39.i, label %if.end40.i

if.then39.i:                                      ; preds = %for.body.i126
  %inc37.i = add nsw i32 %ntest.1145.i, 1
  %69 = load i32* %irow.i107, align 4, !tbaa !3
  store i32 %69, i32* %pirow, align 4, !tbaa !3
  store i32 %67, i32* %pjcol, align 4, !tbaa !3
  br label %do.cond.i

if.end40.i:                                       ; preds = %for.body.i126
  %70 = load i32* %jcol.i, align 4, !tbaa !3
  %call41.i = call fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %66, i32 %70, double %tau, double* %call.i110, double* %add.ptr.i112) #6
  %inc42.i = add nsw i32 %ntest.1145.i, 2
  %cmp43.i127 = icmp eq i32 %call41.i, 1
  %indvars.iv.next.i128 = add i64 %indvars.iv.i125, 1
  br i1 %cmp43.i127, label %if.then44.i, label %for.cond.i124

if.then44.i:                                      ; preds = %if.end40.i
  store i32 %66, i32* %pirow, align 4, !tbaa !3
  %71 = load i32* %jcol.i, align 4, !tbaa !3
  store i32 %71, i32* %pjcol, align 4, !tbaa !3
  br label %do.cond.i

do.cond.i:                                        ; preds = %for.cond.i124, %for.cond.preheader.i122, %if.then44.i, %if.then39.i
  %pivotsize.1.i = phi i32 [ 1, %if.then39.i ], [ 1, %if.then44.i ], [ %call27.i, %for.cond.preheader.i122 ], [ %call41.i, %for.cond.i124 ]
  %ntest.2.i = phi i32 [ %inc37.i, %if.then39.i ], [ %inc42.i, %if.then44.i ], [ %inc.i121, %for.cond.preheader.i122 ], [ %inc42.i, %for.cond.i124 ]
  %72 = load i32* %irow.i107, align 4, !tbaa !3
  %arrayidx48.i = getelementptr inbounds i32* %add.ptr7.i, i64 %indvars.iv156.i
  store i32 %72, i32* %arrayidx48.i, align 4, !tbaa !3
  %73 = load i32* %jcol.i, align 4, !tbaa !3
  %add.ptr9.sum.i = add i64 %indvars.iv156.i, %idx.ext.i111
  %arrayidx50.i = getelementptr inbounds i32* %add.ptr7.i, i64 %add.ptr9.sum.i
  store i32 %73, i32* %arrayidx50.i, align 4, !tbaa !3
  %indvars.iv.next157.i = add i64 %indvars.iv156.i, 1
  %cmp54.i129 = icmp eq i32 %pivotsize.1.i, 0
  br i1 %cmp54.i129, label %do.body.i, label %findPivotN.exit

findPivotN.exit:                                  ; preds = %do.body.i, %do.cond.i, %do.cond.thread.i
  %pivotsize.3.i130 = phi i32 [ 1, %do.cond.thread.i ], [ 0, %do.body.i ], [ %pivotsize.1.i, %do.cond.i ]
  %ntest.4.i131 = phi i32 [ %inc.i121, %do.cond.thread.i ], [ %ntest.0.i, %do.body.i ], [ %ntest.2.i, %do.cond.i ]
  store i32 %ntest.4.i131, i32* %pntest, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 8, i8* %46) #5
  call void @llvm.lifetime.end(i64 4, i8* %47) #5
  call void @llvm.lifetime.end(i64 4, i8* %48) #5
  br label %if.end46

if.else42:                                        ; preds = %if.end30
  %74 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest, i32 %3) #6
  call void @exit(i32 -1) #7
  unreachable

if.end46:                                         ; preds = %findPivotN.exit, %findPivotSH.exit
  %rc.0 = phi i32 [ %pivotsize.3.i, %findPivotSH.exit ], [ %pivotsize.3.i130, %findPivotN.exit ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare void @DVfill(i32, double*, double) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare double @Chv_quasimax(%struct._Chv*, i32*, i32*, i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32 @Chv_maxabsInRow(%struct._Chv*, i32, double*) #3

; Function Attrs: optsize
declare i32 @Chv_maxabsInColumn(%struct._Chv*, i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %tau, double* nocapture %rowmaxes, double* nocapture %colmaxes) #0 {
entry:
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %0 = load i32* %type, align 4, !tbaa !3
  switch i32 %0, label %if.end5 [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %value) #6
  %1 = load double* %value, align 8, !tbaa !4
  %call = call double @fabs(double %1) #8
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %real, double* %imag) #6
  %2 = load double* %real, align 8, !tbaa !4
  %3 = load double* %imag, align 8, !tbaa !4
  %call4 = call double @Zabs(double %2, double %3) #6
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then3, %if.then
  %magn.0 = phi double [ %call, %if.then ], [ %call4, %if.then3 ], [ undef, %entry ]
  %mul = fmul double %magn.0, %tau
  %idxprom = sext i32 %irow to i64
  %arrayidx = getelementptr inbounds double* %rowmaxes, i64 %idxprom
  %4 = load double* %arrayidx, align 8, !tbaa !4
  %cmp6 = fcmp ugt double %4, %mul
  br i1 %cmp6, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %idxprom7 = sext i32 %jcol to i64
  %arrayidx8 = getelementptr inbounds double* %colmaxes, i64 %idxprom7
  %5 = load double* %arrayidx8, align 8, !tbaa !4
  %cmp9 = fcmp ugt double %5, %mul
  br i1 %cmp9, label %if.else11, label %if.end12

if.else11:                                        ; preds = %land.lhs.true, %if.end5
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.else11
  %rc.0 = phi i32 [ 0, %if.else11 ], [ 1, %land.lhs.true ]
  ret i32 %rc.0
}

; Function Attrs: optsize
declare void @Chv_realEntry(%struct._Chv*, i32, i32, double*) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare void @Chv_complexEntry(%struct._Chv*, i32, i32, double*, double*) #3

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: optsize
declare void @Chv_fastBunchParlettPivot(%struct._Chv*, i32*, i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %tau, double* nocapture %rowmaxes) #0 {
entry:
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %aimag = alloca double, align 8
  %areal = alloca double, align 8
  %bimag = alloca double, align 8
  %breal = alloca double, align 8
  %cimag = alloca double, align 8
  %creal = alloca double, align 8
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %0 = load i32* %type, align 4, !tbaa !3
  switch i32 %0, label %if.end44 [
    i32 1, label %if.then
    i32 2, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %irow, double* %a) #6
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %b) #6
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %jcol, i32 %jcol, double* %c) #6
  %1 = load double* %a, align 8, !tbaa !4
  %call = call double @fabs(double %1) #8
  %2 = load double* %b, align 8, !tbaa !4
  %call1 = call double @fabs(double %2) #8
  %3 = load double* %c, align 8, !tbaa !4
  %call2 = call double @fabs(double %3) #8
  %mul = fmul double %1, %3
  %mul3 = fmul double %2, %2
  %sub = fsub double %mul, %mul3
  %call4 = call double @fabs(double %sub) #8
  br label %if.end41

if.then7:                                         ; preds = %entry
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %irow, double* %areal, double* %aimag) #6
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %breal, double* %bimag) #6
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %jcol, i32 %jcol, double* %creal, double* %cimag) #6
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %4 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %4, label %if.end44 [
    i32 1, label %if.then9
    i32 0, label %if.then22
  ]

if.then9:                                         ; preds = %if.then7
  %5 = load double* %areal, align 8, !tbaa !4
  %call10 = call double @fabs(double %5) #8
  %6 = load double* %breal, align 8, !tbaa !4
  %7 = load double* %bimag, align 8, !tbaa !4
  %call11 = call double @Zabs(double %6, double %7) #6
  %8 = load double* %creal, align 8, !tbaa !4
  %call12 = call double @fabs(double %8) #8
  %9 = load double* %areal, align 8, !tbaa !4
  %mul13 = fmul double %8, %9
  %10 = load double* %breal, align 8, !tbaa !4
  %mul14 = fmul double %10, %10
  %sub15 = fsub double %mul13, %mul14
  %11 = load double* %bimag, align 8, !tbaa !4
  %mul16 = fmul double %11, %11
  %sub17 = fsub double %sub15, %mul16
  %call18 = call double @fabs(double %sub17) #8
  br label %if.end41

if.then22:                                        ; preds = %if.then7
  %12 = load double* %areal, align 8, !tbaa !4
  %13 = load double* %aimag, align 8, !tbaa !4
  %call23 = call double @Zabs(double %12, double %13) #6
  %14 = load double* %breal, align 8, !tbaa !4
  %15 = load double* %bimag, align 8, !tbaa !4
  %call24 = call double @Zabs(double %14, double %15) #6
  %16 = load double* %creal, align 8, !tbaa !4
  %17 = load double* %cimag, align 8, !tbaa !4
  %call25 = call double @Zabs(double %16, double %17) #6
  %18 = load double* %areal, align 8, !tbaa !4
  %19 = load double* %creal, align 8, !tbaa !4
  %mul26 = fmul double %18, %19
  %20 = load double* %aimag, align 8, !tbaa !4
  %21 = load double* %cimag, align 8, !tbaa !4
  %mul27 = fmul double %20, %21
  %sub28 = fsub double %mul26, %mul27
  %22 = load double* %breal, align 8, !tbaa !4
  %mul29 = fmul double %22, %22
  %sub30 = fsub double %sub28, %mul29
  %23 = load double* %bimag, align 8, !tbaa !4
  %mul31 = fmul double %23, %23
  %add = fadd double %sub30, %mul31
  %mul32 = fmul double %18, %21
  %mul33 = fmul double %19, %20
  %add34 = fadd double %mul33, %mul32
  %mul35 = fmul double %22, 2.000000e+00
  %mul36 = fmul double %mul35, %23
  %sub37 = fsub double %add34, %mul36
  %call38 = call double @Zabs(double %add, double %sub37) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then22, %if.then9, %if.then
  %denom.0 = phi double [ %call4, %if.then ], [ %call18, %if.then9 ], [ %call38, %if.then22 ]
  %cmag.0 = phi double [ %call2, %if.then ], [ %call12, %if.then9 ], [ %call25, %if.then22 ]
  %bmag.0 = phi double [ %call1, %if.then ], [ %call11, %if.then9 ], [ %call24, %if.then22 ]
  %amag.0 = phi double [ %call, %if.then ], [ %call10, %if.then9 ], [ %call23, %if.then22 ]
  %cmp42 = fcmp oeq double %denom.0, 0.000000e+00
  br i1 %cmp42, label %return, label %if.end44

if.end44:                                         ; preds = %if.then7, %entry, %if.end41
  %amag.096 = phi double [ %amag.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %bmag.095 = phi double [ %bmag.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %cmag.094 = phi double [ %cmag.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %denom.093 = phi double [ %denom.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %idxprom = sext i32 %irow to i64
  %arrayidx = getelementptr inbounds double* %rowmaxes, i64 %idxprom
  %24 = load double* %arrayidx, align 8, !tbaa !4
  %mul45 = fmul double %cmag.094, %24
  %idxprom46 = sext i32 %jcol to i64
  %arrayidx47 = getelementptr inbounds double* %rowmaxes, i64 %idxprom46
  %25 = load double* %arrayidx47, align 8, !tbaa !4
  %mul48 = fmul double %bmag.095, %25
  %add49 = fadd double %mul45, %mul48
  %div = fdiv double %add49, %denom.093
  %cmp58 = fcmp ugt double %div, %tau
  br i1 %cmp58, label %if.else61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end44
  %mul55 = fmul double %amag.096, %25
  %mul52 = fmul double %bmag.095, %24
  %add56 = fadd double %mul52, %mul55
  %div57 = fdiv double %add56, %denom.093
  %cmp59 = fcmp ugt double %div57, %tau
  br i1 %cmp59, label %if.else61, label %return

if.else61:                                        ; preds = %land.lhs.true, %if.end44
  br label %return

return:                                           ; preds = %if.else61, %land.lhs.true, %if.end41
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 0, %if.else61 ], [ 2, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
