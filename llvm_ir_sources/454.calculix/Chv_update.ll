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
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvT}, i64 0, metadata !57), !dbg !410
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxD}, i64 0, metadata !58), !dbg !411
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxU}, i64 0, metadata !59), !dbg !412
  call void @llvm.dbg.value(metadata !{%struct._DV* %tempDV}, i64 0, metadata !60), !dbg !413
  call void @llvm.dbg.declare(metadata !{i32* %ncolT}, metadata !67), !dbg !414
  call void @llvm.dbg.declare(metadata !{i32* %ncolU}, metadata !68), !dbg !414
  call void @llvm.dbg.declare(metadata !{i32** %colindT}, metadata !69), !dbg !415
  call void @llvm.dbg.declare(metadata !{i32** %colindU}, metadata !70), !dbg !415
  %cmp = icmp eq %struct._Chv* %chvT, null, !dbg !416
  %cmp1 = icmp eq %struct._SubMtx* %mtxD, null, !dbg !416
  %or.cond = or i1 %cmp, %cmp1, !dbg !416
  %cmp3 = icmp eq %struct._SubMtx* %mtxU, null, !dbg !416
  %or.cond1464 = or i1 %or.cond, %cmp3, !dbg !416
  %cmp5 = icmp eq %struct._DV* %tempDV, null, !dbg !416
  %or.cond1465 = or i1 %or.cond1464, %cmp5, !dbg !416
  br i1 %or.cond1465, label %if.then, label %if.end, !dbg !416

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !417, !tbaa !419
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !417
  call void @exit(i32 -1) #7, !dbg !422
  unreachable, !dbg !422

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 4, !dbg !423
  %1 = load i32* %type, align 4, !dbg !423, !tbaa !424
  %cmp6 = icmp eq i32 %1, 2, !dbg !423
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !423

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !425, !tbaa !419
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !425
  call void @exit(i32 -1) #7, !dbg !427
  unreachable, !dbg !427

if.end9:                                          ; preds = %if.end
  %type10 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0, !dbg !428
  %3 = load i32* %type10, align 4, !dbg !428, !tbaa !424
  %cmp11 = icmp eq i32 %3, 2, !dbg !428
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !428

if.then12:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !429, !tbaa !419
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !429
  call void @exit(i32 -1) #7, !dbg !431
  unreachable, !dbg !431

if.end14:                                         ; preds = %if.end9
  %type15 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0, !dbg !432
  %5 = load i32* %type15, align 4, !dbg !432, !tbaa !424
  %cmp16 = icmp eq i32 %5, 2, !dbg !432
  br i1 %cmp16, label %if.end19, label %if.then17, !dbg !432

if.then17:                                        ; preds = %if.end14
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !433, !tbaa !419
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !433
  call void @exit(i32 -1) #7, !dbg !435
  unreachable, !dbg !435

if.end19:                                         ; preds = %if.end14
  call void @Chv_columnIndices(%struct._Chv* %chvT, i32* %ncolT, i32** %colindT) #6, !dbg !436
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxU, i32* %ncolU, i32** %colindU) #6, !dbg !437
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !69), !dbg !438
  %7 = load i32** %colindT, align 8, !dbg !438, !tbaa !419
  %8 = load i32* %7, align 4, !dbg !438, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !61), !dbg !438
  %nD = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 1, !dbg !439
  %9 = load i32* %nD, align 4, !dbg !439, !tbaa !424
  %sub = add nsw i32 %9, -1, !dbg !439
  %idxprom = sext i32 %sub to i64, !dbg !439
  %arrayidx20 = getelementptr inbounds i32* %7, i64 %idxprom, !dbg !439
  %10 = load i32* %arrayidx20, align 4, !dbg !439, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !65), !dbg !439
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !440
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !440
  %11 = load i32* %ncolU, align 4, !dbg !440, !tbaa !424
  %cmp211536 = icmp sgt i32 %11, 0, !dbg !440
  br i1 %cmp211536, label %for.body.lr.ph, label %for.end, !dbg !440

for.body.lr.ph:                                   ; preds = %if.end19
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !442
  %12 = load i32** %colindU, align 8, !dbg !442, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !440
  br label %for.body, !dbg !440

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !440
  %13 = trunc i64 %indvars.iv.next1599 to i32, !dbg !440
  %cmp21 = icmp slt i32 %13, %11, !dbg !440
  br i1 %cmp21, label %for.body, label %for.end, !dbg !440

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv1598 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1599, %for.cond ]
  %jcolU.01537 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !442
  %arrayidx23 = getelementptr inbounds i32* %12, i64 %indvars.iv1598, !dbg !442
  %14 = load i32* %arrayidx23, align 4, !dbg !442, !tbaa !424
  %cmp24 = icmp sgt i32 %8, %14, !dbg !442
  %cmp27 = icmp sgt i32 %14, %10, !dbg !442
  %or.cond1466 = or i1 %cmp24, %cmp27, !dbg !442
  %indvars.iv.next1599 = add i64 %indvars.iv1598, 1, !dbg !440
  %inc = add nsw i32 %jcolU.01537, 1, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !64), !dbg !440
  br i1 %or.cond1466, label %for.cond, label %for.end, !dbg !442

for.end:                                          ; preds = %for.cond, %for.body, %if.end19
  %jcolU.0.lcssa = phi i32 [ 0, %if.end19 ], [ %jcolU.01537, %for.body ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !62), !dbg !444
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !444
  %cmp30 = icmp eq i32 %jcolU.0.lcssa, %11, !dbg !444
  br i1 %cmp30, label %return, label %for.cond33.preheader, !dbg !444

for.cond33.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !445
  %cmp341531 = icmp slt i32 %jcolU.0.lcssa, %11, !dbg !445
  br i1 %cmp341531, label %for.body35.lr.ph, label %for.end57, !dbg !445

for.body35.lr.ph:                                 ; preds = %for.cond33.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !447
  %15 = load i32** %colindU, align 8, !dbg !447, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !445
  %16 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body35, !dbg !445

for.cond33:                                       ; preds = %for.body35
  %inc42 = add nsw i32 %jcolU.11533, 1, !dbg !445
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !445
  %17 = trunc i64 %indvars.iv.next1595 to i32, !dbg !445
  %cmp34 = icmp slt i32 %17, %11, !dbg !445
  %18 = trunc i64 %indvars.iv1594 to i32, !dbg !445
  br i1 %cmp34, label %for.body35, label %for.cond44.preheader, !dbg !445

for.cond44.preheader:                             ; preds = %for.cond33, %for.body35
  %lastInU.0.lcssa = phi i32 [ %lastInU.01532, %for.body35 ], [ %jcolU.11533, %for.cond33 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !449
  br i1 %cmp341531, label %while.cond.preheader.lr.ph, label %for.end57, !dbg !449

while.cond.preheader.lr.ph:                       ; preds = %for.cond44.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !451
  %19 = load i32** %colindU, align 8, !dbg !451, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !69), !dbg !451
  %20 = sext i32 %jcolU.0.lcssa to i64
  br label %while.cond.preheader, !dbg !449

for.body35:                                       ; preds = %for.body35.lr.ph, %for.cond33
  %indvars.iv1594 = phi i64 [ %16, %for.body35.lr.ph ], [ %indvars.iv.next1595, %for.cond33 ]
  %jcolU.11533 = phi i32 [ %jcolU.0.lcssa, %for.body35.lr.ph ], [ %inc42, %for.cond33 ]
  %lastInU.01532 = phi i32 [ %jcolU.0.lcssa, %for.body35.lr.ph ], [ %18, %for.cond33 ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !447
  %arrayidx37 = getelementptr inbounds i32* %15, i64 %indvars.iv1594, !dbg !447
  %21 = load i32* %arrayidx37, align 4, !dbg !447, !tbaa !424
  %cmp38 = icmp sgt i32 %21, %10, !dbg !447
  call void @llvm.dbg.value(metadata !{i32 %jcolU.11533}, i64 0, metadata !66), !dbg !453
  %indvars.iv.next1595 = add i64 %indvars.iv1594, 1, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %inc42}, i64 0, metadata !64), !dbg !445
  br i1 %cmp38, label %for.cond44.preheader, label %for.cond33, !dbg !447

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv1590 = phi i64 [ %20, %while.cond.preheader.lr.ph ], [ %indvars.iv.next1591, %while.end ]
  %jcolT.01530 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jcolT.1, %while.end ]
  %arrayidx48 = getelementptr inbounds i32* %19, i64 %indvars.iv1590, !dbg !451
  %22 = load i32* %arrayidx48, align 4, !dbg !451, !tbaa !424
  %23 = sext i32 %jcolT.01530 to i64
  br label %while.cond, !dbg !451

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %indvars.iv1588 = phi i64 [ %indvars.iv.next1589, %while.cond ], [ %23, %while.cond.preheader ]
  %jcolT.1 = phi i32 [ %inc52, %while.cond ], [ %jcolT.01530, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !451
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !69), !dbg !451
  %arrayidx50 = getelementptr inbounds i32* %7, i64 %indvars.iv1588, !dbg !451
  %24 = load i32* %arrayidx50, align 4, !dbg !451, !tbaa !424
  %cmp51 = icmp eq i32 %22, %24, !dbg !451
  %indvars.iv.next1589 = add i64 %indvars.iv1588, 1, !dbg !451
  %inc52 = add nsw i32 %jcolT.1, 1, !dbg !455
  call void @llvm.dbg.value(metadata !{i32 %inc52}, i64 0, metadata !63), !dbg !455
  br i1 %cmp51, label %while.end, label %while.cond, !dbg !451

while.end:                                        ; preds = %while.cond
  store i32 %jcolT.1, i32* %arrayidx48, align 4, !dbg !457, !tbaa !424
  %indvars.iv.next1591 = add i64 %indvars.iv1590, 1, !dbg !449
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !449
  %25 = load i32* %ncolU, align 4, !dbg !449, !tbaa !424
  %26 = trunc i64 %indvars.iv.next1591 to i32, !dbg !449
  %cmp45 = icmp slt i32 %26, %25, !dbg !449
  br i1 %cmp45, label %while.cond.preheader, label %for.end57, !dbg !449

for.end57:                                        ; preds = %for.cond33.preheader, %while.end, %for.cond44.preheader
  %lastInU.0.lcssa1601 = phi i32 [ %lastInU.0.lcssa, %for.cond44.preheader ], [ %lastInU.0.lcssa, %while.end ], [ %jcolU.0.lcssa, %for.cond33.preheader ]
  %mode = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1, !dbg !458
  %27 = load i32* %mode, align 4, !dbg !458, !tbaa !424
  switch i32 %27, label %if.else887 [
    i32 1, label %if.then59
    i32 3, label %if.then768
  ], !dbg !458

if.then59:                                        ; preds = %for.end57
  call void @llvm.dbg.declare(metadata !{double* %isum}, metadata !71), !dbg !459
  call void @llvm.dbg.declare(metadata !{double* %rsum}, metadata !73), !dbg !459
  %28 = bitcast [18 x double]* %sums to i8*, !dbg !460
  call void @llvm.lifetime.start(i64 144, i8* %28) #5, !dbg !460
  call void @llvm.dbg.declare(metadata !{[18 x double]* %sums}, metadata !74), !dbg !460
  call void @llvm.dbg.declare(metadata !{double** %entU}, metadata !84), !dbg !461
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !95), !dbg !462
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !96), !dbg !462
  call void @llvm.dbg.declare(metadata !{i32* %nrowU}, metadata !101), !dbg !463
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU, i32* %ncolU, i32* %inc1, i32* %inc2, double** %entU) #6, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !465
  %29 = load i32* %nrowU, align 4, !dbg !465, !tbaa !424
  %mul = mul nsw i32 %29, 6, !dbg !465
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul) #6, !dbg !465
  %call60 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !466
  call void @llvm.dbg.value(metadata !{double* %call60}, i64 0, metadata !88), !dbg !466
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !467
  %30 = load i32* %nrowU, align 4, !dbg !467, !tbaa !424
  %mul61 = shl nsw i32 %30, 1, !dbg !467
  %idx.ext = sext i32 %mul61 to i64, !dbg !467
  %add.ptr = getelementptr inbounds double* %call60, i64 %idx.ext, !dbg !467
  call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !89), !dbg !467
  %add.ptr.sum = shl nsw i64 %idx.ext, 1, !dbg !468
  %add.ptr64 = getelementptr inbounds double* %call60, i64 %add.ptr.sum, !dbg !468
  call void @llvm.dbg.value(metadata !{double* %add.ptr64}, i64 0, metadata !90), !dbg !468
  call void @llvm.dbg.value(metadata !{double** %entU}, i64 0, metadata !84), !dbg !469
  %31 = load double** %entU, align 8, !dbg !469, !tbaa !419
  %mul65 = shl i32 %jcolU.0.lcssa, 1, !dbg !469
  %mul66 = mul nsw i32 %mul65, %30, !dbg !469
  %idx.ext67 = sext i32 %mul66 to i64, !dbg !469
  %add.ptr68 = getelementptr inbounds double* %31, i64 %idx.ext67, !dbg !469
  call void @llvm.dbg.value(metadata !{double* %add.ptr68}, i64 0, metadata !85), !dbg !469
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !97), !dbg !470
  %sub70 = add nsw i32 %lastInU.0.lcssa1601, -2, !dbg !470
  %cmp711506 = icmp sgt i32 %jcolU.0.lcssa, %sub70, !dbg !470
  br i1 %cmp711506, label %for.end395, label %for.body72.lr.ph, !dbg !470

for.body72.lr.ph:                                 ; preds = %if.then59
  %arraydecay291 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !472
  %arrayidx303 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !475
  %arrayidx308 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2, !dbg !476
  %arrayidx312 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3, !dbg !476
  %arrayidx317 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4, !dbg !477
  %arrayidx321 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5, !dbg !477
  %arrayidx326 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 6, !dbg !478
  %arrayidx330 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 7, !dbg !478
  %arrayidx335 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 8, !dbg !479
  %arrayidx339 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 9, !dbg !479
  %arrayidx344 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 10, !dbg !480
  %arrayidx348 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 11, !dbg !480
  %arrayidx252 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 12, !dbg !481
  %arrayidx256 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 13, !dbg !481
  %arrayidx261 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 14, !dbg !484
  %arrayidx265 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 15, !dbg !484
  %arrayidx270 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 16, !dbg !485
  %arrayidx274 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 17, !dbg !485
  %32 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body72, !dbg !470

for.body72:                                       ; preds = %if.end389, %for.body72.lr.ph
  %33 = phi i32 [ %30, %for.body72.lr.ph ], [ %162, %if.end389 ]
  %indvars.iv1568 = phi i64 [ %32, %for.body72.lr.ph ], [ %indvars.iv.next1569, %if.end389 ]
  %indvars.iv1561.in = phi i64 [ %32, %for.body72.lr.ph ], [ %indvars.iv1561, %if.end389 ]
  %rowUT0.01508 = phi double* [ %add.ptr68, %for.body72.lr.ph ], [ %add.ptr392, %if.end389 ]
  %irowUT.01507 = phi i32 [ %jcolU.0.lcssa, %for.body72.lr.ph ], [ %add176, %if.end389 ]
  %indvars.iv1561 = add i64 %indvars.iv1561.in, 3, !dbg !470
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !486
  %mul73 = shl nsw i32 %33, 1, !dbg !486
  %idx.ext74 = sext i32 %mul73 to i64, !dbg !486
  %add.ptr75 = getelementptr inbounds double* %rowUT0.01508, i64 %idx.ext74, !dbg !486
  call void @llvm.dbg.value(metadata !{double* %add.ptr75}, i64 0, metadata !86), !dbg !486
  %add.ptr75.sum = shl nsw i64 %idx.ext74, 1, !dbg !487
  %add.ptr78 = getelementptr inbounds double* %rowUT0.01508, i64 %add.ptr75.sum, !dbg !487
  call void @llvm.dbg.value(metadata !{double* %add.ptr78}, i64 0, metadata !87), !dbg !487
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !488
  %34 = load i32** %colindU, align 8, !dbg !488, !tbaa !419
  %arrayidx80 = getelementptr inbounds i32* %34, i64 %indvars.iv1568, !dbg !488
  %35 = load i32* %arrayidx80, align 4, !dbg !488, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !91), !dbg !488
  %call81 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %35) #6, !dbg !489
  %mul82 = shl nsw i32 %35, 1, !dbg !489
  %idx.ext83 = sext i32 %mul82 to i64, !dbg !489
  %36 = add nsw i64 %indvars.iv1568, 1, !dbg !490
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !490
  %37 = load i32** %colindU, align 8, !dbg !490, !tbaa !419
  %arrayidx86 = getelementptr inbounds i32* %37, i64 %36, !dbg !490
  %38 = load i32* %arrayidx86, align 4, !dbg !490, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !92), !dbg !490
  %call87 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %38) #6, !dbg !491
  %mul88 = shl nsw i32 %38, 1, !dbg !491
  %idx.ext89 = sext i32 %mul88 to i64, !dbg !491
  %39 = add nsw i64 %indvars.iv1568, 2, !dbg !492
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !492
  %40 = load i32** %colindU, align 8, !dbg !492, !tbaa !419
  %arrayidx94 = getelementptr inbounds i32* %40, i64 %39, !dbg !492
  %41 = load i32* %arrayidx94, align 4, !dbg !492, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !93), !dbg !492
  %call95 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %41) #6, !dbg !493
  %mul96 = shl nsw i32 %41, 1, !dbg !493
  %idx.ext97 = sext i32 %mul96 to i64, !dbg !493
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !494
  %42 = load i32* %nrowU, align 4, !dbg !494, !tbaa !424
  %mul100 = mul nsw i32 %42, 6, !dbg !494
  call void @DVzero(i32 %mul100, double* %call60) #6, !dbg !494
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call60, double* %add.ptr, double* %add.ptr64, double* %rowUT0.01508, double* %add.ptr75, double* %add.ptr78) #6, !dbg !495
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !496
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !496
  %43 = load i32* %nrowU, align 4, !dbg !496, !tbaa !424
  %cmp1021494 = icmp sgt i32 %43, 0, !dbg !496
  br i1 %cmp1021494, label %for.body103, label %for.end133, !dbg !496

for.body103:                                      ; preds = %for.body72, %for.body103
  %indvars.iv1557 = phi i64 [ %indvars.iv.next1558, %for.body103 ], [ 0, %for.body72 ]
  %44 = trunc i64 %indvars.iv1557 to i32, !dbg !498
  %mul104 = shl nsw i32 %44, 1, !dbg !498
  %add1051462 = or i32 %mul104, 1, !dbg !498
  %idxprom106 = sext i32 %add1051462 to i64, !dbg !498
  %arrayidx107 = getelementptr inbounds double* %call60, i64 %idxprom106, !dbg !498
  %45 = load double* %arrayidx107, align 8, !dbg !498, !tbaa !500
  %sub108 = fsub double -0.000000e+00, %45, !dbg !498
  store double %sub108, double* %arrayidx107, align 8, !dbg !498, !tbaa !500
  %add.ptr.sum1463 = add i64 %idxprom106, %idx.ext, !dbg !501
  %arrayidx116 = getelementptr inbounds double* %call60, i64 %add.ptr.sum1463, !dbg !501
  %46 = load double* %arrayidx116, align 8, !dbg !501, !tbaa !500
  %sub117 = fsub double -0.000000e+00, %46, !dbg !501
  store double %sub117, double* %arrayidx116, align 8, !dbg !501, !tbaa !500
  %add.ptr64.sum = add i64 %idxprom106, %add.ptr.sum, !dbg !502
  %arrayidx125 = getelementptr inbounds double* %call60, i64 %add.ptr64.sum, !dbg !502
  %47 = load double* %arrayidx125, align 8, !dbg !502, !tbaa !500
  %sub126 = fsub double -0.000000e+00, %47, !dbg !502
  store double %sub126, double* %arrayidx125, align 8, !dbg !502, !tbaa !500
  %indvars.iv.next1558 = add i64 %indvars.iv1557, 1, !dbg !496
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !496
  %48 = trunc i64 %indvars.iv.next1558 to i32, !dbg !496
  %cmp102 = icmp slt i32 %48, %43, !dbg !496
  br i1 %cmp102, label %for.body103, label %for.end133, !dbg !496

for.end133:                                       ; preds = %for.body103, %for.body72
  call void @llvm.dbg.value(metadata !{double* %rowUT0.0.lcssa}, i64 0, metadata !81), !dbg !503
  call void @llvm.dbg.value(metadata !{double* %add.ptr75}, i64 0, metadata !82), !dbg !504
  call void @llvm.dbg.value(metadata !{double* %add.ptr78}, i64 0, metadata !83), !dbg !505
  call void @ZVdotU(i32 %43, double* %call60, double* %rowUT0.01508, double* %rsum, double* %isum) #6, !dbg !506
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !507
  %49 = load double* %rsum, align 8, !dbg !507, !tbaa !500
  %50 = load double* %call81, align 8, !dbg !507, !tbaa !500
  %sub137 = fsub double %50, %49, !dbg !507
  store double %sub137, double* %call81, align 8, !dbg !507, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !508
  %51 = load i32* %nrowU, align 4, !dbg !508, !tbaa !424
  call void @ZVdotU(i32 %51, double* %call60, double* %add.ptr75, double* %rsum, double* %isum) #6, !dbg !508
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !509
  %52 = load double* %rsum, align 8, !dbg !509, !tbaa !500
  %add.ptr84.sum = sub i64 %idx.ext89, %idx.ext83, !dbg !509
  %arrayidx140 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum, !dbg !509
  %53 = load double* %arrayidx140, align 8, !dbg !509, !tbaa !500
  %sub141 = fsub double %53, %52, !dbg !509
  store double %sub141, double* %arrayidx140, align 8, !dbg !509, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !71), !dbg !509
  %54 = load double* %isum, align 8, !dbg !509, !tbaa !500
  %add1431414 = or i32 %mul88, 1, !dbg !509
  %idxprom144 = sext i32 %add1431414 to i64, !dbg !509
  %add.ptr84.sum1415 = sub i64 %idxprom144, %idx.ext83, !dbg !509
  %arrayidx145 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1415, !dbg !509
  %55 = load double* %arrayidx145, align 8, !dbg !509, !tbaa !500
  %sub146 = fsub double %55, %54, !dbg !509
  store double %sub146, double* %arrayidx145, align 8, !dbg !509, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !510
  %56 = load i32* %nrowU, align 4, !dbg !510, !tbaa !424
  call void @ZVdotU(i32 %56, double* %call60, double* %add.ptr78, double* %rsum, double* %isum) #6, !dbg !510
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !511
  %57 = load double* %rsum, align 8, !dbg !511, !tbaa !500
  %add.ptr84.sum1416 = sub i64 %idx.ext97, %idx.ext83, !dbg !511
  %arrayidx149 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1416, !dbg !511
  %58 = load double* %arrayidx149, align 8, !dbg !511, !tbaa !500
  %sub150 = fsub double %58, %57, !dbg !511
  store double %sub150, double* %arrayidx149, align 8, !dbg !511, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !71), !dbg !511
  %59 = load double* %isum, align 8, !dbg !511, !tbaa !500
  %add1521417 = or i32 %mul96, 1, !dbg !511
  %idxprom153 = sext i32 %add1521417 to i64, !dbg !511
  %add.ptr84.sum1418 = sub i64 %idxprom153, %idx.ext83, !dbg !511
  %arrayidx154 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1418, !dbg !511
  %60 = load double* %arrayidx154, align 8, !dbg !511, !tbaa !500
  %sub155 = fsub double %60, %59, !dbg !511
  store double %sub155, double* %arrayidx154, align 8, !dbg !511, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !512
  %61 = load i32* %nrowU, align 4, !dbg !512, !tbaa !424
  call void @ZVdotU(i32 %61, double* %add.ptr, double* %add.ptr75, double* %rsum, double* %isum) #6, !dbg !512
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !513
  %62 = load double* %rsum, align 8, !dbg !513, !tbaa !500
  %63 = load double* %call87, align 8, !dbg !513, !tbaa !500
  %sub159 = fsub double %63, %62, !dbg !513
  store double %sub159, double* %call87, align 8, !dbg !513, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !514
  %64 = load i32* %nrowU, align 4, !dbg !514, !tbaa !424
  call void @ZVdotU(i32 %64, double* %add.ptr, double* %add.ptr78, double* %rsum, double* %isum) #6, !dbg !514
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !515
  %65 = load double* %rsum, align 8, !dbg !515, !tbaa !500
  %add.ptr91.sum = sub i64 %idx.ext97, %idx.ext89, !dbg !515
  %arrayidx162 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum, !dbg !515
  %66 = load double* %arrayidx162, align 8, !dbg !515, !tbaa !500
  %sub163 = fsub double %66, %65, !dbg !515
  store double %sub163, double* %arrayidx162, align 8, !dbg !515, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !71), !dbg !515
  %67 = load double* %isum, align 8, !dbg !515, !tbaa !500
  %add.ptr91.sum1419 = sub i64 %idxprom153, %idx.ext89, !dbg !515
  %arrayidx167 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1419, !dbg !515
  %68 = load double* %arrayidx167, align 8, !dbg !515, !tbaa !500
  %sub168 = fsub double %68, %67, !dbg !515
  store double %sub168, double* %arrayidx167, align 8, !dbg !515, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !516
  %69 = load i32* %nrowU, align 4, !dbg !516, !tbaa !424
  call void @ZVdotU(i32 %69, double* %add.ptr64, double* %add.ptr78, double* %rsum, double* %isum) #6, !dbg !516
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !517
  %70 = load double* %rsum, align 8, !dbg !517, !tbaa !500
  %71 = load double* %call95, align 8, !dbg !517, !tbaa !500
  %sub172 = fsub double %71, %70, !dbg !517
  store double %sub172, double* %call95, align 8, !dbg !517, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !518
  %72 = load i32* %nrowU, align 4, !dbg !518, !tbaa !424
  %mul173 = shl nsw i32 %72, 1, !dbg !518
  %idx.ext174 = sext i32 %mul173 to i64, !dbg !518
  %add.ptr78.sum = add i64 %idx.ext174, %add.ptr75.sum, !dbg !518
  %add.ptr175 = getelementptr inbounds double* %rowUT0.01508, i64 %add.ptr78.sum, !dbg !518
  call void @llvm.dbg.value(metadata !{double* %add.ptr175}, i64 0, metadata !81), !dbg !518
  %indvars.iv.next1569 = add i64 %indvars.iv1568, 3, !dbg !470
  %add176 = add nsw i32 %irowUT.01507, 3, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %add176}, i64 0, metadata !64), !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !519
  %73 = load i32* %ncolU, align 4, !dbg !519, !tbaa !424
  %sub1781498 = add nsw i32 %73, -2, !dbg !519
  %74 = trunc i64 %indvars.iv.next1569 to i32, !dbg !519
  %cmp1791499 = icmp slt i32 %74, %sub1781498, !dbg !519
  br i1 %cmp1791499, label %for.body180, label %for.end284, !dbg !519

for.body180:                                      ; preds = %for.end133, %for.body180
  %75 = phi i32 [ %118, %for.body180 ], [ %72, %for.end133 ], !dbg !520
  %indvars.iv1563 = phi i64 [ %indvars.iv.next1564, %for.body180 ], [ %indvars.iv1561, %for.end133 ], !dbg !470
  %jcolU.31501 = phi i32 [ %add283, %for.body180 ], [ %add176, %for.end133 ]
  %colU0.01500 = phi double* [ %add.ptr281, %for.body180 ], [ %add.ptr175, %for.end133 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !520
  %mul181 = shl nsw i32 %75, 1, !dbg !520
  %idx.ext182 = sext i32 %mul181 to i64, !dbg !520
  %add.ptr183 = getelementptr inbounds double* %colU0.01500, i64 %idx.ext182, !dbg !520
  call void @llvm.dbg.value(metadata !{double* %add.ptr183}, i64 0, metadata !82), !dbg !520
  %add.ptr183.sum = shl nsw i64 %idx.ext182, 1, !dbg !521
  %add.ptr186 = getelementptr inbounds double* %colU0.01500, i64 %add.ptr183.sum, !dbg !521
  call void @llvm.dbg.value(metadata !{double* %add.ptr186}, i64 0, metadata !83), !dbg !521
  call void @ZVdotU33(i32 %75, double* %call60, double* %add.ptr, double* %add.ptr64, double* %colU0.01500, double* %add.ptr183, double* %add.ptr186, double* %arraydecay291) #6, !dbg !522
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !523
  %76 = load i32** %colindU, align 8, !dbg !523, !tbaa !419
  %arrayidx188 = getelementptr inbounds i32* %76, i64 %indvars.iv1563, !dbg !523
  %77 = load i32* %arrayidx188, align 4, !dbg !523, !tbaa !424
  %mul189 = shl nsw i32 %77, 1, !dbg !523
  call void @llvm.dbg.value(metadata !{i32 %mul189}, i64 0, metadata !98), !dbg !523
  %78 = add nsw i64 %indvars.iv1563, 1, !dbg !524
  %arrayidx192 = getelementptr inbounds i32* %76, i64 %78, !dbg !524
  %79 = load i32* %arrayidx192, align 4, !dbg !524, !tbaa !424
  %mul193 = shl nsw i32 %79, 1, !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %mul193}, i64 0, metadata !99), !dbg !524
  %80 = add nsw i64 %indvars.iv1563, 2, !dbg !525
  %arrayidx196 = getelementptr inbounds i32* %76, i64 %80, !dbg !525
  %81 = load i32* %arrayidx196, align 4, !dbg !525, !tbaa !424
  %mul197 = shl nsw i32 %81, 1, !dbg !525
  call void @llvm.dbg.value(metadata !{i32 %mul197}, i64 0, metadata !100), !dbg !525
  %82 = load double* %arraydecay291, align 16, !dbg !526, !tbaa !500
  %idxprom199 = sext i32 %mul189 to i64, !dbg !526
  %add.ptr84.sum1441 = sub i64 %idxprom199, %idx.ext83, !dbg !526
  %arrayidx200 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1441, !dbg !526
  %83 = load double* %arrayidx200, align 8, !dbg !526, !tbaa !500
  %sub201 = fsub double %83, %82, !dbg !526
  store double %sub201, double* %arrayidx200, align 8, !dbg !526, !tbaa !500
  %84 = load double* %arrayidx303, align 8, !dbg !526, !tbaa !500
  %add2031442 = or i32 %mul189, 1, !dbg !526
  %idxprom204 = sext i32 %add2031442 to i64, !dbg !526
  %add.ptr84.sum1443 = sub i64 %idxprom204, %idx.ext83, !dbg !526
  %arrayidx205 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1443, !dbg !526
  %85 = load double* %arrayidx205, align 8, !dbg !526, !tbaa !500
  %sub206 = fsub double %85, %84, !dbg !526
  store double %sub206, double* %arrayidx205, align 8, !dbg !526, !tbaa !500
  %86 = load double* %arrayidx308, align 16, !dbg !527, !tbaa !500
  %idxprom208 = sext i32 %mul193 to i64, !dbg !527
  %add.ptr84.sum1444 = sub i64 %idxprom208, %idx.ext83, !dbg !527
  %arrayidx209 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1444, !dbg !527
  %87 = load double* %arrayidx209, align 8, !dbg !527, !tbaa !500
  %sub210 = fsub double %87, %86, !dbg !527
  store double %sub210, double* %arrayidx209, align 8, !dbg !527, !tbaa !500
  %88 = load double* %arrayidx312, align 8, !dbg !527, !tbaa !500
  %add2121445 = or i32 %mul193, 1, !dbg !527
  %idxprom213 = sext i32 %add2121445 to i64, !dbg !527
  %add.ptr84.sum1446 = sub i64 %idxprom213, %idx.ext83, !dbg !527
  %arrayidx214 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1446, !dbg !527
  %89 = load double* %arrayidx214, align 8, !dbg !527, !tbaa !500
  %sub215 = fsub double %89, %88, !dbg !527
  store double %sub215, double* %arrayidx214, align 8, !dbg !527, !tbaa !500
  %90 = load double* %arrayidx317, align 16, !dbg !528, !tbaa !500
  %idxprom217 = sext i32 %mul197 to i64, !dbg !528
  %add.ptr84.sum1447 = sub i64 %idxprom217, %idx.ext83, !dbg !528
  %arrayidx218 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1447, !dbg !528
  %91 = load double* %arrayidx218, align 8, !dbg !528, !tbaa !500
  %sub219 = fsub double %91, %90, !dbg !528
  store double %sub219, double* %arrayidx218, align 8, !dbg !528, !tbaa !500
  %92 = load double* %arrayidx321, align 8, !dbg !528, !tbaa !500
  %add2211448 = or i32 %mul197, 1, !dbg !528
  %idxprom222 = sext i32 %add2211448 to i64, !dbg !528
  %add.ptr84.sum1449 = sub i64 %idxprom222, %idx.ext83, !dbg !528
  %arrayidx223 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1449, !dbg !528
  %93 = load double* %arrayidx223, align 8, !dbg !528, !tbaa !500
  %sub224 = fsub double %93, %92, !dbg !528
  store double %sub224, double* %arrayidx223, align 8, !dbg !528, !tbaa !500
  %94 = load double* %arrayidx326, align 16, !dbg !529, !tbaa !500
  %add.ptr91.sum1450 = sub i64 %idxprom199, %idx.ext89, !dbg !529
  %arrayidx227 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1450, !dbg !529
  %95 = load double* %arrayidx227, align 8, !dbg !529, !tbaa !500
  %sub228 = fsub double %95, %94, !dbg !529
  store double %sub228, double* %arrayidx227, align 8, !dbg !529, !tbaa !500
  %96 = load double* %arrayidx330, align 8, !dbg !529, !tbaa !500
  %add.ptr91.sum1451 = sub i64 %idxprom204, %idx.ext89, !dbg !529
  %arrayidx232 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1451, !dbg !529
  %97 = load double* %arrayidx232, align 8, !dbg !529, !tbaa !500
  %sub233 = fsub double %97, %96, !dbg !529
  store double %sub233, double* %arrayidx232, align 8, !dbg !529, !tbaa !500
  %98 = load double* %arrayidx335, align 16, !dbg !530, !tbaa !500
  %add.ptr91.sum1452 = sub i64 %idxprom208, %idx.ext89, !dbg !530
  %arrayidx236 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1452, !dbg !530
  %99 = load double* %arrayidx236, align 8, !dbg !530, !tbaa !500
  %sub237 = fsub double %99, %98, !dbg !530
  store double %sub237, double* %arrayidx236, align 8, !dbg !530, !tbaa !500
  %100 = load double* %arrayidx339, align 8, !dbg !530, !tbaa !500
  %add.ptr91.sum1453 = sub i64 %idxprom213, %idx.ext89, !dbg !530
  %arrayidx241 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1453, !dbg !530
  %101 = load double* %arrayidx241, align 8, !dbg !530, !tbaa !500
  %sub242 = fsub double %101, %100, !dbg !530
  store double %sub242, double* %arrayidx241, align 8, !dbg !530, !tbaa !500
  %102 = load double* %arrayidx344, align 16, !dbg !531, !tbaa !500
  %add.ptr91.sum1454 = sub i64 %idxprom217, %idx.ext89, !dbg !531
  %arrayidx245 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1454, !dbg !531
  %103 = load double* %arrayidx245, align 8, !dbg !531, !tbaa !500
  %sub246 = fsub double %103, %102, !dbg !531
  store double %sub246, double* %arrayidx245, align 8, !dbg !531, !tbaa !500
  %104 = load double* %arrayidx348, align 8, !dbg !531, !tbaa !500
  %add.ptr91.sum1455 = sub i64 %idxprom222, %idx.ext89, !dbg !531
  %arrayidx250 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1455, !dbg !531
  %105 = load double* %arrayidx250, align 8, !dbg !531, !tbaa !500
  %sub251 = fsub double %105, %104, !dbg !531
  store double %sub251, double* %arrayidx250, align 8, !dbg !531, !tbaa !500
  %106 = load double* %arrayidx252, align 16, !dbg !481, !tbaa !500
  %add.ptr99.sum1456 = sub i64 %idxprom199, %idx.ext97, !dbg !481
  %arrayidx254 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1456, !dbg !481
  %107 = load double* %arrayidx254, align 8, !dbg !481, !tbaa !500
  %sub255 = fsub double %107, %106, !dbg !481
  store double %sub255, double* %arrayidx254, align 8, !dbg !481, !tbaa !500
  %108 = load double* %arrayidx256, align 8, !dbg !481, !tbaa !500
  %add.ptr99.sum1457 = sub i64 %idxprom204, %idx.ext97, !dbg !481
  %arrayidx259 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1457, !dbg !481
  %109 = load double* %arrayidx259, align 8, !dbg !481, !tbaa !500
  %sub260 = fsub double %109, %108, !dbg !481
  store double %sub260, double* %arrayidx259, align 8, !dbg !481, !tbaa !500
  %110 = load double* %arrayidx261, align 16, !dbg !484, !tbaa !500
  %add.ptr99.sum1458 = sub i64 %idxprom208, %idx.ext97, !dbg !484
  %arrayidx263 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1458, !dbg !484
  %111 = load double* %arrayidx263, align 8, !dbg !484, !tbaa !500
  %sub264 = fsub double %111, %110, !dbg !484
  store double %sub264, double* %arrayidx263, align 8, !dbg !484, !tbaa !500
  %112 = load double* %arrayidx265, align 8, !dbg !484, !tbaa !500
  %add.ptr99.sum1459 = sub i64 %idxprom213, %idx.ext97, !dbg !484
  %arrayidx268 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1459, !dbg !484
  %113 = load double* %arrayidx268, align 8, !dbg !484, !tbaa !500
  %sub269 = fsub double %113, %112, !dbg !484
  store double %sub269, double* %arrayidx268, align 8, !dbg !484, !tbaa !500
  %114 = load double* %arrayidx270, align 16, !dbg !485, !tbaa !500
  %add.ptr99.sum1460 = sub i64 %idxprom217, %idx.ext97, !dbg !485
  %arrayidx272 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1460, !dbg !485
  %115 = load double* %arrayidx272, align 8, !dbg !485, !tbaa !500
  %sub273 = fsub double %115, %114, !dbg !485
  store double %sub273, double* %arrayidx272, align 8, !dbg !485, !tbaa !500
  %116 = load double* %arrayidx274, align 8, !dbg !485, !tbaa !500
  %add.ptr99.sum1461 = sub i64 %idxprom222, %idx.ext97, !dbg !485
  %arrayidx277 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1461, !dbg !485
  %117 = load double* %arrayidx277, align 8, !dbg !485, !tbaa !500
  %sub278 = fsub double %117, %116, !dbg !485
  store double %sub278, double* %arrayidx277, align 8, !dbg !485, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !532
  %118 = load i32* %nrowU, align 4, !dbg !532, !tbaa !424
  %mul279 = shl nsw i32 %118, 1, !dbg !532
  %idx.ext280 = sext i32 %mul279 to i64, !dbg !532
  %add.ptr186.sum = add i64 %idx.ext280, %add.ptr183.sum, !dbg !532
  %add.ptr281 = getelementptr inbounds double* %colU0.01500, i64 %add.ptr186.sum, !dbg !532
  call void @llvm.dbg.value(metadata !{double* %add.ptr281}, i64 0, metadata !81), !dbg !532
  %add283 = add nsw i32 %jcolU.31501, 3, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %add283}, i64 0, metadata !64), !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !519
  %119 = load i32* %ncolU, align 4, !dbg !519, !tbaa !424
  %sub178 = add nsw i32 %119, -2, !dbg !519
  %cmp179 = icmp slt i32 %add283, %sub178, !dbg !519
  %indvars.iv.next1564 = add i64 %indvars.iv1563, 3, !dbg !519
  br i1 %cmp179, label %for.body180, label %for.end284, !dbg !519

for.end284:                                       ; preds = %for.body180, %for.end133
  %120 = phi i32 [ %72, %for.end133 ], [ %118, %for.body180 ]
  %sub178.lcssa = phi i32 [ %sub1781498, %for.end133 ], [ %sub178, %for.body180 ]
  %.lcssa1497 = phi i32 [ %73, %for.end133 ], [ %119, %for.body180 ]
  %jcolU.3.lcssa = phi i32 [ %74, %for.end133 ], [ %add283, %for.body180 ]
  %colU0.0.lcssa = phi double* [ %add.ptr175, %for.end133 ], [ %add.ptr281, %for.body180 ]
  %cmp286 = icmp eq i32 %jcolU.3.lcssa, %sub178.lcssa, !dbg !533
  br i1 %cmp286, label %if.then287, label %if.else353, !dbg !533

if.then287:                                       ; preds = %for.end284
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !534
  %mul288 = shl nsw i32 %120, 1, !dbg !534
  %idx.ext289 = sext i32 %mul288 to i64, !dbg !534
  %add.ptr290 = getelementptr inbounds double* %colU0.0.lcssa, i64 %idx.ext289, !dbg !534
  call void @llvm.dbg.value(metadata !{double* %add.ptr290}, i64 0, metadata !82), !dbg !534
  call void @ZVdotU32(i32 %120, double* %call60, double* %add.ptr, double* %add.ptr64, double* %colU0.0.lcssa, double* %add.ptr290, double* %arraydecay291) #6, !dbg !472
  %idxprom292 = sext i32 %sub178.lcssa to i64, !dbg !535
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !535
  %121 = load i32** %colindU, align 8, !dbg !535, !tbaa !419
  %arrayidx293 = getelementptr inbounds i32* %121, i64 %idxprom292, !dbg !535
  %122 = load i32* %arrayidx293, align 4, !dbg !535, !tbaa !424
  %mul294 = shl nsw i32 %122, 1, !dbg !535
  call void @llvm.dbg.value(metadata !{i32 %mul294}, i64 0, metadata !98), !dbg !535
  %add295 = add nsw i32 %sub178.lcssa, 1, !dbg !536
  %idxprom296 = sext i32 %add295 to i64, !dbg !536
  %arrayidx297 = getelementptr inbounds i32* %121, i64 %idxprom296, !dbg !536
  %123 = load i32* %arrayidx297, align 4, !dbg !536, !tbaa !424
  %mul298 = shl nsw i32 %123, 1, !dbg !536
  call void @llvm.dbg.value(metadata !{i32 %mul298}, i64 0, metadata !99), !dbg !536
  %124 = load double* %arraydecay291, align 16, !dbg !475, !tbaa !500
  %idxprom300 = sext i32 %mul294 to i64, !dbg !475
  %add.ptr84.sum1427 = sub i64 %idxprom300, %idx.ext83, !dbg !475
  %arrayidx301 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1427, !dbg !475
  %125 = load double* %arrayidx301, align 8, !dbg !475, !tbaa !500
  %sub302 = fsub double %125, %124, !dbg !475
  store double %sub302, double* %arrayidx301, align 8, !dbg !475, !tbaa !500
  %126 = load double* %arrayidx303, align 8, !dbg !475, !tbaa !500
  %add3041428 = or i32 %mul294, 1, !dbg !475
  %idxprom305 = sext i32 %add3041428 to i64, !dbg !475
  %add.ptr84.sum1429 = sub i64 %idxprom305, %idx.ext83, !dbg !475
  %arrayidx306 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1429, !dbg !475
  %127 = load double* %arrayidx306, align 8, !dbg !475, !tbaa !500
  %sub307 = fsub double %127, %126, !dbg !475
  store double %sub307, double* %arrayidx306, align 8, !dbg !475, !tbaa !500
  %128 = load double* %arrayidx308, align 16, !dbg !476, !tbaa !500
  %idxprom309 = sext i32 %mul298 to i64, !dbg !476
  %add.ptr84.sum1430 = sub i64 %idxprom309, %idx.ext83, !dbg !476
  %arrayidx310 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1430, !dbg !476
  %129 = load double* %arrayidx310, align 8, !dbg !476, !tbaa !500
  %sub311 = fsub double %129, %128, !dbg !476
  store double %sub311, double* %arrayidx310, align 8, !dbg !476, !tbaa !500
  %130 = load double* %arrayidx312, align 8, !dbg !476, !tbaa !500
  %add3131431 = or i32 %mul298, 1, !dbg !476
  %idxprom314 = sext i32 %add3131431 to i64, !dbg !476
  %add.ptr84.sum1432 = sub i64 %idxprom314, %idx.ext83, !dbg !476
  %arrayidx315 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1432, !dbg !476
  %131 = load double* %arrayidx315, align 8, !dbg !476, !tbaa !500
  %sub316 = fsub double %131, %130, !dbg !476
  store double %sub316, double* %arrayidx315, align 8, !dbg !476, !tbaa !500
  %132 = load double* %arrayidx317, align 16, !dbg !477, !tbaa !500
  %add.ptr91.sum1433 = sub i64 %idxprom300, %idx.ext89, !dbg !477
  %arrayidx319 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1433, !dbg !477
  %133 = load double* %arrayidx319, align 8, !dbg !477, !tbaa !500
  %sub320 = fsub double %133, %132, !dbg !477
  store double %sub320, double* %arrayidx319, align 8, !dbg !477, !tbaa !500
  %134 = load double* %arrayidx321, align 8, !dbg !477, !tbaa !500
  %add.ptr91.sum1434 = sub i64 %idxprom305, %idx.ext89, !dbg !477
  %arrayidx324 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1434, !dbg !477
  %135 = load double* %arrayidx324, align 8, !dbg !477, !tbaa !500
  %sub325 = fsub double %135, %134, !dbg !477
  store double %sub325, double* %arrayidx324, align 8, !dbg !477, !tbaa !500
  %136 = load double* %arrayidx326, align 16, !dbg !478, !tbaa !500
  %add.ptr91.sum1435 = sub i64 %idxprom309, %idx.ext89, !dbg !478
  %arrayidx328 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1435, !dbg !478
  %137 = load double* %arrayidx328, align 8, !dbg !478, !tbaa !500
  %sub329 = fsub double %137, %136, !dbg !478
  store double %sub329, double* %arrayidx328, align 8, !dbg !478, !tbaa !500
  %138 = load double* %arrayidx330, align 8, !dbg !478, !tbaa !500
  %add.ptr91.sum1436 = sub i64 %idxprom314, %idx.ext89, !dbg !478
  %arrayidx333 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1436, !dbg !478
  %139 = load double* %arrayidx333, align 8, !dbg !478, !tbaa !500
  %sub334 = fsub double %139, %138, !dbg !478
  store double %sub334, double* %arrayidx333, align 8, !dbg !478, !tbaa !500
  %140 = load double* %arrayidx335, align 16, !dbg !479, !tbaa !500
  %add.ptr99.sum1437 = sub i64 %idxprom300, %idx.ext97, !dbg !479
  %arrayidx337 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1437, !dbg !479
  %141 = load double* %arrayidx337, align 8, !dbg !479, !tbaa !500
  %sub338 = fsub double %141, %140, !dbg !479
  store double %sub338, double* %arrayidx337, align 8, !dbg !479, !tbaa !500
  %142 = load double* %arrayidx339, align 8, !dbg !479, !tbaa !500
  %add.ptr99.sum1438 = sub i64 %idxprom305, %idx.ext97, !dbg !479
  %arrayidx342 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1438, !dbg !479
  %143 = load double* %arrayidx342, align 8, !dbg !479, !tbaa !500
  %sub343 = fsub double %143, %142, !dbg !479
  store double %sub343, double* %arrayidx342, align 8, !dbg !479, !tbaa !500
  %144 = load double* %arrayidx344, align 16, !dbg !480, !tbaa !500
  %add.ptr99.sum1439 = sub i64 %idxprom309, %idx.ext97, !dbg !480
  %arrayidx346 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1439, !dbg !480
  %145 = load double* %arrayidx346, align 8, !dbg !480, !tbaa !500
  %sub347 = fsub double %145, %144, !dbg !480
  store double %sub347, double* %arrayidx346, align 8, !dbg !480, !tbaa !500
  %146 = load double* %arrayidx348, align 8, !dbg !480, !tbaa !500
  %add.ptr99.sum1440 = sub i64 %idxprom314, %idx.ext97, !dbg !480
  %arrayidx351 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1440, !dbg !480
  %147 = load double* %arrayidx351, align 8, !dbg !480, !tbaa !500
  %sub352 = fsub double %147, %146, !dbg !480
  store double %sub352, double* %arrayidx351, align 8, !dbg !480, !tbaa !500
  br label %if.end389, !dbg !537

if.else353:                                       ; preds = %for.end284
  %sub354 = add nsw i32 %.lcssa1497, -1, !dbg !538
  %cmp355 = icmp eq i32 %jcolU.3.lcssa, %sub354, !dbg !538
  br i1 %cmp355, label %if.then356, label %if.end389, !dbg !538

if.then356:                                       ; preds = %if.else353
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !539
  call void @ZVdotU31(i32 %120, double* %call60, double* %add.ptr, double* %add.ptr64, double* %colU0.0.lcssa, double* %arraydecay291) #6, !dbg !539
  %idxprom358 = sext i32 %jcolU.3.lcssa to i64, !dbg !541
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !541
  %148 = load i32** %colindU, align 8, !dbg !541, !tbaa !419
  %arrayidx359 = getelementptr inbounds i32* %148, i64 %idxprom358, !dbg !541
  %149 = load i32* %arrayidx359, align 4, !dbg !541, !tbaa !424
  %mul360 = shl nsw i32 %149, 1, !dbg !541
  call void @llvm.dbg.value(metadata !{i32 %mul360}, i64 0, metadata !98), !dbg !541
  %150 = load double* %arraydecay291, align 16, !dbg !542, !tbaa !500
  %idxprom362 = sext i32 %mul360 to i64, !dbg !542
  %add.ptr84.sum1421 = sub i64 %idxprom362, %idx.ext83, !dbg !542
  %arrayidx363 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1421, !dbg !542
  %151 = load double* %arrayidx363, align 8, !dbg !542, !tbaa !500
  %sub364 = fsub double %151, %150, !dbg !542
  store double %sub364, double* %arrayidx363, align 8, !dbg !542, !tbaa !500
  %152 = load double* %arrayidx303, align 8, !dbg !542, !tbaa !500
  %add3661422 = or i32 %mul360, 1, !dbg !542
  %idxprom367 = sext i32 %add3661422 to i64, !dbg !542
  %add.ptr84.sum1423 = sub i64 %idxprom367, %idx.ext83, !dbg !542
  %arrayidx368 = getelementptr inbounds double* %call81, i64 %add.ptr84.sum1423, !dbg !542
  %153 = load double* %arrayidx368, align 8, !dbg !542, !tbaa !500
  %sub369 = fsub double %153, %152, !dbg !542
  store double %sub369, double* %arrayidx368, align 8, !dbg !542, !tbaa !500
  %154 = load double* %arrayidx308, align 16, !dbg !543, !tbaa !500
  %add.ptr91.sum1424 = sub i64 %idxprom362, %idx.ext89, !dbg !543
  %arrayidx372 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1424, !dbg !543
  %155 = load double* %arrayidx372, align 8, !dbg !543, !tbaa !500
  %sub373 = fsub double %155, %154, !dbg !543
  store double %sub373, double* %arrayidx372, align 8, !dbg !543, !tbaa !500
  %156 = load double* %arrayidx312, align 8, !dbg !543, !tbaa !500
  %add.ptr91.sum1425 = sub i64 %idxprom367, %idx.ext89, !dbg !543
  %arrayidx377 = getelementptr inbounds double* %call87, i64 %add.ptr91.sum1425, !dbg !543
  %157 = load double* %arrayidx377, align 8, !dbg !543, !tbaa !500
  %sub378 = fsub double %157, %156, !dbg !543
  store double %sub378, double* %arrayidx377, align 8, !dbg !543, !tbaa !500
  %158 = load double* %arrayidx317, align 16, !dbg !544, !tbaa !500
  %add.ptr99.sum = sub i64 %idxprom362, %idx.ext97, !dbg !544
  %arrayidx381 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum, !dbg !544
  %159 = load double* %arrayidx381, align 8, !dbg !544, !tbaa !500
  %sub382 = fsub double %159, %158, !dbg !544
  store double %sub382, double* %arrayidx381, align 8, !dbg !544, !tbaa !500
  %160 = load double* %arrayidx321, align 8, !dbg !544, !tbaa !500
  %add.ptr99.sum1426 = sub i64 %idxprom367, %idx.ext97, !dbg !544
  %arrayidx386 = getelementptr inbounds double* %call95, i64 %add.ptr99.sum1426, !dbg !544
  %161 = load double* %arrayidx386, align 8, !dbg !544, !tbaa !500
  %sub387 = fsub double %161, %160, !dbg !544
  store double %sub387, double* %arrayidx386, align 8, !dbg !544, !tbaa !500
  br label %if.end389, !dbg !545

if.end389:                                        ; preds = %if.else353, %if.then356, %if.then287
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !546
  %162 = load i32* %nrowU, align 4, !dbg !546, !tbaa !424
  %mul390 = shl nsw i32 %162, 1, !dbg !546
  %idx.ext391 = sext i32 %mul390 to i64, !dbg !546
  %add.ptr78.sum1420 = add i64 %idx.ext391, %add.ptr75.sum, !dbg !546
  %add.ptr392 = getelementptr inbounds double* %rowUT0.01508, i64 %add.ptr78.sum1420, !dbg !546
  call void @llvm.dbg.value(metadata !{double* %add.ptr392}, i64 0, metadata !85), !dbg !546
  call void @llvm.dbg.value(metadata !{i32 %add176}, i64 0, metadata !97), !dbg !470
  %cmp71 = icmp sgt i32 %74, %sub70, !dbg !470
  br i1 %cmp71, label %for.end395, label %for.body72, !dbg !470

for.end395:                                       ; preds = %if.end389, %if.then59
  %163 = phi i32 [ %30, %if.then59 ], [ %162, %if.end389 ]
  %rowUT0.0.lcssa = phi double* [ %add.ptr68, %if.then59 ], [ %add.ptr392, %if.end389 ]
  %irowUT.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then59 ], [ %add176, %if.end389 ]
  %sub396 = add nsw i32 %lastInU.0.lcssa1601, -1, !dbg !547
  %cmp397 = icmp eq i32 %irowUT.0.lcssa, %sub396, !dbg !547
  br i1 %cmp397, label %if.then398, label %if.else623, !dbg !547

if.then398:                                       ; preds = %for.end395
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !548
  %mul399 = shl nsw i32 %163, 1, !dbg !548
  %idx.ext400 = sext i32 %mul399 to i64, !dbg !548
  %add.ptr401 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext400, !dbg !548
  call void @llvm.dbg.value(metadata !{double* %add.ptr401}, i64 0, metadata !86), !dbg !548
  %idxprom402 = sext i32 %irowUT.0.lcssa to i64, !dbg !550
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !550
  %164 = load i32** %colindU, align 8, !dbg !550, !tbaa !419
  %arrayidx403 = getelementptr inbounds i32* %164, i64 %idxprom402, !dbg !550
  %165 = load i32* %arrayidx403, align 4, !dbg !550, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %165}, i64 0, metadata !91), !dbg !550
  %call404 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %165) #6, !dbg !551
  %mul405 = shl nsw i32 %165, 1, !dbg !551
  %idx.ext406 = sext i32 %mul405 to i64, !dbg !551
  %add409 = add nsw i32 %irowUT.0.lcssa, 1, !dbg !552
  %idxprom410 = sext i32 %add409 to i64, !dbg !552
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !552
  %166 = load i32** %colindU, align 8, !dbg !552, !tbaa !419
  %arrayidx411 = getelementptr inbounds i32* %166, i64 %idxprom410, !dbg !552
  %167 = load i32* %arrayidx411, align 4, !dbg !552, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %167}, i64 0, metadata !92), !dbg !552
  %call412 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %167) #6, !dbg !553
  %mul413 = shl nsw i32 %167, 1, !dbg !553
  %idx.ext414 = sext i32 %mul413 to i64, !dbg !553
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !554
  %168 = load i32* %nrowU, align 4, !dbg !554, !tbaa !424
  %mul417 = shl nsw i32 %168, 2, !dbg !554
  call void @DVzero(i32 %mul417, double* %call60) #6, !dbg !554
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call60, double* %add.ptr, double* %rowUT0.0.lcssa, double* %add.ptr401) #6, !dbg !555
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !556
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !556
  %169 = load i32* %nrowU, align 4, !dbg !556, !tbaa !424
  %cmp4191477 = icmp sgt i32 %169, 0, !dbg !556
  br i1 %cmp4191477, label %for.body420, label %for.end441, !dbg !556

for.body420:                                      ; preds = %if.then398, %for.body420
  %indvars.iv1546 = phi i64 [ %indvars.iv.next1547, %for.body420 ], [ 0, %if.then398 ]
  %170 = trunc i64 %indvars.iv1546 to i32, !dbg !558
  %mul421 = shl nsw i32 %170, 1, !dbg !558
  %add4221412 = or i32 %mul421, 1, !dbg !558
  %idxprom423 = sext i32 %add4221412 to i64, !dbg !558
  %arrayidx424 = getelementptr inbounds double* %call60, i64 %idxprom423, !dbg !558
  %171 = load double* %arrayidx424, align 8, !dbg !558, !tbaa !500
  %sub425 = fsub double -0.000000e+00, %171, !dbg !558
  store double %sub425, double* %arrayidx424, align 8, !dbg !558, !tbaa !500
  %add.ptr.sum1413 = add i64 %idxprom423, %idx.ext, !dbg !560
  %arrayidx433 = getelementptr inbounds double* %call60, i64 %add.ptr.sum1413, !dbg !560
  %172 = load double* %arrayidx433, align 8, !dbg !560, !tbaa !500
  %sub434 = fsub double -0.000000e+00, %172, !dbg !560
  store double %sub434, double* %arrayidx433, align 8, !dbg !560, !tbaa !500
  %indvars.iv.next1547 = add i64 %indvars.iv1546, 1, !dbg !556
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !556
  %173 = trunc i64 %indvars.iv.next1547 to i32, !dbg !556
  %cmp419 = icmp slt i32 %173, %169, !dbg !556
  br i1 %cmp419, label %for.body420, label %for.end441, !dbg !556

for.end441:                                       ; preds = %for.body420, %if.then398
  call void @llvm.dbg.value(metadata !{double* %rowUT0.0.lcssa}, i64 0, metadata !81), !dbg !561
  call void @llvm.dbg.value(metadata !{double* %add.ptr401}, i64 0, metadata !82), !dbg !562
  call void @ZVdotU(i32 %169, double* %call60, double* %rowUT0.0.lcssa, double* %rsum, double* %isum) #6, !dbg !563
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !564
  %174 = load double* %rsum, align 8, !dbg !564, !tbaa !500
  %175 = load double* %call404, align 8, !dbg !564, !tbaa !500
  %sub445 = fsub double %175, %174, !dbg !564
  store double %sub445, double* %call404, align 8, !dbg !564, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !565
  %176 = load i32* %nrowU, align 4, !dbg !565, !tbaa !424
  call void @ZVdotU(i32 %176, double* %call60, double* %add.ptr401, double* %rsum, double* %isum) #6, !dbg !565
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !566
  %177 = load double* %rsum, align 8, !dbg !566, !tbaa !500
  %add.ptr408.sum = sub i64 %idx.ext414, %idx.ext406, !dbg !566
  %arrayidx448 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum, !dbg !566
  %178 = load double* %arrayidx448, align 8, !dbg !566, !tbaa !500
  %sub449 = fsub double %178, %177, !dbg !566
  store double %sub449, double* %arrayidx448, align 8, !dbg !566, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !71), !dbg !566
  %179 = load double* %isum, align 8, !dbg !566, !tbaa !500
  %add4511381 = or i32 %mul413, 1, !dbg !566
  %idxprom452 = sext i32 %add4511381 to i64, !dbg !566
  %add.ptr408.sum1382 = sub i64 %idxprom452, %idx.ext406, !dbg !566
  %arrayidx453 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1382, !dbg !566
  %180 = load double* %arrayidx453, align 8, !dbg !566, !tbaa !500
  %sub454 = fsub double %180, %179, !dbg !566
  store double %sub454, double* %arrayidx453, align 8, !dbg !566, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !567
  %181 = load i32* %nrowU, align 4, !dbg !567, !tbaa !424
  call void @ZVdotU(i32 %181, double* %add.ptr, double* %add.ptr401, double* %rsum, double* %isum) #6, !dbg !567
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !568
  %182 = load double* %rsum, align 8, !dbg !568, !tbaa !500
  %183 = load double* %call412, align 8, !dbg !568, !tbaa !500
  %sub458 = fsub double %183, %182, !dbg !568
  store double %sub458, double* %call412, align 8, !dbg !568, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !569
  %184 = load i32* %nrowU, align 4, !dbg !569, !tbaa !424
  %mul459 = shl nsw i32 %184, 1, !dbg !569
  %idx.ext460 = sext i32 %mul459 to i64, !dbg !569
  %add.ptr401.sum = add i64 %idx.ext460, %idx.ext400, !dbg !569
  %add.ptr461 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %add.ptr401.sum, !dbg !569
  call void @llvm.dbg.value(metadata !{double* %add.ptr461}, i64 0, metadata !81), !dbg !569
  %add462 = add i32 %irowUT.0.lcssa, 2, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %add462}, i64 0, metadata !64), !dbg !570
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !570
  %185 = load i32* %ncolU, align 4, !dbg !570, !tbaa !424
  %sub4641469 = add nsw i32 %185, -2, !dbg !570
  %cmp4651470 = icmp slt i32 %add462, %sub4641469, !dbg !570
  br i1 %cmp4651470, label %for.body466.lr.ph, label %for.end544, !dbg !570

for.body466.lr.ph:                                ; preds = %for.end441
  %arraydecay473 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !572
  %arrayidx489 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !574
  %arrayidx494 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2, !dbg !575
  %arrayidx498 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3, !dbg !575
  %arrayidx503 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4, !dbg !576
  %arrayidx507 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5, !dbg !576
  %arrayidx512 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 6, !dbg !577
  %arrayidx516 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 7, !dbg !577
  %arrayidx521 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 8, !dbg !578
  %arrayidx525 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 9, !dbg !578
  %arrayidx530 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 10, !dbg !579
  %arrayidx534 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 11, !dbg !579
  %186 = sext i32 %add462 to i64
  br label %for.body466, !dbg !570

for.body466:                                      ; preds = %for.body466.lr.ph, %for.body466
  %187 = phi i32 [ %184, %for.body466.lr.ph ], [ %218, %for.body466 ], !dbg !580
  %indvars.iv1541 = phi i64 [ %186, %for.body466.lr.ph ], [ %indvars.iv.next1542, %for.body466 ]
  %jcolU.41472 = phi i32 [ %add462, %for.body466.lr.ph ], [ %add543, %for.body466 ]
  %colU0.11471 = phi double* [ %add.ptr461, %for.body466.lr.ph ], [ %add.ptr541, %for.body466 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !580
  %mul467 = shl nsw i32 %187, 1, !dbg !580
  %idx.ext468 = sext i32 %mul467 to i64, !dbg !580
  %add.ptr469 = getelementptr inbounds double* %colU0.11471, i64 %idx.ext468, !dbg !580
  call void @llvm.dbg.value(metadata !{double* %add.ptr469}, i64 0, metadata !82), !dbg !580
  %add.ptr469.sum = shl nsw i64 %idx.ext468, 1, !dbg !581
  %add.ptr472 = getelementptr inbounds double* %colU0.11471, i64 %add.ptr469.sum, !dbg !581
  call void @llvm.dbg.value(metadata !{double* %add.ptr472}, i64 0, metadata !83), !dbg !581
  call void @ZVdotU23(i32 %187, double* %call60, double* %add.ptr, double* %colU0.11471, double* %add.ptr469, double* %add.ptr472, double* %arraydecay473) #6, !dbg !572
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !582
  %188 = load i32** %colindU, align 8, !dbg !582, !tbaa !419
  %arrayidx475 = getelementptr inbounds i32* %188, i64 %indvars.iv1541, !dbg !582
  %189 = load i32* %arrayidx475, align 4, !dbg !582, !tbaa !424
  %mul476 = shl nsw i32 %189, 1, !dbg !582
  call void @llvm.dbg.value(metadata !{i32 %mul476}, i64 0, metadata !98), !dbg !582
  %190 = add nsw i64 %indvars.iv1541, 1, !dbg !583
  %arrayidx479 = getelementptr inbounds i32* %188, i64 %190, !dbg !583
  %191 = load i32* %arrayidx479, align 4, !dbg !583, !tbaa !424
  %mul480 = shl nsw i32 %191, 1, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %mul480}, i64 0, metadata !99), !dbg !583
  %192 = add nsw i64 %indvars.iv1541, 2, !dbg !584
  %arrayidx483 = getelementptr inbounds i32* %188, i64 %192, !dbg !584
  %193 = load i32* %arrayidx483, align 4, !dbg !584, !tbaa !424
  %mul484 = shl nsw i32 %193, 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %mul484}, i64 0, metadata !100), !dbg !584
  %194 = load double* %arraydecay473, align 16, !dbg !574, !tbaa !500
  %idxprom486 = sext i32 %mul476 to i64, !dbg !574
  %add.ptr408.sum1397 = sub i64 %idxprom486, %idx.ext406, !dbg !574
  %arrayidx487 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1397, !dbg !574
  %195 = load double* %arrayidx487, align 8, !dbg !574, !tbaa !500
  %sub488 = fsub double %195, %194, !dbg !574
  store double %sub488, double* %arrayidx487, align 8, !dbg !574, !tbaa !500
  %196 = load double* %arrayidx489, align 8, !dbg !574, !tbaa !500
  %add4901398 = or i32 %mul476, 1, !dbg !574
  %idxprom491 = sext i32 %add4901398 to i64, !dbg !574
  %add.ptr408.sum1399 = sub i64 %idxprom491, %idx.ext406, !dbg !574
  %arrayidx492 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1399, !dbg !574
  %197 = load double* %arrayidx492, align 8, !dbg !574, !tbaa !500
  %sub493 = fsub double %197, %196, !dbg !574
  store double %sub493, double* %arrayidx492, align 8, !dbg !574, !tbaa !500
  %198 = load double* %arrayidx494, align 16, !dbg !575, !tbaa !500
  %idxprom495 = sext i32 %mul480 to i64, !dbg !575
  %add.ptr408.sum1400 = sub i64 %idxprom495, %idx.ext406, !dbg !575
  %arrayidx496 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1400, !dbg !575
  %199 = load double* %arrayidx496, align 8, !dbg !575, !tbaa !500
  %sub497 = fsub double %199, %198, !dbg !575
  store double %sub497, double* %arrayidx496, align 8, !dbg !575, !tbaa !500
  %200 = load double* %arrayidx498, align 8, !dbg !575, !tbaa !500
  %add4991401 = or i32 %mul480, 1, !dbg !575
  %idxprom500 = sext i32 %add4991401 to i64, !dbg !575
  %add.ptr408.sum1402 = sub i64 %idxprom500, %idx.ext406, !dbg !575
  %arrayidx501 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1402, !dbg !575
  %201 = load double* %arrayidx501, align 8, !dbg !575, !tbaa !500
  %sub502 = fsub double %201, %200, !dbg !575
  store double %sub502, double* %arrayidx501, align 8, !dbg !575, !tbaa !500
  %202 = load double* %arrayidx503, align 16, !dbg !576, !tbaa !500
  %idxprom504 = sext i32 %mul484 to i64, !dbg !576
  %add.ptr408.sum1403 = sub i64 %idxprom504, %idx.ext406, !dbg !576
  %arrayidx505 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1403, !dbg !576
  %203 = load double* %arrayidx505, align 8, !dbg !576, !tbaa !500
  %sub506 = fsub double %203, %202, !dbg !576
  store double %sub506, double* %arrayidx505, align 8, !dbg !576, !tbaa !500
  %204 = load double* %arrayidx507, align 8, !dbg !576, !tbaa !500
  %add5081404 = or i32 %mul484, 1, !dbg !576
  %idxprom509 = sext i32 %add5081404 to i64, !dbg !576
  %add.ptr408.sum1405 = sub i64 %idxprom509, %idx.ext406, !dbg !576
  %arrayidx510 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1405, !dbg !576
  %205 = load double* %arrayidx510, align 8, !dbg !576, !tbaa !500
  %sub511 = fsub double %205, %204, !dbg !576
  store double %sub511, double* %arrayidx510, align 8, !dbg !576, !tbaa !500
  %206 = load double* %arrayidx512, align 16, !dbg !577, !tbaa !500
  %add.ptr416.sum1406 = sub i64 %idxprom486, %idx.ext414, !dbg !577
  %arrayidx514 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1406, !dbg !577
  %207 = load double* %arrayidx514, align 8, !dbg !577, !tbaa !500
  %sub515 = fsub double %207, %206, !dbg !577
  store double %sub515, double* %arrayidx514, align 8, !dbg !577, !tbaa !500
  %208 = load double* %arrayidx516, align 8, !dbg !577, !tbaa !500
  %add.ptr416.sum1407 = sub i64 %idxprom491, %idx.ext414, !dbg !577
  %arrayidx519 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1407, !dbg !577
  %209 = load double* %arrayidx519, align 8, !dbg !577, !tbaa !500
  %sub520 = fsub double %209, %208, !dbg !577
  store double %sub520, double* %arrayidx519, align 8, !dbg !577, !tbaa !500
  %210 = load double* %arrayidx521, align 16, !dbg !578, !tbaa !500
  %add.ptr416.sum1408 = sub i64 %idxprom495, %idx.ext414, !dbg !578
  %arrayidx523 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1408, !dbg !578
  %211 = load double* %arrayidx523, align 8, !dbg !578, !tbaa !500
  %sub524 = fsub double %211, %210, !dbg !578
  store double %sub524, double* %arrayidx523, align 8, !dbg !578, !tbaa !500
  %212 = load double* %arrayidx525, align 8, !dbg !578, !tbaa !500
  %add.ptr416.sum1409 = sub i64 %idxprom500, %idx.ext414, !dbg !578
  %arrayidx528 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1409, !dbg !578
  %213 = load double* %arrayidx528, align 8, !dbg !578, !tbaa !500
  %sub529 = fsub double %213, %212, !dbg !578
  store double %sub529, double* %arrayidx528, align 8, !dbg !578, !tbaa !500
  %214 = load double* %arrayidx530, align 16, !dbg !579, !tbaa !500
  %add.ptr416.sum1410 = sub i64 %idxprom504, %idx.ext414, !dbg !579
  %arrayidx532 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1410, !dbg !579
  %215 = load double* %arrayidx532, align 8, !dbg !579, !tbaa !500
  %sub533 = fsub double %215, %214, !dbg !579
  store double %sub533, double* %arrayidx532, align 8, !dbg !579, !tbaa !500
  %216 = load double* %arrayidx534, align 8, !dbg !579, !tbaa !500
  %add.ptr416.sum1411 = sub i64 %idxprom509, %idx.ext414, !dbg !579
  %arrayidx537 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1411, !dbg !579
  %217 = load double* %arrayidx537, align 8, !dbg !579, !tbaa !500
  %sub538 = fsub double %217, %216, !dbg !579
  store double %sub538, double* %arrayidx537, align 8, !dbg !579, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !585
  %218 = load i32* %nrowU, align 4, !dbg !585, !tbaa !424
  %mul539 = shl nsw i32 %218, 1, !dbg !585
  %idx.ext540 = sext i32 %mul539 to i64, !dbg !585
  %add.ptr472.sum = add i64 %idx.ext540, %add.ptr469.sum, !dbg !585
  %add.ptr541 = getelementptr inbounds double* %colU0.11471, i64 %add.ptr472.sum, !dbg !585
  call void @llvm.dbg.value(metadata !{double* %add.ptr541}, i64 0, metadata !81), !dbg !585
  %add543 = add nsw i32 %jcolU.41472, 3, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %add543}, i64 0, metadata !64), !dbg !570
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !570
  %219 = load i32* %ncolU, align 4, !dbg !570, !tbaa !424
  %sub464 = add nsw i32 %219, -2, !dbg !570
  %cmp465 = icmp slt i32 %add543, %sub464, !dbg !570
  %indvars.iv.next1542 = add i64 %indvars.iv1541, 3, !dbg !570
  br i1 %cmp465, label %for.body466, label %for.end544, !dbg !570

for.end544:                                       ; preds = %for.body466, %for.end441
  %220 = phi i32 [ %184, %for.end441 ], [ %218, %for.body466 ]
  %sub464.lcssa = phi i32 [ %sub4641469, %for.end441 ], [ %sub464, %for.body466 ]
  %.lcssa = phi i32 [ %185, %for.end441 ], [ %219, %for.body466 ]
  %jcolU.4.lcssa = phi i32 [ %add462, %for.end441 ], [ %add543, %for.body466 ]
  %colU0.1.lcssa = phi double* [ %add.ptr461, %for.end441 ], [ %add.ptr541, %for.body466 ]
  %cmp546 = icmp eq i32 %jcolU.4.lcssa, %sub464.lcssa, !dbg !586
  br i1 %cmp546, label %if.then547, label %if.else595, !dbg !586

if.then547:                                       ; preds = %for.end544
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !587
  %mul548 = shl nsw i32 %220, 1, !dbg !587
  %idx.ext549 = sext i32 %mul548 to i64, !dbg !587
  %add.ptr550 = getelementptr inbounds double* %colU0.1.lcssa, i64 %idx.ext549, !dbg !587
  call void @llvm.dbg.value(metadata !{double* %add.ptr550}, i64 0, metadata !82), !dbg !587
  %arraydecay551 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !589
  call void @ZVdotU22(i32 %220, double* %call60, double* %add.ptr, double* %colU0.1.lcssa, double* %add.ptr550, double* %arraydecay551) #6, !dbg !589
  %idxprom552 = sext i32 %sub464.lcssa to i64, !dbg !590
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !590
  %221 = load i32** %colindU, align 8, !dbg !590, !tbaa !419
  %arrayidx553 = getelementptr inbounds i32* %221, i64 %idxprom552, !dbg !590
  %222 = load i32* %arrayidx553, align 4, !dbg !590, !tbaa !424
  %mul554 = shl nsw i32 %222, 1, !dbg !590
  call void @llvm.dbg.value(metadata !{i32 %mul554}, i64 0, metadata !98), !dbg !590
  %add555 = add nsw i32 %sub464.lcssa, 1, !dbg !591
  %idxprom556 = sext i32 %add555 to i64, !dbg !591
  %arrayidx557 = getelementptr inbounds i32* %221, i64 %idxprom556, !dbg !591
  %223 = load i32* %arrayidx557, align 4, !dbg !591, !tbaa !424
  %mul558 = shl nsw i32 %223, 1, !dbg !591
  call void @llvm.dbg.value(metadata !{i32 %mul558}, i64 0, metadata !99), !dbg !591
  %224 = load double* %arraydecay551, align 16, !dbg !592, !tbaa !500
  %idxprom560 = sext i32 %mul554 to i64, !dbg !592
  %add.ptr408.sum1387 = sub i64 %idxprom560, %idx.ext406, !dbg !592
  %arrayidx561 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1387, !dbg !592
  %225 = load double* %arrayidx561, align 8, !dbg !592, !tbaa !500
  %sub562 = fsub double %225, %224, !dbg !592
  store double %sub562, double* %arrayidx561, align 8, !dbg !592, !tbaa !500
  %arrayidx563 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !592
  %226 = load double* %arrayidx563, align 8, !dbg !592, !tbaa !500
  %add5641388 = or i32 %mul554, 1, !dbg !592
  %idxprom565 = sext i32 %add5641388 to i64, !dbg !592
  %add.ptr408.sum1389 = sub i64 %idxprom565, %idx.ext406, !dbg !592
  %arrayidx566 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1389, !dbg !592
  %227 = load double* %arrayidx566, align 8, !dbg !592, !tbaa !500
  %sub567 = fsub double %227, %226, !dbg !592
  store double %sub567, double* %arrayidx566, align 8, !dbg !592, !tbaa !500
  %arrayidx568 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2, !dbg !593
  %228 = load double* %arrayidx568, align 16, !dbg !593, !tbaa !500
  %idxprom569 = sext i32 %mul558 to i64, !dbg !593
  %add.ptr408.sum1390 = sub i64 %idxprom569, %idx.ext406, !dbg !593
  %arrayidx570 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1390, !dbg !593
  %229 = load double* %arrayidx570, align 8, !dbg !593, !tbaa !500
  %sub571 = fsub double %229, %228, !dbg !593
  store double %sub571, double* %arrayidx570, align 8, !dbg !593, !tbaa !500
  %arrayidx572 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3, !dbg !593
  %230 = load double* %arrayidx572, align 8, !dbg !593, !tbaa !500
  %add5731391 = or i32 %mul558, 1, !dbg !593
  %idxprom574 = sext i32 %add5731391 to i64, !dbg !593
  %add.ptr408.sum1392 = sub i64 %idxprom574, %idx.ext406, !dbg !593
  %arrayidx575 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1392, !dbg !593
  %231 = load double* %arrayidx575, align 8, !dbg !593, !tbaa !500
  %sub576 = fsub double %231, %230, !dbg !593
  store double %sub576, double* %arrayidx575, align 8, !dbg !593, !tbaa !500
  %arrayidx577 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4, !dbg !594
  %232 = load double* %arrayidx577, align 16, !dbg !594, !tbaa !500
  %add.ptr416.sum1393 = sub i64 %idxprom560, %idx.ext414, !dbg !594
  %arrayidx579 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1393, !dbg !594
  %233 = load double* %arrayidx579, align 8, !dbg !594, !tbaa !500
  %sub580 = fsub double %233, %232, !dbg !594
  store double %sub580, double* %arrayidx579, align 8, !dbg !594, !tbaa !500
  %arrayidx581 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5, !dbg !594
  %234 = load double* %arrayidx581, align 8, !dbg !594, !tbaa !500
  %add.ptr416.sum1394 = sub i64 %idxprom565, %idx.ext414, !dbg !594
  %arrayidx584 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1394, !dbg !594
  %235 = load double* %arrayidx584, align 8, !dbg !594, !tbaa !500
  %sub585 = fsub double %235, %234, !dbg !594
  store double %sub585, double* %arrayidx584, align 8, !dbg !594, !tbaa !500
  %arrayidx586 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 6, !dbg !595
  %236 = load double* %arrayidx586, align 16, !dbg !595, !tbaa !500
  %add.ptr416.sum1395 = sub i64 %idxprom569, %idx.ext414, !dbg !595
  %arrayidx588 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1395, !dbg !595
  %237 = load double* %arrayidx588, align 8, !dbg !595, !tbaa !500
  %sub589 = fsub double %237, %236, !dbg !595
  store double %sub589, double* %arrayidx588, align 8, !dbg !595, !tbaa !500
  %arrayidx590 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 7, !dbg !595
  %238 = load double* %arrayidx590, align 8, !dbg !595, !tbaa !500
  %add.ptr416.sum1396 = sub i64 %idxprom574, %idx.ext414, !dbg !595
  %arrayidx593 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1396, !dbg !595
  %239 = load double* %arrayidx593, align 8, !dbg !595, !tbaa !500
  %sub594 = fsub double %239, %238, !dbg !595
  store double %sub594, double* %arrayidx593, align 8, !dbg !595, !tbaa !500
  br label %for.cond891.preheader, !dbg !596

if.else595:                                       ; preds = %for.end544
  %sub596 = add nsw i32 %.lcssa, -1, !dbg !597
  %cmp597 = icmp eq i32 %jcolU.4.lcssa, %sub596, !dbg !597
  br i1 %cmp597, label %if.then598, label %for.cond891.preheader, !dbg !597

if.then598:                                       ; preds = %if.else595
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !598
  %arraydecay599 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !598
  call void @ZVdotU21(i32 %220, double* %call60, double* %add.ptr, double* %colU0.1.lcssa, double* %arraydecay599) #6, !dbg !598
  %idxprom600 = sext i32 %jcolU.4.lcssa to i64, !dbg !600
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !600
  %240 = load i32** %colindU, align 8, !dbg !600, !tbaa !419
  %arrayidx601 = getelementptr inbounds i32* %240, i64 %idxprom600, !dbg !600
  %241 = load i32* %arrayidx601, align 4, !dbg !600, !tbaa !424
  %mul602 = shl nsw i32 %241, 1, !dbg !600
  call void @llvm.dbg.value(metadata !{i32 %mul602}, i64 0, metadata !98), !dbg !600
  %242 = load double* %arraydecay599, align 16, !dbg !601, !tbaa !500
  %idxprom604 = sext i32 %mul602 to i64, !dbg !601
  %add.ptr408.sum1383 = sub i64 %idxprom604, %idx.ext406, !dbg !601
  %arrayidx605 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1383, !dbg !601
  %243 = load double* %arrayidx605, align 8, !dbg !601, !tbaa !500
  %sub606 = fsub double %243, %242, !dbg !601
  store double %sub606, double* %arrayidx605, align 8, !dbg !601, !tbaa !500
  %arrayidx607 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !601
  %244 = load double* %arrayidx607, align 8, !dbg !601, !tbaa !500
  %add6081384 = or i32 %mul602, 1, !dbg !601
  %idxprom609 = sext i32 %add6081384 to i64, !dbg !601
  %add.ptr408.sum1385 = sub i64 %idxprom609, %idx.ext406, !dbg !601
  %arrayidx610 = getelementptr inbounds double* %call404, i64 %add.ptr408.sum1385, !dbg !601
  %245 = load double* %arrayidx610, align 8, !dbg !601, !tbaa !500
  %sub611 = fsub double %245, %244, !dbg !601
  store double %sub611, double* %arrayidx610, align 8, !dbg !601, !tbaa !500
  %arrayidx612 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2, !dbg !602
  %246 = load double* %arrayidx612, align 16, !dbg !602, !tbaa !500
  %add.ptr416.sum = sub i64 %idxprom604, %idx.ext414, !dbg !602
  %arrayidx614 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum, !dbg !602
  %247 = load double* %arrayidx614, align 8, !dbg !602, !tbaa !500
  %sub615 = fsub double %247, %246, !dbg !602
  store double %sub615, double* %arrayidx614, align 8, !dbg !602, !tbaa !500
  %arrayidx616 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3, !dbg !602
  %248 = load double* %arrayidx616, align 8, !dbg !602, !tbaa !500
  %add.ptr416.sum1386 = sub i64 %idxprom609, %idx.ext414, !dbg !602
  %arrayidx619 = getelementptr inbounds double* %call412, i64 %add.ptr416.sum1386, !dbg !602
  %249 = load double* %arrayidx619, align 8, !dbg !602, !tbaa !500
  %sub620 = fsub double %249, %248, !dbg !602
  store double %sub620, double* %arrayidx619, align 8, !dbg !602, !tbaa !500
  br label %for.cond891.preheader, !dbg !603

if.else623:                                       ; preds = %for.end395
  %cmp624 = icmp eq i32 %irowUT.0.lcssa, %lastInU.0.lcssa1601, !dbg !604
  br i1 %cmp624, label %if.then625, label %for.cond891.preheader, !dbg !604

if.then625:                                       ; preds = %if.else623
  %idxprom626 = sext i32 %lastInU.0.lcssa1601 to i64, !dbg !605
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !605
  %250 = load i32** %colindU, align 8, !dbg !605, !tbaa !419
  %arrayidx627 = getelementptr inbounds i32* %250, i64 %idxprom626, !dbg !605
  %251 = load i32* %arrayidx627, align 4, !dbg !605, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %251}, i64 0, metadata !91), !dbg !605
  %call628 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %251) #6, !dbg !607
  %mul629 = shl nsw i32 %251, 1, !dbg !607
  %idx.ext630 = sext i32 %mul629 to i64, !dbg !607
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !608
  %252 = load i32* %nrowU, align 4, !dbg !608, !tbaa !424
  %mul633 = shl nsw i32 %252, 1, !dbg !608
  call void @DVzero(i32 %mul633, double* %call60) #6, !dbg !608
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call60, double* %rowUT0.0.lcssa) #6, !dbg !609
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !610
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !610
  %253 = load i32* %nrowU, align 4, !dbg !610, !tbaa !424
  %cmp6351490 = icmp sgt i32 %253, 0, !dbg !610
  br i1 %cmp6351490, label %for.body636, label %for.end648, !dbg !610

for.body636:                                      ; preds = %if.then625, %for.body636
  %indvars.iv1555 = phi i64 [ %indvars.iv.next1556, %for.body636 ], [ 0, %if.then625 ]
  %254 = trunc i64 %indvars.iv1555 to i32, !dbg !612
  %mul637 = shl nsw i32 %254, 1, !dbg !612
  %add6381380 = or i32 %mul637, 1, !dbg !612
  %idxprom639 = sext i32 %add6381380 to i64, !dbg !612
  %arrayidx640 = getelementptr inbounds double* %call60, i64 %idxprom639, !dbg !612
  %255 = load double* %arrayidx640, align 8, !dbg !612, !tbaa !500
  %sub641 = fsub double -0.000000e+00, %255, !dbg !612
  store double %sub641, double* %arrayidx640, align 8, !dbg !612, !tbaa !500
  %indvars.iv.next1556 = add i64 %indvars.iv1555, 1, !dbg !610
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !610
  %256 = trunc i64 %indvars.iv.next1556 to i32, !dbg !610
  %cmp635 = icmp slt i32 %256, %253, !dbg !610
  br i1 %cmp635, label %for.body636, label %for.end648, !dbg !610

for.end648:                                       ; preds = %for.body636, %if.then625
  call void @llvm.dbg.value(metadata !{double* %rowUT0.0.lcssa}, i64 0, metadata !81), !dbg !614
  call void @ZVdotU(i32 %253, double* %call60, double* %rowUT0.0.lcssa, double* %rsum, double* %isum) #6, !dbg !615
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !73), !dbg !616
  %257 = load double* %rsum, align 8, !dbg !616, !tbaa !500
  %258 = load double* %call628, align 8, !dbg !616, !tbaa !500
  %sub652 = fsub double %258, %257, !dbg !616
  store double %sub652, double* %call628, align 8, !dbg !616, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !617
  %259 = load i32* %nrowU, align 4, !dbg !617, !tbaa !424
  %mul653 = shl nsw i32 %259, 1, !dbg !617
  %idx.ext654 = sext i32 %mul653 to i64, !dbg !617
  %add.ptr655 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext654, !dbg !617
  call void @llvm.dbg.value(metadata !{double* %add.ptr655}, i64 0, metadata !81), !dbg !617
  %add656 = add i32 %lastInU.0.lcssa1601, 1, !dbg !618
  call void @llvm.dbg.value(metadata !{i32 %add656}, i64 0, metadata !64), !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !618
  %260 = load i32* %ncolU, align 4, !dbg !618, !tbaa !424
  %sub6581481 = add nsw i32 %260, -2, !dbg !618
  %cmp6591482 = icmp slt i32 %add656, %sub6581481, !dbg !618
  br i1 %cmp6591482, label %for.body660.lr.ph, label %for.end711, !dbg !618

for.body660.lr.ph:                                ; preds = %for.end648
  %arraydecay667 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !620
  %arrayidx683 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !622
  %arrayidx688 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2, !dbg !623
  %arrayidx692 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3, !dbg !623
  %arrayidx697 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 4, !dbg !624
  %arrayidx701 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 5, !dbg !624
  %261 = sext i32 %add656 to i64
  br label %for.body660, !dbg !618

for.body660:                                      ; preds = %for.body660.lr.ph, %for.body660
  %262 = phi i32 [ %259, %for.body660.lr.ph ], [ %281, %for.body660 ], !dbg !625
  %indvars.iv1550 = phi i64 [ %261, %for.body660.lr.ph ], [ %indvars.iv.next1551, %for.body660 ]
  %jcolU.51484 = phi i32 [ %add656, %for.body660.lr.ph ], [ %add710, %for.body660 ]
  %colU0.21483 = phi double* [ %add.ptr655, %for.body660.lr.ph ], [ %add.ptr708, %for.body660 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !625
  %mul661 = shl nsw i32 %262, 1, !dbg !625
  %idx.ext662 = sext i32 %mul661 to i64, !dbg !625
  %add.ptr663 = getelementptr inbounds double* %colU0.21483, i64 %idx.ext662, !dbg !625
  call void @llvm.dbg.value(metadata !{double* %add.ptr663}, i64 0, metadata !82), !dbg !625
  %add.ptr663.sum = shl nsw i64 %idx.ext662, 1, !dbg !626
  %add.ptr666 = getelementptr inbounds double* %colU0.21483, i64 %add.ptr663.sum, !dbg !626
  call void @llvm.dbg.value(metadata !{double* %add.ptr666}, i64 0, metadata !83), !dbg !626
  call void @ZVdotU13(i32 %262, double* %call60, double* %colU0.21483, double* %add.ptr663, double* %add.ptr666, double* %arraydecay667) #6, !dbg !620
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !627
  %263 = load i32** %colindU, align 8, !dbg !627, !tbaa !419
  %arrayidx669 = getelementptr inbounds i32* %263, i64 %indvars.iv1550, !dbg !627
  %264 = load i32* %arrayidx669, align 4, !dbg !627, !tbaa !424
  %mul670 = shl nsw i32 %264, 1, !dbg !627
  call void @llvm.dbg.value(metadata !{i32 %mul670}, i64 0, metadata !98), !dbg !627
  %265 = add nsw i64 %indvars.iv1550, 1, !dbg !628
  %arrayidx673 = getelementptr inbounds i32* %263, i64 %265, !dbg !628
  %266 = load i32* %arrayidx673, align 4, !dbg !628, !tbaa !424
  %mul674 = shl nsw i32 %266, 1, !dbg !628
  call void @llvm.dbg.value(metadata !{i32 %mul674}, i64 0, metadata !99), !dbg !628
  %267 = add nsw i64 %indvars.iv1550, 2, !dbg !629
  %arrayidx677 = getelementptr inbounds i32* %263, i64 %267, !dbg !629
  %268 = load i32* %arrayidx677, align 4, !dbg !629, !tbaa !424
  %mul678 = shl nsw i32 %268, 1, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %mul678}, i64 0, metadata !100), !dbg !629
  %269 = load double* %arraydecay667, align 16, !dbg !622, !tbaa !500
  %idxprom680 = sext i32 %mul670 to i64, !dbg !622
  %add.ptr632.sum1371 = sub i64 %idxprom680, %idx.ext630, !dbg !622
  %arrayidx681 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1371, !dbg !622
  %270 = load double* %arrayidx681, align 8, !dbg !622, !tbaa !500
  %sub682 = fsub double %270, %269, !dbg !622
  store double %sub682, double* %arrayidx681, align 8, !dbg !622, !tbaa !500
  %271 = load double* %arrayidx683, align 8, !dbg !622, !tbaa !500
  %add6841372 = or i32 %mul670, 1, !dbg !622
  %idxprom685 = sext i32 %add6841372 to i64, !dbg !622
  %add.ptr632.sum1373 = sub i64 %idxprom685, %idx.ext630, !dbg !622
  %arrayidx686 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1373, !dbg !622
  %272 = load double* %arrayidx686, align 8, !dbg !622, !tbaa !500
  %sub687 = fsub double %272, %271, !dbg !622
  store double %sub687, double* %arrayidx686, align 8, !dbg !622, !tbaa !500
  %273 = load double* %arrayidx688, align 16, !dbg !623, !tbaa !500
  %idxprom689 = sext i32 %mul674 to i64, !dbg !623
  %add.ptr632.sum1374 = sub i64 %idxprom689, %idx.ext630, !dbg !623
  %arrayidx690 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1374, !dbg !623
  %274 = load double* %arrayidx690, align 8, !dbg !623, !tbaa !500
  %sub691 = fsub double %274, %273, !dbg !623
  store double %sub691, double* %arrayidx690, align 8, !dbg !623, !tbaa !500
  %275 = load double* %arrayidx692, align 8, !dbg !623, !tbaa !500
  %add6931375 = or i32 %mul674, 1, !dbg !623
  %idxprom694 = sext i32 %add6931375 to i64, !dbg !623
  %add.ptr632.sum1376 = sub i64 %idxprom694, %idx.ext630, !dbg !623
  %arrayidx695 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1376, !dbg !623
  %276 = load double* %arrayidx695, align 8, !dbg !623, !tbaa !500
  %sub696 = fsub double %276, %275, !dbg !623
  store double %sub696, double* %arrayidx695, align 8, !dbg !623, !tbaa !500
  %277 = load double* %arrayidx697, align 16, !dbg !624, !tbaa !500
  %idxprom698 = sext i32 %mul678 to i64, !dbg !624
  %add.ptr632.sum1377 = sub i64 %idxprom698, %idx.ext630, !dbg !624
  %arrayidx699 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1377, !dbg !624
  %278 = load double* %arrayidx699, align 8, !dbg !624, !tbaa !500
  %sub700 = fsub double %278, %277, !dbg !624
  store double %sub700, double* %arrayidx699, align 8, !dbg !624, !tbaa !500
  %279 = load double* %arrayidx701, align 8, !dbg !624, !tbaa !500
  %add7021378 = or i32 %mul678, 1, !dbg !624
  %idxprom703 = sext i32 %add7021378 to i64, !dbg !624
  %add.ptr632.sum1379 = sub i64 %idxprom703, %idx.ext630, !dbg !624
  %arrayidx704 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1379, !dbg !624
  %280 = load double* %arrayidx704, align 8, !dbg !624, !tbaa !500
  %sub705 = fsub double %280, %279, !dbg !624
  store double %sub705, double* %arrayidx704, align 8, !dbg !624, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !630
  %281 = load i32* %nrowU, align 4, !dbg !630, !tbaa !424
  %mul706 = shl nsw i32 %281, 1, !dbg !630
  %idx.ext707 = sext i32 %mul706 to i64, !dbg !630
  %add.ptr666.sum = add i64 %idx.ext707, %add.ptr663.sum, !dbg !630
  %add.ptr708 = getelementptr inbounds double* %colU0.21483, i64 %add.ptr666.sum, !dbg !630
  call void @llvm.dbg.value(metadata !{double* %add.ptr708}, i64 0, metadata !81), !dbg !630
  %add710 = add nsw i32 %jcolU.51484, 3, !dbg !618
  call void @llvm.dbg.value(metadata !{i32 %add710}, i64 0, metadata !64), !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !618
  %282 = load i32* %ncolU, align 4, !dbg !618, !tbaa !424
  %sub658 = add nsw i32 %282, -2, !dbg !618
  %cmp659 = icmp slt i32 %add710, %sub658, !dbg !618
  %indvars.iv.next1551 = add i64 %indvars.iv1550, 3, !dbg !618
  br i1 %cmp659, label %for.body660, label %for.end711, !dbg !618

for.end711:                                       ; preds = %for.body660, %for.end648
  %283 = phi i32 [ %259, %for.end648 ], [ %281, %for.body660 ]
  %sub658.lcssa = phi i32 [ %sub6581481, %for.end648 ], [ %sub658, %for.body660 ]
  %.lcssa1480 = phi i32 [ %260, %for.end648 ], [ %282, %for.body660 ]
  %jcolU.5.lcssa = phi i32 [ %add656, %for.end648 ], [ %add710, %for.body660 ]
  %colU0.2.lcssa = phi double* [ %add.ptr655, %for.end648 ], [ %add.ptr708, %for.body660 ]
  %cmp713 = icmp eq i32 %jcolU.5.lcssa, %sub658.lcssa, !dbg !631
  br i1 %cmp713, label %if.then714, label %if.else744, !dbg !631

if.then714:                                       ; preds = %for.end711
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !632
  %mul715 = shl nsw i32 %283, 1, !dbg !632
  %idx.ext716 = sext i32 %mul715 to i64, !dbg !632
  %add.ptr717 = getelementptr inbounds double* %colU0.2.lcssa, i64 %idx.ext716, !dbg !632
  call void @llvm.dbg.value(metadata !{double* %add.ptr717}, i64 0, metadata !82), !dbg !632
  %arraydecay718 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !634
  call void @ZVdotU12(i32 %283, double* %call60, double* %colU0.2.lcssa, double* %add.ptr717, double* %arraydecay718) #6, !dbg !634
  %idxprom719 = sext i32 %sub658.lcssa to i64, !dbg !635
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !635
  %284 = load i32** %colindU, align 8, !dbg !635, !tbaa !419
  %arrayidx720 = getelementptr inbounds i32* %284, i64 %idxprom719, !dbg !635
  %285 = load i32* %arrayidx720, align 4, !dbg !635, !tbaa !424
  %mul721 = shl nsw i32 %285, 1, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %mul721}, i64 0, metadata !98), !dbg !635
  %add722 = add nsw i32 %sub658.lcssa, 1, !dbg !636
  %idxprom723 = sext i32 %add722 to i64, !dbg !636
  %arrayidx724 = getelementptr inbounds i32* %284, i64 %idxprom723, !dbg !636
  %286 = load i32* %arrayidx724, align 4, !dbg !636, !tbaa !424
  %mul725 = shl nsw i32 %286, 1, !dbg !636
  call void @llvm.dbg.value(metadata !{i32 %mul725}, i64 0, metadata !99), !dbg !636
  %287 = load double* %arraydecay718, align 16, !dbg !637, !tbaa !500
  %idxprom727 = sext i32 %mul721 to i64, !dbg !637
  %add.ptr632.sum1365 = sub i64 %idxprom727, %idx.ext630, !dbg !637
  %arrayidx728 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1365, !dbg !637
  %288 = load double* %arrayidx728, align 8, !dbg !637, !tbaa !500
  %sub729 = fsub double %288, %287, !dbg !637
  store double %sub729, double* %arrayidx728, align 8, !dbg !637, !tbaa !500
  %arrayidx730 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !637
  %289 = load double* %arrayidx730, align 8, !dbg !637, !tbaa !500
  %add7311366 = or i32 %mul721, 1, !dbg !637
  %idxprom732 = sext i32 %add7311366 to i64, !dbg !637
  %add.ptr632.sum1367 = sub i64 %idxprom732, %idx.ext630, !dbg !637
  %arrayidx733 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1367, !dbg !637
  %290 = load double* %arrayidx733, align 8, !dbg !637, !tbaa !500
  %sub734 = fsub double %290, %289, !dbg !637
  store double %sub734, double* %arrayidx733, align 8, !dbg !637, !tbaa !500
  %arrayidx735 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 2, !dbg !638
  %291 = load double* %arrayidx735, align 16, !dbg !638, !tbaa !500
  %idxprom736 = sext i32 %mul725 to i64, !dbg !638
  %add.ptr632.sum1368 = sub i64 %idxprom736, %idx.ext630, !dbg !638
  %arrayidx737 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1368, !dbg !638
  %292 = load double* %arrayidx737, align 8, !dbg !638, !tbaa !500
  %sub738 = fsub double %292, %291, !dbg !638
  store double %sub738, double* %arrayidx737, align 8, !dbg !638, !tbaa !500
  %arrayidx739 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 3, !dbg !638
  %293 = load double* %arrayidx739, align 8, !dbg !638, !tbaa !500
  %add7401369 = or i32 %mul725, 1, !dbg !638
  %idxprom741 = sext i32 %add7401369 to i64, !dbg !638
  %add.ptr632.sum1370 = sub i64 %idxprom741, %idx.ext630, !dbg !638
  %arrayidx742 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1370, !dbg !638
  %294 = load double* %arrayidx742, align 8, !dbg !638, !tbaa !500
  %sub743 = fsub double %294, %293, !dbg !638
  store double %sub743, double* %arrayidx742, align 8, !dbg !638, !tbaa !500
  br label %for.cond891.preheader, !dbg !639

if.else744:                                       ; preds = %for.end711
  %sub745 = add nsw i32 %.lcssa1480, -1, !dbg !640
  %cmp746 = icmp eq i32 %jcolU.5.lcssa, %sub745, !dbg !640
  br i1 %cmp746, label %if.then747, label %for.cond891.preheader, !dbg !640

if.then747:                                       ; preds = %if.else744
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !101), !dbg !641
  %arraydecay748 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 0, !dbg !641
  call void @ZVdotU11(i32 %283, double* %call60, double* %colU0.2.lcssa, double* %arraydecay748) #6, !dbg !641
  %idxprom749 = sext i32 %jcolU.5.lcssa to i64, !dbg !643
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !643
  %295 = load i32** %colindU, align 8, !dbg !643, !tbaa !419
  %arrayidx750 = getelementptr inbounds i32* %295, i64 %idxprom749, !dbg !643
  %296 = load i32* %arrayidx750, align 4, !dbg !643, !tbaa !424
  %mul751 = shl nsw i32 %296, 1, !dbg !643
  call void @llvm.dbg.value(metadata !{i32 %mul751}, i64 0, metadata !98), !dbg !643
  %297 = load double* %arraydecay748, align 16, !dbg !644, !tbaa !500
  %idxprom753 = sext i32 %mul751 to i64, !dbg !644
  %add.ptr632.sum = sub i64 %idxprom753, %idx.ext630, !dbg !644
  %arrayidx754 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum, !dbg !644
  %298 = load double* %arrayidx754, align 8, !dbg !644, !tbaa !500
  %sub755 = fsub double %298, %297, !dbg !644
  store double %sub755, double* %arrayidx754, align 8, !dbg !644, !tbaa !500
  %arrayidx756 = getelementptr inbounds [18 x double]* %sums, i64 0, i64 1, !dbg !644
  %299 = load double* %arrayidx756, align 8, !dbg !644, !tbaa !500
  %add7571363 = or i32 %mul751, 1, !dbg !644
  %idxprom758 = sext i32 %add7571363 to i64, !dbg !644
  %add.ptr632.sum1364 = sub i64 %idxprom758, %idx.ext630, !dbg !644
  %arrayidx759 = getelementptr inbounds double* %call628, i64 %add.ptr632.sum1364, !dbg !644
  %300 = load double* %arrayidx759, align 8, !dbg !644, !tbaa !500
  %sub760 = fsub double %300, %299, !dbg !644
  store double %sub760, double* %arrayidx759, align 8, !dbg !644, !tbaa !500
  br label %for.cond891.preheader, !dbg !645

if.then768:                                       ; preds = %for.end57
  call void @llvm.dbg.declare(metadata !{double* %isum769}, metadata !102), !dbg !646
  call void @llvm.dbg.declare(metadata !{double* %rsum770}, metadata !104), !dbg !646
  call void @llvm.dbg.declare(metadata !{double** %entU773}, metadata !107), !dbg !647
  call void @llvm.dbg.declare(metadata !{i32* %nentU}, metadata !116), !dbg !648
  call void @llvm.dbg.declare(metadata !{i32** %indU}, metadata !122), !dbg !649
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !125), !dbg !649
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU, i32* %nentU, i32** %sizes, i32** %indU, double** %entU773) #6, !dbg !650
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4, !dbg !651
  %301 = load i32* %nrow, align 4, !dbg !651, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %301}, i64 0, metadata !117), !dbg !651
  %mul782 = shl nsw i32 %301, 2, !dbg !652
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul782) #6, !dbg !652
  %call783 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !653
  call void @llvm.dbg.value(metadata !{double* %call783}, i64 0, metadata !109), !dbg !653
  %mul784 = shl nsw i32 %301, 1, !dbg !654
  %idx.ext785 = sext i32 %mul784 to i64, !dbg !654
  %add.ptr786 = getelementptr inbounds double* %call783, i64 %idx.ext785, !dbg !654
  call void @llvm.dbg.value(metadata !{double* %add.ptr786}, i64 0, metadata !110), !dbg !654
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !655
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !655
  %cmp7881524 = icmp sgt i32 %jcolU.0.lcssa, 0, !dbg !655
  br i1 %cmp7881524, label %for.body789.lr.ph, label %for.end795, !dbg !655

for.body789.lr.ph:                                ; preds = %if.then768
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !657
  %302 = load i32** %sizes, align 8, !dbg !657, !tbaa !419
  br label %for.body789, !dbg !655

for.body789:                                      ; preds = %for.body789, %for.body789.lr.ph
  %indvars.iv1584 = phi i64 [ 0, %for.body789.lr.ph ], [ %indvars.iv.next1585, %for.body789 ]
  %offset.01525 = phi i32 [ 0, %for.body789.lr.ph ], [ %add792, %for.body789 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !657
  %arrayidx791 = getelementptr inbounds i32* %302, i64 %indvars.iv1584, !dbg !657
  %303 = load i32* %arrayidx791, align 4, !dbg !657, !tbaa !424
  %add792 = add nsw i32 %303, %offset.01525, !dbg !657
  call void @llvm.dbg.value(metadata !{i32 %add792}, i64 0, metadata !118), !dbg !657
  %indvars.iv.next1585 = add i64 %indvars.iv1584, 1, !dbg !655
  %lftr.wideiv1586 = trunc i64 %indvars.iv.next1585 to i32, !dbg !655
  %exitcond1587 = icmp eq i32 %lftr.wideiv1586, %jcolU.0.lcssa, !dbg !655
  br i1 %exitcond1587, label %for.end795, label %for.body789, !dbg !655

for.end795:                                       ; preds = %for.body789, %if.then768
  %offset.0.lcssa = phi i32 [ 0, %if.then768 ], [ %add792, %for.body789 ]
  call void @llvm.dbg.value(metadata !{double** %entU773}, i64 0, metadata !107), !dbg !659
  call void @llvm.dbg.value(metadata !{double* %add.ptr798}, i64 0, metadata !108), !dbg !659
  call void @llvm.dbg.value(metadata !{i32** %indU}, i64 0, metadata !122), !dbg !660
  call void @llvm.dbg.value(metadata !{i32* %add.ptr800}, i64 0, metadata !124), !dbg !660
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !114), !dbg !661
  %cmp8021519 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa1601, !dbg !661
  br i1 %cmp8021519, label %for.cond891.preheader, label %for.body803.lr.ph, !dbg !661

for.body803.lr.ph:                                ; preds = %for.end795
  %mul796 = shl nsw i32 %offset.0.lcssa, 1, !dbg !659
  %idx.ext799 = sext i32 %offset.0.lcssa to i64, !dbg !660
  call void @llvm.dbg.value(metadata !{i32** %indU}, i64 0, metadata !122), !dbg !660
  %304 = load i32** %indU, align 8, !dbg !660, !tbaa !419
  %idx.ext797 = sext i32 %mul796 to i64, !dbg !659
  call void @llvm.dbg.value(metadata !{double** %entU773}, i64 0, metadata !107), !dbg !659
  %305 = load double** %entU773, align 8, !dbg !659, !tbaa !419
  %add.ptr800 = getelementptr inbounds i32* %304, i64 %idx.ext799, !dbg !660
  %add.ptr798 = getelementptr inbounds double* %305, i64 %idx.ext797, !dbg !659
  %cmp8381513 = icmp sgt i32 %301, 0, !dbg !663
  %306 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body803, !dbg !661

for.cond891.preheader:                            ; preds = %for.end795, %for.inc884, %if.else623, %if.else595, %if.then598, %if.then547, %if.then714, %if.then747, %if.else744
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !667
  %307 = load i32* %ncolU, align 4, !dbg !667, !tbaa !424
  %cmp8921467 = icmp slt i32 %jcolU.0.lcssa, %307, !dbg !667
  br i1 %cmp8921467, label %for.body893.lr.ph, label %return, !dbg !667

for.body893.lr.ph:                                ; preds = %for.cond891.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !669
  %308 = load i32** %colindU, align 8, !dbg !669, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !69), !dbg !669
  %309 = load i32** %colindT, align 8, !dbg !669, !tbaa !419
  %310 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body893, !dbg !667

for.body803:                                      ; preds = %for.inc884.for.body803_crit_edge, %for.body803.lr.ph
  %indvars.iv1582 = phi i64 [ %indvars.iv.next1583, %for.inc884.for.body803_crit_edge ], [ %306, %for.body803.lr.ph ]
  %indUT0.01523 = phi i32* [ %indUT0.1, %for.inc884.for.body803_crit_edge ], [ %add.ptr800, %for.body803.lr.ph ]
  %rowUT0774.01520 = phi double* [ %rowUT0774.1, %for.inc884.for.body803_crit_edge ], [ %add.ptr798, %for.body803.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !671
  %311 = load i32** %sizes, align 8, !dbg !671, !tbaa !419
  %arrayidx805 = getelementptr inbounds i32* %311, i64 %indvars.iv1582, !dbg !671
  %312 = load i32* %arrayidx805, align 4, !dbg !671, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %312}, i64 0, metadata !121), !dbg !671
  %cmp806 = icmp sgt i32 %312, 0, !dbg !671
  br i1 %cmp806, label %for.body818.lr.ph, label %for.body803.for.inc884_crit_edge, !dbg !671

for.body803.for.inc884_crit_edge:                 ; preds = %for.body803
  %.pre1600 = trunc i64 %indvars.iv1582 to i32, !dbg !661
  br label %for.inc884, !dbg !671

for.body818.lr.ph:                                ; preds = %for.body803
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !672
  %313 = load i32** %colindU, align 8, !dbg !672, !tbaa !419
  %arrayidx809 = getelementptr inbounds i32* %313, i64 %indvars.iv1582, !dbg !672
  %314 = load i32* %arrayidx809, align 4, !dbg !672, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %314}, i64 0, metadata !111), !dbg !672
  %call810 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %314) #6, !dbg !673
  %mul811 = shl nsw i32 %314, 1, !dbg !673
  %idx.ext812 = sext i32 %mul811 to i64, !dbg !673
  call void @DVzero(i32 %mul782, double* %call783) #6, !dbg !674
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !112), !dbg !675
  br label %for.body818, !dbg !675

for.body818:                                      ; preds = %for.body818, %for.body818.lr.ph
  %indvars.iv1572 = phi i64 [ 0, %for.body818.lr.ph ], [ %indvars.iv.next1573, %for.body818 ]
  %arrayidx820 = getelementptr inbounds i32* %indUT0.01523, i64 %indvars.iv1572, !dbg !677
  %315 = load i32* %arrayidx820, align 4, !dbg !677, !tbaa !424
  %mul821 = shl nsw i32 %315, 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %mul821}, i64 0, metadata !119), !dbg !677
  %add8221360 = or i32 %mul821, 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %add8221360}, i64 0, metadata !113), !dbg !677
  %316 = trunc i64 %indvars.iv1572 to i32, !dbg !679
  %mul823 = shl nsw i32 %316, 1, !dbg !679
  %idxprom824 = sext i32 %mul823 to i64, !dbg !679
  %arrayidx825 = getelementptr inbounds double* %rowUT0774.01520, i64 %idxprom824, !dbg !679
  %317 = load double* %arrayidx825, align 8, !dbg !679, !tbaa !500
  %idxprom826 = sext i32 %mul821 to i64, !dbg !679
  %add.ptr786.sum = add i64 %idxprom826, %idx.ext785, !dbg !679
  %arrayidx827 = getelementptr inbounds double* %call783, i64 %add.ptr786.sum, !dbg !679
  store double %317, double* %arrayidx827, align 8, !dbg !679, !tbaa !500
  %add8291361 = or i32 %mul823, 1, !dbg !680
  %idxprom830 = sext i32 %add8291361 to i64, !dbg !680
  %arrayidx831 = getelementptr inbounds double* %rowUT0774.01520, i64 %idxprom830, !dbg !680
  %318 = load double* %arrayidx831, align 8, !dbg !680, !tbaa !500
  %idxprom832 = sext i32 %add8221360 to i64, !dbg !680
  %add.ptr786.sum1362 = add i64 %idxprom832, %idx.ext785, !dbg !680
  %arrayidx833 = getelementptr inbounds double* %call783, i64 %add.ptr786.sum1362, !dbg !680
  store double %318, double* %arrayidx833, align 8, !dbg !680, !tbaa !500
  %indvars.iv.next1573 = add i64 %indvars.iv1572, 1, !dbg !675
  %lftr.wideiv = trunc i64 %indvars.iv.next1573 to i32, !dbg !675
  %exitcond = icmp eq i32 %lftr.wideiv, %312, !dbg !675
  br i1 %exitcond, label %for.end836, label %for.body818, !dbg !675

for.end836:                                       ; preds = %for.body818
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call783, double* %add.ptr786) #6, !dbg !681
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !112), !dbg !663
  br i1 %cmp8381513, label %for.body839, label %for.cond852.loopexit, !dbg !663

for.body839:                                      ; preds = %for.end836, %for.body839
  %indvars.iv1574 = phi i64 [ %indvars.iv.next1575, %for.body839 ], [ 0, %for.end836 ]
  %319 = trunc i64 %indvars.iv1574 to i32, !dbg !682
  %mul840 = shl nsw i32 %319, 1, !dbg !682
  %add8411359 = or i32 %mul840, 1, !dbg !682
  %idxprom842 = sext i32 %add8411359 to i64, !dbg !682
  %arrayidx843 = getelementptr inbounds double* %call783, i64 %idxprom842, !dbg !682
  %320 = load double* %arrayidx843, align 8, !dbg !682, !tbaa !500
  %sub844 = fsub double -0.000000e+00, %320, !dbg !682
  store double %sub844, double* %arrayidx843, align 8, !dbg !682, !tbaa !500
  %indvars.iv.next1575 = add i64 %indvars.iv1574, 1, !dbg !663
  %lftr.wideiv1576 = trunc i64 %indvars.iv.next1575 to i32, !dbg !663
  %exitcond1577 = icmp eq i32 %lftr.wideiv1576, %301, !dbg !663
  br i1 %exitcond1577, label %for.cond852.loopexit, label %for.body839, !dbg !663

for.cond852.loopexit:                             ; preds = %for.body839, %for.end836
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !684
  %321 = load i32* %ncolU, align 4, !dbg !684, !tbaa !424
  %322 = trunc i64 %indvars.iv1582 to i32, !dbg !684
  %cmp8531515 = icmp slt i32 %322, %321, !dbg !684
  br i1 %cmp8531515, label %for.body854, label %for.end877, !dbg !684

for.body854:                                      ; preds = %for.inc875, %for.cond852.loopexit
  %323 = phi i32 [ %321, %for.cond852.loopexit ], [ %332, %for.inc875 ]
  %indvars.iv1580 = phi i64 [ %indvars.iv1582, %for.cond852.loopexit ], [ %indvars.iv.next1581, %for.inc875 ], !dbg !661
  %indU0.01518 = phi i32* [ %indUT0.01523, %for.cond852.loopexit ], [ %indU0.1, %for.inc875 ]
  %colU0772.01516 = phi double* [ %rowUT0774.01520, %for.cond852.loopexit ], [ %colU0772.1, %for.inc875 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !686
  %324 = load i32** %sizes, align 8, !dbg !686, !tbaa !419
  %arrayidx856 = getelementptr inbounds i32* %324, i64 %indvars.iv1580, !dbg !686
  %325 = load i32* %arrayidx856, align 4, !dbg !686, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %325}, i64 0, metadata !120), !dbg !686
  %cmp857 = icmp sgt i32 %325, 0, !dbg !686
  br i1 %cmp857, label %if.then858, label %for.inc875, !dbg !686

if.then858:                                       ; preds = %for.body854
  call void @ZVdotiU(i32 %325, double* %call783, i32* %indU0.01518, double* %colU0772.01516, double* %rsum770, double* %isum769) #6, !dbg !688
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !690
  %326 = load i32** %colindU, align 8, !dbg !690, !tbaa !419
  %arrayidx860 = getelementptr inbounds i32* %326, i64 %indvars.iv1580, !dbg !690
  %327 = load i32* %arrayidx860, align 4, !dbg !690, !tbaa !424
  %mul861 = shl nsw i32 %327, 1, !dbg !690
  call void @llvm.dbg.value(metadata !{i32 %mul861}, i64 0, metadata !115), !dbg !690
  call void @llvm.dbg.value(metadata !{double* %rsum770}, i64 0, metadata !104), !dbg !691
  %328 = load double* %rsum770, align 8, !dbg !691, !tbaa !500
  %idxprom862 = sext i32 %mul861 to i64, !dbg !691
  %add.ptr814.sum = sub i64 %idxprom862, %idx.ext812, !dbg !691
  %arrayidx863 = getelementptr inbounds double* %call810, i64 %add.ptr814.sum, !dbg !691
  %329 = load double* %arrayidx863, align 8, !dbg !691, !tbaa !500
  %sub864 = fsub double %329, %328, !dbg !691
  store double %sub864, double* %arrayidx863, align 8, !dbg !691, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum769}, i64 0, metadata !102), !dbg !691
  %330 = load double* %isum769, align 8, !dbg !691, !tbaa !500
  %add8651357 = or i32 %mul861, 1, !dbg !691
  %idxprom866 = sext i32 %add8651357 to i64, !dbg !691
  %add.ptr814.sum1358 = sub i64 %idxprom866, %idx.ext812, !dbg !691
  %arrayidx867 = getelementptr inbounds double* %call810, i64 %add.ptr814.sum1358, !dbg !691
  %331 = load double* %arrayidx867, align 8, !dbg !691, !tbaa !500
  %sub868 = fsub double %331, %330, !dbg !691
  store double %sub868, double* %arrayidx867, align 8, !dbg !691, !tbaa !500
  %mul869 = shl nsw i32 %325, 1, !dbg !692
  %idx.ext870 = sext i32 %mul869 to i64, !dbg !692
  %add.ptr871 = getelementptr inbounds double* %colU0772.01516, i64 %idx.ext870, !dbg !692
  call void @llvm.dbg.value(metadata !{double* %add.ptr871}, i64 0, metadata !106), !dbg !692
  %idx.ext872 = sext i32 %325 to i64, !dbg !693
  %add.ptr873 = getelementptr inbounds i32* %indU0.01518, i64 %idx.ext872, !dbg !693
  call void @llvm.dbg.value(metadata !{i32* %add.ptr873}, i64 0, metadata !123), !dbg !693
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !684
  %.pre = load i32* %ncolU, align 4, !dbg !684, !tbaa !424
  br label %for.inc875, !dbg !694

for.inc875:                                       ; preds = %for.body854, %if.then858
  %332 = phi i32 [ %.pre, %if.then858 ], [ %323, %for.body854 ], !dbg !684
  %colU0772.1 = phi double* [ %add.ptr871, %if.then858 ], [ %colU0772.01516, %for.body854 ]
  %indU0.1 = phi i32* [ %add.ptr873, %if.then858 ], [ %indU0.01518, %for.body854 ]
  %indvars.iv.next1581 = add i64 %indvars.iv1580, 1, !dbg !684
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !684
  %333 = trunc i64 %indvars.iv.next1581 to i32, !dbg !684
  %cmp853 = icmp slt i32 %333, %332, !dbg !684
  br i1 %cmp853, label %for.body854, label %for.end877, !dbg !684

for.end877:                                       ; preds = %for.inc875, %for.cond852.loopexit
  %mul878 = shl nsw i32 %312, 1, !dbg !695
  %idx.ext879 = sext i32 %mul878 to i64, !dbg !695
  %add.ptr880 = getelementptr inbounds double* %rowUT0774.01520, i64 %idx.ext879, !dbg !695
  call void @llvm.dbg.value(metadata !{double* %add.ptr880}, i64 0, metadata !108), !dbg !695
  %idx.ext881 = sext i32 %312 to i64, !dbg !696
  %add.ptr882 = getelementptr inbounds i32* %indUT0.01523, i64 %idx.ext881, !dbg !696
  call void @llvm.dbg.value(metadata !{i32* %add.ptr882}, i64 0, metadata !124), !dbg !696
  br label %for.inc884, !dbg !697

for.inc884:                                       ; preds = %for.body803.for.inc884_crit_edge, %for.end877
  %.pre-phi = phi i32 [ %.pre1600, %for.body803.for.inc884_crit_edge ], [ %322, %for.end877 ], !dbg !661
  %rowUT0774.1 = phi double* [ %rowUT0774.01520, %for.body803.for.inc884_crit_edge ], [ %add.ptr880, %for.end877 ]
  %indUT0.1 = phi i32* [ %indUT0.01523, %for.body803.for.inc884_crit_edge ], [ %add.ptr882, %for.end877 ]
  %cmp802 = icmp slt i32 %.pre-phi, %lastInU.0.lcssa1601, !dbg !661
  br i1 %cmp802, label %for.inc884.for.body803_crit_edge, label %for.cond891.preheader, !dbg !661

for.inc884.for.body803_crit_edge:                 ; preds = %for.inc884
  %indvars.iv.next1583 = add i64 %indvars.iv1582, 1, !dbg !661
  br label %for.body803, !dbg !661

if.else887:                                       ; preds = %for.end57
  %334 = load %struct._IO_FILE** @stderr, align 8, !dbg !698, !tbaa !419
  %call888 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([83 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !698
  call void @exit(i32 -1) #7, !dbg !700
  unreachable, !dbg !700

for.body893:                                      ; preds = %for.body893.lr.ph, %for.body893
  %indvars.iv = phi i64 [ %310, %for.body893.lr.ph ], [ %indvars.iv.next, %for.body893 ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !70), !dbg !669
  %arrayidx895 = getelementptr inbounds i32* %308, i64 %indvars.iv, !dbg !669
  %335 = load i32* %arrayidx895, align 4, !dbg !669, !tbaa !424
  %idxprom896 = sext i32 %335 to i64, !dbg !669
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !69), !dbg !669
  %arrayidx897 = getelementptr inbounds i32* %309, i64 %idxprom896, !dbg !669
  %336 = load i32* %arrayidx897, align 4, !dbg !669, !tbaa !424
  store i32 %336, i32* %arrayidx895, align 4, !dbg !669, !tbaa !424
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !667
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !68), !dbg !667
  %337 = load i32* %ncolU, align 4, !dbg !667, !tbaa !424
  %338 = trunc i64 %indvars.iv.next to i32, !dbg !667
  %cmp892 = icmp slt i32 %338, %337, !dbg !667
  br i1 %cmp892, label %for.body893, label %return, !dbg !667

return:                                           ; preds = %for.cond891.preheader, %for.body893, %for.end
  ret void, !dbg !701
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare double* @Chv_diagLocation(%struct._Chv*, i32) #4

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: optsize
declare void @SubMtx_scale3vec(%struct._SubMtx*, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU(i32, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU33(i32, double*, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU32(i32, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU31(i32, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @SubMtx_scale2vec(%struct._SubMtx*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU23(i32, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU22(i32, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU21(i32, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @SubMtx_scale1vec(%struct._SubMtx*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU13(i32, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU12(i32, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @ZVdotU11(i32, double*, double*, double*) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @ZVdotiU(i32, double*, i32*, double*, double*, double*) #4

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
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvT}, i64 0, metadata !128), !dbg !702
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxD}, i64 0, metadata !129), !dbg !703
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxU}, i64 0, metadata !130), !dbg !704
  call void @llvm.dbg.value(metadata !{%struct._DV* %tempDV}, i64 0, metadata !131), !dbg !705
  call void @llvm.dbg.declare(metadata !{i32* %ncolT}, metadata !138), !dbg !706
  call void @llvm.dbg.declare(metadata !{i32* %ncolU}, metadata !139), !dbg !706
  call void @llvm.dbg.declare(metadata !{i32** %colindT}, metadata !140), !dbg !707
  call void @llvm.dbg.declare(metadata !{i32** %colindU}, metadata !141), !dbg !707
  %cmp = icmp eq %struct._Chv* %chvT, null, !dbg !708
  %cmp1 = icmp eq %struct._SubMtx* %mtxD, null, !dbg !708
  %or.cond = or i1 %cmp, %cmp1, !dbg !708
  %cmp3 = icmp eq %struct._SubMtx* %mtxU, null, !dbg !708
  %or.cond2256 = or i1 %or.cond, %cmp3, !dbg !708
  %cmp5 = icmp eq %struct._DV* %tempDV, null, !dbg !708
  %or.cond2257 = or i1 %or.cond2256, %cmp5, !dbg !708
  br i1 %or.cond2257, label %if.then, label %if.end, !dbg !708

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !709, !tbaa !419
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !709
  call void @exit(i32 -1) #7, !dbg !711
  unreachable, !dbg !711

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 4, !dbg !712
  %1 = load i32* %type, align 4, !dbg !712, !tbaa !424
  switch i32 %1, label %if.else27 [
    i32 1, label %if.then7
    i32 2, label %if.then18
  ], !dbg !712

if.then7:                                         ; preds = %if.end
  %type8 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0, !dbg !713
  %2 = load i32* %type8, align 4, !dbg !713, !tbaa !424
  %cmp9 = icmp eq i32 %2, 1, !dbg !713
  br i1 %cmp9, label %lor.lhs.false10, label %if.then13, !dbg !713

lor.lhs.false10:                                  ; preds = %if.then7
  %type11 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0, !dbg !713
  %3 = load i32* %type11, align 4, !dbg !713, !tbaa !424
  %cmp12 = icmp eq i32 %3, 1, !dbg !713
  br i1 %cmp12, label %if.end30, label %if.then13, !dbg !713

if.then13:                                        ; preds = %lor.lhs.false10, %if.then7
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !715, !tbaa !419
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([87 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !715
  call void @exit(i32 -1) #7, !dbg !717
  unreachable, !dbg !717

if.then18:                                        ; preds = %if.end
  %type19 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0, !dbg !718
  %5 = load i32* %type19, align 4, !dbg !718, !tbaa !424
  %cmp20 = icmp eq i32 %5, 2, !dbg !718
  br i1 %cmp20, label %lor.lhs.false21, label %if.then24, !dbg !718

lor.lhs.false21:                                  ; preds = %if.then18
  %type22 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0, !dbg !718
  %6 = load i32* %type22, align 4, !dbg !718, !tbaa !424
  %cmp23 = icmp eq i32 %6, 2, !dbg !718
  br i1 %cmp23, label %if.end30, label %if.then24, !dbg !718

if.then24:                                        ; preds = %lor.lhs.false21, %if.then18
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !720, !tbaa !419
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([90 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !720
  call void @exit(i32 -1) #7, !dbg !722
  unreachable, !dbg !722

if.else27:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !723, !tbaa !419
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !723
  call void @exit(i32 -1) #7, !dbg !725
  unreachable, !dbg !725

if.end30:                                         ; preds = %lor.lhs.false21, %lor.lhs.false10
  call void @Chv_columnIndices(%struct._Chv* %chvT, i32* %ncolT, i32** %colindT) #6, !dbg !726
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxU, i32* %ncolU, i32** %colindU) #6, !dbg !727
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !140), !dbg !728
  %9 = load i32** %colindT, align 8, !dbg !728, !tbaa !419
  %10 = load i32* %9, align 4, !dbg !728, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !132), !dbg !728
  %nD = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 1, !dbg !729
  %11 = load i32* %nD, align 4, !dbg !729, !tbaa !424
  %sub = add nsw i32 %11, -1, !dbg !729
  %idxprom = sext i32 %sub to i64, !dbg !729
  %arrayidx31 = getelementptr inbounds i32* %9, i64 %idxprom, !dbg !729
  %12 = load i32* %arrayidx31, align 4, !dbg !729, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !136), !dbg !729
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !730
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !730
  %13 = load i32* %ncolU, align 4, !dbg !730, !tbaa !424
  %cmp322362 = icmp sgt i32 %13, 0, !dbg !730
  br i1 %cmp322362, label %for.body.lr.ph, label %for.end, !dbg !730

for.body.lr.ph:                                   ; preds = %if.end30
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !732
  %14 = load i32** %colindU, align 8, !dbg !732, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !730
  br label %for.body, !dbg !730

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !730
  %15 = trunc i64 %indvars.iv.next2456 to i32, !dbg !730
  %cmp32 = icmp slt i32 %15, %13, !dbg !730
  br i1 %cmp32, label %for.body, label %for.end, !dbg !730

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv2455 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next2456, %for.cond ]
  %jcolU.02363 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !732
  %arrayidx34 = getelementptr inbounds i32* %14, i64 %indvars.iv2455, !dbg !732
  %16 = load i32* %arrayidx34, align 4, !dbg !732, !tbaa !424
  %cmp35 = icmp sgt i32 %10, %16, !dbg !732
  %cmp38 = icmp sgt i32 %16, %12, !dbg !732
  %or.cond2258 = or i1 %cmp35, %cmp38, !dbg !732
  %indvars.iv.next2456 = add i64 %indvars.iv2455, 1, !dbg !730
  %inc = add nsw i32 %jcolU.02363, 1, !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !135), !dbg !730
  br i1 %or.cond2258, label %for.cond, label %for.end, !dbg !732

for.end:                                          ; preds = %for.cond, %for.body, %if.end30
  %jcolU.0.lcssa = phi i32 [ 0, %if.end30 ], [ %jcolU.02363, %for.body ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !133), !dbg !734
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !734
  %cmp41 = icmp eq i32 %jcolU.0.lcssa, %13, !dbg !734
  br i1 %cmp41, label %return, label %for.cond44.preheader, !dbg !734

for.cond44.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !735
  %cmp452357 = icmp slt i32 %jcolU.0.lcssa, %13, !dbg !735
  br i1 %cmp452357, label %for.body46.lr.ph, label %for.end69, !dbg !735

for.body46.lr.ph:                                 ; preds = %for.cond44.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !737
  %17 = load i32** %colindU, align 8, !dbg !737, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !735
  %18 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body46, !dbg !735

for.cond44:                                       ; preds = %for.body46
  %inc54 = add nsw i32 %jcolU.12359, 1, !dbg !735
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !735
  %19 = trunc i64 %indvars.iv.next2452 to i32, !dbg !735
  %cmp45 = icmp slt i32 %19, %13, !dbg !735
  %20 = trunc i64 %indvars.iv2451 to i32, !dbg !735
  br i1 %cmp45, label %for.body46, label %for.cond56.preheader, !dbg !735

for.cond56.preheader:                             ; preds = %for.cond44, %for.body46
  %lastInU.0.lcssa = phi i32 [ %lastInU.02358, %for.body46 ], [ %jcolU.12359, %for.cond44 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !739
  br i1 %cmp452357, label %while.cond.preheader.lr.ph, label %for.end69, !dbg !739

while.cond.preheader.lr.ph:                       ; preds = %for.cond56.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !741
  %21 = load i32** %colindU, align 8, !dbg !741, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !140), !dbg !741
  %22 = sext i32 %jcolU.0.lcssa to i64
  br label %while.cond.preheader, !dbg !739

for.body46:                                       ; preds = %for.body46.lr.ph, %for.cond44
  %indvars.iv2451 = phi i64 [ %18, %for.body46.lr.ph ], [ %indvars.iv.next2452, %for.cond44 ]
  %jcolU.12359 = phi i32 [ %jcolU.0.lcssa, %for.body46.lr.ph ], [ %inc54, %for.cond44 ]
  %lastInU.02358 = phi i32 [ %jcolU.0.lcssa, %for.body46.lr.ph ], [ %20, %for.cond44 ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !737
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv2451, !dbg !737
  %23 = load i32* %arrayidx48, align 4, !dbg !737, !tbaa !424
  %cmp49 = icmp sgt i32 %23, %12, !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %jcolU.12359}, i64 0, metadata !137), !dbg !743
  %indvars.iv.next2452 = add i64 %indvars.iv2451, 1, !dbg !735
  call void @llvm.dbg.value(metadata !{i32 %inc54}, i64 0, metadata !135), !dbg !735
  br i1 %cmp49, label %for.cond56.preheader, label %for.cond44, !dbg !737

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv2447 = phi i64 [ %22, %while.cond.preheader.lr.ph ], [ %indvars.iv.next2448, %while.end ]
  %jcolT.02356 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jcolT.1, %while.end ]
  %arrayidx60 = getelementptr inbounds i32* %21, i64 %indvars.iv2447, !dbg !741
  %24 = load i32* %arrayidx60, align 4, !dbg !741, !tbaa !424
  %25 = sext i32 %jcolT.02356 to i64
  br label %while.cond, !dbg !741

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %indvars.iv2445 = phi i64 [ %indvars.iv.next2446, %while.cond ], [ %25, %while.cond.preheader ]
  %jcolT.1 = phi i32 [ %inc64, %while.cond ], [ %jcolT.02356, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !741
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !140), !dbg !741
  %arrayidx62 = getelementptr inbounds i32* %9, i64 %indvars.iv2445, !dbg !741
  %26 = load i32* %arrayidx62, align 4, !dbg !741, !tbaa !424
  %cmp63 = icmp eq i32 %24, %26, !dbg !741
  %indvars.iv.next2446 = add i64 %indvars.iv2445, 1, !dbg !741
  %inc64 = add nsw i32 %jcolT.1, 1, !dbg !745
  call void @llvm.dbg.value(metadata !{i32 %inc64}, i64 0, metadata !134), !dbg !745
  br i1 %cmp63, label %while.end, label %while.cond, !dbg !741

while.end:                                        ; preds = %while.cond
  store i32 %jcolT.1, i32* %arrayidx60, align 4, !dbg !747, !tbaa !424
  %indvars.iv.next2448 = add i64 %indvars.iv2447, 1, !dbg !739
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !739
  %27 = load i32* %ncolU, align 4, !dbg !739, !tbaa !424
  %28 = trunc i64 %indvars.iv.next2448 to i32, !dbg !739
  %cmp57 = icmp slt i32 %28, %27, !dbg !739
  br i1 %cmp57, label %while.cond.preheader, label %for.end69, !dbg !739

for.end69:                                        ; preds = %for.cond44.preheader, %while.end, %for.cond56.preheader
  %lastInU.0.lcssa2461 = phi i32 [ %lastInU.0.lcssa, %for.cond56.preheader ], [ %lastInU.0.lcssa, %while.end ], [ %jcolU.0.lcssa, %for.cond44.preheader ]
  %29 = load i32* %type, align 4, !dbg !748, !tbaa !424
  switch i32 %29, label %for.cond1373.preheader [
    i32 1, label %if.then72
    i32 2, label %if.then554
  ], !dbg !748

if.then72:                                        ; preds = %for.end69
  %mode = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1, !dbg !749
  %30 = load i32* %mode, align 4, !dbg !749, !tbaa !424
  switch i32 %30, label %if.else547 [
    i32 1, label %if.then74
    i32 3, label %if.then464
  ], !dbg !749

if.then74:                                        ; preds = %if.then72
  %31 = bitcast [9 x double]* %sums to i8*, !dbg !750
  call void @llvm.lifetime.start(i64 72, i8* %31) #5, !dbg !750
  call void @llvm.dbg.declare(metadata !{[9 x double]* %sums}, metadata !142), !dbg !750
  call void @llvm.dbg.declare(metadata !{double** %entU}, metadata !154), !dbg !751
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !164), !dbg !752
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !165), !dbg !752
  call void @llvm.dbg.declare(metadata !{i32* %nrowU}, metadata !170), !dbg !753
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU, i32* %ncolU, i32* %inc1, i32* %inc2, double** %entU) #6, !dbg !754
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !755
  %32 = load i32* %nrowU, align 4, !dbg !755, !tbaa !424
  %mul = mul nsw i32 %32, 3, !dbg !755
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul) #6, !dbg !755
  %call75 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !756
  call void @llvm.dbg.value(metadata !{double* %call75}, i64 0, metadata !158), !dbg !756
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !757
  %33 = load i32* %nrowU, align 4, !dbg !757, !tbaa !424
  %idx.ext = sext i32 %33 to i64, !dbg !757
  %add.ptr = getelementptr inbounds double* %call75, i64 %idx.ext, !dbg !757
  call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !159), !dbg !757
  %add.ptr.sum = shl nsw i64 %idx.ext, 1, !dbg !758
  %add.ptr77 = getelementptr inbounds double* %call75, i64 %add.ptr.sum, !dbg !758
  call void @llvm.dbg.value(metadata !{double* %add.ptr77}, i64 0, metadata !160), !dbg !758
  call void @llvm.dbg.value(metadata !{double** %entU}, i64 0, metadata !154), !dbg !759
  %34 = load double** %entU, align 8, !dbg !759, !tbaa !419
  %mul78 = mul nsw i32 %33, %jcolU.0.lcssa, !dbg !759
  %idx.ext79 = sext i32 %mul78 to i64, !dbg !759
  %add.ptr80 = getelementptr inbounds double* %34, i64 %idx.ext79, !dbg !759
  call void @llvm.dbg.value(metadata !{double* %add.ptr80}, i64 0, metadata !155), !dbg !759
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !166), !dbg !760
  %sub82 = add nsw i32 %lastInU.0.lcssa2461, -2, !dbg !760
  %cmp832286 = icmp sgt i32 %jcolU.0.lcssa, %sub82, !dbg !760
  br i1 %cmp832286, label %for.end252, label %for.body84.lr.ph, !dbg !760

for.body84.lr.ph:                                 ; preds = %if.then74
  %arraydecay197 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !762
  %arrayidx207 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !765
  %arrayidx211 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !766
  %arrayidx215 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3, !dbg !767
  %arrayidx219 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4, !dbg !768
  %arrayidx223 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5, !dbg !769
  %arrayidx175 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 6, !dbg !770
  %arrayidx179 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 7, !dbg !773
  %arrayidx183 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 8, !dbg !774
  %35 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body84, !dbg !760

for.body84:                                       ; preds = %if.end247, %for.body84.lr.ph
  %36 = phi i32 [ %33, %for.body84.lr.ph ], [ %112, %if.end247 ]
  %indvars.iv2388 = phi i64 [ %35, %for.body84.lr.ph ], [ %indvars.iv.next2389, %if.end247 ]
  %indvars.iv2381.in = phi i64 [ %35, %for.body84.lr.ph ], [ %indvars.iv2381, %if.end247 ]
  %rowUT0.02288 = phi double* [ %add.ptr80, %for.body84.lr.ph ], [ %add.ptr249, %if.end247 ]
  %irowUT.02287 = phi i32 [ %jcolU.0.lcssa, %for.body84.lr.ph ], [ %add134, %if.end247 ]
  %indvars.iv2381 = add i64 %indvars.iv2381.in, 3, !dbg !760
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !775
  %idx.ext85 = sext i32 %36 to i64, !dbg !775
  %add.ptr86 = getelementptr inbounds double* %rowUT0.02288, i64 %idx.ext85, !dbg !775
  call void @llvm.dbg.value(metadata !{double* %add.ptr86}, i64 0, metadata !156), !dbg !775
  %add.ptr86.sum = shl nsw i64 %idx.ext85, 1, !dbg !776
  %add.ptr88 = getelementptr inbounds double* %rowUT0.02288, i64 %add.ptr86.sum, !dbg !776
  call void @llvm.dbg.value(metadata !{double* %add.ptr88}, i64 0, metadata !157), !dbg !776
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !777
  %37 = load i32** %colindU, align 8, !dbg !777, !tbaa !419
  %arrayidx90 = getelementptr inbounds i32* %37, i64 %indvars.iv2388, !dbg !777
  %38 = load i32* %arrayidx90, align 4, !dbg !777, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !161), !dbg !777
  %call91 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %38) #6, !dbg !778
  %idx.ext92 = sext i32 %38 to i64, !dbg !778
  %39 = add nsw i64 %indvars.iv2388, 1, !dbg !779
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !779
  %40 = load i32** %colindU, align 8, !dbg !779, !tbaa !419
  %arrayidx95 = getelementptr inbounds i32* %40, i64 %39, !dbg !779
  %41 = load i32* %arrayidx95, align 4, !dbg !779, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !162), !dbg !779
  %call96 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %41) #6, !dbg !780
  %idx.ext97 = sext i32 %41 to i64, !dbg !780
  %42 = add nsw i64 %indvars.iv2388, 2, !dbg !781
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !781
  %43 = load i32** %colindU, align 8, !dbg !781, !tbaa !419
  %arrayidx102 = getelementptr inbounds i32* %43, i64 %42, !dbg !781
  %44 = load i32* %arrayidx102, align 4, !dbg !781, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !163), !dbg !781
  %call103 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %44) #6, !dbg !782
  %idx.ext104 = sext i32 %44 to i64, !dbg !782
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !783
  %45 = load i32* %nrowU, align 4, !dbg !783, !tbaa !424
  %mul107 = mul nsw i32 %45, 3, !dbg !783
  call void @DVzero(i32 %mul107, double* %call75) #6, !dbg !783
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call75, double* %add.ptr, double* %add.ptr77, double* %rowUT0.02288, double* %add.ptr86, double* %add.ptr88) #6, !dbg !784
  call void @llvm.dbg.value(metadata !{double* %rowUT0.0.lcssa}, i64 0, metadata !151), !dbg !785
  call void @llvm.dbg.value(metadata !{double* %add.ptr86}, i64 0, metadata !152), !dbg !786
  call void @llvm.dbg.value(metadata !{double* %add.ptr88}, i64 0, metadata !153), !dbg !787
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !788
  %46 = load i32* %nrowU, align 4, !dbg !788, !tbaa !424
  %call108 = call double @DVdot(i32 %46, double* %call75, double* %rowUT0.02288) #6, !dbg !788
  %47 = load double* %call91, align 8, !dbg !788, !tbaa !500
  %sub111 = fsub double %47, %call108, !dbg !788
  store double %sub111, double* %call91, align 8, !dbg !788, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !789
  %48 = load i32* %nrowU, align 4, !dbg !789, !tbaa !424
  %call112 = call double @DVdot(i32 %48, double* %call75, double* %add.ptr86) #6, !dbg !789
  %add.ptr93.sum = sub i64 %idx.ext97, %idx.ext92, !dbg !789
  %arrayidx114 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum, !dbg !789
  %49 = load double* %arrayidx114, align 8, !dbg !789, !tbaa !500
  %sub115 = fsub double %49, %call112, !dbg !789
  store double %sub115, double* %arrayidx114, align 8, !dbg !789, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !790
  %50 = load i32* %nrowU, align 4, !dbg !790, !tbaa !424
  %call116 = call double @DVdot(i32 %50, double* %call75, double* %add.ptr88) #6, !dbg !790
  %add.ptr93.sum2237 = sub i64 %idx.ext104, %idx.ext92, !dbg !790
  %arrayidx118 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2237, !dbg !790
  %51 = load double* %arrayidx118, align 8, !dbg !790, !tbaa !500
  %sub119 = fsub double %51, %call116, !dbg !790
  store double %sub119, double* %arrayidx118, align 8, !dbg !790, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !791
  %52 = load i32* %nrowU, align 4, !dbg !791, !tbaa !424
  %call120 = call double @DVdot(i32 %52, double* %add.ptr, double* %add.ptr86) #6, !dbg !791
  %53 = load double* %call96, align 8, !dbg !791, !tbaa !500
  %sub123 = fsub double %53, %call120, !dbg !791
  store double %sub123, double* %call96, align 8, !dbg !791, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !792
  %54 = load i32* %nrowU, align 4, !dbg !792, !tbaa !424
  %call124 = call double @DVdot(i32 %54, double* %add.ptr, double* %add.ptr88) #6, !dbg !792
  %add.ptr99.sum = sub i64 %idx.ext104, %idx.ext97, !dbg !792
  %arrayidx126 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum, !dbg !792
  %55 = load double* %arrayidx126, align 8, !dbg !792, !tbaa !500
  %sub127 = fsub double %55, %call124, !dbg !792
  store double %sub127, double* %arrayidx126, align 8, !dbg !792, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !793
  %56 = load i32* %nrowU, align 4, !dbg !793, !tbaa !424
  %call128 = call double @DVdot(i32 %56, double* %add.ptr77, double* %add.ptr88) #6, !dbg !793
  %57 = load double* %call103, align 8, !dbg !793, !tbaa !500
  %sub131 = fsub double %57, %call128, !dbg !793
  store double %sub131, double* %call103, align 8, !dbg !793, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !794
  %58 = load i32* %nrowU, align 4, !dbg !794, !tbaa !424
  %idx.ext132 = sext i32 %58 to i64, !dbg !794
  %add.ptr88.sum = add i64 %idx.ext132, %add.ptr86.sum, !dbg !794
  %add.ptr133 = getelementptr inbounds double* %rowUT0.02288, i64 %add.ptr88.sum, !dbg !794
  call void @llvm.dbg.value(metadata !{double* %add.ptr133}, i64 0, metadata !151), !dbg !794
  %indvars.iv.next2389 = add i64 %indvars.iv2388, 3, !dbg !760
  %add134 = add nsw i32 %irowUT.02287, 3, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %add134}, i64 0, metadata !135), !dbg !795
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !795
  %59 = load i32* %ncolU, align 4, !dbg !795, !tbaa !424
  %sub1362278 = add nsw i32 %59, -2, !dbg !795
  %60 = trunc i64 %indvars.iv.next2389 to i32, !dbg !795
  %cmp1372279 = icmp slt i32 %60, %sub1362278, !dbg !795
  br i1 %cmp1372279, label %for.body138, label %for.end191, !dbg !795

for.body138:                                      ; preds = %for.body84, %for.body138
  %61 = phi i32 [ %86, %for.body138 ], [ %58, %for.body84 ], !dbg !796
  %indvars.iv2383 = phi i64 [ %indvars.iv.next2384, %for.body138 ], [ %indvars.iv2381, %for.body84 ], !dbg !760
  %jcolU.32281 = phi i32 [ %add190, %for.body138 ], [ %add134, %for.body84 ]
  %colU0.02280 = phi double* [ %add.ptr188, %for.body138 ], [ %add.ptr133, %for.body84 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !796
  %idx.ext139 = sext i32 %61 to i64, !dbg !796
  %add.ptr140 = getelementptr inbounds double* %colU0.02280, i64 %idx.ext139, !dbg !796
  call void @llvm.dbg.value(metadata !{double* %add.ptr140}, i64 0, metadata !152), !dbg !796
  %add.ptr140.sum = shl nsw i64 %idx.ext139, 1, !dbg !797
  %add.ptr142 = getelementptr inbounds double* %colU0.02280, i64 %add.ptr140.sum, !dbg !797
  call void @llvm.dbg.value(metadata !{double* %add.ptr142}, i64 0, metadata !153), !dbg !797
  call void @DVdot33(i32 %61, double* %call75, double* %add.ptr, double* %add.ptr77, double* %colU0.02280, double* %add.ptr140, double* %add.ptr142, double* %arraydecay197) #6, !dbg !798
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !799
  %62 = load i32** %colindU, align 8, !dbg !799, !tbaa !419
  %arrayidx144 = getelementptr inbounds i32* %62, i64 %indvars.iv2383, !dbg !799
  %63 = load i32* %arrayidx144, align 4, !dbg !799, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !167), !dbg !799
  %64 = add nsw i64 %indvars.iv2383, 1, !dbg !800
  %arrayidx147 = getelementptr inbounds i32* %62, i64 %64, !dbg !800
  %65 = load i32* %arrayidx147, align 4, !dbg !800, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !168), !dbg !800
  %66 = add nsw i64 %indvars.iv2383, 2, !dbg !801
  %arrayidx150 = getelementptr inbounds i32* %62, i64 %66, !dbg !801
  %67 = load i32* %arrayidx150, align 4, !dbg !801, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !169), !dbg !801
  %68 = load double* %arraydecay197, align 16, !dbg !802, !tbaa !500
  %idxprom152 = sext i32 %63 to i64, !dbg !802
  %add.ptr93.sum2247 = sub i64 %idxprom152, %idx.ext92, !dbg !802
  %arrayidx153 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2247, !dbg !802
  %69 = load double* %arrayidx153, align 8, !dbg !802, !tbaa !500
  %sub154 = fsub double %69, %68, !dbg !802
  store double %sub154, double* %arrayidx153, align 8, !dbg !802, !tbaa !500
  %70 = load double* %arrayidx207, align 8, !dbg !803, !tbaa !500
  %idxprom156 = sext i32 %65 to i64, !dbg !803
  %add.ptr93.sum2248 = sub i64 %idxprom156, %idx.ext92, !dbg !803
  %arrayidx157 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2248, !dbg !803
  %71 = load double* %arrayidx157, align 8, !dbg !803, !tbaa !500
  %sub158 = fsub double %71, %70, !dbg !803
  store double %sub158, double* %arrayidx157, align 8, !dbg !803, !tbaa !500
  %72 = load double* %arrayidx211, align 16, !dbg !804, !tbaa !500
  %idxprom160 = sext i32 %67 to i64, !dbg !804
  %add.ptr93.sum2249 = sub i64 %idxprom160, %idx.ext92, !dbg !804
  %arrayidx161 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2249, !dbg !804
  %73 = load double* %arrayidx161, align 8, !dbg !804, !tbaa !500
  %sub162 = fsub double %73, %72, !dbg !804
  store double %sub162, double* %arrayidx161, align 8, !dbg !804, !tbaa !500
  %74 = load double* %arrayidx215, align 8, !dbg !805, !tbaa !500
  %add.ptr99.sum2250 = sub i64 %idxprom152, %idx.ext97, !dbg !805
  %arrayidx165 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2250, !dbg !805
  %75 = load double* %arrayidx165, align 8, !dbg !805, !tbaa !500
  %sub166 = fsub double %75, %74, !dbg !805
  store double %sub166, double* %arrayidx165, align 8, !dbg !805, !tbaa !500
  %76 = load double* %arrayidx219, align 16, !dbg !806, !tbaa !500
  %add.ptr99.sum2251 = sub i64 %idxprom156, %idx.ext97, !dbg !806
  %arrayidx169 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2251, !dbg !806
  %77 = load double* %arrayidx169, align 8, !dbg !806, !tbaa !500
  %sub170 = fsub double %77, %76, !dbg !806
  store double %sub170, double* %arrayidx169, align 8, !dbg !806, !tbaa !500
  %78 = load double* %arrayidx223, align 8, !dbg !807, !tbaa !500
  %add.ptr99.sum2252 = sub i64 %idxprom160, %idx.ext97, !dbg !807
  %arrayidx173 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2252, !dbg !807
  %79 = load double* %arrayidx173, align 8, !dbg !807, !tbaa !500
  %sub174 = fsub double %79, %78, !dbg !807
  store double %sub174, double* %arrayidx173, align 8, !dbg !807, !tbaa !500
  %80 = load double* %arrayidx175, align 16, !dbg !770, !tbaa !500
  %add.ptr106.sum2253 = sub i64 %idxprom152, %idx.ext104, !dbg !770
  %arrayidx177 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2253, !dbg !770
  %81 = load double* %arrayidx177, align 8, !dbg !770, !tbaa !500
  %sub178 = fsub double %81, %80, !dbg !770
  store double %sub178, double* %arrayidx177, align 8, !dbg !770, !tbaa !500
  %82 = load double* %arrayidx179, align 8, !dbg !773, !tbaa !500
  %add.ptr106.sum2254 = sub i64 %idxprom156, %idx.ext104, !dbg !773
  %arrayidx181 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2254, !dbg !773
  %83 = load double* %arrayidx181, align 8, !dbg !773, !tbaa !500
  %sub182 = fsub double %83, %82, !dbg !773
  store double %sub182, double* %arrayidx181, align 8, !dbg !773, !tbaa !500
  %84 = load double* %arrayidx183, align 16, !dbg !774, !tbaa !500
  %add.ptr106.sum2255 = sub i64 %idxprom160, %idx.ext104, !dbg !774
  %arrayidx185 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2255, !dbg !774
  %85 = load double* %arrayidx185, align 8, !dbg !774, !tbaa !500
  %sub186 = fsub double %85, %84, !dbg !774
  store double %sub186, double* %arrayidx185, align 8, !dbg !774, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !808
  %86 = load i32* %nrowU, align 4, !dbg !808, !tbaa !424
  %idx.ext187 = sext i32 %86 to i64, !dbg !808
  %add.ptr142.sum = add i64 %idx.ext187, %add.ptr140.sum, !dbg !808
  %add.ptr188 = getelementptr inbounds double* %colU0.02280, i64 %add.ptr142.sum, !dbg !808
  call void @llvm.dbg.value(metadata !{double* %add.ptr188}, i64 0, metadata !151), !dbg !808
  %add190 = add nsw i32 %jcolU.32281, 3, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %add190}, i64 0, metadata !135), !dbg !795
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !795
  %87 = load i32* %ncolU, align 4, !dbg !795, !tbaa !424
  %sub136 = add nsw i32 %87, -2, !dbg !795
  %cmp137 = icmp slt i32 %add190, %sub136, !dbg !795
  %indvars.iv.next2384 = add i64 %indvars.iv2383, 3, !dbg !795
  br i1 %cmp137, label %for.body138, label %for.end191, !dbg !795

for.end191:                                       ; preds = %for.body138, %for.body84
  %88 = phi i32 [ %58, %for.body84 ], [ %86, %for.body138 ]
  %sub136.lcssa = phi i32 [ %sub1362278, %for.body84 ], [ %sub136, %for.body138 ]
  %.lcssa2277 = phi i32 [ %59, %for.body84 ], [ %87, %for.body138 ]
  %jcolU.3.lcssa = phi i32 [ %60, %for.body84 ], [ %add190, %for.body138 ]
  %colU0.0.lcssa = phi double* [ %add.ptr133, %for.body84 ], [ %add.ptr188, %for.body138 ]
  %cmp193 = icmp eq i32 %jcolU.3.lcssa, %sub136.lcssa, !dbg !809
  br i1 %cmp193, label %if.then194, label %if.else227, !dbg !809

if.then194:                                       ; preds = %for.end191
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !810
  %idx.ext195 = sext i32 %88 to i64, !dbg !810
  %add.ptr196 = getelementptr inbounds double* %colU0.0.lcssa, i64 %idx.ext195, !dbg !810
  call void @llvm.dbg.value(metadata !{double* %add.ptr196}, i64 0, metadata !152), !dbg !810
  call void @DVdot32(i32 %88, double* %call75, double* %add.ptr, double* %add.ptr77, double* %colU0.0.lcssa, double* %add.ptr196, double* %arraydecay197) #6, !dbg !762
  %idxprom198 = sext i32 %sub136.lcssa to i64, !dbg !811
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !811
  %89 = load i32** %colindU, align 8, !dbg !811, !tbaa !419
  %arrayidx199 = getelementptr inbounds i32* %89, i64 %idxprom198, !dbg !811
  %90 = load i32* %arrayidx199, align 4, !dbg !811, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !167), !dbg !811
  %add200 = add nsw i32 %sub136.lcssa, 1, !dbg !812
  %idxprom201 = sext i32 %add200 to i64, !dbg !812
  %arrayidx202 = getelementptr inbounds i32* %89, i64 %idxprom201, !dbg !812
  %91 = load i32* %arrayidx202, align 4, !dbg !812, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %91}, i64 0, metadata !168), !dbg !812
  %92 = load double* %arraydecay197, align 16, !dbg !813, !tbaa !500
  %idxprom204 = sext i32 %90 to i64, !dbg !813
  %add.ptr93.sum2241 = sub i64 %idxprom204, %idx.ext92, !dbg !813
  %arrayidx205 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2241, !dbg !813
  %93 = load double* %arrayidx205, align 8, !dbg !813, !tbaa !500
  %sub206 = fsub double %93, %92, !dbg !813
  store double %sub206, double* %arrayidx205, align 8, !dbg !813, !tbaa !500
  %94 = load double* %arrayidx207, align 8, !dbg !765, !tbaa !500
  %idxprom208 = sext i32 %91 to i64, !dbg !765
  %add.ptr93.sum2242 = sub i64 %idxprom208, %idx.ext92, !dbg !765
  %arrayidx209 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2242, !dbg !765
  %95 = load double* %arrayidx209, align 8, !dbg !765, !tbaa !500
  %sub210 = fsub double %95, %94, !dbg !765
  store double %sub210, double* %arrayidx209, align 8, !dbg !765, !tbaa !500
  %96 = load double* %arrayidx211, align 16, !dbg !766, !tbaa !500
  %add.ptr99.sum2243 = sub i64 %idxprom204, %idx.ext97, !dbg !766
  %arrayidx213 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2243, !dbg !766
  %97 = load double* %arrayidx213, align 8, !dbg !766, !tbaa !500
  %sub214 = fsub double %97, %96, !dbg !766
  store double %sub214, double* %arrayidx213, align 8, !dbg !766, !tbaa !500
  %98 = load double* %arrayidx215, align 8, !dbg !767, !tbaa !500
  %add.ptr99.sum2244 = sub i64 %idxprom208, %idx.ext97, !dbg !767
  %arrayidx217 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2244, !dbg !767
  %99 = load double* %arrayidx217, align 8, !dbg !767, !tbaa !500
  %sub218 = fsub double %99, %98, !dbg !767
  store double %sub218, double* %arrayidx217, align 8, !dbg !767, !tbaa !500
  %100 = load double* %arrayidx219, align 16, !dbg !768, !tbaa !500
  %add.ptr106.sum2245 = sub i64 %idxprom204, %idx.ext104, !dbg !768
  %arrayidx221 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2245, !dbg !768
  %101 = load double* %arrayidx221, align 8, !dbg !768, !tbaa !500
  %sub222 = fsub double %101, %100, !dbg !768
  store double %sub222, double* %arrayidx221, align 8, !dbg !768, !tbaa !500
  %102 = load double* %arrayidx223, align 8, !dbg !769, !tbaa !500
  %add.ptr106.sum2246 = sub i64 %idxprom208, %idx.ext104, !dbg !769
  %arrayidx225 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum2246, !dbg !769
  %103 = load double* %arrayidx225, align 8, !dbg !769, !tbaa !500
  %sub226 = fsub double %103, %102, !dbg !769
  store double %sub226, double* %arrayidx225, align 8, !dbg !769, !tbaa !500
  br label %if.end247, !dbg !814

if.else227:                                       ; preds = %for.end191
  %sub228 = add nsw i32 %.lcssa2277, -1, !dbg !815
  %cmp229 = icmp eq i32 %jcolU.3.lcssa, %sub228, !dbg !815
  br i1 %cmp229, label %if.then230, label %if.end247, !dbg !815

if.then230:                                       ; preds = %if.else227
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !816
  call void @DVdot31(i32 %88, double* %call75, double* %add.ptr, double* %add.ptr77, double* %colU0.0.lcssa, double* %arraydecay197) #6, !dbg !816
  %idxprom232 = sext i32 %jcolU.3.lcssa to i64, !dbg !818
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !818
  %104 = load i32** %colindU, align 8, !dbg !818, !tbaa !419
  %arrayidx233 = getelementptr inbounds i32* %104, i64 %idxprom232, !dbg !818
  %105 = load i32* %arrayidx233, align 4, !dbg !818, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %105}, i64 0, metadata !167), !dbg !818
  %106 = load double* %arraydecay197, align 16, !dbg !819, !tbaa !500
  %idxprom235 = sext i32 %105 to i64, !dbg !819
  %add.ptr93.sum2239 = sub i64 %idxprom235, %idx.ext92, !dbg !819
  %arrayidx236 = getelementptr inbounds double* %call91, i64 %add.ptr93.sum2239, !dbg !819
  %107 = load double* %arrayidx236, align 8, !dbg !819, !tbaa !500
  %sub237 = fsub double %107, %106, !dbg !819
  store double %sub237, double* %arrayidx236, align 8, !dbg !819, !tbaa !500
  %108 = load double* %arrayidx207, align 8, !dbg !820, !tbaa !500
  %add.ptr99.sum2240 = sub i64 %idxprom235, %idx.ext97, !dbg !820
  %arrayidx240 = getelementptr inbounds double* %call96, i64 %add.ptr99.sum2240, !dbg !820
  %109 = load double* %arrayidx240, align 8, !dbg !820, !tbaa !500
  %sub241 = fsub double %109, %108, !dbg !820
  store double %sub241, double* %arrayidx240, align 8, !dbg !820, !tbaa !500
  %110 = load double* %arrayidx211, align 16, !dbg !821, !tbaa !500
  %add.ptr106.sum = sub i64 %idxprom235, %idx.ext104, !dbg !821
  %arrayidx244 = getelementptr inbounds double* %call103, i64 %add.ptr106.sum, !dbg !821
  %111 = load double* %arrayidx244, align 8, !dbg !821, !tbaa !500
  %sub245 = fsub double %111, %110, !dbg !821
  store double %sub245, double* %arrayidx244, align 8, !dbg !821, !tbaa !500
  br label %if.end247, !dbg !822

if.end247:                                        ; preds = %if.else227, %if.then230, %if.then194
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !823
  %112 = load i32* %nrowU, align 4, !dbg !823, !tbaa !424
  %idx.ext248 = sext i32 %112 to i64, !dbg !823
  %add.ptr88.sum2238 = add i64 %idx.ext248, %add.ptr86.sum, !dbg !823
  %add.ptr249 = getelementptr inbounds double* %rowUT0.02288, i64 %add.ptr88.sum2238, !dbg !823
  call void @llvm.dbg.value(metadata !{double* %add.ptr249}, i64 0, metadata !155), !dbg !823
  call void @llvm.dbg.value(metadata !{i32 %add134}, i64 0, metadata !166), !dbg !760
  %cmp83 = icmp sgt i32 %60, %sub82, !dbg !760
  br i1 %cmp83, label %for.end252, label %for.body84, !dbg !760

for.end252:                                       ; preds = %if.end247, %if.then74
  %113 = phi i32 [ %33, %if.then74 ], [ %112, %if.end247 ]
  %rowUT0.0.lcssa = phi double* [ %add.ptr80, %if.then74 ], [ %add.ptr249, %if.end247 ]
  %irowUT.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then74 ], [ %add134, %if.end247 ]
  %sub253 = add nsw i32 %lastInU.0.lcssa2461, -1, !dbg !824
  %cmp254 = icmp eq i32 %irowUT.0.lcssa, %sub253, !dbg !824
  br i1 %cmp254, label %if.then255, label %if.else377, !dbg !824

if.then255:                                       ; preds = %for.end252
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !825
  %idx.ext256 = sext i32 %113 to i64, !dbg !825
  %add.ptr257 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext256, !dbg !825
  call void @llvm.dbg.value(metadata !{double* %add.ptr257}, i64 0, metadata !156), !dbg !825
  %idxprom258 = sext i32 %irowUT.0.lcssa to i64, !dbg !827
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !827
  %114 = load i32** %colindU, align 8, !dbg !827, !tbaa !419
  %arrayidx259 = getelementptr inbounds i32* %114, i64 %idxprom258, !dbg !827
  %115 = load i32* %arrayidx259, align 4, !dbg !827, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %115}, i64 0, metadata !161), !dbg !827
  %call260 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %115) #6, !dbg !828
  %idx.ext261 = sext i32 %115 to i64, !dbg !828
  %add264 = add nsw i32 %irowUT.0.lcssa, 1, !dbg !829
  %idxprom265 = sext i32 %add264 to i64, !dbg !829
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !829
  %116 = load i32** %colindU, align 8, !dbg !829, !tbaa !419
  %arrayidx266 = getelementptr inbounds i32* %116, i64 %idxprom265, !dbg !829
  %117 = load i32* %arrayidx266, align 4, !dbg !829, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !162), !dbg !829
  %call267 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %117) #6, !dbg !830
  %idx.ext268 = sext i32 %117 to i64, !dbg !830
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !831
  %118 = load i32* %nrowU, align 4, !dbg !831, !tbaa !424
  %mul271 = shl nsw i32 %118, 1, !dbg !831
  call void @DVzero(i32 %mul271, double* %call75) #6, !dbg !831
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call75, double* %add.ptr, double* %rowUT0.0.lcssa, double* %add.ptr257) #6, !dbg !832
  call void @llvm.dbg.value(metadata !{double* %rowUT0.0.lcssa}, i64 0, metadata !151), !dbg !833
  call void @llvm.dbg.value(metadata !{double* %add.ptr257}, i64 0, metadata !152), !dbg !834
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !835
  %119 = load i32* %nrowU, align 4, !dbg !835, !tbaa !424
  %call272 = call double @DVdot(i32 %119, double* %call75, double* %rowUT0.0.lcssa) #6, !dbg !835
  %120 = load double* %call260, align 8, !dbg !835, !tbaa !500
  %sub275 = fsub double %120, %call272, !dbg !835
  store double %sub275, double* %call260, align 8, !dbg !835, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !836
  %121 = load i32* %nrowU, align 4, !dbg !836, !tbaa !424
  %call276 = call double @DVdot(i32 %121, double* %call75, double* %add.ptr257) #6, !dbg !836
  %add.ptr263.sum = sub i64 %idx.ext268, %idx.ext261, !dbg !836
  %arrayidx278 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum, !dbg !836
  %122 = load double* %arrayidx278, align 8, !dbg !836, !tbaa !500
  %sub279 = fsub double %122, %call276, !dbg !836
  store double %sub279, double* %arrayidx278, align 8, !dbg !836, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !837
  %123 = load i32* %nrowU, align 4, !dbg !837, !tbaa !424
  %call280 = call double @DVdot(i32 %123, double* %add.ptr, double* %add.ptr257) #6, !dbg !837
  %124 = load double* %call267, align 8, !dbg !837, !tbaa !500
  %sub283 = fsub double %124, %call280, !dbg !837
  store double %sub283, double* %call267, align 8, !dbg !837, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !838
  %125 = load i32* %nrowU, align 4, !dbg !838, !tbaa !424
  %idx.ext284 = sext i32 %125 to i64, !dbg !838
  %add.ptr257.sum = add i64 %idx.ext284, %idx.ext256, !dbg !838
  %add.ptr285 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %add.ptr257.sum, !dbg !838
  call void @llvm.dbg.value(metadata !{double* %add.ptr285}, i64 0, metadata !151), !dbg !838
  %add286 = add i32 %irowUT.0.lcssa, 2, !dbg !839
  call void @llvm.dbg.value(metadata !{i32 %add286}, i64 0, metadata !135), !dbg !839
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !839
  %126 = load i32* %ncolU, align 4, !dbg !839, !tbaa !424
  %sub2882261 = add nsw i32 %126, -2, !dbg !839
  %cmp2892262 = icmp slt i32 %add286, %sub2882261, !dbg !839
  br i1 %cmp2892262, label %for.body290.lr.ph, label %for.end332, !dbg !839

for.body290.lr.ph:                                ; preds = %if.then255
  %arraydecay295 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !841
  %arrayidx308 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !843
  %arrayidx312 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !844
  %arrayidx316 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3, !dbg !845
  %arrayidx320 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4, !dbg !846
  %arrayidx324 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5, !dbg !847
  %127 = sext i32 %add286 to i64
  br label %for.body290, !dbg !839

for.body290:                                      ; preds = %for.body290.lr.ph, %for.body290
  %128 = phi i32 [ %125, %for.body290.lr.ph ], [ %147, %for.body290 ], !dbg !848
  %indvars.iv2367 = phi i64 [ %127, %for.body290.lr.ph ], [ %indvars.iv.next2368, %for.body290 ]
  %jcolU.42264 = phi i32 [ %add286, %for.body290.lr.ph ], [ %add331, %for.body290 ]
  %colU0.12263 = phi double* [ %add.ptr285, %for.body290.lr.ph ], [ %add.ptr329, %for.body290 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !848
  %idx.ext291 = sext i32 %128 to i64, !dbg !848
  %add.ptr292 = getelementptr inbounds double* %colU0.12263, i64 %idx.ext291, !dbg !848
  call void @llvm.dbg.value(metadata !{double* %add.ptr292}, i64 0, metadata !152), !dbg !848
  %add.ptr292.sum = shl nsw i64 %idx.ext291, 1, !dbg !849
  %add.ptr294 = getelementptr inbounds double* %colU0.12263, i64 %add.ptr292.sum, !dbg !849
  call void @llvm.dbg.value(metadata !{double* %add.ptr294}, i64 0, metadata !153), !dbg !849
  call void @DVdot23(i32 %128, double* %call75, double* %add.ptr, double* %colU0.12263, double* %add.ptr292, double* %add.ptr294, double* %arraydecay295) #6, !dbg !841
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !850
  %129 = load i32** %colindU, align 8, !dbg !850, !tbaa !419
  %arrayidx297 = getelementptr inbounds i32* %129, i64 %indvars.iv2367, !dbg !850
  %130 = load i32* %arrayidx297, align 4, !dbg !850, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %130}, i64 0, metadata !167), !dbg !850
  %131 = add nsw i64 %indvars.iv2367, 1, !dbg !851
  %arrayidx300 = getelementptr inbounds i32* %129, i64 %131, !dbg !851
  %132 = load i32* %arrayidx300, align 4, !dbg !851, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %132}, i64 0, metadata !168), !dbg !851
  %133 = add nsw i64 %indvars.iv2367, 2, !dbg !852
  %arrayidx303 = getelementptr inbounds i32* %129, i64 %133, !dbg !852
  %134 = load i32* %arrayidx303, align 4, !dbg !852, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %134}, i64 0, metadata !169), !dbg !852
  %135 = load double* %arraydecay295, align 16, !dbg !853, !tbaa !500
  %idxprom305 = sext i32 %130 to i64, !dbg !853
  %add.ptr263.sum2231 = sub i64 %idxprom305, %idx.ext261, !dbg !853
  %arrayidx306 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2231, !dbg !853
  %136 = load double* %arrayidx306, align 8, !dbg !853, !tbaa !500
  %sub307 = fsub double %136, %135, !dbg !853
  store double %sub307, double* %arrayidx306, align 8, !dbg !853, !tbaa !500
  %137 = load double* %arrayidx308, align 8, !dbg !843, !tbaa !500
  %idxprom309 = sext i32 %132 to i64, !dbg !843
  %add.ptr263.sum2232 = sub i64 %idxprom309, %idx.ext261, !dbg !843
  %arrayidx310 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2232, !dbg !843
  %138 = load double* %arrayidx310, align 8, !dbg !843, !tbaa !500
  %sub311 = fsub double %138, %137, !dbg !843
  store double %sub311, double* %arrayidx310, align 8, !dbg !843, !tbaa !500
  %139 = load double* %arrayidx312, align 16, !dbg !844, !tbaa !500
  %idxprom313 = sext i32 %134 to i64, !dbg !844
  %add.ptr263.sum2233 = sub i64 %idxprom313, %idx.ext261, !dbg !844
  %arrayidx314 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2233, !dbg !844
  %140 = load double* %arrayidx314, align 8, !dbg !844, !tbaa !500
  %sub315 = fsub double %140, %139, !dbg !844
  store double %sub315, double* %arrayidx314, align 8, !dbg !844, !tbaa !500
  %141 = load double* %arrayidx316, align 8, !dbg !845, !tbaa !500
  %add.ptr270.sum2234 = sub i64 %idxprom305, %idx.ext268, !dbg !845
  %arrayidx318 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2234, !dbg !845
  %142 = load double* %arrayidx318, align 8, !dbg !845, !tbaa !500
  %sub319 = fsub double %142, %141, !dbg !845
  store double %sub319, double* %arrayidx318, align 8, !dbg !845, !tbaa !500
  %143 = load double* %arrayidx320, align 16, !dbg !846, !tbaa !500
  %add.ptr270.sum2235 = sub i64 %idxprom309, %idx.ext268, !dbg !846
  %arrayidx322 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2235, !dbg !846
  %144 = load double* %arrayidx322, align 8, !dbg !846, !tbaa !500
  %sub323 = fsub double %144, %143, !dbg !846
  store double %sub323, double* %arrayidx322, align 8, !dbg !846, !tbaa !500
  %145 = load double* %arrayidx324, align 8, !dbg !847, !tbaa !500
  %add.ptr270.sum2236 = sub i64 %idxprom313, %idx.ext268, !dbg !847
  %arrayidx326 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2236, !dbg !847
  %146 = load double* %arrayidx326, align 8, !dbg !847, !tbaa !500
  %sub327 = fsub double %146, %145, !dbg !847
  store double %sub327, double* %arrayidx326, align 8, !dbg !847, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !854
  %147 = load i32* %nrowU, align 4, !dbg !854, !tbaa !424
  %idx.ext328 = sext i32 %147 to i64, !dbg !854
  %add.ptr294.sum = add i64 %idx.ext328, %add.ptr292.sum, !dbg !854
  %add.ptr329 = getelementptr inbounds double* %colU0.12263, i64 %add.ptr294.sum, !dbg !854
  call void @llvm.dbg.value(metadata !{double* %add.ptr329}, i64 0, metadata !151), !dbg !854
  %add331 = add nsw i32 %jcolU.42264, 3, !dbg !839
  call void @llvm.dbg.value(metadata !{i32 %add331}, i64 0, metadata !135), !dbg !839
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !839
  %148 = load i32* %ncolU, align 4, !dbg !839, !tbaa !424
  %sub288 = add nsw i32 %148, -2, !dbg !839
  %cmp289 = icmp slt i32 %add331, %sub288, !dbg !839
  %indvars.iv.next2368 = add i64 %indvars.iv2367, 3, !dbg !839
  br i1 %cmp289, label %for.body290, label %for.end332, !dbg !839

for.end332:                                       ; preds = %for.body290, %if.then255
  %149 = phi i32 [ %125, %if.then255 ], [ %147, %for.body290 ]
  %sub288.lcssa = phi i32 [ %sub2882261, %if.then255 ], [ %sub288, %for.body290 ]
  %.lcssa = phi i32 [ %126, %if.then255 ], [ %148, %for.body290 ]
  %jcolU.4.lcssa = phi i32 [ %add286, %if.then255 ], [ %add331, %for.body290 ]
  %colU0.1.lcssa = phi double* [ %add.ptr285, %if.then255 ], [ %add.ptr329, %for.body290 ]
  %cmp334 = icmp eq i32 %jcolU.4.lcssa, %sub288.lcssa, !dbg !855
  br i1 %cmp334, label %if.then335, label %if.else360, !dbg !855

if.then335:                                       ; preds = %for.end332
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !856
  %idx.ext336 = sext i32 %149 to i64, !dbg !856
  %add.ptr337 = getelementptr inbounds double* %colU0.1.lcssa, i64 %idx.ext336, !dbg !856
  call void @llvm.dbg.value(metadata !{double* %add.ptr337}, i64 0, metadata !152), !dbg !856
  %arraydecay338 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !858
  call void @DVdot22(i32 %149, double* %call75, double* %add.ptr, double* %colU0.1.lcssa, double* %add.ptr337, double* %arraydecay338) #6, !dbg !858
  %idxprom339 = sext i32 %sub288.lcssa to i64, !dbg !859
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !859
  %150 = load i32** %colindU, align 8, !dbg !859, !tbaa !419
  %arrayidx340 = getelementptr inbounds i32* %150, i64 %idxprom339, !dbg !859
  %151 = load i32* %arrayidx340, align 4, !dbg !859, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %151}, i64 0, metadata !167), !dbg !859
  %add341 = add nsw i32 %sub288.lcssa, 1, !dbg !860
  %idxprom342 = sext i32 %add341 to i64, !dbg !860
  %arrayidx343 = getelementptr inbounds i32* %150, i64 %idxprom342, !dbg !860
  %152 = load i32* %arrayidx343, align 4, !dbg !860, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %152}, i64 0, metadata !168), !dbg !860
  %153 = load double* %arraydecay338, align 16, !dbg !861, !tbaa !500
  %idxprom345 = sext i32 %151 to i64, !dbg !861
  %add.ptr263.sum2227 = sub i64 %idxprom345, %idx.ext261, !dbg !861
  %arrayidx346 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2227, !dbg !861
  %154 = load double* %arrayidx346, align 8, !dbg !861, !tbaa !500
  %sub347 = fsub double %154, %153, !dbg !861
  store double %sub347, double* %arrayidx346, align 8, !dbg !861, !tbaa !500
  %arrayidx348 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !862
  %155 = load double* %arrayidx348, align 8, !dbg !862, !tbaa !500
  %idxprom349 = sext i32 %152 to i64, !dbg !862
  %add.ptr263.sum2228 = sub i64 %idxprom349, %idx.ext261, !dbg !862
  %arrayidx350 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2228, !dbg !862
  %156 = load double* %arrayidx350, align 8, !dbg !862, !tbaa !500
  %sub351 = fsub double %156, %155, !dbg !862
  store double %sub351, double* %arrayidx350, align 8, !dbg !862, !tbaa !500
  %arrayidx352 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !863
  %157 = load double* %arrayidx352, align 16, !dbg !863, !tbaa !500
  %add.ptr270.sum2229 = sub i64 %idxprom345, %idx.ext268, !dbg !863
  %arrayidx354 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2229, !dbg !863
  %158 = load double* %arrayidx354, align 8, !dbg !863, !tbaa !500
  %sub355 = fsub double %158, %157, !dbg !863
  store double %sub355, double* %arrayidx354, align 8, !dbg !863, !tbaa !500
  %arrayidx356 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3, !dbg !864
  %159 = load double* %arrayidx356, align 8, !dbg !864, !tbaa !500
  %add.ptr270.sum2230 = sub i64 %idxprom349, %idx.ext268, !dbg !864
  %arrayidx358 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum2230, !dbg !864
  %160 = load double* %arrayidx358, align 8, !dbg !864, !tbaa !500
  %sub359 = fsub double %160, %159, !dbg !864
  store double %sub359, double* %arrayidx358, align 8, !dbg !864, !tbaa !500
  br label %for.cond1373.preheader, !dbg !865

if.else360:                                       ; preds = %for.end332
  %sub361 = add nsw i32 %.lcssa, -1, !dbg !866
  %cmp362 = icmp eq i32 %jcolU.4.lcssa, %sub361, !dbg !866
  br i1 %cmp362, label %if.then363, label %for.cond1373.preheader, !dbg !866

if.then363:                                       ; preds = %if.else360
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !867
  %arraydecay364 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !867
  call void @DVdot21(i32 %149, double* %call75, double* %add.ptr, double* %colU0.1.lcssa, double* %arraydecay364) #6, !dbg !867
  %idxprom365 = sext i32 %jcolU.4.lcssa to i64, !dbg !869
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !869
  %161 = load i32** %colindU, align 8, !dbg !869, !tbaa !419
  %arrayidx366 = getelementptr inbounds i32* %161, i64 %idxprom365, !dbg !869
  %162 = load i32* %arrayidx366, align 4, !dbg !869, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %162}, i64 0, metadata !167), !dbg !869
  %163 = load double* %arraydecay364, align 16, !dbg !870, !tbaa !500
  %idxprom368 = sext i32 %162 to i64, !dbg !870
  %add.ptr263.sum2226 = sub i64 %idxprom368, %idx.ext261, !dbg !870
  %arrayidx369 = getelementptr inbounds double* %call260, i64 %add.ptr263.sum2226, !dbg !870
  %164 = load double* %arrayidx369, align 8, !dbg !870, !tbaa !500
  %sub370 = fsub double %164, %163, !dbg !870
  store double %sub370, double* %arrayidx369, align 8, !dbg !870, !tbaa !500
  %arrayidx371 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !871
  %165 = load double* %arrayidx371, align 8, !dbg !871, !tbaa !500
  %add.ptr270.sum = sub i64 %idxprom368, %idx.ext268, !dbg !871
  %arrayidx373 = getelementptr inbounds double* %call267, i64 %add.ptr270.sum, !dbg !871
  %166 = load double* %arrayidx373, align 8, !dbg !871, !tbaa !500
  %sub374 = fsub double %166, %165, !dbg !871
  store double %sub374, double* %arrayidx373, align 8, !dbg !871, !tbaa !500
  br label %for.cond1373.preheader, !dbg !872

if.else377:                                       ; preds = %for.end252
  %cmp378 = icmp eq i32 %irowUT.0.lcssa, %lastInU.0.lcssa2461, !dbg !873
  br i1 %cmp378, label %if.then379, label %for.cond1373.preheader, !dbg !873

if.then379:                                       ; preds = %if.else377
  %idxprom380 = sext i32 %lastInU.0.lcssa2461 to i64, !dbg !874
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !874
  %167 = load i32** %colindU, align 8, !dbg !874, !tbaa !419
  %arrayidx381 = getelementptr inbounds i32* %167, i64 %idxprom380, !dbg !874
  %168 = load i32* %arrayidx381, align 4, !dbg !874, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %168}, i64 0, metadata !161), !dbg !874
  %call382 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %168) #6, !dbg !876
  %idx.ext383 = sext i32 %168 to i64, !dbg !876
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !877
  %169 = load i32* %nrowU, align 4, !dbg !877, !tbaa !424
  call void @DVzero(i32 %169, double* %call75) #6, !dbg !877
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call75, double* %rowUT0.0.lcssa) #6, !dbg !878
  call void @llvm.dbg.value(metadata !{double* %rowUT0.0.lcssa}, i64 0, metadata !151), !dbg !879
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !880
  %170 = load i32* %nrowU, align 4, !dbg !880, !tbaa !424
  %call386 = call double @DVdot(i32 %170, double* %call75, double* %rowUT0.0.lcssa) #6, !dbg !880
  %171 = load double* %call382, align 8, !dbg !880, !tbaa !500
  %sub389 = fsub double %171, %call386, !dbg !880
  store double %sub389, double* %call382, align 8, !dbg !880, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !881
  %172 = load i32* %nrowU, align 4, !dbg !881, !tbaa !424
  %idx.ext390 = sext i32 %172 to i64, !dbg !881
  %add.ptr391 = getelementptr inbounds double* %rowUT0.0.lcssa, i64 %idx.ext390, !dbg !881
  call void @llvm.dbg.value(metadata !{double* %add.ptr391}, i64 0, metadata !151), !dbg !881
  %add392 = add i32 %lastInU.0.lcssa2461, 1, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %add392}, i64 0, metadata !135), !dbg !882
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !882
  %173 = load i32* %ncolU, align 4, !dbg !882, !tbaa !424
  %sub3942269 = add nsw i32 %173, -2, !dbg !882
  %cmp3952270 = icmp slt i32 %add392, %sub3942269, !dbg !882
  br i1 %cmp3952270, label %for.body396.lr.ph, label %for.end426, !dbg !882

for.body396.lr.ph:                                ; preds = %if.then379
  %arraydecay401 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !884
  %arrayidx414 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !886
  %arrayidx418 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !887
  %174 = sext i32 %add392 to i64
  br label %for.body396, !dbg !882

for.body396:                                      ; preds = %for.body396.lr.ph, %for.body396
  %175 = phi i32 [ %172, %for.body396.lr.ph ], [ %188, %for.body396 ], !dbg !888
  %indvars.iv2374 = phi i64 [ %174, %for.body396.lr.ph ], [ %indvars.iv.next2375, %for.body396 ]
  %jcolU.52272 = phi i32 [ %add392, %for.body396.lr.ph ], [ %add425, %for.body396 ]
  %colU0.22271 = phi double* [ %add.ptr391, %for.body396.lr.ph ], [ %add.ptr423, %for.body396 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !888
  %idx.ext397 = sext i32 %175 to i64, !dbg !888
  %add.ptr398 = getelementptr inbounds double* %colU0.22271, i64 %idx.ext397, !dbg !888
  call void @llvm.dbg.value(metadata !{double* %add.ptr398}, i64 0, metadata !152), !dbg !888
  %add.ptr398.sum = shl nsw i64 %idx.ext397, 1, !dbg !889
  %add.ptr400 = getelementptr inbounds double* %colU0.22271, i64 %add.ptr398.sum, !dbg !889
  call void @llvm.dbg.value(metadata !{double* %add.ptr400}, i64 0, metadata !153), !dbg !889
  call void @DVdot13(i32 %175, double* %call75, double* %colU0.22271, double* %add.ptr398, double* %add.ptr400, double* %arraydecay401) #6, !dbg !884
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !890
  %176 = load i32** %colindU, align 8, !dbg !890, !tbaa !419
  %arrayidx403 = getelementptr inbounds i32* %176, i64 %indvars.iv2374, !dbg !890
  %177 = load i32* %arrayidx403, align 4, !dbg !890, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %177}, i64 0, metadata !167), !dbg !890
  %178 = add nsw i64 %indvars.iv2374, 1, !dbg !891
  %arrayidx406 = getelementptr inbounds i32* %176, i64 %178, !dbg !891
  %179 = load i32* %arrayidx406, align 4, !dbg !891, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %179}, i64 0, metadata !168), !dbg !891
  %180 = add nsw i64 %indvars.iv2374, 2, !dbg !892
  %arrayidx409 = getelementptr inbounds i32* %176, i64 %180, !dbg !892
  %181 = load i32* %arrayidx409, align 4, !dbg !892, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %181}, i64 0, metadata !169), !dbg !892
  %182 = load double* %arraydecay401, align 16, !dbg !893, !tbaa !500
  %idxprom411 = sext i32 %177 to i64, !dbg !893
  %add.ptr385.sum2223 = sub i64 %idxprom411, %idx.ext383, !dbg !893
  %arrayidx412 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2223, !dbg !893
  %183 = load double* %arrayidx412, align 8, !dbg !893, !tbaa !500
  %sub413 = fsub double %183, %182, !dbg !893
  store double %sub413, double* %arrayidx412, align 8, !dbg !893, !tbaa !500
  %184 = load double* %arrayidx414, align 8, !dbg !886, !tbaa !500
  %idxprom415 = sext i32 %179 to i64, !dbg !886
  %add.ptr385.sum2224 = sub i64 %idxprom415, %idx.ext383, !dbg !886
  %arrayidx416 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2224, !dbg !886
  %185 = load double* %arrayidx416, align 8, !dbg !886, !tbaa !500
  %sub417 = fsub double %185, %184, !dbg !886
  store double %sub417, double* %arrayidx416, align 8, !dbg !886, !tbaa !500
  %186 = load double* %arrayidx418, align 16, !dbg !887, !tbaa !500
  %idxprom419 = sext i32 %181 to i64, !dbg !887
  %add.ptr385.sum2225 = sub i64 %idxprom419, %idx.ext383, !dbg !887
  %arrayidx420 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2225, !dbg !887
  %187 = load double* %arrayidx420, align 8, !dbg !887, !tbaa !500
  %sub421 = fsub double %187, %186, !dbg !887
  store double %sub421, double* %arrayidx420, align 8, !dbg !887, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !894
  %188 = load i32* %nrowU, align 4, !dbg !894, !tbaa !424
  %idx.ext422 = sext i32 %188 to i64, !dbg !894
  %add.ptr400.sum = add i64 %idx.ext422, %add.ptr398.sum, !dbg !894
  %add.ptr423 = getelementptr inbounds double* %colU0.22271, i64 %add.ptr400.sum, !dbg !894
  call void @llvm.dbg.value(metadata !{double* %add.ptr423}, i64 0, metadata !151), !dbg !894
  %add425 = add nsw i32 %jcolU.52272, 3, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %add425}, i64 0, metadata !135), !dbg !882
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !882
  %189 = load i32* %ncolU, align 4, !dbg !882, !tbaa !424
  %sub394 = add nsw i32 %189, -2, !dbg !882
  %cmp395 = icmp slt i32 %add425, %sub394, !dbg !882
  %indvars.iv.next2375 = add i64 %indvars.iv2374, 3, !dbg !882
  br i1 %cmp395, label %for.body396, label %for.end426, !dbg !882

for.end426:                                       ; preds = %for.body396, %if.then379
  %190 = phi i32 [ %172, %if.then379 ], [ %188, %for.body396 ]
  %sub394.lcssa = phi i32 [ %sub3942269, %if.then379 ], [ %sub394, %for.body396 ]
  %.lcssa2268 = phi i32 [ %173, %if.then379 ], [ %189, %for.body396 ]
  %jcolU.5.lcssa = phi i32 [ %add392, %if.then379 ], [ %add425, %for.body396 ]
  %colU0.2.lcssa = phi double* [ %add.ptr391, %if.then379 ], [ %add.ptr423, %for.body396 ]
  %cmp428 = icmp eq i32 %jcolU.5.lcssa, %sub394.lcssa, !dbg !895
  br i1 %cmp428, label %if.then429, label %if.else446, !dbg !895

if.then429:                                       ; preds = %for.end426
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !896
  %idx.ext430 = sext i32 %190 to i64, !dbg !896
  %add.ptr431 = getelementptr inbounds double* %colU0.2.lcssa, i64 %idx.ext430, !dbg !896
  call void @llvm.dbg.value(metadata !{double* %add.ptr431}, i64 0, metadata !152), !dbg !896
  %arraydecay432 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !898
  call void @DVdot12(i32 %190, double* %call75, double* %colU0.2.lcssa, double* %add.ptr431, double* %arraydecay432) #6, !dbg !898
  %idxprom433 = sext i32 %sub394.lcssa to i64, !dbg !899
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !899
  %191 = load i32** %colindU, align 8, !dbg !899, !tbaa !419
  %arrayidx434 = getelementptr inbounds i32* %191, i64 %idxprom433, !dbg !899
  %192 = load i32* %arrayidx434, align 4, !dbg !899, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %192}, i64 0, metadata !167), !dbg !899
  %add435 = add nsw i32 %sub394.lcssa, 1, !dbg !900
  %idxprom436 = sext i32 %add435 to i64, !dbg !900
  %arrayidx437 = getelementptr inbounds i32* %191, i64 %idxprom436, !dbg !900
  %193 = load i32* %arrayidx437, align 4, !dbg !900, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %193}, i64 0, metadata !168), !dbg !900
  %194 = load double* %arraydecay432, align 16, !dbg !901, !tbaa !500
  %idxprom439 = sext i32 %192 to i64, !dbg !901
  %add.ptr385.sum2221 = sub i64 %idxprom439, %idx.ext383, !dbg !901
  %arrayidx440 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2221, !dbg !901
  %195 = load double* %arrayidx440, align 8, !dbg !901, !tbaa !500
  %sub441 = fsub double %195, %194, !dbg !901
  store double %sub441, double* %arrayidx440, align 8, !dbg !901, !tbaa !500
  %arrayidx442 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !902
  %196 = load double* %arrayidx442, align 8, !dbg !902, !tbaa !500
  %idxprom443 = sext i32 %193 to i64, !dbg !902
  %add.ptr385.sum2222 = sub i64 %idxprom443, %idx.ext383, !dbg !902
  %arrayidx444 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum2222, !dbg !902
  %197 = load double* %arrayidx444, align 8, !dbg !902, !tbaa !500
  %sub445 = fsub double %197, %196, !dbg !902
  store double %sub445, double* %arrayidx444, align 8, !dbg !902, !tbaa !500
  br label %for.cond1373.preheader, !dbg !903

if.else446:                                       ; preds = %for.end426
  %sub447 = add nsw i32 %.lcssa2268, -1, !dbg !904
  %cmp448 = icmp eq i32 %jcolU.5.lcssa, %sub447, !dbg !904
  br i1 %cmp448, label %if.then449, label %for.cond1373.preheader, !dbg !904

if.then449:                                       ; preds = %if.else446
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !170), !dbg !905
  %arraydecay450 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !905
  call void @DVdot11(i32 %190, double* %call75, double* %colU0.2.lcssa, double* %arraydecay450) #6, !dbg !905
  %idxprom451 = sext i32 %jcolU.5.lcssa to i64, !dbg !907
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !907
  %198 = load i32** %colindU, align 8, !dbg !907, !tbaa !419
  %arrayidx452 = getelementptr inbounds i32* %198, i64 %idxprom451, !dbg !907
  %199 = load i32* %arrayidx452, align 4, !dbg !907, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %199}, i64 0, metadata !167), !dbg !907
  %200 = load double* %arraydecay450, align 16, !dbg !908, !tbaa !500
  %idxprom454 = sext i32 %199 to i64, !dbg !908
  %add.ptr385.sum = sub i64 %idxprom454, %idx.ext383, !dbg !908
  %arrayidx455 = getelementptr inbounds double* %call382, i64 %add.ptr385.sum, !dbg !908
  %201 = load double* %arrayidx455, align 8, !dbg !908, !tbaa !500
  %sub456 = fsub double %201, %200, !dbg !908
  store double %sub456, double* %arrayidx455, align 8, !dbg !908, !tbaa !500
  br label %for.cond1373.preheader, !dbg !909

if.then464:                                       ; preds = %if.then72
  call void @llvm.dbg.declare(metadata !{double** %entU467}, metadata !175), !dbg !910
  call void @llvm.dbg.declare(metadata !{i32* %nentU}, metadata !184), !dbg !911
  call void @llvm.dbg.declare(metadata !{i32** %indU}, metadata !189), !dbg !912
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !192), !dbg !912
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU, i32* %nentU, i32** %sizes, i32** %indU, double** %entU467) #6, !dbg !913
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4, !dbg !914
  %202 = load i32* %nrow, align 4, !dbg !914, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %202}, i64 0, metadata !185), !dbg !914
  %mul475 = shl nsw i32 %202, 1, !dbg !915
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul475) #6, !dbg !915
  %call476 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !916
  call void @llvm.dbg.value(metadata !{double* %call476}, i64 0, metadata !177), !dbg !916
  %idx.ext477 = sext i32 %202 to i64, !dbg !917
  %add.ptr478 = getelementptr inbounds double* %call476, i64 %idx.ext477, !dbg !917
  call void @llvm.dbg.value(metadata !{double* %add.ptr478}, i64 0, metadata !178), !dbg !917
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !186), !dbg !918
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !918
  %cmp4802302 = icmp sgt i32 %jcolU.0.lcssa, 0, !dbg !918
  br i1 %cmp4802302, label %for.body481.lr.ph, label %for.end487, !dbg !918

for.body481.lr.ph:                                ; preds = %if.then464
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !920
  %203 = load i32** %sizes, align 8, !dbg !920, !tbaa !419
  br label %for.body481, !dbg !918

for.body481:                                      ; preds = %for.body481, %for.body481.lr.ph
  %indvars.iv2400 = phi i64 [ 0, %for.body481.lr.ph ], [ %indvars.iv.next2401, %for.body481 ]
  %offset.02303 = phi i32 [ 0, %for.body481.lr.ph ], [ %add484, %for.body481 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !920
  %arrayidx483 = getelementptr inbounds i32* %203, i64 %indvars.iv2400, !dbg !920
  %204 = load i32* %arrayidx483, align 4, !dbg !920, !tbaa !424
  %add484 = add nsw i32 %204, %offset.02303, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %add484}, i64 0, metadata !186), !dbg !920
  %indvars.iv.next2401 = add i64 %indvars.iv2400, 1, !dbg !918
  %lftr.wideiv2402 = trunc i64 %indvars.iv.next2401 to i32, !dbg !918
  %exitcond2403 = icmp eq i32 %lftr.wideiv2402, %jcolU.0.lcssa, !dbg !918
  br i1 %exitcond2403, label %for.cond479.for.end487_crit_edge, label %for.body481, !dbg !918

for.cond479.for.end487_crit_edge:                 ; preds = %for.body481
  %phitmp = sext i32 %add484 to i64, !dbg !918
  br label %for.end487, !dbg !918

for.end487:                                       ; preds = %for.cond479.for.end487_crit_edge, %if.then464
  %offset.0.lcssa = phi i64 [ %phitmp, %for.cond479.for.end487_crit_edge ], [ 0, %if.then464 ]
  call void @llvm.dbg.value(metadata !{double** %entU467}, i64 0, metadata !175), !dbg !922
  call void @llvm.dbg.value(metadata !{double* %add.ptr489}, i64 0, metadata !176), !dbg !922
  call void @llvm.dbg.value(metadata !{i32** %indU}, i64 0, metadata !189), !dbg !923
  call void @llvm.dbg.value(metadata !{i32* %add.ptr491}, i64 0, metadata !191), !dbg !923
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !181), !dbg !924
  %cmp4932297 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa2461, !dbg !924
  br i1 %cmp4932297, label %for.cond1373.preheader, label %for.body494.lr.ph, !dbg !924

for.body494.lr.ph:                                ; preds = %for.end487
  call void @llvm.dbg.value(metadata !{i32** %indU}, i64 0, metadata !189), !dbg !923
  %205 = load i32** %indU, align 8, !dbg !923, !tbaa !419
  call void @llvm.dbg.value(metadata !{double** %entU467}, i64 0, metadata !175), !dbg !922
  %206 = load double** %entU467, align 8, !dbg !922, !tbaa !419
  %add.ptr491 = getelementptr inbounds i32* %205, i64 %offset.0.lcssa, !dbg !923
  %add.ptr489 = getelementptr inbounds double* %206, i64 %offset.0.lcssa, !dbg !922
  %207 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body494, !dbg !924

for.body494:                                      ; preds = %for.inc544.for.body494_crit_edge, %for.body494.lr.ph
  %indvars.iv2398 = phi i64 [ %indvars.iv.next2399, %for.inc544.for.body494_crit_edge ], [ %207, %for.body494.lr.ph ]
  %indUT0.02301 = phi i32* [ %indUT0.1, %for.inc544.for.body494_crit_edge ], [ %add.ptr491, %for.body494.lr.ph ]
  %rowUT0468.02300 = phi double* [ %rowUT0468.1, %for.inc544.for.body494_crit_edge ], [ %add.ptr489, %for.body494.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !926
  %208 = load i32** %sizes, align 8, !dbg !926, !tbaa !419
  %arrayidx496 = getelementptr inbounds i32* %208, i64 %indvars.iv2398, !dbg !926
  %209 = load i32* %arrayidx496, align 4, !dbg !926, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %209}, i64 0, metadata !188), !dbg !926
  %cmp497 = icmp sgt i32 %209, 0, !dbg !926
  br i1 %cmp497, label %for.body508.lr.ph, label %for.body494.for.inc544_crit_edge, !dbg !926

for.body494.for.inc544_crit_edge:                 ; preds = %for.body494
  %.pre2458 = trunc i64 %indvars.iv2398 to i32, !dbg !924
  br label %for.inc544, !dbg !926

for.body508.lr.ph:                                ; preds = %for.body494
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !928
  %210 = load i32** %colindU, align 8, !dbg !928, !tbaa !419
  %arrayidx500 = getelementptr inbounds i32* %210, i64 %indvars.iv2398, !dbg !928
  %211 = load i32* %arrayidx500, align 4, !dbg !928, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %211}, i64 0, metadata !179), !dbg !928
  %call501 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %211) #6, !dbg !930
  %idx.ext502 = sext i32 %211 to i64, !dbg !930
  call void @DVzero(i32 %mul475, double* %call476) #6, !dbg !931
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !932
  br label %for.body508, !dbg !932

for.body508:                                      ; preds = %for.body508, %for.body508.lr.ph
  %indvars.iv2392 = phi i64 [ 0, %for.body508.lr.ph ], [ %indvars.iv.next2393, %for.body508 ]
  %arrayidx510 = getelementptr inbounds i32* %indUT0.02301, i64 %indvars.iv2392, !dbg !934
  %212 = load i32* %arrayidx510, align 4, !dbg !934, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %212}, i64 0, metadata !183), !dbg !934
  %arrayidx512 = getelementptr inbounds double* %rowUT0468.02300, i64 %indvars.iv2392, !dbg !936
  %213 = load double* %arrayidx512, align 8, !dbg !936, !tbaa !500
  %idxprom513 = sext i32 %212 to i64, !dbg !936
  %add.ptr478.sum = add i64 %idxprom513, %idx.ext477, !dbg !936
  %arrayidx514 = getelementptr inbounds double* %call476, i64 %add.ptr478.sum, !dbg !936
  store double %213, double* %arrayidx514, align 8, !dbg !936, !tbaa !500
  %indvars.iv.next2393 = add i64 %indvars.iv2392, 1, !dbg !932
  %lftr.wideiv = trunc i64 %indvars.iv.next2393 to i32, !dbg !932
  %exitcond = icmp eq i32 %lftr.wideiv, %209, !dbg !932
  br i1 %exitcond, label %for.end517, label %for.body508, !dbg !932

for.end517:                                       ; preds = %for.body508
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call476, double* %add.ptr478) #6, !dbg !937
  call void @llvm.dbg.value(metadata !{double* %rowUT0468.02300}, i64 0, metadata !174), !dbg !938
  call void @llvm.dbg.value(metadata !{i32* %indUT0.02301}, i64 0, metadata !190), !dbg !939
  call void @llvm.dbg.value(metadata !940, i64 0, metadata !135), !dbg !941
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !941
  %214 = load i32* %ncolU, align 4, !dbg !941, !tbaa !424
  %215 = trunc i64 %indvars.iv2398 to i32, !dbg !941
  %cmp5192293 = icmp slt i32 %215, %214, !dbg !941
  br i1 %cmp5192293, label %for.body520, label %for.end538, !dbg !941

for.body520:                                      ; preds = %for.inc536, %for.end517
  %216 = phi i32 [ %214, %for.end517 ], [ %222, %for.inc536 ]
  %indvars.iv2396 = phi i64 [ %indvars.iv2398, %for.end517 ], [ %indvars.iv.next2397, %for.inc536 ], !dbg !924
  %indU0.02295 = phi i32* [ %indUT0.02301, %for.end517 ], [ %indU0.1, %for.inc536 ]
  %colU0466.02294 = phi double* [ %rowUT0468.02300, %for.end517 ], [ %colU0466.1, %for.inc536 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !943
  %217 = load i32** %sizes, align 8, !dbg !943, !tbaa !419
  %arrayidx522 = getelementptr inbounds i32* %217, i64 %indvars.iv2396, !dbg !943
  %218 = load i32* %arrayidx522, align 4, !dbg !943, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %218}, i64 0, metadata !187), !dbg !943
  %cmp523 = icmp sgt i32 %218, 0, !dbg !943
  br i1 %cmp523, label %if.then524, label %for.inc536, !dbg !943

if.then524:                                       ; preds = %for.body520
  %call525 = call double @DVdoti(i32 %218, double* %call476, i32* %indU0.02295, double* %colU0466.02294) #6, !dbg !945
  call void @llvm.dbg.value(metadata !{double %call525}, i64 0, metadata !171), !dbg !945
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !947
  %219 = load i32** %colindU, align 8, !dbg !947, !tbaa !419
  %arrayidx527 = getelementptr inbounds i32* %219, i64 %indvars.iv2396, !dbg !947
  %220 = load i32* %arrayidx527, align 4, !dbg !947, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %220}, i64 0, metadata !182), !dbg !947
  %idxprom528 = sext i32 %220 to i64, !dbg !948
  %add.ptr504.sum = sub i64 %idxprom528, %idx.ext502, !dbg !948
  %arrayidx529 = getelementptr inbounds double* %call501, i64 %add.ptr504.sum, !dbg !948
  %221 = load double* %arrayidx529, align 8, !dbg !948, !tbaa !500
  %sub530 = fsub double %221, %call525, !dbg !948
  store double %sub530, double* %arrayidx529, align 8, !dbg !948, !tbaa !500
  %idx.ext531 = sext i32 %218 to i64, !dbg !949
  %add.ptr532 = getelementptr inbounds double* %colU0466.02294, i64 %idx.ext531, !dbg !949
  call void @llvm.dbg.value(metadata !{double* %add.ptr532}, i64 0, metadata !174), !dbg !949
  %add.ptr534 = getelementptr inbounds i32* %indU0.02295, i64 %idx.ext531, !dbg !950
  call void @llvm.dbg.value(metadata !{i32* %add.ptr534}, i64 0, metadata !190), !dbg !950
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !941
  %.pre = load i32* %ncolU, align 4, !dbg !941, !tbaa !424
  br label %for.inc536, !dbg !951

for.inc536:                                       ; preds = %for.body520, %if.then524
  %222 = phi i32 [ %.pre, %if.then524 ], [ %216, %for.body520 ], !dbg !941
  %colU0466.1 = phi double* [ %add.ptr532, %if.then524 ], [ %colU0466.02294, %for.body520 ]
  %indU0.1 = phi i32* [ %add.ptr534, %if.then524 ], [ %indU0.02295, %for.body520 ]
  %indvars.iv.next2397 = add i64 %indvars.iv2396, 1, !dbg !941
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !941
  %223 = trunc i64 %indvars.iv.next2397 to i32, !dbg !941
  %cmp519 = icmp slt i32 %223, %222, !dbg !941
  br i1 %cmp519, label %for.body520, label %for.end538, !dbg !941

for.end538:                                       ; preds = %for.inc536, %for.end517
  %idx.ext539 = sext i32 %209 to i64, !dbg !952
  %add.ptr540 = getelementptr inbounds double* %rowUT0468.02300, i64 %idx.ext539, !dbg !952
  call void @llvm.dbg.value(metadata !{double* %add.ptr540}, i64 0, metadata !176), !dbg !952
  %add.ptr542 = getelementptr inbounds i32* %indUT0.02301, i64 %idx.ext539, !dbg !953
  call void @llvm.dbg.value(metadata !{i32* %add.ptr542}, i64 0, metadata !191), !dbg !953
  br label %for.inc544, !dbg !954

for.inc544:                                       ; preds = %for.body494.for.inc544_crit_edge, %for.end538
  %.pre-phi = phi i32 [ %.pre2458, %for.body494.for.inc544_crit_edge ], [ %215, %for.end538 ], !dbg !924
  %rowUT0468.1 = phi double* [ %rowUT0468.02300, %for.body494.for.inc544_crit_edge ], [ %add.ptr540, %for.end538 ]
  %indUT0.1 = phi i32* [ %indUT0.02301, %for.body494.for.inc544_crit_edge ], [ %add.ptr542, %for.end538 ]
  %cmp493 = icmp slt i32 %.pre-phi, %lastInU.0.lcssa2461, !dbg !924
  br i1 %cmp493, label %for.inc544.for.body494_crit_edge, label %for.cond1373.preheader, !dbg !924

for.inc544.for.body494_crit_edge:                 ; preds = %for.inc544
  %indvars.iv.next2399 = add i64 %indvars.iv2398, 1, !dbg !924
  br label %for.body494, !dbg !924

if.else547:                                       ; preds = %if.then72
  %224 = load %struct._IO_FILE** @stderr, align 8, !dbg !955, !tbaa !419
  %call548 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([94 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !955
  call void @exit(i32 -1) #7, !dbg !957
  unreachable, !dbg !957

if.then554:                                       ; preds = %for.end69
  %mode555 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1, !dbg !958
  %225 = load i32* %mode555, align 4, !dbg !958, !tbaa !424
  switch i32 %225, label %if.else1367 [
    i32 1, label %if.then557
    i32 3, label %if.then1254
  ], !dbg !958

if.then557:                                       ; preds = %if.then554
  call void @llvm.dbg.declare(metadata !{double* %isum}, metadata !193), !dbg !959
  call void @llvm.dbg.declare(metadata !{double* %rsum}, metadata !196), !dbg !959
  %226 = bitcast [18 x double]* %sums558 to i8*, !dbg !960
  call void @llvm.lifetime.start(i64 144, i8* %226) #5, !dbg !960
  call void @llvm.dbg.declare(metadata !{[18 x double]* %sums558}, metadata !197), !dbg !960
  call void @llvm.dbg.declare(metadata !{double** %entU565}, metadata !204), !dbg !961
  call void @llvm.dbg.declare(metadata !{i32* %inc1575}, metadata !214), !dbg !962
  call void @llvm.dbg.declare(metadata !{i32* %inc2576}, metadata !215), !dbg !962
  call void @llvm.dbg.declare(metadata !{i32* %nrowU581}, metadata !220), !dbg !963
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU581, i32* %ncolU, i32* %inc1575, i32* %inc2576, double** %entU565) #6, !dbg !964
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !965
  %227 = load i32* %nrowU581, align 4, !dbg !965, !tbaa !424
  %mul582 = mul nsw i32 %227, 6, !dbg !965
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul582) #6, !dbg !965
  %call583 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !966
  call void @llvm.dbg.value(metadata !{double* %call583}, i64 0, metadata !208), !dbg !966
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !967
  %228 = load i32* %nrowU581, align 4, !dbg !967, !tbaa !424
  %mul584 = shl nsw i32 %228, 1, !dbg !967
  %idx.ext585 = sext i32 %mul584 to i64, !dbg !967
  %add.ptr586 = getelementptr inbounds double* %call583, i64 %idx.ext585, !dbg !967
  call void @llvm.dbg.value(metadata !{double* %add.ptr586}, i64 0, metadata !209), !dbg !967
  %add.ptr586.sum = shl nsw i64 %idx.ext585, 1, !dbg !968
  %add.ptr589 = getelementptr inbounds double* %call583, i64 %add.ptr586.sum, !dbg !968
  call void @llvm.dbg.value(metadata !{double* %add.ptr589}, i64 0, metadata !210), !dbg !968
  call void @llvm.dbg.value(metadata !{double** %entU565}, i64 0, metadata !204), !dbg !969
  %229 = load double** %entU565, align 8, !dbg !969, !tbaa !419
  %mul590 = shl i32 %jcolU.0.lcssa, 1, !dbg !969
  %mul591 = mul nsw i32 %mul590, %228, !dbg !969
  %idx.ext592 = sext i32 %mul591 to i64, !dbg !969
  %add.ptr593 = getelementptr inbounds double* %229, i64 %idx.ext592, !dbg !969
  call void @llvm.dbg.value(metadata !{double* %add.ptr593}, i64 0, metadata !205), !dbg !969
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !216), !dbg !970
  %sub595 = add nsw i32 %lastInU.0.lcssa2461, -2, !dbg !970
  %cmp5962333 = icmp sgt i32 %jcolU.0.lcssa, %sub595, !dbg !970
  br i1 %cmp5962333, label %for.end905, label %for.body597.lr.ph, !dbg !970

for.body597.lr.ph:                                ; preds = %if.then557
  %arraydecay801 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !972
  %arrayidx813 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !975
  %arrayidx818 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2, !dbg !976
  %arrayidx822 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3, !dbg !976
  %arrayidx827 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4, !dbg !977
  %arrayidx831 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5, !dbg !977
  %arrayidx836 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 6, !dbg !978
  %arrayidx840 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 7, !dbg !978
  %arrayidx845 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 8, !dbg !979
  %arrayidx849 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 9, !dbg !979
  %arrayidx854 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 10, !dbg !980
  %arrayidx858 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 11, !dbg !980
  %arrayidx762 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 12, !dbg !981
  %arrayidx766 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 13, !dbg !981
  %arrayidx771 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 14, !dbg !984
  %arrayidx775 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 15, !dbg !984
  %arrayidx780 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 16, !dbg !985
  %arrayidx784 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 17, !dbg !985
  %230 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body597, !dbg !970

for.body597:                                      ; preds = %if.end899, %for.body597.lr.ph
  %231 = phi i32 [ %228, %for.body597.lr.ph ], [ %361, %if.end899 ]
  %indvars.iv2427 = phi i64 [ %230, %for.body597.lr.ph ], [ %indvars.iv.next2428, %if.end899 ]
  %indvars.iv2420.in = phi i64 [ %230, %for.body597.lr.ph ], [ %indvars.iv2420, %if.end899 ]
  %irowUT577.02335 = phi i32 [ %jcolU.0.lcssa, %for.body597.lr.ph ], [ %add685, %if.end899 ]
  %rowUT0566.02334 = phi double* [ %add.ptr593, %for.body597.lr.ph ], [ %add.ptr902, %if.end899 ]
  %indvars.iv2420 = add i64 %indvars.iv2420.in, 3, !dbg !970
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !986
  %mul598 = shl nsw i32 %231, 1, !dbg !986
  %idx.ext599 = sext i32 %mul598 to i64, !dbg !986
  %add.ptr600 = getelementptr inbounds double* %rowUT0566.02334, i64 %idx.ext599, !dbg !986
  call void @llvm.dbg.value(metadata !{double* %add.ptr600}, i64 0, metadata !206), !dbg !986
  %add.ptr600.sum = shl nsw i64 %idx.ext599, 1, !dbg !987
  %add.ptr603 = getelementptr inbounds double* %rowUT0566.02334, i64 %add.ptr600.sum, !dbg !987
  call void @llvm.dbg.value(metadata !{double* %add.ptr603}, i64 0, metadata !207), !dbg !987
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !988
  %232 = load i32** %colindU, align 8, !dbg !988, !tbaa !419
  %arrayidx605 = getelementptr inbounds i32* %232, i64 %indvars.iv2427, !dbg !988
  %233 = load i32* %arrayidx605, align 4, !dbg !988, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %233}, i64 0, metadata !211), !dbg !988
  %call606 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %233) #6, !dbg !989
  %mul607 = shl nsw i32 %233, 1, !dbg !989
  %idx.ext608 = sext i32 %mul607 to i64, !dbg !989
  %234 = add nsw i64 %indvars.iv2427, 1, !dbg !990
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !990
  %235 = load i32** %colindU, align 8, !dbg !990, !tbaa !419
  %arrayidx613 = getelementptr inbounds i32* %235, i64 %234, !dbg !990
  %236 = load i32* %arrayidx613, align 4, !dbg !990, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !212), !dbg !990
  %call614 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %236) #6, !dbg !991
  %mul615 = shl nsw i32 %236, 1, !dbg !991
  %idx.ext616 = sext i32 %mul615 to i64, !dbg !991
  %237 = add nsw i64 %indvars.iv2427, 2, !dbg !992
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !992
  %238 = load i32** %colindU, align 8, !dbg !992, !tbaa !419
  %arrayidx621 = getelementptr inbounds i32* %238, i64 %237, !dbg !992
  %239 = load i32* %arrayidx621, align 4, !dbg !992, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %239}, i64 0, metadata !213), !dbg !992
  %call622 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %239) #6, !dbg !993
  %mul623 = shl nsw i32 %239, 1, !dbg !993
  %idx.ext624 = sext i32 %mul623 to i64, !dbg !993
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !994
  %240 = load i32* %nrowU581, align 4, !dbg !994, !tbaa !424
  %mul627 = mul nsw i32 %240, 6, !dbg !994
  call void @DVzero(i32 %mul627, double* %call583) #6, !dbg !994
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %rowUT0566.02334, double* %add.ptr600, double* %add.ptr603) #6, !dbg !995
  call void @llvm.dbg.value(metadata !{double* %rowUT0566.0.lcssa}, i64 0, metadata !201), !dbg !996
  call void @llvm.dbg.value(metadata !{double* %add.ptr600}, i64 0, metadata !202), !dbg !997
  call void @llvm.dbg.value(metadata !{double* %add.ptr603}, i64 0, metadata !203), !dbg !998
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !999
  %241 = load i32* %nrowU581, align 4, !dbg !999, !tbaa !424
  call void @ZVdotU(i32 %241, double* %call583, double* %rowUT0566.02334, double* %rsum, double* %isum) #6, !dbg !999
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1000
  %242 = load double* %rsum, align 8, !dbg !1000, !tbaa !500
  %243 = load double* %call606, align 8, !dbg !1000, !tbaa !500
  %sub631 = fsub double %243, %242, !dbg !1000
  store double %sub631, double* %call606, align 8, !dbg !1000, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1000
  %244 = load double* %isum, align 8, !dbg !1000, !tbaa !500
  %add6332169 = or i32 %mul607, 1, !dbg !1000
  %idxprom634 = sext i32 %add6332169 to i64, !dbg !1000
  %add.ptr610.sum = sub i64 %idxprom634, %idx.ext608, !dbg !1000
  %arrayidx635 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum, !dbg !1000
  %245 = load double* %arrayidx635, align 8, !dbg !1000, !tbaa !500
  %sub636 = fsub double %245, %244, !dbg !1000
  store double %sub636, double* %arrayidx635, align 8, !dbg !1000, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1001
  %246 = load i32* %nrowU581, align 4, !dbg !1001, !tbaa !424
  call void @ZVdotU(i32 %246, double* %call583, double* %add.ptr600, double* %rsum, double* %isum) #6, !dbg !1001
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1002
  %247 = load double* %rsum, align 8, !dbg !1002, !tbaa !500
  %add.ptr610.sum2170 = sub i64 %idx.ext616, %idx.ext608, !dbg !1002
  %arrayidx639 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2170, !dbg !1002
  %248 = load double* %arrayidx639, align 8, !dbg !1002, !tbaa !500
  %sub640 = fsub double %248, %247, !dbg !1002
  store double %sub640, double* %arrayidx639, align 8, !dbg !1002, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1002
  %249 = load double* %isum, align 8, !dbg !1002, !tbaa !500
  %add6422171 = or i32 %mul615, 1, !dbg !1002
  %idxprom643 = sext i32 %add6422171 to i64, !dbg !1002
  %add.ptr610.sum2172 = sub i64 %idxprom643, %idx.ext608, !dbg !1002
  %arrayidx644 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2172, !dbg !1002
  %250 = load double* %arrayidx644, align 8, !dbg !1002, !tbaa !500
  %sub645 = fsub double %250, %249, !dbg !1002
  store double %sub645, double* %arrayidx644, align 8, !dbg !1002, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1003
  %251 = load i32* %nrowU581, align 4, !dbg !1003, !tbaa !424
  call void @ZVdotU(i32 %251, double* %call583, double* %add.ptr603, double* %rsum, double* %isum) #6, !dbg !1003
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1004
  %252 = load double* %rsum, align 8, !dbg !1004, !tbaa !500
  %add.ptr610.sum2173 = sub i64 %idx.ext624, %idx.ext608, !dbg !1004
  %arrayidx648 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2173, !dbg !1004
  %253 = load double* %arrayidx648, align 8, !dbg !1004, !tbaa !500
  %sub649 = fsub double %253, %252, !dbg !1004
  store double %sub649, double* %arrayidx648, align 8, !dbg !1004, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1004
  %254 = load double* %isum, align 8, !dbg !1004, !tbaa !500
  %add6512174 = or i32 %mul623, 1, !dbg !1004
  %idxprom652 = sext i32 %add6512174 to i64, !dbg !1004
  %add.ptr610.sum2175 = sub i64 %idxprom652, %idx.ext608, !dbg !1004
  %arrayidx653 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2175, !dbg !1004
  %255 = load double* %arrayidx653, align 8, !dbg !1004, !tbaa !500
  %sub654 = fsub double %255, %254, !dbg !1004
  store double %sub654, double* %arrayidx653, align 8, !dbg !1004, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1005
  %256 = load i32* %nrowU581, align 4, !dbg !1005, !tbaa !424
  call void @ZVdotU(i32 %256, double* %add.ptr586, double* %add.ptr600, double* %rsum, double* %isum) #6, !dbg !1005
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1006
  %257 = load double* %rsum, align 8, !dbg !1006, !tbaa !500
  %258 = load double* %call614, align 8, !dbg !1006, !tbaa !500
  %sub658 = fsub double %258, %257, !dbg !1006
  store double %sub658, double* %call614, align 8, !dbg !1006, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1006
  %259 = load double* %isum, align 8, !dbg !1006, !tbaa !500
  %add.ptr618.sum = sub i64 %idxprom643, %idx.ext616, !dbg !1006
  %arrayidx662 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum, !dbg !1006
  %260 = load double* %arrayidx662, align 8, !dbg !1006, !tbaa !500
  %sub663 = fsub double %260, %259, !dbg !1006
  store double %sub663, double* %arrayidx662, align 8, !dbg !1006, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1007
  %261 = load i32* %nrowU581, align 4, !dbg !1007, !tbaa !424
  call void @ZVdotU(i32 %261, double* %add.ptr586, double* %add.ptr603, double* %rsum, double* %isum) #6, !dbg !1007
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1008
  %262 = load double* %rsum, align 8, !dbg !1008, !tbaa !500
  %add.ptr618.sum2176 = sub i64 %idx.ext624, %idx.ext616, !dbg !1008
  %arrayidx666 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2176, !dbg !1008
  %263 = load double* %arrayidx666, align 8, !dbg !1008, !tbaa !500
  %sub667 = fsub double %263, %262, !dbg !1008
  store double %sub667, double* %arrayidx666, align 8, !dbg !1008, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1008
  %264 = load double* %isum, align 8, !dbg !1008, !tbaa !500
  %add.ptr618.sum2177 = sub i64 %idxprom652, %idx.ext616, !dbg !1008
  %arrayidx671 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2177, !dbg !1008
  %265 = load double* %arrayidx671, align 8, !dbg !1008, !tbaa !500
  %sub672 = fsub double %265, %264, !dbg !1008
  store double %sub672, double* %arrayidx671, align 8, !dbg !1008, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1009
  %266 = load i32* %nrowU581, align 4, !dbg !1009, !tbaa !424
  call void @ZVdotU(i32 %266, double* %add.ptr589, double* %add.ptr603, double* %rsum, double* %isum) #6, !dbg !1009
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1010
  %267 = load double* %rsum, align 8, !dbg !1010, !tbaa !500
  %268 = load double* %call622, align 8, !dbg !1010, !tbaa !500
  %sub676 = fsub double %268, %267, !dbg !1010
  store double %sub676, double* %call622, align 8, !dbg !1010, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1010
  %269 = load double* %isum, align 8, !dbg !1010, !tbaa !500
  %add.ptr626.sum = sub i64 %idxprom652, %idx.ext624, !dbg !1010
  %arrayidx680 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum, !dbg !1010
  %270 = load double* %arrayidx680, align 8, !dbg !1010, !tbaa !500
  %sub681 = fsub double %270, %269, !dbg !1010
  store double %sub681, double* %arrayidx680, align 8, !dbg !1010, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1011
  %271 = load i32* %nrowU581, align 4, !dbg !1011, !tbaa !424
  %mul682 = shl nsw i32 %271, 1, !dbg !1011
  %idx.ext683 = sext i32 %mul682 to i64, !dbg !1011
  %add.ptr603.sum = add i64 %idx.ext683, %add.ptr600.sum, !dbg !1011
  %add.ptr684 = getelementptr inbounds double* %rowUT0566.02334, i64 %add.ptr603.sum, !dbg !1011
  call void @llvm.dbg.value(metadata !{double* %add.ptr684}, i64 0, metadata !201), !dbg !1011
  %indvars.iv.next2428 = add i64 %indvars.iv2427, 3, !dbg !970
  %add685 = add nsw i32 %irowUT577.02335, 3, !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %add685}, i64 0, metadata !135), !dbg !1012
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1012
  %272 = load i32* %ncolU, align 4, !dbg !1012, !tbaa !424
  %sub6872325 = add nsw i32 %272, -2, !dbg !1012
  %273 = trunc i64 %indvars.iv.next2428 to i32, !dbg !1012
  %cmp6882326 = icmp slt i32 %273, %sub6872325, !dbg !1012
  br i1 %cmp6882326, label %for.body689, label %for.end794, !dbg !1012

for.body689:                                      ; preds = %for.body597, %for.body689
  %274 = phi i32 [ %317, %for.body689 ], [ %271, %for.body597 ], !dbg !1013
  %indvars.iv2422 = phi i64 [ %indvars.iv.next2423, %for.body689 ], [ %indvars.iv2420, %for.body597 ], !dbg !970
  %jcolU.82328 = phi i32 [ %add793, %for.body689 ], [ %add685, %for.body597 ]
  %colU0562.02327 = phi double* [ %add.ptr791, %for.body689 ], [ %add.ptr684, %for.body597 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1013
  %mul690 = shl nsw i32 %274, 1, !dbg !1013
  %idx.ext691 = sext i32 %mul690 to i64, !dbg !1013
  %add.ptr692 = getelementptr inbounds double* %colU0562.02327, i64 %idx.ext691, !dbg !1013
  call void @llvm.dbg.value(metadata !{double* %add.ptr692}, i64 0, metadata !202), !dbg !1013
  %add.ptr692.sum = shl nsw i64 %idx.ext691, 1, !dbg !1014
  %add.ptr695 = getelementptr inbounds double* %colU0562.02327, i64 %add.ptr692.sum, !dbg !1014
  call void @llvm.dbg.value(metadata !{double* %add.ptr695}, i64 0, metadata !203), !dbg !1014
  call void @ZVdotU33(i32 %274, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %colU0562.02327, double* %add.ptr692, double* %add.ptr695, double* %arraydecay801) #6, !dbg !1015
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1016
  %275 = load i32** %colindU, align 8, !dbg !1016, !tbaa !419
  %arrayidx698 = getelementptr inbounds i32* %275, i64 %indvars.iv2422, !dbg !1016
  %276 = load i32* %arrayidx698, align 4, !dbg !1016, !tbaa !424
  %mul699 = shl nsw i32 %276, 1, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %mul699}, i64 0, metadata !217), !dbg !1016
  %277 = add nsw i64 %indvars.iv2422, 1, !dbg !1017
  %arrayidx702 = getelementptr inbounds i32* %275, i64 %277, !dbg !1017
  %278 = load i32* %arrayidx702, align 4, !dbg !1017, !tbaa !424
  %mul703 = shl nsw i32 %278, 1, !dbg !1017
  call void @llvm.dbg.value(metadata !{i32 %mul703}, i64 0, metadata !218), !dbg !1017
  %279 = add nsw i64 %indvars.iv2422, 2, !dbg !1018
  %arrayidx706 = getelementptr inbounds i32* %275, i64 %279, !dbg !1018
  %280 = load i32* %arrayidx706, align 4, !dbg !1018, !tbaa !424
  %mul707 = shl nsw i32 %280, 1, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %mul707}, i64 0, metadata !219), !dbg !1018
  %281 = load double* %arraydecay801, align 16, !dbg !1019, !tbaa !500
  %idxprom709 = sext i32 %mul699 to i64, !dbg !1019
  %add.ptr610.sum2200 = sub i64 %idxprom709, %idx.ext608, !dbg !1019
  %arrayidx710 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2200, !dbg !1019
  %282 = load double* %arrayidx710, align 8, !dbg !1019, !tbaa !500
  %sub711 = fsub double %282, %281, !dbg !1019
  store double %sub711, double* %arrayidx710, align 8, !dbg !1019, !tbaa !500
  %283 = load double* %arrayidx813, align 8, !dbg !1019, !tbaa !500
  %add7132201 = or i32 %mul699, 1, !dbg !1019
  %idxprom714 = sext i32 %add7132201 to i64, !dbg !1019
  %add.ptr610.sum2202 = sub i64 %idxprom714, %idx.ext608, !dbg !1019
  %arrayidx715 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2202, !dbg !1019
  %284 = load double* %arrayidx715, align 8, !dbg !1019, !tbaa !500
  %sub716 = fsub double %284, %283, !dbg !1019
  store double %sub716, double* %arrayidx715, align 8, !dbg !1019, !tbaa !500
  %285 = load double* %arrayidx818, align 16, !dbg !1020, !tbaa !500
  %idxprom718 = sext i32 %mul703 to i64, !dbg !1020
  %add.ptr610.sum2203 = sub i64 %idxprom718, %idx.ext608, !dbg !1020
  %arrayidx719 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2203, !dbg !1020
  %286 = load double* %arrayidx719, align 8, !dbg !1020, !tbaa !500
  %sub720 = fsub double %286, %285, !dbg !1020
  store double %sub720, double* %arrayidx719, align 8, !dbg !1020, !tbaa !500
  %287 = load double* %arrayidx822, align 8, !dbg !1020, !tbaa !500
  %add7222204 = or i32 %mul703, 1, !dbg !1020
  %idxprom723 = sext i32 %add7222204 to i64, !dbg !1020
  %add.ptr610.sum2205 = sub i64 %idxprom723, %idx.ext608, !dbg !1020
  %arrayidx724 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2205, !dbg !1020
  %288 = load double* %arrayidx724, align 8, !dbg !1020, !tbaa !500
  %sub725 = fsub double %288, %287, !dbg !1020
  store double %sub725, double* %arrayidx724, align 8, !dbg !1020, !tbaa !500
  %289 = load double* %arrayidx827, align 16, !dbg !1021, !tbaa !500
  %idxprom727 = sext i32 %mul707 to i64, !dbg !1021
  %add.ptr610.sum2206 = sub i64 %idxprom727, %idx.ext608, !dbg !1021
  %arrayidx728 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2206, !dbg !1021
  %290 = load double* %arrayidx728, align 8, !dbg !1021, !tbaa !500
  %sub729 = fsub double %290, %289, !dbg !1021
  store double %sub729, double* %arrayidx728, align 8, !dbg !1021, !tbaa !500
  %291 = load double* %arrayidx831, align 8, !dbg !1021, !tbaa !500
  %add7312207 = or i32 %mul707, 1, !dbg !1021
  %idxprom732 = sext i32 %add7312207 to i64, !dbg !1021
  %add.ptr610.sum2208 = sub i64 %idxprom732, %idx.ext608, !dbg !1021
  %arrayidx733 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2208, !dbg !1021
  %292 = load double* %arrayidx733, align 8, !dbg !1021, !tbaa !500
  %sub734 = fsub double %292, %291, !dbg !1021
  store double %sub734, double* %arrayidx733, align 8, !dbg !1021, !tbaa !500
  %293 = load double* %arrayidx836, align 16, !dbg !1022, !tbaa !500
  %add.ptr618.sum2209 = sub i64 %idxprom709, %idx.ext616, !dbg !1022
  %arrayidx737 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2209, !dbg !1022
  %294 = load double* %arrayidx737, align 8, !dbg !1022, !tbaa !500
  %sub738 = fsub double %294, %293, !dbg !1022
  store double %sub738, double* %arrayidx737, align 8, !dbg !1022, !tbaa !500
  %295 = load double* %arrayidx840, align 8, !dbg !1022, !tbaa !500
  %add.ptr618.sum2210 = sub i64 %idxprom714, %idx.ext616, !dbg !1022
  %arrayidx742 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2210, !dbg !1022
  %296 = load double* %arrayidx742, align 8, !dbg !1022, !tbaa !500
  %sub743 = fsub double %296, %295, !dbg !1022
  store double %sub743, double* %arrayidx742, align 8, !dbg !1022, !tbaa !500
  %297 = load double* %arrayidx845, align 16, !dbg !1023, !tbaa !500
  %add.ptr618.sum2211 = sub i64 %idxprom718, %idx.ext616, !dbg !1023
  %arrayidx746 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2211, !dbg !1023
  %298 = load double* %arrayidx746, align 8, !dbg !1023, !tbaa !500
  %sub747 = fsub double %298, %297, !dbg !1023
  store double %sub747, double* %arrayidx746, align 8, !dbg !1023, !tbaa !500
  %299 = load double* %arrayidx849, align 8, !dbg !1023, !tbaa !500
  %add.ptr618.sum2212 = sub i64 %idxprom723, %idx.ext616, !dbg !1023
  %arrayidx751 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2212, !dbg !1023
  %300 = load double* %arrayidx751, align 8, !dbg !1023, !tbaa !500
  %sub752 = fsub double %300, %299, !dbg !1023
  store double %sub752, double* %arrayidx751, align 8, !dbg !1023, !tbaa !500
  %301 = load double* %arrayidx854, align 16, !dbg !1024, !tbaa !500
  %add.ptr618.sum2213 = sub i64 %idxprom727, %idx.ext616, !dbg !1024
  %arrayidx755 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2213, !dbg !1024
  %302 = load double* %arrayidx755, align 8, !dbg !1024, !tbaa !500
  %sub756 = fsub double %302, %301, !dbg !1024
  store double %sub756, double* %arrayidx755, align 8, !dbg !1024, !tbaa !500
  %303 = load double* %arrayidx858, align 8, !dbg !1024, !tbaa !500
  %add.ptr618.sum2214 = sub i64 %idxprom732, %idx.ext616, !dbg !1024
  %arrayidx760 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2214, !dbg !1024
  %304 = load double* %arrayidx760, align 8, !dbg !1024, !tbaa !500
  %sub761 = fsub double %304, %303, !dbg !1024
  store double %sub761, double* %arrayidx760, align 8, !dbg !1024, !tbaa !500
  %305 = load double* %arrayidx762, align 16, !dbg !981, !tbaa !500
  %add.ptr626.sum2215 = sub i64 %idxprom709, %idx.ext624, !dbg !981
  %arrayidx764 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2215, !dbg !981
  %306 = load double* %arrayidx764, align 8, !dbg !981, !tbaa !500
  %sub765 = fsub double %306, %305, !dbg !981
  store double %sub765, double* %arrayidx764, align 8, !dbg !981, !tbaa !500
  %307 = load double* %arrayidx766, align 8, !dbg !981, !tbaa !500
  %add.ptr626.sum2216 = sub i64 %idxprom714, %idx.ext624, !dbg !981
  %arrayidx769 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2216, !dbg !981
  %308 = load double* %arrayidx769, align 8, !dbg !981, !tbaa !500
  %sub770 = fsub double %308, %307, !dbg !981
  store double %sub770, double* %arrayidx769, align 8, !dbg !981, !tbaa !500
  %309 = load double* %arrayidx771, align 16, !dbg !984, !tbaa !500
  %add.ptr626.sum2217 = sub i64 %idxprom718, %idx.ext624, !dbg !984
  %arrayidx773 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2217, !dbg !984
  %310 = load double* %arrayidx773, align 8, !dbg !984, !tbaa !500
  %sub774 = fsub double %310, %309, !dbg !984
  store double %sub774, double* %arrayidx773, align 8, !dbg !984, !tbaa !500
  %311 = load double* %arrayidx775, align 8, !dbg !984, !tbaa !500
  %add.ptr626.sum2218 = sub i64 %idxprom723, %idx.ext624, !dbg !984
  %arrayidx778 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2218, !dbg !984
  %312 = load double* %arrayidx778, align 8, !dbg !984, !tbaa !500
  %sub779 = fsub double %312, %311, !dbg !984
  store double %sub779, double* %arrayidx778, align 8, !dbg !984, !tbaa !500
  %313 = load double* %arrayidx780, align 16, !dbg !985, !tbaa !500
  %add.ptr626.sum2219 = sub i64 %idxprom727, %idx.ext624, !dbg !985
  %arrayidx782 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2219, !dbg !985
  %314 = load double* %arrayidx782, align 8, !dbg !985, !tbaa !500
  %sub783 = fsub double %314, %313, !dbg !985
  store double %sub783, double* %arrayidx782, align 8, !dbg !985, !tbaa !500
  %315 = load double* %arrayidx784, align 8, !dbg !985, !tbaa !500
  %add.ptr626.sum2220 = sub i64 %idxprom732, %idx.ext624, !dbg !985
  %arrayidx787 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2220, !dbg !985
  %316 = load double* %arrayidx787, align 8, !dbg !985, !tbaa !500
  %sub788 = fsub double %316, %315, !dbg !985
  store double %sub788, double* %arrayidx787, align 8, !dbg !985, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1025
  %317 = load i32* %nrowU581, align 4, !dbg !1025, !tbaa !424
  %mul789 = shl nsw i32 %317, 1, !dbg !1025
  %idx.ext790 = sext i32 %mul789 to i64, !dbg !1025
  %add.ptr695.sum = add i64 %idx.ext790, %add.ptr692.sum, !dbg !1025
  %add.ptr791 = getelementptr inbounds double* %colU0562.02327, i64 %add.ptr695.sum, !dbg !1025
  call void @llvm.dbg.value(metadata !{double* %add.ptr791}, i64 0, metadata !201), !dbg !1025
  %add793 = add nsw i32 %jcolU.82328, 3, !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %add793}, i64 0, metadata !135), !dbg !1012
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1012
  %318 = load i32* %ncolU, align 4, !dbg !1012, !tbaa !424
  %sub687 = add nsw i32 %318, -2, !dbg !1012
  %cmp688 = icmp slt i32 %add793, %sub687, !dbg !1012
  %indvars.iv.next2423 = add i64 %indvars.iv2422, 3, !dbg !1012
  br i1 %cmp688, label %for.body689, label %for.end794, !dbg !1012

for.end794:                                       ; preds = %for.body689, %for.body597
  %319 = phi i32 [ %271, %for.body597 ], [ %317, %for.body689 ]
  %sub687.lcssa = phi i32 [ %sub6872325, %for.body597 ], [ %sub687, %for.body689 ]
  %.lcssa2324 = phi i32 [ %272, %for.body597 ], [ %318, %for.body689 ]
  %jcolU.8.lcssa = phi i32 [ %273, %for.body597 ], [ %add793, %for.body689 ]
  %colU0562.0.lcssa = phi double* [ %add.ptr684, %for.body597 ], [ %add.ptr791, %for.body689 ]
  %cmp796 = icmp eq i32 %jcolU.8.lcssa, %sub687.lcssa, !dbg !1026
  br i1 %cmp796, label %if.then797, label %if.else863, !dbg !1026

if.then797:                                       ; preds = %for.end794
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1027
  %mul798 = shl nsw i32 %319, 1, !dbg !1027
  %idx.ext799 = sext i32 %mul798 to i64, !dbg !1027
  %add.ptr800 = getelementptr inbounds double* %colU0562.0.lcssa, i64 %idx.ext799, !dbg !1027
  call void @llvm.dbg.value(metadata !{double* %add.ptr800}, i64 0, metadata !202), !dbg !1027
  call void @ZVdotU32(i32 %319, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %colU0562.0.lcssa, double* %add.ptr800, double* %arraydecay801) #6, !dbg !972
  %idxprom802 = sext i32 %sub687.lcssa to i64, !dbg !1028
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1028
  %320 = load i32** %colindU, align 8, !dbg !1028, !tbaa !419
  %arrayidx803 = getelementptr inbounds i32* %320, i64 %idxprom802, !dbg !1028
  %321 = load i32* %arrayidx803, align 4, !dbg !1028, !tbaa !424
  %mul804 = shl nsw i32 %321, 1, !dbg !1028
  call void @llvm.dbg.value(metadata !{i32 %mul804}, i64 0, metadata !217), !dbg !1028
  %add805 = add nsw i32 %sub687.lcssa, 1, !dbg !1029
  %idxprom806 = sext i32 %add805 to i64, !dbg !1029
  %arrayidx807 = getelementptr inbounds i32* %320, i64 %idxprom806, !dbg !1029
  %322 = load i32* %arrayidx807, align 4, !dbg !1029, !tbaa !424
  %mul808 = shl nsw i32 %322, 1, !dbg !1029
  call void @llvm.dbg.value(metadata !{i32 %mul808}, i64 0, metadata !218), !dbg !1029
  %323 = load double* %arraydecay801, align 16, !dbg !975, !tbaa !500
  %idxprom810 = sext i32 %mul804 to i64, !dbg !975
  %add.ptr610.sum2186 = sub i64 %idxprom810, %idx.ext608, !dbg !975
  %arrayidx811 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2186, !dbg !975
  %324 = load double* %arrayidx811, align 8, !dbg !975, !tbaa !500
  %sub812 = fsub double %324, %323, !dbg !975
  store double %sub812, double* %arrayidx811, align 8, !dbg !975, !tbaa !500
  %325 = load double* %arrayidx813, align 8, !dbg !975, !tbaa !500
  %add8142187 = or i32 %mul804, 1, !dbg !975
  %idxprom815 = sext i32 %add8142187 to i64, !dbg !975
  %add.ptr610.sum2188 = sub i64 %idxprom815, %idx.ext608, !dbg !975
  %arrayidx816 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2188, !dbg !975
  %326 = load double* %arrayidx816, align 8, !dbg !975, !tbaa !500
  %sub817 = fsub double %326, %325, !dbg !975
  store double %sub817, double* %arrayidx816, align 8, !dbg !975, !tbaa !500
  %327 = load double* %arrayidx818, align 16, !dbg !976, !tbaa !500
  %idxprom819 = sext i32 %mul808 to i64, !dbg !976
  %add.ptr610.sum2189 = sub i64 %idxprom819, %idx.ext608, !dbg !976
  %arrayidx820 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2189, !dbg !976
  %328 = load double* %arrayidx820, align 8, !dbg !976, !tbaa !500
  %sub821 = fsub double %328, %327, !dbg !976
  store double %sub821, double* %arrayidx820, align 8, !dbg !976, !tbaa !500
  %329 = load double* %arrayidx822, align 8, !dbg !976, !tbaa !500
  %add8232190 = or i32 %mul808, 1, !dbg !976
  %idxprom824 = sext i32 %add8232190 to i64, !dbg !976
  %add.ptr610.sum2191 = sub i64 %idxprom824, %idx.ext608, !dbg !976
  %arrayidx825 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2191, !dbg !976
  %330 = load double* %arrayidx825, align 8, !dbg !976, !tbaa !500
  %sub826 = fsub double %330, %329, !dbg !976
  store double %sub826, double* %arrayidx825, align 8, !dbg !976, !tbaa !500
  %331 = load double* %arrayidx827, align 16, !dbg !977, !tbaa !500
  %add.ptr618.sum2192 = sub i64 %idxprom810, %idx.ext616, !dbg !977
  %arrayidx829 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2192, !dbg !977
  %332 = load double* %arrayidx829, align 8, !dbg !977, !tbaa !500
  %sub830 = fsub double %332, %331, !dbg !977
  store double %sub830, double* %arrayidx829, align 8, !dbg !977, !tbaa !500
  %333 = load double* %arrayidx831, align 8, !dbg !977, !tbaa !500
  %add.ptr618.sum2193 = sub i64 %idxprom815, %idx.ext616, !dbg !977
  %arrayidx834 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2193, !dbg !977
  %334 = load double* %arrayidx834, align 8, !dbg !977, !tbaa !500
  %sub835 = fsub double %334, %333, !dbg !977
  store double %sub835, double* %arrayidx834, align 8, !dbg !977, !tbaa !500
  %335 = load double* %arrayidx836, align 16, !dbg !978, !tbaa !500
  %add.ptr618.sum2194 = sub i64 %idxprom819, %idx.ext616, !dbg !978
  %arrayidx838 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2194, !dbg !978
  %336 = load double* %arrayidx838, align 8, !dbg !978, !tbaa !500
  %sub839 = fsub double %336, %335, !dbg !978
  store double %sub839, double* %arrayidx838, align 8, !dbg !978, !tbaa !500
  %337 = load double* %arrayidx840, align 8, !dbg !978, !tbaa !500
  %add.ptr618.sum2195 = sub i64 %idxprom824, %idx.ext616, !dbg !978
  %arrayidx843 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2195, !dbg !978
  %338 = load double* %arrayidx843, align 8, !dbg !978, !tbaa !500
  %sub844 = fsub double %338, %337, !dbg !978
  store double %sub844, double* %arrayidx843, align 8, !dbg !978, !tbaa !500
  %339 = load double* %arrayidx845, align 16, !dbg !979, !tbaa !500
  %add.ptr626.sum2196 = sub i64 %idxprom810, %idx.ext624, !dbg !979
  %arrayidx847 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2196, !dbg !979
  %340 = load double* %arrayidx847, align 8, !dbg !979, !tbaa !500
  %sub848 = fsub double %340, %339, !dbg !979
  store double %sub848, double* %arrayidx847, align 8, !dbg !979, !tbaa !500
  %341 = load double* %arrayidx849, align 8, !dbg !979, !tbaa !500
  %add.ptr626.sum2197 = sub i64 %idxprom815, %idx.ext624, !dbg !979
  %arrayidx852 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2197, !dbg !979
  %342 = load double* %arrayidx852, align 8, !dbg !979, !tbaa !500
  %sub853 = fsub double %342, %341, !dbg !979
  store double %sub853, double* %arrayidx852, align 8, !dbg !979, !tbaa !500
  %343 = load double* %arrayidx854, align 16, !dbg !980, !tbaa !500
  %add.ptr626.sum2198 = sub i64 %idxprom819, %idx.ext624, !dbg !980
  %arrayidx856 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2198, !dbg !980
  %344 = load double* %arrayidx856, align 8, !dbg !980, !tbaa !500
  %sub857 = fsub double %344, %343, !dbg !980
  store double %sub857, double* %arrayidx856, align 8, !dbg !980, !tbaa !500
  %345 = load double* %arrayidx858, align 8, !dbg !980, !tbaa !500
  %add.ptr626.sum2199 = sub i64 %idxprom824, %idx.ext624, !dbg !980
  %arrayidx861 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2199, !dbg !980
  %346 = load double* %arrayidx861, align 8, !dbg !980, !tbaa !500
  %sub862 = fsub double %346, %345, !dbg !980
  store double %sub862, double* %arrayidx861, align 8, !dbg !980, !tbaa !500
  br label %if.end899, !dbg !1030

if.else863:                                       ; preds = %for.end794
  %sub864 = add nsw i32 %.lcssa2324, -1, !dbg !1031
  %cmp865 = icmp eq i32 %jcolU.8.lcssa, %sub864, !dbg !1031
  br i1 %cmp865, label %if.then866, label %if.end899, !dbg !1031

if.then866:                                       ; preds = %if.else863
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1032
  call void @ZVdotU31(i32 %319, double* %call583, double* %add.ptr586, double* %add.ptr589, double* %colU0562.0.lcssa, double* %arraydecay801) #6, !dbg !1032
  %idxprom868 = sext i32 %jcolU.8.lcssa to i64, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1034
  %347 = load i32** %colindU, align 8, !dbg !1034, !tbaa !419
  %arrayidx869 = getelementptr inbounds i32* %347, i64 %idxprom868, !dbg !1034
  %348 = load i32* %arrayidx869, align 4, !dbg !1034, !tbaa !424
  %mul870 = shl nsw i32 %348, 1, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32 %mul870}, i64 0, metadata !217), !dbg !1034
  %349 = load double* %arraydecay801, align 16, !dbg !1035, !tbaa !500
  %idxprom872 = sext i32 %mul870 to i64, !dbg !1035
  %add.ptr610.sum2179 = sub i64 %idxprom872, %idx.ext608, !dbg !1035
  %arrayidx873 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2179, !dbg !1035
  %350 = load double* %arrayidx873, align 8, !dbg !1035, !tbaa !500
  %sub874 = fsub double %350, %349, !dbg !1035
  store double %sub874, double* %arrayidx873, align 8, !dbg !1035, !tbaa !500
  %351 = load double* %arrayidx813, align 8, !dbg !1035, !tbaa !500
  %add8762180 = or i32 %mul870, 1, !dbg !1035
  %idxprom877 = sext i32 %add8762180 to i64, !dbg !1035
  %add.ptr610.sum2181 = sub i64 %idxprom877, %idx.ext608, !dbg !1035
  %arrayidx878 = getelementptr inbounds double* %call606, i64 %add.ptr610.sum2181, !dbg !1035
  %352 = load double* %arrayidx878, align 8, !dbg !1035, !tbaa !500
  %sub879 = fsub double %352, %351, !dbg !1035
  store double %sub879, double* %arrayidx878, align 8, !dbg !1035, !tbaa !500
  %353 = load double* %arrayidx818, align 16, !dbg !1036, !tbaa !500
  %add.ptr618.sum2182 = sub i64 %idxprom872, %idx.ext616, !dbg !1036
  %arrayidx882 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2182, !dbg !1036
  %354 = load double* %arrayidx882, align 8, !dbg !1036, !tbaa !500
  %sub883 = fsub double %354, %353, !dbg !1036
  store double %sub883, double* %arrayidx882, align 8, !dbg !1036, !tbaa !500
  %355 = load double* %arrayidx822, align 8, !dbg !1036, !tbaa !500
  %add.ptr618.sum2183 = sub i64 %idxprom877, %idx.ext616, !dbg !1036
  %arrayidx887 = getelementptr inbounds double* %call614, i64 %add.ptr618.sum2183, !dbg !1036
  %356 = load double* %arrayidx887, align 8, !dbg !1036, !tbaa !500
  %sub888 = fsub double %356, %355, !dbg !1036
  store double %sub888, double* %arrayidx887, align 8, !dbg !1036, !tbaa !500
  %357 = load double* %arrayidx827, align 16, !dbg !1037, !tbaa !500
  %add.ptr626.sum2184 = sub i64 %idxprom872, %idx.ext624, !dbg !1037
  %arrayidx891 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2184, !dbg !1037
  %358 = load double* %arrayidx891, align 8, !dbg !1037, !tbaa !500
  %sub892 = fsub double %358, %357, !dbg !1037
  store double %sub892, double* %arrayidx891, align 8, !dbg !1037, !tbaa !500
  %359 = load double* %arrayidx831, align 8, !dbg !1037, !tbaa !500
  %add.ptr626.sum2185 = sub i64 %idxprom877, %idx.ext624, !dbg !1037
  %arrayidx896 = getelementptr inbounds double* %call622, i64 %add.ptr626.sum2185, !dbg !1037
  %360 = load double* %arrayidx896, align 8, !dbg !1037, !tbaa !500
  %sub897 = fsub double %360, %359, !dbg !1037
  store double %sub897, double* %arrayidx896, align 8, !dbg !1037, !tbaa !500
  br label %if.end899, !dbg !1038

if.end899:                                        ; preds = %if.else863, %if.then866, %if.then797
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1039
  %361 = load i32* %nrowU581, align 4, !dbg !1039, !tbaa !424
  %mul900 = shl nsw i32 %361, 1, !dbg !1039
  %idx.ext901 = sext i32 %mul900 to i64, !dbg !1039
  %add.ptr603.sum2178 = add i64 %idx.ext901, %add.ptr600.sum, !dbg !1039
  %add.ptr902 = getelementptr inbounds double* %rowUT0566.02334, i64 %add.ptr603.sum2178, !dbg !1039
  call void @llvm.dbg.value(metadata !{double* %add.ptr902}, i64 0, metadata !205), !dbg !1039
  call void @llvm.dbg.value(metadata !{i32 %add685}, i64 0, metadata !216), !dbg !970
  %cmp596 = icmp sgt i32 %273, %sub595, !dbg !970
  br i1 %cmp596, label %for.end905, label %for.body597, !dbg !970

for.end905:                                       ; preds = %if.end899, %if.then557
  %362 = phi i32 [ %228, %if.then557 ], [ %361, %if.end899 ]
  %irowUT577.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then557 ], [ %add685, %if.end899 ]
  %rowUT0566.0.lcssa = phi double* [ %add.ptr593, %if.then557 ], [ %add.ptr902, %if.end899 ]
  %sub906 = add nsw i32 %lastInU.0.lcssa2461, -1, !dbg !1040
  %cmp907 = icmp eq i32 %irowUT577.0.lcssa, %sub906, !dbg !1040
  br i1 %cmp907, label %if.then908, label %if.else1119, !dbg !1040

if.then908:                                       ; preds = %for.end905
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1041
  %mul909 = shl nsw i32 %362, 1, !dbg !1041
  %idx.ext910 = sext i32 %mul909 to i64, !dbg !1041
  %add.ptr911 = getelementptr inbounds double* %rowUT0566.0.lcssa, i64 %idx.ext910, !dbg !1041
  call void @llvm.dbg.value(metadata !{double* %add.ptr911}, i64 0, metadata !206), !dbg !1041
  %idxprom912 = sext i32 %sub906 to i64, !dbg !1043
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1043
  %363 = load i32** %colindU, align 8, !dbg !1043, !tbaa !419
  %arrayidx913 = getelementptr inbounds i32* %363, i64 %idxprom912, !dbg !1043
  %364 = load i32* %arrayidx913, align 4, !dbg !1043, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %364}, i64 0, metadata !211), !dbg !1043
  %call914 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %364) #6, !dbg !1044
  %mul915 = shl nsw i32 %364, 1, !dbg !1044
  %idx.ext916 = sext i32 %mul915 to i64, !dbg !1044
  %idxprom920 = sext i32 %lastInU.0.lcssa2461 to i64, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1045
  %365 = load i32** %colindU, align 8, !dbg !1045, !tbaa !419
  %arrayidx921 = getelementptr inbounds i32* %365, i64 %idxprom920, !dbg !1045
  %366 = load i32* %arrayidx921, align 4, !dbg !1045, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %366}, i64 0, metadata !212), !dbg !1045
  %call922 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %366) #6, !dbg !1046
  %mul923 = shl nsw i32 %366, 1, !dbg !1046
  %idx.ext924 = sext i32 %mul923 to i64, !dbg !1046
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1047
  %367 = load i32* %nrowU581, align 4, !dbg !1047, !tbaa !424
  %mul927 = shl nsw i32 %367, 2, !dbg !1047
  call void @DVzero(i32 %mul927, double* %call583) #6, !dbg !1047
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call583, double* %add.ptr586, double* %rowUT0566.0.lcssa, double* %add.ptr911) #6, !dbg !1048
  call void @llvm.dbg.value(metadata !{double* %rowUT0566.0.lcssa}, i64 0, metadata !201), !dbg !1049
  call void @llvm.dbg.value(metadata !{double* %add.ptr911}, i64 0, metadata !202), !dbg !1050
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1051
  %368 = load i32* %nrowU581, align 4, !dbg !1051, !tbaa !424
  call void @ZVdotU(i32 %368, double* %call583, double* %rowUT0566.0.lcssa, double* %rsum, double* %isum) #6, !dbg !1051
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1052
  %369 = load double* %rsum, align 8, !dbg !1052, !tbaa !500
  %370 = load double* %call914, align 8, !dbg !1052, !tbaa !500
  %sub931 = fsub double %370, %369, !dbg !1052
  store double %sub931, double* %call914, align 8, !dbg !1052, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1052
  %371 = load double* %isum, align 8, !dbg !1052, !tbaa !500
  %add9332135 = or i32 %mul915, 1, !dbg !1052
  %idxprom934 = sext i32 %add9332135 to i64, !dbg !1052
  %add.ptr918.sum = sub i64 %idxprom934, %idx.ext916, !dbg !1052
  %arrayidx935 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum, !dbg !1052
  %372 = load double* %arrayidx935, align 8, !dbg !1052, !tbaa !500
  %sub936 = fsub double %372, %371, !dbg !1052
  store double %sub936, double* %arrayidx935, align 8, !dbg !1052, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1053
  %373 = load i32* %nrowU581, align 4, !dbg !1053, !tbaa !424
  call void @ZVdotU(i32 %373, double* %call583, double* %add.ptr911, double* %rsum, double* %isum) #6, !dbg !1053
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1054
  %374 = load double* %rsum, align 8, !dbg !1054, !tbaa !500
  %add.ptr918.sum2136 = sub i64 %idx.ext924, %idx.ext916, !dbg !1054
  %arrayidx939 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2136, !dbg !1054
  %375 = load double* %arrayidx939, align 8, !dbg !1054, !tbaa !500
  %sub940 = fsub double %375, %374, !dbg !1054
  store double %sub940, double* %arrayidx939, align 8, !dbg !1054, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1054
  %376 = load double* %isum, align 8, !dbg !1054, !tbaa !500
  %add9422137 = or i32 %mul923, 1, !dbg !1054
  %idxprom943 = sext i32 %add9422137 to i64, !dbg !1054
  %add.ptr918.sum2138 = sub i64 %idxprom943, %idx.ext916, !dbg !1054
  %arrayidx944 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2138, !dbg !1054
  %377 = load double* %arrayidx944, align 8, !dbg !1054, !tbaa !500
  %sub945 = fsub double %377, %376, !dbg !1054
  store double %sub945, double* %arrayidx944, align 8, !dbg !1054, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1055
  %378 = load i32* %nrowU581, align 4, !dbg !1055, !tbaa !424
  call void @ZVdotU(i32 %378, double* %add.ptr586, double* %add.ptr911, double* %rsum, double* %isum) #6, !dbg !1055
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1056
  %379 = load double* %rsum, align 8, !dbg !1056, !tbaa !500
  %380 = load double* %call922, align 8, !dbg !1056, !tbaa !500
  %sub949 = fsub double %380, %379, !dbg !1056
  store double %sub949, double* %call922, align 8, !dbg !1056, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1056
  %381 = load double* %isum, align 8, !dbg !1056, !tbaa !500
  %add.ptr926.sum = sub i64 %idxprom943, %idx.ext924, !dbg !1056
  %arrayidx953 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum, !dbg !1056
  %382 = load double* %arrayidx953, align 8, !dbg !1056, !tbaa !500
  %sub954 = fsub double %382, %381, !dbg !1056
  store double %sub954, double* %arrayidx953, align 8, !dbg !1056, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1057
  %383 = load i32* %nrowU581, align 4, !dbg !1057, !tbaa !424
  %mul955 = shl nsw i32 %383, 1, !dbg !1057
  %idx.ext956 = sext i32 %mul955 to i64, !dbg !1057
  %add.ptr911.sum = add i64 %idx.ext956, %idx.ext910, !dbg !1057
  %add.ptr957 = getelementptr inbounds double* %rowUT0566.0.lcssa, i64 %add.ptr911.sum, !dbg !1057
  call void @llvm.dbg.value(metadata !{double* %add.ptr957}, i64 0, metadata !201), !dbg !1057
  %add958 = add i32 %lastInU.0.lcssa2461, 1, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %add958}, i64 0, metadata !135), !dbg !1058
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1058
  %384 = load i32* %ncolU, align 4, !dbg !1058, !tbaa !424
  %sub9602307 = add nsw i32 %384, -2, !dbg !1058
  %cmp9612308 = icmp slt i32 %add958, %sub9602307, !dbg !1058
  br i1 %cmp9612308, label %for.body962.lr.ph, label %for.end1040, !dbg !1058

for.body962.lr.ph:                                ; preds = %if.then908
  %arraydecay969 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !1060
  %arrayidx985 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !1062
  %arrayidx990 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2, !dbg !1063
  %arrayidx994 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3, !dbg !1063
  %arrayidx999 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4, !dbg !1064
  %arrayidx1003 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5, !dbg !1064
  %arrayidx1008 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 6, !dbg !1065
  %arrayidx1012 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 7, !dbg !1065
  %arrayidx1017 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 8, !dbg !1066
  %arrayidx1021 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 9, !dbg !1066
  %arrayidx1026 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 10, !dbg !1067
  %arrayidx1030 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 11, !dbg !1067
  %385 = sext i32 %add958 to i64
  br label %for.body962, !dbg !1058

for.body962:                                      ; preds = %for.body962.lr.ph, %for.body962
  %386 = phi i32 [ %383, %for.body962.lr.ph ], [ %417, %for.body962 ], !dbg !1068
  %indvars.iv2406 = phi i64 [ %385, %for.body962.lr.ph ], [ %indvars.iv.next2407, %for.body962 ]
  %jcolU.92310 = phi i32 [ %add958, %for.body962.lr.ph ], [ %add1039, %for.body962 ]
  %colU0562.12309 = phi double* [ %add.ptr957, %for.body962.lr.ph ], [ %add.ptr1037, %for.body962 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1068
  %mul963 = shl nsw i32 %386, 1, !dbg !1068
  %idx.ext964 = sext i32 %mul963 to i64, !dbg !1068
  %add.ptr965 = getelementptr inbounds double* %colU0562.12309, i64 %idx.ext964, !dbg !1068
  call void @llvm.dbg.value(metadata !{double* %add.ptr965}, i64 0, metadata !202), !dbg !1068
  %add.ptr965.sum = shl nsw i64 %idx.ext964, 1, !dbg !1069
  %add.ptr968 = getelementptr inbounds double* %colU0562.12309, i64 %add.ptr965.sum, !dbg !1069
  call void @llvm.dbg.value(metadata !{double* %add.ptr968}, i64 0, metadata !203), !dbg !1069
  call void @ZVdotU23(i32 %386, double* %call583, double* %add.ptr586, double* %colU0562.12309, double* %add.ptr965, double* %add.ptr968, double* %arraydecay969) #6, !dbg !1060
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1070
  %387 = load i32** %colindU, align 8, !dbg !1070, !tbaa !419
  %arrayidx971 = getelementptr inbounds i32* %387, i64 %indvars.iv2406, !dbg !1070
  %388 = load i32* %arrayidx971, align 4, !dbg !1070, !tbaa !424
  %mul972 = shl nsw i32 %388, 1, !dbg !1070
  call void @llvm.dbg.value(metadata !{i32 %mul972}, i64 0, metadata !217), !dbg !1070
  %389 = add nsw i64 %indvars.iv2406, 1, !dbg !1071
  %arrayidx975 = getelementptr inbounds i32* %387, i64 %389, !dbg !1071
  %390 = load i32* %arrayidx975, align 4, !dbg !1071, !tbaa !424
  %mul976 = shl nsw i32 %390, 1, !dbg !1071
  call void @llvm.dbg.value(metadata !{i32 %mul976}, i64 0, metadata !218), !dbg !1071
  %391 = add nsw i64 %indvars.iv2406, 2, !dbg !1072
  %arrayidx979 = getelementptr inbounds i32* %387, i64 %391, !dbg !1072
  %392 = load i32* %arrayidx979, align 4, !dbg !1072, !tbaa !424
  %mul980 = shl nsw i32 %392, 1, !dbg !1072
  call void @llvm.dbg.value(metadata !{i32 %mul980}, i64 0, metadata !219), !dbg !1072
  %393 = load double* %arraydecay969, align 16, !dbg !1062, !tbaa !500
  %idxprom982 = sext i32 %mul972 to i64, !dbg !1062
  %add.ptr918.sum2154 = sub i64 %idxprom982, %idx.ext916, !dbg !1062
  %arrayidx983 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2154, !dbg !1062
  %394 = load double* %arrayidx983, align 8, !dbg !1062, !tbaa !500
  %sub984 = fsub double %394, %393, !dbg !1062
  store double %sub984, double* %arrayidx983, align 8, !dbg !1062, !tbaa !500
  %395 = load double* %arrayidx985, align 8, !dbg !1062, !tbaa !500
  %add9862155 = or i32 %mul972, 1, !dbg !1062
  %idxprom987 = sext i32 %add9862155 to i64, !dbg !1062
  %add.ptr918.sum2156 = sub i64 %idxprom987, %idx.ext916, !dbg !1062
  %arrayidx988 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2156, !dbg !1062
  %396 = load double* %arrayidx988, align 8, !dbg !1062, !tbaa !500
  %sub989 = fsub double %396, %395, !dbg !1062
  store double %sub989, double* %arrayidx988, align 8, !dbg !1062, !tbaa !500
  %397 = load double* %arrayidx990, align 16, !dbg !1063, !tbaa !500
  %idxprom991 = sext i32 %mul976 to i64, !dbg !1063
  %add.ptr918.sum2157 = sub i64 %idxprom991, %idx.ext916, !dbg !1063
  %arrayidx992 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2157, !dbg !1063
  %398 = load double* %arrayidx992, align 8, !dbg !1063, !tbaa !500
  %sub993 = fsub double %398, %397, !dbg !1063
  store double %sub993, double* %arrayidx992, align 8, !dbg !1063, !tbaa !500
  %399 = load double* %arrayidx994, align 8, !dbg !1063, !tbaa !500
  %add9952158 = or i32 %mul976, 1, !dbg !1063
  %idxprom996 = sext i32 %add9952158 to i64, !dbg !1063
  %add.ptr918.sum2159 = sub i64 %idxprom996, %idx.ext916, !dbg !1063
  %arrayidx997 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2159, !dbg !1063
  %400 = load double* %arrayidx997, align 8, !dbg !1063, !tbaa !500
  %sub998 = fsub double %400, %399, !dbg !1063
  store double %sub998, double* %arrayidx997, align 8, !dbg !1063, !tbaa !500
  %401 = load double* %arrayidx999, align 16, !dbg !1064, !tbaa !500
  %idxprom1000 = sext i32 %mul980 to i64, !dbg !1064
  %add.ptr918.sum2160 = sub i64 %idxprom1000, %idx.ext916, !dbg !1064
  %arrayidx1001 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2160, !dbg !1064
  %402 = load double* %arrayidx1001, align 8, !dbg !1064, !tbaa !500
  %sub1002 = fsub double %402, %401, !dbg !1064
  store double %sub1002, double* %arrayidx1001, align 8, !dbg !1064, !tbaa !500
  %403 = load double* %arrayidx1003, align 8, !dbg !1064, !tbaa !500
  %add10042161 = or i32 %mul980, 1, !dbg !1064
  %idxprom1005 = sext i32 %add10042161 to i64, !dbg !1064
  %add.ptr918.sum2162 = sub i64 %idxprom1005, %idx.ext916, !dbg !1064
  %arrayidx1006 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2162, !dbg !1064
  %404 = load double* %arrayidx1006, align 8, !dbg !1064, !tbaa !500
  %sub1007 = fsub double %404, %403, !dbg !1064
  store double %sub1007, double* %arrayidx1006, align 8, !dbg !1064, !tbaa !500
  %405 = load double* %arrayidx1008, align 16, !dbg !1065, !tbaa !500
  %add.ptr926.sum2163 = sub i64 %idxprom982, %idx.ext924, !dbg !1065
  %arrayidx1010 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2163, !dbg !1065
  %406 = load double* %arrayidx1010, align 8, !dbg !1065, !tbaa !500
  %sub1011 = fsub double %406, %405, !dbg !1065
  store double %sub1011, double* %arrayidx1010, align 8, !dbg !1065, !tbaa !500
  %407 = load double* %arrayidx1012, align 8, !dbg !1065, !tbaa !500
  %add.ptr926.sum2164 = sub i64 %idxprom987, %idx.ext924, !dbg !1065
  %arrayidx1015 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2164, !dbg !1065
  %408 = load double* %arrayidx1015, align 8, !dbg !1065, !tbaa !500
  %sub1016 = fsub double %408, %407, !dbg !1065
  store double %sub1016, double* %arrayidx1015, align 8, !dbg !1065, !tbaa !500
  %409 = load double* %arrayidx1017, align 16, !dbg !1066, !tbaa !500
  %add.ptr926.sum2165 = sub i64 %idxprom991, %idx.ext924, !dbg !1066
  %arrayidx1019 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2165, !dbg !1066
  %410 = load double* %arrayidx1019, align 8, !dbg !1066, !tbaa !500
  %sub1020 = fsub double %410, %409, !dbg !1066
  store double %sub1020, double* %arrayidx1019, align 8, !dbg !1066, !tbaa !500
  %411 = load double* %arrayidx1021, align 8, !dbg !1066, !tbaa !500
  %add.ptr926.sum2166 = sub i64 %idxprom996, %idx.ext924, !dbg !1066
  %arrayidx1024 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2166, !dbg !1066
  %412 = load double* %arrayidx1024, align 8, !dbg !1066, !tbaa !500
  %sub1025 = fsub double %412, %411, !dbg !1066
  store double %sub1025, double* %arrayidx1024, align 8, !dbg !1066, !tbaa !500
  %413 = load double* %arrayidx1026, align 16, !dbg !1067, !tbaa !500
  %add.ptr926.sum2167 = sub i64 %idxprom1000, %idx.ext924, !dbg !1067
  %arrayidx1028 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2167, !dbg !1067
  %414 = load double* %arrayidx1028, align 8, !dbg !1067, !tbaa !500
  %sub1029 = fsub double %414, %413, !dbg !1067
  store double %sub1029, double* %arrayidx1028, align 8, !dbg !1067, !tbaa !500
  %415 = load double* %arrayidx1030, align 8, !dbg !1067, !tbaa !500
  %add.ptr926.sum2168 = sub i64 %idxprom1005, %idx.ext924, !dbg !1067
  %arrayidx1033 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2168, !dbg !1067
  %416 = load double* %arrayidx1033, align 8, !dbg !1067, !tbaa !500
  %sub1034 = fsub double %416, %415, !dbg !1067
  store double %sub1034, double* %arrayidx1033, align 8, !dbg !1067, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1073
  %417 = load i32* %nrowU581, align 4, !dbg !1073, !tbaa !424
  %mul1035 = shl nsw i32 %417, 1, !dbg !1073
  %idx.ext1036 = sext i32 %mul1035 to i64, !dbg !1073
  %add.ptr968.sum = add i64 %idx.ext1036, %add.ptr965.sum, !dbg !1073
  %add.ptr1037 = getelementptr inbounds double* %colU0562.12309, i64 %add.ptr968.sum, !dbg !1073
  call void @llvm.dbg.value(metadata !{double* %add.ptr1037}, i64 0, metadata !201), !dbg !1073
  %add1039 = add nsw i32 %jcolU.92310, 3, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %add1039}, i64 0, metadata !135), !dbg !1058
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1058
  %418 = load i32* %ncolU, align 4, !dbg !1058, !tbaa !424
  %sub960 = add nsw i32 %418, -2, !dbg !1058
  %cmp961 = icmp slt i32 %add1039, %sub960, !dbg !1058
  %indvars.iv.next2407 = add i64 %indvars.iv2406, 3, !dbg !1058
  br i1 %cmp961, label %for.body962, label %for.end1040, !dbg !1058

for.end1040:                                      ; preds = %for.body962, %if.then908
  %419 = phi i32 [ %383, %if.then908 ], [ %417, %for.body962 ]
  %sub960.lcssa = phi i32 [ %sub9602307, %if.then908 ], [ %sub960, %for.body962 ]
  %.lcssa2306 = phi i32 [ %384, %if.then908 ], [ %418, %for.body962 ]
  %jcolU.9.lcssa = phi i32 [ %add958, %if.then908 ], [ %add1039, %for.body962 ]
  %colU0562.1.lcssa = phi double* [ %add.ptr957, %if.then908 ], [ %add.ptr1037, %for.body962 ]
  %cmp1042 = icmp eq i32 %jcolU.9.lcssa, %sub960.lcssa, !dbg !1074
  br i1 %cmp1042, label %if.then1043, label %if.else1091, !dbg !1074

if.then1043:                                      ; preds = %for.end1040
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1075
  %mul1044 = shl nsw i32 %419, 1, !dbg !1075
  %idx.ext1045 = sext i32 %mul1044 to i64, !dbg !1075
  %add.ptr1046 = getelementptr inbounds double* %colU0562.1.lcssa, i64 %idx.ext1045, !dbg !1075
  call void @llvm.dbg.value(metadata !{double* %add.ptr1046}, i64 0, metadata !202), !dbg !1075
  %arraydecay1047 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !1077
  call void @ZVdotU22(i32 %419, double* %call583, double* %add.ptr586, double* %colU0562.1.lcssa, double* %add.ptr1046, double* %arraydecay1047) #6, !dbg !1077
  %idxprom1048 = sext i32 %sub960.lcssa to i64, !dbg !1078
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1078
  %420 = load i32** %colindU, align 8, !dbg !1078, !tbaa !419
  %arrayidx1049 = getelementptr inbounds i32* %420, i64 %idxprom1048, !dbg !1078
  %421 = load i32* %arrayidx1049, align 4, !dbg !1078, !tbaa !424
  %mul1050 = shl nsw i32 %421, 1, !dbg !1078
  call void @llvm.dbg.value(metadata !{i32 %mul1050}, i64 0, metadata !217), !dbg !1078
  %add1051 = add nsw i32 %sub960.lcssa, 1, !dbg !1079
  %idxprom1052 = sext i32 %add1051 to i64, !dbg !1079
  %arrayidx1053 = getelementptr inbounds i32* %420, i64 %idxprom1052, !dbg !1079
  %422 = load i32* %arrayidx1053, align 4, !dbg !1079, !tbaa !424
  %mul1054 = shl nsw i32 %422, 1, !dbg !1079
  call void @llvm.dbg.value(metadata !{i32 %mul1054}, i64 0, metadata !218), !dbg !1079
  %423 = load double* %arraydecay1047, align 16, !dbg !1080, !tbaa !500
  %idxprom1056 = sext i32 %mul1050 to i64, !dbg !1080
  %add.ptr918.sum2144 = sub i64 %idxprom1056, %idx.ext916, !dbg !1080
  %arrayidx1057 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2144, !dbg !1080
  %424 = load double* %arrayidx1057, align 8, !dbg !1080, !tbaa !500
  %sub1058 = fsub double %424, %423, !dbg !1080
  store double %sub1058, double* %arrayidx1057, align 8, !dbg !1080, !tbaa !500
  %arrayidx1059 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !1080
  %425 = load double* %arrayidx1059, align 8, !dbg !1080, !tbaa !500
  %add10602145 = or i32 %mul1050, 1, !dbg !1080
  %idxprom1061 = sext i32 %add10602145 to i64, !dbg !1080
  %add.ptr918.sum2146 = sub i64 %idxprom1061, %idx.ext916, !dbg !1080
  %arrayidx1062 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2146, !dbg !1080
  %426 = load double* %arrayidx1062, align 8, !dbg !1080, !tbaa !500
  %sub1063 = fsub double %426, %425, !dbg !1080
  store double %sub1063, double* %arrayidx1062, align 8, !dbg !1080, !tbaa !500
  %arrayidx1064 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2, !dbg !1081
  %427 = load double* %arrayidx1064, align 16, !dbg !1081, !tbaa !500
  %idxprom1065 = sext i32 %mul1054 to i64, !dbg !1081
  %add.ptr918.sum2147 = sub i64 %idxprom1065, %idx.ext916, !dbg !1081
  %arrayidx1066 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2147, !dbg !1081
  %428 = load double* %arrayidx1066, align 8, !dbg !1081, !tbaa !500
  %sub1067 = fsub double %428, %427, !dbg !1081
  store double %sub1067, double* %arrayidx1066, align 8, !dbg !1081, !tbaa !500
  %arrayidx1068 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3, !dbg !1081
  %429 = load double* %arrayidx1068, align 8, !dbg !1081, !tbaa !500
  %add10692148 = or i32 %mul1054, 1, !dbg !1081
  %idxprom1070 = sext i32 %add10692148 to i64, !dbg !1081
  %add.ptr918.sum2149 = sub i64 %idxprom1070, %idx.ext916, !dbg !1081
  %arrayidx1071 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2149, !dbg !1081
  %430 = load double* %arrayidx1071, align 8, !dbg !1081, !tbaa !500
  %sub1072 = fsub double %430, %429, !dbg !1081
  store double %sub1072, double* %arrayidx1071, align 8, !dbg !1081, !tbaa !500
  %arrayidx1073 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4, !dbg !1082
  %431 = load double* %arrayidx1073, align 16, !dbg !1082, !tbaa !500
  %add.ptr926.sum2150 = sub i64 %idxprom1056, %idx.ext924, !dbg !1082
  %arrayidx1075 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2150, !dbg !1082
  %432 = load double* %arrayidx1075, align 8, !dbg !1082, !tbaa !500
  %sub1076 = fsub double %432, %431, !dbg !1082
  store double %sub1076, double* %arrayidx1075, align 8, !dbg !1082, !tbaa !500
  %arrayidx1077 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5, !dbg !1082
  %433 = load double* %arrayidx1077, align 8, !dbg !1082, !tbaa !500
  %add.ptr926.sum2151 = sub i64 %idxprom1061, %idx.ext924, !dbg !1082
  %arrayidx1080 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2151, !dbg !1082
  %434 = load double* %arrayidx1080, align 8, !dbg !1082, !tbaa !500
  %sub1081 = fsub double %434, %433, !dbg !1082
  store double %sub1081, double* %arrayidx1080, align 8, !dbg !1082, !tbaa !500
  %arrayidx1082 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 6, !dbg !1083
  %435 = load double* %arrayidx1082, align 16, !dbg !1083, !tbaa !500
  %add.ptr926.sum2152 = sub i64 %idxprom1065, %idx.ext924, !dbg !1083
  %arrayidx1084 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2152, !dbg !1083
  %436 = load double* %arrayidx1084, align 8, !dbg !1083, !tbaa !500
  %sub1085 = fsub double %436, %435, !dbg !1083
  store double %sub1085, double* %arrayidx1084, align 8, !dbg !1083, !tbaa !500
  %arrayidx1086 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 7, !dbg !1083
  %437 = load double* %arrayidx1086, align 8, !dbg !1083, !tbaa !500
  %add.ptr926.sum2153 = sub i64 %idxprom1070, %idx.ext924, !dbg !1083
  %arrayidx1089 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2153, !dbg !1083
  %438 = load double* %arrayidx1089, align 8, !dbg !1083, !tbaa !500
  %sub1090 = fsub double %438, %437, !dbg !1083
  store double %sub1090, double* %arrayidx1089, align 8, !dbg !1083, !tbaa !500
  br label %for.cond1373.preheader, !dbg !1084

if.else1091:                                      ; preds = %for.end1040
  %sub1092 = add nsw i32 %.lcssa2306, -1, !dbg !1085
  %cmp1093 = icmp eq i32 %jcolU.9.lcssa, %sub1092, !dbg !1085
  br i1 %cmp1093, label %if.then1094, label %for.cond1373.preheader, !dbg !1085

if.then1094:                                      ; preds = %if.else1091
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1086
  %arraydecay1095 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !1086
  call void @ZVdotU21(i32 %419, double* %call583, double* %add.ptr586, double* %colU0562.1.lcssa, double* %arraydecay1095) #6, !dbg !1086
  %idxprom1096 = sext i32 %jcolU.9.lcssa to i64, !dbg !1088
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1088
  %439 = load i32** %colindU, align 8, !dbg !1088, !tbaa !419
  %arrayidx1097 = getelementptr inbounds i32* %439, i64 %idxprom1096, !dbg !1088
  %440 = load i32* %arrayidx1097, align 4, !dbg !1088, !tbaa !424
  %mul1098 = shl nsw i32 %440, 1, !dbg !1088
  call void @llvm.dbg.value(metadata !{i32 %mul1098}, i64 0, metadata !217), !dbg !1088
  %441 = load double* %arraydecay1095, align 16, !dbg !1089, !tbaa !500
  %idxprom1100 = sext i32 %mul1098 to i64, !dbg !1089
  %add.ptr918.sum2139 = sub i64 %idxprom1100, %idx.ext916, !dbg !1089
  %arrayidx1101 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2139, !dbg !1089
  %442 = load double* %arrayidx1101, align 8, !dbg !1089, !tbaa !500
  %sub1102 = fsub double %442, %441, !dbg !1089
  store double %sub1102, double* %arrayidx1101, align 8, !dbg !1089, !tbaa !500
  %arrayidx1103 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !1089
  %443 = load double* %arrayidx1103, align 8, !dbg !1089, !tbaa !500
  %add11042140 = or i32 %mul1098, 1, !dbg !1089
  %idxprom1105 = sext i32 %add11042140 to i64, !dbg !1089
  %add.ptr918.sum2141 = sub i64 %idxprom1105, %idx.ext916, !dbg !1089
  %arrayidx1106 = getelementptr inbounds double* %call914, i64 %add.ptr918.sum2141, !dbg !1089
  %444 = load double* %arrayidx1106, align 8, !dbg !1089, !tbaa !500
  %sub1107 = fsub double %444, %443, !dbg !1089
  store double %sub1107, double* %arrayidx1106, align 8, !dbg !1089, !tbaa !500
  %arrayidx1108 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2, !dbg !1090
  %445 = load double* %arrayidx1108, align 16, !dbg !1090, !tbaa !500
  %add.ptr926.sum2142 = sub i64 %idxprom1100, %idx.ext924, !dbg !1090
  %arrayidx1110 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2142, !dbg !1090
  %446 = load double* %arrayidx1110, align 8, !dbg !1090, !tbaa !500
  %sub1111 = fsub double %446, %445, !dbg !1090
  store double %sub1111, double* %arrayidx1110, align 8, !dbg !1090, !tbaa !500
  %arrayidx1112 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3, !dbg !1090
  %447 = load double* %arrayidx1112, align 8, !dbg !1090, !tbaa !500
  %add.ptr926.sum2143 = sub i64 %idxprom1105, %idx.ext924, !dbg !1090
  %arrayidx1115 = getelementptr inbounds double* %call922, i64 %add.ptr926.sum2143, !dbg !1090
  %448 = load double* %arrayidx1115, align 8, !dbg !1090, !tbaa !500
  %sub1116 = fsub double %448, %447, !dbg !1090
  store double %sub1116, double* %arrayidx1115, align 8, !dbg !1090, !tbaa !500
  br label %for.cond1373.preheader, !dbg !1091

if.else1119:                                      ; preds = %for.end905
  %cmp1120 = icmp eq i32 %irowUT577.0.lcssa, %lastInU.0.lcssa2461, !dbg !1092
  br i1 %cmp1120, label %if.then1121, label %for.cond1373.preheader, !dbg !1092

if.then1121:                                      ; preds = %if.else1119
  %idxprom1122 = sext i32 %lastInU.0.lcssa2461 to i64, !dbg !1093
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1093
  %449 = load i32** %colindU, align 8, !dbg !1093, !tbaa !419
  %arrayidx1123 = getelementptr inbounds i32* %449, i64 %idxprom1122, !dbg !1093
  %450 = load i32* %arrayidx1123, align 4, !dbg !1093, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %450}, i64 0, metadata !211), !dbg !1093
  %call1124 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %450) #6, !dbg !1095
  %mul1125 = shl nsw i32 %450, 1, !dbg !1095
  %idx.ext1126 = sext i32 %mul1125 to i64, !dbg !1095
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1096
  %451 = load i32* %nrowU581, align 4, !dbg !1096, !tbaa !424
  %mul1129 = shl nsw i32 %451, 1, !dbg !1096
  call void @DVzero(i32 %mul1129, double* %call583) #6, !dbg !1096
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call583, double* %rowUT0566.0.lcssa) #6, !dbg !1097
  call void @llvm.dbg.value(metadata !{double* %rowUT0566.0.lcssa}, i64 0, metadata !201), !dbg !1098
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1099
  %452 = load i32* %nrowU581, align 4, !dbg !1099, !tbaa !424
  call void @ZVdotU(i32 %452, double* %call583, double* %rowUT0566.0.lcssa, double* %rsum, double* %isum) #6, !dbg !1099
  call void @llvm.dbg.value(metadata !{double* %rsum}, i64 0, metadata !196), !dbg !1100
  %453 = load double* %rsum, align 8, !dbg !1100, !tbaa !500
  %454 = load double* %call1124, align 8, !dbg !1100, !tbaa !500
  %sub1133 = fsub double %454, %453, !dbg !1100
  store double %sub1133, double* %call1124, align 8, !dbg !1100, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum}, i64 0, metadata !193), !dbg !1100
  %455 = load double* %isum, align 8, !dbg !1100, !tbaa !500
  %add11352116 = or i32 %mul1125, 1, !dbg !1100
  %idxprom1136 = sext i32 %add11352116 to i64, !dbg !1100
  %add.ptr1128.sum = sub i64 %idxprom1136, %idx.ext1126, !dbg !1100
  %arrayidx1137 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum, !dbg !1100
  %456 = load double* %arrayidx1137, align 8, !dbg !1100, !tbaa !500
  %sub1138 = fsub double %456, %455, !dbg !1100
  store double %sub1138, double* %arrayidx1137, align 8, !dbg !1100, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1101
  %457 = load i32* %nrowU581, align 4, !dbg !1101, !tbaa !424
  %mul1139 = shl nsw i32 %457, 1, !dbg !1101
  %idx.ext1140 = sext i32 %mul1139 to i64, !dbg !1101
  %add.ptr1141 = getelementptr inbounds double* %rowUT0566.0.lcssa, i64 %idx.ext1140, !dbg !1101
  call void @llvm.dbg.value(metadata !{double* %add.ptr1141}, i64 0, metadata !201), !dbg !1101
  %add1142 = add i32 %lastInU.0.lcssa2461, 1, !dbg !1102
  call void @llvm.dbg.value(metadata !{i32 %add1142}, i64 0, metadata !135), !dbg !1102
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1102
  %458 = load i32* %ncolU, align 4, !dbg !1102, !tbaa !424
  %sub11442316 = add nsw i32 %458, -2, !dbg !1102
  %cmp11452317 = icmp slt i32 %add1142, %sub11442316, !dbg !1102
  br i1 %cmp11452317, label %for.body1146.lr.ph, label %for.end1197, !dbg !1102

for.body1146.lr.ph:                               ; preds = %if.then1121
  %arraydecay1153 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !1104
  %arrayidx1169 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !1106
  %arrayidx1174 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2, !dbg !1107
  %arrayidx1178 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3, !dbg !1107
  %arrayidx1183 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 4, !dbg !1108
  %arrayidx1187 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 5, !dbg !1108
  %459 = sext i32 %add1142 to i64
  br label %for.body1146, !dbg !1102

for.body1146:                                     ; preds = %for.body1146.lr.ph, %for.body1146
  %460 = phi i32 [ %457, %for.body1146.lr.ph ], [ %479, %for.body1146 ], !dbg !1109
  %indvars.iv2413 = phi i64 [ %459, %for.body1146.lr.ph ], [ %indvars.iv.next2414, %for.body1146 ]
  %jcolU.102319 = phi i32 [ %add1142, %for.body1146.lr.ph ], [ %add1196, %for.body1146 ]
  %colU0562.22318 = phi double* [ %add.ptr1141, %for.body1146.lr.ph ], [ %add.ptr1194, %for.body1146 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1109
  %mul1147 = shl nsw i32 %460, 1, !dbg !1109
  %idx.ext1148 = sext i32 %mul1147 to i64, !dbg !1109
  %add.ptr1149 = getelementptr inbounds double* %colU0562.22318, i64 %idx.ext1148, !dbg !1109
  call void @llvm.dbg.value(metadata !{double* %add.ptr1149}, i64 0, metadata !202), !dbg !1109
  %add.ptr1149.sum = shl nsw i64 %idx.ext1148, 1, !dbg !1110
  %add.ptr1152 = getelementptr inbounds double* %colU0562.22318, i64 %add.ptr1149.sum, !dbg !1110
  call void @llvm.dbg.value(metadata !{double* %add.ptr1152}, i64 0, metadata !203), !dbg !1110
  call void @ZVdotU13(i32 %460, double* %call583, double* %colU0562.22318, double* %add.ptr1149, double* %add.ptr1152, double* %arraydecay1153) #6, !dbg !1104
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1111
  %461 = load i32** %colindU, align 8, !dbg !1111, !tbaa !419
  %arrayidx1155 = getelementptr inbounds i32* %461, i64 %indvars.iv2413, !dbg !1111
  %462 = load i32* %arrayidx1155, align 4, !dbg !1111, !tbaa !424
  %mul1156 = shl nsw i32 %462, 1, !dbg !1111
  call void @llvm.dbg.value(metadata !{i32 %mul1156}, i64 0, metadata !217), !dbg !1111
  %463 = add nsw i64 %indvars.iv2413, 1, !dbg !1112
  %arrayidx1159 = getelementptr inbounds i32* %461, i64 %463, !dbg !1112
  %464 = load i32* %arrayidx1159, align 4, !dbg !1112, !tbaa !424
  %mul1160 = shl nsw i32 %464, 1, !dbg !1112
  call void @llvm.dbg.value(metadata !{i32 %mul1160}, i64 0, metadata !218), !dbg !1112
  %465 = add nsw i64 %indvars.iv2413, 2, !dbg !1113
  %arrayidx1163 = getelementptr inbounds i32* %461, i64 %465, !dbg !1113
  %466 = load i32* %arrayidx1163, align 4, !dbg !1113, !tbaa !424
  %mul1164 = shl nsw i32 %466, 1, !dbg !1113
  call void @llvm.dbg.value(metadata !{i32 %mul1164}, i64 0, metadata !219), !dbg !1113
  %467 = load double* %arraydecay1153, align 16, !dbg !1106, !tbaa !500
  %idxprom1166 = sext i32 %mul1156 to i64, !dbg !1106
  %add.ptr1128.sum2126 = sub i64 %idxprom1166, %idx.ext1126, !dbg !1106
  %arrayidx1167 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2126, !dbg !1106
  %468 = load double* %arrayidx1167, align 8, !dbg !1106, !tbaa !500
  %sub1168 = fsub double %468, %467, !dbg !1106
  store double %sub1168, double* %arrayidx1167, align 8, !dbg !1106, !tbaa !500
  %469 = load double* %arrayidx1169, align 8, !dbg !1106, !tbaa !500
  %add11702127 = or i32 %mul1156, 1, !dbg !1106
  %idxprom1171 = sext i32 %add11702127 to i64, !dbg !1106
  %add.ptr1128.sum2128 = sub i64 %idxprom1171, %idx.ext1126, !dbg !1106
  %arrayidx1172 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2128, !dbg !1106
  %470 = load double* %arrayidx1172, align 8, !dbg !1106, !tbaa !500
  %sub1173 = fsub double %470, %469, !dbg !1106
  store double %sub1173, double* %arrayidx1172, align 8, !dbg !1106, !tbaa !500
  %471 = load double* %arrayidx1174, align 16, !dbg !1107, !tbaa !500
  %idxprom1175 = sext i32 %mul1160 to i64, !dbg !1107
  %add.ptr1128.sum2129 = sub i64 %idxprom1175, %idx.ext1126, !dbg !1107
  %arrayidx1176 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2129, !dbg !1107
  %472 = load double* %arrayidx1176, align 8, !dbg !1107, !tbaa !500
  %sub1177 = fsub double %472, %471, !dbg !1107
  store double %sub1177, double* %arrayidx1176, align 8, !dbg !1107, !tbaa !500
  %473 = load double* %arrayidx1178, align 8, !dbg !1107, !tbaa !500
  %add11792130 = or i32 %mul1160, 1, !dbg !1107
  %idxprom1180 = sext i32 %add11792130 to i64, !dbg !1107
  %add.ptr1128.sum2131 = sub i64 %idxprom1180, %idx.ext1126, !dbg !1107
  %arrayidx1181 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2131, !dbg !1107
  %474 = load double* %arrayidx1181, align 8, !dbg !1107, !tbaa !500
  %sub1182 = fsub double %474, %473, !dbg !1107
  store double %sub1182, double* %arrayidx1181, align 8, !dbg !1107, !tbaa !500
  %475 = load double* %arrayidx1183, align 16, !dbg !1108, !tbaa !500
  %idxprom1184 = sext i32 %mul1164 to i64, !dbg !1108
  %add.ptr1128.sum2132 = sub i64 %idxprom1184, %idx.ext1126, !dbg !1108
  %arrayidx1185 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2132, !dbg !1108
  %476 = load double* %arrayidx1185, align 8, !dbg !1108, !tbaa !500
  %sub1186 = fsub double %476, %475, !dbg !1108
  store double %sub1186, double* %arrayidx1185, align 8, !dbg !1108, !tbaa !500
  %477 = load double* %arrayidx1187, align 8, !dbg !1108, !tbaa !500
  %add11882133 = or i32 %mul1164, 1, !dbg !1108
  %idxprom1189 = sext i32 %add11882133 to i64, !dbg !1108
  %add.ptr1128.sum2134 = sub i64 %idxprom1189, %idx.ext1126, !dbg !1108
  %arrayidx1190 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2134, !dbg !1108
  %478 = load double* %arrayidx1190, align 8, !dbg !1108, !tbaa !500
  %sub1191 = fsub double %478, %477, !dbg !1108
  store double %sub1191, double* %arrayidx1190, align 8, !dbg !1108, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1114
  %479 = load i32* %nrowU581, align 4, !dbg !1114, !tbaa !424
  %mul1192 = shl nsw i32 %479, 1, !dbg !1114
  %idx.ext1193 = sext i32 %mul1192 to i64, !dbg !1114
  %add.ptr1152.sum = add i64 %idx.ext1193, %add.ptr1149.sum, !dbg !1114
  %add.ptr1194 = getelementptr inbounds double* %colU0562.22318, i64 %add.ptr1152.sum, !dbg !1114
  call void @llvm.dbg.value(metadata !{double* %add.ptr1194}, i64 0, metadata !201), !dbg !1114
  %add1196 = add nsw i32 %jcolU.102319, 3, !dbg !1102
  call void @llvm.dbg.value(metadata !{i32 %add1196}, i64 0, metadata !135), !dbg !1102
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1102
  %480 = load i32* %ncolU, align 4, !dbg !1102, !tbaa !424
  %sub1144 = add nsw i32 %480, -2, !dbg !1102
  %cmp1145 = icmp slt i32 %add1196, %sub1144, !dbg !1102
  %indvars.iv.next2414 = add i64 %indvars.iv2413, 3, !dbg !1102
  br i1 %cmp1145, label %for.body1146, label %for.end1197, !dbg !1102

for.end1197:                                      ; preds = %for.body1146, %if.then1121
  %481 = phi i32 [ %457, %if.then1121 ], [ %479, %for.body1146 ]
  %sub1144.lcssa = phi i32 [ %sub11442316, %if.then1121 ], [ %sub1144, %for.body1146 ]
  %.lcssa2315 = phi i32 [ %458, %if.then1121 ], [ %480, %for.body1146 ]
  %jcolU.10.lcssa = phi i32 [ %add1142, %if.then1121 ], [ %add1196, %for.body1146 ]
  %colU0562.2.lcssa = phi double* [ %add.ptr1141, %if.then1121 ], [ %add.ptr1194, %for.body1146 ]
  %cmp1199 = icmp eq i32 %jcolU.10.lcssa, %sub1144.lcssa, !dbg !1115
  br i1 %cmp1199, label %if.then1200, label %if.else1230, !dbg !1115

if.then1200:                                      ; preds = %for.end1197
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1116
  %mul1201 = shl nsw i32 %481, 1, !dbg !1116
  %idx.ext1202 = sext i32 %mul1201 to i64, !dbg !1116
  %add.ptr1203 = getelementptr inbounds double* %colU0562.2.lcssa, i64 %idx.ext1202, !dbg !1116
  call void @llvm.dbg.value(metadata !{double* %add.ptr1203}, i64 0, metadata !202), !dbg !1116
  %arraydecay1204 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !1118
  call void @ZVdotU12(i32 %481, double* %call583, double* %colU0562.2.lcssa, double* %add.ptr1203, double* %arraydecay1204) #6, !dbg !1118
  %idxprom1205 = sext i32 %sub1144.lcssa to i64, !dbg !1119
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1119
  %482 = load i32** %colindU, align 8, !dbg !1119, !tbaa !419
  %arrayidx1206 = getelementptr inbounds i32* %482, i64 %idxprom1205, !dbg !1119
  %483 = load i32* %arrayidx1206, align 4, !dbg !1119, !tbaa !424
  %mul1207 = shl nsw i32 %483, 1, !dbg !1119
  call void @llvm.dbg.value(metadata !{i32 %mul1207}, i64 0, metadata !217), !dbg !1119
  %add1208 = add nsw i32 %sub1144.lcssa, 1, !dbg !1120
  %idxprom1209 = sext i32 %add1208 to i64, !dbg !1120
  %arrayidx1210 = getelementptr inbounds i32* %482, i64 %idxprom1209, !dbg !1120
  %484 = load i32* %arrayidx1210, align 4, !dbg !1120, !tbaa !424
  %mul1211 = shl nsw i32 %484, 1, !dbg !1120
  call void @llvm.dbg.value(metadata !{i32 %mul1211}, i64 0, metadata !218), !dbg !1120
  %485 = load double* %arraydecay1204, align 16, !dbg !1121, !tbaa !500
  %idxprom1213 = sext i32 %mul1207 to i64, !dbg !1121
  %add.ptr1128.sum2120 = sub i64 %idxprom1213, %idx.ext1126, !dbg !1121
  %arrayidx1214 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2120, !dbg !1121
  %486 = load double* %arrayidx1214, align 8, !dbg !1121, !tbaa !500
  %sub1215 = fsub double %486, %485, !dbg !1121
  store double %sub1215, double* %arrayidx1214, align 8, !dbg !1121, !tbaa !500
  %arrayidx1216 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !1121
  %487 = load double* %arrayidx1216, align 8, !dbg !1121, !tbaa !500
  %add12172121 = or i32 %mul1207, 1, !dbg !1121
  %idxprom1218 = sext i32 %add12172121 to i64, !dbg !1121
  %add.ptr1128.sum2122 = sub i64 %idxprom1218, %idx.ext1126, !dbg !1121
  %arrayidx1219 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2122, !dbg !1121
  %488 = load double* %arrayidx1219, align 8, !dbg !1121, !tbaa !500
  %sub1220 = fsub double %488, %487, !dbg !1121
  store double %sub1220, double* %arrayidx1219, align 8, !dbg !1121, !tbaa !500
  %arrayidx1221 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 2, !dbg !1122
  %489 = load double* %arrayidx1221, align 16, !dbg !1122, !tbaa !500
  %idxprom1222 = sext i32 %mul1211 to i64, !dbg !1122
  %add.ptr1128.sum2123 = sub i64 %idxprom1222, %idx.ext1126, !dbg !1122
  %arrayidx1223 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2123, !dbg !1122
  %490 = load double* %arrayidx1223, align 8, !dbg !1122, !tbaa !500
  %sub1224 = fsub double %490, %489, !dbg !1122
  store double %sub1224, double* %arrayidx1223, align 8, !dbg !1122, !tbaa !500
  %arrayidx1225 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 3, !dbg !1122
  %491 = load double* %arrayidx1225, align 8, !dbg !1122, !tbaa !500
  %add12262124 = or i32 %mul1211, 1, !dbg !1122
  %idxprom1227 = sext i32 %add12262124 to i64, !dbg !1122
  %add.ptr1128.sum2125 = sub i64 %idxprom1227, %idx.ext1126, !dbg !1122
  %arrayidx1228 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2125, !dbg !1122
  %492 = load double* %arrayidx1228, align 8, !dbg !1122, !tbaa !500
  %sub1229 = fsub double %492, %491, !dbg !1122
  store double %sub1229, double* %arrayidx1228, align 8, !dbg !1122, !tbaa !500
  br label %for.cond1373.preheader, !dbg !1123

if.else1230:                                      ; preds = %for.end1197
  %sub1231 = add nsw i32 %.lcssa2315, -1, !dbg !1124
  %cmp1232 = icmp eq i32 %jcolU.10.lcssa, %sub1231, !dbg !1124
  br i1 %cmp1232, label %if.then1233, label %for.cond1373.preheader, !dbg !1124

if.then1233:                                      ; preds = %if.else1230
  call void @llvm.dbg.value(metadata !{i32* %nrowU581}, i64 0, metadata !220), !dbg !1125
  %arraydecay1234 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 0, !dbg !1125
  call void @ZVdotU11(i32 %481, double* %call583, double* %colU0562.2.lcssa, double* %arraydecay1234) #6, !dbg !1125
  %idxprom1235 = sext i32 %jcolU.10.lcssa to i64, !dbg !1127
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1127
  %493 = load i32** %colindU, align 8, !dbg !1127, !tbaa !419
  %arrayidx1236 = getelementptr inbounds i32* %493, i64 %idxprom1235, !dbg !1127
  %494 = load i32* %arrayidx1236, align 4, !dbg !1127, !tbaa !424
  %mul1237 = shl nsw i32 %494, 1, !dbg !1127
  call void @llvm.dbg.value(metadata !{i32 %mul1237}, i64 0, metadata !217), !dbg !1127
  %495 = load double* %arraydecay1234, align 16, !dbg !1128, !tbaa !500
  %idxprom1239 = sext i32 %mul1237 to i64, !dbg !1128
  %add.ptr1128.sum2117 = sub i64 %idxprom1239, %idx.ext1126, !dbg !1128
  %arrayidx1240 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2117, !dbg !1128
  %496 = load double* %arrayidx1240, align 8, !dbg !1128, !tbaa !500
  %sub1241 = fsub double %496, %495, !dbg !1128
  store double %sub1241, double* %arrayidx1240, align 8, !dbg !1128, !tbaa !500
  %arrayidx1242 = getelementptr inbounds [18 x double]* %sums558, i64 0, i64 1, !dbg !1128
  %497 = load double* %arrayidx1242, align 8, !dbg !1128, !tbaa !500
  %add12432118 = or i32 %mul1237, 1, !dbg !1128
  %idxprom1244 = sext i32 %add12432118 to i64, !dbg !1128
  %add.ptr1128.sum2119 = sub i64 %idxprom1244, %idx.ext1126, !dbg !1128
  %arrayidx1245 = getelementptr inbounds double* %call1124, i64 %add.ptr1128.sum2119, !dbg !1128
  %498 = load double* %arrayidx1245, align 8, !dbg !1128, !tbaa !500
  %sub1246 = fsub double %498, %497, !dbg !1128
  store double %sub1246, double* %arrayidx1245, align 8, !dbg !1128, !tbaa !500
  br label %for.cond1373.preheader, !dbg !1129

if.then1254:                                      ; preds = %if.then554
  call void @llvm.dbg.declare(metadata !{double* %isum1255}, metadata !221), !dbg !1130
  call void @llvm.dbg.declare(metadata !{double* %rsum1256}, metadata !223), !dbg !1130
  call void @llvm.dbg.declare(metadata !{double** %entU1259}, metadata !226), !dbg !1131
  call void @llvm.dbg.declare(metadata !{i32* %nentU1267}, metadata !235), !dbg !1132
  call void @llvm.dbg.declare(metadata !{i32** %indU1272}, metadata !241), !dbg !1133
  call void @llvm.dbg.declare(metadata !{i32** %sizes1275}, metadata !244), !dbg !1133
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU, i32* %nentU1267, i32** %sizes1275, i32** %indU1272, double** %entU1259) #6, !dbg !1134
  %nrow1276 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4, !dbg !1135
  %499 = load i32* %nrow1276, align 4, !dbg !1135, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %499}, i64 0, metadata !236), !dbg !1135
  %mul1277 = shl nsw i32 %499, 2, !dbg !1136
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul1277) #6, !dbg !1136
  %call1278 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !1137
  call void @llvm.dbg.value(metadata !{double* %call1278}, i64 0, metadata !228), !dbg !1137
  %mul1279 = shl nsw i32 %499, 1, !dbg !1138
  %idx.ext1280 = sext i32 %mul1279 to i64, !dbg !1138
  %add.ptr1281 = getelementptr inbounds double* %call1278, i64 %idx.ext1280, !dbg !1138
  call void @llvm.dbg.value(metadata !{double* %add.ptr1281}, i64 0, metadata !229), !dbg !1138
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !1139
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !1139
  %cmp12832350 = icmp sgt i32 %jcolU.0.lcssa, 0, !dbg !1139
  br i1 %cmp12832350, label %for.body1284.lr.ph, label %for.end1290, !dbg !1139

for.body1284.lr.ph:                               ; preds = %if.then1254
  call void @llvm.dbg.value(metadata !{i32** %sizes1275}, i64 0, metadata !244), !dbg !1141
  %500 = load i32** %sizes1275, align 8, !dbg !1141, !tbaa !419
  br label %for.body1284, !dbg !1139

for.body1284:                                     ; preds = %for.body1284, %for.body1284.lr.ph
  %indvars.iv2441 = phi i64 [ 0, %for.body1284.lr.ph ], [ %indvars.iv.next2442, %for.body1284 ]
  %offset1269.02351 = phi i32 [ 0, %for.body1284.lr.ph ], [ %add1287, %for.body1284 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes1275}, i64 0, metadata !244), !dbg !1141
  %arrayidx1286 = getelementptr inbounds i32* %500, i64 %indvars.iv2441, !dbg !1141
  %501 = load i32* %arrayidx1286, align 4, !dbg !1141, !tbaa !424
  %add1287 = add nsw i32 %501, %offset1269.02351, !dbg !1141
  call void @llvm.dbg.value(metadata !{i32 %add1287}, i64 0, metadata !237), !dbg !1141
  %indvars.iv.next2442 = add i64 %indvars.iv2441, 1, !dbg !1139
  %lftr.wideiv2443 = trunc i64 %indvars.iv.next2442 to i32, !dbg !1139
  %exitcond2444 = icmp eq i32 %lftr.wideiv2443, %jcolU.0.lcssa, !dbg !1139
  br i1 %exitcond2444, label %for.end1290, label %for.body1284, !dbg !1139

for.end1290:                                      ; preds = %for.body1284, %if.then1254
  %offset1269.0.lcssa = phi i32 [ 0, %if.then1254 ], [ %add1287, %for.body1284 ]
  call void @llvm.dbg.value(metadata !{double** %entU1259}, i64 0, metadata !226), !dbg !1143
  call void @llvm.dbg.value(metadata !{double* %add.ptr1293}, i64 0, metadata !227), !dbg !1143
  call void @llvm.dbg.value(metadata !{i32** %indU1272}, i64 0, metadata !241), !dbg !1144
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1295}, i64 0, metadata !243), !dbg !1144
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !233), !dbg !1145
  %cmp12972345 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa2461, !dbg !1145
  br i1 %cmp12972345, label %for.cond1373.preheader, label %for.body1298.lr.ph, !dbg !1145

for.body1298.lr.ph:                               ; preds = %for.end1290
  %mul1291 = shl nsw i32 %offset1269.0.lcssa, 1, !dbg !1143
  %idx.ext1294 = sext i32 %offset1269.0.lcssa to i64, !dbg !1144
  call void @llvm.dbg.value(metadata !{i32** %indU1272}, i64 0, metadata !241), !dbg !1144
  %502 = load i32** %indU1272, align 8, !dbg !1144, !tbaa !419
  %idx.ext1292 = sext i32 %mul1291 to i64, !dbg !1143
  call void @llvm.dbg.value(metadata !{double** %entU1259}, i64 0, metadata !226), !dbg !1143
  %503 = load double** %entU1259, align 8, !dbg !1143, !tbaa !419
  %add.ptr1295 = getelementptr inbounds i32* %502, i64 %idx.ext1294, !dbg !1144
  %add.ptr1293 = getelementptr inbounds double* %503, i64 %idx.ext1292, !dbg !1143
  %504 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body1298, !dbg !1145

for.cond1373.preheader:                           ; preds = %for.end1290, %for.inc1364, %for.end487, %for.inc544, %if.else1119, %if.else377, %if.else1091, %if.then1094, %if.then1043, %if.then1200, %if.then1233, %if.else1230, %for.end69, %if.else360, %if.then363, %if.then335, %if.then429, %if.then449, %if.else446
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1147
  %505 = load i32* %ncolU, align 4, !dbg !1147, !tbaa !424
  %cmp13742259 = icmp slt i32 %jcolU.0.lcssa, %505, !dbg !1147
  br i1 %cmp13742259, label %for.body1375.lr.ph, label %return, !dbg !1147

for.body1375.lr.ph:                               ; preds = %for.cond1373.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1149
  %506 = load i32** %colindU, align 8, !dbg !1149, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !140), !dbg !1149
  %507 = load i32** %colindT, align 8, !dbg !1149, !tbaa !419
  %508 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body1375, !dbg !1147

for.body1298:                                     ; preds = %for.inc1364.for.body1298_crit_edge, %for.body1298.lr.ph
  %indvars.iv2439 = phi i64 [ %indvars.iv.next2440, %for.inc1364.for.body1298_crit_edge ], [ %504, %for.body1298.lr.ph ]
  %indUT01274.02349 = phi i32* [ %indUT01274.1, %for.inc1364.for.body1298_crit_edge ], [ %add.ptr1295, %for.body1298.lr.ph ]
  %rowUT01260.02346 = phi double* [ %rowUT01260.1, %for.inc1364.for.body1298_crit_edge ], [ %add.ptr1293, %for.body1298.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %sizes1275}, i64 0, metadata !244), !dbg !1151
  %509 = load i32** %sizes1275, align 8, !dbg !1151, !tbaa !419
  %arrayidx1300 = getelementptr inbounds i32* %509, i64 %indvars.iv2439, !dbg !1151
  %510 = load i32* %arrayidx1300, align 4, !dbg !1151, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %510}, i64 0, metadata !240), !dbg !1151
  %cmp1301 = icmp sgt i32 %510, 0, !dbg !1151
  br i1 %cmp1301, label %for.body1313.lr.ph, label %for.body1298.for.inc1364_crit_edge, !dbg !1151

for.body1298.for.inc1364_crit_edge:               ; preds = %for.body1298
  %.pre2459 = trunc i64 %indvars.iv2439 to i32, !dbg !1145
  br label %for.inc1364, !dbg !1151

for.body1313.lr.ph:                               ; preds = %for.body1298
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1153
  %511 = load i32** %colindU, align 8, !dbg !1153, !tbaa !419
  %arrayidx1304 = getelementptr inbounds i32* %511, i64 %indvars.iv2439, !dbg !1153
  %512 = load i32* %arrayidx1304, align 4, !dbg !1153, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %512}, i64 0, metadata !230), !dbg !1153
  %call1305 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %512) #6, !dbg !1155
  %mul1306 = shl nsw i32 %512, 1, !dbg !1155
  %idx.ext1307 = sext i32 %mul1306 to i64, !dbg !1155
  call void @DVzero(i32 %mul1277, double* %call1278) #6, !dbg !1156
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !231), !dbg !1157
  br label %for.body1313, !dbg !1157

for.body1313:                                     ; preds = %for.body1313, %for.body1313.lr.ph
  %indvars.iv2431 = phi i64 [ 0, %for.body1313.lr.ph ], [ %indvars.iv.next2432, %for.body1313 ]
  %arrayidx1315 = getelementptr inbounds i32* %indUT01274.02349, i64 %indvars.iv2431, !dbg !1159
  %513 = load i32* %arrayidx1315, align 4, !dbg !1159, !tbaa !424
  %mul1316 = shl nsw i32 %513, 1, !dbg !1159
  call void @llvm.dbg.value(metadata !{i32 %mul1316}, i64 0, metadata !238), !dbg !1159
  %add13172113 = or i32 %mul1316, 1, !dbg !1159
  call void @llvm.dbg.value(metadata !{i32 %add13172113}, i64 0, metadata !232), !dbg !1159
  %514 = trunc i64 %indvars.iv2431 to i32, !dbg !1161
  %mul1318 = shl nsw i32 %514, 1, !dbg !1161
  %idxprom1319 = sext i32 %mul1318 to i64, !dbg !1161
  %arrayidx1320 = getelementptr inbounds double* %rowUT01260.02346, i64 %idxprom1319, !dbg !1161
  %515 = load double* %arrayidx1320, align 8, !dbg !1161, !tbaa !500
  %idxprom1321 = sext i32 %mul1316 to i64, !dbg !1161
  %add.ptr1281.sum = add i64 %idxprom1321, %idx.ext1280, !dbg !1161
  %arrayidx1322 = getelementptr inbounds double* %call1278, i64 %add.ptr1281.sum, !dbg !1161
  store double %515, double* %arrayidx1322, align 8, !dbg !1161, !tbaa !500
  %add13242114 = or i32 %mul1318, 1, !dbg !1162
  %idxprom1325 = sext i32 %add13242114 to i64, !dbg !1162
  %arrayidx1326 = getelementptr inbounds double* %rowUT01260.02346, i64 %idxprom1325, !dbg !1162
  %516 = load double* %arrayidx1326, align 8, !dbg !1162, !tbaa !500
  %idxprom1327 = sext i32 %add13172113 to i64, !dbg !1162
  %add.ptr1281.sum2115 = add i64 %idxprom1327, %idx.ext1280, !dbg !1162
  %arrayidx1328 = getelementptr inbounds double* %call1278, i64 %add.ptr1281.sum2115, !dbg !1162
  store double %516, double* %arrayidx1328, align 8, !dbg !1162, !tbaa !500
  %indvars.iv.next2432 = add i64 %indvars.iv2431, 1, !dbg !1157
  %lftr.wideiv2433 = trunc i64 %indvars.iv.next2432 to i32, !dbg !1157
  %exitcond2434 = icmp eq i32 %lftr.wideiv2433, %510, !dbg !1157
  br i1 %exitcond2434, label %for.end1331, label %for.body1313, !dbg !1157

for.end1331:                                      ; preds = %for.body1313
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call1278, double* %add.ptr1281) #6, !dbg !1163
  call void @llvm.dbg.value(metadata !{double* %rowUT01260.02346}, i64 0, metadata !225), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %indUT01274.02349}, i64 0, metadata !242), !dbg !1165
  call void @llvm.dbg.value(metadata !940, i64 0, metadata !135), !dbg !1166
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1166
  %517 = load i32* %ncolU, align 4, !dbg !1166, !tbaa !424
  %518 = trunc i64 %indvars.iv2439 to i32, !dbg !1166
  %cmp13332340 = icmp slt i32 %518, %517, !dbg !1166
  br i1 %cmp13332340, label %for.body1334, label %for.end1357, !dbg !1166

for.body1334:                                     ; preds = %for.inc1355, %for.end1331
  %519 = phi i32 [ %517, %for.end1331 ], [ %528, %for.inc1355 ]
  %indvars.iv2437 = phi i64 [ %indvars.iv2439, %for.end1331 ], [ %indvars.iv.next2438, %for.inc1355 ], !dbg !1145
  %indU01273.02343 = phi i32* [ %indUT01274.02349, %for.end1331 ], [ %indU01273.1, %for.inc1355 ]
  %colU01258.02341 = phi double* [ %rowUT01260.02346, %for.end1331 ], [ %colU01258.1, %for.inc1355 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes1275}, i64 0, metadata !244), !dbg !1168
  %520 = load i32** %sizes1275, align 8, !dbg !1168, !tbaa !419
  %arrayidx1336 = getelementptr inbounds i32* %520, i64 %indvars.iv2437, !dbg !1168
  %521 = load i32* %arrayidx1336, align 4, !dbg !1168, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %521}, i64 0, metadata !239), !dbg !1168
  %cmp1337 = icmp sgt i32 %521, 0, !dbg !1168
  br i1 %cmp1337, label %if.then1338, label %for.inc1355, !dbg !1168

if.then1338:                                      ; preds = %for.body1334
  call void @ZVdotiU(i32 %521, double* %call1278, i32* %indU01273.02343, double* %colU01258.02341, double* %rsum1256, double* %isum1255) #6, !dbg !1170
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1172
  %522 = load i32** %colindU, align 8, !dbg !1172, !tbaa !419
  %arrayidx1340 = getelementptr inbounds i32* %522, i64 %indvars.iv2437, !dbg !1172
  %523 = load i32* %arrayidx1340, align 4, !dbg !1172, !tbaa !424
  %mul1341 = shl nsw i32 %523, 1, !dbg !1172
  call void @llvm.dbg.value(metadata !{i32 %mul1341}, i64 0, metadata !234), !dbg !1172
  call void @llvm.dbg.value(metadata !{double* %rsum1256}, i64 0, metadata !223), !dbg !1173
  %524 = load double* %rsum1256, align 8, !dbg !1173, !tbaa !500
  %idxprom1342 = sext i32 %mul1341 to i64, !dbg !1173
  %add.ptr1309.sum = sub i64 %idxprom1342, %idx.ext1307, !dbg !1173
  %arrayidx1343 = getelementptr inbounds double* %call1305, i64 %add.ptr1309.sum, !dbg !1173
  %525 = load double* %arrayidx1343, align 8, !dbg !1173, !tbaa !500
  %sub1344 = fsub double %525, %524, !dbg !1173
  store double %sub1344, double* %arrayidx1343, align 8, !dbg !1173, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %isum1255}, i64 0, metadata !221), !dbg !1173
  %526 = load double* %isum1255, align 8, !dbg !1173, !tbaa !500
  %add13452111 = or i32 %mul1341, 1, !dbg !1173
  %idxprom1346 = sext i32 %add13452111 to i64, !dbg !1173
  %add.ptr1309.sum2112 = sub i64 %idxprom1346, %idx.ext1307, !dbg !1173
  %arrayidx1347 = getelementptr inbounds double* %call1305, i64 %add.ptr1309.sum2112, !dbg !1173
  %527 = load double* %arrayidx1347, align 8, !dbg !1173, !tbaa !500
  %sub1348 = fsub double %527, %526, !dbg !1173
  store double %sub1348, double* %arrayidx1347, align 8, !dbg !1173, !tbaa !500
  %mul1349 = shl nsw i32 %521, 1, !dbg !1174
  %idx.ext1350 = sext i32 %mul1349 to i64, !dbg !1174
  %add.ptr1351 = getelementptr inbounds double* %colU01258.02341, i64 %idx.ext1350, !dbg !1174
  call void @llvm.dbg.value(metadata !{double* %add.ptr1351}, i64 0, metadata !225), !dbg !1174
  %idx.ext1352 = sext i32 %521 to i64, !dbg !1175
  %add.ptr1353 = getelementptr inbounds i32* %indU01273.02343, i64 %idx.ext1352, !dbg !1175
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1353}, i64 0, metadata !242), !dbg !1175
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1166
  %.pre2457 = load i32* %ncolU, align 4, !dbg !1166, !tbaa !424
  br label %for.inc1355, !dbg !1176

for.inc1355:                                      ; preds = %for.body1334, %if.then1338
  %528 = phi i32 [ %.pre2457, %if.then1338 ], [ %519, %for.body1334 ], !dbg !1166
  %colU01258.1 = phi double* [ %add.ptr1351, %if.then1338 ], [ %colU01258.02341, %for.body1334 ]
  %indU01273.1 = phi i32* [ %add.ptr1353, %if.then1338 ], [ %indU01273.02343, %for.body1334 ]
  %indvars.iv.next2438 = add i64 %indvars.iv2437, 1, !dbg !1166
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1166
  %529 = trunc i64 %indvars.iv.next2438 to i32, !dbg !1166
  %cmp1333 = icmp slt i32 %529, %528, !dbg !1166
  br i1 %cmp1333, label %for.body1334, label %for.end1357, !dbg !1166

for.end1357:                                      ; preds = %for.inc1355, %for.end1331
  %mul1358 = shl nsw i32 %510, 1, !dbg !1177
  %idx.ext1359 = sext i32 %mul1358 to i64, !dbg !1177
  %add.ptr1360 = getelementptr inbounds double* %rowUT01260.02346, i64 %idx.ext1359, !dbg !1177
  call void @llvm.dbg.value(metadata !{double* %add.ptr1360}, i64 0, metadata !227), !dbg !1177
  %idx.ext1361 = sext i32 %510 to i64, !dbg !1178
  %add.ptr1362 = getelementptr inbounds i32* %indUT01274.02349, i64 %idx.ext1361, !dbg !1178
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1362}, i64 0, metadata !243), !dbg !1178
  br label %for.inc1364, !dbg !1179

for.inc1364:                                      ; preds = %for.body1298.for.inc1364_crit_edge, %for.end1357
  %.pre-phi2460 = phi i32 [ %.pre2459, %for.body1298.for.inc1364_crit_edge ], [ %518, %for.end1357 ], !dbg !1145
  %rowUT01260.1 = phi double* [ %rowUT01260.02346, %for.body1298.for.inc1364_crit_edge ], [ %add.ptr1360, %for.end1357 ]
  %indUT01274.1 = phi i32* [ %indUT01274.02349, %for.body1298.for.inc1364_crit_edge ], [ %add.ptr1362, %for.end1357 ]
  %cmp1297 = icmp slt i32 %.pre-phi2460, %lastInU.0.lcssa2461, !dbg !1145
  br i1 %cmp1297, label %for.inc1364.for.body1298_crit_edge, label %for.cond1373.preheader, !dbg !1145

for.inc1364.for.body1298_crit_edge:               ; preds = %for.inc1364
  %indvars.iv.next2440 = add i64 %indvars.iv2439, 1, !dbg !1145
  br label %for.body1298, !dbg !1145

if.else1367:                                      ; preds = %if.then554
  %530 = load %struct._IO_FILE** @stderr, align 8, !dbg !1180, !tbaa !419
  %call1368 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %530, i8* getelementptr inbounds ([94 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1180
  call void @exit(i32 -1) #7, !dbg !1182
  unreachable, !dbg !1182

for.body1375:                                     ; preds = %for.body1375.lr.ph, %for.body1375
  %indvars.iv = phi i64 [ %508, %for.body1375.lr.ph ], [ %indvars.iv.next, %for.body1375 ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !141), !dbg !1149
  %arrayidx1377 = getelementptr inbounds i32* %506, i64 %indvars.iv, !dbg !1149
  %531 = load i32* %arrayidx1377, align 4, !dbg !1149, !tbaa !424
  %idxprom1378 = sext i32 %531 to i64, !dbg !1149
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !140), !dbg !1149
  %arrayidx1379 = getelementptr inbounds i32* %507, i64 %idxprom1378, !dbg !1149
  %532 = load i32* %arrayidx1379, align 4, !dbg !1149, !tbaa !424
  store i32 %532, i32* %arrayidx1377, align 4, !dbg !1149, !tbaa !424
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1147
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !139), !dbg !1147
  %533 = load i32* %ncolU, align 4, !dbg !1147, !tbaa !424
  %534 = trunc i64 %indvars.iv.next to i32, !dbg !1147
  %cmp1374 = icmp slt i32 %534, %533, !dbg !1147
  br i1 %cmp1374, label %for.body1375, label %return, !dbg !1147

return:                                           ; preds = %for.cond1373.preheader, %for.body1375, %for.end
  ret void, !dbg !1183
}

; Function Attrs: optsize
declare double @DVdot(i32, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot33(i32, double*, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot32(i32, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot31(i32, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot23(i32, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot22(i32, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot21(i32, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot13(i32, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot12(i32, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVdot11(i32, double*, double*, double*) #4

; Function Attrs: optsize
declare double @DVdoti(i32, double*, i32*, double*) #4

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
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvT}, i64 0, metadata !249), !dbg !1184
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxL}, i64 0, metadata !250), !dbg !1185
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxD}, i64 0, metadata !251), !dbg !1186
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxU}, i64 0, metadata !252), !dbg !1187
  call void @llvm.dbg.value(metadata !{%struct._DV* %tempDV}, i64 0, metadata !253), !dbg !1188
  call void @llvm.dbg.declare(metadata !{i32* %ncolT}, metadata !260), !dbg !1189
  call void @llvm.dbg.declare(metadata !{i32* %ncolU}, metadata !261), !dbg !1189
  call void @llvm.dbg.declare(metadata !{i32** %colindT}, metadata !262), !dbg !1190
  call void @llvm.dbg.declare(metadata !{i32** %colindU}, metadata !263), !dbg !1190
  %cmp = icmp eq %struct._Chv* %chvT, null, !dbg !1191
  %cmp1 = icmp eq %struct._SubMtx* %mtxD, null, !dbg !1191
  %or.cond = or i1 %cmp, %cmp1, !dbg !1191
  %cmp3 = icmp eq %struct._SubMtx* %mtxU, null, !dbg !1191
  %or.cond4542 = or i1 %or.cond, %cmp3, !dbg !1191
  %cmp5 = icmp eq %struct._DV* %tempDV, null, !dbg !1191
  %or.cond4543 = or i1 %or.cond4542, %cmp5, !dbg !1191
  br i1 %or.cond4543, label %if.then, label %if.end, !dbg !1191

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1192, !tbaa !419
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxL, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1192
  call void @exit(i32 -1) #7, !dbg !1194
  unreachable, !dbg !1194

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 4, !dbg !1195
  %1 = load i32* %type, align 4, !dbg !1195, !tbaa !424
  switch i32 %1, label %if.else33 [
    i32 1, label %if.then7
    i32 2, label %if.then21
  ], !dbg !1195

if.then7:                                         ; preds = %if.end
  %type8 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0, !dbg !1196
  %2 = load i32* %type8, align 4, !dbg !1196, !tbaa !424
  %cmp9 = icmp eq i32 %2, 1, !dbg !1196
  br i1 %cmp9, label %lor.lhs.false10, label %if.then16, !dbg !1196

lor.lhs.false10:                                  ; preds = %if.then7
  %type11 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 0, !dbg !1196
  %3 = load i32* %type11, align 4, !dbg !1196, !tbaa !424
  %cmp12 = icmp eq i32 %3, 1, !dbg !1196
  br i1 %cmp12, label %lor.lhs.false13, label %if.then16, !dbg !1196

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %type14 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0, !dbg !1196
  %4 = load i32* %type14, align 4, !dbg !1196, !tbaa !424
  %cmp15 = icmp eq i32 %4, 1, !dbg !1196
  br i1 %cmp15, label %if.end36, label %if.then16, !dbg !1196

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false10, %if.then7
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !1198, !tbaa !419
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([93 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1198
  call void @exit(i32 -1) #7, !dbg !1200
  unreachable, !dbg !1200

if.then21:                                        ; preds = %if.end
  %type22 = getelementptr inbounds %struct._SubMtx* %mtxD, i64 0, i32 0, !dbg !1201
  %6 = load i32* %type22, align 4, !dbg !1201, !tbaa !424
  %cmp23 = icmp eq i32 %6, 2, !dbg !1201
  br i1 %cmp23, label %lor.lhs.false24, label %if.then30, !dbg !1201

lor.lhs.false24:                                  ; preds = %if.then21
  %type25 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 0, !dbg !1201
  %7 = load i32* %type25, align 4, !dbg !1201, !tbaa !424
  %cmp26 = icmp eq i32 %7, 2, !dbg !1201
  br i1 %cmp26, label %lor.lhs.false27, label %if.then30, !dbg !1201

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %type28 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 0, !dbg !1201
  %8 = load i32* %type28, align 4, !dbg !1201, !tbaa !424
  %cmp29 = icmp eq i32 %8, 2, !dbg !1201
  br i1 %cmp29, label %if.end36, label %if.then30, !dbg !1201

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %if.then21
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !1203, !tbaa !419
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([96 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1203
  call void @exit(i32 -1) #7, !dbg !1205
  unreachable, !dbg !1205

if.else33:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !1206, !tbaa !419
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([83 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1206
  call void @exit(i32 -1) #7, !dbg !1208
  unreachable, !dbg !1208

if.end36:                                         ; preds = %lor.lhs.false27, %lor.lhs.false13
  call void @Chv_columnIndices(%struct._Chv* %chvT, i32* %ncolT, i32** %colindT) #6, !dbg !1209
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxU, i32* %ncolU, i32** %colindU) #6, !dbg !1210
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !262), !dbg !1211
  %11 = load i32** %colindT, align 8, !dbg !1211, !tbaa !419
  %12 = load i32* %11, align 4, !dbg !1211, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !254), !dbg !1211
  %nD = getelementptr inbounds %struct._Chv* %chvT, i64 0, i32 1, !dbg !1212
  %13 = load i32* %nD, align 4, !dbg !1212, !tbaa !424
  %sub = add nsw i32 %13, -1, !dbg !1212
  %idxprom = sext i32 %sub to i64, !dbg !1212
  %arrayidx37 = getelementptr inbounds i32* %11, i64 %idxprom, !dbg !1212
  %14 = load i32* %arrayidx37, align 4, !dbg !1212, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !258), !dbg !1212
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !257), !dbg !1213
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1213
  %15 = load i32* %ncolU, align 4, !dbg !1213, !tbaa !424
  %cmp384678 = icmp sgt i32 %15, 0, !dbg !1213
  br i1 %cmp384678, label %for.body.lr.ph, label %for.end, !dbg !1213

for.body.lr.ph:                                   ; preds = %if.end36
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1215
  %16 = load i32** %colindU, align 8, !dbg !1215, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1213
  br label %for.body, !dbg !1213

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1213
  %17 = trunc i64 %indvars.iv.next4788 to i32, !dbg !1213
  %cmp38 = icmp slt i32 %17, %15, !dbg !1213
  br i1 %cmp38, label %for.body, label %for.end, !dbg !1213

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv4787 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next4788, %for.cond ]
  %jcolU.04679 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1215
  %arrayidx40 = getelementptr inbounds i32* %16, i64 %indvars.iv4787, !dbg !1215
  %18 = load i32* %arrayidx40, align 4, !dbg !1215, !tbaa !424
  %cmp41 = icmp sgt i32 %12, %18, !dbg !1215
  %cmp44 = icmp sgt i32 %18, %14, !dbg !1215
  %or.cond4544 = or i1 %cmp41, %cmp44, !dbg !1215
  %indvars.iv.next4788 = add i64 %indvars.iv4787, 1, !dbg !1213
  %inc = add nsw i32 %jcolU.04679, 1, !dbg !1213
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !257), !dbg !1213
  br i1 %or.cond4544, label %for.cond, label %for.end, !dbg !1215

for.end:                                          ; preds = %for.cond, %for.body, %if.end36
  %jcolU.0.lcssa = phi i32 [ 0, %if.end36 ], [ %jcolU.04679, %for.body ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !255), !dbg !1217
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1217
  %cmp47 = icmp eq i32 %jcolU.0.lcssa, %15, !dbg !1217
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !1217

for.cond50.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1218
  %cmp514673 = icmp slt i32 %jcolU.0.lcssa, %15, !dbg !1218
  br i1 %cmp514673, label %for.body52.lr.ph, label %for.end75, !dbg !1218

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1220
  %19 = load i32** %colindU, align 8, !dbg !1220, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1218
  %20 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body52, !dbg !1218

for.cond50:                                       ; preds = %for.body52
  %inc60 = add nsw i32 %jcolU.14675, 1, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1218
  %21 = trunc i64 %indvars.iv.next4784 to i32, !dbg !1218
  %cmp51 = icmp slt i32 %21, %15, !dbg !1218
  %22 = trunc i64 %indvars.iv4783 to i32, !dbg !1218
  br i1 %cmp51, label %for.body52, label %for.cond62.preheader, !dbg !1218

for.cond62.preheader:                             ; preds = %for.cond50, %for.body52
  %lastInU.0.lcssa = phi i32 [ %lastInU.04674, %for.body52 ], [ %jcolU.14675, %for.cond50 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1222
  br i1 %cmp514673, label %while.cond.preheader.lr.ph, label %for.end75, !dbg !1222

while.cond.preheader.lr.ph:                       ; preds = %for.cond62.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1224
  %23 = load i32** %colindU, align 8, !dbg !1224, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !262), !dbg !1224
  %24 = sext i32 %jcolU.0.lcssa to i64
  br label %while.cond.preheader, !dbg !1222

for.body52:                                       ; preds = %for.body52.lr.ph, %for.cond50
  %indvars.iv4783 = phi i64 [ %20, %for.body52.lr.ph ], [ %indvars.iv.next4784, %for.cond50 ]
  %jcolU.14675 = phi i32 [ %jcolU.0.lcssa, %for.body52.lr.ph ], [ %inc60, %for.cond50 ]
  %lastInU.04674 = phi i32 [ %jcolU.0.lcssa, %for.body52.lr.ph ], [ %22, %for.cond50 ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1220
  %arrayidx54 = getelementptr inbounds i32* %19, i64 %indvars.iv4783, !dbg !1220
  %25 = load i32* %arrayidx54, align 4, !dbg !1220, !tbaa !424
  %cmp55 = icmp sgt i32 %25, %14, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32 %jcolU.14675}, i64 0, metadata !259), !dbg !1226
  %indvars.iv.next4784 = add i64 %indvars.iv4783, 1, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32 %inc60}, i64 0, metadata !257), !dbg !1218
  br i1 %cmp55, label %for.cond62.preheader, label %for.cond50, !dbg !1220

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv4779 = phi i64 [ %24, %while.cond.preheader.lr.ph ], [ %indvars.iv.next4780, %while.end ]
  %jcolT.04672 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jcolT.1, %while.end ]
  %arrayidx66 = getelementptr inbounds i32* %23, i64 %indvars.iv4779, !dbg !1224
  %26 = load i32* %arrayidx66, align 4, !dbg !1224, !tbaa !424
  %27 = sext i32 %jcolT.04672 to i64
  br label %while.cond, !dbg !1224

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %indvars.iv4777 = phi i64 [ %indvars.iv.next4778, %while.cond ], [ %27, %while.cond.preheader ]
  %jcolT.1 = phi i32 [ %inc70, %while.cond ], [ %jcolT.04672, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1224
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !262), !dbg !1224
  %arrayidx68 = getelementptr inbounds i32* %11, i64 %indvars.iv4777, !dbg !1224
  %28 = load i32* %arrayidx68, align 4, !dbg !1224, !tbaa !424
  %cmp69 = icmp eq i32 %26, %28, !dbg !1224
  %indvars.iv.next4778 = add i64 %indvars.iv4777, 1, !dbg !1224
  %inc70 = add nsw i32 %jcolT.1, 1, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32 %inc70}, i64 0, metadata !256), !dbg !1228
  br i1 %cmp69, label %while.end, label %while.cond, !dbg !1224

while.end:                                        ; preds = %while.cond
  store i32 %jcolT.1, i32* %arrayidx66, align 4, !dbg !1230, !tbaa !424
  %indvars.iv.next4780 = add i64 %indvars.iv4779, 1, !dbg !1222
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1222
  %29 = load i32* %ncolU, align 4, !dbg !1222, !tbaa !424
  %30 = trunc i64 %indvars.iv.next4780 to i32, !dbg !1222
  %cmp63 = icmp slt i32 %30, %29, !dbg !1222
  br i1 %cmp63, label %while.cond.preheader, label %for.end75, !dbg !1222

for.end75:                                        ; preds = %for.cond50.preheader, %while.end, %for.cond62.preheader
  %lastInU.0.lcssa4789 = phi i32 [ %lastInU.0.lcssa, %for.cond62.preheader ], [ %lastInU.0.lcssa, %while.end ], [ %jcolU.0.lcssa, %for.cond50.preheader ]
  %31 = load i32* %type, align 4, !dbg !1231, !tbaa !424
  switch i32 %31, label %for.cond2785.preheader [
    i32 1, label %if.then78
    i32 2, label %if.then1078
  ], !dbg !1231

if.then78:                                        ; preds = %for.end75
  %mode = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1, !dbg !1232
  %32 = load i32* %mode, align 4, !dbg !1232, !tbaa !424
  switch i32 %32, label %if.else1071 [
    i32 1, label %land.lhs.true80
    i32 3, label %land.lhs.true900
  ], !dbg !1232

land.lhs.true80:                                  ; preds = %if.then78
  %mode81 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1, !dbg !1232
  %33 = load i32* %mode81, align 4, !dbg !1232, !tbaa !424
  %cmp82 = icmp eq i32 %33, 0, !dbg !1232
  br i1 %cmp82, label %if.then83, label %if.else1071, !dbg !1232

if.then83:                                        ; preds = %land.lhs.true80
  %34 = bitcast [9 x double]* %sums to i8*, !dbg !1233
  call void @llvm.lifetime.start(i64 72, i8* %34) #5, !dbg !1233
  call void @llvm.dbg.declare(metadata !{[9 x double]* %sums}, metadata !264), !dbg !1233
  call void @llvm.dbg.declare(metadata !{double** %entL}, metadata !273), !dbg !1234
  call void @llvm.dbg.declare(metadata !{double** %entU}, metadata !274), !dbg !1235
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !287), !dbg !1236
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !288), !dbg !1236
  call void @llvm.dbg.declare(metadata !{i32* %ncolL}, metadata !295), !dbg !1237
  call void @llvm.dbg.declare(metadata !{i32* %nrowL}, metadata !296), !dbg !1237
  call void @llvm.dbg.declare(metadata !{i32* %nrowU}, metadata !297), !dbg !1237
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxL, i32* %nrowL, i32* %ncolL, i32* %inc1, i32* %inc2, double** %entL) #6, !dbg !1238
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU, i32* %ncolU, i32* %inc1, i32* %inc2, double** %entU) #6, !dbg !1239
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1240
  %35 = load i32* %nrowU, align 4, !dbg !1240, !tbaa !424
  %mul = mul nsw i32 %35, 6, !dbg !1240
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul) #6, !dbg !1240
  %call85 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !1241
  call void @llvm.dbg.value(metadata !{double* %call85}, i64 0, metadata !275), !dbg !1241
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1242
  %36 = load i32* %nrowU, align 4, !dbg !1242, !tbaa !424
  %idx.ext = sext i32 %36 to i64, !dbg !1242
  %add.ptr = getelementptr inbounds double* %call85, i64 %idx.ext, !dbg !1242
  call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !276), !dbg !1242
  %add.ptr.sum = shl nsw i64 %idx.ext, 1, !dbg !1243
  %add.ptr87 = getelementptr inbounds double* %call85, i64 %add.ptr.sum, !dbg !1243
  call void @llvm.dbg.value(metadata !{double* %add.ptr87}, i64 0, metadata !277), !dbg !1243
  %add.ptr87.sum = add i64 %add.ptr.sum, %idx.ext, !dbg !1244
  %add.ptr89 = getelementptr inbounds double* %call85, i64 %add.ptr87.sum, !dbg !1244
  call void @llvm.dbg.value(metadata !{double* %add.ptr89}, i64 0, metadata !281), !dbg !1244
  %add.ptr89.sum = add i64 %add.ptr87.sum, %idx.ext, !dbg !1245
  %add.ptr91 = getelementptr inbounds double* %call85, i64 %add.ptr89.sum, !dbg !1245
  call void @llvm.dbg.value(metadata !{double* %add.ptr91}, i64 0, metadata !282), !dbg !1245
  %add.ptr91.sum = add i64 %add.ptr89.sum, %idx.ext, !dbg !1246
  %add.ptr93 = getelementptr inbounds double* %call85, i64 %add.ptr91.sum, !dbg !1246
  call void @llvm.dbg.value(metadata !{double* %add.ptr93}, i64 0, metadata !283), !dbg !1246
  %mul94 = mul nsw i32 %36, %jcolU.0.lcssa, !dbg !1247
  call void @llvm.dbg.value(metadata !{i32 %mul94}, i64 0, metadata !298), !dbg !1247
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !289), !dbg !1248
  %sub96 = add nsw i32 %lastInU.0.lcssa4789, -2, !dbg !1248
  %cmp974588 = icmp sgt i32 %jcolU.0.lcssa, %sub96, !dbg !1248
  br i1 %cmp974588, label %for.end475, label %for.body98.lr.ph, !dbg !1248

for.body98.lr.ph:                                 ; preds = %if.then83
  %arraydecay = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !1250
  %arrayidx127 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !1252
  %arrayidx131 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3, !dbg !1253
  %arrayidx137 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !1254
  %arrayidx141 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 6, !dbg !1255
  %arrayidx146 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4, !dbg !1256
  %arrayidx150 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5, !dbg !1257
  %arrayidx154 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 7, !dbg !1258
  %arrayidx159 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 8, !dbg !1259
  %37 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body98, !dbg !1248

for.body98:                                       ; preds = %for.body98.lr.ph, %if.end470
  %38 = phi i32 [ %36, %for.body98.lr.ph ], [ %163, %if.end470 ]
  %indvars.iv4704 = phi i64 [ %37, %for.body98.lr.ph ], [ %indvars.iv.next4705, %if.end470 ]
  %indvars.iv4697.in = phi i64 [ %37, %for.body98.lr.ph ], [ %indvars.iv4697, %if.end470 ]
  %irowL.04590 = phi i32 [ %jcolU.0.lcssa, %for.body98.lr.ph ], [ %add166, %if.end470 ]
  %offset.04589 = phi i32 [ %mul94, %for.body98.lr.ph ], [ %add472, %if.end470 ]
  %indvars.iv4697 = add i64 %indvars.iv4697.in, 3, !dbg !1248
  call void @llvm.dbg.value(metadata !{double** %entL}, i64 0, metadata !273), !dbg !1260
  %39 = load double** %entL, align 8, !dbg !1260, !tbaa !419
  %idx.ext99 = sext i32 %offset.04589 to i64, !dbg !1260
  %add.ptr100 = getelementptr inbounds double* %39, i64 %idx.ext99, !dbg !1260
  call void @llvm.dbg.value(metadata !{double* %add.ptr100}, i64 0, metadata !278), !dbg !1260
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1261
  %idx.ext101 = sext i32 %38 to i64, !dbg !1261
  %add.ptr100.sum = add i64 %idx.ext101, %idx.ext99, !dbg !1261
  %add.ptr102 = getelementptr inbounds double* %39, i64 %add.ptr100.sum, !dbg !1261
  call void @llvm.dbg.value(metadata !{double* %add.ptr102}, i64 0, metadata !279), !dbg !1261
  %add.ptr102.sum = add i64 %add.ptr100.sum, %idx.ext101, !dbg !1262
  %add.ptr104 = getelementptr inbounds double* %39, i64 %add.ptr102.sum, !dbg !1262
  call void @llvm.dbg.value(metadata !{double* %add.ptr104}, i64 0, metadata !280), !dbg !1262
  call void @llvm.dbg.value(metadata !{double** %entU}, i64 0, metadata !274), !dbg !1263
  %40 = load double** %entU, align 8, !dbg !1263, !tbaa !419
  %add.ptr106 = getelementptr inbounds double* %40, i64 %idx.ext99, !dbg !1263
  call void @llvm.dbg.value(metadata !{double* %add.ptr106}, i64 0, metadata !270), !dbg !1263
  %add.ptr108 = getelementptr inbounds double* %40, i64 %add.ptr100.sum, !dbg !1264
  call void @llvm.dbg.value(metadata !{double* %add.ptr108}, i64 0, metadata !271), !dbg !1264
  %add.ptr110 = getelementptr inbounds double* %40, i64 %add.ptr102.sum, !dbg !1265
  call void @llvm.dbg.value(metadata !{double* %add.ptr110}, i64 0, metadata !272), !dbg !1265
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1266
  %41 = load i32** %colindU, align 8, !dbg !1266, !tbaa !419
  %arrayidx112 = getelementptr inbounds i32* %41, i64 %indvars.iv4704, !dbg !1266
  %42 = load i32* %arrayidx112, align 4, !dbg !1266, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !284), !dbg !1266
  %call113 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %42) #6, !dbg !1267
  call void @llvm.dbg.value(metadata !{double* %call113}, i64 0, metadata !267), !dbg !1267
  %43 = add nsw i64 %indvars.iv4704, 1, !dbg !1268
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1268
  %44 = load i32** %colindU, align 8, !dbg !1268, !tbaa !419
  %arrayidx115 = getelementptr inbounds i32* %44, i64 %43, !dbg !1268
  %45 = load i32* %arrayidx115, align 4, !dbg !1268, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !285), !dbg !1268
  %call116 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %45) #6, !dbg !1269
  call void @llvm.dbg.value(metadata !{double* %call116}, i64 0, metadata !268), !dbg !1269
  %46 = add nsw i64 %indvars.iv4704, 2, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1270
  %47 = load i32** %colindU, align 8, !dbg !1270, !tbaa !419
  %arrayidx119 = getelementptr inbounds i32* %47, i64 %46, !dbg !1270
  %48 = load i32* %arrayidx119, align 4, !dbg !1270, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !286), !dbg !1270
  %call120 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %48) #6, !dbg !1271
  call void @llvm.dbg.value(metadata !{double* %call120}, i64 0, metadata !269), !dbg !1271
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1272
  %49 = load i32* %nrowU, align 4, !dbg !1272, !tbaa !424
  %mul121 = mul nsw i32 %49, 3, !dbg !1272
  call void @DVzero(i32 %mul121, double* %call85) #6, !dbg !1272
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call85, double* %add.ptr, double* %add.ptr87, double* %add.ptr100, double* %add.ptr102, double* %add.ptr104) #6, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1274
  %50 = load i32* %nrowU, align 4, !dbg !1274, !tbaa !424
  %mul122 = mul nsw i32 %50, 3, !dbg !1274
  call void @DVzero(i32 %mul122, double* %add.ptr89) #6, !dbg !1274
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %add.ptr106, double* %add.ptr108, double* %add.ptr110) #6, !dbg !1275
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1250
  %51 = load i32* %nrowU, align 4, !dbg !1250, !tbaa !424
  call void @DVdot33(i32 %51, double* %call85, double* %add.ptr, double* %add.ptr87, double* %add.ptr106, double* %add.ptr108, double* %add.ptr110, double* %arraydecay) #6, !dbg !1250
  %52 = load double* %arraydecay, align 16, !dbg !1276, !tbaa !500
  %53 = load double* %call113, align 8, !dbg !1276, !tbaa !500
  %sub125 = fsub double %53, %52, !dbg !1276
  store double %sub125, double* %call113, align 8, !dbg !1276, !tbaa !500
  %sub126 = sub nsw i32 %45, %42, !dbg !1277
  call void @llvm.dbg.value(metadata !{i32 %sub126}, i64 0, metadata !291), !dbg !1277
  %54 = load double* %arrayidx127, align 8, !dbg !1252, !tbaa !500
  %idxprom128 = sext i32 %sub126 to i64, !dbg !1252
  %arrayidx129 = getelementptr inbounds double* %call113, i64 %idxprom128, !dbg !1252
  %55 = load double* %arrayidx129, align 8, !dbg !1252, !tbaa !500
  %sub130 = fsub double %55, %54, !dbg !1252
  store double %sub130, double* %arrayidx129, align 8, !dbg !1252, !tbaa !500
  %56 = load double* %arrayidx131, align 8, !dbg !1253, !tbaa !500
  %sub132 = sub nsw i32 0, %sub126, !dbg !1253
  %idxprom133 = sext i32 %sub132 to i64, !dbg !1253
  %arrayidx134 = getelementptr inbounds double* %call113, i64 %idxprom133, !dbg !1253
  %57 = load double* %arrayidx134, align 8, !dbg !1253, !tbaa !500
  %sub135 = fsub double %57, %56, !dbg !1253
  store double %sub135, double* %arrayidx134, align 8, !dbg !1253, !tbaa !500
  %sub136 = sub nsw i32 %48, %42, !dbg !1278
  call void @llvm.dbg.value(metadata !{i32 %sub136}, i64 0, metadata !291), !dbg !1278
  %58 = load double* %arrayidx137, align 16, !dbg !1254, !tbaa !500
  %idxprom138 = sext i32 %sub136 to i64, !dbg !1254
  %arrayidx139 = getelementptr inbounds double* %call113, i64 %idxprom138, !dbg !1254
  %59 = load double* %arrayidx139, align 8, !dbg !1254, !tbaa !500
  %sub140 = fsub double %59, %58, !dbg !1254
  store double %sub140, double* %arrayidx139, align 8, !dbg !1254, !tbaa !500
  %60 = load double* %arrayidx141, align 16, !dbg !1255, !tbaa !500
  %sub142 = sub nsw i32 0, %sub136, !dbg !1255
  %idxprom143 = sext i32 %sub142 to i64, !dbg !1255
  %arrayidx144 = getelementptr inbounds double* %call113, i64 %idxprom143, !dbg !1255
  %61 = load double* %arrayidx144, align 8, !dbg !1255, !tbaa !500
  %sub145 = fsub double %61, %60, !dbg !1255
  store double %sub145, double* %arrayidx144, align 8, !dbg !1255, !tbaa !500
  %62 = load double* %arrayidx146, align 16, !dbg !1256, !tbaa !500
  %63 = load double* %call116, align 8, !dbg !1256, !tbaa !500
  %sub148 = fsub double %63, %62, !dbg !1256
  store double %sub148, double* %call116, align 8, !dbg !1256, !tbaa !500
  %sub149 = sub nsw i32 %48, %45, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32 %sub149}, i64 0, metadata !291), !dbg !1279
  %64 = load double* %arrayidx150, align 8, !dbg !1257, !tbaa !500
  %idxprom151 = sext i32 %sub149 to i64, !dbg !1257
  %arrayidx152 = getelementptr inbounds double* %call116, i64 %idxprom151, !dbg !1257
  %65 = load double* %arrayidx152, align 8, !dbg !1257, !tbaa !500
  %sub153 = fsub double %65, %64, !dbg !1257
  store double %sub153, double* %arrayidx152, align 8, !dbg !1257, !tbaa !500
  %66 = load double* %arrayidx154, align 8, !dbg !1258, !tbaa !500
  %sub155 = sub nsw i32 0, %sub149, !dbg !1258
  %idxprom156 = sext i32 %sub155 to i64, !dbg !1258
  %arrayidx157 = getelementptr inbounds double* %call116, i64 %idxprom156, !dbg !1258
  %67 = load double* %arrayidx157, align 8, !dbg !1258, !tbaa !500
  %sub158 = fsub double %67, %66, !dbg !1258
  store double %sub158, double* %arrayidx157, align 8, !dbg !1258, !tbaa !500
  %68 = load double* %arrayidx159, align 16, !dbg !1259, !tbaa !500
  %69 = load double* %call120, align 8, !dbg !1259, !tbaa !500
  %sub161 = fsub double %69, %68, !dbg !1259
  store double %sub161, double* %call120, align 8, !dbg !1259, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1280
  %70 = load i32* %nrowU, align 4, !dbg !1280, !tbaa !424
  %idx.ext162 = sext i32 %70 to i64, !dbg !1280
  %add.ptr104.sum = add i64 %idx.ext162, %add.ptr102.sum, !dbg !1280
  %add.ptr163 = getelementptr inbounds double* %39, i64 %add.ptr104.sum, !dbg !1280
  call void @llvm.dbg.value(metadata !{double* %add.ptr163}, i64 0, metadata !278), !dbg !1280
  %add.ptr165 = getelementptr inbounds double* %40, i64 %add.ptr104.sum, !dbg !1281
  call void @llvm.dbg.value(metadata !{double* %add.ptr165}, i64 0, metadata !270), !dbg !1281
  %indvars.iv.next4705 = add i64 %indvars.iv4704, 3, !dbg !1248
  %add166 = add nsw i32 %irowL.04590, 3, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32 %add166}, i64 0, metadata !290), !dbg !1282
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1282
  %71 = load i32* %ncolU, align 4, !dbg !1282, !tbaa !424
  %sub1684578 = add nsw i32 %71, -2, !dbg !1282
  %72 = trunc i64 %indvars.iv.next4705 to i32, !dbg !1282
  %cmp1694579 = icmp slt i32 %72, %sub1684578, !dbg !1282
  br i1 %cmp1694579, label %for.body170.lr.ph, label %for.end305, !dbg !1282

for.body170.lr.ph:                                ; preds = %for.body98
  %idx.ext188 = sext i32 %42 to i64, !dbg !1284
  %idx.ext190 = sext i32 %45 to i64, !dbg !1286
  %idx.ext193 = sext i32 %48 to i64, !dbg !1287
  br label %for.body170, !dbg !1282

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %73 = phi i32 [ %70, %for.body170.lr.ph ], [ %117, %for.body170 ], !dbg !1288
  %indvars.iv4699 = phi i64 [ %indvars.iv4697, %for.body170.lr.ph ], [ %indvars.iv.next4700, %for.body170 ], !dbg !1248
  %colU0.04582 = phi double* [ %add.ptr165, %for.body170.lr.ph ], [ %add.ptr302, %for.body170 ]
  %rowL0.04581 = phi double* [ %add.ptr163, %for.body170.lr.ph ], [ %add.ptr300, %for.body170 ]
  %jcolU84.04580 = phi i32 [ %add166, %for.body170.lr.ph ], [ %add304, %for.body170 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1288
  %idx.ext171 = sext i32 %73 to i64, !dbg !1288
  %add.ptr172 = getelementptr inbounds double* %rowL0.04581, i64 %idx.ext171, !dbg !1288
  call void @llvm.dbg.value(metadata !{double* %add.ptr172}, i64 0, metadata !279), !dbg !1288
  %add.ptr172.sum = shl nsw i64 %idx.ext171, 1, !dbg !1289
  %add.ptr174 = getelementptr inbounds double* %rowL0.04581, i64 %add.ptr172.sum, !dbg !1289
  call void @llvm.dbg.value(metadata !{double* %add.ptr174}, i64 0, metadata !280), !dbg !1289
  %add.ptr176 = getelementptr inbounds double* %colU0.04582, i64 %idx.ext171, !dbg !1290
  call void @llvm.dbg.value(metadata !{double* %add.ptr176}, i64 0, metadata !271), !dbg !1290
  %add.ptr178 = getelementptr inbounds double* %colU0.04582, i64 %add.ptr172.sum, !dbg !1291
  call void @llvm.dbg.value(metadata !{double* %add.ptr178}, i64 0, metadata !272), !dbg !1291
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1292
  %74 = load i32** %colindU, align 8, !dbg !1292, !tbaa !419
  %arrayidx180 = getelementptr inbounds i32* %74, i64 %indvars.iv4699, !dbg !1292
  %75 = load i32* %arrayidx180, align 4, !dbg !1292, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %75}, i64 0, metadata !292), !dbg !1292
  %76 = add nsw i64 %indvars.iv4699, 1, !dbg !1293
  %arrayidx183 = getelementptr inbounds i32* %74, i64 %76, !dbg !1293
  %77 = load i32* %arrayidx183, align 4, !dbg !1293, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !293), !dbg !1293
  %78 = add nsw i64 %indvars.iv4699, 2, !dbg !1294
  %arrayidx186 = getelementptr inbounds i32* %74, i64 %78, !dbg !1294
  %79 = load i32* %arrayidx186, align 4, !dbg !1294, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %79}, i64 0, metadata !294), !dbg !1294
  call void @DVdot33(i32 %73, double* %call85, double* %add.ptr, double* %add.ptr87, double* %colU0.04582, double* %add.ptr176, double* %add.ptr178, double* %arraydecay) #6, !dbg !1295
  %80 = load double* %arraydecay, align 16, !dbg !1296, !tbaa !500
  %idxprom197 = sext i32 %75 to i64, !dbg !1296
  %add.ptr189.sum = sub i64 %idxprom197, %idx.ext188, !dbg !1296
  %arrayidx198 = getelementptr inbounds double* %call113, i64 %add.ptr189.sum, !dbg !1296
  %81 = load double* %arrayidx198, align 8, !dbg !1296, !tbaa !500
  %sub199 = fsub double %81, %80, !dbg !1296
  store double %sub199, double* %arrayidx198, align 8, !dbg !1296, !tbaa !500
  %82 = load double* %arrayidx127, align 8, !dbg !1297, !tbaa !500
  %idxprom201 = sext i32 %77 to i64, !dbg !1297
  %add.ptr189.sum4524 = sub i64 %idxprom201, %idx.ext188, !dbg !1297
  %arrayidx202 = getelementptr inbounds double* %call113, i64 %add.ptr189.sum4524, !dbg !1297
  %83 = load double* %arrayidx202, align 8, !dbg !1297, !tbaa !500
  %sub203 = fsub double %83, %82, !dbg !1297
  store double %sub203, double* %arrayidx202, align 8, !dbg !1297, !tbaa !500
  %84 = load double* %arrayidx137, align 16, !dbg !1298, !tbaa !500
  %idxprom205 = sext i32 %79 to i64, !dbg !1298
  %add.ptr189.sum4525 = sub i64 %idxprom205, %idx.ext188, !dbg !1298
  %arrayidx206 = getelementptr inbounds double* %call113, i64 %add.ptr189.sum4525, !dbg !1298
  %85 = load double* %arrayidx206, align 8, !dbg !1298, !tbaa !500
  %sub207 = fsub double %85, %84, !dbg !1298
  store double %sub207, double* %arrayidx206, align 8, !dbg !1298, !tbaa !500
  %86 = load double* %arrayidx131, align 8, !dbg !1299, !tbaa !500
  %add.ptr192.sum = sub i64 %idxprom197, %idx.ext190, !dbg !1299
  %arrayidx210 = getelementptr inbounds double* %call116, i64 %add.ptr192.sum, !dbg !1299
  %87 = load double* %arrayidx210, align 8, !dbg !1299, !tbaa !500
  %sub211 = fsub double %87, %86, !dbg !1299
  store double %sub211, double* %arrayidx210, align 8, !dbg !1299, !tbaa !500
  %88 = load double* %arrayidx146, align 16, !dbg !1300, !tbaa !500
  %add.ptr192.sum4526 = sub i64 %idxprom201, %idx.ext190, !dbg !1300
  %arrayidx214 = getelementptr inbounds double* %call116, i64 %add.ptr192.sum4526, !dbg !1300
  %89 = load double* %arrayidx214, align 8, !dbg !1300, !tbaa !500
  %sub215 = fsub double %89, %88, !dbg !1300
  store double %sub215, double* %arrayidx214, align 8, !dbg !1300, !tbaa !500
  %90 = load double* %arrayidx150, align 8, !dbg !1301, !tbaa !500
  %add.ptr192.sum4527 = sub i64 %idxprom205, %idx.ext190, !dbg !1301
  %arrayidx218 = getelementptr inbounds double* %call116, i64 %add.ptr192.sum4527, !dbg !1301
  %91 = load double* %arrayidx218, align 8, !dbg !1301, !tbaa !500
  %sub219 = fsub double %91, %90, !dbg !1301
  store double %sub219, double* %arrayidx218, align 8, !dbg !1301, !tbaa !500
  %92 = load double* %arrayidx141, align 16, !dbg !1302, !tbaa !500
  %add.ptr195.sum = sub i64 %idxprom197, %idx.ext193, !dbg !1302
  %arrayidx222 = getelementptr inbounds double* %call120, i64 %add.ptr195.sum, !dbg !1302
  %93 = load double* %arrayidx222, align 8, !dbg !1302, !tbaa !500
  %sub223 = fsub double %93, %92, !dbg !1302
  store double %sub223, double* %arrayidx222, align 8, !dbg !1302, !tbaa !500
  %94 = load double* %arrayidx154, align 8, !dbg !1303, !tbaa !500
  %add.ptr195.sum4528 = sub i64 %idxprom201, %idx.ext193, !dbg !1303
  %arrayidx226 = getelementptr inbounds double* %call120, i64 %add.ptr195.sum4528, !dbg !1303
  %95 = load double* %arrayidx226, align 8, !dbg !1303, !tbaa !500
  %sub227 = fsub double %95, %94, !dbg !1303
  store double %sub227, double* %arrayidx226, align 8, !dbg !1303, !tbaa !500
  %96 = load double* %arrayidx159, align 16, !dbg !1304, !tbaa !500
  %add.ptr195.sum4529 = sub i64 %idxprom205, %idx.ext193, !dbg !1304
  %arrayidx230 = getelementptr inbounds double* %call120, i64 %add.ptr195.sum4529, !dbg !1304
  %97 = load double* %arrayidx230, align 8, !dbg !1304, !tbaa !500
  %sub231 = fsub double %97, %96, !dbg !1304
  store double %sub231, double* %arrayidx230, align 8, !dbg !1304, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call113}, i64 0, metadata !267), !dbg !1305
  call void @llvm.dbg.value(metadata !{double* %call116}, i64 0, metadata !268), !dbg !1306
  call void @llvm.dbg.value(metadata !{double* %call120}, i64 0, metadata !269), !dbg !1307
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1308
  %98 = load i32* %nrowU, align 4, !dbg !1308, !tbaa !424
  call void @DVdot33(i32 %98, double* %rowL0.04581, double* %add.ptr172, double* %add.ptr174, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %arraydecay) #6, !dbg !1308
  %99 = load double* %arraydecay, align 16, !dbg !1309, !tbaa !500
  %sub246 = sub nsw i32 0, %75, !dbg !1309
  %idxprom247 = sext i32 %sub246 to i64, !dbg !1309
  %add.ptr240.sum = add i64 %idxprom247, %idx.ext188, !dbg !1309
  %arrayidx248 = getelementptr inbounds double* %call113, i64 %add.ptr240.sum, !dbg !1309
  %100 = load double* %arrayidx248, align 8, !dbg !1309, !tbaa !500
  %sub249 = fsub double %100, %99, !dbg !1309
  store double %sub249, double* %arrayidx248, align 8, !dbg !1309, !tbaa !500
  %101 = load double* %arrayidx127, align 8, !dbg !1310, !tbaa !500
  %add.ptr242.sum = add i64 %idxprom247, %idx.ext190, !dbg !1310
  %arrayidx253 = getelementptr inbounds double* %call116, i64 %add.ptr242.sum, !dbg !1310
  %102 = load double* %arrayidx253, align 8, !dbg !1310, !tbaa !500
  %sub254 = fsub double %102, %101, !dbg !1310
  store double %sub254, double* %arrayidx253, align 8, !dbg !1310, !tbaa !500
  %103 = load double* %arrayidx137, align 16, !dbg !1311, !tbaa !500
  %add.ptr244.sum = add i64 %idxprom247, %idx.ext193, !dbg !1311
  %arrayidx258 = getelementptr inbounds double* %call120, i64 %add.ptr244.sum, !dbg !1311
  %104 = load double* %arrayidx258, align 8, !dbg !1311, !tbaa !500
  %sub259 = fsub double %104, %103, !dbg !1311
  store double %sub259, double* %arrayidx258, align 8, !dbg !1311, !tbaa !500
  %105 = load double* %arrayidx131, align 8, !dbg !1312, !tbaa !500
  %sub261 = sub nsw i32 0, %77, !dbg !1312
  %idxprom262 = sext i32 %sub261 to i64, !dbg !1312
  %add.ptr240.sum4533 = add i64 %idxprom262, %idx.ext188, !dbg !1312
  %arrayidx263 = getelementptr inbounds double* %call113, i64 %add.ptr240.sum4533, !dbg !1312
  %106 = load double* %arrayidx263, align 8, !dbg !1312, !tbaa !500
  %sub264 = fsub double %106, %105, !dbg !1312
  store double %sub264, double* %arrayidx263, align 8, !dbg !1312, !tbaa !500
  %107 = load double* %arrayidx146, align 16, !dbg !1313, !tbaa !500
  %add.ptr242.sum4534 = add i64 %idxprom262, %idx.ext190, !dbg !1313
  %arrayidx268 = getelementptr inbounds double* %call116, i64 %add.ptr242.sum4534, !dbg !1313
  %108 = load double* %arrayidx268, align 8, !dbg !1313, !tbaa !500
  %sub269 = fsub double %108, %107, !dbg !1313
  store double %sub269, double* %arrayidx268, align 8, !dbg !1313, !tbaa !500
  %109 = load double* %arrayidx150, align 8, !dbg !1314, !tbaa !500
  %add.ptr244.sum4535 = add i64 %idxprom262, %idx.ext193, !dbg !1314
  %arrayidx273 = getelementptr inbounds double* %call120, i64 %add.ptr244.sum4535, !dbg !1314
  %110 = load double* %arrayidx273, align 8, !dbg !1314, !tbaa !500
  %sub274 = fsub double %110, %109, !dbg !1314
  store double %sub274, double* %arrayidx273, align 8, !dbg !1314, !tbaa !500
  %111 = load double* %arrayidx141, align 16, !dbg !1315, !tbaa !500
  %sub276 = sub nsw i32 0, %79, !dbg !1315
  %idxprom277 = sext i32 %sub276 to i64, !dbg !1315
  %add.ptr240.sum4536 = add i64 %idxprom277, %idx.ext188, !dbg !1315
  %arrayidx278 = getelementptr inbounds double* %call113, i64 %add.ptr240.sum4536, !dbg !1315
  %112 = load double* %arrayidx278, align 8, !dbg !1315, !tbaa !500
  %sub279 = fsub double %112, %111, !dbg !1315
  store double %sub279, double* %arrayidx278, align 8, !dbg !1315, !tbaa !500
  %113 = load double* %arrayidx154, align 8, !dbg !1316, !tbaa !500
  %add.ptr242.sum4537 = add i64 %idxprom277, %idx.ext190, !dbg !1316
  %arrayidx283 = getelementptr inbounds double* %call116, i64 %add.ptr242.sum4537, !dbg !1316
  %114 = load double* %arrayidx283, align 8, !dbg !1316, !tbaa !500
  %sub284 = fsub double %114, %113, !dbg !1316
  store double %sub284, double* %arrayidx283, align 8, !dbg !1316, !tbaa !500
  %115 = load double* %arrayidx159, align 16, !dbg !1317, !tbaa !500
  %add.ptr244.sum4538 = add i64 %idxprom277, %idx.ext193, !dbg !1317
  %arrayidx288 = getelementptr inbounds double* %call120, i64 %add.ptr244.sum4538, !dbg !1317
  %116 = load double* %arrayidx288, align 8, !dbg !1317, !tbaa !500
  %sub289 = fsub double %116, %115, !dbg !1317
  store double %sub289, double* %arrayidx288, align 8, !dbg !1317, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call113}, i64 0, metadata !267), !dbg !1318
  call void @llvm.dbg.value(metadata !{double* %call116}, i64 0, metadata !268), !dbg !1319
  call void @llvm.dbg.value(metadata !{double* %call120}, i64 0, metadata !269), !dbg !1320
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1321
  %117 = load i32* %nrowU, align 4, !dbg !1321, !tbaa !424
  %idx.ext299 = sext i32 %117 to i64, !dbg !1321
  %add.ptr174.sum = add i64 %idx.ext299, %add.ptr172.sum, !dbg !1321
  %add.ptr300 = getelementptr inbounds double* %rowL0.04581, i64 %add.ptr174.sum, !dbg !1321
  call void @llvm.dbg.value(metadata !{double* %add.ptr300}, i64 0, metadata !278), !dbg !1321
  %add.ptr302 = getelementptr inbounds double* %colU0.04582, i64 %add.ptr174.sum, !dbg !1322
  call void @llvm.dbg.value(metadata !{double* %add.ptr302}, i64 0, metadata !270), !dbg !1322
  %add304 = add nsw i32 %jcolU84.04580, 3, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32 %add304}, i64 0, metadata !290), !dbg !1282
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1282
  %118 = load i32* %ncolU, align 4, !dbg !1282, !tbaa !424
  %sub168 = add nsw i32 %118, -2, !dbg !1282
  %cmp169 = icmp slt i32 %add304, %sub168, !dbg !1282
  %indvars.iv.next4700 = add i64 %indvars.iv4699, 3, !dbg !1282
  br i1 %cmp169, label %for.body170, label %for.end305, !dbg !1282

for.end305:                                       ; preds = %for.body170, %for.body98
  %119 = phi i32 [ %70, %for.body98 ], [ %117, %for.body170 ]
  %sub168.lcssa = phi i32 [ %sub1684578, %for.body98 ], [ %sub168, %for.body170 ]
  %.lcssa4577 = phi i32 [ %71, %for.body98 ], [ %118, %for.body170 ]
  %colU0.0.lcssa = phi double* [ %add.ptr165, %for.body98 ], [ %add.ptr302, %for.body170 ]
  %rowL0.0.lcssa = phi double* [ %add.ptr163, %for.body98 ], [ %add.ptr300, %for.body170 ]
  %jcolU84.0.lcssa = phi i32 [ %72, %for.body98 ], [ %add304, %for.body170 ]
  %cmp307 = icmp eq i32 %jcolU84.0.lcssa, %sub168.lcssa, !dbg !1323
  br i1 %cmp307, label %if.then308, label %if.else404, !dbg !1323

if.then308:                                       ; preds = %for.end305
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1324
  %idx.ext309 = sext i32 %119 to i64, !dbg !1324
  %add.ptr310 = getelementptr inbounds double* %rowL0.0.lcssa, i64 %idx.ext309, !dbg !1324
  call void @llvm.dbg.value(metadata !{double* %add.ptr310}, i64 0, metadata !279), !dbg !1324
  %add.ptr312 = getelementptr inbounds double* %colU0.0.lcssa, i64 %idx.ext309, !dbg !1326
  call void @llvm.dbg.value(metadata !{double* %add.ptr312}, i64 0, metadata !271), !dbg !1326
  %idxprom313 = sext i32 %sub168.lcssa to i64, !dbg !1327
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1327
  %120 = load i32** %colindU, align 8, !dbg !1327, !tbaa !419
  %arrayidx314 = getelementptr inbounds i32* %120, i64 %idxprom313, !dbg !1327
  %121 = load i32* %arrayidx314, align 4, !dbg !1327, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %121}, i64 0, metadata !292), !dbg !1327
  %add315 = add nsw i32 %sub168.lcssa, 1, !dbg !1328
  %idxprom316 = sext i32 %add315 to i64, !dbg !1328
  %arrayidx317 = getelementptr inbounds i32* %120, i64 %idxprom316, !dbg !1328
  %122 = load i32* %arrayidx317, align 4, !dbg !1328, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %122}, i64 0, metadata !293), !dbg !1328
  call void @DVdot32(i32 %119, double* %call85, double* %add.ptr, double* %add.ptr87, double* %colU0.0.lcssa, double* %add.ptr312, double* %arraydecay) #6, !dbg !1329
  %idx.ext319 = sext i32 %42 to i64, !dbg !1330
  %idx.ext322 = sext i32 %45 to i64, !dbg !1331
  %idx.ext325 = sext i32 %48 to i64, !dbg !1332
  %123 = load double* %arraydecay, align 16, !dbg !1333, !tbaa !500
  %idxprom329 = sext i32 %121 to i64, !dbg !1333
  %add.ptr321.sum = sub i64 %idxprom329, %idx.ext319, !dbg !1333
  %arrayidx330 = getelementptr inbounds double* %call113, i64 %add.ptr321.sum, !dbg !1333
  %124 = load double* %arrayidx330, align 8, !dbg !1333, !tbaa !500
  %sub331 = fsub double %124, %123, !dbg !1333
  store double %sub331, double* %arrayidx330, align 8, !dbg !1333, !tbaa !500
  %125 = load double* %arrayidx127, align 8, !dbg !1334, !tbaa !500
  %idxprom333 = sext i32 %122 to i64, !dbg !1334
  %add.ptr321.sum4515 = sub i64 %idxprom333, %idx.ext319, !dbg !1334
  %arrayidx334 = getelementptr inbounds double* %call113, i64 %add.ptr321.sum4515, !dbg !1334
  %126 = load double* %arrayidx334, align 8, !dbg !1334, !tbaa !500
  %sub335 = fsub double %126, %125, !dbg !1334
  store double %sub335, double* %arrayidx334, align 8, !dbg !1334, !tbaa !500
  %127 = load double* %arrayidx137, align 16, !dbg !1335, !tbaa !500
  %add.ptr324.sum = sub i64 %idxprom329, %idx.ext322, !dbg !1335
  %arrayidx338 = getelementptr inbounds double* %call116, i64 %add.ptr324.sum, !dbg !1335
  %128 = load double* %arrayidx338, align 8, !dbg !1335, !tbaa !500
  %sub339 = fsub double %128, %127, !dbg !1335
  store double %sub339, double* %arrayidx338, align 8, !dbg !1335, !tbaa !500
  %129 = load double* %arrayidx131, align 8, !dbg !1336, !tbaa !500
  %add.ptr324.sum4516 = sub i64 %idxprom333, %idx.ext322, !dbg !1336
  %arrayidx342 = getelementptr inbounds double* %call116, i64 %add.ptr324.sum4516, !dbg !1336
  %130 = load double* %arrayidx342, align 8, !dbg !1336, !tbaa !500
  %sub343 = fsub double %130, %129, !dbg !1336
  store double %sub343, double* %arrayidx342, align 8, !dbg !1336, !tbaa !500
  %131 = load double* %arrayidx146, align 16, !dbg !1337, !tbaa !500
  %add.ptr327.sum = sub i64 %idxprom329, %idx.ext325, !dbg !1337
  %arrayidx346 = getelementptr inbounds double* %call120, i64 %add.ptr327.sum, !dbg !1337
  %132 = load double* %arrayidx346, align 8, !dbg !1337, !tbaa !500
  %sub347 = fsub double %132, %131, !dbg !1337
  store double %sub347, double* %arrayidx346, align 8, !dbg !1337, !tbaa !500
  %133 = load double* %arrayidx150, align 8, !dbg !1338, !tbaa !500
  %add.ptr327.sum4517 = sub i64 %idxprom333, %idx.ext325, !dbg !1338
  %arrayidx350 = getelementptr inbounds double* %call120, i64 %add.ptr327.sum4517, !dbg !1338
  %134 = load double* %arrayidx350, align 8, !dbg !1338, !tbaa !500
  %sub351 = fsub double %134, %133, !dbg !1338
  store double %sub351, double* %arrayidx350, align 8, !dbg !1338, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call113}, i64 0, metadata !267), !dbg !1339
  call void @llvm.dbg.value(metadata !{double* %call116}, i64 0, metadata !268), !dbg !1340
  call void @llvm.dbg.value(metadata !{double* %call120}, i64 0, metadata !269), !dbg !1341
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1342
  %135 = load i32* %nrowU, align 4, !dbg !1342, !tbaa !424
  call void @DVdot23(i32 %135, double* %rowL0.0.lcssa, double* %add.ptr310, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %arraydecay) #6, !dbg !1342
  %136 = load double* %arraydecay, align 16, !dbg !1343, !tbaa !500
  %sub366 = sub nsw i32 0, %121, !dbg !1343
  %idxprom367 = sext i32 %sub366 to i64, !dbg !1343
  %add.ptr360.sum = add i64 %idxprom367, %idx.ext319, !dbg !1343
  %arrayidx368 = getelementptr inbounds double* %call113, i64 %add.ptr360.sum, !dbg !1343
  %137 = load double* %arrayidx368, align 8, !dbg !1343, !tbaa !500
  %sub369 = fsub double %137, %136, !dbg !1343
  store double %sub369, double* %arrayidx368, align 8, !dbg !1343, !tbaa !500
  %138 = load double* %arrayidx127, align 8, !dbg !1344, !tbaa !500
  %add.ptr362.sum = add i64 %idxprom367, %idx.ext322, !dbg !1344
  %arrayidx373 = getelementptr inbounds double* %call116, i64 %add.ptr362.sum, !dbg !1344
  %139 = load double* %arrayidx373, align 8, !dbg !1344, !tbaa !500
  %sub374 = fsub double %139, %138, !dbg !1344
  store double %sub374, double* %arrayidx373, align 8, !dbg !1344, !tbaa !500
  %140 = load double* %arrayidx137, align 16, !dbg !1345, !tbaa !500
  %add.ptr364.sum = add i64 %idxprom367, %idx.ext325, !dbg !1345
  %arrayidx378 = getelementptr inbounds double* %call120, i64 %add.ptr364.sum, !dbg !1345
  %141 = load double* %arrayidx378, align 8, !dbg !1345, !tbaa !500
  %sub379 = fsub double %141, %140, !dbg !1345
  store double %sub379, double* %arrayidx378, align 8, !dbg !1345, !tbaa !500
  %142 = load double* %arrayidx131, align 8, !dbg !1346, !tbaa !500
  %sub381 = sub nsw i32 0, %122, !dbg !1346
  %idxprom382 = sext i32 %sub381 to i64, !dbg !1346
  %add.ptr360.sum4521 = add i64 %idxprom382, %idx.ext319, !dbg !1346
  %arrayidx383 = getelementptr inbounds double* %call113, i64 %add.ptr360.sum4521, !dbg !1346
  %143 = load double* %arrayidx383, align 8, !dbg !1346, !tbaa !500
  %sub384 = fsub double %143, %142, !dbg !1346
  store double %sub384, double* %arrayidx383, align 8, !dbg !1346, !tbaa !500
  %144 = load double* %arrayidx146, align 16, !dbg !1347, !tbaa !500
  %add.ptr362.sum4522 = add i64 %idxprom382, %idx.ext322, !dbg !1347
  %arrayidx388 = getelementptr inbounds double* %call116, i64 %add.ptr362.sum4522, !dbg !1347
  %145 = load double* %arrayidx388, align 8, !dbg !1347, !tbaa !500
  %sub389 = fsub double %145, %144, !dbg !1347
  store double %sub389, double* %arrayidx388, align 8, !dbg !1347, !tbaa !500
  %146 = load double* %arrayidx150, align 8, !dbg !1348, !tbaa !500
  %add.ptr364.sum4523 = add i64 %idxprom382, %idx.ext325, !dbg !1348
  %arrayidx393 = getelementptr inbounds double* %call120, i64 %add.ptr364.sum4523, !dbg !1348
  %147 = load double* %arrayidx393, align 8, !dbg !1348, !tbaa !500
  %sub394 = fsub double %147, %146, !dbg !1348
  store double %sub394, double* %arrayidx393, align 8, !dbg !1348, !tbaa !500
  br label %if.end470, !dbg !1349

if.else404:                                       ; preds = %for.end305
  %sub405 = add nsw i32 %.lcssa4577, -1, !dbg !1350
  %cmp406 = icmp eq i32 %jcolU84.0.lcssa, %sub405, !dbg !1350
  br i1 %cmp406, label %if.then407, label %if.end470, !dbg !1350

if.then407:                                       ; preds = %if.else404
  %idxprom408 = sext i32 %jcolU84.0.lcssa to i64, !dbg !1351
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1351
  %148 = load i32** %colindU, align 8, !dbg !1351, !tbaa !419
  %arrayidx409 = getelementptr inbounds i32* %148, i64 %idxprom408, !dbg !1351
  %149 = load i32* %arrayidx409, align 4, !dbg !1351, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %149}, i64 0, metadata !292), !dbg !1351
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1353
  call void @DVdot31(i32 %119, double* %call85, double* %add.ptr, double* %add.ptr87, double* %colU0.0.lcssa, double* %arraydecay) #6, !dbg !1353
  %idx.ext411 = sext i32 %42 to i64, !dbg !1354
  %idx.ext414 = sext i32 %45 to i64, !dbg !1355
  %idx.ext417 = sext i32 %48 to i64, !dbg !1356
  %150 = load double* %arraydecay, align 16, !dbg !1357, !tbaa !500
  %idxprom421 = sext i32 %149 to i64, !dbg !1357
  %add.ptr413.sum = sub i64 %idxprom421, %idx.ext411, !dbg !1357
  %arrayidx422 = getelementptr inbounds double* %call113, i64 %add.ptr413.sum, !dbg !1357
  %151 = load double* %arrayidx422, align 8, !dbg !1357, !tbaa !500
  %sub423 = fsub double %151, %150, !dbg !1357
  store double %sub423, double* %arrayidx422, align 8, !dbg !1357, !tbaa !500
  %152 = load double* %arrayidx127, align 8, !dbg !1358, !tbaa !500
  %add.ptr416.sum = sub i64 %idxprom421, %idx.ext414, !dbg !1358
  %arrayidx426 = getelementptr inbounds double* %call116, i64 %add.ptr416.sum, !dbg !1358
  %153 = load double* %arrayidx426, align 8, !dbg !1358, !tbaa !500
  %sub427 = fsub double %153, %152, !dbg !1358
  store double %sub427, double* %arrayidx426, align 8, !dbg !1358, !tbaa !500
  %154 = load double* %arrayidx137, align 16, !dbg !1359, !tbaa !500
  %add.ptr419.sum = sub i64 %idxprom421, %idx.ext417, !dbg !1359
  %arrayidx430 = getelementptr inbounds double* %call120, i64 %add.ptr419.sum, !dbg !1359
  %155 = load double* %arrayidx430, align 8, !dbg !1359, !tbaa !500
  %sub431 = fsub double %155, %154, !dbg !1359
  store double %sub431, double* %arrayidx430, align 8, !dbg !1359, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call113}, i64 0, metadata !267), !dbg !1360
  call void @llvm.dbg.value(metadata !{double* %call116}, i64 0, metadata !268), !dbg !1361
  call void @llvm.dbg.value(metadata !{double* %call120}, i64 0, metadata !269), !dbg !1362
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1363
  %156 = load i32* %nrowU, align 4, !dbg !1363, !tbaa !424
  call void @DVdot13(i32 %156, double* %rowL0.0.lcssa, double* %add.ptr89, double* %add.ptr91, double* %add.ptr93, double* %arraydecay) #6, !dbg !1363
  %157 = load double* %arraydecay, align 16, !dbg !1364, !tbaa !500
  %sub446 = sub nsw i32 0, %149, !dbg !1364
  %idxprom447 = sext i32 %sub446 to i64, !dbg !1364
  %add.ptr440.sum = add i64 %idxprom447, %idx.ext411, !dbg !1364
  %arrayidx448 = getelementptr inbounds double* %call113, i64 %add.ptr440.sum, !dbg !1364
  %158 = load double* %arrayidx448, align 8, !dbg !1364, !tbaa !500
  %sub449 = fsub double %158, %157, !dbg !1364
  store double %sub449, double* %arrayidx448, align 8, !dbg !1364, !tbaa !500
  %159 = load double* %arrayidx127, align 8, !dbg !1365, !tbaa !500
  %add.ptr442.sum = add i64 %idxprom447, %idx.ext414, !dbg !1365
  %arrayidx453 = getelementptr inbounds double* %call116, i64 %add.ptr442.sum, !dbg !1365
  %160 = load double* %arrayidx453, align 8, !dbg !1365, !tbaa !500
  %sub454 = fsub double %160, %159, !dbg !1365
  store double %sub454, double* %arrayidx453, align 8, !dbg !1365, !tbaa !500
  %161 = load double* %arrayidx137, align 16, !dbg !1366, !tbaa !500
  %add.ptr444.sum = add i64 %idxprom447, %idx.ext417, !dbg !1366
  %arrayidx458 = getelementptr inbounds double* %call120, i64 %add.ptr444.sum, !dbg !1366
  %162 = load double* %arrayidx458, align 8, !dbg !1366, !tbaa !500
  %sub459 = fsub double %162, %161, !dbg !1366
  store double %sub459, double* %arrayidx458, align 8, !dbg !1366, !tbaa !500
  br label %if.end470, !dbg !1367

if.end470:                                        ; preds = %if.else404, %if.then407, %if.then308
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1368
  %163 = load i32* %nrowU, align 4, !dbg !1368, !tbaa !424
  %mul471 = mul nsw i32 %163, 3, !dbg !1368
  %add472 = add nsw i32 %mul471, %offset.04589, !dbg !1368
  call void @llvm.dbg.value(metadata !{i32 %add472}, i64 0, metadata !298), !dbg !1368
  call void @llvm.dbg.value(metadata !{i32 %add166}, i64 0, metadata !289), !dbg !1248
  %cmp97 = icmp sgt i32 %72, %sub96, !dbg !1248
  br i1 %cmp97, label %for.end475, label %for.body98, !dbg !1248

for.end475:                                       ; preds = %if.end470, %if.then83
  %164 = phi i32 [ %36, %if.then83 ], [ %163, %if.end470 ]
  %irowL.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then83 ], [ %add166, %if.end470 ]
  %offset.0.lcssa = phi i32 [ %mul94, %if.then83 ], [ %add472, %if.end470 ]
  %sub476 = add nsw i32 %lastInU.0.lcssa4789, -1, !dbg !1369
  %cmp477 = icmp eq i32 %irowL.0.lcssa, %sub476, !dbg !1369
  br i1 %cmp477, label %if.then478, label %if.else739, !dbg !1369

if.then478:                                       ; preds = %for.end475
  call void @llvm.dbg.value(metadata !{double** %entL}, i64 0, metadata !273), !dbg !1370
  %165 = load double** %entL, align 8, !dbg !1370, !tbaa !419
  %idx.ext479 = sext i32 %offset.0.lcssa to i64, !dbg !1370
  %add.ptr480 = getelementptr inbounds double* %165, i64 %idx.ext479, !dbg !1370
  call void @llvm.dbg.value(metadata !{double* %add.ptr480}, i64 0, metadata !278), !dbg !1370
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1372
  %idx.ext481 = sext i32 %164 to i64, !dbg !1372
  %add.ptr480.sum = add i64 %idx.ext481, %idx.ext479, !dbg !1372
  %add.ptr482 = getelementptr inbounds double* %165, i64 %add.ptr480.sum, !dbg !1372
  call void @llvm.dbg.value(metadata !{double* %add.ptr482}, i64 0, metadata !279), !dbg !1372
  call void @llvm.dbg.value(metadata !{double** %entU}, i64 0, metadata !274), !dbg !1373
  %166 = load double** %entU, align 8, !dbg !1373, !tbaa !419
  %add.ptr484 = getelementptr inbounds double* %166, i64 %idx.ext479, !dbg !1373
  call void @llvm.dbg.value(metadata !{double* %add.ptr484}, i64 0, metadata !270), !dbg !1373
  %add.ptr486 = getelementptr inbounds double* %166, i64 %add.ptr480.sum, !dbg !1374
  call void @llvm.dbg.value(metadata !{double* %add.ptr486}, i64 0, metadata !271), !dbg !1374
  %idxprom487 = sext i32 %irowL.0.lcssa to i64, !dbg !1375
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1375
  %167 = load i32** %colindU, align 8, !dbg !1375, !tbaa !419
  %arrayidx488 = getelementptr inbounds i32* %167, i64 %idxprom487, !dbg !1375
  %168 = load i32* %arrayidx488, align 4, !dbg !1375, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %168}, i64 0, metadata !284), !dbg !1375
  %call489 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %168) #6, !dbg !1376
  call void @llvm.dbg.value(metadata !{double* %call489}, i64 0, metadata !267), !dbg !1376
  %add490 = add nsw i32 %irowL.0.lcssa, 1, !dbg !1377
  %idxprom491 = sext i32 %add490 to i64, !dbg !1377
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1377
  %169 = load i32** %colindU, align 8, !dbg !1377, !tbaa !419
  %arrayidx492 = getelementptr inbounds i32* %169, i64 %idxprom491, !dbg !1377
  %170 = load i32* %arrayidx492, align 4, !dbg !1377, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %170}, i64 0, metadata !285), !dbg !1377
  %call493 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %170) #6, !dbg !1378
  call void @llvm.dbg.value(metadata !{double* %call493}, i64 0, metadata !268), !dbg !1378
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1379
  %171 = load i32* %nrowU, align 4, !dbg !1379, !tbaa !424
  %mul494 = shl nsw i32 %171, 1, !dbg !1379
  call void @DVzero(i32 %mul494, double* %call85) #6, !dbg !1379
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call85, double* %add.ptr, double* %add.ptr480, double* %add.ptr482) #6, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1381
  %172 = load i32* %nrowU, align 4, !dbg !1381, !tbaa !424
  %mul495 = shl nsw i32 %172, 1, !dbg !1381
  call void @DVzero(i32 %mul495, double* %add.ptr89) #6, !dbg !1381
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %add.ptr89, double* %add.ptr91, double* %add.ptr484, double* %add.ptr486) #6, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1383
  %173 = load i32* %nrowU, align 4, !dbg !1383, !tbaa !424
  %arraydecay496 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !1383
  call void @DVdot22(i32 %173, double* %call85, double* %add.ptr, double* %add.ptr484, double* %add.ptr486, double* %arraydecay496) #6, !dbg !1383
  %174 = load double* %arraydecay496, align 16, !dbg !1384, !tbaa !500
  %175 = load double* %call489, align 8, !dbg !1384, !tbaa !500
  %sub499 = fsub double %175, %174, !dbg !1384
  store double %sub499, double* %call489, align 8, !dbg !1384, !tbaa !500
  %sub500 = sub nsw i32 %170, %168, !dbg !1385
  call void @llvm.dbg.value(metadata !{i32 %sub500}, i64 0, metadata !291), !dbg !1385
  %arrayidx501 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !1386
  %176 = load double* %arrayidx501, align 8, !dbg !1386, !tbaa !500
  %idxprom502 = sext i32 %sub500 to i64, !dbg !1386
  %arrayidx503 = getelementptr inbounds double* %call489, i64 %idxprom502, !dbg !1386
  %177 = load double* %arrayidx503, align 8, !dbg !1386, !tbaa !500
  %sub504 = fsub double %177, %176, !dbg !1386
  store double %sub504, double* %arrayidx503, align 8, !dbg !1386, !tbaa !500
  %arrayidx505 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !1387
  %178 = load double* %arrayidx505, align 16, !dbg !1387, !tbaa !500
  %sub506 = sub nsw i32 0, %sub500, !dbg !1387
  %idxprom507 = sext i32 %sub506 to i64, !dbg !1387
  %arrayidx508 = getelementptr inbounds double* %call489, i64 %idxprom507, !dbg !1387
  %179 = load double* %arrayidx508, align 8, !dbg !1387, !tbaa !500
  %sub509 = fsub double %179, %178, !dbg !1387
  store double %sub509, double* %arrayidx508, align 8, !dbg !1387, !tbaa !500
  %arrayidx510 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 3, !dbg !1388
  %180 = load double* %arrayidx510, align 8, !dbg !1388, !tbaa !500
  %181 = load double* %call493, align 8, !dbg !1388, !tbaa !500
  %sub512 = fsub double %181, %180, !dbg !1388
  store double %sub512, double* %call493, align 8, !dbg !1388, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1389
  %182 = load i32* %nrowU, align 4, !dbg !1389, !tbaa !424
  %idx.ext513 = sext i32 %182 to i64, !dbg !1389
  %add.ptr482.sum = add i64 %idx.ext513, %add.ptr480.sum, !dbg !1389
  %add.ptr514 = getelementptr inbounds double* %165, i64 %add.ptr482.sum, !dbg !1389
  call void @llvm.dbg.value(metadata !{double* %add.ptr514}, i64 0, metadata !278), !dbg !1389
  %add.ptr516 = getelementptr inbounds double* %166, i64 %add.ptr482.sum, !dbg !1390
  call void @llvm.dbg.value(metadata !{double* %add.ptr516}, i64 0, metadata !270), !dbg !1390
  %add517 = add i32 %irowL.0.lcssa, 2, !dbg !1391
  call void @llvm.dbg.value(metadata !{i32 %add517}, i64 0, metadata !290), !dbg !1391
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1391
  %183 = load i32* %ncolU, align 4, !dbg !1391, !tbaa !424
  %sub5194557 = add nsw i32 %183, -2, !dbg !1391
  %cmp5204558 = icmp slt i32 %add517, %sub5194557, !dbg !1391
  br i1 %cmp5204558, label %for.body521.lr.ph, label %for.end620, !dbg !1391

for.body521.lr.ph:                                ; preds = %if.then478
  %idx.ext539 = sext i32 %168 to i64, !dbg !1393
  %idx.ext542 = sext i32 %170 to i64, !dbg !1395
  %arrayidx561 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 4, !dbg !1396
  %arrayidx565 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 5, !dbg !1397
  %184 = sext i32 %add517 to i64
  br label %for.body521, !dbg !1391

for.body521:                                      ; preds = %for.body521.lr.ph, %for.body521
  %185 = phi i32 [ %182, %for.body521.lr.ph ], [ %217, %for.body521 ], !dbg !1398
  %indvars.iv4683 = phi i64 [ %184, %for.body521.lr.ph ], [ %indvars.iv.next4684, %for.body521 ]
  %colU0.14561 = phi double* [ %add.ptr516, %for.body521.lr.ph ], [ %add.ptr617, %for.body521 ]
  %rowL0.14560 = phi double* [ %add.ptr514, %for.body521.lr.ph ], [ %add.ptr615, %for.body521 ]
  %jcolU84.14559 = phi i32 [ %add517, %for.body521.lr.ph ], [ %add619, %for.body521 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1398
  %idx.ext522 = sext i32 %185 to i64, !dbg !1398
  %add.ptr523 = getelementptr inbounds double* %rowL0.14560, i64 %idx.ext522, !dbg !1398
  call void @llvm.dbg.value(metadata !{double* %add.ptr523}, i64 0, metadata !279), !dbg !1398
  %add.ptr523.sum = shl nsw i64 %idx.ext522, 1, !dbg !1399
  %add.ptr525 = getelementptr inbounds double* %rowL0.14560, i64 %add.ptr523.sum, !dbg !1399
  call void @llvm.dbg.value(metadata !{double* %add.ptr525}, i64 0, metadata !280), !dbg !1399
  %add.ptr527 = getelementptr inbounds double* %colU0.14561, i64 %idx.ext522, !dbg !1400
  call void @llvm.dbg.value(metadata !{double* %add.ptr527}, i64 0, metadata !271), !dbg !1400
  %add.ptr529 = getelementptr inbounds double* %colU0.14561, i64 %add.ptr523.sum, !dbg !1401
  call void @llvm.dbg.value(metadata !{double* %add.ptr529}, i64 0, metadata !272), !dbg !1401
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1402
  %186 = load i32** %colindU, align 8, !dbg !1402, !tbaa !419
  %arrayidx531 = getelementptr inbounds i32* %186, i64 %indvars.iv4683, !dbg !1402
  %187 = load i32* %arrayidx531, align 4, !dbg !1402, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %187}, i64 0, metadata !292), !dbg !1402
  %188 = add nsw i64 %indvars.iv4683, 1, !dbg !1403
  %arrayidx534 = getelementptr inbounds i32* %186, i64 %188, !dbg !1403
  %189 = load i32* %arrayidx534, align 4, !dbg !1403, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %189}, i64 0, metadata !293), !dbg !1403
  %190 = add nsw i64 %indvars.iv4683, 2, !dbg !1404
  %arrayidx537 = getelementptr inbounds i32* %186, i64 %190, !dbg !1404
  %191 = load i32* %arrayidx537, align 4, !dbg !1404, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %191}, i64 0, metadata !294), !dbg !1404
  call void @DVdot23(i32 %185, double* %call85, double* %add.ptr, double* %colU0.14561, double* %add.ptr527, double* %add.ptr529, double* %arraydecay496) #6, !dbg !1405
  %192 = load double* %arraydecay496, align 16, !dbg !1406, !tbaa !500
  %idxprom546 = sext i32 %187 to i64, !dbg !1406
  %add.ptr541.sum = sub i64 %idxprom546, %idx.ext539, !dbg !1406
  %arrayidx547 = getelementptr inbounds double* %call489, i64 %add.ptr541.sum, !dbg !1406
  %193 = load double* %arrayidx547, align 8, !dbg !1406, !tbaa !500
  %sub548 = fsub double %193, %192, !dbg !1406
  store double %sub548, double* %arrayidx547, align 8, !dbg !1406, !tbaa !500
  %194 = load double* %arrayidx501, align 8, !dbg !1407, !tbaa !500
  %idxprom550 = sext i32 %189 to i64, !dbg !1407
  %add.ptr541.sum4500 = sub i64 %idxprom550, %idx.ext539, !dbg !1407
  %arrayidx551 = getelementptr inbounds double* %call489, i64 %add.ptr541.sum4500, !dbg !1407
  %195 = load double* %arrayidx551, align 8, !dbg !1407, !tbaa !500
  %sub552 = fsub double %195, %194, !dbg !1407
  store double %sub552, double* %arrayidx551, align 8, !dbg !1407, !tbaa !500
  %196 = load double* %arrayidx505, align 16, !dbg !1408, !tbaa !500
  %idxprom554 = sext i32 %191 to i64, !dbg !1408
  %add.ptr541.sum4501 = sub i64 %idxprom554, %idx.ext539, !dbg !1408
  %arrayidx555 = getelementptr inbounds double* %call489, i64 %add.ptr541.sum4501, !dbg !1408
  %197 = load double* %arrayidx555, align 8, !dbg !1408, !tbaa !500
  %sub556 = fsub double %197, %196, !dbg !1408
  store double %sub556, double* %arrayidx555, align 8, !dbg !1408, !tbaa !500
  %198 = load double* %arrayidx510, align 8, !dbg !1409, !tbaa !500
  %add.ptr544.sum = sub i64 %idxprom546, %idx.ext542, !dbg !1409
  %arrayidx559 = getelementptr inbounds double* %call493, i64 %add.ptr544.sum, !dbg !1409
  %199 = load double* %arrayidx559, align 8, !dbg !1409, !tbaa !500
  %sub560 = fsub double %199, %198, !dbg !1409
  store double %sub560, double* %arrayidx559, align 8, !dbg !1409, !tbaa !500
  %200 = load double* %arrayidx561, align 16, !dbg !1396, !tbaa !500
  %add.ptr544.sum4502 = sub i64 %idxprom550, %idx.ext542, !dbg !1396
  %arrayidx563 = getelementptr inbounds double* %call493, i64 %add.ptr544.sum4502, !dbg !1396
  %201 = load double* %arrayidx563, align 8, !dbg !1396, !tbaa !500
  %sub564 = fsub double %201, %200, !dbg !1396
  store double %sub564, double* %arrayidx563, align 8, !dbg !1396, !tbaa !500
  %202 = load double* %arrayidx565, align 8, !dbg !1397, !tbaa !500
  %add.ptr544.sum4503 = sub i64 %idxprom554, %idx.ext542, !dbg !1397
  %arrayidx567 = getelementptr inbounds double* %call493, i64 %add.ptr544.sum4503, !dbg !1397
  %203 = load double* %arrayidx567, align 8, !dbg !1397, !tbaa !500
  %sub568 = fsub double %203, %202, !dbg !1397
  store double %sub568, double* %arrayidx567, align 8, !dbg !1397, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call489}, i64 0, metadata !267), !dbg !1410
  call void @llvm.dbg.value(metadata !{double* %call493}, i64 0, metadata !268), !dbg !1411
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1412
  %204 = load i32* %nrowU, align 4, !dbg !1412, !tbaa !424
  call void @DVdot32(i32 %204, double* %rowL0.14560, double* %add.ptr523, double* %add.ptr525, double* %add.ptr89, double* %add.ptr91, double* %arraydecay496) #6, !dbg !1412
  %205 = load double* %arraydecay496, align 16, !dbg !1413, !tbaa !500
  %sub579 = sub nsw i32 0, %187, !dbg !1413
  %idxprom580 = sext i32 %sub579 to i64, !dbg !1413
  %add.ptr575.sum = add i64 %idxprom580, %idx.ext539, !dbg !1413
  %arrayidx581 = getelementptr inbounds double* %call489, i64 %add.ptr575.sum, !dbg !1413
  %206 = load double* %arrayidx581, align 8, !dbg !1413, !tbaa !500
  %sub582 = fsub double %206, %205, !dbg !1413
  store double %sub582, double* %arrayidx581, align 8, !dbg !1413, !tbaa !500
  %207 = load double* %arrayidx501, align 8, !dbg !1414, !tbaa !500
  %add.ptr577.sum = add i64 %idxprom580, %idx.ext542, !dbg !1414
  %arrayidx586 = getelementptr inbounds double* %call493, i64 %add.ptr577.sum, !dbg !1414
  %208 = load double* %arrayidx586, align 8, !dbg !1414, !tbaa !500
  %sub587 = fsub double %208, %207, !dbg !1414
  store double %sub587, double* %arrayidx586, align 8, !dbg !1414, !tbaa !500
  %209 = load double* %arrayidx505, align 16, !dbg !1415, !tbaa !500
  %sub589 = sub nsw i32 0, %189, !dbg !1415
  %idxprom590 = sext i32 %sub589 to i64, !dbg !1415
  %add.ptr575.sum4506 = add i64 %idxprom590, %idx.ext539, !dbg !1415
  %arrayidx591 = getelementptr inbounds double* %call489, i64 %add.ptr575.sum4506, !dbg !1415
  %210 = load double* %arrayidx591, align 8, !dbg !1415, !tbaa !500
  %sub592 = fsub double %210, %209, !dbg !1415
  store double %sub592, double* %arrayidx591, align 8, !dbg !1415, !tbaa !500
  %211 = load double* %arrayidx510, align 8, !dbg !1416, !tbaa !500
  %add.ptr577.sum4507 = add i64 %idxprom590, %idx.ext542, !dbg !1416
  %arrayidx596 = getelementptr inbounds double* %call493, i64 %add.ptr577.sum4507, !dbg !1416
  %212 = load double* %arrayidx596, align 8, !dbg !1416, !tbaa !500
  %sub597 = fsub double %212, %211, !dbg !1416
  store double %sub597, double* %arrayidx596, align 8, !dbg !1416, !tbaa !500
  %213 = load double* %arrayidx561, align 16, !dbg !1417, !tbaa !500
  %sub599 = sub nsw i32 0, %191, !dbg !1417
  %idxprom600 = sext i32 %sub599 to i64, !dbg !1417
  %add.ptr575.sum4508 = add i64 %idxprom600, %idx.ext539, !dbg !1417
  %arrayidx601 = getelementptr inbounds double* %call489, i64 %add.ptr575.sum4508, !dbg !1417
  %214 = load double* %arrayidx601, align 8, !dbg !1417, !tbaa !500
  %sub602 = fsub double %214, %213, !dbg !1417
  store double %sub602, double* %arrayidx601, align 8, !dbg !1417, !tbaa !500
  %215 = load double* %arrayidx565, align 8, !dbg !1418, !tbaa !500
  %add.ptr577.sum4509 = add i64 %idxprom600, %idx.ext542, !dbg !1418
  %arrayidx606 = getelementptr inbounds double* %call493, i64 %add.ptr577.sum4509, !dbg !1418
  %216 = load double* %arrayidx606, align 8, !dbg !1418, !tbaa !500
  %sub607 = fsub double %216, %215, !dbg !1418
  store double %sub607, double* %arrayidx606, align 8, !dbg !1418, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call489}, i64 0, metadata !267), !dbg !1419
  call void @llvm.dbg.value(metadata !{double* %call493}, i64 0, metadata !268), !dbg !1420
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1421
  %217 = load i32* %nrowU, align 4, !dbg !1421, !tbaa !424
  %idx.ext614 = sext i32 %217 to i64, !dbg !1421
  %add.ptr525.sum = add i64 %idx.ext614, %add.ptr523.sum, !dbg !1421
  %add.ptr615 = getelementptr inbounds double* %rowL0.14560, i64 %add.ptr525.sum, !dbg !1421
  call void @llvm.dbg.value(metadata !{double* %add.ptr615}, i64 0, metadata !278), !dbg !1421
  %add.ptr617 = getelementptr inbounds double* %colU0.14561, i64 %add.ptr525.sum, !dbg !1422
  call void @llvm.dbg.value(metadata !{double* %add.ptr617}, i64 0, metadata !270), !dbg !1422
  %add619 = add nsw i32 %jcolU84.14559, 3, !dbg !1391
  call void @llvm.dbg.value(metadata !{i32 %add619}, i64 0, metadata !290), !dbg !1391
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1391
  %218 = load i32* %ncolU, align 4, !dbg !1391, !tbaa !424
  %sub519 = add nsw i32 %218, -2, !dbg !1391
  %cmp520 = icmp slt i32 %add619, %sub519, !dbg !1391
  %indvars.iv.next4684 = add i64 %indvars.iv4683, 3, !dbg !1391
  br i1 %cmp520, label %for.body521, label %for.end620, !dbg !1391

for.end620:                                       ; preds = %for.body521, %if.then478
  %219 = phi i32 [ %182, %if.then478 ], [ %217, %for.body521 ]
  %sub519.lcssa = phi i32 [ %sub5194557, %if.then478 ], [ %sub519, %for.body521 ]
  %.lcssa = phi i32 [ %183, %if.then478 ], [ %218, %for.body521 ]
  %colU0.1.lcssa = phi double* [ %add.ptr516, %if.then478 ], [ %add.ptr617, %for.body521 ]
  %rowL0.1.lcssa = phi double* [ %add.ptr514, %if.then478 ], [ %add.ptr615, %for.body521 ]
  %jcolU84.1.lcssa = phi i32 [ %add517, %if.then478 ], [ %add619, %for.body521 ]
  %cmp622 = icmp eq i32 %jcolU84.1.lcssa, %sub519.lcssa, !dbg !1423
  br i1 %cmp622, label %if.then623, label %if.else691, !dbg !1423

if.then623:                                       ; preds = %for.end620
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1424
  %idx.ext624 = sext i32 %219 to i64, !dbg !1424
  %add.ptr625 = getelementptr inbounds double* %rowL0.1.lcssa, i64 %idx.ext624, !dbg !1424
  call void @llvm.dbg.value(metadata !{double* %add.ptr625}, i64 0, metadata !279), !dbg !1424
  %add.ptr627 = getelementptr inbounds double* %colU0.1.lcssa, i64 %idx.ext624, !dbg !1426
  call void @llvm.dbg.value(metadata !{double* %add.ptr627}, i64 0, metadata !271), !dbg !1426
  %idxprom628 = sext i32 %sub519.lcssa to i64, !dbg !1427
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1427
  %220 = load i32** %colindU, align 8, !dbg !1427, !tbaa !419
  %arrayidx629 = getelementptr inbounds i32* %220, i64 %idxprom628, !dbg !1427
  %221 = load i32* %arrayidx629, align 4, !dbg !1427, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %221}, i64 0, metadata !292), !dbg !1427
  %add630 = add nsw i32 %sub519.lcssa, 1, !dbg !1428
  %idxprom631 = sext i32 %add630 to i64, !dbg !1428
  %arrayidx632 = getelementptr inbounds i32* %220, i64 %idxprom631, !dbg !1428
  %222 = load i32* %arrayidx632, align 4, !dbg !1428, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %222}, i64 0, metadata !293), !dbg !1428
  call void @DVdot22(i32 %219, double* %call85, double* %add.ptr, double* %colU0.1.lcssa, double* %add.ptr627, double* %arraydecay496) #6, !dbg !1429
  %idx.ext634 = sext i32 %168 to i64, !dbg !1430
  %idx.ext637 = sext i32 %170 to i64, !dbg !1431
  %223 = load double* %arraydecay496, align 16, !dbg !1432, !tbaa !500
  %idxprom641 = sext i32 %221 to i64, !dbg !1432
  %add.ptr636.sum = sub i64 %idxprom641, %idx.ext634, !dbg !1432
  %arrayidx642 = getelementptr inbounds double* %call489, i64 %add.ptr636.sum, !dbg !1432
  %224 = load double* %arrayidx642, align 8, !dbg !1432, !tbaa !500
  %sub643 = fsub double %224, %223, !dbg !1432
  store double %sub643, double* %arrayidx642, align 8, !dbg !1432, !tbaa !500
  %225 = load double* %arrayidx501, align 8, !dbg !1433, !tbaa !500
  %idxprom645 = sext i32 %222 to i64, !dbg !1433
  %add.ptr636.sum4494 = sub i64 %idxprom645, %idx.ext634, !dbg !1433
  %arrayidx646 = getelementptr inbounds double* %call489, i64 %add.ptr636.sum4494, !dbg !1433
  %226 = load double* %arrayidx646, align 8, !dbg !1433, !tbaa !500
  %sub647 = fsub double %226, %225, !dbg !1433
  store double %sub647, double* %arrayidx646, align 8, !dbg !1433, !tbaa !500
  %227 = load double* %arrayidx505, align 16, !dbg !1434, !tbaa !500
  %add.ptr639.sum = sub i64 %idxprom641, %idx.ext637, !dbg !1434
  %arrayidx650 = getelementptr inbounds double* %call493, i64 %add.ptr639.sum, !dbg !1434
  %228 = load double* %arrayidx650, align 8, !dbg !1434, !tbaa !500
  %sub651 = fsub double %228, %227, !dbg !1434
  store double %sub651, double* %arrayidx650, align 8, !dbg !1434, !tbaa !500
  %229 = load double* %arrayidx510, align 8, !dbg !1435, !tbaa !500
  %add.ptr639.sum4495 = sub i64 %idxprom645, %idx.ext637, !dbg !1435
  %arrayidx654 = getelementptr inbounds double* %call493, i64 %add.ptr639.sum4495, !dbg !1435
  %230 = load double* %arrayidx654, align 8, !dbg !1435, !tbaa !500
  %sub655 = fsub double %230, %229, !dbg !1435
  store double %sub655, double* %arrayidx654, align 8, !dbg !1435, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call489}, i64 0, metadata !267), !dbg !1436
  call void @llvm.dbg.value(metadata !{double* %call493}, i64 0, metadata !268), !dbg !1437
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1438
  %231 = load i32* %nrowU, align 4, !dbg !1438, !tbaa !424
  call void @DVdot22(i32 %231, double* %rowL0.1.lcssa, double* %add.ptr625, double* %add.ptr89, double* %add.ptr91, double* %arraydecay496) #6, !dbg !1438
  %232 = load double* %arraydecay496, align 16, !dbg !1439, !tbaa !500
  %sub666 = sub nsw i32 0, %221, !dbg !1439
  %idxprom667 = sext i32 %sub666 to i64, !dbg !1439
  %add.ptr662.sum = add i64 %idxprom667, %idx.ext634, !dbg !1439
  %arrayidx668 = getelementptr inbounds double* %call489, i64 %add.ptr662.sum, !dbg !1439
  %233 = load double* %arrayidx668, align 8, !dbg !1439, !tbaa !500
  %sub669 = fsub double %233, %232, !dbg !1439
  store double %sub669, double* %arrayidx668, align 8, !dbg !1439, !tbaa !500
  %234 = load double* %arrayidx501, align 8, !dbg !1440, !tbaa !500
  %add.ptr664.sum = add i64 %idxprom667, %idx.ext637, !dbg !1440
  %arrayidx673 = getelementptr inbounds double* %call493, i64 %add.ptr664.sum, !dbg !1440
  %235 = load double* %arrayidx673, align 8, !dbg !1440, !tbaa !500
  %sub674 = fsub double %235, %234, !dbg !1440
  store double %sub674, double* %arrayidx673, align 8, !dbg !1440, !tbaa !500
  %236 = load double* %arrayidx505, align 16, !dbg !1441, !tbaa !500
  %sub676 = sub nsw i32 0, %222, !dbg !1441
  %idxprom677 = sext i32 %sub676 to i64, !dbg !1441
  %add.ptr662.sum4498 = add i64 %idxprom677, %idx.ext634, !dbg !1441
  %arrayidx678 = getelementptr inbounds double* %call489, i64 %add.ptr662.sum4498, !dbg !1441
  %237 = load double* %arrayidx678, align 8, !dbg !1441, !tbaa !500
  %sub679 = fsub double %237, %236, !dbg !1441
  store double %sub679, double* %arrayidx678, align 8, !dbg !1441, !tbaa !500
  %238 = load double* %arrayidx510, align 8, !dbg !1442, !tbaa !500
  %add.ptr664.sum4499 = add i64 %idxprom677, %idx.ext637, !dbg !1442
  %arrayidx683 = getelementptr inbounds double* %call493, i64 %add.ptr664.sum4499, !dbg !1442
  %239 = load double* %arrayidx683, align 8, !dbg !1442, !tbaa !500
  %sub684 = fsub double %239, %238, !dbg !1442
  store double %sub684, double* %arrayidx683, align 8, !dbg !1442, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1443

if.else691:                                       ; preds = %for.end620
  %sub692 = add nsw i32 %.lcssa, -1, !dbg !1444
  %cmp693 = icmp eq i32 %jcolU84.1.lcssa, %sub692, !dbg !1444
  br i1 %cmp693, label %if.then694, label %for.cond2785.preheader, !dbg !1444

if.then694:                                       ; preds = %if.else691
  %idxprom695 = sext i32 %jcolU84.1.lcssa to i64, !dbg !1445
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1445
  %240 = load i32** %colindU, align 8, !dbg !1445, !tbaa !419
  %arrayidx696 = getelementptr inbounds i32* %240, i64 %idxprom695, !dbg !1445
  %241 = load i32* %arrayidx696, align 4, !dbg !1445, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %241}, i64 0, metadata !292), !dbg !1445
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1447
  call void @DVdot21(i32 %219, double* %call85, double* %add.ptr, double* %colU0.1.lcssa, double* %arraydecay496) #6, !dbg !1447
  %idx.ext698 = sext i32 %168 to i64, !dbg !1448
  %idx.ext701 = sext i32 %170 to i64, !dbg !1449
  %242 = load double* %arraydecay496, align 16, !dbg !1450, !tbaa !500
  %idxprom705 = sext i32 %241 to i64, !dbg !1450
  %add.ptr700.sum = sub i64 %idxprom705, %idx.ext698, !dbg !1450
  %arrayidx706 = getelementptr inbounds double* %call489, i64 %add.ptr700.sum, !dbg !1450
  %243 = load double* %arrayidx706, align 8, !dbg !1450, !tbaa !500
  %sub707 = fsub double %243, %242, !dbg !1450
  store double %sub707, double* %arrayidx706, align 8, !dbg !1450, !tbaa !500
  %244 = load double* %arrayidx501, align 8, !dbg !1451, !tbaa !500
  %add.ptr703.sum = sub i64 %idxprom705, %idx.ext701, !dbg !1451
  %arrayidx710 = getelementptr inbounds double* %call493, i64 %add.ptr703.sum, !dbg !1451
  %245 = load double* %arrayidx710, align 8, !dbg !1451, !tbaa !500
  %sub711 = fsub double %245, %244, !dbg !1451
  store double %sub711, double* %arrayidx710, align 8, !dbg !1451, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call489}, i64 0, metadata !267), !dbg !1452
  call void @llvm.dbg.value(metadata !{double* %call493}, i64 0, metadata !268), !dbg !1453
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1454
  %246 = load i32* %nrowU, align 4, !dbg !1454, !tbaa !424
  call void @DVdot12(i32 %246, double* %rowL0.1.lcssa, double* %add.ptr89, double* %add.ptr91, double* %arraydecay496) #6, !dbg !1454
  %247 = load double* %arraydecay496, align 16, !dbg !1455, !tbaa !500
  %sub722 = sub nsw i32 0, %241, !dbg !1455
  %idxprom723 = sext i32 %sub722 to i64, !dbg !1455
  %add.ptr718.sum = add i64 %idxprom723, %idx.ext698, !dbg !1455
  %arrayidx724 = getelementptr inbounds double* %call489, i64 %add.ptr718.sum, !dbg !1455
  %248 = load double* %arrayidx724, align 8, !dbg !1455, !tbaa !500
  %sub725 = fsub double %248, %247, !dbg !1455
  store double %sub725, double* %arrayidx724, align 8, !dbg !1455, !tbaa !500
  %249 = load double* %arrayidx501, align 8, !dbg !1456, !tbaa !500
  %add.ptr720.sum = add i64 %idxprom723, %idx.ext701, !dbg !1456
  %arrayidx729 = getelementptr inbounds double* %call493, i64 %add.ptr720.sum, !dbg !1456
  %250 = load double* %arrayidx729, align 8, !dbg !1456, !tbaa !500
  %sub730 = fsub double %250, %249, !dbg !1456
  store double %sub730, double* %arrayidx729, align 8, !dbg !1456, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1457

if.else739:                                       ; preds = %for.end475
  %cmp740 = icmp eq i32 %irowL.0.lcssa, %lastInU.0.lcssa4789, !dbg !1458
  br i1 %cmp740, label %if.then741, label %for.cond2785.preheader, !dbg !1458

if.then741:                                       ; preds = %if.else739
  call void @llvm.dbg.value(metadata !{double** %entL}, i64 0, metadata !273), !dbg !1459
  %251 = load double** %entL, align 8, !dbg !1459, !tbaa !419
  %idx.ext742 = sext i32 %offset.0.lcssa to i64, !dbg !1459
  %add.ptr743 = getelementptr inbounds double* %251, i64 %idx.ext742, !dbg !1459
  call void @llvm.dbg.value(metadata !{double* %add.ptr743}, i64 0, metadata !278), !dbg !1459
  call void @llvm.dbg.value(metadata !{double** %entU}, i64 0, metadata !274), !dbg !1461
  %252 = load double** %entU, align 8, !dbg !1461, !tbaa !419
  %add.ptr745 = getelementptr inbounds double* %252, i64 %idx.ext742, !dbg !1461
  call void @llvm.dbg.value(metadata !{double* %add.ptr745}, i64 0, metadata !270), !dbg !1461
  %idxprom746 = sext i32 %lastInU.0.lcssa4789 to i64, !dbg !1462
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1462
  %253 = load i32** %colindU, align 8, !dbg !1462, !tbaa !419
  %arrayidx747 = getelementptr inbounds i32* %253, i64 %idxprom746, !dbg !1462
  %254 = load i32* %arrayidx747, align 4, !dbg !1462, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %254}, i64 0, metadata !284), !dbg !1462
  %call748 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %254) #6, !dbg !1463
  call void @llvm.dbg.value(metadata !{double* %call748}, i64 0, metadata !267), !dbg !1463
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1464
  %255 = load i32* %nrowU, align 4, !dbg !1464, !tbaa !424
  call void @DVzero(i32 %255, double* %call85) #6, !dbg !1464
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call85, double* %add.ptr743) #6, !dbg !1465
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1466
  %256 = load i32* %nrowU, align 4, !dbg !1466, !tbaa !424
  call void @DVzero(i32 %256, double* %add.ptr89) #6, !dbg !1466
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr89, double* %add.ptr745) #6, !dbg !1467
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1468
  %257 = load i32* %nrowU, align 4, !dbg !1468, !tbaa !424
  %arraydecay749 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 0, !dbg !1468
  call void @DVdot11(i32 %257, double* %call85, double* %add.ptr745, double* %arraydecay749) #6, !dbg !1468
  %258 = load double* %arraydecay749, align 16, !dbg !1469, !tbaa !500
  %259 = load double* %call748, align 8, !dbg !1469, !tbaa !500
  %sub752 = fsub double %259, %258, !dbg !1469
  store double %sub752, double* %call748, align 8, !dbg !1469, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1470
  %260 = load i32* %nrowU, align 4, !dbg !1470, !tbaa !424
  %idx.ext753 = sext i32 %260 to i64, !dbg !1470
  %add.ptr743.sum = add i64 %idx.ext753, %idx.ext742, !dbg !1470
  %add.ptr754 = getelementptr inbounds double* %251, i64 %add.ptr743.sum, !dbg !1470
  call void @llvm.dbg.value(metadata !{double* %add.ptr754}, i64 0, metadata !278), !dbg !1470
  %add.ptr756 = getelementptr inbounds double* %252, i64 %add.ptr743.sum, !dbg !1471
  call void @llvm.dbg.value(metadata !{double* %add.ptr756}, i64 0, metadata !270), !dbg !1471
  %add757 = add i32 %lastInU.0.lcssa4789, 1, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32 %add757}, i64 0, metadata !290), !dbg !1472
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1472
  %261 = load i32* %ncolU, align 4, !dbg !1472, !tbaa !424
  %sub7594567 = add nsw i32 %261, -2, !dbg !1472
  %cmp7604568 = icmp slt i32 %add757, %sub7594567, !dbg !1472
  br i1 %cmp7604568, label %for.body761.lr.ph, label %for.end823, !dbg !1472

for.body761.lr.ph:                                ; preds = %if.then741
  %idx.ext779 = sext i32 %254 to i64, !dbg !1474
  %arrayidx786 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !1476
  %arrayidx790 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 2, !dbg !1477
  %262 = sext i32 %add757 to i64
  br label %for.body761, !dbg !1472

for.body761:                                      ; preds = %for.body761.lr.ph, %for.body761
  %263 = phi i32 [ %260, %for.body761.lr.ph ], [ %283, %for.body761 ], !dbg !1478
  %indvars.iv4690 = phi i64 [ %262, %for.body761.lr.ph ], [ %indvars.iv.next4691, %for.body761 ]
  %colU0.24571 = phi double* [ %add.ptr756, %for.body761.lr.ph ], [ %add.ptr820, %for.body761 ]
  %rowL0.24570 = phi double* [ %add.ptr754, %for.body761.lr.ph ], [ %add.ptr818, %for.body761 ]
  %jcolU84.24569 = phi i32 [ %add757, %for.body761.lr.ph ], [ %add822, %for.body761 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1478
  %idx.ext762 = sext i32 %263 to i64, !dbg !1478
  %add.ptr763 = getelementptr inbounds double* %rowL0.24570, i64 %idx.ext762, !dbg !1478
  call void @llvm.dbg.value(metadata !{double* %add.ptr763}, i64 0, metadata !279), !dbg !1478
  %add.ptr763.sum = shl nsw i64 %idx.ext762, 1, !dbg !1479
  %add.ptr765 = getelementptr inbounds double* %rowL0.24570, i64 %add.ptr763.sum, !dbg !1479
  call void @llvm.dbg.value(metadata !{double* %add.ptr765}, i64 0, metadata !280), !dbg !1479
  %add.ptr767 = getelementptr inbounds double* %colU0.24571, i64 %idx.ext762, !dbg !1480
  call void @llvm.dbg.value(metadata !{double* %add.ptr767}, i64 0, metadata !271), !dbg !1480
  %add.ptr769 = getelementptr inbounds double* %colU0.24571, i64 %add.ptr763.sum, !dbg !1481
  call void @llvm.dbg.value(metadata !{double* %add.ptr769}, i64 0, metadata !272), !dbg !1481
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1482
  %264 = load i32** %colindU, align 8, !dbg !1482, !tbaa !419
  %arrayidx771 = getelementptr inbounds i32* %264, i64 %indvars.iv4690, !dbg !1482
  %265 = load i32* %arrayidx771, align 4, !dbg !1482, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %265}, i64 0, metadata !292), !dbg !1482
  %266 = add nsw i64 %indvars.iv4690, 1, !dbg !1483
  %arrayidx774 = getelementptr inbounds i32* %264, i64 %266, !dbg !1483
  %267 = load i32* %arrayidx774, align 4, !dbg !1483, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %267}, i64 0, metadata !293), !dbg !1483
  %268 = add nsw i64 %indvars.iv4690, 2, !dbg !1484
  %arrayidx777 = getelementptr inbounds i32* %264, i64 %268, !dbg !1484
  %269 = load i32* %arrayidx777, align 4, !dbg !1484, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %269}, i64 0, metadata !294), !dbg !1484
  call void @DVdot13(i32 %263, double* %call85, double* %colU0.24571, double* %add.ptr767, double* %add.ptr769, double* %arraydecay749) #6, !dbg !1485
  %270 = load double* %arraydecay749, align 16, !dbg !1486, !tbaa !500
  %idxprom783 = sext i32 %265 to i64, !dbg !1486
  %add.ptr781.sum = sub i64 %idxprom783, %idx.ext779, !dbg !1486
  %arrayidx784 = getelementptr inbounds double* %call748, i64 %add.ptr781.sum, !dbg !1486
  %271 = load double* %arrayidx784, align 8, !dbg !1486, !tbaa !500
  %sub785 = fsub double %271, %270, !dbg !1486
  store double %sub785, double* %arrayidx784, align 8, !dbg !1486, !tbaa !500
  %272 = load double* %arrayidx786, align 8, !dbg !1476, !tbaa !500
  %idxprom787 = sext i32 %267 to i64, !dbg !1476
  %add.ptr781.sum4486 = sub i64 %idxprom787, %idx.ext779, !dbg !1476
  %arrayidx788 = getelementptr inbounds double* %call748, i64 %add.ptr781.sum4486, !dbg !1476
  %273 = load double* %arrayidx788, align 8, !dbg !1476, !tbaa !500
  %sub789 = fsub double %273, %272, !dbg !1476
  store double %sub789, double* %arrayidx788, align 8, !dbg !1476, !tbaa !500
  %274 = load double* %arrayidx790, align 16, !dbg !1477, !tbaa !500
  %idxprom791 = sext i32 %269 to i64, !dbg !1477
  %add.ptr781.sum4487 = sub i64 %idxprom791, %idx.ext779, !dbg !1477
  %arrayidx792 = getelementptr inbounds double* %call748, i64 %add.ptr781.sum4487, !dbg !1477
  %275 = load double* %arrayidx792, align 8, !dbg !1477, !tbaa !500
  %sub793 = fsub double %275, %274, !dbg !1477
  store double %sub793, double* %arrayidx792, align 8, !dbg !1477, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call748}, i64 0, metadata !267), !dbg !1487
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1488
  %276 = load i32* %nrowU, align 4, !dbg !1488, !tbaa !424
  call void @DVdot31(i32 %276, double* %rowL0.24570, double* %add.ptr763, double* %add.ptr765, double* %add.ptr89, double* %arraydecay749) #6, !dbg !1488
  %277 = load double* %arraydecay749, align 16, !dbg !1489, !tbaa !500
  %sub800 = sub nsw i32 0, %265, !dbg !1489
  %idxprom801 = sext i32 %sub800 to i64, !dbg !1489
  %add.ptr798.sum = add i64 %idxprom801, %idx.ext779, !dbg !1489
  %arrayidx802 = getelementptr inbounds double* %call748, i64 %add.ptr798.sum, !dbg !1489
  %278 = load double* %arrayidx802, align 8, !dbg !1489, !tbaa !500
  %sub803 = fsub double %278, %277, !dbg !1489
  store double %sub803, double* %arrayidx802, align 8, !dbg !1489, !tbaa !500
  %279 = load double* %arrayidx786, align 8, !dbg !1490, !tbaa !500
  %sub805 = sub nsw i32 0, %267, !dbg !1490
  %idxprom806 = sext i32 %sub805 to i64, !dbg !1490
  %add.ptr798.sum4489 = add i64 %idxprom806, %idx.ext779, !dbg !1490
  %arrayidx807 = getelementptr inbounds double* %call748, i64 %add.ptr798.sum4489, !dbg !1490
  %280 = load double* %arrayidx807, align 8, !dbg !1490, !tbaa !500
  %sub808 = fsub double %280, %279, !dbg !1490
  store double %sub808, double* %arrayidx807, align 8, !dbg !1490, !tbaa !500
  %281 = load double* %arrayidx790, align 16, !dbg !1491, !tbaa !500
  %sub810 = sub nsw i32 0, %269, !dbg !1491
  %idxprom811 = sext i32 %sub810 to i64, !dbg !1491
  %add.ptr798.sum4490 = add i64 %idxprom811, %idx.ext779, !dbg !1491
  %arrayidx812 = getelementptr inbounds double* %call748, i64 %add.ptr798.sum4490, !dbg !1491
  %282 = load double* %arrayidx812, align 8, !dbg !1491, !tbaa !500
  %sub813 = fsub double %282, %281, !dbg !1491
  store double %sub813, double* %arrayidx812, align 8, !dbg !1491, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call748}, i64 0, metadata !267), !dbg !1492
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1493
  %283 = load i32* %nrowU, align 4, !dbg !1493, !tbaa !424
  %idx.ext817 = sext i32 %283 to i64, !dbg !1493
  %add.ptr765.sum = add i64 %idx.ext817, %add.ptr763.sum, !dbg !1493
  %add.ptr818 = getelementptr inbounds double* %rowL0.24570, i64 %add.ptr765.sum, !dbg !1493
  call void @llvm.dbg.value(metadata !{double* %add.ptr818}, i64 0, metadata !278), !dbg !1493
  %add.ptr820 = getelementptr inbounds double* %colU0.24571, i64 %add.ptr765.sum, !dbg !1494
  call void @llvm.dbg.value(metadata !{double* %add.ptr820}, i64 0, metadata !270), !dbg !1494
  %add822 = add nsw i32 %jcolU84.24569, 3, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32 %add822}, i64 0, metadata !290), !dbg !1472
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1472
  %284 = load i32* %ncolU, align 4, !dbg !1472, !tbaa !424
  %sub759 = add nsw i32 %284, -2, !dbg !1472
  %cmp760 = icmp slt i32 %add822, %sub759, !dbg !1472
  %indvars.iv.next4691 = add i64 %indvars.iv4690, 3, !dbg !1472
  br i1 %cmp760, label %for.body761, label %for.end823, !dbg !1472

for.end823:                                       ; preds = %for.body761, %if.then741
  %285 = phi i32 [ %260, %if.then741 ], [ %283, %for.body761 ]
  %sub759.lcssa = phi i32 [ %sub7594567, %if.then741 ], [ %sub759, %for.body761 ]
  %.lcssa4566 = phi i32 [ %261, %if.then741 ], [ %284, %for.body761 ]
  %colU0.2.lcssa = phi double* [ %add.ptr756, %if.then741 ], [ %add.ptr820, %for.body761 ]
  %rowL0.2.lcssa = phi double* [ %add.ptr754, %if.then741 ], [ %add.ptr818, %for.body761 ]
  %jcolU84.2.lcssa = phi i32 [ %add757, %if.then741 ], [ %add822, %for.body761 ]
  %cmp825 = icmp eq i32 %jcolU84.2.lcssa, %sub759.lcssa, !dbg !1495
  br i1 %cmp825, label %if.then826, label %if.else866, !dbg !1495

if.then826:                                       ; preds = %for.end823
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1496
  %idx.ext827 = sext i32 %285 to i64, !dbg !1496
  %add.ptr828 = getelementptr inbounds double* %rowL0.2.lcssa, i64 %idx.ext827, !dbg !1496
  call void @llvm.dbg.value(metadata !{double* %add.ptr828}, i64 0, metadata !279), !dbg !1496
  %add.ptr830 = getelementptr inbounds double* %colU0.2.lcssa, i64 %idx.ext827, !dbg !1498
  call void @llvm.dbg.value(metadata !{double* %add.ptr830}, i64 0, metadata !271), !dbg !1498
  %idxprom831 = sext i32 %sub759.lcssa to i64, !dbg !1499
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1499
  %286 = load i32** %colindU, align 8, !dbg !1499, !tbaa !419
  %arrayidx832 = getelementptr inbounds i32* %286, i64 %idxprom831, !dbg !1499
  %287 = load i32* %arrayidx832, align 4, !dbg !1499, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %287}, i64 0, metadata !292), !dbg !1499
  %add833 = add nsw i32 %sub759.lcssa, 1, !dbg !1500
  %idxprom834 = sext i32 %add833 to i64, !dbg !1500
  %arrayidx835 = getelementptr inbounds i32* %286, i64 %idxprom834, !dbg !1500
  %288 = load i32* %arrayidx835, align 4, !dbg !1500, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %288}, i64 0, metadata !293), !dbg !1500
  call void @DVdot12(i32 %285, double* %call85, double* %colU0.2.lcssa, double* %add.ptr830, double* %arraydecay749) #6, !dbg !1501
  %idx.ext837 = sext i32 %254 to i64, !dbg !1502
  %289 = load double* %arraydecay749, align 16, !dbg !1503, !tbaa !500
  %idxprom841 = sext i32 %287 to i64, !dbg !1503
  %add.ptr839.sum = sub i64 %idxprom841, %idx.ext837, !dbg !1503
  %arrayidx842 = getelementptr inbounds double* %call748, i64 %add.ptr839.sum, !dbg !1503
  %290 = load double* %arrayidx842, align 8, !dbg !1503, !tbaa !500
  %sub843 = fsub double %290, %289, !dbg !1503
  store double %sub843, double* %arrayidx842, align 8, !dbg !1503, !tbaa !500
  %arrayidx844 = getelementptr inbounds [9 x double]* %sums, i64 0, i64 1, !dbg !1504
  %291 = load double* %arrayidx844, align 8, !dbg !1504, !tbaa !500
  %idxprom845 = sext i32 %288 to i64, !dbg !1504
  %add.ptr839.sum4483 = sub i64 %idxprom845, %idx.ext837, !dbg !1504
  %arrayidx846 = getelementptr inbounds double* %call748, i64 %add.ptr839.sum4483, !dbg !1504
  %292 = load double* %arrayidx846, align 8, !dbg !1504, !tbaa !500
  %sub847 = fsub double %292, %291, !dbg !1504
  store double %sub847, double* %arrayidx846, align 8, !dbg !1504, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call748}, i64 0, metadata !267), !dbg !1505
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1506
  %293 = load i32* %nrowU, align 4, !dbg !1506, !tbaa !424
  call void @DVdot21(i32 %293, double* %rowL0.2.lcssa, double* %add.ptr828, double* %add.ptr89, double* %arraydecay749) #6, !dbg !1506
  %294 = load double* %arraydecay749, align 16, !dbg !1507, !tbaa !500
  %sub854 = sub nsw i32 0, %287, !dbg !1507
  %idxprom855 = sext i32 %sub854 to i64, !dbg !1507
  %add.ptr852.sum = add i64 %idxprom855, %idx.ext837, !dbg !1507
  %arrayidx856 = getelementptr inbounds double* %call748, i64 %add.ptr852.sum, !dbg !1507
  %295 = load double* %arrayidx856, align 8, !dbg !1507, !tbaa !500
  %sub857 = fsub double %295, %294, !dbg !1507
  store double %sub857, double* %arrayidx856, align 8, !dbg !1507, !tbaa !500
  %296 = load double* %arrayidx844, align 8, !dbg !1508, !tbaa !500
  %sub859 = sub nsw i32 0, %288, !dbg !1508
  %idxprom860 = sext i32 %sub859 to i64, !dbg !1508
  %add.ptr852.sum4485 = add i64 %idxprom860, %idx.ext837, !dbg !1508
  %arrayidx861 = getelementptr inbounds double* %call748, i64 %add.ptr852.sum4485, !dbg !1508
  %297 = load double* %arrayidx861, align 8, !dbg !1508, !tbaa !500
  %sub862 = fsub double %297, %296, !dbg !1508
  store double %sub862, double* %arrayidx861, align 8, !dbg !1508, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1509

if.else866:                                       ; preds = %for.end823
  %sub867 = add nsw i32 %.lcssa4566, -1, !dbg !1510
  %cmp868 = icmp eq i32 %jcolU84.2.lcssa, %sub867, !dbg !1510
  br i1 %cmp868, label %if.then869, label %for.cond2785.preheader, !dbg !1510

if.then869:                                       ; preds = %if.else866
  %idxprom870 = sext i32 %jcolU84.2.lcssa to i64, !dbg !1511
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1511
  %298 = load i32** %colindU, align 8, !dbg !1511, !tbaa !419
  %arrayidx871 = getelementptr inbounds i32* %298, i64 %idxprom870, !dbg !1511
  %299 = load i32* %arrayidx871, align 4, !dbg !1511, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %299}, i64 0, metadata !292), !dbg !1511
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1513
  call void @DVdot11(i32 %285, double* %call85, double* %colU0.2.lcssa, double* %arraydecay749) #6, !dbg !1513
  %idx.ext873 = sext i32 %254 to i64, !dbg !1514
  %300 = load double* %arraydecay749, align 16, !dbg !1515, !tbaa !500
  %idxprom877 = sext i32 %299 to i64, !dbg !1515
  %add.ptr875.sum = sub i64 %idxprom877, %idx.ext873, !dbg !1515
  %arrayidx878 = getelementptr inbounds double* %call748, i64 %add.ptr875.sum, !dbg !1515
  %301 = load double* %arrayidx878, align 8, !dbg !1515, !tbaa !500
  %sub879 = fsub double %301, %300, !dbg !1515
  store double %sub879, double* %arrayidx878, align 8, !dbg !1515, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call748}, i64 0, metadata !267), !dbg !1516
  call void @llvm.dbg.value(metadata !{i32* %nrowU}, i64 0, metadata !297), !dbg !1517
  %302 = load i32* %nrowU, align 4, !dbg !1517, !tbaa !424
  call void @DVdot11(i32 %302, double* %rowL0.2.lcssa, double* %add.ptr89, double* %arraydecay749) #6, !dbg !1517
  %303 = load double* %arraydecay749, align 16, !dbg !1518, !tbaa !500
  %sub886 = sub nsw i32 0, %299, !dbg !1518
  %idxprom887 = sext i32 %sub886 to i64, !dbg !1518
  %add.ptr884.sum = add i64 %idxprom887, %idx.ext873, !dbg !1518
  %arrayidx888 = getelementptr inbounds double* %call748, i64 %add.ptr884.sum, !dbg !1518
  %304 = load double* %arrayidx888, align 8, !dbg !1518, !tbaa !500
  %sub889 = fsub double %304, %303, !dbg !1518
  store double %sub889, double* %arrayidx888, align 8, !dbg !1518, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1519

land.lhs.true900:                                 ; preds = %if.then78
  %mode901 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1, !dbg !1520
  %305 = load i32* %mode901, align 4, !dbg !1520, !tbaa !424
  %cmp902 = icmp eq i32 %305, 2, !dbg !1520
  br i1 %cmp902, label %if.then903, label %if.else1071, !dbg !1520

if.then903:                                       ; preds = %land.lhs.true900
  call void @llvm.dbg.declare(metadata !{double** %entL906}, metadata !303), !dbg !1521
  call void @llvm.dbg.declare(metadata !{double** %entU907}, metadata !304), !dbg !1521
  call void @llvm.dbg.declare(metadata !{i32* %ncolU912}, metadata !317), !dbg !1522
  call void @llvm.dbg.declare(metadata !{i32* %nentL}, metadata !318), !dbg !1522
  call void @llvm.dbg.declare(metadata !{i32* %nentU}, metadata !319), !dbg !1523
  call void @llvm.dbg.declare(metadata !{i32* %nrowL913}, metadata !320), !dbg !1523
  call void @llvm.dbg.declare(metadata !{i32** %indL}, metadata !328), !dbg !1524
  call void @llvm.dbg.declare(metadata !{i32** %indU}, metadata !331), !dbg !1524
  call void @llvm.dbg.declare(metadata !{i32** %sizesL}, metadata !334), !dbg !1525
  call void @llvm.dbg.declare(metadata !{i32** %sizesU}, metadata !335), !dbg !1525
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU912, i32* %nentU, i32** %sizesU, i32** %indU, double** %entU907) #6, !dbg !1526
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxL, i32* %nrowL913, i32* %nentL, i32** %sizesL, i32** %indL, double** %entL906) #6, !dbg !1527
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4, !dbg !1528
  %306 = load i32* %nrow, align 4, !dbg !1528, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %306}, i64 0, metadata !321), !dbg !1528
  %mul915 = mul nsw i32 %306, 3, !dbg !1529
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul915) #6, !dbg !1529
  %call916 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !1530
  call void @llvm.dbg.value(metadata !{double* %call916}, i64 0, metadata !307), !dbg !1530
  %idx.ext917 = sext i32 %306 to i64, !dbg !1531
  %add.ptr918 = getelementptr inbounds double* %call916, i64 %idx.ext917, !dbg !1531
  call void @llvm.dbg.value(metadata !{double* %add.ptr918}, i64 0, metadata !308), !dbg !1531
  %add.ptr918.sum = shl nsw i64 %idx.ext917, 1, !dbg !1532
  %add.ptr920 = getelementptr inbounds double* %call916, i64 %add.ptr918.sum, !dbg !1532
  call void @llvm.dbg.value(metadata !{double* %add.ptr920}, i64 0, metadata !309), !dbg !1532
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !323), !dbg !1533
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1533
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !257), !dbg !1533
  %cmp9224606 = icmp sgt i32 %jcolU.0.lcssa, 0, !dbg !1533
  br i1 %cmp9224606, label %for.body923.lr.ph, label %for.cond933.preheader, !dbg !1533

for.body923.lr.ph:                                ; preds = %if.then903
  call void @llvm.dbg.value(metadata !{i32** %sizesL}, i64 0, metadata !334), !dbg !1535
  %307 = load i32** %sizesL, align 8, !dbg !1535, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %sizesU}, i64 0, metadata !335), !dbg !1537
  %308 = load i32** %sizesU, align 8, !dbg !1537, !tbaa !419
  br label %for.body923, !dbg !1533

for.cond933.preheader:                            ; preds = %for.body923, %if.then903
  %offsetU.0.lcssa = phi i32 [ 0, %if.then903 ], [ %add929, %for.body923 ]
  %offsetL.0.lcssa = phi i32 [ 0, %if.then903 ], [ %add926, %for.body923 ]
  %cmp9344601 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa4789, !dbg !1538
  br i1 %cmp9344601, label %for.cond2785.preheader, label %for.body935.lr.ph, !dbg !1538

for.body935.lr.ph:                                ; preds = %for.cond933.preheader
  %mul957 = shl nsw i32 %306, 1, !dbg !1540
  %309 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body935, !dbg !1538

for.body923:                                      ; preds = %for.body923, %for.body923.lr.ph
  %indvars.iv4724 = phi i64 [ 0, %for.body923.lr.ph ], [ %indvars.iv.next4725, %for.body923 ]
  %offsetU.04608 = phi i32 [ 0, %for.body923.lr.ph ], [ %add929, %for.body923 ]
  %offsetL.04607 = phi i32 [ 0, %for.body923.lr.ph ], [ %add926, %for.body923 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesL}, i64 0, metadata !334), !dbg !1535
  %arrayidx925 = getelementptr inbounds i32* %307, i64 %indvars.iv4724, !dbg !1535
  %310 = load i32* %arrayidx925, align 4, !dbg !1535, !tbaa !424
  %add926 = add nsw i32 %310, %offsetL.04607, !dbg !1535
  call void @llvm.dbg.value(metadata !{i32 %add926}, i64 0, metadata !322), !dbg !1535
  call void @llvm.dbg.value(metadata !{i32** %sizesU}, i64 0, metadata !335), !dbg !1537
  %arrayidx928 = getelementptr inbounds i32* %308, i64 %indvars.iv4724, !dbg !1537
  %311 = load i32* %arrayidx928, align 4, !dbg !1537, !tbaa !424
  %add929 = add nsw i32 %311, %offsetU.04608, !dbg !1537
  call void @llvm.dbg.value(metadata !{i32 %add929}, i64 0, metadata !323), !dbg !1537
  %indvars.iv.next4725 = add i64 %indvars.iv4724, 1, !dbg !1533
  %lftr.wideiv4726 = trunc i64 %indvars.iv.next4725 to i32, !dbg !1533
  %exitcond4727 = icmp eq i32 %lftr.wideiv4726, %jcolU.0.lcssa, !dbg !1533
  br i1 %exitcond4727, label %for.cond933.preheader, label %for.body923, !dbg !1533

for.body935:                                      ; preds = %if.end1065.for.body935_crit_edge, %for.body935.lr.ph
  %indvars.iv4722 = phi i64 [ %indvars.iv.next4723, %if.end1065.for.body935_crit_edge ], [ %309, %for.body935.lr.ph ]
  %irow0.04604 = phi i32 [ %inc1069, %if.end1065.for.body935_crit_edge ], [ %jcolU.0.lcssa, %for.body935.lr.ph ]
  %offsetU.14603 = phi i32 [ %add1067, %if.end1065.for.body935_crit_edge ], [ %offsetU.0.lcssa, %for.body935.lr.ph ]
  %offsetL.14602 = phi i32 [ %add1066, %if.end1065.for.body935_crit_edge ], [ %offsetL.0.lcssa, %for.body935.lr.ph ]
  call void @llvm.dbg.value(metadata !{double** %entL906}, i64 0, metadata !303), !dbg !1544
  %312 = load double** %entL906, align 8, !dbg !1544, !tbaa !419
  %idx.ext936 = sext i32 %offsetL.14602 to i64, !dbg !1544
  call void @llvm.dbg.value(metadata !{i32** %indL}, i64 0, metadata !328), !dbg !1545
  %313 = load i32** %indL, align 8, !dbg !1545, !tbaa !419
  call void @llvm.dbg.value(metadata !{double** %entU907}, i64 0, metadata !304), !dbg !1546
  %314 = load double** %entU907, align 8, !dbg !1546, !tbaa !419
  %idx.ext940 = sext i32 %offsetU.14603 to i64, !dbg !1546
  %add.ptr941 = getelementptr inbounds double* %314, i64 %idx.ext940, !dbg !1546
  call void @llvm.dbg.value(metadata !{double* %add.ptr941}, i64 0, metadata !301), !dbg !1546
  call void @llvm.dbg.value(metadata !{i32** %indU}, i64 0, metadata !331), !dbg !1547
  %315 = load i32** %indU, align 8, !dbg !1547, !tbaa !419
  %add.ptr943 = getelementptr inbounds i32* %315, i64 %idx.ext940, !dbg !1547
  call void @llvm.dbg.value(metadata !{i32* %add.ptr943}, i64 0, metadata !332), !dbg !1547
  call void @llvm.dbg.value(metadata !{i32** %sizesL}, i64 0, metadata !334), !dbg !1548
  %316 = load i32** %sizesL, align 8, !dbg !1548, !tbaa !419
  %arrayidx945 = getelementptr inbounds i32* %316, i64 %indvars.iv4722, !dbg !1548
  %317 = load i32* %arrayidx945, align 4, !dbg !1548, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %317}, i64 0, metadata !324), !dbg !1548
  call void @llvm.dbg.value(metadata !{i32** %sizesU}, i64 0, metadata !335), !dbg !1549
  %318 = load i32** %sizesU, align 8, !dbg !1549, !tbaa !419
  %arrayidx947 = getelementptr inbounds i32* %318, i64 %indvars.iv4722, !dbg !1549
  %319 = load i32* %arrayidx947, align 4, !dbg !1549, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %319}, i64 0, metadata !326), !dbg !1549
  %cmp948 = icmp sgt i32 %317, 0, !dbg !1550
  %cmp950 = icmp sgt i32 %319, 0, !dbg !1550
  %or.cond4545 = or i1 %cmp948, %cmp950, !dbg !1550
  br i1 %or.cond4545, label %if.then951, label %if.end1065, !dbg !1550

if.then951:                                       ; preds = %for.body935
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1551
  %320 = load i32** %colindU, align 8, !dbg !1551, !tbaa !419
  %arrayidx953 = getelementptr inbounds i32* %320, i64 %indvars.iv4722, !dbg !1551
  %321 = load i32* %arrayidx953, align 4, !dbg !1551, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %321}, i64 0, metadata !310), !dbg !1551
  %call954 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %321) #6, !dbg !1552
  call void @llvm.dbg.value(metadata !{double* %call954}, i64 0, metadata !299), !dbg !1552
  br i1 %cmp948, label %for.body960.lr.ph, label %if.end970, !dbg !1553

for.body960.lr.ph:                                ; preds = %if.then951
  call void @DVzero(i32 %mul957, double* %call916) #6, !dbg !1540
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !1554
  br label %for.body960, !dbg !1554

for.body960:                                      ; preds = %for.body960, %for.body960.lr.ph
  %indvars.iv4708 = phi i64 [ 0, %for.body960.lr.ph ], [ %indvars.iv.next4709, %for.body960 ]
  %add.ptr939.sum4479 = add i64 %indvars.iv4708, %idx.ext936, !dbg !1556
  %arrayidx962 = getelementptr inbounds i32* %313, i64 %add.ptr939.sum4479, !dbg !1556
  %322 = load i32* %arrayidx962, align 4, !dbg !1556, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %322}, i64 0, metadata !314), !dbg !1556
  %arrayidx964 = getelementptr inbounds double* %312, i64 %add.ptr939.sum4479, !dbg !1558
  %323 = load double* %arrayidx964, align 8, !dbg !1558, !tbaa !500
  %idxprom965 = sext i32 %322 to i64, !dbg !1558
  %add.ptr918.sum4481 = add i64 %idxprom965, %idx.ext917, !dbg !1558
  %arrayidx966 = getelementptr inbounds double* %call916, i64 %add.ptr918.sum4481, !dbg !1558
  store double %323, double* %arrayidx966, align 8, !dbg !1558, !tbaa !500
  %indvars.iv.next4709 = add i64 %indvars.iv4708, 1, !dbg !1554
  %lftr.wideiv = trunc i64 %indvars.iv.next4709 to i32, !dbg !1554
  %exitcond = icmp eq i32 %lftr.wideiv, %317, !dbg !1554
  br i1 %exitcond, label %for.end969, label %for.body960, !dbg !1554

for.end969:                                       ; preds = %for.body960
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call916, double* %add.ptr918) #6, !dbg !1559
  br label %if.end970, !dbg !1560

if.end970:                                        ; preds = %for.end969, %if.then951
  br i1 %cmp950, label %for.body976.lr.ph, label %if.end1029, !dbg !1561

for.body976.lr.ph:                                ; preds = %if.end970
  call void @DVzero(i32 %mul957, double* %add.ptr918) #6, !dbg !1562
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !1564
  br label %for.body976, !dbg !1564

for.body976:                                      ; preds = %for.body976, %for.body976.lr.ph
  %indvars.iv4710 = phi i64 [ 0, %for.body976.lr.ph ], [ %indvars.iv.next4711, %for.body976 ]
  %add.ptr943.sum4477 = add i64 %indvars.iv4710, %idx.ext940, !dbg !1566
  %arrayidx978 = getelementptr inbounds i32* %315, i64 %add.ptr943.sum4477, !dbg !1566
  %324 = load i32* %arrayidx978, align 4, !dbg !1566, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %324}, i64 0, metadata !314), !dbg !1566
  %arrayidx980 = getelementptr inbounds double* %314, i64 %add.ptr943.sum4477, !dbg !1568
  %325 = load double* %arrayidx980, align 8, !dbg !1568, !tbaa !500
  %idxprom981 = sext i32 %324 to i64, !dbg !1568
  %add.ptr920.sum = add i64 %idxprom981, %add.ptr918.sum, !dbg !1568
  %arrayidx982 = getelementptr inbounds double* %call916, i64 %add.ptr920.sum, !dbg !1568
  store double %325, double* %arrayidx982, align 8, !dbg !1568, !tbaa !500
  %indvars.iv.next4711 = add i64 %indvars.iv4710, 1, !dbg !1564
  %lftr.wideiv4712 = trunc i64 %indvars.iv.next4711 to i32, !dbg !1564
  %exitcond4713 = icmp eq i32 %lftr.wideiv4712, %319, !dbg !1564
  br i1 %exitcond4713, label %if.end986, label %for.body976, !dbg !1564

if.end986:                                        ; preds = %for.body976
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr918, double* %add.ptr920) #6, !dbg !1569
  br i1 %cmp948, label %if.then990, label %if.then996, !dbg !1570

if.then990:                                       ; preds = %if.end986
  %call991 = call double @DVdoti(i32 %319, double* %call916, i32* %add.ptr943, double* %add.ptr941) #6, !dbg !1571
  %326 = load double* %call954, align 8, !dbg !1571, !tbaa !500
  %sub993 = fsub double %326, %call991, !dbg !1571
  store double %sub993, double* %call954, align 8, !dbg !1571, !tbaa !500
  br label %if.then996, !dbg !1573

if.then996:                                       ; preds = %if.then990, %if.end986
  %idx.ext997 = sext i32 %321 to i64, !dbg !1574
  %idx.ext999 = sext i32 %317 to i64, !dbg !1576
  %add.ptr937.sum = add i64 %idx.ext999, %idx.ext936, !dbg !1576
  %add.ptr1000 = getelementptr inbounds double* %312, i64 %add.ptr937.sum, !dbg !1576
  call void @llvm.dbg.value(metadata !{double* %add.ptr1000}, i64 0, metadata !306), !dbg !1576
  %add.ptr1002 = getelementptr inbounds i32* %313, i64 %add.ptr937.sum, !dbg !1577
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1002}, i64 0, metadata !330), !dbg !1577
  br label %for.cond1004.outer, !dbg !1578

for.cond1004.outer:                               ; preds = %if.then1010, %if.then996
  %irow1.0.in.ph = phi i32 [ %irow0.04604, %if.then996 ], [ %irow1.0, %if.then1010 ]
  %rowL1909.0.ph = phi double* [ %add.ptr1000, %if.then996 ], [ %add.ptr1019, %if.then1010 ]
  %indL1.0.ph = phi i32* [ %add.ptr1002, %if.then996 ], [ %add.ptr1021, %if.then1010 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU912}, i64 0, metadata !317), !dbg !1578
  %327 = load i32* %ncolU912, align 4, !dbg !1578, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32** %sizesL}, i64 0, metadata !334), !dbg !1580
  %328 = load i32** %sizesL, align 8, !dbg !1580, !tbaa !419
  %329 = sext i32 %irow1.0.in.ph to i64
  br label %for.cond1004

for.cond1004:                                     ; preds = %for.cond1004.outer, %for.body1006
  %indvars.iv4716 = phi i64 [ %329, %for.cond1004.outer ], [ %indvars.iv.next4717, %for.body1006 ]
  %irow1.0.in = phi i32 [ %irow1.0.in.ph, %for.cond1004.outer ], [ %irow1.0, %for.body1006 ]
  %indvars.iv.next4717 = add i64 %indvars.iv4716, 1, !dbg !1580
  %irow1.0 = add nsw i32 %irow1.0.in, 1, !dbg !1578
  call void @llvm.dbg.value(metadata !{i32* %ncolU912}, i64 0, metadata !317), !dbg !1578
  %330 = trunc i64 %indvars.iv.next4717 to i32, !dbg !1578
  %cmp1005 = icmp slt i32 %330, %327, !dbg !1578
  br i1 %cmp1005, label %for.body1006, label %if.end1029, !dbg !1578

for.body1006:                                     ; preds = %for.cond1004
  call void @llvm.dbg.value(metadata !{i32** %sizesL}, i64 0, metadata !334), !dbg !1580
  %arrayidx1008 = getelementptr inbounds i32* %328, i64 %indvars.iv.next4717, !dbg !1580
  %331 = load i32* %arrayidx1008, align 4, !dbg !1580, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %331}, i64 0, metadata !325), !dbg !1580
  %cmp1009 = icmp sgt i32 %331, 0, !dbg !1580
  br i1 %cmp1009, label %if.then1010, label %for.cond1004, !dbg !1580

if.then1010:                                      ; preds = %for.body1006
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1582
  %332 = load i32** %colindU, align 8, !dbg !1582, !tbaa !419
  %arrayidx1012 = getelementptr inbounds i32* %332, i64 %indvars.iv.next4717, !dbg !1582
  %333 = load i32* %arrayidx1012, align 4, !dbg !1582, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %333}, i64 0, metadata !315), !dbg !1582
  %call1013 = call double @DVdoti(i32 %331, double* %add.ptr918, i32* %indL1.0.ph, double* %rowL1909.0.ph) #6, !dbg !1584
  %sub1014 = sub nsw i32 0, %333, !dbg !1584
  %idxprom1015 = sext i32 %sub1014 to i64, !dbg !1584
  %add.ptr998.sum = add i64 %idxprom1015, %idx.ext997, !dbg !1584
  %arrayidx1016 = getelementptr inbounds double* %call954, i64 %add.ptr998.sum, !dbg !1584
  %334 = load double* %arrayidx1016, align 8, !dbg !1584, !tbaa !500
  %sub1017 = fsub double %334, %call1013, !dbg !1584
  store double %sub1017, double* %arrayidx1016, align 8, !dbg !1584, !tbaa !500
  %idx.ext1018 = sext i32 %331 to i64, !dbg !1585
  %add.ptr1019 = getelementptr inbounds double* %rowL1909.0.ph, i64 %idx.ext1018, !dbg !1585
  call void @llvm.dbg.value(metadata !{double* %add.ptr1019}, i64 0, metadata !306), !dbg !1585
  %add.ptr1021 = getelementptr inbounds i32* %indL1.0.ph, i64 %idx.ext1018, !dbg !1586
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1021}, i64 0, metadata !330), !dbg !1586
  br label %for.cond1004.outer, !dbg !1587

if.end1029:                                       ; preds = %for.cond1004, %if.end970
  br i1 %cmp948, label %if.then1031, label %if.end1065, !dbg !1588

if.then1031:                                      ; preds = %if.end1029
  %idx.ext1032 = sext i32 %321 to i64, !dbg !1589
  %idx.ext1035 = sext i32 %319 to i64, !dbg !1591
  %add.ptr941.sum = add i64 %idx.ext1035, %idx.ext940, !dbg !1591
  %add.ptr1036 = getelementptr inbounds double* %314, i64 %add.ptr941.sum, !dbg !1591
  call void @llvm.dbg.value(metadata !{double* %add.ptr1036}, i64 0, metadata !302), !dbg !1591
  %add.ptr1038 = getelementptr inbounds i32* %315, i64 %add.ptr941.sum, !dbg !1592
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1038}, i64 0, metadata !333), !dbg !1592
  br label %for.cond1040.outer, !dbg !1593

for.cond1040.outer:                               ; preds = %if.then1046, %if.then1031
  %irow1.1.in.ph = phi i32 [ %irow0.04604, %if.then1031 ], [ %irow1.1, %if.then1046 ]
  %colU1905.0.ph = phi double* [ %add.ptr1036, %if.then1031 ], [ %add.ptr1054, %if.then1046 ]
  %indU1.0.ph = phi i32* [ %add.ptr1038, %if.then1031 ], [ %add.ptr1056, %if.then1046 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU912}, i64 0, metadata !317), !dbg !1593
  %335 = load i32* %ncolU912, align 4, !dbg !1593, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32** %sizesU}, i64 0, metadata !335), !dbg !1595
  %336 = load i32** %sizesU, align 8, !dbg !1595, !tbaa !419
  %337 = sext i32 %irow1.1.in.ph to i64
  br label %for.cond1040

for.cond1040:                                     ; preds = %for.cond1040.outer, %for.body1042
  %indvars.iv4720 = phi i64 [ %337, %for.cond1040.outer ], [ %indvars.iv.next4721, %for.body1042 ]
  %irow1.1.in = phi i32 [ %irow1.1.in.ph, %for.cond1040.outer ], [ %irow1.1, %for.body1042 ]
  %indvars.iv.next4721 = add i64 %indvars.iv4720, 1, !dbg !1595
  %irow1.1 = add nsw i32 %irow1.1.in, 1, !dbg !1593
  call void @llvm.dbg.value(metadata !{i32* %ncolU912}, i64 0, metadata !317), !dbg !1593
  %338 = trunc i64 %indvars.iv.next4721 to i32, !dbg !1593
  %cmp1041 = icmp slt i32 %338, %335, !dbg !1593
  br i1 %cmp1041, label %for.body1042, label %if.end1065, !dbg !1593

for.body1042:                                     ; preds = %for.cond1040
  call void @llvm.dbg.value(metadata !{i32** %sizesU}, i64 0, metadata !335), !dbg !1595
  %arrayidx1044 = getelementptr inbounds i32* %336, i64 %indvars.iv.next4721, !dbg !1595
  %339 = load i32* %arrayidx1044, align 4, !dbg !1595, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %339}, i64 0, metadata !327), !dbg !1595
  %cmp1045 = icmp sgt i32 %339, 0, !dbg !1595
  br i1 %cmp1045, label %if.then1046, label %for.cond1040, !dbg !1595

if.then1046:                                      ; preds = %for.body1042
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1597
  %340 = load i32** %colindU, align 8, !dbg !1597, !tbaa !419
  %arrayidx1048 = getelementptr inbounds i32* %340, i64 %indvars.iv.next4721, !dbg !1597
  %341 = load i32* %arrayidx1048, align 4, !dbg !1597, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %341}, i64 0, metadata !315), !dbg !1597
  %call1049 = call double @DVdoti(i32 %339, double* %call916, i32* %indU1.0.ph, double* %colU1905.0.ph) #6, !dbg !1599
  %idxprom1050 = sext i32 %341 to i64, !dbg !1599
  %add.ptr1034.sum = sub i64 %idxprom1050, %idx.ext1032, !dbg !1599
  %arrayidx1051 = getelementptr inbounds double* %call954, i64 %add.ptr1034.sum, !dbg !1599
  %342 = load double* %arrayidx1051, align 8, !dbg !1599, !tbaa !500
  %sub1052 = fsub double %342, %call1049, !dbg !1599
  store double %sub1052, double* %arrayidx1051, align 8, !dbg !1599, !tbaa !500
  %idx.ext1053 = sext i32 %339 to i64, !dbg !1600
  %add.ptr1054 = getelementptr inbounds double* %colU1905.0.ph, i64 %idx.ext1053, !dbg !1600
  call void @llvm.dbg.value(metadata !{double* %add.ptr1054}, i64 0, metadata !302), !dbg !1600
  %add.ptr1056 = getelementptr inbounds i32* %indU1.0.ph, i64 %idx.ext1053, !dbg !1601
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1056}, i64 0, metadata !333), !dbg !1601
  br label %for.cond1040.outer, !dbg !1602

if.end1065:                                       ; preds = %for.cond1040, %for.body935, %if.end1029
  call void @llvm.dbg.value(metadata !{i32 %add1066}, i64 0, metadata !322), !dbg !1603
  call void @llvm.dbg.value(metadata !{i32 %add1067}, i64 0, metadata !323), !dbg !1604
  call void @llvm.dbg.value(metadata !{i32 %inc1069}, i64 0, metadata !312), !dbg !1538
  %343 = trunc i64 %indvars.iv4722 to i32, !dbg !1538
  %cmp934 = icmp slt i32 %343, %lastInU.0.lcssa4789, !dbg !1538
  br i1 %cmp934, label %if.end1065.for.body935_crit_edge, label %for.cond2785.preheader, !dbg !1538

if.end1065.for.body935_crit_edge:                 ; preds = %if.end1065
  %inc1069 = add nsw i32 %irow0.04604, 1, !dbg !1538
  %indvars.iv.next4723 = add i64 %indvars.iv4722, 1, !dbg !1538
  %add1067 = add nsw i32 %319, %offsetU.14603, !dbg !1604
  %add1066 = add nsw i32 %317, %offsetL.14602, !dbg !1603
  br label %for.body935, !dbg !1538

if.else1071:                                      ; preds = %if.then78, %land.lhs.true80, %land.lhs.true900
  %344 = load %struct._IO_FILE** @stderr, align 8, !dbg !1605, !tbaa !419
  %call1072 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([135 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1605
  call void @exit(i32 -1) #7, !dbg !1607
  unreachable, !dbg !1607

if.then1078:                                      ; preds = %for.end75
  %mode1079 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 1, !dbg !1608
  %345 = load i32* %mode1079, align 4, !dbg !1608, !tbaa !424
  switch i32 %345, label %if.else2779 [
    i32 1, label %land.lhs.true1081
    i32 3, label %land.lhs.true2540
  ], !dbg !1608

land.lhs.true1081:                                ; preds = %if.then1078
  %mode1082 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1, !dbg !1608
  %346 = load i32* %mode1082, align 4, !dbg !1608, !tbaa !424
  %cmp1083 = icmp eq i32 %346, 0, !dbg !1608
  br i1 %cmp1083, label %if.then1084, label %if.else2779, !dbg !1608

if.then1084:                                      ; preds = %land.lhs.true1081
  %347 = bitcast [18 x double]* %sums1085 to i8*, !dbg !1609
  call void @llvm.lifetime.start(i64 144, i8* %347) #5, !dbg !1609
  call void @llvm.dbg.declare(metadata !{[18 x double]* %sums1085}, metadata !336), !dbg !1609
  call void @llvm.dbg.declare(metadata !{double** %entL1092}, metadata !345), !dbg !1610
  call void @llvm.dbg.declare(metadata !{double** %entU1093}, metadata !346), !dbg !1611
  call void @llvm.dbg.declare(metadata !{i32* %inc11106}, metadata !359), !dbg !1612
  call void @llvm.dbg.declare(metadata !{i32* %inc21107}, metadata !360), !dbg !1612
  call void @llvm.dbg.declare(metadata !{i32* %ncolL1114}, metadata !367), !dbg !1613
  call void @llvm.dbg.declare(metadata !{i32* %nrowL1115}, metadata !368), !dbg !1613
  call void @llvm.dbg.declare(metadata !{i32* %nrowU1116}, metadata !369), !dbg !1613
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxL, i32* %nrowL1115, i32* %ncolL1114, i32* %inc11106, i32* %inc21107, double** %entL1092) #6, !dbg !1614
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxU, i32* %nrowU1116, i32* %ncolU, i32* %inc11106, i32* %inc21107, double** %entU1093) #6, !dbg !1615
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1616
  %348 = load i32* %nrowU1116, align 4, !dbg !1616, !tbaa !424
  %mul1118 = mul nsw i32 %348, 12, !dbg !1616
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul1118) #6, !dbg !1616
  %call1119 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !1617
  call void @llvm.dbg.value(metadata !{double* %call1119}, i64 0, metadata !347), !dbg !1617
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1618
  %349 = load i32* %nrowU1116, align 4, !dbg !1618, !tbaa !424
  %mul1120 = shl nsw i32 %349, 1, !dbg !1618
  %idx.ext1121 = sext i32 %mul1120 to i64, !dbg !1618
  %add.ptr1122 = getelementptr inbounds double* %call1119, i64 %idx.ext1121, !dbg !1618
  call void @llvm.dbg.value(metadata !{double* %add.ptr1122}, i64 0, metadata !348), !dbg !1618
  %add.ptr1122.sum = shl nsw i64 %idx.ext1121, 1, !dbg !1619
  %add.ptr1125 = getelementptr inbounds double* %call1119, i64 %add.ptr1122.sum, !dbg !1619
  call void @llvm.dbg.value(metadata !{double* %add.ptr1125}, i64 0, metadata !349), !dbg !1619
  %add.ptr1125.sum = add i64 %add.ptr1122.sum, %idx.ext1121, !dbg !1620
  %add.ptr1128 = getelementptr inbounds double* %call1119, i64 %add.ptr1125.sum, !dbg !1620
  call void @llvm.dbg.value(metadata !{double* %add.ptr1128}, i64 0, metadata !353), !dbg !1620
  %add.ptr1128.sum = add i64 %add.ptr1125.sum, %idx.ext1121, !dbg !1621
  %add.ptr1131 = getelementptr inbounds double* %call1119, i64 %add.ptr1128.sum, !dbg !1621
  call void @llvm.dbg.value(metadata !{double* %add.ptr1131}, i64 0, metadata !354), !dbg !1621
  %add.ptr1131.sum = add i64 %add.ptr1128.sum, %idx.ext1121, !dbg !1622
  %add.ptr1134 = getelementptr inbounds double* %call1119, i64 %add.ptr1131.sum, !dbg !1622
  call void @llvm.dbg.value(metadata !{double* %add.ptr1134}, i64 0, metadata !355), !dbg !1622
  %mul1135 = mul nsw i32 %349, %jcolU.0.lcssa, !dbg !1623
  call void @llvm.dbg.value(metadata !{i32 %mul1135}, i64 0, metadata !370), !dbg !1623
  call void @llvm.dbg.value(metadata !{i32 %jcolU.0.lcssa}, i64 0, metadata !361), !dbg !1624
  %sub1137 = add nsw i32 %lastInU.0.lcssa4789, -2, !dbg !1624
  %cmp11384645 = icmp sgt i32 %jcolU.0.lcssa, %sub1137, !dbg !1624
  br i1 %cmp11384645, label %for.end1820, label %for.body1139.lr.ph, !dbg !1624

for.body1139.lr.ph:                               ; preds = %if.then1084
  %arraydecay1171 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 0, !dbg !1626
  %arrayidx1175 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 1, !dbg !1628
  %arrayidx1180 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2, !dbg !1629
  %arrayidx1184 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3, !dbg !1629
  %arrayidx1189 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 6, !dbg !1630
  %arrayidx1194 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 7, !dbg !1630
  %arrayidx1202 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 4, !dbg !1631
  %arrayidx1206 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 5, !dbg !1631
  %arrayidx1211 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 12, !dbg !1632
  %arrayidx1216 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 13, !dbg !1632
  %arrayidx1222 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 8, !dbg !1633
  %arrayidx1225 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 9, !dbg !1633
  %arrayidx1230 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 10, !dbg !1634
  %arrayidx1234 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 11, !dbg !1634
  %arrayidx1239 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 14, !dbg !1635
  %arrayidx1244 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 15, !dbg !1635
  %arrayidx1250 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 16, !dbg !1636
  %arrayidx1253 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 17, !dbg !1636
  %350 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body1139, !dbg !1624

for.body1139:                                     ; preds = %for.body1139.lr.ph, %if.end1815
  %351 = phi i32 [ %349, %for.body1139.lr.ph ], [ %566, %if.end1815 ]
  %indvars.iv4751 = phi i64 [ %350, %for.body1139.lr.ph ], [ %indvars.iv.next4752, %if.end1815 ]
  %indvars.iv4744.in = phi i64 [ %350, %for.body1139.lr.ph ], [ %indvars.iv4744, %if.end1815 ]
  %offset1117.04647 = phi i32 [ %mul1135, %for.body1139.lr.ph ], [ %add1817, %if.end1815 ]
  %irowL1108.04646 = phi i32 [ %jcolU.0.lcssa, %for.body1139.lr.ph ], [ %add1262, %if.end1815 ]
  %indvars.iv4744 = add i64 %indvars.iv4744.in, 3, !dbg !1624
  call void @llvm.dbg.value(metadata !{double** %entL1092}, i64 0, metadata !345), !dbg !1637
  %352 = load double** %entL1092, align 8, !dbg !1637, !tbaa !419
  %mul1140 = shl nsw i32 %offset1117.04647, 1, !dbg !1637
  %idx.ext1141 = sext i32 %mul1140 to i64, !dbg !1637
  %add.ptr1142 = getelementptr inbounds double* %352, i64 %idx.ext1141, !dbg !1637
  call void @llvm.dbg.value(metadata !{double* %add.ptr1142}, i64 0, metadata !350), !dbg !1637
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1638
  %mul1143 = shl nsw i32 %351, 1, !dbg !1638
  %idx.ext1144 = sext i32 %mul1143 to i64, !dbg !1638
  %add.ptr1142.sum = add i64 %idx.ext1144, %idx.ext1141, !dbg !1638
  %add.ptr1145 = getelementptr inbounds double* %352, i64 %add.ptr1142.sum, !dbg !1638
  call void @llvm.dbg.value(metadata !{double* %add.ptr1145}, i64 0, metadata !351), !dbg !1638
  %add.ptr1145.sum = add i64 %add.ptr1142.sum, %idx.ext1144, !dbg !1639
  %add.ptr1148 = getelementptr inbounds double* %352, i64 %add.ptr1145.sum, !dbg !1639
  call void @llvm.dbg.value(metadata !{double* %add.ptr1148}, i64 0, metadata !352), !dbg !1639
  call void @llvm.dbg.value(metadata !{double** %entU1093}, i64 0, metadata !346), !dbg !1640
  %353 = load double** %entU1093, align 8, !dbg !1640, !tbaa !419
  %add.ptr1151 = getelementptr inbounds double* %353, i64 %idx.ext1141, !dbg !1640
  call void @llvm.dbg.value(metadata !{double* %add.ptr1151}, i64 0, metadata !342), !dbg !1640
  %add.ptr1154 = getelementptr inbounds double* %353, i64 %add.ptr1142.sum, !dbg !1641
  call void @llvm.dbg.value(metadata !{double* %add.ptr1154}, i64 0, metadata !343), !dbg !1641
  %add.ptr1157 = getelementptr inbounds double* %353, i64 %add.ptr1145.sum, !dbg !1642
  call void @llvm.dbg.value(metadata !{double* %add.ptr1157}, i64 0, metadata !344), !dbg !1642
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1643
  %354 = load i32** %colindU, align 8, !dbg !1643, !tbaa !419
  %arrayidx1159 = getelementptr inbounds i32* %354, i64 %indvars.iv4751, !dbg !1643
  %355 = load i32* %arrayidx1159, align 4, !dbg !1643, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %355}, i64 0, metadata !356), !dbg !1643
  %call1160 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %355) #6, !dbg !1644
  call void @llvm.dbg.value(metadata !{double* %call1160}, i64 0, metadata !339), !dbg !1644
  %356 = add nsw i64 %indvars.iv4751, 1, !dbg !1645
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1645
  %357 = load i32** %colindU, align 8, !dbg !1645, !tbaa !419
  %arrayidx1163 = getelementptr inbounds i32* %357, i64 %356, !dbg !1645
  %358 = load i32* %arrayidx1163, align 4, !dbg !1645, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %358}, i64 0, metadata !357), !dbg !1645
  %call1164 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %358) #6, !dbg !1646
  call void @llvm.dbg.value(metadata !{double* %call1164}, i64 0, metadata !340), !dbg !1646
  %359 = add nsw i64 %indvars.iv4751, 2, !dbg !1647
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1647
  %360 = load i32** %colindU, align 8, !dbg !1647, !tbaa !419
  %arrayidx1167 = getelementptr inbounds i32* %360, i64 %359, !dbg !1647
  %361 = load i32* %arrayidx1167, align 4, !dbg !1647, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %361}, i64 0, metadata !358), !dbg !1647
  %call1168 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %361) #6, !dbg !1648
  call void @llvm.dbg.value(metadata !{double* %call1168}, i64 0, metadata !341), !dbg !1648
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1649
  %362 = load i32* %nrowU1116, align 4, !dbg !1649, !tbaa !424
  %mul1169 = mul nsw i32 %362, 6, !dbg !1649
  call void @DVzero(i32 %mul1169, double* %call1119) #6, !dbg !1649
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %add.ptr1142, double* %add.ptr1145, double* %add.ptr1148) #6, !dbg !1650
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1651
  %363 = load i32* %nrowU1116, align 4, !dbg !1651, !tbaa !424
  %mul1170 = mul nsw i32 %363, 6, !dbg !1651
  call void @DVzero(i32 %mul1170, double* %add.ptr1128) #6, !dbg !1651
  call void @SubMtx_scale3vec(%struct._SubMtx* %mtxD, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %add.ptr1151, double* %add.ptr1154, double* %add.ptr1157) #6, !dbg !1652
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1626
  %364 = load i32* %nrowU1116, align 4, !dbg !1626, !tbaa !424
  call void @ZVdotU33(i32 %364, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %add.ptr1151, double* %add.ptr1154, double* %add.ptr1157, double* %arraydecay1171) #6, !dbg !1626
  %365 = load double* %arraydecay1171, align 16, !dbg !1628, !tbaa !500
  %366 = load double* %call1160, align 8, !dbg !1628, !tbaa !500
  %sub1174 = fsub double %366, %365, !dbg !1628
  store double %sub1174, double* %call1160, align 8, !dbg !1628, !tbaa !500
  %367 = load double* %arrayidx1175, align 8, !dbg !1628, !tbaa !500
  %arrayidx1176 = getelementptr inbounds double* %call1160, i64 1, !dbg !1628
  %368 = load double* %arrayidx1176, align 8, !dbg !1628, !tbaa !500
  %sub1177 = fsub double %368, %367, !dbg !1628
  store double %sub1177, double* %arrayidx1176, align 8, !dbg !1628, !tbaa !500
  %sub1178 = sub nsw i32 %358, %355, !dbg !1653
  %mul1179 = shl nsw i32 %sub1178, 1, !dbg !1653
  call void @llvm.dbg.value(metadata !{i32 %mul1179}, i64 0, metadata !363), !dbg !1653
  %369 = load double* %arrayidx1180, align 16, !dbg !1629, !tbaa !500
  %idxprom1181 = sext i32 %mul1179 to i64, !dbg !1629
  %arrayidx1182 = getelementptr inbounds double* %call1160, i64 %idxprom1181, !dbg !1629
  %370 = load double* %arrayidx1182, align 8, !dbg !1629, !tbaa !500
  %sub1183 = fsub double %370, %369, !dbg !1629
  store double %sub1183, double* %arrayidx1182, align 8, !dbg !1629, !tbaa !500
  %371 = load double* %arrayidx1184, align 8, !dbg !1629, !tbaa !500
  %add11854393 = or i32 %mul1179, 1, !dbg !1629
  %idxprom1186 = sext i32 %add11854393 to i64, !dbg !1629
  %arrayidx1187 = getelementptr inbounds double* %call1160, i64 %idxprom1186, !dbg !1629
  %372 = load double* %arrayidx1187, align 8, !dbg !1629, !tbaa !500
  %sub1188 = fsub double %372, %371, !dbg !1629
  store double %sub1188, double* %arrayidx1187, align 8, !dbg !1629, !tbaa !500
  %373 = load double* %arrayidx1189, align 16, !dbg !1630, !tbaa !500
  %sub1190 = sub nsw i32 0, %mul1179, !dbg !1630
  %idxprom1191 = sext i32 %sub1190 to i64, !dbg !1630
  %arrayidx1192 = getelementptr inbounds double* %call1160, i64 %idxprom1191, !dbg !1630
  %374 = load double* %arrayidx1192, align 8, !dbg !1630, !tbaa !500
  %sub1193 = fsub double %374, %373, !dbg !1630
  store double %sub1193, double* %arrayidx1192, align 8, !dbg !1630, !tbaa !500
  %375 = load double* %arrayidx1194, align 8, !dbg !1630, !tbaa !500
  %add11964394 = or i32 %sub1190, 1, !dbg !1630
  %idxprom1197 = sext i32 %add11964394 to i64, !dbg !1630
  %arrayidx1198 = getelementptr inbounds double* %call1160, i64 %idxprom1197, !dbg !1630
  %376 = load double* %arrayidx1198, align 8, !dbg !1630, !tbaa !500
  %sub1199 = fsub double %376, %375, !dbg !1630
  store double %sub1199, double* %arrayidx1198, align 8, !dbg !1630, !tbaa !500
  %sub1200 = sub nsw i32 %361, %355, !dbg !1654
  %mul1201 = shl nsw i32 %sub1200, 1, !dbg !1654
  call void @llvm.dbg.value(metadata !{i32 %mul1201}, i64 0, metadata !363), !dbg !1654
  %377 = load double* %arrayidx1202, align 16, !dbg !1631, !tbaa !500
  %idxprom1203 = sext i32 %mul1201 to i64, !dbg !1631
  %arrayidx1204 = getelementptr inbounds double* %call1160, i64 %idxprom1203, !dbg !1631
  %378 = load double* %arrayidx1204, align 8, !dbg !1631, !tbaa !500
  %sub1205 = fsub double %378, %377, !dbg !1631
  store double %sub1205, double* %arrayidx1204, align 8, !dbg !1631, !tbaa !500
  %379 = load double* %arrayidx1206, align 8, !dbg !1631, !tbaa !500
  %add12074395 = or i32 %mul1201, 1, !dbg !1631
  %idxprom1208 = sext i32 %add12074395 to i64, !dbg !1631
  %arrayidx1209 = getelementptr inbounds double* %call1160, i64 %idxprom1208, !dbg !1631
  %380 = load double* %arrayidx1209, align 8, !dbg !1631, !tbaa !500
  %sub1210 = fsub double %380, %379, !dbg !1631
  store double %sub1210, double* %arrayidx1209, align 8, !dbg !1631, !tbaa !500
  %381 = load double* %arrayidx1211, align 16, !dbg !1632, !tbaa !500
  %sub1212 = sub nsw i32 0, %mul1201, !dbg !1632
  %idxprom1213 = sext i32 %sub1212 to i64, !dbg !1632
  %arrayidx1214 = getelementptr inbounds double* %call1160, i64 %idxprom1213, !dbg !1632
  %382 = load double* %arrayidx1214, align 8, !dbg !1632, !tbaa !500
  %sub1215 = fsub double %382, %381, !dbg !1632
  store double %sub1215, double* %arrayidx1214, align 8, !dbg !1632, !tbaa !500
  %383 = load double* %arrayidx1216, align 8, !dbg !1632, !tbaa !500
  %add12184396 = or i32 %sub1212, 1, !dbg !1632
  %idxprom1219 = sext i32 %add12184396 to i64, !dbg !1632
  %arrayidx1220 = getelementptr inbounds double* %call1160, i64 %idxprom1219, !dbg !1632
  %384 = load double* %arrayidx1220, align 8, !dbg !1632, !tbaa !500
  %sub1221 = fsub double %384, %383, !dbg !1632
  store double %sub1221, double* %arrayidx1220, align 8, !dbg !1632, !tbaa !500
  %385 = load double* %arrayidx1222, align 16, !dbg !1633, !tbaa !500
  %386 = load double* %call1164, align 8, !dbg !1633, !tbaa !500
  %sub1224 = fsub double %386, %385, !dbg !1633
  store double %sub1224, double* %call1164, align 8, !dbg !1633, !tbaa !500
  %387 = load double* %arrayidx1225, align 8, !dbg !1633, !tbaa !500
  %arrayidx1226 = getelementptr inbounds double* %call1164, i64 1, !dbg !1633
  %388 = load double* %arrayidx1226, align 8, !dbg !1633, !tbaa !500
  %sub1227 = fsub double %388, %387, !dbg !1633
  store double %sub1227, double* %arrayidx1226, align 8, !dbg !1633, !tbaa !500
  %sub1228 = sub nsw i32 %361, %358, !dbg !1655
  %mul1229 = shl nsw i32 %sub1228, 1, !dbg !1655
  call void @llvm.dbg.value(metadata !{i32 %mul1229}, i64 0, metadata !363), !dbg !1655
  %389 = load double* %arrayidx1230, align 16, !dbg !1634, !tbaa !500
  %idxprom1231 = sext i32 %mul1229 to i64, !dbg !1634
  %arrayidx1232 = getelementptr inbounds double* %call1164, i64 %idxprom1231, !dbg !1634
  %390 = load double* %arrayidx1232, align 8, !dbg !1634, !tbaa !500
  %sub1233 = fsub double %390, %389, !dbg !1634
  store double %sub1233, double* %arrayidx1232, align 8, !dbg !1634, !tbaa !500
  %391 = load double* %arrayidx1234, align 8, !dbg !1634, !tbaa !500
  %add12354397 = or i32 %mul1229, 1, !dbg !1634
  %idxprom1236 = sext i32 %add12354397 to i64, !dbg !1634
  %arrayidx1237 = getelementptr inbounds double* %call1164, i64 %idxprom1236, !dbg !1634
  %392 = load double* %arrayidx1237, align 8, !dbg !1634, !tbaa !500
  %sub1238 = fsub double %392, %391, !dbg !1634
  store double %sub1238, double* %arrayidx1237, align 8, !dbg !1634, !tbaa !500
  %393 = load double* %arrayidx1239, align 16, !dbg !1635, !tbaa !500
  %sub1240 = sub nsw i32 0, %mul1229, !dbg !1635
  %idxprom1241 = sext i32 %sub1240 to i64, !dbg !1635
  %arrayidx1242 = getelementptr inbounds double* %call1164, i64 %idxprom1241, !dbg !1635
  %394 = load double* %arrayidx1242, align 8, !dbg !1635, !tbaa !500
  %sub1243 = fsub double %394, %393, !dbg !1635
  store double %sub1243, double* %arrayidx1242, align 8, !dbg !1635, !tbaa !500
  %395 = load double* %arrayidx1244, align 8, !dbg !1635, !tbaa !500
  %add12464398 = or i32 %sub1240, 1, !dbg !1635
  %idxprom1247 = sext i32 %add12464398 to i64, !dbg !1635
  %arrayidx1248 = getelementptr inbounds double* %call1164, i64 %idxprom1247, !dbg !1635
  %396 = load double* %arrayidx1248, align 8, !dbg !1635, !tbaa !500
  %sub1249 = fsub double %396, %395, !dbg !1635
  store double %sub1249, double* %arrayidx1248, align 8, !dbg !1635, !tbaa !500
  %397 = load double* %arrayidx1250, align 16, !dbg !1636, !tbaa !500
  %398 = load double* %call1168, align 8, !dbg !1636, !tbaa !500
  %sub1252 = fsub double %398, %397, !dbg !1636
  store double %sub1252, double* %call1168, align 8, !dbg !1636, !tbaa !500
  %399 = load double* %arrayidx1253, align 8, !dbg !1636, !tbaa !500
  %arrayidx1254 = getelementptr inbounds double* %call1168, i64 1, !dbg !1636
  %400 = load double* %arrayidx1254, align 8, !dbg !1636, !tbaa !500
  %sub1255 = fsub double %400, %399, !dbg !1636
  store double %sub1255, double* %arrayidx1254, align 8, !dbg !1636, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1656
  %401 = load i32* %nrowU1116, align 4, !dbg !1656, !tbaa !424
  %mul1256 = shl nsw i32 %401, 1, !dbg !1656
  %idx.ext1257 = sext i32 %mul1256 to i64, !dbg !1656
  %add.ptr1148.sum = add i64 %idx.ext1257, %add.ptr1145.sum, !dbg !1656
  %add.ptr1258 = getelementptr inbounds double* %352, i64 %add.ptr1148.sum, !dbg !1656
  call void @llvm.dbg.value(metadata !{double* %add.ptr1258}, i64 0, metadata !350), !dbg !1656
  %add.ptr1261 = getelementptr inbounds double* %353, i64 %add.ptr1148.sum, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %add.ptr1261}, i64 0, metadata !342), !dbg !1657
  %indvars.iv.next4752 = add i64 %indvars.iv4751, 3, !dbg !1624
  %add1262 = add nsw i32 %irowL1108.04646, 3, !dbg !1658
  call void @llvm.dbg.value(metadata !{i32 %add1262}, i64 0, metadata !362), !dbg !1658
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1658
  %402 = load i32* %ncolU, align 4, !dbg !1658, !tbaa !424
  %sub12644635 = add nsw i32 %402, -2, !dbg !1658
  %403 = trunc i64 %indvars.iv.next4752 to i32, !dbg !1658
  %cmp12654636 = icmp slt i32 %403, %sub12644635, !dbg !1658
  br i1 %cmp12654636, label %for.body1266.lr.ph, label %for.end1522, !dbg !1658

for.body1266.lr.ph:                               ; preds = %for.body1139
  %mul1291 = shl nsw i32 %355, 1, !dbg !1660
  %idx.ext1292 = sext i32 %mul1291 to i64, !dbg !1660
  %mul1295 = shl nsw i32 %358, 1, !dbg !1662
  %idx.ext1296 = sext i32 %mul1295 to i64, !dbg !1662
  %mul1299 = shl nsw i32 %361, 1, !dbg !1663
  %idx.ext1300 = sext i32 %mul1299 to i64, !dbg !1663
  br label %for.body1266, !dbg !1658

for.body1266:                                     ; preds = %for.body1266.lr.ph, %for.body1266
  %404 = phi i32 [ %401, %for.body1266.lr.ph ], [ %484, %for.body1266 ], !dbg !1664
  %indvars.iv4746 = phi i64 [ %indvars.iv4744, %for.body1266.lr.ph ], [ %indvars.iv.next4747, %for.body1266 ], !dbg !1624
  %jcolU1109.04639 = phi i32 [ %add1262, %for.body1266.lr.ph ], [ %add1521, %for.body1266 ]
  %rowL01097.04638 = phi double* [ %add.ptr1258, %for.body1266.lr.ph ], [ %add.ptr1516, %for.body1266 ]
  %colU01089.04637 = phi double* [ %add.ptr1261, %for.body1266.lr.ph ], [ %add.ptr1519, %for.body1266 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1664
  %mul1267 = shl nsw i32 %404, 1, !dbg !1664
  %idx.ext1268 = sext i32 %mul1267 to i64, !dbg !1664
  %add.ptr1269 = getelementptr inbounds double* %rowL01097.04638, i64 %idx.ext1268, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %add.ptr1269}, i64 0, metadata !351), !dbg !1664
  %add.ptr1269.sum = shl nsw i64 %idx.ext1268, 1, !dbg !1665
  %add.ptr1272 = getelementptr inbounds double* %rowL01097.04638, i64 %add.ptr1269.sum, !dbg !1665
  call void @llvm.dbg.value(metadata !{double* %add.ptr1272}, i64 0, metadata !352), !dbg !1665
  %add.ptr1275 = getelementptr inbounds double* %colU01089.04637, i64 %idx.ext1268, !dbg !1666
  call void @llvm.dbg.value(metadata !{double* %add.ptr1275}, i64 0, metadata !343), !dbg !1666
  %add.ptr1278 = getelementptr inbounds double* %colU01089.04637, i64 %add.ptr1269.sum, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %add.ptr1278}, i64 0, metadata !344), !dbg !1667
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1668
  %405 = load i32** %colindU, align 8, !dbg !1668, !tbaa !419
  %arrayidx1280 = getelementptr inbounds i32* %405, i64 %indvars.iv4746, !dbg !1668
  %406 = load i32* %arrayidx1280, align 4, !dbg !1668, !tbaa !424
  %mul1281 = shl nsw i32 %406, 1, !dbg !1668
  call void @llvm.dbg.value(metadata !{i32 %mul1281}, i64 0, metadata !364), !dbg !1668
  %407 = add nsw i64 %indvars.iv4746, 1, !dbg !1669
  %arrayidx1284 = getelementptr inbounds i32* %405, i64 %407, !dbg !1669
  %408 = load i32* %arrayidx1284, align 4, !dbg !1669, !tbaa !424
  %mul1285 = shl nsw i32 %408, 1, !dbg !1669
  call void @llvm.dbg.value(metadata !{i32 %mul1285}, i64 0, metadata !365), !dbg !1669
  %409 = add nsw i64 %indvars.iv4746, 2, !dbg !1670
  %arrayidx1288 = getelementptr inbounds i32* %405, i64 %409, !dbg !1670
  %410 = load i32* %arrayidx1288, align 4, !dbg !1670, !tbaa !424
  %mul1289 = shl nsw i32 %410, 1, !dbg !1670
  call void @llvm.dbg.value(metadata !{i32 %mul1289}, i64 0, metadata !366), !dbg !1670
  call void @ZVdotU33(i32 %404, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %colU01089.04637, double* %add.ptr1275, double* %add.ptr1278, double* %arraydecay1171) #6, !dbg !1671
  %411 = load double* %arraydecay1171, align 16, !dbg !1672, !tbaa !500
  %idxprom1304 = sext i32 %mul1281 to i64, !dbg !1672
  %add.ptr1294.sum = sub i64 %idxprom1304, %idx.ext1292, !dbg !1672
  %arrayidx1305 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum, !dbg !1672
  %412 = load double* %arrayidx1305, align 8, !dbg !1672, !tbaa !500
  %sub1306 = fsub double %412, %411, !dbg !1672
  store double %sub1306, double* %arrayidx1305, align 8, !dbg !1672, !tbaa !500
  %413 = load double* %arrayidx1175, align 8, !dbg !1672, !tbaa !500
  %add13084435 = or i32 %mul1281, 1, !dbg !1672
  %idxprom1309 = sext i32 %add13084435 to i64, !dbg !1672
  %add.ptr1294.sum4436 = sub i64 %idxprom1309, %idx.ext1292, !dbg !1672
  %arrayidx1310 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4436, !dbg !1672
  %414 = load double* %arrayidx1310, align 8, !dbg !1672, !tbaa !500
  %sub1311 = fsub double %414, %413, !dbg !1672
  store double %sub1311, double* %arrayidx1310, align 8, !dbg !1672, !tbaa !500
  %415 = load double* %arrayidx1180, align 16, !dbg !1673, !tbaa !500
  %idxprom1313 = sext i32 %mul1285 to i64, !dbg !1673
  %add.ptr1294.sum4437 = sub i64 %idxprom1313, %idx.ext1292, !dbg !1673
  %arrayidx1314 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4437, !dbg !1673
  %416 = load double* %arrayidx1314, align 8, !dbg !1673, !tbaa !500
  %sub1315 = fsub double %416, %415, !dbg !1673
  store double %sub1315, double* %arrayidx1314, align 8, !dbg !1673, !tbaa !500
  %417 = load double* %arrayidx1184, align 8, !dbg !1673, !tbaa !500
  %add13174438 = or i32 %mul1285, 1, !dbg !1673
  %idxprom1318 = sext i32 %add13174438 to i64, !dbg !1673
  %add.ptr1294.sum4439 = sub i64 %idxprom1318, %idx.ext1292, !dbg !1673
  %arrayidx1319 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4439, !dbg !1673
  %418 = load double* %arrayidx1319, align 8, !dbg !1673, !tbaa !500
  %sub1320 = fsub double %418, %417, !dbg !1673
  store double %sub1320, double* %arrayidx1319, align 8, !dbg !1673, !tbaa !500
  %419 = load double* %arrayidx1202, align 16, !dbg !1674, !tbaa !500
  %idxprom1322 = sext i32 %mul1289 to i64, !dbg !1674
  %add.ptr1294.sum4440 = sub i64 %idxprom1322, %idx.ext1292, !dbg !1674
  %arrayidx1323 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4440, !dbg !1674
  %420 = load double* %arrayidx1323, align 8, !dbg !1674, !tbaa !500
  %sub1324 = fsub double %420, %419, !dbg !1674
  store double %sub1324, double* %arrayidx1323, align 8, !dbg !1674, !tbaa !500
  %421 = load double* %arrayidx1206, align 8, !dbg !1674, !tbaa !500
  %add13264441 = or i32 %mul1289, 1, !dbg !1674
  %idxprom1327 = sext i32 %add13264441 to i64, !dbg !1674
  %add.ptr1294.sum4442 = sub i64 %idxprom1327, %idx.ext1292, !dbg !1674
  %arrayidx1328 = getelementptr inbounds double* %call1160, i64 %add.ptr1294.sum4442, !dbg !1674
  %422 = load double* %arrayidx1328, align 8, !dbg !1674, !tbaa !500
  %sub1329 = fsub double %422, %421, !dbg !1674
  store double %sub1329, double* %arrayidx1328, align 8, !dbg !1674, !tbaa !500
  %423 = load double* %arrayidx1189, align 16, !dbg !1675, !tbaa !500
  %add.ptr1298.sum = sub i64 %idxprom1304, %idx.ext1296, !dbg !1675
  %arrayidx1332 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum, !dbg !1675
  %424 = load double* %arrayidx1332, align 8, !dbg !1675, !tbaa !500
  %sub1333 = fsub double %424, %423, !dbg !1675
  store double %sub1333, double* %arrayidx1332, align 8, !dbg !1675, !tbaa !500
  %425 = load double* %arrayidx1194, align 8, !dbg !1675, !tbaa !500
  %add.ptr1298.sum4443 = sub i64 %idxprom1309, %idx.ext1296, !dbg !1675
  %arrayidx1337 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4443, !dbg !1675
  %426 = load double* %arrayidx1337, align 8, !dbg !1675, !tbaa !500
  %sub1338 = fsub double %426, %425, !dbg !1675
  store double %sub1338, double* %arrayidx1337, align 8, !dbg !1675, !tbaa !500
  %427 = load double* %arrayidx1222, align 16, !dbg !1676, !tbaa !500
  %add.ptr1298.sum4444 = sub i64 %idxprom1313, %idx.ext1296, !dbg !1676
  %arrayidx1341 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4444, !dbg !1676
  %428 = load double* %arrayidx1341, align 8, !dbg !1676, !tbaa !500
  %sub1342 = fsub double %428, %427, !dbg !1676
  store double %sub1342, double* %arrayidx1341, align 8, !dbg !1676, !tbaa !500
  %429 = load double* %arrayidx1225, align 8, !dbg !1676, !tbaa !500
  %add.ptr1298.sum4445 = sub i64 %idxprom1318, %idx.ext1296, !dbg !1676
  %arrayidx1346 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4445, !dbg !1676
  %430 = load double* %arrayidx1346, align 8, !dbg !1676, !tbaa !500
  %sub1347 = fsub double %430, %429, !dbg !1676
  store double %sub1347, double* %arrayidx1346, align 8, !dbg !1676, !tbaa !500
  %431 = load double* %arrayidx1230, align 16, !dbg !1677, !tbaa !500
  %add.ptr1298.sum4446 = sub i64 %idxprom1322, %idx.ext1296, !dbg !1677
  %arrayidx1350 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4446, !dbg !1677
  %432 = load double* %arrayidx1350, align 8, !dbg !1677, !tbaa !500
  %sub1351 = fsub double %432, %431, !dbg !1677
  store double %sub1351, double* %arrayidx1350, align 8, !dbg !1677, !tbaa !500
  %433 = load double* %arrayidx1234, align 8, !dbg !1677, !tbaa !500
  %add.ptr1298.sum4447 = sub i64 %idxprom1327, %idx.ext1296, !dbg !1677
  %arrayidx1355 = getelementptr inbounds double* %call1164, i64 %add.ptr1298.sum4447, !dbg !1677
  %434 = load double* %arrayidx1355, align 8, !dbg !1677, !tbaa !500
  %sub1356 = fsub double %434, %433, !dbg !1677
  store double %sub1356, double* %arrayidx1355, align 8, !dbg !1677, !tbaa !500
  %435 = load double* %arrayidx1211, align 16, !dbg !1678, !tbaa !500
  %add.ptr1302.sum = sub i64 %idxprom1304, %idx.ext1300, !dbg !1678
  %arrayidx1359 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum, !dbg !1678
  %436 = load double* %arrayidx1359, align 8, !dbg !1678, !tbaa !500
  %sub1360 = fsub double %436, %435, !dbg !1678
  store double %sub1360, double* %arrayidx1359, align 8, !dbg !1678, !tbaa !500
  %437 = load double* %arrayidx1216, align 8, !dbg !1678, !tbaa !500
  %add.ptr1302.sum4448 = sub i64 %idxprom1309, %idx.ext1300, !dbg !1678
  %arrayidx1364 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4448, !dbg !1678
  %438 = load double* %arrayidx1364, align 8, !dbg !1678, !tbaa !500
  %sub1365 = fsub double %438, %437, !dbg !1678
  store double %sub1365, double* %arrayidx1364, align 8, !dbg !1678, !tbaa !500
  %439 = load double* %arrayidx1239, align 16, !dbg !1679, !tbaa !500
  %add.ptr1302.sum4449 = sub i64 %idxprom1313, %idx.ext1300, !dbg !1679
  %arrayidx1368 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4449, !dbg !1679
  %440 = load double* %arrayidx1368, align 8, !dbg !1679, !tbaa !500
  %sub1369 = fsub double %440, %439, !dbg !1679
  store double %sub1369, double* %arrayidx1368, align 8, !dbg !1679, !tbaa !500
  %441 = load double* %arrayidx1244, align 8, !dbg !1679, !tbaa !500
  %add.ptr1302.sum4450 = sub i64 %idxprom1318, %idx.ext1300, !dbg !1679
  %arrayidx1373 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4450, !dbg !1679
  %442 = load double* %arrayidx1373, align 8, !dbg !1679, !tbaa !500
  %sub1374 = fsub double %442, %441, !dbg !1679
  store double %sub1374, double* %arrayidx1373, align 8, !dbg !1679, !tbaa !500
  %443 = load double* %arrayidx1250, align 16, !dbg !1680, !tbaa !500
  %add.ptr1302.sum4451 = sub i64 %idxprom1322, %idx.ext1300, !dbg !1680
  %arrayidx1377 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4451, !dbg !1680
  %444 = load double* %arrayidx1377, align 8, !dbg !1680, !tbaa !500
  %sub1378 = fsub double %444, %443, !dbg !1680
  store double %sub1378, double* %arrayidx1377, align 8, !dbg !1680, !tbaa !500
  %445 = load double* %arrayidx1253, align 8, !dbg !1680, !tbaa !500
  %add.ptr1302.sum4452 = sub i64 %idxprom1327, %idx.ext1300, !dbg !1680
  %arrayidx1382 = getelementptr inbounds double* %call1168, i64 %add.ptr1302.sum4452, !dbg !1680
  %446 = load double* %arrayidx1382, align 8, !dbg !1680, !tbaa !500
  %sub1383 = fsub double %446, %445, !dbg !1680
  store double %sub1383, double* %arrayidx1382, align 8, !dbg !1680, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1160}, i64 0, metadata !339), !dbg !1681
  call void @llvm.dbg.value(metadata !{double* %call1164}, i64 0, metadata !340), !dbg !1682
  call void @llvm.dbg.value(metadata !{double* %call1168}, i64 0, metadata !341), !dbg !1683
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1684
  %447 = load i32* %nrowU1116, align 4, !dbg !1684, !tbaa !424
  call void @ZVdotU33(i32 %447, double* %rowL01097.04638, double* %add.ptr1269, double* %add.ptr1272, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %arraydecay1171) #6, !dbg !1684
  %448 = load double* %arraydecay1171, align 16, !dbg !1685, !tbaa !500
  %sub1404 = sub nsw i32 0, %mul1281, !dbg !1685
  %idxprom1405 = sext i32 %sub1404 to i64, !dbg !1685
  %add.ptr1396.sum = add i64 %idxprom1405, %idx.ext1292, !dbg !1685
  %arrayidx1406 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum, !dbg !1685
  %449 = load double* %arrayidx1406, align 8, !dbg !1685, !tbaa !500
  %sub1407 = fsub double %449, %448, !dbg !1685
  store double %sub1407, double* %arrayidx1406, align 8, !dbg !1685, !tbaa !500
  %450 = load double* %arrayidx1175, align 8, !dbg !1685, !tbaa !500
  %add14104456 = or i32 %sub1404, 1, !dbg !1685
  %idxprom1411 = sext i32 %add14104456 to i64, !dbg !1685
  %add.ptr1396.sum4457 = add i64 %idxprom1411, %idx.ext1292, !dbg !1685
  %arrayidx1412 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4457, !dbg !1685
  %451 = load double* %arrayidx1412, align 8, !dbg !1685, !tbaa !500
  %sub1413 = fsub double %451, %450, !dbg !1685
  store double %sub1413, double* %arrayidx1412, align 8, !dbg !1685, !tbaa !500
  %452 = load double* %arrayidx1180, align 16, !dbg !1686, !tbaa !500
  %add.ptr1399.sum = add i64 %idxprom1405, %idx.ext1296, !dbg !1686
  %arrayidx1417 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum, !dbg !1686
  %453 = load double* %arrayidx1417, align 8, !dbg !1686, !tbaa !500
  %sub1418 = fsub double %453, %452, !dbg !1686
  store double %sub1418, double* %arrayidx1417, align 8, !dbg !1686, !tbaa !500
  %454 = load double* %arrayidx1184, align 8, !dbg !1686, !tbaa !500
  %add.ptr1399.sum4458 = add i64 %idxprom1411, %idx.ext1296, !dbg !1686
  %arrayidx1423 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4458, !dbg !1686
  %455 = load double* %arrayidx1423, align 8, !dbg !1686, !tbaa !500
  %sub1424 = fsub double %455, %454, !dbg !1686
  store double %sub1424, double* %arrayidx1423, align 8, !dbg !1686, !tbaa !500
  %456 = load double* %arrayidx1202, align 16, !dbg !1687, !tbaa !500
  %add.ptr1402.sum = add i64 %idxprom1405, %idx.ext1300, !dbg !1687
  %arrayidx1428 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum, !dbg !1687
  %457 = load double* %arrayidx1428, align 8, !dbg !1687, !tbaa !500
  %sub1429 = fsub double %457, %456, !dbg !1687
  store double %sub1429, double* %arrayidx1428, align 8, !dbg !1687, !tbaa !500
  %458 = load double* %arrayidx1206, align 8, !dbg !1687, !tbaa !500
  %add.ptr1402.sum4459 = add i64 %idxprom1411, %idx.ext1300, !dbg !1687
  %arrayidx1434 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4459, !dbg !1687
  %459 = load double* %arrayidx1434, align 8, !dbg !1687, !tbaa !500
  %sub1435 = fsub double %459, %458, !dbg !1687
  store double %sub1435, double* %arrayidx1434, align 8, !dbg !1687, !tbaa !500
  %460 = load double* %arrayidx1189, align 16, !dbg !1688, !tbaa !500
  %sub1437 = sub nsw i32 0, %mul1285, !dbg !1688
  %idxprom1438 = sext i32 %sub1437 to i64, !dbg !1688
  %add.ptr1396.sum4460 = add i64 %idxprom1438, %idx.ext1292, !dbg !1688
  %arrayidx1439 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4460, !dbg !1688
  %461 = load double* %arrayidx1439, align 8, !dbg !1688, !tbaa !500
  %sub1440 = fsub double %461, %460, !dbg !1688
  store double %sub1440, double* %arrayidx1439, align 8, !dbg !1688, !tbaa !500
  %462 = load double* %arrayidx1194, align 8, !dbg !1688, !tbaa !500
  %add14434461 = or i32 %sub1437, 1, !dbg !1688
  %idxprom1444 = sext i32 %add14434461 to i64, !dbg !1688
  %add.ptr1396.sum4462 = add i64 %idxprom1444, %idx.ext1292, !dbg !1688
  %arrayidx1445 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4462, !dbg !1688
  %463 = load double* %arrayidx1445, align 8, !dbg !1688, !tbaa !500
  %sub1446 = fsub double %463, %462, !dbg !1688
  store double %sub1446, double* %arrayidx1445, align 8, !dbg !1688, !tbaa !500
  %464 = load double* %arrayidx1222, align 16, !dbg !1689, !tbaa !500
  %add.ptr1399.sum4463 = add i64 %idxprom1438, %idx.ext1296, !dbg !1689
  %arrayidx1450 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4463, !dbg !1689
  %465 = load double* %arrayidx1450, align 8, !dbg !1689, !tbaa !500
  %sub1451 = fsub double %465, %464, !dbg !1689
  store double %sub1451, double* %arrayidx1450, align 8, !dbg !1689, !tbaa !500
  %466 = load double* %arrayidx1225, align 8, !dbg !1689, !tbaa !500
  %add.ptr1399.sum4464 = add i64 %idxprom1444, %idx.ext1296, !dbg !1689
  %arrayidx1456 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4464, !dbg !1689
  %467 = load double* %arrayidx1456, align 8, !dbg !1689, !tbaa !500
  %sub1457 = fsub double %467, %466, !dbg !1689
  store double %sub1457, double* %arrayidx1456, align 8, !dbg !1689, !tbaa !500
  %468 = load double* %arrayidx1230, align 16, !dbg !1690, !tbaa !500
  %add.ptr1402.sum4465 = add i64 %idxprom1438, %idx.ext1300, !dbg !1690
  %arrayidx1461 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4465, !dbg !1690
  %469 = load double* %arrayidx1461, align 8, !dbg !1690, !tbaa !500
  %sub1462 = fsub double %469, %468, !dbg !1690
  store double %sub1462, double* %arrayidx1461, align 8, !dbg !1690, !tbaa !500
  %470 = load double* %arrayidx1234, align 8, !dbg !1690, !tbaa !500
  %add.ptr1402.sum4466 = add i64 %idxprom1444, %idx.ext1300, !dbg !1690
  %arrayidx1467 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4466, !dbg !1690
  %471 = load double* %arrayidx1467, align 8, !dbg !1690, !tbaa !500
  %sub1468 = fsub double %471, %470, !dbg !1690
  store double %sub1468, double* %arrayidx1467, align 8, !dbg !1690, !tbaa !500
  %472 = load double* %arrayidx1211, align 16, !dbg !1691, !tbaa !500
  %sub1470 = sub nsw i32 0, %mul1289, !dbg !1691
  %idxprom1471 = sext i32 %sub1470 to i64, !dbg !1691
  %add.ptr1396.sum4467 = add i64 %idxprom1471, %idx.ext1292, !dbg !1691
  %arrayidx1472 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4467, !dbg !1691
  %473 = load double* %arrayidx1472, align 8, !dbg !1691, !tbaa !500
  %sub1473 = fsub double %473, %472, !dbg !1691
  store double %sub1473, double* %arrayidx1472, align 8, !dbg !1691, !tbaa !500
  %474 = load double* %arrayidx1216, align 8, !dbg !1691, !tbaa !500
  %add14764468 = or i32 %sub1470, 1, !dbg !1691
  %idxprom1477 = sext i32 %add14764468 to i64, !dbg !1691
  %add.ptr1396.sum4469 = add i64 %idxprom1477, %idx.ext1292, !dbg !1691
  %arrayidx1478 = getelementptr inbounds double* %call1160, i64 %add.ptr1396.sum4469, !dbg !1691
  %475 = load double* %arrayidx1478, align 8, !dbg !1691, !tbaa !500
  %sub1479 = fsub double %475, %474, !dbg !1691
  store double %sub1479, double* %arrayidx1478, align 8, !dbg !1691, !tbaa !500
  %476 = load double* %arrayidx1239, align 16, !dbg !1692, !tbaa !500
  %add.ptr1399.sum4470 = add i64 %idxprom1471, %idx.ext1296, !dbg !1692
  %arrayidx1483 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4470, !dbg !1692
  %477 = load double* %arrayidx1483, align 8, !dbg !1692, !tbaa !500
  %sub1484 = fsub double %477, %476, !dbg !1692
  store double %sub1484, double* %arrayidx1483, align 8, !dbg !1692, !tbaa !500
  %478 = load double* %arrayidx1244, align 8, !dbg !1692, !tbaa !500
  %add.ptr1399.sum4471 = add i64 %idxprom1477, %idx.ext1296, !dbg !1692
  %arrayidx1489 = getelementptr inbounds double* %call1164, i64 %add.ptr1399.sum4471, !dbg !1692
  %479 = load double* %arrayidx1489, align 8, !dbg !1692, !tbaa !500
  %sub1490 = fsub double %479, %478, !dbg !1692
  store double %sub1490, double* %arrayidx1489, align 8, !dbg !1692, !tbaa !500
  %480 = load double* %arrayidx1250, align 16, !dbg !1693, !tbaa !500
  %add.ptr1402.sum4472 = add i64 %idxprom1471, %idx.ext1300, !dbg !1693
  %arrayidx1494 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4472, !dbg !1693
  %481 = load double* %arrayidx1494, align 8, !dbg !1693, !tbaa !500
  %sub1495 = fsub double %481, %480, !dbg !1693
  store double %sub1495, double* %arrayidx1494, align 8, !dbg !1693, !tbaa !500
  %482 = load double* %arrayidx1253, align 8, !dbg !1693, !tbaa !500
  %add.ptr1402.sum4473 = add i64 %idxprom1477, %idx.ext1300, !dbg !1693
  %arrayidx1500 = getelementptr inbounds double* %call1168, i64 %add.ptr1402.sum4473, !dbg !1693
  %483 = load double* %arrayidx1500, align 8, !dbg !1693, !tbaa !500
  %sub1501 = fsub double %483, %482, !dbg !1693
  store double %sub1501, double* %arrayidx1500, align 8, !dbg !1693, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1160}, i64 0, metadata !339), !dbg !1694
  call void @llvm.dbg.value(metadata !{double* %call1164}, i64 0, metadata !340), !dbg !1695
  call void @llvm.dbg.value(metadata !{double* %call1168}, i64 0, metadata !341), !dbg !1696
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1697
  %484 = load i32* %nrowU1116, align 4, !dbg !1697, !tbaa !424
  %mul1514 = shl nsw i32 %484, 1, !dbg !1697
  %idx.ext1515 = sext i32 %mul1514 to i64, !dbg !1697
  %add.ptr1272.sum = add i64 %idx.ext1515, %add.ptr1269.sum, !dbg !1697
  %add.ptr1516 = getelementptr inbounds double* %rowL01097.04638, i64 %add.ptr1272.sum, !dbg !1697
  call void @llvm.dbg.value(metadata !{double* %add.ptr1516}, i64 0, metadata !350), !dbg !1697
  %add.ptr1519 = getelementptr inbounds double* %colU01089.04637, i64 %add.ptr1272.sum, !dbg !1698
  call void @llvm.dbg.value(metadata !{double* %add.ptr1519}, i64 0, metadata !342), !dbg !1698
  %add1521 = add nsw i32 %jcolU1109.04639, 3, !dbg !1658
  call void @llvm.dbg.value(metadata !{i32 %add1521}, i64 0, metadata !362), !dbg !1658
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1658
  %485 = load i32* %ncolU, align 4, !dbg !1658, !tbaa !424
  %sub1264 = add nsw i32 %485, -2, !dbg !1658
  %cmp1265 = icmp slt i32 %add1521, %sub1264, !dbg !1658
  %indvars.iv.next4747 = add i64 %indvars.iv4746, 3, !dbg !1658
  br i1 %cmp1265, label %for.body1266, label %for.end1522, !dbg !1658

for.end1522:                                      ; preds = %for.body1266, %for.body1139
  %486 = phi i32 [ %401, %for.body1139 ], [ %484, %for.body1266 ]
  %sub1264.lcssa = phi i32 [ %sub12644635, %for.body1139 ], [ %sub1264, %for.body1266 ]
  %.lcssa4634 = phi i32 [ %402, %for.body1139 ], [ %485, %for.body1266 ]
  %jcolU1109.0.lcssa = phi i32 [ %403, %for.body1139 ], [ %add1521, %for.body1266 ]
  %rowL01097.0.lcssa = phi double* [ %add.ptr1258, %for.body1139 ], [ %add.ptr1516, %for.body1266 ]
  %colU01089.0.lcssa = phi double* [ %add.ptr1261, %for.body1139 ], [ %add.ptr1519, %for.body1266 ]
  %cmp1524 = icmp eq i32 %jcolU1109.0.lcssa, %sub1264.lcssa, !dbg !1699
  br i1 %cmp1524, label %if.then1525, label %if.else1703, !dbg !1699

if.then1525:                                      ; preds = %for.end1522
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1700
  %mul1526 = shl nsw i32 %486, 1, !dbg !1700
  %idx.ext1527 = sext i32 %mul1526 to i64, !dbg !1700
  %add.ptr1528 = getelementptr inbounds double* %rowL01097.0.lcssa, i64 %idx.ext1527, !dbg !1700
  call void @llvm.dbg.value(metadata !{double* %add.ptr1528}, i64 0, metadata !351), !dbg !1700
  %add.ptr1531 = getelementptr inbounds double* %colU01089.0.lcssa, i64 %idx.ext1527, !dbg !1702
  call void @llvm.dbg.value(metadata !{double* %add.ptr1531}, i64 0, metadata !343), !dbg !1702
  %idxprom1532 = sext i32 %sub1264.lcssa to i64, !dbg !1703
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1703
  %487 = load i32** %colindU, align 8, !dbg !1703, !tbaa !419
  %arrayidx1533 = getelementptr inbounds i32* %487, i64 %idxprom1532, !dbg !1703
  %488 = load i32* %arrayidx1533, align 4, !dbg !1703, !tbaa !424
  %mul1534 = shl nsw i32 %488, 1, !dbg !1703
  call void @llvm.dbg.value(metadata !{i32 %mul1534}, i64 0, metadata !364), !dbg !1703
  %add1535 = add nsw i32 %sub1264.lcssa, 1, !dbg !1704
  %idxprom1536 = sext i32 %add1535 to i64, !dbg !1704
  %arrayidx1537 = getelementptr inbounds i32* %487, i64 %idxprom1536, !dbg !1704
  %489 = load i32* %arrayidx1537, align 4, !dbg !1704, !tbaa !424
  %mul1538 = shl nsw i32 %489, 1, !dbg !1704
  call void @llvm.dbg.value(metadata !{i32 %mul1538}, i64 0, metadata !365), !dbg !1704
  call void @ZVdotU32(i32 %486, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %colU01089.0.lcssa, double* %add.ptr1531, double* %arraydecay1171) #6, !dbg !1705
  %mul1540 = shl nsw i32 %355, 1, !dbg !1706
  %idx.ext1541 = sext i32 %mul1540 to i64, !dbg !1706
  %mul1544 = shl nsw i32 %358, 1, !dbg !1707
  %idx.ext1545 = sext i32 %mul1544 to i64, !dbg !1707
  %mul1548 = shl nsw i32 %361, 1, !dbg !1708
  %idx.ext1549 = sext i32 %mul1548 to i64, !dbg !1708
  %490 = load double* %arraydecay1171, align 16, !dbg !1709, !tbaa !500
  %idxprom1553 = sext i32 %mul1534 to i64, !dbg !1709
  %add.ptr1543.sum = sub i64 %idxprom1553, %idx.ext1541, !dbg !1709
  %arrayidx1554 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum, !dbg !1709
  %491 = load double* %arrayidx1554, align 8, !dbg !1709, !tbaa !500
  %sub1555 = fsub double %491, %490, !dbg !1709
  store double %sub1555, double* %arrayidx1554, align 8, !dbg !1709, !tbaa !500
  %492 = load double* %arrayidx1175, align 8, !dbg !1709, !tbaa !500
  %add15574410 = or i32 %mul1534, 1, !dbg !1709
  %idxprom1558 = sext i32 %add15574410 to i64, !dbg !1709
  %add.ptr1543.sum4411 = sub i64 %idxprom1558, %idx.ext1541, !dbg !1709
  %arrayidx1559 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum4411, !dbg !1709
  %493 = load double* %arrayidx1559, align 8, !dbg !1709, !tbaa !500
  %sub1560 = fsub double %493, %492, !dbg !1709
  store double %sub1560, double* %arrayidx1559, align 8, !dbg !1709, !tbaa !500
  %494 = load double* %arrayidx1180, align 16, !dbg !1710, !tbaa !500
  %idxprom1562 = sext i32 %mul1538 to i64, !dbg !1710
  %add.ptr1543.sum4412 = sub i64 %idxprom1562, %idx.ext1541, !dbg !1710
  %arrayidx1563 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum4412, !dbg !1710
  %495 = load double* %arrayidx1563, align 8, !dbg !1710, !tbaa !500
  %sub1564 = fsub double %495, %494, !dbg !1710
  store double %sub1564, double* %arrayidx1563, align 8, !dbg !1710, !tbaa !500
  %496 = load double* %arrayidx1184, align 8, !dbg !1710, !tbaa !500
  %add15664413 = or i32 %mul1538, 1, !dbg !1710
  %idxprom1567 = sext i32 %add15664413 to i64, !dbg !1710
  %add.ptr1543.sum4414 = sub i64 %idxprom1567, %idx.ext1541, !dbg !1710
  %arrayidx1568 = getelementptr inbounds double* %call1160, i64 %add.ptr1543.sum4414, !dbg !1710
  %497 = load double* %arrayidx1568, align 8, !dbg !1710, !tbaa !500
  %sub1569 = fsub double %497, %496, !dbg !1710
  store double %sub1569, double* %arrayidx1568, align 8, !dbg !1710, !tbaa !500
  %498 = load double* %arrayidx1202, align 16, !dbg !1711, !tbaa !500
  %add.ptr1547.sum = sub i64 %idxprom1553, %idx.ext1545, !dbg !1711
  %arrayidx1572 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum, !dbg !1711
  %499 = load double* %arrayidx1572, align 8, !dbg !1711, !tbaa !500
  %sub1573 = fsub double %499, %498, !dbg !1711
  store double %sub1573, double* %arrayidx1572, align 8, !dbg !1711, !tbaa !500
  %500 = load double* %arrayidx1206, align 8, !dbg !1711, !tbaa !500
  %add.ptr1547.sum4415 = sub i64 %idxprom1558, %idx.ext1545, !dbg !1711
  %arrayidx1577 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum4415, !dbg !1711
  %501 = load double* %arrayidx1577, align 8, !dbg !1711, !tbaa !500
  %sub1578 = fsub double %501, %500, !dbg !1711
  store double %sub1578, double* %arrayidx1577, align 8, !dbg !1711, !tbaa !500
  %502 = load double* %arrayidx1189, align 16, !dbg !1712, !tbaa !500
  %add.ptr1547.sum4416 = sub i64 %idxprom1562, %idx.ext1545, !dbg !1712
  %arrayidx1581 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum4416, !dbg !1712
  %503 = load double* %arrayidx1581, align 8, !dbg !1712, !tbaa !500
  %sub1582 = fsub double %503, %502, !dbg !1712
  store double %sub1582, double* %arrayidx1581, align 8, !dbg !1712, !tbaa !500
  %504 = load double* %arrayidx1194, align 8, !dbg !1712, !tbaa !500
  %add.ptr1547.sum4417 = sub i64 %idxprom1567, %idx.ext1545, !dbg !1712
  %arrayidx1586 = getelementptr inbounds double* %call1164, i64 %add.ptr1547.sum4417, !dbg !1712
  %505 = load double* %arrayidx1586, align 8, !dbg !1712, !tbaa !500
  %sub1587 = fsub double %505, %504, !dbg !1712
  store double %sub1587, double* %arrayidx1586, align 8, !dbg !1712, !tbaa !500
  %506 = load double* %arrayidx1222, align 16, !dbg !1713, !tbaa !500
  %add.ptr1551.sum = sub i64 %idxprom1553, %idx.ext1549, !dbg !1713
  %arrayidx1590 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum, !dbg !1713
  %507 = load double* %arrayidx1590, align 8, !dbg !1713, !tbaa !500
  %sub1591 = fsub double %507, %506, !dbg !1713
  store double %sub1591, double* %arrayidx1590, align 8, !dbg !1713, !tbaa !500
  %508 = load double* %arrayidx1225, align 8, !dbg !1713, !tbaa !500
  %add.ptr1551.sum4418 = sub i64 %idxprom1558, %idx.ext1549, !dbg !1713
  %arrayidx1595 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum4418, !dbg !1713
  %509 = load double* %arrayidx1595, align 8, !dbg !1713, !tbaa !500
  %sub1596 = fsub double %509, %508, !dbg !1713
  store double %sub1596, double* %arrayidx1595, align 8, !dbg !1713, !tbaa !500
  %510 = load double* %arrayidx1230, align 16, !dbg !1714, !tbaa !500
  %add.ptr1551.sum4419 = sub i64 %idxprom1562, %idx.ext1549, !dbg !1714
  %arrayidx1599 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum4419, !dbg !1714
  %511 = load double* %arrayidx1599, align 8, !dbg !1714, !tbaa !500
  %sub1600 = fsub double %511, %510, !dbg !1714
  store double %sub1600, double* %arrayidx1599, align 8, !dbg !1714, !tbaa !500
  %512 = load double* %arrayidx1234, align 8, !dbg !1714, !tbaa !500
  %add.ptr1551.sum4420 = sub i64 %idxprom1567, %idx.ext1549, !dbg !1714
  %arrayidx1604 = getelementptr inbounds double* %call1168, i64 %add.ptr1551.sum4420, !dbg !1714
  %513 = load double* %arrayidx1604, align 8, !dbg !1714, !tbaa !500
  %sub1605 = fsub double %513, %512, !dbg !1714
  store double %sub1605, double* %arrayidx1604, align 8, !dbg !1714, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1160}, i64 0, metadata !339), !dbg !1715
  call void @llvm.dbg.value(metadata !{double* %call1164}, i64 0, metadata !340), !dbg !1716
  call void @llvm.dbg.value(metadata !{double* %call1168}, i64 0, metadata !341), !dbg !1717
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1718
  %514 = load i32* %nrowU1116, align 4, !dbg !1718, !tbaa !424
  call void @ZVdotU23(i32 %514, double* %rowL01097.0.lcssa, double* %add.ptr1528, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %arraydecay1171) #6, !dbg !1718
  %515 = load double* %arraydecay1171, align 16, !dbg !1719, !tbaa !500
  %sub1626 = sub nsw i32 0, %mul1534, !dbg !1719
  %idxprom1627 = sext i32 %sub1626 to i64, !dbg !1719
  %add.ptr1618.sum = add i64 %idxprom1627, %idx.ext1541, !dbg !1719
  %arrayidx1628 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum, !dbg !1719
  %516 = load double* %arrayidx1628, align 8, !dbg !1719, !tbaa !500
  %sub1629 = fsub double %516, %515, !dbg !1719
  store double %sub1629, double* %arrayidx1628, align 8, !dbg !1719, !tbaa !500
  %517 = load double* %arrayidx1175, align 8, !dbg !1719, !tbaa !500
  %add16324424 = or i32 %sub1626, 1, !dbg !1719
  %idxprom1633 = sext i32 %add16324424 to i64, !dbg !1719
  %add.ptr1618.sum4425 = add i64 %idxprom1633, %idx.ext1541, !dbg !1719
  %arrayidx1634 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum4425, !dbg !1719
  %518 = load double* %arrayidx1634, align 8, !dbg !1719, !tbaa !500
  %sub1635 = fsub double %518, %517, !dbg !1719
  store double %sub1635, double* %arrayidx1634, align 8, !dbg !1719, !tbaa !500
  %519 = load double* %arrayidx1180, align 16, !dbg !1720, !tbaa !500
  %add.ptr1621.sum = add i64 %idxprom1627, %idx.ext1545, !dbg !1720
  %arrayidx1639 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum, !dbg !1720
  %520 = load double* %arrayidx1639, align 8, !dbg !1720, !tbaa !500
  %sub1640 = fsub double %520, %519, !dbg !1720
  store double %sub1640, double* %arrayidx1639, align 8, !dbg !1720, !tbaa !500
  %521 = load double* %arrayidx1184, align 8, !dbg !1720, !tbaa !500
  %add.ptr1621.sum4426 = add i64 %idxprom1633, %idx.ext1545, !dbg !1720
  %arrayidx1645 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum4426, !dbg !1720
  %522 = load double* %arrayidx1645, align 8, !dbg !1720, !tbaa !500
  %sub1646 = fsub double %522, %521, !dbg !1720
  store double %sub1646, double* %arrayidx1645, align 8, !dbg !1720, !tbaa !500
  %523 = load double* %arrayidx1202, align 16, !dbg !1721, !tbaa !500
  %add.ptr1624.sum = add i64 %idxprom1627, %idx.ext1549, !dbg !1721
  %arrayidx1650 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum, !dbg !1721
  %524 = load double* %arrayidx1650, align 8, !dbg !1721, !tbaa !500
  %sub1651 = fsub double %524, %523, !dbg !1721
  store double %sub1651, double* %arrayidx1650, align 8, !dbg !1721, !tbaa !500
  %525 = load double* %arrayidx1206, align 8, !dbg !1721, !tbaa !500
  %add.ptr1624.sum4427 = add i64 %idxprom1633, %idx.ext1549, !dbg !1721
  %arrayidx1656 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum4427, !dbg !1721
  %526 = load double* %arrayidx1656, align 8, !dbg !1721, !tbaa !500
  %sub1657 = fsub double %526, %525, !dbg !1721
  store double %sub1657, double* %arrayidx1656, align 8, !dbg !1721, !tbaa !500
  %527 = load double* %arrayidx1189, align 16, !dbg !1722, !tbaa !500
  %sub1659 = sub nsw i32 0, %mul1538, !dbg !1722
  %idxprom1660 = sext i32 %sub1659 to i64, !dbg !1722
  %add.ptr1618.sum4428 = add i64 %idxprom1660, %idx.ext1541, !dbg !1722
  %arrayidx1661 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum4428, !dbg !1722
  %528 = load double* %arrayidx1661, align 8, !dbg !1722, !tbaa !500
  %sub1662 = fsub double %528, %527, !dbg !1722
  store double %sub1662, double* %arrayidx1661, align 8, !dbg !1722, !tbaa !500
  %529 = load double* %arrayidx1194, align 8, !dbg !1722, !tbaa !500
  %add16654429 = or i32 %sub1659, 1, !dbg !1722
  %idxprom1666 = sext i32 %add16654429 to i64, !dbg !1722
  %add.ptr1618.sum4430 = add i64 %idxprom1666, %idx.ext1541, !dbg !1722
  %arrayidx1667 = getelementptr inbounds double* %call1160, i64 %add.ptr1618.sum4430, !dbg !1722
  %530 = load double* %arrayidx1667, align 8, !dbg !1722, !tbaa !500
  %sub1668 = fsub double %530, %529, !dbg !1722
  store double %sub1668, double* %arrayidx1667, align 8, !dbg !1722, !tbaa !500
  %531 = load double* %arrayidx1222, align 16, !dbg !1723, !tbaa !500
  %add.ptr1621.sum4431 = add i64 %idxprom1660, %idx.ext1545, !dbg !1723
  %arrayidx1672 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum4431, !dbg !1723
  %532 = load double* %arrayidx1672, align 8, !dbg !1723, !tbaa !500
  %sub1673 = fsub double %532, %531, !dbg !1723
  store double %sub1673, double* %arrayidx1672, align 8, !dbg !1723, !tbaa !500
  %533 = load double* %arrayidx1225, align 8, !dbg !1723, !tbaa !500
  %add.ptr1621.sum4432 = add i64 %idxprom1666, %idx.ext1545, !dbg !1723
  %arrayidx1678 = getelementptr inbounds double* %call1164, i64 %add.ptr1621.sum4432, !dbg !1723
  %534 = load double* %arrayidx1678, align 8, !dbg !1723, !tbaa !500
  %sub1679 = fsub double %534, %533, !dbg !1723
  store double %sub1679, double* %arrayidx1678, align 8, !dbg !1723, !tbaa !500
  %535 = load double* %arrayidx1230, align 16, !dbg !1724, !tbaa !500
  %add.ptr1624.sum4433 = add i64 %idxprom1660, %idx.ext1549, !dbg !1724
  %arrayidx1683 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum4433, !dbg !1724
  %536 = load double* %arrayidx1683, align 8, !dbg !1724, !tbaa !500
  %sub1684 = fsub double %536, %535, !dbg !1724
  store double %sub1684, double* %arrayidx1683, align 8, !dbg !1724, !tbaa !500
  %537 = load double* %arrayidx1234, align 8, !dbg !1724, !tbaa !500
  %add.ptr1624.sum4434 = add i64 %idxprom1666, %idx.ext1549, !dbg !1724
  %arrayidx1689 = getelementptr inbounds double* %call1168, i64 %add.ptr1624.sum4434, !dbg !1724
  %538 = load double* %arrayidx1689, align 8, !dbg !1724, !tbaa !500
  %sub1690 = fsub double %538, %537, !dbg !1724
  store double %sub1690, double* %arrayidx1689, align 8, !dbg !1724, !tbaa !500
  br label %if.end1815, !dbg !1725

if.else1703:                                      ; preds = %for.end1522
  %sub1704 = add nsw i32 %.lcssa4634, -1, !dbg !1726
  %cmp1705 = icmp eq i32 %jcolU1109.0.lcssa, %sub1704, !dbg !1726
  br i1 %cmp1705, label %if.then1706, label %if.end1815, !dbg !1726

if.then1706:                                      ; preds = %if.else1703
  %idxprom1707 = sext i32 %jcolU1109.0.lcssa to i64, !dbg !1727
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1727
  %539 = load i32** %colindU, align 8, !dbg !1727, !tbaa !419
  %arrayidx1708 = getelementptr inbounds i32* %539, i64 %idxprom1707, !dbg !1727
  %540 = load i32* %arrayidx1708, align 4, !dbg !1727, !tbaa !424
  %mul1709 = shl nsw i32 %540, 1, !dbg !1727
  call void @llvm.dbg.value(metadata !{i32 %mul1709}, i64 0, metadata !364), !dbg !1727
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1729
  call void @ZVdotU31(i32 %486, double* %call1119, double* %add.ptr1122, double* %add.ptr1125, double* %colU01089.0.lcssa, double* %arraydecay1171) #6, !dbg !1729
  %mul1711 = shl nsw i32 %355, 1, !dbg !1730
  %idx.ext1712 = sext i32 %mul1711 to i64, !dbg !1730
  %mul1715 = shl nsw i32 %358, 1, !dbg !1731
  %idx.ext1716 = sext i32 %mul1715 to i64, !dbg !1731
  %mul1719 = shl nsw i32 %361, 1, !dbg !1732
  %idx.ext1720 = sext i32 %mul1719 to i64, !dbg !1732
  %541 = load double* %arraydecay1171, align 16, !dbg !1733, !tbaa !500
  %idxprom1724 = sext i32 %mul1709 to i64, !dbg !1733
  %add.ptr1714.sum = sub i64 %idxprom1724, %idx.ext1712, !dbg !1733
  %arrayidx1725 = getelementptr inbounds double* %call1160, i64 %add.ptr1714.sum, !dbg !1733
  %542 = load double* %arrayidx1725, align 8, !dbg !1733, !tbaa !500
  %sub1726 = fsub double %542, %541, !dbg !1733
  store double %sub1726, double* %arrayidx1725, align 8, !dbg !1733, !tbaa !500
  %543 = load double* %arrayidx1175, align 8, !dbg !1733, !tbaa !500
  %add17284399 = or i32 %mul1709, 1, !dbg !1733
  %idxprom1729 = sext i32 %add17284399 to i64, !dbg !1733
  %add.ptr1714.sum4400 = sub i64 %idxprom1729, %idx.ext1712, !dbg !1733
  %arrayidx1730 = getelementptr inbounds double* %call1160, i64 %add.ptr1714.sum4400, !dbg !1733
  %544 = load double* %arrayidx1730, align 8, !dbg !1733, !tbaa !500
  %sub1731 = fsub double %544, %543, !dbg !1733
  store double %sub1731, double* %arrayidx1730, align 8, !dbg !1733, !tbaa !500
  %545 = load double* %arrayidx1180, align 16, !dbg !1734, !tbaa !500
  %add.ptr1718.sum = sub i64 %idxprom1724, %idx.ext1716, !dbg !1734
  %arrayidx1734 = getelementptr inbounds double* %call1164, i64 %add.ptr1718.sum, !dbg !1734
  %546 = load double* %arrayidx1734, align 8, !dbg !1734, !tbaa !500
  %sub1735 = fsub double %546, %545, !dbg !1734
  store double %sub1735, double* %arrayidx1734, align 8, !dbg !1734, !tbaa !500
  %547 = load double* %arrayidx1184, align 8, !dbg !1734, !tbaa !500
  %add.ptr1718.sum4401 = sub i64 %idxprom1729, %idx.ext1716, !dbg !1734
  %arrayidx1739 = getelementptr inbounds double* %call1164, i64 %add.ptr1718.sum4401, !dbg !1734
  %548 = load double* %arrayidx1739, align 8, !dbg !1734, !tbaa !500
  %sub1740 = fsub double %548, %547, !dbg !1734
  store double %sub1740, double* %arrayidx1739, align 8, !dbg !1734, !tbaa !500
  %549 = load double* %arrayidx1202, align 16, !dbg !1735, !tbaa !500
  %add.ptr1722.sum = sub i64 %idxprom1724, %idx.ext1720, !dbg !1735
  %arrayidx1743 = getelementptr inbounds double* %call1168, i64 %add.ptr1722.sum, !dbg !1735
  %550 = load double* %arrayidx1743, align 8, !dbg !1735, !tbaa !500
  %sub1744 = fsub double %550, %549, !dbg !1735
  store double %sub1744, double* %arrayidx1743, align 8, !dbg !1735, !tbaa !500
  %551 = load double* %arrayidx1206, align 8, !dbg !1735, !tbaa !500
  %add.ptr1722.sum4402 = sub i64 %idxprom1729, %idx.ext1720, !dbg !1735
  %arrayidx1748 = getelementptr inbounds double* %call1168, i64 %add.ptr1722.sum4402, !dbg !1735
  %552 = load double* %arrayidx1748, align 8, !dbg !1735, !tbaa !500
  %sub1749 = fsub double %552, %551, !dbg !1735
  store double %sub1749, double* %arrayidx1748, align 8, !dbg !1735, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1160}, i64 0, metadata !339), !dbg !1736
  call void @llvm.dbg.value(metadata !{double* %call1164}, i64 0, metadata !340), !dbg !1737
  call void @llvm.dbg.value(metadata !{double* %call1168}, i64 0, metadata !341), !dbg !1738
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1739
  %553 = load i32* %nrowU1116, align 4, !dbg !1739, !tbaa !424
  call void @ZVdotU13(i32 %553, double* %rowL01097.0.lcssa, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1134, double* %arraydecay1171) #6, !dbg !1739
  %554 = load double* %arraydecay1171, align 16, !dbg !1740, !tbaa !500
  %sub1770 = sub nsw i32 0, %mul1709, !dbg !1740
  %idxprom1771 = sext i32 %sub1770 to i64, !dbg !1740
  %add.ptr1762.sum = add i64 %idxprom1771, %idx.ext1712, !dbg !1740
  %arrayidx1772 = getelementptr inbounds double* %call1160, i64 %add.ptr1762.sum, !dbg !1740
  %555 = load double* %arrayidx1772, align 8, !dbg !1740, !tbaa !500
  %sub1773 = fsub double %555, %554, !dbg !1740
  store double %sub1773, double* %arrayidx1772, align 8, !dbg !1740, !tbaa !500
  %556 = load double* %arrayidx1175, align 8, !dbg !1740, !tbaa !500
  %add17764406 = or i32 %sub1770, 1, !dbg !1740
  %idxprom1777 = sext i32 %add17764406 to i64, !dbg !1740
  %add.ptr1762.sum4407 = add i64 %idxprom1777, %idx.ext1712, !dbg !1740
  %arrayidx1778 = getelementptr inbounds double* %call1160, i64 %add.ptr1762.sum4407, !dbg !1740
  %557 = load double* %arrayidx1778, align 8, !dbg !1740, !tbaa !500
  %sub1779 = fsub double %557, %556, !dbg !1740
  store double %sub1779, double* %arrayidx1778, align 8, !dbg !1740, !tbaa !500
  %558 = load double* %arrayidx1180, align 16, !dbg !1741, !tbaa !500
  %add.ptr1765.sum = add i64 %idxprom1771, %idx.ext1716, !dbg !1741
  %arrayidx1783 = getelementptr inbounds double* %call1164, i64 %add.ptr1765.sum, !dbg !1741
  %559 = load double* %arrayidx1783, align 8, !dbg !1741, !tbaa !500
  %sub1784 = fsub double %559, %558, !dbg !1741
  store double %sub1784, double* %arrayidx1783, align 8, !dbg !1741, !tbaa !500
  %560 = load double* %arrayidx1184, align 8, !dbg !1741, !tbaa !500
  %add.ptr1765.sum4408 = add i64 %idxprom1777, %idx.ext1716, !dbg !1741
  %arrayidx1789 = getelementptr inbounds double* %call1164, i64 %add.ptr1765.sum4408, !dbg !1741
  %561 = load double* %arrayidx1789, align 8, !dbg !1741, !tbaa !500
  %sub1790 = fsub double %561, %560, !dbg !1741
  store double %sub1790, double* %arrayidx1789, align 8, !dbg !1741, !tbaa !500
  %562 = load double* %arrayidx1202, align 16, !dbg !1742, !tbaa !500
  %add.ptr1768.sum = add i64 %idxprom1771, %idx.ext1720, !dbg !1742
  %arrayidx1794 = getelementptr inbounds double* %call1168, i64 %add.ptr1768.sum, !dbg !1742
  %563 = load double* %arrayidx1794, align 8, !dbg !1742, !tbaa !500
  %sub1795 = fsub double %563, %562, !dbg !1742
  store double %sub1795, double* %arrayidx1794, align 8, !dbg !1742, !tbaa !500
  %564 = load double* %arrayidx1206, align 8, !dbg !1742, !tbaa !500
  %add.ptr1768.sum4409 = add i64 %idxprom1777, %idx.ext1720, !dbg !1742
  %arrayidx1800 = getelementptr inbounds double* %call1168, i64 %add.ptr1768.sum4409, !dbg !1742
  %565 = load double* %arrayidx1800, align 8, !dbg !1742, !tbaa !500
  %sub1801 = fsub double %565, %564, !dbg !1742
  store double %sub1801, double* %arrayidx1800, align 8, !dbg !1742, !tbaa !500
  br label %if.end1815, !dbg !1743

if.end1815:                                       ; preds = %if.else1703, %if.then1706, %if.then1525
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1744
  %566 = load i32* %nrowU1116, align 4, !dbg !1744, !tbaa !424
  %mul1816 = mul nsw i32 %566, 3, !dbg !1744
  %add1817 = add nsw i32 %mul1816, %offset1117.04647, !dbg !1744
  call void @llvm.dbg.value(metadata !{i32 %add1817}, i64 0, metadata !370), !dbg !1744
  call void @llvm.dbg.value(metadata !{i32 %add1262}, i64 0, metadata !361), !dbg !1624
  %cmp1138 = icmp sgt i32 %403, %sub1137, !dbg !1624
  br i1 %cmp1138, label %for.end1820, label %for.body1139, !dbg !1624

for.end1820:                                      ; preds = %if.end1815, %if.then1084
  %567 = phi i32 [ %349, %if.then1084 ], [ %566, %if.end1815 ]
  %offset1117.0.lcssa = phi i32 [ %mul1135, %if.then1084 ], [ %add1817, %if.end1815 ]
  %irowL1108.0.lcssa = phi i32 [ %jcolU.0.lcssa, %if.then1084 ], [ %add1262, %if.end1815 ]
  %sub1821 = add nsw i32 %lastInU.0.lcssa4789, -1, !dbg !1745
  %cmp1822 = icmp eq i32 %irowL1108.0.lcssa, %sub1821, !dbg !1745
  br i1 %cmp1822, label %if.then1823, label %if.else2278, !dbg !1745

if.then1823:                                      ; preds = %for.end1820
  call void @llvm.dbg.value(metadata !{double** %entL1092}, i64 0, metadata !345), !dbg !1746
  %568 = load double** %entL1092, align 8, !dbg !1746, !tbaa !419
  %mul1824 = shl nsw i32 %offset1117.0.lcssa, 1, !dbg !1746
  %idx.ext1825 = sext i32 %mul1824 to i64, !dbg !1746
  %add.ptr1826 = getelementptr inbounds double* %568, i64 %idx.ext1825, !dbg !1746
  call void @llvm.dbg.value(metadata !{double* %add.ptr1826}, i64 0, metadata !350), !dbg !1746
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1748
  %mul1827 = shl nsw i32 %567, 1, !dbg !1748
  %idx.ext1828 = sext i32 %mul1827 to i64, !dbg !1748
  %add.ptr1826.sum = add i64 %idx.ext1828, %idx.ext1825, !dbg !1748
  %add.ptr1829 = getelementptr inbounds double* %568, i64 %add.ptr1826.sum, !dbg !1748
  call void @llvm.dbg.value(metadata !{double* %add.ptr1829}, i64 0, metadata !351), !dbg !1748
  call void @llvm.dbg.value(metadata !{double** %entU1093}, i64 0, metadata !346), !dbg !1749
  %569 = load double** %entU1093, align 8, !dbg !1749, !tbaa !419
  %add.ptr1832 = getelementptr inbounds double* %569, i64 %idx.ext1825, !dbg !1749
  call void @llvm.dbg.value(metadata !{double* %add.ptr1832}, i64 0, metadata !342), !dbg !1749
  %add.ptr1835 = getelementptr inbounds double* %569, i64 %add.ptr1826.sum, !dbg !1750
  call void @llvm.dbg.value(metadata !{double* %add.ptr1835}, i64 0, metadata !343), !dbg !1750
  %idxprom1836 = sext i32 %sub1821 to i64, !dbg !1751
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1751
  %570 = load i32** %colindU, align 8, !dbg !1751, !tbaa !419
  %arrayidx1837 = getelementptr inbounds i32* %570, i64 %idxprom1836, !dbg !1751
  %571 = load i32* %arrayidx1837, align 4, !dbg !1751, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %571}, i64 0, metadata !356), !dbg !1751
  %call1838 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %571) #6, !dbg !1752
  call void @llvm.dbg.value(metadata !{double* %call1838}, i64 0, metadata !339), !dbg !1752
  %idxprom1840 = sext i32 %lastInU.0.lcssa4789 to i64, !dbg !1753
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1753
  %572 = load i32** %colindU, align 8, !dbg !1753, !tbaa !419
  %arrayidx1841 = getelementptr inbounds i32* %572, i64 %idxprom1840, !dbg !1753
  %573 = load i32* %arrayidx1841, align 4, !dbg !1753, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %573}, i64 0, metadata !357), !dbg !1753
  %call1842 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %573) #6, !dbg !1754
  call void @llvm.dbg.value(metadata !{double* %call1842}, i64 0, metadata !340), !dbg !1754
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1755
  %574 = load i32* %nrowU1116, align 4, !dbg !1755, !tbaa !424
  %mul1843 = shl nsw i32 %574, 2, !dbg !1755
  call void @DVzero(i32 %mul1843, double* %call1119) #6, !dbg !1755
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %call1119, double* %add.ptr1122, double* %add.ptr1826, double* %add.ptr1829) #6, !dbg !1756
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1757
  %575 = load i32* %nrowU1116, align 4, !dbg !1757, !tbaa !424
  %mul1844 = shl nsw i32 %575, 2, !dbg !1757
  call void @DVzero(i32 %mul1844, double* %add.ptr1128) #6, !dbg !1757
  call void @SubMtx_scale2vec(%struct._SubMtx* %mtxD, double* %add.ptr1128, double* %add.ptr1131, double* %add.ptr1832, double* %add.ptr1835) #6, !dbg !1758
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1759
  %576 = load i32* %nrowU1116, align 4, !dbg !1759, !tbaa !424
  %arraydecay1845 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 0, !dbg !1759
  call void @ZVdotU22(i32 %576, double* %call1119, double* %add.ptr1122, double* %add.ptr1832, double* %add.ptr1835, double* %arraydecay1845) #6, !dbg !1759
  %577 = load double* %arraydecay1845, align 16, !dbg !1760, !tbaa !500
  %578 = load double* %call1838, align 8, !dbg !1760, !tbaa !500
  %sub1848 = fsub double %578, %577, !dbg !1760
  store double %sub1848, double* %call1838, align 8, !dbg !1760, !tbaa !500
  %arrayidx1849 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 1, !dbg !1760
  %579 = load double* %arrayidx1849, align 8, !dbg !1760, !tbaa !500
  %arrayidx1850 = getelementptr inbounds double* %call1838, i64 1, !dbg !1760
  %580 = load double* %arrayidx1850, align 8, !dbg !1760, !tbaa !500
  %sub1851 = fsub double %580, %579, !dbg !1760
  store double %sub1851, double* %arrayidx1850, align 8, !dbg !1760, !tbaa !500
  %sub1852 = sub nsw i32 %573, %571, !dbg !1761
  %mul1853 = shl nsw i32 %sub1852, 1, !dbg !1761
  call void @llvm.dbg.value(metadata !{i32 %mul1853}, i64 0, metadata !363), !dbg !1761
  %arrayidx1854 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2, !dbg !1762
  %581 = load double* %arrayidx1854, align 16, !dbg !1762, !tbaa !500
  %idxprom1855 = sext i32 %mul1853 to i64, !dbg !1762
  %arrayidx1856 = getelementptr inbounds double* %call1838, i64 %idxprom1855, !dbg !1762
  %582 = load double* %arrayidx1856, align 8, !dbg !1762, !tbaa !500
  %sub1857 = fsub double %582, %581, !dbg !1762
  store double %sub1857, double* %arrayidx1856, align 8, !dbg !1762, !tbaa !500
  %arrayidx1858 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3, !dbg !1762
  %583 = load double* %arrayidx1858, align 8, !dbg !1762, !tbaa !500
  %add18594335 = or i32 %mul1853, 1, !dbg !1762
  %idxprom1860 = sext i32 %add18594335 to i64, !dbg !1762
  %arrayidx1861 = getelementptr inbounds double* %call1838, i64 %idxprom1860, !dbg !1762
  %584 = load double* %arrayidx1861, align 8, !dbg !1762, !tbaa !500
  %sub1862 = fsub double %584, %583, !dbg !1762
  store double %sub1862, double* %arrayidx1861, align 8, !dbg !1762, !tbaa !500
  %arrayidx1863 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 4, !dbg !1763
  %585 = load double* %arrayidx1863, align 16, !dbg !1763, !tbaa !500
  %sub1864 = sub nsw i32 0, %mul1853, !dbg !1763
  %idxprom1865 = sext i32 %sub1864 to i64, !dbg !1763
  %arrayidx1866 = getelementptr inbounds double* %call1838, i64 %idxprom1865, !dbg !1763
  %586 = load double* %arrayidx1866, align 8, !dbg !1763, !tbaa !500
  %sub1867 = fsub double %586, %585, !dbg !1763
  store double %sub1867, double* %arrayidx1866, align 8, !dbg !1763, !tbaa !500
  %arrayidx1868 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 5, !dbg !1763
  %587 = load double* %arrayidx1868, align 8, !dbg !1763, !tbaa !500
  %add18704336 = or i32 %sub1864, 1, !dbg !1763
  %idxprom1871 = sext i32 %add18704336 to i64, !dbg !1763
  %arrayidx1872 = getelementptr inbounds double* %call1838, i64 %idxprom1871, !dbg !1763
  %588 = load double* %arrayidx1872, align 8, !dbg !1763, !tbaa !500
  %sub1873 = fsub double %588, %587, !dbg !1763
  store double %sub1873, double* %arrayidx1872, align 8, !dbg !1763, !tbaa !500
  %arrayidx1874 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 6, !dbg !1764
  %589 = load double* %arrayidx1874, align 16, !dbg !1764, !tbaa !500
  %590 = load double* %call1842, align 8, !dbg !1764, !tbaa !500
  %sub1876 = fsub double %590, %589, !dbg !1764
  store double %sub1876, double* %call1842, align 8, !dbg !1764, !tbaa !500
  %arrayidx1877 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 7, !dbg !1764
  %591 = load double* %arrayidx1877, align 8, !dbg !1764, !tbaa !500
  %arrayidx1878 = getelementptr inbounds double* %call1842, i64 1, !dbg !1764
  %592 = load double* %arrayidx1878, align 8, !dbg !1764, !tbaa !500
  %sub1879 = fsub double %592, %591, !dbg !1764
  store double %sub1879, double* %arrayidx1878, align 8, !dbg !1764, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1765
  %593 = load i32* %nrowU1116, align 4, !dbg !1765, !tbaa !424
  %mul1880 = shl nsw i32 %593, 1, !dbg !1765
  %idx.ext1881 = sext i32 %mul1880 to i64, !dbg !1765
  %add.ptr1829.sum = add i64 %idx.ext1881, %add.ptr1826.sum, !dbg !1765
  %add.ptr1882 = getelementptr inbounds double* %568, i64 %add.ptr1829.sum, !dbg !1765
  call void @llvm.dbg.value(metadata !{double* %add.ptr1882}, i64 0, metadata !350), !dbg !1765
  %add.ptr1885 = getelementptr inbounds double* %569, i64 %add.ptr1829.sum, !dbg !1766
  call void @llvm.dbg.value(metadata !{double* %add.ptr1885}, i64 0, metadata !342), !dbg !1766
  %add1886 = add i32 %lastInU.0.lcssa4789, 1, !dbg !1767
  call void @llvm.dbg.value(metadata !{i32 %add1886}, i64 0, metadata !362), !dbg !1767
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1767
  %594 = load i32* %ncolU, align 4, !dbg !1767, !tbaa !424
  %sub18884613 = add nsw i32 %594, -2, !dbg !1767
  %cmp18894614 = icmp slt i32 %add1886, %sub18884613, !dbg !1767
  br i1 %cmp18894614, label %for.body1890.lr.ph, label %for.end2072, !dbg !1767

for.body1890.lr.ph:                               ; preds = %if.then1823
  %mul1915 = shl nsw i32 %571, 1, !dbg !1769
  %idx.ext1916 = sext i32 %mul1915 to i64, !dbg !1769
  %mul1919 = shl nsw i32 %573, 1, !dbg !1771
  %idx.ext1920 = sext i32 %mul1919 to i64, !dbg !1771
  %arrayidx1959 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 8, !dbg !1772
  %arrayidx1963 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 9, !dbg !1772
  %arrayidx1968 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 10, !dbg !1773
  %arrayidx1972 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 11, !dbg !1773
  %595 = sext i32 %add1886 to i64
  br label %for.body1890, !dbg !1767

for.body1890:                                     ; preds = %for.body1890.lr.ph, %for.body1890
  %596 = phi i32 [ %593, %for.body1890.lr.ph ], [ %652, %for.body1890 ], !dbg !1774
  %indvars.iv4730 = phi i64 [ %595, %for.body1890.lr.ph ], [ %indvars.iv.next4731, %for.body1890 ]
  %jcolU1109.14617 = phi i32 [ %add1886, %for.body1890.lr.ph ], [ %add2071, %for.body1890 ]
  %rowL01097.14616 = phi double* [ %add.ptr1882, %for.body1890.lr.ph ], [ %add.ptr2066, %for.body1890 ]
  %colU01089.14615 = phi double* [ %add.ptr1885, %for.body1890.lr.ph ], [ %add.ptr2069, %for.body1890 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1774
  %mul1891 = shl nsw i32 %596, 1, !dbg !1774
  %idx.ext1892 = sext i32 %mul1891 to i64, !dbg !1774
  %add.ptr1893 = getelementptr inbounds double* %rowL01097.14616, i64 %idx.ext1892, !dbg !1774
  call void @llvm.dbg.value(metadata !{double* %add.ptr1893}, i64 0, metadata !351), !dbg !1774
  %add.ptr1893.sum = shl nsw i64 %idx.ext1892, 1, !dbg !1775
  %add.ptr1896 = getelementptr inbounds double* %rowL01097.14616, i64 %add.ptr1893.sum, !dbg !1775
  call void @llvm.dbg.value(metadata !{double* %add.ptr1896}, i64 0, metadata !352), !dbg !1775
  %add.ptr1899 = getelementptr inbounds double* %colU01089.14615, i64 %idx.ext1892, !dbg !1776
  call void @llvm.dbg.value(metadata !{double* %add.ptr1899}, i64 0, metadata !343), !dbg !1776
  %add.ptr1902 = getelementptr inbounds double* %colU01089.14615, i64 %add.ptr1893.sum, !dbg !1777
  call void @llvm.dbg.value(metadata !{double* %add.ptr1902}, i64 0, metadata !344), !dbg !1777
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1778
  %597 = load i32** %colindU, align 8, !dbg !1778, !tbaa !419
  %arrayidx1904 = getelementptr inbounds i32* %597, i64 %indvars.iv4730, !dbg !1778
  %598 = load i32* %arrayidx1904, align 4, !dbg !1778, !tbaa !424
  %mul1905 = shl nsw i32 %598, 1, !dbg !1778
  call void @llvm.dbg.value(metadata !{i32 %mul1905}, i64 0, metadata !364), !dbg !1778
  %599 = add nsw i64 %indvars.iv4730, 1, !dbg !1779
  %arrayidx1908 = getelementptr inbounds i32* %597, i64 %599, !dbg !1779
  %600 = load i32* %arrayidx1908, align 4, !dbg !1779, !tbaa !424
  %mul1909 = shl nsw i32 %600, 1, !dbg !1779
  call void @llvm.dbg.value(metadata !{i32 %mul1909}, i64 0, metadata !365), !dbg !1779
  %601 = add nsw i64 %indvars.iv4730, 2, !dbg !1780
  %arrayidx1912 = getelementptr inbounds i32* %597, i64 %601, !dbg !1780
  %602 = load i32* %arrayidx1912, align 4, !dbg !1780, !tbaa !424
  %mul1913 = shl nsw i32 %602, 1, !dbg !1780
  call void @llvm.dbg.value(metadata !{i32 %mul1913}, i64 0, metadata !366), !dbg !1780
  call void @ZVdotU23(i32 %596, double* %call1119, double* %add.ptr1122, double* %colU01089.14615, double* %add.ptr1899, double* %add.ptr1902, double* %arraydecay1845) #6, !dbg !1781
  %603 = load double* %arraydecay1845, align 16, !dbg !1782, !tbaa !500
  %idxprom1924 = sext i32 %mul1905 to i64, !dbg !1782
  %add.ptr1918.sum = sub i64 %idxprom1924, %idx.ext1916, !dbg !1782
  %arrayidx1925 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum, !dbg !1782
  %604 = load double* %arrayidx1925, align 8, !dbg !1782, !tbaa !500
  %sub1926 = fsub double %604, %603, !dbg !1782
  store double %sub1926, double* %arrayidx1925, align 8, !dbg !1782, !tbaa !500
  %605 = load double* %arrayidx1849, align 8, !dbg !1782, !tbaa !500
  %add19284363 = or i32 %mul1905, 1, !dbg !1782
  %idxprom1929 = sext i32 %add19284363 to i64, !dbg !1782
  %add.ptr1918.sum4364 = sub i64 %idxprom1929, %idx.ext1916, !dbg !1782
  %arrayidx1930 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4364, !dbg !1782
  %606 = load double* %arrayidx1930, align 8, !dbg !1782, !tbaa !500
  %sub1931 = fsub double %606, %605, !dbg !1782
  store double %sub1931, double* %arrayidx1930, align 8, !dbg !1782, !tbaa !500
  %607 = load double* %arrayidx1854, align 16, !dbg !1783, !tbaa !500
  %idxprom1933 = sext i32 %mul1909 to i64, !dbg !1783
  %add.ptr1918.sum4365 = sub i64 %idxprom1933, %idx.ext1916, !dbg !1783
  %arrayidx1934 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4365, !dbg !1783
  %608 = load double* %arrayidx1934, align 8, !dbg !1783, !tbaa !500
  %sub1935 = fsub double %608, %607, !dbg !1783
  store double %sub1935, double* %arrayidx1934, align 8, !dbg !1783, !tbaa !500
  %609 = load double* %arrayidx1858, align 8, !dbg !1783, !tbaa !500
  %add19374366 = or i32 %mul1909, 1, !dbg !1783
  %idxprom1938 = sext i32 %add19374366 to i64, !dbg !1783
  %add.ptr1918.sum4367 = sub i64 %idxprom1938, %idx.ext1916, !dbg !1783
  %arrayidx1939 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4367, !dbg !1783
  %610 = load double* %arrayidx1939, align 8, !dbg !1783, !tbaa !500
  %sub1940 = fsub double %610, %609, !dbg !1783
  store double %sub1940, double* %arrayidx1939, align 8, !dbg !1783, !tbaa !500
  %611 = load double* %arrayidx1863, align 16, !dbg !1784, !tbaa !500
  %idxprom1942 = sext i32 %mul1913 to i64, !dbg !1784
  %add.ptr1918.sum4368 = sub i64 %idxprom1942, %idx.ext1916, !dbg !1784
  %arrayidx1943 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4368, !dbg !1784
  %612 = load double* %arrayidx1943, align 8, !dbg !1784, !tbaa !500
  %sub1944 = fsub double %612, %611, !dbg !1784
  store double %sub1944, double* %arrayidx1943, align 8, !dbg !1784, !tbaa !500
  %613 = load double* %arrayidx1868, align 8, !dbg !1784, !tbaa !500
  %add19464369 = or i32 %mul1913, 1, !dbg !1784
  %idxprom1947 = sext i32 %add19464369 to i64, !dbg !1784
  %add.ptr1918.sum4370 = sub i64 %idxprom1947, %idx.ext1916, !dbg !1784
  %arrayidx1948 = getelementptr inbounds double* %call1838, i64 %add.ptr1918.sum4370, !dbg !1784
  %614 = load double* %arrayidx1948, align 8, !dbg !1784, !tbaa !500
  %sub1949 = fsub double %614, %613, !dbg !1784
  store double %sub1949, double* %arrayidx1948, align 8, !dbg !1784, !tbaa !500
  %615 = load double* %arrayidx1874, align 16, !dbg !1785, !tbaa !500
  %add.ptr1922.sum = sub i64 %idxprom1924, %idx.ext1920, !dbg !1785
  %arrayidx1952 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum, !dbg !1785
  %616 = load double* %arrayidx1952, align 8, !dbg !1785, !tbaa !500
  %sub1953 = fsub double %616, %615, !dbg !1785
  store double %sub1953, double* %arrayidx1952, align 8, !dbg !1785, !tbaa !500
  %617 = load double* %arrayidx1877, align 8, !dbg !1785, !tbaa !500
  %add.ptr1922.sum4371 = sub i64 %idxprom1929, %idx.ext1920, !dbg !1785
  %arrayidx1957 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4371, !dbg !1785
  %618 = load double* %arrayidx1957, align 8, !dbg !1785, !tbaa !500
  %sub1958 = fsub double %618, %617, !dbg !1785
  store double %sub1958, double* %arrayidx1957, align 8, !dbg !1785, !tbaa !500
  %619 = load double* %arrayidx1959, align 16, !dbg !1772, !tbaa !500
  %add.ptr1922.sum4372 = sub i64 %idxprom1933, %idx.ext1920, !dbg !1772
  %arrayidx1961 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4372, !dbg !1772
  %620 = load double* %arrayidx1961, align 8, !dbg !1772, !tbaa !500
  %sub1962 = fsub double %620, %619, !dbg !1772
  store double %sub1962, double* %arrayidx1961, align 8, !dbg !1772, !tbaa !500
  %621 = load double* %arrayidx1963, align 8, !dbg !1772, !tbaa !500
  %add.ptr1922.sum4373 = sub i64 %idxprom1938, %idx.ext1920, !dbg !1772
  %arrayidx1966 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4373, !dbg !1772
  %622 = load double* %arrayidx1966, align 8, !dbg !1772, !tbaa !500
  %sub1967 = fsub double %622, %621, !dbg !1772
  store double %sub1967, double* %arrayidx1966, align 8, !dbg !1772, !tbaa !500
  %623 = load double* %arrayidx1968, align 16, !dbg !1773, !tbaa !500
  %add.ptr1922.sum4374 = sub i64 %idxprom1942, %idx.ext1920, !dbg !1773
  %arrayidx1970 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4374, !dbg !1773
  %624 = load double* %arrayidx1970, align 8, !dbg !1773, !tbaa !500
  %sub1971 = fsub double %624, %623, !dbg !1773
  store double %sub1971, double* %arrayidx1970, align 8, !dbg !1773, !tbaa !500
  %625 = load double* %arrayidx1972, align 8, !dbg !1773, !tbaa !500
  %add.ptr1922.sum4375 = sub i64 %idxprom1947, %idx.ext1920, !dbg !1773
  %arrayidx1975 = getelementptr inbounds double* %call1842, i64 %add.ptr1922.sum4375, !dbg !1773
  %626 = load double* %arrayidx1975, align 8, !dbg !1773, !tbaa !500
  %sub1976 = fsub double %626, %625, !dbg !1773
  store double %sub1976, double* %arrayidx1975, align 8, !dbg !1773, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1838}, i64 0, metadata !339), !dbg !1786
  call void @llvm.dbg.value(metadata !{double* %call1842}, i64 0, metadata !340), !dbg !1787
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1788
  %627 = load i32* %nrowU1116, align 4, !dbg !1788, !tbaa !424
  call void @ZVdotU32(i32 %627, double* %rowL01097.14616, double* %add.ptr1893, double* %add.ptr1896, double* %add.ptr1128, double* %add.ptr1131, double* %arraydecay1845) #6, !dbg !1788
  %628 = load double* %arraydecay1845, align 16, !dbg !1789, !tbaa !500
  %sub1991 = sub nsw i32 0, %mul1905, !dbg !1789
  %idxprom1992 = sext i32 %sub1991 to i64, !dbg !1789
  %add.ptr1986.sum = add i64 %idxprom1992, %idx.ext1916, !dbg !1789
  %arrayidx1993 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum, !dbg !1789
  %629 = load double* %arrayidx1993, align 8, !dbg !1789, !tbaa !500
  %sub1994 = fsub double %629, %628, !dbg !1789
  store double %sub1994, double* %arrayidx1993, align 8, !dbg !1789, !tbaa !500
  %630 = load double* %arrayidx1849, align 8, !dbg !1789, !tbaa !500
  %add19974378 = or i32 %sub1991, 1, !dbg !1789
  %idxprom1998 = sext i32 %add19974378 to i64, !dbg !1789
  %add.ptr1986.sum4379 = add i64 %idxprom1998, %idx.ext1916, !dbg !1789
  %arrayidx1999 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4379, !dbg !1789
  %631 = load double* %arrayidx1999, align 8, !dbg !1789, !tbaa !500
  %sub2000 = fsub double %631, %630, !dbg !1789
  store double %sub2000, double* %arrayidx1999, align 8, !dbg !1789, !tbaa !500
  %632 = load double* %arrayidx1854, align 16, !dbg !1790, !tbaa !500
  %add.ptr1989.sum = add i64 %idxprom1992, %idx.ext1920, !dbg !1790
  %arrayidx2004 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum, !dbg !1790
  %633 = load double* %arrayidx2004, align 8, !dbg !1790, !tbaa !500
  %sub2005 = fsub double %633, %632, !dbg !1790
  store double %sub2005, double* %arrayidx2004, align 8, !dbg !1790, !tbaa !500
  %634 = load double* %arrayidx1858, align 8, !dbg !1790, !tbaa !500
  %add.ptr1989.sum4380 = add i64 %idxprom1998, %idx.ext1920, !dbg !1790
  %arrayidx2010 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4380, !dbg !1790
  %635 = load double* %arrayidx2010, align 8, !dbg !1790, !tbaa !500
  %sub2011 = fsub double %635, %634, !dbg !1790
  store double %sub2011, double* %arrayidx2010, align 8, !dbg !1790, !tbaa !500
  %636 = load double* %arrayidx1863, align 16, !dbg !1791, !tbaa !500
  %sub2013 = sub nsw i32 0, %mul1909, !dbg !1791
  %idxprom2014 = sext i32 %sub2013 to i64, !dbg !1791
  %add.ptr1986.sum4381 = add i64 %idxprom2014, %idx.ext1916, !dbg !1791
  %arrayidx2015 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4381, !dbg !1791
  %637 = load double* %arrayidx2015, align 8, !dbg !1791, !tbaa !500
  %sub2016 = fsub double %637, %636, !dbg !1791
  store double %sub2016, double* %arrayidx2015, align 8, !dbg !1791, !tbaa !500
  %638 = load double* %arrayidx1868, align 8, !dbg !1791, !tbaa !500
  %add20194382 = or i32 %sub2013, 1, !dbg !1791
  %idxprom2020 = sext i32 %add20194382 to i64, !dbg !1791
  %add.ptr1986.sum4383 = add i64 %idxprom2020, %idx.ext1916, !dbg !1791
  %arrayidx2021 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4383, !dbg !1791
  %639 = load double* %arrayidx2021, align 8, !dbg !1791, !tbaa !500
  %sub2022 = fsub double %639, %638, !dbg !1791
  store double %sub2022, double* %arrayidx2021, align 8, !dbg !1791, !tbaa !500
  %640 = load double* %arrayidx1874, align 16, !dbg !1792, !tbaa !500
  %add.ptr1989.sum4384 = add i64 %idxprom2014, %idx.ext1920, !dbg !1792
  %arrayidx2026 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4384, !dbg !1792
  %641 = load double* %arrayidx2026, align 8, !dbg !1792, !tbaa !500
  %sub2027 = fsub double %641, %640, !dbg !1792
  store double %sub2027, double* %arrayidx2026, align 8, !dbg !1792, !tbaa !500
  %642 = load double* %arrayidx1877, align 8, !dbg !1792, !tbaa !500
  %add.ptr1989.sum4385 = add i64 %idxprom2020, %idx.ext1920, !dbg !1792
  %arrayidx2032 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4385, !dbg !1792
  %643 = load double* %arrayidx2032, align 8, !dbg !1792, !tbaa !500
  %sub2033 = fsub double %643, %642, !dbg !1792
  store double %sub2033, double* %arrayidx2032, align 8, !dbg !1792, !tbaa !500
  %644 = load double* %arrayidx1959, align 16, !dbg !1793, !tbaa !500
  %sub2035 = sub nsw i32 0, %mul1913, !dbg !1793
  %idxprom2036 = sext i32 %sub2035 to i64, !dbg !1793
  %add.ptr1986.sum4386 = add i64 %idxprom2036, %idx.ext1916, !dbg !1793
  %arrayidx2037 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4386, !dbg !1793
  %645 = load double* %arrayidx2037, align 8, !dbg !1793, !tbaa !500
  %sub2038 = fsub double %645, %644, !dbg !1793
  store double %sub2038, double* %arrayidx2037, align 8, !dbg !1793, !tbaa !500
  %646 = load double* %arrayidx1963, align 8, !dbg !1793, !tbaa !500
  %add20414387 = or i32 %sub2035, 1, !dbg !1793
  %idxprom2042 = sext i32 %add20414387 to i64, !dbg !1793
  %add.ptr1986.sum4388 = add i64 %idxprom2042, %idx.ext1916, !dbg !1793
  %arrayidx2043 = getelementptr inbounds double* %call1838, i64 %add.ptr1986.sum4388, !dbg !1793
  %647 = load double* %arrayidx2043, align 8, !dbg !1793, !tbaa !500
  %sub2044 = fsub double %647, %646, !dbg !1793
  store double %sub2044, double* %arrayidx2043, align 8, !dbg !1793, !tbaa !500
  %648 = load double* %arrayidx1968, align 16, !dbg !1794, !tbaa !500
  %add.ptr1989.sum4389 = add i64 %idxprom2036, %idx.ext1920, !dbg !1794
  %arrayidx2048 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4389, !dbg !1794
  %649 = load double* %arrayidx2048, align 8, !dbg !1794, !tbaa !500
  %sub2049 = fsub double %649, %648, !dbg !1794
  store double %sub2049, double* %arrayidx2048, align 8, !dbg !1794, !tbaa !500
  %650 = load double* %arrayidx1972, align 8, !dbg !1794, !tbaa !500
  %add.ptr1989.sum4390 = add i64 %idxprom2042, %idx.ext1920, !dbg !1794
  %arrayidx2054 = getelementptr inbounds double* %call1842, i64 %add.ptr1989.sum4390, !dbg !1794
  %651 = load double* %arrayidx2054, align 8, !dbg !1794, !tbaa !500
  %sub2055 = fsub double %651, %650, !dbg !1794
  store double %sub2055, double* %arrayidx2054, align 8, !dbg !1794, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1838}, i64 0, metadata !339), !dbg !1795
  call void @llvm.dbg.value(metadata !{double* %call1842}, i64 0, metadata !340), !dbg !1796
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1797
  %652 = load i32* %nrowU1116, align 4, !dbg !1797, !tbaa !424
  %mul2064 = shl nsw i32 %652, 1, !dbg !1797
  %idx.ext2065 = sext i32 %mul2064 to i64, !dbg !1797
  %add.ptr1896.sum = add i64 %idx.ext2065, %add.ptr1893.sum, !dbg !1797
  %add.ptr2066 = getelementptr inbounds double* %rowL01097.14616, i64 %add.ptr1896.sum, !dbg !1797
  call void @llvm.dbg.value(metadata !{double* %add.ptr2066}, i64 0, metadata !350), !dbg !1797
  %add.ptr2069 = getelementptr inbounds double* %colU01089.14615, i64 %add.ptr1896.sum, !dbg !1798
  call void @llvm.dbg.value(metadata !{double* %add.ptr2069}, i64 0, metadata !342), !dbg !1798
  %add2071 = add nsw i32 %jcolU1109.14617, 3, !dbg !1767
  call void @llvm.dbg.value(metadata !{i32 %add2071}, i64 0, metadata !362), !dbg !1767
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1767
  %653 = load i32* %ncolU, align 4, !dbg !1767, !tbaa !424
  %sub1888 = add nsw i32 %653, -2, !dbg !1767
  %cmp1889 = icmp slt i32 %add2071, %sub1888, !dbg !1767
  %indvars.iv.next4731 = add i64 %indvars.iv4730, 3, !dbg !1767
  br i1 %cmp1889, label %for.body1890, label %for.end2072, !dbg !1767

for.end2072:                                      ; preds = %for.body1890, %if.then1823
  %654 = phi i32 [ %593, %if.then1823 ], [ %652, %for.body1890 ]
  %sub1888.lcssa = phi i32 [ %sub18884613, %if.then1823 ], [ %sub1888, %for.body1890 ]
  %.lcssa4612 = phi i32 [ %594, %if.then1823 ], [ %653, %for.body1890 ]
  %jcolU1109.1.lcssa = phi i32 [ %add1886, %if.then1823 ], [ %add2071, %for.body1890 ]
  %rowL01097.1.lcssa = phi double* [ %add.ptr1882, %if.then1823 ], [ %add.ptr2066, %for.body1890 ]
  %colU01089.1.lcssa = phi double* [ %add.ptr1885, %if.then1823 ], [ %add.ptr2069, %for.body1890 ]
  %cmp2074 = icmp eq i32 %jcolU1109.1.lcssa, %sub1888.lcssa, !dbg !1799
  br i1 %cmp2074, label %if.then2075, label %if.else2199, !dbg !1799

if.then2075:                                      ; preds = %for.end2072
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1800
  %mul2076 = shl nsw i32 %654, 1, !dbg !1800
  %idx.ext2077 = sext i32 %mul2076 to i64, !dbg !1800
  %add.ptr2078 = getelementptr inbounds double* %rowL01097.1.lcssa, i64 %idx.ext2077, !dbg !1800
  call void @llvm.dbg.value(metadata !{double* %add.ptr2078}, i64 0, metadata !351), !dbg !1800
  %add.ptr2081 = getelementptr inbounds double* %colU01089.1.lcssa, i64 %idx.ext2077, !dbg !1802
  call void @llvm.dbg.value(metadata !{double* %add.ptr2081}, i64 0, metadata !343), !dbg !1802
  %idxprom2082 = sext i32 %sub1888.lcssa to i64, !dbg !1803
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1803
  %655 = load i32** %colindU, align 8, !dbg !1803, !tbaa !419
  %arrayidx2083 = getelementptr inbounds i32* %655, i64 %idxprom2082, !dbg !1803
  %656 = load i32* %arrayidx2083, align 4, !dbg !1803, !tbaa !424
  %mul2084 = shl nsw i32 %656, 1, !dbg !1803
  call void @llvm.dbg.value(metadata !{i32 %mul2084}, i64 0, metadata !364), !dbg !1803
  %add2085 = add nsw i32 %sub1888.lcssa, 1, !dbg !1804
  %idxprom2086 = sext i32 %add2085 to i64, !dbg !1804
  %arrayidx2087 = getelementptr inbounds i32* %655, i64 %idxprom2086, !dbg !1804
  %657 = load i32* %arrayidx2087, align 4, !dbg !1804, !tbaa !424
  %mul2088 = shl nsw i32 %657, 1, !dbg !1804
  call void @llvm.dbg.value(metadata !{i32 %mul2088}, i64 0, metadata !365), !dbg !1804
  call void @ZVdotU22(i32 %654, double* %call1119, double* %add.ptr1122, double* %colU01089.1.lcssa, double* %add.ptr2081, double* %arraydecay1845) #6, !dbg !1805
  %mul2090 = shl nsw i32 %571, 1, !dbg !1806
  %idx.ext2091 = sext i32 %mul2090 to i64, !dbg !1806
  %mul2094 = shl nsw i32 %573, 1, !dbg !1807
  %idx.ext2095 = sext i32 %mul2094 to i64, !dbg !1807
  %658 = load double* %arraydecay1845, align 16, !dbg !1808, !tbaa !500
  %idxprom2099 = sext i32 %mul2084 to i64, !dbg !1808
  %add.ptr2093.sum = sub i64 %idxprom2099, %idx.ext2091, !dbg !1808
  %arrayidx2100 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum, !dbg !1808
  %659 = load double* %arrayidx2100, align 8, !dbg !1808, !tbaa !500
  %sub2101 = fsub double %659, %658, !dbg !1808
  store double %sub2101, double* %arrayidx2100, align 8, !dbg !1808, !tbaa !500
  %660 = load double* %arrayidx1849, align 8, !dbg !1808, !tbaa !500
  %add21034345 = or i32 %mul2084, 1, !dbg !1808
  %idxprom2104 = sext i32 %add21034345 to i64, !dbg !1808
  %add.ptr2093.sum4346 = sub i64 %idxprom2104, %idx.ext2091, !dbg !1808
  %arrayidx2105 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum4346, !dbg !1808
  %661 = load double* %arrayidx2105, align 8, !dbg !1808, !tbaa !500
  %sub2106 = fsub double %661, %660, !dbg !1808
  store double %sub2106, double* %arrayidx2105, align 8, !dbg !1808, !tbaa !500
  %662 = load double* %arrayidx1854, align 16, !dbg !1809, !tbaa !500
  %idxprom2108 = sext i32 %mul2088 to i64, !dbg !1809
  %add.ptr2093.sum4347 = sub i64 %idxprom2108, %idx.ext2091, !dbg !1809
  %arrayidx2109 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum4347, !dbg !1809
  %663 = load double* %arrayidx2109, align 8, !dbg !1809, !tbaa !500
  %sub2110 = fsub double %663, %662, !dbg !1809
  store double %sub2110, double* %arrayidx2109, align 8, !dbg !1809, !tbaa !500
  %664 = load double* %arrayidx1858, align 8, !dbg !1809, !tbaa !500
  %add21124348 = or i32 %mul2088, 1, !dbg !1809
  %idxprom2113 = sext i32 %add21124348 to i64, !dbg !1809
  %add.ptr2093.sum4349 = sub i64 %idxprom2113, %idx.ext2091, !dbg !1809
  %arrayidx2114 = getelementptr inbounds double* %call1838, i64 %add.ptr2093.sum4349, !dbg !1809
  %665 = load double* %arrayidx2114, align 8, !dbg !1809, !tbaa !500
  %sub2115 = fsub double %665, %664, !dbg !1809
  store double %sub2115, double* %arrayidx2114, align 8, !dbg !1809, !tbaa !500
  %666 = load double* %arrayidx1863, align 16, !dbg !1810, !tbaa !500
  %add.ptr2097.sum = sub i64 %idxprom2099, %idx.ext2095, !dbg !1810
  %arrayidx2118 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum, !dbg !1810
  %667 = load double* %arrayidx2118, align 8, !dbg !1810, !tbaa !500
  %sub2119 = fsub double %667, %666, !dbg !1810
  store double %sub2119, double* %arrayidx2118, align 8, !dbg !1810, !tbaa !500
  %668 = load double* %arrayidx1868, align 8, !dbg !1810, !tbaa !500
  %add.ptr2097.sum4350 = sub i64 %idxprom2104, %idx.ext2095, !dbg !1810
  %arrayidx2123 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum4350, !dbg !1810
  %669 = load double* %arrayidx2123, align 8, !dbg !1810, !tbaa !500
  %sub2124 = fsub double %669, %668, !dbg !1810
  store double %sub2124, double* %arrayidx2123, align 8, !dbg !1810, !tbaa !500
  %670 = load double* %arrayidx1874, align 16, !dbg !1811, !tbaa !500
  %add.ptr2097.sum4351 = sub i64 %idxprom2108, %idx.ext2095, !dbg !1811
  %arrayidx2127 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum4351, !dbg !1811
  %671 = load double* %arrayidx2127, align 8, !dbg !1811, !tbaa !500
  %sub2128 = fsub double %671, %670, !dbg !1811
  store double %sub2128, double* %arrayidx2127, align 8, !dbg !1811, !tbaa !500
  %672 = load double* %arrayidx1877, align 8, !dbg !1811, !tbaa !500
  %add.ptr2097.sum4352 = sub i64 %idxprom2113, %idx.ext2095, !dbg !1811
  %arrayidx2132 = getelementptr inbounds double* %call1842, i64 %add.ptr2097.sum4352, !dbg !1811
  %673 = load double* %arrayidx2132, align 8, !dbg !1811, !tbaa !500
  %sub2133 = fsub double %673, %672, !dbg !1811
  store double %sub2133, double* %arrayidx2132, align 8, !dbg !1811, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1838}, i64 0, metadata !339), !dbg !1812
  call void @llvm.dbg.value(metadata !{double* %call1842}, i64 0, metadata !340), !dbg !1813
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1814
  %674 = load i32* %nrowU1116, align 4, !dbg !1814, !tbaa !424
  call void @ZVdotU22(i32 %674, double* %rowL01097.1.lcssa, double* %add.ptr2078, double* %add.ptr1128, double* %add.ptr1131, double* %arraydecay1845) #6, !dbg !1814
  %675 = load double* %arraydecay1845, align 16, !dbg !1815, !tbaa !500
  %sub2148 = sub nsw i32 0, %mul2084, !dbg !1815
  %idxprom2149 = sext i32 %sub2148 to i64, !dbg !1815
  %add.ptr2143.sum = add i64 %idxprom2149, %idx.ext2091, !dbg !1815
  %arrayidx2150 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum, !dbg !1815
  %676 = load double* %arrayidx2150, align 8, !dbg !1815, !tbaa !500
  %sub2151 = fsub double %676, %675, !dbg !1815
  store double %sub2151, double* %arrayidx2150, align 8, !dbg !1815, !tbaa !500
  %677 = load double* %arrayidx1849, align 8, !dbg !1815, !tbaa !500
  %add21544355 = or i32 %sub2148, 1, !dbg !1815
  %idxprom2155 = sext i32 %add21544355 to i64, !dbg !1815
  %add.ptr2143.sum4356 = add i64 %idxprom2155, %idx.ext2091, !dbg !1815
  %arrayidx2156 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum4356, !dbg !1815
  %678 = load double* %arrayidx2156, align 8, !dbg !1815, !tbaa !500
  %sub2157 = fsub double %678, %677, !dbg !1815
  store double %sub2157, double* %arrayidx2156, align 8, !dbg !1815, !tbaa !500
  %679 = load double* %arrayidx1854, align 16, !dbg !1816, !tbaa !500
  %add.ptr2146.sum = add i64 %idxprom2149, %idx.ext2095, !dbg !1816
  %arrayidx2161 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum, !dbg !1816
  %680 = load double* %arrayidx2161, align 8, !dbg !1816, !tbaa !500
  %sub2162 = fsub double %680, %679, !dbg !1816
  store double %sub2162, double* %arrayidx2161, align 8, !dbg !1816, !tbaa !500
  %681 = load double* %arrayidx1858, align 8, !dbg !1816, !tbaa !500
  %add.ptr2146.sum4357 = add i64 %idxprom2155, %idx.ext2095, !dbg !1816
  %arrayidx2167 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum4357, !dbg !1816
  %682 = load double* %arrayidx2167, align 8, !dbg !1816, !tbaa !500
  %sub2168 = fsub double %682, %681, !dbg !1816
  store double %sub2168, double* %arrayidx2167, align 8, !dbg !1816, !tbaa !500
  %683 = load double* %arrayidx1863, align 16, !dbg !1817, !tbaa !500
  %sub2170 = sub nsw i32 0, %mul2088, !dbg !1817
  %idxprom2171 = sext i32 %sub2170 to i64, !dbg !1817
  %add.ptr2143.sum4358 = add i64 %idxprom2171, %idx.ext2091, !dbg !1817
  %arrayidx2172 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum4358, !dbg !1817
  %684 = load double* %arrayidx2172, align 8, !dbg !1817, !tbaa !500
  %sub2173 = fsub double %684, %683, !dbg !1817
  store double %sub2173, double* %arrayidx2172, align 8, !dbg !1817, !tbaa !500
  %685 = load double* %arrayidx1868, align 8, !dbg !1817, !tbaa !500
  %add21764359 = or i32 %sub2170, 1, !dbg !1817
  %idxprom2177 = sext i32 %add21764359 to i64, !dbg !1817
  %add.ptr2143.sum4360 = add i64 %idxprom2177, %idx.ext2091, !dbg !1817
  %arrayidx2178 = getelementptr inbounds double* %call1838, i64 %add.ptr2143.sum4360, !dbg !1817
  %686 = load double* %arrayidx2178, align 8, !dbg !1817, !tbaa !500
  %sub2179 = fsub double %686, %685, !dbg !1817
  store double %sub2179, double* %arrayidx2178, align 8, !dbg !1817, !tbaa !500
  %687 = load double* %arrayidx1874, align 16, !dbg !1818, !tbaa !500
  %add.ptr2146.sum4361 = add i64 %idxprom2171, %idx.ext2095, !dbg !1818
  %arrayidx2183 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum4361, !dbg !1818
  %688 = load double* %arrayidx2183, align 8, !dbg !1818, !tbaa !500
  %sub2184 = fsub double %688, %687, !dbg !1818
  store double %sub2184, double* %arrayidx2183, align 8, !dbg !1818, !tbaa !500
  %689 = load double* %arrayidx1877, align 8, !dbg !1818, !tbaa !500
  %add.ptr2146.sum4362 = add i64 %idxprom2177, %idx.ext2095, !dbg !1818
  %arrayidx2189 = getelementptr inbounds double* %call1842, i64 %add.ptr2146.sum4362, !dbg !1818
  %690 = load double* %arrayidx2189, align 8, !dbg !1818, !tbaa !500
  %sub2190 = fsub double %690, %689, !dbg !1818
  store double %sub2190, double* %arrayidx2189, align 8, !dbg !1818, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1819

if.else2199:                                      ; preds = %for.end2072
  %sub2200 = add nsw i32 %.lcssa4612, -1, !dbg !1820
  %cmp2201 = icmp eq i32 %jcolU1109.1.lcssa, %sub2200, !dbg !1820
  br i1 %cmp2201, label %if.then2202, label %for.cond2785.preheader, !dbg !1820

if.then2202:                                      ; preds = %if.else2199
  %idxprom2203 = sext i32 %jcolU1109.1.lcssa to i64, !dbg !1821
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1821
  %691 = load i32** %colindU, align 8, !dbg !1821, !tbaa !419
  %arrayidx2204 = getelementptr inbounds i32* %691, i64 %idxprom2203, !dbg !1821
  %692 = load i32* %arrayidx2204, align 4, !dbg !1821, !tbaa !424
  %mul2205 = shl nsw i32 %692, 1, !dbg !1821
  call void @llvm.dbg.value(metadata !{i32 %mul2205}, i64 0, metadata !364), !dbg !1821
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1823
  call void @ZVdotU21(i32 %654, double* %call1119, double* %add.ptr1122, double* %colU01089.1.lcssa, double* %arraydecay1845) #6, !dbg !1823
  %mul2207 = shl nsw i32 %571, 1, !dbg !1824
  %idx.ext2208 = sext i32 %mul2207 to i64, !dbg !1824
  %mul2211 = shl nsw i32 %573, 1, !dbg !1825
  %idx.ext2212 = sext i32 %mul2211 to i64, !dbg !1825
  %693 = load double* %arraydecay1845, align 16, !dbg !1826, !tbaa !500
  %idxprom2216 = sext i32 %mul2205 to i64, !dbg !1826
  %add.ptr2210.sum = sub i64 %idxprom2216, %idx.ext2208, !dbg !1826
  %arrayidx2217 = getelementptr inbounds double* %call1838, i64 %add.ptr2210.sum, !dbg !1826
  %694 = load double* %arrayidx2217, align 8, !dbg !1826, !tbaa !500
  %sub2218 = fsub double %694, %693, !dbg !1826
  store double %sub2218, double* %arrayidx2217, align 8, !dbg !1826, !tbaa !500
  %695 = load double* %arrayidx1849, align 8, !dbg !1826, !tbaa !500
  %add22204337 = or i32 %mul2205, 1, !dbg !1826
  %idxprom2221 = sext i32 %add22204337 to i64, !dbg !1826
  %add.ptr2210.sum4338 = sub i64 %idxprom2221, %idx.ext2208, !dbg !1826
  %arrayidx2222 = getelementptr inbounds double* %call1838, i64 %add.ptr2210.sum4338, !dbg !1826
  %696 = load double* %arrayidx2222, align 8, !dbg !1826, !tbaa !500
  %sub2223 = fsub double %696, %695, !dbg !1826
  store double %sub2223, double* %arrayidx2222, align 8, !dbg !1826, !tbaa !500
  %697 = load double* %arrayidx1854, align 16, !dbg !1827, !tbaa !500
  %add.ptr2214.sum = sub i64 %idxprom2216, %idx.ext2212, !dbg !1827
  %arrayidx2226 = getelementptr inbounds double* %call1842, i64 %add.ptr2214.sum, !dbg !1827
  %698 = load double* %arrayidx2226, align 8, !dbg !1827, !tbaa !500
  %sub2227 = fsub double %698, %697, !dbg !1827
  store double %sub2227, double* %arrayidx2226, align 8, !dbg !1827, !tbaa !500
  %699 = load double* %arrayidx1858, align 8, !dbg !1827, !tbaa !500
  %add.ptr2214.sum4339 = sub i64 %idxprom2221, %idx.ext2212, !dbg !1827
  %arrayidx2231 = getelementptr inbounds double* %call1842, i64 %add.ptr2214.sum4339, !dbg !1827
  %700 = load double* %arrayidx2231, align 8, !dbg !1827, !tbaa !500
  %sub2232 = fsub double %700, %699, !dbg !1827
  store double %sub2232, double* %arrayidx2231, align 8, !dbg !1827, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call1838}, i64 0, metadata !339), !dbg !1828
  call void @llvm.dbg.value(metadata !{double* %call1842}, i64 0, metadata !340), !dbg !1829
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1830
  %701 = load i32* %nrowU1116, align 4, !dbg !1830, !tbaa !424
  call void @ZVdotU12(i32 %701, double* %rowL01097.1.lcssa, double* %add.ptr1128, double* %add.ptr1131, double* %arraydecay1845) #6, !dbg !1830
  %702 = load double* %arraydecay1845, align 16, !dbg !1831, !tbaa !500
  %sub2247 = sub nsw i32 0, %mul2205, !dbg !1831
  %idxprom2248 = sext i32 %sub2247 to i64, !dbg !1831
  %add.ptr2242.sum = add i64 %idxprom2248, %idx.ext2208, !dbg !1831
  %arrayidx2249 = getelementptr inbounds double* %call1838, i64 %add.ptr2242.sum, !dbg !1831
  %703 = load double* %arrayidx2249, align 8, !dbg !1831, !tbaa !500
  %sub2250 = fsub double %703, %702, !dbg !1831
  store double %sub2250, double* %arrayidx2249, align 8, !dbg !1831, !tbaa !500
  %704 = load double* %arrayidx1849, align 8, !dbg !1831, !tbaa !500
  %add22534342 = or i32 %sub2247, 1, !dbg !1831
  %idxprom2254 = sext i32 %add22534342 to i64, !dbg !1831
  %add.ptr2242.sum4343 = add i64 %idxprom2254, %idx.ext2208, !dbg !1831
  %arrayidx2255 = getelementptr inbounds double* %call1838, i64 %add.ptr2242.sum4343, !dbg !1831
  %705 = load double* %arrayidx2255, align 8, !dbg !1831, !tbaa !500
  %sub2256 = fsub double %705, %704, !dbg !1831
  store double %sub2256, double* %arrayidx2255, align 8, !dbg !1831, !tbaa !500
  %706 = load double* %arrayidx1854, align 16, !dbg !1832, !tbaa !500
  %add.ptr2245.sum = add i64 %idxprom2248, %idx.ext2212, !dbg !1832
  %arrayidx2260 = getelementptr inbounds double* %call1842, i64 %add.ptr2245.sum, !dbg !1832
  %707 = load double* %arrayidx2260, align 8, !dbg !1832, !tbaa !500
  %sub2261 = fsub double %707, %706, !dbg !1832
  store double %sub2261, double* %arrayidx2260, align 8, !dbg !1832, !tbaa !500
  %708 = load double* %arrayidx1858, align 8, !dbg !1832, !tbaa !500
  %add.ptr2245.sum4344 = add i64 %idxprom2254, %idx.ext2212, !dbg !1832
  %arrayidx2266 = getelementptr inbounds double* %call1842, i64 %add.ptr2245.sum4344, !dbg !1832
  %709 = load double* %arrayidx2266, align 8, !dbg !1832, !tbaa !500
  %sub2267 = fsub double %709, %708, !dbg !1832
  store double %sub2267, double* %arrayidx2266, align 8, !dbg !1832, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1833

if.else2278:                                      ; preds = %for.end1820
  %cmp2279 = icmp eq i32 %irowL1108.0.lcssa, %lastInU.0.lcssa4789, !dbg !1834
  br i1 %cmp2279, label %if.then2280, label %for.cond2785.preheader, !dbg !1834

if.then2280:                                      ; preds = %if.else2278
  call void @llvm.dbg.value(metadata !{double** %entL1092}, i64 0, metadata !345), !dbg !1835
  %710 = load double** %entL1092, align 8, !dbg !1835, !tbaa !419
  %mul2281 = shl nsw i32 %offset1117.0.lcssa, 1, !dbg !1835
  %idx.ext2282 = sext i32 %mul2281 to i64, !dbg !1835
  %add.ptr2283 = getelementptr inbounds double* %710, i64 %idx.ext2282, !dbg !1835
  call void @llvm.dbg.value(metadata !{double* %add.ptr2283}, i64 0, metadata !350), !dbg !1835
  call void @llvm.dbg.value(metadata !{double** %entU1093}, i64 0, metadata !346), !dbg !1837
  %711 = load double** %entU1093, align 8, !dbg !1837, !tbaa !419
  %add.ptr2286 = getelementptr inbounds double* %711, i64 %idx.ext2282, !dbg !1837
  call void @llvm.dbg.value(metadata !{double* %add.ptr2286}, i64 0, metadata !342), !dbg !1837
  %idxprom2287 = sext i32 %lastInU.0.lcssa4789 to i64, !dbg !1838
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1838
  %712 = load i32** %colindU, align 8, !dbg !1838, !tbaa !419
  %arrayidx2288 = getelementptr inbounds i32* %712, i64 %idxprom2287, !dbg !1838
  %713 = load i32* %arrayidx2288, align 4, !dbg !1838, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %713}, i64 0, metadata !356), !dbg !1838
  %call2289 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %713) #6, !dbg !1839
  call void @llvm.dbg.value(metadata !{double* %call2289}, i64 0, metadata !339), !dbg !1839
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1840
  %714 = load i32* %nrowU1116, align 4, !dbg !1840, !tbaa !424
  %mul2290 = shl nsw i32 %714, 1, !dbg !1840
  call void @DVzero(i32 %mul2290, double* %call1119) #6, !dbg !1840
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call1119, double* %add.ptr2283) #6, !dbg !1841
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1842
  %715 = load i32* %nrowU1116, align 4, !dbg !1842, !tbaa !424
  %mul2291 = shl nsw i32 %715, 1, !dbg !1842
  call void @DVzero(i32 %mul2291, double* %add.ptr1128) #6, !dbg !1842
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr1128, double* %add.ptr2286) #6, !dbg !1843
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1844
  %716 = load i32* %nrowU1116, align 4, !dbg !1844, !tbaa !424
  %arraydecay2292 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 0, !dbg !1844
  call void @ZVdotU11(i32 %716, double* %call1119, double* %add.ptr2286, double* %arraydecay2292) #6, !dbg !1844
  %717 = load double* %arraydecay2292, align 16, !dbg !1845, !tbaa !500
  %718 = load double* %call2289, align 8, !dbg !1845, !tbaa !500
  %sub2295 = fsub double %718, %717, !dbg !1845
  store double %sub2295, double* %call2289, align 8, !dbg !1845, !tbaa !500
  %arrayidx2296 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 1, !dbg !1845
  %719 = load double* %arrayidx2296, align 8, !dbg !1845, !tbaa !500
  %arrayidx2297 = getelementptr inbounds double* %call2289, i64 1, !dbg !1845
  %720 = load double* %arrayidx2297, align 8, !dbg !1845, !tbaa !500
  %sub2298 = fsub double %720, %719, !dbg !1845
  store double %sub2298, double* %arrayidx2297, align 8, !dbg !1845, !tbaa !500
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1846
  %721 = load i32* %nrowU1116, align 4, !dbg !1846, !tbaa !424
  %mul2299 = shl nsw i32 %721, 1, !dbg !1846
  %idx.ext2300 = sext i32 %mul2299 to i64, !dbg !1846
  %add.ptr2283.sum = add i64 %idx.ext2300, %idx.ext2282, !dbg !1846
  %add.ptr2301 = getelementptr inbounds double* %710, i64 %add.ptr2283.sum, !dbg !1846
  call void @llvm.dbg.value(metadata !{double* %add.ptr2301}, i64 0, metadata !350), !dbg !1846
  %add.ptr2304 = getelementptr inbounds double* %711, i64 %add.ptr2283.sum, !dbg !1847
  call void @llvm.dbg.value(metadata !{double* %add.ptr2304}, i64 0, metadata !342), !dbg !1847
  %add2305 = add i32 %lastInU.0.lcssa4789, 1, !dbg !1848
  call void @llvm.dbg.value(metadata !{i32 %add2305}, i64 0, metadata !362), !dbg !1848
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1848
  %722 = load i32* %ncolU, align 4, !dbg !1848, !tbaa !424
  %sub23074624 = add nsw i32 %722, -2, !dbg !1848
  %cmp23084625 = icmp slt i32 %add2305, %sub23074624, !dbg !1848
  br i1 %cmp23084625, label %for.body2309.lr.ph, label %for.end2417, !dbg !1848

for.body2309.lr.ph:                               ; preds = %if.then2280
  %mul2334 = shl nsw i32 %713, 1, !dbg !1850
  %idx.ext2335 = sext i32 %mul2334 to i64, !dbg !1850
  %arrayidx2347 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2, !dbg !1852
  %arrayidx2351 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3, !dbg !1852
  %arrayidx2356 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 4, !dbg !1853
  %arrayidx2360 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 5, !dbg !1853
  %723 = sext i32 %add2305 to i64
  br label %for.body2309, !dbg !1848

for.body2309:                                     ; preds = %for.body2309.lr.ph, %for.body2309
  %724 = phi i32 [ %721, %for.body2309.lr.ph ], [ %756, %for.body2309 ], !dbg !1854
  %indvars.iv4737 = phi i64 [ %723, %for.body2309.lr.ph ], [ %indvars.iv.next4738, %for.body2309 ]
  %jcolU1109.24628 = phi i32 [ %add2305, %for.body2309.lr.ph ], [ %add2416, %for.body2309 ]
  %rowL01097.24627 = phi double* [ %add.ptr2301, %for.body2309.lr.ph ], [ %add.ptr2411, %for.body2309 ]
  %colU01089.24626 = phi double* [ %add.ptr2304, %for.body2309.lr.ph ], [ %add.ptr2414, %for.body2309 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1854
  %mul2310 = shl nsw i32 %724, 1, !dbg !1854
  %idx.ext2311 = sext i32 %mul2310 to i64, !dbg !1854
  %add.ptr2312 = getelementptr inbounds double* %rowL01097.24627, i64 %idx.ext2311, !dbg !1854
  call void @llvm.dbg.value(metadata !{double* %add.ptr2312}, i64 0, metadata !351), !dbg !1854
  %add.ptr2312.sum = shl nsw i64 %idx.ext2311, 1, !dbg !1855
  %add.ptr2315 = getelementptr inbounds double* %rowL01097.24627, i64 %add.ptr2312.sum, !dbg !1855
  call void @llvm.dbg.value(metadata !{double* %add.ptr2315}, i64 0, metadata !352), !dbg !1855
  %add.ptr2318 = getelementptr inbounds double* %colU01089.24626, i64 %idx.ext2311, !dbg !1856
  call void @llvm.dbg.value(metadata !{double* %add.ptr2318}, i64 0, metadata !343), !dbg !1856
  %add.ptr2321 = getelementptr inbounds double* %colU01089.24626, i64 %add.ptr2312.sum, !dbg !1857
  call void @llvm.dbg.value(metadata !{double* %add.ptr2321}, i64 0, metadata !344), !dbg !1857
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1858
  %725 = load i32** %colindU, align 8, !dbg !1858, !tbaa !419
  %arrayidx2323 = getelementptr inbounds i32* %725, i64 %indvars.iv4737, !dbg !1858
  %726 = load i32* %arrayidx2323, align 4, !dbg !1858, !tbaa !424
  %mul2324 = shl nsw i32 %726, 1, !dbg !1858
  call void @llvm.dbg.value(metadata !{i32 %mul2324}, i64 0, metadata !364), !dbg !1858
  %727 = add nsw i64 %indvars.iv4737, 1, !dbg !1859
  %arrayidx2327 = getelementptr inbounds i32* %725, i64 %727, !dbg !1859
  %728 = load i32* %arrayidx2327, align 4, !dbg !1859, !tbaa !424
  %mul2328 = shl nsw i32 %728, 1, !dbg !1859
  call void @llvm.dbg.value(metadata !{i32 %mul2328}, i64 0, metadata !365), !dbg !1859
  %729 = add nsw i64 %indvars.iv4737, 2, !dbg !1860
  %arrayidx2331 = getelementptr inbounds i32* %725, i64 %729, !dbg !1860
  %730 = load i32* %arrayidx2331, align 4, !dbg !1860, !tbaa !424
  %mul2332 = shl nsw i32 %730, 1, !dbg !1860
  call void @llvm.dbg.value(metadata !{i32 %mul2332}, i64 0, metadata !366), !dbg !1860
  call void @ZVdotU13(i32 %724, double* %call1119, double* %colU01089.24626, double* %add.ptr2318, double* %add.ptr2321, double* %arraydecay2292) #6, !dbg !1861
  %731 = load double* %arraydecay2292, align 16, !dbg !1862, !tbaa !500
  %idxprom2339 = sext i32 %mul2324 to i64, !dbg !1862
  %add.ptr2337.sum = sub i64 %idxprom2339, %idx.ext2335, !dbg !1862
  %arrayidx2340 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum, !dbg !1862
  %732 = load double* %arrayidx2340, align 8, !dbg !1862, !tbaa !500
  %sub2341 = fsub double %732, %731, !dbg !1862
  store double %sub2341, double* %arrayidx2340, align 8, !dbg !1862, !tbaa !500
  %733 = load double* %arrayidx2296, align 8, !dbg !1862, !tbaa !500
  %add23434317 = or i32 %mul2324, 1, !dbg !1862
  %idxprom2344 = sext i32 %add23434317 to i64, !dbg !1862
  %add.ptr2337.sum4318 = sub i64 %idxprom2344, %idx.ext2335, !dbg !1862
  %arrayidx2345 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4318, !dbg !1862
  %734 = load double* %arrayidx2345, align 8, !dbg !1862, !tbaa !500
  %sub2346 = fsub double %734, %733, !dbg !1862
  store double %sub2346, double* %arrayidx2345, align 8, !dbg !1862, !tbaa !500
  %735 = load double* %arrayidx2347, align 16, !dbg !1852, !tbaa !500
  %idxprom2348 = sext i32 %mul2328 to i64, !dbg !1852
  %add.ptr2337.sum4319 = sub i64 %idxprom2348, %idx.ext2335, !dbg !1852
  %arrayidx2349 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4319, !dbg !1852
  %736 = load double* %arrayidx2349, align 8, !dbg !1852, !tbaa !500
  %sub2350 = fsub double %736, %735, !dbg !1852
  store double %sub2350, double* %arrayidx2349, align 8, !dbg !1852, !tbaa !500
  %737 = load double* %arrayidx2351, align 8, !dbg !1852, !tbaa !500
  %add23524320 = or i32 %mul2328, 1, !dbg !1852
  %idxprom2353 = sext i32 %add23524320 to i64, !dbg !1852
  %add.ptr2337.sum4321 = sub i64 %idxprom2353, %idx.ext2335, !dbg !1852
  %arrayidx2354 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4321, !dbg !1852
  %738 = load double* %arrayidx2354, align 8, !dbg !1852, !tbaa !500
  %sub2355 = fsub double %738, %737, !dbg !1852
  store double %sub2355, double* %arrayidx2354, align 8, !dbg !1852, !tbaa !500
  %739 = load double* %arrayidx2356, align 16, !dbg !1853, !tbaa !500
  %idxprom2357 = sext i32 %mul2332 to i64, !dbg !1853
  %add.ptr2337.sum4322 = sub i64 %idxprom2357, %idx.ext2335, !dbg !1853
  %arrayidx2358 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4322, !dbg !1853
  %740 = load double* %arrayidx2358, align 8, !dbg !1853, !tbaa !500
  %sub2359 = fsub double %740, %739, !dbg !1853
  store double %sub2359, double* %arrayidx2358, align 8, !dbg !1853, !tbaa !500
  %741 = load double* %arrayidx2360, align 8, !dbg !1853, !tbaa !500
  %add23614323 = or i32 %mul2332, 1, !dbg !1853
  %idxprom2362 = sext i32 %add23614323 to i64, !dbg !1853
  %add.ptr2337.sum4324 = sub i64 %idxprom2362, %idx.ext2335, !dbg !1853
  %arrayidx2363 = getelementptr inbounds double* %call2289, i64 %add.ptr2337.sum4324, !dbg !1853
  %742 = load double* %arrayidx2363, align 8, !dbg !1853, !tbaa !500
  %sub2364 = fsub double %742, %741, !dbg !1853
  store double %sub2364, double* %arrayidx2363, align 8, !dbg !1853, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call2289}, i64 0, metadata !339), !dbg !1863
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1864
  %743 = load i32* %nrowU1116, align 4, !dbg !1864, !tbaa !424
  call void @ZVdotU31(i32 %743, double* %rowL01097.24627, double* %add.ptr2312, double* %add.ptr2315, double* %add.ptr1128, double* %arraydecay2292) #6, !dbg !1864
  %744 = load double* %arraydecay2292, align 16, !dbg !1865, !tbaa !500
  %sub2373 = sub nsw i32 0, %mul2324, !dbg !1865
  %idxprom2374 = sext i32 %sub2373 to i64, !dbg !1865
  %add.ptr2371.sum = add i64 %idxprom2374, %idx.ext2335, !dbg !1865
  %arrayidx2375 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum, !dbg !1865
  %745 = load double* %arrayidx2375, align 8, !dbg !1865, !tbaa !500
  %sub2376 = fsub double %745, %744, !dbg !1865
  store double %sub2376, double* %arrayidx2375, align 8, !dbg !1865, !tbaa !500
  %746 = load double* %arrayidx2296, align 8, !dbg !1865, !tbaa !500
  %add23794326 = or i32 %sub2373, 1, !dbg !1865
  %idxprom2380 = sext i32 %add23794326 to i64, !dbg !1865
  %add.ptr2371.sum4327 = add i64 %idxprom2380, %idx.ext2335, !dbg !1865
  %arrayidx2381 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4327, !dbg !1865
  %747 = load double* %arrayidx2381, align 8, !dbg !1865, !tbaa !500
  %sub2382 = fsub double %747, %746, !dbg !1865
  store double %sub2382, double* %arrayidx2381, align 8, !dbg !1865, !tbaa !500
  %748 = load double* %arrayidx2347, align 16, !dbg !1866, !tbaa !500
  %sub2384 = sub nsw i32 0, %mul2328, !dbg !1866
  %idxprom2385 = sext i32 %sub2384 to i64, !dbg !1866
  %add.ptr2371.sum4328 = add i64 %idxprom2385, %idx.ext2335, !dbg !1866
  %arrayidx2386 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4328, !dbg !1866
  %749 = load double* %arrayidx2386, align 8, !dbg !1866, !tbaa !500
  %sub2387 = fsub double %749, %748, !dbg !1866
  store double %sub2387, double* %arrayidx2386, align 8, !dbg !1866, !tbaa !500
  %750 = load double* %arrayidx2351, align 8, !dbg !1866, !tbaa !500
  %add23904329 = or i32 %sub2384, 1, !dbg !1866
  %idxprom2391 = sext i32 %add23904329 to i64, !dbg !1866
  %add.ptr2371.sum4330 = add i64 %idxprom2391, %idx.ext2335, !dbg !1866
  %arrayidx2392 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4330, !dbg !1866
  %751 = load double* %arrayidx2392, align 8, !dbg !1866, !tbaa !500
  %sub2393 = fsub double %751, %750, !dbg !1866
  store double %sub2393, double* %arrayidx2392, align 8, !dbg !1866, !tbaa !500
  %752 = load double* %arrayidx2356, align 16, !dbg !1867, !tbaa !500
  %sub2395 = sub nsw i32 0, %mul2332, !dbg !1867
  %idxprom2396 = sext i32 %sub2395 to i64, !dbg !1867
  %add.ptr2371.sum4331 = add i64 %idxprom2396, %idx.ext2335, !dbg !1867
  %arrayidx2397 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4331, !dbg !1867
  %753 = load double* %arrayidx2397, align 8, !dbg !1867, !tbaa !500
  %sub2398 = fsub double %753, %752, !dbg !1867
  store double %sub2398, double* %arrayidx2397, align 8, !dbg !1867, !tbaa !500
  %754 = load double* %arrayidx2360, align 8, !dbg !1867, !tbaa !500
  %add24014332 = or i32 %sub2395, 1, !dbg !1867
  %idxprom2402 = sext i32 %add24014332 to i64, !dbg !1867
  %add.ptr2371.sum4333 = add i64 %idxprom2402, %idx.ext2335, !dbg !1867
  %arrayidx2403 = getelementptr inbounds double* %call2289, i64 %add.ptr2371.sum4333, !dbg !1867
  %755 = load double* %arrayidx2403, align 8, !dbg !1867, !tbaa !500
  %sub2404 = fsub double %755, %754, !dbg !1867
  store double %sub2404, double* %arrayidx2403, align 8, !dbg !1867, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call2289}, i64 0, metadata !339), !dbg !1868
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1869
  %756 = load i32* %nrowU1116, align 4, !dbg !1869, !tbaa !424
  %mul2409 = shl nsw i32 %756, 1, !dbg !1869
  %idx.ext2410 = sext i32 %mul2409 to i64, !dbg !1869
  %add.ptr2315.sum = add i64 %idx.ext2410, %add.ptr2312.sum, !dbg !1869
  %add.ptr2411 = getelementptr inbounds double* %rowL01097.24627, i64 %add.ptr2315.sum, !dbg !1869
  call void @llvm.dbg.value(metadata !{double* %add.ptr2411}, i64 0, metadata !350), !dbg !1869
  %add.ptr2414 = getelementptr inbounds double* %colU01089.24626, i64 %add.ptr2315.sum, !dbg !1870
  call void @llvm.dbg.value(metadata !{double* %add.ptr2414}, i64 0, metadata !342), !dbg !1870
  %add2416 = add nsw i32 %jcolU1109.24628, 3, !dbg !1848
  call void @llvm.dbg.value(metadata !{i32 %add2416}, i64 0, metadata !362), !dbg !1848
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1848
  %757 = load i32* %ncolU, align 4, !dbg !1848, !tbaa !424
  %sub2307 = add nsw i32 %757, -2, !dbg !1848
  %cmp2308 = icmp slt i32 %add2416, %sub2307, !dbg !1848
  %indvars.iv.next4738 = add i64 %indvars.iv4737, 3, !dbg !1848
  br i1 %cmp2308, label %for.body2309, label %for.end2417, !dbg !1848

for.end2417:                                      ; preds = %for.body2309, %if.then2280
  %758 = phi i32 [ %721, %if.then2280 ], [ %756, %for.body2309 ]
  %sub2307.lcssa = phi i32 [ %sub23074624, %if.then2280 ], [ %sub2307, %for.body2309 ]
  %.lcssa4623 = phi i32 [ %722, %if.then2280 ], [ %757, %for.body2309 ]
  %jcolU1109.2.lcssa = phi i32 [ %add2305, %if.then2280 ], [ %add2416, %for.body2309 ]
  %rowL01097.2.lcssa = phi double* [ %add.ptr2301, %if.then2280 ], [ %add.ptr2411, %for.body2309 ]
  %colU01089.2.lcssa = phi double* [ %add.ptr2304, %if.then2280 ], [ %add.ptr2414, %for.body2309 ]
  %cmp2419 = icmp eq i32 %jcolU1109.2.lcssa, %sub2307.lcssa, !dbg !1871
  br i1 %cmp2419, label %if.then2420, label %if.else2490, !dbg !1871

if.then2420:                                      ; preds = %for.end2417
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1872
  %mul2421 = shl nsw i32 %758, 1, !dbg !1872
  %idx.ext2422 = sext i32 %mul2421 to i64, !dbg !1872
  %add.ptr2423 = getelementptr inbounds double* %rowL01097.2.lcssa, i64 %idx.ext2422, !dbg !1872
  call void @llvm.dbg.value(metadata !{double* %add.ptr2423}, i64 0, metadata !351), !dbg !1872
  %add.ptr2426 = getelementptr inbounds double* %colU01089.2.lcssa, i64 %idx.ext2422, !dbg !1874
  call void @llvm.dbg.value(metadata !{double* %add.ptr2426}, i64 0, metadata !343), !dbg !1874
  %idxprom2427 = sext i32 %sub2307.lcssa to i64, !dbg !1875
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1875
  %759 = load i32** %colindU, align 8, !dbg !1875, !tbaa !419
  %arrayidx2428 = getelementptr inbounds i32* %759, i64 %idxprom2427, !dbg !1875
  %760 = load i32* %arrayidx2428, align 4, !dbg !1875, !tbaa !424
  %mul2429 = shl nsw i32 %760, 1, !dbg !1875
  call void @llvm.dbg.value(metadata !{i32 %mul2429}, i64 0, metadata !364), !dbg !1875
  %add2430 = add nsw i32 %sub2307.lcssa, 1, !dbg !1876
  %idxprom2431 = sext i32 %add2430 to i64, !dbg !1876
  %arrayidx2432 = getelementptr inbounds i32* %759, i64 %idxprom2431, !dbg !1876
  %761 = load i32* %arrayidx2432, align 4, !dbg !1876, !tbaa !424
  %mul2433 = shl nsw i32 %761, 1, !dbg !1876
  call void @llvm.dbg.value(metadata !{i32 %mul2433}, i64 0, metadata !365), !dbg !1876
  call void @ZVdotU12(i32 %758, double* %call1119, double* %colU01089.2.lcssa, double* %add.ptr2426, double* %arraydecay2292) #6, !dbg !1877
  %mul2435 = shl nsw i32 %713, 1, !dbg !1878
  %idx.ext2436 = sext i32 %mul2435 to i64, !dbg !1878
  %762 = load double* %arraydecay2292, align 16, !dbg !1879, !tbaa !500
  %idxprom2440 = sext i32 %mul2429 to i64, !dbg !1879
  %add.ptr2438.sum = sub i64 %idxprom2440, %idx.ext2436, !dbg !1879
  %arrayidx2441 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum, !dbg !1879
  %763 = load double* %arrayidx2441, align 8, !dbg !1879, !tbaa !500
  %sub2442 = fsub double %763, %762, !dbg !1879
  store double %sub2442, double* %arrayidx2441, align 8, !dbg !1879, !tbaa !500
  %764 = load double* %arrayidx2296, align 8, !dbg !1879, !tbaa !500
  %add24444306 = or i32 %mul2429, 1, !dbg !1879
  %idxprom2445 = sext i32 %add24444306 to i64, !dbg !1879
  %add.ptr2438.sum4307 = sub i64 %idxprom2445, %idx.ext2436, !dbg !1879
  %arrayidx2446 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum4307, !dbg !1879
  %765 = load double* %arrayidx2446, align 8, !dbg !1879, !tbaa !500
  %sub2447 = fsub double %765, %764, !dbg !1879
  store double %sub2447, double* %arrayidx2446, align 8, !dbg !1879, !tbaa !500
  %arrayidx2448 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 2, !dbg !1880
  %766 = load double* %arrayidx2448, align 16, !dbg !1880, !tbaa !500
  %idxprom2449 = sext i32 %mul2433 to i64, !dbg !1880
  %add.ptr2438.sum4308 = sub i64 %idxprom2449, %idx.ext2436, !dbg !1880
  %arrayidx2450 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum4308, !dbg !1880
  %767 = load double* %arrayidx2450, align 8, !dbg !1880, !tbaa !500
  %sub2451 = fsub double %767, %766, !dbg !1880
  store double %sub2451, double* %arrayidx2450, align 8, !dbg !1880, !tbaa !500
  %arrayidx2452 = getelementptr inbounds [18 x double]* %sums1085, i64 0, i64 3, !dbg !1880
  %768 = load double* %arrayidx2452, align 8, !dbg !1880, !tbaa !500
  %add24534309 = or i32 %mul2433, 1, !dbg !1880
  %idxprom2454 = sext i32 %add24534309 to i64, !dbg !1880
  %add.ptr2438.sum4310 = sub i64 %idxprom2454, %idx.ext2436, !dbg !1880
  %arrayidx2455 = getelementptr inbounds double* %call2289, i64 %add.ptr2438.sum4310, !dbg !1880
  %769 = load double* %arrayidx2455, align 8, !dbg !1880, !tbaa !500
  %sub2456 = fsub double %769, %768, !dbg !1880
  store double %sub2456, double* %arrayidx2455, align 8, !dbg !1880, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call2289}, i64 0, metadata !339), !dbg !1881
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1882
  %770 = load i32* %nrowU1116, align 4, !dbg !1882, !tbaa !424
  call void @ZVdotU21(i32 %770, double* %rowL01097.2.lcssa, double* %add.ptr2423, double* %add.ptr1128, double* %arraydecay2292) #6, !dbg !1882
  %771 = load double* %arraydecay2292, align 16, !dbg !1883, !tbaa !500
  %sub2465 = sub nsw i32 0, %mul2429, !dbg !1883
  %idxprom2466 = sext i32 %sub2465 to i64, !dbg !1883
  %add.ptr2463.sum = add i64 %idxprom2466, %idx.ext2436, !dbg !1883
  %arrayidx2467 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum, !dbg !1883
  %772 = load double* %arrayidx2467, align 8, !dbg !1883, !tbaa !500
  %sub2468 = fsub double %772, %771, !dbg !1883
  store double %sub2468, double* %arrayidx2467, align 8, !dbg !1883, !tbaa !500
  %773 = load double* %arrayidx2296, align 8, !dbg !1883, !tbaa !500
  %add24714312 = or i32 %sub2465, 1, !dbg !1883
  %idxprom2472 = sext i32 %add24714312 to i64, !dbg !1883
  %add.ptr2463.sum4313 = add i64 %idxprom2472, %idx.ext2436, !dbg !1883
  %arrayidx2473 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum4313, !dbg !1883
  %774 = load double* %arrayidx2473, align 8, !dbg !1883, !tbaa !500
  %sub2474 = fsub double %774, %773, !dbg !1883
  store double %sub2474, double* %arrayidx2473, align 8, !dbg !1883, !tbaa !500
  %775 = load double* %arrayidx2448, align 16, !dbg !1884, !tbaa !500
  %sub2476 = sub nsw i32 0, %mul2433, !dbg !1884
  %idxprom2477 = sext i32 %sub2476 to i64, !dbg !1884
  %add.ptr2463.sum4314 = add i64 %idxprom2477, %idx.ext2436, !dbg !1884
  %arrayidx2478 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum4314, !dbg !1884
  %776 = load double* %arrayidx2478, align 8, !dbg !1884, !tbaa !500
  %sub2479 = fsub double %776, %775, !dbg !1884
  store double %sub2479, double* %arrayidx2478, align 8, !dbg !1884, !tbaa !500
  %777 = load double* %arrayidx2452, align 8, !dbg !1884, !tbaa !500
  %add24824315 = or i32 %sub2476, 1, !dbg !1884
  %idxprom2483 = sext i32 %add24824315 to i64, !dbg !1884
  %add.ptr2463.sum4316 = add i64 %idxprom2483, %idx.ext2436, !dbg !1884
  %arrayidx2484 = getelementptr inbounds double* %call2289, i64 %add.ptr2463.sum4316, !dbg !1884
  %778 = load double* %arrayidx2484, align 8, !dbg !1884, !tbaa !500
  %sub2485 = fsub double %778, %777, !dbg !1884
  store double %sub2485, double* %arrayidx2484, align 8, !dbg !1884, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1885

if.else2490:                                      ; preds = %for.end2417
  %sub2491 = add nsw i32 %.lcssa4623, -1, !dbg !1886
  %cmp2492 = icmp eq i32 %jcolU1109.2.lcssa, %sub2491, !dbg !1886
  br i1 %cmp2492, label %if.then2493, label %for.cond2785.preheader, !dbg !1886

if.then2493:                                      ; preds = %if.else2490
  %idxprom2494 = sext i32 %jcolU1109.2.lcssa to i64, !dbg !1887
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1887
  %779 = load i32** %colindU, align 8, !dbg !1887, !tbaa !419
  %arrayidx2495 = getelementptr inbounds i32* %779, i64 %idxprom2494, !dbg !1887
  %780 = load i32* %arrayidx2495, align 4, !dbg !1887, !tbaa !424
  %mul2496 = shl nsw i32 %780, 1, !dbg !1887
  call void @llvm.dbg.value(metadata !{i32 %mul2496}, i64 0, metadata !364), !dbg !1887
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1889
  call void @ZVdotU11(i32 %758, double* %call1119, double* %colU01089.2.lcssa, double* %arraydecay2292) #6, !dbg !1889
  %mul2498 = shl nsw i32 %713, 1, !dbg !1890
  %idx.ext2499 = sext i32 %mul2498 to i64, !dbg !1890
  %781 = load double* %arraydecay2292, align 16, !dbg !1891, !tbaa !500
  %idxprom2503 = sext i32 %mul2496 to i64, !dbg !1891
  %add.ptr2501.sum = sub i64 %idxprom2503, %idx.ext2499, !dbg !1891
  %arrayidx2504 = getelementptr inbounds double* %call2289, i64 %add.ptr2501.sum, !dbg !1891
  %782 = load double* %arrayidx2504, align 8, !dbg !1891, !tbaa !500
  %sub2505 = fsub double %782, %781, !dbg !1891
  store double %sub2505, double* %arrayidx2504, align 8, !dbg !1891, !tbaa !500
  %783 = load double* %arrayidx2296, align 8, !dbg !1891, !tbaa !500
  %add25074301 = or i32 %mul2496, 1, !dbg !1891
  %idxprom2508 = sext i32 %add25074301 to i64, !dbg !1891
  %add.ptr2501.sum4302 = sub i64 %idxprom2508, %idx.ext2499, !dbg !1891
  %arrayidx2509 = getelementptr inbounds double* %call2289, i64 %add.ptr2501.sum4302, !dbg !1891
  %784 = load double* %arrayidx2509, align 8, !dbg !1891, !tbaa !500
  %sub2510 = fsub double %784, %783, !dbg !1891
  store double %sub2510, double* %arrayidx2509, align 8, !dbg !1891, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %call2289}, i64 0, metadata !339), !dbg !1892
  call void @llvm.dbg.value(metadata !{i32* %nrowU1116}, i64 0, metadata !369), !dbg !1893
  %785 = load i32* %nrowU1116, align 4, !dbg !1893, !tbaa !424
  call void @ZVdotU11(i32 %785, double* %rowL01097.2.lcssa, double* %add.ptr1128, double* %arraydecay2292) #6, !dbg !1893
  %786 = load double* %arraydecay2292, align 16, !dbg !1894, !tbaa !500
  %sub2519 = sub nsw i32 0, %mul2496, !dbg !1894
  %idxprom2520 = sext i32 %sub2519 to i64, !dbg !1894
  %add.ptr2517.sum = add i64 %idxprom2520, %idx.ext2499, !dbg !1894
  %arrayidx2521 = getelementptr inbounds double* %call2289, i64 %add.ptr2517.sum, !dbg !1894
  %787 = load double* %arrayidx2521, align 8, !dbg !1894, !tbaa !500
  %sub2522 = fsub double %787, %786, !dbg !1894
  store double %sub2522, double* %arrayidx2521, align 8, !dbg !1894, !tbaa !500
  %788 = load double* %arrayidx2296, align 8, !dbg !1894, !tbaa !500
  %add25254304 = or i32 %sub2519, 1, !dbg !1894
  %idxprom2526 = sext i32 %add25254304 to i64, !dbg !1894
  %add.ptr2517.sum4305 = add i64 %idxprom2526, %idx.ext2499, !dbg !1894
  %arrayidx2527 = getelementptr inbounds double* %call2289, i64 %add.ptr2517.sum4305, !dbg !1894
  %789 = load double* %arrayidx2527, align 8, !dbg !1894, !tbaa !500
  %sub2528 = fsub double %789, %788, !dbg !1894
  store double %sub2528, double* %arrayidx2527, align 8, !dbg !1894, !tbaa !500
  br label %for.cond2785.preheader, !dbg !1895

land.lhs.true2540:                                ; preds = %if.then1078
  %mode2541 = getelementptr inbounds %struct._SubMtx* %mtxL, i64 0, i32 1, !dbg !1896
  %790 = load i32* %mode2541, align 4, !dbg !1896, !tbaa !424
  %cmp2542 = icmp eq i32 %790, 2, !dbg !1896
  br i1 %cmp2542, label %if.then2543, label %if.else2779, !dbg !1896

if.then2543:                                      ; preds = %land.lhs.true2540
  call void @llvm.dbg.declare(metadata !{double* %imag}, metadata !371), !dbg !1897
  call void @llvm.dbg.declare(metadata !{double* %real}, metadata !373), !dbg !1897
  call void @llvm.dbg.declare(metadata !{double** %entL2547}, metadata !377), !dbg !1898
  call void @llvm.dbg.declare(metadata !{double** %entU2548}, metadata !378), !dbg !1898
  call void @llvm.dbg.declare(metadata !{i32* %ncolU2561}, metadata !391), !dbg !1899
  call void @llvm.dbg.declare(metadata !{i32* %nentL2562}, metadata !392), !dbg !1899
  call void @llvm.dbg.declare(metadata !{i32* %nentU2563}, metadata !393), !dbg !1900
  call void @llvm.dbg.declare(metadata !{i32* %nrowL2564}, metadata !394), !dbg !1900
  call void @llvm.dbg.declare(metadata !{i32** %indL2572}, metadata !402), !dbg !1901
  call void @llvm.dbg.declare(metadata !{i32** %indU2575}, metadata !405), !dbg !1901
  call void @llvm.dbg.declare(metadata !{i32** %sizesL2578}, metadata !408), !dbg !1902
  call void @llvm.dbg.declare(metadata !{i32** %sizesU2579}, metadata !409), !dbg !1902
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxU, i32* %ncolU2561, i32* %nentU2563, i32** %sizesU2579, i32** %indU2575, double** %entU2548) #6, !dbg !1903
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxL, i32* %nrowL2564, i32* %nentL2562, i32** %sizesL2578, i32** %indL2572, double** %entL2547) #6, !dbg !1904
  %nrow2580 = getelementptr inbounds %struct._SubMtx* %mtxU, i64 0, i32 4, !dbg !1905
  %791 = load i32* %nrow2580, align 4, !dbg !1905, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %791}, i64 0, metadata !395), !dbg !1905
  %mul2582 = mul nsw i32 %791, 6, !dbg !1906
  call void @DV_setSize(%struct._DV* %tempDV, i32 %mul2582) #6, !dbg !1906
  %call2583 = call double* @DV_entries(%struct._DV* %tempDV) #6, !dbg !1907
  call void @llvm.dbg.value(metadata !{double* %call2583}, i64 0, metadata !381), !dbg !1907
  %mul2584 = shl nsw i32 %791, 1, !dbg !1908
  %idx.ext2585 = sext i32 %mul2584 to i64, !dbg !1908
  %add.ptr2586 = getelementptr inbounds double* %call2583, i64 %idx.ext2585, !dbg !1908
  call void @llvm.dbg.value(metadata !{double* %add.ptr2586}, i64 0, metadata !382), !dbg !1908
  %add.ptr2586.sum = shl nsw i64 %idx.ext2585, 1, !dbg !1909
  %add.ptr2589 = getelementptr inbounds double* %call2583, i64 %add.ptr2586.sum, !dbg !1909
  call void @llvm.dbg.value(metadata !{double* %add.ptr2589}, i64 0, metadata !383), !dbg !1909
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !397), !dbg !1910
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !396), !dbg !1910
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !257), !dbg !1910
  %cmp25914664 = icmp sgt i32 %jcolU.0.lcssa, 0, !dbg !1910
  br i1 %cmp25914664, label %for.body2592.lr.ph, label %for.cond2602.preheader, !dbg !1910

for.body2592.lr.ph:                               ; preds = %if.then2543
  call void @llvm.dbg.value(metadata !{i32** %sizesL2578}, i64 0, metadata !408), !dbg !1912
  %792 = load i32** %sizesL2578, align 8, !dbg !1912, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %sizesU2579}, i64 0, metadata !409), !dbg !1914
  %793 = load i32** %sizesU2579, align 8, !dbg !1914, !tbaa !419
  br label %for.body2592, !dbg !1910

for.cond2602.preheader:                           ; preds = %for.body2592, %if.then2543
  %offsetU2567.0.lcssa = phi i32 [ 0, %if.then2543 ], [ %add2598, %for.body2592 ]
  %offsetL2566.0.lcssa = phi i32 [ 0, %if.then2543 ], [ %add2595, %for.body2592 ]
  %cmp26034659 = icmp sgt i32 %jcolU.0.lcssa, %lastInU.0.lcssa4789, !dbg !1915
  br i1 %cmp26034659, label %for.cond2785.preheader, label %for.body2604.lr.ph, !dbg !1915

for.body2604.lr.ph:                               ; preds = %for.cond2602.preheader
  %mul2628 = shl nsw i32 %791, 2, !dbg !1917
  %794 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body2604, !dbg !1915

for.body2592:                                     ; preds = %for.body2592, %for.body2592.lr.ph
  %indvars.iv4773 = phi i64 [ 0, %for.body2592.lr.ph ], [ %indvars.iv.next4774, %for.body2592 ]
  %offsetU2567.04666 = phi i32 [ 0, %for.body2592.lr.ph ], [ %add2598, %for.body2592 ]
  %offsetL2566.04665 = phi i32 [ 0, %for.body2592.lr.ph ], [ %add2595, %for.body2592 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesL2578}, i64 0, metadata !408), !dbg !1912
  %arrayidx2594 = getelementptr inbounds i32* %792, i64 %indvars.iv4773, !dbg !1912
  %795 = load i32* %arrayidx2594, align 4, !dbg !1912, !tbaa !424
  %add2595 = add nsw i32 %795, %offsetL2566.04665, !dbg !1912
  call void @llvm.dbg.value(metadata !{i32 %add2595}, i64 0, metadata !396), !dbg !1912
  call void @llvm.dbg.value(metadata !{i32** %sizesU2579}, i64 0, metadata !409), !dbg !1914
  %arrayidx2597 = getelementptr inbounds i32* %793, i64 %indvars.iv4773, !dbg !1914
  %796 = load i32* %arrayidx2597, align 4, !dbg !1914, !tbaa !424
  %add2598 = add nsw i32 %796, %offsetU2567.04666, !dbg !1914
  call void @llvm.dbg.value(metadata !{i32 %add2598}, i64 0, metadata !397), !dbg !1914
  %indvars.iv.next4774 = add i64 %indvars.iv4773, 1, !dbg !1910
  %lftr.wideiv4775 = trunc i64 %indvars.iv.next4774 to i32, !dbg !1910
  %exitcond4776 = icmp eq i32 %lftr.wideiv4775, %jcolU.0.lcssa, !dbg !1910
  br i1 %exitcond4776, label %for.cond2602.preheader, label %for.body2592, !dbg !1910

for.cond2785.preheader:                           ; preds = %for.cond2602.preheader, %if.end2773, %for.cond933.preheader, %if.end1065, %if.else2278, %if.else739, %if.else2199, %if.then2202, %if.then2075, %if.then2420, %if.then2493, %if.else2490, %for.end75, %if.else691, %if.then694, %if.then623, %if.then826, %if.then869, %if.else866
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1921
  %797 = load i32* %ncolU, align 4, !dbg !1921, !tbaa !424
  %cmp27864555 = icmp slt i32 %jcolU.0.lcssa, %797, !dbg !1921
  br i1 %cmp27864555, label %for.body2787.lr.ph, label %return, !dbg !1921

for.body2787.lr.ph:                               ; preds = %for.cond2785.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1923
  %798 = load i32** %colindU, align 8, !dbg !1923, !tbaa !419
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !262), !dbg !1923
  %799 = load i32** %colindT, align 8, !dbg !1923, !tbaa !419
  %800 = sext i32 %jcolU.0.lcssa to i64
  br label %for.body2787, !dbg !1921

for.body2604:                                     ; preds = %if.end2773.for.body2604_crit_edge, %for.body2604.lr.ph
  %indvars.iv4771 = phi i64 [ %indvars.iv.next4772, %if.end2773.for.body2604_crit_edge ], [ %794, %for.body2604.lr.ph ]
  %offsetU2567.14663 = phi i32 [ %add2775, %if.end2773.for.body2604_crit_edge ], [ %offsetU2567.0.lcssa, %for.body2604.lr.ph ]
  %offsetL2566.14662 = phi i32 [ %add2774, %if.end2773.for.body2604_crit_edge ], [ %offsetL2566.0.lcssa, %for.body2604.lr.ph ]
  %irow02556.04660 = phi i32 [ %inc2777, %if.end2773.for.body2604_crit_edge ], [ %jcolU.0.lcssa, %for.body2604.lr.ph ]
  call void @llvm.dbg.value(metadata !{double** %entL2547}, i64 0, metadata !377), !dbg !1925
  %801 = load double** %entL2547, align 8, !dbg !1925, !tbaa !419
  %mul2605 = shl nsw i32 %offsetL2566.14662, 1, !dbg !1925
  %idx.ext2606 = sext i32 %mul2605 to i64, !dbg !1925
  call void @llvm.dbg.value(metadata !{i32** %indL2572}, i64 0, metadata !402), !dbg !1926
  %802 = load i32** %indL2572, align 8, !dbg !1926, !tbaa !419
  %idx.ext2608 = sext i32 %offsetL2566.14662 to i64, !dbg !1926
  call void @llvm.dbg.value(metadata !{double** %entU2548}, i64 0, metadata !378), !dbg !1927
  %803 = load double** %entU2548, align 8, !dbg !1927, !tbaa !419
  %mul2610 = shl nsw i32 %offsetU2567.14663, 1, !dbg !1927
  %idx.ext2611 = sext i32 %mul2610 to i64, !dbg !1927
  %add.ptr2612 = getelementptr inbounds double* %803, i64 %idx.ext2611, !dbg !1927
  call void @llvm.dbg.value(metadata !{double* %add.ptr2612}, i64 0, metadata !375), !dbg !1927
  call void @llvm.dbg.value(metadata !{i32** %indU2575}, i64 0, metadata !405), !dbg !1928
  %804 = load i32** %indU2575, align 8, !dbg !1928, !tbaa !419
  %idx.ext2613 = sext i32 %offsetU2567.14663 to i64, !dbg !1928
  %add.ptr2614 = getelementptr inbounds i32* %804, i64 %idx.ext2613, !dbg !1928
  call void @llvm.dbg.value(metadata !{i32* %add.ptr2614}, i64 0, metadata !406), !dbg !1928
  call void @llvm.dbg.value(metadata !{i32** %sizesL2578}, i64 0, metadata !408), !dbg !1929
  %805 = load i32** %sizesL2578, align 8, !dbg !1929, !tbaa !419
  %arrayidx2616 = getelementptr inbounds i32* %805, i64 %indvars.iv4771, !dbg !1929
  %806 = load i32* %arrayidx2616, align 4, !dbg !1929, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %806}, i64 0, metadata !398), !dbg !1929
  call void @llvm.dbg.value(metadata !{i32** %sizesU2579}, i64 0, metadata !409), !dbg !1930
  %807 = load i32** %sizesU2579, align 8, !dbg !1930, !tbaa !419
  %arrayidx2618 = getelementptr inbounds i32* %807, i64 %indvars.iv4771, !dbg !1930
  %808 = load i32* %arrayidx2618, align 4, !dbg !1930, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %808}, i64 0, metadata !400), !dbg !1930
  %cmp2619 = icmp sgt i32 %806, 0, !dbg !1931
  %cmp2621 = icmp sgt i32 %808, 0, !dbg !1931
  %or.cond4546 = or i1 %cmp2619, %cmp2621, !dbg !1931
  br i1 %or.cond4546, label %if.then2622, label %if.end2773, !dbg !1931

if.then2622:                                      ; preds = %for.body2604
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1932
  %809 = load i32** %colindU, align 8, !dbg !1932, !tbaa !419
  %arrayidx2624 = getelementptr inbounds i32* %809, i64 %indvars.iv4771, !dbg !1932
  %810 = load i32* %arrayidx2624, align 4, !dbg !1932, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %810}, i64 0, metadata !384), !dbg !1932
  %call2625 = call double* @Chv_diagLocation(%struct._Chv* %chvT, i32 %810) #6, !dbg !1933
  call void @llvm.dbg.value(metadata !{double* %call2625}, i64 0, metadata !374), !dbg !1933
  br i1 %cmp2619, label %for.body2631.lr.ph, label %if.end2651, !dbg !1934

for.body2631.lr.ph:                               ; preds = %if.then2622
  call void @DVzero(i32 %mul2628, double* %call2583) #6, !dbg !1917
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !385), !dbg !1935
  br label %for.body2631, !dbg !1935

for.body2631:                                     ; preds = %for.body2631, %for.body2631.lr.ph
  %indvars.iv4755 = phi i64 [ 0, %for.body2631.lr.ph ], [ %indvars.iv.next4756, %for.body2631 ]
  %add.ptr2609.sum4294 = add i64 %indvars.iv4755, %idx.ext2608, !dbg !1937
  %arrayidx2633 = getelementptr inbounds i32* %802, i64 %add.ptr2609.sum4294, !dbg !1937
  %811 = load i32* %arrayidx2633, align 4, !dbg !1937, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %811}, i64 0, metadata !388), !dbg !1937
  %812 = trunc i64 %indvars.iv4755 to i32, !dbg !1939
  %mul2634 = shl nsw i32 %812, 1, !dbg !1939
  %idxprom2635 = sext i32 %mul2634 to i64, !dbg !1939
  %add.ptr2607.sum4295 = add i64 %idxprom2635, %idx.ext2606, !dbg !1939
  %arrayidx2636 = getelementptr inbounds double* %801, i64 %add.ptr2607.sum4295, !dbg !1939
  %813 = load double* %arrayidx2636, align 8, !dbg !1939, !tbaa !500
  %mul2637 = shl nsw i32 %811, 1, !dbg !1939
  %idxprom2638 = sext i32 %mul2637 to i64, !dbg !1939
  %add.ptr2586.sum4296 = add i64 %idxprom2638, %idx.ext2585, !dbg !1939
  %arrayidx2639 = getelementptr inbounds double* %call2583, i64 %add.ptr2586.sum4296, !dbg !1939
  store double %813, double* %arrayidx2639, align 8, !dbg !1939, !tbaa !500
  %add26414297 = or i32 %mul2634, 1, !dbg !1940
  %idxprom2642 = sext i32 %add26414297 to i64, !dbg !1940
  %add.ptr2607.sum4298 = add i64 %idxprom2642, %idx.ext2606, !dbg !1940
  %arrayidx2643 = getelementptr inbounds double* %801, i64 %add.ptr2607.sum4298, !dbg !1940
  %814 = load double* %arrayidx2643, align 8, !dbg !1940, !tbaa !500
  %add26454299 = or i32 %mul2637, 1, !dbg !1940
  %idxprom2646 = sext i32 %add26454299 to i64, !dbg !1940
  %add.ptr2586.sum4300 = add i64 %idxprom2646, %idx.ext2585, !dbg !1940
  %arrayidx2647 = getelementptr inbounds double* %call2583, i64 %add.ptr2586.sum4300, !dbg !1940
  store double %814, double* %arrayidx2647, align 8, !dbg !1940, !tbaa !500
  %indvars.iv.next4756 = add i64 %indvars.iv4755, 1, !dbg !1935
  %lftr.wideiv4757 = trunc i64 %indvars.iv.next4756 to i32, !dbg !1935
  %exitcond4758 = icmp eq i32 %lftr.wideiv4757, %806, !dbg !1935
  br i1 %exitcond4758, label %for.end2650, label %for.body2631, !dbg !1935

for.end2650:                                      ; preds = %for.body2631
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %call2583, double* %add.ptr2586) #6, !dbg !1941
  br label %if.end2651, !dbg !1942

if.end2651:                                       ; preds = %for.end2650, %if.then2622
  br i1 %cmp2621, label %for.body2657.lr.ph, label %if.end2730, !dbg !1943

for.body2657.lr.ph:                               ; preds = %if.end2651
  call void @DVzero(i32 %mul2628, double* %add.ptr2586) #6, !dbg !1944
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !385), !dbg !1946
  br label %for.body2657, !dbg !1946

for.body2657:                                     ; preds = %for.body2657, %for.body2657.lr.ph
  %indvars.iv4759 = phi i64 [ 0, %for.body2657.lr.ph ], [ %indvars.iv.next4760, %for.body2657 ]
  %add.ptr2614.sum4288 = add i64 %indvars.iv4759, %idx.ext2613, !dbg !1948
  %arrayidx2659 = getelementptr inbounds i32* %804, i64 %add.ptr2614.sum4288, !dbg !1948
  %815 = load i32* %arrayidx2659, align 4, !dbg !1948, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %815}, i64 0, metadata !388), !dbg !1948
  %816 = trunc i64 %indvars.iv4759 to i32, !dbg !1950
  %mul2660 = shl nsw i32 %816, 1, !dbg !1950
  %idxprom2661 = sext i32 %mul2660 to i64, !dbg !1950
  %add.ptr2612.sum4289 = add i64 %idxprom2661, %idx.ext2611, !dbg !1950
  %arrayidx2662 = getelementptr inbounds double* %803, i64 %add.ptr2612.sum4289, !dbg !1950
  %817 = load double* %arrayidx2662, align 8, !dbg !1950, !tbaa !500
  %mul2663 = shl nsw i32 %815, 1, !dbg !1950
  %idxprom2664 = sext i32 %mul2663 to i64, !dbg !1950
  %add.ptr2589.sum = add i64 %idxprom2664, %add.ptr2586.sum, !dbg !1950
  %arrayidx2665 = getelementptr inbounds double* %call2583, i64 %add.ptr2589.sum, !dbg !1950
  store double %817, double* %arrayidx2665, align 8, !dbg !1950, !tbaa !500
  %add26674290 = or i32 %mul2660, 1, !dbg !1951
  %idxprom2668 = sext i32 %add26674290 to i64, !dbg !1951
  %add.ptr2612.sum4291 = add i64 %idxprom2668, %idx.ext2611, !dbg !1951
  %arrayidx2669 = getelementptr inbounds double* %803, i64 %add.ptr2612.sum4291, !dbg !1951
  %818 = load double* %arrayidx2669, align 8, !dbg !1951, !tbaa !500
  %add26714292 = or i32 %mul2663, 1, !dbg !1951
  %idxprom2672 = sext i32 %add26714292 to i64, !dbg !1951
  %add.ptr2589.sum4293 = add i64 %idxprom2672, %add.ptr2586.sum, !dbg !1951
  %arrayidx2673 = getelementptr inbounds double* %call2583, i64 %add.ptr2589.sum4293, !dbg !1951
  store double %818, double* %arrayidx2673, align 8, !dbg !1951, !tbaa !500
  %indvars.iv.next4760 = add i64 %indvars.iv4759, 1, !dbg !1946
  %lftr.wideiv4761 = trunc i64 %indvars.iv.next4760 to i32, !dbg !1946
  %exitcond4762 = icmp eq i32 %lftr.wideiv4761, %808, !dbg !1946
  br i1 %exitcond4762, label %if.end2677, label %for.body2657, !dbg !1946

if.end2677:                                       ; preds = %for.body2657
  call void @SubMtx_scale1vec(%struct._SubMtx* %mtxD, double* %add.ptr2586, double* %add.ptr2589) #6, !dbg !1952
  br i1 %cmp2619, label %if.then2681, label %if.then2688, !dbg !1953

if.then2681:                                      ; preds = %if.end2677
  call void @ZVdotiU(i32 %808, double* %call2583, i32* %add.ptr2614, double* %add.ptr2612, double* %real, double* %imag) #6, !dbg !1954
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !373), !dbg !1956
  %819 = load double* %real, align 8, !dbg !1956, !tbaa !500
  %820 = load double* %call2625, align 8, !dbg !1956, !tbaa !500
  %sub2683 = fsub double %820, %819, !dbg !1956
  store double %sub2683, double* %call2625, align 8, !dbg !1956, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %imag}, i64 0, metadata !371), !dbg !1956
  %821 = load double* %imag, align 8, !dbg !1956, !tbaa !500
  %arrayidx2684 = getelementptr inbounds double* %call2625, i64 1, !dbg !1956
  %822 = load double* %arrayidx2684, align 8, !dbg !1956, !tbaa !500
  %sub2685 = fsub double %822, %821, !dbg !1956
  store double %sub2685, double* %arrayidx2684, align 8, !dbg !1956, !tbaa !500
  br label %if.then2688, !dbg !1957

if.then2688:                                      ; preds = %if.then2681, %if.end2677
  %mul2689 = shl nsw i32 %810, 1, !dbg !1958
  %idx.ext2690 = sext i32 %mul2689 to i64, !dbg !1958
  %mul2692 = shl nsw i32 %806, 1, !dbg !1960
  %idx.ext2693 = sext i32 %mul2692 to i64, !dbg !1960
  %add.ptr2607.sum = add i64 %idx.ext2693, %idx.ext2606, !dbg !1960
  %add.ptr2694 = getelementptr inbounds double* %801, i64 %add.ptr2607.sum, !dbg !1960
  call void @llvm.dbg.value(metadata !{double* %add.ptr2694}, i64 0, metadata !380), !dbg !1960
  %idx.ext2695 = sext i32 %806 to i64, !dbg !1961
  %add.ptr2609.sum = add i64 %idx.ext2695, %idx.ext2608, !dbg !1961
  %add.ptr2696 = getelementptr inbounds i32* %802, i64 %add.ptr2609.sum, !dbg !1961
  call void @llvm.dbg.value(metadata !{i32* %add.ptr2696}, i64 0, metadata !404), !dbg !1961
  br label %for.cond2698.outer, !dbg !1962

for.cond2698.outer:                               ; preds = %if.then2704, %if.then2688
  %rowL12550.0.ph = phi double* [ %add.ptr2694, %if.then2688 ], [ %add.ptr2719, %if.then2704 ]
  %irow12557.0.in.ph = phi i32 [ %irow02556.04660, %if.then2688 ], [ %irow12557.0, %if.then2704 ]
  %indL12574.0.ph = phi i32* [ %add.ptr2696, %if.then2688 ], [ %add.ptr2721, %if.then2704 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU2561}, i64 0, metadata !391), !dbg !1962
  %823 = load i32* %ncolU2561, align 4, !dbg !1962, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32** %sizesL2578}, i64 0, metadata !408), !dbg !1964
  %824 = load i32** %sizesL2578, align 8, !dbg !1964, !tbaa !419
  %825 = sext i32 %irow12557.0.in.ph to i64
  br label %for.cond2698

for.cond2698:                                     ; preds = %for.cond2698.outer, %for.body2700
  %indvars.iv4765 = phi i64 [ %825, %for.cond2698.outer ], [ %indvars.iv.next4766, %for.body2700 ]
  %irow12557.0.in = phi i32 [ %irow12557.0.in.ph, %for.cond2698.outer ], [ %irow12557.0, %for.body2700 ]
  %indvars.iv.next4766 = add i64 %indvars.iv4765, 1, !dbg !1964
  %irow12557.0 = add nsw i32 %irow12557.0.in, 1, !dbg !1962
  call void @llvm.dbg.value(metadata !{i32* %ncolU2561}, i64 0, metadata !391), !dbg !1962
  %826 = trunc i64 %indvars.iv.next4766 to i32, !dbg !1962
  %cmp2699 = icmp slt i32 %826, %823, !dbg !1962
  br i1 %cmp2699, label %for.body2700, label %if.end2730, !dbg !1962

for.body2700:                                     ; preds = %for.cond2698
  call void @llvm.dbg.value(metadata !{i32** %sizesL2578}, i64 0, metadata !408), !dbg !1964
  %arrayidx2702 = getelementptr inbounds i32* %824, i64 %indvars.iv.next4766, !dbg !1964
  %827 = load i32* %arrayidx2702, align 4, !dbg !1964, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %827}, i64 0, metadata !399), !dbg !1964
  %cmp2703 = icmp sgt i32 %827, 0, !dbg !1964
  br i1 %cmp2703, label %if.then2704, label %for.cond2698, !dbg !1964

if.then2704:                                      ; preds = %for.body2700
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1966
  %828 = load i32** %colindU, align 8, !dbg !1966, !tbaa !419
  %arrayidx2706 = getelementptr inbounds i32* %828, i64 %indvars.iv.next4766, !dbg !1966
  %829 = load i32* %arrayidx2706, align 4, !dbg !1966, !tbaa !424
  %mul2707 = shl nsw i32 %829, 1, !dbg !1966
  call void @llvm.dbg.value(metadata !{i32 %mul2707}, i64 0, metadata !389), !dbg !1966
  call void @ZVdotiU(i32 %827, double* %add.ptr2586, i32* %indL12574.0.ph, double* %rowL12550.0.ph, double* %real, double* %imag) #6, !dbg !1968
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !373), !dbg !1969
  %830 = load double* %real, align 8, !dbg !1969, !tbaa !500
  %sub2708 = sub nsw i32 0, %mul2707, !dbg !1969
  %idxprom2709 = sext i32 %sub2708 to i64, !dbg !1969
  %add.ptr2691.sum = add i64 %idxprom2709, %idx.ext2690, !dbg !1969
  %arrayidx2710 = getelementptr inbounds double* %call2625, i64 %add.ptr2691.sum, !dbg !1969
  %831 = load double* %arrayidx2710, align 8, !dbg !1969, !tbaa !500
  %sub2711 = fsub double %831, %830, !dbg !1969
  store double %sub2711, double* %arrayidx2710, align 8, !dbg !1969, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %imag}, i64 0, metadata !371), !dbg !1969
  %832 = load double* %imag, align 8, !dbg !1969, !tbaa !500
  %add27134286 = or i32 %sub2708, 1, !dbg !1969
  %idxprom2714 = sext i32 %add27134286 to i64, !dbg !1969
  %add.ptr2691.sum4287 = add i64 %idxprom2714, %idx.ext2690, !dbg !1969
  %arrayidx2715 = getelementptr inbounds double* %call2625, i64 %add.ptr2691.sum4287, !dbg !1969
  %833 = load double* %arrayidx2715, align 8, !dbg !1969, !tbaa !500
  %sub2716 = fsub double %833, %832, !dbg !1969
  store double %sub2716, double* %arrayidx2715, align 8, !dbg !1969, !tbaa !500
  %mul2717 = shl nsw i32 %827, 1, !dbg !1970
  %idx.ext2718 = sext i32 %mul2717 to i64, !dbg !1970
  %add.ptr2719 = getelementptr inbounds double* %rowL12550.0.ph, i64 %idx.ext2718, !dbg !1970
  call void @llvm.dbg.value(metadata !{double* %add.ptr2719}, i64 0, metadata !380), !dbg !1970
  %idx.ext2720 = sext i32 %827 to i64, !dbg !1971
  %add.ptr2721 = getelementptr inbounds i32* %indL12574.0.ph, i64 %idx.ext2720, !dbg !1971
  call void @llvm.dbg.value(metadata !{i32* %add.ptr2721}, i64 0, metadata !404), !dbg !1971
  br label %for.cond2698.outer, !dbg !1972

if.end2730:                                       ; preds = %for.cond2698, %if.end2651
  br i1 %cmp2619, label %if.then2732, label %if.end2773, !dbg !1973

if.then2732:                                      ; preds = %if.end2730
  %mul2733 = shl nsw i32 %810, 1, !dbg !1974
  %idx.ext2734 = sext i32 %mul2733 to i64, !dbg !1974
  %mul2737 = shl nsw i32 %808, 1, !dbg !1976
  %idx.ext2738 = sext i32 %mul2737 to i64, !dbg !1976
  %add.ptr2612.sum = add i64 %idx.ext2738, %idx.ext2611, !dbg !1976
  %add.ptr2739 = getelementptr inbounds double* %803, i64 %add.ptr2612.sum, !dbg !1976
  call void @llvm.dbg.value(metadata !{double* %add.ptr2739}, i64 0, metadata !376), !dbg !1976
  %idx.ext2740 = sext i32 %808 to i64, !dbg !1977
  %add.ptr2614.sum = add i64 %idx.ext2740, %idx.ext2613, !dbg !1977
  %add.ptr2741 = getelementptr inbounds i32* %804, i64 %add.ptr2614.sum, !dbg !1977
  call void @llvm.dbg.value(metadata !{i32* %add.ptr2741}, i64 0, metadata !407), !dbg !1977
  br label %for.cond2743.outer, !dbg !1978

for.cond2743.outer:                               ; preds = %if.then2749, %if.then2732
  %colU12546.0.ph = phi double* [ %add.ptr2739, %if.then2732 ], [ %add.ptr2762, %if.then2749 ]
  %irow12557.1.in.ph = phi i32 [ %irow02556.04660, %if.then2732 ], [ %irow12557.1, %if.then2749 ]
  %indU12577.0.ph = phi i32* [ %add.ptr2741, %if.then2732 ], [ %add.ptr2764, %if.then2749 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolU2561}, i64 0, metadata !391), !dbg !1978
  %834 = load i32* %ncolU2561, align 4, !dbg !1978, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32** %sizesU2579}, i64 0, metadata !409), !dbg !1980
  %835 = load i32** %sizesU2579, align 8, !dbg !1980, !tbaa !419
  %836 = sext i32 %irow12557.1.in.ph to i64
  br label %for.cond2743

for.cond2743:                                     ; preds = %for.cond2743.outer, %for.body2745
  %indvars.iv4769 = phi i64 [ %836, %for.cond2743.outer ], [ %indvars.iv.next4770, %for.body2745 ]
  %irow12557.1.in = phi i32 [ %irow12557.1.in.ph, %for.cond2743.outer ], [ %irow12557.1, %for.body2745 ]
  %indvars.iv.next4770 = add i64 %indvars.iv4769, 1, !dbg !1980
  %irow12557.1 = add nsw i32 %irow12557.1.in, 1, !dbg !1978
  call void @llvm.dbg.value(metadata !{i32* %ncolU2561}, i64 0, metadata !391), !dbg !1978
  %837 = trunc i64 %indvars.iv.next4770 to i32, !dbg !1978
  %cmp2744 = icmp slt i32 %837, %834, !dbg !1978
  br i1 %cmp2744, label %for.body2745, label %if.end2773, !dbg !1978

for.body2745:                                     ; preds = %for.cond2743
  call void @llvm.dbg.value(metadata !{i32** %sizesU2579}, i64 0, metadata !409), !dbg !1980
  %arrayidx2747 = getelementptr inbounds i32* %835, i64 %indvars.iv.next4770, !dbg !1980
  %838 = load i32* %arrayidx2747, align 4, !dbg !1980, !tbaa !424
  call void @llvm.dbg.value(metadata !{i32 %838}, i64 0, metadata !401), !dbg !1980
  %cmp2748 = icmp sgt i32 %838, 0, !dbg !1980
  br i1 %cmp2748, label %if.then2749, label %for.cond2743, !dbg !1980

if.then2749:                                      ; preds = %for.body2745
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1982
  %839 = load i32** %colindU, align 8, !dbg !1982, !tbaa !419
  %arrayidx2751 = getelementptr inbounds i32* %839, i64 %indvars.iv.next4770, !dbg !1982
  %840 = load i32* %arrayidx2751, align 4, !dbg !1982, !tbaa !424
  %mul2752 = shl nsw i32 %840, 1, !dbg !1982
  call void @llvm.dbg.value(metadata !{i32 %mul2752}, i64 0, metadata !389), !dbg !1982
  call void @ZVdotiU(i32 %838, double* %call2583, i32* %indU12577.0.ph, double* %colU12546.0.ph, double* %real, double* %imag) #6, !dbg !1984
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !373), !dbg !1985
  %841 = load double* %real, align 8, !dbg !1985, !tbaa !500
  %idxprom2753 = sext i32 %mul2752 to i64, !dbg !1985
  %add.ptr2736.sum = sub i64 %idxprom2753, %idx.ext2734, !dbg !1985
  %arrayidx2754 = getelementptr inbounds double* %call2625, i64 %add.ptr2736.sum, !dbg !1985
  %842 = load double* %arrayidx2754, align 8, !dbg !1985, !tbaa !500
  %sub2755 = fsub double %842, %841, !dbg !1985
  store double %sub2755, double* %arrayidx2754, align 8, !dbg !1985, !tbaa !500
  call void @llvm.dbg.value(metadata !{double* %imag}, i64 0, metadata !371), !dbg !1985
  %843 = load double* %imag, align 8, !dbg !1985, !tbaa !500
  %add27564284 = or i32 %mul2752, 1, !dbg !1985
  %idxprom2757 = sext i32 %add27564284 to i64, !dbg !1985
  %add.ptr2736.sum4285 = sub i64 %idxprom2757, %idx.ext2734, !dbg !1985
  %arrayidx2758 = getelementptr inbounds double* %call2625, i64 %add.ptr2736.sum4285, !dbg !1985
  %844 = load double* %arrayidx2758, align 8, !dbg !1985, !tbaa !500
  %sub2759 = fsub double %844, %843, !dbg !1985
  store double %sub2759, double* %arrayidx2758, align 8, !dbg !1985, !tbaa !500
  %mul2760 = shl nsw i32 %838, 1, !dbg !1986
  %idx.ext2761 = sext i32 %mul2760 to i64, !dbg !1986
  %add.ptr2762 = getelementptr inbounds double* %colU12546.0.ph, i64 %idx.ext2761, !dbg !1986
  call void @llvm.dbg.value(metadata !{double* %add.ptr2762}, i64 0, metadata !376), !dbg !1986
  %idx.ext2763 = sext i32 %838 to i64, !dbg !1987
  %add.ptr2764 = getelementptr inbounds i32* %indU12577.0.ph, i64 %idx.ext2763, !dbg !1987
  call void @llvm.dbg.value(metadata !{i32* %add.ptr2764}, i64 0, metadata !407), !dbg !1987
  br label %for.cond2743.outer, !dbg !1988

if.end2773:                                       ; preds = %for.cond2743, %for.body2604, %if.end2730
  call void @llvm.dbg.value(metadata !{i32 %add2774}, i64 0, metadata !396), !dbg !1989
  call void @llvm.dbg.value(metadata !{i32 %add2775}, i64 0, metadata !397), !dbg !1990
  call void @llvm.dbg.value(metadata !{i32 %inc2777}, i64 0, metadata !386), !dbg !1915
  %845 = trunc i64 %indvars.iv4771 to i32, !dbg !1915
  %cmp2603 = icmp slt i32 %845, %lastInU.0.lcssa4789, !dbg !1915
  br i1 %cmp2603, label %if.end2773.for.body2604_crit_edge, label %for.cond2785.preheader, !dbg !1915

if.end2773.for.body2604_crit_edge:                ; preds = %if.end2773
  %inc2777 = add nsw i32 %irow02556.04660, 1, !dbg !1915
  %indvars.iv.next4772 = add i64 %indvars.iv4771, 1, !dbg !1915
  %add2775 = add nsw i32 %808, %offsetU2567.14663, !dbg !1990
  %add2774 = add nsw i32 %806, %offsetL2566.14662, !dbg !1989
  br label %for.body2604, !dbg !1915

if.else2779:                                      ; preds = %if.then1078, %land.lhs.true1081, %land.lhs.true2540
  %846 = load %struct._IO_FILE** @stderr, align 8, !dbg !1991, !tbaa !419
  %call2780 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %846, i8* getelementptr inbounds ([135 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvT, %struct._SubMtx* %mtxD, %struct._SubMtx* %mtxU, %struct._DV* %tempDV) #6, !dbg !1991
  call void @exit(i32 -1) #7, !dbg !1993
  unreachable, !dbg !1993

for.body2787:                                     ; preds = %for.body2787.lr.ph, %for.body2787
  %indvars.iv = phi i64 [ %800, %for.body2787.lr.ph ], [ %indvars.iv.next, %for.body2787 ]
  call void @llvm.dbg.value(metadata !{i32** %colindU}, i64 0, metadata !263), !dbg !1923
  %arrayidx2789 = getelementptr inbounds i32* %798, i64 %indvars.iv, !dbg !1923
  %847 = load i32* %arrayidx2789, align 4, !dbg !1923, !tbaa !424
  %idxprom2790 = sext i32 %847 to i64, !dbg !1923
  call void @llvm.dbg.value(metadata !{i32** %colindT}, i64 0, metadata !262), !dbg !1923
  %arrayidx2791 = getelementptr inbounds i32* %799, i64 %idxprom2790, !dbg !1923
  %848 = load i32* %arrayidx2791, align 4, !dbg !1923, !tbaa !424
  store i32 %848, i32* %arrayidx2789, align 4, !dbg !1923, !tbaa !424
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1921
  call void @llvm.dbg.value(metadata !{i32* %ncolU}, i64 0, metadata !261), !dbg !1921
  %849 = load i32* %ncolU, align 4, !dbg !1921, !tbaa !424
  %850 = trunc i64 %indvars.iv.next to i32, !dbg !1921
  %cmp2786 = icmp slt i32 %850, %849, !dbg !1921
  br i1 %cmp2786, label %for.body2787, label %return, !dbg !1921

return:                                           ; preds = %for.cond2785.preheader, %for.body2787, %for.end
  ret void, !dbg !1994
}

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !126, metadata !245}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_updateH", metadata !"Chv_updateH", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._SubMtx*, %struct._SubMtx*, %struct._DV*)* @Chv_updateH, null, null, metadata !56, i32 26} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 26] [Chv_updateH]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !38, metadata !38, metadata !55}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!39 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!40 = metadata !{i32 786451, metadata !41, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!41 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!43 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!45 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!46 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!47 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!49 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!50 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!51 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!52 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !53} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!54 = metadata !{i32 786454, metadata !41, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !73, metadata !74, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!57 = metadata !{i32 786689, metadata !4, metadata !"chvT", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvT] [line 22]
!58 = metadata !{i32 786689, metadata !4, metadata !"mtxD", metadata !5, i32 33554455, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxD] [line 23]
!59 = metadata !{i32 786689, metadata !4, metadata !"mtxU", metadata !5, i32 50331672, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxU] [line 24]
!60 = metadata !{i32 786689, metadata !4, metadata !"tempDV", metadata !5, i32 67108889, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tempDV] [line 25]
!61 = metadata !{i32 786688, metadata !4, metadata !"firstInT", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstInT] [line 27]
!62 = metadata !{i32 786688, metadata !4, metadata !"firstInU", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstInU] [line 27]
!63 = metadata !{i32 786688, metadata !4, metadata !"jcolT", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolT] [line 27]
!64 = metadata !{i32 786688, metadata !4, metadata !"jcolU", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolU] [line 27]
!65 = metadata !{i32 786688, metadata !4, metadata !"lastInT", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastInT] [line 27]
!66 = metadata !{i32 786688, metadata !4, metadata !"lastInU", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastInU] [line 27]
!67 = metadata !{i32 786688, metadata !4, metadata !"ncolT", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolT] [line 27]
!68 = metadata !{i32 786688, metadata !4, metadata !"ncolU", metadata !5, i32 27, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolU] [line 27]
!69 = metadata !{i32 786688, metadata !4, metadata !"colindT", metadata !5, i32 28, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindT] [line 28]
!70 = metadata !{i32 786688, metadata !4, metadata !"colindU", metadata !5, i32 28, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindU] [line 28]
!71 = metadata !{i32 786688, metadata !72, metadata !"isum", metadata !5, i32 104, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 104]
!72 = metadata !{i32 786443, metadata !1, metadata !4, i32 103, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!73 = metadata !{i32 786688, metadata !72, metadata !"rsum", metadata !5, i32 104, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 104]
!74 = metadata !{i32 786688, metadata !72, metadata !"sums", metadata !5, i32 105, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sums] [line 105]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !25, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from double]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 18}       ; [ DW_TAG_subrange_type ] [0, 17]
!78 = metadata !{i32 786688, metadata !72, metadata !"base0", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 106]
!79 = metadata !{i32 786688, metadata !72, metadata !"base1", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base1] [line 106]
!80 = metadata !{i32 786688, metadata !72, metadata !"base2", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base2] [line 106]
!81 = metadata !{i32 786688, metadata !72, metadata !"colU0", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 106]
!82 = metadata !{i32 786688, metadata !72, metadata !"colU1", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 106]
!83 = metadata !{i32 786688, metadata !72, metadata !"colU2", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU2] [line 106]
!84 = metadata !{i32 786688, metadata !72, metadata !"entU", metadata !5, i32 106, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 106]
!85 = metadata !{i32 786688, metadata !72, metadata !"rowUT0", metadata !5, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT0] [line 107]
!86 = metadata !{i32 786688, metadata !72, metadata !"rowUT1", metadata !5, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT1] [line 107]
!87 = metadata !{i32 786688, metadata !72, metadata !"rowUT2", metadata !5, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT2] [line 107]
!88 = metadata !{i32 786688, metadata !72, metadata !"temp0", metadata !5, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 107]
!89 = metadata !{i32 786688, metadata !72, metadata !"temp1", metadata !5, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 107]
!90 = metadata !{i32 786688, metadata !72, metadata !"temp2", metadata !5, i32 107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 107]
!91 = metadata !{i32 786688, metadata !72, metadata !"ichv0", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 108]
!92 = metadata !{i32 786688, metadata !72, metadata !"ichv1", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv1] [line 108]
!93 = metadata !{i32 786688, metadata !72, metadata !"ichv2", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv2] [line 108]
!94 = metadata !{i32 786688, metadata !72, metadata !"ii", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 108]
!95 = metadata !{i32 786688, metadata !72, metadata !"inc1", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 108]
!96 = metadata !{i32 786688, metadata !72, metadata !"inc2", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 108]
!97 = metadata !{i32 786688, metadata !72, metadata !"irowUT", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowUT] [line 108]
!98 = metadata !{i32 786688, metadata !72, metadata !"kloc0", metadata !5, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc0] [line 109]
!99 = metadata !{i32 786688, metadata !72, metadata !"kloc1", metadata !5, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc1] [line 109]
!100 = metadata !{i32 786688, metadata !72, metadata !"kloc2", metadata !5, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc2] [line 109]
!101 = metadata !{i32 786688, metadata !72, metadata !"nrowU", metadata !5, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 109]
!102 = metadata !{i32 786688, metadata !103, metadata !"isum", metadata !5, i32 472, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 472]
!103 = metadata !{i32 786443, metadata !1, metadata !4, i32 471, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!104 = metadata !{i32 786688, metadata !103, metadata !"rsum", metadata !5, i32 472, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 472]
!105 = metadata !{i32 786688, metadata !103, metadata !"base0", metadata !5, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 473]
!106 = metadata !{i32 786688, metadata !103, metadata !"colU0", metadata !5, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 473]
!107 = metadata !{i32 786688, metadata !103, metadata !"entU", metadata !5, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 473]
!108 = metadata !{i32 786688, metadata !103, metadata !"rowUT0", metadata !5, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT0] [line 473]
!109 = metadata !{i32 786688, metadata !103, metadata !"temp0", metadata !5, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 473]
!110 = metadata !{i32 786688, metadata !103, metadata !"temp1", metadata !5, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 473]
!111 = metadata !{i32 786688, metadata !103, metadata !"ichv0", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 474]
!112 = metadata !{i32 786688, metadata !103, metadata !"ii", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 474]
!113 = metadata !{i32 786688, metadata !103, metadata !"iloc", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 474]
!114 = metadata !{i32 786688, metadata !103, metadata !"irowUT", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowUT] [line 474]
!115 = metadata !{i32 786688, metadata !103, metadata !"kloc0", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc0] [line 474]
!116 = metadata !{i32 786688, metadata !103, metadata !"nentU", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentU] [line 474]
!117 = metadata !{i32 786688, metadata !103, metadata !"nrowU", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 474]
!118 = metadata !{i32 786688, metadata !103, metadata !"offset", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 474]
!119 = metadata !{i32 786688, metadata !103, metadata !"rloc", metadata !5, i32 475, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 475]
!120 = metadata !{i32 786688, metadata !103, metadata !"sizeU", metadata !5, i32 475, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU] [line 475]
!121 = metadata !{i32 786688, metadata !103, metadata !"sizeUT", metadata !5, i32 475, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeUT] [line 475]
!122 = metadata !{i32 786688, metadata !103, metadata !"indU", metadata !5, i32 476, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU] [line 476]
!123 = metadata !{i32 786688, metadata !103, metadata !"indU0", metadata !5, i32 476, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU0] [line 476]
!124 = metadata !{i32 786688, metadata !103, metadata !"indUT0", metadata !5, i32 476, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indUT0] [line 476]
!125 = metadata !{i32 786688, metadata !103, metadata !"sizes", metadata !5, i32 476, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 476]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_updateS", metadata !"Chv_updateS", metadata !"", i32 572, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._SubMtx*, %struct._SubMtx*, %struct._DV*)* @Chv_updateS, null, null, metadata !127, i32 577} ; [ DW_TAG_subprogram ] [line 572] [def] [scope 577] [Chv_updateS]
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244}
!128 = metadata !{i32 786689, metadata !126, metadata !"chvT", metadata !5, i32 16777789, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvT] [line 573]
!129 = metadata !{i32 786689, metadata !126, metadata !"mtxD", metadata !5, i32 33555006, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxD] [line 574]
!130 = metadata !{i32 786689, metadata !126, metadata !"mtxU", metadata !5, i32 50332223, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxU] [line 575]
!131 = metadata !{i32 786689, metadata !126, metadata !"tempDV", metadata !5, i32 67109440, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tempDV] [line 576]
!132 = metadata !{i32 786688, metadata !126, metadata !"firstInT", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstInT] [line 578]
!133 = metadata !{i32 786688, metadata !126, metadata !"firstInU", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstInU] [line 578]
!134 = metadata !{i32 786688, metadata !126, metadata !"jcolT", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolT] [line 578]
!135 = metadata !{i32 786688, metadata !126, metadata !"jcolU", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolU] [line 578]
!136 = metadata !{i32 786688, metadata !126, metadata !"lastInT", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastInT] [line 578]
!137 = metadata !{i32 786688, metadata !126, metadata !"lastInU", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastInU] [line 578]
!138 = metadata !{i32 786688, metadata !126, metadata !"ncolT", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolT] [line 578]
!139 = metadata !{i32 786688, metadata !126, metadata !"ncolU", metadata !5, i32 578, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolU] [line 578]
!140 = metadata !{i32 786688, metadata !126, metadata !"colindT", metadata !5, i32 579, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindT] [line 579]
!141 = metadata !{i32 786688, metadata !126, metadata !"colindU", metadata !5, i32 579, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindU] [line 579]
!142 = metadata !{i32 786688, metadata !143, metadata !"sums", metadata !5, i32 670, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sums] [line 670]
!143 = metadata !{i32 786443, metadata !1, metadata !144, i32 669, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!144 = metadata !{i32 786443, metadata !1, metadata !126, i32 668, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!145 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !25, metadata !146, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from double]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!148 = metadata !{i32 786688, metadata !143, metadata !"base0", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 671]
!149 = metadata !{i32 786688, metadata !143, metadata !"base1", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base1] [line 671]
!150 = metadata !{i32 786688, metadata !143, metadata !"base2", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base2] [line 671]
!151 = metadata !{i32 786688, metadata !143, metadata !"colU0", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 671]
!152 = metadata !{i32 786688, metadata !143, metadata !"colU1", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 671]
!153 = metadata !{i32 786688, metadata !143, metadata !"colU2", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU2] [line 671]
!154 = metadata !{i32 786688, metadata !143, metadata !"entU", metadata !5, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 671]
!155 = metadata !{i32 786688, metadata !143, metadata !"rowUT0", metadata !5, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT0] [line 672]
!156 = metadata !{i32 786688, metadata !143, metadata !"rowUT1", metadata !5, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT1] [line 672]
!157 = metadata !{i32 786688, metadata !143, metadata !"rowUT2", metadata !5, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT2] [line 672]
!158 = metadata !{i32 786688, metadata !143, metadata !"temp0", metadata !5, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 672]
!159 = metadata !{i32 786688, metadata !143, metadata !"temp1", metadata !5, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 672]
!160 = metadata !{i32 786688, metadata !143, metadata !"temp2", metadata !5, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 672]
!161 = metadata !{i32 786688, metadata !143, metadata !"ichv0", metadata !5, i32 673, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 673]
!162 = metadata !{i32 786688, metadata !143, metadata !"ichv1", metadata !5, i32 673, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv1] [line 673]
!163 = metadata !{i32 786688, metadata !143, metadata !"ichv2", metadata !5, i32 673, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv2] [line 673]
!164 = metadata !{i32 786688, metadata !143, metadata !"inc1", metadata !5, i32 673, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 673]
!165 = metadata !{i32 786688, metadata !143, metadata !"inc2", metadata !5, i32 673, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 673]
!166 = metadata !{i32 786688, metadata !143, metadata !"irowUT", metadata !5, i32 673, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowUT] [line 673]
!167 = metadata !{i32 786688, metadata !143, metadata !"kloc0", metadata !5, i32 674, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc0] [line 674]
!168 = metadata !{i32 786688, metadata !143, metadata !"kloc1", metadata !5, i32 674, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc1] [line 674]
!169 = metadata !{i32 786688, metadata !143, metadata !"kloc2", metadata !5, i32 674, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc2] [line 674]
!170 = metadata !{i32 786688, metadata !143, metadata !"nrowU", metadata !5, i32 674, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 674]
!171 = metadata !{i32 786688, metadata !172, metadata !"sum", metadata !5, i32 917, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 917]
!172 = metadata !{i32 786443, metadata !1, metadata !144, i32 916, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!173 = metadata !{i32 786688, metadata !172, metadata !"base0", metadata !5, i32 918, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 918]
!174 = metadata !{i32 786688, metadata !172, metadata !"colU0", metadata !5, i32 918, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 918]
!175 = metadata !{i32 786688, metadata !172, metadata !"entU", metadata !5, i32 918, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 918]
!176 = metadata !{i32 786688, metadata !172, metadata !"rowUT0", metadata !5, i32 918, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT0] [line 918]
!177 = metadata !{i32 786688, metadata !172, metadata !"temp0", metadata !5, i32 918, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 918]
!178 = metadata !{i32 786688, metadata !172, metadata !"temp1", metadata !5, i32 918, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 918]
!179 = metadata !{i32 786688, metadata !172, metadata !"ichv0", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 919]
!180 = metadata !{i32 786688, metadata !172, metadata !"ii", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 919]
!181 = metadata !{i32 786688, metadata !172, metadata !"irowUT", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowUT] [line 919]
!182 = metadata !{i32 786688, metadata !172, metadata !"kloc0", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc0] [line 919]
!183 = metadata !{i32 786688, metadata !172, metadata !"loc", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 919]
!184 = metadata !{i32 786688, metadata !172, metadata !"nentU", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentU] [line 919]
!185 = metadata !{i32 786688, metadata !172, metadata !"nrowU", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 919]
!186 = metadata !{i32 786688, metadata !172, metadata !"offset", metadata !5, i32 919, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 919]
!187 = metadata !{i32 786688, metadata !172, metadata !"sizeU", metadata !5, i32 920, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU] [line 920]
!188 = metadata !{i32 786688, metadata !172, metadata !"sizeUT", metadata !5, i32 920, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeUT] [line 920]
!189 = metadata !{i32 786688, metadata !172, metadata !"indU", metadata !5, i32 921, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU] [line 921]
!190 = metadata !{i32 786688, metadata !172, metadata !"indU0", metadata !5, i32 921, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU0] [line 921]
!191 = metadata !{i32 786688, metadata !172, metadata !"indUT0", metadata !5, i32 921, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indUT0] [line 921]
!192 = metadata !{i32 786688, metadata !172, metadata !"sizes", metadata !5, i32 921, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 921]
!193 = metadata !{i32 786688, metadata !194, metadata !"isum", metadata !5, i32 992, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 992]
!194 = metadata !{i32 786443, metadata !1, metadata !195, i32 991, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!195 = metadata !{i32 786443, metadata !1, metadata !126, i32 990, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!196 = metadata !{i32 786688, metadata !194, metadata !"rsum", metadata !5, i32 992, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 992]
!197 = metadata !{i32 786688, metadata !194, metadata !"sums", metadata !5, i32 993, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sums] [line 993]
!198 = metadata !{i32 786688, metadata !194, metadata !"base0", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 994]
!199 = metadata !{i32 786688, metadata !194, metadata !"base1", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base1] [line 994]
!200 = metadata !{i32 786688, metadata !194, metadata !"base2", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base2] [line 994]
!201 = metadata !{i32 786688, metadata !194, metadata !"colU0", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 994]
!202 = metadata !{i32 786688, metadata !194, metadata !"colU1", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 994]
!203 = metadata !{i32 786688, metadata !194, metadata !"colU2", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU2] [line 994]
!204 = metadata !{i32 786688, metadata !194, metadata !"entU", metadata !5, i32 994, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 994]
!205 = metadata !{i32 786688, metadata !194, metadata !"rowUT0", metadata !5, i32 995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT0] [line 995]
!206 = metadata !{i32 786688, metadata !194, metadata !"rowUT1", metadata !5, i32 995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT1] [line 995]
!207 = metadata !{i32 786688, metadata !194, metadata !"rowUT2", metadata !5, i32 995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT2] [line 995]
!208 = metadata !{i32 786688, metadata !194, metadata !"temp0", metadata !5, i32 995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 995]
!209 = metadata !{i32 786688, metadata !194, metadata !"temp1", metadata !5, i32 995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 995]
!210 = metadata !{i32 786688, metadata !194, metadata !"temp2", metadata !5, i32 995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 995]
!211 = metadata !{i32 786688, metadata !194, metadata !"ichv0", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 996]
!212 = metadata !{i32 786688, metadata !194, metadata !"ichv1", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv1] [line 996]
!213 = metadata !{i32 786688, metadata !194, metadata !"ichv2", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv2] [line 996]
!214 = metadata !{i32 786688, metadata !194, metadata !"inc1", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 996]
!215 = metadata !{i32 786688, metadata !194, metadata !"inc2", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 996]
!216 = metadata !{i32 786688, metadata !194, metadata !"irowUT", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowUT] [line 996]
!217 = metadata !{i32 786688, metadata !194, metadata !"kloc0", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc0] [line 997]
!218 = metadata !{i32 786688, metadata !194, metadata !"kloc1", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc1] [line 997]
!219 = metadata !{i32 786688, metadata !194, metadata !"kloc2", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc2] [line 997]
!220 = metadata !{i32 786688, metadata !194, metadata !"nrowU", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 997]
!221 = metadata !{i32 786688, metadata !222, metadata !"isum", metadata !5, i32 1250, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 1250]
!222 = metadata !{i32 786443, metadata !1, metadata !195, i32 1249, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!223 = metadata !{i32 786688, metadata !222, metadata !"rsum", metadata !5, i32 1250, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 1250]
!224 = metadata !{i32 786688, metadata !222, metadata !"base0", metadata !5, i32 1251, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 1251]
!225 = metadata !{i32 786688, metadata !222, metadata !"colU0", metadata !5, i32 1251, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 1251]
!226 = metadata !{i32 786688, metadata !222, metadata !"entU", metadata !5, i32 1251, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 1251]
!227 = metadata !{i32 786688, metadata !222, metadata !"rowUT0", metadata !5, i32 1251, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowUT0] [line 1251]
!228 = metadata !{i32 786688, metadata !222, metadata !"temp0", metadata !5, i32 1251, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 1251]
!229 = metadata !{i32 786688, metadata !222, metadata !"temp1", metadata !5, i32 1251, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 1251]
!230 = metadata !{i32 786688, metadata !222, metadata !"ichv0", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 1252]
!231 = metadata !{i32 786688, metadata !222, metadata !"ii", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1252]
!232 = metadata !{i32 786688, metadata !222, metadata !"iloc", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1252]
!233 = metadata !{i32 786688, metadata !222, metadata !"irowUT", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowUT] [line 1252]
!234 = metadata !{i32 786688, metadata !222, metadata !"kloc0", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kloc0] [line 1252]
!235 = metadata !{i32 786688, metadata !222, metadata !"nentU", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentU] [line 1252]
!236 = metadata !{i32 786688, metadata !222, metadata !"nrowU", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 1252]
!237 = metadata !{i32 786688, metadata !222, metadata !"offset", metadata !5, i32 1252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1252]
!238 = metadata !{i32 786688, metadata !222, metadata !"rloc", metadata !5, i32 1253, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1253]
!239 = metadata !{i32 786688, metadata !222, metadata !"sizeU", metadata !5, i32 1253, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU] [line 1253]
!240 = metadata !{i32 786688, metadata !222, metadata !"sizeUT", metadata !5, i32 1253, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeUT] [line 1253]
!241 = metadata !{i32 786688, metadata !222, metadata !"indU", metadata !5, i32 1254, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU] [line 1254]
!242 = metadata !{i32 786688, metadata !222, metadata !"indU0", metadata !5, i32 1254, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU0] [line 1254]
!243 = metadata !{i32 786688, metadata !222, metadata !"indUT0", metadata !5, i32 1254, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indUT0] [line 1254]
!244 = metadata !{i32 786688, metadata !222, metadata !"sizes", metadata !5, i32 1254, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1254]
!245 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_updateN", metadata !"Chv_updateN", metadata !"", i32 1352, metadata !246, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*, %struct._DV*)* @Chv_updateN, null, null, metadata !248, i32 1358} ; [ DW_TAG_subprogram ] [line 1352] [def] [scope 1358] [Chv_updateN]
!246 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!247 = metadata !{null, metadata !8, metadata !38, metadata !38, metadata !38, metadata !55}
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409}
!249 = metadata !{i32 786689, metadata !245, metadata !"chvT", metadata !5, i32 16778569, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvT] [line 1353]
!250 = metadata !{i32 786689, metadata !245, metadata !"mtxL", metadata !5, i32 33555786, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxL] [line 1354]
!251 = metadata !{i32 786689, metadata !245, metadata !"mtxD", metadata !5, i32 50333003, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxD] [line 1355]
!252 = metadata !{i32 786689, metadata !245, metadata !"mtxU", metadata !5, i32 67110220, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxU] [line 1356]
!253 = metadata !{i32 786689, metadata !245, metadata !"tempDV", metadata !5, i32 83887437, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tempDV] [line 1357]
!254 = metadata !{i32 786688, metadata !245, metadata !"firstInT", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstInT] [line 1359]
!255 = metadata !{i32 786688, metadata !245, metadata !"firstInU", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstInU] [line 1359]
!256 = metadata !{i32 786688, metadata !245, metadata !"jcolT", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolT] [line 1359]
!257 = metadata !{i32 786688, metadata !245, metadata !"jcolU", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolU] [line 1359]
!258 = metadata !{i32 786688, metadata !245, metadata !"lastInT", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastInT] [line 1359]
!259 = metadata !{i32 786688, metadata !245, metadata !"lastInU", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastInU] [line 1359]
!260 = metadata !{i32 786688, metadata !245, metadata !"ncolT", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolT] [line 1359]
!261 = metadata !{i32 786688, metadata !245, metadata !"ncolU", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolU] [line 1359]
!262 = metadata !{i32 786688, metadata !245, metadata !"colindT", metadata !5, i32 1360, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindT] [line 1360]
!263 = metadata !{i32 786688, metadata !245, metadata !"colindU", metadata !5, i32 1360, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindU] [line 1360]
!264 = metadata !{i32 786688, metadata !265, metadata !"sums", metadata !5, i32 1441, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sums] [line 1441]
!265 = metadata !{i32 786443, metadata !1, metadata !266, i32 1440, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!266 = metadata !{i32 786443, metadata !1, metadata !245, i32 1439, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!267 = metadata !{i32 786688, metadata !265, metadata !"base0", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 1442]
!268 = metadata !{i32 786688, metadata !265, metadata !"base1", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base1] [line 1442]
!269 = metadata !{i32 786688, metadata !265, metadata !"base2", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base2] [line 1442]
!270 = metadata !{i32 786688, metadata !265, metadata !"colU0", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 1442]
!271 = metadata !{i32 786688, metadata !265, metadata !"colU1", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 1442]
!272 = metadata !{i32 786688, metadata !265, metadata !"colU2", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU2] [line 1442]
!273 = metadata !{i32 786688, metadata !265, metadata !"entL", metadata !5, i32 1442, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entL] [line 1442]
!274 = metadata !{i32 786688, metadata !265, metadata !"entU", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 1443]
!275 = metadata !{i32 786688, metadata !265, metadata !"Ltemp0", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ltemp0] [line 1443]
!276 = metadata !{i32 786688, metadata !265, metadata !"Ltemp1", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ltemp1] [line 1443]
!277 = metadata !{i32 786688, metadata !265, metadata !"Ltemp2", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ltemp2] [line 1443]
!278 = metadata !{i32 786688, metadata !265, metadata !"rowL0", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL0] [line 1443]
!279 = metadata !{i32 786688, metadata !265, metadata !"rowL1", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL1] [line 1443]
!280 = metadata !{i32 786688, metadata !265, metadata !"rowL2", metadata !5, i32 1443, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL2] [line 1443]
!281 = metadata !{i32 786688, metadata !265, metadata !"Utemp0", metadata !5, i32 1444, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Utemp0] [line 1444]
!282 = metadata !{i32 786688, metadata !265, metadata !"Utemp1", metadata !5, i32 1444, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Utemp1] [line 1444]
!283 = metadata !{i32 786688, metadata !265, metadata !"Utemp2", metadata !5, i32 1444, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Utemp2] [line 1444]
!284 = metadata !{i32 786688, metadata !265, metadata !"ichv0", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 1445]
!285 = metadata !{i32 786688, metadata !265, metadata !"ichv1", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv1] [line 1445]
!286 = metadata !{i32 786688, metadata !265, metadata !"ichv2", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv2] [line 1445]
!287 = metadata !{i32 786688, metadata !265, metadata !"inc1", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1445]
!288 = metadata !{i32 786688, metadata !265, metadata !"inc2", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1445]
!289 = metadata !{i32 786688, metadata !265, metadata !"irowL", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowL] [line 1445]
!290 = metadata !{i32 786688, metadata !265, metadata !"jcolU", metadata !5, i32 1445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolU] [line 1445]
!291 = metadata !{i32 786688, metadata !265, metadata !"loc", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 1446]
!292 = metadata !{i32 786688, metadata !265, metadata !"loc0", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc0] [line 1446]
!293 = metadata !{i32 786688, metadata !265, metadata !"loc1", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc1] [line 1446]
!294 = metadata !{i32 786688, metadata !265, metadata !"loc2", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc2] [line 1446]
!295 = metadata !{i32 786688, metadata !265, metadata !"ncolL", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolL] [line 1446]
!296 = metadata !{i32 786688, metadata !265, metadata !"nrowL", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowL] [line 1446]
!297 = metadata !{i32 786688, metadata !265, metadata !"nrowU", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 1446]
!298 = metadata !{i32 786688, metadata !265, metadata !"offset", metadata !5, i32 1446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1446]
!299 = metadata !{i32 786688, metadata !300, metadata !"base", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 2109]
!300 = metadata !{i32 786443, metadata !1, metadata !266, i32 2108, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!301 = metadata !{i32 786688, metadata !300, metadata !"colU0", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 2109]
!302 = metadata !{i32 786688, metadata !300, metadata !"colU1", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 2109]
!303 = metadata !{i32 786688, metadata !300, metadata !"entL", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entL] [line 2109]
!304 = metadata !{i32 786688, metadata !300, metadata !"entU", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 2109]
!305 = metadata !{i32 786688, metadata !300, metadata !"rowL0", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL0] [line 2109]
!306 = metadata !{i32 786688, metadata !300, metadata !"rowL1", metadata !5, i32 2109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL1] [line 2109]
!307 = metadata !{i32 786688, metadata !300, metadata !"temp0", metadata !5, i32 2110, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 2110]
!308 = metadata !{i32 786688, metadata !300, metadata !"temp1", metadata !5, i32 2110, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 2110]
!309 = metadata !{i32 786688, metadata !300, metadata !"temp2", metadata !5, i32 2110, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 2110]
!310 = metadata !{i32 786688, metadata !300, metadata !"ichv", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 2111]
!311 = metadata !{i32 786688, metadata !300, metadata !"ii", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 2111]
!312 = metadata !{i32 786688, metadata !300, metadata !"irow0", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow0] [line 2111]
!313 = metadata !{i32 786688, metadata !300, metadata !"irow1", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow1] [line 2111]
!314 = metadata !{i32 786688, metadata !300, metadata !"jj", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 2111]
!315 = metadata !{i32 786688, metadata !300, metadata !"loc", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 2111]
!316 = metadata !{i32 786688, metadata !300, metadata !"ncolL", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolL] [line 2111]
!317 = metadata !{i32 786688, metadata !300, metadata !"ncolU", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolU] [line 2111]
!318 = metadata !{i32 786688, metadata !300, metadata !"nentL", metadata !5, i32 2111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentL] [line 2111]
!319 = metadata !{i32 786688, metadata !300, metadata !"nentU", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentU] [line 2112]
!320 = metadata !{i32 786688, metadata !300, metadata !"nrowL", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowL] [line 2112]
!321 = metadata !{i32 786688, metadata !300, metadata !"nrowU", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 2112]
!322 = metadata !{i32 786688, metadata !300, metadata !"offsetL", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsetL] [line 2112]
!323 = metadata !{i32 786688, metadata !300, metadata !"offsetU", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsetU] [line 2112]
!324 = metadata !{i32 786688, metadata !300, metadata !"sizeL0", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeL0] [line 2112]
!325 = metadata !{i32 786688, metadata !300, metadata !"sizeL1", metadata !5, i32 2112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeL1] [line 2112]
!326 = metadata !{i32 786688, metadata !300, metadata !"sizeU0", metadata !5, i32 2113, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU0] [line 2113]
!327 = metadata !{i32 786688, metadata !300, metadata !"sizeU1", metadata !5, i32 2113, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU1] [line 2113]
!328 = metadata !{i32 786688, metadata !300, metadata !"indL", metadata !5, i32 2114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indL] [line 2114]
!329 = metadata !{i32 786688, metadata !300, metadata !"indL0", metadata !5, i32 2114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indL0] [line 2114]
!330 = metadata !{i32 786688, metadata !300, metadata !"indL1", metadata !5, i32 2114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indL1] [line 2114]
!331 = metadata !{i32 786688, metadata !300, metadata !"indU", metadata !5, i32 2114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU] [line 2114]
!332 = metadata !{i32 786688, metadata !300, metadata !"indU0", metadata !5, i32 2114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU0] [line 2114]
!333 = metadata !{i32 786688, metadata !300, metadata !"indU1", metadata !5, i32 2114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU1] [line 2114]
!334 = metadata !{i32 786688, metadata !300, metadata !"sizesL", metadata !5, i32 2115, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesL] [line 2115]
!335 = metadata !{i32 786688, metadata !300, metadata !"sizesU", metadata !5, i32 2115, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesU] [line 2115]
!336 = metadata !{i32 786688, metadata !337, metadata !"sums", metadata !5, i32 2305, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sums] [line 2305]
!337 = metadata !{i32 786443, metadata !1, metadata !338, i32 2304, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!338 = metadata !{i32 786443, metadata !1, metadata !245, i32 2303, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!339 = metadata !{i32 786688, metadata !337, metadata !"base0", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base0] [line 2306]
!340 = metadata !{i32 786688, metadata !337, metadata !"base1", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base1] [line 2306]
!341 = metadata !{i32 786688, metadata !337, metadata !"base2", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base2] [line 2306]
!342 = metadata !{i32 786688, metadata !337, metadata !"colU0", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 2306]
!343 = metadata !{i32 786688, metadata !337, metadata !"colU1", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 2306]
!344 = metadata !{i32 786688, metadata !337, metadata !"colU2", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU2] [line 2306]
!345 = metadata !{i32 786688, metadata !337, metadata !"entL", metadata !5, i32 2306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entL] [line 2306]
!346 = metadata !{i32 786688, metadata !337, metadata !"entU", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 2307]
!347 = metadata !{i32 786688, metadata !337, metadata !"Ltemp0", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ltemp0] [line 2307]
!348 = metadata !{i32 786688, metadata !337, metadata !"Ltemp1", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ltemp1] [line 2307]
!349 = metadata !{i32 786688, metadata !337, metadata !"Ltemp2", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ltemp2] [line 2307]
!350 = metadata !{i32 786688, metadata !337, metadata !"rowL0", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL0] [line 2307]
!351 = metadata !{i32 786688, metadata !337, metadata !"rowL1", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL1] [line 2307]
!352 = metadata !{i32 786688, metadata !337, metadata !"rowL2", metadata !5, i32 2307, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL2] [line 2307]
!353 = metadata !{i32 786688, metadata !337, metadata !"Utemp0", metadata !5, i32 2308, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Utemp0] [line 2308]
!354 = metadata !{i32 786688, metadata !337, metadata !"Utemp1", metadata !5, i32 2308, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Utemp1] [line 2308]
!355 = metadata !{i32 786688, metadata !337, metadata !"Utemp2", metadata !5, i32 2308, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Utemp2] [line 2308]
!356 = metadata !{i32 786688, metadata !337, metadata !"ichv0", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv0] [line 2309]
!357 = metadata !{i32 786688, metadata !337, metadata !"ichv1", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv1] [line 2309]
!358 = metadata !{i32 786688, metadata !337, metadata !"ichv2", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv2] [line 2309]
!359 = metadata !{i32 786688, metadata !337, metadata !"inc1", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 2309]
!360 = metadata !{i32 786688, metadata !337, metadata !"inc2", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 2309]
!361 = metadata !{i32 786688, metadata !337, metadata !"irowL", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowL] [line 2309]
!362 = metadata !{i32 786688, metadata !337, metadata !"jcolU", metadata !5, i32 2309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolU] [line 2309]
!363 = metadata !{i32 786688, metadata !337, metadata !"loc", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 2310]
!364 = metadata !{i32 786688, metadata !337, metadata !"loc0", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc0] [line 2310]
!365 = metadata !{i32 786688, metadata !337, metadata !"loc1", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc1] [line 2310]
!366 = metadata !{i32 786688, metadata !337, metadata !"loc2", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc2] [line 2310]
!367 = metadata !{i32 786688, metadata !337, metadata !"ncolL", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolL] [line 2310]
!368 = metadata !{i32 786688, metadata !337, metadata !"nrowL", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowL] [line 2310]
!369 = metadata !{i32 786688, metadata !337, metadata !"nrowU", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 2310]
!370 = metadata !{i32 786688, metadata !337, metadata !"offset", metadata !5, i32 2310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 2310]
!371 = metadata !{i32 786688, metadata !372, metadata !"imag", metadata !5, i32 2975, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 2975]
!372 = metadata !{i32 786443, metadata !1, metadata !338, i32 2974, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!373 = metadata !{i32 786688, metadata !372, metadata !"real", metadata !5, i32 2975, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 2975]
!374 = metadata !{i32 786688, metadata !372, metadata !"base", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 2976]
!375 = metadata !{i32 786688, metadata !372, metadata !"colU0", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU0] [line 2976]
!376 = metadata !{i32 786688, metadata !372, metadata !"colU1", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colU1] [line 2976]
!377 = metadata !{i32 786688, metadata !372, metadata !"entL", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entL] [line 2976]
!378 = metadata !{i32 786688, metadata !372, metadata !"entU", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entU] [line 2976]
!379 = metadata !{i32 786688, metadata !372, metadata !"rowL0", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL0] [line 2976]
!380 = metadata !{i32 786688, metadata !372, metadata !"rowL1", metadata !5, i32 2976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowL1] [line 2976]
!381 = metadata !{i32 786688, metadata !372, metadata !"temp0", metadata !5, i32 2977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp0] [line 2977]
!382 = metadata !{i32 786688, metadata !372, metadata !"temp1", metadata !5, i32 2977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 2977]
!383 = metadata !{i32 786688, metadata !372, metadata !"temp2", metadata !5, i32 2977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 2977]
!384 = metadata !{i32 786688, metadata !372, metadata !"ichv", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 2978]
!385 = metadata !{i32 786688, metadata !372, metadata !"ii", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 2978]
!386 = metadata !{i32 786688, metadata !372, metadata !"irow0", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow0] [line 2978]
!387 = metadata !{i32 786688, metadata !372, metadata !"irow1", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow1] [line 2978]
!388 = metadata !{i32 786688, metadata !372, metadata !"jj", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 2978]
!389 = metadata !{i32 786688, metadata !372, metadata !"loc", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 2978]
!390 = metadata !{i32 786688, metadata !372, metadata !"ncolL", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolL] [line 2978]
!391 = metadata !{i32 786688, metadata !372, metadata !"ncolU", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolU] [line 2978]
!392 = metadata !{i32 786688, metadata !372, metadata !"nentL", metadata !5, i32 2978, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentL] [line 2978]
!393 = metadata !{i32 786688, metadata !372, metadata !"nentU", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentU] [line 2979]
!394 = metadata !{i32 786688, metadata !372, metadata !"nrowL", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowL] [line 2979]
!395 = metadata !{i32 786688, metadata !372, metadata !"nrowU", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowU] [line 2979]
!396 = metadata !{i32 786688, metadata !372, metadata !"offsetL", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsetL] [line 2979]
!397 = metadata !{i32 786688, metadata !372, metadata !"offsetU", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsetU] [line 2979]
!398 = metadata !{i32 786688, metadata !372, metadata !"sizeL0", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeL0] [line 2979]
!399 = metadata !{i32 786688, metadata !372, metadata !"sizeL1", metadata !5, i32 2979, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeL1] [line 2979]
!400 = metadata !{i32 786688, metadata !372, metadata !"sizeU0", metadata !5, i32 2980, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU0] [line 2980]
!401 = metadata !{i32 786688, metadata !372, metadata !"sizeU1", metadata !5, i32 2980, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeU1] [line 2980]
!402 = metadata !{i32 786688, metadata !372, metadata !"indL", metadata !5, i32 2981, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indL] [line 2981]
!403 = metadata !{i32 786688, metadata !372, metadata !"indL0", metadata !5, i32 2981, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indL0] [line 2981]
!404 = metadata !{i32 786688, metadata !372, metadata !"indL1", metadata !5, i32 2981, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indL1] [line 2981]
!405 = metadata !{i32 786688, metadata !372, metadata !"indU", metadata !5, i32 2981, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU] [line 2981]
!406 = metadata !{i32 786688, metadata !372, metadata !"indU0", metadata !5, i32 2981, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU0] [line 2981]
!407 = metadata !{i32 786688, metadata !372, metadata !"indU1", metadata !5, i32 2981, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indU1] [line 2981]
!408 = metadata !{i32 786688, metadata !372, metadata !"sizesL", metadata !5, i32 2982, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesL] [line 2982]
!409 = metadata !{i32 786688, metadata !372, metadata !"sizesU", metadata !5, i32 2982, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesU] [line 2982]
!410 = metadata !{i32 22, i32 0, metadata !4, null}
!411 = metadata !{i32 23, i32 0, metadata !4, null}
!412 = metadata !{i32 24, i32 0, metadata !4, null}
!413 = metadata !{i32 25, i32 0, metadata !4, null}
!414 = metadata !{i32 27, i32 0, metadata !4, null}
!415 = metadata !{i32 28, i32 0, metadata !4, null}
!416 = metadata !{i32 34, i32 0, metadata !4, null}
!417 = metadata !{i32 35, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!419 = metadata !{metadata !"any pointer", metadata !420}
!420 = metadata !{metadata !"omnipotent char", metadata !421}
!421 = metadata !{metadata !"Simple C/C++ TBAA"}
!422 = metadata !{i32 37, i32 0, metadata !418, null}
!423 = metadata !{i32 39, i32 0, metadata !4, null}
!424 = metadata !{metadata !"int", metadata !420}
!425 = metadata !{i32 40, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!427 = metadata !{i32 43, i32 0, metadata !426, null}
!428 = metadata !{i32 45, i32 0, metadata !4, null}
!429 = metadata !{i32 46, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!431 = metadata !{i32 49, i32 0, metadata !430, null}
!432 = metadata !{i32 51, i32 0, metadata !4, null}
!433 = metadata !{i32 52, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!435 = metadata !{i32 55, i32 0, metadata !434, null}
!436 = metadata !{i32 57, i32 0, metadata !4, null}
!437 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!438 = metadata !{i32 64, i32 0, metadata !4, null}
!439 = metadata !{i32 65, i32 0, metadata !4, null}
!440 = metadata !{i32 66, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !4, i32 66, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!442 = metadata !{i32 67, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !441, i32 66, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!444 = metadata !{i32 71, i32 0, metadata !4, null}
!445 = metadata !{i32 80, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!447 = metadata !{i32 81, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !446, i32 80, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!449 = metadata !{i32 97, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !4, i32 97, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!451 = metadata !{i32 98, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !1, metadata !450, i32 97, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!453 = metadata !{i32 82, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !448, i32 81, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!455 = metadata !{i32 99, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !452, i32 98, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!457 = metadata !{i32 101, i32 0, metadata !452, null}
!458 = metadata !{i32 103, i32 0, metadata !4, null}
!459 = metadata !{i32 104, i32 0, metadata !72, null}
!460 = metadata !{i32 105, i32 0, metadata !72, null}
!461 = metadata !{i32 106, i32 0, metadata !72, null}
!462 = metadata !{i32 108, i32 0, metadata !72, null}
!463 = metadata !{i32 109, i32 0, metadata !72, null}
!464 = metadata !{i32 111, i32 0, metadata !72, null}
!465 = metadata !{i32 112, i32 0, metadata !72, null}
!466 = metadata !{i32 113, i32 0, metadata !72, null}
!467 = metadata !{i32 114, i32 0, metadata !72, null}
!468 = metadata !{i32 115, i32 0, metadata !72, null}
!469 = metadata !{i32 121, i32 0, metadata !72, null}
!470 = metadata !{i32 122, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !72, i32 122, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!472 = metadata !{i32 248, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 246, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!474 = metadata !{i32 786443, metadata !1, metadata !471, i32 122, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!475 = metadata !{i32 251, i32 0, metadata !473, null}
!476 = metadata !{i32 252, i32 0, metadata !473, null}
!477 = metadata !{i32 253, i32 0, metadata !473, null}
!478 = metadata !{i32 254, i32 0, metadata !473, null}
!479 = metadata !{i32 255, i32 0, metadata !473, null}
!480 = metadata !{i32 256, i32 0, metadata !473, null}
!481 = metadata !{i32 241, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !483, i32 227, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!483 = metadata !{i32 786443, metadata !1, metadata !474, i32 227, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!484 = metadata !{i32 242, i32 0, metadata !482, null}
!485 = metadata !{i32 243, i32 0, metadata !482, null}
!486 = metadata !{i32 128, i32 0, metadata !474, null}
!487 = metadata !{i32 129, i32 0, metadata !474, null}
!488 = metadata !{i32 135, i32 0, metadata !474, null}
!489 = metadata !{i32 136, i32 0, metadata !474, null}
!490 = metadata !{i32 137, i32 0, metadata !474, null}
!491 = metadata !{i32 138, i32 0, metadata !474, null}
!492 = metadata !{i32 139, i32 0, metadata !474, null}
!493 = metadata !{i32 140, i32 0, metadata !474, null}
!494 = metadata !{i32 148, i32 0, metadata !474, null}
!495 = metadata !{i32 149, i32 0, metadata !474, null}
!496 = metadata !{i32 151, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !474, i32 151, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!498 = metadata !{i32 152, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !497, i32 151, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!500 = metadata !{metadata !"double", metadata !420}
!501 = metadata !{i32 153, i32 0, metadata !499, null}
!502 = metadata !{i32 154, i32 0, metadata !499, null}
!503 = metadata !{i32 161, i32 0, metadata !474, null}
!504 = metadata !{i32 162, i32 0, metadata !474, null}
!505 = metadata !{i32 163, i32 0, metadata !474, null}
!506 = metadata !{i32 164, i32 0, metadata !474, null}
!507 = metadata !{i32 174, i32 0, metadata !474, null}
!508 = metadata !{i32 181, i32 0, metadata !474, null}
!509 = metadata !{i32 182, i32 0, metadata !474, null}
!510 = metadata !{i32 183, i32 0, metadata !474, null}
!511 = metadata !{i32 184, i32 0, metadata !474, null}
!512 = metadata !{i32 185, i32 0, metadata !474, null}
!513 = metadata !{i32 195, i32 0, metadata !474, null}
!514 = metadata !{i32 202, i32 0, metadata !474, null}
!515 = metadata !{i32 203, i32 0, metadata !474, null}
!516 = metadata !{i32 204, i32 0, metadata !474, null}
!517 = metadata !{i32 214, i32 0, metadata !474, null}
!518 = metadata !{i32 221, i32 0, metadata !474, null}
!519 = metadata !{i32 227, i32 0, metadata !483, null}
!520 = metadata !{i32 228, i32 0, metadata !482, null}
!521 = metadata !{i32 229, i32 0, metadata !482, null}
!522 = metadata !{i32 230, i32 0, metadata !482, null}
!523 = metadata !{i32 232, i32 0, metadata !482, null}
!524 = metadata !{i32 233, i32 0, metadata !482, null}
!525 = metadata !{i32 234, i32 0, metadata !482, null}
!526 = metadata !{i32 235, i32 0, metadata !482, null}
!527 = metadata !{i32 236, i32 0, metadata !482, null}
!528 = metadata !{i32 237, i32 0, metadata !482, null}
!529 = metadata !{i32 238, i32 0, metadata !482, null}
!530 = metadata !{i32 239, i32 0, metadata !482, null}
!531 = metadata !{i32 240, i32 0, metadata !482, null}
!532 = metadata !{i32 244, i32 0, metadata !482, null}
!533 = metadata !{i32 246, i32 0, metadata !474, null}
!534 = metadata !{i32 247, i32 0, metadata !473, null}
!535 = metadata !{i32 249, i32 0, metadata !473, null}
!536 = metadata !{i32 250, i32 0, metadata !473, null}
!537 = metadata !{i32 257, i32 0, metadata !473, null}
!538 = metadata !{i32 257, i32 0, metadata !474, null}
!539 = metadata !{i32 258, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !474, i32 257, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!541 = metadata !{i32 259, i32 0, metadata !540, null}
!542 = metadata !{i32 260, i32 0, metadata !540, null}
!543 = metadata !{i32 261, i32 0, metadata !540, null}
!544 = metadata !{i32 262, i32 0, metadata !540, null}
!545 = metadata !{i32 263, i32 0, metadata !540, null}
!546 = metadata !{i32 264, i32 0, metadata !474, null}
!547 = metadata !{i32 266, i32 0, metadata !72, null}
!548 = metadata !{i32 272, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !72, i32 266, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!550 = metadata !{i32 278, i32 0, metadata !549, null}
!551 = metadata !{i32 279, i32 0, metadata !549, null}
!552 = metadata !{i32 280, i32 0, metadata !549, null}
!553 = metadata !{i32 281, i32 0, metadata !549, null}
!554 = metadata !{i32 288, i32 0, metadata !549, null}
!555 = metadata !{i32 289, i32 0, metadata !549, null}
!556 = metadata !{i32 290, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !549, i32 290, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!558 = metadata !{i32 291, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !557, i32 290, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!560 = metadata !{i32 292, i32 0, metadata !559, null}
!561 = metadata !{i32 299, i32 0, metadata !549, null}
!562 = metadata !{i32 300, i32 0, metadata !549, null}
!563 = metadata !{i32 301, i32 0, metadata !549, null}
!564 = metadata !{i32 311, i32 0, metadata !549, null}
!565 = metadata !{i32 318, i32 0, metadata !549, null}
!566 = metadata !{i32 319, i32 0, metadata !549, null}
!567 = metadata !{i32 320, i32 0, metadata !549, null}
!568 = metadata !{i32 330, i32 0, metadata !549, null}
!569 = metadata !{i32 337, i32 0, metadata !549, null}
!570 = metadata !{i32 343, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !549, i32 343, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!572 = metadata !{i32 346, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !571, i32 343, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!574 = metadata !{i32 350, i32 0, metadata !573, null}
!575 = metadata !{i32 351, i32 0, metadata !573, null}
!576 = metadata !{i32 352, i32 0, metadata !573, null}
!577 = metadata !{i32 353, i32 0, metadata !573, null}
!578 = metadata !{i32 354, i32 0, metadata !573, null}
!579 = metadata !{i32 355, i32 0, metadata !573, null}
!580 = metadata !{i32 344, i32 0, metadata !573, null}
!581 = metadata !{i32 345, i32 0, metadata !573, null}
!582 = metadata !{i32 347, i32 0, metadata !573, null}
!583 = metadata !{i32 348, i32 0, metadata !573, null}
!584 = metadata !{i32 349, i32 0, metadata !573, null}
!585 = metadata !{i32 356, i32 0, metadata !573, null}
!586 = metadata !{i32 358, i32 0, metadata !549, null}
!587 = metadata !{i32 359, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !549, i32 358, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!589 = metadata !{i32 360, i32 0, metadata !588, null}
!590 = metadata !{i32 361, i32 0, metadata !588, null}
!591 = metadata !{i32 362, i32 0, metadata !588, null}
!592 = metadata !{i32 363, i32 0, metadata !588, null}
!593 = metadata !{i32 364, i32 0, metadata !588, null}
!594 = metadata !{i32 365, i32 0, metadata !588, null}
!595 = metadata !{i32 366, i32 0, metadata !588, null}
!596 = metadata !{i32 367, i32 0, metadata !588, null}
!597 = metadata !{i32 367, i32 0, metadata !549, null}
!598 = metadata !{i32 368, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !549, i32 367, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!600 = metadata !{i32 369, i32 0, metadata !599, null}
!601 = metadata !{i32 370, i32 0, metadata !599, null}
!602 = metadata !{i32 371, i32 0, metadata !599, null}
!603 = metadata !{i32 372, i32 0, metadata !599, null}
!604 = metadata !{i32 373, i32 0, metadata !72, null}
!605 = metadata !{i32 383, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !72, i32 373, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!607 = metadata !{i32 384, i32 0, metadata !606, null}
!608 = metadata !{i32 390, i32 0, metadata !606, null}
!609 = metadata !{i32 391, i32 0, metadata !606, null}
!610 = metadata !{i32 392, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !606, i32 392, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!612 = metadata !{i32 393, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !611, i32 392, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!614 = metadata !{i32 400, i32 0, metadata !606, null}
!615 = metadata !{i32 401, i32 0, metadata !606, null}
!616 = metadata !{i32 411, i32 0, metadata !606, null}
!617 = metadata !{i32 418, i32 0, metadata !606, null}
!618 = metadata !{i32 424, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !606, i32 424, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!620 = metadata !{i32 432, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !619, i32 424, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!622 = metadata !{i32 436, i32 0, metadata !621, null}
!623 = metadata !{i32 437, i32 0, metadata !621, null}
!624 = metadata !{i32 438, i32 0, metadata !621, null}
!625 = metadata !{i32 430, i32 0, metadata !621, null}
!626 = metadata !{i32 431, i32 0, metadata !621, null}
!627 = metadata !{i32 433, i32 0, metadata !621, null}
!628 = metadata !{i32 434, i32 0, metadata !621, null}
!629 = metadata !{i32 435, i32 0, metadata !621, null}
!630 = metadata !{i32 439, i32 0, metadata !621, null}
!631 = metadata !{i32 441, i32 0, metadata !606, null}
!632 = metadata !{i32 447, i32 0, metadata !633, null}
!633 = metadata !{i32 786443, metadata !1, metadata !606, i32 441, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!634 = metadata !{i32 448, i32 0, metadata !633, null}
!635 = metadata !{i32 449, i32 0, metadata !633, null}
!636 = metadata !{i32 450, i32 0, metadata !633, null}
!637 = metadata !{i32 451, i32 0, metadata !633, null}
!638 = metadata !{i32 452, i32 0, metadata !633, null}
!639 = metadata !{i32 453, i32 0, metadata !633, null}
!640 = metadata !{i32 453, i32 0, metadata !606, null}
!641 = metadata !{i32 458, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !606, i32 453, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!643 = metadata !{i32 463, i32 0, metadata !642, null}
!644 = metadata !{i32 464, i32 0, metadata !642, null}
!645 = metadata !{i32 469, i32 0, metadata !642, null}
!646 = metadata !{i32 472, i32 0, metadata !103, null}
!647 = metadata !{i32 473, i32 0, metadata !103, null}
!648 = metadata !{i32 474, i32 0, metadata !103, null}
!649 = metadata !{i32 476, i32 0, metadata !103, null}
!650 = metadata !{i32 478, i32 0, metadata !103, null}
!651 = metadata !{i32 479, i32 0, metadata !103, null}
!652 = metadata !{i32 480, i32 0, metadata !103, null}
!653 = metadata !{i32 481, i32 0, metadata !103, null}
!654 = metadata !{i32 482, i32 0, metadata !103, null}
!655 = metadata !{i32 488, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !103, i32 488, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!657 = metadata !{i32 489, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !656, i32 488, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!659 = metadata !{i32 496, i32 0, metadata !103, null}
!660 = metadata !{i32 497, i32 0, metadata !103, null}
!661 = metadata !{i32 498, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !103, i32 498, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!663 = metadata !{i32 519, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !665, i32 519, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!665 = metadata !{i32 786443, metadata !1, metadata !666, i32 499, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!666 = metadata !{i32 786443, metadata !1, metadata !662, i32 498, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!667 = metadata !{i32 553, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !4, i32 553, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!669 = metadata !{i32 554, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !668, i32 553, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!671 = metadata !{i32 499, i32 0, metadata !666, null}
!672 = metadata !{i32 505, i32 0, metadata !665, null}
!673 = metadata !{i32 506, i32 0, metadata !665, null}
!674 = metadata !{i32 512, i32 0, metadata !665, null}
!675 = metadata !{i32 513, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !665, i32 513, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!677 = metadata !{i32 514, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !676, i32 513, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!679 = metadata !{i32 515, i32 0, metadata !678, null}
!680 = metadata !{i32 516, i32 0, metadata !678, null}
!681 = metadata !{i32 518, i32 0, metadata !665, null}
!682 = metadata !{i32 520, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !664, i32 519, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!684 = metadata !{i32 529, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !665, i32 529, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!686 = metadata !{i32 530, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !685, i32 529, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!688 = metadata !{i32 531, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !687, i32 530, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!690 = metadata !{i32 532, i32 0, metadata !689, null}
!691 = metadata !{i32 533, i32 0, metadata !689, null}
!692 = metadata !{i32 534, i32 0, metadata !689, null}
!693 = metadata !{i32 535, i32 0, metadata !689, null}
!694 = metadata !{i32 536, i32 0, metadata !689, null}
!695 = metadata !{i32 538, i32 0, metadata !665, null}
!696 = metadata !{i32 539, i32 0, metadata !665, null}
!697 = metadata !{i32 540, i32 0, metadata !665, null}
!698 = metadata !{i32 543, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !4, i32 542, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!700 = metadata !{i32 546, i32 0, metadata !699, null}
!701 = metadata !{i32 556, i32 0, metadata !4, null}
!702 = metadata !{i32 573, i32 0, metadata !126, null}
!703 = metadata !{i32 574, i32 0, metadata !126, null}
!704 = metadata !{i32 575, i32 0, metadata !126, null}
!705 = metadata !{i32 576, i32 0, metadata !126, null}
!706 = metadata !{i32 578, i32 0, metadata !126, null}
!707 = metadata !{i32 579, i32 0, metadata !126, null}
!708 = metadata !{i32 585, i32 0, metadata !126, null}
!709 = metadata !{i32 586, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !126, i32 585, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!711 = metadata !{i32 588, i32 0, metadata !710, null}
!712 = metadata !{i32 590, i32 0, metadata !126, null}
!713 = metadata !{i32 591, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !126, i32 590, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!715 = metadata !{i32 592, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !714, i32 591, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!717 = metadata !{i32 595, i32 0, metadata !716, null}
!718 = metadata !{i32 598, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !126, i32 597, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!720 = metadata !{i32 599, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !719, i32 598, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!722 = metadata !{i32 602, i32 0, metadata !721, null}
!723 = metadata !{i32 605, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !126, i32 604, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!725 = metadata !{i32 608, i32 0, metadata !724, null}
!726 = metadata !{i32 610, i32 0, metadata !126, null}
!727 = metadata !{i32 611, i32 0, metadata !126, null}
!728 = metadata !{i32 624, i32 0, metadata !126, null}
!729 = metadata !{i32 625, i32 0, metadata !126, null}
!730 = metadata !{i32 626, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !126, i32 626, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!732 = metadata !{i32 627, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !731, i32 626, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!734 = metadata !{i32 631, i32 0, metadata !126, null}
!735 = metadata !{i32 640, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !126, i32 640, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!737 = metadata !{i32 641, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !736, i32 640, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!739 = metadata !{i32 657, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !126, i32 657, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!741 = metadata !{i32 658, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !740, i32 657, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!743 = metadata !{i32 642, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !738, i32 641, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!745 = metadata !{i32 659, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !742, i32 658, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!747 = metadata !{i32 661, i32 0, metadata !742, null}
!748 = metadata !{i32 668, i32 0, metadata !126, null}
!749 = metadata !{i32 669, i32 0, metadata !144, null}
!750 = metadata !{i32 670, i32 0, metadata !143, null}
!751 = metadata !{i32 671, i32 0, metadata !143, null}
!752 = metadata !{i32 673, i32 0, metadata !143, null}
!753 = metadata !{i32 674, i32 0, metadata !143, null}
!754 = metadata !{i32 676, i32 0, metadata !143, null}
!755 = metadata !{i32 677, i32 0, metadata !143, null}
!756 = metadata !{i32 678, i32 0, metadata !143, null}
!757 = metadata !{i32 679, i32 0, metadata !143, null}
!758 = metadata !{i32 680, i32 0, metadata !143, null}
!759 = metadata !{i32 686, i32 0, metadata !143, null}
!760 = metadata !{i32 687, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !143, i32 687, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!762 = metadata !{i32 757, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !764, i32 755, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!764 = metadata !{i32 786443, metadata !1, metadata !761, i32 687, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!765 = metadata !{i32 761, i32 0, metadata !763, null}
!766 = metadata !{i32 762, i32 0, metadata !763, null}
!767 = metadata !{i32 763, i32 0, metadata !763, null}
!768 = metadata !{i32 764, i32 0, metadata !763, null}
!769 = metadata !{i32 765, i32 0, metadata !763, null}
!770 = metadata !{i32 750, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !772, i32 736, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!772 = metadata !{i32 786443, metadata !1, metadata !764, i32 736, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!773 = metadata !{i32 751, i32 0, metadata !771, null}
!774 = metadata !{i32 752, i32 0, metadata !771, null}
!775 = metadata !{i32 693, i32 0, metadata !764, null}
!776 = metadata !{i32 694, i32 0, metadata !764, null}
!777 = metadata !{i32 700, i32 0, metadata !764, null}
!778 = metadata !{i32 701, i32 0, metadata !764, null}
!779 = metadata !{i32 702, i32 0, metadata !764, null}
!780 = metadata !{i32 703, i32 0, metadata !764, null}
!781 = metadata !{i32 704, i32 0, metadata !764, null}
!782 = metadata !{i32 705, i32 0, metadata !764, null}
!783 = metadata !{i32 713, i32 0, metadata !764, null}
!784 = metadata !{i32 714, i32 0, metadata !764, null}
!785 = metadata !{i32 721, i32 0, metadata !764, null}
!786 = metadata !{i32 722, i32 0, metadata !764, null}
!787 = metadata !{i32 723, i32 0, metadata !764, null}
!788 = metadata !{i32 724, i32 0, metadata !764, null}
!789 = metadata !{i32 725, i32 0, metadata !764, null}
!790 = metadata !{i32 726, i32 0, metadata !764, null}
!791 = metadata !{i32 727, i32 0, metadata !764, null}
!792 = metadata !{i32 728, i32 0, metadata !764, null}
!793 = metadata !{i32 729, i32 0, metadata !764, null}
!794 = metadata !{i32 730, i32 0, metadata !764, null}
!795 = metadata !{i32 736, i32 0, metadata !772, null}
!796 = metadata !{i32 737, i32 0, metadata !771, null}
!797 = metadata !{i32 738, i32 0, metadata !771, null}
!798 = metadata !{i32 739, i32 0, metadata !771, null}
!799 = metadata !{i32 741, i32 0, metadata !771, null}
!800 = metadata !{i32 742, i32 0, metadata !771, null}
!801 = metadata !{i32 743, i32 0, metadata !771, null}
!802 = metadata !{i32 744, i32 0, metadata !771, null}
!803 = metadata !{i32 745, i32 0, metadata !771, null}
!804 = metadata !{i32 746, i32 0, metadata !771, null}
!805 = metadata !{i32 747, i32 0, metadata !771, null}
!806 = metadata !{i32 748, i32 0, metadata !771, null}
!807 = metadata !{i32 749, i32 0, metadata !771, null}
!808 = metadata !{i32 753, i32 0, metadata !771, null}
!809 = metadata !{i32 755, i32 0, metadata !764, null}
!810 = metadata !{i32 756, i32 0, metadata !763, null}
!811 = metadata !{i32 758, i32 0, metadata !763, null}
!812 = metadata !{i32 759, i32 0, metadata !763, null}
!813 = metadata !{i32 760, i32 0, metadata !763, null}
!814 = metadata !{i32 766, i32 0, metadata !763, null}
!815 = metadata !{i32 766, i32 0, metadata !764, null}
!816 = metadata !{i32 767, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !764, i32 766, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!818 = metadata !{i32 768, i32 0, metadata !817, null}
!819 = metadata !{i32 769, i32 0, metadata !817, null}
!820 = metadata !{i32 770, i32 0, metadata !817, null}
!821 = metadata !{i32 771, i32 0, metadata !817, null}
!822 = metadata !{i32 772, i32 0, metadata !817, null}
!823 = metadata !{i32 773, i32 0, metadata !764, null}
!824 = metadata !{i32 775, i32 0, metadata !143, null}
!825 = metadata !{i32 781, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !143, i32 775, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!827 = metadata !{i32 787, i32 0, metadata !826, null}
!828 = metadata !{i32 788, i32 0, metadata !826, null}
!829 = metadata !{i32 789, i32 0, metadata !826, null}
!830 = metadata !{i32 790, i32 0, metadata !826, null}
!831 = metadata !{i32 797, i32 0, metadata !826, null}
!832 = metadata !{i32 798, i32 0, metadata !826, null}
!833 = metadata !{i32 804, i32 0, metadata !826, null}
!834 = metadata !{i32 805, i32 0, metadata !826, null}
!835 = metadata !{i32 806, i32 0, metadata !826, null}
!836 = metadata !{i32 807, i32 0, metadata !826, null}
!837 = metadata !{i32 808, i32 0, metadata !826, null}
!838 = metadata !{i32 809, i32 0, metadata !826, null}
!839 = metadata !{i32 815, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !826, i32 815, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!841 = metadata !{i32 818, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !840, i32 815, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!843 = metadata !{i32 823, i32 0, metadata !842, null}
!844 = metadata !{i32 824, i32 0, metadata !842, null}
!845 = metadata !{i32 825, i32 0, metadata !842, null}
!846 = metadata !{i32 826, i32 0, metadata !842, null}
!847 = metadata !{i32 827, i32 0, metadata !842, null}
!848 = metadata !{i32 816, i32 0, metadata !842, null}
!849 = metadata !{i32 817, i32 0, metadata !842, null}
!850 = metadata !{i32 819, i32 0, metadata !842, null}
!851 = metadata !{i32 820, i32 0, metadata !842, null}
!852 = metadata !{i32 821, i32 0, metadata !842, null}
!853 = metadata !{i32 822, i32 0, metadata !842, null}
!854 = metadata !{i32 828, i32 0, metadata !842, null}
!855 = metadata !{i32 830, i32 0, metadata !826, null}
!856 = metadata !{i32 831, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !826, i32 830, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!858 = metadata !{i32 832, i32 0, metadata !857, null}
!859 = metadata !{i32 833, i32 0, metadata !857, null}
!860 = metadata !{i32 834, i32 0, metadata !857, null}
!861 = metadata !{i32 835, i32 0, metadata !857, null}
!862 = metadata !{i32 836, i32 0, metadata !857, null}
!863 = metadata !{i32 837, i32 0, metadata !857, null}
!864 = metadata !{i32 838, i32 0, metadata !857, null}
!865 = metadata !{i32 839, i32 0, metadata !857, null}
!866 = metadata !{i32 839, i32 0, metadata !826, null}
!867 = metadata !{i32 840, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !826, i32 839, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!869 = metadata !{i32 841, i32 0, metadata !868, null}
!870 = metadata !{i32 842, i32 0, metadata !868, null}
!871 = metadata !{i32 843, i32 0, metadata !868, null}
!872 = metadata !{i32 844, i32 0, metadata !868, null}
!873 = metadata !{i32 845, i32 0, metadata !143, null}
!874 = metadata !{i32 855, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !143, i32 845, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!876 = metadata !{i32 856, i32 0, metadata !875, null}
!877 = metadata !{i32 862, i32 0, metadata !875, null}
!878 = metadata !{i32 863, i32 0, metadata !875, null}
!879 = metadata !{i32 869, i32 0, metadata !875, null}
!880 = metadata !{i32 870, i32 0, metadata !875, null}
!881 = metadata !{i32 871, i32 0, metadata !875, null}
!882 = metadata !{i32 877, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !875, i32 877, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!884 = metadata !{i32 885, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !1, metadata !883, i32 877, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!886 = metadata !{i32 890, i32 0, metadata !885, null}
!887 = metadata !{i32 891, i32 0, metadata !885, null}
!888 = metadata !{i32 883, i32 0, metadata !885, null}
!889 = metadata !{i32 884, i32 0, metadata !885, null}
!890 = metadata !{i32 886, i32 0, metadata !885, null}
!891 = metadata !{i32 887, i32 0, metadata !885, null}
!892 = metadata !{i32 888, i32 0, metadata !885, null}
!893 = metadata !{i32 889, i32 0, metadata !885, null}
!894 = metadata !{i32 892, i32 0, metadata !885, null}
!895 = metadata !{i32 894, i32 0, metadata !875, null}
!896 = metadata !{i32 900, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !875, i32 894, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!898 = metadata !{i32 901, i32 0, metadata !897, null}
!899 = metadata !{i32 902, i32 0, metadata !897, null}
!900 = metadata !{i32 903, i32 0, metadata !897, null}
!901 = metadata !{i32 904, i32 0, metadata !897, null}
!902 = metadata !{i32 905, i32 0, metadata !897, null}
!903 = metadata !{i32 906, i32 0, metadata !897, null}
!904 = metadata !{i32 906, i32 0, metadata !875, null}
!905 = metadata !{i32 911, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !875, i32 906, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!907 = metadata !{i32 912, i32 0, metadata !906, null}
!908 = metadata !{i32 913, i32 0, metadata !906, null}
!909 = metadata !{i32 914, i32 0, metadata !906, null}
!910 = metadata !{i32 918, i32 0, metadata !172, null}
!911 = metadata !{i32 919, i32 0, metadata !172, null}
!912 = metadata !{i32 921, i32 0, metadata !172, null}
!913 = metadata !{i32 923, i32 0, metadata !172, null}
!914 = metadata !{i32 925, i32 0, metadata !172, null}
!915 = metadata !{i32 926, i32 0, metadata !172, null}
!916 = metadata !{i32 927, i32 0, metadata !172, null}
!917 = metadata !{i32 928, i32 0, metadata !172, null}
!918 = metadata !{i32 934, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !172, i32 934, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!920 = metadata !{i32 935, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !919, i32 934, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!922 = metadata !{i32 942, i32 0, metadata !172, null}
!923 = metadata !{i32 943, i32 0, metadata !172, null}
!924 = metadata !{i32 944, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !172, i32 944, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!926 = metadata !{i32 945, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !925, i32 944, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!928 = metadata !{i32 951, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !927, i32 945, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!930 = metadata !{i32 952, i32 0, metadata !929, null}
!931 = metadata !{i32 958, i32 0, metadata !929, null}
!932 = metadata !{i32 959, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !929, i32 959, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!934 = metadata !{i32 960, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !933, i32 959, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!936 = metadata !{i32 961, i32 0, metadata !935, null}
!937 = metadata !{i32 963, i32 0, metadata !929, null}
!938 = metadata !{i32 969, i32 0, metadata !929, null}
!939 = metadata !{i32 970, i32 0, metadata !929, null}
!940 = metadata !{i32 undef}
!941 = metadata !{i32 971, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !929, i32 971, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!943 = metadata !{i32 972, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !942, i32 971, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!945 = metadata !{i32 973, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !944, i32 972, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!947 = metadata !{i32 974, i32 0, metadata !946, null}
!948 = metadata !{i32 975, i32 0, metadata !946, null}
!949 = metadata !{i32 976, i32 0, metadata !946, null}
!950 = metadata !{i32 977, i32 0, metadata !946, null}
!951 = metadata !{i32 978, i32 0, metadata !946, null}
!952 = metadata !{i32 980, i32 0, metadata !929, null}
!953 = metadata !{i32 981, i32 0, metadata !929, null}
!954 = metadata !{i32 982, i32 0, metadata !929, null}
!955 = metadata !{i32 985, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !144, i32 984, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!957 = metadata !{i32 988, i32 0, metadata !956, null}
!958 = metadata !{i32 991, i32 0, metadata !195, null}
!959 = metadata !{i32 992, i32 0, metadata !194, null}
!960 = metadata !{i32 993, i32 0, metadata !194, null}
!961 = metadata !{i32 994, i32 0, metadata !194, null}
!962 = metadata !{i32 996, i32 0, metadata !194, null}
!963 = metadata !{i32 997, i32 0, metadata !194, null}
!964 = metadata !{i32 999, i32 0, metadata !194, null}
!965 = metadata !{i32 1000, i32 0, metadata !194, null}
!966 = metadata !{i32 1001, i32 0, metadata !194, null}
!967 = metadata !{i32 1002, i32 0, metadata !194, null}
!968 = metadata !{i32 1003, i32 0, metadata !194, null}
!969 = metadata !{i32 1009, i32 0, metadata !194, null}
!970 = metadata !{i32 1010, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !194, i32 1010, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!972 = metadata !{i32 1086, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !974, i32 1084, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!974 = metadata !{i32 786443, metadata !1, metadata !971, i32 1010, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!975 = metadata !{i32 1089, i32 0, metadata !973, null}
!976 = metadata !{i32 1090, i32 0, metadata !973, null}
!977 = metadata !{i32 1091, i32 0, metadata !973, null}
!978 = metadata !{i32 1092, i32 0, metadata !973, null}
!979 = metadata !{i32 1093, i32 0, metadata !973, null}
!980 = metadata !{i32 1094, i32 0, metadata !973, null}
!981 = metadata !{i32 1079, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !983, i32 1065, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!983 = metadata !{i32 786443, metadata !1, metadata !974, i32 1065, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!984 = metadata !{i32 1080, i32 0, metadata !982, null}
!985 = metadata !{i32 1081, i32 0, metadata !982, null}
!986 = metadata !{i32 1016, i32 0, metadata !974, null}
!987 = metadata !{i32 1017, i32 0, metadata !974, null}
!988 = metadata !{i32 1023, i32 0, metadata !974, null}
!989 = metadata !{i32 1024, i32 0, metadata !974, null}
!990 = metadata !{i32 1025, i32 0, metadata !974, null}
!991 = metadata !{i32 1026, i32 0, metadata !974, null}
!992 = metadata !{i32 1027, i32 0, metadata !974, null}
!993 = metadata !{i32 1028, i32 0, metadata !974, null}
!994 = metadata !{i32 1036, i32 0, metadata !974, null}
!995 = metadata !{i32 1037, i32 0, metadata !974, null}
!996 = metadata !{i32 1044, i32 0, metadata !974, null}
!997 = metadata !{i32 1045, i32 0, metadata !974, null}
!998 = metadata !{i32 1046, i32 0, metadata !974, null}
!999 = metadata !{i32 1047, i32 0, metadata !974, null}
!1000 = metadata !{i32 1048, i32 0, metadata !974, null}
!1001 = metadata !{i32 1049, i32 0, metadata !974, null}
!1002 = metadata !{i32 1050, i32 0, metadata !974, null}
!1003 = metadata !{i32 1051, i32 0, metadata !974, null}
!1004 = metadata !{i32 1052, i32 0, metadata !974, null}
!1005 = metadata !{i32 1053, i32 0, metadata !974, null}
!1006 = metadata !{i32 1054, i32 0, metadata !974, null}
!1007 = metadata !{i32 1055, i32 0, metadata !974, null}
!1008 = metadata !{i32 1056, i32 0, metadata !974, null}
!1009 = metadata !{i32 1057, i32 0, metadata !974, null}
!1010 = metadata !{i32 1058, i32 0, metadata !974, null}
!1011 = metadata !{i32 1059, i32 0, metadata !974, null}
!1012 = metadata !{i32 1065, i32 0, metadata !983, null}
!1013 = metadata !{i32 1066, i32 0, metadata !982, null}
!1014 = metadata !{i32 1067, i32 0, metadata !982, null}
!1015 = metadata !{i32 1068, i32 0, metadata !982, null}
!1016 = metadata !{i32 1070, i32 0, metadata !982, null}
!1017 = metadata !{i32 1071, i32 0, metadata !982, null}
!1018 = metadata !{i32 1072, i32 0, metadata !982, null}
!1019 = metadata !{i32 1073, i32 0, metadata !982, null}
!1020 = metadata !{i32 1074, i32 0, metadata !982, null}
!1021 = metadata !{i32 1075, i32 0, metadata !982, null}
!1022 = metadata !{i32 1076, i32 0, metadata !982, null}
!1023 = metadata !{i32 1077, i32 0, metadata !982, null}
!1024 = metadata !{i32 1078, i32 0, metadata !982, null}
!1025 = metadata !{i32 1082, i32 0, metadata !982, null}
!1026 = metadata !{i32 1084, i32 0, metadata !974, null}
!1027 = metadata !{i32 1085, i32 0, metadata !973, null}
!1028 = metadata !{i32 1087, i32 0, metadata !973, null}
!1029 = metadata !{i32 1088, i32 0, metadata !973, null}
!1030 = metadata !{i32 1095, i32 0, metadata !973, null}
!1031 = metadata !{i32 1095, i32 0, metadata !974, null}
!1032 = metadata !{i32 1096, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !974, i32 1095, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1034 = metadata !{i32 1097, i32 0, metadata !1033, null}
!1035 = metadata !{i32 1098, i32 0, metadata !1033, null}
!1036 = metadata !{i32 1099, i32 0, metadata !1033, null}
!1037 = metadata !{i32 1100, i32 0, metadata !1033, null}
!1038 = metadata !{i32 1101, i32 0, metadata !1033, null}
!1039 = metadata !{i32 1102, i32 0, metadata !974, null}
!1040 = metadata !{i32 1104, i32 0, metadata !194, null}
!1041 = metadata !{i32 1110, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !194, i32 1104, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1043 = metadata !{i32 1116, i32 0, metadata !1042, null}
!1044 = metadata !{i32 1117, i32 0, metadata !1042, null}
!1045 = metadata !{i32 1118, i32 0, metadata !1042, null}
!1046 = metadata !{i32 1119, i32 0, metadata !1042, null}
!1047 = metadata !{i32 1126, i32 0, metadata !1042, null}
!1048 = metadata !{i32 1127, i32 0, metadata !1042, null}
!1049 = metadata !{i32 1133, i32 0, metadata !1042, null}
!1050 = metadata !{i32 1134, i32 0, metadata !1042, null}
!1051 = metadata !{i32 1135, i32 0, metadata !1042, null}
!1052 = metadata !{i32 1136, i32 0, metadata !1042, null}
!1053 = metadata !{i32 1137, i32 0, metadata !1042, null}
!1054 = metadata !{i32 1138, i32 0, metadata !1042, null}
!1055 = metadata !{i32 1139, i32 0, metadata !1042, null}
!1056 = metadata !{i32 1140, i32 0, metadata !1042, null}
!1057 = metadata !{i32 1141, i32 0, metadata !1042, null}
!1058 = metadata !{i32 1147, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !1042, i32 1147, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1060 = metadata !{i32 1150, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !1059, i32 1147, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1062 = metadata !{i32 1154, i32 0, metadata !1061, null}
!1063 = metadata !{i32 1155, i32 0, metadata !1061, null}
!1064 = metadata !{i32 1156, i32 0, metadata !1061, null}
!1065 = metadata !{i32 1157, i32 0, metadata !1061, null}
!1066 = metadata !{i32 1158, i32 0, metadata !1061, null}
!1067 = metadata !{i32 1159, i32 0, metadata !1061, null}
!1068 = metadata !{i32 1148, i32 0, metadata !1061, null}
!1069 = metadata !{i32 1149, i32 0, metadata !1061, null}
!1070 = metadata !{i32 1151, i32 0, metadata !1061, null}
!1071 = metadata !{i32 1152, i32 0, metadata !1061, null}
!1072 = metadata !{i32 1153, i32 0, metadata !1061, null}
!1073 = metadata !{i32 1160, i32 0, metadata !1061, null}
!1074 = metadata !{i32 1162, i32 0, metadata !1042, null}
!1075 = metadata !{i32 1163, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1042, i32 1162, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1077 = metadata !{i32 1164, i32 0, metadata !1076, null}
!1078 = metadata !{i32 1165, i32 0, metadata !1076, null}
!1079 = metadata !{i32 1166, i32 0, metadata !1076, null}
!1080 = metadata !{i32 1167, i32 0, metadata !1076, null}
!1081 = metadata !{i32 1168, i32 0, metadata !1076, null}
!1082 = metadata !{i32 1169, i32 0, metadata !1076, null}
!1083 = metadata !{i32 1170, i32 0, metadata !1076, null}
!1084 = metadata !{i32 1171, i32 0, metadata !1076, null}
!1085 = metadata !{i32 1171, i32 0, metadata !1042, null}
!1086 = metadata !{i32 1172, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1042, i32 1171, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1088 = metadata !{i32 1173, i32 0, metadata !1087, null}
!1089 = metadata !{i32 1174, i32 0, metadata !1087, null}
!1090 = metadata !{i32 1175, i32 0, metadata !1087, null}
!1091 = metadata !{i32 1176, i32 0, metadata !1087, null}
!1092 = metadata !{i32 1177, i32 0, metadata !194, null}
!1093 = metadata !{i32 1187, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !194, i32 1177, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1095 = metadata !{i32 1188, i32 0, metadata !1094, null}
!1096 = metadata !{i32 1194, i32 0, metadata !1094, null}
!1097 = metadata !{i32 1195, i32 0, metadata !1094, null}
!1098 = metadata !{i32 1201, i32 0, metadata !1094, null}
!1099 = metadata !{i32 1202, i32 0, metadata !1094, null}
!1100 = metadata !{i32 1203, i32 0, metadata !1094, null}
!1101 = metadata !{i32 1204, i32 0, metadata !1094, null}
!1102 = metadata !{i32 1210, i32 0, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !1, metadata !1094, i32 1210, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1104 = metadata !{i32 1218, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !1103, i32 1210, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1106 = metadata !{i32 1222, i32 0, metadata !1105, null}
!1107 = metadata !{i32 1223, i32 0, metadata !1105, null}
!1108 = metadata !{i32 1224, i32 0, metadata !1105, null}
!1109 = metadata !{i32 1216, i32 0, metadata !1105, null}
!1110 = metadata !{i32 1217, i32 0, metadata !1105, null}
!1111 = metadata !{i32 1219, i32 0, metadata !1105, null}
!1112 = metadata !{i32 1220, i32 0, metadata !1105, null}
!1113 = metadata !{i32 1221, i32 0, metadata !1105, null}
!1114 = metadata !{i32 1225, i32 0, metadata !1105, null}
!1115 = metadata !{i32 1227, i32 0, metadata !1094, null}
!1116 = metadata !{i32 1233, i32 0, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !1, metadata !1094, i32 1227, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1118 = metadata !{i32 1234, i32 0, metadata !1117, null}
!1119 = metadata !{i32 1235, i32 0, metadata !1117, null}
!1120 = metadata !{i32 1236, i32 0, metadata !1117, null}
!1121 = metadata !{i32 1237, i32 0, metadata !1117, null}
!1122 = metadata !{i32 1238, i32 0, metadata !1117, null}
!1123 = metadata !{i32 1239, i32 0, metadata !1117, null}
!1124 = metadata !{i32 1239, i32 0, metadata !1094, null}
!1125 = metadata !{i32 1244, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1094, i32 1239, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1127 = metadata !{i32 1245, i32 0, metadata !1126, null}
!1128 = metadata !{i32 1246, i32 0, metadata !1126, null}
!1129 = metadata !{i32 1247, i32 0, metadata !1126, null}
!1130 = metadata !{i32 1250, i32 0, metadata !222, null}
!1131 = metadata !{i32 1251, i32 0, metadata !222, null}
!1132 = metadata !{i32 1252, i32 0, metadata !222, null}
!1133 = metadata !{i32 1254, i32 0, metadata !222, null}
!1134 = metadata !{i32 1256, i32 0, metadata !222, null}
!1135 = metadata !{i32 1258, i32 0, metadata !222, null}
!1136 = metadata !{i32 1259, i32 0, metadata !222, null}
!1137 = metadata !{i32 1260, i32 0, metadata !222, null}
!1138 = metadata !{i32 1261, i32 0, metadata !222, null}
!1139 = metadata !{i32 1267, i32 0, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !1, metadata !222, i32 1267, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1141 = metadata !{i32 1268, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1, metadata !1140, i32 1267, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1143 = metadata !{i32 1275, i32 0, metadata !222, null}
!1144 = metadata !{i32 1276, i32 0, metadata !222, null}
!1145 = metadata !{i32 1277, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !222, i32 1277, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1147 = metadata !{i32 1330, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !1, metadata !126, i32 1330, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1149 = metadata !{i32 1331, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !1148, i32 1330, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1151 = metadata !{i32 1278, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1146, i32 1277, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1153 = metadata !{i32 1284, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !1, metadata !1152, i32 1278, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1155 = metadata !{i32 1285, i32 0, metadata !1154, null}
!1156 = metadata !{i32 1291, i32 0, metadata !1154, null}
!1157 = metadata !{i32 1292, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1154, i32 1292, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1159 = metadata !{i32 1293, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1292, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1161 = metadata !{i32 1294, i32 0, metadata !1160, null}
!1162 = metadata !{i32 1295, i32 0, metadata !1160, null}
!1163 = metadata !{i32 1297, i32 0, metadata !1154, null}
!1164 = metadata !{i32 1303, i32 0, metadata !1154, null}
!1165 = metadata !{i32 1304, i32 0, metadata !1154, null}
!1166 = metadata !{i32 1305, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !1154, i32 1305, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1168 = metadata !{i32 1306, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1167, i32 1305, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1170 = metadata !{i32 1307, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !1169, i32 1306, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1172 = metadata !{i32 1308, i32 0, metadata !1171, null}
!1173 = metadata !{i32 1309, i32 0, metadata !1171, null}
!1174 = metadata !{i32 1310, i32 0, metadata !1171, null}
!1175 = metadata !{i32 1311, i32 0, metadata !1171, null}
!1176 = metadata !{i32 1312, i32 0, metadata !1171, null}
!1177 = metadata !{i32 1314, i32 0, metadata !1154, null}
!1178 = metadata !{i32 1315, i32 0, metadata !1154, null}
!1179 = metadata !{i32 1316, i32 0, metadata !1154, null}
!1180 = metadata !{i32 1319, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !195, i32 1318, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1182 = metadata !{i32 1322, i32 0, metadata !1181, null}
!1183 = metadata !{i32 1333, i32 0, metadata !126, null}
!1184 = metadata !{i32 1353, i32 0, metadata !245, null}
!1185 = metadata !{i32 1354, i32 0, metadata !245, null}
!1186 = metadata !{i32 1355, i32 0, metadata !245, null}
!1187 = metadata !{i32 1356, i32 0, metadata !245, null}
!1188 = metadata !{i32 1357, i32 0, metadata !245, null}
!1189 = metadata !{i32 1359, i32 0, metadata !245, null}
!1190 = metadata !{i32 1360, i32 0, metadata !245, null}
!1191 = metadata !{i32 1366, i32 0, metadata !245, null}
!1192 = metadata !{i32 1367, i32 0, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !1, metadata !245, i32 1366, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1194 = metadata !{i32 1369, i32 0, metadata !1193, null}
!1195 = metadata !{i32 1371, i32 0, metadata !245, null}
!1196 = metadata !{i32 1372, i32 0, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !1, metadata !245, i32 1371, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1198 = metadata !{i32 1374, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1197, i32 1373, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1200 = metadata !{i32 1377, i32 0, metadata !1199, null}
!1201 = metadata !{i32 1380, i32 0, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !1, metadata !245, i32 1379, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1203 = metadata !{i32 1382, i32 0, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !1, metadata !1202, i32 1381, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1205 = metadata !{i32 1385, i32 0, metadata !1204, null}
!1206 = metadata !{i32 1388, i32 0, metadata !1207, null}
!1207 = metadata !{i32 786443, metadata !1, metadata !245, i32 1387, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1208 = metadata !{i32 1391, i32 0, metadata !1207, null}
!1209 = metadata !{i32 1393, i32 0, metadata !245, null}
!1210 = metadata !{i32 1394, i32 0, metadata !245, null}
!1211 = metadata !{i32 1400, i32 0, metadata !245, null}
!1212 = metadata !{i32 1401, i32 0, metadata !245, null}
!1213 = metadata !{i32 1402, i32 0, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !1, metadata !245, i32 1402, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1215 = metadata !{i32 1403, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !1214, i32 1402, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1217 = metadata !{i32 1407, i32 0, metadata !245, null}
!1218 = metadata !{i32 1416, i32 0, metadata !1219, null}
!1219 = metadata !{i32 786443, metadata !1, metadata !245, i32 1416, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1220 = metadata !{i32 1417, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !1219, i32 1416, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1222 = metadata !{i32 1433, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !245, i32 1433, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1224 = metadata !{i32 1434, i32 0, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1, metadata !1223, i32 1433, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1226 = metadata !{i32 1418, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !1, metadata !1221, i32 1417, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1228 = metadata !{i32 1435, i32 0, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !1, metadata !1225, i32 1434, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1230 = metadata !{i32 1437, i32 0, metadata !1225, null}
!1231 = metadata !{i32 1439, i32 0, metadata !245, null}
!1232 = metadata !{i32 1440, i32 0, metadata !266, null}
!1233 = metadata !{i32 1441, i32 0, metadata !265, null}
!1234 = metadata !{i32 1442, i32 0, metadata !265, null}
!1235 = metadata !{i32 1443, i32 0, metadata !265, null}
!1236 = metadata !{i32 1445, i32 0, metadata !265, null}
!1237 = metadata !{i32 1446, i32 0, metadata !265, null}
!1238 = metadata !{i32 1448, i32 0, metadata !265, null}
!1239 = metadata !{i32 1449, i32 0, metadata !265, null}
!1240 = metadata !{i32 1450, i32 0, metadata !265, null}
!1241 = metadata !{i32 1451, i32 0, metadata !265, null}
!1242 = metadata !{i32 1452, i32 0, metadata !265, null}
!1243 = metadata !{i32 1453, i32 0, metadata !265, null}
!1244 = metadata !{i32 1454, i32 0, metadata !265, null}
!1245 = metadata !{i32 1455, i32 0, metadata !265, null}
!1246 = metadata !{i32 1456, i32 0, metadata !265, null}
!1247 = metadata !{i32 1463, i32 0, metadata !265, null}
!1248 = metadata !{i32 1464, i32 0, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1, metadata !265, i32 1464, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1250 = metadata !{i32 1512, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1, metadata !1249, i32 1464, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1252 = metadata !{i32 1521, i32 0, metadata !1251, null}
!1253 = metadata !{i32 1522, i32 0, metadata !1251, null}
!1254 = metadata !{i32 1524, i32 0, metadata !1251, null}
!1255 = metadata !{i32 1525, i32 0, metadata !1251, null}
!1256 = metadata !{i32 1526, i32 0, metadata !1251, null}
!1257 = metadata !{i32 1528, i32 0, metadata !1251, null}
!1258 = metadata !{i32 1529, i32 0, metadata !1251, null}
!1259 = metadata !{i32 1530, i32 0, metadata !1251, null}
!1260 = metadata !{i32 1470, i32 0, metadata !1251, null}
!1261 = metadata !{i32 1471, i32 0, metadata !1251, null}
!1262 = metadata !{i32 1472, i32 0, metadata !1251, null}
!1263 = metadata !{i32 1473, i32 0, metadata !1251, null}
!1264 = metadata !{i32 1474, i32 0, metadata !1251, null}
!1265 = metadata !{i32 1475, i32 0, metadata !1251, null}
!1266 = metadata !{i32 1481, i32 0, metadata !1251, null}
!1267 = metadata !{i32 1482, i32 0, metadata !1251, null}
!1268 = metadata !{i32 1483, i32 0, metadata !1251, null}
!1269 = metadata !{i32 1484, i32 0, metadata !1251, null}
!1270 = metadata !{i32 1485, i32 0, metadata !1251, null}
!1271 = metadata !{i32 1486, i32 0, metadata !1251, null}
!1272 = metadata !{i32 1494, i32 0, metadata !1251, null}
!1273 = metadata !{i32 1495, i32 0, metadata !1251, null}
!1274 = metadata !{i32 1504, i32 0, metadata !1251, null}
!1275 = metadata !{i32 1505, i32 0, metadata !1251, null}
!1276 = metadata !{i32 1519, i32 0, metadata !1251, null}
!1277 = metadata !{i32 1520, i32 0, metadata !1251, null}
!1278 = metadata !{i32 1523, i32 0, metadata !1251, null}
!1279 = metadata !{i32 1527, i32 0, metadata !1251, null}
!1280 = metadata !{i32 1536, i32 0, metadata !1251, null}
!1281 = metadata !{i32 1537, i32 0, metadata !1251, null}
!1282 = metadata !{i32 1538, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !1251, i32 1538, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1284 = metadata !{i32 1563, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !1283, i32 1538, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1286 = metadata !{i32 1564, i32 0, metadata !1285, null}
!1287 = metadata !{i32 1565, i32 0, metadata !1285, null}
!1288 = metadata !{i32 1539, i32 0, metadata !1285, null}
!1289 = metadata !{i32 1540, i32 0, metadata !1285, null}
!1290 = metadata !{i32 1541, i32 0, metadata !1285, null}
!1291 = metadata !{i32 1542, i32 0, metadata !1285, null}
!1292 = metadata !{i32 1548, i32 0, metadata !1285, null}
!1293 = metadata !{i32 1549, i32 0, metadata !1285, null}
!1294 = metadata !{i32 1550, i32 0, metadata !1285, null}
!1295 = metadata !{i32 1556, i32 0, metadata !1285, null}
!1296 = metadata !{i32 1566, i32 0, metadata !1285, null}
!1297 = metadata !{i32 1567, i32 0, metadata !1285, null}
!1298 = metadata !{i32 1568, i32 0, metadata !1285, null}
!1299 = metadata !{i32 1569, i32 0, metadata !1285, null}
!1300 = metadata !{i32 1570, i32 0, metadata !1285, null}
!1301 = metadata !{i32 1571, i32 0, metadata !1285, null}
!1302 = metadata !{i32 1572, i32 0, metadata !1285, null}
!1303 = metadata !{i32 1573, i32 0, metadata !1285, null}
!1304 = metadata !{i32 1574, i32 0, metadata !1285, null}
!1305 = metadata !{i32 1575, i32 0, metadata !1285, null}
!1306 = metadata !{i32 1576, i32 0, metadata !1285, null}
!1307 = metadata !{i32 1577, i32 0, metadata !1285, null}
!1308 = metadata !{i32 1583, i32 0, metadata !1285, null}
!1309 = metadata !{i32 1593, i32 0, metadata !1285, null}
!1310 = metadata !{i32 1594, i32 0, metadata !1285, null}
!1311 = metadata !{i32 1595, i32 0, metadata !1285, null}
!1312 = metadata !{i32 1596, i32 0, metadata !1285, null}
!1313 = metadata !{i32 1597, i32 0, metadata !1285, null}
!1314 = metadata !{i32 1598, i32 0, metadata !1285, null}
!1315 = metadata !{i32 1599, i32 0, metadata !1285, null}
!1316 = metadata !{i32 1600, i32 0, metadata !1285, null}
!1317 = metadata !{i32 1601, i32 0, metadata !1285, null}
!1318 = metadata !{i32 1602, i32 0, metadata !1285, null}
!1319 = metadata !{i32 1603, i32 0, metadata !1285, null}
!1320 = metadata !{i32 1604, i32 0, metadata !1285, null}
!1321 = metadata !{i32 1610, i32 0, metadata !1285, null}
!1322 = metadata !{i32 1611, i32 0, metadata !1285, null}
!1323 = metadata !{i32 1613, i32 0, metadata !1251, null}
!1324 = metadata !{i32 1614, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1251, i32 1613, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1326 = metadata !{i32 1615, i32 0, metadata !1325, null}
!1327 = metadata !{i32 1621, i32 0, metadata !1325, null}
!1328 = metadata !{i32 1622, i32 0, metadata !1325, null}
!1329 = metadata !{i32 1628, i32 0, metadata !1325, null}
!1330 = metadata !{i32 1634, i32 0, metadata !1325, null}
!1331 = metadata !{i32 1635, i32 0, metadata !1325, null}
!1332 = metadata !{i32 1636, i32 0, metadata !1325, null}
!1333 = metadata !{i32 1637, i32 0, metadata !1325, null}
!1334 = metadata !{i32 1638, i32 0, metadata !1325, null}
!1335 = metadata !{i32 1639, i32 0, metadata !1325, null}
!1336 = metadata !{i32 1640, i32 0, metadata !1325, null}
!1337 = metadata !{i32 1641, i32 0, metadata !1325, null}
!1338 = metadata !{i32 1642, i32 0, metadata !1325, null}
!1339 = metadata !{i32 1643, i32 0, metadata !1325, null}
!1340 = metadata !{i32 1644, i32 0, metadata !1325, null}
!1341 = metadata !{i32 1645, i32 0, metadata !1325, null}
!1342 = metadata !{i32 1651, i32 0, metadata !1325, null}
!1343 = metadata !{i32 1660, i32 0, metadata !1325, null}
!1344 = metadata !{i32 1661, i32 0, metadata !1325, null}
!1345 = metadata !{i32 1662, i32 0, metadata !1325, null}
!1346 = metadata !{i32 1663, i32 0, metadata !1325, null}
!1347 = metadata !{i32 1664, i32 0, metadata !1325, null}
!1348 = metadata !{i32 1665, i32 0, metadata !1325, null}
!1349 = metadata !{i32 1669, i32 0, metadata !1325, null}
!1350 = metadata !{i32 1669, i32 0, metadata !1251, null}
!1351 = metadata !{i32 1675, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !1251, i32 1669, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1353 = metadata !{i32 1681, i32 0, metadata !1352, null}
!1354 = metadata !{i32 1687, i32 0, metadata !1352, null}
!1355 = metadata !{i32 1688, i32 0, metadata !1352, null}
!1356 = metadata !{i32 1689, i32 0, metadata !1352, null}
!1357 = metadata !{i32 1690, i32 0, metadata !1352, null}
!1358 = metadata !{i32 1691, i32 0, metadata !1352, null}
!1359 = metadata !{i32 1692, i32 0, metadata !1352, null}
!1360 = metadata !{i32 1693, i32 0, metadata !1352, null}
!1361 = metadata !{i32 1694, i32 0, metadata !1352, null}
!1362 = metadata !{i32 1695, i32 0, metadata !1352, null}
!1363 = metadata !{i32 1701, i32 0, metadata !1352, null}
!1364 = metadata !{i32 1710, i32 0, metadata !1352, null}
!1365 = metadata !{i32 1711, i32 0, metadata !1352, null}
!1366 = metadata !{i32 1712, i32 0, metadata !1352, null}
!1367 = metadata !{i32 1716, i32 0, metadata !1352, null}
!1368 = metadata !{i32 1717, i32 0, metadata !1251, null}
!1369 = metadata !{i32 1719, i32 0, metadata !265, null}
!1370 = metadata !{i32 1725, i32 0, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !1, metadata !265, i32 1719, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1372 = metadata !{i32 1726, i32 0, metadata !1371, null}
!1373 = metadata !{i32 1727, i32 0, metadata !1371, null}
!1374 = metadata !{i32 1728, i32 0, metadata !1371, null}
!1375 = metadata !{i32 1734, i32 0, metadata !1371, null}
!1376 = metadata !{i32 1735, i32 0, metadata !1371, null}
!1377 = metadata !{i32 1736, i32 0, metadata !1371, null}
!1378 = metadata !{i32 1737, i32 0, metadata !1371, null}
!1379 = metadata !{i32 1744, i32 0, metadata !1371, null}
!1380 = metadata !{i32 1745, i32 0, metadata !1371, null}
!1381 = metadata !{i32 1752, i32 0, metadata !1371, null}
!1382 = metadata !{i32 1753, i32 0, metadata !1371, null}
!1383 = metadata !{i32 1759, i32 0, metadata !1371, null}
!1384 = metadata !{i32 1765, i32 0, metadata !1371, null}
!1385 = metadata !{i32 1766, i32 0, metadata !1371, null}
!1386 = metadata !{i32 1767, i32 0, metadata !1371, null}
!1387 = metadata !{i32 1768, i32 0, metadata !1371, null}
!1388 = metadata !{i32 1769, i32 0, metadata !1371, null}
!1389 = metadata !{i32 1775, i32 0, metadata !1371, null}
!1390 = metadata !{i32 1776, i32 0, metadata !1371, null}
!1391 = metadata !{i32 1777, i32 0, metadata !1392, null}
!1392 = metadata !{i32 786443, metadata !1, metadata !1371, i32 1777, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1393 = metadata !{i32 1801, i32 0, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !1, metadata !1392, i32 1777, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1395 = metadata !{i32 1802, i32 0, metadata !1394, null}
!1396 = metadata !{i32 1807, i32 0, metadata !1394, null}
!1397 = metadata !{i32 1808, i32 0, metadata !1394, null}
!1398 = metadata !{i32 1778, i32 0, metadata !1394, null}
!1399 = metadata !{i32 1779, i32 0, metadata !1394, null}
!1400 = metadata !{i32 1780, i32 0, metadata !1394, null}
!1401 = metadata !{i32 1781, i32 0, metadata !1394, null}
!1402 = metadata !{i32 1787, i32 0, metadata !1394, null}
!1403 = metadata !{i32 1788, i32 0, metadata !1394, null}
!1404 = metadata !{i32 1789, i32 0, metadata !1394, null}
!1405 = metadata !{i32 1795, i32 0, metadata !1394, null}
!1406 = metadata !{i32 1803, i32 0, metadata !1394, null}
!1407 = metadata !{i32 1804, i32 0, metadata !1394, null}
!1408 = metadata !{i32 1805, i32 0, metadata !1394, null}
!1409 = metadata !{i32 1806, i32 0, metadata !1394, null}
!1410 = metadata !{i32 1809, i32 0, metadata !1394, null}
!1411 = metadata !{i32 1810, i32 0, metadata !1394, null}
!1412 = metadata !{i32 1816, i32 0, metadata !1394, null}
!1413 = metadata !{i32 1824, i32 0, metadata !1394, null}
!1414 = metadata !{i32 1825, i32 0, metadata !1394, null}
!1415 = metadata !{i32 1826, i32 0, metadata !1394, null}
!1416 = metadata !{i32 1827, i32 0, metadata !1394, null}
!1417 = metadata !{i32 1828, i32 0, metadata !1394, null}
!1418 = metadata !{i32 1829, i32 0, metadata !1394, null}
!1419 = metadata !{i32 1830, i32 0, metadata !1394, null}
!1420 = metadata !{i32 1831, i32 0, metadata !1394, null}
!1421 = metadata !{i32 1837, i32 0, metadata !1394, null}
!1422 = metadata !{i32 1838, i32 0, metadata !1394, null}
!1423 = metadata !{i32 1840, i32 0, metadata !1371, null}
!1424 = metadata !{i32 1841, i32 0, metadata !1425, null}
!1425 = metadata !{i32 786443, metadata !1, metadata !1371, i32 1840, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1426 = metadata !{i32 1842, i32 0, metadata !1425, null}
!1427 = metadata !{i32 1848, i32 0, metadata !1425, null}
!1428 = metadata !{i32 1849, i32 0, metadata !1425, null}
!1429 = metadata !{i32 1855, i32 0, metadata !1425, null}
!1430 = metadata !{i32 1861, i32 0, metadata !1425, null}
!1431 = metadata !{i32 1862, i32 0, metadata !1425, null}
!1432 = metadata !{i32 1863, i32 0, metadata !1425, null}
!1433 = metadata !{i32 1864, i32 0, metadata !1425, null}
!1434 = metadata !{i32 1865, i32 0, metadata !1425, null}
!1435 = metadata !{i32 1866, i32 0, metadata !1425, null}
!1436 = metadata !{i32 1867, i32 0, metadata !1425, null}
!1437 = metadata !{i32 1868, i32 0, metadata !1425, null}
!1438 = metadata !{i32 1874, i32 0, metadata !1425, null}
!1439 = metadata !{i32 1882, i32 0, metadata !1425, null}
!1440 = metadata !{i32 1883, i32 0, metadata !1425, null}
!1441 = metadata !{i32 1884, i32 0, metadata !1425, null}
!1442 = metadata !{i32 1885, i32 0, metadata !1425, null}
!1443 = metadata !{i32 1888, i32 0, metadata !1425, null}
!1444 = metadata !{i32 1888, i32 0, metadata !1371, null}
!1445 = metadata !{i32 1894, i32 0, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !1, metadata !1371, i32 1888, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1447 = metadata !{i32 1900, i32 0, metadata !1446, null}
!1448 = metadata !{i32 1906, i32 0, metadata !1446, null}
!1449 = metadata !{i32 1907, i32 0, metadata !1446, null}
!1450 = metadata !{i32 1908, i32 0, metadata !1446, null}
!1451 = metadata !{i32 1909, i32 0, metadata !1446, null}
!1452 = metadata !{i32 1910, i32 0, metadata !1446, null}
!1453 = metadata !{i32 1911, i32 0, metadata !1446, null}
!1454 = metadata !{i32 1917, i32 0, metadata !1446, null}
!1455 = metadata !{i32 1925, i32 0, metadata !1446, null}
!1456 = metadata !{i32 1926, i32 0, metadata !1446, null}
!1457 = metadata !{i32 1929, i32 0, metadata !1446, null}
!1458 = metadata !{i32 1930, i32 0, metadata !265, null}
!1459 = metadata !{i32 1935, i32 0, metadata !1460, null}
!1460 = metadata !{i32 786443, metadata !1, metadata !265, i32 1930, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1461 = metadata !{i32 1936, i32 0, metadata !1460, null}
!1462 = metadata !{i32 1942, i32 0, metadata !1460, null}
!1463 = metadata !{i32 1943, i32 0, metadata !1460, null}
!1464 = metadata !{i32 1949, i32 0, metadata !1460, null}
!1465 = metadata !{i32 1950, i32 0, metadata !1460, null}
!1466 = metadata !{i32 1956, i32 0, metadata !1460, null}
!1467 = metadata !{i32 1957, i32 0, metadata !1460, null}
!1468 = metadata !{i32 1963, i32 0, metadata !1460, null}
!1469 = metadata !{i32 1969, i32 0, metadata !1460, null}
!1470 = metadata !{i32 1975, i32 0, metadata !1460, null}
!1471 = metadata !{i32 1976, i32 0, metadata !1460, null}
!1472 = metadata !{i32 1977, i32 0, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !1, metadata !1460, i32 1977, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1474 = metadata !{i32 2001, i32 0, metadata !1475, null}
!1475 = metadata !{i32 786443, metadata !1, metadata !1473, i32 1977, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1476 = metadata !{i32 2003, i32 0, metadata !1475, null}
!1477 = metadata !{i32 2004, i32 0, metadata !1475, null}
!1478 = metadata !{i32 1978, i32 0, metadata !1475, null}
!1479 = metadata !{i32 1979, i32 0, metadata !1475, null}
!1480 = metadata !{i32 1980, i32 0, metadata !1475, null}
!1481 = metadata !{i32 1981, i32 0, metadata !1475, null}
!1482 = metadata !{i32 1987, i32 0, metadata !1475, null}
!1483 = metadata !{i32 1988, i32 0, metadata !1475, null}
!1484 = metadata !{i32 1989, i32 0, metadata !1475, null}
!1485 = metadata !{i32 1995, i32 0, metadata !1475, null}
!1486 = metadata !{i32 2002, i32 0, metadata !1475, null}
!1487 = metadata !{i32 2005, i32 0, metadata !1475, null}
!1488 = metadata !{i32 2011, i32 0, metadata !1475, null}
!1489 = metadata !{i32 2018, i32 0, metadata !1475, null}
!1490 = metadata !{i32 2019, i32 0, metadata !1475, null}
!1491 = metadata !{i32 2020, i32 0, metadata !1475, null}
!1492 = metadata !{i32 2021, i32 0, metadata !1475, null}
!1493 = metadata !{i32 2027, i32 0, metadata !1475, null}
!1494 = metadata !{i32 2028, i32 0, metadata !1475, null}
!1495 = metadata !{i32 2030, i32 0, metadata !1460, null}
!1496 = metadata !{i32 2031, i32 0, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1, metadata !1460, i32 2030, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1498 = metadata !{i32 2032, i32 0, metadata !1497, null}
!1499 = metadata !{i32 2038, i32 0, metadata !1497, null}
!1500 = metadata !{i32 2039, i32 0, metadata !1497, null}
!1501 = metadata !{i32 2045, i32 0, metadata !1497, null}
!1502 = metadata !{i32 2051, i32 0, metadata !1497, null}
!1503 = metadata !{i32 2052, i32 0, metadata !1497, null}
!1504 = metadata !{i32 2053, i32 0, metadata !1497, null}
!1505 = metadata !{i32 2054, i32 0, metadata !1497, null}
!1506 = metadata !{i32 2060, i32 0, metadata !1497, null}
!1507 = metadata !{i32 2067, i32 0, metadata !1497, null}
!1508 = metadata !{i32 2068, i32 0, metadata !1497, null}
!1509 = metadata !{i32 2070, i32 0, metadata !1497, null}
!1510 = metadata !{i32 2070, i32 0, metadata !1460, null}
!1511 = metadata !{i32 2076, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !1, metadata !1460, i32 2070, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1513 = metadata !{i32 2082, i32 0, metadata !1512, null}
!1514 = metadata !{i32 2088, i32 0, metadata !1512, null}
!1515 = metadata !{i32 2089, i32 0, metadata !1512, null}
!1516 = metadata !{i32 2090, i32 0, metadata !1512, null}
!1517 = metadata !{i32 2096, i32 0, metadata !1512, null}
!1518 = metadata !{i32 2103, i32 0, metadata !1512, null}
!1519 = metadata !{i32 2105, i32 0, metadata !1512, null}
!1520 = metadata !{i32 2107, i32 0, metadata !266, null}
!1521 = metadata !{i32 2109, i32 0, metadata !300, null}
!1522 = metadata !{i32 2111, i32 0, metadata !300, null}
!1523 = metadata !{i32 2112, i32 0, metadata !300, null}
!1524 = metadata !{i32 2114, i32 0, metadata !300, null}
!1525 = metadata !{i32 2115, i32 0, metadata !300, null}
!1526 = metadata !{i32 2117, i32 0, metadata !300, null}
!1527 = metadata !{i32 2119, i32 0, metadata !300, null}
!1528 = metadata !{i32 2121, i32 0, metadata !300, null}
!1529 = metadata !{i32 2123, i32 0, metadata !300, null}
!1530 = metadata !{i32 2124, i32 0, metadata !300, null}
!1531 = metadata !{i32 2125, i32 0, metadata !300, null}
!1532 = metadata !{i32 2126, i32 0, metadata !300, null}
!1533 = metadata !{i32 2132, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1, metadata !300, i32 2132, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1535 = metadata !{i32 2135, i32 0, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !1, metadata !1534, i32 2134, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1537 = metadata !{i32 2136, i32 0, metadata !1536, null}
!1538 = metadata !{i32 2148, i32 0, metadata !1539, null}
!1539 = metadata !{i32 786443, metadata !1, metadata !300, i32 2148, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1540 = metadata !{i32 2183, i32 0, metadata !1541, null}
!1541 = metadata !{i32 786443, metadata !1, metadata !1542, i32 2173, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1542 = metadata !{i32 786443, metadata !1, metadata !1543, i32 2161, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1543 = metadata !{i32 786443, metadata !1, metadata !1539, i32 2148, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1544 = metadata !{i32 2149, i32 0, metadata !1543, null}
!1545 = metadata !{i32 2150, i32 0, metadata !1543, null}
!1546 = metadata !{i32 2151, i32 0, metadata !1543, null}
!1547 = metadata !{i32 2152, i32 0, metadata !1543, null}
!1548 = metadata !{i32 2153, i32 0, metadata !1543, null}
!1549 = metadata !{i32 2154, i32 0, metadata !1543, null}
!1550 = metadata !{i32 2161, i32 0, metadata !1543, null}
!1551 = metadata !{i32 2167, i32 0, metadata !1542, null}
!1552 = metadata !{i32 2168, i32 0, metadata !1542, null}
!1553 = metadata !{i32 2173, i32 0, metadata !1542, null}
!1554 = metadata !{i32 2184, i32 0, metadata !1555, null}
!1555 = metadata !{i32 786443, metadata !1, metadata !1541, i32 2184, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1556 = metadata !{i32 2185, i32 0, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !1, metadata !1555, i32 2184, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1558 = metadata !{i32 2190, i32 0, metadata !1557, null}
!1559 = metadata !{i32 2192, i32 0, metadata !1541, null}
!1560 = metadata !{i32 2198, i32 0, metadata !1541, null}
!1561 = metadata !{i32 2199, i32 0, metadata !1542, null}
!1562 = metadata !{i32 2209, i32 0, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !1, metadata !1542, i32 2199, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1564 = metadata !{i32 2210, i32 0, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !1, metadata !1563, i32 2210, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1566 = metadata !{i32 2211, i32 0, metadata !1567, null}
!1567 = metadata !{i32 786443, metadata !1, metadata !1565, i32 2210, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1568 = metadata !{i32 2216, i32 0, metadata !1567, null}
!1569 = metadata !{i32 2218, i32 0, metadata !1563, null}
!1570 = metadata !{i32 2225, i32 0, metadata !1542, null}
!1571 = metadata !{i32 2231, i32 0, metadata !1572, null}
!1572 = metadata !{i32 786443, metadata !1, metadata !1542, i32 2225, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1573 = metadata !{i32 2232, i32 0, metadata !1572, null}
!1574 = metadata !{i32 2244, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !1, metadata !1542, i32 2238, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1576 = metadata !{i32 2245, i32 0, metadata !1575, null}
!1577 = metadata !{i32 2246, i32 0, metadata !1575, null}
!1578 = metadata !{i32 2247, i32 0, metadata !1579, null}
!1579 = metadata !{i32 786443, metadata !1, metadata !1575, i32 2247, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1580 = metadata !{i32 2253, i32 0, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !1, metadata !1579, i32 2247, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1582 = metadata !{i32 2254, i32 0, metadata !1583, null}
!1583 = metadata !{i32 786443, metadata !1, metadata !1581, i32 2253, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1584 = metadata !{i32 2261, i32 0, metadata !1583, null}
!1585 = metadata !{i32 2262, i32 0, metadata !1583, null}
!1586 = metadata !{i32 2263, i32 0, metadata !1583, null}
!1587 = metadata !{i32 2264, i32 0, metadata !1583, null}
!1588 = metadata !{i32 2268, i32 0, metadata !1542, null}
!1589 = metadata !{i32 2274, i32 0, metadata !1590, null}
!1590 = metadata !{i32 786443, metadata !1, metadata !1542, i32 2268, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1591 = metadata !{i32 2275, i32 0, metadata !1590, null}
!1592 = metadata !{i32 2276, i32 0, metadata !1590, null}
!1593 = metadata !{i32 2277, i32 0, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !1, metadata !1590, i32 2277, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1595 = metadata !{i32 2283, i32 0, metadata !1596, null}
!1596 = metadata !{i32 786443, metadata !1, metadata !1594, i32 2277, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1597 = metadata !{i32 2284, i32 0, metadata !1598, null}
!1598 = metadata !{i32 786443, metadata !1, metadata !1596, i32 2283, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1599 = metadata !{i32 2285, i32 0, metadata !1598, null}
!1600 = metadata !{i32 2286, i32 0, metadata !1598, null}
!1601 = metadata !{i32 2287, i32 0, metadata !1598, null}
!1602 = metadata !{i32 2288, i32 0, metadata !1598, null}
!1603 = metadata !{i32 2293, i32 0, metadata !1543, null}
!1604 = metadata !{i32 2294, i32 0, metadata !1543, null}
!1605 = metadata !{i32 2297, i32 0, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !1, metadata !266, i32 2296, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1607 = metadata !{i32 2301, i32 0, metadata !1606, null}
!1608 = metadata !{i32 2304, i32 0, metadata !338, null}
!1609 = metadata !{i32 2305, i32 0, metadata !337, null}
!1610 = metadata !{i32 2306, i32 0, metadata !337, null}
!1611 = metadata !{i32 2307, i32 0, metadata !337, null}
!1612 = metadata !{i32 2309, i32 0, metadata !337, null}
!1613 = metadata !{i32 2310, i32 0, metadata !337, null}
!1614 = metadata !{i32 2312, i32 0, metadata !337, null}
!1615 = metadata !{i32 2313, i32 0, metadata !337, null}
!1616 = metadata !{i32 2314, i32 0, metadata !337, null}
!1617 = metadata !{i32 2315, i32 0, metadata !337, null}
!1618 = metadata !{i32 2316, i32 0, metadata !337, null}
!1619 = metadata !{i32 2317, i32 0, metadata !337, null}
!1620 = metadata !{i32 2318, i32 0, metadata !337, null}
!1621 = metadata !{i32 2319, i32 0, metadata !337, null}
!1622 = metadata !{i32 2320, i32 0, metadata !337, null}
!1623 = metadata !{i32 2327, i32 0, metadata !337, null}
!1624 = metadata !{i32 2328, i32 0, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !1, metadata !337, i32 2328, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1626 = metadata !{i32 2376, i32 0, metadata !1627, null}
!1627 = metadata !{i32 786443, metadata !1, metadata !1625, i32 2328, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1628 = metadata !{i32 2383, i32 0, metadata !1627, null}
!1629 = metadata !{i32 2385, i32 0, metadata !1627, null}
!1630 = metadata !{i32 2386, i32 0, metadata !1627, null}
!1631 = metadata !{i32 2388, i32 0, metadata !1627, null}
!1632 = metadata !{i32 2389, i32 0, metadata !1627, null}
!1633 = metadata !{i32 2390, i32 0, metadata !1627, null}
!1634 = metadata !{i32 2392, i32 0, metadata !1627, null}
!1635 = metadata !{i32 2393, i32 0, metadata !1627, null}
!1636 = metadata !{i32 2394, i32 0, metadata !1627, null}
!1637 = metadata !{i32 2334, i32 0, metadata !1627, null}
!1638 = metadata !{i32 2335, i32 0, metadata !1627, null}
!1639 = metadata !{i32 2336, i32 0, metadata !1627, null}
!1640 = metadata !{i32 2337, i32 0, metadata !1627, null}
!1641 = metadata !{i32 2338, i32 0, metadata !1627, null}
!1642 = metadata !{i32 2339, i32 0, metadata !1627, null}
!1643 = metadata !{i32 2345, i32 0, metadata !1627, null}
!1644 = metadata !{i32 2346, i32 0, metadata !1627, null}
!1645 = metadata !{i32 2347, i32 0, metadata !1627, null}
!1646 = metadata !{i32 2348, i32 0, metadata !1627, null}
!1647 = metadata !{i32 2349, i32 0, metadata !1627, null}
!1648 = metadata !{i32 2350, i32 0, metadata !1627, null}
!1649 = metadata !{i32 2358, i32 0, metadata !1627, null}
!1650 = metadata !{i32 2359, i32 0, metadata !1627, null}
!1651 = metadata !{i32 2368, i32 0, metadata !1627, null}
!1652 = metadata !{i32 2369, i32 0, metadata !1627, null}
!1653 = metadata !{i32 2384, i32 0, metadata !1627, null}
!1654 = metadata !{i32 2387, i32 0, metadata !1627, null}
!1655 = metadata !{i32 2391, i32 0, metadata !1627, null}
!1656 = metadata !{i32 2400, i32 0, metadata !1627, null}
!1657 = metadata !{i32 2401, i32 0, metadata !1627, null}
!1658 = metadata !{i32 2402, i32 0, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !1, metadata !1627, i32 2402, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1660 = metadata !{i32 2427, i32 0, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !1, metadata !1659, i32 2402, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1662 = metadata !{i32 2428, i32 0, metadata !1661, null}
!1663 = metadata !{i32 2429, i32 0, metadata !1661, null}
!1664 = metadata !{i32 2403, i32 0, metadata !1661, null}
!1665 = metadata !{i32 2404, i32 0, metadata !1661, null}
!1666 = metadata !{i32 2405, i32 0, metadata !1661, null}
!1667 = metadata !{i32 2406, i32 0, metadata !1661, null}
!1668 = metadata !{i32 2412, i32 0, metadata !1661, null}
!1669 = metadata !{i32 2413, i32 0, metadata !1661, null}
!1670 = metadata !{i32 2414, i32 0, metadata !1661, null}
!1671 = metadata !{i32 2420, i32 0, metadata !1661, null}
!1672 = metadata !{i32 2430, i32 0, metadata !1661, null}
!1673 = metadata !{i32 2431, i32 0, metadata !1661, null}
!1674 = metadata !{i32 2432, i32 0, metadata !1661, null}
!1675 = metadata !{i32 2433, i32 0, metadata !1661, null}
!1676 = metadata !{i32 2434, i32 0, metadata !1661, null}
!1677 = metadata !{i32 2435, i32 0, metadata !1661, null}
!1678 = metadata !{i32 2436, i32 0, metadata !1661, null}
!1679 = metadata !{i32 2437, i32 0, metadata !1661, null}
!1680 = metadata !{i32 2438, i32 0, metadata !1661, null}
!1681 = metadata !{i32 2439, i32 0, metadata !1661, null}
!1682 = metadata !{i32 2440, i32 0, metadata !1661, null}
!1683 = metadata !{i32 2441, i32 0, metadata !1661, null}
!1684 = metadata !{i32 2447, i32 0, metadata !1661, null}
!1685 = metadata !{i32 2457, i32 0, metadata !1661, null}
!1686 = metadata !{i32 2458, i32 0, metadata !1661, null}
!1687 = metadata !{i32 2459, i32 0, metadata !1661, null}
!1688 = metadata !{i32 2460, i32 0, metadata !1661, null}
!1689 = metadata !{i32 2461, i32 0, metadata !1661, null}
!1690 = metadata !{i32 2462, i32 0, metadata !1661, null}
!1691 = metadata !{i32 2463, i32 0, metadata !1661, null}
!1692 = metadata !{i32 2464, i32 0, metadata !1661, null}
!1693 = metadata !{i32 2465, i32 0, metadata !1661, null}
!1694 = metadata !{i32 2466, i32 0, metadata !1661, null}
!1695 = metadata !{i32 2467, i32 0, metadata !1661, null}
!1696 = metadata !{i32 2468, i32 0, metadata !1661, null}
!1697 = metadata !{i32 2474, i32 0, metadata !1661, null}
!1698 = metadata !{i32 2475, i32 0, metadata !1661, null}
!1699 = metadata !{i32 2477, i32 0, metadata !1627, null}
!1700 = metadata !{i32 2478, i32 0, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !1, metadata !1627, i32 2477, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1702 = metadata !{i32 2479, i32 0, metadata !1701, null}
!1703 = metadata !{i32 2485, i32 0, metadata !1701, null}
!1704 = metadata !{i32 2486, i32 0, metadata !1701, null}
!1705 = metadata !{i32 2492, i32 0, metadata !1701, null}
!1706 = metadata !{i32 2499, i32 0, metadata !1701, null}
!1707 = metadata !{i32 2500, i32 0, metadata !1701, null}
!1708 = metadata !{i32 2501, i32 0, metadata !1701, null}
!1709 = metadata !{i32 2502, i32 0, metadata !1701, null}
!1710 = metadata !{i32 2503, i32 0, metadata !1701, null}
!1711 = metadata !{i32 2504, i32 0, metadata !1701, null}
!1712 = metadata !{i32 2505, i32 0, metadata !1701, null}
!1713 = metadata !{i32 2506, i32 0, metadata !1701, null}
!1714 = metadata !{i32 2507, i32 0, metadata !1701, null}
!1715 = metadata !{i32 2508, i32 0, metadata !1701, null}
!1716 = metadata !{i32 2509, i32 0, metadata !1701, null}
!1717 = metadata !{i32 2510, i32 0, metadata !1701, null}
!1718 = metadata !{i32 2516, i32 0, metadata !1701, null}
!1719 = metadata !{i32 2526, i32 0, metadata !1701, null}
!1720 = metadata !{i32 2527, i32 0, metadata !1701, null}
!1721 = metadata !{i32 2528, i32 0, metadata !1701, null}
!1722 = metadata !{i32 2529, i32 0, metadata !1701, null}
!1723 = metadata !{i32 2530, i32 0, metadata !1701, null}
!1724 = metadata !{i32 2531, i32 0, metadata !1701, null}
!1725 = metadata !{i32 2535, i32 0, metadata !1701, null}
!1726 = metadata !{i32 2535, i32 0, metadata !1627, null}
!1727 = metadata !{i32 2541, i32 0, metadata !1728, null}
!1728 = metadata !{i32 786443, metadata !1, metadata !1627, i32 2535, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1729 = metadata !{i32 2547, i32 0, metadata !1728, null}
!1730 = metadata !{i32 2553, i32 0, metadata !1728, null}
!1731 = metadata !{i32 2554, i32 0, metadata !1728, null}
!1732 = metadata !{i32 2555, i32 0, metadata !1728, null}
!1733 = metadata !{i32 2556, i32 0, metadata !1728, null}
!1734 = metadata !{i32 2557, i32 0, metadata !1728, null}
!1735 = metadata !{i32 2558, i32 0, metadata !1728, null}
!1736 = metadata !{i32 2559, i32 0, metadata !1728, null}
!1737 = metadata !{i32 2560, i32 0, metadata !1728, null}
!1738 = metadata !{i32 2561, i32 0, metadata !1728, null}
!1739 = metadata !{i32 2567, i32 0, metadata !1728, null}
!1740 = metadata !{i32 2576, i32 0, metadata !1728, null}
!1741 = metadata !{i32 2577, i32 0, metadata !1728, null}
!1742 = metadata !{i32 2578, i32 0, metadata !1728, null}
!1743 = metadata !{i32 2582, i32 0, metadata !1728, null}
!1744 = metadata !{i32 2583, i32 0, metadata !1627, null}
!1745 = metadata !{i32 2585, i32 0, metadata !337, null}
!1746 = metadata !{i32 2591, i32 0, metadata !1747, null}
!1747 = metadata !{i32 786443, metadata !1, metadata !337, i32 2585, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1748 = metadata !{i32 2592, i32 0, metadata !1747, null}
!1749 = metadata !{i32 2593, i32 0, metadata !1747, null}
!1750 = metadata !{i32 2594, i32 0, metadata !1747, null}
!1751 = metadata !{i32 2600, i32 0, metadata !1747, null}
!1752 = metadata !{i32 2601, i32 0, metadata !1747, null}
!1753 = metadata !{i32 2602, i32 0, metadata !1747, null}
!1754 = metadata !{i32 2603, i32 0, metadata !1747, null}
!1755 = metadata !{i32 2610, i32 0, metadata !1747, null}
!1756 = metadata !{i32 2611, i32 0, metadata !1747, null}
!1757 = metadata !{i32 2618, i32 0, metadata !1747, null}
!1758 = metadata !{i32 2619, i32 0, metadata !1747, null}
!1759 = metadata !{i32 2625, i32 0, metadata !1747, null}
!1760 = metadata !{i32 2631, i32 0, metadata !1747, null}
!1761 = metadata !{i32 2632, i32 0, metadata !1747, null}
!1762 = metadata !{i32 2633, i32 0, metadata !1747, null}
!1763 = metadata !{i32 2634, i32 0, metadata !1747, null}
!1764 = metadata !{i32 2635, i32 0, metadata !1747, null}
!1765 = metadata !{i32 2641, i32 0, metadata !1747, null}
!1766 = metadata !{i32 2642, i32 0, metadata !1747, null}
!1767 = metadata !{i32 2643, i32 0, metadata !1768, null}
!1768 = metadata !{i32 786443, metadata !1, metadata !1747, i32 2643, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1769 = metadata !{i32 2667, i32 0, metadata !1770, null}
!1770 = metadata !{i32 786443, metadata !1, metadata !1768, i32 2643, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1771 = metadata !{i32 2668, i32 0, metadata !1770, null}
!1772 = metadata !{i32 2673, i32 0, metadata !1770, null}
!1773 = metadata !{i32 2674, i32 0, metadata !1770, null}
!1774 = metadata !{i32 2644, i32 0, metadata !1770, null}
!1775 = metadata !{i32 2645, i32 0, metadata !1770, null}
!1776 = metadata !{i32 2646, i32 0, metadata !1770, null}
!1777 = metadata !{i32 2647, i32 0, metadata !1770, null}
!1778 = metadata !{i32 2653, i32 0, metadata !1770, null}
!1779 = metadata !{i32 2654, i32 0, metadata !1770, null}
!1780 = metadata !{i32 2655, i32 0, metadata !1770, null}
!1781 = metadata !{i32 2661, i32 0, metadata !1770, null}
!1782 = metadata !{i32 2669, i32 0, metadata !1770, null}
!1783 = metadata !{i32 2670, i32 0, metadata !1770, null}
!1784 = metadata !{i32 2671, i32 0, metadata !1770, null}
!1785 = metadata !{i32 2672, i32 0, metadata !1770, null}
!1786 = metadata !{i32 2675, i32 0, metadata !1770, null}
!1787 = metadata !{i32 2676, i32 0, metadata !1770, null}
!1788 = metadata !{i32 2682, i32 0, metadata !1770, null}
!1789 = metadata !{i32 2690, i32 0, metadata !1770, null}
!1790 = metadata !{i32 2691, i32 0, metadata !1770, null}
!1791 = metadata !{i32 2692, i32 0, metadata !1770, null}
!1792 = metadata !{i32 2693, i32 0, metadata !1770, null}
!1793 = metadata !{i32 2694, i32 0, metadata !1770, null}
!1794 = metadata !{i32 2695, i32 0, metadata !1770, null}
!1795 = metadata !{i32 2696, i32 0, metadata !1770, null}
!1796 = metadata !{i32 2697, i32 0, metadata !1770, null}
!1797 = metadata !{i32 2703, i32 0, metadata !1770, null}
!1798 = metadata !{i32 2704, i32 0, metadata !1770, null}
!1799 = metadata !{i32 2706, i32 0, metadata !1747, null}
!1800 = metadata !{i32 2707, i32 0, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !1, metadata !1747, i32 2706, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1802 = metadata !{i32 2708, i32 0, metadata !1801, null}
!1803 = metadata !{i32 2714, i32 0, metadata !1801, null}
!1804 = metadata !{i32 2715, i32 0, metadata !1801, null}
!1805 = metadata !{i32 2721, i32 0, metadata !1801, null}
!1806 = metadata !{i32 2727, i32 0, metadata !1801, null}
!1807 = metadata !{i32 2728, i32 0, metadata !1801, null}
!1808 = metadata !{i32 2729, i32 0, metadata !1801, null}
!1809 = metadata !{i32 2730, i32 0, metadata !1801, null}
!1810 = metadata !{i32 2731, i32 0, metadata !1801, null}
!1811 = metadata !{i32 2732, i32 0, metadata !1801, null}
!1812 = metadata !{i32 2733, i32 0, metadata !1801, null}
!1813 = metadata !{i32 2734, i32 0, metadata !1801, null}
!1814 = metadata !{i32 2740, i32 0, metadata !1801, null}
!1815 = metadata !{i32 2748, i32 0, metadata !1801, null}
!1816 = metadata !{i32 2749, i32 0, metadata !1801, null}
!1817 = metadata !{i32 2750, i32 0, metadata !1801, null}
!1818 = metadata !{i32 2751, i32 0, metadata !1801, null}
!1819 = metadata !{i32 2754, i32 0, metadata !1801, null}
!1820 = metadata !{i32 2754, i32 0, metadata !1747, null}
!1821 = metadata !{i32 2760, i32 0, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !1, metadata !1747, i32 2754, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1823 = metadata !{i32 2766, i32 0, metadata !1822, null}
!1824 = metadata !{i32 2772, i32 0, metadata !1822, null}
!1825 = metadata !{i32 2773, i32 0, metadata !1822, null}
!1826 = metadata !{i32 2774, i32 0, metadata !1822, null}
!1827 = metadata !{i32 2775, i32 0, metadata !1822, null}
!1828 = metadata !{i32 2776, i32 0, metadata !1822, null}
!1829 = metadata !{i32 2777, i32 0, metadata !1822, null}
!1830 = metadata !{i32 2783, i32 0, metadata !1822, null}
!1831 = metadata !{i32 2791, i32 0, metadata !1822, null}
!1832 = metadata !{i32 2792, i32 0, metadata !1822, null}
!1833 = metadata !{i32 2795, i32 0, metadata !1822, null}
!1834 = metadata !{i32 2796, i32 0, metadata !337, null}
!1835 = metadata !{i32 2801, i32 0, metadata !1836, null}
!1836 = metadata !{i32 786443, metadata !1, metadata !337, i32 2796, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1837 = metadata !{i32 2802, i32 0, metadata !1836, null}
!1838 = metadata !{i32 2808, i32 0, metadata !1836, null}
!1839 = metadata !{i32 2809, i32 0, metadata !1836, null}
!1840 = metadata !{i32 2815, i32 0, metadata !1836, null}
!1841 = metadata !{i32 2816, i32 0, metadata !1836, null}
!1842 = metadata !{i32 2822, i32 0, metadata !1836, null}
!1843 = metadata !{i32 2823, i32 0, metadata !1836, null}
!1844 = metadata !{i32 2829, i32 0, metadata !1836, null}
!1845 = metadata !{i32 2835, i32 0, metadata !1836, null}
!1846 = metadata !{i32 2841, i32 0, metadata !1836, null}
!1847 = metadata !{i32 2842, i32 0, metadata !1836, null}
!1848 = metadata !{i32 2843, i32 0, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !1, metadata !1836, i32 2843, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1850 = metadata !{i32 2867, i32 0, metadata !1851, null}
!1851 = metadata !{i32 786443, metadata !1, metadata !1849, i32 2843, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1852 = metadata !{i32 2869, i32 0, metadata !1851, null}
!1853 = metadata !{i32 2870, i32 0, metadata !1851, null}
!1854 = metadata !{i32 2844, i32 0, metadata !1851, null}
!1855 = metadata !{i32 2845, i32 0, metadata !1851, null}
!1856 = metadata !{i32 2846, i32 0, metadata !1851, null}
!1857 = metadata !{i32 2847, i32 0, metadata !1851, null}
!1858 = metadata !{i32 2853, i32 0, metadata !1851, null}
!1859 = metadata !{i32 2854, i32 0, metadata !1851, null}
!1860 = metadata !{i32 2855, i32 0, metadata !1851, null}
!1861 = metadata !{i32 2861, i32 0, metadata !1851, null}
!1862 = metadata !{i32 2868, i32 0, metadata !1851, null}
!1863 = metadata !{i32 2871, i32 0, metadata !1851, null}
!1864 = metadata !{i32 2877, i32 0, metadata !1851, null}
!1865 = metadata !{i32 2884, i32 0, metadata !1851, null}
!1866 = metadata !{i32 2885, i32 0, metadata !1851, null}
!1867 = metadata !{i32 2886, i32 0, metadata !1851, null}
!1868 = metadata !{i32 2887, i32 0, metadata !1851, null}
!1869 = metadata !{i32 2893, i32 0, metadata !1851, null}
!1870 = metadata !{i32 2894, i32 0, metadata !1851, null}
!1871 = metadata !{i32 2896, i32 0, metadata !1836, null}
!1872 = metadata !{i32 2897, i32 0, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !1, metadata !1836, i32 2896, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1874 = metadata !{i32 2898, i32 0, metadata !1873, null}
!1875 = metadata !{i32 2904, i32 0, metadata !1873, null}
!1876 = metadata !{i32 2905, i32 0, metadata !1873, null}
!1877 = metadata !{i32 2911, i32 0, metadata !1873, null}
!1878 = metadata !{i32 2917, i32 0, metadata !1873, null}
!1879 = metadata !{i32 2918, i32 0, metadata !1873, null}
!1880 = metadata !{i32 2919, i32 0, metadata !1873, null}
!1881 = metadata !{i32 2920, i32 0, metadata !1873, null}
!1882 = metadata !{i32 2926, i32 0, metadata !1873, null}
!1883 = metadata !{i32 2933, i32 0, metadata !1873, null}
!1884 = metadata !{i32 2934, i32 0, metadata !1873, null}
!1885 = metadata !{i32 2936, i32 0, metadata !1873, null}
!1886 = metadata !{i32 2936, i32 0, metadata !1836, null}
!1887 = metadata !{i32 2942, i32 0, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !1, metadata !1836, i32 2936, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1889 = metadata !{i32 2948, i32 0, metadata !1888, null}
!1890 = metadata !{i32 2954, i32 0, metadata !1888, null}
!1891 = metadata !{i32 2955, i32 0, metadata !1888, null}
!1892 = metadata !{i32 2956, i32 0, metadata !1888, null}
!1893 = metadata !{i32 2962, i32 0, metadata !1888, null}
!1894 = metadata !{i32 2969, i32 0, metadata !1888, null}
!1895 = metadata !{i32 2971, i32 0, metadata !1888, null}
!1896 = metadata !{i32 2973, i32 0, metadata !338, null}
!1897 = metadata !{i32 2975, i32 0, metadata !372, null}
!1898 = metadata !{i32 2976, i32 0, metadata !372, null}
!1899 = metadata !{i32 2978, i32 0, metadata !372, null}
!1900 = metadata !{i32 2979, i32 0, metadata !372, null}
!1901 = metadata !{i32 2981, i32 0, metadata !372, null}
!1902 = metadata !{i32 2982, i32 0, metadata !372, null}
!1903 = metadata !{i32 2984, i32 0, metadata !372, null}
!1904 = metadata !{i32 2986, i32 0, metadata !372, null}
!1905 = metadata !{i32 2988, i32 0, metadata !372, null}
!1906 = metadata !{i32 2990, i32 0, metadata !372, null}
!1907 = metadata !{i32 2991, i32 0, metadata !372, null}
!1908 = metadata !{i32 2992, i32 0, metadata !372, null}
!1909 = metadata !{i32 2993, i32 0, metadata !372, null}
!1910 = metadata !{i32 2999, i32 0, metadata !1911, null}
!1911 = metadata !{i32 786443, metadata !1, metadata !372, i32 2999, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1912 = metadata !{i32 3002, i32 0, metadata !1913, null}
!1913 = metadata !{i32 786443, metadata !1, metadata !1911, i32 3001, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1914 = metadata !{i32 3003, i32 0, metadata !1913, null}
!1915 = metadata !{i32 3015, i32 0, metadata !1916, null}
!1916 = metadata !{i32 786443, metadata !1, metadata !372, i32 3015, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1917 = metadata !{i32 3050, i32 0, metadata !1918, null}
!1918 = metadata !{i32 786443, metadata !1, metadata !1919, i32 3040, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1919 = metadata !{i32 786443, metadata !1, metadata !1920, i32 3028, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1920 = metadata !{i32 786443, metadata !1, metadata !1916, i32 3015, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1921 = metadata !{i32 3219, i32 0, metadata !1922, null}
!1922 = metadata !{i32 786443, metadata !1, metadata !245, i32 3219, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1923 = metadata !{i32 3220, i32 0, metadata !1924, null}
!1924 = metadata !{i32 786443, metadata !1, metadata !1922, i32 3219, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1925 = metadata !{i32 3016, i32 0, metadata !1920, null}
!1926 = metadata !{i32 3017, i32 0, metadata !1920, null}
!1927 = metadata !{i32 3018, i32 0, metadata !1920, null}
!1928 = metadata !{i32 3019, i32 0, metadata !1920, null}
!1929 = metadata !{i32 3020, i32 0, metadata !1920, null}
!1930 = metadata !{i32 3021, i32 0, metadata !1920, null}
!1931 = metadata !{i32 3028, i32 0, metadata !1920, null}
!1932 = metadata !{i32 3034, i32 0, metadata !1919, null}
!1933 = metadata !{i32 3035, i32 0, metadata !1919, null}
!1934 = metadata !{i32 3040, i32 0, metadata !1919, null}
!1935 = metadata !{i32 3051, i32 0, metadata !1936, null}
!1936 = metadata !{i32 786443, metadata !1, metadata !1918, i32 3051, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1937 = metadata !{i32 3052, i32 0, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !1, metadata !1936, i32 3051, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1939 = metadata !{i32 3057, i32 0, metadata !1938, null}
!1940 = metadata !{i32 3058, i32 0, metadata !1938, null}
!1941 = metadata !{i32 3065, i32 0, metadata !1918, null}
!1942 = metadata !{i32 3071, i32 0, metadata !1918, null}
!1943 = metadata !{i32 3072, i32 0, metadata !1919, null}
!1944 = metadata !{i32 3082, i32 0, metadata !1945, null}
!1945 = metadata !{i32 786443, metadata !1, metadata !1919, i32 3072, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1946 = metadata !{i32 3083, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !1, metadata !1945, i32 3083, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1948 = metadata !{i32 3084, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !1, metadata !1947, i32 3083, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1950 = metadata !{i32 3089, i32 0, metadata !1949, null}
!1951 = metadata !{i32 3090, i32 0, metadata !1949, null}
!1952 = metadata !{i32 3097, i32 0, metadata !1945, null}
!1953 = metadata !{i32 3104, i32 0, metadata !1919, null}
!1954 = metadata !{i32 3110, i32 0, metadata !1955, null}
!1955 = metadata !{i32 786443, metadata !1, metadata !1919, i32 3104, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1956 = metadata !{i32 3111, i32 0, metadata !1955, null}
!1957 = metadata !{i32 3119, i32 0, metadata !1955, null}
!1958 = metadata !{i32 3131, i32 0, metadata !1959, null}
!1959 = metadata !{i32 786443, metadata !1, metadata !1919, i32 3125, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1960 = metadata !{i32 3132, i32 0, metadata !1959, null}
!1961 = metadata !{i32 3133, i32 0, metadata !1959, null}
!1962 = metadata !{i32 3134, i32 0, metadata !1963, null}
!1963 = metadata !{i32 786443, metadata !1, metadata !1959, i32 3134, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1964 = metadata !{i32 3140, i32 0, metadata !1965, null}
!1965 = metadata !{i32 786443, metadata !1, metadata !1963, i32 3134, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1966 = metadata !{i32 3141, i32 0, metadata !1967, null}
!1967 = metadata !{i32 786443, metadata !1, metadata !1965, i32 3140, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1968 = metadata !{i32 3148, i32 0, metadata !1967, null}
!1969 = metadata !{i32 3149, i32 0, metadata !1967, null}
!1970 = metadata !{i32 3158, i32 0, metadata !1967, null}
!1971 = metadata !{i32 3159, i32 0, metadata !1967, null}
!1972 = metadata !{i32 3160, i32 0, metadata !1967, null}
!1973 = metadata !{i32 3164, i32 0, metadata !1919, null}
!1974 = metadata !{i32 3170, i32 0, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !1, metadata !1919, i32 3164, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1976 = metadata !{i32 3171, i32 0, metadata !1975, null}
!1977 = metadata !{i32 3172, i32 0, metadata !1975, null}
!1978 = metadata !{i32 3173, i32 0, metadata !1979, null}
!1979 = metadata !{i32 786443, metadata !1, metadata !1975, i32 3173, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1980 = metadata !{i32 3179, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !1, metadata !1979, i32 3173, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1982 = metadata !{i32 3180, i32 0, metadata !1983, null}
!1983 = metadata !{i32 786443, metadata !1, metadata !1981, i32 3179, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1984 = metadata !{i32 3187, i32 0, metadata !1983, null}
!1985 = metadata !{i32 3188, i32 0, metadata !1983, null}
!1986 = metadata !{i32 3196, i32 0, metadata !1983, null}
!1987 = metadata !{i32 3197, i32 0, metadata !1983, null}
!1988 = metadata !{i32 3198, i32 0, metadata !1983, null}
!1989 = metadata !{i32 3203, i32 0, metadata !1920, null}
!1990 = metadata !{i32 3204, i32 0, metadata !1920, null}
!1991 = metadata !{i32 3207, i32 0, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !1, metadata !338, i32 3206, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_update.c]
!1993 = metadata !{i32 3211, i32 0, metadata !1992, null}
!1994 = metadata !{i32 3222, i32 0, metadata !245, null}
