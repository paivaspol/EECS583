; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in Chv_updateH(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_updateH(%p,%p,%p,%p)\0A bad input, chvT is not complex\0A\00", align 1
@.str2 = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_updateH(%p,%p,%p,%p)\0A bad input, mtxD is not complex\0A\00", align 1
@.str3 = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_updateH(%p,%p,%p,%p)\0A bad input, mtxU is not complex\0A\00", align 1
@.str4 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_updateH(%p,%p,%p,%p)\0A mtxU must have dense or sparse columns\0A\00", align 1
@.str5 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Chv_updateS(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Chv_updateT(%p,%p,%p,%p)\0A chvT is real, but mtxD and/or mtxU are not\0A\00", align 1
@.str7 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Chv_updateT(%p,%p,%p,%p)\0A chvT is complex, but mtxD and/or mtxU are not\0A\00", align 1
@.str8 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_updateT(%p,%p,%p,%p)\0A bad input, chvT is not real or complex\0A\00", align 1
@.str9 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Chv_updateT(%p,%p,%p,%p)\0A bad input, mtxU must have dense or sparse columns\0A\00", align 1
@.str10 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_updateN(%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [93 x i8] c"\0A fatal error in Chv_updateN(%p,%p,%p,%p)\0A chvT is real, but mtxD, mtxL and/or mtxU are not\0A\00", align 1
@.str12 = private unnamed_addr constant [96 x i8] c"\0A fatal error in Chv_updateN(%p,%p,%p,%p)\0A chvT is complex, but mtxD, mtxL and/or mtxU are not\0A\00", align 1
@.str13 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_updateN(%p,%p,%p,%p)\0A bad input, chvT is not real or complex\0A\00", align 1
@.str14 = private unnamed_addr constant [135 x i8] c"\0A fatal error in Chv_updateN(%p,%p,%p,%p)\0A bad input, mtxU must have dense or sparse columns\0A and mtxL must have dense or sparse rows\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_updateH(%struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #0 {
entry:
  %ncolT = alloca i32, align 4
  %ncolU = alloca i32, align 4
  %colindT = alloca i32*, align 8
  %colindU = alloca i32*, align 8
  %isum = alloca double, align 8
  %rsum = alloca double, align 8
  %sums = alloca [18 x double], align 16
  %entU = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %nrowU = alloca i32, align 4
  %isum769 = alloca double, align 8
  %rsum770 = alloca double, align 8
  %entU773 = alloca double*, align 8
  %nentU = alloca i32, align 4
  %indU = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chvT, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxD, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._SubMtx* %mtxU, null
  %or.cond1464 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._DV* %tempDV, null
  %or.cond1465 = or i1 %or.cond1464, %cmp5
  br i1 %or.cond1465, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 2
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end9:                                          ; preds = %if.end
  %type10 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0
  %3 = load i32* %type10, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %3, 2
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end9
  %type15 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0
  %5 = load i32* %type15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %5, 2
  br i1 %cmp16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end14
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %if.end14
  call void @Chv_columnIndices(%struct._Chv* %chvT, i32* %ncolT, i32** %colindT) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxU, i32* %ncolU, i32** %colindU) #5
  %7 = load i32** %colindT, align 8, !tbaa !0
  %8 = load i32* %7, align 4, !tbaa !3
  %nD = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 1
  %9 = load i32* %nD, align 4, !tbaa !3
  %sub = add nsw i32 %9, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx20 = getelementptr inbounds i32* %7, i64 %idxprom
  %10 = load i32* %arrayidx20, align 4, !tbaa !3
  %11 = load i32* %ncolU, align 4, !tbaa !3
  %cmp211536 = icmp sgt i32 %11, 0
  br i1 %cmp211536, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %12 = load i32** %colindU, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %13 = trunc i64 %indvars.iv.next1599 to i32
  %cmp21 = icmp slt i32 %13, %11
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv1598 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1599, %for.cond ]
  %jcolU.01537 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx23 = getelementptr inbounds i32* %12, i64 %indvars.iv1598
  %14 = load i32* %arrayidx23, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %8, %14
  %cmp27 = icmp sgt i32 %14, %10
  %or.cond1466 = or i1 %cmp24, %cmp27
  %indvars.iv.next1599 = add i64 %indvars.iv1598, 1
  %inc = add nsw i32 %jcolU.01537, 1
  br i1 %or.cond1466, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body, %if.end19
  %jcolU.0.lcssa = phi i32 [ 0, %if.end19 ], [ %jcolU.01537, %for.body ], [ %inc, %for.cond ]
  %cmp30 = icmp eq i32 %jcolU.0.lcssa, %11
  br i1 %cmp30, label %return, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.end
  %cmp341531 = icmp slt i32 %jcolU.0.lcssa, %11
  br i1 %cmp341531, label %for.body35.lr.ph, label %for.end57

for.body35.lr.ph:                                 ; preds = %for.cond33.preheader
  %15 = load i32** %colindU, align 8, !tbaa !0
  %16 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body35

for.cond33:                                       ; preds = %for.body35
  %inc42 = add nsw i32 %jcolU.11533, 1
  %17 = trunc i64 %indvars.iv.next1595 to i32
  %cmp34 = icmp slt i32 %17, %11
  %18 = trunc i64 %indvars.iv1594 to i32
  br i1 %cmp34, label %for.body35, label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %for.cond33, %for.body35
  %lastInU.0.lcssa = phi i32 [ %lastInU.01532, %for.body35 ], [ %jcolU.11533, %for.cond33 ]
  br i1 %cmp341531, label %while.cond.preheader.lr.ph, label %for.end57

while.cond.preheader.lr.ph:                       ; preds = %for.cond44.preheader
  %19 = load i32** %colindU, align 8, !tbaa !0
  %20 = sext i32 %jcolU.0.lcssa to i64
  br label %while.cond.preheader

for.body35:                                       ; preds = %for.body35.lr.ph, %for.cond33
  %indvars.iv1594 = phi i64 [ %16, %for.body35.lr.ph ], [ %indvars.iv.next1595, %for.cond33 ]
  %jcolU.11533 = phi i32 [ %jcolU.0.lcssa, %for.body35.lr.ph ], [ %inc42, %for.cond33 ]
  %lastInU.01532 = phi i32 [ %jcolU.0.lcssa, %for.body35.lr.ph ], [ %18, %for.cond33 ]
  %arrayidx37 = getelementptr inbounds i32* %15, i64 %indvars.iv1594
  %21 = load i32* %arrayidx37, align 4, !tbaa !3
  %cmp38 = icmp sgt i32 %21, %10
  %indvars.iv.next1595 = add i64 %indvars.iv1594, 1
  br i1 %cmp38, label %for.cond44.preheader, label %for.cond33

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv1590 = phi i64 [ %20, %while.cond.preheader.lr.ph ], [ %indvars.iv.next1591, %while.end ]
  %jcolT.01530 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jcolT.1, %while.end ]
  %arrayidx48 = getelementptr inbounds i32* %19, i64 %indvars.iv1590
  %22 = load i32* %arrayidx48, align 4, !tbaa !3
  %23 = sext i32 %jcolT.01530 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %indvars.iv1588 = phi i64 [ %indvars.iv.next1589, %while.cond ], [ %23, %while.cond.preheader ]
  %jcolT.1 = phi i32 [ %inc52, %while.cond ], [ %jcolT.01530, %while.cond.preheader ]
  %arrayidx50 = getelementptr inbounds i32* %7, i64 %indvars.iv1588
  %24 = load i32* %arrayidx50, align 4, !tbaa !3
  %cmp51 = icmp eq i32 %22, %24
  %indvars.iv.next1589 = add i64 %indvars.iv1588, 1
  %inc52 = add nsw i32 %jcolT.1, 1
  br i1 %cmp51, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %jcolT.1, i32* %arrayidx48, align 4, !tbaa !3
  %indvars.iv.next1591 = add i64 %indvars.iv1590, 1
  %25 = load i32* %ncolU, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv.next1591 to i32
  %cmp45 = icmp slt i32 %26, %25
  br i1 %cmp45, label %while.cond.preheader, label %for.end57

for.end57:                                        ; preds = %for.cond33.preheader, %while.end, %for.cond44.preheader
  %lastInU.0.lcssa1601 = phi i32 [ %lastInU.0.lcssa, %for.cond44.preheader ], [ %lastInU.0.lcssa, %while.end ], [ %jcolU.0.lcssa, %for.cond33.preheader ]
  %mode = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1
  %27 = load i32* %mode, align 4, !tbaa !3
  switch i32 %27, label %if.else887 [
    i32 1, label %if.then59
    i32 3, label %if.then768
  ]

if.then59:                                        ; preds = %for.end57
  %28 = bitcast [18 x double]* %sums to i8*
  call void @llvm.lifetime.start(i64 144, i8* %28) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU, i32* %ncolU, i32* %inc1, i32* %inc2, double** %entU) #5
  %29 = load i32* %nrowU, align 4, !tbaa !3
  %mul = mul nsw i32 %29, 6
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul) #5
  %call60 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %30 = load i32* %nrowU, align 4, !tbaa !3
  %mul61 = shl nsw i32 %30, 1
  %idx.ext = sext i32 %mul61 to i64
  %add.ptr = getelementptr inbounds double* %call60, i64 %idx.ext
  %add.ptr.sum = shl nsw i64 %idx.ext, 1
  %add.ptr64 = getelementptr inbounds double* %call60, i64 %add.ptr.sum
  %31 = load double** %entU, align 8, !tbaa !0
  %mul65 = shl i32 %jcolU.0.lcssa, 1
  %mul66 = mul nsw i32 %mul65, %30
  %idx.ext67 = sext i32 %mul66 to i64
  %add.ptr68 = getelementptr inbounds double* %31, i64 %idx.ext67
  %sub70 = add nsw i32 %lastInU.0.lcssa1601, -2
  %cmp711506 = icmp sgt i32 %jcolU.0.lcssa, %sub70
  br i1 %cmp711506, label %for.end395, label %for.body72.lr.ph

for.body72.lr.ph:                                 ; preds = %if.then59
  %arraydecay291 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  %arrayidx303 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %arrayidx308 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2
  %arrayidx312 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3
  %arrayidx317 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4
  %arrayidx321 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5
  %arrayidx326 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 6
  %arrayidx330 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 7
  %arrayidx335 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 8
  %arrayidx339 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 9
  %arrayidx344 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 10
  %arrayidx348 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 11
  %arrayidx252 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 12
  %arrayidx256 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 13
  %arrayidx261 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 14
  %arrayidx265 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 15
  %arrayidx270 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 16
  %arrayidx274 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 17
  %32 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body72

for.body72:                                       ; preds = %if.end389, %for.body72.lr.ph
  %33 = phi i32 [ %30, %for.body72.lr.ph ], [ %162, %if.end389 ]
  %indvars.iv1568 = phi i64 [ %32, %for.body72.lr.ph ], [ %indvars.iv.next1569, %if.end389 ]
  %indvars.iv1561.in = phi i64 [ %32, %for.body72.lr.ph ], [ %indvars.iv1561, %if.end389 ]
  %rowUT0.01508 = phi double* [ %add.ptr68, %for.body72.lr.ph ], [ %add.ptr392, %if.end389 ]
  %irowUT.01507 = phi i32 [ %jcolU.0.lcssa, %for.body72.lr.ph ], [ %add176, %if.end389 ]
  %indvars.iv1561 = add i64 %indvars.iv1561.in, 3
  %mul73 = shl nsw i32 %33, 1
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds double* %rowUT0.01508, i64 %idx.ext74
  %add.ptr75.sum = shl nsw i64 %idx.ext74, 1
  %add.ptr78 = getelementptr inbounds double* %rowUT0.01508, i64 %add.ptr75.sum
  %34 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i32* %34, i64 %indvars.iv1568
  %35 = load i32* %arrayidx80, align 4, !tbaa !3
  %call81 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %35) #5
  %mul82 = shl nsw i32 %35, 1
  %idx.ext83 = sext i32 %mul82 to i64
  %36 = add nsw i64 %indvars.iv1568, 1
  %37 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32* %37, i64 %36
  %38 = load i32* %arrayidx86, align 4, !tbaa !3
  %call87 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %38) #5
  %mul88 = shl nsw i32 %38, 1
  %idx.ext89 = sext i32 %mul88 to i64
  %39 = add nsw i64 %indvars.iv1568, 2
  %40 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i32* %40, i64 %39
  %41 = load i32* %arrayidx94, align 4, !tbaa !3
  %call95 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %41) #5
  %mul96 = shl nsw i32 %41, 1
  %idx.ext97 = sext i32 %mul96 to i64
  %42 = load i32* %nrowU, align 4, !tbaa !3
  %mul100 = mul nsw i32 %42, 6
  call void @DVzero(i32 %mul100, double* %call60) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call60, double* %add.ptr, double* %add.ptr64, double* %rowUT0.01508, double* %add.ptr75, double* %add.ptr78) #5
  %43 = load i32* %nrowU, align 4, !tbaa !3
  %cmp1021494 = icmp sgt i32 %43, 0
  br i1 %cmp1021494, label %for.body103, label %for.end133

for.body103:                                      ; preds = %for.body72, %for.body103
  %indvars.iv1557 = phi i64 [ %indvars.iv.next1558, %for.body103 ], [ 0, %for.body72 ]
  %44 = trunc i64 %indvars.iv1557 to i32
  %mul104 = shl nsw i32 %44, 1
  %add1051462 = or i32 %mul104, 1
  %idxprom106 = sext i32 %add1051462 to i64
  %arrayidx107 = getelementptr inbounds double* %call60, i64 %idxprom106
  %45 = load double* %arrayidx107, align 8, !tbaa !4
  %sub108 = fsub double -0.000000e+00, %45
  store double %sub108, double* %arrayidx107, align 8, !tbaa !4
  %add.ptr.sum1463 = add i64 %idxprom106, %idx.ext
  %arrayidx116 = getelementptr inbounds double* %call60, i64 %add.ptr.sum1463
  %46 = load double* %arrayidx116, align 8, !tbaa !4
  %sub117 = fsub double -0.000000e+00, %46
  store double %sub117, double* %arrayidx116, align 8, !tbaa !4
  %add.ptr64.sum = add i64 %idxprom106, %add.ptr.sum
  %arrayidx125 = getelementptr inbounds double* %call60, i64 %add.ptr64.sum
  %47 = load double* %arrayidx125, align 8, !tbaa !4
  %sub126 = fsub double -0.000000e+00, %47
  store double %sub126, double* %arrayidx125, align 8, !tbaa !4
  %indvars.iv.next1558 = add i64 %indvars.iv1557, 1
  %48 = trunc i64 %indvars.iv.next1558 to i32
  %cmp102 = icmp slt i32 %48, %43
  br i1 %cmp102, label %for.body103, label %for.end133

for.end133:                                       ; preds = %for.body103, %for.body72
  call void @ZVdotU(i32 %43, double* %call60, double* %rowUT0.01508, double* %rsum, double* %isum) #5
  %49 = load double* %rsum, align 8, !tbaa !4
  %50 = load double* %call81, align 8, !tbaa !4
  %sub137 = fsub double %50, %49
  store double %sub137, double* %call81, align 8, !tbaa !4
  %51 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %51, double* %call60, double* %add.ptr75, double* %rsum, double* %isum) #5
  %52 = load double* %rsum, align 8, !tbaa !4
  %add.ptr84.sum = sub i64 %idx.ext89, %idx.ext83
  %arrayidx140 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum
  %53 = load double* %arrayidx140, align 8, !tbaa !4
  %sub141 = fsub double %53, %52
  store double %sub141, double* %arrayidx140, align 8, !tbaa !4
  %54 = load double* %isum, align 8, !tbaa !4
  %add1431414 = or i32 %mul88, 1
  %idxprom144 = sext i32 %add1431414 to i64
  %add.ptr84.sum1415 = sub i64 %idxprom144, %idx.ext83
  %arrayidx145 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1415
  %55 = load double* %arrayidx145, align 8, !tbaa !4
  %sub146 = fsub double %55, %54
  store double %sub146, double* %arrayidx145, align 8, !tbaa !4
  %56 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %56, double* %call60, double* %add.ptr78, double* %rsum, double* %isum) #5
  %57 = load double* %rsum, align 8, !tbaa !4
  %add.ptr84.sum1416 = sub i64 %idx.ext97, %idx.ext83
  %arrayidx149 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1416
  %58 = load double* %arrayidx149, align 8, !tbaa !4
  %sub150 = fsub double %58, %57
  store double %sub150, double* %arrayidx149, align 8, !tbaa !4
  %59 = load double* %isum, align 8, !tbaa !4
  %add1521417 = or i32 %mul96, 1
  %idxprom153 = sext i32 %add1521417 to i64
  %add.ptr84.sum1418 = sub i64 %idxprom153, %idx.ext83
  %arrayidx154 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1418
  %60 = load double* %arrayidx154, align 8, !tbaa !4
  %sub155 = fsub double %60, %59
  store double %sub155, double* %arrayidx154, align 8, !tbaa !4
  %61 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %61, double* %add.ptr, double* %add.ptr75, double* %rsum, double* %isum) #5
  %62 = load double* %rsum, align 8, !tbaa !4
  %63 = load double* %call87, align 8, !tbaa !4
  %sub159 = fsub double %63, %62
  store double %sub159, double* %call87, align 8, !tbaa !4
  %64 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %64, double* %add.ptr, double* %add.ptr78, double* %rsum, double* %isum) #5
  %65 = load double* %rsum, align 8, !tbaa !4
  %add.ptr91.sum = sub i64 %idx.ext97, %idx.ext89
  %arrayidx162 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum
  %66 = load double* %arrayidx162, align 8, !tbaa !4
  %sub163 = fsub double %66, %65
  store double %sub163, double* %arrayidx162, align 8, !tbaa !4
  %67 = load double* %isum, align 8, !tbaa !4
  %add.ptr91.sum1419 = sub i64 %idxprom153, %idx.ext89
  %arrayidx167 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1419
  %68 = load double* %arrayidx167, align 8, !tbaa !4
  %sub168 = fsub double %68, %67
  store double %sub168, double* %arrayidx167, align 8, !tbaa !4
  %69 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %69, double* %add.ptr64, double* %add.ptr78, double* %rsum, double* %isum) #5
  %70 = load double* %rsum, align 8, !tbaa !4
  %71 = load double* %call95, align 8, !tbaa !4
  %sub172 = fsub double %71, %70
  store double %sub172, double* %call95, align 8, !tbaa !4
  %72 = load i32* %nrowU, align 4, !tbaa !3
  %mul173 = shl nsw i32 %72, 1
  %idx.ext174 = sext i32 %mul173 to i64
  %add.ptr78.sum = add i64 %idx.ext174, %add.ptr75.sum
  %add.ptr175 = getelementptr inbounds double* %rowUT0.01508, i64 %add.ptr78.sum
  %indvars.iv.next1569 = add i64 %indvars.iv1568, 3
  %add176 = add nsw i32 %irowUT.01507, 3
  %73 = load i32* %ncolU, align 4, !tbaa !3
  %sub1781498 = add nsw i32 %73, -2
  %74 = trunc i64 %indvars.iv.next1569 to i32
  %cmp1791499 = icmp slt i32 %74, %sub1781498
  br i1 %cmp1791499, label %for.body180, label %for.end284

for.body180:                                      ; preds = %for.end133, %for.body180
  %75 = phi i32 [ %118, %for.body180 ], [ %72, %for.end133 ]
  %indvars.iv1563 = phi i64 [ %indvars.iv.next1564, %for.body180 ], [ %indvars.iv1561, %for.end133 ]
  %jcolU.31501 = phi i32 [ %add283, %for.body180 ], [ %add176, %for.end133 ]
  %colU0.01500 = phi double* [ %add.ptr281, %for.body180 ], [ %add.ptr175, %for.end133 ]
  %mul181 = shl nsw i32 %75, 1
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds double* %colU0.01500, i64 %idx.ext182
  %add.ptr183.sum = shl nsw i64 %idx.ext182, 1
  %add.ptr186 = getelementptr inbounds double* %colU0.01500, i64 %add.ptr183.sum
  call void @ZVdotU33(i32 %75, double* %call60, double* %add.ptr, double* %add.ptr64, double* %colU0.01500, double* %add.ptr183, double* %add.ptr186, double* %arraydecay291) #5
  %76 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds i32* %76, i64 %indvars.iv1563
  %77 = load i32* %arrayidx188, align 4, !tbaa !3
  %mul189 = shl nsw i32 %77, 1
  %78 = add nsw i64 %indvars.iv1563, 1
  %arrayidx192 = getelementptr inbounds i32* %76, i64 %78
  %79 = load i32* %arrayidx192, align 4, !tbaa !3
  %mul193 = shl nsw i32 %79, 1
  %80 = add nsw i64 %indvars.iv1563, 2
  %arrayidx196 = getelementptr inbounds i32* %76, i64 %80
  %81 = load i32* %arrayidx196, align 4, !tbaa !3
  %mul197 = shl nsw i32 %81, 1
  %82 = load double* %arraydecay291, align 16, !tbaa !4
  %idxprom199 = sext i32 %mul189 to i64
  %add.ptr84.sum1441 = sub i64 %idxprom199, %idx.ext83
  %arrayidx200 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1441
  %83 = load double* %arrayidx200, align 8, !tbaa !4
  %sub201 = fsub double %83, %82
  store double %sub201, double* %arrayidx200, align 8, !tbaa !4
  %84 = load double* %arrayidx303, align 8, !tbaa !4
  %add2031442 = or i32 %mul189, 1
  %idxprom204 = sext i32 %add2031442 to i64
  %add.ptr84.sum1443 = sub i64 %idxprom204, %idx.ext83
  %arrayidx205 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1443
  %85 = load double* %arrayidx205, align 8, !tbaa !4
  %sub206 = fsub double %85, %84
  store double %sub206, double* %arrayidx205, align 8, !tbaa !4
  %86 = load double* %arrayidx308, align 16, !tbaa !4
  %idxprom208 = sext i32 %mul193 to i64
  %add.ptr84.sum1444 = sub i64 %idxprom208, %idx.ext83
  %arrayidx209 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1444
  %87 = load double* %arrayidx209, align 8, !tbaa !4
  %sub210 = fsub double %87, %86
  store double %sub210, double* %arrayidx209, align 8, !tbaa !4
  %88 = load double* %arrayidx312, align 8, !tbaa !4
  %add2121445 = or i32 %mul193, 1
  %idxprom213 = sext i32 %add2121445 to i64
  %add.ptr84.sum1446 = sub i64 %idxprom213, %idx.ext83
  %arrayidx214 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1446
  %89 = load double* %arrayidx214, align 8, !tbaa !4
  %sub215 = fsub double %89, %88
  store double %sub215, double* %arrayidx214, align 8, !tbaa !4
  %90 = load double* %arrayidx317, align 16, !tbaa !4
  %idxprom217 = sext i32 %mul197 to i64
  %add.ptr84.sum1447 = sub i64 %idxprom217, %idx.ext83
  %arrayidx218 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1447
  %91 = load double* %arrayidx218, align 8, !tbaa !4
  %sub219 = fsub double %91, %90
  store double %sub219, double* %arrayidx218, align 8, !tbaa !4
  %92 = load double* %arrayidx321, align 8, !tbaa !4
  %add2211448 = or i32 %mul197, 1
  %idxprom222 = sext i32 %add2211448 to i64
  %add.ptr84.sum1449 = sub i64 %idxprom222, %idx.ext83
  %arrayidx223 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1449
  %93 = load double* %arrayidx223, align 8, !tbaa !4
  %sub224 = fsub double %93, %92
  store double %sub224, double* %arrayidx223, align 8, !tbaa !4
  %94 = load double* %arrayidx326, align 16, !tbaa !4
  %add.ptr91.sum1450 = sub i64 %idxprom199, %idx.ext89
  %arrayidx227 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1450
  %95 = load double* %arrayidx227, align 8, !tbaa !4
  %sub228 = fsub double %95, %94
  store double %sub228, double* %arrayidx227, align 8, !tbaa !4
  %96 = load double* %arrayidx330, align 8, !tbaa !4
  %add.ptr91.sum1451 = sub i64 %idxprom204, %idx.ext89
  %arrayidx232 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1451
  %97 = load double* %arrayidx232, align 8, !tbaa !4
  %sub233 = fsub double %97, %96
  store double %sub233, double* %arrayidx232, align 8, !tbaa !4
  %98 = load double* %arrayidx335, align 16, !tbaa !4
  %add.ptr91.sum1452 = sub i64 %idxprom208, %idx.ext89
  %arrayidx236 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1452
  %99 = load double* %arrayidx236, align 8, !tbaa !4
  %sub237 = fsub double %99, %98
  store double %sub237, double* %arrayidx236, align 8, !tbaa !4
  %100 = load double* %arrayidx339, align 8, !tbaa !4
  %add.ptr91.sum1453 = sub i64 %idxprom213, %idx.ext89
  %arrayidx241 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1453
  %101 = load double* %arrayidx241, align 8, !tbaa !4
  %sub242 = fsub double %101, %100
  store double %sub242, double* %arrayidx241, align 8, !tbaa !4
  %102 = load double* %arrayidx344, align 16, !tbaa !4
  %add.ptr91.sum1454 = sub i64 %idxprom217, %idx.ext89
  %arrayidx245 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1454
  %103 = load double* %arrayidx245, align 8, !tbaa !4
  %sub246 = fsub double %103, %102
  store double %sub246, double* %arrayidx245, align 8, !tbaa !4
  %104 = load double* %arrayidx348, align 8, !tbaa !4
  %add.ptr91.sum1455 = sub i64 %idxprom222, %idx.ext89
  %arrayidx250 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1455
  %105 = load double* %arrayidx250, align 8, !tbaa !4
  %sub251 = fsub double %105, %104
  store double %sub251, double* %arrayidx250, align 8, !tbaa !4
  %106 = load double* %arrayidx252, align 16, !tbaa !4
  %add.ptr99.sum1456 = sub i64 %idxprom199, %idx.ext97
  %arrayidx254 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1456
  %107 = load double* %arrayidx254, align 8, !tbaa !4
  %sub255 = fsub double %107, %106
  store double %sub255, double* %arrayidx254, align 8, !tbaa !4
  %108 = load double* %arrayidx256, align 8, !tbaa !4
  %add.ptr99.sum1457 = sub i64 %idxprom204, %idx.ext97
  %arrayidx259 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1457
  %109 = load double* %arrayidx259, align 8, !tbaa !4
  %sub260 = fsub double %109, %108
  store double %sub260, double* %arrayidx259, align 8, !tbaa !4
  %110 = load double* %arrayidx261, align 16, !tbaa !4
  %add.ptr99.sum1458 = sub i64 %idxprom208, %idx.ext97
  %arrayidx263 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1458
  %111 = load double* %arrayidx263, align 8, !tbaa !4
  %sub264 = fsub double %111, %110
  store double %sub264, double* %arrayidx263, align 8, !tbaa !4
  %112 = load double* %arrayidx265, align 8, !tbaa !4
  %add.ptr99.sum1459 = sub i64 %idxprom213, %idx.ext97
  %arrayidx268 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1459
  %113 = load double* %arrayidx268, align 8, !tbaa !4
  %sub269 = fsub double %113, %112
  store double %sub269, double* %arrayidx268, align 8, !tbaa !4
  %114 = load double* %arrayidx270, align 16, !tbaa !4
  %add.ptr99.sum1460 = sub i64 %idxprom217, %idx.ext97
  %arrayidx272 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1460
  %115 = load double* %arrayidx272, align 8, !tbaa !4
  %sub273 = fsub double %115, %114
  store double %sub273, double* %arrayidx272, align 8, !tbaa !4
  %116 = load double* %arrayidx274, align 8, !tbaa !4
  %add.ptr99.sum1461 = sub i64 %idxprom222, %idx.ext97
  %arrayidx277 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1461
  %117 = load double* %arrayidx277, align 8, !tbaa !4
  %sub278 = fsub double %117, %116
  store double %sub278, double* %arrayidx277, align 8, !tbaa !4
  %118 = load i32* %nrowU, align 4, !tbaa !3
  %mul279 = shl nsw i32 %118, 1
  %idx.ext280 = sext i32 %mul279 to i64
  %add.ptr186.sum = add i64 %idx.ext280, %add.ptr183.sum
  %add.ptr281 = getelementptr inbounds double* %colU0.01500, i64 %add.ptr186.sum
  %add283 = add nsw i32 %jcolU.31501, 3
  %119 = load i32* %ncolU, align 4, !tbaa !3
  %sub178 = add nsw i32 %119, -2
  %cmp179 = icmp slt i32 %add283, %sub178
  %indvars.iv.next1564 = add i64 %indvars.iv1563, 3
  br i1 %cmp179, label %for.body180, label %for.end284

for.end284:                                       ; preds = %for.body180, %for.end133
  %120 = phi i32 [ %72, %for.end133 ], [ %118, %for.body180 ]
  %sub178.lcssa = phi i32 [ %sub1781498, %for.end133 ], [ %sub178, %for.body180 ]
  %.lcssa1497 = phi i32 [ %73, %for.end133 ], [ %119, %for.body180 ]
  %jcolU.3.lcssa = phi i32 [ %74, %for.end133 ], [ %add283, %for.body180 ]
  %colU0.0.lcssa = phi double* [ %add.ptr175, %for.end133 ], [ %add.ptr281, %for.body180 ]
  %cmp286 = icmp eq i32 %jcolU.3.lcssa, %sub178.lcssa
  br i1 %cmp286, label %if.then287, label %if.else353

if.then287:                                       ; preds = %for.end284
  %mul288 = shl nsw i32 %120, 1
  %idx.ext289 = sext i32 %mul288 to i64
  %add.ptr290 = getelementptr inbounds double* %colU0.0.lcssa, i64 %idx.ext289
  call void @ZVdotU32(i32 %120, double* %call60, double* %add.ptr, double* %add.ptr64, double* %colU0.0.lcssa, double* %add.ptr290, double* %arraydecay291) #5
  %idxprom292 = sext i32 %sub178.lcssa to i64
  %121 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx293 = getelementptr inbounds i32* %121, i64 %idxprom292
  %122 = load i32* %arrayidx293, align 4, !tbaa !3
  %mul294 = shl nsw i32 %122, 1
  %add295 = add nsw i32 %sub178.lcssa, 1
  %idxprom296 = sext i32 %add295 to i64
  %arrayidx297 = getelementptr inbounds i32* %121, i64 %idxprom296
  %123 = load i32* %arrayidx297, align 4, !tbaa !3
  %mul298 = shl nsw i32 %123, 1
  %124 = load double* %arraydecay291, align 16, !tbaa !4
  %idxprom300 = sext i32 %mul294 to i64
  %add.ptr84.sum1427 = sub i64 %idxprom300, %idx.ext83
  %arrayidx301 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1427
  %125 = load double* %arrayidx301, align 8, !tbaa !4
  %sub302 = fsub double %125, %124
  store double %sub302, double* %arrayidx301, align 8, !tbaa !4
  %126 = load double* %arrayidx303, align 8, !tbaa !4
  %add3041428 = or i32 %mul294, 1
  %idxprom305 = sext i32 %add3041428 to i64
  %add.ptr84.sum1429 = sub i64 %idxprom305, %idx.ext83
  %arrayidx306 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1429
  %127 = load double* %arrayidx306, align 8, !tbaa !4
  %sub307 = fsub double %127, %126
  store double %sub307, double* %arrayidx306, align 8, !tbaa !4
  %128 = load double* %arrayidx308, align 16, !tbaa !4
  %idxprom309 = sext i32 %mul298 to i64
  %add.ptr84.sum1430 = sub i64 %idxprom309, %idx.ext83
  %arrayidx310 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1430
  %129 = load double* %arrayidx310, align 8, !tbaa !4
  %sub311 = fsub double %129, %128
  store double %sub311, double* %arrayidx310, align 8, !tbaa !4
  %130 = load double* %arrayidx312, align 8, !tbaa !4
  %add3131431 = or i32 %mul298, 1
  %idxprom314 = sext i32 %add3131431 to i64
  %add.ptr84.sum1432 = sub i64 %idxprom314, %idx.ext83
  %arrayidx315 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1432
  %131 = load double* %arrayidx315, align 8, !tbaa !4
  %sub316 = fsub double %131, %130
  store double %sub316, double* %arrayidx315, align 8, !tbaa !4
  %132 = load double* %arrayidx317, align 16, !tbaa !4
  %add.ptr91.sum1433 = sub i64 %idxprom300, %idx.ext89
  %arrayidx319 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1433
  %133 = load double* %arrayidx319, align 8, !tbaa !4
  %sub320 = fsub double %133, %132
  store double %sub320, double* %arrayidx319, align 8, !tbaa !4
  %134 = load double* %arrayidx321, align 8, !tbaa !4
  %add.ptr91.sum1434 = sub i64 %idxprom305, %idx.ext89
  %arrayidx324 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1434
  %135 = load double* %arrayidx324, align 8, !tbaa !4
  %sub325 = fsub double %135, %134
  store double %sub325, double* %arrayidx324, align 8, !tbaa !4
  %136 = load double* %arrayidx326, align 16, !tbaa !4
  %add.ptr91.sum1435 = sub i64 %idxprom309, %idx.ext89
  %arrayidx328 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1435
  %137 = load double* %arrayidx328, align 8, !tbaa !4
  %sub329 = fsub double %137, %136
  store double %sub329, double* %arrayidx328, align 8, !tbaa !4
  %138 = load double* %arrayidx330, align 8, !tbaa !4
  %add.ptr91.sum1436 = sub i64 %idxprom314, %idx.ext89
  %arrayidx333 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1436
  %139 = load double* %arrayidx333, align 8, !tbaa !4
  %sub334 = fsub double %139, %138
  store double %sub334, double* %arrayidx333, align 8, !tbaa !4
  %140 = load double* %arrayidx335, align 16, !tbaa !4
  %add.ptr99.sum1437 = sub i64 %idxprom300, %idx.ext97
  %arrayidx337 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1437
  %141 = load double* %arrayidx337, align 8, !tbaa !4
  %sub338 = fsub double %141, %140
  store double %sub338, double* %arrayidx337, align 8, !tbaa !4
  %142 = load double* %arrayidx339, align 8, !tbaa !4
  %add.ptr99.sum1438 = sub i64 %idxprom305, %idx.ext97
  %arrayidx342 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1438
  %143 = load double* %arrayidx342, align 8, !tbaa !4
  %sub343 = fsub double %143, %142
  store double %sub343, double* %arrayidx342, align 8, !tbaa !4
  %144 = load double* %arrayidx344, align 16, !tbaa !4
  %add.ptr99.sum1439 = sub i64 %idxprom309, %idx.ext97
  %arrayidx346 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1439
  %145 = load double* %arrayidx346, align 8, !tbaa !4
  %sub347 = fsub double %145, %144
  store double %sub347, double* %arrayidx346, align 8, !tbaa !4
  %146 = load double* %arrayidx348, align 8, !tbaa !4
  %add.ptr99.sum1440 = sub i64 %idxprom314, %idx.ext97
  %arrayidx351 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1440
  %147 = load double* %arrayidx351, align 8, !tbaa !4
  %sub352 = fsub double %147, %146
  store double %sub352, double* %arrayidx351, align 8, !tbaa !4
  br label %if.end389

if.else353:                                       ; preds = %for.end284
  %sub354 = add nsw i32 %.lcssa1497, -1
  %cmp355 = icmp eq i32 %jcolU.3.lcssa, %sub354
  br i1 %cmp355, label %if.then356, label %if.end389

if.then356:                                       ; preds = %if.else353
  call void @ZVdotU31(i32 %120, double* %call60, double* %add.ptr, double* %add.ptr64, double* %colU0.0.lcssa, double* %arraydecay291) #5
  %idxprom358 = sext i32 %jcolU.3.lcssa to i64
  %148 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx359 = getelementptr inbounds i32* %148, i64 %idxprom358
  %149 = load i32* %arrayidx359, align 4, !tbaa !3
  %mul360 = shl nsw i32 %149, 1
  %150 = load double* %arraydecay291, align 16, !tbaa !4
  %idxprom362 = sext i32 %mul360 to i64
  %add.ptr84.sum1421 = sub i64 %idxprom362, %idx.ext83
  %arrayidx363 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1421
  %151 = load double* %arrayidx363, align 8, !tbaa !4
  %sub364 = fsub double %151, %150
  store double %sub364, double* %arrayidx363, align 8, !tbaa !4
  %152 = load double* %arrayidx303, align 8, !tbaa !4
  %add3661422 = or i32 %mul360, 1
  %idxprom367 = sext i32 %add3661422 to i64
  %add.ptr84.sum1423 = sub i64 %idxprom367, %idx.ext83
  %arrayidx368 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1423
  %153 = load double* %arrayidx368, align 8, !tbaa !4
  %sub369 = fsub double %153, %152
  store double %sub369, double* %arrayidx368, align 8, !tbaa !4
  %154 = load double* %arrayidx308, align 16, !tbaa !4
  %add.ptr91.sum1424 = sub i64 %idxprom362, %idx.ext89
  %arrayidx372 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1424
  %155 = load double* %arrayidx372, align 8, !tbaa !4
  %sub373 = fsub double %155, %154
  store double %sub373, double* %arrayidx372, align 8, !tbaa !4
  %156 = load double* %arrayidx312, align 8, !tbaa !4
  %add.ptr91.sum1425 = sub i64 %idxprom367, %idx.ext89
  %arrayidx377 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1425
  %157 = load double* %arrayidx377, align 8, !tbaa !4
  %sub378 = fsub double %157, %156
  store double %sub378, double* %arrayidx377, align 8, !tbaa !4
  %158 = load double* %arrayidx317, align 16, !tbaa !4
  %add.ptr99.sum = sub i64 %idxprom362, %idx.ext97
  %arrayidx381 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum
  %159 = load double* %arrayidx381, align 8, !tbaa !4
  %sub382 = fsub double %159, %158
  store double %sub382, double* %arrayidx381, align 8, !tbaa !4
  %160 = load double* %arrayidx321, align 8, !tbaa !4
  %add.ptr99.sum1426 = sub i64 %idxprom367, %idx.ext97
  %arrayidx386 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1426
  %161 = load double* %arrayidx386, align 8, !tbaa !4
  %sub387 = fsub double %161, %160
  store double %sub387, double* %arrayidx386, align 8, !tbaa !4
  br label %if.end389

if.end389:                                        ; preds = %if.else353, %if.then356, %if.then287
  %162 = load i32* %nrowU, align 4, !tbaa !3
  %mul390 = shl nsw i32 %162, 1
  %idx.ext391 = sext i32 %mul390 to i64
  %add.ptr78.sum1420 = add i64 %idx.ext391, %add.ptr75.sum
  %add.ptr392 = getelementptr inbounds double* %rowUT0.01508, i64 %add.ptr78.sum1420
  %cmp71 = icmp sgt i32 %74, %sub70
  br i1 %cmp71, label %for.end395, label %for.body72

for.end395:                                       ; preds = %if.end389, %if.then59
  %163 = phi i32 [ %30, %if.then59 ], [ %162, %if.end389 ]
  %rowUT0.0.lcssa = phi double* [ %add.ptr68, %if.then59 ], [ %add.ptr392, %if.end389 ]
  %irowUT.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then59 ], [ %add176, %if.end389 ]
  %sub396 = add nsw i32 %lastInU.0.lcssa1601, -1
  %cmp397 = icmp eq i32 %irowUT.0.lcssa, %sub396
  br i1 %cmp397, label %if.then398, label %if.else623

if.then398:                                       ; preds = %for.end395
  %mul399 = shl nsw i32 %163, 1
  %idx.ext400 = sext i32 %mul399 to i64
  %add.ptr401 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext400
  %idxprom402 = sext i32 %irowUT.0.lcssa to i64
  %164 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx403 = getelementptr inbounds i32* %164, i64 %idxprom402
  %165 = load i32* %arrayidx403, align 4, !tbaa !3
  %call404 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %165) #5
  %mul405 = shl nsw i32 %165, 1
  %idx.ext406 = sext i32 %mul405 to i64
  %add409 = add nsw i32 %irowUT.0.lcssa, 1
  %idxprom410 = sext i32 %add409 to i64
  %166 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx411 = getelementptr inbounds i32* %166, i64 %idxprom410
  %167 = load i32* %arrayidx411, align 4, !tbaa !3
  %call412 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %167) #5
  %mul413 = shl nsw i32 %167, 1
  %idx.ext414 = sext i32 %mul413 to i64
  %168 = load i32* %nrowU, align 4, !tbaa !3
  %mul417 = shl nsw i32 %168, 2
  call void @DVzero(i32 %mul417, double* %call60) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call60, double* %add.ptr, double* %rowUT0.0.lcssa, double* %add.ptr401) #5
  %169 = load i32* %nrowU, align 4, !tbaa !3
  %cmp4191477 = icmp sgt i32 %169, 0
  br i1 %cmp4191477, label %for.body420, label %for.end441

for.body420:                                      ; preds = %if.then398, %for.body420
  %indvars.iv1546 = phi i64 [ %indvars.iv.next1547, %for.body420 ], [ 0, %if.then398 ]
  %170 = trunc i64 %indvars.iv1546 to i32
  %mul421 = shl nsw i32 %170, 1
  %add4221412 = or i32 %mul421, 1
  %idxprom423 = sext i32 %add4221412 to i64
  %arrayidx424 = getelementptr inbounds double* %call60, i64 %idxprom423
  %171 = load double* %arrayidx424, align 8, !tbaa !4
  %sub425 = fsub double -0.000000e+00, %171
  store double %sub425, double* %arrayidx424, align 8, !tbaa !4
  %add.ptr.sum1413 = add i64 %idxprom423, %idx.ext
  %arrayidx433 = getelementptr inbounds double* %call60, i64 %add.ptr.sum1413
  %172 = load double* %arrayidx433, align 8, !tbaa !4
  %sub434 = fsub double -0.000000e+00, %172
  store double %sub434, double* %arrayidx433, align 8, !tbaa !4
  %indvars.iv.next1547 = add i64 %indvars.iv1546, 1
  %173 = trunc i64 %indvars.iv.next1547 to i32
  %cmp419 = icmp slt i32 %173, %169
  br i1 %cmp419, label %for.body420, label %for.end441

for.end441:                                       ; preds = %for.body420, %if.then398
  call void @ZVdotU(i32 %169, double* %call60, double* %rowUT0.0.lcssa, double* %rsum, double* %isum) #5
  %174 = load double* %rsum, align 8, !tbaa !4
  %175 = load double* %call404, align 8, !tbaa !4
  %sub445 = fsub double %175, %174
  store double %sub445, double* %call404, align 8, !tbaa !4
  %176 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %176, double* %call60, double* %add.ptr401, double* %rsum, double* %isum) #5
  %177 = load double* %rsum, align 8, !tbaa !4
  %add.ptr408.sum = sub i64 %idx.ext414, %idx.ext406
  %arrayidx448 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum
  %178 = load double* %arrayidx448, align 8, !tbaa !4
  %sub449 = fsub double %178, %177
  store double %sub449, double* %arrayidx448, align 8, !tbaa !4
  %179 = load double* %isum, align 8, !tbaa !4
  %add4511381 = or i32 %mul413, 1
  %idxprom452 = sext i32 %add4511381 to i64
  %add.ptr408.sum1382 = sub i64 %idxprom452, %idx.ext406
  %arrayidx453 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1382
  %180 = load double* %arrayidx453, align 8, !tbaa !4
  %sub454 = fsub double %180, %179
  store double %sub454, double* %arrayidx453, align 8, !tbaa !4
  %181 = load i32* %nrowU, align 4, !tbaa !3
  call void @ZVdotU(i32 %181, double* %add.ptr, double* %add.ptr401, double* %rsum, double* %isum) #5
  %182 = load double* %rsum, align 8, !tbaa !4
  %183 = load double* %call412, align 8, !tbaa !4
  %sub458 = fsub double %183, %182
  store double %sub458, double* %call412, align 8, !tbaa !4
  %184 = load i32* %nrowU, align 4, !tbaa !3
  %mul459 = shl nsw i32 %184, 1
  %idx.ext460 = sext i32 %mul459 to i64
  %add.ptr401.sum = add i64 %idx.ext460, %idx.ext400
  %add.ptr461 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %add.ptr401.sum
  %add462 = add i32 %irowUT.0.lcssa, 2
  %185 = load i32* %ncolU, align 4, !tbaa !3
  %sub4641469 = add nsw i32 %185, -2
  %cmp4651470 = icmp slt i32 %add462, %sub4641469
  br i1 %cmp4651470, label %for.body466.lr.ph, label %for.end544

for.body466.lr.ph:                                ; preds = %for.end441
  %arraydecay473 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  %arrayidx489 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %arrayidx494 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2
  %arrayidx498 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3
  %arrayidx503 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4
  %arrayidx507 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5
  %arrayidx512 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 6
  %arrayidx516 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 7
  %arrayidx521 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 8
  %arrayidx525 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 9
  %arrayidx530 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 10
  %arrayidx534 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 11
  %186 = sext i32 %add462 to i64
  br label %for.body466

for.body466:                                      ; preds = %for.body466.lr.ph, %for.body466
  %187 = phi i32 [ %184, %for.body466.lr.ph ], [ %218, %for.body466 ]
  %indvars.iv1541 = phi i64 [ %186, %for.body466.lr.ph ], [ %indvars.iv.next1542, %for.body466 ]
  %jcolU.41472 = phi i32 [ %add462, %for.body466.lr.ph ], [ %add543, %for.body466 ]
  %colU0.11471 = phi double* [ %add.ptr461, %for.body466.lr.ph ], [ %add.ptr541, %for.body466 ]
  %mul467 = shl nsw i32 %187, 1
  %idx.ext468 = sext i32 %mul467 to i64
  %add.ptr469 = getelementptr inbounds double* %colU0.11471, i64 %idx.ext468
  %add.ptr469.sum = shl nsw i64 %idx.ext468, 1
  %add.ptr472 = getelementptr inbounds double* %colU0.11471, i64 %add.ptr469.sum
  call void @ZVdotU23(i32 %187, double* %call60, double* %add.ptr, double* %colU0.11471, double* %add.ptr469, double* %add.ptr472, double* %arraydecay473) #5
  %188 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx475 = getelementptr inbounds i32* %188, i64 %indvars.iv1541
  %189 = load i32* %arrayidx475, align 4, !tbaa !3
  %mul476 = shl nsw i32 %189, 1
  %190 = add nsw i64 %indvars.iv1541, 1
  %arrayidx479 = getelementptr inbounds i32* %188, i64 %190
  %191 = load i32* %arrayidx479, align 4, !tbaa !3
  %mul480 = shl nsw i32 %191, 1
  %192 = add nsw i64 %indvars.iv1541, 2
  %arrayidx483 = getelementptr inbounds i32* %188, i64 %192
  %193 = load i32* %arrayidx483, align 4, !tbaa !3
  %mul484 = shl nsw i32 %193, 1
  %194 = load double* %arraydecay473, align 16, !tbaa !4
  %idxprom486 = sext i32 %mul476 to i64
  %add.ptr408.sum1397 = sub i64 %idxprom486, %idx.ext406
  %arrayidx487 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1397
  %195 = load double* %arrayidx487, align 8, !tbaa !4
  %sub488 = fsub double %195, %194
  store double %sub488, double* %arrayidx487, align 8, !tbaa !4
  %196 = load double* %arrayidx489, align 8, !tbaa !4
  %add4901398 = or i32 %mul476, 1
  %idxprom491 = sext i32 %add4901398 to i64
  %add.ptr408.sum1399 = sub i64 %idxprom491, %idx.ext406
  %arrayidx492 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1399
  %197 = load double* %arrayidx492, align 8, !tbaa !4
  %sub493 = fsub double %197, %196
  store double %sub493, double* %arrayidx492, align 8, !tbaa !4
  %198 = load double* %arrayidx494, align 16, !tbaa !4
  %idxprom495 = sext i32 %mul480 to i64
  %add.ptr408.sum1400 = sub i64 %idxprom495, %idx.ext406
  %arrayidx496 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1400
  %199 = load double* %arrayidx496, align 8, !tbaa !4
  %sub497 = fsub double %199, %198
  store double %sub497, double* %arrayidx496, align 8, !tbaa !4
  %200 = load double* %arrayidx498, align 8, !tbaa !4
  %add4991401 = or i32 %mul480, 1
  %idxprom500 = sext i32 %add4991401 to i64
  %add.ptr408.sum1402 = sub i64 %idxprom500, %idx.ext406
  %arrayidx501 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1402
  %201 = load double* %arrayidx501, align 8, !tbaa !4
  %sub502 = fsub double %201, %200
  store double %sub502, double* %arrayidx501, align 8, !tbaa !4
  %202 = load double* %arrayidx503, align 16, !tbaa !4
  %idxprom504 = sext i32 %mul484 to i64
  %add.ptr408.sum1403 = sub i64 %idxprom504, %idx.ext406
  %arrayidx505 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1403
  %203 = load double* %arrayidx505, align 8, !tbaa !4
  %sub506 = fsub double %203, %202
  store double %sub506, double* %arrayidx505, align 8, !tbaa !4
  %204 = load double* %arrayidx507, align 8, !tbaa !4
  %add5081404 = or i32 %mul484, 1
  %idxprom509 = sext i32 %add5081404 to i64
  %add.ptr408.sum1405 = sub i64 %idxprom509, %idx.ext406
  %arrayidx510 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1405
  %205 = load double* %arrayidx510, align 8, !tbaa !4
  %sub511 = fsub double %205, %204
  store double %sub511, double* %arrayidx510, align 8, !tbaa !4
  %206 = load double* %arrayidx512, align 16, !tbaa !4
  %add.ptr416.sum1406 = sub i64 %idxprom486, %idx.ext414
  %arrayidx514 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1406
  %207 = load double* %arrayidx514, align 8, !tbaa !4
  %sub515 = fsub double %207, %206
  store double %sub515, double* %arrayidx514, align 8, !tbaa !4
  %208 = load double* %arrayidx516, align 8, !tbaa !4
  %add.ptr416.sum1407 = sub i64 %idxprom491, %idx.ext414
  %arrayidx519 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1407
  %209 = load double* %arrayidx519, align 8, !tbaa !4
  %sub520 = fsub double %209, %208
  store double %sub520, double* %arrayidx519, align 8, !tbaa !4
  %210 = load double* %arrayidx521, align 16, !tbaa !4
  %add.ptr416.sum1408 = sub i64 %idxprom495, %idx.ext414
  %arrayidx523 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1408
  %211 = load double* %arrayidx523, align 8, !tbaa !4
  %sub524 = fsub double %211, %210
  store double %sub524, double* %arrayidx523, align 8, !tbaa !4
  %212 = load double* %arrayidx525, align 8, !tbaa !4
  %add.ptr416.sum1409 = sub i64 %idxprom500, %idx.ext414
  %arrayidx528 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1409
  %213 = load double* %arrayidx528, align 8, !tbaa !4
  %sub529 = fsub double %213, %212
  store double %sub529, double* %arrayidx528, align 8, !tbaa !4
  %214 = load double* %arrayidx530, align 16, !tbaa !4
  %add.ptr416.sum1410 = sub i64 %idxprom504, %idx.ext414
  %arrayidx532 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1410
  %215 = load double* %arrayidx532, align 8, !tbaa !4
  %sub533 = fsub double %215, %214
  store double %sub533, double* %arrayidx532, align 8, !tbaa !4
  %216 = load double* %arrayidx534, align 8, !tbaa !4
  %add.ptr416.sum1411 = sub i64 %idxprom509, %idx.ext414
  %arrayidx537 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1411
  %217 = load double* %arrayidx537, align 8, !tbaa !4
  %sub538 = fsub double %217, %216
  store double %sub538, double* %arrayidx537, align 8, !tbaa !4
  %218 = load i32* %nrowU, align 4, !tbaa !3
  %mul539 = shl nsw i32 %218, 1
  %idx.ext540 = sext i32 %mul539 to i64
  %add.ptr472.sum = add i64 %idx.ext540, %add.ptr469.sum
  %add.ptr541 = getelementptr inbounds double* %colU0.11471, i64 %add.ptr472.sum
  %add543 = add nsw i32 %jcolU.41472, 3
  %219 = load i32* %ncolU, align 4, !tbaa !3
  %sub464 = add nsw i32 %219, -2
  %cmp465 = icmp slt i32 %add543, %sub464
  %indvars.iv.next1542 = add i64 %indvars.iv1541, 3
  br i1 %cmp465, label %for.body466, label %for.end544

for.end544:                                       ; preds = %for.body466, %for.end441
  %220 = phi i32 [ %184, %for.end441 ], [ %218, %for.body466 ]
  %sub464.lcssa = phi i32 [ %sub4641469, %for.end441 ], [ %sub464, %for.body466 ]
  %.lcssa = phi i32 [ %185, %for.end441 ], [ %219, %for.body466 ]
  %jcolU.4.lcssa = phi i32 [ %add462, %for.end441 ], [ %add543, %for.body466 ]
  %colU0.1.lcssa = phi double* [ %add.ptr461, %for.end441 ], [ %add.ptr541, %for.body466 ]
  %cmp546 = icmp eq i32 %jcolU.4.lcssa, %sub464.lcssa
  br i1 %cmp546, label %if.then547, label %if.else595

if.then547:                                       ; preds = %for.end544
  %mul548 = shl nsw i32 %220, 1
  %idx.ext549 = sext i32 %mul548 to i64
  %add.ptr550 = getelementptr inbounds double* %colU0.1.lcssa, i64 %idx.ext549
  %arraydecay551 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  call void @ZVdotU22(i32 %220, double* %call60, double* %add.ptr, double* %colU0.1.lcssa, double* %add.ptr550, double* %arraydecay551) #5
  %idxprom552 = sext i32 %sub464.lcssa to i64
  %221 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx553 = getelementptr inbounds i32* %221, i64 %idxprom552
  %222 = load i32* %arrayidx553, align 4, !tbaa !3
  %mul554 = shl nsw i32 %222, 1
  %add555 = add nsw i32 %sub464.lcssa, 1
  %idxprom556 = sext i32 %add555 to i64
  %arrayidx557 = getelementptr inbounds i32* %221, i64 %idxprom556
  %223 = load i32* %arrayidx557, align 4, !tbaa !3
  %mul558 = shl nsw i32 %223, 1
  %224 = load double* %arraydecay551, align 16, !tbaa !4
  %idxprom560 = sext i32 %mul554 to i64
  %add.ptr408.sum1387 = sub i64 %idxprom560, %idx.ext406
  %arrayidx561 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1387
  %225 = load double* %arrayidx561, align 8, !tbaa !4
  %sub562 = fsub double %225, %224
  store double %sub562, double* %arrayidx561, align 8, !tbaa !4
  %arrayidx563 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %226 = load double* %arrayidx563, align 8, !tbaa !4
  %add5641388 = or i32 %mul554, 1
  %idxprom565 = sext i32 %add5641388 to i64
  %add.ptr408.sum1389 = sub i64 %idxprom565, %idx.ext406
  %arrayidx566 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1389
  %227 = load double* %arrayidx566, align 8, !tbaa !4
  %sub567 = fsub double %227, %226
  store double %sub567, double* %arrayidx566, align 8, !tbaa !4
  %arrayidx568 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2
  %228 = load double* %arrayidx568, align 16, !tbaa !4
  %idxprom569 = sext i32 %mul558 to i64
  %add.ptr408.sum1390 = sub i64 %idxprom569, %idx.ext406
  %arrayidx570 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1390
  %229 = load double* %arrayidx570, align 8, !tbaa !4
  %sub571 = fsub double %229, %228
  store double %sub571, double* %arrayidx570, align 8, !tbaa !4
  %arrayidx572 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3
  %230 = load double* %arrayidx572, align 8, !tbaa !4
  %add5731391 = or i32 %mul558, 1
  %idxprom574 = sext i32 %add5731391 to i64
  %add.ptr408.sum1392 = sub i64 %idxprom574, %idx.ext406
  %arrayidx575 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1392
  %231 = load double* %arrayidx575, align 8, !tbaa !4
  %sub576 = fsub double %231, %230
  store double %sub576, double* %arrayidx575, align 8, !tbaa !4
  %arrayidx577 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4
  %232 = load double* %arrayidx577, align 16, !tbaa !4
  %add.ptr416.sum1393 = sub i64 %idxprom560, %idx.ext414
  %arrayidx579 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1393
  %233 = load double* %arrayidx579, align 8, !tbaa !4
  %sub580 = fsub double %233, %232
  store double %sub580, double* %arrayidx579, align 8, !tbaa !4
  %arrayidx581 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5
  %234 = load double* %arrayidx581, align 8, !tbaa !4
  %add.ptr416.sum1394 = sub i64 %idxprom565, %idx.ext414
  %arrayidx584 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1394
  %235 = load double* %arrayidx584, align 8, !tbaa !4
  %sub585 = fsub double %235, %234
  store double %sub585, double* %arrayidx584, align 8, !tbaa !4
  %arrayidx586 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 6
  %236 = load double* %arrayidx586, align 16, !tbaa !4
  %add.ptr416.sum1395 = sub i64 %idxprom569, %idx.ext414
  %arrayidx588 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1395
  %237 = load double* %arrayidx588, align 8, !tbaa !4
  %sub589 = fsub double %237, %236
  store double %sub589, double* %arrayidx588, align 8, !tbaa !4
  %arrayidx590 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 7
  %238 = load double* %arrayidx590, align 8, !tbaa !4
  %add.ptr416.sum1396 = sub i64 %idxprom574, %idx.ext414
  %arrayidx593 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1396
  %239 = load double* %arrayidx593, align 8, !tbaa !4
  %sub594 = fsub double %239, %238
  store double %sub594, double* %arrayidx593, align 8, !tbaa !4
  br label %for.cond891.preheader

if.else595:                                       ; preds = %for.end544
  %sub596 = add nsw i32 %.lcssa, -1
  %cmp597 = icmp eq i32 %jcolU.4.lcssa, %sub596
  br i1 %cmp597, label %if.then598, label %for.cond891.preheader

if.then598:                                       ; preds = %if.else595
  %arraydecay599 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  call void @ZVdotU21(i32 %220, double* %call60, double* %add.ptr, double* %colU0.1.lcssa, double* %arraydecay599) #5
  %idxprom600 = sext i32 %jcolU.4.lcssa to i64
  %240 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx601 = getelementptr inbounds i32* %240, i64 %idxprom600
  %241 = load i32* %arrayidx601, align 4, !tbaa !3
  %mul602 = shl nsw i32 %241, 1
  %242 = load double* %arraydecay599, align 16, !tbaa !4
  %idxprom604 = sext i32 %mul602 to i64
  %add.ptr408.sum1383 = sub i64 %idxprom604, %idx.ext406
  %arrayidx605 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1383
  %243 = load double* %arrayidx605, align 8, !tbaa !4
  %sub606 = fsub double %243, %242
  store double %sub606, double* %arrayidx605, align 8, !tbaa !4
  %arrayidx607 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %244 = load double* %arrayidx607, align 8, !tbaa !4
  %add6081384 = or i32 %mul602, 1
  %idxprom609 = sext i32 %add6081384 to i64
  %add.ptr408.sum1385 = sub i64 %idxprom609, %idx.ext406
  %arrayidx610 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1385
  %245 = load double* %arrayidx610, align 8, !tbaa !4
  %sub611 = fsub double %245, %244
  store double %sub611, double* %arrayidx610, align 8, !tbaa !4
  %arrayidx612 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2
  %246 = load double* %arrayidx612, align 16, !tbaa !4
  %add.ptr416.sum = sub i64 %idxprom604, %idx.ext414
  %arrayidx614 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum
  %247 = load double* %arrayidx614, align 8, !tbaa !4
  %sub615 = fsub double %247, %246
  store double %sub615, double* %arrayidx614, align 8, !tbaa !4
  %arrayidx616 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3
  %248 = load double* %arrayidx616, align 8, !tbaa !4
  %add.ptr416.sum1386 = sub i64 %idxprom609, %idx.ext414
  %arrayidx619 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1386
  %249 = load double* %arrayidx619, align 8, !tbaa !4
  %sub620 = fsub double %249, %248
  store double %sub620, double* %arrayidx619, align 8, !tbaa !4
  br label %for.cond891.preheader

if.else623:                                       ; preds = %for.end395
  %cmp624 = icmp eq i32 %irowUT.0.lcssa, %lastInU.0.lcssa1601
  br i1 %cmp624, label %if.then625, label %for.cond891.preheader

if.then625:                                       ; preds = %if.else623
  %idxprom626 = sext i32 %lastInU.0.lcssa1601 to i64
  %250 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx627 = getelementptr inbounds i32* %250, i64 %idxprom626
  %251 = load i32* %arrayidx627, align 4, !tbaa !3
  %call628 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %251) #5
  %mul629 = shl nsw i32 %251, 1
  %idx.ext630 = sext i32 %mul629 to i64
  %252 = load i32* %nrowU, align 4, !tbaa !3
  %mul633 = shl nsw i32 %252, 1
  call void @DVzero(i32 %mul633, double* %call60) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call60, double* %rowUT0.0.lcssa) #5
  %253 = load i32* %nrowU, align 4, !tbaa !3
  %cmp6351490 = icmp sgt i32 %253, 0
  br i1 %cmp6351490, label %for.body636, label %for.end648

for.body636:                                      ; preds = %if.then625, %for.body636
  %indvars.iv1555 = phi i64 [ %indvars.iv.next1556, %for.body636 ], [ 0, %if.then625 ]
  %254 = trunc i64 %indvars.iv1555 to i32
  %mul637 = shl nsw i32 %254, 1
  %add6381380 = or i32 %mul637, 1
  %idxprom639 = sext i32 %add6381380 to i64
  %arrayidx640 = getelementptr inbounds double* %call60, i64 %idxprom639
  %255 = load double* %arrayidx640, align 8, !tbaa !4
  %sub641 = fsub double -0.000000e+00, %255
  store double %sub641, double* %arrayidx640, align 8, !tbaa !4
  %indvars.iv.next1556 = add i64 %indvars.iv1555, 1
  %256 = trunc i64 %indvars.iv.next1556 to i32
  %cmp635 = icmp slt i32 %256, %253
  br i1 %cmp635, label %for.body636, label %for.end648

for.end648:                                       ; preds = %for.body636, %if.then625
  call void @ZVdotU(i32 %253, double* %call60, double* %rowUT0.0.lcssa, double* %rsum, double* %isum) #5
  %257 = load double* %rsum, align 8, !tbaa !4
  %258 = load double* %call628, align 8, !tbaa !4
  %sub652 = fsub double %258, %257
  store double %sub652, double* %call628, align 8, !tbaa !4
  %259 = load i32* %nrowU, align 4, !tbaa !3
  %mul653 = shl nsw i32 %259, 1
  %idx.ext654 = sext i32 %mul653 to i64
  %add.ptr655 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext654
  %add656 = add i32 %lastInU.0.lcssa1601, 1
  %260 = load i32* %ncolU, align 4, !tbaa !3
  %sub6581481 = add nsw i32 %260, -2
  %cmp6591482 = icmp slt i32 %add656, %sub6581481
  br i1 %cmp6591482, label %for.body660.lr.ph, label %for.end711

for.body660.lr.ph:                                ; preds = %for.end648
  %arraydecay667 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  %arrayidx683 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %arrayidx688 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2
  %arrayidx692 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3
  %arrayidx697 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4
  %arrayidx701 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5
  %261 = sext i32 %add656 to i64
  br label %for.body660

for.body660:                                      ; preds = %for.body660.lr.ph, %for.body660
  %262 = phi i32 [ %259, %for.body660.lr.ph ], [ %281, %for.body660 ]
  %indvars.iv1550 = phi i64 [ %261, %for.body660.lr.ph ], [ %indvars.iv.next1551, %for.body660 ]
  %jcolU.51484 = phi i32 [ %add656, %for.body660.lr.ph ], [ %add710, %for.body660 ]
  %colU0.21483 = phi double* [ %add.ptr655, %for.body660.lr.ph ], [ %add.ptr708, %for.body660 ]
  %mul661 = shl nsw i32 %262, 1
  %idx.ext662 = sext i32 %mul661 to i64
  %add.ptr663 = getelementptr inbounds double* %colU0.21483, i64 %idx.ext662
  %add.ptr663.sum = shl nsw i64 %idx.ext662, 1
  %add.ptr666 = getelementptr inbounds double* %colU0.21483, i64 %add.ptr663.sum
  call void @ZVdotU13(i32 %262, double* %call60, double* %colU0.21483, double* %add.ptr663, double* %add.ptr666, double* %arraydecay667) #5
  %263 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx669 = getelementptr inbounds i32* %263, i64 %indvars.iv1550
  %264 = load i32* %arrayidx669, align 4, !tbaa !3
  %mul670 = shl nsw i32 %264, 1
  %265 = add nsw i64 %indvars.iv1550, 1
  %arrayidx673 = getelementptr inbounds i32* %263, i64 %265
  %266 = load i32* %arrayidx673, align 4, !tbaa !3
  %mul674 = shl nsw i32 %266, 1
  %267 = add nsw i64 %indvars.iv1550, 2
  %arrayidx677 = getelementptr inbounds i32* %263, i64 %267
  %268 = load i32* %arrayidx677, align 4, !tbaa !3
  %mul678 = shl nsw i32 %268, 1
  %269 = load double* %arraydecay667, align 16, !tbaa !4
  %idxprom680 = sext i32 %mul670 to i64
  %add.ptr632.sum1371 = sub i64 %idxprom680, %idx.ext630
  %arrayidx681 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1371
  %270 = load double* %arrayidx681, align 8, !tbaa !4
  %sub682 = fsub double %270, %269
  store double %sub682, double* %arrayidx681, align 8, !tbaa !4
  %271 = load double* %arrayidx683, align 8, !tbaa !4
  %add6841372 = or i32 %mul670, 1
  %idxprom685 = sext i32 %add6841372 to i64
  %add.ptr632.sum1373 = sub i64 %idxprom685, %idx.ext630
  %arrayidx686 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1373
  %272 = load double* %arrayidx686, align 8, !tbaa !4
  %sub687 = fsub double %272, %271
  store double %sub687, double* %arrayidx686, align 8, !tbaa !4
  %273 = load double* %arrayidx688, align 16, !tbaa !4
  %idxprom689 = sext i32 %mul674 to i64
  %add.ptr632.sum1374 = sub i64 %idxprom689, %idx.ext630
  %arrayidx690 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1374
  %274 = load double* %arrayidx690, align 8, !tbaa !4
  %sub691 = fsub double %274, %273
  store double %sub691, double* %arrayidx690, align 8, !tbaa !4
  %275 = load double* %arrayidx692, align 8, !tbaa !4
  %add6931375 = or i32 %mul674, 1
  %idxprom694 = sext i32 %add6931375 to i64
  %add.ptr632.sum1376 = sub i64 %idxprom694, %idx.ext630
  %arrayidx695 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1376
  %276 = load double* %arrayidx695, align 8, !tbaa !4
  %sub696 = fsub double %276, %275
  store double %sub696, double* %arrayidx695, align 8, !tbaa !4
  %277 = load double* %arrayidx697, align 16, !tbaa !4
  %idxprom698 = sext i32 %mul678 to i64
  %add.ptr632.sum1377 = sub i64 %idxprom698, %idx.ext630
  %arrayidx699 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1377
  %278 = load double* %arrayidx699, align 8, !tbaa !4
  %sub700 = fsub double %278, %277
  store double %sub700, double* %arrayidx699, align 8, !tbaa !4
  %279 = load double* %arrayidx701, align 8, !tbaa !4
  %add7021378 = or i32 %mul678, 1
  %idxprom703 = sext i32 %add7021378 to i64
  %add.ptr632.sum1379 = sub i64 %idxprom703, %idx.ext630
  %arrayidx704 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1379
  %280 = load double* %arrayidx704, align 8, !tbaa !4
  %sub705 = fsub double %280, %279
  store double %sub705, double* %arrayidx704, align 8, !tbaa !4
  %281 = load i32* %nrowU, align 4, !tbaa !3
  %mul706 = shl nsw i32 %281, 1
  %idx.ext707 = sext i32 %mul706 to i64
  %add.ptr666.sum = add i64 %idx.ext707, %add.ptr663.sum
  %add.ptr708 = getelementptr inbounds double* %colU0.21483, i64 %add.ptr666.sum
  %add710 = add nsw i32 %jcolU.51484, 3
  %282 = load i32* %ncolU, align 4, !tbaa !3
  %sub658 = add nsw i32 %282, -2
  %cmp659 = icmp slt i32 %add710, %sub658
  %indvars.iv.next1551 = add i64 %indvars.iv1550, 3
  br i1 %cmp659, label %for.body660, label %for.end711

for.end711:                                       ; preds = %for.body660, %for.end648
  %283 = phi i32 [ %259, %for.end648 ], [ %281, %for.body660 ]
  %sub658.lcssa = phi i32 [ %sub6581481, %for.end648 ], [ %sub658, %for.body660 ]
  %.lcssa1480 = phi i32 [ %260, %for.end648 ], [ %282, %for.body660 ]
  %jcolU.5.lcssa = phi i32 [ %add656, %for.end648 ], [ %add710, %for.body660 ]
  %colU0.2.lcssa = phi double* [ %add.ptr655, %for.end648 ], [ %add.ptr708, %for.body660 ]
  %cmp713 = icmp eq i32 %jcolU.5.lcssa, %sub658.lcssa
  br i1 %cmp713, label %if.then714, label %if.else744

if.then714:                                       ; preds = %for.end711
  %mul715 = shl nsw i32 %283, 1
  %idx.ext716 = sext i32 %mul715 to i64
  %add.ptr717 = getelementptr inbounds double* %colU0.2.lcssa, i64 %idx.ext716
  %arraydecay718 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  call void @ZVdotU12(i32 %283, double* %call60, double* %colU0.2.lcssa, double* %add.ptr717, double* %arraydecay718) #5
  %idxprom719 = sext i32 %sub658.lcssa to i64
  %284 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx720 = getelementptr inbounds i32* %284, i64 %idxprom719
  %285 = load i32* %arrayidx720, align 4, !tbaa !3
  %mul721 = shl nsw i32 %285, 1
  %add722 = add nsw i32 %sub658.lcssa, 1
  %idxprom723 = sext i32 %add722 to i64
  %arrayidx724 = getelementptr inbounds i32* %284, i64 %idxprom723
  %286 = load i32* %arrayidx724, align 4, !tbaa !3
  %mul725 = shl nsw i32 %286, 1
  %287 = load double* %arraydecay718, align 16, !tbaa !4
  %idxprom727 = sext i32 %mul721 to i64
  %add.ptr632.sum1365 = sub i64 %idxprom727, %idx.ext630
  %arrayidx728 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1365
  %288 = load double* %arrayidx728, align 8, !tbaa !4
  %sub729 = fsub double %288, %287
  store double %sub729, double* %arrayidx728, align 8, !tbaa !4
  %arrayidx730 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %289 = load double* %arrayidx730, align 8, !tbaa !4
  %add7311366 = or i32 %mul721, 1
  %idxprom732 = sext i32 %add7311366 to i64
  %add.ptr632.sum1367 = sub i64 %idxprom732, %idx.ext630
  %arrayidx733 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1367
  %290 = load double* %arrayidx733, align 8, !tbaa !4
  %sub734 = fsub double %290, %289
  store double %sub734, double* %arrayidx733, align 8, !tbaa !4
  %arrayidx735 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2
  %291 = load double* %arrayidx735, align 16, !tbaa !4
  %idxprom736 = sext i32 %mul725 to i64
  %add.ptr632.sum1368 = sub i64 %idxprom736, %idx.ext630
  %arrayidx737 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1368
  %292 = load double* %arrayidx737, align 8, !tbaa !4
  %sub738 = fsub double %292, %291
  store double %sub738, double* %arrayidx737, align 8, !tbaa !4
  %arrayidx739 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3
  %293 = load double* %arrayidx739, align 8, !tbaa !4
  %add7401369 = or i32 %mul725, 1
  %idxprom741 = sext i32 %add7401369 to i64
  %add.ptr632.sum1370 = sub i64 %idxprom741, %idx.ext630
  %arrayidx742 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1370
  %294 = load double* %arrayidx742, align 8, !tbaa !4
  %sub743 = fsub double %294, %293
  store double %sub743, double* %arrayidx742, align 8, !tbaa !4
  br label %for.cond891.preheader

if.else744:                                       ; preds = %for.end711
  %sub745 = add nsw i32 %.lcssa1480, -1
  %cmp746 = icmp eq i32 %jcolU.5.lcssa, %sub745
  br i1 %cmp746, label %if.then747, label %for.cond891.preheader

if.then747:                                       ; preds = %if.else744
  %arraydecay748 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0
  call void @ZVdotU11(i32 %283, double* %call60, double* %colU0.2.lcssa, double* %arraydecay748) #5
  %idxprom749 = sext i32 %jcolU.5.lcssa to i64
  %295 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx750 = getelementptr inbounds i32* %295, i64 %idxprom749
  %296 = load i32* %arrayidx750, align 4, !tbaa !3
  %mul751 = shl nsw i32 %296, 1
  %297 = load double* %arraydecay748, align 16, !tbaa !4
  %idxprom753 = sext i32 %mul751 to i64
  %add.ptr632.sum = sub i64 %idxprom753, %idx.ext630
  %arrayidx754 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum
  %298 = load double* %arrayidx754, align 8, !tbaa !4
  %sub755 = fsub double %298, %297
  store double %sub755, double* %arrayidx754, align 8, !tbaa !4
  %arrayidx756 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1
  %299 = load double* %arrayidx756, align 8, !tbaa !4
  %add7571363 = or i32 %mul751, 1
  %idxprom758 = sext i32 %add7571363 to i64
  %add.ptr632.sum1364 = sub i64 %idxprom758, %idx.ext630
  %arrayidx759 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1364
  %300 = load double* %arrayidx759, align 8, !tbaa !4
  %sub760 = fsub double %300, %299
  store double %sub760, double* %arrayidx759, align 8, !tbaa !4
  br label %for.cond891.preheader

if.then768:                                       ; preds = %for.end57
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU, i32* %nentU, i32** %sizes, i32** %indU, double** %entU773) #5
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4
  %301 = load i32* %nrow, align 4, !tbaa !3
  %mul782 = shl nsw i32 %301, 2
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul782) #5
  %call783 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %mul784 = shl nsw i32 %301, 1
  %idx.ext785 = sext i32 %mul784 to i64
  %add.ptr786 = getelementptr inbounds double* %call783, i64 %idx.ext785
  %cmp7881524 = icmp sgt i32 %jcolU.0.lcssa, 0
  br i1 %cmp7881524, label %for.body789.lr.ph, label %for.end795

for.body789.lr.ph:                                ; preds = %if.then768
  %302 = load i32** %sizes, align 8, !tbaa !0
  br label %for.body789

for.body789:                                      ; preds = %for.body789, %for.body789.lr.ph
  %indvars.iv1584 = phi i64 [ 0, %for.body789.lr.ph ], [ %indvars.iv.next1585, %for.body789 ]
  %offset.01525 = phi i32 [ 0, %for.body789.lr.ph ], [ %add792, %for.body789 ]
  %arrayidx791 = getelementptr inbounds i32* %302, i64 %indvars.iv1584
  %303 = load i32* %arrayidx791, align 4, !tbaa !3
  %add792 = add nsw i32 %303, %offset.01525
  %indvars.iv.next1585 = add i64 %indvars.iv1584, 1
  %lftr.wideiv1586 = trunc i64 %indvars.iv.next1585 to i32
  %exitcond1587 = icmp eq i32 %lftr.wideiv1586, %jcolU.0.lcssa
  br i1 %exitcond1587, label %for.end795, label %for.body789

for.end795:                                       ; preds = %for.body789, %if.then768
  %offset.0.lcssa = phi i32 [ 0, %if.then768 ], [ %add792, %for.body789 ]
  %cmp8021519 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa1601
  br i1 %cmp8021519, label %for.cond891.preheader, label %for.body803.lr.ph

for.body803.lr.ph:                                ; preds = %for.end795
  %mul796 = shl nsw i32 %offset.0.lcssa, 1
  %idx.ext799 = sext i32 %offset.0.lcssa to i64
  %304 = load i32** %indU, align 8, !tbaa !0
  %idx.ext797 = sext i32 %mul796 to i64
  %305 = load double** %entU773, align 8, !tbaa !0
  %add.ptr800 = getelementptr inbounds i32* %304, i64 %idx.ext799
  %add.ptr798 = getelementptr inbounds double* %305, i64 %idx.ext797
  %cmp8381513 = icmp sgt i32 %301, 0
  %306 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body803

for.cond891.preheader:                            ; preds = %for.end795, %for.inc884, %if.else623, %if.else595, %if.then598, %if.then547, %if.then714, %if.then747, %if.else744
  %307 = load i32* %ncolU, align 4, !tbaa !3
  %cmp8921467 = icmp slt i32 %jcolU.0.lcssa, %307
  br i1 %cmp8921467, label %for.body893.lr.ph, label %return

for.body893.lr.ph:                                ; preds = %for.cond891.preheader
  %308 = load i32** %colindU, align 8, !tbaa !0
  %309 = load i32** %colindT, align 8, !tbaa !0
  %310 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body893

for.body803:                                      ; preds = %for.inc884.for.body803_crit_edge, %for.body803.lr.ph
  %indvars.iv1582 = phi i64 [ %indvars.iv.next1583, %for.inc884.for.body803_crit_edge ], [ %306, %for.body803.lr.ph ]
  %indUT0.01523 = phi i32* [ %indUT0.1, %for.inc884.for.body803_crit_edge ], [ %add.ptr800, %for.body803.lr.ph ]
  %rowUT0774.01520 = phi double* [ %rowUT0774.1, %for.inc884.for.body803_crit_edge ], [ %add.ptr798, %for.body803.lr.ph ]
  %311 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx805 = getelementptr inbounds i32* %311, i64 %indvars.iv1582
  %312 = load i32* %arrayidx805, align 4, !tbaa !3
  %cmp806 = icmp sgt i32 %312, 0
  br i1 %cmp806, label %for.body818.lr.ph, label %for.body803.for.inc884_crit_edge

for.body803.for.inc884_crit_edge:                 ; preds = %for.body803
  %.pre1600 = trunc i64 %indvars.iv1582 to i32
  br label %for.inc884

for.body818.lr.ph:                                ; preds = %for.body803
  %313 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx809 = getelementptr inbounds i32* %313, i64 %indvars.iv1582
  %314 = load i32* %arrayidx809, align 4, !tbaa !3
  %call810 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %314) #5
  %mul811 = shl nsw i32 %314, 1
  %idx.ext812 = sext i32 %mul811 to i64
  call void @DVzero(i32 %mul782, double* %call783) #5
  br label %for.body818

for.body818:                                      ; preds = %for.body818, %for.body818.lr.ph
  %indvars.iv1572 = phi i64 [ 0, %for.body818.lr.ph ], [ %indvars.iv.next1573, %for.body818 ]
  %arrayidx820 = getelementptr inbounds i32* %indUT0.01523, i64 %indvars.iv1572
  %315 = load i32* %arrayidx820, align 4, !tbaa !3
  %mul821 = shl nsw i32 %315, 1
  %add8221360 = or i32 %mul821, 1
  %316 = trunc i64 %indvars.iv1572 to i32
  %mul823 = shl nsw i32 %316, 1
  %idxprom824 = sext i32 %mul823 to i64
  %arrayidx825 = getelementptr inbounds double* %rowUT0774.01520, i64 %idxprom824
  %317 = load double* %arrayidx825, align 8, !tbaa !4
  %idxprom826 = sext i32 %mul821 to i64
  %add.ptr786.sum = add i64 %idxprom826, %idx.ext785
  %arrayidx827 = getelementptr inbounds double* %call783, i64 %add.ptr786.sum
  store double %317, double* %arrayidx827, align 8, !tbaa !4
  %add8291361 = or i32 %mul823, 1
  %idxprom830 = sext i32 %add8291361 to i64
  %arrayidx831 = getelementptr inbounds double* %rowUT0774.01520, i64 %idxprom830
  %318 = load double* %arrayidx831, align 8, !tbaa !4
  %idxprom832 = sext i32 %add8221360 to i64
  %add.ptr786.sum1362 = add i64 %idxprom832, %idx.ext785
  %arrayidx833 = getelementptr inbounds double* %call783, i64 %add.ptr786.sum1362
  store double %318, double* %arrayidx833, align 8, !tbaa !4
  %indvars.iv.next1573 = add i64 %indvars.iv1572, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1573 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %312
  br i1 %exitcond, label %for.end836, label %for.body818

for.end836:                                       ; preds = %for.body818
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call783, double* %add.ptr786) #5
  br i1 %cmp8381513, label %for.body839, label %for.cond852.loopexit

for.body839:                                      ; preds = %for.end836, %for.body839
  %indvars.iv1574 = phi i64 [ %indvars.iv.next1575, %for.body839 ], [ 0, %for.end836 ]
  %319 = trunc i64 %indvars.iv1574 to i32
  %mul840 = shl nsw i32 %319, 1
  %add8411359 = or i32 %mul840, 1
  %idxprom842 = sext i32 %add8411359 to i64
  %arrayidx843 = getelementptr inbounds double* %call783, i64 %idxprom842
  %320 = load double* %arrayidx843, align 8, !tbaa !4
  %sub844 = fsub double -0.000000e+00, %320
  store double %sub844, double* %arrayidx843, align 8, !tbaa !4
  %indvars.iv.next1575 = add i64 %indvars.iv1574, 1
  %lftr.wideiv1576 = trunc i64 %indvars.iv.next1575 to i32
  %exitcond1577 = icmp eq i32 %lftr.wideiv1576, %301
  br i1 %exitcond1577, label %for.cond852.loopexit, label %for.body839

for.cond852.loopexit:                             ; preds = %for.body839, %for.end836
  %321 = load i32* %ncolU, align 4, !tbaa !3
  %322 = trunc i64 %indvars.iv1582 to i32
  %cmp8531515 = icmp slt i32 %322, %321
  br i1 %cmp8531515, label %for.body854, label %for.end877

for.body854:                                      ; preds = %for.inc875, %for.cond852.loopexit
  %323 = phi i32 [ %321, %for.cond852.loopexit ], [ %332, %for.inc875 ]
  %indvars.iv1580 = phi i64 [ %indvars.iv1582, %for.cond852.loopexit ], [ %indvars.iv.next1581, %for.inc875 ]
  %indU0.01518 = phi i32* [ %indUT0.01523, %for.cond852.loopexit ], [ %indU0.1, %for.inc875 ]
  %colU0772.01516 = phi double* [ %rowUT0774.01520, %for.cond852.loopexit ], [ %colU0772.1, %for.inc875 ]
  %324 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx856 = getelementptr inbounds i32* %324, i64 %indvars.iv1580
  %325 = load i32* %arrayidx856, align 4, !tbaa !3
  %cmp857 = icmp sgt i32 %325, 0
  br i1 %cmp857, label %if.then858, label %for.inc875

if.then858:                                       ; preds = %for.body854
  call void @ZVdotiU(i32 %325, double* %call783, i32* %indU0.01518, double* %colU0772.01516, double* %rsum770, double* %isum769) #5
  %326 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx860 = getelementptr inbounds i32* %326, i64 %indvars.iv1580
  %327 = load i32* %arrayidx860, align 4, !tbaa !3
  %mul861 = shl nsw i32 %327, 1
  %328 = load double* %rsum770, align 8, !tbaa !4
  %idxprom862 = sext i32 %mul861 to i64
  %add.ptr814.sum = sub i64 %idxprom862, %idx.ext812
  %arrayidx863 = getelementptr inbounds double* %call810, i64 %add.ptr814.sum
  %329 = load double* %arrayidx863, align 8, !tbaa !4
  %sub864 = fsub double %329, %328
  store double %sub864, double* %arrayidx863, align 8, !tbaa !4
  %330 = load double* %isum769, align 8, !tbaa !4
  %add8651357 = or i32 %mul861, 1
  %idxprom866 = sext i32 %add8651357 to i64
  %add.ptr814.sum1358 = sub i64 %idxprom866, %idx.ext812
  %arrayidx867 = getelementptr inbounds double* %call810, i64 %add.ptr814.sum1358
  %331 = load double* %arrayidx867, align 8, !tbaa !4
  %sub868 = fsub double %331, %330
  store double %sub868, double* %arrayidx867, align 8, !tbaa !4
  %mul869 = shl nsw i32 %325, 1
  %idx.ext870 = sext i32 %mul869 to i64
  %add.ptr871 = getelementptr inbounds double* %colU0772.01516, i64 %idx.ext870
  %idx.ext872 = sext i32 %325 to i64
  %add.ptr873 = getelementptr inbounds i32* %indU0.01518, i64 %idx.ext872
  %.pre = load i32* %ncolU, align 4, !tbaa !3
  br label %for.inc875

for.inc875:                                       ; preds = %for.body854, %if.then858
  %332 = phi i32 [ %.pre, %if.then858 ], [ %323, %for.body854 ]
  %colU0772.1 = phi double* [ %add.ptr871, %if.then858 ], [ %colU0772.01516, %for.body854 ]
  %indU0.1 = phi i32* [ %add.ptr873, %if.then858 ], [ %indU0.01518, %for.body854 ]
  %indvars.iv.next1581 = add i64 %indvars.iv1580, 1
  %333 = trunc i64 %indvars.iv.next1581 to i32
  %cmp853 = icmp slt i32 %333, %332
  br i1 %cmp853, label %for.body854, label %for.end877

for.end877:                                       ; preds = %for.inc875, %for.cond852.loopexit
  %mul878 = shl nsw i32 %312, 1
  %idx.ext879 = sext i32 %mul878 to i64
  %add.ptr880 = getelementptr inbounds double* %rowUT0774.01520, i64 %idx.ext879
  %idx.ext881 = sext i32 %312 to i64
  %add.ptr882 = getelementptr inbounds i32* %indUT0.01523, i64 %idx.ext881
  br label %for.inc884

for.inc884:                                       ; preds = %for.body803.for.inc884_crit_edge, %for.end877
  %.pre-phi = phi i32 [ %.pre1600, %for.body803.for.inc884_crit_edge ], [ %322, %for.end877 ]
  %rowUT0774.1 = phi double* [ %rowUT0774.01520, %for.body803.for.inc884_crit_edge ], [ %add.ptr880, %for.end877 ]
  %indUT0.1 = phi i32* [ %indUT0.01523, %for.body803.for.inc884_crit_edge ], [ %add.ptr882, %for.end877 ]
  %cmp802 = icmp slt i32 %.pre-phi, %lastInU.0.lcssa1601
  br i1 %cmp802, label %for.inc884.for.body803_crit_edge, label %for.cond891.preheader

for.inc884.for.body803_crit_edge:                 ; preds = %for.inc884
  %indvars.iv.next1583 = add i64 %indvars.iv1582, 1
  br label %for.body803

if.else887:                                       ; preds = %for.end57
  %334 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call888 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([83 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

for.body893:                                      ; preds = %for.body893.lr.ph, %for.body893
  %indvars.iv = phi i64 [ %310, %for.body893.lr.ph ], [ %indvars.iv.next, %for.body893 ]
  %arrayidx895 = getelementptr inbounds i32* %308, i64 %indvars.iv
  %335 = load i32* %arrayidx895, align 4, !tbaa !3
  %idxprom896 = sext i32 %335 to i64
  %arrayidx897 = getelementptr inbounds i32* %309, i64 %idxprom896
  %336 = load i32* %arrayidx897, align 4, !tbaa !3
  store i32 %336, i32* %arrayidx895, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %337 = load i32* %ncolU, align 4, !tbaa !3
  %338 = trunc i64 %indvars.iv.next to i32
  %cmp892 = icmp slt i32 %338, %337
  br i1 %cmp892, label %for.body893, label %return

return:                                           ; preds = %for.cond891.preheader, %for.body893, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare double* @Chv_diagLocation(%struct._Chv*, i32) #3

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: optsize
declare void @SubMtx_scale3vec(%struct._SubMtx*, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU(i32, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU33(i32, double*, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU32(i32, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU31(i32, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @SubMtx_scale2vec(%struct._SubMtx*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU23(i32, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU22(i32, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU21(i32, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @SubMtx_scale1vec(%struct._SubMtx*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU13(i32, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU12(i32, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @ZVdotU11(i32, double*, double*, double*) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @ZVdotiU(i32, double*, i32*, double*, double*, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_updateS(%struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #0 {
entry:
  %ncolT = alloca i32, align 4
  %ncolU = alloca i32, align 4
  %colindT = alloca i32*, align 8
  %colindU = alloca i32*, align 8
  %sums = alloca [9 x double], align 16
  %entU = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %nrowU = alloca i32, align 4
  %entU467 = alloca double*, align 8
  %nentU = alloca i32, align 4
  %indU = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %isum = alloca double, align 8
  %rsum = alloca double, align 8
  %sums558 = alloca [18 x double], align 16
  %entU565 = alloca double*, align 8
  %inc1575 = alloca i32, align 4
  %inc2576 = alloca i32, align 4
  %nrowU581 = alloca i32, align 4
  %isum1255 = alloca double, align 8
  %rsum1256 = alloca double, align 8
  %entU1259 = alloca double*, align 8
  %nentU1267 = alloca i32, align 4
  %indU1272 = alloca i32*, align 8
  %sizes1275 = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chvT, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxD, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._SubMtx* %mtxU, null
  %or.cond2256 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._DV* %tempDV, null
  %or.cond2257 = or i1 %or.cond2256, %cmp5
  br i1 %or.cond2257, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else27 [
    i32 1, label %if.then7
    i32 2, label %if.then18
  ]

if.then7:                                         ; preds = %if.end
  %type8 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0
  %2 = load i32* %type8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %2, 1
  br i1 %cmp9, label %lor.lhs.false10, label %if.then13

lor.lhs.false10:                                  ; preds = %if.then7
  %type11 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0
  %3 = load i32* %type11, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %3, 1
  br i1 %cmp12, label %if.end30, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false10, %if.then7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([87 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.then18:                                        ; preds = %if.end
  %type19 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0
  %5 = load i32* %type19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %5, 2
  br i1 %cmp20, label %lor.lhs.false21, label %if.then24

lor.lhs.false21:                                  ; preds = %if.then18
  %type22 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0
  %6 = load i32* %type22, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %6, 2
  br i1 %cmp23, label %if.end30, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21, %if.then18
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([90 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.else27:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end30:                                         ; preds = %lor.lhs.false21, %lor.lhs.false10
  call void @Chv_columnIndices(%struct._Chv* %chvT, i32* %ncolT, i32** %colindT) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxU, i32* %ncolU, i32** %colindU) #5
  %9 = load i32** %colindT, align 8, !tbaa !0
  %10 = load i32* %9, align 4, !tbaa !3
  %nD = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 1
  %11 = load i32* %nD, align 4, !tbaa !3
  %sub = add nsw i32 %11, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx31 = getelementptr inbounds i32* %9, i64 %idxprom
  %12 = load i32* %arrayidx31, align 4, !tbaa !3
  %13 = load i32* %ncolU, align 4, !tbaa !3
  %cmp322362 = icmp sgt i32 %13, 0
  br i1 %cmp322362, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %14 = load i32** %colindU, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %15 = trunc i64 %indvars.iv.next2456 to i32
  %cmp32 = icmp slt i32 %15, %13
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv2455 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next2456, %for.cond ]
  %jcolU.02363 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx34 = getelementptr inbounds i32* %14, i64 %indvars.iv2455
  %16 = load i32* %arrayidx34, align 4, !tbaa !3
  %cmp35 = icmp sgt i32 %10, %16
  %cmp38 = icmp sgt i32 %16, %12
  %or.cond2258 = or i1 %cmp35, %cmp38
  %indvars.iv.next2456 = add i64 %indvars.iv2455, 1
  %inc = add nsw i32 %jcolU.02363, 1
  br i1 %or.cond2258, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body, %if.end30
  %jcolU.0.lcssa = phi i32 [ 0, %if.end30 ], [ %jcolU.02363, %for.body ], [ %inc, %for.cond ]
  %cmp41 = icmp eq i32 %jcolU.0.lcssa, %13
  br i1 %cmp41, label %return, label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %for.end
  %cmp452357 = icmp slt i32 %jcolU.0.lcssa, %13
  br i1 %cmp452357, label %for.body46.lr.ph, label %for.end69

for.body46.lr.ph:                                 ; preds = %for.cond44.preheader
  %17 = load i32** %colindU, align 8, !tbaa !0
  %18 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body46

for.cond44:                                       ; preds = %for.body46
  %inc54 = add nsw i32 %jcolU.12359, 1
  %19 = trunc i64 %indvars.iv.next2452 to i32
  %cmp45 = icmp slt i32 %19, %13
  %20 = trunc i64 %indvars.iv2451 to i32
  br i1 %cmp45, label %for.body46, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.cond44, %for.body46
  %lastInU.0.lcssa = phi i32 [ %lastInU.02358, %for.body46 ], [ %jcolU.12359, %for.cond44 ]
  br i1 %cmp452357, label %while.cond.preheader.lr.ph, label %for.end69

while.cond.preheader.lr.ph:                       ; preds = %for.cond56.preheader
  %21 = load i32** %colindU, align 8, !tbaa !0
  %22 = sext i32 %jcolU.0.lcssa to i64
  br label %while.cond.preheader

for.body46:                                       ; preds = %for.body46.lr.ph, %for.cond44
  %indvars.iv2451 = phi i64 [ %18, %for.body46.lr.ph ], [ %indvars.iv.next2452, %for.cond44 ]
  %jcolU.12359 = phi i32 [ %jcolU.0.lcssa, %for.body46.lr.ph ], [ %inc54, %for.cond44 ]
  %lastInU.02358 = phi i32 [ %jcolU.0.lcssa, %for.body46.lr.ph ], [ %20, %for.cond44 ]
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv2451
  %23 = load i32* %arrayidx48, align 4, !tbaa !3
  %cmp49 = icmp sgt i32 %23, %12
  %indvars.iv.next2452 = add i64 %indvars.iv2451, 1
  br i1 %cmp49, label %for.cond56.preheader, label %for.cond44

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv2447 = phi i64 [ %22, %while.cond.preheader.lr.ph ], [ %indvars.iv.next2448, %while.end ]
  %jcolT.02356 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jcolT.1, %while.end ]
  %arrayidx60 = getelementptr inbounds i32* %21, i64 %indvars.iv2447
  %24 = load i32* %arrayidx60, align 4, !tbaa !3
  %25 = sext i32 %jcolT.02356 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %indvars.iv2445 = phi i64 [ %indvars.iv.next2446, %while.cond ], [ %25, %while.cond.preheader ]
  %jcolT.1 = phi i32 [ %inc64, %while.cond ], [ %jcolT.02356, %while.cond.preheader ]
  %arrayidx62 = getelementptr inbounds i32* %9, i64 %indvars.iv2445
  %26 = load i32* %arrayidx62, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %24, %26
  %indvars.iv.next2446 = add i64 %indvars.iv2445, 1
  %inc64 = add nsw i32 %jcolT.1, 1
  br i1 %cmp63, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %jcolT.1, i32* %arrayidx60, align 4, !tbaa !3
  %indvars.iv.next2448 = add i64 %indvars.iv2447, 1
  %27 = load i32* %ncolU, align 4, !tbaa !3
  %28 = trunc i64 %indvars.iv.next2448 to i32
  %cmp57 = icmp slt i32 %28, %27
  br i1 %cmp57, label %while.cond.preheader, label %for.end69

for.end69:                                        ; preds = %for.cond44.preheader, %while.end, %for.cond56.preheader
  %lastInU.0.lcssa2461 = phi i32 [ %lastInU.0.lcssa, %for.cond56.preheader ], [ %lastInU.0.lcssa, %while.end ], [ %jcolU.0.lcssa, %for.cond44.preheader ]
  %29 = load i32* %type, align 4, !tbaa !3
  switch i32 %29, label %for.cond1373.preheader [
    i32 1, label %if.then72
    i32 2, label %if.then554
  ]

if.then72:                                        ; preds = %for.end69
  %mode = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1
  %30 = load i32* %mode, align 4, !tbaa !3
  switch i32 %30, label %if.else547 [
    i32 1, label %if.then74
    i32 3, label %if.then464
  ]

if.then74:                                        ; preds = %if.then72
  %31 = bitcast [9 x double]* %sums to i8*
  call void @llvm.lifetime.start(i64 72, i8* %31) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU, i32* %ncolU, i32* %inc1, i32* %inc2, double** %entU) #5
  %32 = load i32* %nrowU, align 4, !tbaa !3
  %mul = mul nsw i32 %32, 3
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul) #5
  %call75 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %33 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds double* %call75, i64 %idx.ext
  %add.ptr.sum = shl nsw i64 %idx.ext, 1
  %add.ptr77 = getelementptr inbounds double* %call75, i64 %add.ptr.sum
  %34 = load double** %entU, align 8, !tbaa !0
  %mul78 = mul nsw i32 %33, %jcolU.0.lcssa
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds double* %34, i64 %idx.ext79
  %sub82 = add nsw i32 %lastInU.0.lcssa2461, -2
  %cmp832286 = icmp sgt i32 %jcolU.0.lcssa, %sub82
  br i1 %cmp832286, label %for.end252, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %if.then74
  %arraydecay197 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  %arrayidx207 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %arrayidx211 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %arrayidx215 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3
  %arrayidx219 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4
  %arrayidx223 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5
  %arrayidx175 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 6
  %arrayidx179 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 7
  %arrayidx183 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 8
  %35 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body84

for.body84:                                       ; preds = %if.end247, %for.body84.lr.ph
  %36 = phi i32 [ %33, %for.body84.lr.ph ], [ %112, %if.end247 ]
  %indvars.iv2388 = phi i64 [ %35, %for.body84.lr.ph ], [ %indvars.iv.next2389, %if.end247 ]
  %indvars.iv2381.in = phi i64 [ %35, %for.body84.lr.ph ], [ %indvars.iv2381, %if.end247 ]
  %rowUT0.02288 = phi double* [ %add.ptr80, %for.body84.lr.ph ], [ %add.ptr249, %if.end247 ]
  %irowUT.02287 = phi i32 [ %jcolU.0.lcssa, %for.body84.lr.ph ], [ %add134, %if.end247 ]
  %indvars.iv2381 = add i64 %indvars.iv2381.in, 3
  %idx.ext85 = sext i32 %36 to i64
  %add.ptr86 = getelementptr inbounds double* %rowUT0.02288, i64 %idx.ext85
  %add.ptr86.sum = shl nsw i64 %idx.ext85, 1
  %add.ptr88 = getelementptr inbounds double* %rowUT0.02288, i64 %add.ptr86.sum
  %37 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %37, i64 %indvars.iv2388
  %38 = load i32* %arrayidx90, align 4, !tbaa !3
  %call91 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %38) #5
  %idx.ext92 = sext i32 %38 to i64
  %39 = add nsw i64 %indvars.iv2388, 1
  %40 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i32* %40, i64 %39
  %41 = load i32* %arrayidx95, align 4, !tbaa !3
  %call96 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %41) #5
  %idx.ext97 = sext i32 %41 to i64
  %42 = add nsw i64 %indvars.iv2388, 2
  %43 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i32* %43, i64 %42
  %44 = load i32* %arrayidx102, align 4, !tbaa !3
  %call103 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %44) #5
  %idx.ext104 = sext i32 %44 to i64
  %45 = load i32* %nrowU, align 4, !tbaa !3
  %mul107 = mul nsw i32 %45, 3
  call void @DVzero(i32 %mul107, double* %call75) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call75, double* %add.ptr, double* %add.ptr77, double* %rowUT0.02288, double* %add.ptr86, double* %add.ptr88) #5
  %46 = load i32* %nrowU, align 4, !tbaa !3
  %call108 = call double @DVdot(i32 %46, double* %call75, double* %rowUT0.02288) #5
  %47 = load double* %call91, align 8, !tbaa !4
  %sub111 = fsub double %47, %call108
  store double %sub111, double* %call91, align 8, !tbaa !4
  %48 = load i32* %nrowU, align 4, !tbaa !3
  %call112 = call double @DVdot(i32 %48, double* %call75, double* %add.ptr86) #5
  %add.ptr93.sum = sub i64 %idx.ext97, %idx.ext92
  %arrayidx114 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum
  %49 = load double* %arrayidx114, align 8, !tbaa !4
  %sub115 = fsub double %49, %call112
  store double %sub115, double* %arrayidx114, align 8, !tbaa !4
  %50 = load i32* %nrowU, align 4, !tbaa !3
  %call116 = call double @DVdot(i32 %50, double* %call75, double* %add.ptr88) #5
  %add.ptr93.sum2237 = sub i64 %idx.ext104, %idx.ext92
  %arrayidx118 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2237
  %51 = load double* %arrayidx118, align 8, !tbaa !4
  %sub119 = fsub double %51, %call116
  store double %sub119, double* %arrayidx118, align 8, !tbaa !4
  %52 = load i32* %nrowU, align 4, !tbaa !3
  %call120 = call double @DVdot(i32 %52, double* %add.ptr, double* %add.ptr86) #5
  %53 = load double* %call96, align 8, !tbaa !4
  %sub123 = fsub double %53, %call120
  store double %sub123, double* %call96, align 8, !tbaa !4
  %54 = load i32* %nrowU, align 4, !tbaa !3
  %call124 = call double @DVdot(i32 %54, double* %add.ptr, double* %add.ptr88) #5
  %add.ptr99.sum = sub i64 %idx.ext104, %idx.ext97
  %arrayidx126 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum
  %55 = load double* %arrayidx126, align 8, !tbaa !4
  %sub127 = fsub double %55, %call124
  store double %sub127, double* %arrayidx126, align 8, !tbaa !4
  %56 = load i32* %nrowU, align 4, !tbaa !3
  %call128 = call double @DVdot(i32 %56, double* %add.ptr77, double* %add.ptr88) #5
  %57 = load double* %call103, align 8, !tbaa !4
  %sub131 = fsub double %57, %call128
  store double %sub131, double* %call103, align 8, !tbaa !4
  %58 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext132 = sext i32 %58 to i64
  %add.ptr88.sum = add i64 %idx.ext132, %add.ptr86.sum
  %add.ptr133 = getelementptr inbounds double* %rowUT0.02288, i64 %add.ptr88.sum
  %indvars.iv.next2389 = add i64 %indvars.iv2388, 3
  %add134 = add nsw i32 %irowUT.02287, 3
  %59 = load i32* %ncolU, align 4, !tbaa !3
  %sub1362278 = add nsw i32 %59, -2
  %60 = trunc i64 %indvars.iv.next2389 to i32
  %cmp1372279 = icmp slt i32 %60, %sub1362278
  br i1 %cmp1372279, label %for.body138, label %for.end191

for.body138:                                      ; preds = %for.body84, %for.body138
  %61 = phi i32 [ %86, %for.body138 ], [ %58, %for.body84 ]
  %indvars.iv2383 = phi i64 [ %indvars.iv.next2384, %for.body138 ], [ %indvars.iv2381, %for.body84 ]
  %jcolU.32281 = phi i32 [ %add190, %for.body138 ], [ %add134, %for.body84 ]
  %colU0.02280 = phi double* [ %add.ptr188, %for.body138 ], [ %add.ptr133, %for.body84 ]
  %idx.ext139 = sext i32 %61 to i64
  %add.ptr140 = getelementptr inbounds double* %colU0.02280, i64 %idx.ext139
  %add.ptr140.sum = shl nsw i64 %idx.ext139, 1
  %add.ptr142 = getelementptr inbounds double* %colU0.02280, i64 %add.ptr140.sum
  call void @DVdot33(i32 %61, double* %call75, double* %add.ptr, double* %add.ptr77, double* %colU0.02280, double* %add.ptr140, double* %add.ptr142, double* %arraydecay197) #5
  %62 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i32* %62, i64 %indvars.iv2383
  %63 = load i32* %arrayidx144, align 4, !tbaa !3
  %64 = add nsw i64 %indvars.iv2383, 1
  %arrayidx147 = getelementptr inbounds i32* %62, i64 %64
  %65 = load i32* %arrayidx147, align 4, !tbaa !3
  %66 = add nsw i64 %indvars.iv2383, 2
  %arrayidx150 = getelementptr inbounds i32* %62, i64 %66
  %67 = load i32* %arrayidx150, align 4, !tbaa !3
  %68 = load double* %arraydecay197, align 16, !tbaa !4
  %idxprom152 = sext i32 %63 to i64
  %add.ptr93.sum2247 = sub i64 %idxprom152, %idx.ext92
  %arrayidx153 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2247
  %69 = load double* %arrayidx153, align 8, !tbaa !4
  %sub154 = fsub double %69, %68
  store double %sub154, double* %arrayidx153, align 8, !tbaa !4
  %70 = load double* %arrayidx207, align 8, !tbaa !4
  %idxprom156 = sext i32 %65 to i64
  %add.ptr93.sum2248 = sub i64 %idxprom156, %idx.ext92
  %arrayidx157 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2248
  %71 = load double* %arrayidx157, align 8, !tbaa !4
  %sub158 = fsub double %71, %70
  store double %sub158, double* %arrayidx157, align 8, !tbaa !4
  %72 = load double* %arrayidx211, align 16, !tbaa !4
  %idxprom160 = sext i32 %67 to i64
  %add.ptr93.sum2249 = sub i64 %idxprom160, %idx.ext92
  %arrayidx161 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2249
  %73 = load double* %arrayidx161, align 8, !tbaa !4
  %sub162 = fsub double %73, %72
  store double %sub162, double* %arrayidx161, align 8, !tbaa !4
  %74 = load double* %arrayidx215, align 8, !tbaa !4
  %add.ptr99.sum2250 = sub i64 %idxprom152, %idx.ext97
  %arrayidx165 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2250
  %75 = load double* %arrayidx165, align 8, !tbaa !4
  %sub166 = fsub double %75, %74
  store double %sub166, double* %arrayidx165, align 8, !tbaa !4
  %76 = load double* %arrayidx219, align 16, !tbaa !4
  %add.ptr99.sum2251 = sub i64 %idxprom156, %idx.ext97
  %arrayidx169 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2251
  %77 = load double* %arrayidx169, align 8, !tbaa !4
  %sub170 = fsub double %77, %76
  store double %sub170, double* %arrayidx169, align 8, !tbaa !4
  %78 = load double* %arrayidx223, align 8, !tbaa !4
  %add.ptr99.sum2252 = sub i64 %idxprom160, %idx.ext97
  %arrayidx173 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2252
  %79 = load double* %arrayidx173, align 8, !tbaa !4
  %sub174 = fsub double %79, %78
  store double %sub174, double* %arrayidx173, align 8, !tbaa !4
  %80 = load double* %arrayidx175, align 16, !tbaa !4
  %add.ptr106.sum2253 = sub i64 %idxprom152, %idx.ext104
  %arrayidx177 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2253
  %81 = load double* %arrayidx177, align 8, !tbaa !4
  %sub178 = fsub double %81, %80
  store double %sub178, double* %arrayidx177, align 8, !tbaa !4
  %82 = load double* %arrayidx179, align 8, !tbaa !4
  %add.ptr106.sum2254 = sub i64 %idxprom156, %idx.ext104
  %arrayidx181 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2254
  %83 = load double* %arrayidx181, align 8, !tbaa !4
  %sub182 = fsub double %83, %82
  store double %sub182, double* %arrayidx181, align 8, !tbaa !4
  %84 = load double* %arrayidx183, align 16, !tbaa !4
  %add.ptr106.sum2255 = sub i64 %idxprom160, %idx.ext104
  %arrayidx185 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2255
  %85 = load double* %arrayidx185, align 8, !tbaa !4
  %sub186 = fsub double %85, %84
  store double %sub186, double* %arrayidx185, align 8, !tbaa !4
  %86 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext187 = sext i32 %86 to i64
  %add.ptr142.sum = add i64 %idx.ext187, %add.ptr140.sum
  %add.ptr188 = getelementptr inbounds double* %colU0.02280, i64 %add.ptr142.sum
  %add190 = add nsw i32 %jcolU.32281, 3
  %87 = load i32* %ncolU, align 4, !tbaa !3
  %sub136 = add nsw i32 %87, -2
  %cmp137 = icmp slt i32 %add190, %sub136
  %indvars.iv.next2384 = add i64 %indvars.iv2383, 3
  br i1 %cmp137, label %for.body138, label %for.end191

for.end191:                                       ; preds = %for.body138, %for.body84
  %88 = phi i32 [ %58, %for.body84 ], [ %86, %for.body138 ]
  %sub136.lcssa = phi i32 [ %sub1362278, %for.body84 ], [ %sub136, %for.body138 ]
  %.lcssa2277 = phi i32 [ %59, %for.body84 ], [ %87, %for.body138 ]
  %jcolU.3.lcssa = phi i32 [ %60, %for.body84 ], [ %add190, %for.body138 ]
  %colU0.0.lcssa = phi double* [ %add.ptr133, %for.body84 ], [ %add.ptr188, %for.body138 ]
  %cmp193 = icmp eq i32 %jcolU.3.lcssa, %sub136.lcssa
  br i1 %cmp193, label %if.then194, label %if.else227

if.then194:                                       ; preds = %for.end191
  %idx.ext195 = sext i32 %88 to i64
  %add.ptr196 = getelementptr inbounds double* %colU0.0.lcssa, i64 %idx.ext195
  call void @DVdot32(i32 %88, double* %call75, double* %add.ptr, double* %add.ptr77, double* %colU0.0.lcssa, double* %add.ptr196, double* %arraydecay197) #5
  %idxprom198 = sext i32 %sub136.lcssa to i64
  %89 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx199 = getelementptr inbounds i32* %89, i64 %idxprom198
  %90 = load i32* %arrayidx199, align 4, !tbaa !3
  %add200 = add nsw i32 %sub136.lcssa, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds i32* %89, i64 %idxprom201
  %91 = load i32* %arrayidx202, align 4, !tbaa !3
  %92 = load double* %arraydecay197, align 16, !tbaa !4
  %idxprom204 = sext i32 %90 to i64
  %add.ptr93.sum2241 = sub i64 %idxprom204, %idx.ext92
  %arrayidx205 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2241
  %93 = load double* %arrayidx205, align 8, !tbaa !4
  %sub206 = fsub double %93, %92
  store double %sub206, double* %arrayidx205, align 8, !tbaa !4
  %94 = load double* %arrayidx207, align 8, !tbaa !4
  %idxprom208 = sext i32 %91 to i64
  %add.ptr93.sum2242 = sub i64 %idxprom208, %idx.ext92
  %arrayidx209 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2242
  %95 = load double* %arrayidx209, align 8, !tbaa !4
  %sub210 = fsub double %95, %94
  store double %sub210, double* %arrayidx209, align 8, !tbaa !4
  %96 = load double* %arrayidx211, align 16, !tbaa !4
  %add.ptr99.sum2243 = sub i64 %idxprom204, %idx.ext97
  %arrayidx213 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2243
  %97 = load double* %arrayidx213, align 8, !tbaa !4
  %sub214 = fsub double %97, %96
  store double %sub214, double* %arrayidx213, align 8, !tbaa !4
  %98 = load double* %arrayidx215, align 8, !tbaa !4
  %add.ptr99.sum2244 = sub i64 %idxprom208, %idx.ext97
  %arrayidx217 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2244
  %99 = load double* %arrayidx217, align 8, !tbaa !4
  %sub218 = fsub double %99, %98
  store double %sub218, double* %arrayidx217, align 8, !tbaa !4
  %100 = load double* %arrayidx219, align 16, !tbaa !4
  %add.ptr106.sum2245 = sub i64 %idxprom204, %idx.ext104
  %arrayidx221 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2245
  %101 = load double* %arrayidx221, align 8, !tbaa !4
  %sub222 = fsub double %101, %100
  store double %sub222, double* %arrayidx221, align 8, !tbaa !4
  %102 = load double* %arrayidx223, align 8, !tbaa !4
  %add.ptr106.sum2246 = sub i64 %idxprom208, %idx.ext104
  %arrayidx225 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2246
  %103 = load double* %arrayidx225, align 8, !tbaa !4
  %sub226 = fsub double %103, %102
  store double %sub226, double* %arrayidx225, align 8, !tbaa !4
  br label %if.end247

if.else227:                                       ; preds = %for.end191
  %sub228 = add nsw i32 %.lcssa2277, -1
  %cmp229 = icmp eq i32 %jcolU.3.lcssa, %sub228
  br i1 %cmp229, label %if.then230, label %if.end247

if.then230:                                       ; preds = %if.else227
  call void @DVdot31(i32 %88, double* %call75, double* %add.ptr, double* %add.ptr77, double* %colU0.0.lcssa, double* %arraydecay197) #5
  %idxprom232 = sext i32 %jcolU.3.lcssa to i64
  %104 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %104, i64 %idxprom232
  %105 = load i32* %arrayidx233, align 4, !tbaa !3
  %106 = load double* %arraydecay197, align 16, !tbaa !4
  %idxprom235 = sext i32 %105 to i64
  %add.ptr93.sum2239 = sub i64 %idxprom235, %idx.ext92
  %arrayidx236 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2239
  %107 = load double* %arrayidx236, align 8, !tbaa !4
  %sub237 = fsub double %107, %106
  store double %sub237, double* %arrayidx236, align 8, !tbaa !4
  %108 = load double* %arrayidx207, align 8, !tbaa !4
  %add.ptr99.sum2240 = sub i64 %idxprom235, %idx.ext97
  %arrayidx240 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2240
  %109 = load double* %arrayidx240, align 8, !tbaa !4
  %sub241 = fsub double %109, %108
  store double %sub241, double* %arrayidx240, align 8, !tbaa !4
  %110 = load double* %arrayidx211, align 16, !tbaa !4
  %add.ptr106.sum = sub i64 %idxprom235, %idx.ext104
  %arrayidx244 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum
  %111 = load double* %arrayidx244, align 8, !tbaa !4
  %sub245 = fsub double %111, %110
  store double %sub245, double* %arrayidx244, align 8, !tbaa !4
  br label %if.end247

if.end247:                                        ; preds = %if.else227, %if.then230, %if.then194
  %112 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext248 = sext i32 %112 to i64
  %add.ptr88.sum2238 = add i64 %idx.ext248, %add.ptr86.sum
  %add.ptr249 = getelementptr inbounds double* %rowUT0.02288, i64 %add.ptr88.sum2238
  %cmp83 = icmp sgt i32 %60, %sub82
  br i1 %cmp83, label %for.end252, label %for.body84

for.end252:                                       ; preds = %if.end247, %if.then74
  %113 = phi i32 [ %33, %if.then74 ], [ %112, %if.end247 ]
  %rowUT0.0.lcssa = phi double* [ %add.ptr80, %if.then74 ], [ %add.ptr249, %if.end247 ]
  %irowUT.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then74 ], [ %add134, %if.end247 ]
  %sub253 = add nsw i32 %lastInU.0.lcssa2461, -1
  %cmp254 = icmp eq i32 %irowUT.0.lcssa, %sub253
  br i1 %cmp254, label %if.then255, label %if.else377

if.then255:                                       ; preds = %for.end252
  %idx.ext256 = sext i32 %113 to i64
  %add.ptr257 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext256
  %idxprom258 = sext i32 %irowUT.0.lcssa to i64
  %114 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx259 = getelementptr inbounds i32* %114, i64 %idxprom258
  %115 = load i32* %arrayidx259, align 4, !tbaa !3
  %call260 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %115) #5
  %idx.ext261 = sext i32 %115 to i64
  %add264 = add nsw i32 %irowUT.0.lcssa, 1
  %idxprom265 = sext i32 %add264 to i64
  %116 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx266 = getelementptr inbounds i32* %116, i64 %idxprom265
  %117 = load i32* %arrayidx266, align 4, !tbaa !3
  %call267 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %117) #5
  %idx.ext268 = sext i32 %117 to i64
  %118 = load i32* %nrowU, align 4, !tbaa !3
  %mul271 = shl nsw i32 %118, 1
  call void @DVzero(i32 %mul271, double* %call75) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call75, double* %add.ptr, double* %rowUT0.0.lcssa, double* %add.ptr257) #5
  %119 = load i32* %nrowU, align 4, !tbaa !3
  %call272 = call double @DVdot(i32 %119, double* %call75, double* %rowUT0.0.lcssa) #5
  %120 = load double* %call260, align 8, !tbaa !4
  %sub275 = fsub double %120, %call272
  store double %sub275, double* %call260, align 8, !tbaa !4
  %121 = load i32* %nrowU, align 4, !tbaa !3
  %call276 = call double @DVdot(i32 %121, double* %call75, double* %add.ptr257) #5
  %add.ptr263.sum = sub i64 %idx.ext268, %idx.ext261
  %arrayidx278 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum
  %122 = load double* %arrayidx278, align 8, !tbaa !4
  %sub279 = fsub double %122, %call276
  store double %sub279, double* %arrayidx278, align 8, !tbaa !4
  %123 = load i32* %nrowU, align 4, !tbaa !3
  %call280 = call double @DVdot(i32 %123, double* %add.ptr, double* %add.ptr257) #5
  %124 = load double* %call267, align 8, !tbaa !4
  %sub283 = fsub double %124, %call280
  store double %sub283, double* %call267, align 8, !tbaa !4
  %125 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext284 = sext i32 %125 to i64
  %add.ptr257.sum = add i64 %idx.ext284, %idx.ext256
  %add.ptr285 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %add.ptr257.sum
  %add286 = add i32 %irowUT.0.lcssa, 2
  %126 = load i32* %ncolU, align 4, !tbaa !3
  %sub2882261 = add nsw i32 %126, -2
  %cmp2892262 = icmp slt i32 %add286, %sub2882261
  br i1 %cmp2892262, label %for.body290.lr.ph, label %for.end332

for.body290.lr.ph:                                ; preds = %if.then255
  %arraydecay295 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  %arrayidx308 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %arrayidx312 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %arrayidx316 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3
  %arrayidx320 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4
  %arrayidx324 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5
  %127 = sext i32 %add286 to i64
  br label %for.body290

for.body290:                                      ; preds = %for.body290.lr.ph, %for.body290
  %128 = phi i32 [ %125, %for.body290.lr.ph ], [ %147, %for.body290 ]
  %indvars.iv2367 = phi i64 [ %127, %for.body290.lr.ph ], [ %indvars.iv.next2368, %for.body290 ]
  %jcolU.42264 = phi i32 [ %add286, %for.body290.lr.ph ], [ %add331, %for.body290 ]
  %colU0.12263 = phi double* [ %add.ptr285, %for.body290.lr.ph ], [ %add.ptr329, %for.body290 ]
  %idx.ext291 = sext i32 %128 to i64
  %add.ptr292 = getelementptr inbounds double* %colU0.12263, i64 %idx.ext291
  %add.ptr292.sum = shl nsw i64 %idx.ext291, 1
  %add.ptr294 = getelementptr inbounds double* %colU0.12263, i64 %add.ptr292.sum
  call void @DVdot23(i32 %128, double* %call75, double* %add.ptr, double* %colU0.12263, double* %add.ptr292, double* %add.ptr294, double* %arraydecay295) #5
  %129 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx297 = getelementptr inbounds i32* %129, i64 %indvars.iv2367
  %130 = load i32* %arrayidx297, align 4, !tbaa !3
  %131 = add nsw i64 %indvars.iv2367, 1
  %arrayidx300 = getelementptr inbounds i32* %129, i64 %131
  %132 = load i32* %arrayidx300, align 4, !tbaa !3
  %133 = add nsw i64 %indvars.iv2367, 2
  %arrayidx303 = getelementptr inbounds i32* %129, i64 %133
  %134 = load i32* %arrayidx303, align 4, !tbaa !3
  %135 = load double* %arraydecay295, align 16, !tbaa !4
  %idxprom305 = sext i32 %130 to i64
  %add.ptr263.sum2231 = sub i64 %idxprom305, %idx.ext261
  %arrayidx306 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2231
  %136 = load double* %arrayidx306, align 8, !tbaa !4
  %sub307 = fsub double %136, %135
  store double %sub307, double* %arrayidx306, align 8, !tbaa !4
  %137 = load double* %arrayidx308, align 8, !tbaa !4
  %idxprom309 = sext i32 %132 to i64
  %add.ptr263.sum2232 = sub i64 %idxprom309, %idx.ext261
  %arrayidx310 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2232
  %138 = load double* %arrayidx310, align 8, !tbaa !4
  %sub311 = fsub double %138, %137
  store double %sub311, double* %arrayidx310, align 8, !tbaa !4
  %139 = load double* %arrayidx312, align 16, !tbaa !4
  %idxprom313 = sext i32 %134 to i64
  %add.ptr263.sum2233 = sub i64 %idxprom313, %idx.ext261
  %arrayidx314 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2233
  %140 = load double* %arrayidx314, align 8, !tbaa !4
  %sub315 = fsub double %140, %139
  store double %sub315, double* %arrayidx314, align 8, !tbaa !4
  %141 = load double* %arrayidx316, align 8, !tbaa !4
  %add.ptr270.sum2234 = sub i64 %idxprom305, %idx.ext268
  %arrayidx318 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2234
  %142 = load double* %arrayidx318, align 8, !tbaa !4
  %sub319 = fsub double %142, %141
  store double %sub319, double* %arrayidx318, align 8, !tbaa !4
  %143 = load double* %arrayidx320, align 16, !tbaa !4
  %add.ptr270.sum2235 = sub i64 %idxprom309, %idx.ext268
  %arrayidx322 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2235
  %144 = load double* %arrayidx322, align 8, !tbaa !4
  %sub323 = fsub double %144, %143
  store double %sub323, double* %arrayidx322, align 8, !tbaa !4
  %145 = load double* %arrayidx324, align 8, !tbaa !4
  %add.ptr270.sum2236 = sub i64 %idxprom313, %idx.ext268
  %arrayidx326 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2236
  %146 = load double* %arrayidx326, align 8, !tbaa !4
  %sub327 = fsub double %146, %145
  store double %sub327, double* %arrayidx326, align 8, !tbaa !4
  %147 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext328 = sext i32 %147 to i64
  %add.ptr294.sum = add i64 %idx.ext328, %add.ptr292.sum
  %add.ptr329 = getelementptr inbounds double* %colU0.12263, i64 %add.ptr294.sum
  %add331 = add nsw i32 %jcolU.42264, 3
  %148 = load i32* %ncolU, align 4, !tbaa !3
  %sub288 = add nsw i32 %148, -2
  %cmp289 = icmp slt i32 %add331, %sub288
  %indvars.iv.next2368 = add i64 %indvars.iv2367, 3
  br i1 %cmp289, label %for.body290, label %for.end332

for.end332:                                       ; preds = %for.body290, %if.then255
  %149 = phi i32 [ %125, %if.then255 ], [ %147, %for.body290 ]
  %sub288.lcssa = phi i32 [ %sub2882261, %if.then255 ], [ %sub288, %for.body290 ]
  %.lcssa = phi i32 [ %126, %if.then255 ], [ %148, %for.body290 ]
  %jcolU.4.lcssa = phi i32 [ %add286, %if.then255 ], [ %add331, %for.body290 ]
  %colU0.1.lcssa = phi double* [ %add.ptr285, %if.then255 ], [ %add.ptr329, %for.body290 ]
  %cmp334 = icmp eq i32 %jcolU.4.lcssa, %sub288.lcssa
  br i1 %cmp334, label %if.then335, label %if.else360

if.then335:                                       ; preds = %for.end332
  %idx.ext336 = sext i32 %149 to i64
  %add.ptr337 = getelementptr inbounds double* %colU0.1.lcssa, i64 %idx.ext336
  %arraydecay338 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  call void @DVdot22(i32 %149, double* %call75, double* %add.ptr, double* %colU0.1.lcssa, double* %add.ptr337, double* %arraydecay338) #5
  %idxprom339 = sext i32 %sub288.lcssa to i64
  %150 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx340 = getelementptr inbounds i32* %150, i64 %idxprom339
  %151 = load i32* %arrayidx340, align 4, !tbaa !3
  %add341 = add nsw i32 %sub288.lcssa, 1
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds i32* %150, i64 %idxprom342
  %152 = load i32* %arrayidx343, align 4, !tbaa !3
  %153 = load double* %arraydecay338, align 16, !tbaa !4
  %idxprom345 = sext i32 %151 to i64
  %add.ptr263.sum2227 = sub i64 %idxprom345, %idx.ext261
  %arrayidx346 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2227
  %154 = load double* %arrayidx346, align 8, !tbaa !4
  %sub347 = fsub double %154, %153
  store double %sub347, double* %arrayidx346, align 8, !tbaa !4
  %arrayidx348 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %155 = load double* %arrayidx348, align 8, !tbaa !4
  %idxprom349 = sext i32 %152 to i64
  %add.ptr263.sum2228 = sub i64 %idxprom349, %idx.ext261
  %arrayidx350 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2228
  %156 = load double* %arrayidx350, align 8, !tbaa !4
  %sub351 = fsub double %156, %155
  store double %sub351, double* %arrayidx350, align 8, !tbaa !4
  %arrayidx352 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %157 = load double* %arrayidx352, align 16, !tbaa !4
  %add.ptr270.sum2229 = sub i64 %idxprom345, %idx.ext268
  %arrayidx354 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2229
  %158 = load double* %arrayidx354, align 8, !tbaa !4
  %sub355 = fsub double %158, %157
  store double %sub355, double* %arrayidx354, align 8, !tbaa !4
  %arrayidx356 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3
  %159 = load double* %arrayidx356, align 8, !tbaa !4
  %add.ptr270.sum2230 = sub i64 %idxprom349, %idx.ext268
  %arrayidx358 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2230
  %160 = load double* %arrayidx358, align 8, !tbaa !4
  %sub359 = fsub double %160, %159
  store double %sub359, double* %arrayidx358, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.else360:                                       ; preds = %for.end332
  %sub361 = add nsw i32 %.lcssa, -1
  %cmp362 = icmp eq i32 %jcolU.4.lcssa, %sub361
  br i1 %cmp362, label %if.then363, label %for.cond1373.preheader

if.then363:                                       ; preds = %if.else360
  %arraydecay364 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  call void @DVdot21(i32 %149, double* %call75, double* %add.ptr, double* %colU0.1.lcssa, double* %arraydecay364) #5
  %idxprom365 = sext i32 %jcolU.4.lcssa to i64
  %161 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx366 = getelementptr inbounds i32* %161, i64 %idxprom365
  %162 = load i32* %arrayidx366, align 4, !tbaa !3
  %163 = load double* %arraydecay364, align 16, !tbaa !4
  %idxprom368 = sext i32 %162 to i64
  %add.ptr263.sum2226 = sub i64 %idxprom368, %idx.ext261
  %arrayidx369 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2226
  %164 = load double* %arrayidx369, align 8, !tbaa !4
  %sub370 = fsub double %164, %163
  store double %sub370, double* %arrayidx369, align 8, !tbaa !4
  %arrayidx371 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %165 = load double* %arrayidx371, align 8, !tbaa !4
  %add.ptr270.sum = sub i64 %idxprom368, %idx.ext268
  %arrayidx373 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum
  %166 = load double* %arrayidx373, align 8, !tbaa !4
  %sub374 = fsub double %166, %165
  store double %sub374, double* %arrayidx373, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.else377:                                       ; preds = %for.end252
  %cmp378 = icmp eq i32 %irowUT.0.lcssa, %lastInU.0.lcssa2461
  br i1 %cmp378, label %if.then379, label %for.cond1373.preheader

if.then379:                                       ; preds = %if.else377
  %idxprom380 = sext i32 %lastInU.0.lcssa2461 to i64
  %167 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i32* %167, i64 %idxprom380
  %168 = load i32* %arrayidx381, align 4, !tbaa !3
  %call382 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %168) #5
  %idx.ext383 = sext i32 %168 to i64
  %169 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVzero(i32 %169, double* %call75) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call75, double* %rowUT0.0.lcssa) #5
  %170 = load i32* %nrowU, align 4, !tbaa !3
  %call386 = call double @DVdot(i32 %170, double* %call75, double* %rowUT0.0.lcssa) #5
  %171 = load double* %call382, align 8, !tbaa !4
  %sub389 = fsub double %171, %call386
  store double %sub389, double* %call382, align 8, !tbaa !4
  %172 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext390 = sext i32 %172 to i64
  %add.ptr391 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext390
  %add392 = add i32 %lastInU.0.lcssa2461, 1
  %173 = load i32* %ncolU, align 4, !tbaa !3
  %sub3942269 = add nsw i32 %173, -2
  %cmp3952270 = icmp slt i32 %add392, %sub3942269
  br i1 %cmp3952270, label %for.body396.lr.ph, label %for.end426

for.body396.lr.ph:                                ; preds = %if.then379
  %arraydecay401 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  %arrayidx414 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %arrayidx418 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %174 = sext i32 %add392 to i64
  br label %for.body396

for.body396:                                      ; preds = %for.body396.lr.ph, %for.body396
  %175 = phi i32 [ %172, %for.body396.lr.ph ], [ %188, %for.body396 ]
  %indvars.iv2374 = phi i64 [ %174, %for.body396.lr.ph ], [ %indvars.iv.next2375, %for.body396 ]
  %jcolU.52272 = phi i32 [ %add392, %for.body396.lr.ph ], [ %add425, %for.body396 ]
  %colU0.22271 = phi double* [ %add.ptr391, %for.body396.lr.ph ], [ %add.ptr423, %for.body396 ]
  %idx.ext397 = sext i32 %175 to i64
  %add.ptr398 = getelementptr inbounds double* %colU0.22271, i64 %idx.ext397
  %add.ptr398.sum = shl nsw i64 %idx.ext397, 1
  %add.ptr400 = getelementptr inbounds double* %colU0.22271, i64 %add.ptr398.sum
  call void @DVdot13(i32 %175, double* %call75, double* %colU0.22271, double* %add.ptr398, double* %add.ptr400, double* %arraydecay401) #5
  %176 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx403 = getelementptr inbounds i32* %176, i64 %indvars.iv2374
  %177 = load i32* %arrayidx403, align 4, !tbaa !3
  %178 = add nsw i64 %indvars.iv2374, 1
  %arrayidx406 = getelementptr inbounds i32* %176, i64 %178
  %179 = load i32* %arrayidx406, align 4, !tbaa !3
  %180 = add nsw i64 %indvars.iv2374, 2
  %arrayidx409 = getelementptr inbounds i32* %176, i64 %180
  %181 = load i32* %arrayidx409, align 4, !tbaa !3
  %182 = load double* %arraydecay401, align 16, !tbaa !4
  %idxprom411 = sext i32 %177 to i64
  %add.ptr385.sum2223 = sub i64 %idxprom411, %idx.ext383
  %arrayidx412 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2223
  %183 = load double* %arrayidx412, align 8, !tbaa !4
  %sub413 = fsub double %183, %182
  store double %sub413, double* %arrayidx412, align 8, !tbaa !4
  %184 = load double* %arrayidx414, align 8, !tbaa !4
  %idxprom415 = sext i32 %179 to i64
  %add.ptr385.sum2224 = sub i64 %idxprom415, %idx.ext383
  %arrayidx416 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2224
  %185 = load double* %arrayidx416, align 8, !tbaa !4
  %sub417 = fsub double %185, %184
  store double %sub417, double* %arrayidx416, align 8, !tbaa !4
  %186 = load double* %arrayidx418, align 16, !tbaa !4
  %idxprom419 = sext i32 %181 to i64
  %add.ptr385.sum2225 = sub i64 %idxprom419, %idx.ext383
  %arrayidx420 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2225
  %187 = load double* %arrayidx420, align 8, !tbaa !4
  %sub421 = fsub double %187, %186
  store double %sub421, double* %arrayidx420, align 8, !tbaa !4
  %188 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext422 = sext i32 %188 to i64
  %add.ptr400.sum = add i64 %idx.ext422, %add.ptr398.sum
  %add.ptr423 = getelementptr inbounds double* %colU0.22271, i64 %add.ptr400.sum
  %add425 = add nsw i32 %jcolU.52272, 3
  %189 = load i32* %ncolU, align 4, !tbaa !3
  %sub394 = add nsw i32 %189, -2
  %cmp395 = icmp slt i32 %add425, %sub394
  %indvars.iv.next2375 = add i64 %indvars.iv2374, 3
  br i1 %cmp395, label %for.body396, label %for.end426

for.end426:                                       ; preds = %for.body396, %if.then379
  %190 = phi i32 [ %172, %if.then379 ], [ %188, %for.body396 ]
  %sub394.lcssa = phi i32 [ %sub3942269, %if.then379 ], [ %sub394, %for.body396 ]
  %.lcssa2268 = phi i32 [ %173, %if.then379 ], [ %189, %for.body396 ]
  %jcolU.5.lcssa = phi i32 [ %add392, %if.then379 ], [ %add425, %for.body396 ]
  %colU0.2.lcssa = phi double* [ %add.ptr391, %if.then379 ], [ %add.ptr423, %for.body396 ]
  %cmp428 = icmp eq i32 %jcolU.5.lcssa, %sub394.lcssa
  br i1 %cmp428, label %if.then429, label %if.else446

if.then429:                                       ; preds = %for.end426
  %idx.ext430 = sext i32 %190 to i64
  %add.ptr431 = getelementptr inbounds double* %colU0.2.lcssa, i64 %idx.ext430
  %arraydecay432 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  call void @DVdot12(i32 %190, double* %call75, double* %colU0.2.lcssa, double* %add.ptr431, double* %arraydecay432) #5
  %idxprom433 = sext i32 %sub394.lcssa to i64
  %191 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx434 = getelementptr inbounds i32* %191, i64 %idxprom433
  %192 = load i32* %arrayidx434, align 4, !tbaa !3
  %add435 = add nsw i32 %sub394.lcssa, 1
  %idxprom436 = sext i32 %add435 to i64
  %arrayidx437 = getelementptr inbounds i32* %191, i64 %idxprom436
  %193 = load i32* %arrayidx437, align 4, !tbaa !3
  %194 = load double* %arraydecay432, align 16, !tbaa !4
  %idxprom439 = sext i32 %192 to i64
  %add.ptr385.sum2221 = sub i64 %idxprom439, %idx.ext383
  %arrayidx440 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2221
  %195 = load double* %arrayidx440, align 8, !tbaa !4
  %sub441 = fsub double %195, %194
  store double %sub441, double* %arrayidx440, align 8, !tbaa !4
  %arrayidx442 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %196 = load double* %arrayidx442, align 8, !tbaa !4
  %idxprom443 = sext i32 %193 to i64
  %add.ptr385.sum2222 = sub i64 %idxprom443, %idx.ext383
  %arrayidx444 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2222
  %197 = load double* %arrayidx444, align 8, !tbaa !4
  %sub445 = fsub double %197, %196
  store double %sub445, double* %arrayidx444, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.else446:                                       ; preds = %for.end426
  %sub447 = add nsw i32 %.lcssa2268, -1
  %cmp448 = icmp eq i32 %jcolU.5.lcssa, %sub447
  br i1 %cmp448, label %if.then449, label %for.cond1373.preheader

if.then449:                                       ; preds = %if.else446
  %arraydecay450 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  call void @DVdot11(i32 %190, double* %call75, double* %colU0.2.lcssa, double* %arraydecay450) #5
  %idxprom451 = sext i32 %jcolU.5.lcssa to i64
  %198 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx452 = getelementptr inbounds i32* %198, i64 %idxprom451
  %199 = load i32* %arrayidx452, align 4, !tbaa !3
  %200 = load double* %arraydecay450, align 16, !tbaa !4
  %idxprom454 = sext i32 %199 to i64
  %add.ptr385.sum = sub i64 %idxprom454, %idx.ext383
  %arrayidx455 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum
  %201 = load double* %arrayidx455, align 8, !tbaa !4
  %sub456 = fsub double %201, %200
  store double %sub456, double* %arrayidx455, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.then464:                                       ; preds = %if.then72
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU, i32* %nentU, i32** %sizes, i32** %indU, double** %entU467) #5
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4
  %202 = load i32* %nrow, align 4, !tbaa !3
  %mul475 = shl nsw i32 %202, 1
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul475) #5
  %call476 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %idx.ext477 = sext i32 %202 to i64
  %add.ptr478 = getelementptr inbounds double* %call476, i64 %idx.ext477
  %cmp4802302 = icmp sgt i32 %jcolU.0.lcssa, 0
  br i1 %cmp4802302, label %for.body481.lr.ph, label %for.end487

for.body481.lr.ph:                                ; preds = %if.then464
  %203 = load i32** %sizes, align 8, !tbaa !0
  br label %for.body481

for.body481:                                      ; preds = %for.body481, %for.body481.lr.ph
  %indvars.iv2400 = phi i64 [ 0, %for.body481.lr.ph ], [ %indvars.iv.next2401, %for.body481 ]
  %offset.02303 = phi i32 [ 0, %for.body481.lr.ph ], [ %add484, %for.body481 ]
  %arrayidx483 = getelementptr inbounds i32* %203, i64 %indvars.iv2400
  %204 = load i32* %arrayidx483, align 4, !tbaa !3
  %add484 = add nsw i32 %204, %offset.02303
  %indvars.iv.next2401 = add i64 %indvars.iv2400, 1
  %lftr.wideiv2402 = trunc i64 %indvars.iv.next2401 to i32
  %exitcond2403 = icmp eq i32 %lftr.wideiv2402, %jcolU.0.lcssa
  br i1 %exitcond2403, label %for.cond479.for.end487_crit_edge, label %for.body481

for.cond479.for.end487_crit_edge:                 ; preds = %for.body481
  %phitmp = sext i32 %add484 to i64
  br label %for.end487

for.end487:                                       ; preds = %for.cond479.for.end487_crit_edge, %if.then464
  %offset.0.lcssa = phi i64 [ %phitmp, %for.cond479.for.end487_crit_edge ], [ 0, %if.then464 ]
  %cmp4932297 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa2461
  br i1 %cmp4932297, label %for.cond1373.preheader, label %for.body494.lr.ph

for.body494.lr.ph:                                ; preds = %for.end487
  %205 = load i32** %indU, align 8, !tbaa !0
  %206 = load double** %entU467, align 8, !tbaa !0
  %add.ptr491 = getelementptr inbounds i32* %205, i64 %offset.0.lcssa
  %add.ptr489 = getelementptr inbounds double* %206, i64 %offset.0.lcssa
  %207 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body494

for.body494:                                      ; preds = %for.inc544.for.body494_crit_edge, %for.body494.lr.ph
  %indvars.iv2398 = phi i64 [ %indvars.iv.next2399, %for.inc544.for.body494_crit_edge ], [ %207, %for.body494.lr.ph ]
  %indUT0.02301 = phi i32* [ %indUT0.1, %for.inc544.for.body494_crit_edge ], [ %add.ptr491, %for.body494.lr.ph ]
  %rowUT0468.02300 = phi double* [ %rowUT0468.1, %for.inc544.for.body494_crit_edge ], [ %add.ptr489, %for.body494.lr.ph ]
  %208 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx496 = getelementptr inbounds i32* %208, i64 %indvars.iv2398
  %209 = load i32* %arrayidx496, align 4, !tbaa !3
  %cmp497 = icmp sgt i32 %209, 0
  br i1 %cmp497, label %for.body508.lr.ph, label %for.body494.for.inc544_crit_edge

for.body494.for.inc544_crit_edge:                 ; preds = %for.body494
  %.pre2458 = trunc i64 %indvars.iv2398 to i32
  br label %for.inc544

for.body508.lr.ph:                                ; preds = %for.body494
  %210 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx500 = getelementptr inbounds i32* %210, i64 %indvars.iv2398
  %211 = load i32* %arrayidx500, align 4, !tbaa !3
  %call501 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %211) #5
  %idx.ext502 = sext i32 %211 to i64
  call void @DVzero(i32 %mul475, double* %call476) #5
  br label %for.body508

for.body508:                                      ; preds = %for.body508, %for.body508.lr.ph
  %indvars.iv2392 = phi i64 [ 0, %for.body508.lr.ph ], [ %indvars.iv.next2393, %for.body508 ]
  %arrayidx510 = getelementptr inbounds i32* %indUT0.02301, i64 %indvars.iv2392
  %212 = load i32* %arrayidx510, align 4, !tbaa !3
  %arrayidx512 = getelementptr inbounds double* %rowUT0468.02300, i64 %indvars.iv2392
  %213 = load double* %arrayidx512, align 8, !tbaa !4
  %idxprom513 = sext i32 %212 to i64
  %add.ptr478.sum = add i64 %idxprom513, %idx.ext477
  %arrayidx514 = getelementptr inbounds double* %call476, i64 %add.ptr478.sum
  store double %213, double* %arrayidx514, align 8, !tbaa !4
  %indvars.iv.next2393 = add i64 %indvars.iv2392, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2393 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %209
  br i1 %exitcond, label %for.end517, label %for.body508

for.end517:                                       ; preds = %for.body508
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call476, double* %add.ptr478) #5
  %214 = load i32* %ncolU, align 4, !tbaa !3
  %215 = trunc i64 %indvars.iv2398 to i32
  %cmp5192293 = icmp slt i32 %215, %214
  br i1 %cmp5192293, label %for.body520, label %for.end538

for.body520:                                      ; preds = %for.inc536, %for.end517
  %216 = phi i32 [ %214, %for.end517 ], [ %222, %for.inc536 ]
  %indvars.iv2396 = phi i64 [ %indvars.iv2398, %for.end517 ], [ %indvars.iv.next2397, %for.inc536 ]
  %indU0.02295 = phi i32* [ %indUT0.02301, %for.end517 ], [ %indU0.1, %for.inc536 ]
  %colU0466.02294 = phi double* [ %rowUT0468.02300, %for.end517 ], [ %colU0466.1, %for.inc536 ]
  %217 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx522 = getelementptr inbounds i32* %217, i64 %indvars.iv2396
  %218 = load i32* %arrayidx522, align 4, !tbaa !3
  %cmp523 = icmp sgt i32 %218, 0
  br i1 %cmp523, label %if.then524, label %for.inc536

if.then524:                                       ; preds = %for.body520
  %call525 = call double @DVdoti(i32 %218, double* %call476, i32* %indU0.02295, double* %colU0466.02294) #5
  %219 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx527 = getelementptr inbounds i32* %219, i64 %indvars.iv2396
  %220 = load i32* %arrayidx527, align 4, !tbaa !3
  %idxprom528 = sext i32 %220 to i64
  %add.ptr504.sum = sub i64 %idxprom528, %idx.ext502
  %arrayidx529 = getelementptr inbounds double* %call501, i64 %add.ptr504.sum
  %221 = load double* %arrayidx529, align 8, !tbaa !4
  %sub530 = fsub double %221, %call525
  store double %sub530, double* %arrayidx529, align 8, !tbaa !4
  %idx.ext531 = sext i32 %218 to i64
  %add.ptr532 = getelementptr inbounds double* %colU0466.02294, i64 %idx.ext531
  %add.ptr534 = getelementptr inbounds i32* %indU0.02295, i64 %idx.ext531
  %.pre = load i32* %ncolU, align 4, !tbaa !3
  br label %for.inc536

for.inc536:                                       ; preds = %for.body520, %if.then524
  %222 = phi i32 [ %.pre, %if.then524 ], [ %216, %for.body520 ]
  %colU0466.1 = phi double* [ %add.ptr532, %if.then524 ], [ %colU0466.02294, %for.body520 ]
  %indU0.1 = phi i32* [ %add.ptr534, %if.then524 ], [ %indU0.02295, %for.body520 ]
  %indvars.iv.next2397 = add i64 %indvars.iv2396, 1
  %223 = trunc i64 %indvars.iv.next2397 to i32
  %cmp519 = icmp slt i32 %223, %222
  br i1 %cmp519, label %for.body520, label %for.end538

for.end538:                                       ; preds = %for.inc536, %for.end517
  %idx.ext539 = sext i32 %209 to i64
  %add.ptr540 = getelementptr inbounds double* %rowUT0468.02300, i64 %idx.ext539
  %add.ptr542 = getelementptr inbounds i32* %indUT0.02301, i64 %idx.ext539
  br label %for.inc544

for.inc544:                                       ; preds = %for.body494.for.inc544_crit_edge, %for.end538
  %.pre-phi = phi i32 [ %.pre2458, %for.body494.for.inc544_crit_edge ], [ %215, %for.end538 ]
  %rowUT0468.1 = phi double* [ %rowUT0468.02300, %for.body494.for.inc544_crit_edge ], [ %add.ptr540, %for.end538 ]
  %indUT0.1 = phi i32* [ %indUT0.02301, %for.body494.for.inc544_crit_edge ], [ %add.ptr542, %for.end538 ]
  %cmp493 = icmp slt i32 %.pre-phi, %lastInU.0.lcssa2461
  br i1 %cmp493, label %for.inc544.for.body494_crit_edge, label %for.cond1373.preheader

for.inc544.for.body494_crit_edge:                 ; preds = %for.inc544
  %indvars.iv.next2399 = add i64 %indvars.iv2398, 1
  br label %for.body494

if.else547:                                       ; preds = %if.then72
  %224 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call548 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([94 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.then554:                                       ; preds = %for.end69
  %mode555 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1
  %225 = load i32* %mode555, align 4, !tbaa !3
  switch i32 %225, label %if.else1367 [
    i32 1, label %if.then557
    i32 3, label %if.then1254
  ]

if.then557:                                       ; preds = %if.then554
  %226 = bitcast [18 x double]* %sums558 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %226) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU581, i32* %ncolU, i32* %inc1575, i32* %inc2576, double** %entU565) #5
  %227 = load i32* %nrowU581, align 4, !tbaa !3
  %mul582 = mul nsw i32 %227, 6
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul582) #5
  %call583 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %228 = load i32* %nrowU581, align 4, !tbaa !3
  %mul584 = shl nsw i32 %228, 1
  %idx.ext585 = sext i32 %mul584 to i64
  %add.ptr586 = getelementptr inbounds double* %call583, i64 %idx.ext585
  %add.ptr586.sum = shl nsw i64 %idx.ext585, 1
  %add.ptr589 = getelementptr inbounds double* %call583, i64 %add.ptr586.sum
  %229 = load double** %entU565, align 8, !tbaa !0
  %mul590 = shl i32 %jcolU.0.lcssa, 1
  %mul591 = mul nsw i32 %mul590, %228
  %idx.ext592 = sext i32 %mul591 to i64
  %add.ptr593 = getelementptr inbounds double* %229, i64 %idx.ext592
  %sub595 = add nsw i32 %lastInU.0.lcssa2461, -2
  %cmp5962333 = icmp sgt i32 %jcolU.0.lcssa, %sub595
  br i1 %cmp5962333, label %for.end905, label %for.body597.lr.ph

for.body597.lr.ph:                                ; preds = %if.then557
  %arraydecay801 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  %arrayidx813 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %arrayidx818 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2
  %arrayidx822 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3
  %arrayidx827 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4
  %arrayidx831 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5
  %arrayidx836 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 6
  %arrayidx840 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 7
  %arrayidx845 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 8
  %arrayidx849 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 9
  %arrayidx854 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 10
  %arrayidx858 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 11
  %arrayidx762 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 12
  %arrayidx766 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 13
  %arrayidx771 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 14
  %arrayidx775 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 15
  %arrayidx780 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 16
  %arrayidx784 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 17
  %230 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body597

for.body597:                                      ; preds = %if.end899, %for.body597.lr.ph
  %231 = phi i32 [ %228, %for.body597.lr.ph ], [ %361, %if.end899 ]
  %indvars.iv2427 = phi i64 [ %230, %for.body597.lr.ph ], [ %indvars.iv.next2428, %if.end899 ]
  %indvars.iv2420.in = phi i64 [ %230, %for.body597.lr.ph ], [ %indvars.iv2420, %if.end899 ]
  %irowUT577.02335 = phi i32 [ %jcolU.0.lcssa, %for.body597.lr.ph ], [ %add685, %if.end899 ]
  %rowUT0566.02334 = phi double* [ %add.ptr593, %for.body597.lr.ph ], [ %add.ptr902, %if.end899 ]
  %indvars.iv2420 = add i64 %indvars.iv2420.in, 3
  %mul598 = shl nsw i32 %231, 1
  %idx.ext599 = sext i32 %mul598 to i64
  %add.ptr600 = getelementptr inbounds double* %rowUT0566.02334, i64 %idx.ext599
  %add.ptr600.sum = shl nsw i64 %idx.ext599, 1
  %add.ptr603 = getelementptr inbounds double* %rowUT0566.02334, i64 %add.ptr600.sum
  %232 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx605 = getelementptr inbounds i32* %232, i64 %indvars.iv2427
  %233 = load i32* %arrayidx605, align 4, !tbaa !3
  %call606 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %233) #5
  %mul607 = shl nsw i32 %233, 1
  %idx.ext608 = sext i32 %mul607 to i64
  %234 = add nsw i64 %indvars.iv2427, 1
  %235 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx613 = getelementptr inbounds i32* %235, i64 %234
  %236 = load i32* %arrayidx613, align 4, !tbaa !3
  %call614 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %236) #5
  %mul615 = shl nsw i32 %236, 1
  %idx.ext616 = sext i32 %mul615 to i64
  %237 = add nsw i64 %indvars.iv2427, 2
  %238 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx621 = getelementptr inbounds i32* %238, i64 %237
  %239 = load i32* %arrayidx621, align 4, !tbaa !3
  %call622 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %239) #5
  %mul623 = shl nsw i32 %239, 1
  %idx.ext624 = sext i32 %mul623 to i64
  %240 = load i32* %nrowU581, align 4, !tbaa !3
  %mul627 = mul nsw i32 %240, 6
  call void @DVzero(i32 %mul627, double* %call583) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %rowUT0566.02334, double* %add.ptr600, double* %add.ptr603) #5
  %241 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %241, double* %call583, double* %rowUT0566.02334, double* %rsum, double* %isum) #5
  %242 = load double* %rsum, align 8, !tbaa !4
  %243 = load double* %call606, align 8, !tbaa !4
  %sub631 = fsub double %243, %242
  store double %sub631, double* %call606, align 8, !tbaa !4
  %244 = load double* %isum, align 8, !tbaa !4
  %add6332169 = or i32 %mul607, 1
  %idxprom634 = sext i32 %add6332169 to i64
  %add.ptr610.sum = sub i64 %idxprom634, %idx.ext608
  %arrayidx635 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum
  %245 = load double* %arrayidx635, align 8, !tbaa !4
  %sub636 = fsub double %245, %244
  store double %sub636, double* %arrayidx635, align 8, !tbaa !4
  %246 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %246, double* %call583, double* %add.ptr600, double* %rsum, double* %isum) #5
  %247 = load double* %rsum, align 8, !tbaa !4
  %add.ptr610.sum2170 = sub i64 %idx.ext616, %idx.ext608
  %arrayidx639 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2170
  %248 = load double* %arrayidx639, align 8, !tbaa !4
  %sub640 = fsub double %248, %247
  store double %sub640, double* %arrayidx639, align 8, !tbaa !4
  %249 = load double* %isum, align 8, !tbaa !4
  %add6422171 = or i32 %mul615, 1
  %idxprom643 = sext i32 %add6422171 to i64
  %add.ptr610.sum2172 = sub i64 %idxprom643, %idx.ext608
  %arrayidx644 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2172
  %250 = load double* %arrayidx644, align 8, !tbaa !4
  %sub645 = fsub double %250, %249
  store double %sub645, double* %arrayidx644, align 8, !tbaa !4
  %251 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %251, double* %call583, double* %add.ptr603, double* %rsum, double* %isum) #5
  %252 = load double* %rsum, align 8, !tbaa !4
  %add.ptr610.sum2173 = sub i64 %idx.ext624, %idx.ext608
  %arrayidx648 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2173
  %253 = load double* %arrayidx648, align 8, !tbaa !4
  %sub649 = fsub double %253, %252
  store double %sub649, double* %arrayidx648, align 8, !tbaa !4
  %254 = load double* %isum, align 8, !tbaa !4
  %add6512174 = or i32 %mul623, 1
  %idxprom652 = sext i32 %add6512174 to i64
  %add.ptr610.sum2175 = sub i64 %idxprom652, %idx.ext608
  %arrayidx653 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2175
  %255 = load double* %arrayidx653, align 8, !tbaa !4
  %sub654 = fsub double %255, %254
  store double %sub654, double* %arrayidx653, align 8, !tbaa !4
  %256 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %256, double* %add.ptr586, double* %add.ptr600, double* %rsum, double* %isum) #5
  %257 = load double* %rsum, align 8, !tbaa !4
  %258 = load double* %call614, align 8, !tbaa !4
  %sub658 = fsub double %258, %257
  store double %sub658, double* %call614, align 8, !tbaa !4
  %259 = load double* %isum, align 8, !tbaa !4
  %add.ptr618.sum = sub i64 %idxprom643, %idx.ext616
  %arrayidx662 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum
  %260 = load double* %arrayidx662, align 8, !tbaa !4
  %sub663 = fsub double %260, %259
  store double %sub663, double* %arrayidx662, align 8, !tbaa !4
  %261 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %261, double* %add.ptr586, double* %add.ptr603, double* %rsum, double* %isum) #5
  %262 = load double* %rsum, align 8, !tbaa !4
  %add.ptr618.sum2176 = sub i64 %idx.ext624, %idx.ext616
  %arrayidx666 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2176
  %263 = load double* %arrayidx666, align 8, !tbaa !4
  %sub667 = fsub double %263, %262
  store double %sub667, double* %arrayidx666, align 8, !tbaa !4
  %264 = load double* %isum, align 8, !tbaa !4
  %add.ptr618.sum2177 = sub i64 %idxprom652, %idx.ext616
  %arrayidx671 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2177
  %265 = load double* %arrayidx671, align 8, !tbaa !4
  %sub672 = fsub double %265, %264
  store double %sub672, double* %arrayidx671, align 8, !tbaa !4
  %266 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %266, double* %add.ptr589, double* %add.ptr603, double* %rsum, double* %isum) #5
  %267 = load double* %rsum, align 8, !tbaa !4
  %268 = load double* %call622, align 8, !tbaa !4
  %sub676 = fsub double %268, %267
  store double %sub676, double* %call622, align 8, !tbaa !4
  %269 = load double* %isum, align 8, !tbaa !4
  %add.ptr626.sum = sub i64 %idxprom652, %idx.ext624
  %arrayidx680 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum
  %270 = load double* %arrayidx680, align 8, !tbaa !4
  %sub681 = fsub double %270, %269
  store double %sub681, double* %arrayidx680, align 8, !tbaa !4
  %271 = load i32* %nrowU581, align 4, !tbaa !3
  %mul682 = shl nsw i32 %271, 1
  %idx.ext683 = sext i32 %mul682 to i64
  %add.ptr603.sum = add i64 %idx.ext683, %add.ptr600.sum
  %add.ptr684 = getelementptr inbounds double* %rowUT0566.02334, i64 %add.ptr603.sum
  %indvars.iv.next2428 = add i64 %indvars.iv2427, 3
  %add685 = add nsw i32 %irowUT577.02335, 3
  %272 = load i32* %ncolU, align 4, !tbaa !3
  %sub6872325 = add nsw i32 %272, -2
  %273 = trunc i64 %indvars.iv.next2428 to i32
  %cmp6882326 = icmp slt i32 %273, %sub6872325
  br i1 %cmp6882326, label %for.body689, label %for.end794

for.body689:                                      ; preds = %for.body597, %for.body689
  %274 = phi i32 [ %317, %for.body689 ], [ %271, %for.body597 ]
  %indvars.iv2422 = phi i64 [ %indvars.iv.next2423, %for.body689 ], [ %indvars.iv2420, %for.body597 ]
  %jcolU.82328 = phi i32 [ %add793, %for.body689 ], [ %add685, %for.body597 ]
  %colU0562.02327 = phi double* [ %add.ptr791, %for.body689 ], [ %add.ptr684, %for.body597 ]
  %mul690 = shl nsw i32 %274, 1
  %idx.ext691 = sext i32 %mul690 to i64
  %add.ptr692 = getelementptr inbounds double* %colU0562.02327, i64 %idx.ext691
  %add.ptr692.sum = shl nsw i64 %idx.ext691, 1
  %add.ptr695 = getelementptr inbounds double* %colU0562.02327, i64 %add.ptr692.sum
  call void @ZVdotU33(i32 %274, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %colU0562.02327, double* %add.ptr692, double* %add.ptr695, double* %arraydecay801) #5
  %275 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx698 = getelementptr inbounds i32* %275, i64 %indvars.iv2422
  %276 = load i32* %arrayidx698, align 4, !tbaa !3
  %mul699 = shl nsw i32 %276, 1
  %277 = add nsw i64 %indvars.iv2422, 1
  %arrayidx702 = getelementptr inbounds i32* %275, i64 %277
  %278 = load i32* %arrayidx702, align 4, !tbaa !3
  %mul703 = shl nsw i32 %278, 1
  %279 = add nsw i64 %indvars.iv2422, 2
  %arrayidx706 = getelementptr inbounds i32* %275, i64 %279
  %280 = load i32* %arrayidx706, align 4, !tbaa !3
  %mul707 = shl nsw i32 %280, 1
  %281 = load double* %arraydecay801, align 16, !tbaa !4
  %idxprom709 = sext i32 %mul699 to i64
  %add.ptr610.sum2200 = sub i64 %idxprom709, %idx.ext608
  %arrayidx710 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2200
  %282 = load double* %arrayidx710, align 8, !tbaa !4
  %sub711 = fsub double %282, %281
  store double %sub711, double* %arrayidx710, align 8, !tbaa !4
  %283 = load double* %arrayidx813, align 8, !tbaa !4
  %add7132201 = or i32 %mul699, 1
  %idxprom714 = sext i32 %add7132201 to i64
  %add.ptr610.sum2202 = sub i64 %idxprom714, %idx.ext608
  %arrayidx715 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2202
  %284 = load double* %arrayidx715, align 8, !tbaa !4
  %sub716 = fsub double %284, %283
  store double %sub716, double* %arrayidx715, align 8, !tbaa !4
  %285 = load double* %arrayidx818, align 16, !tbaa !4
  %idxprom718 = sext i32 %mul703 to i64
  %add.ptr610.sum2203 = sub i64 %idxprom718, %idx.ext608
  %arrayidx719 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2203
  %286 = load double* %arrayidx719, align 8, !tbaa !4
  %sub720 = fsub double %286, %285
  store double %sub720, double* %arrayidx719, align 8, !tbaa !4
  %287 = load double* %arrayidx822, align 8, !tbaa !4
  %add7222204 = or i32 %mul703, 1
  %idxprom723 = sext i32 %add7222204 to i64
  %add.ptr610.sum2205 = sub i64 %idxprom723, %idx.ext608
  %arrayidx724 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2205
  %288 = load double* %arrayidx724, align 8, !tbaa !4
  %sub725 = fsub double %288, %287
  store double %sub725, double* %arrayidx724, align 8, !tbaa !4
  %289 = load double* %arrayidx827, align 16, !tbaa !4
  %idxprom727 = sext i32 %mul707 to i64
  %add.ptr610.sum2206 = sub i64 %idxprom727, %idx.ext608
  %arrayidx728 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2206
  %290 = load double* %arrayidx728, align 8, !tbaa !4
  %sub729 = fsub double %290, %289
  store double %sub729, double* %arrayidx728, align 8, !tbaa !4
  %291 = load double* %arrayidx831, align 8, !tbaa !4
  %add7312207 = or i32 %mul707, 1
  %idxprom732 = sext i32 %add7312207 to i64
  %add.ptr610.sum2208 = sub i64 %idxprom732, %idx.ext608
  %arrayidx733 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2208
  %292 = load double* %arrayidx733, align 8, !tbaa !4
  %sub734 = fsub double %292, %291
  store double %sub734, double* %arrayidx733, align 8, !tbaa !4
  %293 = load double* %arrayidx836, align 16, !tbaa !4
  %add.ptr618.sum2209 = sub i64 %idxprom709, %idx.ext616
  %arrayidx737 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2209
  %294 = load double* %arrayidx737, align 8, !tbaa !4
  %sub738 = fsub double %294, %293
  store double %sub738, double* %arrayidx737, align 8, !tbaa !4
  %295 = load double* %arrayidx840, align 8, !tbaa !4
  %add.ptr618.sum2210 = sub i64 %idxprom714, %idx.ext616
  %arrayidx742 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2210
  %296 = load double* %arrayidx742, align 8, !tbaa !4
  %sub743 = fsub double %296, %295
  store double %sub743, double* %arrayidx742, align 8, !tbaa !4
  %297 = load double* %arrayidx845, align 16, !tbaa !4
  %add.ptr618.sum2211 = sub i64 %idxprom718, %idx.ext616
  %arrayidx746 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2211
  %298 = load double* %arrayidx746, align 8, !tbaa !4
  %sub747 = fsub double %298, %297
  store double %sub747, double* %arrayidx746, align 8, !tbaa !4
  %299 = load double* %arrayidx849, align 8, !tbaa !4
  %add.ptr618.sum2212 = sub i64 %idxprom723, %idx.ext616
  %arrayidx751 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2212
  %300 = load double* %arrayidx751, align 8, !tbaa !4
  %sub752 = fsub double %300, %299
  store double %sub752, double* %arrayidx751, align 8, !tbaa !4
  %301 = load double* %arrayidx854, align 16, !tbaa !4
  %add.ptr618.sum2213 = sub i64 %idxprom727, %idx.ext616
  %arrayidx755 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2213
  %302 = load double* %arrayidx755, align 8, !tbaa !4
  %sub756 = fsub double %302, %301
  store double %sub756, double* %arrayidx755, align 8, !tbaa !4
  %303 = load double* %arrayidx858, align 8, !tbaa !4
  %add.ptr618.sum2214 = sub i64 %idxprom732, %idx.ext616
  %arrayidx760 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2214
  %304 = load double* %arrayidx760, align 8, !tbaa !4
  %sub761 = fsub double %304, %303
  store double %sub761, double* %arrayidx760, align 8, !tbaa !4
  %305 = load double* %arrayidx762, align 16, !tbaa !4
  %add.ptr626.sum2215 = sub i64 %idxprom709, %idx.ext624
  %arrayidx764 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2215
  %306 = load double* %arrayidx764, align 8, !tbaa !4
  %sub765 = fsub double %306, %305
  store double %sub765, double* %arrayidx764, align 8, !tbaa !4
  %307 = load double* %arrayidx766, align 8, !tbaa !4
  %add.ptr626.sum2216 = sub i64 %idxprom714, %idx.ext624
  %arrayidx769 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2216
  %308 = load double* %arrayidx769, align 8, !tbaa !4
  %sub770 = fsub double %308, %307
  store double %sub770, double* %arrayidx769, align 8, !tbaa !4
  %309 = load double* %arrayidx771, align 16, !tbaa !4
  %add.ptr626.sum2217 = sub i64 %idxprom718, %idx.ext624
  %arrayidx773 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2217
  %310 = load double* %arrayidx773, align 8, !tbaa !4
  %sub774 = fsub double %310, %309
  store double %sub774, double* %arrayidx773, align 8, !tbaa !4
  %311 = load double* %arrayidx775, align 8, !tbaa !4
  %add.ptr626.sum2218 = sub i64 %idxprom723, %idx.ext624
  %arrayidx778 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2218
  %312 = load double* %arrayidx778, align 8, !tbaa !4
  %sub779 = fsub double %312, %311
  store double %sub779, double* %arrayidx778, align 8, !tbaa !4
  %313 = load double* %arrayidx780, align 16, !tbaa !4
  %add.ptr626.sum2219 = sub i64 %idxprom727, %idx.ext624
  %arrayidx782 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2219
  %314 = load double* %arrayidx782, align 8, !tbaa !4
  %sub783 = fsub double %314, %313
  store double %sub783, double* %arrayidx782, align 8, !tbaa !4
  %315 = load double* %arrayidx784, align 8, !tbaa !4
  %add.ptr626.sum2220 = sub i64 %idxprom732, %idx.ext624
  %arrayidx787 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2220
  %316 = load double* %arrayidx787, align 8, !tbaa !4
  %sub788 = fsub double %316, %315
  store double %sub788, double* %arrayidx787, align 8, !tbaa !4
  %317 = load i32* %nrowU581, align 4, !tbaa !3
  %mul789 = shl nsw i32 %317, 1
  %idx.ext790 = sext i32 %mul789 to i64
  %add.ptr695.sum = add i64 %idx.ext790, %add.ptr692.sum
  %add.ptr791 = getelementptr inbounds double* %colU0562.02327, i64 %add.ptr695.sum
  %add793 = add nsw i32 %jcolU.82328, 3
  %318 = load i32* %ncolU, align 4, !tbaa !3
  %sub687 = add nsw i32 %318, -2
  %cmp688 = icmp slt i32 %add793, %sub687
  %indvars.iv.next2423 = add i64 %indvars.iv2422, 3
  br i1 %cmp688, label %for.body689, label %for.end794

for.end794:                                       ; preds = %for.body689, %for.body597
  %319 = phi i32 [ %271, %for.body597 ], [ %317, %for.body689 ]
  %sub687.lcssa = phi i32 [ %sub6872325, %for.body597 ], [ %sub687, %for.body689 ]
  %.lcssa2324 = phi i32 [ %272, %for.body597 ], [ %318, %for.body689 ]
  %jcolU.8.lcssa = phi i32 [ %273, %for.body597 ], [ %add793, %for.body689 ]
  %colU0562.0.lcssa = phi double* [ %add.ptr684, %for.body597 ], [ %add.ptr791, %for.body689 ]
  %cmp796 = icmp eq i32 %jcolU.8.lcssa, %sub687.lcssa
  br i1 %cmp796, label %if.then797, label %if.else863

if.then797:                                       ; preds = %for.end794
  %mul798 = shl nsw i32 %319, 1
  %idx.ext799 = sext i32 %mul798 to i64
  %add.ptr800 = getelementptr inbounds double* %colU0562.0.lcssa, i64 %idx.ext799
  call void @ZVdotU32(i32 %319, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %colU0562.0.lcssa, double* %add.ptr800, double* %arraydecay801) #5
  %idxprom802 = sext i32 %sub687.lcssa to i64
  %320 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx803 = getelementptr inbounds i32* %320, i64 %idxprom802
  %321 = load i32* %arrayidx803, align 4, !tbaa !3
  %mul804 = shl nsw i32 %321, 1
  %add805 = add nsw i32 %sub687.lcssa, 1
  %idxprom806 = sext i32 %add805 to i64
  %arrayidx807 = getelementptr inbounds i32* %320, i64 %idxprom806
  %322 = load i32* %arrayidx807, align 4, !tbaa !3
  %mul808 = shl nsw i32 %322, 1
  %323 = load double* %arraydecay801, align 16, !tbaa !4
  %idxprom810 = sext i32 %mul804 to i64
  %add.ptr610.sum2186 = sub i64 %idxprom810, %idx.ext608
  %arrayidx811 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2186
  %324 = load double* %arrayidx811, align 8, !tbaa !4
  %sub812 = fsub double %324, %323
  store double %sub812, double* %arrayidx811, align 8, !tbaa !4
  %325 = load double* %arrayidx813, align 8, !tbaa !4
  %add8142187 = or i32 %mul804, 1
  %idxprom815 = sext i32 %add8142187 to i64
  %add.ptr610.sum2188 = sub i64 %idxprom815, %idx.ext608
  %arrayidx816 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2188
  %326 = load double* %arrayidx816, align 8, !tbaa !4
  %sub817 = fsub double %326, %325
  store double %sub817, double* %arrayidx816, align 8, !tbaa !4
  %327 = load double* %arrayidx818, align 16, !tbaa !4
  %idxprom819 = sext i32 %mul808 to i64
  %add.ptr610.sum2189 = sub i64 %idxprom819, %idx.ext608
  %arrayidx820 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2189
  %328 = load double* %arrayidx820, align 8, !tbaa !4
  %sub821 = fsub double %328, %327
  store double %sub821, double* %arrayidx820, align 8, !tbaa !4
  %329 = load double* %arrayidx822, align 8, !tbaa !4
  %add8232190 = or i32 %mul808, 1
  %idxprom824 = sext i32 %add8232190 to i64
  %add.ptr610.sum2191 = sub i64 %idxprom824, %idx.ext608
  %arrayidx825 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2191
  %330 = load double* %arrayidx825, align 8, !tbaa !4
  %sub826 = fsub double %330, %329
  store double %sub826, double* %arrayidx825, align 8, !tbaa !4
  %331 = load double* %arrayidx827, align 16, !tbaa !4
  %add.ptr618.sum2192 = sub i64 %idxprom810, %idx.ext616
  %arrayidx829 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2192
  %332 = load double* %arrayidx829, align 8, !tbaa !4
  %sub830 = fsub double %332, %331
  store double %sub830, double* %arrayidx829, align 8, !tbaa !4
  %333 = load double* %arrayidx831, align 8, !tbaa !4
  %add.ptr618.sum2193 = sub i64 %idxprom815, %idx.ext616
  %arrayidx834 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2193
  %334 = load double* %arrayidx834, align 8, !tbaa !4
  %sub835 = fsub double %334, %333
  store double %sub835, double* %arrayidx834, align 8, !tbaa !4
  %335 = load double* %arrayidx836, align 16, !tbaa !4
  %add.ptr618.sum2194 = sub i64 %idxprom819, %idx.ext616
  %arrayidx838 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2194
  %336 = load double* %arrayidx838, align 8, !tbaa !4
  %sub839 = fsub double %336, %335
  store double %sub839, double* %arrayidx838, align 8, !tbaa !4
  %337 = load double* %arrayidx840, align 8, !tbaa !4
  %add.ptr618.sum2195 = sub i64 %idxprom824, %idx.ext616
  %arrayidx843 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2195
  %338 = load double* %arrayidx843, align 8, !tbaa !4
  %sub844 = fsub double %338, %337
  store double %sub844, double* %arrayidx843, align 8, !tbaa !4
  %339 = load double* %arrayidx845, align 16, !tbaa !4
  %add.ptr626.sum2196 = sub i64 %idxprom810, %idx.ext624
  %arrayidx847 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2196
  %340 = load double* %arrayidx847, align 8, !tbaa !4
  %sub848 = fsub double %340, %339
  store double %sub848, double* %arrayidx847, align 8, !tbaa !4
  %341 = load double* %arrayidx849, align 8, !tbaa !4
  %add.ptr626.sum2197 = sub i64 %idxprom815, %idx.ext624
  %arrayidx852 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2197
  %342 = load double* %arrayidx852, align 8, !tbaa !4
  %sub853 = fsub double %342, %341
  store double %sub853, double* %arrayidx852, align 8, !tbaa !4
  %343 = load double* %arrayidx854, align 16, !tbaa !4
  %add.ptr626.sum2198 = sub i64 %idxprom819, %idx.ext624
  %arrayidx856 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2198
  %344 = load double* %arrayidx856, align 8, !tbaa !4
  %sub857 = fsub double %344, %343
  store double %sub857, double* %arrayidx856, align 8, !tbaa !4
  %345 = load double* %arrayidx858, align 8, !tbaa !4
  %add.ptr626.sum2199 = sub i64 %idxprom824, %idx.ext624
  %arrayidx861 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2199
  %346 = load double* %arrayidx861, align 8, !tbaa !4
  %sub862 = fsub double %346, %345
  store double %sub862, double* %arrayidx861, align 8, !tbaa !4
  br label %if.end899

if.else863:                                       ; preds = %for.end794
  %sub864 = add nsw i32 %.lcssa2324, -1
  %cmp865 = icmp eq i32 %jcolU.8.lcssa, %sub864
  br i1 %cmp865, label %if.then866, label %if.end899

if.then866:                                       ; preds = %if.else863
  call void @ZVdotU31(i32 %319, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %colU0562.0.lcssa, double* %arraydecay801) #5
  %idxprom868 = sext i32 %jcolU.8.lcssa to i64
  %347 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx869 = getelementptr inbounds i32* %347, i64 %idxprom868
  %348 = load i32* %arrayidx869, align 4, !tbaa !3
  %mul870 = shl nsw i32 %348, 1
  %349 = load double* %arraydecay801, align 16, !tbaa !4
  %idxprom872 = sext i32 %mul870 to i64
  %add.ptr610.sum2179 = sub i64 %idxprom872, %idx.ext608
  %arrayidx873 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2179
  %350 = load double* %arrayidx873, align 8, !tbaa !4
  %sub874 = fsub double %350, %349
  store double %sub874, double* %arrayidx873, align 8, !tbaa !4
  %351 = load double* %arrayidx813, align 8, !tbaa !4
  %add8762180 = or i32 %mul870, 1
  %idxprom877 = sext i32 %add8762180 to i64
  %add.ptr610.sum2181 = sub i64 %idxprom877, %idx.ext608
  %arrayidx878 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2181
  %352 = load double* %arrayidx878, align 8, !tbaa !4
  %sub879 = fsub double %352, %351
  store double %sub879, double* %arrayidx878, align 8, !tbaa !4
  %353 = load double* %arrayidx818, align 16, !tbaa !4
  %add.ptr618.sum2182 = sub i64 %idxprom872, %idx.ext616
  %arrayidx882 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2182
  %354 = load double* %arrayidx882, align 8, !tbaa !4
  %sub883 = fsub double %354, %353
  store double %sub883, double* %arrayidx882, align 8, !tbaa !4
  %355 = load double* %arrayidx822, align 8, !tbaa !4
  %add.ptr618.sum2183 = sub i64 %idxprom877, %idx.ext616
  %arrayidx887 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2183
  %356 = load double* %arrayidx887, align 8, !tbaa !4
  %sub888 = fsub double %356, %355
  store double %sub888, double* %arrayidx887, align 8, !tbaa !4
  %357 = load double* %arrayidx827, align 16, !tbaa !4
  %add.ptr626.sum2184 = sub i64 %idxprom872, %idx.ext624
  %arrayidx891 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2184
  %358 = load double* %arrayidx891, align 8, !tbaa !4
  %sub892 = fsub double %358, %357
  store double %sub892, double* %arrayidx891, align 8, !tbaa !4
  %359 = load double* %arrayidx831, align 8, !tbaa !4
  %add.ptr626.sum2185 = sub i64 %idxprom877, %idx.ext624
  %arrayidx896 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2185
  %360 = load double* %arrayidx896, align 8, !tbaa !4
  %sub897 = fsub double %360, %359
  store double %sub897, double* %arrayidx896, align 8, !tbaa !4
  br label %if.end899

if.end899:                                        ; preds = %if.else863, %if.then866, %if.then797
  %361 = load i32* %nrowU581, align 4, !tbaa !3
  %mul900 = shl nsw i32 %361, 1
  %idx.ext901 = sext i32 %mul900 to i64
  %add.ptr603.sum2178 = add i64 %idx.ext901, %add.ptr600.sum
  %add.ptr902 = getelementptr inbounds double* %rowUT0566.02334, i64 %add.ptr603.sum2178
  %cmp596 = icmp sgt i32 %273, %sub595
  br i1 %cmp596, label %for.end905, label %for.body597

for.end905:                                       ; preds = %if.end899, %if.then557
  %362 = phi i32 [ %228, %if.then557 ], [ %361, %if.end899 ]
  %irowUT577.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then557 ], [ %add685, %if.end899 ]
  %rowUT0566.0.lcssa = phi double* [ %add.ptr593, %if.then557 ], [ %add.ptr902, %if.end899 ]
  %sub906 = add nsw i32 %lastInU.0.lcssa2461, -1
  %cmp907 = icmp eq i32 %irowUT577.0.lcssa, %sub906
  br i1 %cmp907, label %if.then908, label %if.else1119

if.then908:                                       ; preds = %for.end905
  %mul909 = shl nsw i32 %362, 1
  %idx.ext910 = sext i32 %mul909 to i64
  %add.ptr911 = getelementptr inbounds double* %rowUT0566.0.lcssa, i64 %idx.ext910
  %idxprom912 = sext i32 %sub906 to i64
  %363 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx913 = getelementptr inbounds i32* %363, i64 %idxprom912
  %364 = load i32* %arrayidx913, align 4, !tbaa !3
  %call914 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %364) #5
  %mul915 = shl nsw i32 %364, 1
  %idx.ext916 = sext i32 %mul915 to i64
  %idxprom920 = sext i32 %lastInU.0.lcssa2461 to i64
  %365 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx921 = getelementptr inbounds i32* %365, i64 %idxprom920
  %366 = load i32* %arrayidx921, align 4, !tbaa !3
  %call922 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %366) #5
  %mul923 = shl nsw i32 %366, 1
  %idx.ext924 = sext i32 %mul923 to i64
  %367 = load i32* %nrowU581, align 4, !tbaa !3
  %mul927 = shl nsw i32 %367, 2
  call void @DVzero(i32 %mul927, double* %call583) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call583, double* %add.ptr586, double* %rowUT0566.0.lcssa, double* %add.ptr911) #5
  %368 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %368, double* %call583, double* %rowUT0566.0.lcssa, double* %rsum, double* %isum) #5
  %369 = load double* %rsum, align 8, !tbaa !4
  %370 = load double* %call914, align 8, !tbaa !4
  %sub931 = fsub double %370, %369
  store double %sub931, double* %call914, align 8, !tbaa !4
  %371 = load double* %isum, align 8, !tbaa !4
  %add9332135 = or i32 %mul915, 1
  %idxprom934 = sext i32 %add9332135 to i64
  %add.ptr918.sum = sub i64 %idxprom934, %idx.ext916
  %arrayidx935 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum
  %372 = load double* %arrayidx935, align 8, !tbaa !4
  %sub936 = fsub double %372, %371
  store double %sub936, double* %arrayidx935, align 8, !tbaa !4
  %373 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %373, double* %call583, double* %add.ptr911, double* %rsum, double* %isum) #5
  %374 = load double* %rsum, align 8, !tbaa !4
  %add.ptr918.sum2136 = sub i64 %idx.ext924, %idx.ext916
  %arrayidx939 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2136
  %375 = load double* %arrayidx939, align 8, !tbaa !4
  %sub940 = fsub double %375, %374
  store double %sub940, double* %arrayidx939, align 8, !tbaa !4
  %376 = load double* %isum, align 8, !tbaa !4
  %add9422137 = or i32 %mul923, 1
  %idxprom943 = sext i32 %add9422137 to i64
  %add.ptr918.sum2138 = sub i64 %idxprom943, %idx.ext916
  %arrayidx944 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2138
  %377 = load double* %arrayidx944, align 8, !tbaa !4
  %sub945 = fsub double %377, %376
  store double %sub945, double* %arrayidx944, align 8, !tbaa !4
  %378 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %378, double* %add.ptr586, double* %add.ptr911, double* %rsum, double* %isum) #5
  %379 = load double* %rsum, align 8, !tbaa !4
  %380 = load double* %call922, align 8, !tbaa !4
  %sub949 = fsub double %380, %379
  store double %sub949, double* %call922, align 8, !tbaa !4
  %381 = load double* %isum, align 8, !tbaa !4
  %add.ptr926.sum = sub i64 %idxprom943, %idx.ext924
  %arrayidx953 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum
  %382 = load double* %arrayidx953, align 8, !tbaa !4
  %sub954 = fsub double %382, %381
  store double %sub954, double* %arrayidx953, align 8, !tbaa !4
  %383 = load i32* %nrowU581, align 4, !tbaa !3
  %mul955 = shl nsw i32 %383, 1
  %idx.ext956 = sext i32 %mul955 to i64
  %add.ptr911.sum = add i64 %idx.ext956, %idx.ext910
  %add.ptr957 = getelementptr inbounds double* %rowUT0566.0.lcssa, i64 %add.ptr911.sum
  %add958 = add i32 %lastInU.0.lcssa2461, 1
  %384 = load i32* %ncolU, align 4, !tbaa !3
  %sub9602307 = add nsw i32 %384, -2
  %cmp9612308 = icmp slt i32 %add958, %sub9602307
  br i1 %cmp9612308, label %for.body962.lr.ph, label %for.end1040

for.body962.lr.ph:                                ; preds = %if.then908
  %arraydecay969 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  %arrayidx985 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %arrayidx990 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2
  %arrayidx994 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3
  %arrayidx999 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4
  %arrayidx1003 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5
  %arrayidx1008 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 6
  %arrayidx1012 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 7
  %arrayidx1017 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 8
  %arrayidx1021 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 9
  %arrayidx1026 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 10
  %arrayidx1030 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 11
  %385 = sext i32 %add958 to i64
  br label %for.body962

for.body962:                                      ; preds = %for.body962.lr.ph, %for.body962
  %386 = phi i32 [ %383, %for.body962.lr.ph ], [ %417, %for.body962 ]
  %indvars.iv2406 = phi i64 [ %385, %for.body962.lr.ph ], [ %indvars.iv.next2407, %for.body962 ]
  %jcolU.92310 = phi i32 [ %add958, %for.body962.lr.ph ], [ %add1039, %for.body962 ]
  %colU0562.12309 = phi double* [ %add.ptr957, %for.body962.lr.ph ], [ %add.ptr1037, %for.body962 ]
  %mul963 = shl nsw i32 %386, 1
  %idx.ext964 = sext i32 %mul963 to i64
  %add.ptr965 = getelementptr inbounds double* %colU0562.12309, i64 %idx.ext964
  %add.ptr965.sum = shl nsw i64 %idx.ext964, 1
  %add.ptr968 = getelementptr inbounds double* %colU0562.12309, i64 %add.ptr965.sum
  call void @ZVdotU23(i32 %386, double* %call583, double* %add.ptr586, double* %colU0562.12309, double* %add.ptr965, double* %add.ptr968, double* %arraydecay969) #5
  %387 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx971 = getelementptr inbounds i32* %387, i64 %indvars.iv2406
  %388 = load i32* %arrayidx971, align 4, !tbaa !3
  %mul972 = shl nsw i32 %388, 1
  %389 = add nsw i64 %indvars.iv2406, 1
  %arrayidx975 = getelementptr inbounds i32* %387, i64 %389
  %390 = load i32* %arrayidx975, align 4, !tbaa !3
  %mul976 = shl nsw i32 %390, 1
  %391 = add nsw i64 %indvars.iv2406, 2
  %arrayidx979 = getelementptr inbounds i32* %387, i64 %391
  %392 = load i32* %arrayidx979, align 4, !tbaa !3
  %mul980 = shl nsw i32 %392, 1
  %393 = load double* %arraydecay969, align 16, !tbaa !4
  %idxprom982 = sext i32 %mul972 to i64
  %add.ptr918.sum2154 = sub i64 %idxprom982, %idx.ext916
  %arrayidx983 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2154
  %394 = load double* %arrayidx983, align 8, !tbaa !4
  %sub984 = fsub double %394, %393
  store double %sub984, double* %arrayidx983, align 8, !tbaa !4
  %395 = load double* %arrayidx985, align 8, !tbaa !4
  %add9862155 = or i32 %mul972, 1
  %idxprom987 = sext i32 %add9862155 to i64
  %add.ptr918.sum2156 = sub i64 %idxprom987, %idx.ext916
  %arrayidx988 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2156
  %396 = load double* %arrayidx988, align 8, !tbaa !4
  %sub989 = fsub double %396, %395
  store double %sub989, double* %arrayidx988, align 8, !tbaa !4
  %397 = load double* %arrayidx990, align 16, !tbaa !4
  %idxprom991 = sext i32 %mul976 to i64
  %add.ptr918.sum2157 = sub i64 %idxprom991, %idx.ext916
  %arrayidx992 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2157
  %398 = load double* %arrayidx992, align 8, !tbaa !4
  %sub993 = fsub double %398, %397
  store double %sub993, double* %arrayidx992, align 8, !tbaa !4
  %399 = load double* %arrayidx994, align 8, !tbaa !4
  %add9952158 = or i32 %mul976, 1
  %idxprom996 = sext i32 %add9952158 to i64
  %add.ptr918.sum2159 = sub i64 %idxprom996, %idx.ext916
  %arrayidx997 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2159
  %400 = load double* %arrayidx997, align 8, !tbaa !4
  %sub998 = fsub double %400, %399
  store double %sub998, double* %arrayidx997, align 8, !tbaa !4
  %401 = load double* %arrayidx999, align 16, !tbaa !4
  %idxprom1000 = sext i32 %mul980 to i64
  %add.ptr918.sum2160 = sub i64 %idxprom1000, %idx.ext916
  %arrayidx1001 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2160
  %402 = load double* %arrayidx1001, align 8, !tbaa !4
  %sub1002 = fsub double %402, %401
  store double %sub1002, double* %arrayidx1001, align 8, !tbaa !4
  %403 = load double* %arrayidx1003, align 8, !tbaa !4
  %add10042161 = or i32 %mul980, 1
  %idxprom1005 = sext i32 %add10042161 to i64
  %add.ptr918.sum2162 = sub i64 %idxprom1005, %idx.ext916
  %arrayidx1006 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2162
  %404 = load double* %arrayidx1006, align 8, !tbaa !4
  %sub1007 = fsub double %404, %403
  store double %sub1007, double* %arrayidx1006, align 8, !tbaa !4
  %405 = load double* %arrayidx1008, align 16, !tbaa !4
  %add.ptr926.sum2163 = sub i64 %idxprom982, %idx.ext924
  %arrayidx1010 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2163
  %406 = load double* %arrayidx1010, align 8, !tbaa !4
  %sub1011 = fsub double %406, %405
  store double %sub1011, double* %arrayidx1010, align 8, !tbaa !4
  %407 = load double* %arrayidx1012, align 8, !tbaa !4
  %add.ptr926.sum2164 = sub i64 %idxprom987, %idx.ext924
  %arrayidx1015 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2164
  %408 = load double* %arrayidx1015, align 8, !tbaa !4
  %sub1016 = fsub double %408, %407
  store double %sub1016, double* %arrayidx1015, align 8, !tbaa !4
  %409 = load double* %arrayidx1017, align 16, !tbaa !4
  %add.ptr926.sum2165 = sub i64 %idxprom991, %idx.ext924
  %arrayidx1019 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2165
  %410 = load double* %arrayidx1019, align 8, !tbaa !4
  %sub1020 = fsub double %410, %409
  store double %sub1020, double* %arrayidx1019, align 8, !tbaa !4
  %411 = load double* %arrayidx1021, align 8, !tbaa !4
  %add.ptr926.sum2166 = sub i64 %idxprom996, %idx.ext924
  %arrayidx1024 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2166
  %412 = load double* %arrayidx1024, align 8, !tbaa !4
  %sub1025 = fsub double %412, %411
  store double %sub1025, double* %arrayidx1024, align 8, !tbaa !4
  %413 = load double* %arrayidx1026, align 16, !tbaa !4
  %add.ptr926.sum2167 = sub i64 %idxprom1000, %idx.ext924
  %arrayidx1028 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2167
  %414 = load double* %arrayidx1028, align 8, !tbaa !4
  %sub1029 = fsub double %414, %413
  store double %sub1029, double* %arrayidx1028, align 8, !tbaa !4
  %415 = load double* %arrayidx1030, align 8, !tbaa !4
  %add.ptr926.sum2168 = sub i64 %idxprom1005, %idx.ext924
  %arrayidx1033 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2168
  %416 = load double* %arrayidx1033, align 8, !tbaa !4
  %sub1034 = fsub double %416, %415
  store double %sub1034, double* %arrayidx1033, align 8, !tbaa !4
  %417 = load i32* %nrowU581, align 4, !tbaa !3
  %mul1035 = shl nsw i32 %417, 1
  %idx.ext1036 = sext i32 %mul1035 to i64
  %add.ptr968.sum = add i64 %idx.ext1036, %add.ptr965.sum
  %add.ptr1037 = getelementptr inbounds double* %colU0562.12309, i64 %add.ptr968.sum
  %add1039 = add nsw i32 %jcolU.92310, 3
  %418 = load i32* %ncolU, align 4, !tbaa !3
  %sub960 = add nsw i32 %418, -2
  %cmp961 = icmp slt i32 %add1039, %sub960
  %indvars.iv.next2407 = add i64 %indvars.iv2406, 3
  br i1 %cmp961, label %for.body962, label %for.end1040

for.end1040:                                      ; preds = %for.body962, %if.then908
  %419 = phi i32 [ %383, %if.then908 ], [ %417, %for.body962 ]
  %sub960.lcssa = phi i32 [ %sub9602307, %if.then908 ], [ %sub960, %for.body962 ]
  %.lcssa2306 = phi i32 [ %384, %if.then908 ], [ %418, %for.body962 ]
  %jcolU.9.lcssa = phi i32 [ %add958, %if.then908 ], [ %add1039, %for.body962 ]
  %colU0562.1.lcssa = phi double* [ %add.ptr957, %if.then908 ], [ %add.ptr1037, %for.body962 ]
  %cmp1042 = icmp eq i32 %jcolU.9.lcssa, %sub960.lcssa
  br i1 %cmp1042, label %if.then1043, label %if.else1091

if.then1043:                                      ; preds = %for.end1040
  %mul1044 = shl nsw i32 %419, 1
  %idx.ext1045 = sext i32 %mul1044 to i64
  %add.ptr1046 = getelementptr inbounds double* %colU0562.1.lcssa, i64 %idx.ext1045
  %arraydecay1047 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  call void @ZVdotU22(i32 %419, double* %call583, double* %add.ptr586, double* %colU0562.1.lcssa, double* %add.ptr1046, double* %arraydecay1047) #5
  %idxprom1048 = sext i32 %sub960.lcssa to i64
  %420 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1049 = getelementptr inbounds i32* %420, i64 %idxprom1048
  %421 = load i32* %arrayidx1049, align 4, !tbaa !3
  %mul1050 = shl nsw i32 %421, 1
  %add1051 = add nsw i32 %sub960.lcssa, 1
  %idxprom1052 = sext i32 %add1051 to i64
  %arrayidx1053 = getelementptr inbounds i32* %420, i64 %idxprom1052
  %422 = load i32* %arrayidx1053, align 4, !tbaa !3
  %mul1054 = shl nsw i32 %422, 1
  %423 = load double* %arraydecay1047, align 16, !tbaa !4
  %idxprom1056 = sext i32 %mul1050 to i64
  %add.ptr918.sum2144 = sub i64 %idxprom1056, %idx.ext916
  %arrayidx1057 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2144
  %424 = load double* %arrayidx1057, align 8, !tbaa !4
  %sub1058 = fsub double %424, %423
  store double %sub1058, double* %arrayidx1057, align 8, !tbaa !4
  %arrayidx1059 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %425 = load double* %arrayidx1059, align 8, !tbaa !4
  %add10602145 = or i32 %mul1050, 1
  %idxprom1061 = sext i32 %add10602145 to i64
  %add.ptr918.sum2146 = sub i64 %idxprom1061, %idx.ext916
  %arrayidx1062 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2146
  %426 = load double* %arrayidx1062, align 8, !tbaa !4
  %sub1063 = fsub double %426, %425
  store double %sub1063, double* %arrayidx1062, align 8, !tbaa !4
  %arrayidx1064 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2
  %427 = load double* %arrayidx1064, align 16, !tbaa !4
  %idxprom1065 = sext i32 %mul1054 to i64
  %add.ptr918.sum2147 = sub i64 %idxprom1065, %idx.ext916
  %arrayidx1066 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2147
  %428 = load double* %arrayidx1066, align 8, !tbaa !4
  %sub1067 = fsub double %428, %427
  store double %sub1067, double* %arrayidx1066, align 8, !tbaa !4
  %arrayidx1068 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3
  %429 = load double* %arrayidx1068, align 8, !tbaa !4
  %add10692148 = or i32 %mul1054, 1
  %idxprom1070 = sext i32 %add10692148 to i64
  %add.ptr918.sum2149 = sub i64 %idxprom1070, %idx.ext916
  %arrayidx1071 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2149
  %430 = load double* %arrayidx1071, align 8, !tbaa !4
  %sub1072 = fsub double %430, %429
  store double %sub1072, double* %arrayidx1071, align 8, !tbaa !4
  %arrayidx1073 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4
  %431 = load double* %arrayidx1073, align 16, !tbaa !4
  %add.ptr926.sum2150 = sub i64 %idxprom1056, %idx.ext924
  %arrayidx1075 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2150
  %432 = load double* %arrayidx1075, align 8, !tbaa !4
  %sub1076 = fsub double %432, %431
  store double %sub1076, double* %arrayidx1075, align 8, !tbaa !4
  %arrayidx1077 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5
  %433 = load double* %arrayidx1077, align 8, !tbaa !4
  %add.ptr926.sum2151 = sub i64 %idxprom1061, %idx.ext924
  %arrayidx1080 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2151
  %434 = load double* %arrayidx1080, align 8, !tbaa !4
  %sub1081 = fsub double %434, %433
  store double %sub1081, double* %arrayidx1080, align 8, !tbaa !4
  %arrayidx1082 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 6
  %435 = load double* %arrayidx1082, align 16, !tbaa !4
  %add.ptr926.sum2152 = sub i64 %idxprom1065, %idx.ext924
  %arrayidx1084 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2152
  %436 = load double* %arrayidx1084, align 8, !tbaa !4
  %sub1085 = fsub double %436, %435
  store double %sub1085, double* %arrayidx1084, align 8, !tbaa !4
  %arrayidx1086 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 7
  %437 = load double* %arrayidx1086, align 8, !tbaa !4
  %add.ptr926.sum2153 = sub i64 %idxprom1070, %idx.ext924
  %arrayidx1089 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2153
  %438 = load double* %arrayidx1089, align 8, !tbaa !4
  %sub1090 = fsub double %438, %437
  store double %sub1090, double* %arrayidx1089, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.else1091:                                      ; preds = %for.end1040
  %sub1092 = add nsw i32 %.lcssa2306, -1
  %cmp1093 = icmp eq i32 %jcolU.9.lcssa, %sub1092
  br i1 %cmp1093, label %if.then1094, label %for.cond1373.preheader

if.then1094:                                      ; preds = %if.else1091
  %arraydecay1095 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  call void @ZVdotU21(i32 %419, double* %call583, double* %add.ptr586, double* %colU0562.1.lcssa, double* %arraydecay1095) #5
  %idxprom1096 = sext i32 %jcolU.9.lcssa to i64
  %439 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1097 = getelementptr inbounds i32* %439, i64 %idxprom1096
  %440 = load i32* %arrayidx1097, align 4, !tbaa !3
  %mul1098 = shl nsw i32 %440, 1
  %441 = load double* %arraydecay1095, align 16, !tbaa !4
  %idxprom1100 = sext i32 %mul1098 to i64
  %add.ptr918.sum2139 = sub i64 %idxprom1100, %idx.ext916
  %arrayidx1101 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2139
  %442 = load double* %arrayidx1101, align 8, !tbaa !4
  %sub1102 = fsub double %442, %441
  store double %sub1102, double* %arrayidx1101, align 8, !tbaa !4
  %arrayidx1103 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %443 = load double* %arrayidx1103, align 8, !tbaa !4
  %add11042140 = or i32 %mul1098, 1
  %idxprom1105 = sext i32 %add11042140 to i64
  %add.ptr918.sum2141 = sub i64 %idxprom1105, %idx.ext916
  %arrayidx1106 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2141
  %444 = load double* %arrayidx1106, align 8, !tbaa !4
  %sub1107 = fsub double %444, %443
  store double %sub1107, double* %arrayidx1106, align 8, !tbaa !4
  %arrayidx1108 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2
  %445 = load double* %arrayidx1108, align 16, !tbaa !4
  %add.ptr926.sum2142 = sub i64 %idxprom1100, %idx.ext924
  %arrayidx1110 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2142
  %446 = load double* %arrayidx1110, align 8, !tbaa !4
  %sub1111 = fsub double %446, %445
  store double %sub1111, double* %arrayidx1110, align 8, !tbaa !4
  %arrayidx1112 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3
  %447 = load double* %arrayidx1112, align 8, !tbaa !4
  %add.ptr926.sum2143 = sub i64 %idxprom1105, %idx.ext924
  %arrayidx1115 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2143
  %448 = load double* %arrayidx1115, align 8, !tbaa !4
  %sub1116 = fsub double %448, %447
  store double %sub1116, double* %arrayidx1115, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.else1119:                                      ; preds = %for.end905
  %cmp1120 = icmp eq i32 %irowUT577.0.lcssa, %lastInU.0.lcssa2461
  br i1 %cmp1120, label %if.then1121, label %for.cond1373.preheader

if.then1121:                                      ; preds = %if.else1119
  %idxprom1122 = sext i32 %lastInU.0.lcssa2461 to i64
  %449 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1123 = getelementptr inbounds i32* %449, i64 %idxprom1122
  %450 = load i32* %arrayidx1123, align 4, !tbaa !3
  %call1124 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %450) #5
  %mul1125 = shl nsw i32 %450, 1
  %idx.ext1126 = sext i32 %mul1125 to i64
  %451 = load i32* %nrowU581, align 4, !tbaa !3
  %mul1129 = shl nsw i32 %451, 1
  call void @DVzero(i32 %mul1129, double* %call583) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call583, double* %rowUT0566.0.lcssa) #5
  %452 = load i32* %nrowU581, align 4, !tbaa !3
  call void @ZVdotU(i32 %452, double* %call583, double* %rowUT0566.0.lcssa, double* %rsum, double* %isum) #5
  %453 = load double* %rsum, align 8, !tbaa !4
  %454 = load double* %call1124, align 8, !tbaa !4
  %sub1133 = fsub double %454, %453
  store double %sub1133, double* %call1124, align 8, !tbaa !4
  %455 = load double* %isum, align 8, !tbaa !4
  %add11352116 = or i32 %mul1125, 1
  %idxprom1136 = sext i32 %add11352116 to i64
  %add.ptr1128.sum = sub i64 %idxprom1136, %idx.ext1126
  %arrayidx1137 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum
  %456 = load double* %arrayidx1137, align 8, !tbaa !4
  %sub1138 = fsub double %456, %455
  store double %sub1138, double* %arrayidx1137, align 8, !tbaa !4
  %457 = load i32* %nrowU581, align 4, !tbaa !3
  %mul1139 = shl nsw i32 %457, 1
  %idx.ext1140 = sext i32 %mul1139 to i64
  %add.ptr1141 = getelementptr inbounds double* %rowUT0566.0.lcssa, i64 %idx.ext1140
  %add1142 = add i32 %lastInU.0.lcssa2461, 1
  %458 = load i32* %ncolU, align 4, !tbaa !3
  %sub11442316 = add nsw i32 %458, -2
  %cmp11452317 = icmp slt i32 %add1142, %sub11442316
  br i1 %cmp11452317, label %for.body1146.lr.ph, label %for.end1197

for.body1146.lr.ph:                               ; preds = %if.then1121
  %arraydecay1153 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  %arrayidx1169 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %arrayidx1174 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2
  %arrayidx1178 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3
  %arrayidx1183 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4
  %arrayidx1187 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5
  %459 = sext i32 %add1142 to i64
  br label %for.body1146

for.body1146:                                     ; preds = %for.body1146.lr.ph, %for.body1146
  %460 = phi i32 [ %457, %for.body1146.lr.ph ], [ %479, %for.body1146 ]
  %indvars.iv2413 = phi i64 [ %459, %for.body1146.lr.ph ], [ %indvars.iv.next2414, %for.body1146 ]
  %jcolU.102319 = phi i32 [ %add1142, %for.body1146.lr.ph ], [ %add1196, %for.body1146 ]
  %colU0562.22318 = phi double* [ %add.ptr1141, %for.body1146.lr.ph ], [ %add.ptr1194, %for.body1146 ]
  %mul1147 = shl nsw i32 %460, 1
  %idx.ext1148 = sext i32 %mul1147 to i64
  %add.ptr1149 = getelementptr inbounds double* %colU0562.22318, i64 %idx.ext1148
  %add.ptr1149.sum = shl nsw i64 %idx.ext1148, 1
  %add.ptr1152 = getelementptr inbounds double* %colU0562.22318, i64 %add.ptr1149.sum
  call void @ZVdotU13(i32 %460, double* %call583, double* %colU0562.22318, double* %add.ptr1149, double* %add.ptr1152, double* %arraydecay1153) #5
  %461 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1155 = getelementptr inbounds i32* %461, i64 %indvars.iv2413
  %462 = load i32* %arrayidx1155, align 4, !tbaa !3
  %mul1156 = shl nsw i32 %462, 1
  %463 = add nsw i64 %indvars.iv2413, 1
  %arrayidx1159 = getelementptr inbounds i32* %461, i64 %463
  %464 = load i32* %arrayidx1159, align 4, !tbaa !3
  %mul1160 = shl nsw i32 %464, 1
  %465 = add nsw i64 %indvars.iv2413, 2
  %arrayidx1163 = getelementptr inbounds i32* %461, i64 %465
  %466 = load i32* %arrayidx1163, align 4, !tbaa !3
  %mul1164 = shl nsw i32 %466, 1
  %467 = load double* %arraydecay1153, align 16, !tbaa !4
  %idxprom1166 = sext i32 %mul1156 to i64
  %add.ptr1128.sum2126 = sub i64 %idxprom1166, %idx.ext1126
  %arrayidx1167 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2126
  %468 = load double* %arrayidx1167, align 8, !tbaa !4
  %sub1168 = fsub double %468, %467
  store double %sub1168, double* %arrayidx1167, align 8, !tbaa !4
  %469 = load double* %arrayidx1169, align 8, !tbaa !4
  %add11702127 = or i32 %mul1156, 1
  %idxprom1171 = sext i32 %add11702127 to i64
  %add.ptr1128.sum2128 = sub i64 %idxprom1171, %idx.ext1126
  %arrayidx1172 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2128
  %470 = load double* %arrayidx1172, align 8, !tbaa !4
  %sub1173 = fsub double %470, %469
  store double %sub1173, double* %arrayidx1172, align 8, !tbaa !4
  %471 = load double* %arrayidx1174, align 16, !tbaa !4
  %idxprom1175 = sext i32 %mul1160 to i64
  %add.ptr1128.sum2129 = sub i64 %idxprom1175, %idx.ext1126
  %arrayidx1176 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2129
  %472 = load double* %arrayidx1176, align 8, !tbaa !4
  %sub1177 = fsub double %472, %471
  store double %sub1177, double* %arrayidx1176, align 8, !tbaa !4
  %473 = load double* %arrayidx1178, align 8, !tbaa !4
  %add11792130 = or i32 %mul1160, 1
  %idxprom1180 = sext i32 %add11792130 to i64
  %add.ptr1128.sum2131 = sub i64 %idxprom1180, %idx.ext1126
  %arrayidx1181 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2131
  %474 = load double* %arrayidx1181, align 8, !tbaa !4
  %sub1182 = fsub double %474, %473
  store double %sub1182, double* %arrayidx1181, align 8, !tbaa !4
  %475 = load double* %arrayidx1183, align 16, !tbaa !4
  %idxprom1184 = sext i32 %mul1164 to i64
  %add.ptr1128.sum2132 = sub i64 %idxprom1184, %idx.ext1126
  %arrayidx1185 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2132
  %476 = load double* %arrayidx1185, align 8, !tbaa !4
  %sub1186 = fsub double %476, %475
  store double %sub1186, double* %arrayidx1185, align 8, !tbaa !4
  %477 = load double* %arrayidx1187, align 8, !tbaa !4
  %add11882133 = or i32 %mul1164, 1
  %idxprom1189 = sext i32 %add11882133 to i64
  %add.ptr1128.sum2134 = sub i64 %idxprom1189, %idx.ext1126
  %arrayidx1190 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2134
  %478 = load double* %arrayidx1190, align 8, !tbaa !4
  %sub1191 = fsub double %478, %477
  store double %sub1191, double* %arrayidx1190, align 8, !tbaa !4
  %479 = load i32* %nrowU581, align 4, !tbaa !3
  %mul1192 = shl nsw i32 %479, 1
  %idx.ext1193 = sext i32 %mul1192 to i64
  %add.ptr1152.sum = add i64 %idx.ext1193, %add.ptr1149.sum
  %add.ptr1194 = getelementptr inbounds double* %colU0562.22318, i64 %add.ptr1152.sum
  %add1196 = add nsw i32 %jcolU.102319, 3
  %480 = load i32* %ncolU, align 4, !tbaa !3
  %sub1144 = add nsw i32 %480, -2
  %cmp1145 = icmp slt i32 %add1196, %sub1144
  %indvars.iv.next2414 = add i64 %indvars.iv2413, 3
  br i1 %cmp1145, label %for.body1146, label %for.end1197

for.end1197:                                      ; preds = %for.body1146, %if.then1121
  %481 = phi i32 [ %457, %if.then1121 ], [ %479, %for.body1146 ]
  %sub1144.lcssa = phi i32 [ %sub11442316, %if.then1121 ], [ %sub1144, %for.body1146 ]
  %.lcssa2315 = phi i32 [ %458, %if.then1121 ], [ %480, %for.body1146 ]
  %jcolU.10.lcssa = phi i32 [ %add1142, %if.then1121 ], [ %add1196, %for.body1146 ]
  %colU0562.2.lcssa = phi double* [ %add.ptr1141, %if.then1121 ], [ %add.ptr1194, %for.body1146 ]
  %cmp1199 = icmp eq i32 %jcolU.10.lcssa, %sub1144.lcssa
  br i1 %cmp1199, label %if.then1200, label %if.else1230

if.then1200:                                      ; preds = %for.end1197
  %mul1201 = shl nsw i32 %481, 1
  %idx.ext1202 = sext i32 %mul1201 to i64
  %add.ptr1203 = getelementptr inbounds double* %colU0562.2.lcssa, i64 %idx.ext1202
  %arraydecay1204 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  call void @ZVdotU12(i32 %481, double* %call583, double* %colU0562.2.lcssa, double* %add.ptr1203, double* %arraydecay1204) #5
  %idxprom1205 = sext i32 %sub1144.lcssa to i64
  %482 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1206 = getelementptr inbounds i32* %482, i64 %idxprom1205
  %483 = load i32* %arrayidx1206, align 4, !tbaa !3
  %mul1207 = shl nsw i32 %483, 1
  %add1208 = add nsw i32 %sub1144.lcssa, 1
  %idxprom1209 = sext i32 %add1208 to i64
  %arrayidx1210 = getelementptr inbounds i32* %482, i64 %idxprom1209
  %484 = load i32* %arrayidx1210, align 4, !tbaa !3
  %mul1211 = shl nsw i32 %484, 1
  %485 = load double* %arraydecay1204, align 16, !tbaa !4
  %idxprom1213 = sext i32 %mul1207 to i64
  %add.ptr1128.sum2120 = sub i64 %idxprom1213, %idx.ext1126
  %arrayidx1214 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2120
  %486 = load double* %arrayidx1214, align 8, !tbaa !4
  %sub1215 = fsub double %486, %485
  store double %sub1215, double* %arrayidx1214, align 8, !tbaa !4
  %arrayidx1216 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %487 = load double* %arrayidx1216, align 8, !tbaa !4
  %add12172121 = or i32 %mul1207, 1
  %idxprom1218 = sext i32 %add12172121 to i64
  %add.ptr1128.sum2122 = sub i64 %idxprom1218, %idx.ext1126
  %arrayidx1219 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2122
  %488 = load double* %arrayidx1219, align 8, !tbaa !4
  %sub1220 = fsub double %488, %487
  store double %sub1220, double* %arrayidx1219, align 8, !tbaa !4
  %arrayidx1221 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2
  %489 = load double* %arrayidx1221, align 16, !tbaa !4
  %idxprom1222 = sext i32 %mul1211 to i64
  %add.ptr1128.sum2123 = sub i64 %idxprom1222, %idx.ext1126
  %arrayidx1223 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2123
  %490 = load double* %arrayidx1223, align 8, !tbaa !4
  %sub1224 = fsub double %490, %489
  store double %sub1224, double* %arrayidx1223, align 8, !tbaa !4
  %arrayidx1225 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3
  %491 = load double* %arrayidx1225, align 8, !tbaa !4
  %add12262124 = or i32 %mul1211, 1
  %idxprom1227 = sext i32 %add12262124 to i64
  %add.ptr1128.sum2125 = sub i64 %idxprom1227, %idx.ext1126
  %arrayidx1228 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2125
  %492 = load double* %arrayidx1228, align 8, !tbaa !4
  %sub1229 = fsub double %492, %491
  store double %sub1229, double* %arrayidx1228, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.else1230:                                      ; preds = %for.end1197
  %sub1231 = add nsw i32 %.lcssa2315, -1
  %cmp1232 = icmp eq i32 %jcolU.10.lcssa, %sub1231
  br i1 %cmp1232, label %if.then1233, label %for.cond1373.preheader

if.then1233:                                      ; preds = %if.else1230
  %arraydecay1234 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0
  call void @ZVdotU11(i32 %481, double* %call583, double* %colU0562.2.lcssa, double* %arraydecay1234) #5
  %idxprom1235 = sext i32 %jcolU.10.lcssa to i64
  %493 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1236 = getelementptr inbounds i32* %493, i64 %idxprom1235
  %494 = load i32* %arrayidx1236, align 4, !tbaa !3
  %mul1237 = shl nsw i32 %494, 1
  %495 = load double* %arraydecay1234, align 16, !tbaa !4
  %idxprom1239 = sext i32 %mul1237 to i64
  %add.ptr1128.sum2117 = sub i64 %idxprom1239, %idx.ext1126
  %arrayidx1240 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2117
  %496 = load double* %arrayidx1240, align 8, !tbaa !4
  %sub1241 = fsub double %496, %495
  store double %sub1241, double* %arrayidx1240, align 8, !tbaa !4
  %arrayidx1242 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1
  %497 = load double* %arrayidx1242, align 8, !tbaa !4
  %add12432118 = or i32 %mul1237, 1
  %idxprom1244 = sext i32 %add12432118 to i64
  %add.ptr1128.sum2119 = sub i64 %idxprom1244, %idx.ext1126
  %arrayidx1245 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2119
  %498 = load double* %arrayidx1245, align 8, !tbaa !4
  %sub1246 = fsub double %498, %497
  store double %sub1246, double* %arrayidx1245, align 8, !tbaa !4
  br label %for.cond1373.preheader

if.then1254:                                      ; preds = %if.then554
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU, i32* %nentU1267, i32** %sizes1275, i32** %indU1272, double** %entU1259) #5
  %nrow1276 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4
  %499 = load i32* %nrow1276, align 4, !tbaa !3
  %mul1277 = shl nsw i32 %499, 2
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul1277) #5
  %call1278 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %mul1279 = shl nsw i32 %499, 1
  %idx.ext1280 = sext i32 %mul1279 to i64
  %add.ptr1281 = getelementptr inbounds double* %call1278, i64 %idx.ext1280
  %cmp12832350 = icmp sgt i32 %jcolU.0.lcssa, 0
  br i1 %cmp12832350, label %for.body1284.lr.ph, label %for.end1290

for.body1284.lr.ph:                               ; preds = %if.then1254
  %500 = load i32** %sizes1275, align 8, !tbaa !0
  br label %for.body1284

for.body1284:                                     ; preds = %for.body1284, %for.body1284.lr.ph
  %indvars.iv2441 = phi i64 [ 0, %for.body1284.lr.ph ], [ %indvars.iv.next2442, %for.body1284 ]
  %offset1269.02351 = phi i32 [ 0, %for.body1284.lr.ph ], [ %add1287, %for.body1284 ]
  %arrayidx1286 = getelementptr inbounds i32* %500, i64 %indvars.iv2441
  %501 = load i32* %arrayidx1286, align 4, !tbaa !3
  %add1287 = add nsw i32 %501, %offset1269.02351
  %indvars.iv.next2442 = add i64 %indvars.iv2441, 1
  %lftr.wideiv2443 = trunc i64 %indvars.iv.next2442 to i32
  %exitcond2444 = icmp eq i32 %lftr.wideiv2443, %jcolU.0.lcssa
  br i1 %exitcond2444, label %for.end1290, label %for.body1284

for.end1290:                                      ; preds = %for.body1284, %if.then1254
  %offset1269.0.lcssa = phi i32 [ 0, %if.then1254 ], [ %add1287, %for.body1284 ]
  %cmp12972345 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa2461
  br i1 %cmp12972345, label %for.cond1373.preheader, label %for.body1298.lr.ph

for.body1298.lr.ph:                               ; preds = %for.end1290
  %mul1291 = shl nsw i32 %offset1269.0.lcssa, 1
  %idx.ext1294 = sext i32 %offset1269.0.lcssa to i64
  %502 = load i32** %indU1272, align 8, !tbaa !0
  %idx.ext1292 = sext i32 %mul1291 to i64
  %503 = load double** %entU1259, align 8, !tbaa !0
  %add.ptr1295 = getelementptr inbounds i32* %502, i64 %idx.ext1294
  %add.ptr1293 = getelementptr inbounds double* %503, i64 %idx.ext1292
  %504 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body1298

for.cond1373.preheader:                           ; preds = %for.end1290, %for.inc1364, %for.end487, %for.inc544, %if.else1119, %if.else377, %if.else1091, %if.then1094, %if.then1043, %if.then1200, %if.then1233, %if.else1230, %for.end69, %if.else360, %if.then363, %if.then335, %if.then429, %if.then449, %if.else446
  %505 = load i32* %ncolU, align 4, !tbaa !3
  %cmp13742259 = icmp slt i32 %jcolU.0.lcssa, %505
  br i1 %cmp13742259, label %for.body1375.lr.ph, label %return

for.body1375.lr.ph:                               ; preds = %for.cond1373.preheader
  %506 = load i32** %colindU, align 8, !tbaa !0
  %507 = load i32** %colindT, align 8, !tbaa !0
  %508 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body1375

for.body1298:                                     ; preds = %for.inc1364.for.body1298_crit_edge, %for.body1298.lr.ph
  %indvars.iv2439 = phi i64 [ %indvars.iv.next2440, %for.inc1364.for.body1298_crit_edge ], [ %504, %for.body1298.lr.ph ]
  %indUT01274.02349 = phi i32* [ %indUT01274.1, %for.inc1364.for.body1298_crit_edge ], [ %add.ptr1295, %for.body1298.lr.ph ]
  %rowUT01260.02346 = phi double* [ %rowUT01260.1, %for.inc1364.for.body1298_crit_edge ], [ %add.ptr1293, %for.body1298.lr.ph ]
  %509 = load i32** %sizes1275, align 8, !tbaa !0
  %arrayidx1300 = getelementptr inbounds i32* %509, i64 %indvars.iv2439
  %510 = load i32* %arrayidx1300, align 4, !tbaa !3
  %cmp1301 = icmp sgt i32 %510, 0
  br i1 %cmp1301, label %for.body1313.lr.ph, label %for.body1298.for.inc1364_crit_edge

for.body1298.for.inc1364_crit_edge:               ; preds = %for.body1298
  %.pre2459 = trunc i64 %indvars.iv2439 to i32
  br label %for.inc1364

for.body1313.lr.ph:                               ; preds = %for.body1298
  %511 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1304 = getelementptr inbounds i32* %511, i64 %indvars.iv2439
  %512 = load i32* %arrayidx1304, align 4, !tbaa !3
  %call1305 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %512) #5
  %mul1306 = shl nsw i32 %512, 1
  %idx.ext1307 = sext i32 %mul1306 to i64
  call void @DVzero(i32 %mul1277, double* %call1278) #5
  br label %for.body1313

for.body1313:                                     ; preds = %for.body1313, %for.body1313.lr.ph
  %indvars.iv2431 = phi i64 [ 0, %for.body1313.lr.ph ], [ %indvars.iv.next2432, %for.body1313 ]
  %arrayidx1315 = getelementptr inbounds i32* %indUT01274.02349, i64 %indvars.iv2431
  %513 = load i32* %arrayidx1315, align 4, !tbaa !3
  %mul1316 = shl nsw i32 %513, 1
  %add13172113 = or i32 %mul1316, 1
  %514 = trunc i64 %indvars.iv2431 to i32
  %mul1318 = shl nsw i32 %514, 1
  %idxprom1319 = sext i32 %mul1318 to i64
  %arrayidx1320 = getelementptr inbounds double* %rowUT01260.02346, i64 %idxprom1319
  %515 = load double* %arrayidx1320, align 8, !tbaa !4
  %idxprom1321 = sext i32 %mul1316 to i64
  %add.ptr1281.sum = add i64 %idxprom1321, %idx.ext1280
  %arrayidx1322 = getelementptr inbounds double* %call1278, i64 %add.ptr1281.sum
  store double %515, double* %arrayidx1322, align 8, !tbaa !4
  %add13242114 = or i32 %mul1318, 1
  %idxprom1325 = sext i32 %add13242114 to i64
  %arrayidx1326 = getelementptr inbounds double* %rowUT01260.02346, i64 %idxprom1325
  %516 = load double* %arrayidx1326, align 8, !tbaa !4
  %idxprom1327 = sext i32 %add13172113 to i64
  %add.ptr1281.sum2115 = add i64 %idxprom1327, %idx.ext1280
  %arrayidx1328 = getelementptr inbounds double* %call1278, i64 %add.ptr1281.sum2115
  store double %516, double* %arrayidx1328, align 8, !tbaa !4
  %indvars.iv.next2432 = add i64 %indvars.iv2431, 1
  %lftr.wideiv2433 = trunc i64 %indvars.iv.next2432 to i32
  %exitcond2434 = icmp eq i32 %lftr.wideiv2433, %510
  br i1 %exitcond2434, label %for.end1331, label %for.body1313

for.end1331:                                      ; preds = %for.body1313
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call1278, double* %add.ptr1281) #5
  %517 = load i32* %ncolU, align 4, !tbaa !3
  %518 = trunc i64 %indvars.iv2439 to i32
  %cmp13332340 = icmp slt i32 %518, %517
  br i1 %cmp13332340, label %for.body1334, label %for.end1357

for.body1334:                                     ; preds = %for.inc1355, %for.end1331
  %519 = phi i32 [ %517, %for.end1331 ], [ %528, %for.inc1355 ]
  %indvars.iv2437 = phi i64 [ %indvars.iv2439, %for.end1331 ], [ %indvars.iv.next2438, %for.inc1355 ]
  %indU01273.02343 = phi i32* [ %indUT01274.02349, %for.end1331 ], [ %indU01273.1, %for.inc1355 ]
  %colU01258.02341 = phi double* [ %rowUT01260.02346, %for.end1331 ], [ %colU01258.1, %for.inc1355 ]
  %520 = load i32** %sizes1275, align 8, !tbaa !0
  %arrayidx1336 = getelementptr inbounds i32* %520, i64 %indvars.iv2437
  %521 = load i32* %arrayidx1336, align 4, !tbaa !3
  %cmp1337 = icmp sgt i32 %521, 0
  br i1 %cmp1337, label %if.then1338, label %for.inc1355

if.then1338:                                      ; preds = %for.body1334
  call void @ZVdotiU(i32 %521, double* %call1278, i32* %indU01273.02343, double* %colU01258.02341, double* %rsum1256, double* %isum1255) #5
  %522 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1340 = getelementptr inbounds i32* %522, i64 %indvars.iv2437
  %523 = load i32* %arrayidx1340, align 4, !tbaa !3
  %mul1341 = shl nsw i32 %523, 1
  %524 = load double* %rsum1256, align 8, !tbaa !4
  %idxprom1342 = sext i32 %mul1341 to i64
  %add.ptr1309.sum = sub i64 %idxprom1342, %idx.ext1307
  %arrayidx1343 = getelementptr inbounds double* %call1305, i64 %add.ptr1309.sum
  %525 = load double* %arrayidx1343, align 8, !tbaa !4
  %sub1344 = fsub double %525, %524
  store double %sub1344, double* %arrayidx1343, align 8, !tbaa !4
  %526 = load double* %isum1255, align 8, !tbaa !4
  %add13452111 = or i32 %mul1341, 1
  %idxprom1346 = sext i32 %add13452111 to i64
  %add.ptr1309.sum2112 = sub i64 %idxprom1346, %idx.ext1307
  %arrayidx1347 = getelementptr inbounds double* %call1305, i64 %add.ptr1309.sum2112
  %527 = load double* %arrayidx1347, align 8, !tbaa !4
  %sub1348 = fsub double %527, %526
  store double %sub1348, double* %arrayidx1347, align 8, !tbaa !4
  %mul1349 = shl nsw i32 %521, 1
  %idx.ext1350 = sext i32 %mul1349 to i64
  %add.ptr1351 = getelementptr inbounds double* %colU01258.02341, i64 %idx.ext1350
  %idx.ext1352 = sext i32 %521 to i64
  %add.ptr1353 = getelementptr inbounds i32* %indU01273.02343, i64 %idx.ext1352
  %.pre2457 = load i32* %ncolU, align 4, !tbaa !3
  br label %for.inc1355

for.inc1355:                                      ; preds = %for.body1334, %if.then1338
  %528 = phi i32 [ %.pre2457, %if.then1338 ], [ %519, %for.body1334 ]
  %colU01258.1 = phi double* [ %add.ptr1351, %if.then1338 ], [ %colU01258.02341, %for.body1334 ]
  %indU01273.1 = phi i32* [ %add.ptr1353, %if.then1338 ], [ %indU01273.02343, %for.body1334 ]
  %indvars.iv.next2438 = add i64 %indvars.iv2437, 1
  %529 = trunc i64 %indvars.iv.next2438 to i32
  %cmp1333 = icmp slt i32 %529, %528
  br i1 %cmp1333, label %for.body1334, label %for.end1357

for.end1357:                                      ; preds = %for.inc1355, %for.end1331
  %mul1358 = shl nsw i32 %510, 1
  %idx.ext1359 = sext i32 %mul1358 to i64
  %add.ptr1360 = getelementptr inbounds double* %rowUT01260.02346, i64 %idx.ext1359
  %idx.ext1361 = sext i32 %510 to i64
  %add.ptr1362 = getelementptr inbounds i32* %indUT01274.02349, i64 %idx.ext1361
  br label %for.inc1364

for.inc1364:                                      ; preds = %for.body1298.for.inc1364_crit_edge, %for.end1357
  %.pre-phi2460 = phi i32 [ %.pre2459, %for.body1298.for.inc1364_crit_edge ], [ %518, %for.end1357 ]
  %rowUT01260.1 = phi double* [ %rowUT01260.02346, %for.body1298.for.inc1364_crit_edge ], [ %add.ptr1360, %for.end1357 ]
  %indUT01274.1 = phi i32* [ %indUT01274.02349, %for.body1298.for.inc1364_crit_edge ], [ %add.ptr1362, %for.end1357 ]
  %cmp1297 = icmp slt i32 %.pre-phi2460, %lastInU.0.lcssa2461
  br i1 %cmp1297, label %for.inc1364.for.body1298_crit_edge, label %for.cond1373.preheader

for.inc1364.for.body1298_crit_edge:               ; preds = %for.inc1364
  %indvars.iv.next2440 = add i64 %indvars.iv2439, 1
  br label %for.body1298

if.else1367:                                      ; preds = %if.then554
  %530 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1368 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %530, i8* getelementptr inbounds ([94 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

for.body1375:                                     ; preds = %for.body1375.lr.ph, %for.body1375
  %indvars.iv = phi i64 [ %508, %for.body1375.lr.ph ], [ %indvars.iv.next, %for.body1375 ]
  %arrayidx1377 = getelementptr inbounds i32* %506, i64 %indvars.iv
  %531 = load i32* %arrayidx1377, align 4, !tbaa !3
  %idxprom1378 = sext i32 %531 to i64
  %arrayidx1379 = getelementptr inbounds i32* %507, i64 %idxprom1378
  %532 = load i32* %arrayidx1379, align 4, !tbaa !3
  store i32 %532, i32* %arrayidx1377, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %533 = load i32* %ncolU, align 4, !tbaa !3
  %534 = trunc i64 %indvars.iv.next to i32
  %cmp1374 = icmp slt i32 %534, %533
  br i1 %cmp1374, label %for.body1375, label %return

return:                                           ; preds = %for.cond1373.preheader, %for.body1375, %for.end
  ret void
}

; Function Attrs: optsize
declare double @DVdot(i32, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot33(i32, double*, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot32(i32, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot31(i32, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot23(i32, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot22(i32, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot21(i32, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot13(i32, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot12(i32, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @DVdot11(i32, double*, double*, double*) #3

; Function Attrs: optsize
declare double @DVdoti(i32, double*, i32*, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_updateN(%struct._Chv* %chvT, %struct._SubMtx* %mtxL, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #0 {
entry:
  %ncolT = alloca i32, align 4
  %ncolU = alloca i32, align 4
  %colindT = alloca i32*, align 8
  %colindU = alloca i32*, align 8
  %sums = alloca [9 x double], align 16
  %entL = alloca double*, align 8
  %entU = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncolL = alloca i32, align 4
  %nrowL = alloca i32, align 4
  %nrowU = alloca i32, align 4
  %entL906 = alloca double*, align 8
  %entU907 = alloca double*, align 8
  %ncolU912 = alloca i32, align 4
  %nentL = alloca i32, align 4
  %nentU = alloca i32, align 4
  %nrowL913 = alloca i32, align 4
  %indL = alloca i32*, align 8
  %indU = alloca i32*, align 8
  %sizesL = alloca i32*, align 8
  %sizesU = alloca i32*, align 8
  %sums1085 = alloca [18 x double], align 16
  %entL1092 = alloca double*, align 8
  %entU1093 = alloca double*, align 8
  %inc11106 = alloca i32, align 4
  %inc21107 = alloca i32, align 4
  %ncolL1114 = alloca i32, align 4
  %nrowL1115 = alloca i32, align 4
  %nrowU1116 = alloca i32, align 4
  %imag = alloca double, align 8
  %real = alloca double, align 8
  %entL2547 = alloca double*, align 8
  %entU2548 = alloca double*, align 8
  %ncolU2561 = alloca i32, align 4
  %nentL2562 = alloca i32, align 4
  %nentU2563 = alloca i32, align 4
  %nrowL2564 = alloca i32, align 4
  %indL2572 = alloca i32*, align 8
  %indU2575 = alloca i32*, align 8
  %sizesL2578 = alloca i32*, align 8
  %sizesU2579 = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chvT, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxD, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._SubMtx* %mtxU, null
  %or.cond4542 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._DV* %tempDV, null
  %or.cond4543 = or i1 %or.cond4542, %cmp5
  br i1 %or.cond4543, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxL, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else33 [
    i32 1, label %if.then7
    i32 2, label %if.then21
  ]

if.then7:                                         ; preds = %if.end
  %type8 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0
  %2 = load i32* %type8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %2, 1
  br i1 %cmp9, label %lor.lhs.false10, label %if.then16

lor.lhs.false10:                                  ; preds = %if.then7
  %type11 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 0
  %3 = load i32* %type11, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %3, 1
  br i1 %cmp12, label %lor.lhs.false13, label %if.then16

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %type14 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0
  %4 = load i32* %type14, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %4, 1
  br i1 %cmp15, label %if.end36, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false10, %if.then7
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([93 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.then21:                                        ; preds = %if.end
  %type22 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0
  %6 = load i32* %type22, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %6, 2
  br i1 %cmp23, label %lor.lhs.false24, label %if.then30

lor.lhs.false24:                                  ; preds = %if.then21
  %type25 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 0
  %7 = load i32* %type25, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %7, 2
  br i1 %cmp26, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %type28 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0
  %8 = load i32* %type28, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %8, 2
  br i1 %cmp29, label %if.end36, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %if.then21
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([96 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.else33:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([83 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end36:                                         ; preds = %lor.lhs.false27, %lor.lhs.false13
  call void @Chv_columnIndices(%struct._Chv* %chvT, i32* %ncolT, i32** %colindT) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxU, i32* %ncolU, i32** %colindU) #5
  %11 = load i32** %colindT, align 8, !tbaa !0
  %12 = load i32* %11, align 4, !tbaa !3
  %nD = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 1
  %13 = load i32* %nD, align 4, !tbaa !3
  %sub = add nsw i32 %13, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx37 = getelementptr inbounds i32* %11, i64 %idxprom
  %14 = load i32* %arrayidx37, align 4, !tbaa !3
  %15 = load i32* %ncolU, align 4, !tbaa !3
  %cmp384678 = icmp sgt i32 %15, 0
  br i1 %cmp384678, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %16 = load i32** %colindU, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %17 = trunc i64 %indvars.iv.next4788 to i32
  %cmp38 = icmp slt i32 %17, %15
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv4787 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next4788, %for.cond ]
  %jcolU.04679 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx40 = getelementptr inbounds i32* %16, i64 %indvars.iv4787
  %18 = load i32* %arrayidx40, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %12, %18
  %cmp44 = icmp sgt i32 %18, %14
  %or.cond4544 = or i1 %cmp41, %cmp44
  %indvars.iv.next4788 = add i64 %indvars.iv4787, 1
  %inc = add nsw i32 %jcolU.04679, 1
  br i1 %or.cond4544, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body, %if.end36
  %jcolU.0.lcssa = phi i32 [ 0, %if.end36 ], [ %jcolU.04679, %for.body ], [ %inc, %for.cond ]
  %cmp47 = icmp eq i32 %jcolU.0.lcssa, %15
  br i1 %cmp47, label %return, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.end
  %cmp514673 = icmp slt i32 %jcolU.0.lcssa, %15
  br i1 %cmp514673, label %for.body52.lr.ph, label %for.end75

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %19 = load i32** %colindU, align 8, !tbaa !0
  %20 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body52

for.cond50:                                       ; preds = %for.body52
  %inc60 = add nsw i32 %jcolU.14675, 1
  %21 = trunc i64 %indvars.iv.next4784 to i32
  %cmp51 = icmp slt i32 %21, %15
  %22 = trunc i64 %indvars.iv4783 to i32
  br i1 %cmp51, label %for.body52, label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.cond50, %for.body52
  %lastInU.0.lcssa = phi i32 [ %lastInU.04674, %for.body52 ], [ %jcolU.14675, %for.cond50 ]
  br i1 %cmp514673, label %while.cond.preheader.lr.ph, label %for.end75

while.cond.preheader.lr.ph:                       ; preds = %for.cond62.preheader
  %23 = load i32** %colindU, align 8, !tbaa !0
  %24 = sext i32 %jcolU.0.lcssa to i64
  br label %while.cond.preheader

for.body52:                                       ; preds = %for.body52.lr.ph, %for.cond50
  %indvars.iv4783 = phi i64 [ %20, %for.body52.lr.ph ], [ %indvars.iv.next4784, %for.cond50 ]
  %jcolU.14675 = phi i32 [ %jcolU.0.lcssa, %for.body52.lr.ph ], [ %inc60, %for.cond50 ]
  %lastInU.04674 = phi i32 [ %jcolU.0.lcssa, %for.body52.lr.ph ], [ %22, %for.cond50 ]
  %arrayidx54 = getelementptr inbounds i32* %19, i64 %indvars.iv4783
  %25 = load i32* %arrayidx54, align 4, !tbaa !3
  %cmp55 = icmp sgt i32 %25, %14
  %indvars.iv.next4784 = add i64 %indvars.iv4783, 1
  br i1 %cmp55, label %for.cond62.preheader, label %for.cond50

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv4779 = phi i64 [ %24, %while.cond.preheader.lr.ph ], [ %indvars.iv.next4780, %while.end ]
  %jcolT.04672 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jcolT.1, %while.end ]
  %arrayidx66 = getelementptr inbounds i32* %23, i64 %indvars.iv4779
  %26 = load i32* %arrayidx66, align 4, !tbaa !3
  %27 = sext i32 %jcolT.04672 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %indvars.iv4777 = phi i64 [ %indvars.iv.next4778, %while.cond ], [ %27, %while.cond.preheader ]
  %jcolT.1 = phi i32 [ %inc70, %while.cond ], [ %jcolT.04672, %while.cond.preheader ]
  %arrayidx68 = getelementptr inbounds i32* %11, i64 %indvars.iv4777
  %28 = load i32* %arrayidx68, align 4, !tbaa !3
  %cmp69 = icmp eq i32 %26, %28
  %indvars.iv.next4778 = add i64 %indvars.iv4777, 1
  %inc70 = add nsw i32 %jcolT.1, 1
  br i1 %cmp69, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %jcolT.1, i32* %arrayidx66, align 4, !tbaa !3
  %indvars.iv.next4780 = add i64 %indvars.iv4779, 1
  %29 = load i32* %ncolU, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next4780 to i32
  %cmp63 = icmp slt i32 %30, %29
  br i1 %cmp63, label %while.cond.preheader, label %for.end75

for.end75:                                        ; preds = %for.cond50.preheader, %while.end, %for.cond62.preheader
  %lastInU.0.lcssa4789 = phi i32 [ %lastInU.0.lcssa, %for.cond62.preheader ], [ %lastInU.0.lcssa, %while.end ], [ %jcolU.0.lcssa, %for.cond50.preheader ]
  %31 = load i32* %type, align 4, !tbaa !3
  switch i32 %31, label %for.cond2785.preheader [
    i32 1, label %if.then78
    i32 2, label %if.then1078
  ]

if.then78:                                        ; preds = %for.end75
  %mode = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1
  %32 = load i32* %mode, align 4, !tbaa !3
  switch i32 %32, label %if.else1071 [
    i32 1, label %land.lhs.true80
    i32 3, label %land.lhs.true900
  ]

land.lhs.true80:                                  ; preds = %if.then78
  %mode81 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1
  %33 = load i32* %mode81, align 4, !tbaa !3
  %cmp82 = icmp eq i32 %33, 0
  br i1 %cmp82, label %if.then83, label %if.else1071

if.then83:                                        ; preds = %land.lhs.true80
  %34 = bitcast [9 x double]* %sums to i8*
  call void @llvm.lifetime.start(i64 72, i8* %34) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxL, i32* %nrowL, i32* %ncolL, i32* %inc1, i32* %inc2, double** %entL) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU, i32* %ncolU, i32* %inc1, i32* %inc2, double** %entU) #5
  %35 = load i32* %nrowU, align 4, !tbaa !3
  %mul = mul nsw i32 %35, 6
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul) #5
  %call85 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %36 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds double* %call85, i64 %idx.ext
  %add.ptr.sum = shl nsw i64 %idx.ext, 1
  %add.ptr87 = getelementptr inbounds double* %call85, i64 %add.ptr.sum
  %add.ptr87.sum = add i64 %add.ptr.sum, %idx.ext
  %add.ptr89 = getelementptr inbounds double* %call85, i64 %add.ptr87.sum
  %add.ptr89.sum = add i64 %add.ptr87.sum, %idx.ext
  %add.ptr91 = getelementptr inbounds double* %call85, i64 %add.ptr89.sum
  %add.ptr91.sum = add i64 %add.ptr89.sum, %idx.ext
  %add.ptr93 = getelementptr inbounds double* %call85, i64 %add.ptr91.sum
  %mul94 = mul nsw i32 %36, %jcolU.0.lcssa
  %sub96 = add nsw i32 %lastInU.0.lcssa4789, -2
  %cmp974588 = icmp sgt i32 %jcolU.0.lcssa, %sub96
  br i1 %cmp974588, label %for.end475, label %for.body98.lr.ph

for.body98.lr.ph:                                 ; preds = %if.then83
  %arraydecay = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  %arrayidx127 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %arrayidx131 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3
  %arrayidx137 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %arrayidx141 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 6
  %arrayidx146 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4
  %arrayidx150 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5
  %arrayidx154 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 7
  %arrayidx159 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 8
  %37 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %if.end470
  %38 = phi i32 [ %36, %for.body98.lr.ph ], [ %163, %if.end470 ]
  %indvars.iv4704 = phi i64 [ %37, %for.body98.lr.ph ], [ %indvars.iv.next4705, %if.end470 ]
  %indvars.iv4697.in = phi i64 [ %37, %for.body98.lr.ph ], [ %indvars.iv4697, %if.end470 ]
  %irowL.04590 = phi i32 [ %jcolU.0.lcssa, %for.body98.lr.ph ], [ %add166, %if.end470 ]
  %offset.04589 = phi i32 [ %mul94, %for.body98.lr.ph ], [ %add472, %if.end470 ]
  %indvars.iv4697 = add i64 %indvars.iv4697.in, 3
  %39 = load double** %entL, align 8, !tbaa !0
  %idx.ext99 = sext i32 %offset.04589 to i64
  %add.ptr100 = getelementptr inbounds double* %39, i64 %idx.ext99
  %idx.ext101 = sext i32 %38 to i64
  %add.ptr100.sum = add i64 %idx.ext101, %idx.ext99
  %add.ptr102 = getelementptr inbounds double* %39, i64 %add.ptr100.sum
  %add.ptr102.sum = add i64 %add.ptr100.sum, %idx.ext101
  %add.ptr104 = getelementptr inbounds double* %39, i64 %add.ptr102.sum
  %40 = load double** %entU, align 8, !tbaa !0
  %add.ptr106 = getelementptr inbounds double* %40, i64 %idx.ext99
  %add.ptr108 = getelementptr inbounds double* %40, i64 %add.ptr100.sum
  %add.ptr110 = getelementptr inbounds double* %40, i64 %add.ptr102.sum
  %41 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %41, i64 %indvars.iv4704
  %42 = load i32* %arrayidx112, align 4, !tbaa !3
  %call113 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %42) #5
  %43 = add nsw i64 %indvars.iv4704, 1
  %44 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32* %44, i64 %43
  %45 = load i32* %arrayidx115, align 4, !tbaa !3
  %call116 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %45) #5
  %46 = add nsw i64 %indvars.iv4704, 2
  %47 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i32* %47, i64 %46
  %48 = load i32* %arrayidx119, align 4, !tbaa !3
  %call120 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %48) #5
  %49 = load i32* %nrowU, align 4, !tbaa !3
  %mul121 = mul nsw i32 %49, 3
  call void @DVzero(i32 %mul121, double* %call85) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call85, double* %add.ptr, double* %add.ptr87, double* %add.ptr100, double* %add.ptr102, double* %add.ptr104) #5
  %50 = load i32* %nrowU, align 4, !tbaa !3
  %mul122 = mul nsw i32 %50, 3
  call void @DVzero(i32 %mul122, double* %add.ptr89) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %add.ptr106, double* %add.ptr108, double* %add.ptr110) #5
  %51 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot33(i32 %51, double* %call85, double* %add.ptr, double* %add.ptr87, double* %add.ptr106, double* %add.ptr108, double* %add.ptr110, double* %arraydecay) #5
  %52 = load double* %arraydecay, align 16, !tbaa !4
  %53 = load double* %call113, align 8, !tbaa !4
  %sub125 = fsub double %53, %52
  store double %sub125, double* %call113, align 8, !tbaa !4
  %sub126 = sub nsw i32 %45, %42
  %54 = load double* %arrayidx127, align 8, !tbaa !4
  %idxprom128 = sext i32 %sub126 to i64
  %arrayidx129 = getelementptr inbounds double* %call113, i64 %idxprom128
  %55 = load double* %arrayidx129, align 8, !tbaa !4
  %sub130 = fsub double %55, %54
  store double %sub130, double* %arrayidx129, align 8, !tbaa !4
  %56 = load double* %arrayidx131, align 8, !tbaa !4
  %sub132 = sub nsw i32 0, %sub126
  %idxprom133 = sext i32 %sub132 to i64
  %arrayidx134 = getelementptr inbounds double* %call113, i64 %idxprom133
  %57 = load double* %arrayidx134, align 8, !tbaa !4
  %sub135 = fsub double %57, %56
  store double %sub135, double* %arrayidx134, align 8, !tbaa !4
  %sub136 = sub nsw i32 %48, %42
  %58 = load double* %arrayidx137, align 16, !tbaa !4
  %idxprom138 = sext i32 %sub136 to i64
  %arrayidx139 = getelementptr inbounds double* %call113, i64 %idxprom138
  %59 = load double* %arrayidx139, align 8, !tbaa !4
  %sub140 = fsub double %59, %58
  store double %sub140, double* %arrayidx139, align 8, !tbaa !4
  %60 = load double* %arrayidx141, align 16, !tbaa !4
  %sub142 = sub nsw i32 0, %sub136
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds double* %call113, i64 %idxprom143
  %61 = load double* %arrayidx144, align 8, !tbaa !4
  %sub145 = fsub double %61, %60
  store double %sub145, double* %arrayidx144, align 8, !tbaa !4
  %62 = load double* %arrayidx146, align 16, !tbaa !4
  %63 = load double* %call116, align 8, !tbaa !4
  %sub148 = fsub double %63, %62
  store double %sub148, double* %call116, align 8, !tbaa !4
  %sub149 = sub nsw i32 %48, %45
  %64 = load double* %arrayidx150, align 8, !tbaa !4
  %idxprom151 = sext i32 %sub149 to i64
  %arrayidx152 = getelementptr inbounds double* %call116, i64 %idxprom151
  %65 = load double* %arrayidx152, align 8, !tbaa !4
  %sub153 = fsub double %65, %64
  store double %sub153, double* %arrayidx152, align 8, !tbaa !4
  %66 = load double* %arrayidx154, align 8, !tbaa !4
  %sub155 = sub nsw i32 0, %sub149
  %idxprom156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds double* %call116, i64 %idxprom156
  %67 = load double* %arrayidx157, align 8, !tbaa !4
  %sub158 = fsub double %67, %66
  store double %sub158, double* %arrayidx157, align 8, !tbaa !4
  %68 = load double* %arrayidx159, align 16, !tbaa !4
  %69 = load double* %call120, align 8, !tbaa !4
  %sub161 = fsub double %69, %68
  store double %sub161, double* %call120, align 8, !tbaa !4
  %70 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext162 = sext i32 %70 to i64
  %add.ptr104.sum = add i64 %idx.ext162, %add.ptr102.sum
  %add.ptr163 = getelementptr inbounds double* %39, i64 %add.ptr104.sum
  %add.ptr165 = getelementptr inbounds double* %40, i64 %add.ptr104.sum
  %indvars.iv.next4705 = add i64 %indvars.iv4704, 3
  %add166 = add nsw i32 %irowL.04590, 3
  %71 = load i32* %ncolU, align 4, !tbaa !3
  %sub1684578 = add nsw i32 %71, -2
  %72 = trunc i64 %indvars.iv.next4705 to i32
  %cmp1694579 = icmp slt i32 %72, %sub1684578
  br i1 %cmp1694579, label %for.body170.lr.ph, label %for.end305

for.body170.lr.ph:                                ; preds = %for.body98
  %idx.ext188 = sext i32 %42 to i64
  %idx.ext190 = sext i32 %45 to i64
  %idx.ext193 = sext i32 %48 to i64
  br label %for.body170

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %73 = phi i32 [ %70, %for.body170.lr.ph ], [ %117, %for.body170 ]
  %indvars.iv4699 = phi i64 [ %indvars.iv4697, %for.body170.lr.ph ], [ %indvars.iv.next4700, %for.body170 ]
  %colU0.04582 = phi double* [ %add.ptr165, %for.body170.lr.ph ], [ %add.ptr302, %for.body170 ]
  %rowL0.04581 = phi double* [ %add.ptr163, %for.body170.lr.ph ], [ %add.ptr300, %for.body170 ]
  %jcolU84.04580 = phi i32 [ %add166, %for.body170.lr.ph ], [ %add304, %for.body170 ]
  %idx.ext171 = sext i32 %73 to i64
  %add.ptr172 = getelementptr inbounds double* %rowL0.04581, i64 %idx.ext171
  %add.ptr172.sum = shl nsw i64 %idx.ext171, 1
  %add.ptr174 = getelementptr inbounds double* %rowL0.04581, i64 %add.ptr172.sum
  %add.ptr176 = getelementptr inbounds double* %colU0.04582, i64 %idx.ext171
  %add.ptr178 = getelementptr inbounds double* %colU0.04582, i64 %add.ptr172.sum
  %74 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx180 = getelementptr inbounds i32* %74, i64 %indvars.iv4699
  %75 = load i32* %arrayidx180, align 4, !tbaa !3
  %76 = add nsw i64 %indvars.iv4699, 1
  %arrayidx183 = getelementptr inbounds i32* %74, i64 %76
  %77 = load i32* %arrayidx183, align 4, !tbaa !3
  %78 = add nsw i64 %indvars.iv4699, 2
  %arrayidx186 = getelementptr inbounds i32* %74, i64 %78
  %79 = load i32* %arrayidx186, align 4, !tbaa !3
  call void @DVdot33(i32 %73, double* %call85, double* %add.ptr, double* %add.ptr87, double* %colU0.04582, double* %add.ptr176, double* %add.ptr178, double* %arraydecay) #5
  %80 = load double* %arraydecay, align 16, !tbaa !4
  %idxprom197 = sext i32 %75 to i64
  %add.ptr189.sum = sub i64 %idxprom197, %idx.ext188
  %arrayidx198 = getelementptr inbounds double* %call113, i64 %add.ptr189.sum
  %81 = load double* %arrayidx198, align 8, !tbaa !4
  %sub199 = fsub double %81, %80
  store double %sub199, double* %arrayidx198, align 8, !tbaa !4
  %82 = load double* %arrayidx127, align 8, !tbaa !4
  %idxprom201 = sext i32 %77 to i64
  %add.ptr189.sum4524 = sub i64 %idxprom201, %idx.ext188
  %arrayidx202 = getelementptr inbounds double* %call113, i64 %add.ptr189.sum4524
  %83 = load double* %arrayidx202, align 8, !tbaa !4
  %sub203 = fsub double %83, %82
  store double %sub203, double* %arrayidx202, align 8, !tbaa !4
  %84 = load double* %arrayidx137, align 16, !tbaa !4
  %idxprom205 = sext i32 %79 to i64
  %add.ptr189.sum4525 = sub i64 %idxprom205, %idx.ext188
  %arrayidx206 = getelementptr inbounds double* %call113, i64 %add.ptr189.sum4525
  %85 = load double* %arrayidx206, align 8, !tbaa !4
  %sub207 = fsub double %85, %84
  store double %sub207, double* %arrayidx206, align 8, !tbaa !4
  %86 = load double* %arrayidx131, align 8, !tbaa !4
  %add.ptr192.sum = sub i64 %idxprom197, %idx.ext190
  %arrayidx210 = getelementptr inbounds double* %call116, i64 %add.ptr192.sum
  %87 = load double* %arrayidx210, align 8, !tbaa !4
  %sub211 = fsub double %87, %86
  store double %sub211, double* %arrayidx210, align 8, !tbaa !4
  %88 = load double* %arrayidx146, align 16, !tbaa !4
  %add.ptr192.sum4526 = sub i64 %idxprom201, %idx.ext190
  %arrayidx214 = getelementptr inbounds double* %call116, i64 %add.ptr192.sum4526
  %89 = load double* %arrayidx214, align 8, !tbaa !4
  %sub215 = fsub double %89, %88
  store double %sub215, double* %arrayidx214, align 8, !tbaa !4
  %90 = load double* %arrayidx150, align 8, !tbaa !4
  %add.ptr192.sum4527 = sub i64 %idxprom205, %idx.ext190
  %arrayidx218 = getelementptr inbounds double* %call116, i64 %add.ptr192.sum4527
  %91 = load double* %arrayidx218, align 8, !tbaa !4
  %sub219 = fsub double %91, %90
  store double %sub219, double* %arrayidx218, align 8, !tbaa !4
  %92 = load double* %arrayidx141, align 16, !tbaa !4
  %add.ptr195.sum = sub i64 %idxprom197, %idx.ext193
  %arrayidx222 = getelementptr inbounds double* %call120, i64 %add.ptr195.sum
  %93 = load double* %arrayidx222, align 8, !tbaa !4
  %sub223 = fsub double %93, %92
  store double %sub223, double* %arrayidx222, align 8, !tbaa !4
  %94 = load double* %arrayidx154, align 8, !tbaa !4
  %add.ptr195.sum4528 = sub i64 %idxprom201, %idx.ext193
  %arrayidx226 = getelementptr inbounds double* %call120, i64 %add.ptr195.sum4528
  %95 = load double* %arrayidx226, align 8, !tbaa !4
  %sub227 = fsub double %95, %94
  store double %sub227, double* %arrayidx226, align 8, !tbaa !4
  %96 = load double* %arrayidx159, align 16, !tbaa !4
  %add.ptr195.sum4529 = sub i64 %idxprom205, %idx.ext193
  %arrayidx230 = getelementptr inbounds double* %call120, i64 %add.ptr195.sum4529
  %97 = load double* %arrayidx230, align 8, !tbaa !4
  %sub231 = fsub double %97, %96
  store double %sub231, double* %arrayidx230, align 8, !tbaa !4
  %98 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot33(i32 %98, double* %rowL0.04581, double* %add.ptr172, double* %add.ptr174, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %arraydecay) #5
  %99 = load double* %arraydecay, align 16, !tbaa !4
  %sub246 = sub nsw i32 0, %75
  %idxprom247 = sext i32 %sub246 to i64
  %add.ptr240.sum = add i64 %idxprom247, %idx.ext188
  %arrayidx248 = getelementptr inbounds double* %call113, i64 %add.ptr240.sum
  %100 = load double* %arrayidx248, align 8, !tbaa !4
  %sub249 = fsub double %100, %99
  store double %sub249, double* %arrayidx248, align 8, !tbaa !4
  %101 = load double* %arrayidx127, align 8, !tbaa !4
  %add.ptr242.sum = add i64 %idxprom247, %idx.ext190
  %arrayidx253 = getelementptr inbounds double* %call116, i64 %add.ptr242.sum
  %102 = load double* %arrayidx253, align 8, !tbaa !4
  %sub254 = fsub double %102, %101
  store double %sub254, double* %arrayidx253, align 8, !tbaa !4
  %103 = load double* %arrayidx137, align 16, !tbaa !4
  %add.ptr244.sum = add i64 %idxprom247, %idx.ext193
  %arrayidx258 = getelementptr inbounds double* %call120, i64 %add.ptr244.sum
  %104 = load double* %arrayidx258, align 8, !tbaa !4
  %sub259 = fsub double %104, %103
  store double %sub259, double* %arrayidx258, align 8, !tbaa !4
  %105 = load double* %arrayidx131, align 8, !tbaa !4
  %sub261 = sub nsw i32 0, %77
  %idxprom262 = sext i32 %sub261 to i64
  %add.ptr240.sum4533 = add i64 %idxprom262, %idx.ext188
  %arrayidx263 = getelementptr inbounds double* %call113, i64 %add.ptr240.sum4533
  %106 = load double* %arrayidx263, align 8, !tbaa !4
  %sub264 = fsub double %106, %105
  store double %sub264, double* %arrayidx263, align 8, !tbaa !4
  %107 = load double* %arrayidx146, align 16, !tbaa !4
  %add.ptr242.sum4534 = add i64 %idxprom262, %idx.ext190
  %arrayidx268 = getelementptr inbounds double* %call116, i64 %add.ptr242.sum4534
  %108 = load double* %arrayidx268, align 8, !tbaa !4
  %sub269 = fsub double %108, %107
  store double %sub269, double* %arrayidx268, align 8, !tbaa !4
  %109 = load double* %arrayidx150, align 8, !tbaa !4
  %add.ptr244.sum4535 = add i64 %idxprom262, %idx.ext193
  %arrayidx273 = getelementptr inbounds double* %call120, i64 %add.ptr244.sum4535
  %110 = load double* %arrayidx273, align 8, !tbaa !4
  %sub274 = fsub double %110, %109
  store double %sub274, double* %arrayidx273, align 8, !tbaa !4
  %111 = load double* %arrayidx141, align 16, !tbaa !4
  %sub276 = sub nsw i32 0, %79
  %idxprom277 = sext i32 %sub276 to i64
  %add.ptr240.sum4536 = add i64 %idxprom277, %idx.ext188
  %arrayidx278 = getelementptr inbounds double* %call113, i64 %add.ptr240.sum4536
  %112 = load double* %arrayidx278, align 8, !tbaa !4
  %sub279 = fsub double %112, %111
  store double %sub279, double* %arrayidx278, align 8, !tbaa !4
  %113 = load double* %arrayidx154, align 8, !tbaa !4
  %add.ptr242.sum4537 = add i64 %idxprom277, %idx.ext190
  %arrayidx283 = getelementptr inbounds double* %call116, i64 %add.ptr242.sum4537
  %114 = load double* %arrayidx283, align 8, !tbaa !4
  %sub284 = fsub double %114, %113
  store double %sub284, double* %arrayidx283, align 8, !tbaa !4
  %115 = load double* %arrayidx159, align 16, !tbaa !4
  %add.ptr244.sum4538 = add i64 %idxprom277, %idx.ext193
  %arrayidx288 = getelementptr inbounds double* %call120, i64 %add.ptr244.sum4538
  %116 = load double* %arrayidx288, align 8, !tbaa !4
  %sub289 = fsub double %116, %115
  store double %sub289, double* %arrayidx288, align 8, !tbaa !4
  %117 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext299 = sext i32 %117 to i64
  %add.ptr174.sum = add i64 %idx.ext299, %add.ptr172.sum
  %add.ptr300 = getelementptr inbounds double* %rowL0.04581, i64 %add.ptr174.sum
  %add.ptr302 = getelementptr inbounds double* %colU0.04582, i64 %add.ptr174.sum
  %add304 = add nsw i32 %jcolU84.04580, 3
  %118 = load i32* %ncolU, align 4, !tbaa !3
  %sub168 = add nsw i32 %118, -2
  %cmp169 = icmp slt i32 %add304, %sub168
  %indvars.iv.next4700 = add i64 %indvars.iv4699, 3
  br i1 %cmp169, label %for.body170, label %for.end305

for.end305:                                       ; preds = %for.body170, %for.body98
  %119 = phi i32 [ %70, %for.body98 ], [ %117, %for.body170 ]
  %sub168.lcssa = phi i32 [ %sub1684578, %for.body98 ], [ %sub168, %for.body170 ]
  %.lcssa4577 = phi i32 [ %71, %for.body98 ], [ %118, %for.body170 ]
  %colU0.0.lcssa = phi double* [ %add.ptr165, %for.body98 ], [ %add.ptr302, %for.body170 ]
  %rowL0.0.lcssa = phi double* [ %add.ptr163, %for.body98 ], [ %add.ptr300, %for.body170 ]
  %jcolU84.0.lcssa = phi i32 [ %72, %for.body98 ], [ %add304, %for.body170 ]
  %cmp307 = icmp eq i32 %jcolU84.0.lcssa, %sub168.lcssa
  br i1 %cmp307, label %if.then308, label %if.else404

if.then308:                                       ; preds = %for.end305
  %idx.ext309 = sext i32 %119 to i64
  %add.ptr310 = getelementptr inbounds double* %rowL0.0.lcssa, i64 %idx.ext309
  %add.ptr312 = getelementptr inbounds double* %colU0.0.lcssa, i64 %idx.ext309
  %idxprom313 = sext i32 %sub168.lcssa to i64
  %120 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx314 = getelementptr inbounds i32* %120, i64 %idxprom313
  %121 = load i32* %arrayidx314, align 4, !tbaa !3
  %add315 = add nsw i32 %sub168.lcssa, 1
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds i32* %120, i64 %idxprom316
  %122 = load i32* %arrayidx317, align 4, !tbaa !3
  call void @DVdot32(i32 %119, double* %call85, double* %add.ptr, double* %add.ptr87, double* %colU0.0.lcssa, double* %add.ptr312, double* %arraydecay) #5
  %idx.ext319 = sext i32 %42 to i64
  %idx.ext322 = sext i32 %45 to i64
  %idx.ext325 = sext i32 %48 to i64
  %123 = load double* %arraydecay, align 16, !tbaa !4
  %idxprom329 = sext i32 %121 to i64
  %add.ptr321.sum = sub i64 %idxprom329, %idx.ext319
  %arrayidx330 = getelementptr inbounds double* %call113, i64 %add.ptr321.sum
  %124 = load double* %arrayidx330, align 8, !tbaa !4
  %sub331 = fsub double %124, %123
  store double %sub331, double* %arrayidx330, align 8, !tbaa !4
  %125 = load double* %arrayidx127, align 8, !tbaa !4
  %idxprom333 = sext i32 %122 to i64
  %add.ptr321.sum4515 = sub i64 %idxprom333, %idx.ext319
  %arrayidx334 = getelementptr inbounds double* %call113, i64 %add.ptr321.sum4515
  %126 = load double* %arrayidx334, align 8, !tbaa !4
  %sub335 = fsub double %126, %125
  store double %sub335, double* %arrayidx334, align 8, !tbaa !4
  %127 = load double* %arrayidx137, align 16, !tbaa !4
  %add.ptr324.sum = sub i64 %idxprom329, %idx.ext322
  %arrayidx338 = getelementptr inbounds double* %call116, i64 %add.ptr324.sum
  %128 = load double* %arrayidx338, align 8, !tbaa !4
  %sub339 = fsub double %128, %127
  store double %sub339, double* %arrayidx338, align 8, !tbaa !4
  %129 = load double* %arrayidx131, align 8, !tbaa !4
  %add.ptr324.sum4516 = sub i64 %idxprom333, %idx.ext322
  %arrayidx342 = getelementptr inbounds double* %call116, i64 %add.ptr324.sum4516
  %130 = load double* %arrayidx342, align 8, !tbaa !4
  %sub343 = fsub double %130, %129
  store double %sub343, double* %arrayidx342, align 8, !tbaa !4
  %131 = load double* %arrayidx146, align 16, !tbaa !4
  %add.ptr327.sum = sub i64 %idxprom329, %idx.ext325
  %arrayidx346 = getelementptr inbounds double* %call120, i64 %add.ptr327.sum
  %132 = load double* %arrayidx346, align 8, !tbaa !4
  %sub347 = fsub double %132, %131
  store double %sub347, double* %arrayidx346, align 8, !tbaa !4
  %133 = load double* %arrayidx150, align 8, !tbaa !4
  %add.ptr327.sum4517 = sub i64 %idxprom333, %idx.ext325
  %arrayidx350 = getelementptr inbounds double* %call120, i64 %add.ptr327.sum4517
  %134 = load double* %arrayidx350, align 8, !tbaa !4
  %sub351 = fsub double %134, %133
  store double %sub351, double* %arrayidx350, align 8, !tbaa !4
  %135 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot23(i32 %135, double* %rowL0.0.lcssa, double* %add.ptr310, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %arraydecay) #5
  %136 = load double* %arraydecay, align 16, !tbaa !4
  %sub366 = sub nsw i32 0, %121
  %idxprom367 = sext i32 %sub366 to i64
  %add.ptr360.sum = add i64 %idxprom367, %idx.ext319
  %arrayidx368 = getelementptr inbounds double* %call113, i64 %add.ptr360.sum
  %137 = load double* %arrayidx368, align 8, !tbaa !4
  %sub369 = fsub double %137, %136
  store double %sub369, double* %arrayidx368, align 8, !tbaa !4
  %138 = load double* %arrayidx127, align 8, !tbaa !4
  %add.ptr362.sum = add i64 %idxprom367, %idx.ext322
  %arrayidx373 = getelementptr inbounds double* %call116, i64 %add.ptr362.sum
  %139 = load double* %arrayidx373, align 8, !tbaa !4
  %sub374 = fsub double %139, %138
  store double %sub374, double* %arrayidx373, align 8, !tbaa !4
  %140 = load double* %arrayidx137, align 16, !tbaa !4
  %add.ptr364.sum = add i64 %idxprom367, %idx.ext325
  %arrayidx378 = getelementptr inbounds double* %call120, i64 %add.ptr364.sum
  %141 = load double* %arrayidx378, align 8, !tbaa !4
  %sub379 = fsub double %141, %140
  store double %sub379, double* %arrayidx378, align 8, !tbaa !4
  %142 = load double* %arrayidx131, align 8, !tbaa !4
  %sub381 = sub nsw i32 0, %122
  %idxprom382 = sext i32 %sub381 to i64
  %add.ptr360.sum4521 = add i64 %idxprom382, %idx.ext319
  %arrayidx383 = getelementptr inbounds double* %call113, i64 %add.ptr360.sum4521
  %143 = load double* %arrayidx383, align 8, !tbaa !4
  %sub384 = fsub double %143, %142
  store double %sub384, double* %arrayidx383, align 8, !tbaa !4
  %144 = load double* %arrayidx146, align 16, !tbaa !4
  %add.ptr362.sum4522 = add i64 %idxprom382, %idx.ext322
  %arrayidx388 = getelementptr inbounds double* %call116, i64 %add.ptr362.sum4522
  %145 = load double* %arrayidx388, align 8, !tbaa !4
  %sub389 = fsub double %145, %144
  store double %sub389, double* %arrayidx388, align 8, !tbaa !4
  %146 = load double* %arrayidx150, align 8, !tbaa !4
  %add.ptr364.sum4523 = add i64 %idxprom382, %idx.ext325
  %arrayidx393 = getelementptr inbounds double* %call120, i64 %add.ptr364.sum4523
  %147 = load double* %arrayidx393, align 8, !tbaa !4
  %sub394 = fsub double %147, %146
  store double %sub394, double* %arrayidx393, align 8, !tbaa !4
  br label %if.end470

if.else404:                                       ; preds = %for.end305
  %sub405 = add nsw i32 %.lcssa4577, -1
  %cmp406 = icmp eq i32 %jcolU84.0.lcssa, %sub405
  br i1 %cmp406, label %if.then407, label %if.end470

if.then407:                                       ; preds = %if.else404
  %idxprom408 = sext i32 %jcolU84.0.lcssa to i64
  %148 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx409 = getelementptr inbounds i32* %148, i64 %idxprom408
  %149 = load i32* %arrayidx409, align 4, !tbaa !3
  call void @DVdot31(i32 %119, double* %call85, double* %add.ptr, double* %add.ptr87, double* %colU0.0.lcssa, double* %arraydecay) #5
  %idx.ext411 = sext i32 %42 to i64
  %idx.ext414 = sext i32 %45 to i64
  %idx.ext417 = sext i32 %48 to i64
  %150 = load double* %arraydecay, align 16, !tbaa !4
  %idxprom421 = sext i32 %149 to i64
  %add.ptr413.sum = sub i64 %idxprom421, %idx.ext411
  %arrayidx422 = getelementptr inbounds double* %call113, i64 %add.ptr413.sum
  %151 = load double* %arrayidx422, align 8, !tbaa !4
  %sub423 = fsub double %151, %150
  store double %sub423, double* %arrayidx422, align 8, !tbaa !4
  %152 = load double* %arrayidx127, align 8, !tbaa !4
  %add.ptr416.sum = sub i64 %idxprom421, %idx.ext414
  %arrayidx426 = getelementptr inbounds double* %call116, i64 %add.ptr416.sum
  %153 = load double* %arrayidx426, align 8, !tbaa !4
  %sub427 = fsub double %153, %152
  store double %sub427, double* %arrayidx426, align 8, !tbaa !4
  %154 = load double* %arrayidx137, align 16, !tbaa !4
  %add.ptr419.sum = sub i64 %idxprom421, %idx.ext417
  %arrayidx430 = getelementptr inbounds double* %call120, i64 %add.ptr419.sum
  %155 = load double* %arrayidx430, align 8, !tbaa !4
  %sub431 = fsub double %155, %154
  store double %sub431, double* %arrayidx430, align 8, !tbaa !4
  %156 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot13(i32 %156, double* %rowL0.0.lcssa, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %arraydecay) #5
  %157 = load double* %arraydecay, align 16, !tbaa !4
  %sub446 = sub nsw i32 0, %149
  %idxprom447 = sext i32 %sub446 to i64
  %add.ptr440.sum = add i64 %idxprom447, %idx.ext411
  %arrayidx448 = getelementptr inbounds double* %call113, i64 %add.ptr440.sum
  %158 = load double* %arrayidx448, align 8, !tbaa !4
  %sub449 = fsub double %158, %157
  store double %sub449, double* %arrayidx448, align 8, !tbaa !4
  %159 = load double* %arrayidx127, align 8, !tbaa !4
  %add.ptr442.sum = add i64 %idxprom447, %idx.ext414
  %arrayidx453 = getelementptr inbounds double* %call116, i64 %add.ptr442.sum
  %160 = load double* %arrayidx453, align 8, !tbaa !4
  %sub454 = fsub double %160, %159
  store double %sub454, double* %arrayidx453, align 8, !tbaa !4
  %161 = load double* %arrayidx137, align 16, !tbaa !4
  %add.ptr444.sum = add i64 %idxprom447, %idx.ext417
  %arrayidx458 = getelementptr inbounds double* %call120, i64 %add.ptr444.sum
  %162 = load double* %arrayidx458, align 8, !tbaa !4
  %sub459 = fsub double %162, %161
  store double %sub459, double* %arrayidx458, align 8, !tbaa !4
  br label %if.end470

if.end470:                                        ; preds = %if.else404, %if.then407, %if.then308
  %163 = load i32* %nrowU, align 4, !tbaa !3
  %mul471 = mul nsw i32 %163, 3
  %add472 = add nsw i32 %mul471, %offset.04589
  %cmp97 = icmp sgt i32 %72, %sub96
  br i1 %cmp97, label %for.end475, label %for.body98

for.end475:                                       ; preds = %if.end470, %if.then83
  %164 = phi i32 [ %36, %if.then83 ], [ %163, %if.end470 ]
  %irowL.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then83 ], [ %add166, %if.end470 ]
  %offset.0.lcssa = phi i32 [ %mul94, %if.then83 ], [ %add472, %if.end470 ]
  %sub476 = add nsw i32 %lastInU.0.lcssa4789, -1
  %cmp477 = icmp eq i32 %irowL.0.lcssa, %sub476
  br i1 %cmp477, label %if.then478, label %if.else739

if.then478:                                       ; preds = %for.end475
  %165 = load double** %entL, align 8, !tbaa !0
  %idx.ext479 = sext i32 %offset.0.lcssa to i64
  %add.ptr480 = getelementptr inbounds double* %165, i64 %idx.ext479
  %idx.ext481 = sext i32 %164 to i64
  %add.ptr480.sum = add i64 %idx.ext481, %idx.ext479
  %add.ptr482 = getelementptr inbounds double* %165, i64 %add.ptr480.sum
  %166 = load double** %entU, align 8, !tbaa !0
  %add.ptr484 = getelementptr inbounds double* %166, i64 %idx.ext479
  %add.ptr486 = getelementptr inbounds double* %166, i64 %add.ptr480.sum
  %idxprom487 = sext i32 %irowL.0.lcssa to i64
  %167 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx488 = getelementptr inbounds i32* %167, i64 %idxprom487
  %168 = load i32* %arrayidx488, align 4, !tbaa !3
  %call489 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %168) #5
  %add490 = add nsw i32 %irowL.0.lcssa, 1
  %idxprom491 = sext i32 %add490 to i64
  %169 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i32* %169, i64 %idxprom491
  %170 = load i32* %arrayidx492, align 4, !tbaa !3
  %call493 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %170) #5
  %171 = load i32* %nrowU, align 4, !tbaa !3
  %mul494 = shl nsw i32 %171, 1
  call void @DVzero(i32 %mul494, double* %call85) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call85, double* %add.ptr, double* %add.ptr480, double* %add.ptr482) #5
  %172 = load i32* %nrowU, align 4, !tbaa !3
  %mul495 = shl nsw i32 %172, 1
  call void @DVzero(i32 %mul495, double* %add.ptr89) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %add.ptr89, double* %add.ptr91, double* %add.ptr484, double* %add.ptr486) #5
  %173 = load i32* %nrowU, align 4, !tbaa !3
  %arraydecay496 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  call void @DVdot22(i32 %173, double* %call85, double* %add.ptr, double* %add.ptr484, double* %add.ptr486, double* %arraydecay496) #5
  %174 = load double* %arraydecay496, align 16, !tbaa !4
  %175 = load double* %call489, align 8, !tbaa !4
  %sub499 = fsub double %175, %174
  store double %sub499, double* %call489, align 8, !tbaa !4
  %sub500 = sub nsw i32 %170, %168
  %arrayidx501 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %176 = load double* %arrayidx501, align 8, !tbaa !4
  %idxprom502 = sext i32 %sub500 to i64
  %arrayidx503 = getelementptr inbounds double* %call489, i64 %idxprom502
  %177 = load double* %arrayidx503, align 8, !tbaa !4
  %sub504 = fsub double %177, %176
  store double %sub504, double* %arrayidx503, align 8, !tbaa !4
  %arrayidx505 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %178 = load double* %arrayidx505, align 16, !tbaa !4
  %sub506 = sub nsw i32 0, %sub500
  %idxprom507 = sext i32 %sub506 to i64
  %arrayidx508 = getelementptr inbounds double* %call489, i64 %idxprom507
  %179 = load double* %arrayidx508, align 8, !tbaa !4
  %sub509 = fsub double %179, %178
  store double %sub509, double* %arrayidx508, align 8, !tbaa !4
  %arrayidx510 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3
  %180 = load double* %arrayidx510, align 8, !tbaa !4
  %181 = load double* %call493, align 8, !tbaa !4
  %sub512 = fsub double %181, %180
  store double %sub512, double* %call493, align 8, !tbaa !4
  %182 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext513 = sext i32 %182 to i64
  %add.ptr482.sum = add i64 %idx.ext513, %add.ptr480.sum
  %add.ptr514 = getelementptr inbounds double* %165, i64 %add.ptr482.sum
  %add.ptr516 = getelementptr inbounds double* %166, i64 %add.ptr482.sum
  %add517 = add i32 %irowL.0.lcssa, 2
  %183 = load i32* %ncolU, align 4, !tbaa !3
  %sub5194557 = add nsw i32 %183, -2
  %cmp5204558 = icmp slt i32 %add517, %sub5194557
  br i1 %cmp5204558, label %for.body521.lr.ph, label %for.end620

for.body521.lr.ph:                                ; preds = %if.then478
  %idx.ext539 = sext i32 %168 to i64
  %idx.ext542 = sext i32 %170 to i64
  %arrayidx561 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4
  %arrayidx565 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5
  %184 = sext i32 %add517 to i64
  br label %for.body521

for.body521:                                      ; preds = %for.body521.lr.ph, %for.body521
  %185 = phi i32 [ %182, %for.body521.lr.ph ], [ %217, %for.body521 ]
  %indvars.iv4683 = phi i64 [ %184, %for.body521.lr.ph ], [ %indvars.iv.next4684, %for.body521 ]
  %colU0.14561 = phi double* [ %add.ptr516, %for.body521.lr.ph ], [ %add.ptr617, %for.body521 ]
  %rowL0.14560 = phi double* [ %add.ptr514, %for.body521.lr.ph ], [ %add.ptr615, %for.body521 ]
  %jcolU84.14559 = phi i32 [ %add517, %for.body521.lr.ph ], [ %add619, %for.body521 ]
  %idx.ext522 = sext i32 %185 to i64
  %add.ptr523 = getelementptr inbounds double* %rowL0.14560, i64 %idx.ext522
  %add.ptr523.sum = shl nsw i64 %idx.ext522, 1
  %add.ptr525 = getelementptr inbounds double* %rowL0.14560, i64 %add.ptr523.sum
  %add.ptr527 = getelementptr inbounds double* %colU0.14561, i64 %idx.ext522
  %add.ptr529 = getelementptr inbounds double* %colU0.14561, i64 %add.ptr523.sum
  %186 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx531 = getelementptr inbounds i32* %186, i64 %indvars.iv4683
  %187 = load i32* %arrayidx531, align 4, !tbaa !3
  %188 = add nsw i64 %indvars.iv4683, 1
  %arrayidx534 = getelementptr inbounds i32* %186, i64 %188
  %189 = load i32* %arrayidx534, align 4, !tbaa !3
  %190 = add nsw i64 %indvars.iv4683, 2
  %arrayidx537 = getelementptr inbounds i32* %186, i64 %190
  %191 = load i32* %arrayidx537, align 4, !tbaa !3
  call void @DVdot23(i32 %185, double* %call85, double* %add.ptr, double* %colU0.14561, double* %add.ptr527, double* %add.ptr529, double* %arraydecay496) #5
  %192 = load double* %arraydecay496, align 16, !tbaa !4
  %idxprom546 = sext i32 %187 to i64
  %add.ptr541.sum = sub i64 %idxprom546, %idx.ext539
  %arrayidx547 = getelementptr inbounds double* %call489, i64 %add.ptr541.sum
  %193 = load double* %arrayidx547, align 8, !tbaa !4
  %sub548 = fsub double %193, %192
  store double %sub548, double* %arrayidx547, align 8, !tbaa !4
  %194 = load double* %arrayidx501, align 8, !tbaa !4
  %idxprom550 = sext i32 %189 to i64
  %add.ptr541.sum4500 = sub i64 %idxprom550, %idx.ext539
  %arrayidx551 = getelementptr inbounds double* %call489, i64 %add.ptr541.sum4500
  %195 = load double* %arrayidx551, align 8, !tbaa !4
  %sub552 = fsub double %195, %194
  store double %sub552, double* %arrayidx551, align 8, !tbaa !4
  %196 = load double* %arrayidx505, align 16, !tbaa !4
  %idxprom554 = sext i32 %191 to i64
  %add.ptr541.sum4501 = sub i64 %idxprom554, %idx.ext539
  %arrayidx555 = getelementptr inbounds double* %call489, i64 %add.ptr541.sum4501
  %197 = load double* %arrayidx555, align 8, !tbaa !4
  %sub556 = fsub double %197, %196
  store double %sub556, double* %arrayidx555, align 8, !tbaa !4
  %198 = load double* %arrayidx510, align 8, !tbaa !4
  %add.ptr544.sum = sub i64 %idxprom546, %idx.ext542
  %arrayidx559 = getelementptr inbounds double* %call493, i64 %add.ptr544.sum
  %199 = load double* %arrayidx559, align 8, !tbaa !4
  %sub560 = fsub double %199, %198
  store double %sub560, double* %arrayidx559, align 8, !tbaa !4
  %200 = load double* %arrayidx561, align 16, !tbaa !4
  %add.ptr544.sum4502 = sub i64 %idxprom550, %idx.ext542
  %arrayidx563 = getelementptr inbounds double* %call493, i64 %add.ptr544.sum4502
  %201 = load double* %arrayidx563, align 8, !tbaa !4
  %sub564 = fsub double %201, %200
  store double %sub564, double* %arrayidx563, align 8, !tbaa !4
  %202 = load double* %arrayidx565, align 8, !tbaa !4
  %add.ptr544.sum4503 = sub i64 %idxprom554, %idx.ext542
  %arrayidx567 = getelementptr inbounds double* %call493, i64 %add.ptr544.sum4503
  %203 = load double* %arrayidx567, align 8, !tbaa !4
  %sub568 = fsub double %203, %202
  store double %sub568, double* %arrayidx567, align 8, !tbaa !4
  %204 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot32(i32 %204, double* %rowL0.14560, double* %add.ptr523, double* %add.ptr525, double* %add.ptr89, double* %add.ptr91, double* %arraydecay496) #5
  %205 = load double* %arraydecay496, align 16, !tbaa !4
  %sub579 = sub nsw i32 0, %187
  %idxprom580 = sext i32 %sub579 to i64
  %add.ptr575.sum = add i64 %idxprom580, %idx.ext539
  %arrayidx581 = getelementptr inbounds double* %call489, i64 %add.ptr575.sum
  %206 = load double* %arrayidx581, align 8, !tbaa !4
  %sub582 = fsub double %206, %205
  store double %sub582, double* %arrayidx581, align 8, !tbaa !4
  %207 = load double* %arrayidx501, align 8, !tbaa !4
  %add.ptr577.sum = add i64 %idxprom580, %idx.ext542
  %arrayidx586 = getelementptr inbounds double* %call493, i64 %add.ptr577.sum
  %208 = load double* %arrayidx586, align 8, !tbaa !4
  %sub587 = fsub double %208, %207
  store double %sub587, double* %arrayidx586, align 8, !tbaa !4
  %209 = load double* %arrayidx505, align 16, !tbaa !4
  %sub589 = sub nsw i32 0, %189
  %idxprom590 = sext i32 %sub589 to i64
  %add.ptr575.sum4506 = add i64 %idxprom590, %idx.ext539
  %arrayidx591 = getelementptr inbounds double* %call489, i64 %add.ptr575.sum4506
  %210 = load double* %arrayidx591, align 8, !tbaa !4
  %sub592 = fsub double %210, %209
  store double %sub592, double* %arrayidx591, align 8, !tbaa !4
  %211 = load double* %arrayidx510, align 8, !tbaa !4
  %add.ptr577.sum4507 = add i64 %idxprom590, %idx.ext542
  %arrayidx596 = getelementptr inbounds double* %call493, i64 %add.ptr577.sum4507
  %212 = load double* %arrayidx596, align 8, !tbaa !4
  %sub597 = fsub double %212, %211
  store double %sub597, double* %arrayidx596, align 8, !tbaa !4
  %213 = load double* %arrayidx561, align 16, !tbaa !4
  %sub599 = sub nsw i32 0, %191
  %idxprom600 = sext i32 %sub599 to i64
  %add.ptr575.sum4508 = add i64 %idxprom600, %idx.ext539
  %arrayidx601 = getelementptr inbounds double* %call489, i64 %add.ptr575.sum4508
  %214 = load double* %arrayidx601, align 8, !tbaa !4
  %sub602 = fsub double %214, %213
  store double %sub602, double* %arrayidx601, align 8, !tbaa !4
  %215 = load double* %arrayidx565, align 8, !tbaa !4
  %add.ptr577.sum4509 = add i64 %idxprom600, %idx.ext542
  %arrayidx606 = getelementptr inbounds double* %call493, i64 %add.ptr577.sum4509
  %216 = load double* %arrayidx606, align 8, !tbaa !4
  %sub607 = fsub double %216, %215
  store double %sub607, double* %arrayidx606, align 8, !tbaa !4
  %217 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext614 = sext i32 %217 to i64
  %add.ptr525.sum = add i64 %idx.ext614, %add.ptr523.sum
  %add.ptr615 = getelementptr inbounds double* %rowL0.14560, i64 %add.ptr525.sum
  %add.ptr617 = getelementptr inbounds double* %colU0.14561, i64 %add.ptr525.sum
  %add619 = add nsw i32 %jcolU84.14559, 3
  %218 = load i32* %ncolU, align 4, !tbaa !3
  %sub519 = add nsw i32 %218, -2
  %cmp520 = icmp slt i32 %add619, %sub519
  %indvars.iv.next4684 = add i64 %indvars.iv4683, 3
  br i1 %cmp520, label %for.body521, label %for.end620

for.end620:                                       ; preds = %for.body521, %if.then478
  %219 = phi i32 [ %182, %if.then478 ], [ %217, %for.body521 ]
  %sub519.lcssa = phi i32 [ %sub5194557, %if.then478 ], [ %sub519, %for.body521 ]
  %.lcssa = phi i32 [ %183, %if.then478 ], [ %218, %for.body521 ]
  %colU0.1.lcssa = phi double* [ %add.ptr516, %if.then478 ], [ %add.ptr617, %for.body521 ]
  %rowL0.1.lcssa = phi double* [ %add.ptr514, %if.then478 ], [ %add.ptr615, %for.body521 ]
  %jcolU84.1.lcssa = phi i32 [ %add517, %if.then478 ], [ %add619, %for.body521 ]
  %cmp622 = icmp eq i32 %jcolU84.1.lcssa, %sub519.lcssa
  br i1 %cmp622, label %if.then623, label %if.else691

if.then623:                                       ; preds = %for.end620
  %idx.ext624 = sext i32 %219 to i64
  %add.ptr625 = getelementptr inbounds double* %rowL0.1.lcssa, i64 %idx.ext624
  %add.ptr627 = getelementptr inbounds double* %colU0.1.lcssa, i64 %idx.ext624
  %idxprom628 = sext i32 %sub519.lcssa to i64
  %220 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx629 = getelementptr inbounds i32* %220, i64 %idxprom628
  %221 = load i32* %arrayidx629, align 4, !tbaa !3
  %add630 = add nsw i32 %sub519.lcssa, 1
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds i32* %220, i64 %idxprom631
  %222 = load i32* %arrayidx632, align 4, !tbaa !3
  call void @DVdot22(i32 %219, double* %call85, double* %add.ptr, double* %colU0.1.lcssa, double* %add.ptr627, double* %arraydecay496) #5
  %idx.ext634 = sext i32 %168 to i64
  %idx.ext637 = sext i32 %170 to i64
  %223 = load double* %arraydecay496, align 16, !tbaa !4
  %idxprom641 = sext i32 %221 to i64
  %add.ptr636.sum = sub i64 %idxprom641, %idx.ext634
  %arrayidx642 = getelementptr inbounds double* %call489, i64 %add.ptr636.sum
  %224 = load double* %arrayidx642, align 8, !tbaa !4
  %sub643 = fsub double %224, %223
  store double %sub643, double* %arrayidx642, align 8, !tbaa !4
  %225 = load double* %arrayidx501, align 8, !tbaa !4
  %idxprom645 = sext i32 %222 to i64
  %add.ptr636.sum4494 = sub i64 %idxprom645, %idx.ext634
  %arrayidx646 = getelementptr inbounds double* %call489, i64 %add.ptr636.sum4494
  %226 = load double* %arrayidx646, align 8, !tbaa !4
  %sub647 = fsub double %226, %225
  store double %sub647, double* %arrayidx646, align 8, !tbaa !4
  %227 = load double* %arrayidx505, align 16, !tbaa !4
  %add.ptr639.sum = sub i64 %idxprom641, %idx.ext637
  %arrayidx650 = getelementptr inbounds double* %call493, i64 %add.ptr639.sum
  %228 = load double* %arrayidx650, align 8, !tbaa !4
  %sub651 = fsub double %228, %227
  store double %sub651, double* %arrayidx650, align 8, !tbaa !4
  %229 = load double* %arrayidx510, align 8, !tbaa !4
  %add.ptr639.sum4495 = sub i64 %idxprom645, %idx.ext637
  %arrayidx654 = getelementptr inbounds double* %call493, i64 %add.ptr639.sum4495
  %230 = load double* %arrayidx654, align 8, !tbaa !4
  %sub655 = fsub double %230, %229
  store double %sub655, double* %arrayidx654, align 8, !tbaa !4
  %231 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot22(i32 %231, double* %rowL0.1.lcssa, double* %add.ptr625, double* %add.ptr89, double* %add.ptr91, double* %arraydecay496) #5
  %232 = load double* %arraydecay496, align 16, !tbaa !4
  %sub666 = sub nsw i32 0, %221
  %idxprom667 = sext i32 %sub666 to i64
  %add.ptr662.sum = add i64 %idxprom667, %idx.ext634
  %arrayidx668 = getelementptr inbounds double* %call489, i64 %add.ptr662.sum
  %233 = load double* %arrayidx668, align 8, !tbaa !4
  %sub669 = fsub double %233, %232
  store double %sub669, double* %arrayidx668, align 8, !tbaa !4
  %234 = load double* %arrayidx501, align 8, !tbaa !4
  %add.ptr664.sum = add i64 %idxprom667, %idx.ext637
  %arrayidx673 = getelementptr inbounds double* %call493, i64 %add.ptr664.sum
  %235 = load double* %arrayidx673, align 8, !tbaa !4
  %sub674 = fsub double %235, %234
  store double %sub674, double* %arrayidx673, align 8, !tbaa !4
  %236 = load double* %arrayidx505, align 16, !tbaa !4
  %sub676 = sub nsw i32 0, %222
  %idxprom677 = sext i32 %sub676 to i64
  %add.ptr662.sum4498 = add i64 %idxprom677, %idx.ext634
  %arrayidx678 = getelementptr inbounds double* %call489, i64 %add.ptr662.sum4498
  %237 = load double* %arrayidx678, align 8, !tbaa !4
  %sub679 = fsub double %237, %236
  store double %sub679, double* %arrayidx678, align 8, !tbaa !4
  %238 = load double* %arrayidx510, align 8, !tbaa !4
  %add.ptr664.sum4499 = add i64 %idxprom677, %idx.ext637
  %arrayidx683 = getelementptr inbounds double* %call493, i64 %add.ptr664.sum4499
  %239 = load double* %arrayidx683, align 8, !tbaa !4
  %sub684 = fsub double %239, %238
  store double %sub684, double* %arrayidx683, align 8, !tbaa !4
  br label %for.cond2785.preheader

if.else691:                                       ; preds = %for.end620
  %sub692 = add nsw i32 %.lcssa, -1
  %cmp693 = icmp eq i32 %jcolU84.1.lcssa, %sub692
  br i1 %cmp693, label %if.then694, label %for.cond2785.preheader

if.then694:                                       ; preds = %if.else691
  %idxprom695 = sext i32 %jcolU84.1.lcssa to i64
  %240 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx696 = getelementptr inbounds i32* %240, i64 %idxprom695
  %241 = load i32* %arrayidx696, align 4, !tbaa !3
  call void @DVdot21(i32 %219, double* %call85, double* %add.ptr, double* %colU0.1.lcssa, double* %arraydecay496) #5
  %idx.ext698 = sext i32 %168 to i64
  %idx.ext701 = sext i32 %170 to i64
  %242 = load double* %arraydecay496, align 16, !tbaa !4
  %idxprom705 = sext i32 %241 to i64
  %add.ptr700.sum = sub i64 %idxprom705, %idx.ext698
  %arrayidx706 = getelementptr inbounds double* %call489, i64 %add.ptr700.sum
  %243 = load double* %arrayidx706, align 8, !tbaa !4
  %sub707 = fsub double %243, %242
  store double %sub707, double* %arrayidx706, align 8, !tbaa !4
  %244 = load double* %arrayidx501, align 8, !tbaa !4
  %add.ptr703.sum = sub i64 %idxprom705, %idx.ext701
  %arrayidx710 = getelementptr inbounds double* %call493, i64 %add.ptr703.sum
  %245 = load double* %arrayidx710, align 8, !tbaa !4
  %sub711 = fsub double %245, %244
  store double %sub711, double* %arrayidx710, align 8, !tbaa !4
  %246 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot12(i32 %246, double* %rowL0.1.lcssa, double* %add.ptr89, double* %add.ptr91, double* %arraydecay496) #5
  %247 = load double* %arraydecay496, align 16, !tbaa !4
  %sub722 = sub nsw i32 0, %241
  %idxprom723 = sext i32 %sub722 to i64
  %add.ptr718.sum = add i64 %idxprom723, %idx.ext698
  %arrayidx724 = getelementptr inbounds double* %call489, i64 %add.ptr718.sum
  %248 = load double* %arrayidx724, align 8, !tbaa !4
  %sub725 = fsub double %248, %247
  store double %sub725, double* %arrayidx724, align 8, !tbaa !4
  %249 = load double* %arrayidx501, align 8, !tbaa !4
  %add.ptr720.sum = add i64 %idxprom723, %idx.ext701
  %arrayidx729 = getelementptr inbounds double* %call493, i64 %add.ptr720.sum
  %250 = load double* %arrayidx729, align 8, !tbaa !4
  %sub730 = fsub double %250, %249
  store double %sub730, double* %arrayidx729, align 8, !tbaa !4
  br label %for.cond2785.preheader

if.else739:                                       ; preds = %for.end475
  %cmp740 = icmp eq i32 %irowL.0.lcssa, %lastInU.0.lcssa4789
  br i1 %cmp740, label %if.then741, label %for.cond2785.preheader

if.then741:                                       ; preds = %if.else739
  %251 = load double** %entL, align 8, !tbaa !0
  %idx.ext742 = sext i32 %offset.0.lcssa to i64
  %add.ptr743 = getelementptr inbounds double* %251, i64 %idx.ext742
  %252 = load double** %entU, align 8, !tbaa !0
  %add.ptr745 = getelementptr inbounds double* %252, i64 %idx.ext742
  %idxprom746 = sext i32 %lastInU.0.lcssa4789 to i64
  %253 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx747 = getelementptr inbounds i32* %253, i64 %idxprom746
  %254 = load i32* %arrayidx747, align 4, !tbaa !3
  %call748 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %254) #5
  %255 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVzero(i32 %255, double* %call85) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call85, double* %add.ptr743) #5
  %256 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVzero(i32 %256, double* %add.ptr89) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr89, double* %add.ptr745) #5
  %257 = load i32* %nrowU, align 4, !tbaa !3
  %arraydecay749 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0
  call void @DVdot11(i32 %257, double* %call85, double* %add.ptr745, double* %arraydecay749) #5
  %258 = load double* %arraydecay749, align 16, !tbaa !4
  %259 = load double* %call748, align 8, !tbaa !4
  %sub752 = fsub double %259, %258
  store double %sub752, double* %call748, align 8, !tbaa !4
  %260 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext753 = sext i32 %260 to i64
  %add.ptr743.sum = add i64 %idx.ext753, %idx.ext742
  %add.ptr754 = getelementptr inbounds double* %251, i64 %add.ptr743.sum
  %add.ptr756 = getelementptr inbounds double* %252, i64 %add.ptr743.sum
  %add757 = add i32 %lastInU.0.lcssa4789, 1
  %261 = load i32* %ncolU, align 4, !tbaa !3
  %sub7594567 = add nsw i32 %261, -2
  %cmp7604568 = icmp slt i32 %add757, %sub7594567
  br i1 %cmp7604568, label %for.body761.lr.ph, label %for.end823

for.body761.lr.ph:                                ; preds = %if.then741
  %idx.ext779 = sext i32 %254 to i64
  %arrayidx786 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %arrayidx790 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2
  %262 = sext i32 %add757 to i64
  br label %for.body761

for.body761:                                      ; preds = %for.body761.lr.ph, %for.body761
  %263 = phi i32 [ %260, %for.body761.lr.ph ], [ %283, %for.body761 ]
  %indvars.iv4690 = phi i64 [ %262, %for.body761.lr.ph ], [ %indvars.iv.next4691, %for.body761 ]
  %colU0.24571 = phi double* [ %add.ptr756, %for.body761.lr.ph ], [ %add.ptr820, %for.body761 ]
  %rowL0.24570 = phi double* [ %add.ptr754, %for.body761.lr.ph ], [ %add.ptr818, %for.body761 ]
  %jcolU84.24569 = phi i32 [ %add757, %for.body761.lr.ph ], [ %add822, %for.body761 ]
  %idx.ext762 = sext i32 %263 to i64
  %add.ptr763 = getelementptr inbounds double* %rowL0.24570, i64 %idx.ext762
  %add.ptr763.sum = shl nsw i64 %idx.ext762, 1
  %add.ptr765 = getelementptr inbounds double* %rowL0.24570, i64 %add.ptr763.sum
  %add.ptr767 = getelementptr inbounds double* %colU0.24571, i64 %idx.ext762
  %add.ptr769 = getelementptr inbounds double* %colU0.24571, i64 %add.ptr763.sum
  %264 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx771 = getelementptr inbounds i32* %264, i64 %indvars.iv4690
  %265 = load i32* %arrayidx771, align 4, !tbaa !3
  %266 = add nsw i64 %indvars.iv4690, 1
  %arrayidx774 = getelementptr inbounds i32* %264, i64 %266
  %267 = load i32* %arrayidx774, align 4, !tbaa !3
  %268 = add nsw i64 %indvars.iv4690, 2
  %arrayidx777 = getelementptr inbounds i32* %264, i64 %268
  %269 = load i32* %arrayidx777, align 4, !tbaa !3
  call void @DVdot13(i32 %263, double* %call85, double* %colU0.24571, double* %add.ptr767, double* %add.ptr769, double* %arraydecay749) #5
  %270 = load double* %arraydecay749, align 16, !tbaa !4
  %idxprom783 = sext i32 %265 to i64
  %add.ptr781.sum = sub i64 %idxprom783, %idx.ext779
  %arrayidx784 = getelementptr inbounds double* %call748, i64 %add.ptr781.sum
  %271 = load double* %arrayidx784, align 8, !tbaa !4
  %sub785 = fsub double %271, %270
  store double %sub785, double* %arrayidx784, align 8, !tbaa !4
  %272 = load double* %arrayidx786, align 8, !tbaa !4
  %idxprom787 = sext i32 %267 to i64
  %add.ptr781.sum4486 = sub i64 %idxprom787, %idx.ext779
  %arrayidx788 = getelementptr inbounds double* %call748, i64 %add.ptr781.sum4486
  %273 = load double* %arrayidx788, align 8, !tbaa !4
  %sub789 = fsub double %273, %272
  store double %sub789, double* %arrayidx788, align 8, !tbaa !4
  %274 = load double* %arrayidx790, align 16, !tbaa !4
  %idxprom791 = sext i32 %269 to i64
  %add.ptr781.sum4487 = sub i64 %idxprom791, %idx.ext779
  %arrayidx792 = getelementptr inbounds double* %call748, i64 %add.ptr781.sum4487
  %275 = load double* %arrayidx792, align 8, !tbaa !4
  %sub793 = fsub double %275, %274
  store double %sub793, double* %arrayidx792, align 8, !tbaa !4
  %276 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot31(i32 %276, double* %rowL0.24570, double* %add.ptr763, double* %add.ptr765, double* %add.ptr89, double* %arraydecay749) #5
  %277 = load double* %arraydecay749, align 16, !tbaa !4
  %sub800 = sub nsw i32 0, %265
  %idxprom801 = sext i32 %sub800 to i64
  %add.ptr798.sum = add i64 %idxprom801, %idx.ext779
  %arrayidx802 = getelementptr inbounds double* %call748, i64 %add.ptr798.sum
  %278 = load double* %arrayidx802, align 8, !tbaa !4
  %sub803 = fsub double %278, %277
  store double %sub803, double* %arrayidx802, align 8, !tbaa !4
  %279 = load double* %arrayidx786, align 8, !tbaa !4
  %sub805 = sub nsw i32 0, %267
  %idxprom806 = sext i32 %sub805 to i64
  %add.ptr798.sum4489 = add i64 %idxprom806, %idx.ext779
  %arrayidx807 = getelementptr inbounds double* %call748, i64 %add.ptr798.sum4489
  %280 = load double* %arrayidx807, align 8, !tbaa !4
  %sub808 = fsub double %280, %279
  store double %sub808, double* %arrayidx807, align 8, !tbaa !4
  %281 = load double* %arrayidx790, align 16, !tbaa !4
  %sub810 = sub nsw i32 0, %269
  %idxprom811 = sext i32 %sub810 to i64
  %add.ptr798.sum4490 = add i64 %idxprom811, %idx.ext779
  %arrayidx812 = getelementptr inbounds double* %call748, i64 %add.ptr798.sum4490
  %282 = load double* %arrayidx812, align 8, !tbaa !4
  %sub813 = fsub double %282, %281
  store double %sub813, double* %arrayidx812, align 8, !tbaa !4
  %283 = load i32* %nrowU, align 4, !tbaa !3
  %idx.ext817 = sext i32 %283 to i64
  %add.ptr765.sum = add i64 %idx.ext817, %add.ptr763.sum
  %add.ptr818 = getelementptr inbounds double* %rowL0.24570, i64 %add.ptr765.sum
  %add.ptr820 = getelementptr inbounds double* %colU0.24571, i64 %add.ptr765.sum
  %add822 = add nsw i32 %jcolU84.24569, 3
  %284 = load i32* %ncolU, align 4, !tbaa !3
  %sub759 = add nsw i32 %284, -2
  %cmp760 = icmp slt i32 %add822, %sub759
  %indvars.iv.next4691 = add i64 %indvars.iv4690, 3
  br i1 %cmp760, label %for.body761, label %for.end823

for.end823:                                       ; preds = %for.body761, %if.then741
  %285 = phi i32 [ %260, %if.then741 ], [ %283, %for.body761 ]
  %sub759.lcssa = phi i32 [ %sub7594567, %if.then741 ], [ %sub759, %for.body761 ]
  %.lcssa4566 = phi i32 [ %261, %if.then741 ], [ %284, %for.body761 ]
  %colU0.2.lcssa = phi double* [ %add.ptr756, %if.then741 ], [ %add.ptr820, %for.body761 ]
  %rowL0.2.lcssa = phi double* [ %add.ptr754, %if.then741 ], [ %add.ptr818, %for.body761 ]
  %jcolU84.2.lcssa = phi i32 [ %add757, %if.then741 ], [ %add822, %for.body761 ]
  %cmp825 = icmp eq i32 %jcolU84.2.lcssa, %sub759.lcssa
  br i1 %cmp825, label %if.then826, label %if.else866

if.then826:                                       ; preds = %for.end823
  %idx.ext827 = sext i32 %285 to i64
  %add.ptr828 = getelementptr inbounds double* %rowL0.2.lcssa, i64 %idx.ext827
  %add.ptr830 = getelementptr inbounds double* %colU0.2.lcssa, i64 %idx.ext827
  %idxprom831 = sext i32 %sub759.lcssa to i64
  %286 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx832 = getelementptr inbounds i32* %286, i64 %idxprom831
  %287 = load i32* %arrayidx832, align 4, !tbaa !3
  %add833 = add nsw i32 %sub759.lcssa, 1
  %idxprom834 = sext i32 %add833 to i64
  %arrayidx835 = getelementptr inbounds i32* %286, i64 %idxprom834
  %288 = load i32* %arrayidx835, align 4, !tbaa !3
  call void @DVdot12(i32 %285, double* %call85, double* %colU0.2.lcssa, double* %add.ptr830, double* %arraydecay749) #5
  %idx.ext837 = sext i32 %254 to i64
  %289 = load double* %arraydecay749, align 16, !tbaa !4
  %idxprom841 = sext i32 %287 to i64
  %add.ptr839.sum = sub i64 %idxprom841, %idx.ext837
  %arrayidx842 = getelementptr inbounds double* %call748, i64 %add.ptr839.sum
  %290 = load double* %arrayidx842, align 8, !tbaa !4
  %sub843 = fsub double %290, %289
  store double %sub843, double* %arrayidx842, align 8, !tbaa !4
  %arrayidx844 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1
  %291 = load double* %arrayidx844, align 8, !tbaa !4
  %idxprom845 = sext i32 %288 to i64
  %add.ptr839.sum4483 = sub i64 %idxprom845, %idx.ext837
  %arrayidx846 = getelementptr inbounds double* %call748, i64 %add.ptr839.sum4483
  %292 = load double* %arrayidx846, align 8, !tbaa !4
  %sub847 = fsub double %292, %291
  store double %sub847, double* %arrayidx846, align 8, !tbaa !4
  %293 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot21(i32 %293, double* %rowL0.2.lcssa, double* %add.ptr828, double* %add.ptr89, double* %arraydecay749) #5
  %294 = load double* %arraydecay749, align 16, !tbaa !4
  %sub854 = sub nsw i32 0, %287
  %idxprom855 = sext i32 %sub854 to i64
  %add.ptr852.sum = add i64 %idxprom855, %idx.ext837
  %arrayidx856 = getelementptr inbounds double* %call748, i64 %add.ptr852.sum
  %295 = load double* %arrayidx856, align 8, !tbaa !4
  %sub857 = fsub double %295, %294
  store double %sub857, double* %arrayidx856, align 8, !tbaa !4
  %296 = load double* %arrayidx844, align 8, !tbaa !4
  %sub859 = sub nsw i32 0, %288
  %idxprom860 = sext i32 %sub859 to i64
  %add.ptr852.sum4485 = add i64 %idxprom860, %idx.ext837
  %arrayidx861 = getelementptr inbounds double* %call748, i64 %add.ptr852.sum4485
  %297 = load double* %arrayidx861, align 8, !tbaa !4
  %sub862 = fsub double %297, %296
  store double %sub862, double* %arrayidx861, align 8, !tbaa !4
  br label %for.cond2785.preheader

if.else866:                                       ; preds = %for.end823
  %sub867 = add nsw i32 %.lcssa4566, -1
  %cmp868 = icmp eq i32 %jcolU84.2.lcssa, %sub867
  br i1 %cmp868, label %if.then869, label %for.cond2785.preheader

if.then869:                                       ; preds = %if.else866
  %idxprom870 = sext i32 %jcolU84.2.lcssa to i64
  %298 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx871 = getelementptr inbounds i32* %298, i64 %idxprom870
  %299 = load i32* %arrayidx871, align 4, !tbaa !3
  call void @DVdot11(i32 %285, double* %call85, double* %colU0.2.lcssa, double* %arraydecay749) #5
  %idx.ext873 = sext i32 %254 to i64
  %300 = load double* %arraydecay749, align 16, !tbaa !4
  %idxprom877 = sext i32 %299 to i64
  %add.ptr875.sum = sub i64 %idxprom877, %idx.ext873
  %arrayidx878 = getelementptr inbounds double* %call748, i64 %add.ptr875.sum
  %301 = load double* %arrayidx878, align 8, !tbaa !4
  %sub879 = fsub double %301, %300
  store double %sub879, double* %arrayidx878, align 8, !tbaa !4
  %302 = load i32* %nrowU, align 4, !tbaa !3
  call void @DVdot11(i32 %302, double* %rowL0.2.lcssa, double* %add.ptr89, double* %arraydecay749) #5
  %303 = load double* %arraydecay749, align 16, !tbaa !4
  %sub886 = sub nsw i32 0, %299
  %idxprom887 = sext i32 %sub886 to i64
  %add.ptr884.sum = add i64 %idxprom887, %idx.ext873
  %arrayidx888 = getelementptr inbounds double* %call748, i64 %add.ptr884.sum
  %304 = load double* %arrayidx888, align 8, !tbaa !4
  %sub889 = fsub double %304, %303
  store double %sub889, double* %arrayidx888, align 8, !tbaa !4
  br label %for.cond2785.preheader

land.lhs.true900:                                 ; preds = %if.then78
  %mode901 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1
  %305 = load i32* %mode901, align 4, !tbaa !3
  %cmp902 = icmp eq i32 %305, 2
  br i1 %cmp902, label %if.then903, label %if.else1071

if.then903:                                       ; preds = %land.lhs.true900
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU912, i32* %nentU, i32** %sizesU, i32** %indU, double** %entU907) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxL, i32* %nrowL913, i32* %nentL, i32** %sizesL, i32** %indL, double** %entL906) #5
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4
  %306 = load i32* %nrow, align 4, !tbaa !3
  %mul915 = mul nsw i32 %306, 3
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul915) #5
  %call916 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %idx.ext917 = sext i32 %306 to i64
  %add.ptr918 = getelementptr inbounds double* %call916, i64 %idx.ext917
  %add.ptr918.sum = shl nsw i64 %idx.ext917, 1
  %add.ptr920 = getelementptr inbounds double* %call916, i64 %add.ptr918.sum
  %cmp9224606 = icmp sgt i32 %jcolU.0.lcssa, 0
  br i1 %cmp9224606, label %for.body923.lr.ph, label %for.cond933.preheader

for.body923.lr.ph:                                ; preds = %if.then903
  %307 = load i32** %sizesL, align 8, !tbaa !0
  %308 = load i32** %sizesU, align 8, !tbaa !0
  br label %for.body923

for.cond933.preheader:                            ; preds = %for.body923, %if.then903
  %offsetU.0.lcssa = phi i32 [ 0, %if.then903 ], [ %add929, %for.body923 ]
  %offsetL.0.lcssa = phi i32 [ 0, %if.then903 ], [ %add926, %for.body923 ]
  %cmp9344601 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa4789
  br i1 %cmp9344601, label %for.cond2785.preheader, label %for.body935.lr.ph

for.body935.lr.ph:                                ; preds = %for.cond933.preheader
  %mul957 = shl nsw i32 %306, 1
  %309 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body935

for.body923:                                      ; preds = %for.body923, %for.body923.lr.ph
  %indvars.iv4724 = phi i64 [ 0, %for.body923.lr.ph ], [ %indvars.iv.next4725, %for.body923 ]
  %offsetU.04608 = phi i32 [ 0, %for.body923.lr.ph ], [ %add929, %for.body923 ]
  %offsetL.04607 = phi i32 [ 0, %for.body923.lr.ph ], [ %add926, %for.body923 ]
  %arrayidx925 = getelementptr inbounds i32* %307, i64 %indvars.iv4724
  %310 = load i32* %arrayidx925, align 4, !tbaa !3
  %add926 = add nsw i32 %310, %offsetL.04607
  %arrayidx928 = getelementptr inbounds i32* %308, i64 %indvars.iv4724
  %311 = load i32* %arrayidx928, align 4, !tbaa !3
  %add929 = add nsw i32 %311, %offsetU.04608
  %indvars.iv.next4725 = add i64 %indvars.iv4724, 1
  %lftr.wideiv4726 = trunc i64 %indvars.iv.next4725 to i32
  %exitcond4727 = icmp eq i32 %lftr.wideiv4726, %jcolU.0.lcssa
  br i1 %exitcond4727, label %for.cond933.preheader, label %for.body923

for.body935:                                      ; preds = %if.end1065.for.body935_crit_edge, %for.body935.lr.ph
  %indvars.iv4722 = phi i64 [ %indvars.iv.next4723, %if.end1065.for.body935_crit_edge ], [ %309, %for.body935.lr.ph ]
  %irow0.04604 = phi i32 [ %inc1069, %if.end1065.for.body935_crit_edge ], [ %jcolU.0.lcssa, %for.body935.lr.ph ]
  %offsetU.14603 = phi i32 [ %add1067, %if.end1065.for.body935_crit_edge ], [ %offsetU.0.lcssa, %for.body935.lr.ph ]
  %offsetL.14602 = phi i32 [ %add1066, %if.end1065.for.body935_crit_edge ], [ %offsetL.0.lcssa, %for.body935.lr.ph ]
  %312 = load double** %entL906, align 8, !tbaa !0
  %idx.ext936 = sext i32 %offsetL.14602 to i64
  %313 = load i32** %indL, align 8, !tbaa !0
  %314 = load double** %entU907, align 8, !tbaa !0
  %idx.ext940 = sext i32 %offsetU.14603 to i64
  %add.ptr941 = getelementptr inbounds double* %314, i64 %idx.ext940
  %315 = load i32** %indU, align 8, !tbaa !0
  %add.ptr943 = getelementptr inbounds i32* %315, i64 %idx.ext940
  %316 = load i32** %sizesL, align 8, !tbaa !0
  %arrayidx945 = getelementptr inbounds i32* %316, i64 %indvars.iv4722
  %317 = load i32* %arrayidx945, align 4, !tbaa !3
  %318 = load i32** %sizesU, align 8, !tbaa !0
  %arrayidx947 = getelementptr inbounds i32* %318, i64 %indvars.iv4722
  %319 = load i32* %arrayidx947, align 4, !tbaa !3
  %cmp948 = icmp sgt i32 %317, 0
  %cmp950 = icmp sgt i32 %319, 0
  %or.cond4545 = or i1 %cmp948, %cmp950
  br i1 %or.cond4545, label %if.then951, label %if.end1065

if.then951:                                       ; preds = %for.body935
  %320 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx953 = getelementptr inbounds i32* %320, i64 %indvars.iv4722
  %321 = load i32* %arrayidx953, align 4, !tbaa !3
  %call954 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %321) #5
  br i1 %cmp948, label %for.body960.lr.ph, label %if.end970

for.body960.lr.ph:                                ; preds = %if.then951
  call void @DVzero(i32 %mul957, double* %call916) #5
  br label %for.body960

for.body960:                                      ; preds = %for.body960, %for.body960.lr.ph
  %indvars.iv4708 = phi i64 [ 0, %for.body960.lr.ph ], [ %indvars.iv.next4709, %for.body960 ]
  %add.ptr939.sum4479 = add i64 %indvars.iv4708, %idx.ext936
  %arrayidx962 = getelementptr inbounds i32* %313, i64 %add.ptr939.sum4479
  %322 = load i32* %arrayidx962, align 4, !tbaa !3
  %arrayidx964 = getelementptr inbounds double* %312, i64 %add.ptr939.sum4479
  %323 = load double* %arrayidx964, align 8, !tbaa !4
  %idxprom965 = sext i32 %322 to i64
  %add.ptr918.sum4481 = add i64 %idxprom965, %idx.ext917
  %arrayidx966 = getelementptr inbounds double* %call916, i64 %add.ptr918.sum4481
  store double %323, double* %arrayidx966, align 8, !tbaa !4
  %indvars.iv.next4709 = add i64 %indvars.iv4708, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4709 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %317
  br i1 %exitcond, label %for.end969, label %for.body960

for.end969:                                       ; preds = %for.body960
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call916, double* %add.ptr918) #5
  br label %if.end970

if.end970:                                        ; preds = %for.end969, %if.then951
  br i1 %cmp950, label %for.body976.lr.ph, label %if.end1029

for.body976.lr.ph:                                ; preds = %if.end970
  call void @DVzero(i32 %mul957, double* %add.ptr918) #5
  br label %for.body976

for.body976:                                      ; preds = %for.body976, %for.body976.lr.ph
  %indvars.iv4710 = phi i64 [ 0, %for.body976.lr.ph ], [ %indvars.iv.next4711, %for.body976 ]
  %add.ptr943.sum4477 = add i64 %indvars.iv4710, %idx.ext940
  %arrayidx978 = getelementptr inbounds i32* %315, i64 %add.ptr943.sum4477
  %324 = load i32* %arrayidx978, align 4, !tbaa !3
  %arrayidx980 = getelementptr inbounds double* %314, i64 %add.ptr943.sum4477
  %325 = load double* %arrayidx980, align 8, !tbaa !4
  %idxprom981 = sext i32 %324 to i64
  %add.ptr920.sum = add i64 %idxprom981, %add.ptr918.sum
  %arrayidx982 = getelementptr inbounds double* %call916, i64 %add.ptr920.sum
  store double %325, double* %arrayidx982, align 8, !tbaa !4
  %indvars.iv.next4711 = add i64 %indvars.iv4710, 1
  %lftr.wideiv4712 = trunc i64 %indvars.iv.next4711 to i32
  %exitcond4713 = icmp eq i32 %lftr.wideiv4712, %319
  br i1 %exitcond4713, label %if.end986, label %for.body976

if.end986:                                        ; preds = %for.body976
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr918, double* %add.ptr920) #5
  br i1 %cmp948, label %if.then990, label %if.then996

if.then990:                                       ; preds = %if.end986
  %call991 = call double @DVdoti(i32 %319, double* %call916, i32* %add.ptr943, double* %add.ptr941) #5
  %326 = load double* %call954, align 8, !tbaa !4
  %sub993 = fsub double %326, %call991
  store double %sub993, double* %call954, align 8, !tbaa !4
  br label %if.then996

if.then996:                                       ; preds = %if.then990, %if.end986
  %idx.ext997 = sext i32 %321 to i64
  %idx.ext999 = sext i32 %317 to i64
  %add.ptr937.sum = add i64 %idx.ext999, %idx.ext936
  %add.ptr1000 = getelementptr inbounds double* %312, i64 %add.ptr937.sum
  %add.ptr1002 = getelementptr inbounds i32* %313, i64 %add.ptr937.sum
  br label %for.cond1004.outer

for.cond1004.outer:                               ; preds = %if.then1010, %if.then996
  %irow1.0.in.ph = phi i32 [ %irow0.04604, %if.then996 ], [ %irow1.0, %if.then1010 ]
  %rowL1909.0.ph = phi double* [ %add.ptr1000, %if.then996 ], [ %add.ptr1019, %if.then1010 ]
  %indL1.0.ph = phi i32* [ %add.ptr1002, %if.then996 ], [ %add.ptr1021, %if.then1010 ]
  %327 = load i32* %ncolU912, align 4, !tbaa !3
  %328 = load i32** %sizesL, align 8, !tbaa !0
  %329 = sext i32 %irow1.0.in.ph to i64
  br label %for.cond1004

for.cond1004:                                     ; preds = %for.cond1004.outer, %for.body1006
  %indvars.iv4716 = phi i64 [ %329, %for.cond1004.outer ], [ %indvars.iv.next4717, %for.body1006 ]
  %irow1.0.in = phi i32 [ %irow1.0.in.ph, %for.cond1004.outer ], [ %irow1.0, %for.body1006 ]
  %indvars.iv.next4717 = add i64 %indvars.iv4716, 1
  %irow1.0 = add nsw i32 %irow1.0.in, 1
  %330 = trunc i64 %indvars.iv.next4717 to i32
  %cmp1005 = icmp slt i32 %330, %327
  br i1 %cmp1005, label %for.body1006, label %if.end1029

for.body1006:                                     ; preds = %for.cond1004
  %arrayidx1008 = getelementptr inbounds i32* %328, i64 %indvars.iv.next4717
  %331 = load i32* %arrayidx1008, align 4, !tbaa !3
  %cmp1009 = icmp sgt i32 %331, 0
  br i1 %cmp1009, label %if.then1010, label %for.cond1004

if.then1010:                                      ; preds = %for.body1006
  %332 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1012 = getelementptr inbounds i32* %332, i64 %indvars.iv.next4717
  %333 = load i32* %arrayidx1012, align 4, !tbaa !3
  %call1013 = call double @DVdoti(i32 %331, double* %add.ptr918, i32* %indL1.0.ph, double* %rowL1909.0.ph) #5
  %sub1014 = sub nsw i32 0, %333
  %idxprom1015 = sext i32 %sub1014 to i64
  %add.ptr998.sum = add i64 %idxprom1015, %idx.ext997
  %arrayidx1016 = getelementptr inbounds double* %call954, i64 %add.ptr998.sum
  %334 = load double* %arrayidx1016, align 8, !tbaa !4
  %sub1017 = fsub double %334, %call1013
  store double %sub1017, double* %arrayidx1016, align 8, !tbaa !4
  %idx.ext1018 = sext i32 %331 to i64
  %add.ptr1019 = getelementptr inbounds double* %rowL1909.0.ph, i64 %idx.ext1018
  %add.ptr1021 = getelementptr inbounds i32* %indL1.0.ph, i64 %idx.ext1018
  br label %for.cond1004.outer

if.end1029:                                       ; preds = %for.cond1004, %if.end970
  br i1 %cmp948, label %if.then1031, label %if.end1065

if.then1031:                                      ; preds = %if.end1029
  %idx.ext1032 = sext i32 %321 to i64
  %idx.ext1035 = sext i32 %319 to i64
  %add.ptr941.sum = add i64 %idx.ext1035, %idx.ext940
  %add.ptr1036 = getelementptr inbounds double* %314, i64 %add.ptr941.sum
  %add.ptr1038 = getelementptr inbounds i32* %315, i64 %add.ptr941.sum
  br label %for.cond1040.outer

for.cond1040.outer:                               ; preds = %if.then1046, %if.then1031
  %irow1.1.in.ph = phi i32 [ %irow0.04604, %if.then1031 ], [ %irow1.1, %if.then1046 ]
  %colU1905.0.ph = phi double* [ %add.ptr1036, %if.then1031 ], [ %add.ptr1054, %if.then1046 ]
  %indU1.0.ph = phi i32* [ %add.ptr1038, %if.then1031 ], [ %add.ptr1056, %if.then1046 ]
  %335 = load i32* %ncolU912, align 4, !tbaa !3
  %336 = load i32** %sizesU, align 8, !tbaa !0
  %337 = sext i32 %irow1.1.in.ph to i64
  br label %for.cond1040

for.cond1040:                                     ; preds = %for.cond1040.outer, %for.body1042
  %indvars.iv4720 = phi i64 [ %337, %for.cond1040.outer ], [ %indvars.iv.next4721, %for.body1042 ]
  %irow1.1.in = phi i32 [ %irow1.1.in.ph, %for.cond1040.outer ], [ %irow1.1, %for.body1042 ]
  %indvars.iv.next4721 = add i64 %indvars.iv4720, 1
  %irow1.1 = add nsw i32 %irow1.1.in, 1
  %338 = trunc i64 %indvars.iv.next4721 to i32
  %cmp1041 = icmp slt i32 %338, %335
  br i1 %cmp1041, label %for.body1042, label %if.end1065

for.body1042:                                     ; preds = %for.cond1040
  %arrayidx1044 = getelementptr inbounds i32* %336, i64 %indvars.iv.next4721
  %339 = load i32* %arrayidx1044, align 4, !tbaa !3
  %cmp1045 = icmp sgt i32 %339, 0
  br i1 %cmp1045, label %if.then1046, label %for.cond1040

if.then1046:                                      ; preds = %for.body1042
  %340 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1048 = getelementptr inbounds i32* %340, i64 %indvars.iv.next4721
  %341 = load i32* %arrayidx1048, align 4, !tbaa !3
  %call1049 = call double @DVdoti(i32 %339, double* %call916, i32* %indU1.0.ph, double* %colU1905.0.ph) #5
  %idxprom1050 = sext i32 %341 to i64
  %add.ptr1034.sum = sub i64 %idxprom1050, %idx.ext1032
  %arrayidx1051 = getelementptr inbounds double* %call954, i64 %add.ptr1034.sum
  %342 = load double* %arrayidx1051, align 8, !tbaa !4
  %sub1052 = fsub double %342, %call1049
  store double %sub1052, double* %arrayidx1051, align 8, !tbaa !4
  %idx.ext1053 = sext i32 %339 to i64
  %add.ptr1054 = getelementptr inbounds double* %colU1905.0.ph, i64 %idx.ext1053
  %add.ptr1056 = getelementptr inbounds i32* %indU1.0.ph, i64 %idx.ext1053
  br label %for.cond1040.outer

if.end1065:                                       ; preds = %for.cond1040, %for.body935, %if.end1029
  %343 = trunc i64 %indvars.iv4722 to i32
  %cmp934 = icmp slt i32 %343, %lastInU.0.lcssa4789
  br i1 %cmp934, label %if.end1065.for.body935_crit_edge, label %for.cond2785.preheader

if.end1065.for.body935_crit_edge:                 ; preds = %if.end1065
  %inc1069 = add nsw i32 %irow0.04604, 1
  %indvars.iv.next4723 = add i64 %indvars.iv4722, 1
  %add1067 = add nsw i32 %319, %offsetU.14603
  %add1066 = add nsw i32 %317, %offsetL.14602
  br label %for.body935

if.else1071:                                      ; preds = %if.then78, %land.lhs.true80, %land.lhs.true900
  %344 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1072 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([135 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

if.then1078:                                      ; preds = %for.end75
  %mode1079 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1
  %345 = load i32* %mode1079, align 4, !tbaa !3
  switch i32 %345, label %if.else2779 [
    i32 1, label %land.lhs.true1081
    i32 3, label %land.lhs.true2540
  ]

land.lhs.true1081:                                ; preds = %if.then1078
  %mode1082 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1
  %346 = load i32* %mode1082, align 4, !tbaa !3
  %cmp1083 = icmp eq i32 %346, 0
  br i1 %cmp1083, label %if.then1084, label %if.else2779

if.then1084:                                      ; preds = %land.lhs.true1081
  %347 = bitcast [18 x double]* %sums1085 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %347) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxL, i32* %nrowL1115, i32* %ncolL1114, i32* %inc11106, i32* %inc21107, double** %entL1092) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU1116, i32* %ncolU, i32* %inc11106, i32* %inc21107, double** %entU1093) #5
  %348 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1118 = mul nsw i32 %348, 12
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul1118) #5
  %call1119 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %349 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1120 = shl nsw i32 %349, 1
  %idx.ext1121 = sext i32 %mul1120 to i64
  %add.ptr1122 = getelementptr inbounds double* %call1119, i64 %idx.ext1121
  %add.ptr1122.sum = shl nsw i64 %idx.ext1121, 1
  %add.ptr1125 = getelementptr inbounds double* %call1119, i64 %add.ptr1122.sum
  %add.ptr1125.sum = add i64 %add.ptr1122.sum, %idx.ext1121
  %add.ptr1128 = getelementptr inbounds double* %call1119, i64 %add.ptr1125.sum
  %add.ptr1128.sum = add i64 %add.ptr1125.sum, %idx.ext1121
  %add.ptr1131 = getelementptr inbounds double* %call1119, i64 %add.ptr1128.sum
  %add.ptr1131.sum = add i64 %add.ptr1128.sum, %idx.ext1121
  %add.ptr1134 = getelementptr inbounds double* %call1119, i64 %add.ptr1131.sum
  %mul1135 = mul nsw i32 %349, %jcolU.0.lcssa
  %sub1137 = add nsw i32 %lastInU.0.lcssa4789, -2
  %cmp11384645 = icmp sgt i32 %jcolU.0.lcssa, %sub1137
  br i1 %cmp11384645, label %for.end1820, label %for.body1139.lr.ph

for.body1139.lr.ph:                               ; preds = %if.then1084
  %arraydecay1171 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 0
  %arrayidx1175 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 1
  %arrayidx1180 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2
  %arrayidx1184 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3
  %arrayidx1189 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 6
  %arrayidx1194 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 7
  %arrayidx1202 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 4
  %arrayidx1206 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 5
  %arrayidx1211 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 12
  %arrayidx1216 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 13
  %arrayidx1222 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 8
  %arrayidx1225 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 9
  %arrayidx1230 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 10
  %arrayidx1234 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 11
  %arrayidx1239 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 14
  %arrayidx1244 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 15
  %arrayidx1250 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 16
  %arrayidx1253 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 17
  %350 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body1139

for.body1139:                                     ; preds = %for.body1139.lr.ph, %if.end1815
  %351 = phi i32 [ %349, %for.body1139.lr.ph ], [ %566, %if.end1815 ]
  %indvars.iv4751 = phi i64 [ %350, %for.body1139.lr.ph ], [ %indvars.iv.next4752, %if.end1815 ]
  %indvars.iv4744.in = phi i64 [ %350, %for.body1139.lr.ph ], [ %indvars.iv4744, %if.end1815 ]
  %offset1117.04647 = phi i32 [ %mul1135, %for.body1139.lr.ph ], [ %add1817, %if.end1815 ]
  %irowL1108.04646 = phi i32 [ %jcolU.0.lcssa, %for.body1139.lr.ph ], [ %add1262, %if.end1815 ]
  %indvars.iv4744 = add i64 %indvars.iv4744.in, 3
  %352 = load double** %entL1092, align 8, !tbaa !0
  %mul1140 = shl nsw i32 %offset1117.04647, 1
  %idx.ext1141 = sext i32 %mul1140 to i64
  %add.ptr1142 = getelementptr inbounds double* %352, i64 %idx.ext1141
  %mul1143 = shl nsw i32 %351, 1
  %idx.ext1144 = sext i32 %mul1143 to i64
  %add.ptr1142.sum = add i64 %idx.ext1144, %idx.ext1141
  %add.ptr1145 = getelementptr inbounds double* %352, i64 %add.ptr1142.sum
  %add.ptr1145.sum = add i64 %add.ptr1142.sum, %idx.ext1144
  %add.ptr1148 = getelementptr inbounds double* %352, i64 %add.ptr1145.sum
  %353 = load double** %entU1093, align 8, !tbaa !0
  %add.ptr1151 = getelementptr inbounds double* %353, i64 %idx.ext1141
  %add.ptr1154 = getelementptr inbounds double* %353, i64 %add.ptr1142.sum
  %add.ptr1157 = getelementptr inbounds double* %353, i64 %add.ptr1145.sum
  %354 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1159 = getelementptr inbounds i32* %354, i64 %indvars.iv4751
  %355 = load i32* %arrayidx1159, align 4, !tbaa !3
  %call1160 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %355) #5
  %356 = add nsw i64 %indvars.iv4751, 1
  %357 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1163 = getelementptr inbounds i32* %357, i64 %356
  %358 = load i32* %arrayidx1163, align 4, !tbaa !3
  %call1164 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %358) #5
  %359 = add nsw i64 %indvars.iv4751, 2
  %360 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1167 = getelementptr inbounds i32* %360, i64 %359
  %361 = load i32* %arrayidx1167, align 4, !tbaa !3
  %call1168 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %361) #5
  %362 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1169 = mul nsw i32 %362, 6
  call void @DVzero(i32 %mul1169, double* %call1119) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %add.ptr1142, double* %add.ptr1145, double* %add.ptr1148) #5
  %363 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1170 = mul nsw i32 %363, 6
  call void @DVzero(i32 %mul1170, double* %add.ptr1128) #5
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %add.ptr1151, double* %add.ptr1154, double* %add.ptr1157) #5
  %364 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU33(i32 %364, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %add.ptr1151, double* %add.ptr1154, double* %add.ptr1157, double* %arraydecay1171) #5
  %365 = load double* %arraydecay1171, align 16, !tbaa !4
  %366 = load double* %call1160, align 8, !tbaa !4
  %sub1174 = fsub double %366, %365
  store double %sub1174, double* %call1160, align 8, !tbaa !4
  %367 = load double* %arrayidx1175, align 8, !tbaa !4
  %arrayidx1176 = getelementptr inbounds double* %call1160, i64 1
  %368 = load double* %arrayidx1176, align 8, !tbaa !4
  %sub1177 = fsub double %368, %367
  store double %sub1177, double* %arrayidx1176, align 8, !tbaa !4
  %sub1178 = sub nsw i32 %358, %355
  %mul1179 = shl nsw i32 %sub1178, 1
  %369 = load double* %arrayidx1180, align 16, !tbaa !4
  %idxprom1181 = sext i32 %mul1179 to i64
  %arrayidx1182 = getelementptr inbounds double* %call1160, i64 %idxprom1181
  %370 = load double* %arrayidx1182, align 8, !tbaa !4
  %sub1183 = fsub double %370, %369
  store double %sub1183, double* %arrayidx1182, align 8, !tbaa !4
  %371 = load double* %arrayidx1184, align 8, !tbaa !4
  %add11854393 = or i32 %mul1179, 1
  %idxprom1186 = sext i32 %add11854393 to i64
  %arrayidx1187 = getelementptr inbounds double* %call1160, i64 %idxprom1186
  %372 = load double* %arrayidx1187, align 8, !tbaa !4
  %sub1188 = fsub double %372, %371
  store double %sub1188, double* %arrayidx1187, align 8, !tbaa !4
  %373 = load double* %arrayidx1189, align 16, !tbaa !4
  %sub1190 = sub nsw i32 0, %mul1179
  %idxprom1191 = sext i32 %sub1190 to i64
  %arrayidx1192 = getelementptr inbounds double* %call1160, i64 %idxprom1191
  %374 = load double* %arrayidx1192, align 8, !tbaa !4
  %sub1193 = fsub double %374, %373
  store double %sub1193, double* %arrayidx1192, align 8, !tbaa !4
  %375 = load double* %arrayidx1194, align 8, !tbaa !4
  %add11964394 = or i32 %sub1190, 1
  %idxprom1197 = sext i32 %add11964394 to i64
  %arrayidx1198 = getelementptr inbounds double* %call1160, i64 %idxprom1197
  %376 = load double* %arrayidx1198, align 8, !tbaa !4
  %sub1199 = fsub double %376, %375
  store double %sub1199, double* %arrayidx1198, align 8, !tbaa !4
  %sub1200 = sub nsw i32 %361, %355
  %mul1201 = shl nsw i32 %sub1200, 1
  %377 = load double* %arrayidx1202, align 16, !tbaa !4
  %idxprom1203 = sext i32 %mul1201 to i64
  %arrayidx1204 = getelementptr inbounds double* %call1160, i64 %idxprom1203
  %378 = load double* %arrayidx1204, align 8, !tbaa !4
  %sub1205 = fsub double %378, %377
  store double %sub1205, double* %arrayidx1204, align 8, !tbaa !4
  %379 = load double* %arrayidx1206, align 8, !tbaa !4
  %add12074395 = or i32 %mul1201, 1
  %idxprom1208 = sext i32 %add12074395 to i64
  %arrayidx1209 = getelementptr inbounds double* %call1160, i64 %idxprom1208
  %380 = load double* %arrayidx1209, align 8, !tbaa !4
  %sub1210 = fsub double %380, %379
  store double %sub1210, double* %arrayidx1209, align 8, !tbaa !4
  %381 = load double* %arrayidx1211, align 16, !tbaa !4
  %sub1212 = sub nsw i32 0, %mul1201
  %idxprom1213 = sext i32 %sub1212 to i64
  %arrayidx1214 = getelementptr inbounds double* %call1160, i64 %idxprom1213
  %382 = load double* %arrayidx1214, align 8, !tbaa !4
  %sub1215 = fsub double %382, %381
  store double %sub1215, double* %arrayidx1214, align 8, !tbaa !4
  %383 = load double* %arrayidx1216, align 8, !tbaa !4
  %add12184396 = or i32 %sub1212, 1
  %idxprom1219 = sext i32 %add12184396 to i64
  %arrayidx1220 = getelementptr inbounds double* %call1160, i64 %idxprom1219
  %384 = load double* %arrayidx1220, align 8, !tbaa !4
  %sub1221 = fsub double %384, %383
  store double %sub1221, double* %arrayidx1220, align 8, !tbaa !4
  %385 = load double* %arrayidx1222, align 16, !tbaa !4
  %386 = load double* %call1164, align 8, !tbaa !4
  %sub1224 = fsub double %386, %385
  store double %sub1224, double* %call1164, align 8, !tbaa !4
  %387 = load double* %arrayidx1225, align 8, !tbaa !4
  %arrayidx1226 = getelementptr inbounds double* %call1164, i64 1
  %388 = load double* %arrayidx1226, align 8, !tbaa !4
  %sub1227 = fsub double %388, %387
  store double %sub1227, double* %arrayidx1226, align 8, !tbaa !4
  %sub1228 = sub nsw i32 %361, %358
  %mul1229 = shl nsw i32 %sub1228, 1
  %389 = load double* %arrayidx1230, align 16, !tbaa !4
  %idxprom1231 = sext i32 %mul1229 to i64
  %arrayidx1232 = getelementptr inbounds double* %call1164, i64 %idxprom1231
  %390 = load double* %arrayidx1232, align 8, !tbaa !4
  %sub1233 = fsub double %390, %389
  store double %sub1233, double* %arrayidx1232, align 8, !tbaa !4
  %391 = load double* %arrayidx1234, align 8, !tbaa !4
  %add12354397 = or i32 %mul1229, 1
  %idxprom1236 = sext i32 %add12354397 to i64
  %arrayidx1237 = getelementptr inbounds double* %call1164, i64 %idxprom1236
  %392 = load double* %arrayidx1237, align 8, !tbaa !4
  %sub1238 = fsub double %392, %391
  store double %sub1238, double* %arrayidx1237, align 8, !tbaa !4
  %393 = load double* %arrayidx1239, align 16, !tbaa !4
  %sub1240 = sub nsw i32 0, %mul1229
  %idxprom1241 = sext i32 %sub1240 to i64
  %arrayidx1242 = getelementptr inbounds double* %call1164, i64 %idxprom1241
  %394 = load double* %arrayidx1242, align 8, !tbaa !4
  %sub1243 = fsub double %394, %393
  store double %sub1243, double* %arrayidx1242, align 8, !tbaa !4
  %395 = load double* %arrayidx1244, align 8, !tbaa !4
  %add12464398 = or i32 %sub1240, 1
  %idxprom1247 = sext i32 %add12464398 to i64
  %arrayidx1248 = getelementptr inbounds double* %call1164, i64 %idxprom1247
  %396 = load double* %arrayidx1248, align 8, !tbaa !4
  %sub1249 = fsub double %396, %395
  store double %sub1249, double* %arrayidx1248, align 8, !tbaa !4
  %397 = load double* %arrayidx1250, align 16, !tbaa !4
  %398 = load double* %call1168, align 8, !tbaa !4
  %sub1252 = fsub double %398, %397
  store double %sub1252, double* %call1168, align 8, !tbaa !4
  %399 = load double* %arrayidx1253, align 8, !tbaa !4
  %arrayidx1254 = getelementptr inbounds double* %call1168, i64 1
  %400 = load double* %arrayidx1254, align 8, !tbaa !4
  %sub1255 = fsub double %400, %399
  store double %sub1255, double* %arrayidx1254, align 8, !tbaa !4
  %401 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1256 = shl nsw i32 %401, 1
  %idx.ext1257 = sext i32 %mul1256 to i64
  %add.ptr1148.sum = add i64 %idx.ext1257, %add.ptr1145.sum
  %add.ptr1258 = getelementptr inbounds double* %352, i64 %add.ptr1148.sum
  %add.ptr1261 = getelementptr inbounds double* %353, i64 %add.ptr1148.sum
  %indvars.iv.next4752 = add i64 %indvars.iv4751, 3
  %add1262 = add nsw i32 %irowL1108.04646, 3
  %402 = load i32* %ncolU, align 4, !tbaa !3
  %sub12644635 = add nsw i32 %402, -2
  %403 = trunc i64 %indvars.iv.next4752 to i32
  %cmp12654636 = icmp slt i32 %403, %sub12644635
  br i1 %cmp12654636, label %for.body1266.lr.ph, label %for.end1522

for.body1266.lr.ph:                               ; preds = %for.body1139
  %mul1291 = shl nsw i32 %355, 1
  %idx.ext1292 = sext i32 %mul1291 to i64
  %mul1295 = shl nsw i32 %358, 1
  %idx.ext1296 = sext i32 %mul1295 to i64
  %mul1299 = shl nsw i32 %361, 1
  %idx.ext1300 = sext i32 %mul1299 to i64
  br label %for.body1266

for.body1266:                                     ; preds = %for.body1266.lr.ph, %for.body1266
  %404 = phi i32 [ %401, %for.body1266.lr.ph ], [ %484, %for.body1266 ]
  %indvars.iv4746 = phi i64 [ %indvars.iv4744, %for.body1266.lr.ph ], [ %indvars.iv.next4747, %for.body1266 ]
  %jcolU1109.04639 = phi i32 [ %add1262, %for.body1266.lr.ph ], [ %add1521, %for.body1266 ]
  %rowL01097.04638 = phi double* [ %add.ptr1258, %for.body1266.lr.ph ], [ %add.ptr1516, %for.body1266 ]
  %colU01089.04637 = phi double* [ %add.ptr1261, %for.body1266.lr.ph ], [ %add.ptr1519, %for.body1266 ]
  %mul1267 = shl nsw i32 %404, 1
  %idx.ext1268 = sext i32 %mul1267 to i64
  %add.ptr1269 = getelementptr inbounds double* %rowL01097.04638, i64 %idx.ext1268
  %add.ptr1269.sum = shl nsw i64 %idx.ext1268, 1
  %add.ptr1272 = getelementptr inbounds double* %rowL01097.04638, i64 %add.ptr1269.sum
  %add.ptr1275 = getelementptr inbounds double* %colU01089.04637, i64 %idx.ext1268
  %add.ptr1278 = getelementptr inbounds double* %colU01089.04637, i64 %add.ptr1269.sum
  %405 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1280 = getelementptr inbounds i32* %405, i64 %indvars.iv4746
  %406 = load i32* %arrayidx1280, align 4, !tbaa !3
  %mul1281 = shl nsw i32 %406, 1
  %407 = add nsw i64 %indvars.iv4746, 1
  %arrayidx1284 = getelementptr inbounds i32* %405, i64 %407
  %408 = load i32* %arrayidx1284, align 4, !tbaa !3
  %mul1285 = shl nsw i32 %408, 1
  %409 = add nsw i64 %indvars.iv4746, 2
  %arrayidx1288 = getelementptr inbounds i32* %405, i64 %409
  %410 = load i32* %arrayidx1288, align 4, !tbaa !3
  %mul1289 = shl nsw i32 %410, 1
  call void @ZVdotU33(i32 %404, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %colU01089.04637, double* %add.ptr1275, double* %add.ptr1278, double* %arraydecay1171) #5
  %411 = load double* %arraydecay1171, align 16, !tbaa !4
  %idxprom1304 = sext i32 %mul1281 to i64
  %add.ptr1294.sum = sub i64 %idxprom1304, %idx.ext1292
  %arrayidx1305 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum
  %412 = load double* %arrayidx1305, align 8, !tbaa !4
  %sub1306 = fsub double %412, %411
  store double %sub1306, double* %arrayidx1305, align 8, !tbaa !4
  %413 = load double* %arrayidx1175, align 8, !tbaa !4
  %add13084435 = or i32 %mul1281, 1
  %idxprom1309 = sext i32 %add13084435 to i64
  %add.ptr1294.sum4436 = sub i64 %idxprom1309, %idx.ext1292
  %arrayidx1310 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4436
  %414 = load double* %arrayidx1310, align 8, !tbaa !4
  %sub1311 = fsub double %414, %413
  store double %sub1311, double* %arrayidx1310, align 8, !tbaa !4
  %415 = load double* %arrayidx1180, align 16, !tbaa !4
  %idxprom1313 = sext i32 %mul1285 to i64
  %add.ptr1294.sum4437 = sub i64 %idxprom1313, %idx.ext1292
  %arrayidx1314 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4437
  %416 = load double* %arrayidx1314, align 8, !tbaa !4
  %sub1315 = fsub double %416, %415
  store double %sub1315, double* %arrayidx1314, align 8, !tbaa !4
  %417 = load double* %arrayidx1184, align 8, !tbaa !4
  %add13174438 = or i32 %mul1285, 1
  %idxprom1318 = sext i32 %add13174438 to i64
  %add.ptr1294.sum4439 = sub i64 %idxprom1318, %idx.ext1292
  %arrayidx1319 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4439
  %418 = load double* %arrayidx1319, align 8, !tbaa !4
  %sub1320 = fsub double %418, %417
  store double %sub1320, double* %arrayidx1319, align 8, !tbaa !4
  %419 = load double* %arrayidx1202, align 16, !tbaa !4
  %idxprom1322 = sext i32 %mul1289 to i64
  %add.ptr1294.sum4440 = sub i64 %idxprom1322, %idx.ext1292
  %arrayidx1323 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4440
  %420 = load double* %arrayidx1323, align 8, !tbaa !4
  %sub1324 = fsub double %420, %419
  store double %sub1324, double* %arrayidx1323, align 8, !tbaa !4
  %421 = load double* %arrayidx1206, align 8, !tbaa !4
  %add13264441 = or i32 %mul1289, 1
  %idxprom1327 = sext i32 %add13264441 to i64
  %add.ptr1294.sum4442 = sub i64 %idxprom1327, %idx.ext1292
  %arrayidx1328 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4442
  %422 = load double* %arrayidx1328, align 8, !tbaa !4
  %sub1329 = fsub double %422, %421
  store double %sub1329, double* %arrayidx1328, align 8, !tbaa !4
  %423 = load double* %arrayidx1189, align 16, !tbaa !4
  %add.ptr1298.sum = sub i64 %idxprom1304, %idx.ext1296
  %arrayidx1332 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum
  %424 = load double* %arrayidx1332, align 8, !tbaa !4
  %sub1333 = fsub double %424, %423
  store double %sub1333, double* %arrayidx1332, align 8, !tbaa !4
  %425 = load double* %arrayidx1194, align 8, !tbaa !4
  %add.ptr1298.sum4443 = sub i64 %idxprom1309, %idx.ext1296
  %arrayidx1337 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4443
  %426 = load double* %arrayidx1337, align 8, !tbaa !4
  %sub1338 = fsub double %426, %425
  store double %sub1338, double* %arrayidx1337, align 8, !tbaa !4
  %427 = load double* %arrayidx1222, align 16, !tbaa !4
  %add.ptr1298.sum4444 = sub i64 %idxprom1313, %idx.ext1296
  %arrayidx1341 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4444
  %428 = load double* %arrayidx1341, align 8, !tbaa !4
  %sub1342 = fsub double %428, %427
  store double %sub1342, double* %arrayidx1341, align 8, !tbaa !4
  %429 = load double* %arrayidx1225, align 8, !tbaa !4
  %add.ptr1298.sum4445 = sub i64 %idxprom1318, %idx.ext1296
  %arrayidx1346 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4445
  %430 = load double* %arrayidx1346, align 8, !tbaa !4
  %sub1347 = fsub double %430, %429
  store double %sub1347, double* %arrayidx1346, align 8, !tbaa !4
  %431 = load double* %arrayidx1230, align 16, !tbaa !4
  %add.ptr1298.sum4446 = sub i64 %idxprom1322, %idx.ext1296
  %arrayidx1350 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4446
  %432 = load double* %arrayidx1350, align 8, !tbaa !4
  %sub1351 = fsub double %432, %431
  store double %sub1351, double* %arrayidx1350, align 8, !tbaa !4
  %433 = load double* %arrayidx1234, align 8, !tbaa !4
  %add.ptr1298.sum4447 = sub i64 %idxprom1327, %idx.ext1296
  %arrayidx1355 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4447
  %434 = load double* %arrayidx1355, align 8, !tbaa !4
  %sub1356 = fsub double %434, %433
  store double %sub1356, double* %arrayidx1355, align 8, !tbaa !4
  %435 = load double* %arrayidx1211, align 16, !tbaa !4
  %add.ptr1302.sum = sub i64 %idxprom1304, %idx.ext1300
  %arrayidx1359 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum
  %436 = load double* %arrayidx1359, align 8, !tbaa !4
  %sub1360 = fsub double %436, %435
  store double %sub1360, double* %arrayidx1359, align 8, !tbaa !4
  %437 = load double* %arrayidx1216, align 8, !tbaa !4
  %add.ptr1302.sum4448 = sub i64 %idxprom1309, %idx.ext1300
  %arrayidx1364 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4448
  %438 = load double* %arrayidx1364, align 8, !tbaa !4
  %sub1365 = fsub double %438, %437
  store double %sub1365, double* %arrayidx1364, align 8, !tbaa !4
  %439 = load double* %arrayidx1239, align 16, !tbaa !4
  %add.ptr1302.sum4449 = sub i64 %idxprom1313, %idx.ext1300
  %arrayidx1368 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4449
  %440 = load double* %arrayidx1368, align 8, !tbaa !4
  %sub1369 = fsub double %440, %439
  store double %sub1369, double* %arrayidx1368, align 8, !tbaa !4
  %441 = load double* %arrayidx1244, align 8, !tbaa !4
  %add.ptr1302.sum4450 = sub i64 %idxprom1318, %idx.ext1300
  %arrayidx1373 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4450
  %442 = load double* %arrayidx1373, align 8, !tbaa !4
  %sub1374 = fsub double %442, %441
  store double %sub1374, double* %arrayidx1373, align 8, !tbaa !4
  %443 = load double* %arrayidx1250, align 16, !tbaa !4
  %add.ptr1302.sum4451 = sub i64 %idxprom1322, %idx.ext1300
  %arrayidx1377 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4451
  %444 = load double* %arrayidx1377, align 8, !tbaa !4
  %sub1378 = fsub double %444, %443
  store double %sub1378, double* %arrayidx1377, align 8, !tbaa !4
  %445 = load double* %arrayidx1253, align 8, !tbaa !4
  %add.ptr1302.sum4452 = sub i64 %idxprom1327, %idx.ext1300
  %arrayidx1382 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4452
  %446 = load double* %arrayidx1382, align 8, !tbaa !4
  %sub1383 = fsub double %446, %445
  store double %sub1383, double* %arrayidx1382, align 8, !tbaa !4
  %447 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU33(i32 %447, double* %rowL01097.04638, double* %add.ptr1269, double* %add.ptr1272, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %arraydecay1171) #5
  %448 = load double* %arraydecay1171, align 16, !tbaa !4
  %sub1404 = sub nsw i32 0, %mul1281
  %idxprom1405 = sext i32 %sub1404 to i64
  %add.ptr1396.sum = add i64 %idxprom1405, %idx.ext1292
  %arrayidx1406 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum
  %449 = load double* %arrayidx1406, align 8, !tbaa !4
  %sub1407 = fsub double %449, %448
  store double %sub1407, double* %arrayidx1406, align 8, !tbaa !4
  %450 = load double* %arrayidx1175, align 8, !tbaa !4
  %add14104456 = or i32 %sub1404, 1
  %idxprom1411 = sext i32 %add14104456 to i64
  %add.ptr1396.sum4457 = add i64 %idxprom1411, %idx.ext1292
  %arrayidx1412 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4457
  %451 = load double* %arrayidx1412, align 8, !tbaa !4
  %sub1413 = fsub double %451, %450
  store double %sub1413, double* %arrayidx1412, align 8, !tbaa !4
  %452 = load double* %arrayidx1180, align 16, !tbaa !4
  %add.ptr1399.sum = add i64 %idxprom1405, %idx.ext1296
  %arrayidx1417 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum
  %453 = load double* %arrayidx1417, align 8, !tbaa !4
  %sub1418 = fsub double %453, %452
  store double %sub1418, double* %arrayidx1417, align 8, !tbaa !4
  %454 = load double* %arrayidx1184, align 8, !tbaa !4
  %add.ptr1399.sum4458 = add i64 %idxprom1411, %idx.ext1296
  %arrayidx1423 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4458
  %455 = load double* %arrayidx1423, align 8, !tbaa !4
  %sub1424 = fsub double %455, %454
  store double %sub1424, double* %arrayidx1423, align 8, !tbaa !4
  %456 = load double* %arrayidx1202, align 16, !tbaa !4
  %add.ptr1402.sum = add i64 %idxprom1405, %idx.ext1300
  %arrayidx1428 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum
  %457 = load double* %arrayidx1428, align 8, !tbaa !4
  %sub1429 = fsub double %457, %456
  store double %sub1429, double* %arrayidx1428, align 8, !tbaa !4
  %458 = load double* %arrayidx1206, align 8, !tbaa !4
  %add.ptr1402.sum4459 = add i64 %idxprom1411, %idx.ext1300
  %arrayidx1434 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4459
  %459 = load double* %arrayidx1434, align 8, !tbaa !4
  %sub1435 = fsub double %459, %458
  store double %sub1435, double* %arrayidx1434, align 8, !tbaa !4
  %460 = load double* %arrayidx1189, align 16, !tbaa !4
  %sub1437 = sub nsw i32 0, %mul1285
  %idxprom1438 = sext i32 %sub1437 to i64
  %add.ptr1396.sum4460 = add i64 %idxprom1438, %idx.ext1292
  %arrayidx1439 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4460
  %461 = load double* %arrayidx1439, align 8, !tbaa !4
  %sub1440 = fsub double %461, %460
  store double %sub1440, double* %arrayidx1439, align 8, !tbaa !4
  %462 = load double* %arrayidx1194, align 8, !tbaa !4
  %add14434461 = or i32 %sub1437, 1
  %idxprom1444 = sext i32 %add14434461 to i64
  %add.ptr1396.sum4462 = add i64 %idxprom1444, %idx.ext1292
  %arrayidx1445 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4462
  %463 = load double* %arrayidx1445, align 8, !tbaa !4
  %sub1446 = fsub double %463, %462
  store double %sub1446, double* %arrayidx1445, align 8, !tbaa !4
  %464 = load double* %arrayidx1222, align 16, !tbaa !4
  %add.ptr1399.sum4463 = add i64 %idxprom1438, %idx.ext1296
  %arrayidx1450 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4463
  %465 = load double* %arrayidx1450, align 8, !tbaa !4
  %sub1451 = fsub double %465, %464
  store double %sub1451, double* %arrayidx1450, align 8, !tbaa !4
  %466 = load double* %arrayidx1225, align 8, !tbaa !4
  %add.ptr1399.sum4464 = add i64 %idxprom1444, %idx.ext1296
  %arrayidx1456 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4464
  %467 = load double* %arrayidx1456, align 8, !tbaa !4
  %sub1457 = fsub double %467, %466
  store double %sub1457, double* %arrayidx1456, align 8, !tbaa !4
  %468 = load double* %arrayidx1230, align 16, !tbaa !4
  %add.ptr1402.sum4465 = add i64 %idxprom1438, %idx.ext1300
  %arrayidx1461 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4465
  %469 = load double* %arrayidx1461, align 8, !tbaa !4
  %sub1462 = fsub double %469, %468
  store double %sub1462, double* %arrayidx1461, align 8, !tbaa !4
  %470 = load double* %arrayidx1234, align 8, !tbaa !4
  %add.ptr1402.sum4466 = add i64 %idxprom1444, %idx.ext1300
  %arrayidx1467 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4466
  %471 = load double* %arrayidx1467, align 8, !tbaa !4
  %sub1468 = fsub double %471, %470
  store double %sub1468, double* %arrayidx1467, align 8, !tbaa !4
  %472 = load double* %arrayidx1211, align 16, !tbaa !4
  %sub1470 = sub nsw i32 0, %mul1289
  %idxprom1471 = sext i32 %sub1470 to i64
  %add.ptr1396.sum4467 = add i64 %idxprom1471, %idx.ext1292
  %arrayidx1472 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4467
  %473 = load double* %arrayidx1472, align 8, !tbaa !4
  %sub1473 = fsub double %473, %472
  store double %sub1473, double* %arrayidx1472, align 8, !tbaa !4
  %474 = load double* %arrayidx1216, align 8, !tbaa !4
  %add14764468 = or i32 %sub1470, 1
  %idxprom1477 = sext i32 %add14764468 to i64
  %add.ptr1396.sum4469 = add i64 %idxprom1477, %idx.ext1292
  %arrayidx1478 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4469
  %475 = load double* %arrayidx1478, align 8, !tbaa !4
  %sub1479 = fsub double %475, %474
  store double %sub1479, double* %arrayidx1478, align 8, !tbaa !4
  %476 = load double* %arrayidx1239, align 16, !tbaa !4
  %add.ptr1399.sum4470 = add i64 %idxprom1471, %idx.ext1296
  %arrayidx1483 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4470
  %477 = load double* %arrayidx1483, align 8, !tbaa !4
  %sub1484 = fsub double %477, %476
  store double %sub1484, double* %arrayidx1483, align 8, !tbaa !4
  %478 = load double* %arrayidx1244, align 8, !tbaa !4
  %add.ptr1399.sum4471 = add i64 %idxprom1477, %idx.ext1296
  %arrayidx1489 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4471
  %479 = load double* %arrayidx1489, align 8, !tbaa !4
  %sub1490 = fsub double %479, %478
  store double %sub1490, double* %arrayidx1489, align 8, !tbaa !4
  %480 = load double* %arrayidx1250, align 16, !tbaa !4
  %add.ptr1402.sum4472 = add i64 %idxprom1471, %idx.ext1300
  %arrayidx1494 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4472
  %481 = load double* %arrayidx1494, align 8, !tbaa !4
  %sub1495 = fsub double %481, %480
  store double %sub1495, double* %arrayidx1494, align 8, !tbaa !4
  %482 = load double* %arrayidx1253, align 8, !tbaa !4
  %add.ptr1402.sum4473 = add i64 %idxprom1477, %idx.ext1300
  %arrayidx1500 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4473
  %483 = load double* %arrayidx1500, align 8, !tbaa !4
  %sub1501 = fsub double %483, %482
  store double %sub1501, double* %arrayidx1500, align 8, !tbaa !4
  %484 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1514 = shl nsw i32 %484, 1
  %idx.ext1515 = sext i32 %mul1514 to i64
  %add.ptr1272.sum = add i64 %idx.ext1515, %add.ptr1269.sum
  %add.ptr1516 = getelementptr inbounds double* %rowL01097.04638, i64 %add.ptr1272.sum
  %add.ptr1519 = getelementptr inbounds double* %colU01089.04637, i64 %add.ptr1272.sum
  %add1521 = add nsw i32 %jcolU1109.04639, 3
  %485 = load i32* %ncolU, align 4, !tbaa !3
  %sub1264 = add nsw i32 %485, -2
  %cmp1265 = icmp slt i32 %add1521, %sub1264
  %indvars.iv.next4747 = add i64 %indvars.iv4746, 3
  br i1 %cmp1265, label %for.body1266, label %for.end1522

for.end1522:                                      ; preds = %for.body1266, %for.body1139
  %486 = phi i32 [ %401, %for.body1139 ], [ %484, %for.body1266 ]
  %sub1264.lcssa = phi i32 [ %sub12644635, %for.body1139 ], [ %sub1264, %for.body1266 ]
  %.lcssa4634 = phi i32 [ %402, %for.body1139 ], [ %485, %for.body1266 ]
  %jcolU1109.0.lcssa = phi i32 [ %403, %for.body1139 ], [ %add1521, %for.body1266 ]
  %rowL01097.0.lcssa = phi double* [ %add.ptr1258, %for.body1139 ], [ %add.ptr1516, %for.body1266 ]
  %colU01089.0.lcssa = phi double* [ %add.ptr1261, %for.body1139 ], [ %add.ptr1519, %for.body1266 ]
  %cmp1524 = icmp eq i32 %jcolU1109.0.lcssa, %sub1264.lcssa
  br i1 %cmp1524, label %if.then1525, label %if.else1703

if.then1525:                                      ; preds = %for.end1522
  %mul1526 = shl nsw i32 %486, 1
  %idx.ext1527 = sext i32 %mul1526 to i64
  %add.ptr1528 = getelementptr inbounds double* %rowL01097.0.lcssa, i64 %idx.ext1527
  %add.ptr1531 = getelementptr inbounds double* %colU01089.0.lcssa, i64 %idx.ext1527
  %idxprom1532 = sext i32 %sub1264.lcssa to i64
  %487 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1533 = getelementptr inbounds i32* %487, i64 %idxprom1532
  %488 = load i32* %arrayidx1533, align 4, !tbaa !3
  %mul1534 = shl nsw i32 %488, 1
  %add1535 = add nsw i32 %sub1264.lcssa, 1
  %idxprom1536 = sext i32 %add1535 to i64
  %arrayidx1537 = getelementptr inbounds i32* %487, i64 %idxprom1536
  %489 = load i32* %arrayidx1537, align 4, !tbaa !3
  %mul1538 = shl nsw i32 %489, 1
  call void @ZVdotU32(i32 %486, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %colU01089.0.lcssa, double* %add.ptr1531, double* %arraydecay1171) #5
  %mul1540 = shl nsw i32 %355, 1
  %idx.ext1541 = sext i32 %mul1540 to i64
  %mul1544 = shl nsw i32 %358, 1
  %idx.ext1545 = sext i32 %mul1544 to i64
  %mul1548 = shl nsw i32 %361, 1
  %idx.ext1549 = sext i32 %mul1548 to i64
  %490 = load double* %arraydecay1171, align 16, !tbaa !4
  %idxprom1553 = sext i32 %mul1534 to i64
  %add.ptr1543.sum = sub i64 %idxprom1553, %idx.ext1541
  %arrayidx1554 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum
  %491 = load double* %arrayidx1554, align 8, !tbaa !4
  %sub1555 = fsub double %491, %490
  store double %sub1555, double* %arrayidx1554, align 8, !tbaa !4
  %492 = load double* %arrayidx1175, align 8, !tbaa !4
  %add15574410 = or i32 %mul1534, 1
  %idxprom1558 = sext i32 %add15574410 to i64
  %add.ptr1543.sum4411 = sub i64 %idxprom1558, %idx.ext1541
  %arrayidx1559 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum4411
  %493 = load double* %arrayidx1559, align 8, !tbaa !4
  %sub1560 = fsub double %493, %492
  store double %sub1560, double* %arrayidx1559, align 8, !tbaa !4
  %494 = load double* %arrayidx1180, align 16, !tbaa !4
  %idxprom1562 = sext i32 %mul1538 to i64
  %add.ptr1543.sum4412 = sub i64 %idxprom1562, %idx.ext1541
  %arrayidx1563 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum4412
  %495 = load double* %arrayidx1563, align 8, !tbaa !4
  %sub1564 = fsub double %495, %494
  store double %sub1564, double* %arrayidx1563, align 8, !tbaa !4
  %496 = load double* %arrayidx1184, align 8, !tbaa !4
  %add15664413 = or i32 %mul1538, 1
  %idxprom1567 = sext i32 %add15664413 to i64
  %add.ptr1543.sum4414 = sub i64 %idxprom1567, %idx.ext1541
  %arrayidx1568 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum4414
  %497 = load double* %arrayidx1568, align 8, !tbaa !4
  %sub1569 = fsub double %497, %496
  store double %sub1569, double* %arrayidx1568, align 8, !tbaa !4
  %498 = load double* %arrayidx1202, align 16, !tbaa !4
  %add.ptr1547.sum = sub i64 %idxprom1553, %idx.ext1545
  %arrayidx1572 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum
  %499 = load double* %arrayidx1572, align 8, !tbaa !4
  %sub1573 = fsub double %499, %498
  store double %sub1573, double* %arrayidx1572, align 8, !tbaa !4
  %500 = load double* %arrayidx1206, align 8, !tbaa !4
  %add.ptr1547.sum4415 = sub i64 %idxprom1558, %idx.ext1545
  %arrayidx1577 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum4415
  %501 = load double* %arrayidx1577, align 8, !tbaa !4
  %sub1578 = fsub double %501, %500
  store double %sub1578, double* %arrayidx1577, align 8, !tbaa !4
  %502 = load double* %arrayidx1189, align 16, !tbaa !4
  %add.ptr1547.sum4416 = sub i64 %idxprom1562, %idx.ext1545
  %arrayidx1581 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum4416
  %503 = load double* %arrayidx1581, align 8, !tbaa !4
  %sub1582 = fsub double %503, %502
  store double %sub1582, double* %arrayidx1581, align 8, !tbaa !4
  %504 = load double* %arrayidx1194, align 8, !tbaa !4
  %add.ptr1547.sum4417 = sub i64 %idxprom1567, %idx.ext1545
  %arrayidx1586 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum4417
  %505 = load double* %arrayidx1586, align 8, !tbaa !4
  %sub1587 = fsub double %505, %504
  store double %sub1587, double* %arrayidx1586, align 8, !tbaa !4
  %506 = load double* %arrayidx1222, align 16, !tbaa !4
  %add.ptr1551.sum = sub i64 %idxprom1553, %idx.ext1549
  %arrayidx1590 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum
  %507 = load double* %arrayidx1590, align 8, !tbaa !4
  %sub1591 = fsub double %507, %506
  store double %sub1591, double* %arrayidx1590, align 8, !tbaa !4
  %508 = load double* %arrayidx1225, align 8, !tbaa !4
  %add.ptr1551.sum4418 = sub i64 %idxprom1558, %idx.ext1549
  %arrayidx1595 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum4418
  %509 = load double* %arrayidx1595, align 8, !tbaa !4
  %sub1596 = fsub double %509, %508
  store double %sub1596, double* %arrayidx1595, align 8, !tbaa !4
  %510 = load double* %arrayidx1230, align 16, !tbaa !4
  %add.ptr1551.sum4419 = sub i64 %idxprom1562, %idx.ext1549
  %arrayidx1599 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum4419
  %511 = load double* %arrayidx1599, align 8, !tbaa !4
  %sub1600 = fsub double %511, %510
  store double %sub1600, double* %arrayidx1599, align 8, !tbaa !4
  %512 = load double* %arrayidx1234, align 8, !tbaa !4
  %add.ptr1551.sum4420 = sub i64 %idxprom1567, %idx.ext1549
  %arrayidx1604 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum4420
  %513 = load double* %arrayidx1604, align 8, !tbaa !4
  %sub1605 = fsub double %513, %512
  store double %sub1605, double* %arrayidx1604, align 8, !tbaa !4
  %514 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU23(i32 %514, double* %rowL01097.0.lcssa, double* %add.ptr1528, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %arraydecay1171) #5
  %515 = load double* %arraydecay1171, align 16, !tbaa !4
  %sub1626 = sub nsw i32 0, %mul1534
  %idxprom1627 = sext i32 %sub1626 to i64
  %add.ptr1618.sum = add i64 %idxprom1627, %idx.ext1541
  %arrayidx1628 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum
  %516 = load double* %arrayidx1628, align 8, !tbaa !4
  %sub1629 = fsub double %516, %515
  store double %sub1629, double* %arrayidx1628, align 8, !tbaa !4
  %517 = load double* %arrayidx1175, align 8, !tbaa !4
  %add16324424 = or i32 %sub1626, 1
  %idxprom1633 = sext i32 %add16324424 to i64
  %add.ptr1618.sum4425 = add i64 %idxprom1633, %idx.ext1541
  %arrayidx1634 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum4425
  %518 = load double* %arrayidx1634, align 8, !tbaa !4
  %sub1635 = fsub double %518, %517
  store double %sub1635, double* %arrayidx1634, align 8, !tbaa !4
  %519 = load double* %arrayidx1180, align 16, !tbaa !4
  %add.ptr1621.sum = add i64 %idxprom1627, %idx.ext1545
  %arrayidx1639 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum
  %520 = load double* %arrayidx1639, align 8, !tbaa !4
  %sub1640 = fsub double %520, %519
  store double %sub1640, double* %arrayidx1639, align 8, !tbaa !4
  %521 = load double* %arrayidx1184, align 8, !tbaa !4
  %add.ptr1621.sum4426 = add i64 %idxprom1633, %idx.ext1545
  %arrayidx1645 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum4426
  %522 = load double* %arrayidx1645, align 8, !tbaa !4
  %sub1646 = fsub double %522, %521
  store double %sub1646, double* %arrayidx1645, align 8, !tbaa !4
  %523 = load double* %arrayidx1202, align 16, !tbaa !4
  %add.ptr1624.sum = add i64 %idxprom1627, %idx.ext1549
  %arrayidx1650 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum
  %524 = load double* %arrayidx1650, align 8, !tbaa !4
  %sub1651 = fsub double %524, %523
  store double %sub1651, double* %arrayidx1650, align 8, !tbaa !4
  %525 = load double* %arrayidx1206, align 8, !tbaa !4
  %add.ptr1624.sum4427 = add i64 %idxprom1633, %idx.ext1549
  %arrayidx1656 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum4427
  %526 = load double* %arrayidx1656, align 8, !tbaa !4
  %sub1657 = fsub double %526, %525
  store double %sub1657, double* %arrayidx1656, align 8, !tbaa !4
  %527 = load double* %arrayidx1189, align 16, !tbaa !4
  %sub1659 = sub nsw i32 0, %mul1538
  %idxprom1660 = sext i32 %sub1659 to i64
  %add.ptr1618.sum4428 = add i64 %idxprom1660, %idx.ext1541
  %arrayidx1661 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum4428
  %528 = load double* %arrayidx1661, align 8, !tbaa !4
  %sub1662 = fsub double %528, %527
  store double %sub1662, double* %arrayidx1661, align 8, !tbaa !4
  %529 = load double* %arrayidx1194, align 8, !tbaa !4
  %add16654429 = or i32 %sub1659, 1
  %idxprom1666 = sext i32 %add16654429 to i64
  %add.ptr1618.sum4430 = add i64 %idxprom1666, %idx.ext1541
  %arrayidx1667 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum4430
  %530 = load double* %arrayidx1667, align 8, !tbaa !4
  %sub1668 = fsub double %530, %529
  store double %sub1668, double* %arrayidx1667, align 8, !tbaa !4
  %531 = load double* %arrayidx1222, align 16, !tbaa !4
  %add.ptr1621.sum4431 = add i64 %idxprom1660, %idx.ext1545
  %arrayidx1672 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum4431
  %532 = load double* %arrayidx1672, align 8, !tbaa !4
  %sub1673 = fsub double %532, %531
  store double %sub1673, double* %arrayidx1672, align 8, !tbaa !4
  %533 = load double* %arrayidx1225, align 8, !tbaa !4
  %add.ptr1621.sum4432 = add i64 %idxprom1666, %idx.ext1545
  %arrayidx1678 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum4432
  %534 = load double* %arrayidx1678, align 8, !tbaa !4
  %sub1679 = fsub double %534, %533
  store double %sub1679, double* %arrayidx1678, align 8, !tbaa !4
  %535 = load double* %arrayidx1230, align 16, !tbaa !4
  %add.ptr1624.sum4433 = add i64 %idxprom1660, %idx.ext1549
  %arrayidx1683 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum4433
  %536 = load double* %arrayidx1683, align 8, !tbaa !4
  %sub1684 = fsub double %536, %535
  store double %sub1684, double* %arrayidx1683, align 8, !tbaa !4
  %537 = load double* %arrayidx1234, align 8, !tbaa !4
  %add.ptr1624.sum4434 = add i64 %idxprom1666, %idx.ext1549
  %arrayidx1689 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum4434
  %538 = load double* %arrayidx1689, align 8, !tbaa !4
  %sub1690 = fsub double %538, %537
  store double %sub1690, double* %arrayidx1689, align 8, !tbaa !4
  br label %if.end1815

if.else1703:                                      ; preds = %for.end1522
  %sub1704 = add nsw i32 %.lcssa4634, -1
  %cmp1705 = icmp eq i32 %jcolU1109.0.lcssa, %sub1704
  br i1 %cmp1705, label %if.then1706, label %if.end1815

if.then1706:                                      ; preds = %if.else1703
  %idxprom1707 = sext i32 %jcolU1109.0.lcssa to i64
  %539 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1708 = getelementptr inbounds i32* %539, i64 %idxprom1707
  %540 = load i32* %arrayidx1708, align 4, !tbaa !3
  %mul1709 = shl nsw i32 %540, 1
  call void @ZVdotU31(i32 %486, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %colU01089.0.lcssa, double* %arraydecay1171) #5
  %mul1711 = shl nsw i32 %355, 1
  %idx.ext1712 = sext i32 %mul1711 to i64
  %mul1715 = shl nsw i32 %358, 1
  %idx.ext1716 = sext i32 %mul1715 to i64
  %mul1719 = shl nsw i32 %361, 1
  %idx.ext1720 = sext i32 %mul1719 to i64
  %541 = load double* %arraydecay1171, align 16, !tbaa !4
  %idxprom1724 = sext i32 %mul1709 to i64
  %add.ptr1714.sum = sub i64 %idxprom1724, %idx.ext1712
  %arrayidx1725 = getelementptr inbounds double* %call1160, i64 %add.ptr1714.sum
  %542 = load double* %arrayidx1725, align 8, !tbaa !4
  %sub1726 = fsub double %542, %541
  store double %sub1726, double* %arrayidx1725, align 8, !tbaa !4
  %543 = load double* %arrayidx1175, align 8, !tbaa !4
  %add17284399 = or i32 %mul1709, 1
  %idxprom1729 = sext i32 %add17284399 to i64
  %add.ptr1714.sum4400 = sub i64 %idxprom1729, %idx.ext1712
  %arrayidx1730 = getelementptr inbounds double* %call1160, i64 %add.ptr1714.sum4400
  %544 = load double* %arrayidx1730, align 8, !tbaa !4
  %sub1731 = fsub double %544, %543
  store double %sub1731, double* %arrayidx1730, align 8, !tbaa !4
  %545 = load double* %arrayidx1180, align 16, !tbaa !4
  %add.ptr1718.sum = sub i64 %idxprom1724, %idx.ext1716
  %arrayidx1734 = getelementptr inbounds double* %call1164, i64 %add.ptr1718.sum
  %546 = load double* %arrayidx1734, align 8, !tbaa !4
  %sub1735 = fsub double %546, %545
  store double %sub1735, double* %arrayidx1734, align 8, !tbaa !4
  %547 = load double* %arrayidx1184, align 8, !tbaa !4
  %add.ptr1718.sum4401 = sub i64 %idxprom1729, %idx.ext1716
  %arrayidx1739 = getelementptr inbounds double* %call1164, i64 %add.ptr1718.sum4401
  %548 = load double* %arrayidx1739, align 8, !tbaa !4
  %sub1740 = fsub double %548, %547
  store double %sub1740, double* %arrayidx1739, align 8, !tbaa !4
  %549 = load double* %arrayidx1202, align 16, !tbaa !4
  %add.ptr1722.sum = sub i64 %idxprom1724, %idx.ext1720
  %arrayidx1743 = getelementptr inbounds double* %call1168, i64 %add.ptr1722.sum
  %550 = load double* %arrayidx1743, align 8, !tbaa !4
  %sub1744 = fsub double %550, %549
  store double %sub1744, double* %arrayidx1743, align 8, !tbaa !4
  %551 = load double* %arrayidx1206, align 8, !tbaa !4
  %add.ptr1722.sum4402 = sub i64 %idxprom1729, %idx.ext1720
  %arrayidx1748 = getelementptr inbounds double* %call1168, i64 %add.ptr1722.sum4402
  %552 = load double* %arrayidx1748, align 8, !tbaa !4
  %sub1749 = fsub double %552, %551
  store double %sub1749, double* %arrayidx1748, align 8, !tbaa !4
  %553 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU13(i32 %553, double* %rowL01097.0.lcssa, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %arraydecay1171) #5
  %554 = load double* %arraydecay1171, align 16, !tbaa !4
  %sub1770 = sub nsw i32 0, %mul1709
  %idxprom1771 = sext i32 %sub1770 to i64
  %add.ptr1762.sum = add i64 %idxprom1771, %idx.ext1712
  %arrayidx1772 = getelementptr inbounds double* %call1160, i64 %add.ptr1762.sum
  %555 = load double* %arrayidx1772, align 8, !tbaa !4
  %sub1773 = fsub double %555, %554
  store double %sub1773, double* %arrayidx1772, align 8, !tbaa !4
  %556 = load double* %arrayidx1175, align 8, !tbaa !4
  %add17764406 = or i32 %sub1770, 1
  %idxprom1777 = sext i32 %add17764406 to i64
  %add.ptr1762.sum4407 = add i64 %idxprom1777, %idx.ext1712
  %arrayidx1778 = getelementptr inbounds double* %call1160, i64 %add.ptr1762.sum4407
  %557 = load double* %arrayidx1778, align 8, !tbaa !4
  %sub1779 = fsub double %557, %556
  store double %sub1779, double* %arrayidx1778, align 8, !tbaa !4
  %558 = load double* %arrayidx1180, align 16, !tbaa !4
  %add.ptr1765.sum = add i64 %idxprom1771, %idx.ext1716
  %arrayidx1783 = getelementptr inbounds double* %call1164, i64 %add.ptr1765.sum
  %559 = load double* %arrayidx1783, align 8, !tbaa !4
  %sub1784 = fsub double %559, %558
  store double %sub1784, double* %arrayidx1783, align 8, !tbaa !4
  %560 = load double* %arrayidx1184, align 8, !tbaa !4
  %add.ptr1765.sum4408 = add i64 %idxprom1777, %idx.ext1716
  %arrayidx1789 = getelementptr inbounds double* %call1164, i64 %add.ptr1765.sum4408
  %561 = load double* %arrayidx1789, align 8, !tbaa !4
  %sub1790 = fsub double %561, %560
  store double %sub1790, double* %arrayidx1789, align 8, !tbaa !4
  %562 = load double* %arrayidx1202, align 16, !tbaa !4
  %add.ptr1768.sum = add i64 %idxprom1771, %idx.ext1720
  %arrayidx1794 = getelementptr inbounds double* %call1168, i64 %add.ptr1768.sum
  %563 = load double* %arrayidx1794, align 8, !tbaa !4
  %sub1795 = fsub double %563, %562
  store double %sub1795, double* %arrayidx1794, align 8, !tbaa !4
  %564 = load double* %arrayidx1206, align 8, !tbaa !4
  %add.ptr1768.sum4409 = add i64 %idxprom1777, %idx.ext1720
  %arrayidx1800 = getelementptr inbounds double* %call1168, i64 %add.ptr1768.sum4409
  %565 = load double* %arrayidx1800, align 8, !tbaa !4
  %sub1801 = fsub double %565, %564
  store double %sub1801, double* %arrayidx1800, align 8, !tbaa !4
  br label %if.end1815

if.end1815:                                       ; preds = %if.else1703, %if.then1706, %if.then1525
  %566 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1816 = mul nsw i32 %566, 3
  %add1817 = add nsw i32 %mul1816, %offset1117.04647
  %cmp1138 = icmp sgt i32 %403, %sub1137
  br i1 %cmp1138, label %for.end1820, label %for.body1139

for.end1820:                                      ; preds = %if.end1815, %if.then1084
  %567 = phi i32 [ %349, %if.then1084 ], [ %566, %if.end1815 ]
  %offset1117.0.lcssa = phi i32 [ %mul1135, %if.then1084 ], [ %add1817, %if.end1815 ]
  %irowL1108.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then1084 ], [ %add1262, %if.end1815 ]
  %sub1821 = add nsw i32 %lastInU.0.lcssa4789, -1
  %cmp1822 = icmp eq i32 %irowL1108.0.lcssa, %sub1821
  br i1 %cmp1822, label %if.then1823, label %if.else2278

if.then1823:                                      ; preds = %for.end1820
  %568 = load double** %entL1092, align 8, !tbaa !0
  %mul1824 = shl nsw i32 %offset1117.0.lcssa, 1
  %idx.ext1825 = sext i32 %mul1824 to i64
  %add.ptr1826 = getelementptr inbounds double* %568, i64 %idx.ext1825
  %mul1827 = shl nsw i32 %567, 1
  %idx.ext1828 = sext i32 %mul1827 to i64
  %add.ptr1826.sum = add i64 %idx.ext1828, %idx.ext1825
  %add.ptr1829 = getelementptr inbounds double* %568, i64 %add.ptr1826.sum
  %569 = load double** %entU1093, align 8, !tbaa !0
  %add.ptr1832 = getelementptr inbounds double* %569, i64 %idx.ext1825
  %add.ptr1835 = getelementptr inbounds double* %569, i64 %add.ptr1826.sum
  %idxprom1836 = sext i32 %sub1821 to i64
  %570 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1837 = getelementptr inbounds i32* %570, i64 %idxprom1836
  %571 = load i32* %arrayidx1837, align 4, !tbaa !3
  %call1838 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %571) #5
  %idxprom1840 = sext i32 %lastInU.0.lcssa4789 to i64
  %572 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1841 = getelementptr inbounds i32* %572, i64 %idxprom1840
  %573 = load i32* %arrayidx1841, align 4, !tbaa !3
  %call1842 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %573) #5
  %574 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1843 = shl nsw i32 %574, 2
  call void @DVzero(i32 %mul1843, double* %call1119) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call1119, double* %add.ptr1122, double* %add.ptr1826, double* %add.ptr1829) #5
  %575 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1844 = shl nsw i32 %575, 2
  call void @DVzero(i32 %mul1844, double* %add.ptr1128) #5
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1832, double* %add.ptr1835) #5
  %576 = load i32* %nrowU1116, align 4, !tbaa !3
  %arraydecay1845 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 0
  call void @ZVdotU22(i32 %576, double* %call1119, double* %add.ptr1122, double* %add.ptr1832, double* %add.ptr1835, double* %arraydecay1845) #5
  %577 = load double* %arraydecay1845, align 16, !tbaa !4
  %578 = load double* %call1838, align 8, !tbaa !4
  %sub1848 = fsub double %578, %577
  store double %sub1848, double* %call1838, align 8, !tbaa !4
  %arrayidx1849 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 1
  %579 = load double* %arrayidx1849, align 8, !tbaa !4
  %arrayidx1850 = getelementptr inbounds double* %call1838, i64 1
  %580 = load double* %arrayidx1850, align 8, !tbaa !4
  %sub1851 = fsub double %580, %579
  store double %sub1851, double* %arrayidx1850, align 8, !tbaa !4
  %sub1852 = sub nsw i32 %573, %571
  %mul1853 = shl nsw i32 %sub1852, 1
  %arrayidx1854 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2
  %581 = load double* %arrayidx1854, align 16, !tbaa !4
  %idxprom1855 = sext i32 %mul1853 to i64
  %arrayidx1856 = getelementptr inbounds double* %call1838, i64 %idxprom1855
  %582 = load double* %arrayidx1856, align 8, !tbaa !4
  %sub1857 = fsub double %582, %581
  store double %sub1857, double* %arrayidx1856, align 8, !tbaa !4
  %arrayidx1858 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3
  %583 = load double* %arrayidx1858, align 8, !tbaa !4
  %add18594335 = or i32 %mul1853, 1
  %idxprom1860 = sext i32 %add18594335 to i64
  %arrayidx1861 = getelementptr inbounds double* %call1838, i64 %idxprom1860
  %584 = load double* %arrayidx1861, align 8, !tbaa !4
  %sub1862 = fsub double %584, %583
  store double %sub1862, double* %arrayidx1861, align 8, !tbaa !4
  %arrayidx1863 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 4
  %585 = load double* %arrayidx1863, align 16, !tbaa !4
  %sub1864 = sub nsw i32 0, %mul1853
  %idxprom1865 = sext i32 %sub1864 to i64
  %arrayidx1866 = getelementptr inbounds double* %call1838, i64 %idxprom1865
  %586 = load double* %arrayidx1866, align 8, !tbaa !4
  %sub1867 = fsub double %586, %585
  store double %sub1867, double* %arrayidx1866, align 8, !tbaa !4
  %arrayidx1868 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 5
  %587 = load double* %arrayidx1868, align 8, !tbaa !4
  %add18704336 = or i32 %sub1864, 1
  %idxprom1871 = sext i32 %add18704336 to i64
  %arrayidx1872 = getelementptr inbounds double* %call1838, i64 %idxprom1871
  %588 = load double* %arrayidx1872, align 8, !tbaa !4
  %sub1873 = fsub double %588, %587
  store double %sub1873, double* %arrayidx1872, align 8, !tbaa !4
  %arrayidx1874 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 6
  %589 = load double* %arrayidx1874, align 16, !tbaa !4
  %590 = load double* %call1842, align 8, !tbaa !4
  %sub1876 = fsub double %590, %589
  store double %sub1876, double* %call1842, align 8, !tbaa !4
  %arrayidx1877 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 7
  %591 = load double* %arrayidx1877, align 8, !tbaa !4
  %arrayidx1878 = getelementptr inbounds double* %call1842, i64 1
  %592 = load double* %arrayidx1878, align 8, !tbaa !4
  %sub1879 = fsub double %592, %591
  store double %sub1879, double* %arrayidx1878, align 8, !tbaa !4
  %593 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul1880 = shl nsw i32 %593, 1
  %idx.ext1881 = sext i32 %mul1880 to i64
  %add.ptr1829.sum = add i64 %idx.ext1881, %add.ptr1826.sum
  %add.ptr1882 = getelementptr inbounds double* %568, i64 %add.ptr1829.sum
  %add.ptr1885 = getelementptr inbounds double* %569, i64 %add.ptr1829.sum
  %add1886 = add i32 %lastInU.0.lcssa4789, 1
  %594 = load i32* %ncolU, align 4, !tbaa !3
  %sub18884613 = add nsw i32 %594, -2
  %cmp18894614 = icmp slt i32 %add1886, %sub18884613
  br i1 %cmp18894614, label %for.body1890.lr.ph, label %for.end2072

for.body1890.lr.ph:                               ; preds = %if.then1823
  %mul1915 = shl nsw i32 %571, 1
  %idx.ext1916 = sext i32 %mul1915 to i64
  %mul1919 = shl nsw i32 %573, 1
  %idx.ext1920 = sext i32 %mul1919 to i64
  %arrayidx1959 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 8
  %arrayidx1963 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 9
  %arrayidx1968 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 10
  %arrayidx1972 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 11
  %595 = sext i32 %add1886 to i64
  br label %for.body1890

for.body1890:                                     ; preds = %for.body1890.lr.ph, %for.body1890
  %596 = phi i32 [ %593, %for.body1890.lr.ph ], [ %652, %for.body1890 ]
  %indvars.iv4730 = phi i64 [ %595, %for.body1890.lr.ph ], [ %indvars.iv.next4731, %for.body1890 ]
  %jcolU1109.14617 = phi i32 [ %add1886, %for.body1890.lr.ph ], [ %add2071, %for.body1890 ]
  %rowL01097.14616 = phi double* [ %add.ptr1882, %for.body1890.lr.ph ], [ %add.ptr2066, %for.body1890 ]
  %colU01089.14615 = phi double* [ %add.ptr1885, %for.body1890.lr.ph ], [ %add.ptr2069, %for.body1890 ]
  %mul1891 = shl nsw i32 %596, 1
  %idx.ext1892 = sext i32 %mul1891 to i64
  %add.ptr1893 = getelementptr inbounds double* %rowL01097.14616, i64 %idx.ext1892
  %add.ptr1893.sum = shl nsw i64 %idx.ext1892, 1
  %add.ptr1896 = getelementptr inbounds double* %rowL01097.14616, i64 %add.ptr1893.sum
  %add.ptr1899 = getelementptr inbounds double* %colU01089.14615, i64 %idx.ext1892
  %add.ptr1902 = getelementptr inbounds double* %colU01089.14615, i64 %add.ptr1893.sum
  %597 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx1904 = getelementptr inbounds i32* %597, i64 %indvars.iv4730
  %598 = load i32* %arrayidx1904, align 4, !tbaa !3
  %mul1905 = shl nsw i32 %598, 1
  %599 = add nsw i64 %indvars.iv4730, 1
  %arrayidx1908 = getelementptr inbounds i32* %597, i64 %599
  %600 = load i32* %arrayidx1908, align 4, !tbaa !3
  %mul1909 = shl nsw i32 %600, 1
  %601 = add nsw i64 %indvars.iv4730, 2
  %arrayidx1912 = getelementptr inbounds i32* %597, i64 %601
  %602 = load i32* %arrayidx1912, align 4, !tbaa !3
  %mul1913 = shl nsw i32 %602, 1
  call void @ZVdotU23(i32 %596, double* %call1119, double* %add.ptr1122, double* %colU01089.14615, double* %add.ptr1899, double* %add.ptr1902, double* %arraydecay1845) #5
  %603 = load double* %arraydecay1845, align 16, !tbaa !4
  %idxprom1924 = sext i32 %mul1905 to i64
  %add.ptr1918.sum = sub i64 %idxprom1924, %idx.ext1916
  %arrayidx1925 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum
  %604 = load double* %arrayidx1925, align 8, !tbaa !4
  %sub1926 = fsub double %604, %603
  store double %sub1926, double* %arrayidx1925, align 8, !tbaa !4
  %605 = load double* %arrayidx1849, align 8, !tbaa !4
  %add19284363 = or i32 %mul1905, 1
  %idxprom1929 = sext i32 %add19284363 to i64
  %add.ptr1918.sum4364 = sub i64 %idxprom1929, %idx.ext1916
  %arrayidx1930 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4364
  %606 = load double* %arrayidx1930, align 8, !tbaa !4
  %sub1931 = fsub double %606, %605
  store double %sub1931, double* %arrayidx1930, align 8, !tbaa !4
  %607 = load double* %arrayidx1854, align 16, !tbaa !4
  %idxprom1933 = sext i32 %mul1909 to i64
  %add.ptr1918.sum4365 = sub i64 %idxprom1933, %idx.ext1916
  %arrayidx1934 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4365
  %608 = load double* %arrayidx1934, align 8, !tbaa !4
  %sub1935 = fsub double %608, %607
  store double %sub1935, double* %arrayidx1934, align 8, !tbaa !4
  %609 = load double* %arrayidx1858, align 8, !tbaa !4
  %add19374366 = or i32 %mul1909, 1
  %idxprom1938 = sext i32 %add19374366 to i64
  %add.ptr1918.sum4367 = sub i64 %idxprom1938, %idx.ext1916
  %arrayidx1939 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4367
  %610 = load double* %arrayidx1939, align 8, !tbaa !4
  %sub1940 = fsub double %610, %609
  store double %sub1940, double* %arrayidx1939, align 8, !tbaa !4
  %611 = load double* %arrayidx1863, align 16, !tbaa !4
  %idxprom1942 = sext i32 %mul1913 to i64
  %add.ptr1918.sum4368 = sub i64 %idxprom1942, %idx.ext1916
  %arrayidx1943 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4368
  %612 = load double* %arrayidx1943, align 8, !tbaa !4
  %sub1944 = fsub double %612, %611
  store double %sub1944, double* %arrayidx1943, align 8, !tbaa !4
  %613 = load double* %arrayidx1868, align 8, !tbaa !4
  %add19464369 = or i32 %mul1913, 1
  %idxprom1947 = sext i32 %add19464369 to i64
  %add.ptr1918.sum4370 = sub i64 %idxprom1947, %idx.ext1916
  %arrayidx1948 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4370
  %614 = load double* %arrayidx1948, align 8, !tbaa !4
  %sub1949 = fsub double %614, %613
  store double %sub1949, double* %arrayidx1948, align 8, !tbaa !4
  %615 = load double* %arrayidx1874, align 16, !tbaa !4
  %add.ptr1922.sum = sub i64 %idxprom1924, %idx.ext1920
  %arrayidx1952 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum
  %616 = load double* %arrayidx1952, align 8, !tbaa !4
  %sub1953 = fsub double %616, %615
  store double %sub1953, double* %arrayidx1952, align 8, !tbaa !4
  %617 = load double* %arrayidx1877, align 8, !tbaa !4
  %add.ptr1922.sum4371 = sub i64 %idxprom1929, %idx.ext1920
  %arrayidx1957 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4371
  %618 = load double* %arrayidx1957, align 8, !tbaa !4
  %sub1958 = fsub double %618, %617
  store double %sub1958, double* %arrayidx1957, align 8, !tbaa !4
  %619 = load double* %arrayidx1959, align 16, !tbaa !4
  %add.ptr1922.sum4372 = sub i64 %idxprom1933, %idx.ext1920
  %arrayidx1961 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4372
  %620 = load double* %arrayidx1961, align 8, !tbaa !4
  %sub1962 = fsub double %620, %619
  store double %sub1962, double* %arrayidx1961, align 8, !tbaa !4
  %621 = load double* %arrayidx1963, align 8, !tbaa !4
  %add.ptr1922.sum4373 = sub i64 %idxprom1938, %idx.ext1920
  %arrayidx1966 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4373
  %622 = load double* %arrayidx1966, align 8, !tbaa !4
  %sub1967 = fsub double %622, %621
  store double %sub1967, double* %arrayidx1966, align 8, !tbaa !4
  %623 = load double* %arrayidx1968, align 16, !tbaa !4
  %add.ptr1922.sum4374 = sub i64 %idxprom1942, %idx.ext1920
  %arrayidx1970 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4374
  %624 = load double* %arrayidx1970, align 8, !tbaa !4
  %sub1971 = fsub double %624, %623
  store double %sub1971, double* %arrayidx1970, align 8, !tbaa !4
  %625 = load double* %arrayidx1972, align 8, !tbaa !4
  %add.ptr1922.sum4375 = sub i64 %idxprom1947, %idx.ext1920
  %arrayidx1975 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4375
  %626 = load double* %arrayidx1975, align 8, !tbaa !4
  %sub1976 = fsub double %626, %625
  store double %sub1976, double* %arrayidx1975, align 8, !tbaa !4
  %627 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU32(i32 %627, double* %rowL01097.14616, double* %add.ptr1893, double* %add.ptr1896, double* %add.ptr1128, double* %add.ptr1131, double* %arraydecay1845) #5
  %628 = load double* %arraydecay1845, align 16, !tbaa !4
  %sub1991 = sub nsw i32 0, %mul1905
  %idxprom1992 = sext i32 %sub1991 to i64
  %add.ptr1986.sum = add i64 %idxprom1992, %idx.ext1916
  %arrayidx1993 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum
  %629 = load double* %arrayidx1993, align 8, !tbaa !4
  %sub1994 = fsub double %629, %628
  store double %sub1994, double* %arrayidx1993, align 8, !tbaa !4
  %630 = load double* %arrayidx1849, align 8, !tbaa !4
  %add19974378 = or i32 %sub1991, 1
  %idxprom1998 = sext i32 %add19974378 to i64
  %add.ptr1986.sum4379 = add i64 %idxprom1998, %idx.ext1916
  %arrayidx1999 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4379
  %631 = load double* %arrayidx1999, align 8, !tbaa !4
  %sub2000 = fsub double %631, %630
  store double %sub2000, double* %arrayidx1999, align 8, !tbaa !4
  %632 = load double* %arrayidx1854, align 16, !tbaa !4
  %add.ptr1989.sum = add i64 %idxprom1992, %idx.ext1920
  %arrayidx2004 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum
  %633 = load double* %arrayidx2004, align 8, !tbaa !4
  %sub2005 = fsub double %633, %632
  store double %sub2005, double* %arrayidx2004, align 8, !tbaa !4
  %634 = load double* %arrayidx1858, align 8, !tbaa !4
  %add.ptr1989.sum4380 = add i64 %idxprom1998, %idx.ext1920
  %arrayidx2010 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4380
  %635 = load double* %arrayidx2010, align 8, !tbaa !4
  %sub2011 = fsub double %635, %634
  store double %sub2011, double* %arrayidx2010, align 8, !tbaa !4
  %636 = load double* %arrayidx1863, align 16, !tbaa !4
  %sub2013 = sub nsw i32 0, %mul1909
  %idxprom2014 = sext i32 %sub2013 to i64
  %add.ptr1986.sum4381 = add i64 %idxprom2014, %idx.ext1916
  %arrayidx2015 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4381
  %637 = load double* %arrayidx2015, align 8, !tbaa !4
  %sub2016 = fsub double %637, %636
  store double %sub2016, double* %arrayidx2015, align 8, !tbaa !4
  %638 = load double* %arrayidx1868, align 8, !tbaa !4
  %add20194382 = or i32 %sub2013, 1
  %idxprom2020 = sext i32 %add20194382 to i64
  %add.ptr1986.sum4383 = add i64 %idxprom2020, %idx.ext1916
  %arrayidx2021 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4383
  %639 = load double* %arrayidx2021, align 8, !tbaa !4
  %sub2022 = fsub double %639, %638
  store double %sub2022, double* %arrayidx2021, align 8, !tbaa !4
  %640 = load double* %arrayidx1874, align 16, !tbaa !4
  %add.ptr1989.sum4384 = add i64 %idxprom2014, %idx.ext1920
  %arrayidx2026 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4384
  %641 = load double* %arrayidx2026, align 8, !tbaa !4
  %sub2027 = fsub double %641, %640
  store double %sub2027, double* %arrayidx2026, align 8, !tbaa !4
  %642 = load double* %arrayidx1877, align 8, !tbaa !4
  %add.ptr1989.sum4385 = add i64 %idxprom2020, %idx.ext1920
  %arrayidx2032 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4385
  %643 = load double* %arrayidx2032, align 8, !tbaa !4
  %sub2033 = fsub double %643, %642
  store double %sub2033, double* %arrayidx2032, align 8, !tbaa !4
  %644 = load double* %arrayidx1959, align 16, !tbaa !4
  %sub2035 = sub nsw i32 0, %mul1913
  %idxprom2036 = sext i32 %sub2035 to i64
  %add.ptr1986.sum4386 = add i64 %idxprom2036, %idx.ext1916
  %arrayidx2037 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4386
  %645 = load double* %arrayidx2037, align 8, !tbaa !4
  %sub2038 = fsub double %645, %644
  store double %sub2038, double* %arrayidx2037, align 8, !tbaa !4
  %646 = load double* %arrayidx1963, align 8, !tbaa !4
  %add20414387 = or i32 %sub2035, 1
  %idxprom2042 = sext i32 %add20414387 to i64
  %add.ptr1986.sum4388 = add i64 %idxprom2042, %idx.ext1916
  %arrayidx2043 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4388
  %647 = load double* %arrayidx2043, align 8, !tbaa !4
  %sub2044 = fsub double %647, %646
  store double %sub2044, double* %arrayidx2043, align 8, !tbaa !4
  %648 = load double* %arrayidx1968, align 16, !tbaa !4
  %add.ptr1989.sum4389 = add i64 %idxprom2036, %idx.ext1920
  %arrayidx2048 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4389
  %649 = load double* %arrayidx2048, align 8, !tbaa !4
  %sub2049 = fsub double %649, %648
  store double %sub2049, double* %arrayidx2048, align 8, !tbaa !4
  %650 = load double* %arrayidx1972, align 8, !tbaa !4
  %add.ptr1989.sum4390 = add i64 %idxprom2042, %idx.ext1920
  %arrayidx2054 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4390
  %651 = load double* %arrayidx2054, align 8, !tbaa !4
  %sub2055 = fsub double %651, %650
  store double %sub2055, double* %arrayidx2054, align 8, !tbaa !4
  %652 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul2064 = shl nsw i32 %652, 1
  %idx.ext2065 = sext i32 %mul2064 to i64
  %add.ptr1896.sum = add i64 %idx.ext2065, %add.ptr1893.sum
  %add.ptr2066 = getelementptr inbounds double* %rowL01097.14616, i64 %add.ptr1896.sum
  %add.ptr2069 = getelementptr inbounds double* %colU01089.14615, i64 %add.ptr1896.sum
  %add2071 = add nsw i32 %jcolU1109.14617, 3
  %653 = load i32* %ncolU, align 4, !tbaa !3
  %sub1888 = add nsw i32 %653, -2
  %cmp1889 = icmp slt i32 %add2071, %sub1888
  %indvars.iv.next4731 = add i64 %indvars.iv4730, 3
  br i1 %cmp1889, label %for.body1890, label %for.end2072

for.end2072:                                      ; preds = %for.body1890, %if.then1823
  %654 = phi i32 [ %593, %if.then1823 ], [ %652, %for.body1890 ]
  %sub1888.lcssa = phi i32 [ %sub18884613, %if.then1823 ], [ %sub1888, %for.body1890 ]
  %.lcssa4612 = phi i32 [ %594, %if.then1823 ], [ %653, %for.body1890 ]
  %jcolU1109.1.lcssa = phi i32 [ %add1886, %if.then1823 ], [ %add2071, %for.body1890 ]
  %rowL01097.1.lcssa = phi double* [ %add.ptr1882, %if.then1823 ], [ %add.ptr2066, %for.body1890 ]
  %colU01089.1.lcssa = phi double* [ %add.ptr1885, %if.then1823 ], [ %add.ptr2069, %for.body1890 ]
  %cmp2074 = icmp eq i32 %jcolU1109.1.lcssa, %sub1888.lcssa
  br i1 %cmp2074, label %if.then2075, label %if.else2199

if.then2075:                                      ; preds = %for.end2072
  %mul2076 = shl nsw i32 %654, 1
  %idx.ext2077 = sext i32 %mul2076 to i64
  %add.ptr2078 = getelementptr inbounds double* %rowL01097.1.lcssa, i64 %idx.ext2077
  %add.ptr2081 = getelementptr inbounds double* %colU01089.1.lcssa, i64 %idx.ext2077
  %idxprom2082 = sext i32 %sub1888.lcssa to i64
  %655 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2083 = getelementptr inbounds i32* %655, i64 %idxprom2082
  %656 = load i32* %arrayidx2083, align 4, !tbaa !3
  %mul2084 = shl nsw i32 %656, 1
  %add2085 = add nsw i32 %sub1888.lcssa, 1
  %idxprom2086 = sext i32 %add2085 to i64
  %arrayidx2087 = getelementptr inbounds i32* %655, i64 %idxprom2086
  %657 = load i32* %arrayidx2087, align 4, !tbaa !3
  %mul2088 = shl nsw i32 %657, 1
  call void @ZVdotU22(i32 %654, double* %call1119, double* %add.ptr1122, double* %colU01089.1.lcssa, double* %add.ptr2081, double* %arraydecay1845) #5
  %mul2090 = shl nsw i32 %571, 1
  %idx.ext2091 = sext i32 %mul2090 to i64
  %mul2094 = shl nsw i32 %573, 1
  %idx.ext2095 = sext i32 %mul2094 to i64
  %658 = load double* %arraydecay1845, align 16, !tbaa !4
  %idxprom2099 = sext i32 %mul2084 to i64
  %add.ptr2093.sum = sub i64 %idxprom2099, %idx.ext2091
  %arrayidx2100 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum
  %659 = load double* %arrayidx2100, align 8, !tbaa !4
  %sub2101 = fsub double %659, %658
  store double %sub2101, double* %arrayidx2100, align 8, !tbaa !4
  %660 = load double* %arrayidx1849, align 8, !tbaa !4
  %add21034345 = or i32 %mul2084, 1
  %idxprom2104 = sext i32 %add21034345 to i64
  %add.ptr2093.sum4346 = sub i64 %idxprom2104, %idx.ext2091
  %arrayidx2105 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum4346
  %661 = load double* %arrayidx2105, align 8, !tbaa !4
  %sub2106 = fsub double %661, %660
  store double %sub2106, double* %arrayidx2105, align 8, !tbaa !4
  %662 = load double* %arrayidx1854, align 16, !tbaa !4
  %idxprom2108 = sext i32 %mul2088 to i64
  %add.ptr2093.sum4347 = sub i64 %idxprom2108, %idx.ext2091
  %arrayidx2109 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum4347
  %663 = load double* %arrayidx2109, align 8, !tbaa !4
  %sub2110 = fsub double %663, %662
  store double %sub2110, double* %arrayidx2109, align 8, !tbaa !4
  %664 = load double* %arrayidx1858, align 8, !tbaa !4
  %add21124348 = or i32 %mul2088, 1
  %idxprom2113 = sext i32 %add21124348 to i64
  %add.ptr2093.sum4349 = sub i64 %idxprom2113, %idx.ext2091
  %arrayidx2114 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum4349
  %665 = load double* %arrayidx2114, align 8, !tbaa !4
  %sub2115 = fsub double %665, %664
  store double %sub2115, double* %arrayidx2114, align 8, !tbaa !4
  %666 = load double* %arrayidx1863, align 16, !tbaa !4
  %add.ptr2097.sum = sub i64 %idxprom2099, %idx.ext2095
  %arrayidx2118 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum
  %667 = load double* %arrayidx2118, align 8, !tbaa !4
  %sub2119 = fsub double %667, %666
  store double %sub2119, double* %arrayidx2118, align 8, !tbaa !4
  %668 = load double* %arrayidx1868, align 8, !tbaa !4
  %add.ptr2097.sum4350 = sub i64 %idxprom2104, %idx.ext2095
  %arrayidx2123 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum4350
  %669 = load double* %arrayidx2123, align 8, !tbaa !4
  %sub2124 = fsub double %669, %668
  store double %sub2124, double* %arrayidx2123, align 8, !tbaa !4
  %670 = load double* %arrayidx1874, align 16, !tbaa !4
  %add.ptr2097.sum4351 = sub i64 %idxprom2108, %idx.ext2095
  %arrayidx2127 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum4351
  %671 = load double* %arrayidx2127, align 8, !tbaa !4
  %sub2128 = fsub double %671, %670
  store double %sub2128, double* %arrayidx2127, align 8, !tbaa !4
  %672 = load double* %arrayidx1877, align 8, !tbaa !4
  %add.ptr2097.sum4352 = sub i64 %idxprom2113, %idx.ext2095
  %arrayidx2132 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum4352
  %673 = load double* %arrayidx2132, align 8, !tbaa !4
  %sub2133 = fsub double %673, %672
  store double %sub2133, double* %arrayidx2132, align 8, !tbaa !4
  %674 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU22(i32 %674, double* %rowL01097.1.lcssa, double* %add.ptr2078, double* %add.ptr1128, double* %add.ptr1131, double* %arraydecay1845) #5
  %675 = load double* %arraydecay1845, align 16, !tbaa !4
  %sub2148 = sub nsw i32 0, %mul2084
  %idxprom2149 = sext i32 %sub2148 to i64
  %add.ptr2143.sum = add i64 %idxprom2149, %idx.ext2091
  %arrayidx2150 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum
  %676 = load double* %arrayidx2150, align 8, !tbaa !4
  %sub2151 = fsub double %676, %675
  store double %sub2151, double* %arrayidx2150, align 8, !tbaa !4
  %677 = load double* %arrayidx1849, align 8, !tbaa !4
  %add21544355 = or i32 %sub2148, 1
  %idxprom2155 = sext i32 %add21544355 to i64
  %add.ptr2143.sum4356 = add i64 %idxprom2155, %idx.ext2091
  %arrayidx2156 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum4356
  %678 = load double* %arrayidx2156, align 8, !tbaa !4
  %sub2157 = fsub double %678, %677
  store double %sub2157, double* %arrayidx2156, align 8, !tbaa !4
  %679 = load double* %arrayidx1854, align 16, !tbaa !4
  %add.ptr2146.sum = add i64 %idxprom2149, %idx.ext2095
  %arrayidx2161 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum
  %680 = load double* %arrayidx2161, align 8, !tbaa !4
  %sub2162 = fsub double %680, %679
  store double %sub2162, double* %arrayidx2161, align 8, !tbaa !4
  %681 = load double* %arrayidx1858, align 8, !tbaa !4
  %add.ptr2146.sum4357 = add i64 %idxprom2155, %idx.ext2095
  %arrayidx2167 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum4357
  %682 = load double* %arrayidx2167, align 8, !tbaa !4
  %sub2168 = fsub double %682, %681
  store double %sub2168, double* %arrayidx2167, align 8, !tbaa !4
  %683 = load double* %arrayidx1863, align 16, !tbaa !4
  %sub2170 = sub nsw i32 0, %mul2088
  %idxprom2171 = sext i32 %sub2170 to i64
  %add.ptr2143.sum4358 = add i64 %idxprom2171, %idx.ext2091
  %arrayidx2172 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum4358
  %684 = load double* %arrayidx2172, align 8, !tbaa !4
  %sub2173 = fsub double %684, %683
  store double %sub2173, double* %arrayidx2172, align 8, !tbaa !4
  %685 = load double* %arrayidx1868, align 8, !tbaa !4
  %add21764359 = or i32 %sub2170, 1
  %idxprom2177 = sext i32 %add21764359 to i64
  %add.ptr2143.sum4360 = add i64 %idxprom2177, %idx.ext2091
  %arrayidx2178 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum4360
  %686 = load double* %arrayidx2178, align 8, !tbaa !4
  %sub2179 = fsub double %686, %685
  store double %sub2179, double* %arrayidx2178, align 8, !tbaa !4
  %687 = load double* %arrayidx1874, align 16, !tbaa !4
  %add.ptr2146.sum4361 = add i64 %idxprom2171, %idx.ext2095
  %arrayidx2183 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum4361
  %688 = load double* %arrayidx2183, align 8, !tbaa !4
  %sub2184 = fsub double %688, %687
  store double %sub2184, double* %arrayidx2183, align 8, !tbaa !4
  %689 = load double* %arrayidx1877, align 8, !tbaa !4
  %add.ptr2146.sum4362 = add i64 %idxprom2177, %idx.ext2095
  %arrayidx2189 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum4362
  %690 = load double* %arrayidx2189, align 8, !tbaa !4
  %sub2190 = fsub double %690, %689
  store double %sub2190, double* %arrayidx2189, align 8, !tbaa !4
  br label %for.cond2785.preheader

if.else2199:                                      ; preds = %for.end2072
  %sub2200 = add nsw i32 %.lcssa4612, -1
  %cmp2201 = icmp eq i32 %jcolU1109.1.lcssa, %sub2200
  br i1 %cmp2201, label %if.then2202, label %for.cond2785.preheader

if.then2202:                                      ; preds = %if.else2199
  %idxprom2203 = sext i32 %jcolU1109.1.lcssa to i64
  %691 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2204 = getelementptr inbounds i32* %691, i64 %idxprom2203
  %692 = load i32* %arrayidx2204, align 4, !tbaa !3
  %mul2205 = shl nsw i32 %692, 1
  call void @ZVdotU21(i32 %654, double* %call1119, double* %add.ptr1122, double* %colU01089.1.lcssa, double* %arraydecay1845) #5
  %mul2207 = shl nsw i32 %571, 1
  %idx.ext2208 = sext i32 %mul2207 to i64
  %mul2211 = shl nsw i32 %573, 1
  %idx.ext2212 = sext i32 %mul2211 to i64
  %693 = load double* %arraydecay1845, align 16, !tbaa !4
  %idxprom2216 = sext i32 %mul2205 to i64
  %add.ptr2210.sum = sub i64 %idxprom2216, %idx.ext2208
  %arrayidx2217 = getelementptr inbounds double* %call1838, i64 %add.ptr2210.sum
  %694 = load double* %arrayidx2217, align 8, !tbaa !4
  %sub2218 = fsub double %694, %693
  store double %sub2218, double* %arrayidx2217, align 8, !tbaa !4
  %695 = load double* %arrayidx1849, align 8, !tbaa !4
  %add22204337 = or i32 %mul2205, 1
  %idxprom2221 = sext i32 %add22204337 to i64
  %add.ptr2210.sum4338 = sub i64 %idxprom2221, %idx.ext2208
  %arrayidx2222 = getelementptr inbounds double* %call1838, i64 %add.ptr2210.sum4338
  %696 = load double* %arrayidx2222, align 8, !tbaa !4
  %sub2223 = fsub double %696, %695
  store double %sub2223, double* %arrayidx2222, align 8, !tbaa !4
  %697 = load double* %arrayidx1854, align 16, !tbaa !4
  %add.ptr2214.sum = sub i64 %idxprom2216, %idx.ext2212
  %arrayidx2226 = getelementptr inbounds double* %call1842, i64 %add.ptr2214.sum
  %698 = load double* %arrayidx2226, align 8, !tbaa !4
  %sub2227 = fsub double %698, %697
  store double %sub2227, double* %arrayidx2226, align 8, !tbaa !4
  %699 = load double* %arrayidx1858, align 8, !tbaa !4
  %add.ptr2214.sum4339 = sub i64 %idxprom2221, %idx.ext2212
  %arrayidx2231 = getelementptr inbounds double* %call1842, i64 %add.ptr2214.sum4339
  %700 = load double* %arrayidx2231, align 8, !tbaa !4
  %sub2232 = fsub double %700, %699
  store double %sub2232, double* %arrayidx2231, align 8, !tbaa !4
  %701 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU12(i32 %701, double* %rowL01097.1.lcssa, double* %add.ptr1128, double* %add.ptr1131, double* %arraydecay1845) #5
  %702 = load double* %arraydecay1845, align 16, !tbaa !4
  %sub2247 = sub nsw i32 0, %mul2205
  %idxprom2248 = sext i32 %sub2247 to i64
  %add.ptr2242.sum = add i64 %idxprom2248, %idx.ext2208
  %arrayidx2249 = getelementptr inbounds double* %call1838, i64 %add.ptr2242.sum
  %703 = load double* %arrayidx2249, align 8, !tbaa !4
  %sub2250 = fsub double %703, %702
  store double %sub2250, double* %arrayidx2249, align 8, !tbaa !4
  %704 = load double* %arrayidx1849, align 8, !tbaa !4
  %add22534342 = or i32 %sub2247, 1
  %idxprom2254 = sext i32 %add22534342 to i64
  %add.ptr2242.sum4343 = add i64 %idxprom2254, %idx.ext2208
  %arrayidx2255 = getelementptr inbounds double* %call1838, i64 %add.ptr2242.sum4343
  %705 = load double* %arrayidx2255, align 8, !tbaa !4
  %sub2256 = fsub double %705, %704
  store double %sub2256, double* %arrayidx2255, align 8, !tbaa !4
  %706 = load double* %arrayidx1854, align 16, !tbaa !4
  %add.ptr2245.sum = add i64 %idxprom2248, %idx.ext2212
  %arrayidx2260 = getelementptr inbounds double* %call1842, i64 %add.ptr2245.sum
  %707 = load double* %arrayidx2260, align 8, !tbaa !4
  %sub2261 = fsub double %707, %706
  store double %sub2261, double* %arrayidx2260, align 8, !tbaa !4
  %708 = load double* %arrayidx1858, align 8, !tbaa !4
  %add.ptr2245.sum4344 = add i64 %idxprom2254, %idx.ext2212
  %arrayidx2266 = getelementptr inbounds double* %call1842, i64 %add.ptr2245.sum4344
  %709 = load double* %arrayidx2266, align 8, !tbaa !4
  %sub2267 = fsub double %709, %708
  store double %sub2267, double* %arrayidx2266, align 8, !tbaa !4
  br label %for.cond2785.preheader

if.else2278:                                      ; preds = %for.end1820
  %cmp2279 = icmp eq i32 %irowL1108.0.lcssa, %lastInU.0.lcssa4789
  br i1 %cmp2279, label %if.then2280, label %for.cond2785.preheader

if.then2280:                                      ; preds = %if.else2278
  %710 = load double** %entL1092, align 8, !tbaa !0
  %mul2281 = shl nsw i32 %offset1117.0.lcssa, 1
  %idx.ext2282 = sext i32 %mul2281 to i64
  %add.ptr2283 = getelementptr inbounds double* %710, i64 %idx.ext2282
  %711 = load double** %entU1093, align 8, !tbaa !0
  %add.ptr2286 = getelementptr inbounds double* %711, i64 %idx.ext2282
  %idxprom2287 = sext i32 %lastInU.0.lcssa4789 to i64
  %712 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2288 = getelementptr inbounds i32* %712, i64 %idxprom2287
  %713 = load i32* %arrayidx2288, align 4, !tbaa !3
  %call2289 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %713) #5
  %714 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul2290 = shl nsw i32 %714, 1
  call void @DVzero(i32 %mul2290, double* %call1119) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call1119, double* %add.ptr2283) #5
  %715 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul2291 = shl nsw i32 %715, 1
  call void @DVzero(i32 %mul2291, double* %add.ptr1128) #5
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr1128, double* %add.ptr2286) #5
  %716 = load i32* %nrowU1116, align 4, !tbaa !3
  %arraydecay2292 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 0
  call void @ZVdotU11(i32 %716, double* %call1119, double* %add.ptr2286, double* %arraydecay2292) #5
  %717 = load double* %arraydecay2292, align 16, !tbaa !4
  %718 = load double* %call2289, align 8, !tbaa !4
  %sub2295 = fsub double %718, %717
  store double %sub2295, double* %call2289, align 8, !tbaa !4
  %arrayidx2296 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 1
  %719 = load double* %arrayidx2296, align 8, !tbaa !4
  %arrayidx2297 = getelementptr inbounds double* %call2289, i64 1
  %720 = load double* %arrayidx2297, align 8, !tbaa !4
  %sub2298 = fsub double %720, %719
  store double %sub2298, double* %arrayidx2297, align 8, !tbaa !4
  %721 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul2299 = shl nsw i32 %721, 1
  %idx.ext2300 = sext i32 %mul2299 to i64
  %add.ptr2283.sum = add i64 %idx.ext2300, %idx.ext2282
  %add.ptr2301 = getelementptr inbounds double* %710, i64 %add.ptr2283.sum
  %add.ptr2304 = getelementptr inbounds double* %711, i64 %add.ptr2283.sum
  %add2305 = add i32 %lastInU.0.lcssa4789, 1
  %722 = load i32* %ncolU, align 4, !tbaa !3
  %sub23074624 = add nsw i32 %722, -2
  %cmp23084625 = icmp slt i32 %add2305, %sub23074624
  br i1 %cmp23084625, label %for.body2309.lr.ph, label %for.end2417

for.body2309.lr.ph:                               ; preds = %if.then2280
  %mul2334 = shl nsw i32 %713, 1
  %idx.ext2335 = sext i32 %mul2334 to i64
  %arrayidx2347 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2
  %arrayidx2351 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3
  %arrayidx2356 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 4
  %arrayidx2360 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 5
  %723 = sext i32 %add2305 to i64
  br label %for.body2309

for.body2309:                                     ; preds = %for.body2309.lr.ph, %for.body2309
  %724 = phi i32 [ %721, %for.body2309.lr.ph ], [ %756, %for.body2309 ]
  %indvars.iv4737 = phi i64 [ %723, %for.body2309.lr.ph ], [ %indvars.iv.next4738, %for.body2309 ]
  %jcolU1109.24628 = phi i32 [ %add2305, %for.body2309.lr.ph ], [ %add2416, %for.body2309 ]
  %rowL01097.24627 = phi double* [ %add.ptr2301, %for.body2309.lr.ph ], [ %add.ptr2411, %for.body2309 ]
  %colU01089.24626 = phi double* [ %add.ptr2304, %for.body2309.lr.ph ], [ %add.ptr2414, %for.body2309 ]
  %mul2310 = shl nsw i32 %724, 1
  %idx.ext2311 = sext i32 %mul2310 to i64
  %add.ptr2312 = getelementptr inbounds double* %rowL01097.24627, i64 %idx.ext2311
  %add.ptr2312.sum = shl nsw i64 %idx.ext2311, 1
  %add.ptr2315 = getelementptr inbounds double* %rowL01097.24627, i64 %add.ptr2312.sum
  %add.ptr2318 = getelementptr inbounds double* %colU01089.24626, i64 %idx.ext2311
  %add.ptr2321 = getelementptr inbounds double* %colU01089.24626, i64 %add.ptr2312.sum
  %725 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2323 = getelementptr inbounds i32* %725, i64 %indvars.iv4737
  %726 = load i32* %arrayidx2323, align 4, !tbaa !3
  %mul2324 = shl nsw i32 %726, 1
  %727 = add nsw i64 %indvars.iv4737, 1
  %arrayidx2327 = getelementptr inbounds i32* %725, i64 %727
  %728 = load i32* %arrayidx2327, align 4, !tbaa !3
  %mul2328 = shl nsw i32 %728, 1
  %729 = add nsw i64 %indvars.iv4737, 2
  %arrayidx2331 = getelementptr inbounds i32* %725, i64 %729
  %730 = load i32* %arrayidx2331, align 4, !tbaa !3
  %mul2332 = shl nsw i32 %730, 1
  call void @ZVdotU13(i32 %724, double* %call1119, double* %colU01089.24626, double* %add.ptr2318, double* %add.ptr2321, double* %arraydecay2292) #5
  %731 = load double* %arraydecay2292, align 16, !tbaa !4
  %idxprom2339 = sext i32 %mul2324 to i64
  %add.ptr2337.sum = sub i64 %idxprom2339, %idx.ext2335
  %arrayidx2340 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum
  %732 = load double* %arrayidx2340, align 8, !tbaa !4
  %sub2341 = fsub double %732, %731
  store double %sub2341, double* %arrayidx2340, align 8, !tbaa !4
  %733 = load double* %arrayidx2296, align 8, !tbaa !4
  %add23434317 = or i32 %mul2324, 1
  %idxprom2344 = sext i32 %add23434317 to i64
  %add.ptr2337.sum4318 = sub i64 %idxprom2344, %idx.ext2335
  %arrayidx2345 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4318
  %734 = load double* %arrayidx2345, align 8, !tbaa !4
  %sub2346 = fsub double %734, %733
  store double %sub2346, double* %arrayidx2345, align 8, !tbaa !4
  %735 = load double* %arrayidx2347, align 16, !tbaa !4
  %idxprom2348 = sext i32 %mul2328 to i64
  %add.ptr2337.sum4319 = sub i64 %idxprom2348, %idx.ext2335
  %arrayidx2349 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4319
  %736 = load double* %arrayidx2349, align 8, !tbaa !4
  %sub2350 = fsub double %736, %735
  store double %sub2350, double* %arrayidx2349, align 8, !tbaa !4
  %737 = load double* %arrayidx2351, align 8, !tbaa !4
  %add23524320 = or i32 %mul2328, 1
  %idxprom2353 = sext i32 %add23524320 to i64
  %add.ptr2337.sum4321 = sub i64 %idxprom2353, %idx.ext2335
  %arrayidx2354 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4321
  %738 = load double* %arrayidx2354, align 8, !tbaa !4
  %sub2355 = fsub double %738, %737
  store double %sub2355, double* %arrayidx2354, align 8, !tbaa !4
  %739 = load double* %arrayidx2356, align 16, !tbaa !4
  %idxprom2357 = sext i32 %mul2332 to i64
  %add.ptr2337.sum4322 = sub i64 %idxprom2357, %idx.ext2335
  %arrayidx2358 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4322
  %740 = load double* %arrayidx2358, align 8, !tbaa !4
  %sub2359 = fsub double %740, %739
  store double %sub2359, double* %arrayidx2358, align 8, !tbaa !4
  %741 = load double* %arrayidx2360, align 8, !tbaa !4
  %add23614323 = or i32 %mul2332, 1
  %idxprom2362 = sext i32 %add23614323 to i64
  %add.ptr2337.sum4324 = sub i64 %idxprom2362, %idx.ext2335
  %arrayidx2363 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4324
  %742 = load double* %arrayidx2363, align 8, !tbaa !4
  %sub2364 = fsub double %742, %741
  store double %sub2364, double* %arrayidx2363, align 8, !tbaa !4
  %743 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU31(i32 %743, double* %rowL01097.24627, double* %add.ptr2312, double* %add.ptr2315, double* %add.ptr1128, double* %arraydecay2292) #5
  %744 = load double* %arraydecay2292, align 16, !tbaa !4
  %sub2373 = sub nsw i32 0, %mul2324
  %idxprom2374 = sext i32 %sub2373 to i64
  %add.ptr2371.sum = add i64 %idxprom2374, %idx.ext2335
  %arrayidx2375 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum
  %745 = load double* %arrayidx2375, align 8, !tbaa !4
  %sub2376 = fsub double %745, %744
  store double %sub2376, double* %arrayidx2375, align 8, !tbaa !4
  %746 = load double* %arrayidx2296, align 8, !tbaa !4
  %add23794326 = or i32 %sub2373, 1
  %idxprom2380 = sext i32 %add23794326 to i64
  %add.ptr2371.sum4327 = add i64 %idxprom2380, %idx.ext2335
  %arrayidx2381 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4327
  %747 = load double* %arrayidx2381, align 8, !tbaa !4
  %sub2382 = fsub double %747, %746
  store double %sub2382, double* %arrayidx2381, align 8, !tbaa !4
  %748 = load double* %arrayidx2347, align 16, !tbaa !4
  %sub2384 = sub nsw i32 0, %mul2328
  %idxprom2385 = sext i32 %sub2384 to i64
  %add.ptr2371.sum4328 = add i64 %idxprom2385, %idx.ext2335
  %arrayidx2386 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4328
  %749 = load double* %arrayidx2386, align 8, !tbaa !4
  %sub2387 = fsub double %749, %748
  store double %sub2387, double* %arrayidx2386, align 8, !tbaa !4
  %750 = load double* %arrayidx2351, align 8, !tbaa !4
  %add23904329 = or i32 %sub2384, 1
  %idxprom2391 = sext i32 %add23904329 to i64
  %add.ptr2371.sum4330 = add i64 %idxprom2391, %idx.ext2335
  %arrayidx2392 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4330
  %751 = load double* %arrayidx2392, align 8, !tbaa !4
  %sub2393 = fsub double %751, %750
  store double %sub2393, double* %arrayidx2392, align 8, !tbaa !4
  %752 = load double* %arrayidx2356, align 16, !tbaa !4
  %sub2395 = sub nsw i32 0, %mul2332
  %idxprom2396 = sext i32 %sub2395 to i64
  %add.ptr2371.sum4331 = add i64 %idxprom2396, %idx.ext2335
  %arrayidx2397 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4331
  %753 = load double* %arrayidx2397, align 8, !tbaa !4
  %sub2398 = fsub double %753, %752
  store double %sub2398, double* %arrayidx2397, align 8, !tbaa !4
  %754 = load double* %arrayidx2360, align 8, !tbaa !4
  %add24014332 = or i32 %sub2395, 1
  %idxprom2402 = sext i32 %add24014332 to i64
  %add.ptr2371.sum4333 = add i64 %idxprom2402, %idx.ext2335
  %arrayidx2403 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4333
  %755 = load double* %arrayidx2403, align 8, !tbaa !4
  %sub2404 = fsub double %755, %754
  store double %sub2404, double* %arrayidx2403, align 8, !tbaa !4
  %756 = load i32* %nrowU1116, align 4, !tbaa !3
  %mul2409 = shl nsw i32 %756, 1
  %idx.ext2410 = sext i32 %mul2409 to i64
  %add.ptr2315.sum = add i64 %idx.ext2410, %add.ptr2312.sum
  %add.ptr2411 = getelementptr inbounds double* %rowL01097.24627, i64 %add.ptr2315.sum
  %add.ptr2414 = getelementptr inbounds double* %colU01089.24626, i64 %add.ptr2315.sum
  %add2416 = add nsw i32 %jcolU1109.24628, 3
  %757 = load i32* %ncolU, align 4, !tbaa !3
  %sub2307 = add nsw i32 %757, -2
  %cmp2308 = icmp slt i32 %add2416, %sub2307
  %indvars.iv.next4738 = add i64 %indvars.iv4737, 3
  br i1 %cmp2308, label %for.body2309, label %for.end2417

for.end2417:                                      ; preds = %for.body2309, %if.then2280
  %758 = phi i32 [ %721, %if.then2280 ], [ %756, %for.body2309 ]
  %sub2307.lcssa = phi i32 [ %sub23074624, %if.then2280 ], [ %sub2307, %for.body2309 ]
  %.lcssa4623 = phi i32 [ %722, %if.then2280 ], [ %757, %for.body2309 ]
  %jcolU1109.2.lcssa = phi i32 [ %add2305, %if.then2280 ], [ %add2416, %for.body2309 ]
  %rowL01097.2.lcssa = phi double* [ %add.ptr2301, %if.then2280 ], [ %add.ptr2411, %for.body2309 ]
  %colU01089.2.lcssa = phi double* [ %add.ptr2304, %if.then2280 ], [ %add.ptr2414, %for.body2309 ]
  %cmp2419 = icmp eq i32 %jcolU1109.2.lcssa, %sub2307.lcssa
  br i1 %cmp2419, label %if.then2420, label %if.else2490

if.then2420:                                      ; preds = %for.end2417
  %mul2421 = shl nsw i32 %758, 1
  %idx.ext2422 = sext i32 %mul2421 to i64
  %add.ptr2423 = getelementptr inbounds double* %rowL01097.2.lcssa, i64 %idx.ext2422
  %add.ptr2426 = getelementptr inbounds double* %colU01089.2.lcssa, i64 %idx.ext2422
  %idxprom2427 = sext i32 %sub2307.lcssa to i64
  %759 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2428 = getelementptr inbounds i32* %759, i64 %idxprom2427
  %760 = load i32* %arrayidx2428, align 4, !tbaa !3
  %mul2429 = shl nsw i32 %760, 1
  %add2430 = add nsw i32 %sub2307.lcssa, 1
  %idxprom2431 = sext i32 %add2430 to i64
  %arrayidx2432 = getelementptr inbounds i32* %759, i64 %idxprom2431
  %761 = load i32* %arrayidx2432, align 4, !tbaa !3
  %mul2433 = shl nsw i32 %761, 1
  call void @ZVdotU12(i32 %758, double* %call1119, double* %colU01089.2.lcssa, double* %add.ptr2426, double* %arraydecay2292) #5
  %mul2435 = shl nsw i32 %713, 1
  %idx.ext2436 = sext i32 %mul2435 to i64
  %762 = load double* %arraydecay2292, align 16, !tbaa !4
  %idxprom2440 = sext i32 %mul2429 to i64
  %add.ptr2438.sum = sub i64 %idxprom2440, %idx.ext2436
  %arrayidx2441 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum
  %763 = load double* %arrayidx2441, align 8, !tbaa !4
  %sub2442 = fsub double %763, %762
  store double %sub2442, double* %arrayidx2441, align 8, !tbaa !4
  %764 = load double* %arrayidx2296, align 8, !tbaa !4
  %add24444306 = or i32 %mul2429, 1
  %idxprom2445 = sext i32 %add24444306 to i64
  %add.ptr2438.sum4307 = sub i64 %idxprom2445, %idx.ext2436
  %arrayidx2446 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum4307
  %765 = load double* %arrayidx2446, align 8, !tbaa !4
  %sub2447 = fsub double %765, %764
  store double %sub2447, double* %arrayidx2446, align 8, !tbaa !4
  %arrayidx2448 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2
  %766 = load double* %arrayidx2448, align 16, !tbaa !4
  %idxprom2449 = sext i32 %mul2433 to i64
  %add.ptr2438.sum4308 = sub i64 %idxprom2449, %idx.ext2436
  %arrayidx2450 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum4308
  %767 = load double* %arrayidx2450, align 8, !tbaa !4
  %sub2451 = fsub double %767, %766
  store double %sub2451, double* %arrayidx2450, align 8, !tbaa !4
  %arrayidx2452 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3
  %768 = load double* %arrayidx2452, align 8, !tbaa !4
  %add24534309 = or i32 %mul2433, 1
  %idxprom2454 = sext i32 %add24534309 to i64
  %add.ptr2438.sum4310 = sub i64 %idxprom2454, %idx.ext2436
  %arrayidx2455 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum4310
  %769 = load double* %arrayidx2455, align 8, !tbaa !4
  %sub2456 = fsub double %769, %768
  store double %sub2456, double* %arrayidx2455, align 8, !tbaa !4
  %770 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU21(i32 %770, double* %rowL01097.2.lcssa, double* %add.ptr2423, double* %add.ptr1128, double* %arraydecay2292) #5
  %771 = load double* %arraydecay2292, align 16, !tbaa !4
  %sub2465 = sub nsw i32 0, %mul2429
  %idxprom2466 = sext i32 %sub2465 to i64
  %add.ptr2463.sum = add i64 %idxprom2466, %idx.ext2436
  %arrayidx2467 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum
  %772 = load double* %arrayidx2467, align 8, !tbaa !4
  %sub2468 = fsub double %772, %771
  store double %sub2468, double* %arrayidx2467, align 8, !tbaa !4
  %773 = load double* %arrayidx2296, align 8, !tbaa !4
  %add24714312 = or i32 %sub2465, 1
  %idxprom2472 = sext i32 %add24714312 to i64
  %add.ptr2463.sum4313 = add i64 %idxprom2472, %idx.ext2436
  %arrayidx2473 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum4313
  %774 = load double* %arrayidx2473, align 8, !tbaa !4
  %sub2474 = fsub double %774, %773
  store double %sub2474, double* %arrayidx2473, align 8, !tbaa !4
  %775 = load double* %arrayidx2448, align 16, !tbaa !4
  %sub2476 = sub nsw i32 0, %mul2433
  %idxprom2477 = sext i32 %sub2476 to i64
  %add.ptr2463.sum4314 = add i64 %idxprom2477, %idx.ext2436
  %arrayidx2478 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum4314
  %776 = load double* %arrayidx2478, align 8, !tbaa !4
  %sub2479 = fsub double %776, %775
  store double %sub2479, double* %arrayidx2478, align 8, !tbaa !4
  %777 = load double* %arrayidx2452, align 8, !tbaa !4
  %add24824315 = or i32 %sub2476, 1
  %idxprom2483 = sext i32 %add24824315 to i64
  %add.ptr2463.sum4316 = add i64 %idxprom2483, %idx.ext2436
  %arrayidx2484 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum4316
  %778 = load double* %arrayidx2484, align 8, !tbaa !4
  %sub2485 = fsub double %778, %777
  store double %sub2485, double* %arrayidx2484, align 8, !tbaa !4
  br label %for.cond2785.preheader

if.else2490:                                      ; preds = %for.end2417
  %sub2491 = add nsw i32 %.lcssa4623, -1
  %cmp2492 = icmp eq i32 %jcolU1109.2.lcssa, %sub2491
  br i1 %cmp2492, label %if.then2493, label %for.cond2785.preheader

if.then2493:                                      ; preds = %if.else2490
  %idxprom2494 = sext i32 %jcolU1109.2.lcssa to i64
  %779 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2495 = getelementptr inbounds i32* %779, i64 %idxprom2494
  %780 = load i32* %arrayidx2495, align 4, !tbaa !3
  %mul2496 = shl nsw i32 %780, 1
  call void @ZVdotU11(i32 %758, double* %call1119, double* %colU01089.2.lcssa, double* %arraydecay2292) #5
  %mul2498 = shl nsw i32 %713, 1
  %idx.ext2499 = sext i32 %mul2498 to i64
  %781 = load double* %arraydecay2292, align 16, !tbaa !4
  %idxprom2503 = sext i32 %mul2496 to i64
  %add.ptr2501.sum = sub i64 %idxprom2503, %idx.ext2499
  %arrayidx2504 = getelementptr inbounds double* %call2289, i64 %add.ptr2501.sum
  %782 = load double* %arrayidx2504, align 8, !tbaa !4
  %sub2505 = fsub double %782, %781
  store double %sub2505, double* %arrayidx2504, align 8, !tbaa !4
  %783 = load double* %arrayidx2296, align 8, !tbaa !4
  %add25074301 = or i32 %mul2496, 1
  %idxprom2508 = sext i32 %add25074301 to i64
  %add.ptr2501.sum4302 = sub i64 %idxprom2508, %idx.ext2499
  %arrayidx2509 = getelementptr inbounds double* %call2289, i64 %add.ptr2501.sum4302
  %784 = load double* %arrayidx2509, align 8, !tbaa !4
  %sub2510 = fsub double %784, %783
  store double %sub2510, double* %arrayidx2509, align 8, !tbaa !4
  %785 = load i32* %nrowU1116, align 4, !tbaa !3
  call void @ZVdotU11(i32 %785, double* %rowL01097.2.lcssa, double* %add.ptr1128, double* %arraydecay2292) #5
  %786 = load double* %arraydecay2292, align 16, !tbaa !4
  %sub2519 = sub nsw i32 0, %mul2496
  %idxprom2520 = sext i32 %sub2519 to i64
  %add.ptr2517.sum = add i64 %idxprom2520, %idx.ext2499
  %arrayidx2521 = getelementptr inbounds double* %call2289, i64 %add.ptr2517.sum
  %787 = load double* %arrayidx2521, align 8, !tbaa !4
  %sub2522 = fsub double %787, %786
  store double %sub2522, double* %arrayidx2521, align 8, !tbaa !4
  %788 = load double* %arrayidx2296, align 8, !tbaa !4
  %add25254304 = or i32 %sub2519, 1
  %idxprom2526 = sext i32 %add25254304 to i64
  %add.ptr2517.sum4305 = add i64 %idxprom2526, %idx.ext2499
  %arrayidx2527 = getelementptr inbounds double* %call2289, i64 %add.ptr2517.sum4305
  %789 = load double* %arrayidx2527, align 8, !tbaa !4
  %sub2528 = fsub double %789, %788
  store double %sub2528, double* %arrayidx2527, align 8, !tbaa !4
  br label %for.cond2785.preheader

land.lhs.true2540:                                ; preds = %if.then1078
  %mode2541 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1
  %790 = load i32* %mode2541, align 4, !tbaa !3
  %cmp2542 = icmp eq i32 %790, 2
  br i1 %cmp2542, label %if.then2543, label %if.else2779

if.then2543:                                      ; preds = %land.lhs.true2540
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU2561, i32* %nentU2563, i32** %sizesU2579, i32** %indU2575, double** %entU2548) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxL, i32* %nrowL2564, i32* %nentL2562, i32** %sizesL2578, i32** %indL2572, double** %entL2547) #5
  %nrow2580 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4
  %791 = load i32* %nrow2580, align 4, !tbaa !3
  %mul2582 = mul nsw i32 %791, 6
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul2582) #5
  %call2583 = call double* @DV_entries(%struct._DV* %tempDV) #5
  %mul2584 = shl nsw i32 %791, 1
  %idx.ext2585 = sext i32 %mul2584 to i64
  %add.ptr2586 = getelementptr inbounds double* %call2583, i64 %idx.ext2585
  %add.ptr2586.sum = shl nsw i64 %idx.ext2585, 1
  %add.ptr2589 = getelementptr inbounds double* %call2583, i64 %add.ptr2586.sum
  %cmp25914664 = icmp sgt i32 %jcolU.0.lcssa, 0
  br i1 %cmp25914664, label %for.body2592.lr.ph, label %for.cond2602.preheader

for.body2592.lr.ph:                               ; preds = %if.then2543
  %792 = load i32** %sizesL2578, align 8, !tbaa !0
  %793 = load i32** %sizesU2579, align 8, !tbaa !0
  br label %for.body2592

for.cond2602.preheader:                           ; preds = %for.body2592, %if.then2543
  %offsetU2567.0.lcssa = phi i32 [ 0, %if.then2543 ], [ %add2598, %for.body2592 ]
  %offsetL2566.0.lcssa = phi i32 [ 0, %if.then2543 ], [ %add2595, %for.body2592 ]
  %cmp26034659 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa4789
  br i1 %cmp26034659, label %for.cond2785.preheader, label %for.body2604.lr.ph

for.body2604.lr.ph:                               ; preds = %for.cond2602.preheader
  %mul2628 = shl nsw i32 %791, 2
  %794 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body2604

for.body2592:                                     ; preds = %for.body2592, %for.body2592.lr.ph
  %indvars.iv4773 = phi i64 [ 0, %for.body2592.lr.ph ], [ %indvars.iv.next4774, %for.body2592 ]
  %offsetU2567.04666 = phi i32 [ 0, %for.body2592.lr.ph ], [ %add2598, %for.body2592 ]
  %offsetL2566.04665 = phi i32 [ 0, %for.body2592.lr.ph ], [ %add2595, %for.body2592 ]
  %arrayidx2594 = getelementptr inbounds i32* %792, i64 %indvars.iv4773
  %795 = load i32* %arrayidx2594, align 4, !tbaa !3
  %add2595 = add nsw i32 %795, %offsetL2566.04665
  %arrayidx2597 = getelementptr inbounds i32* %793, i64 %indvars.iv4773
  %796 = load i32* %arrayidx2597, align 4, !tbaa !3
  %add2598 = add nsw i32 %796, %offsetU2567.04666
  %indvars.iv.next4774 = add i64 %indvars.iv4773, 1
  %lftr.wideiv4775 = trunc i64 %indvars.iv.next4774 to i32
  %exitcond4776 = icmp eq i32 %lftr.wideiv4775, %jcolU.0.lcssa
  br i1 %exitcond4776, label %for.cond2602.preheader, label %for.body2592

for.cond2785.preheader:                           ; preds = %for.cond2602.preheader, %if.end2773, %for.cond933.preheader, %if.end1065, %if.else2278, %if.else739, %if.else2199, %if.then2202, %if.then2075, %if.then2420, %if.then2493, %if.else2490, %for.end75, %if.else691, %if.then694, %if.then623, %if.then826, %if.then869, %if.else866
  %797 = load i32* %ncolU, align 4, !tbaa !3
  %cmp27864555 = icmp slt i32 %jcolU.0.lcssa, %797
  br i1 %cmp27864555, label %for.body2787.lr.ph, label %return

for.body2787.lr.ph:                               ; preds = %for.cond2785.preheader
  %798 = load i32** %colindU, align 8, !tbaa !0
  %799 = load i32** %colindT, align 8, !tbaa !0
  %800 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body2787

for.body2604:                                     ; preds = %if.end2773.for.body2604_crit_edge, %for.body2604.lr.ph
  %indvars.iv4771 = phi i64 [ %indvars.iv.next4772, %if.end2773.for.body2604_crit_edge ], [ %794, %for.body2604.lr.ph ]
  %offsetU2567.14663 = phi i32 [ %add2775, %if.end2773.for.body2604_crit_edge ], [ %offsetU2567.0.lcssa, %for.body2604.lr.ph ]
  %offsetL2566.14662 = phi i32 [ %add2774, %if.end2773.for.body2604_crit_edge ], [ %offsetL2566.0.lcssa, %for.body2604.lr.ph ]
  %irow02556.04660 = phi i32 [ %inc2777, %if.end2773.for.body2604_crit_edge ], [ %jcolU.0.lcssa, %for.body2604.lr.ph ]
  %801 = load double** %entL2547, align 8, !tbaa !0
  %mul2605 = shl nsw i32 %offsetL2566.14662, 1
  %idx.ext2606 = sext i32 %mul2605 to i64
  %802 = load i32** %indL2572, align 8, !tbaa !0
  %idx.ext2608 = sext i32 %offsetL2566.14662 to i64
  %803 = load double** %entU2548, align 8, !tbaa !0
  %mul2610 = shl nsw i32 %offsetU2567.14663, 1
  %idx.ext2611 = sext i32 %mul2610 to i64
  %add.ptr2612 = getelementptr inbounds double* %803, i64 %idx.ext2611
  %804 = load i32** %indU2575, align 8, !tbaa !0
  %idx.ext2613 = sext i32 %offsetU2567.14663 to i64
  %add.ptr2614 = getelementptr inbounds i32* %804, i64 %idx.ext2613
  %805 = load i32** %sizesL2578, align 8, !tbaa !0
  %arrayidx2616 = getelementptr inbounds i32* %805, i64 %indvars.iv4771
  %806 = load i32* %arrayidx2616, align 4, !tbaa !3
  %807 = load i32** %sizesU2579, align 8, !tbaa !0
  %arrayidx2618 = getelementptr inbounds i32* %807, i64 %indvars.iv4771
  %808 = load i32* %arrayidx2618, align 4, !tbaa !3
  %cmp2619 = icmp sgt i32 %806, 0
  %cmp2621 = icmp sgt i32 %808, 0
  %or.cond4546 = or i1 %cmp2619, %cmp2621
  br i1 %or.cond4546, label %if.then2622, label %if.end2773

if.then2622:                                      ; preds = %for.body2604
  %809 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2624 = getelementptr inbounds i32* %809, i64 %indvars.iv4771
  %810 = load i32* %arrayidx2624, align 4, !tbaa !3
  %call2625 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %810) #5
  br i1 %cmp2619, label %for.body2631.lr.ph, label %if.end2651

for.body2631.lr.ph:                               ; preds = %if.then2622
  call void @DVzero(i32 %mul2628, double* %call2583) #5
  br label %for.body2631

for.body2631:                                     ; preds = %for.body2631, %for.body2631.lr.ph
  %indvars.iv4755 = phi i64 [ 0, %for.body2631.lr.ph ], [ %indvars.iv.next4756, %for.body2631 ]
  %add.ptr2609.sum4294 = add i64 %indvars.iv4755, %idx.ext2608
  %arrayidx2633 = getelementptr inbounds i32* %802, i64 %add.ptr2609.sum4294
  %811 = load i32* %arrayidx2633, align 4, !tbaa !3
  %812 = trunc i64 %indvars.iv4755 to i32
  %mul2634 = shl nsw i32 %812, 1
  %idxprom2635 = sext i32 %mul2634 to i64
  %add.ptr2607.sum4295 = add i64 %idxprom2635, %idx.ext2606
  %arrayidx2636 = getelementptr inbounds double* %801, i64 %add.ptr2607.sum4295
  %813 = load double* %arrayidx2636, align 8, !tbaa !4
  %mul2637 = shl nsw i32 %811, 1
  %idxprom2638 = sext i32 %mul2637 to i64
  %add.ptr2586.sum4296 = add i64 %idxprom2638, %idx.ext2585
  %arrayidx2639 = getelementptr inbounds double* %call2583, i64 %add.ptr2586.sum4296
  store double %813, double* %arrayidx2639, align 8, !tbaa !4
  %add26414297 = or i32 %mul2634, 1
  %idxprom2642 = sext i32 %add26414297 to i64
  %add.ptr2607.sum4298 = add i64 %idxprom2642, %idx.ext2606
  %arrayidx2643 = getelementptr inbounds double* %801, i64 %add.ptr2607.sum4298
  %814 = load double* %arrayidx2643, align 8, !tbaa !4
  %add26454299 = or i32 %mul2637, 1
  %idxprom2646 = sext i32 %add26454299 to i64
  %add.ptr2586.sum4300 = add i64 %idxprom2646, %idx.ext2585
  %arrayidx2647 = getelementptr inbounds double* %call2583, i64 %add.ptr2586.sum4300
  store double %814, double* %arrayidx2647, align 8, !tbaa !4
  %indvars.iv.next4756 = add i64 %indvars.iv4755, 1
  %lftr.wideiv4757 = trunc i64 %indvars.iv.next4756 to i32
  %exitcond4758 = icmp eq i32 %lftr.wideiv4757, %806
  br i1 %exitcond4758, label %for.end2650, label %for.body2631

for.end2650:                                      ; preds = %for.body2631
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call2583, double* %add.ptr2586) #5
  br label %if.end2651

if.end2651:                                       ; preds = %for.end2650, %if.then2622
  br i1 %cmp2621, label %for.body2657.lr.ph, label %if.end2730

for.body2657.lr.ph:                               ; preds = %if.end2651
  call void @DVzero(i32 %mul2628, double* %add.ptr2586) #5
  br label %for.body2657

for.body2657:                                     ; preds = %for.body2657, %for.body2657.lr.ph
  %indvars.iv4759 = phi i64 [ 0, %for.body2657.lr.ph ], [ %indvars.iv.next4760, %for.body2657 ]
  %add.ptr2614.sum4288 = add i64 %indvars.iv4759, %idx.ext2613
  %arrayidx2659 = getelementptr inbounds i32* %804, i64 %add.ptr2614.sum4288
  %815 = load i32* %arrayidx2659, align 4, !tbaa !3
  %816 = trunc i64 %indvars.iv4759 to i32
  %mul2660 = shl nsw i32 %816, 1
  %idxprom2661 = sext i32 %mul2660 to i64
  %add.ptr2612.sum4289 = add i64 %idxprom2661, %idx.ext2611
  %arrayidx2662 = getelementptr inbounds double* %803, i64 %add.ptr2612.sum4289
  %817 = load double* %arrayidx2662, align 8, !tbaa !4
  %mul2663 = shl nsw i32 %815, 1
  %idxprom2664 = sext i32 %mul2663 to i64
  %add.ptr2589.sum = add i64 %idxprom2664, %add.ptr2586.sum
  %arrayidx2665 = getelementptr inbounds double* %call2583, i64 %add.ptr2589.sum
  store double %817, double* %arrayidx2665, align 8, !tbaa !4
  %add26674290 = or i32 %mul2660, 1
  %idxprom2668 = sext i32 %add26674290 to i64
  %add.ptr2612.sum4291 = add i64 %idxprom2668, %idx.ext2611
  %arrayidx2669 = getelementptr inbounds double* %803, i64 %add.ptr2612.sum4291
  %818 = load double* %arrayidx2669, align 8, !tbaa !4
  %add26714292 = or i32 %mul2663, 1
  %idxprom2672 = sext i32 %add26714292 to i64
  %add.ptr2589.sum4293 = add i64 %idxprom2672, %add.ptr2586.sum
  %arrayidx2673 = getelementptr inbounds double* %call2583, i64 %add.ptr2589.sum4293
  store double %818, double* %arrayidx2673, align 8, !tbaa !4
  %indvars.iv.next4760 = add i64 %indvars.iv4759, 1
  %lftr.wideiv4761 = trunc i64 %indvars.iv.next4760 to i32
  %exitcond4762 = icmp eq i32 %lftr.wideiv4761, %808
  br i1 %exitcond4762, label %if.end2677, label %for.body2657

if.end2677:                                       ; preds = %for.body2657
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr2586, double* %add.ptr2589) #5
  br i1 %cmp2619, label %if.then2681, label %if.then2688

if.then2681:                                      ; preds = %if.end2677
  call void @ZVdotiU(i32 %808, double* %call2583, i32* %add.ptr2614, double* %add.ptr2612, double* %real, double* %imag) #5
  %819 = load double* %real, align 8, !tbaa !4
  %820 = load double* %call2625, align 8, !tbaa !4
  %sub2683 = fsub double %820, %819
  store double %sub2683, double* %call2625, align 8, !tbaa !4
  %821 = load double* %imag, align 8, !tbaa !4
  %arrayidx2684 = getelementptr inbounds double* %call2625, i64 1
  %822 = load double* %arrayidx2684, align 8, !tbaa !4
  %sub2685 = fsub double %822, %821
  store double %sub2685, double* %arrayidx2684, align 8, !tbaa !4
  br label %if.then2688

if.then2688:                                      ; preds = %if.then2681, %if.end2677
  %mul2689 = shl nsw i32 %810, 1
  %idx.ext2690 = sext i32 %mul2689 to i64
  %mul2692 = shl nsw i32 %806, 1
  %idx.ext2693 = sext i32 %mul2692 to i64
  %add.ptr2607.sum = add i64 %idx.ext2693, %idx.ext2606
  %add.ptr2694 = getelementptr inbounds double* %801, i64 %add.ptr2607.sum
  %idx.ext2695 = sext i32 %806 to i64
  %add.ptr2609.sum = add i64 %idx.ext2695, %idx.ext2608
  %add.ptr2696 = getelementptr inbounds i32* %802, i64 %add.ptr2609.sum
  br label %for.cond2698.outer

for.cond2698.outer:                               ; preds = %if.then2704, %if.then2688
  %rowL12550.0.ph = phi double* [ %add.ptr2694, %if.then2688 ], [ %add.ptr2719, %if.then2704 ]
  %irow12557.0.in.ph = phi i32 [ %irow02556.04660, %if.then2688 ], [ %irow12557.0, %if.then2704 ]
  %indL12574.0.ph = phi i32* [ %add.ptr2696, %if.then2688 ], [ %add.ptr2721, %if.then2704 ]
  %823 = load i32* %ncolU2561, align 4, !tbaa !3
  %824 = load i32** %sizesL2578, align 8, !tbaa !0
  %825 = sext i32 %irow12557.0.in.ph to i64
  br label %for.cond2698

for.cond2698:                                     ; preds = %for.cond2698.outer, %for.body2700
  %indvars.iv4765 = phi i64 [ %825, %for.cond2698.outer ], [ %indvars.iv.next4766, %for.body2700 ]
  %irow12557.0.in = phi i32 [ %irow12557.0.in.ph, %for.cond2698.outer ], [ %irow12557.0, %for.body2700 ]
  %indvars.iv.next4766 = add i64 %indvars.iv4765, 1
  %irow12557.0 = add nsw i32 %irow12557.0.in, 1
  %826 = trunc i64 %indvars.iv.next4766 to i32
  %cmp2699 = icmp slt i32 %826, %823
  br i1 %cmp2699, label %for.body2700, label %if.end2730

for.body2700:                                     ; preds = %for.cond2698
  %arrayidx2702 = getelementptr inbounds i32* %824, i64 %indvars.iv.next4766
  %827 = load i32* %arrayidx2702, align 4, !tbaa !3
  %cmp2703 = icmp sgt i32 %827, 0
  br i1 %cmp2703, label %if.then2704, label %for.cond2698

if.then2704:                                      ; preds = %for.body2700
  %828 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2706 = getelementptr inbounds i32* %828, i64 %indvars.iv.next4766
  %829 = load i32* %arrayidx2706, align 4, !tbaa !3
  %mul2707 = shl nsw i32 %829, 1
  call void @ZVdotiU(i32 %827, double* %add.ptr2586, i32* %indL12574.0.ph, double* %rowL12550.0.ph, double* %real, double* %imag) #5
  %830 = load double* %real, align 8, !tbaa !4
  %sub2708 = sub nsw i32 0, %mul2707
  %idxprom2709 = sext i32 %sub2708 to i64
  %add.ptr2691.sum = add i64 %idxprom2709, %idx.ext2690
  %arrayidx2710 = getelementptr inbounds double* %call2625, i64 %add.ptr2691.sum
  %831 = load double* %arrayidx2710, align 8, !tbaa !4
  %sub2711 = fsub double %831, %830
  store double %sub2711, double* %arrayidx2710, align 8, !tbaa !4
  %832 = load double* %imag, align 8, !tbaa !4
  %add27134286 = or i32 %sub2708, 1
  %idxprom2714 = sext i32 %add27134286 to i64
  %add.ptr2691.sum4287 = add i64 %idxprom2714, %idx.ext2690
  %arrayidx2715 = getelementptr inbounds double* %call2625, i64 %add.ptr2691.sum4287
  %833 = load double* %arrayidx2715, align 8, !tbaa !4
  %sub2716 = fsub double %833, %832
  store double %sub2716, double* %arrayidx2715, align 8, !tbaa !4
  %mul2717 = shl nsw i32 %827, 1
  %idx.ext2718 = sext i32 %mul2717 to i64
  %add.ptr2719 = getelementptr inbounds double* %rowL12550.0.ph, i64 %idx.ext2718
  %idx.ext2720 = sext i32 %827 to i64
  %add.ptr2721 = getelementptr inbounds i32* %indL12574.0.ph, i64 %idx.ext2720
  br label %for.cond2698.outer

if.end2730:                                       ; preds = %for.cond2698, %if.end2651
  br i1 %cmp2619, label %if.then2732, label %if.end2773

if.then2732:                                      ; preds = %if.end2730
  %mul2733 = shl nsw i32 %810, 1
  %idx.ext2734 = sext i32 %mul2733 to i64
  %mul2737 = shl nsw i32 %808, 1
  %idx.ext2738 = sext i32 %mul2737 to i64
  %add.ptr2612.sum = add i64 %idx.ext2738, %idx.ext2611
  %add.ptr2739 = getelementptr inbounds double* %803, i64 %add.ptr2612.sum
  %idx.ext2740 = sext i32 %808 to i64
  %add.ptr2614.sum = add i64 %idx.ext2740, %idx.ext2613
  %add.ptr2741 = getelementptr inbounds i32* %804, i64 %add.ptr2614.sum
  br label %for.cond2743.outer

for.cond2743.outer:                               ; preds = %if.then2749, %if.then2732
  %colU12546.0.ph = phi double* [ %add.ptr2739, %if.then2732 ], [ %add.ptr2762, %if.then2749 ]
  %irow12557.1.in.ph = phi i32 [ %irow02556.04660, %if.then2732 ], [ %irow12557.1, %if.then2749 ]
  %indU12577.0.ph = phi i32* [ %add.ptr2741, %if.then2732 ], [ %add.ptr2764, %if.then2749 ]
  %834 = load i32* %ncolU2561, align 4, !tbaa !3
  %835 = load i32** %sizesU2579, align 8, !tbaa !0
  %836 = sext i32 %irow12557.1.in.ph to i64
  br label %for.cond2743

for.cond2743:                                     ; preds = %for.cond2743.outer, %for.body2745
  %indvars.iv4769 = phi i64 [ %836, %for.cond2743.outer ], [ %indvars.iv.next4770, %for.body2745 ]
  %irow12557.1.in = phi i32 [ %irow12557.1.in.ph, %for.cond2743.outer ], [ %irow12557.1, %for.body2745 ]
  %indvars.iv.next4770 = add i64 %indvars.iv4769, 1
  %irow12557.1 = add nsw i32 %irow12557.1.in, 1
  %837 = trunc i64 %indvars.iv.next4770 to i32
  %cmp2744 = icmp slt i32 %837, %834
  br i1 %cmp2744, label %for.body2745, label %if.end2773

for.body2745:                                     ; preds = %for.cond2743
  %arrayidx2747 = getelementptr inbounds i32* %835, i64 %indvars.iv.next4770
  %838 = load i32* %arrayidx2747, align 4, !tbaa !3
  %cmp2748 = icmp sgt i32 %838, 0
  br i1 %cmp2748, label %if.then2749, label %for.cond2743

if.then2749:                                      ; preds = %for.body2745
  %839 = load i32** %colindU, align 8, !tbaa !0
  %arrayidx2751 = getelementptr inbounds i32* %839, i64 %indvars.iv.next4770
  %840 = load i32* %arrayidx2751, align 4, !tbaa !3
  %mul2752 = shl nsw i32 %840, 1
  call void @ZVdotiU(i32 %838, double* %call2583, i32* %indU12577.0.ph, double* %colU12546.0.ph, double* %real, double* %imag) #5
  %841 = load double* %real, align 8, !tbaa !4
  %idxprom2753 = sext i32 %mul2752 to i64
  %add.ptr2736.sum = sub i64 %idxprom2753, %idx.ext2734
  %arrayidx2754 = getelementptr inbounds double* %call2625, i64 %add.ptr2736.sum
  %842 = load double* %arrayidx2754, align 8, !tbaa !4
  %sub2755 = fsub double %842, %841
  store double %sub2755, double* %arrayidx2754, align 8, !tbaa !4
  %843 = load double* %imag, align 8, !tbaa !4
  %add27564284 = or i32 %mul2752, 1
  %idxprom2757 = sext i32 %add27564284 to i64
  %add.ptr2736.sum4285 = sub i64 %idxprom2757, %idx.ext2734
  %arrayidx2758 = getelementptr inbounds double* %call2625, i64 %add.ptr2736.sum4285
  %844 = load double* %arrayidx2758, align 8, !tbaa !4
  %sub2759 = fsub double %844, %843
  store double %sub2759, double* %arrayidx2758, align 8, !tbaa !4
  %mul2760 = shl nsw i32 %838, 1
  %idx.ext2761 = sext i32 %mul2760 to i64
  %add.ptr2762 = getelementptr inbounds double* %colU12546.0.ph, i64 %idx.ext2761
  %idx.ext2763 = sext i32 %838 to i64
  %add.ptr2764 = getelementptr inbounds i32* %indU12577.0.ph, i64 %idx.ext2763
  br label %for.cond2743.outer

if.end2773:                                       ; preds = %for.cond2743, %for.body2604, %if.end2730
  %845 = trunc i64 %indvars.iv4771 to i32
  %cmp2603 = icmp slt i32 %845, %lastInU.0.lcssa4789
  br i1 %cmp2603, label %if.end2773.for.body2604_crit_edge, label %for.cond2785.preheader

if.end2773.for.body2604_crit_edge:                ; preds = %if.end2773
  %inc2777 = add nsw i32 %irow02556.04660, 1
  %indvars.iv.next4772 = add i64 %indvars.iv4771, 1
  %add2775 = add nsw i32 %808, %offsetU2567.14663
  %add2774 = add nsw i32 %806, %offsetL2566.14662
  br label %for.body2604

if.else2779:                                      ; preds = %if.then1078, %land.lhs.true1081, %land.lhs.true2540
  %846 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call2780 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %846, i8* getelementptr inbounds ([135 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #5
  call void @exit(i32 -1) #6
  unreachable

for.body2787:                                     ; preds = %for.body2787.lr.ph, %for.body2787
  %indvars.iv = phi i64 [ %800, %for.body2787.lr.ph ], [ %indvars.iv.next, %for.body2787 ]
  %arrayidx2789 = getelementptr inbounds i32* %798, i64 %indvars.iv
  %847 = load i32* %arrayidx2789, align 4, !tbaa !3
  %idxprom2790 = sext i32 %847 to i64
  %arrayidx2791 = getelementptr inbounds i32* %799, i64 %idxprom2790
  %848 = load i32* %arrayidx2791, align 4, !tbaa !3
  store i32 %848, i32* %arrayidx2789, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %849 = load i32* %ncolU, align 4, !tbaa !3
  %850 = trunc i64 %indvars.iv.next to i32
  %cmp2786 = icmp slt i32 %850, %849
  br i1 %cmp2786, label %for.body2787, label %return

return:                                           ; preds = %for.cond2785.preheader, %for.body2787, %for.end
  ret void
}

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

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
