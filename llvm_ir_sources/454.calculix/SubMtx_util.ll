; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._ZV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_fillRowDV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"\0A fatal error in SubMtx_fillRowDV(%p,%d,%p)\0A type = %d, must be SPOOLES_REAL\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_fillRowZV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [81 x i8] c"\0A fatal error in SubMtx_fillRowZV(%p,%d,%p)\0A type = %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtx_fillColumnDV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [83 x i8] c"\0A fatal error in SubMtx_fillColumnDV(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str6 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtx_fillColumnZV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"\0A fatal error in SubMtx_fillColumnZV(%p,%d,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in SubMtx_maxabs(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [90 x i8] c"\0A fatal error in SubMtx_maxabs(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_zero(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillRowDV(%struct._SubMtx* %mtx, i32 %irow, %struct._DV* %rowDV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol11 = alloca i32, align 4
  %nrow = alloca i32, align 4
  %entries17 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow18 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries44 = alloca double*, align 8
  %nent48 = alloca i32, align 4
  %ncol49 = alloca i32, align 4
  %indices51 = alloca i32*, align 8
  %sizes52 = alloca i32*, align 8
  %entries81 = alloca double*, align 8
  %nent83 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries102 = alloca double*, align 8
  %nent106 = alloca i32, align 4
  %nrow107 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes109 = alloca i32*, align 8
  %entries141 = alloca double*, align 8
  %nent146 = alloca i32, align 4
  %ncol147 = alloca i32, align 4
  %firstlocs149 = alloca i32*, align 8
  %sizes150 = alloca i32*, align 8
  %entries182 = alloca double*, align 8
  %nent183 = alloca i32, align 4
  %entries189 = alloca double*, align 8
  %nrow193 = alloca i32, align 4
  %nent194 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries240 = alloca double*, align 8
  %nrow246 = alloca i32, align 4
  %nent247 = alloca i32, align 4
  %pivotsizes249 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !38), !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !39), !dbg !450
  call void @llvm.dbg.value(metadata !{%struct._DV* %rowDV}, i64 0, metadata !40), !dbg !451
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !452
  %cmp1 = icmp slt i32 %irow, 0, !dbg !452
  %or.cond = or i1 %cmp, %cmp1, !dbg !452
  %cmp3 = icmp eq %struct._DV* %rowDV, null, !dbg !452
  %or.cond435 = or i1 %or.cond, %cmp3, !dbg !452
  br i1 %or.cond435, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !453, !tbaa !455
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._DV* %rowDV) #5, !dbg !453
  call void @exit(i32 -1) #6, !dbg !458
  unreachable, !dbg !458

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !459
  %1 = load i32* %type, align 4, !dbg !459, !tbaa !460
  %cmp4 = icmp eq i32 %1, 1, !dbg !459
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !459

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !455
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._DV* %rowDV, i32 %1) #5, !dbg !461
  call void @exit(i32 -1) #6, !dbg !463
  unreachable, !dbg !463

if.end8:                                          ; preds = %if.end
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !464
  %3 = load i32* %ncol, align 4, !dbg !464, !tbaa !460
  call void @DV_setSize(%struct._DV* %rowDV, i32 %3) #5, !dbg !464
  %call9 = call double* @DV_entries(%struct._DV* %rowDV) #5, !dbg !465
  call void @llvm.dbg.value(metadata !{double* %call9}, i64 0, metadata !41), !dbg !465
  %4 = load i32* %ncol, align 4, !dbg !466, !tbaa !460
  call void @DVzero(i32 %4, double* %call9) #5, !dbg !466
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !467
  %5 = load i32* %mode, align 4, !dbg !467, !tbaa !460
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb43
    i32 4, label %sw.bb80
    i32 5, label %sw.bb101
    i32 6, label %sw.bb140
    i32 7, label %sw.bb181
    i32 8, label %for.body197.lr.ph
    i32 9, label %for.body252.lr.ph
  ], !dbg !467

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !42), !dbg !468
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !45), !dbg !469
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !46), !dbg !469
  call void @llvm.dbg.declare(metadata !{i32* %ncol11}, metadata !49), !dbg !469
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !50), !dbg !469
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol11, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !470
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !471
  call void @llvm.dbg.value(metadata !{i32* %ncol11}, i64 0, metadata !49), !dbg !471
  %6 = load i32* %ncol11, align 4, !dbg !471, !tbaa !460
  %cmp12436 = icmp sgt i32 %6, 0, !dbg !471
  br i1 %cmp12436, label %for.body.lr.ph, label %sw.epilog, !dbg !471

for.body.lr.ph:                                   ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !45), !dbg !473
  %7 = load i32* %inc1, align 4, !dbg !473, !tbaa !460
  %mul = mul nsw i32 %7, %irow, !dbg !473
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !46), !dbg !473
  %8 = load i32* %inc2, align 4, !dbg !473, !tbaa !460
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !42), !dbg !475
  %9 = load double** %entries, align 8, !dbg !475, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32* %ncol11}, i64 0, metadata !49), !dbg !471
  br label %for.body, !dbg !471

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !45), !dbg !473
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !46), !dbg !473
  %10 = trunc i64 %indvars.iv to i32, !dbg !473
  %mul13 = mul nsw i32 %8, %10, !dbg !473
  %add = add nsw i32 %mul13, %mul, !dbg !473
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !48), !dbg !473
  %idxprom = sext i32 %add to i64, !dbg !475
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !42), !dbg !475
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom, !dbg !475
  %11 = load double* %arrayidx, align 8, !dbg !475, !tbaa !476
  %arrayidx15 = getelementptr inbounds double* %call9, i64 %indvars.iv, !dbg !475
  store double %11, double* %arrayidx15, align 8, !dbg !475, !tbaa !476
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !471
  call void @llvm.dbg.value(metadata !{i32* %ncol11}, i64 0, metadata !49), !dbg !471
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !471
  %cmp12 = icmp slt i32 %12, %6, !dbg !471
  br i1 %cmp12, label %for.body, label %sw.epilog, !dbg !471

sw.bb16:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries17}, metadata !51), !dbg !477
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !56), !dbg !478
  call void @llvm.dbg.declare(metadata !{i32* %nrow18}, metadata !57), !dbg !478
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !59), !dbg !479
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !61), !dbg !479
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow18, i32* %nent, i32** %sizes, i32** %indices, double** %entries17) #5, !dbg !480
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !481
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !54), !dbg !481
  %cmp20443 = icmp sgt i32 %irow, 0, !dbg !481
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !61), !dbg !483
  %13 = load i32** %sizes, align 8, !dbg !483, !tbaa !455
  br i1 %cmp20443, label %for.body21, label %for.cond28.preheader, !dbg !481

for.cond19.for.cond28.preheader_crit_edge:        ; preds = %for.body21
  %phitmp549 = sext i32 %add24 to i64, !dbg !481
  br label %for.cond28.preheader, !dbg !481

for.cond28.preheader:                             ; preds = %sw.bb16, %for.cond19.for.cond28.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp549, %for.cond19.for.cond28.preheader_crit_edge ], [ 0, %sw.bb16 ]
  %idxprom29 = sext i32 %irow to i64, !dbg !485
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !61), !dbg !485
  %arrayidx30439 = getelementptr inbounds i32* %13, i64 %idxprom29, !dbg !485
  %14 = load i32* %arrayidx30439, align 4, !dbg !485, !tbaa !460
  %cmp31440 = icmp sgt i32 %14, 0, !dbg !485
  br i1 %cmp31440, label %for.body32.lr.ph, label %sw.epilog, !dbg !485

for.body32.lr.ph:                                 ; preds = %for.cond28.preheader
  call void @llvm.dbg.value(metadata !{double** %entries17}, i64 0, metadata !51), !dbg !487
  %15 = load double** %entries17, align 8, !dbg !487, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !59), !dbg !487
  %16 = load i32** %indices, align 8, !dbg !487, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !61), !dbg !485
  br label %for.body32, !dbg !485

for.body21:                                       ; preds = %sw.bb16, %for.body21
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %for.body21 ], [ 0, %sw.bb16 ]
  %offset.0444 = phi i32 [ %add24, %for.body21 ], [ 0, %sw.bb16 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !61), !dbg !483
  %arrayidx23 = getelementptr inbounds i32* %13, i64 %indvars.iv506, !dbg !483
  %17 = load i32* %arrayidx23, align 4, !dbg !483, !tbaa !460
  %add24 = add nsw i32 %17, %offset.0444, !dbg !483
  call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !58), !dbg !483
  %indvars.iv.next507 = add i64 %indvars.iv506, 1, !dbg !481
  %lftr.wideiv = trunc i64 %indvars.iv.next507 to i32, !dbg !481
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !481
  br i1 %exitcond, label %for.cond19.for.cond28.preheader_crit_edge, label %for.body21, !dbg !481

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv504 = phi i64 [ %offset.0.lcssa, %for.body32.lr.ph ], [ %indvars.iv.next505, %for.body32 ]
  %ii.0442 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc40, %for.body32 ]
  call void @llvm.dbg.value(metadata !{double** %entries17}, i64 0, metadata !51), !dbg !487
  %arrayidx34 = getelementptr inbounds double* %15, i64 %indvars.iv504, !dbg !487
  %18 = load double* %arrayidx34, align 8, !dbg !487, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !59), !dbg !487
  %arrayidx36 = getelementptr inbounds i32* %16, i64 %indvars.iv504, !dbg !487
  %19 = load i32* %arrayidx36, align 4, !dbg !487, !tbaa !460
  %idxprom37 = sext i32 %19 to i64, !dbg !487
  %arrayidx38 = getelementptr inbounds double* %call9, i64 %idxprom37, !dbg !487
  store double %18, double* %arrayidx38, align 8, !dbg !487, !tbaa !476
  %inc40 = add nsw i32 %ii.0442, 1, !dbg !485
  call void @llvm.dbg.value(metadata !{i32 %inc40}, i64 0, metadata !53), !dbg !485
  %indvars.iv.next505 = add i64 %indvars.iv504, 1, !dbg !485
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !61), !dbg !485
  %cmp31 = icmp slt i32 %inc40, %14, !dbg !485
  br i1 %cmp31, label %for.body32, label %sw.epilog, !dbg !485

sw.bb43:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries44}, metadata !62), !dbg !489
  call void @llvm.dbg.declare(metadata !{i32* %nent48}, metadata !67), !dbg !490
  call void @llvm.dbg.declare(metadata !{i32* %ncol49}, metadata !68), !dbg !490
  call void @llvm.dbg.declare(metadata !{i32** %indices51}, metadata !70), !dbg !491
  call void @llvm.dbg.declare(metadata !{i32** %sizes52}, metadata !71), !dbg !491
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol49, i32* %nent48, i32** %sizes52, i32** %indices51, double** %entries44) #5, !dbg !492
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !493
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !65), !dbg !493
  call void @llvm.dbg.value(metadata !{i32* %ncol49}, i64 0, metadata !68), !dbg !493
  %20 = load i32* %ncol49, align 4, !dbg !493, !tbaa !460
  %cmp54454 = icmp sgt i32 %20, 0, !dbg !493
  br i1 %cmp54454, label %for.cond56.preheader.lr.ph, label %sw.epilog, !dbg !493

for.cond56.preheader.lr.ph:                       ; preds = %sw.bb43
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !71), !dbg !495
  %21 = load i32** %sizes52, align 8, !dbg !495, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !71), !dbg !498
  call void @llvm.dbg.value(metadata !{i32* %ncol49}, i64 0, metadata !68), !dbg !493
  call void @llvm.dbg.value(metadata !{i32** %indices51}, i64 0, metadata !70), !dbg !499
  %22 = load i32** %indices51, align 8, !dbg !499, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !71), !dbg !495
  call void @llvm.dbg.value(metadata !{double** %entries44}, i64 0, metadata !62), !dbg !501
  %23 = load double** %entries44, align 8, !dbg !501, !tbaa !455
  br label %for.cond56.preheader, !dbg !493

for.cond56.preheader:                             ; preds = %for.cond56.preheader.lr.ph, %for.end73
  %indvars.iv511 = phi i64 [ 0, %for.cond56.preheader.lr.ph ], [ %indvars.iv.next512, %for.end73 ]
  %offset50.0455 = phi i32 [ 0, %for.cond56.preheader.lr.ph ], [ %add76, %for.end73 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !71), !dbg !495
  %arrayidx58448 = getelementptr inbounds i32* %21, i64 %indvars.iv511, !dbg !495
  %24 = load i32* %arrayidx58448, align 4, !dbg !495, !tbaa !460
  %cmp59449 = icmp sgt i32 %24, 0, !dbg !495
  br i1 %cmp59449, label %for.body60.lr.ph, label %for.end73, !dbg !495

for.body60.lr.ph:                                 ; preds = %for.cond56.preheader
  %25 = sext i32 %offset50.0455 to i64
  br label %for.body60, !dbg !495

for.body60:                                       ; preds = %for.body60.lr.ph, %for.inc70
  %indvars.iv509 = phi i64 [ %25, %for.body60.lr.ph ], [ %indvars.iv.next510, %for.inc70 ]
  %ii45.0451 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc71, %for.inc70 ]
  call void @llvm.dbg.value(metadata !{i32** %indices51}, i64 0, metadata !70), !dbg !499
  %arrayidx62 = getelementptr inbounds i32* %22, i64 %indvars.iv509, !dbg !499
  %26 = load i32* %arrayidx62, align 4, !dbg !499, !tbaa !460
  %cmp63 = icmp eq i32 %26, %irow, !dbg !499
  br i1 %cmp63, label %if.then64, label %for.inc70, !dbg !499

if.then64:                                        ; preds = %for.body60
  call void @llvm.dbg.value(metadata !{double** %entries44}, i64 0, metadata !62), !dbg !501
  %arrayidx66 = getelementptr inbounds double* %23, i64 %indvars.iv509, !dbg !501
  %27 = load double* %arrayidx66, align 8, !dbg !501, !tbaa !476
  %arrayidx68 = getelementptr inbounds double* %call9, i64 %indvars.iv511, !dbg !501
  store double %27, double* %arrayidx68, align 8, !dbg !501, !tbaa !476
  br label %for.end73, !dbg !503

for.inc70:                                        ; preds = %for.body60
  %inc71 = add nsw i32 %ii45.0451, 1, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %inc71}, i64 0, metadata !64), !dbg !495
  %indvars.iv.next510 = add i64 %indvars.iv509, 1, !dbg !495
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !71), !dbg !495
  %cmp59 = icmp slt i32 %inc71, %24, !dbg !495
  br i1 %cmp59, label %for.body60, label %for.end73, !dbg !495

for.end73:                                        ; preds = %for.cond56.preheader, %for.inc70, %if.then64
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !71), !dbg !498
  %add76 = add nsw i32 %24, %offset50.0455, !dbg !498
  call void @llvm.dbg.value(metadata !{i32 %add76}, i64 0, metadata !69), !dbg !498
  %indvars.iv.next512 = add i64 %indvars.iv511, 1, !dbg !493
  call void @llvm.dbg.value(metadata !{i32* %ncol49}, i64 0, metadata !68), !dbg !493
  %28 = trunc i64 %indvars.iv.next512 to i32, !dbg !493
  %cmp54 = icmp slt i32 %28, %20, !dbg !493
  br i1 %cmp54, label %for.cond56.preheader, label %sw.epilog, !dbg !493

sw.bb80:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries81}, metadata !72), !dbg !504
  call void @llvm.dbg.declare(metadata !{i32* %nent83}, metadata !75), !dbg !505
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !76), !dbg !506
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !77), !dbg !506
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent83, i32** %rowids, i32** %colids, double** %entries81) #5, !dbg !507
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %nent83}, i64 0, metadata !75), !dbg !508
  %29 = load i32* %nent83, align 4, !dbg !508, !tbaa !460
  %cmp85458 = icmp sgt i32 %29, 0, !dbg !508
  br i1 %cmp85458, label %for.body86.lr.ph, label %sw.epilog, !dbg !508

for.body86.lr.ph:                                 ; preds = %sw.bb80
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !77), !dbg !510
  %30 = load i32** %rowids, align 8, !dbg !510, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries81}, i64 0, metadata !72), !dbg !512
  %31 = load double** %entries81, align 8, !dbg !512, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !76), !dbg !512
  %32 = load i32** %colids, align 8, !dbg !512, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32* %nent83}, i64 0, metadata !75), !dbg !508
  br label %for.body86, !dbg !508

for.body86:                                       ; preds = %for.body86.lr.ph, %for.inc98
  %indvars.iv513 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next514, %for.inc98 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !77), !dbg !510
  %arrayidx88 = getelementptr inbounds i32* %30, i64 %indvars.iv513, !dbg !510
  %33 = load i32* %arrayidx88, align 4, !dbg !510, !tbaa !460
  %cmp89 = icmp eq i32 %33, %irow, !dbg !510
  br i1 %cmp89, label %if.then90, label %for.inc98, !dbg !510

if.then90:                                        ; preds = %for.body86
  call void @llvm.dbg.value(metadata !{double** %entries81}, i64 0, metadata !72), !dbg !512
  %arrayidx92 = getelementptr inbounds double* %31, i64 %indvars.iv513, !dbg !512
  %34 = load double* %arrayidx92, align 8, !dbg !512, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !76), !dbg !512
  %arrayidx94 = getelementptr inbounds i32* %32, i64 %indvars.iv513, !dbg !512
  %35 = load i32* %arrayidx94, align 4, !dbg !512, !tbaa !460
  %idxprom95 = sext i32 %35 to i64, !dbg !512
  %arrayidx96 = getelementptr inbounds double* %call9, i64 %idxprom95, !dbg !512
  store double %34, double* %arrayidx96, align 8, !dbg !512, !tbaa !476
  br label %for.inc98, !dbg !514

for.inc98:                                        ; preds = %for.body86, %if.then90
  %indvars.iv.next514 = add i64 %indvars.iv513, 1, !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %nent83}, i64 0, metadata !75), !dbg !508
  %36 = trunc i64 %indvars.iv.next514 to i32, !dbg !508
  %cmp85 = icmp slt i32 %36, %29, !dbg !508
  br i1 %cmp85, label %for.body86, label %sw.epilog, !dbg !508

sw.bb101:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries102}, metadata !78), !dbg !515
  call void @llvm.dbg.declare(metadata !{i32* %nent106}, metadata !85), !dbg !516
  call void @llvm.dbg.declare(metadata !{i32* %nrow107}, metadata !86), !dbg !516
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !88), !dbg !517
  call void @llvm.dbg.declare(metadata !{i32** %sizes109}, metadata !89), !dbg !517
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow107, i32* %nent106, i32** %firstlocs, i32** %sizes109, double** %entries102) #5, !dbg !518
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !519
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !519
  %cmp111464 = icmp sgt i32 %irow, 0, !dbg !519
  call void @llvm.dbg.value(metadata !{i32** %sizes109}, i64 0, metadata !89), !dbg !521
  %37 = load i32** %sizes109, align 8, !dbg !521, !tbaa !455
  br i1 %cmp111464, label %for.body112, label %for.end118, !dbg !519

for.body112:                                      ; preds = %sw.bb101, %for.body112
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %for.body112 ], [ 0, %sw.bb101 ]
  %offset108.0466 = phi i32 [ %add115, %for.body112 ], [ 0, %sw.bb101 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes109}, i64 0, metadata !89), !dbg !521
  %arrayidx114 = getelementptr inbounds i32* %37, i64 %indvars.iv520, !dbg !521
  %38 = load i32* %arrayidx114, align 4, !dbg !521, !tbaa !460
  %add115 = add nsw i32 %38, %offset108.0466, !dbg !521
  call void @llvm.dbg.value(metadata !{i32 %add115}, i64 0, metadata !87), !dbg !521
  %indvars.iv.next521 = add i64 %indvars.iv520, 1, !dbg !519
  %lftr.wideiv522 = trunc i64 %indvars.iv.next521 to i32, !dbg !519
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %irow, !dbg !519
  br i1 %exitcond523, label %for.cond110.for.end118_crit_edge, label %for.body112, !dbg !519

for.cond110.for.end118_crit_edge:                 ; preds = %for.body112
  %phitmp = sext i32 %add115 to i64, !dbg !519
  br label %for.end118, !dbg !519

for.end118:                                       ; preds = %sw.bb101, %for.cond110.for.end118_crit_edge
  %offset108.0.lcssa = phi i64 [ %phitmp, %for.cond110.for.end118_crit_edge ], [ 0, %sw.bb101 ]
  %idxprom119 = sext i32 %irow to i64, !dbg !523
  call void @llvm.dbg.value(metadata !{i32** %sizes109}, i64 0, metadata !89), !dbg !523
  %arrayidx120 = getelementptr inbounds i32* %37, i64 %idxprom119, !dbg !523
  %39 = load i32* %arrayidx120, align 4, !dbg !523, !tbaa !460
  %cmp121 = icmp sgt i32 %39, 0, !dbg !523
  br i1 %cmp121, label %if.then122, label %sw.epilog, !dbg !523

if.then122:                                       ; preds = %for.end118
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !88), !dbg !524
  %40 = load i32** %firstlocs, align 8, !dbg !524, !tbaa !455
  %arrayidx124 = getelementptr inbounds i32* %40, i64 %idxprom119, !dbg !524
  %41 = load i32* %arrayidx124, align 4, !dbg !524, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !80), !dbg !524
  %add127 = add i32 %39, -1, !dbg !526
  %sub = add i32 %add127, %41, !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !84), !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !83), !dbg !527
  %cmp129461 = icmp sgt i32 %41, %sub, !dbg !527
  br i1 %cmp129461, label %sw.epilog, label %for.body130.lr.ph, !dbg !527

for.body130.lr.ph:                                ; preds = %if.then122
  call void @llvm.dbg.value(metadata !{double** %entries102}, i64 0, metadata !78), !dbg !529
  %42 = load double** %entries102, align 8, !dbg !529, !tbaa !455
  %43 = sext i32 %41 to i64
  br label %for.body130, !dbg !527

for.body130:                                      ; preds = %for.body130, %for.body130.lr.ph
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %for.body130 ], [ %offset108.0.lcssa, %for.body130.lr.ph ], !dbg !527
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %for.body130 ], [ %43, %for.body130.lr.ph ]
  call void @llvm.dbg.value(metadata !{double** %entries102}, i64 0, metadata !78), !dbg !529
  %arrayidx132 = getelementptr inbounds double* %42, i64 %indvars.iv517, !dbg !529
  %44 = load double* %arrayidx132, align 8, !dbg !529, !tbaa !476
  %arrayidx134 = getelementptr inbounds double* %call9, i64 %indvars.iv515, !dbg !529
  store double %44, double* %arrayidx134, align 8, !dbg !529, !tbaa !476
  %indvars.iv.next516 = add i64 %indvars.iv515, 1, !dbg !527
  %indvars.iv.next518 = add i64 %indvars.iv517, 1, !dbg !527
  %45 = trunc i64 %indvars.iv515 to i32, !dbg !527
  %cmp129 = icmp slt i32 %45, %sub, !dbg !527
  br i1 %cmp129, label %for.body130, label %sw.epilog, !dbg !527

sw.bb140:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries141}, metadata !90), !dbg !531
  call void @llvm.dbg.declare(metadata !{i32* %nent146}, metadata !96), !dbg !532
  call void @llvm.dbg.declare(metadata !{i32* %ncol147}, metadata !97), !dbg !532
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs149}, metadata !99), !dbg !533
  call void @llvm.dbg.declare(metadata !{i32** %sizes150}, metadata !100), !dbg !533
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol147, i32* %nent146, i32** %firstlocs149, i32** %sizes150, double** %entries141) #5, !dbg !534
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !535
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !535
  call void @llvm.dbg.value(metadata !{i32* %ncol147}, i64 0, metadata !97), !dbg !535
  %46 = load i32* %ncol147, align 4, !dbg !535, !tbaa !460
  %cmp152469 = icmp sgt i32 %46, 0, !dbg !535
  br i1 %cmp152469, label %for.body153.lr.ph, label %sw.epilog, !dbg !535

for.body153.lr.ph:                                ; preds = %sw.bb140
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !100), !dbg !537
  %47 = load i32** %sizes150, align 8, !dbg !537, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %firstlocs149}, i64 0, metadata !99), !dbg !539
  %48 = load i32** %firstlocs149, align 8, !dbg !539, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !100), !dbg !541
  call void @llvm.dbg.value(metadata !{double** %entries141}, i64 0, metadata !90), !dbg !542
  %49 = load double** %entries141, align 8, !dbg !542, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32* %ncol147}, i64 0, metadata !97), !dbg !535
  br label %for.body153, !dbg !535

for.body153:                                      ; preds = %for.body153.lr.ph, %for.inc178
  %indvars.iv524 = phi i64 [ 0, %for.body153.lr.ph ], [ %indvars.iv.next525, %for.inc178 ]
  %offset148.0471 = phi i32 [ 0, %for.body153.lr.ph ], [ %offset148.1, %for.inc178 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !100), !dbg !537
  %arrayidx155 = getelementptr inbounds i32* %47, i64 %indvars.iv524, !dbg !537
  %50 = load i32* %arrayidx155, align 4, !dbg !537, !tbaa !460
  %cmp156 = icmp sgt i32 %50, 0, !dbg !537
  br i1 %cmp156, label %if.then157, label %for.inc178, !dbg !537

if.then157:                                       ; preds = %for.body153
  call void @llvm.dbg.value(metadata !{i32** %firstlocs149}, i64 0, metadata !99), !dbg !539
  %arrayidx159 = getelementptr inbounds i32* %48, i64 %indvars.iv524, !dbg !539
  %51 = load i32* %arrayidx159, align 4, !dbg !539, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !92), !dbg !539
  %cmp164 = icmp sgt i32 %51, %irow, !dbg !544
  br i1 %cmp164, label %if.end173, label %land.lhs.true, !dbg !544

land.lhs.true:                                    ; preds = %if.then157
  %add162 = add nsw i32 %51, %50, !dbg !545
  %cmp165 = icmp sgt i32 %add162, %irow, !dbg !544
  br i1 %cmp165, label %if.then166, label %if.end173, !dbg !544

if.then166:                                       ; preds = %land.lhs.true
  %add167 = add nsw i32 %offset148.0471, %irow, !dbg !546
  %sub168 = sub i32 %add167, %51, !dbg !546
  call void @llvm.dbg.value(metadata !{i32 %sub168}, i64 0, metadata !95), !dbg !546
  %idxprom169 = sext i32 %sub168 to i64, !dbg !542
  call void @llvm.dbg.value(metadata !{double** %entries141}, i64 0, metadata !90), !dbg !542
  %arrayidx170 = getelementptr inbounds double* %49, i64 %idxprom169, !dbg !542
  %52 = load double* %arrayidx170, align 8, !dbg !542, !tbaa !476
  %arrayidx172 = getelementptr inbounds double* %call9, i64 %indvars.iv524, !dbg !542
  store double %52, double* %arrayidx172, align 8, !dbg !542, !tbaa !476
  br label %if.end173, !dbg !547

if.end173:                                        ; preds = %if.then157, %if.then166, %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !100), !dbg !541
  %add176 = add nsw i32 %50, %offset148.0471, !dbg !541
  call void @llvm.dbg.value(metadata !{i32 %add176}, i64 0, metadata !98), !dbg !541
  br label %for.inc178, !dbg !548

for.inc178:                                       ; preds = %for.body153, %if.end173
  %offset148.1 = phi i32 [ %add176, %if.end173 ], [ %offset148.0471, %for.body153 ]
  %indvars.iv.next525 = add i64 %indvars.iv524, 1, !dbg !535
  call void @llvm.dbg.value(metadata !{i32* %ncol147}, i64 0, metadata !97), !dbg !535
  %53 = trunc i64 %indvars.iv.next525 to i32, !dbg !535
  %cmp152 = icmp slt i32 %53, %46, !dbg !535
  br i1 %cmp152, label %for.body153, label %sw.epilog, !dbg !535

sw.bb181:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries182}, metadata !101), !dbg !549
  call void @llvm.dbg.declare(metadata !{i32* %nent183}, metadata !103), !dbg !550
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent183, double** %entries182) #5, !dbg !551
  %idxprom184 = sext i32 %irow to i64, !dbg !552
  call void @llvm.dbg.value(metadata !{double** %entries182}, i64 0, metadata !101), !dbg !552
  %54 = load double** %entries182, align 8, !dbg !552, !tbaa !455
  %arrayidx185 = getelementptr inbounds double* %54, i64 %idxprom184, !dbg !552
  %55 = load double* %arrayidx185, align 8, !dbg !552, !tbaa !476
  %arrayidx187 = getelementptr inbounds double* %call9, i64 %idxprom184, !dbg !552
  store double %55, double* %arrayidx187, align 8, !dbg !552, !tbaa !476
  br label %sw.epilog, !dbg !553

for.body197.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries189}, metadata !104), !dbg !554
  call void @llvm.dbg.declare(metadata !{i32* %nrow193}, metadata !111), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32* %nent194}, metadata !112), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !114), !dbg !556
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow193, i32* %nent194, i32** %pivotsizes, double** %entries189) #5, !dbg !557
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !558
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !558
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !558
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !114), !dbg !560
  %56 = load i32** %pivotsizes, align 8, !dbg !560, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !104), !dbg !562
  %57 = load double** %entries189, align 8, !dbg !562, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !104), !dbg !566
  %58 = add i32 %irow, -1, !dbg !569
  br label %for.body197, !dbg !558

for.body197:                                      ; preds = %if.end234.thread, %for.body197.lr.ph, %if.end234
  %indvars.iv535 = phi i64 [ 0, %for.body197.lr.ph ], [ %indvars.iv.next536, %if.end234 ], [ %indvars.iv.next536550, %if.end234.thread ]
  %kk192.0487 = phi i32 [ 0, %for.body197.lr.ph ], [ %kk192.3, %if.end234 ], [ %add233, %if.end234.thread ]
  %jrow191.0486 = phi i32 [ 0, %for.body197.lr.ph ], [ %add202, %if.end234 ], [ %add202, %if.end234.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !114), !dbg !560
  %arrayidx199 = getelementptr inbounds i32* %56, i64 %indvars.iv535, !dbg !560
  %59 = load i32* %arrayidx199, align 4, !dbg !560, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !110), !dbg !560
  %add202 = add nsw i32 %59, %jrow191.0486, !dbg !570
  %cmp203 = icmp sgt i32 %add202, %irow, !dbg !570
  br i1 %cmp203, label %if.then204, label %if.end234.thread, !dbg !570

if.then204:                                       ; preds = %for.body197
  %sub206 = sub i32 %irow, %jrow191.0486, !dbg !571
  %add207 = add nsw i32 %sub206, %kk192.0487, !dbg !571
  call void @llvm.dbg.value(metadata !{i32 %add207}, i64 0, metadata !109), !dbg !571
  call void @llvm.dbg.value(metadata !{i32 %jrow191.0486}, i64 0, metadata !106), !dbg !569
  %cmp209473 = icmp sgt i32 %jrow191.0486, %irow, !dbg !569
  br i1 %cmp209473, label %for.cond219.loopexit, label %for.body210.lr.ph, !dbg !569

for.body210.lr.ph:                                ; preds = %if.then204
  %60 = sext i32 %59 to i64
  %61 = sext i32 %jrow191.0486 to i64, !dbg !569
  %62 = add i32 %58, %kk192.0487, !dbg !569
  %63 = add i32 %62, %59, !dbg !569
  %64 = add i32 %59, -2, !dbg !569
  %65 = mul i32 %sub206, %64, !dbg !569
  %66 = add i32 %63, %65, !dbg !569
  %67 = zext i32 %sub206 to i33, !dbg !569
  %68 = sub i32 %58, %jrow191.0486, !dbg !569
  %69 = zext i32 %68 to i33, !dbg !569
  %70 = mul i33 %67, %69, !dbg !569
  %71 = lshr i33 %70, 1, !dbg !569
  %72 = trunc i33 %71 to i32, !dbg !569
  br label %for.body210, !dbg !569

for.body210:                                      ; preds = %for.body210, %for.body210.lr.ph
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %for.body210 ], [ %61, %for.body210.lr.ph ], !dbg !569
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %for.body210 ], [ %60, %for.body210.lr.ph ]
  %kk192.1475 = phi i32 [ %add215, %for.body210 ], [ %add207, %for.body210.lr.ph ]
  %indvars.iv.next527 = add i64 %indvars.iv526, -1, !dbg !569
  %idxprom211 = sext i32 %kk192.1475 to i64, !dbg !566
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !104), !dbg !566
  %arrayidx212 = getelementptr inbounds double* %57, i64 %idxprom211, !dbg !566
  %73 = load double* %arrayidx212, align 8, !dbg !566, !tbaa !476
  %arrayidx214 = getelementptr inbounds double* %call9, i64 %indvars.iv528, !dbg !566
  store double %73, double* %arrayidx214, align 8, !dbg !566, !tbaa !476
  %74 = trunc i64 %indvars.iv.next527 to i32, !dbg !572
  %add215 = add nsw i32 %74, %kk192.1475, !dbg !572
  call void @llvm.dbg.value(metadata !{i32 %78}, i64 0, metadata !109), !dbg !572
  %indvars.iv.next529 = add i64 %indvars.iv528, 1, !dbg !569
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !106), !dbg !569
  %75 = trunc i64 %indvars.iv528 to i32, !dbg !569
  %cmp209 = icmp slt i32 %75, %irow, !dbg !569
  br i1 %cmp209, label %for.body210, label %for.cond208.for.cond219.loopexit_crit_edge, !dbg !569

for.cond208.for.cond219.loopexit_crit_edge:       ; preds = %for.body210
  %76 = add i32 %irow, 1, !dbg !569
  %77 = sub i32 %66, %jrow191.0486, !dbg !569
  %78 = sub i32 %77, %72, !dbg !569
  br label %for.cond219.loopexit, !dbg !569

for.cond219.loopexit:                             ; preds = %for.cond208.for.cond219.loopexit_crit_edge, %if.then204
  %kk192.1.lcssa = phi i32 [ %78, %for.cond208.for.cond219.loopexit_crit_edge ], [ %add207, %if.then204 ]
  %ii190.0.lcssa = phi i32 [ %76, %for.cond208.for.cond219.loopexit_crit_edge ], [ %jrow191.0486, %if.then204 ]
  %cmp221479 = icmp slt i32 %ii190.0.lcssa, %add202, !dbg !573
  br i1 %cmp221479, label %for.body222.lr.ph, label %if.end234, !dbg !573

for.body222.lr.ph:                                ; preds = %for.cond219.loopexit
  %79 = sext i32 %kk192.1.lcssa to i64
  %80 = sext i32 %ii190.0.lcssa to i64, !dbg !573
  %81 = add i32 %jrow191.0486, %kk192.1.lcssa, !dbg !573
  %82 = add i32 %81, %59, !dbg !573
  br label %for.body222, !dbg !573

for.body222:                                      ; preds = %for.body222.lr.ph, %for.body222
  %indvars.iv532 = phi i64 [ %80, %for.body222.lr.ph ], [ %indvars.iv.next533, %for.body222 ], !dbg !573
  %indvars.iv530 = phi i64 [ %79, %for.body222.lr.ph ], [ %indvars.iv.next531, %for.body222 ]
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !104), !dbg !562
  %arrayidx224 = getelementptr inbounds double* %57, i64 %indvars.iv530, !dbg !562
  %83 = load double* %arrayidx224, align 8, !dbg !562, !tbaa !476
  %arrayidx226 = getelementptr inbounds double* %call9, i64 %indvars.iv532, !dbg !562
  store double %83, double* %arrayidx226, align 8, !dbg !562, !tbaa !476
  %indvars.iv.next531 = add i64 %indvars.iv530, 1, !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %85}, i64 0, metadata !109), !dbg !574
  %indvars.iv.next533 = add i64 %indvars.iv532, 1, !dbg !573
  %84 = trunc i64 %indvars.iv.next533 to i32, !dbg !573
  %cmp221 = icmp slt i32 %84, %add202, !dbg !573
  br i1 %cmp221, label %for.body222, label %for.cond219.if.end234.loopexit_crit_edge, !dbg !573

if.end234.thread:                                 ; preds = %for.body197
  %add231 = add nsw i32 %59, 1, !dbg !575
  %mul232 = mul nsw i32 %add231, %59, !dbg !575
  %div = sdiv i32 %mul232, 2, !dbg !575
  %add233 = add nsw i32 %div, %kk192.0487, !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %add233}, i64 0, metadata !109), !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !108), !dbg !577
  %indvars.iv.next536550 = add i64 %indvars.iv535, 1, !dbg !558
  br label %for.body197, !dbg !558

for.cond219.if.end234.loopexit_crit_edge:         ; preds = %for.body222
  %85 = sub i32 %82, %ii190.0.lcssa, !dbg !573
  br label %if.end234, !dbg !573

if.end234:                                        ; preds = %for.cond219.loopexit, %for.cond219.if.end234.loopexit_crit_edge
  %kk192.3 = phi i32 [ %85, %for.cond219.if.end234.loopexit_crit_edge ], [ %kk192.1.lcssa, %for.cond219.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !108), !dbg !577
  %indvars.iv.next536 = add i64 %indvars.iv535, 1, !dbg !558
  br i1 %cmp203, label %sw.epilog, label %for.body197, !dbg !558

for.body252.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries240}, metadata !115), !dbg !578
  call void @llvm.dbg.declare(metadata !{i32* %nrow246}, metadata !122), !dbg !579
  call void @llvm.dbg.declare(metadata !{i32* %nent247}, metadata !123), !dbg !579
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes249}, metadata !125), !dbg !580
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow246, i32* %nent247, i32** %pivotsizes249, double** %entries240) #5, !dbg !581
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !120), !dbg !582
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !582
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !119), !dbg !582
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes249}, i64 0, metadata !125), !dbg !584
  %86 = load i32** %pivotsizes249, align 8, !dbg !584, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !115), !dbg !586
  %87 = load double** %entries240, align 8, !dbg !586, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !115), !dbg !590
  %88 = add i32 %irow, -1, !dbg !593
  %89 = add i32 %irow, -2, !dbg !593
  br label %for.body252, !dbg !582

for.body252:                                      ; preds = %if.end292.thread, %for.body252.lr.ph, %if.end292
  %indvars.iv546 = phi i64 [ 0, %for.body252.lr.ph ], [ %indvars.iv.next547, %if.end292 ], [ %indvars.iv.next547551, %if.end292.thread ]
  %kk244.0503 = phi i32 [ 0, %for.body252.lr.ph ], [ %kk244.3, %if.end292 ], [ %add291, %if.end292.thread ]
  %jrow243.0502 = phi i32 [ 0, %for.body252.lr.ph ], [ %add257, %if.end292 ], [ %add257, %if.end292.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes249}, i64 0, metadata !125), !dbg !584
  %arrayidx254 = getelementptr inbounds i32* %86, i64 %indvars.iv546, !dbg !584
  %90 = load i32* %arrayidx254, align 4, !dbg !584, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !121), !dbg !584
  %add257 = add nsw i32 %90, %jrow243.0502, !dbg !594
  %cmp258 = icmp sgt i32 %add257, %irow, !dbg !594
  br i1 %cmp258, label %if.then259, label %if.end292.thread, !dbg !594

if.then259:                                       ; preds = %for.body252
  %sub261 = sub i32 %irow, %jrow243.0502, !dbg !595
  %add262 = add nsw i32 %sub261, %kk244.0503, !dbg !595
  call void @llvm.dbg.value(metadata !{i32 %add262}, i64 0, metadata !120), !dbg !595
  call void @llvm.dbg.value(metadata !{i32 %jrow243.0502}, i64 0, metadata !117), !dbg !593
  %cmp264489 = icmp slt i32 %jrow243.0502, %irow, !dbg !593
  br i1 %cmp264489, label %for.body265.lr.ph, label %for.cond275.loopexit, !dbg !593

for.body265.lr.ph:                                ; preds = %if.then259
  %91 = sext i32 %90 to i64
  %92 = sext i32 %jrow243.0502 to i64, !dbg !593
  %93 = add i32 %88, %kk244.0503, !dbg !593
  %94 = add i32 %93, %90, !dbg !593
  %95 = sub i32 %88, %jrow243.0502, !dbg !593
  %96 = add i32 %90, -2, !dbg !593
  %97 = mul i32 %95, %96, !dbg !593
  %98 = add i32 %94, %97, !dbg !593
  %99 = zext i32 %95 to i33, !dbg !593
  %100 = sub i32 %89, %jrow243.0502, !dbg !593
  %101 = zext i32 %100 to i33, !dbg !593
  %102 = mul i33 %99, %101, !dbg !593
  %103 = lshr i33 %102, 1, !dbg !593
  %104 = trunc i33 %103 to i32, !dbg !593
  br label %for.body265, !dbg !593

for.body265:                                      ; preds = %for.body265.lr.ph, %for.body265
  %indvars.iv539 = phi i64 [ %92, %for.body265.lr.ph ], [ %indvars.iv.next540, %for.body265 ], !dbg !593
  %indvars.iv537 = phi i64 [ %91, %for.body265.lr.ph ], [ %indvars.iv.next538, %for.body265 ]
  %kk244.1491 = phi i32 [ %add262, %for.body265.lr.ph ], [ %add271, %for.body265 ]
  %indvars.iv.next538 = add i64 %indvars.iv537, -1, !dbg !593
  %idxprom266 = sext i32 %kk244.1491 to i64, !dbg !590
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !115), !dbg !590
  %arrayidx267 = getelementptr inbounds double* %87, i64 %idxprom266, !dbg !590
  %105 = load double* %arrayidx267, align 8, !dbg !590, !tbaa !476
  %arrayidx269 = getelementptr inbounds double* %call9, i64 %indvars.iv539, !dbg !590
  store double %105, double* %arrayidx269, align 8, !dbg !590, !tbaa !476
  %106 = trunc i64 %indvars.iv.next538 to i32, !dbg !596
  %add271 = add nsw i32 %106, %kk244.1491, !dbg !596
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !120), !dbg !596
  %indvars.iv.next540 = add i64 %indvars.iv539, 1, !dbg !593
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !117), !dbg !593
  %107 = trunc i64 %indvars.iv.next540 to i32, !dbg !593
  %cmp264 = icmp slt i32 %107, %irow, !dbg !593
  br i1 %cmp264, label %for.body265, label %for.cond263.for.cond275.loopexit_crit_edge, !dbg !593

for.cond263.for.cond275.loopexit_crit_edge:       ; preds = %for.body265
  %108 = sub i32 %98, %jrow243.0502, !dbg !593
  %109 = sub i32 %108, %104, !dbg !593
  br label %for.cond275.loopexit, !dbg !593

for.cond275.loopexit:                             ; preds = %for.cond263.for.cond275.loopexit_crit_edge, %if.then259
  %kk244.1.lcssa = phi i32 [ %109, %for.cond263.for.cond275.loopexit_crit_edge ], [ %add262, %if.then259 ]
  %ii241.0.lcssa = phi i32 [ %irow, %for.cond263.for.cond275.loopexit_crit_edge ], [ %jrow243.0502, %if.then259 ]
  %cmp277495 = icmp slt i32 %ii241.0.lcssa, %add257, !dbg !597
  br i1 %cmp277495, label %for.body278.lr.ph, label %if.end292, !dbg !597

for.body278.lr.ph:                                ; preds = %for.cond275.loopexit
  %110 = sext i32 %kk244.1.lcssa to i64
  %111 = sext i32 %ii241.0.lcssa to i64, !dbg !597
  %112 = add i32 %jrow243.0502, %kk244.1.lcssa, !dbg !597
  %113 = add i32 %112, %90, !dbg !597
  br label %for.body278, !dbg !597

for.body278:                                      ; preds = %for.body278.lr.ph, %for.body278
  %indvars.iv543 = phi i64 [ %111, %for.body278.lr.ph ], [ %indvars.iv.next544, %for.body278 ], !dbg !597
  %indvars.iv541 = phi i64 [ %110, %for.body278.lr.ph ], [ %indvars.iv.next542, %for.body278 ]
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !115), !dbg !586
  %arrayidx280 = getelementptr inbounds double* %87, i64 %indvars.iv541, !dbg !586
  %114 = load double* %arrayidx280, align 8, !dbg !586, !tbaa !476
  %arrayidx282 = getelementptr inbounds double* %call9, i64 %indvars.iv543, !dbg !586
  store double %114, double* %arrayidx282, align 8, !dbg !586, !tbaa !476
  %indvars.iv.next542 = add i64 %indvars.iv541, 1, !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !120), !dbg !598
  %indvars.iv.next544 = add i64 %indvars.iv543, 1, !dbg !597
  %115 = trunc i64 %indvars.iv.next544 to i32, !dbg !597
  %cmp277 = icmp slt i32 %115, %add257, !dbg !597
  br i1 %cmp277, label %for.body278, label %for.cond275.if.end292.loopexit_crit_edge, !dbg !597

if.end292.thread:                                 ; preds = %for.body252
  %add288 = add nsw i32 %90, 1, !dbg !599
  %mul289 = mul nsw i32 %add288, %90, !dbg !599
  %div290 = sdiv i32 %mul289, 2, !dbg !599
  %add291 = add nsw i32 %div290, %kk244.0503, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %add291}, i64 0, metadata !120), !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %add257}, i64 0, metadata !119), !dbg !601
  %indvars.iv.next547551 = add i64 %indvars.iv546, 1, !dbg !582
  br label %for.body252, !dbg !582

for.cond275.if.end292.loopexit_crit_edge:         ; preds = %for.body278
  %116 = sub i32 %113, %ii241.0.lcssa, !dbg !597
  br label %if.end292, !dbg !597

if.end292:                                        ; preds = %for.cond275.loopexit, %for.cond275.if.end292.loopexit_crit_edge
  %kk244.3 = phi i32 [ %116, %for.cond275.if.end292.loopexit_crit_edge ], [ %kk244.1.lcssa, %for.cond275.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add257}, i64 0, metadata !119), !dbg !601
  %indvars.iv.next547 = add i64 %indvars.iv546, 1, !dbg !582
  br i1 %cmp258, label %sw.epilog, label %for.body252, !dbg !582

sw.epilog:                                        ; preds = %if.end292, %if.end234, %sw.bb140, %for.inc178, %if.then122, %for.body130, %sw.bb80, %for.inc98, %sw.bb43, %for.end73, %for.cond28.preheader, %for.body32, %sw.bb, %for.body, %if.end8, %for.end118, %sw.bb181
  ret void, !dbg !602
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseTriplesInfo(%struct._SubMtx*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillRowZV(%struct._SubMtx* %mtx, i32 %irow, %struct._ZV* %rowZV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol11 = alloca i32, align 4
  %nrow = alloca i32, align 4
  %entries28 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow29 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries67 = alloca double*, align 8
  %nent71 = alloca i32, align 4
  %ncol72 = alloca i32, align 4
  %indices74 = alloca i32*, align 8
  %sizes75 = alloca i32*, align 8
  %entries114 = alloca double*, align 8
  %nent116 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries147 = alloca double*, align 8
  %nent151 = alloca i32, align 4
  %nrow152 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes154 = alloca i32*, align 8
  %entries196 = alloca double*, align 8
  %nent201 = alloca i32, align 4
  %ncol202 = alloca i32, align 4
  %firstlocs204 = alloca i32*, align 8
  %sizes205 = alloca i32*, align 8
  %entries247 = alloca double*, align 8
  %nent248 = alloca i32, align 4
  %entries264 = alloca double*, align 8
  %nrow268 = alloca i32, align 4
  %nent269 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries335 = alloca double*, align 8
  %nrow341 = alloca i32, align 4
  %nent342 = alloca i32, align 4
  %pivotsizes344 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !139), !dbg !603
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !140), !dbg !604
  call void @llvm.dbg.value(metadata !{%struct._ZV* %rowZV}, i64 0, metadata !141), !dbg !605
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !606
  %cmp1 = icmp slt i32 %irow, 0, !dbg !606
  %or.cond = or i1 %cmp, %cmp1, !dbg !606
  %cmp3 = icmp eq %struct._ZV* %rowZV, null, !dbg !606
  %or.cond605 = or i1 %or.cond, %cmp3, !dbg !606
  br i1 %or.cond605, label %if.then, label %if.end, !dbg !606

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !607, !tbaa !455
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._ZV* %rowZV) #5, !dbg !607
  call void @exit(i32 -1) #6, !dbg !609
  unreachable, !dbg !609

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !610
  %1 = load i32* %type, align 4, !dbg !610, !tbaa !460
  %cmp4 = icmp eq i32 %1, 2, !dbg !610
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !610

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !611, !tbaa !455
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._ZV* %rowZV, i32 %1) #5, !dbg !611
  call void @exit(i32 -1) #6, !dbg !613
  unreachable, !dbg !613

if.end8:                                          ; preds = %if.end
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !614
  %3 = load i32* %ncol, align 4, !dbg !614, !tbaa !460
  call void @ZV_setSize(%struct._ZV* %rowZV, i32 %3) #5, !dbg !614
  %call9 = call double* @ZV_entries(%struct._ZV* %rowZV) #5, !dbg !615
  call void @llvm.dbg.value(metadata !{double* %call9}, i64 0, metadata !142), !dbg !615
  %4 = load i32* %ncol, align 4, !dbg !616, !tbaa !460
  %mul = shl nsw i32 %4, 1, !dbg !616
  call void @DVzero(i32 %mul, double* %call9) #5, !dbg !616
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !617
  %5 = load i32* %mode, align 4, !dbg !617, !tbaa !460
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb66
    i32 4, label %sw.bb113
    i32 5, label %sw.bb146
    i32 6, label %sw.bb195
    i32 7, label %sw.bb246
    i32 8, label %for.body272.lr.ph
    i32 9, label %for.body347.lr.ph
  ], !dbg !617

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !143), !dbg !618
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !146), !dbg !619
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !147), !dbg !619
  call void @llvm.dbg.declare(metadata !{i32* %ncol11}, metadata !150), !dbg !619
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !151), !dbg !619
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol11, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !620
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !621
  call void @llvm.dbg.value(metadata !{i32* %ncol11}, i64 0, metadata !150), !dbg !621
  %6 = load i32* %ncol11, align 4, !dbg !621, !tbaa !460
  %cmp12606 = icmp sgt i32 %6, 0, !dbg !621
  br i1 %cmp12606, label %for.body.lr.ph, label %sw.epilog, !dbg !621

for.body.lr.ph:                                   ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !146), !dbg !623
  %7 = load i32* %inc1, align 4, !dbg !623, !tbaa !460
  %mul13 = mul nsw i32 %7, %irow, !dbg !623
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !147), !dbg !623
  %8 = load i32* %inc2, align 4, !dbg !623, !tbaa !460
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !143), !dbg !625
  %9 = load double** %entries, align 8, !dbg !625, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !143), !dbg !626
  call void @llvm.dbg.value(metadata !{i32* %ncol11}, i64 0, metadata !150), !dbg !621
  br label %for.body, !dbg !621

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !146), !dbg !623
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !147), !dbg !623
  %10 = trunc i64 %indvars.iv to i32, !dbg !623
  %mul14 = mul nsw i32 %8, %10, !dbg !623
  %add = add nsw i32 %mul14, %mul13, !dbg !623
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !149), !dbg !623
  %mul15 = shl nsw i32 %add, 1, !dbg !625
  %idxprom = sext i32 %mul15 to i64, !dbg !625
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !143), !dbg !625
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom, !dbg !625
  %11 = load double* %arrayidx, align 8, !dbg !625, !tbaa !476
  %mul16 = shl nsw i32 %10, 1, !dbg !625
  %idxprom17 = sext i32 %mul16 to i64, !dbg !625
  %arrayidx18 = getelementptr inbounds double* %call9, i64 %idxprom17, !dbg !625
  store double %11, double* %arrayidx18, align 8, !dbg !625, !tbaa !476
  %add20603 = or i32 %mul15, 1, !dbg !626
  %idxprom21 = sext i32 %add20603 to i64, !dbg !626
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !143), !dbg !626
  %arrayidx22 = getelementptr inbounds double* %9, i64 %idxprom21, !dbg !626
  %12 = load double* %arrayidx22, align 8, !dbg !626, !tbaa !476
  %add24604 = or i32 %mul16, 1, !dbg !626
  %idxprom25 = sext i32 %add24604 to i64, !dbg !626
  %arrayidx26 = getelementptr inbounds double* %call9, i64 %idxprom25, !dbg !626
  store double %12, double* %arrayidx26, align 8, !dbg !626, !tbaa !476
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !621
  call void @llvm.dbg.value(metadata !{i32* %ncol11}, i64 0, metadata !150), !dbg !621
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !621
  %cmp12 = icmp slt i32 %13, %6, !dbg !621
  br i1 %cmp12, label %for.body, label %sw.epilog, !dbg !621

sw.bb27:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries28}, metadata !152), !dbg !627
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !157), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32* %nrow29}, metadata !158), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !160), !dbg !629
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !161), !dbg !629
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow29, i32* %nent, i32** %sizes, i32** %indices, double** %entries28) #5, !dbg !630
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !631
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !631
  %cmp31613 = icmp sgt i32 %irow, 0, !dbg !631
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !161), !dbg !633
  %14 = load i32** %sizes, align 8, !dbg !633, !tbaa !455
  br i1 %cmp31613, label %for.body32, label %for.cond39.preheader, !dbg !631

for.cond30.for.cond39.preheader_crit_edge:        ; preds = %for.body32
  %phitmp719 = sext i32 %add35 to i64, !dbg !631
  br label %for.cond39.preheader, !dbg !631

for.cond39.preheader:                             ; preds = %sw.bb27, %for.cond30.for.cond39.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp719, %for.cond30.for.cond39.preheader_crit_edge ], [ 0, %sw.bb27 ]
  %idxprom40 = sext i32 %irow to i64, !dbg !635
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !161), !dbg !635
  %arrayidx41609 = getelementptr inbounds i32* %14, i64 %idxprom40, !dbg !635
  %15 = load i32* %arrayidx41609, align 4, !dbg !635, !tbaa !460
  %cmp42610 = icmp sgt i32 %15, 0, !dbg !635
  br i1 %cmp42610, label %for.body43.lr.ph, label %sw.epilog, !dbg !635

for.body43.lr.ph:                                 ; preds = %for.cond39.preheader
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !152), !dbg !637
  %16 = load double** %entries28, align 8, !dbg !637, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !160), !dbg !637
  %17 = load i32** %indices, align 8, !dbg !637, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !152), !dbg !639
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !160), !dbg !639
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !161), !dbg !635
  br label %for.body43, !dbg !635

for.body32:                                       ; preds = %sw.bb27, %for.body32
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %for.body32 ], [ 0, %sw.bb27 ]
  %offset.0614 = phi i32 [ %add35, %for.body32 ], [ 0, %sw.bb27 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !161), !dbg !633
  %arrayidx34 = getelementptr inbounds i32* %14, i64 %indvars.iv679, !dbg !633
  %18 = load i32* %arrayidx34, align 4, !dbg !633, !tbaa !460
  %add35 = add nsw i32 %18, %offset.0614, !dbg !633
  call void @llvm.dbg.value(metadata !{i32 %add35}, i64 0, metadata !159), !dbg !633
  %indvars.iv.next680 = add i64 %indvars.iv679, 1, !dbg !631
  %lftr.wideiv = trunc i64 %indvars.iv.next680 to i32, !dbg !631
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !631
  br i1 %exitcond, label %for.cond30.for.cond39.preheader_crit_edge, label %for.body32, !dbg !631

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %indvars.iv677 = phi i64 [ %offset.0.lcssa, %for.body43.lr.ph ], [ %indvars.iv.next678, %for.body43 ]
  %ii.0612 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc63, %for.body43 ]
  %19 = trunc i64 %indvars.iv677 to i32, !dbg !637
  %mul44 = shl nsw i32 %19, 1, !dbg !637
  %idxprom45 = sext i32 %mul44 to i64, !dbg !637
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !152), !dbg !637
  %arrayidx46 = getelementptr inbounds double* %16, i64 %idxprom45, !dbg !637
  %20 = load double* %arrayidx46, align 8, !dbg !637, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !160), !dbg !637
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv677, !dbg !637
  %21 = load i32* %arrayidx48, align 4, !dbg !637, !tbaa !460
  %mul49 = shl nsw i32 %21, 1, !dbg !637
  %idxprom50 = sext i32 %mul49 to i64, !dbg !637
  %arrayidx51 = getelementptr inbounds double* %call9, i64 %idxprom50, !dbg !637
  store double %20, double* %arrayidx51, align 8, !dbg !637, !tbaa !476
  %add53601 = or i32 %mul44, 1, !dbg !639
  %idxprom54 = sext i32 %add53601 to i64, !dbg !639
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !152), !dbg !639
  %arrayidx55 = getelementptr inbounds double* %16, i64 %idxprom54, !dbg !639
  %22 = load double* %arrayidx55, align 8, !dbg !639, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !160), !dbg !639
  %add59602 = or i32 %mul49, 1, !dbg !639
  %idxprom60 = sext i32 %add59602 to i64, !dbg !639
  %arrayidx61 = getelementptr inbounds double* %call9, i64 %idxprom60, !dbg !639
  store double %22, double* %arrayidx61, align 8, !dbg !639, !tbaa !476
  %inc63 = add nsw i32 %ii.0612, 1, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !154), !dbg !635
  %indvars.iv.next678 = add i64 %indvars.iv677, 1, !dbg !635
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !161), !dbg !635
  %cmp42 = icmp slt i32 %inc63, %15, !dbg !635
  br i1 %cmp42, label %for.body43, label %sw.epilog, !dbg !635

sw.bb66:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries67}, metadata !162), !dbg !640
  call void @llvm.dbg.declare(metadata !{i32* %nent71}, metadata !167), !dbg !641
  call void @llvm.dbg.declare(metadata !{i32* %ncol72}, metadata !168), !dbg !641
  call void @llvm.dbg.declare(metadata !{i32** %indices74}, metadata !170), !dbg !642
  call void @llvm.dbg.declare(metadata !{i32** %sizes75}, metadata !171), !dbg !642
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol72, i32* %nent71, i32** %sizes75, i32** %indices74, double** %entries67) #5, !dbg !643
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !644
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !165), !dbg !644
  call void @llvm.dbg.value(metadata !{i32* %ncol72}, i64 0, metadata !168), !dbg !644
  %23 = load i32* %ncol72, align 4, !dbg !644, !tbaa !460
  %cmp77625 = icmp sgt i32 %23, 0, !dbg !644
  br i1 %cmp77625, label %for.cond79.preheader.lr.ph, label %sw.epilog, !dbg !644

for.cond79.preheader.lr.ph:                       ; preds = %sw.bb66
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !171), !dbg !646
  %24 = load i32** %sizes75, align 8, !dbg !646, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !171), !dbg !649
  call void @llvm.dbg.value(metadata !{i32* %ncol72}, i64 0, metadata !168), !dbg !644
  call void @llvm.dbg.value(metadata !{i32** %indices74}, i64 0, metadata !170), !dbg !650
  %25 = load i32** %indices74, align 8, !dbg !650, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !171), !dbg !646
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !162), !dbg !652
  %26 = load double** %entries67, align 8, !dbg !652, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !162), !dbg !654
  br label %for.cond79.preheader, !dbg !644

for.cond79.preheader:                             ; preds = %for.cond79.preheader.lr.ph, %for.end106
  %indvars.iv684 = phi i64 [ 0, %for.cond79.preheader.lr.ph ], [ %indvars.iv.next685, %for.end106 ]
  %offset73.0626 = phi i32 [ 0, %for.cond79.preheader.lr.ph ], [ %add109, %for.end106 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !171), !dbg !646
  %arrayidx81619 = getelementptr inbounds i32* %24, i64 %indvars.iv684, !dbg !646
  %27 = load i32* %arrayidx81619, align 4, !dbg !646, !tbaa !460
  %cmp82620 = icmp sgt i32 %27, 0, !dbg !646
  br i1 %cmp82620, label %for.body83.lr.ph, label %for.end106, !dbg !646

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  %28 = sext i32 %offset73.0626 to i64
  br label %for.body83, !dbg !646

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc103
  %indvars.iv682 = phi i64 [ %28, %for.body83.lr.ph ], [ %indvars.iv.next683, %for.inc103 ]
  %ii68.0622 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc104, %for.inc103 ]
  %kk70.0621 = phi i32 [ %offset73.0626, %for.body83.lr.ph ], [ %inc105, %for.inc103 ]
  call void @llvm.dbg.value(metadata !{i32** %indices74}, i64 0, metadata !170), !dbg !650
  %arrayidx85 = getelementptr inbounds i32* %25, i64 %indvars.iv682, !dbg !650
  %29 = load i32* %arrayidx85, align 4, !dbg !650, !tbaa !460
  %cmp86 = icmp eq i32 %29, %irow, !dbg !650
  br i1 %cmp86, label %if.then87, label %for.inc103, !dbg !650

if.then87:                                        ; preds = %for.body83
  %mul88 = shl nsw i32 %kk70.0621, 1, !dbg !652
  %idxprom89 = sext i32 %mul88 to i64, !dbg !652
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !162), !dbg !652
  %arrayidx90 = getelementptr inbounds double* %26, i64 %idxprom89, !dbg !652
  %30 = load double* %arrayidx90, align 8, !dbg !652, !tbaa !476
  %31 = trunc i64 %indvars.iv684 to i32, !dbg !652
  %mul91 = shl nsw i32 %31, 1, !dbg !652
  %idxprom92 = sext i32 %mul91 to i64, !dbg !652
  %arrayidx93 = getelementptr inbounds double* %call9, i64 %idxprom92, !dbg !652
  store double %30, double* %arrayidx93, align 8, !dbg !652, !tbaa !476
  %add95599 = or i32 %mul88, 1, !dbg !654
  %idxprom96 = sext i32 %add95599 to i64, !dbg !654
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !162), !dbg !654
  %arrayidx97 = getelementptr inbounds double* %26, i64 %idxprom96, !dbg !654
  %32 = load double* %arrayidx97, align 8, !dbg !654, !tbaa !476
  %add99600 = or i32 %mul91, 1, !dbg !654
  %idxprom100 = sext i32 %add99600 to i64, !dbg !654
  %arrayidx101 = getelementptr inbounds double* %call9, i64 %idxprom100, !dbg !654
  store double %32, double* %arrayidx101, align 8, !dbg !654, !tbaa !476
  br label %for.end106, !dbg !655

for.inc103:                                       ; preds = %for.body83
  %inc104 = add nsw i32 %ii68.0622, 1, !dbg !646
  call void @llvm.dbg.value(metadata !{i32 %inc104}, i64 0, metadata !164), !dbg !646
  %indvars.iv.next683 = add i64 %indvars.iv682, 1, !dbg !646
  %inc105 = add nsw i32 %kk70.0621, 1, !dbg !646
  call void @llvm.dbg.value(metadata !{i32 %inc105}, i64 0, metadata !166), !dbg !646
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !171), !dbg !646
  %cmp82 = icmp slt i32 %inc104, %27, !dbg !646
  br i1 %cmp82, label %for.body83, label %for.end106, !dbg !646

for.end106:                                       ; preds = %for.cond79.preheader, %for.inc103, %if.then87
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !171), !dbg !649
  %add109 = add nsw i32 %27, %offset73.0626, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %add109}, i64 0, metadata !169), !dbg !649
  %indvars.iv.next685 = add i64 %indvars.iv684, 1, !dbg !644
  call void @llvm.dbg.value(metadata !{i32* %ncol72}, i64 0, metadata !168), !dbg !644
  %33 = trunc i64 %indvars.iv.next685 to i32, !dbg !644
  %cmp77 = icmp slt i32 %33, %23, !dbg !644
  br i1 %cmp77, label %for.cond79.preheader, label %sw.epilog, !dbg !644

sw.bb113:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries114}, metadata !172), !dbg !656
  call void @llvm.dbg.declare(metadata !{i32* %nent116}, metadata !175), !dbg !657
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !176), !dbg !658
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !177), !dbg !658
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent116, i32** %rowids, i32** %colids, double** %entries114) #5, !dbg !659
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !660
  call void @llvm.dbg.value(metadata !{i32* %nent116}, i64 0, metadata !175), !dbg !660
  %34 = load i32* %nent116, align 4, !dbg !660, !tbaa !460
  %cmp118631 = icmp sgt i32 %34, 0, !dbg !660
  br i1 %cmp118631, label %for.body119.lr.ph, label %sw.epilog, !dbg !660

for.body119.lr.ph:                                ; preds = %sw.bb113
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !177), !dbg !662
  %35 = load i32** %rowids, align 8, !dbg !662, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !172), !dbg !664
  %36 = load double** %entries114, align 8, !dbg !664, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !176), !dbg !664
  %37 = load i32** %colids, align 8, !dbg !664, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !172), !dbg !666
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !176), !dbg !666
  call void @llvm.dbg.value(metadata !{i32* %nent116}, i64 0, metadata !175), !dbg !660
  br label %for.body119, !dbg !660

for.body119:                                      ; preds = %for.body119.lr.ph, %for.inc143
  %indvars.iv686 = phi i64 [ 0, %for.body119.lr.ph ], [ %indvars.iv.next687, %for.inc143 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !177), !dbg !662
  %arrayidx121 = getelementptr inbounds i32* %35, i64 %indvars.iv686, !dbg !662
  %38 = load i32* %arrayidx121, align 4, !dbg !662, !tbaa !460
  %cmp122 = icmp eq i32 %38, %irow, !dbg !662
  br i1 %cmp122, label %if.then123, label %for.inc143, !dbg !662

if.then123:                                       ; preds = %for.body119
  %39 = trunc i64 %indvars.iv686 to i32, !dbg !664
  %mul124 = shl nsw i32 %39, 1, !dbg !664
  %idxprom125 = sext i32 %mul124 to i64, !dbg !664
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !172), !dbg !664
  %arrayidx126 = getelementptr inbounds double* %36, i64 %idxprom125, !dbg !664
  %40 = load double* %arrayidx126, align 8, !dbg !664, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !176), !dbg !664
  %arrayidx128 = getelementptr inbounds i32* %37, i64 %indvars.iv686, !dbg !664
  %41 = load i32* %arrayidx128, align 4, !dbg !664, !tbaa !460
  %mul129 = shl nsw i32 %41, 1, !dbg !664
  %idxprom130 = sext i32 %mul129 to i64, !dbg !664
  %arrayidx131 = getelementptr inbounds double* %call9, i64 %idxprom130, !dbg !664
  store double %40, double* %arrayidx131, align 8, !dbg !664, !tbaa !476
  %add133597 = or i32 %mul124, 1, !dbg !666
  %idxprom134 = sext i32 %add133597 to i64, !dbg !666
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !172), !dbg !666
  %arrayidx135 = getelementptr inbounds double* %36, i64 %idxprom134, !dbg !666
  %42 = load double* %arrayidx135, align 8, !dbg !666, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !176), !dbg !666
  %add139598 = or i32 %mul129, 1, !dbg !666
  %idxprom140 = sext i32 %add139598 to i64, !dbg !666
  %arrayidx141 = getelementptr inbounds double* %call9, i64 %idxprom140, !dbg !666
  store double %42, double* %arrayidx141, align 8, !dbg !666, !tbaa !476
  br label %for.inc143, !dbg !667

for.inc143:                                       ; preds = %for.body119, %if.then123
  %indvars.iv.next687 = add i64 %indvars.iv686, 1, !dbg !660
  call void @llvm.dbg.value(metadata !{i32* %nent116}, i64 0, metadata !175), !dbg !660
  %43 = trunc i64 %indvars.iv.next687 to i32, !dbg !660
  %cmp118 = icmp slt i32 %43, %34, !dbg !660
  br i1 %cmp118, label %for.body119, label %sw.epilog, !dbg !660

sw.bb146:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries147}, metadata !178), !dbg !668
  call void @llvm.dbg.declare(metadata !{i32* %nent151}, metadata !185), !dbg !669
  call void @llvm.dbg.declare(metadata !{i32* %nrow152}, metadata !186), !dbg !669
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !188), !dbg !670
  call void @llvm.dbg.declare(metadata !{i32** %sizes154}, metadata !189), !dbg !670
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow152, i32* %nent151, i32** %firstlocs, i32** %sizes154, double** %entries147) #5, !dbg !671
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !187), !dbg !672
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !182), !dbg !672
  %cmp156637 = icmp sgt i32 %irow, 0, !dbg !672
  call void @llvm.dbg.value(metadata !{i32** %sizes154}, i64 0, metadata !189), !dbg !674
  %44 = load i32** %sizes154, align 8, !dbg !674, !tbaa !455
  br i1 %cmp156637, label %for.body157, label %for.end163, !dbg !672

for.body157:                                      ; preds = %sw.bb146, %for.body157
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %for.body157 ], [ 0, %sw.bb146 ]
  %offset153.0639 = phi i32 [ %add160, %for.body157 ], [ 0, %sw.bb146 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes154}, i64 0, metadata !189), !dbg !674
  %arrayidx159 = getelementptr inbounds i32* %44, i64 %indvars.iv692, !dbg !674
  %45 = load i32* %arrayidx159, align 4, !dbg !674, !tbaa !460
  %add160 = add nsw i32 %45, %offset153.0639, !dbg !674
  call void @llvm.dbg.value(metadata !{i32 %add160}, i64 0, metadata !187), !dbg !674
  %indvars.iv.next693 = add i64 %indvars.iv692, 1, !dbg !672
  %lftr.wideiv694 = trunc i64 %indvars.iv.next693 to i32, !dbg !672
  %exitcond695 = icmp eq i32 %lftr.wideiv694, %irow, !dbg !672
  br i1 %exitcond695, label %for.cond155.for.end163_crit_edge, label %for.body157, !dbg !672

for.cond155.for.end163_crit_edge:                 ; preds = %for.body157
  %phitmp = sext i32 %add160 to i64, !dbg !672
  br label %for.end163, !dbg !672

for.end163:                                       ; preds = %sw.bb146, %for.cond155.for.end163_crit_edge
  %offset153.0.lcssa = phi i64 [ %phitmp, %for.cond155.for.end163_crit_edge ], [ 0, %sw.bb146 ]
  %idxprom164 = sext i32 %irow to i64, !dbg !676
  call void @llvm.dbg.value(metadata !{i32** %sizes154}, i64 0, metadata !189), !dbg !676
  %arrayidx165 = getelementptr inbounds i32* %44, i64 %idxprom164, !dbg !676
  %46 = load i32* %arrayidx165, align 4, !dbg !676, !tbaa !460
  %cmp166 = icmp sgt i32 %46, 0, !dbg !676
  br i1 %cmp166, label %if.then167, label %sw.epilog, !dbg !676

if.then167:                                       ; preds = %for.end163
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !188), !dbg !677
  %47 = load i32** %firstlocs, align 8, !dbg !677, !tbaa !455
  %arrayidx169 = getelementptr inbounds i32* %47, i64 %idxprom164, !dbg !677
  %48 = load i32* %arrayidx169, align 4, !dbg !677, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !180), !dbg !677
  %add172 = add i32 %46, -1, !dbg !679
  %sub = add i32 %add172, %48, !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !184), !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !183), !dbg !680
  %cmp174634 = icmp sgt i32 %48, %sub, !dbg !680
  br i1 %cmp174634, label %sw.epilog, label %for.body175.lr.ph, !dbg !680

for.body175.lr.ph:                                ; preds = %if.then167
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !178), !dbg !682
  %49 = load double** %entries147, align 8, !dbg !682, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !178), !dbg !684
  %50 = sext i32 %48 to i64
  br label %for.body175, !dbg !680

for.body175:                                      ; preds = %for.body175, %for.body175.lr.ph
  %indvars.iv690 = phi i64 [ %indvars.iv.next691, %for.body175 ], [ %offset153.0.lcssa, %for.body175.lr.ph ], !dbg !680
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %for.body175 ], [ %50, %for.body175.lr.ph ]
  %51 = trunc i64 %indvars.iv690 to i32, !dbg !682
  %mul176 = shl nsw i32 %51, 1, !dbg !682
  %idxprom177 = sext i32 %mul176 to i64, !dbg !682
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !178), !dbg !682
  %arrayidx178 = getelementptr inbounds double* %49, i64 %idxprom177, !dbg !682
  %52 = load double* %arrayidx178, align 8, !dbg !682, !tbaa !476
  %53 = trunc i64 %indvars.iv688 to i32, !dbg !682
  %mul179 = shl nsw i32 %53, 1, !dbg !682
  %idxprom180 = sext i32 %mul179 to i64, !dbg !682
  %arrayidx181 = getelementptr inbounds double* %call9, i64 %idxprom180, !dbg !682
  store double %52, double* %arrayidx181, align 8, !dbg !682, !tbaa !476
  %add183595 = or i32 %mul176, 1, !dbg !684
  %idxprom184 = sext i32 %add183595 to i64, !dbg !684
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !178), !dbg !684
  %arrayidx185 = getelementptr inbounds double* %49, i64 %idxprom184, !dbg !684
  %54 = load double* %arrayidx185, align 8, !dbg !684, !tbaa !476
  %add187596 = or i32 %mul179, 1, !dbg !684
  %idxprom188 = sext i32 %add187596 to i64, !dbg !684
  %arrayidx189 = getelementptr inbounds double* %call9, i64 %idxprom188, !dbg !684
  store double %54, double* %arrayidx189, align 8, !dbg !684, !tbaa !476
  %indvars.iv.next689 = add i64 %indvars.iv688, 1, !dbg !680
  %indvars.iv.next691 = add i64 %indvars.iv690, 1, !dbg !680
  %cmp174 = icmp slt i32 %53, %sub, !dbg !680
  br i1 %cmp174, label %for.body175, label %sw.epilog, !dbg !680

sw.bb195:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries196}, metadata !190), !dbg !685
  call void @llvm.dbg.declare(metadata !{i32* %nent201}, metadata !196), !dbg !686
  call void @llvm.dbg.declare(metadata !{i32* %ncol202}, metadata !197), !dbg !686
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs204}, metadata !199), !dbg !687
  call void @llvm.dbg.declare(metadata !{i32** %sizes205}, metadata !200), !dbg !687
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol202, i32* %nent201, i32** %firstlocs204, i32** %sizes205, double** %entries196) #5, !dbg !688
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !198), !dbg !689
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !193), !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %ncol202}, i64 0, metadata !197), !dbg !689
  %55 = load i32* %ncol202, align 4, !dbg !689, !tbaa !460
  %cmp207642 = icmp sgt i32 %55, 0, !dbg !689
  br i1 %cmp207642, label %for.body208.lr.ph, label %sw.epilog, !dbg !689

for.body208.lr.ph:                                ; preds = %sw.bb195
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !200), !dbg !691
  %56 = load i32** %sizes205, align 8, !dbg !691, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %firstlocs204}, i64 0, metadata !199), !dbg !693
  %57 = load i32** %firstlocs204, align 8, !dbg !693, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !200), !dbg !695
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !190), !dbg !696
  %58 = load double** %entries196, align 8, !dbg !696, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !190), !dbg !698
  call void @llvm.dbg.value(metadata !{i32* %ncol202}, i64 0, metadata !197), !dbg !689
  br label %for.body208, !dbg !689

for.body208:                                      ; preds = %for.body208.lr.ph, %for.inc243
  %indvars.iv696 = phi i64 [ 0, %for.body208.lr.ph ], [ %indvars.iv.next697, %for.inc243 ]
  %offset203.0644 = phi i32 [ 0, %for.body208.lr.ph ], [ %offset203.1, %for.inc243 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !200), !dbg !691
  %arrayidx210 = getelementptr inbounds i32* %56, i64 %indvars.iv696, !dbg !691
  %59 = load i32* %arrayidx210, align 4, !dbg !691, !tbaa !460
  %cmp211 = icmp sgt i32 %59, 0, !dbg !691
  br i1 %cmp211, label %if.then212, label %for.inc243, !dbg !691

if.then212:                                       ; preds = %for.body208
  call void @llvm.dbg.value(metadata !{i32** %firstlocs204}, i64 0, metadata !199), !dbg !693
  %arrayidx214 = getelementptr inbounds i32* %57, i64 %indvars.iv696, !dbg !693
  %60 = load i32* %arrayidx214, align 4, !dbg !693, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !192), !dbg !693
  %cmp219 = icmp sgt i32 %60, %irow, !dbg !699
  br i1 %cmp219, label %if.end238, label %land.lhs.true, !dbg !699

land.lhs.true:                                    ; preds = %if.then212
  %add217 = add nsw i32 %60, %59, !dbg !700
  %cmp220 = icmp sgt i32 %add217, %irow, !dbg !699
  br i1 %cmp220, label %if.then221, label %if.end238, !dbg !699

if.then221:                                       ; preds = %land.lhs.true
  %add222 = add nsw i32 %offset203.0644, %irow, !dbg !701
  %sub223 = sub i32 %add222, %60, !dbg !701
  call void @llvm.dbg.value(metadata !{i32 %sub223}, i64 0, metadata !195), !dbg !701
  %mul224 = shl nsw i32 %sub223, 1, !dbg !696
  %idxprom225 = sext i32 %mul224 to i64, !dbg !696
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !190), !dbg !696
  %arrayidx226 = getelementptr inbounds double* %58, i64 %idxprom225, !dbg !696
  %61 = load double* %arrayidx226, align 8, !dbg !696, !tbaa !476
  %62 = trunc i64 %indvars.iv696 to i32, !dbg !696
  %mul227 = shl nsw i32 %62, 1, !dbg !696
  %idxprom228 = sext i32 %mul227 to i64, !dbg !696
  %arrayidx229 = getelementptr inbounds double* %call9, i64 %idxprom228, !dbg !696
  store double %61, double* %arrayidx229, align 8, !dbg !696, !tbaa !476
  %add231593 = or i32 %mul224, 1, !dbg !698
  %idxprom232 = sext i32 %add231593 to i64, !dbg !698
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !190), !dbg !698
  %arrayidx233 = getelementptr inbounds double* %58, i64 %idxprom232, !dbg !698
  %63 = load double* %arrayidx233, align 8, !dbg !698, !tbaa !476
  %add235594 = or i32 %mul227, 1, !dbg !698
  %idxprom236 = sext i32 %add235594 to i64, !dbg !698
  %arrayidx237 = getelementptr inbounds double* %call9, i64 %idxprom236, !dbg !698
  store double %63, double* %arrayidx237, align 8, !dbg !698, !tbaa !476
  br label %if.end238, !dbg !702

if.end238:                                        ; preds = %if.then212, %if.then221, %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !200), !dbg !695
  %add241 = add nsw i32 %59, %offset203.0644, !dbg !695
  call void @llvm.dbg.value(metadata !{i32 %add241}, i64 0, metadata !198), !dbg !695
  br label %for.inc243, !dbg !703

for.inc243:                                       ; preds = %for.body208, %if.end238
  %offset203.1 = phi i32 [ %add241, %if.end238 ], [ %offset203.0644, %for.body208 ]
  %indvars.iv.next697 = add i64 %indvars.iv696, 1, !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %ncol202}, i64 0, metadata !197), !dbg !689
  %64 = trunc i64 %indvars.iv.next697 to i32, !dbg !689
  %cmp207 = icmp slt i32 %64, %55, !dbg !689
  br i1 %cmp207, label %for.body208, label %sw.epilog, !dbg !689

sw.bb246:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries247}, metadata !201), !dbg !704
  call void @llvm.dbg.declare(metadata !{i32* %nent248}, metadata !203), !dbg !705
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent248, double** %entries247) #5, !dbg !706
  %mul249 = shl nsw i32 %irow, 1, !dbg !707
  %idxprom250 = sext i32 %mul249 to i64, !dbg !707
  call void @llvm.dbg.value(metadata !{double** %entries247}, i64 0, metadata !201), !dbg !707
  %65 = load double** %entries247, align 8, !dbg !707, !tbaa !455
  %arrayidx251 = getelementptr inbounds double* %65, i64 %idxprom250, !dbg !707
  %66 = load double* %arrayidx251, align 8, !dbg !707, !tbaa !476
  %arrayidx254 = getelementptr inbounds double* %call9, i64 %idxprom250, !dbg !707
  store double %66, double* %arrayidx254, align 8, !dbg !707, !tbaa !476
  %add256592 = or i32 %mul249, 1, !dbg !708
  %idxprom257 = sext i32 %add256592 to i64, !dbg !708
  call void @llvm.dbg.value(metadata !{double** %entries247}, i64 0, metadata !201), !dbg !708
  %arrayidx258 = getelementptr inbounds double* %65, i64 %idxprom257, !dbg !708
  %67 = load double* %arrayidx258, align 8, !dbg !708, !tbaa !476
  %arrayidx262 = getelementptr inbounds double* %call9, i64 %idxprom257, !dbg !708
  store double %67, double* %arrayidx262, align 8, !dbg !708, !tbaa !476
  br label %sw.epilog, !dbg !709

for.body272.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries264}, metadata !204), !dbg !710
  call void @llvm.dbg.declare(metadata !{i32* %nrow268}, metadata !211), !dbg !711
  call void @llvm.dbg.declare(metadata !{i32* %nent269}, metadata !212), !dbg !711
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !214), !dbg !712
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow268, i32* %nent269, i32** %pivotsizes, double** %entries264) #5, !dbg !713
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !209), !dbg !714
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !207), !dbg !714
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !208), !dbg !714
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !214), !dbg !716
  %68 = load i32** %pivotsizes, align 8, !dbg !716, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !718
  %69 = load double** %entries264, align 8, !dbg !718, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !722
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !723
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !726
  %70 = add i32 %irow, -1, !dbg !727
  br label %for.body272, !dbg !714

for.body272:                                      ; preds = %if.end329.thread, %for.body272.lr.ph, %if.end329
  %indvars.iv706 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next707, %if.end329 ], [ %indvars.iv.next707720, %if.end329.thread ]
  %kk267.0660 = phi i32 [ 0, %for.body272.lr.ph ], [ %kk267.3, %if.end329 ], [ %add328, %if.end329.thread ]
  %jrow266.0659 = phi i32 [ 0, %for.body272.lr.ph ], [ %add277, %if.end329 ], [ %add277, %if.end329.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !214), !dbg !716
  %arrayidx274 = getelementptr inbounds i32* %68, i64 %indvars.iv706, !dbg !716
  %71 = load i32* %arrayidx274, align 4, !dbg !716, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %71}, i64 0, metadata !210), !dbg !716
  %add277 = add nsw i32 %71, %jrow266.0659, !dbg !728
  %cmp278 = icmp sgt i32 %add277, %irow, !dbg !728
  br i1 %cmp278, label %if.then279, label %if.end329.thread, !dbg !728

if.then279:                                       ; preds = %for.body272
  %sub281 = sub i32 %irow, %jrow266.0659, !dbg !729
  %add282 = add nsw i32 %sub281, %kk267.0660, !dbg !729
  call void @llvm.dbg.value(metadata !{i32 %add282}, i64 0, metadata !209), !dbg !729
  call void @llvm.dbg.value(metadata !{i32 %jrow266.0659}, i64 0, metadata !206), !dbg !727
  %cmp284646 = icmp sgt i32 %jrow266.0659, %irow, !dbg !727
  br i1 %cmp284646, label %for.cond304.loopexit, label %for.body285.lr.ph, !dbg !727

for.body285.lr.ph:                                ; preds = %if.then279
  %72 = sext i32 %71 to i64
  %73 = sext i32 %jrow266.0659 to i64, !dbg !727
  %74 = add i32 %70, %kk267.0660, !dbg !727
  %75 = add i32 %74, %71, !dbg !727
  %76 = add i32 %71, -2, !dbg !727
  %77 = mul i32 %sub281, %76, !dbg !727
  %78 = add i32 %75, %77, !dbg !727
  %79 = zext i32 %sub281 to i33, !dbg !727
  %80 = sub i32 %70, %jrow266.0659, !dbg !727
  %81 = zext i32 %80 to i33, !dbg !727
  %82 = mul i33 %79, %81, !dbg !727
  %83 = lshr i33 %82, 1, !dbg !727
  %84 = trunc i33 %83 to i32, !dbg !727
  br label %for.body285, !dbg !727

for.body285:                                      ; preds = %for.body285, %for.body285.lr.ph
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %for.body285 ], [ %73, %for.body285.lr.ph ], !dbg !727
  %indvars.iv698 = phi i64 [ %indvars.iv.next699, %for.body285 ], [ %72, %for.body285.lr.ph ]
  %kk267.1648 = phi i32 [ %add300, %for.body285 ], [ %add282, %for.body285.lr.ph ]
  %indvars.iv.next699 = add i64 %indvars.iv698, -1, !dbg !727
  %mul286 = shl nsw i32 %kk267.1648, 1, !dbg !723
  %idxprom287 = sext i32 %mul286 to i64, !dbg !723
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !723
  %arrayidx288 = getelementptr inbounds double* %69, i64 %idxprom287, !dbg !723
  %85 = load double* %arrayidx288, align 8, !dbg !723, !tbaa !476
  %86 = trunc i64 %indvars.iv700 to i32, !dbg !723
  %mul289 = shl nsw i32 %86, 1, !dbg !723
  %idxprom290 = sext i32 %mul289 to i64, !dbg !723
  %arrayidx291 = getelementptr inbounds double* %call9, i64 %idxprom290, !dbg !723
  store double %85, double* %arrayidx291, align 8, !dbg !723, !tbaa !476
  %add293590 = or i32 %mul286, 1, !dbg !726
  %idxprom294 = sext i32 %add293590 to i64, !dbg !726
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !726
  %arrayidx295 = getelementptr inbounds double* %69, i64 %idxprom294, !dbg !726
  %87 = load double* %arrayidx295, align 8, !dbg !726, !tbaa !476
  %add297591 = or i32 %mul289, 1, !dbg !726
  %idxprom298 = sext i32 %add297591 to i64, !dbg !726
  %arrayidx299 = getelementptr inbounds double* %call9, i64 %idxprom298, !dbg !726
  store double %87, double* %arrayidx299, align 8, !dbg !726, !tbaa !476
  %88 = trunc i64 %indvars.iv.next699 to i32, !dbg !730
  %add300 = add nsw i32 %88, %kk267.1648, !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %91}, i64 0, metadata !209), !dbg !730
  %indvars.iv.next701 = add i64 %indvars.iv700, 1, !dbg !727
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !206), !dbg !727
  %cmp284 = icmp slt i32 %86, %irow, !dbg !727
  br i1 %cmp284, label %for.body285, label %for.cond283.for.cond304.loopexit_crit_edge, !dbg !727

for.cond283.for.cond304.loopexit_crit_edge:       ; preds = %for.body285
  %89 = add i32 %irow, 1, !dbg !727
  %90 = sub i32 %78, %jrow266.0659, !dbg !727
  %91 = sub i32 %90, %84, !dbg !727
  br label %for.cond304.loopexit, !dbg !727

for.cond304.loopexit:                             ; preds = %for.cond283.for.cond304.loopexit_crit_edge, %if.then279
  %kk267.1.lcssa = phi i32 [ %91, %for.cond283.for.cond304.loopexit_crit_edge ], [ %add282, %if.then279 ]
  %ii265.0.lcssa = phi i32 [ %89, %for.cond283.for.cond304.loopexit_crit_edge ], [ %jrow266.0659, %if.then279 ]
  %cmp306652 = icmp slt i32 %ii265.0.lcssa, %add277, !dbg !731
  br i1 %cmp306652, label %for.body307.lr.ph, label %if.end329, !dbg !731

for.body307.lr.ph:                                ; preds = %for.cond304.loopexit
  %92 = sext i32 %kk267.1.lcssa to i64
  %93 = sext i32 %ii265.0.lcssa to i64, !dbg !731
  %94 = add i32 %jrow266.0659, %kk267.1.lcssa, !dbg !731
  %95 = add i32 %94, %71, !dbg !731
  br label %for.body307, !dbg !731

for.body307:                                      ; preds = %for.body307.lr.ph, %for.body307
  %indvars.iv704 = phi i64 [ %93, %for.body307.lr.ph ], [ %indvars.iv.next705, %for.body307 ], !dbg !731
  %indvars.iv702 = phi i64 [ %92, %for.body307.lr.ph ], [ %indvars.iv.next703, %for.body307 ]
  %96 = trunc i64 %indvars.iv702 to i32, !dbg !718
  %mul308 = shl nsw i32 %96, 1, !dbg !718
  %idxprom309 = sext i32 %mul308 to i64, !dbg !718
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !718
  %arrayidx310 = getelementptr inbounds double* %69, i64 %idxprom309, !dbg !718
  %97 = load double* %arrayidx310, align 8, !dbg !718, !tbaa !476
  %98 = trunc i64 %indvars.iv704 to i32, !dbg !718
  %mul311 = shl nsw i32 %98, 1, !dbg !718
  %idxprom312 = sext i32 %mul311 to i64, !dbg !718
  %arrayidx313 = getelementptr inbounds double* %call9, i64 %idxprom312, !dbg !718
  store double %97, double* %arrayidx313, align 8, !dbg !718, !tbaa !476
  %add315588 = or i32 %mul308, 1, !dbg !722
  %idxprom316 = sext i32 %add315588 to i64, !dbg !722
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !204), !dbg !722
  %arrayidx317 = getelementptr inbounds double* %69, i64 %idxprom316, !dbg !722
  %99 = load double* %arrayidx317, align 8, !dbg !722, !tbaa !476
  %add319589 = or i32 %mul311, 1, !dbg !722
  %idxprom320 = sext i32 %add319589 to i64, !dbg !722
  %arrayidx321 = getelementptr inbounds double* %call9, i64 %idxprom320, !dbg !722
  store double %99, double* %arrayidx321, align 8, !dbg !722, !tbaa !476
  %indvars.iv.next703 = add i64 %indvars.iv702, 1, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %101}, i64 0, metadata !209), !dbg !732
  %indvars.iv.next705 = add i64 %indvars.iv704, 1, !dbg !731
  %100 = trunc i64 %indvars.iv.next705 to i32, !dbg !731
  %cmp306 = icmp slt i32 %100, %add277, !dbg !731
  br i1 %cmp306, label %for.body307, label %for.cond304.if.end329.loopexit_crit_edge, !dbg !731

if.end329.thread:                                 ; preds = %for.body272
  %add326 = add nsw i32 %71, 1, !dbg !733
  %mul327 = mul nsw i32 %add326, %71, !dbg !733
  %div = sdiv i32 %mul327, 2, !dbg !733
  %add328 = add nsw i32 %div, %kk267.0660, !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %add328}, i64 0, metadata !209), !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %add277}, i64 0, metadata !208), !dbg !735
  %indvars.iv.next707720 = add i64 %indvars.iv706, 1, !dbg !714
  br label %for.body272, !dbg !714

for.cond304.if.end329.loopexit_crit_edge:         ; preds = %for.body307
  %101 = sub i32 %95, %ii265.0.lcssa, !dbg !731
  br label %if.end329, !dbg !731

if.end329:                                        ; preds = %for.cond304.loopexit, %for.cond304.if.end329.loopexit_crit_edge
  %kk267.3 = phi i32 [ %101, %for.cond304.if.end329.loopexit_crit_edge ], [ %kk267.1.lcssa, %for.cond304.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add277}, i64 0, metadata !208), !dbg !735
  %indvars.iv.next707 = add i64 %indvars.iv706, 1, !dbg !714
  br i1 %cmp278, label %sw.epilog, label %for.body272, !dbg !714

for.body347.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries335}, metadata !215), !dbg !736
  call void @llvm.dbg.declare(metadata !{i32* %nrow341}, metadata !222), !dbg !737
  call void @llvm.dbg.declare(metadata !{i32* %nent342}, metadata !223), !dbg !737
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes344}, metadata !225), !dbg !738
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow341, i32* %nent342, i32** %pivotsizes344, double** %entries335) #5, !dbg !739
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !220), !dbg !740
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !218), !dbg !740
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !740
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes344}, i64 0, metadata !225), !dbg !742
  %102 = load i32** %pivotsizes344, align 8, !dbg !742, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !744
  %103 = load double** %entries335, align 8, !dbg !744, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !748
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !749
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !752
  %104 = add i32 %irow, -1, !dbg !753
  %105 = add i32 %irow, -2, !dbg !753
  br label %for.body347, !dbg !740

for.body347:                                      ; preds = %if.end408.thread, %for.body347.lr.ph, %if.end408
  %indvars.iv716 = phi i64 [ 0, %for.body347.lr.ph ], [ %indvars.iv.next717, %if.end408 ], [ %indvars.iv.next717721, %if.end408.thread ]
  %kk339.0676 = phi i32 [ 0, %for.body347.lr.ph ], [ %kk339.3, %if.end408 ], [ %add407, %if.end408.thread ]
  %jrow338.0675 = phi i32 [ 0, %for.body347.lr.ph ], [ %add352, %if.end408 ], [ %add352, %if.end408.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes344}, i64 0, metadata !225), !dbg !742
  %arrayidx349 = getelementptr inbounds i32* %102, i64 %indvars.iv716, !dbg !742
  %106 = load i32* %arrayidx349, align 4, !dbg !742, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !221), !dbg !742
  %add352 = add nsw i32 %106, %jrow338.0675, !dbg !754
  %cmp353 = icmp sgt i32 %add352, %irow, !dbg !754
  br i1 %cmp353, label %if.then354, label %if.end408.thread, !dbg !754

if.then354:                                       ; preds = %for.body347
  %sub356 = sub i32 %irow, %jrow338.0675, !dbg !755
  %add357 = add nsw i32 %sub356, %kk339.0676, !dbg !755
  call void @llvm.dbg.value(metadata !{i32 %add357}, i64 0, metadata !220), !dbg !755
  call void @llvm.dbg.value(metadata !{i32 %jrow338.0675}, i64 0, metadata !217), !dbg !753
  %cmp359662 = icmp slt i32 %jrow338.0675, %irow, !dbg !753
  br i1 %cmp359662, label %for.body360.lr.ph, label %for.cond381.loopexit, !dbg !753

for.body360.lr.ph:                                ; preds = %if.then354
  %107 = sext i32 %106 to i64
  %108 = sext i32 %jrow338.0675 to i64, !dbg !753
  %109 = add i32 %104, %kk339.0676, !dbg !753
  %110 = add i32 %109, %106, !dbg !753
  %111 = sub i32 %104, %jrow338.0675, !dbg !753
  %112 = add i32 %106, -2, !dbg !753
  %113 = mul i32 %111, %112, !dbg !753
  %114 = add i32 %110, %113, !dbg !753
  %115 = zext i32 %111 to i33, !dbg !753
  %116 = sub i32 %105, %jrow338.0675, !dbg !753
  %117 = zext i32 %116 to i33, !dbg !753
  %118 = mul i33 %115, %117, !dbg !753
  %119 = lshr i33 %118, 1, !dbg !753
  %120 = trunc i33 %119 to i32, !dbg !753
  br label %for.body360, !dbg !753

for.body360:                                      ; preds = %for.body360.lr.ph, %for.body360
  %indvars.iv710 = phi i64 [ %108, %for.body360.lr.ph ], [ %indvars.iv.next711, %for.body360 ], !dbg !753
  %indvars.iv708 = phi i64 [ %107, %for.body360.lr.ph ], [ %indvars.iv.next709, %for.body360 ]
  %kk339.1664 = phi i32 [ %add357, %for.body360.lr.ph ], [ %add377, %for.body360 ]
  %indvars.iv.next709 = add i64 %indvars.iv708, -1, !dbg !753
  %mul361 = shl nsw i32 %kk339.1664, 1, !dbg !749
  %idxprom362 = sext i32 %mul361 to i64, !dbg !749
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !749
  %arrayidx363 = getelementptr inbounds double* %103, i64 %idxprom362, !dbg !749
  %121 = load double* %arrayidx363, align 8, !dbg !749, !tbaa !476
  %122 = trunc i64 %indvars.iv710 to i32, !dbg !749
  %mul364 = shl nsw i32 %122, 1, !dbg !749
  %idxprom365 = sext i32 %mul364 to i64, !dbg !749
  %arrayidx366 = getelementptr inbounds double* %call9, i64 %idxprom365, !dbg !749
  store double %121, double* %arrayidx366, align 8, !dbg !749, !tbaa !476
  %add368586 = or i32 %mul361, 1, !dbg !752
  %idxprom369 = sext i32 %add368586 to i64, !dbg !752
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !752
  %arrayidx370 = getelementptr inbounds double* %103, i64 %idxprom369, !dbg !752
  %123 = load double* %arrayidx370, align 8, !dbg !752, !tbaa !476
  %sub371 = fsub double -0.000000e+00, %123, !dbg !752
  %add373587 = or i32 %mul364, 1, !dbg !752
  %idxprom374 = sext i32 %add373587 to i64, !dbg !752
  %arrayidx375 = getelementptr inbounds double* %call9, i64 %idxprom374, !dbg !752
  store double %sub371, double* %arrayidx375, align 8, !dbg !752, !tbaa !476
  %124 = trunc i64 %indvars.iv.next709 to i32, !dbg !756
  %add377 = add nsw i32 %124, %kk339.1664, !dbg !756
  call void @llvm.dbg.value(metadata !{i32 %127}, i64 0, metadata !220), !dbg !756
  %indvars.iv.next711 = add i64 %indvars.iv710, 1, !dbg !753
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !217), !dbg !753
  %125 = trunc i64 %indvars.iv.next711 to i32, !dbg !753
  %cmp359 = icmp slt i32 %125, %irow, !dbg !753
  br i1 %cmp359, label %for.body360, label %for.cond358.for.cond381.loopexit_crit_edge, !dbg !753

for.cond358.for.cond381.loopexit_crit_edge:       ; preds = %for.body360
  %126 = sub i32 %114, %jrow338.0675, !dbg !753
  %127 = sub i32 %126, %120, !dbg !753
  br label %for.cond381.loopexit, !dbg !753

for.cond381.loopexit:                             ; preds = %for.cond358.for.cond381.loopexit_crit_edge, %if.then354
  %kk339.1.lcssa = phi i32 [ %127, %for.cond358.for.cond381.loopexit_crit_edge ], [ %add357, %if.then354 ]
  %ii336.0.lcssa = phi i32 [ %irow, %for.cond358.for.cond381.loopexit_crit_edge ], [ %jrow338.0675, %if.then354 ]
  %cmp383668 = icmp slt i32 %ii336.0.lcssa, %add352, !dbg !757
  br i1 %cmp383668, label %for.body384.lr.ph, label %if.end408, !dbg !757

for.body384.lr.ph:                                ; preds = %for.cond381.loopexit
  %128 = sext i32 %kk339.1.lcssa to i64
  %129 = sext i32 %ii336.0.lcssa to i64, !dbg !757
  %130 = add i32 %jrow338.0675, %kk339.1.lcssa, !dbg !757
  %131 = add i32 %130, %106, !dbg !757
  br label %for.body384, !dbg !757

for.body384:                                      ; preds = %for.body384.lr.ph, %for.body384
  %indvars.iv714 = phi i64 [ %129, %for.body384.lr.ph ], [ %indvars.iv.next715, %for.body384 ], !dbg !757
  %indvars.iv712 = phi i64 [ %128, %for.body384.lr.ph ], [ %indvars.iv.next713, %for.body384 ]
  %132 = trunc i64 %indvars.iv712 to i32, !dbg !744
  %mul385 = shl nsw i32 %132, 1, !dbg !744
  %idxprom386 = sext i32 %mul385 to i64, !dbg !744
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !744
  %arrayidx387 = getelementptr inbounds double* %103, i64 %idxprom386, !dbg !744
  %133 = load double* %arrayidx387, align 8, !dbg !744, !tbaa !476
  %134 = trunc i64 %indvars.iv714 to i32, !dbg !744
  %mul388 = shl nsw i32 %134, 1, !dbg !744
  %idxprom389 = sext i32 %mul388 to i64, !dbg !744
  %arrayidx390 = getelementptr inbounds double* %call9, i64 %idxprom389, !dbg !744
  store double %133, double* %arrayidx390, align 8, !dbg !744, !tbaa !476
  %add392584 = or i32 %mul385, 1, !dbg !748
  %idxprom393 = sext i32 %add392584 to i64, !dbg !748
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !215), !dbg !748
  %arrayidx394 = getelementptr inbounds double* %103, i64 %idxprom393, !dbg !748
  %135 = load double* %arrayidx394, align 8, !dbg !748, !tbaa !476
  %add396585 = or i32 %mul388, 1, !dbg !748
  %idxprom397 = sext i32 %add396585 to i64, !dbg !748
  %arrayidx398 = getelementptr inbounds double* %call9, i64 %idxprom397, !dbg !748
  store double %135, double* %arrayidx398, align 8, !dbg !748, !tbaa !476
  %indvars.iv.next713 = add i64 %indvars.iv712, 1, !dbg !757
  call void @llvm.dbg.value(metadata !{i32 %137}, i64 0, metadata !220), !dbg !758
  %indvars.iv.next715 = add i64 %indvars.iv714, 1, !dbg !757
  %136 = trunc i64 %indvars.iv.next715 to i32, !dbg !757
  %cmp383 = icmp slt i32 %136, %add352, !dbg !757
  br i1 %cmp383, label %for.body384, label %for.cond381.if.end408.loopexit_crit_edge, !dbg !757

if.end408.thread:                                 ; preds = %for.body347
  %add404 = add nsw i32 %106, 1, !dbg !759
  %mul405 = mul nsw i32 %add404, %106, !dbg !759
  %div406 = sdiv i32 %mul405, 2, !dbg !759
  %add407 = add nsw i32 %div406, %kk339.0676, !dbg !759
  call void @llvm.dbg.value(metadata !{i32 %add407}, i64 0, metadata !220), !dbg !759
  call void @llvm.dbg.value(metadata !{i32 %add352}, i64 0, metadata !219), !dbg !761
  %indvars.iv.next717721 = add i64 %indvars.iv716, 1, !dbg !740
  br label %for.body347, !dbg !740

for.cond381.if.end408.loopexit_crit_edge:         ; preds = %for.body384
  %137 = sub i32 %131, %ii336.0.lcssa, !dbg !757
  br label %if.end408, !dbg !757

if.end408:                                        ; preds = %for.cond381.loopexit, %for.cond381.if.end408.loopexit_crit_edge
  %kk339.3 = phi i32 [ %137, %for.cond381.if.end408.loopexit_crit_edge ], [ %kk339.1.lcssa, %for.cond381.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add352}, i64 0, metadata !219), !dbg !761
  %indvars.iv.next717 = add i64 %indvars.iv716, 1, !dbg !740
  br i1 %cmp353, label %sw.epilog, label %for.body347, !dbg !740

sw.epilog:                                        ; preds = %if.end408, %if.end329, %sw.bb195, %for.inc243, %if.then167, %for.body175, %sw.bb113, %for.inc143, %sw.bb66, %for.end106, %for.cond39.preheader, %for.body43, %sw.bb, %for.body, %if.end8, %for.end163, %sw.bb246
  ret void, !dbg !762
}

; Function Attrs: optsize
declare void @ZV_setSize(%struct._ZV*, i32) #4

; Function Attrs: optsize
declare double* @ZV_entries(%struct._ZV*) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillColumnDV(%struct._SubMtx* %mtx, i32 %icol, %struct._DV* %colDV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow11 = alloca i32, align 4
  %entries17 = alloca double*, align 8
  %ncol18 = alloca i32, align 4
  %nent = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries44 = alloca double*, align 8
  %nent48 = alloca i32, align 4
  %nrow49 = alloca i32, align 4
  %indices51 = alloca i32*, align 8
  %sizes52 = alloca i32*, align 8
  %entries81 = alloca double*, align 8
  %nent83 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries102 = alloca double*, align 8
  %ncol106 = alloca i32, align 4
  %nent107 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes109 = alloca i32*, align 8
  %entries141 = alloca double*, align 8
  %nent146 = alloca i32, align 4
  %nrow147 = alloca i32, align 4
  %firstlocs149 = alloca i32*, align 8
  %sizes150 = alloca i32*, align 8
  %entries182 = alloca double*, align 8
  %nent183 = alloca i32, align 4
  %entries189 = alloca double*, align 8
  %nrow193 = alloca i32, align 4
  %nent194 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries240 = alloca double*, align 8
  %nrow246 = alloca i32, align 4
  %nent247 = alloca i32, align 4
  %pivotsizes249 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !228), !dbg !763
  call void @llvm.dbg.value(metadata !{i32 %icol}, i64 0, metadata !229), !dbg !764
  call void @llvm.dbg.value(metadata !{%struct._DV* %colDV}, i64 0, metadata !230), !dbg !765
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !766
  %cmp1 = icmp slt i32 %icol, 0, !dbg !766
  %or.cond = or i1 %cmp, %cmp1, !dbg !766
  %cmp3 = icmp eq %struct._DV* %colDV, null, !dbg !766
  %or.cond435 = or i1 %or.cond, %cmp3, !dbg !766
  br i1 %or.cond435, label %if.then, label %if.end, !dbg !766

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !767, !tbaa !455
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._DV* %colDV) #5, !dbg !767
  call void @exit(i32 -1) #6, !dbg !769
  unreachable, !dbg !769

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !770
  %1 = load i32* %type, align 4, !dbg !770, !tbaa !460
  %cmp4 = icmp eq i32 %1, 1, !dbg !770
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !770

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !771, !tbaa !455
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._DV* %colDV, i32 %1) #5, !dbg !771
  call void @exit(i32 -1) #6, !dbg !773
  unreachable, !dbg !773

if.end8:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !774
  %3 = load i32* %nrow, align 4, !dbg !774, !tbaa !460
  call void @DV_setSize(%struct._DV* %colDV, i32 %3) #5, !dbg !774
  %call9 = call double* @DV_entries(%struct._DV* %colDV) #5, !dbg !775
  call void @llvm.dbg.value(metadata !{double* %call9}, i64 0, metadata !231), !dbg !775
  %4 = load i32* %nrow, align 4, !dbg !776, !tbaa !460
  call void @DVzero(i32 %4, double* %call9) #5, !dbg !776
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !777
  %5 = load i32* %mode, align 4, !dbg !777, !tbaa !460
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb16
    i32 2, label %sw.bb43
    i32 4, label %sw.bb80
    i32 6, label %sw.bb101
    i32 5, label %sw.bb140
    i32 7, label %sw.bb181
    i32 8, label %for.body197.lr.ph
    i32 9, label %for.body252.lr.ph
  ], !dbg !777

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !232), !dbg !778
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !235), !dbg !779
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !236), !dbg !779
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !239), !dbg !779
  call void @llvm.dbg.declare(metadata !{i32* %nrow11}, metadata !240), !dbg !779
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow11, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !780
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !781
  call void @llvm.dbg.value(metadata !{i32* %nrow11}, i64 0, metadata !240), !dbg !781
  %6 = load i32* %nrow11, align 4, !dbg !781, !tbaa !460
  %cmp12436 = icmp sgt i32 %6, 0, !dbg !781
  br i1 %cmp12436, label %for.body.lr.ph, label %sw.epilog, !dbg !781

for.body.lr.ph:                                   ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !235), !dbg !783
  %7 = load i32* %inc1, align 4, !dbg !783, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !236), !dbg !783
  %8 = load i32* %inc2, align 4, !dbg !783, !tbaa !460
  %mul13 = mul nsw i32 %8, %icol, !dbg !783
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !232), !dbg !785
  %9 = load double** %entries, align 8, !dbg !785, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32* %nrow11}, i64 0, metadata !240), !dbg !781
  br label %for.body, !dbg !781

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !235), !dbg !783
  %10 = trunc i64 %indvars.iv to i32, !dbg !783
  %mul = mul nsw i32 %7, %10, !dbg !783
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !236), !dbg !783
  %add = add nsw i32 %mul13, %mul, !dbg !783
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !238), !dbg !783
  %idxprom = sext i32 %add to i64, !dbg !785
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !232), !dbg !785
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom, !dbg !785
  %11 = load double* %arrayidx, align 8, !dbg !785, !tbaa !476
  %arrayidx15 = getelementptr inbounds double* %call9, i64 %indvars.iv, !dbg !785
  store double %11, double* %arrayidx15, align 8, !dbg !785, !tbaa !476
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !781
  call void @llvm.dbg.value(metadata !{i32* %nrow11}, i64 0, metadata !240), !dbg !781
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !781
  %cmp12 = icmp slt i32 %12, %6, !dbg !781
  br i1 %cmp12, label %for.body, label %sw.epilog, !dbg !781

sw.bb16:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries17}, metadata !241), !dbg !786
  call void @llvm.dbg.declare(metadata !{i32* %ncol18}, metadata !246), !dbg !787
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !247), !dbg !787
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !249), !dbg !788
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !250), !dbg !788
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol18, i32* %nent, i32** %sizes, i32** %indices, double** %entries17) #5, !dbg !789
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !248), !dbg !790
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !790
  %cmp20443 = icmp sgt i32 %icol, 0, !dbg !790
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !250), !dbg !792
  %13 = load i32** %sizes, align 8, !dbg !792, !tbaa !455
  br i1 %cmp20443, label %for.body21, label %for.cond28.preheader, !dbg !790

for.cond19.for.cond28.preheader_crit_edge:        ; preds = %for.body21
  %phitmp550 = sext i32 %add24 to i64, !dbg !790
  br label %for.cond28.preheader, !dbg !790

for.cond28.preheader:                             ; preds = %sw.bb16, %for.cond19.for.cond28.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp550, %for.cond19.for.cond28.preheader_crit_edge ], [ 0, %sw.bb16 ]
  %idxprom29 = sext i32 %icol to i64, !dbg !794
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !250), !dbg !794
  %arrayidx30439 = getelementptr inbounds i32* %13, i64 %idxprom29, !dbg !794
  %14 = load i32* %arrayidx30439, align 4, !dbg !794, !tbaa !460
  %cmp31440 = icmp sgt i32 %14, 0, !dbg !794
  br i1 %cmp31440, label %for.body32.lr.ph, label %sw.epilog, !dbg !794

for.body32.lr.ph:                                 ; preds = %for.cond28.preheader
  call void @llvm.dbg.value(metadata !{double** %entries17}, i64 0, metadata !241), !dbg !796
  %15 = load double** %entries17, align 8, !dbg !796, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !249), !dbg !796
  %16 = load i32** %indices, align 8, !dbg !796, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !250), !dbg !794
  br label %for.body32, !dbg !794

for.body21:                                       ; preds = %sw.bb16, %for.body21
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %for.body21 ], [ 0, %sw.bb16 ]
  %offset.0444 = phi i32 [ %add24, %for.body21 ], [ 0, %sw.bb16 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !250), !dbg !792
  %arrayidx23 = getelementptr inbounds i32* %13, i64 %indvars.iv506, !dbg !792
  %17 = load i32* %arrayidx23, align 4, !dbg !792, !tbaa !460
  %add24 = add nsw i32 %17, %offset.0444, !dbg !792
  call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !248), !dbg !792
  %indvars.iv.next507 = add i64 %indvars.iv506, 1, !dbg !790
  %lftr.wideiv = trunc i64 %indvars.iv.next507 to i32, !dbg !790
  %exitcond = icmp eq i32 %lftr.wideiv, %icol, !dbg !790
  br i1 %exitcond, label %for.cond19.for.cond28.preheader_crit_edge, label %for.body21, !dbg !790

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv504 = phi i64 [ %offset.0.lcssa, %for.body32.lr.ph ], [ %indvars.iv.next505, %for.body32 ]
  %ii.0442 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc40, %for.body32 ]
  call void @llvm.dbg.value(metadata !{double** %entries17}, i64 0, metadata !241), !dbg !796
  %arrayidx34 = getelementptr inbounds double* %15, i64 %indvars.iv504, !dbg !796
  %18 = load double* %arrayidx34, align 8, !dbg !796, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !249), !dbg !796
  %arrayidx36 = getelementptr inbounds i32* %16, i64 %indvars.iv504, !dbg !796
  %19 = load i32* %arrayidx36, align 4, !dbg !796, !tbaa !460
  %idxprom37 = sext i32 %19 to i64, !dbg !796
  %arrayidx38 = getelementptr inbounds double* %call9, i64 %idxprom37, !dbg !796
  store double %18, double* %arrayidx38, align 8, !dbg !796, !tbaa !476
  %inc40 = add nsw i32 %ii.0442, 1, !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %inc40}, i64 0, metadata !243), !dbg !794
  %indvars.iv.next505 = add i64 %indvars.iv504, 1, !dbg !794
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !250), !dbg !794
  %cmp31 = icmp slt i32 %inc40, %14, !dbg !794
  br i1 %cmp31, label %for.body32, label %sw.epilog, !dbg !794

sw.bb43:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries44}, metadata !251), !dbg !798
  call void @llvm.dbg.declare(metadata !{i32* %nent48}, metadata !256), !dbg !799
  call void @llvm.dbg.declare(metadata !{i32* %nrow49}, metadata !257), !dbg !799
  call void @llvm.dbg.declare(metadata !{i32** %indices51}, metadata !259), !dbg !800
  call void @llvm.dbg.declare(metadata !{i32** %sizes52}, metadata !260), !dbg !800
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow49, i32* %nent48, i32** %sizes52, i32** %indices51, double** %entries44) #5, !dbg !801
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !258), !dbg !802
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !254), !dbg !802
  call void @llvm.dbg.value(metadata !{i32* %nrow49}, i64 0, metadata !257), !dbg !802
  %20 = load i32* %nrow49, align 4, !dbg !802, !tbaa !460
  %cmp54454 = icmp sgt i32 %20, 0, !dbg !802
  br i1 %cmp54454, label %for.cond56.preheader.lr.ph, label %sw.epilog, !dbg !802

for.cond56.preheader.lr.ph:                       ; preds = %sw.bb43
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !260), !dbg !804
  %21 = load i32** %sizes52, align 8, !dbg !804, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !260), !dbg !807
  call void @llvm.dbg.value(metadata !{i32* %nrow49}, i64 0, metadata !257), !dbg !802
  call void @llvm.dbg.value(metadata !{i32** %indices51}, i64 0, metadata !259), !dbg !808
  %22 = load i32** %indices51, align 8, !dbg !808, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !260), !dbg !804
  call void @llvm.dbg.value(metadata !{double** %entries44}, i64 0, metadata !251), !dbg !810
  %23 = load double** %entries44, align 8, !dbg !810, !tbaa !455
  br label %for.cond56.preheader, !dbg !802

for.cond56.preheader:                             ; preds = %for.cond56.preheader.lr.ph, %for.end73
  %indvars.iv511 = phi i64 [ 0, %for.cond56.preheader.lr.ph ], [ %indvars.iv.next512, %for.end73 ]
  %offset50.0455 = phi i32 [ 0, %for.cond56.preheader.lr.ph ], [ %add76, %for.end73 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !260), !dbg !804
  %arrayidx58448 = getelementptr inbounds i32* %21, i64 %indvars.iv511, !dbg !804
  %24 = load i32* %arrayidx58448, align 4, !dbg !804, !tbaa !460
  %cmp59449 = icmp sgt i32 %24, 0, !dbg !804
  br i1 %cmp59449, label %for.body60.lr.ph, label %for.end73, !dbg !804

for.body60.lr.ph:                                 ; preds = %for.cond56.preheader
  %25 = sext i32 %offset50.0455 to i64
  br label %for.body60, !dbg !804

for.body60:                                       ; preds = %for.body60.lr.ph, %for.inc70
  %indvars.iv509 = phi i64 [ %25, %for.body60.lr.ph ], [ %indvars.iv.next510, %for.inc70 ]
  %ii45.0451 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc71, %for.inc70 ]
  call void @llvm.dbg.value(metadata !{i32** %indices51}, i64 0, metadata !259), !dbg !808
  %arrayidx62 = getelementptr inbounds i32* %22, i64 %indvars.iv509, !dbg !808
  %26 = load i32* %arrayidx62, align 4, !dbg !808, !tbaa !460
  %cmp63 = icmp eq i32 %26, %icol, !dbg !808
  br i1 %cmp63, label %if.then64, label %for.inc70, !dbg !808

if.then64:                                        ; preds = %for.body60
  call void @llvm.dbg.value(metadata !{double** %entries44}, i64 0, metadata !251), !dbg !810
  %arrayidx66 = getelementptr inbounds double* %23, i64 %indvars.iv509, !dbg !810
  %27 = load double* %arrayidx66, align 8, !dbg !810, !tbaa !476
  %arrayidx68 = getelementptr inbounds double* %call9, i64 %indvars.iv511, !dbg !810
  store double %27, double* %arrayidx68, align 8, !dbg !810, !tbaa !476
  br label %for.end73, !dbg !812

for.inc70:                                        ; preds = %for.body60
  %inc71 = add nsw i32 %ii45.0451, 1, !dbg !804
  call void @llvm.dbg.value(metadata !{i32 %inc71}, i64 0, metadata !253), !dbg !804
  %indvars.iv.next510 = add i64 %indvars.iv509, 1, !dbg !804
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !260), !dbg !804
  %cmp59 = icmp slt i32 %inc71, %24, !dbg !804
  br i1 %cmp59, label %for.body60, label %for.end73, !dbg !804

for.end73:                                        ; preds = %for.cond56.preheader, %for.inc70, %if.then64
  call void @llvm.dbg.value(metadata !{i32** %sizes52}, i64 0, metadata !260), !dbg !807
  %add76 = add nsw i32 %24, %offset50.0455, !dbg !807
  call void @llvm.dbg.value(metadata !{i32 %add76}, i64 0, metadata !258), !dbg !807
  %indvars.iv.next512 = add i64 %indvars.iv511, 1, !dbg !802
  call void @llvm.dbg.value(metadata !{i32* %nrow49}, i64 0, metadata !257), !dbg !802
  %28 = trunc i64 %indvars.iv.next512 to i32, !dbg !802
  %cmp54 = icmp slt i32 %28, %20, !dbg !802
  br i1 %cmp54, label %for.cond56.preheader, label %sw.epilog, !dbg !802

sw.bb80:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries81}, metadata !261), !dbg !813
  call void @llvm.dbg.declare(metadata !{i32* %nent83}, metadata !264), !dbg !814
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !265), !dbg !815
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !266), !dbg !815
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent83, i32** %rowids, i32** %colids, double** %entries81) #5, !dbg !816
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !263), !dbg !817
  call void @llvm.dbg.value(metadata !{i32* %nent83}, i64 0, metadata !264), !dbg !817
  %29 = load i32* %nent83, align 4, !dbg !817, !tbaa !460
  %cmp85458 = icmp sgt i32 %29, 0, !dbg !817
  br i1 %cmp85458, label %for.body86.lr.ph, label %sw.epilog, !dbg !817

for.body86.lr.ph:                                 ; preds = %sw.bb80
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !265), !dbg !819
  %30 = load i32** %colids, align 8, !dbg !819, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries81}, i64 0, metadata !261), !dbg !821
  %31 = load double** %entries81, align 8, !dbg !821, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !266), !dbg !821
  %32 = load i32** %rowids, align 8, !dbg !821, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32* %nent83}, i64 0, metadata !264), !dbg !817
  br label %for.body86, !dbg !817

for.body86:                                       ; preds = %for.body86.lr.ph, %for.inc98
  %indvars.iv513 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next514, %for.inc98 ]
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !265), !dbg !819
  %arrayidx88 = getelementptr inbounds i32* %30, i64 %indvars.iv513, !dbg !819
  %33 = load i32* %arrayidx88, align 4, !dbg !819, !tbaa !460
  %cmp89 = icmp eq i32 %33, %icol, !dbg !819
  br i1 %cmp89, label %if.then90, label %for.inc98, !dbg !819

if.then90:                                        ; preds = %for.body86
  call void @llvm.dbg.value(metadata !{double** %entries81}, i64 0, metadata !261), !dbg !821
  %arrayidx92 = getelementptr inbounds double* %31, i64 %indvars.iv513, !dbg !821
  %34 = load double* %arrayidx92, align 8, !dbg !821, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !266), !dbg !821
  %arrayidx94 = getelementptr inbounds i32* %32, i64 %indvars.iv513, !dbg !821
  %35 = load i32* %arrayidx94, align 4, !dbg !821, !tbaa !460
  %idxprom95 = sext i32 %35 to i64, !dbg !821
  %arrayidx96 = getelementptr inbounds double* %call9, i64 %idxprom95, !dbg !821
  store double %34, double* %arrayidx96, align 8, !dbg !821, !tbaa !476
  br label %for.inc98, !dbg !823

for.inc98:                                        ; preds = %for.body86, %if.then90
  %indvars.iv.next514 = add i64 %indvars.iv513, 1, !dbg !817
  call void @llvm.dbg.value(metadata !{i32* %nent83}, i64 0, metadata !264), !dbg !817
  %36 = trunc i64 %indvars.iv.next514 to i32, !dbg !817
  %cmp85 = icmp slt i32 %36, %29, !dbg !817
  br i1 %cmp85, label %for.body86, label %sw.epilog, !dbg !817

sw.bb101:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries102}, metadata !267), !dbg !824
  call void @llvm.dbg.declare(metadata !{i32* %ncol106}, metadata !274), !dbg !825
  call void @llvm.dbg.declare(metadata !{i32* %nent107}, metadata !275), !dbg !825
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !277), !dbg !826
  call void @llvm.dbg.declare(metadata !{i32** %sizes109}, metadata !278), !dbg !826
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol106, i32* %nent107, i32** %firstlocs, i32** %sizes109, double** %entries102) #5, !dbg !827
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !828
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !271), !dbg !828
  %cmp111464 = icmp sgt i32 %icol, 0, !dbg !828
  call void @llvm.dbg.value(metadata !{i32** %sizes109}, i64 0, metadata !278), !dbg !830
  %37 = load i32** %sizes109, align 8, !dbg !830, !tbaa !455
  br i1 %cmp111464, label %for.body112, label %for.end118, !dbg !828

for.body112:                                      ; preds = %sw.bb101, %for.body112
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %for.body112 ], [ 0, %sw.bb101 ]
  %offset108.0466 = phi i32 [ %add115, %for.body112 ], [ 0, %sw.bb101 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes109}, i64 0, metadata !278), !dbg !830
  %arrayidx114 = getelementptr inbounds i32* %37, i64 %indvars.iv520, !dbg !830
  %38 = load i32* %arrayidx114, align 4, !dbg !830, !tbaa !460
  %add115 = add nsw i32 %38, %offset108.0466, !dbg !830
  call void @llvm.dbg.value(metadata !{i32 %add115}, i64 0, metadata !276), !dbg !830
  %indvars.iv.next521 = add i64 %indvars.iv520, 1, !dbg !828
  %lftr.wideiv522 = trunc i64 %indvars.iv.next521 to i32, !dbg !828
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %icol, !dbg !828
  br i1 %exitcond523, label %for.cond110.for.end118_crit_edge, label %for.body112, !dbg !828

for.cond110.for.end118_crit_edge:                 ; preds = %for.body112
  %phitmp = sext i32 %add115 to i64, !dbg !828
  br label %for.end118, !dbg !828

for.end118:                                       ; preds = %sw.bb101, %for.cond110.for.end118_crit_edge
  %offset108.0.lcssa = phi i64 [ %phitmp, %for.cond110.for.end118_crit_edge ], [ 0, %sw.bb101 ]
  %idxprom119 = sext i32 %icol to i64, !dbg !832
  call void @llvm.dbg.value(metadata !{i32** %sizes109}, i64 0, metadata !278), !dbg !832
  %arrayidx120 = getelementptr inbounds i32* %37, i64 %idxprom119, !dbg !832
  %39 = load i32* %arrayidx120, align 4, !dbg !832, !tbaa !460
  %cmp121 = icmp sgt i32 %39, 0, !dbg !832
  br i1 %cmp121, label %if.then122, label %sw.epilog, !dbg !832

if.then122:                                       ; preds = %for.end118
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !277), !dbg !833
  %40 = load i32** %firstlocs, align 8, !dbg !833, !tbaa !455
  %arrayidx124 = getelementptr inbounds i32* %40, i64 %idxprom119, !dbg !833
  %41 = load i32* %arrayidx124, align 4, !dbg !833, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !269), !dbg !833
  %add127 = add i32 %39, -1, !dbg !835
  %sub = add i32 %add127, %41, !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !273), !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !272), !dbg !836
  %cmp129461 = icmp sgt i32 %41, %sub, !dbg !836
  br i1 %cmp129461, label %sw.epilog, label %for.body130.lr.ph, !dbg !836

for.body130.lr.ph:                                ; preds = %if.then122
  call void @llvm.dbg.value(metadata !{double** %entries102}, i64 0, metadata !267), !dbg !838
  %42 = load double** %entries102, align 8, !dbg !838, !tbaa !455
  %43 = sext i32 %41 to i64
  br label %for.body130, !dbg !836

for.body130:                                      ; preds = %for.body130, %for.body130.lr.ph
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %for.body130 ], [ %offset108.0.lcssa, %for.body130.lr.ph ], !dbg !836
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %for.body130 ], [ %43, %for.body130.lr.ph ]
  call void @llvm.dbg.value(metadata !{double** %entries102}, i64 0, metadata !267), !dbg !838
  %arrayidx132 = getelementptr inbounds double* %42, i64 %indvars.iv517, !dbg !838
  %44 = load double* %arrayidx132, align 8, !dbg !838, !tbaa !476
  %arrayidx134 = getelementptr inbounds double* %call9, i64 %indvars.iv515, !dbg !838
  store double %44, double* %arrayidx134, align 8, !dbg !838, !tbaa !476
  %indvars.iv.next516 = add i64 %indvars.iv515, 1, !dbg !836
  %indvars.iv.next518 = add i64 %indvars.iv517, 1, !dbg !836
  %45 = trunc i64 %indvars.iv515 to i32, !dbg !836
  %cmp129 = icmp slt i32 %45, %sub, !dbg !836
  br i1 %cmp129, label %for.body130, label %sw.epilog, !dbg !836

sw.bb140:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries141}, metadata !279), !dbg !840
  call void @llvm.dbg.declare(metadata !{i32* %nent146}, metadata !285), !dbg !841
  call void @llvm.dbg.declare(metadata !{i32* %nrow147}, metadata !286), !dbg !841
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs149}, metadata !288), !dbg !842
  call void @llvm.dbg.declare(metadata !{i32** %sizes150}, metadata !289), !dbg !842
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow147, i32* %nent146, i32** %firstlocs149, i32** %sizes150, double** %entries141) #5, !dbg !843
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !287), !dbg !844
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !282), !dbg !844
  call void @llvm.dbg.value(metadata !{i32* %nrow147}, i64 0, metadata !286), !dbg !844
  %46 = load i32* %nrow147, align 4, !dbg !844, !tbaa !460
  %cmp152469 = icmp sgt i32 %46, 0, !dbg !844
  br i1 %cmp152469, label %for.body153.lr.ph, label %sw.epilog, !dbg !844

for.body153.lr.ph:                                ; preds = %sw.bb140
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !289), !dbg !846
  %47 = load i32** %sizes150, align 8, !dbg !846, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %firstlocs149}, i64 0, metadata !288), !dbg !848
  %48 = load i32** %firstlocs149, align 8, !dbg !848, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !289), !dbg !850
  call void @llvm.dbg.value(metadata !{double** %entries141}, i64 0, metadata !279), !dbg !851
  %49 = load double** %entries141, align 8, !dbg !851, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32* %nrow147}, i64 0, metadata !286), !dbg !844
  br label %for.body153, !dbg !844

for.body153:                                      ; preds = %for.body153.lr.ph, %for.inc178
  %indvars.iv524 = phi i64 [ 0, %for.body153.lr.ph ], [ %indvars.iv.next525, %for.inc178 ]
  %offset148.0471 = phi i32 [ 0, %for.body153.lr.ph ], [ %offset148.1, %for.inc178 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !289), !dbg !846
  %arrayidx155 = getelementptr inbounds i32* %47, i64 %indvars.iv524, !dbg !846
  %50 = load i32* %arrayidx155, align 4, !dbg !846, !tbaa !460
  %cmp156 = icmp sgt i32 %50, 0, !dbg !846
  br i1 %cmp156, label %if.then157, label %for.inc178, !dbg !846

if.then157:                                       ; preds = %for.body153
  call void @llvm.dbg.value(metadata !{i32** %firstlocs149}, i64 0, metadata !288), !dbg !848
  %arrayidx159 = getelementptr inbounds i32* %48, i64 %indvars.iv524, !dbg !848
  %51 = load i32* %arrayidx159, align 4, !dbg !848, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !281), !dbg !848
  %cmp164 = icmp sgt i32 %51, %icol, !dbg !853
  br i1 %cmp164, label %if.end173, label %land.lhs.true, !dbg !853

land.lhs.true:                                    ; preds = %if.then157
  %add162 = add nsw i32 %51, %50, !dbg !854
  %cmp165 = icmp sgt i32 %add162, %icol, !dbg !853
  br i1 %cmp165, label %if.then166, label %if.end173, !dbg !853

if.then166:                                       ; preds = %land.lhs.true
  %add167 = add nsw i32 %offset148.0471, %icol, !dbg !855
  %sub168 = sub i32 %add167, %51, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %sub168}, i64 0, metadata !284), !dbg !855
  %idxprom169 = sext i32 %sub168 to i64, !dbg !851
  call void @llvm.dbg.value(metadata !{double** %entries141}, i64 0, metadata !279), !dbg !851
  %arrayidx170 = getelementptr inbounds double* %49, i64 %idxprom169, !dbg !851
  %52 = load double* %arrayidx170, align 8, !dbg !851, !tbaa !476
  %arrayidx172 = getelementptr inbounds double* %call9, i64 %indvars.iv524, !dbg !851
  store double %52, double* %arrayidx172, align 8, !dbg !851, !tbaa !476
  br label %if.end173, !dbg !856

if.end173:                                        ; preds = %if.then157, %if.then166, %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32** %sizes150}, i64 0, metadata !289), !dbg !850
  %add176 = add nsw i32 %50, %offset148.0471, !dbg !850
  call void @llvm.dbg.value(metadata !{i32 %add176}, i64 0, metadata !287), !dbg !850
  br label %for.inc178, !dbg !857

for.inc178:                                       ; preds = %for.body153, %if.end173
  %offset148.1 = phi i32 [ %add176, %if.end173 ], [ %offset148.0471, %for.body153 ]
  %indvars.iv.next525 = add i64 %indvars.iv524, 1, !dbg !844
  call void @llvm.dbg.value(metadata !{i32* %nrow147}, i64 0, metadata !286), !dbg !844
  %53 = trunc i64 %indvars.iv.next525 to i32, !dbg !844
  %cmp152 = icmp slt i32 %53, %46, !dbg !844
  br i1 %cmp152, label %for.body153, label %sw.epilog, !dbg !844

sw.bb181:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries182}, metadata !290), !dbg !858
  call void @llvm.dbg.declare(metadata !{i32* %nent183}, metadata !292), !dbg !859
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent183, double** %entries182) #5, !dbg !860
  %idxprom184 = sext i32 %icol to i64, !dbg !861
  call void @llvm.dbg.value(metadata !{double** %entries182}, i64 0, metadata !290), !dbg !861
  %54 = load double** %entries182, align 8, !dbg !861, !tbaa !455
  %arrayidx185 = getelementptr inbounds double* %54, i64 %idxprom184, !dbg !861
  %55 = load double* %arrayidx185, align 8, !dbg !861, !tbaa !476
  %arrayidx187 = getelementptr inbounds double* %call9, i64 %idxprom184, !dbg !861
  store double %55, double* %arrayidx187, align 8, !dbg !861, !tbaa !476
  br label %sw.epilog, !dbg !862

for.body197.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries189}, metadata !293), !dbg !863
  call void @llvm.dbg.declare(metadata !{i32* %nrow193}, metadata !300), !dbg !864
  call void @llvm.dbg.declare(metadata !{i32* %nent194}, metadata !301), !dbg !864
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !303), !dbg !865
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow193, i32* %nent194, i32** %pivotsizes, double** %entries189) #5, !dbg !866
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !298), !dbg !867
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !296), !dbg !867
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !297), !dbg !867
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !303), !dbg !869
  %56 = load i32** %pivotsizes, align 8, !dbg !869, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !293), !dbg !871
  %57 = load double** %entries189, align 8, !dbg !871, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !293), !dbg !875
  %58 = add i32 %icol, -1, !dbg !878
  br label %for.body197, !dbg !867

for.body197:                                      ; preds = %if.end234.thread, %for.body197.lr.ph, %if.end234
  %indvars.iv535 = phi i64 [ 0, %for.body197.lr.ph ], [ %indvars.iv.next536, %if.end234 ], [ %indvars.iv.next536551, %if.end234.thread ]
  %kk192.0487 = phi i32 [ 0, %for.body197.lr.ph ], [ %kk192.3, %if.end234 ], [ %add233, %if.end234.thread ]
  %jcol191.0486 = phi i32 [ 0, %for.body197.lr.ph ], [ %add202, %if.end234 ], [ %add202, %if.end234.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !303), !dbg !869
  %arrayidx199 = getelementptr inbounds i32* %56, i64 %indvars.iv535, !dbg !869
  %59 = load i32* %arrayidx199, align 4, !dbg !869, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !299), !dbg !869
  %add202 = add nsw i32 %59, %jcol191.0486, !dbg !879
  %cmp203 = icmp sgt i32 %add202, %icol, !dbg !879
  br i1 %cmp203, label %if.then204, label %if.end234.thread, !dbg !879

if.then204:                                       ; preds = %for.body197
  %sub206 = sub i32 %icol, %jcol191.0486, !dbg !880
  %add207 = add nsw i32 %sub206, %kk192.0487, !dbg !880
  call void @llvm.dbg.value(metadata !{i32 %add207}, i64 0, metadata !298), !dbg !880
  call void @llvm.dbg.value(metadata !{i32 %jcol191.0486}, i64 0, metadata !295), !dbg !878
  %cmp209473 = icmp sgt i32 %jcol191.0486, %icol, !dbg !878
  br i1 %cmp209473, label %for.cond219.loopexit, label %for.body210.lr.ph, !dbg !878

for.body210.lr.ph:                                ; preds = %if.then204
  %60 = sext i32 %59 to i64
  %61 = sext i32 %jcol191.0486 to i64, !dbg !878
  %62 = add i32 %58, %kk192.0487, !dbg !878
  %63 = add i32 %62, %59, !dbg !878
  %64 = add i32 %59, -2, !dbg !878
  %65 = mul i32 %sub206, %64, !dbg !878
  %66 = add i32 %63, %65, !dbg !878
  %67 = zext i32 %sub206 to i33, !dbg !878
  %68 = sub i32 %58, %jcol191.0486, !dbg !878
  %69 = zext i32 %68 to i33, !dbg !878
  %70 = mul i33 %67, %69, !dbg !878
  %71 = lshr i33 %70, 1, !dbg !878
  %72 = trunc i33 %71 to i32, !dbg !878
  br label %for.body210, !dbg !878

for.body210:                                      ; preds = %for.body210, %for.body210.lr.ph
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %for.body210 ], [ %61, %for.body210.lr.ph ], !dbg !878
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %for.body210 ], [ %60, %for.body210.lr.ph ]
  %kk192.1475 = phi i32 [ %add215, %for.body210 ], [ %add207, %for.body210.lr.ph ]
  %indvars.iv.next527 = add i64 %indvars.iv526, -1, !dbg !878
  %idxprom211 = sext i32 %kk192.1475 to i64, !dbg !875
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !293), !dbg !875
  %arrayidx212 = getelementptr inbounds double* %57, i64 %idxprom211, !dbg !875
  %73 = load double* %arrayidx212, align 8, !dbg !875, !tbaa !476
  %arrayidx214 = getelementptr inbounds double* %call9, i64 %indvars.iv528, !dbg !875
  store double %73, double* %arrayidx214, align 8, !dbg !875, !tbaa !476
  %74 = trunc i64 %indvars.iv.next527 to i32, !dbg !881
  %add215 = add nsw i32 %74, %kk192.1475, !dbg !881
  call void @llvm.dbg.value(metadata !{i32 %78}, i64 0, metadata !298), !dbg !881
  %indvars.iv.next529 = add i64 %indvars.iv528, 1, !dbg !878
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !295), !dbg !878
  %75 = trunc i64 %indvars.iv528 to i32, !dbg !878
  %cmp209 = icmp slt i32 %75, %icol, !dbg !878
  br i1 %cmp209, label %for.body210, label %for.cond208.for.cond219.loopexit_crit_edge, !dbg !878

for.cond208.for.cond219.loopexit_crit_edge:       ; preds = %for.body210
  %76 = add i32 %icol, 1, !dbg !878
  %77 = sub i32 %66, %jcol191.0486, !dbg !878
  %78 = sub i32 %77, %72, !dbg !878
  br label %for.cond219.loopexit, !dbg !878

for.cond219.loopexit:                             ; preds = %for.cond208.for.cond219.loopexit_crit_edge, %if.then204
  %kk192.1.lcssa = phi i32 [ %78, %for.cond208.for.cond219.loopexit_crit_edge ], [ %add207, %if.then204 ]
  %ii190.0.lcssa = phi i32 [ %76, %for.cond208.for.cond219.loopexit_crit_edge ], [ %jcol191.0486, %if.then204 ]
  %cmp221479 = icmp slt i32 %ii190.0.lcssa, %add202, !dbg !882
  br i1 %cmp221479, label %for.body222.lr.ph, label %if.end234, !dbg !882

for.body222.lr.ph:                                ; preds = %for.cond219.loopexit
  %79 = sext i32 %kk192.1.lcssa to i64
  %80 = sext i32 %ii190.0.lcssa to i64, !dbg !882
  %81 = add i32 %jcol191.0486, %kk192.1.lcssa, !dbg !882
  %82 = add i32 %81, %59, !dbg !882
  br label %for.body222, !dbg !882

for.body222:                                      ; preds = %for.body222.lr.ph, %for.body222
  %indvars.iv532 = phi i64 [ %80, %for.body222.lr.ph ], [ %indvars.iv.next533, %for.body222 ], !dbg !882
  %indvars.iv530 = phi i64 [ %79, %for.body222.lr.ph ], [ %indvars.iv.next531, %for.body222 ]
  call void @llvm.dbg.value(metadata !{double** %entries189}, i64 0, metadata !293), !dbg !871
  %arrayidx224 = getelementptr inbounds double* %57, i64 %indvars.iv530, !dbg !871
  %83 = load double* %arrayidx224, align 8, !dbg !871, !tbaa !476
  %arrayidx226 = getelementptr inbounds double* %call9, i64 %indvars.iv532, !dbg !871
  store double %83, double* %arrayidx226, align 8, !dbg !871, !tbaa !476
  %indvars.iv.next531 = add i64 %indvars.iv530, 1, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %85}, i64 0, metadata !298), !dbg !883
  %indvars.iv.next533 = add i64 %indvars.iv532, 1, !dbg !882
  %84 = trunc i64 %indvars.iv.next533 to i32, !dbg !882
  %cmp221 = icmp slt i32 %84, %add202, !dbg !882
  br i1 %cmp221, label %for.body222, label %for.cond219.if.end234.loopexit_crit_edge, !dbg !882

if.end234.thread:                                 ; preds = %for.body197
  %add231 = add nsw i32 %59, 1, !dbg !884
  %mul232 = mul nsw i32 %add231, %59, !dbg !884
  %div = sdiv i32 %mul232, 2, !dbg !884
  %add233 = add nsw i32 %div, %kk192.0487, !dbg !884
  call void @llvm.dbg.value(metadata !{i32 %add233}, i64 0, metadata !298), !dbg !884
  call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !297), !dbg !886
  %indvars.iv.next536551 = add i64 %indvars.iv535, 1, !dbg !867
  br label %for.body197, !dbg !867

for.cond219.if.end234.loopexit_crit_edge:         ; preds = %for.body222
  %85 = sub i32 %82, %ii190.0.lcssa, !dbg !882
  br label %if.end234, !dbg !882

if.end234:                                        ; preds = %for.cond219.loopexit, %for.cond219.if.end234.loopexit_crit_edge
  %kk192.3 = phi i32 [ %85, %for.cond219.if.end234.loopexit_crit_edge ], [ %kk192.1.lcssa, %for.cond219.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !297), !dbg !886
  %indvars.iv.next536 = add i64 %indvars.iv535, 1, !dbg !867
  br i1 %cmp203, label %sw.epilog, label %for.body197, !dbg !867

for.body252.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries240}, metadata !304), !dbg !887
  call void @llvm.dbg.declare(metadata !{i32* %nrow246}, metadata !311), !dbg !888
  call void @llvm.dbg.declare(metadata !{i32* %nent247}, metadata !312), !dbg !888
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes249}, metadata !314), !dbg !889
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow246, i32* %nent247, i32** %pivotsizes249, double** %entries240) #5, !dbg !890
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !309), !dbg !891
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !307), !dbg !891
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !891
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes249}, i64 0, metadata !314), !dbg !893
  %86 = load i32** %pivotsizes249, align 8, !dbg !893, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !304), !dbg !895
  %87 = load double** %entries240, align 8, !dbg !895, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !304), !dbg !899
  %88 = add i32 %icol, -1, !dbg !902
  br label %for.body252, !dbg !891

for.body252:                                      ; preds = %if.end292.thread, %for.body252.lr.ph, %if.end292
  %indvars.iv547 = phi i64 [ 0, %for.body252.lr.ph ], [ %indvars.iv.next548, %if.end292 ], [ %indvars.iv.next548552, %if.end292.thread ]
  %kk244.0503 = phi i32 [ 0, %for.body252.lr.ph ], [ %kk244.3, %if.end292 ], [ %add291, %if.end292.thread ]
  %jcol243.0502 = phi i32 [ 0, %for.body252.lr.ph ], [ %add257, %if.end292 ], [ %add257, %if.end292.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes249}, i64 0, metadata !314), !dbg !893
  %arrayidx254 = getelementptr inbounds i32* %86, i64 %indvars.iv547, !dbg !893
  %89 = load i32* %arrayidx254, align 4, !dbg !893, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !310), !dbg !893
  %add257 = add nsw i32 %89, %jcol243.0502, !dbg !903
  %cmp258 = icmp sgt i32 %add257, %icol, !dbg !903
  br i1 %cmp258, label %if.then259, label %if.end292.thread, !dbg !903

if.then259:                                       ; preds = %for.body252
  %sub261 = sub i32 %icol, %jcol243.0502, !dbg !904
  %add262 = add nsw i32 %sub261, %kk244.0503, !dbg !904
  call void @llvm.dbg.value(metadata !{i32 %add262}, i64 0, metadata !309), !dbg !904
  call void @llvm.dbg.value(metadata !{i32 %jcol243.0502}, i64 0, metadata !306), !dbg !902
  %cmp264489 = icmp sgt i32 %jcol243.0502, %icol, !dbg !902
  br i1 %cmp264489, label %for.cond275.loopexit, label %for.body265.lr.ph, !dbg !902

for.body265.lr.ph:                                ; preds = %if.then259
  %90 = sext i32 %89 to i64
  %91 = sext i32 %jcol243.0502 to i64, !dbg !902
  %92 = add i32 %88, %kk244.0503, !dbg !902
  %93 = add i32 %92, %89, !dbg !902
  %94 = add i32 %89, -2, !dbg !902
  %95 = mul i32 %sub261, %94, !dbg !902
  %96 = add i32 %93, %95, !dbg !902
  %97 = zext i32 %sub261 to i33, !dbg !902
  %98 = sub i32 %88, %jcol243.0502, !dbg !902
  %99 = zext i32 %98 to i33, !dbg !902
  %100 = mul i33 %97, %99, !dbg !902
  %101 = lshr i33 %100, 1, !dbg !902
  %102 = trunc i33 %101 to i32, !dbg !902
  br label %for.body265, !dbg !902

for.body265:                                      ; preds = %for.body265, %for.body265.lr.ph
  %indvars.iv539 = phi i64 [ %indvars.iv.next540, %for.body265 ], [ %91, %for.body265.lr.ph ], !dbg !902
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %for.body265 ], [ %90, %for.body265.lr.ph ]
  %kk244.1491 = phi i32 [ %add271, %for.body265 ], [ %add262, %for.body265.lr.ph ]
  %indvars.iv.next538 = add i64 %indvars.iv537, -1, !dbg !902
  %idxprom266 = sext i32 %kk244.1491 to i64, !dbg !899
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !304), !dbg !899
  %arrayidx267 = getelementptr inbounds double* %87, i64 %idxprom266, !dbg !899
  %103 = load double* %arrayidx267, align 8, !dbg !899, !tbaa !476
  %arrayidx269 = getelementptr inbounds double* %call9, i64 %indvars.iv539, !dbg !899
  store double %103, double* %arrayidx269, align 8, !dbg !899, !tbaa !476
  %104 = trunc i64 %indvars.iv.next538 to i32, !dbg !905
  %add271 = add nsw i32 %104, %kk244.1491, !dbg !905
  call void @llvm.dbg.value(metadata !{i32 %108}, i64 0, metadata !309), !dbg !905
  %indvars.iv.next540 = add i64 %indvars.iv539, 1, !dbg !902
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !306), !dbg !902
  %105 = trunc i64 %indvars.iv539 to i32, !dbg !902
  %cmp264 = icmp slt i32 %105, %icol, !dbg !902
  br i1 %cmp264, label %for.body265, label %for.cond263.for.cond275.loopexit_crit_edge, !dbg !902

for.cond263.for.cond275.loopexit_crit_edge:       ; preds = %for.body265
  %106 = add i32 %icol, 1, !dbg !902
  %107 = sub i32 %96, %jcol243.0502, !dbg !902
  %108 = sub i32 %107, %102, !dbg !902
  br label %for.cond275.loopexit, !dbg !902

for.cond275.loopexit:                             ; preds = %for.cond263.for.cond275.loopexit_crit_edge, %if.then259
  %kk244.1.lcssa = phi i32 [ %108, %for.cond263.for.cond275.loopexit_crit_edge ], [ %add262, %if.then259 ]
  %ii241.0.lcssa = phi i32 [ %106, %for.cond263.for.cond275.loopexit_crit_edge ], [ %jcol243.0502, %if.then259 ]
  %cmp277495 = icmp slt i32 %ii241.0.lcssa, %add257, !dbg !906
  br i1 %cmp277495, label %for.body278.lr.ph, label %if.end292, !dbg !906

for.body278.lr.ph:                                ; preds = %for.cond275.loopexit
  %109 = sext i32 %kk244.1.lcssa to i64
  %110 = sext i32 %ii241.0.lcssa to i64, !dbg !906
  %111 = add i32 %jcol243.0502, %kk244.1.lcssa, !dbg !906
  %112 = add i32 %111, %89, !dbg !906
  br label %for.body278, !dbg !906

for.body278:                                      ; preds = %for.body278.lr.ph, %for.body278
  %indvars.iv544 = phi i64 [ %110, %for.body278.lr.ph ], [ %indvars.iv.next545, %for.body278 ], !dbg !906
  %indvars.iv542 = phi i64 [ %109, %for.body278.lr.ph ], [ %indvars.iv.next543, %for.body278 ]
  call void @llvm.dbg.value(metadata !{double** %entries240}, i64 0, metadata !304), !dbg !895
  %arrayidx280 = getelementptr inbounds double* %87, i64 %indvars.iv542, !dbg !895
  %113 = load double* %arrayidx280, align 8, !dbg !895, !tbaa !476
  %arrayidx282 = getelementptr inbounds double* %call9, i64 %indvars.iv544, !dbg !895
  store double %113, double* %arrayidx282, align 8, !dbg !895, !tbaa !476
  %indvars.iv.next543 = add i64 %indvars.iv542, 1, !dbg !906
  call void @llvm.dbg.value(metadata !{i32 %115}, i64 0, metadata !309), !dbg !907
  %indvars.iv.next545 = add i64 %indvars.iv544, 1, !dbg !906
  %114 = trunc i64 %indvars.iv.next545 to i32, !dbg !906
  %cmp277 = icmp slt i32 %114, %add257, !dbg !906
  br i1 %cmp277, label %for.body278, label %for.cond275.if.end292.loopexit_crit_edge, !dbg !906

if.end292.thread:                                 ; preds = %for.body252
  %add288 = add nsw i32 %89, 1, !dbg !908
  %mul289 = mul nsw i32 %add288, %89, !dbg !908
  %div290 = sdiv i32 %mul289, 2, !dbg !908
  %add291 = add nsw i32 %div290, %kk244.0503, !dbg !908
  call void @llvm.dbg.value(metadata !{i32 %add291}, i64 0, metadata !309), !dbg !908
  call void @llvm.dbg.value(metadata !{i32 %add257}, i64 0, metadata !308), !dbg !910
  %indvars.iv.next548552 = add i64 %indvars.iv547, 1, !dbg !891
  br label %for.body252, !dbg !891

for.cond275.if.end292.loopexit_crit_edge:         ; preds = %for.body278
  %115 = sub i32 %112, %ii241.0.lcssa, !dbg !906
  br label %if.end292, !dbg !906

if.end292:                                        ; preds = %for.cond275.loopexit, %for.cond275.if.end292.loopexit_crit_edge
  %kk244.3 = phi i32 [ %115, %for.cond275.if.end292.loopexit_crit_edge ], [ %kk244.1.lcssa, %for.cond275.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add257}, i64 0, metadata !308), !dbg !910
  %indvars.iv.next548 = add i64 %indvars.iv547, 1, !dbg !891
  br i1 %cmp258, label %sw.epilog, label %for.body252, !dbg !891

sw.epilog:                                        ; preds = %if.end292, %if.end234, %sw.bb140, %for.inc178, %if.then122, %for.body130, %sw.bb80, %for.inc98, %sw.bb43, %for.end73, %for.cond28.preheader, %for.body32, %sw.bb, %for.body, %if.end8, %for.end118, %sw.bb181
  ret void, !dbg !911
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillColumnZV(%struct._SubMtx* %mtx, i32 %icol, %struct._ZV* %colZV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow11 = alloca i32, align 4
  %entries28 = alloca double*, align 8
  %ncol29 = alloca i32, align 4
  %nent = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries67 = alloca double*, align 8
  %nent71 = alloca i32, align 4
  %nrow72 = alloca i32, align 4
  %indices74 = alloca i32*, align 8
  %sizes75 = alloca i32*, align 8
  %entries114 = alloca double*, align 8
  %nent116 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries147 = alloca double*, align 8
  %ncol151 = alloca i32, align 4
  %nent152 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes154 = alloca i32*, align 8
  %entries196 = alloca double*, align 8
  %nent201 = alloca i32, align 4
  %nrow202 = alloca i32, align 4
  %firstlocs204 = alloca i32*, align 8
  %sizes205 = alloca i32*, align 8
  %entries247 = alloca double*, align 8
  %nent248 = alloca i32, align 4
  %entries264 = alloca double*, align 8
  %nrow268 = alloca i32, align 4
  %nent269 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries335 = alloca double*, align 8
  %nrow341 = alloca i32, align 4
  %nent342 = alloca i32, align 4
  %pivotsizes344 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !317), !dbg !912
  call void @llvm.dbg.value(metadata !{i32 %icol}, i64 0, metadata !318), !dbg !913
  call void @llvm.dbg.value(metadata !{%struct._ZV* %colZV}, i64 0, metadata !319), !dbg !914
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !915
  %cmp1 = icmp slt i32 %icol, 0, !dbg !915
  %or.cond = or i1 %cmp, %cmp1, !dbg !915
  %cmp3 = icmp eq %struct._ZV* %colZV, null, !dbg !915
  %or.cond605 = or i1 %or.cond, %cmp3, !dbg !915
  br i1 %or.cond605, label %if.then, label %if.end, !dbg !915

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !916, !tbaa !455
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._ZV* %colZV) #5, !dbg !916
  call void @exit(i32 -1) #6, !dbg !918
  unreachable, !dbg !918

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !919
  %1 = load i32* %type, align 4, !dbg !919, !tbaa !460
  %cmp4 = icmp eq i32 %1, 2, !dbg !919
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !919

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !920, !tbaa !455
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._ZV* %colZV, i32 %1) #5, !dbg !920
  call void @exit(i32 -1) #6, !dbg !922
  unreachable, !dbg !922

if.end8:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !923
  %3 = load i32* %nrow, align 4, !dbg !923, !tbaa !460
  call void @ZV_setSize(%struct._ZV* %colZV, i32 %3) #5, !dbg !923
  %call9 = call double* @ZV_entries(%struct._ZV* %colZV) #5, !dbg !924
  call void @llvm.dbg.value(metadata !{double* %call9}, i64 0, metadata !320), !dbg !924
  %4 = load i32* %nrow, align 4, !dbg !925, !tbaa !460
  %mul = shl nsw i32 %4, 1, !dbg !925
  call void @DVzero(i32 %mul, double* %call9) #5, !dbg !925
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !926
  %5 = load i32* %mode, align 4, !dbg !926, !tbaa !460
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb27
    i32 2, label %sw.bb66
    i32 4, label %sw.bb113
    i32 6, label %sw.bb146
    i32 5, label %sw.bb195
    i32 7, label %sw.bb246
    i32 8, label %for.body272.lr.ph
    i32 9, label %for.body347.lr.ph
  ], !dbg !926

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !321), !dbg !927
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !324), !dbg !928
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !325), !dbg !928
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !328), !dbg !928
  call void @llvm.dbg.declare(metadata !{i32* %nrow11}, metadata !329), !dbg !928
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow11, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !929
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !326), !dbg !930
  call void @llvm.dbg.value(metadata !{i32* %nrow11}, i64 0, metadata !329), !dbg !930
  %6 = load i32* %nrow11, align 4, !dbg !930, !tbaa !460
  %cmp12606 = icmp sgt i32 %6, 0, !dbg !930
  br i1 %cmp12606, label %for.body.lr.ph, label %sw.epilog, !dbg !930

for.body.lr.ph:                                   ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !324), !dbg !932
  %7 = load i32* %inc1, align 4, !dbg !932, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !325), !dbg !932
  %8 = load i32* %inc2, align 4, !dbg !932, !tbaa !460
  %mul14 = mul nsw i32 %8, %icol, !dbg !932
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !321), !dbg !934
  %9 = load double** %entries, align 8, !dbg !934, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !321), !dbg !935
  call void @llvm.dbg.value(metadata !{i32* %nrow11}, i64 0, metadata !329), !dbg !930
  br label %for.body, !dbg !930

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !324), !dbg !932
  %10 = trunc i64 %indvars.iv to i32, !dbg !932
  %mul13 = mul nsw i32 %7, %10, !dbg !932
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !325), !dbg !932
  %add = add nsw i32 %mul14, %mul13, !dbg !932
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !327), !dbg !932
  %mul15 = shl nsw i32 %add, 1, !dbg !934
  %idxprom = sext i32 %mul15 to i64, !dbg !934
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !321), !dbg !934
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom, !dbg !934
  %11 = load double* %arrayidx, align 8, !dbg !934, !tbaa !476
  %mul16 = shl nsw i32 %10, 1, !dbg !934
  %idxprom17 = sext i32 %mul16 to i64, !dbg !934
  %arrayidx18 = getelementptr inbounds double* %call9, i64 %idxprom17, !dbg !934
  store double %11, double* %arrayidx18, align 8, !dbg !934, !tbaa !476
  %add20603 = or i32 %mul15, 1, !dbg !935
  %idxprom21 = sext i32 %add20603 to i64, !dbg !935
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !321), !dbg !935
  %arrayidx22 = getelementptr inbounds double* %9, i64 %idxprom21, !dbg !935
  %12 = load double* %arrayidx22, align 8, !dbg !935, !tbaa !476
  %add24604 = or i32 %mul16, 1, !dbg !935
  %idxprom25 = sext i32 %add24604 to i64, !dbg !935
  %arrayidx26 = getelementptr inbounds double* %call9, i64 %idxprom25, !dbg !935
  store double %12, double* %arrayidx26, align 8, !dbg !935, !tbaa !476
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !930
  call void @llvm.dbg.value(metadata !{i32* %nrow11}, i64 0, metadata !329), !dbg !930
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !930
  %cmp12 = icmp slt i32 %13, %6, !dbg !930
  br i1 %cmp12, label %for.body, label %sw.epilog, !dbg !930

sw.bb27:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries28}, metadata !330), !dbg !936
  call void @llvm.dbg.declare(metadata !{i32* %ncol29}, metadata !335), !dbg !937
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !336), !dbg !937
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !338), !dbg !938
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !339), !dbg !938
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol29, i32* %nent, i32** %sizes, i32** %indices, double** %entries28) #5, !dbg !939
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !337), !dbg !940
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !333), !dbg !940
  %cmp31613 = icmp sgt i32 %icol, 0, !dbg !940
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !339), !dbg !942
  %14 = load i32** %sizes, align 8, !dbg !942, !tbaa !455
  br i1 %cmp31613, label %for.body32, label %for.cond39.preheader, !dbg !940

for.cond30.for.cond39.preheader_crit_edge:        ; preds = %for.body32
  %phitmp720 = sext i32 %add35 to i64, !dbg !940
  br label %for.cond39.preheader, !dbg !940

for.cond39.preheader:                             ; preds = %sw.bb27, %for.cond30.for.cond39.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp720, %for.cond30.for.cond39.preheader_crit_edge ], [ 0, %sw.bb27 ]
  %idxprom40 = sext i32 %icol to i64, !dbg !944
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !339), !dbg !944
  %arrayidx41609 = getelementptr inbounds i32* %14, i64 %idxprom40, !dbg !944
  %15 = load i32* %arrayidx41609, align 4, !dbg !944, !tbaa !460
  %cmp42610 = icmp sgt i32 %15, 0, !dbg !944
  br i1 %cmp42610, label %for.body43.lr.ph, label %sw.epilog, !dbg !944

for.body43.lr.ph:                                 ; preds = %for.cond39.preheader
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !330), !dbg !946
  %16 = load double** %entries28, align 8, !dbg !946, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !338), !dbg !946
  %17 = load i32** %indices, align 8, !dbg !946, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !330), !dbg !948
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !338), !dbg !948
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !339), !dbg !944
  br label %for.body43, !dbg !944

for.body32:                                       ; preds = %sw.bb27, %for.body32
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %for.body32 ], [ 0, %sw.bb27 ]
  %offset.0614 = phi i32 [ %add35, %for.body32 ], [ 0, %sw.bb27 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !339), !dbg !942
  %arrayidx34 = getelementptr inbounds i32* %14, i64 %indvars.iv679, !dbg !942
  %18 = load i32* %arrayidx34, align 4, !dbg !942, !tbaa !460
  %add35 = add nsw i32 %18, %offset.0614, !dbg !942
  call void @llvm.dbg.value(metadata !{i32 %add35}, i64 0, metadata !337), !dbg !942
  %indvars.iv.next680 = add i64 %indvars.iv679, 1, !dbg !940
  %lftr.wideiv = trunc i64 %indvars.iv.next680 to i32, !dbg !940
  %exitcond = icmp eq i32 %lftr.wideiv, %icol, !dbg !940
  br i1 %exitcond, label %for.cond30.for.cond39.preheader_crit_edge, label %for.body32, !dbg !940

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %indvars.iv677 = phi i64 [ %offset.0.lcssa, %for.body43.lr.ph ], [ %indvars.iv.next678, %for.body43 ]
  %ii.0612 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc63, %for.body43 ]
  %19 = trunc i64 %indvars.iv677 to i32, !dbg !946
  %mul44 = shl nsw i32 %19, 1, !dbg !946
  %idxprom45 = sext i32 %mul44 to i64, !dbg !946
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !330), !dbg !946
  %arrayidx46 = getelementptr inbounds double* %16, i64 %idxprom45, !dbg !946
  %20 = load double* %arrayidx46, align 8, !dbg !946, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !338), !dbg !946
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv677, !dbg !946
  %21 = load i32* %arrayidx48, align 4, !dbg !946, !tbaa !460
  %mul49 = shl nsw i32 %21, 1, !dbg !946
  %idxprom50 = sext i32 %mul49 to i64, !dbg !946
  %arrayidx51 = getelementptr inbounds double* %call9, i64 %idxprom50, !dbg !946
  store double %20, double* %arrayidx51, align 8, !dbg !946, !tbaa !476
  %add53601 = or i32 %mul44, 1, !dbg !948
  %idxprom54 = sext i32 %add53601 to i64, !dbg !948
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !330), !dbg !948
  %arrayidx55 = getelementptr inbounds double* %16, i64 %idxprom54, !dbg !948
  %22 = load double* %arrayidx55, align 8, !dbg !948, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !338), !dbg !948
  %add59602 = or i32 %mul49, 1, !dbg !948
  %idxprom60 = sext i32 %add59602 to i64, !dbg !948
  %arrayidx61 = getelementptr inbounds double* %call9, i64 %idxprom60, !dbg !948
  store double %22, double* %arrayidx61, align 8, !dbg !948, !tbaa !476
  %inc63 = add nsw i32 %ii.0612, 1, !dbg !944
  call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !332), !dbg !944
  %indvars.iv.next678 = add i64 %indvars.iv677, 1, !dbg !944
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !339), !dbg !944
  %cmp42 = icmp slt i32 %inc63, %15, !dbg !944
  br i1 %cmp42, label %for.body43, label %sw.epilog, !dbg !944

sw.bb66:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries67}, metadata !340), !dbg !949
  call void @llvm.dbg.declare(metadata !{i32* %nent71}, metadata !345), !dbg !950
  call void @llvm.dbg.declare(metadata !{i32* %nrow72}, metadata !346), !dbg !950
  call void @llvm.dbg.declare(metadata !{i32** %indices74}, metadata !348), !dbg !951
  call void @llvm.dbg.declare(metadata !{i32** %sizes75}, metadata !349), !dbg !951
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow72, i32* %nent71, i32** %sizes75, i32** %indices74, double** %entries67) #5, !dbg !952
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !347), !dbg !953
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !343), !dbg !953
  call void @llvm.dbg.value(metadata !{i32* %nrow72}, i64 0, metadata !346), !dbg !953
  %23 = load i32* %nrow72, align 4, !dbg !953, !tbaa !460
  %cmp77625 = icmp sgt i32 %23, 0, !dbg !953
  br i1 %cmp77625, label %for.cond79.preheader.lr.ph, label %sw.epilog, !dbg !953

for.cond79.preheader.lr.ph:                       ; preds = %sw.bb66
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !349), !dbg !955
  %24 = load i32** %sizes75, align 8, !dbg !955, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !349), !dbg !958
  call void @llvm.dbg.value(metadata !{i32* %nrow72}, i64 0, metadata !346), !dbg !953
  call void @llvm.dbg.value(metadata !{i32** %indices74}, i64 0, metadata !348), !dbg !959
  %25 = load i32** %indices74, align 8, !dbg !959, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !349), !dbg !955
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !340), !dbg !961
  %26 = load double** %entries67, align 8, !dbg !961, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !340), !dbg !963
  br label %for.cond79.preheader, !dbg !953

for.cond79.preheader:                             ; preds = %for.cond79.preheader.lr.ph, %for.end106
  %indvars.iv684 = phi i64 [ 0, %for.cond79.preheader.lr.ph ], [ %indvars.iv.next685, %for.end106 ]
  %offset73.0626 = phi i32 [ 0, %for.cond79.preheader.lr.ph ], [ %add109, %for.end106 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !349), !dbg !955
  %arrayidx81619 = getelementptr inbounds i32* %24, i64 %indvars.iv684, !dbg !955
  %27 = load i32* %arrayidx81619, align 4, !dbg !955, !tbaa !460
  %cmp82620 = icmp sgt i32 %27, 0, !dbg !955
  br i1 %cmp82620, label %for.body83.lr.ph, label %for.end106, !dbg !955

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  %28 = sext i32 %offset73.0626 to i64
  br label %for.body83, !dbg !955

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc103
  %indvars.iv682 = phi i64 [ %28, %for.body83.lr.ph ], [ %indvars.iv.next683, %for.inc103 ]
  %ii68.0622 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc104, %for.inc103 ]
  %kk70.0621 = phi i32 [ %offset73.0626, %for.body83.lr.ph ], [ %inc105, %for.inc103 ]
  call void @llvm.dbg.value(metadata !{i32** %indices74}, i64 0, metadata !348), !dbg !959
  %arrayidx85 = getelementptr inbounds i32* %25, i64 %indvars.iv682, !dbg !959
  %29 = load i32* %arrayidx85, align 4, !dbg !959, !tbaa !460
  %cmp86 = icmp eq i32 %29, %icol, !dbg !959
  br i1 %cmp86, label %if.then87, label %for.inc103, !dbg !959

if.then87:                                        ; preds = %for.body83
  %mul88 = shl nsw i32 %kk70.0621, 1, !dbg !961
  %idxprom89 = sext i32 %mul88 to i64, !dbg !961
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !340), !dbg !961
  %arrayidx90 = getelementptr inbounds double* %26, i64 %idxprom89, !dbg !961
  %30 = load double* %arrayidx90, align 8, !dbg !961, !tbaa !476
  %31 = trunc i64 %indvars.iv684 to i32, !dbg !961
  %mul91 = shl nsw i32 %31, 1, !dbg !961
  %idxprom92 = sext i32 %mul91 to i64, !dbg !961
  %arrayidx93 = getelementptr inbounds double* %call9, i64 %idxprom92, !dbg !961
  store double %30, double* %arrayidx93, align 8, !dbg !961, !tbaa !476
  %add95599 = or i32 %mul88, 1, !dbg !963
  %idxprom96 = sext i32 %add95599 to i64, !dbg !963
  call void @llvm.dbg.value(metadata !{double** %entries67}, i64 0, metadata !340), !dbg !963
  %arrayidx97 = getelementptr inbounds double* %26, i64 %idxprom96, !dbg !963
  %32 = load double* %arrayidx97, align 8, !dbg !963, !tbaa !476
  %add99600 = or i32 %mul91, 1, !dbg !963
  %idxprom100 = sext i32 %add99600 to i64, !dbg !963
  %arrayidx101 = getelementptr inbounds double* %call9, i64 %idxprom100, !dbg !963
  store double %32, double* %arrayidx101, align 8, !dbg !963, !tbaa !476
  br label %for.end106, !dbg !964

for.inc103:                                       ; preds = %for.body83
  %inc104 = add nsw i32 %ii68.0622, 1, !dbg !955
  call void @llvm.dbg.value(metadata !{i32 %inc104}, i64 0, metadata !342), !dbg !955
  %indvars.iv.next683 = add i64 %indvars.iv682, 1, !dbg !955
  %inc105 = add nsw i32 %kk70.0621, 1, !dbg !955
  call void @llvm.dbg.value(metadata !{i32 %inc105}, i64 0, metadata !344), !dbg !955
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !349), !dbg !955
  %cmp82 = icmp slt i32 %inc104, %27, !dbg !955
  br i1 %cmp82, label %for.body83, label %for.end106, !dbg !955

for.end106:                                       ; preds = %for.cond79.preheader, %for.inc103, %if.then87
  call void @llvm.dbg.value(metadata !{i32** %sizes75}, i64 0, metadata !349), !dbg !958
  %add109 = add nsw i32 %27, %offset73.0626, !dbg !958
  call void @llvm.dbg.value(metadata !{i32 %add109}, i64 0, metadata !347), !dbg !958
  %indvars.iv.next685 = add i64 %indvars.iv684, 1, !dbg !953
  call void @llvm.dbg.value(metadata !{i32* %nrow72}, i64 0, metadata !346), !dbg !953
  %33 = trunc i64 %indvars.iv.next685 to i32, !dbg !953
  %cmp77 = icmp slt i32 %33, %23, !dbg !953
  br i1 %cmp77, label %for.cond79.preheader, label %sw.epilog, !dbg !953

sw.bb113:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries114}, metadata !350), !dbg !965
  call void @llvm.dbg.declare(metadata !{i32* %nent116}, metadata !353), !dbg !966
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !354), !dbg !967
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !355), !dbg !967
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent116, i32** %rowids, i32** %colids, double** %entries114) #5, !dbg !968
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !352), !dbg !969
  call void @llvm.dbg.value(metadata !{i32* %nent116}, i64 0, metadata !353), !dbg !969
  %34 = load i32* %nent116, align 4, !dbg !969, !tbaa !460
  %cmp118631 = icmp sgt i32 %34, 0, !dbg !969
  br i1 %cmp118631, label %for.body119.lr.ph, label %sw.epilog, !dbg !969

for.body119.lr.ph:                                ; preds = %sw.bb113
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !354), !dbg !971
  %35 = load i32** %colids, align 8, !dbg !971, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !350), !dbg !973
  %36 = load double** %entries114, align 8, !dbg !973, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !355), !dbg !973
  %37 = load i32** %rowids, align 8, !dbg !973, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !350), !dbg !975
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !355), !dbg !975
  call void @llvm.dbg.value(metadata !{i32* %nent116}, i64 0, metadata !353), !dbg !969
  br label %for.body119, !dbg !969

for.body119:                                      ; preds = %for.body119.lr.ph, %for.inc143
  %indvars.iv686 = phi i64 [ 0, %for.body119.lr.ph ], [ %indvars.iv.next687, %for.inc143 ]
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !354), !dbg !971
  %arrayidx121 = getelementptr inbounds i32* %35, i64 %indvars.iv686, !dbg !971
  %38 = load i32* %arrayidx121, align 4, !dbg !971, !tbaa !460
  %cmp122 = icmp eq i32 %38, %icol, !dbg !971
  br i1 %cmp122, label %if.then123, label %for.inc143, !dbg !971

if.then123:                                       ; preds = %for.body119
  %39 = trunc i64 %indvars.iv686 to i32, !dbg !973
  %mul124 = shl nsw i32 %39, 1, !dbg !973
  %idxprom125 = sext i32 %mul124 to i64, !dbg !973
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !350), !dbg !973
  %arrayidx126 = getelementptr inbounds double* %36, i64 %idxprom125, !dbg !973
  %40 = load double* %arrayidx126, align 8, !dbg !973, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !355), !dbg !973
  %arrayidx128 = getelementptr inbounds i32* %37, i64 %indvars.iv686, !dbg !973
  %41 = load i32* %arrayidx128, align 4, !dbg !973, !tbaa !460
  %mul129 = shl nsw i32 %41, 1, !dbg !973
  %idxprom130 = sext i32 %mul129 to i64, !dbg !973
  %arrayidx131 = getelementptr inbounds double* %call9, i64 %idxprom130, !dbg !973
  store double %40, double* %arrayidx131, align 8, !dbg !973, !tbaa !476
  %add133597 = or i32 %mul124, 1, !dbg !975
  %idxprom134 = sext i32 %add133597 to i64, !dbg !975
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !350), !dbg !975
  %arrayidx135 = getelementptr inbounds double* %36, i64 %idxprom134, !dbg !975
  %42 = load double* %arrayidx135, align 8, !dbg !975, !tbaa !476
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !355), !dbg !975
  %add139598 = or i32 %mul129, 1, !dbg !975
  %idxprom140 = sext i32 %add139598 to i64, !dbg !975
  %arrayidx141 = getelementptr inbounds double* %call9, i64 %idxprom140, !dbg !975
  store double %42, double* %arrayidx141, align 8, !dbg !975, !tbaa !476
  br label %for.inc143, !dbg !976

for.inc143:                                       ; preds = %for.body119, %if.then123
  %indvars.iv.next687 = add i64 %indvars.iv686, 1, !dbg !969
  call void @llvm.dbg.value(metadata !{i32* %nent116}, i64 0, metadata !353), !dbg !969
  %43 = trunc i64 %indvars.iv.next687 to i32, !dbg !969
  %cmp118 = icmp slt i32 %43, %34, !dbg !969
  br i1 %cmp118, label %for.body119, label %sw.epilog, !dbg !969

sw.bb146:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries147}, metadata !356), !dbg !977
  call void @llvm.dbg.declare(metadata !{i32* %ncol151}, metadata !363), !dbg !978
  call void @llvm.dbg.declare(metadata !{i32* %nent152}, metadata !364), !dbg !978
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !366), !dbg !979
  call void @llvm.dbg.declare(metadata !{i32** %sizes154}, metadata !367), !dbg !979
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol151, i32* %nent152, i32** %firstlocs, i32** %sizes154, double** %entries147) #5, !dbg !980
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !365), !dbg !981
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !360), !dbg !981
  %cmp156637 = icmp sgt i32 %icol, 0, !dbg !981
  call void @llvm.dbg.value(metadata !{i32** %sizes154}, i64 0, metadata !367), !dbg !983
  %44 = load i32** %sizes154, align 8, !dbg !983, !tbaa !455
  br i1 %cmp156637, label %for.body157, label %for.end163, !dbg !981

for.body157:                                      ; preds = %sw.bb146, %for.body157
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %for.body157 ], [ 0, %sw.bb146 ]
  %offset153.0639 = phi i32 [ %add160, %for.body157 ], [ 0, %sw.bb146 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes154}, i64 0, metadata !367), !dbg !983
  %arrayidx159 = getelementptr inbounds i32* %44, i64 %indvars.iv692, !dbg !983
  %45 = load i32* %arrayidx159, align 4, !dbg !983, !tbaa !460
  %add160 = add nsw i32 %45, %offset153.0639, !dbg !983
  call void @llvm.dbg.value(metadata !{i32 %add160}, i64 0, metadata !365), !dbg !983
  %indvars.iv.next693 = add i64 %indvars.iv692, 1, !dbg !981
  %lftr.wideiv694 = trunc i64 %indvars.iv.next693 to i32, !dbg !981
  %exitcond695 = icmp eq i32 %lftr.wideiv694, %icol, !dbg !981
  br i1 %exitcond695, label %for.cond155.for.end163_crit_edge, label %for.body157, !dbg !981

for.cond155.for.end163_crit_edge:                 ; preds = %for.body157
  %phitmp = sext i32 %add160 to i64, !dbg !981
  br label %for.end163, !dbg !981

for.end163:                                       ; preds = %sw.bb146, %for.cond155.for.end163_crit_edge
  %offset153.0.lcssa = phi i64 [ %phitmp, %for.cond155.for.end163_crit_edge ], [ 0, %sw.bb146 ]
  %idxprom164 = sext i32 %icol to i64, !dbg !985
  call void @llvm.dbg.value(metadata !{i32** %sizes154}, i64 0, metadata !367), !dbg !985
  %arrayidx165 = getelementptr inbounds i32* %44, i64 %idxprom164, !dbg !985
  %46 = load i32* %arrayidx165, align 4, !dbg !985, !tbaa !460
  %cmp166 = icmp sgt i32 %46, 0, !dbg !985
  br i1 %cmp166, label %if.then167, label %sw.epilog, !dbg !985

if.then167:                                       ; preds = %for.end163
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !366), !dbg !986
  %47 = load i32** %firstlocs, align 8, !dbg !986, !tbaa !455
  %arrayidx169 = getelementptr inbounds i32* %47, i64 %idxprom164, !dbg !986
  %48 = load i32* %arrayidx169, align 4, !dbg !986, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !358), !dbg !986
  %add172 = add i32 %46, -1, !dbg !988
  %sub = add i32 %add172, %48, !dbg !988
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !362), !dbg !988
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !361), !dbg !989
  %cmp174634 = icmp sgt i32 %48, %sub, !dbg !989
  br i1 %cmp174634, label %sw.epilog, label %for.body175.lr.ph, !dbg !989

for.body175.lr.ph:                                ; preds = %if.then167
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !356), !dbg !991
  %49 = load double** %entries147, align 8, !dbg !991, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !356), !dbg !993
  %50 = sext i32 %48 to i64
  br label %for.body175, !dbg !989

for.body175:                                      ; preds = %for.body175, %for.body175.lr.ph
  %indvars.iv690 = phi i64 [ %indvars.iv.next691, %for.body175 ], [ %offset153.0.lcssa, %for.body175.lr.ph ], !dbg !989
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %for.body175 ], [ %50, %for.body175.lr.ph ]
  %51 = trunc i64 %indvars.iv690 to i32, !dbg !991
  %mul176 = shl nsw i32 %51, 1, !dbg !991
  %idxprom177 = sext i32 %mul176 to i64, !dbg !991
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !356), !dbg !991
  %arrayidx178 = getelementptr inbounds double* %49, i64 %idxprom177, !dbg !991
  %52 = load double* %arrayidx178, align 8, !dbg !991, !tbaa !476
  %53 = trunc i64 %indvars.iv688 to i32, !dbg !991
  %mul179 = shl nsw i32 %53, 1, !dbg !991
  %idxprom180 = sext i32 %mul179 to i64, !dbg !991
  %arrayidx181 = getelementptr inbounds double* %call9, i64 %idxprom180, !dbg !991
  store double %52, double* %arrayidx181, align 8, !dbg !991, !tbaa !476
  %add183595 = or i32 %mul176, 1, !dbg !993
  %idxprom184 = sext i32 %add183595 to i64, !dbg !993
  call void @llvm.dbg.value(metadata !{double** %entries147}, i64 0, metadata !356), !dbg !993
  %arrayidx185 = getelementptr inbounds double* %49, i64 %idxprom184, !dbg !993
  %54 = load double* %arrayidx185, align 8, !dbg !993, !tbaa !476
  %add187596 = or i32 %mul179, 1, !dbg !993
  %idxprom188 = sext i32 %add187596 to i64, !dbg !993
  %arrayidx189 = getelementptr inbounds double* %call9, i64 %idxprom188, !dbg !993
  store double %54, double* %arrayidx189, align 8, !dbg !993, !tbaa !476
  %indvars.iv.next689 = add i64 %indvars.iv688, 1, !dbg !989
  %indvars.iv.next691 = add i64 %indvars.iv690, 1, !dbg !989
  %cmp174 = icmp slt i32 %53, %sub, !dbg !989
  br i1 %cmp174, label %for.body175, label %sw.epilog, !dbg !989

sw.bb195:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries196}, metadata !368), !dbg !994
  call void @llvm.dbg.declare(metadata !{i32* %nent201}, metadata !374), !dbg !995
  call void @llvm.dbg.declare(metadata !{i32* %nrow202}, metadata !375), !dbg !995
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs204}, metadata !377), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32** %sizes205}, metadata !378), !dbg !996
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow202, i32* %nent201, i32** %firstlocs204, i32** %sizes205, double** %entries196) #5, !dbg !997
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !376), !dbg !998
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !371), !dbg !998
  call void @llvm.dbg.value(metadata !{i32* %nrow202}, i64 0, metadata !375), !dbg !998
  %55 = load i32* %nrow202, align 4, !dbg !998, !tbaa !460
  %cmp207642 = icmp sgt i32 %55, 0, !dbg !998
  br i1 %cmp207642, label %for.body208.lr.ph, label %sw.epilog, !dbg !998

for.body208.lr.ph:                                ; preds = %sw.bb195
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !378), !dbg !1000
  %56 = load i32** %sizes205, align 8, !dbg !1000, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %firstlocs204}, i64 0, metadata !377), !dbg !1002
  %57 = load i32** %firstlocs204, align 8, !dbg !1002, !tbaa !455
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !378), !dbg !1004
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !368), !dbg !1005
  %58 = load double** %entries196, align 8, !dbg !1005, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !368), !dbg !1007
  call void @llvm.dbg.value(metadata !{i32* %nrow202}, i64 0, metadata !375), !dbg !998
  br label %for.body208, !dbg !998

for.body208:                                      ; preds = %for.body208.lr.ph, %for.inc243
  %indvars.iv696 = phi i64 [ 0, %for.body208.lr.ph ], [ %indvars.iv.next697, %for.inc243 ]
  %offset203.0644 = phi i32 [ 0, %for.body208.lr.ph ], [ %offset203.1, %for.inc243 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !378), !dbg !1000
  %arrayidx210 = getelementptr inbounds i32* %56, i64 %indvars.iv696, !dbg !1000
  %59 = load i32* %arrayidx210, align 4, !dbg !1000, !tbaa !460
  %cmp211 = icmp sgt i32 %59, 0, !dbg !1000
  br i1 %cmp211, label %if.then212, label %for.inc243, !dbg !1000

if.then212:                                       ; preds = %for.body208
  call void @llvm.dbg.value(metadata !{i32** %firstlocs204}, i64 0, metadata !377), !dbg !1002
  %arrayidx214 = getelementptr inbounds i32* %57, i64 %indvars.iv696, !dbg !1002
  %60 = load i32* %arrayidx214, align 4, !dbg !1002, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !370), !dbg !1002
  %cmp219 = icmp sgt i32 %60, %icol, !dbg !1008
  br i1 %cmp219, label %if.end238, label %land.lhs.true, !dbg !1008

land.lhs.true:                                    ; preds = %if.then212
  %add217 = add nsw i32 %60, %59, !dbg !1009
  %cmp220 = icmp sgt i32 %add217, %icol, !dbg !1008
  br i1 %cmp220, label %if.then221, label %if.end238, !dbg !1008

if.then221:                                       ; preds = %land.lhs.true
  %add222 = add nsw i32 %offset203.0644, %icol, !dbg !1010
  %sub223 = sub i32 %add222, %60, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32 %sub223}, i64 0, metadata !373), !dbg !1010
  %mul224 = shl nsw i32 %sub223, 1, !dbg !1005
  %idxprom225 = sext i32 %mul224 to i64, !dbg !1005
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !368), !dbg !1005
  %arrayidx226 = getelementptr inbounds double* %58, i64 %idxprom225, !dbg !1005
  %61 = load double* %arrayidx226, align 8, !dbg !1005, !tbaa !476
  %62 = trunc i64 %indvars.iv696 to i32, !dbg !1005
  %mul227 = shl nsw i32 %62, 1, !dbg !1005
  %idxprom228 = sext i32 %mul227 to i64, !dbg !1005
  %arrayidx229 = getelementptr inbounds double* %call9, i64 %idxprom228, !dbg !1005
  store double %61, double* %arrayidx229, align 8, !dbg !1005, !tbaa !476
  %add231593 = or i32 %mul224, 1, !dbg !1007
  %idxprom232 = sext i32 %add231593 to i64, !dbg !1007
  call void @llvm.dbg.value(metadata !{double** %entries196}, i64 0, metadata !368), !dbg !1007
  %arrayidx233 = getelementptr inbounds double* %58, i64 %idxprom232, !dbg !1007
  %63 = load double* %arrayidx233, align 8, !dbg !1007, !tbaa !476
  %add235594 = or i32 %mul227, 1, !dbg !1007
  %idxprom236 = sext i32 %add235594 to i64, !dbg !1007
  %arrayidx237 = getelementptr inbounds double* %call9, i64 %idxprom236, !dbg !1007
  store double %63, double* %arrayidx237, align 8, !dbg !1007, !tbaa !476
  br label %if.end238, !dbg !1011

if.end238:                                        ; preds = %if.then212, %if.then221, %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32** %sizes205}, i64 0, metadata !378), !dbg !1004
  %add241 = add nsw i32 %59, %offset203.0644, !dbg !1004
  call void @llvm.dbg.value(metadata !{i32 %add241}, i64 0, metadata !376), !dbg !1004
  br label %for.inc243, !dbg !1012

for.inc243:                                       ; preds = %for.body208, %if.end238
  %offset203.1 = phi i32 [ %add241, %if.end238 ], [ %offset203.0644, %for.body208 ]
  %indvars.iv.next697 = add i64 %indvars.iv696, 1, !dbg !998
  call void @llvm.dbg.value(metadata !{i32* %nrow202}, i64 0, metadata !375), !dbg !998
  %64 = trunc i64 %indvars.iv.next697 to i32, !dbg !998
  %cmp207 = icmp slt i32 %64, %55, !dbg !998
  br i1 %cmp207, label %for.body208, label %sw.epilog, !dbg !998

sw.bb246:                                         ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries247}, metadata !379), !dbg !1013
  call void @llvm.dbg.declare(metadata !{i32* %nent248}, metadata !381), !dbg !1014
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent248, double** %entries247) #5, !dbg !1015
  %mul249 = shl nsw i32 %icol, 1, !dbg !1016
  %idxprom250 = sext i32 %mul249 to i64, !dbg !1016
  call void @llvm.dbg.value(metadata !{double** %entries247}, i64 0, metadata !379), !dbg !1016
  %65 = load double** %entries247, align 8, !dbg !1016, !tbaa !455
  %arrayidx251 = getelementptr inbounds double* %65, i64 %idxprom250, !dbg !1016
  %66 = load double* %arrayidx251, align 8, !dbg !1016, !tbaa !476
  %arrayidx254 = getelementptr inbounds double* %call9, i64 %idxprom250, !dbg !1016
  store double %66, double* %arrayidx254, align 8, !dbg !1016, !tbaa !476
  %add256592 = or i32 %mul249, 1, !dbg !1017
  %idxprom257 = sext i32 %add256592 to i64, !dbg !1017
  call void @llvm.dbg.value(metadata !{double** %entries247}, i64 0, metadata !379), !dbg !1017
  %arrayidx258 = getelementptr inbounds double* %65, i64 %idxprom257, !dbg !1017
  %67 = load double* %arrayidx258, align 8, !dbg !1017, !tbaa !476
  %arrayidx262 = getelementptr inbounds double* %call9, i64 %idxprom257, !dbg !1017
  store double %67, double* %arrayidx262, align 8, !dbg !1017, !tbaa !476
  br label %sw.epilog, !dbg !1018

for.body272.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries264}, metadata !382), !dbg !1019
  call void @llvm.dbg.declare(metadata !{i32* %nrow268}, metadata !389), !dbg !1020
  call void @llvm.dbg.declare(metadata !{i32* %nent269}, metadata !390), !dbg !1020
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !392), !dbg !1021
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow268, i32* %nent269, i32** %pivotsizes, double** %entries264) #5, !dbg !1022
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !387), !dbg !1023
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !385), !dbg !1023
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !386), !dbg !1023
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !392), !dbg !1025
  %68 = load i32** %pivotsizes, align 8, !dbg !1025, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1027
  %69 = load double** %entries264, align 8, !dbg !1027, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1031
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1032
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1035
  %70 = add i32 %icol, -1, !dbg !1036
  br label %for.body272, !dbg !1023

for.body272:                                      ; preds = %if.end329.thread, %for.body272.lr.ph, %if.end329
  %indvars.iv706 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next707, %if.end329 ], [ %indvars.iv.next707721, %if.end329.thread ]
  %kk267.0660 = phi i32 [ 0, %for.body272.lr.ph ], [ %kk267.3, %if.end329 ], [ %add328, %if.end329.thread ]
  %jcol266.0659 = phi i32 [ 0, %for.body272.lr.ph ], [ %add277, %if.end329 ], [ %add277, %if.end329.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !392), !dbg !1025
  %arrayidx274 = getelementptr inbounds i32* %68, i64 %indvars.iv706, !dbg !1025
  %71 = load i32* %arrayidx274, align 4, !dbg !1025, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %71}, i64 0, metadata !388), !dbg !1025
  %add277 = add nsw i32 %71, %jcol266.0659, !dbg !1037
  %cmp278 = icmp sgt i32 %add277, %icol, !dbg !1037
  br i1 %cmp278, label %if.then279, label %if.end329.thread, !dbg !1037

if.then279:                                       ; preds = %for.body272
  %sub281 = sub i32 %icol, %jcol266.0659, !dbg !1038
  %add282 = add nsw i32 %sub281, %kk267.0660, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %add282}, i64 0, metadata !387), !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %jcol266.0659}, i64 0, metadata !384), !dbg !1036
  %cmp284646 = icmp sgt i32 %jcol266.0659, %icol, !dbg !1036
  br i1 %cmp284646, label %for.cond304.loopexit, label %for.body285.lr.ph, !dbg !1036

for.body285.lr.ph:                                ; preds = %if.then279
  %72 = sext i32 %71 to i64
  %73 = sext i32 %jcol266.0659 to i64, !dbg !1036
  %74 = add i32 %70, %kk267.0660, !dbg !1036
  %75 = add i32 %74, %71, !dbg !1036
  %76 = add i32 %71, -2, !dbg !1036
  %77 = mul i32 %sub281, %76, !dbg !1036
  %78 = add i32 %75, %77, !dbg !1036
  %79 = zext i32 %sub281 to i33, !dbg !1036
  %80 = sub i32 %70, %jcol266.0659, !dbg !1036
  %81 = zext i32 %80 to i33, !dbg !1036
  %82 = mul i33 %79, %81, !dbg !1036
  %83 = lshr i33 %82, 1, !dbg !1036
  %84 = trunc i33 %83 to i32, !dbg !1036
  br label %for.body285, !dbg !1036

for.body285:                                      ; preds = %for.body285, %for.body285.lr.ph
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %for.body285 ], [ %73, %for.body285.lr.ph ], !dbg !1036
  %indvars.iv698 = phi i64 [ %indvars.iv.next699, %for.body285 ], [ %72, %for.body285.lr.ph ]
  %kk267.1648 = phi i32 [ %add300, %for.body285 ], [ %add282, %for.body285.lr.ph ]
  %indvars.iv.next699 = add i64 %indvars.iv698, -1, !dbg !1036
  %mul286 = shl nsw i32 %kk267.1648, 1, !dbg !1032
  %idxprom287 = sext i32 %mul286 to i64, !dbg !1032
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1032
  %arrayidx288 = getelementptr inbounds double* %69, i64 %idxprom287, !dbg !1032
  %85 = load double* %arrayidx288, align 8, !dbg !1032, !tbaa !476
  %86 = trunc i64 %indvars.iv700 to i32, !dbg !1032
  %mul289 = shl nsw i32 %86, 1, !dbg !1032
  %idxprom290 = sext i32 %mul289 to i64, !dbg !1032
  %arrayidx291 = getelementptr inbounds double* %call9, i64 %idxprom290, !dbg !1032
  store double %85, double* %arrayidx291, align 8, !dbg !1032, !tbaa !476
  %add293590 = or i32 %mul286, 1, !dbg !1035
  %idxprom294 = sext i32 %add293590 to i64, !dbg !1035
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1035
  %arrayidx295 = getelementptr inbounds double* %69, i64 %idxprom294, !dbg !1035
  %87 = load double* %arrayidx295, align 8, !dbg !1035, !tbaa !476
  %add297591 = or i32 %mul289, 1, !dbg !1035
  %idxprom298 = sext i32 %add297591 to i64, !dbg !1035
  %arrayidx299 = getelementptr inbounds double* %call9, i64 %idxprom298, !dbg !1035
  store double %87, double* %arrayidx299, align 8, !dbg !1035, !tbaa !476
  %88 = trunc i64 %indvars.iv.next699 to i32, !dbg !1039
  %add300 = add nsw i32 %88, %kk267.1648, !dbg !1039
  call void @llvm.dbg.value(metadata !{i32 %91}, i64 0, metadata !387), !dbg !1039
  %indvars.iv.next701 = add i64 %indvars.iv700, 1, !dbg !1036
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !384), !dbg !1036
  %cmp284 = icmp slt i32 %86, %icol, !dbg !1036
  br i1 %cmp284, label %for.body285, label %for.cond283.for.cond304.loopexit_crit_edge, !dbg !1036

for.cond283.for.cond304.loopexit_crit_edge:       ; preds = %for.body285
  %89 = add i32 %icol, 1, !dbg !1036
  %90 = sub i32 %78, %jcol266.0659, !dbg !1036
  %91 = sub i32 %90, %84, !dbg !1036
  br label %for.cond304.loopexit, !dbg !1036

for.cond304.loopexit:                             ; preds = %for.cond283.for.cond304.loopexit_crit_edge, %if.then279
  %kk267.1.lcssa = phi i32 [ %91, %for.cond283.for.cond304.loopexit_crit_edge ], [ %add282, %if.then279 ]
  %ii265.0.lcssa = phi i32 [ %89, %for.cond283.for.cond304.loopexit_crit_edge ], [ %jcol266.0659, %if.then279 ]
  %cmp306652 = icmp slt i32 %ii265.0.lcssa, %add277, !dbg !1040
  br i1 %cmp306652, label %for.body307.lr.ph, label %if.end329, !dbg !1040

for.body307.lr.ph:                                ; preds = %for.cond304.loopexit
  %92 = sext i32 %kk267.1.lcssa to i64
  %93 = sext i32 %ii265.0.lcssa to i64, !dbg !1040
  %94 = add i32 %jcol266.0659, %kk267.1.lcssa, !dbg !1040
  %95 = add i32 %94, %71, !dbg !1040
  br label %for.body307, !dbg !1040

for.body307:                                      ; preds = %for.body307.lr.ph, %for.body307
  %indvars.iv704 = phi i64 [ %93, %for.body307.lr.ph ], [ %indvars.iv.next705, %for.body307 ], !dbg !1040
  %indvars.iv702 = phi i64 [ %92, %for.body307.lr.ph ], [ %indvars.iv.next703, %for.body307 ]
  %96 = trunc i64 %indvars.iv702 to i32, !dbg !1027
  %mul308 = shl nsw i32 %96, 1, !dbg !1027
  %idxprom309 = sext i32 %mul308 to i64, !dbg !1027
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1027
  %arrayidx310 = getelementptr inbounds double* %69, i64 %idxprom309, !dbg !1027
  %97 = load double* %arrayidx310, align 8, !dbg !1027, !tbaa !476
  %98 = trunc i64 %indvars.iv704 to i32, !dbg !1027
  %mul311 = shl nsw i32 %98, 1, !dbg !1027
  %idxprom312 = sext i32 %mul311 to i64, !dbg !1027
  %arrayidx313 = getelementptr inbounds double* %call9, i64 %idxprom312, !dbg !1027
  store double %97, double* %arrayidx313, align 8, !dbg !1027, !tbaa !476
  %add315588 = or i32 %mul308, 1, !dbg !1031
  %idxprom316 = sext i32 %add315588 to i64, !dbg !1031
  call void @llvm.dbg.value(metadata !{double** %entries264}, i64 0, metadata !382), !dbg !1031
  %arrayidx317 = getelementptr inbounds double* %69, i64 %idxprom316, !dbg !1031
  %99 = load double* %arrayidx317, align 8, !dbg !1031, !tbaa !476
  %add319589 = or i32 %mul311, 1, !dbg !1031
  %idxprom320 = sext i32 %add319589 to i64, !dbg !1031
  %arrayidx321 = getelementptr inbounds double* %call9, i64 %idxprom320, !dbg !1031
  store double %99, double* %arrayidx321, align 8, !dbg !1031, !tbaa !476
  %indvars.iv.next703 = add i64 %indvars.iv702, 1, !dbg !1040
  call void @llvm.dbg.value(metadata !{i32 %101}, i64 0, metadata !387), !dbg !1041
  %indvars.iv.next705 = add i64 %indvars.iv704, 1, !dbg !1040
  %100 = trunc i64 %indvars.iv.next705 to i32, !dbg !1040
  %cmp306 = icmp slt i32 %100, %add277, !dbg !1040
  br i1 %cmp306, label %for.body307, label %for.cond304.if.end329.loopexit_crit_edge, !dbg !1040

if.end329.thread:                                 ; preds = %for.body272
  %add326 = add nsw i32 %71, 1, !dbg !1042
  %mul327 = mul nsw i32 %add326, %71, !dbg !1042
  %div = sdiv i32 %mul327, 2, !dbg !1042
  %add328 = add nsw i32 %div, %kk267.0660, !dbg !1042
  call void @llvm.dbg.value(metadata !{i32 %add328}, i64 0, metadata !387), !dbg !1042
  call void @llvm.dbg.value(metadata !{i32 %add277}, i64 0, metadata !386), !dbg !1044
  %indvars.iv.next707721 = add i64 %indvars.iv706, 1, !dbg !1023
  br label %for.body272, !dbg !1023

for.cond304.if.end329.loopexit_crit_edge:         ; preds = %for.body307
  %101 = sub i32 %95, %ii265.0.lcssa, !dbg !1040
  br label %if.end329, !dbg !1040

if.end329:                                        ; preds = %for.cond304.loopexit, %for.cond304.if.end329.loopexit_crit_edge
  %kk267.3 = phi i32 [ %101, %for.cond304.if.end329.loopexit_crit_edge ], [ %kk267.1.lcssa, %for.cond304.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add277}, i64 0, metadata !386), !dbg !1044
  %indvars.iv.next707 = add i64 %indvars.iv706, 1, !dbg !1023
  br i1 %cmp278, label %sw.epilog, label %for.body272, !dbg !1023

for.body347.lr.ph:                                ; preds = %if.end8
  call void @llvm.dbg.declare(metadata !{double** %entries335}, metadata !393), !dbg !1045
  call void @llvm.dbg.declare(metadata !{i32* %nrow341}, metadata !400), !dbg !1046
  call void @llvm.dbg.declare(metadata !{i32* %nent342}, metadata !401), !dbg !1046
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes344}, metadata !403), !dbg !1047
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow341, i32* %nent342, i32** %pivotsizes344, double** %entries335) #5, !dbg !1048
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !398), !dbg !1049
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !396), !dbg !1049
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !397), !dbg !1049
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes344}, i64 0, metadata !403), !dbg !1051
  %102 = load i32** %pivotsizes344, align 8, !dbg !1051, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1053
  %103 = load double** %entries335, align 8, !dbg !1053, !tbaa !455
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1057
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1058
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1061
  %104 = add i32 %icol, -1, !dbg !1062
  br label %for.body347, !dbg !1049

for.body347:                                      ; preds = %if.end408.thread, %for.body347.lr.ph, %if.end408
  %indvars.iv717 = phi i64 [ 0, %for.body347.lr.ph ], [ %indvars.iv.next718, %if.end408 ], [ %indvars.iv.next718722, %if.end408.thread ]
  %kk339.0676 = phi i32 [ 0, %for.body347.lr.ph ], [ %kk339.3, %if.end408 ], [ %add407, %if.end408.thread ]
  %jcol338.0675 = phi i32 [ 0, %for.body347.lr.ph ], [ %add352, %if.end408 ], [ %add352, %if.end408.thread ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes344}, i64 0, metadata !403), !dbg !1051
  %arrayidx349 = getelementptr inbounds i32* %102, i64 %indvars.iv717, !dbg !1051
  %105 = load i32* %arrayidx349, align 4, !dbg !1051, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32 %105}, i64 0, metadata !399), !dbg !1051
  %add352 = add nsw i32 %105, %jcol338.0675, !dbg !1063
  %cmp353 = icmp sgt i32 %add352, %icol, !dbg !1063
  br i1 %cmp353, label %if.then354, label %if.end408.thread, !dbg !1063

if.then354:                                       ; preds = %for.body347
  %sub356 = sub i32 %icol, %jcol338.0675, !dbg !1064
  %add357 = add nsw i32 %sub356, %kk339.0676, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %add357}, i64 0, metadata !398), !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %jcol338.0675}, i64 0, metadata !395), !dbg !1062
  %cmp359662 = icmp sgt i32 %jcol338.0675, %icol, !dbg !1062
  br i1 %cmp359662, label %for.cond380.loopexit, label %for.body360.lr.ph, !dbg !1062

for.body360.lr.ph:                                ; preds = %if.then354
  %106 = sext i32 %105 to i64
  %107 = sext i32 %jcol338.0675 to i64, !dbg !1062
  %108 = add i32 %104, %kk339.0676, !dbg !1062
  %109 = add i32 %108, %105, !dbg !1062
  %110 = add i32 %105, -2, !dbg !1062
  %111 = mul i32 %sub356, %110, !dbg !1062
  %112 = add i32 %109, %111, !dbg !1062
  %113 = zext i32 %sub356 to i33, !dbg !1062
  %114 = sub i32 %104, %jcol338.0675, !dbg !1062
  %115 = zext i32 %114 to i33, !dbg !1062
  %116 = mul i33 %113, %115, !dbg !1062
  %117 = lshr i33 %116, 1, !dbg !1062
  %118 = trunc i33 %117 to i32, !dbg !1062
  br label %for.body360, !dbg !1062

for.body360:                                      ; preds = %for.body360, %for.body360.lr.ph
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %for.body360 ], [ %107, %for.body360.lr.ph ], !dbg !1062
  %indvars.iv708 = phi i64 [ %indvars.iv.next709, %for.body360 ], [ %106, %for.body360.lr.ph ]
  %kk339.1664 = phi i32 [ %add376, %for.body360 ], [ %add357, %for.body360.lr.ph ]
  %indvars.iv.next709 = add i64 %indvars.iv708, -1, !dbg !1062
  %mul361 = shl nsw i32 %kk339.1664, 1, !dbg !1058
  %idxprom362 = sext i32 %mul361 to i64, !dbg !1058
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1058
  %arrayidx363 = getelementptr inbounds double* %103, i64 %idxprom362, !dbg !1058
  %119 = load double* %arrayidx363, align 8, !dbg !1058, !tbaa !476
  %120 = trunc i64 %indvars.iv710 to i32, !dbg !1058
  %mul364 = shl nsw i32 %120, 1, !dbg !1058
  %idxprom365 = sext i32 %mul364 to i64, !dbg !1058
  %arrayidx366 = getelementptr inbounds double* %call9, i64 %idxprom365, !dbg !1058
  store double %119, double* %arrayidx366, align 8, !dbg !1058, !tbaa !476
  %add368586 = or i32 %mul361, 1, !dbg !1061
  %idxprom369 = sext i32 %add368586 to i64, !dbg !1061
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1061
  %arrayidx370 = getelementptr inbounds double* %103, i64 %idxprom369, !dbg !1061
  %121 = load double* %arrayidx370, align 8, !dbg !1061, !tbaa !476
  %add372587 = or i32 %mul364, 1, !dbg !1061
  %idxprom373 = sext i32 %add372587 to i64, !dbg !1061
  %arrayidx374 = getelementptr inbounds double* %call9, i64 %idxprom373, !dbg !1061
  store double %121, double* %arrayidx374, align 8, !dbg !1061, !tbaa !476
  %122 = trunc i64 %indvars.iv.next709 to i32, !dbg !1065
  %add376 = add nsw i32 %122, %kk339.1664, !dbg !1065
  call void @llvm.dbg.value(metadata !{i32 %125}, i64 0, metadata !398), !dbg !1065
  %indvars.iv.next711 = add i64 %indvars.iv710, 1, !dbg !1062
  call void @llvm.dbg.value(metadata !{i32 %123}, i64 0, metadata !395), !dbg !1062
  %cmp359 = icmp slt i32 %120, %icol, !dbg !1062
  br i1 %cmp359, label %for.body360, label %for.cond358.for.cond380.loopexit_crit_edge, !dbg !1062

for.cond358.for.cond380.loopexit_crit_edge:       ; preds = %for.body360
  %123 = add i32 %icol, 1, !dbg !1062
  %124 = sub i32 %112, %jcol338.0675, !dbg !1062
  %125 = sub i32 %124, %118, !dbg !1062
  br label %for.cond380.loopexit, !dbg !1062

for.cond380.loopexit:                             ; preds = %for.cond358.for.cond380.loopexit_crit_edge, %if.then354
  %kk339.1.lcssa = phi i32 [ %125, %for.cond358.for.cond380.loopexit_crit_edge ], [ %add357, %if.then354 ]
  %ii336.0.lcssa = phi i32 [ %123, %for.cond358.for.cond380.loopexit_crit_edge ], [ %jcol338.0675, %if.then354 ]
  %cmp382668 = icmp slt i32 %ii336.0.lcssa, %add352, !dbg !1066
  br i1 %cmp382668, label %for.body383.lr.ph, label %if.end408, !dbg !1066

for.body383.lr.ph:                                ; preds = %for.cond380.loopexit
  %126 = sext i32 %kk339.1.lcssa to i64
  %127 = sext i32 %ii336.0.lcssa to i64, !dbg !1066
  %128 = add i32 %jcol338.0675, %kk339.1.lcssa, !dbg !1066
  %129 = add i32 %128, %105, !dbg !1066
  br label %for.body383, !dbg !1066

for.body383:                                      ; preds = %for.body383.lr.ph, %for.body383
  %indvars.iv715 = phi i64 [ %127, %for.body383.lr.ph ], [ %indvars.iv.next716, %for.body383 ], !dbg !1066
  %indvars.iv713 = phi i64 [ %126, %for.body383.lr.ph ], [ %indvars.iv.next714, %for.body383 ]
  %130 = trunc i64 %indvars.iv713 to i32, !dbg !1053
  %mul384 = shl nsw i32 %130, 1, !dbg !1053
  %idxprom385 = sext i32 %mul384 to i64, !dbg !1053
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1053
  %arrayidx386 = getelementptr inbounds double* %103, i64 %idxprom385, !dbg !1053
  %131 = load double* %arrayidx386, align 8, !dbg !1053, !tbaa !476
  %132 = trunc i64 %indvars.iv715 to i32, !dbg !1053
  %mul387 = shl nsw i32 %132, 1, !dbg !1053
  %idxprom388 = sext i32 %mul387 to i64, !dbg !1053
  %arrayidx389 = getelementptr inbounds double* %call9, i64 %idxprom388, !dbg !1053
  store double %131, double* %arrayidx389, align 8, !dbg !1053, !tbaa !476
  %add391584 = or i32 %mul384, 1, !dbg !1057
  %idxprom392 = sext i32 %add391584 to i64, !dbg !1057
  call void @llvm.dbg.value(metadata !{double** %entries335}, i64 0, metadata !393), !dbg !1057
  %arrayidx393 = getelementptr inbounds double* %103, i64 %idxprom392, !dbg !1057
  %133 = load double* %arrayidx393, align 8, !dbg !1057, !tbaa !476
  %sub394 = fsub double -0.000000e+00, %133, !dbg !1057
  %add396585 = or i32 %mul387, 1, !dbg !1057
  %idxprom397 = sext i32 %add396585 to i64, !dbg !1057
  %arrayidx398 = getelementptr inbounds double* %call9, i64 %idxprom397, !dbg !1057
  store double %sub394, double* %arrayidx398, align 8, !dbg !1057, !tbaa !476
  %indvars.iv.next714 = add i64 %indvars.iv713, 1, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %135}, i64 0, metadata !398), !dbg !1067
  %indvars.iv.next716 = add i64 %indvars.iv715, 1, !dbg !1066
  %134 = trunc i64 %indvars.iv.next716 to i32, !dbg !1066
  %cmp382 = icmp slt i32 %134, %add352, !dbg !1066
  br i1 %cmp382, label %for.body383, label %for.cond380.if.end408.loopexit_crit_edge, !dbg !1066

if.end408.thread:                                 ; preds = %for.body347
  %add404 = add nsw i32 %105, 1, !dbg !1068
  %mul405 = mul nsw i32 %add404, %105, !dbg !1068
  %div406 = sdiv i32 %mul405, 2, !dbg !1068
  %add407 = add nsw i32 %div406, %kk339.0676, !dbg !1068
  call void @llvm.dbg.value(metadata !{i32 %add407}, i64 0, metadata !398), !dbg !1068
  call void @llvm.dbg.value(metadata !{i32 %add352}, i64 0, metadata !397), !dbg !1070
  %indvars.iv.next718722 = add i64 %indvars.iv717, 1, !dbg !1049
  br label %for.body347, !dbg !1049

for.cond380.if.end408.loopexit_crit_edge:         ; preds = %for.body383
  %135 = sub i32 %129, %ii336.0.lcssa, !dbg !1066
  br label %if.end408, !dbg !1066

if.end408:                                        ; preds = %for.cond380.loopexit, %for.cond380.if.end408.loopexit_crit_edge
  %kk339.3 = phi i32 [ %135, %for.cond380.if.end408.loopexit_crit_edge ], [ %kk339.1.lcssa, %for.cond380.loopexit ]
  call void @llvm.dbg.value(metadata !{i32 %add352}, i64 0, metadata !397), !dbg !1070
  %indvars.iv.next718 = add i64 %indvars.iv717, 1, !dbg !1049
  br i1 %cmp353, label %sw.epilog, label %for.body347, !dbg !1049

sw.epilog:                                        ; preds = %if.end408, %if.end329, %sw.bb195, %for.inc243, %if.then167, %for.body175, %sw.bb113, %for.inc143, %sw.bb66, %for.end106, %for.cond39.preheader, %for.body43, %sw.bb, %for.body, %if.end8, %for.end163, %sw.bb246
  ret void, !dbg !1071
}

; Function Attrs: nounwind optsize uwtable
define double @SubMtx_maxabs(%struct._SubMtx* %mtx) #0 {
entry:
  %entries = alloca double*, align 8
  %loc = alloca i32, align 4
  %nent = alloca i32, align 4
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %ncol9 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %nrow11 = alloca i32, align 4
  %indices12 = alloca i32*, align 8
  %sizes13 = alloca i32*, align 8
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %ncol16 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes17 = alloca i32*, align 8
  %nrow19 = alloca i32, align 4
  %firstlocs20 = alloca i32*, align 8
  %sizes21 = alloca i32*, align 8
  %nrow24 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %nrow26 = alloca i32, align 4
  %pivotsizes27 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !408), !dbg !1072
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !410), !dbg !1073
  call void @llvm.dbg.declare(metadata !{i32* %loc}, metadata !411), !dbg !1074
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !412), !dbg !1074
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !1075
  br i1 %cmp, label %if.then, label %if.end, !dbg !1075

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1076, !tbaa !455
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !1076
  call void @exit(i32 -1) #6, !dbg !1078
  unreachable, !dbg !1078

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !1079
  %1 = load i32* %type, align 4, !dbg !1079, !tbaa !460
  %.off = add i32 %1, -1, !dbg !1079
  %switch = icmp ult i32 %.off, 2, !dbg !1079
  br i1 %switch, label %if.end7, label %if.then4, !dbg !1079

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1080, !tbaa !455
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %1) #5, !dbg !1080
  call void @exit(i32 -1) #6, !dbg !1082
  unreachable, !dbg !1082

if.end7:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !1083
  %3 = load i32* %mode, align 4, !dbg !1083, !tbaa !460
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
    i32 2, label %sw.bb10
    i32 4, label %sw.bb14
    i32 6, label %sw.bb15
    i32 5, label %sw.bb18
    i32 7, label %sw.bb22
    i32 8, label %sw.bb23
    i32 9, label %sw.bb25
  ], !dbg !1083

sw.bb:                                            ; preds = %if.end7, %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !413), !dbg !1084
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !416), !dbg !1084
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !417), !dbg !1084
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !418), !dbg !1084
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !1085
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !418), !dbg !1086
  %4 = load i32* %nrow, align 4, !dbg !1086, !tbaa !460
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !417), !dbg !1086
  %5 = load i32* %ncol, align 4, !dbg !1086, !tbaa !460
  %mul = mul nsw i32 %5, %4, !dbg !1086
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !412), !dbg !1086
  store i32 %mul, i32* %nent, align 4, !dbg !1086, !tbaa !460
  br label %sw.epilog, !dbg !1087

sw.bb8:                                           ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %ncol9}, metadata !419), !dbg !1088
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !421), !dbg !1089
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !422), !dbg !1089
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol9, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5, !dbg !1090
  br label %sw.epilog, !dbg !1091

sw.bb10:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %nrow11}, metadata !423), !dbg !1092
  call void @llvm.dbg.declare(metadata !{i32** %indices12}, metadata !425), !dbg !1093
  call void @llvm.dbg.declare(metadata !{i32** %sizes13}, metadata !426), !dbg !1093
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow11, i32* %nent, i32** %sizes13, i32** %indices12, double** %entries) #5, !dbg !1094
  br label %sw.epilog, !dbg !1095

sw.bb14:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !427), !dbg !1096
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !429), !dbg !1096
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #5, !dbg !1097
  br label %sw.epilog, !dbg !1098

sw.bb15:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %ncol16}, metadata !430), !dbg !1099
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !432), !dbg !1100
  call void @llvm.dbg.declare(metadata !{i32** %sizes17}, metadata !433), !dbg !1100
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol16, i32* %nent, i32** %firstlocs, i32** %sizes17, double** %entries) #5, !dbg !1101
  br label %sw.epilog, !dbg !1102

sw.bb18:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %nrow19}, metadata !434), !dbg !1103
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs20}, metadata !436), !dbg !1104
  call void @llvm.dbg.declare(metadata !{i32** %sizes21}, metadata !437), !dbg !1104
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow19, i32* %nent, i32** %firstlocs20, i32** %sizes21, double** %entries) #5, !dbg !1105
  br label %sw.epilog, !dbg !1106

sw.bb22:                                          ; preds = %if.end7
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #5, !dbg !1107
  br label %sw.epilog, !dbg !1109

sw.bb23:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %nrow24}, metadata !438), !dbg !1110
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !440), !dbg !1111
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow24, i32* %nent, i32** %pivotsizes, double** %entries) #5, !dbg !1112
  br label %sw.epilog, !dbg !1113

sw.bb25:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{i32* %nrow26}, metadata !441), !dbg !1114
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes27}, metadata !443), !dbg !1115
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow26, i32* %nent, i32** %pivotsizes27, double** %entries) #5, !dbg !1116
  br label %sw.epilog, !dbg !1117

sw.epilog:                                        ; preds = %if.end7, %sw.bb25, %sw.bb23, %sw.bb22, %sw.bb18, %sw.bb15, %sw.bb14, %sw.bb10, %sw.bb8, %sw.bb
  %6 = load i32* %type, align 4, !dbg !1118, !tbaa !460
  switch i32 %6, label %if.end37 [
    i32 1, label %if.then30
    i32 2, label %if.then34
  ], !dbg !1118

if.then30:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !412), !dbg !1119
  %7 = load i32* %nent, align 4, !dbg !1119, !tbaa !460
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !410), !dbg !1119
  %8 = load double** %entries, align 8, !dbg !1119, !tbaa !455
  %call31 = call double @DVmaxabs(i32 %7, double* %8, i32* %loc) #5, !dbg !1119
  call void @llvm.dbg.value(metadata !{double %call31}, i64 0, metadata !409), !dbg !1119
  br label %if.end37, !dbg !1121

if.then34:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !412), !dbg !1122
  %9 = load i32* %nent, align 4, !dbg !1122, !tbaa !460
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !410), !dbg !1122
  %10 = load double** %entries, align 8, !dbg !1122, !tbaa !455
  %call35 = call double @ZVmaxabs(i32 %9, double* %10) #5, !dbg !1122
  call void @llvm.dbg.value(metadata !{double %call35}, i64 0, metadata !409), !dbg !1122
  br label %if.end37, !dbg !1124

if.end37:                                         ; preds = %sw.epilog, %if.then34, %if.then30
  %maxabs.0 = phi double [ %call31, %if.then30 ], [ %call35, %if.then34 ], [ undef, %sw.epilog ]
  ret double %maxabs.0, !dbg !1125
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #4

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_zero(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !448), !dbg !1126
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !1127
  br i1 %cmp, label %if.then, label %if.end, !dbg !1127

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1128, !tbaa !455
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !1128
  tail call void @exit(i32 -1) #6, !dbg !1130
  unreachable, !dbg !1130

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !1131
  %1 = load i32* %type, align 4, !dbg !1131, !tbaa !460
  switch i32 %1, label %if.end9 [
    i32 1, label %if.then2
    i32 2, label %if.then5
  ], !dbg !1131

if.then2:                                         ; preds = %if.end
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !1132
  %2 = load i32* %nent, align 4, !dbg !1132, !tbaa !460
  %entries = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7, !dbg !1132
  %3 = load double** %entries, align 8, !dbg !1132, !tbaa !455
  tail call void @DVzero(i32 %2, double* %3) #5, !dbg !1132
  br label %if.end9, !dbg !1134

if.then5:                                         ; preds = %if.end
  %nent6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !1135
  %4 = load i32* %nent6, align 4, !dbg !1135, !tbaa !460
  %mul = shl nsw i32 %4, 1, !dbg !1135
  %entries7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7, !dbg !1135
  %5 = load double** %entries7, align 8, !dbg !1135, !tbaa !455
  tail call void @DVzero(i32 %mul, double* %5) #5, !dbg !1135
  br label %if.end9, !dbg !1137

if.end9:                                          ; preds = %if.end, %if.then5, %if.then2
  ret void, !dbg !1138
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !126, metadata !226, metadata !315, metadata !404, metadata !444}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_fillRowDV", metadata !"SubMtx_fillRowDV", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, %struct._DV*)* @SubMtx_fillRowDV, null, null, metadata !37, i32 21} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 21] [SubMtx_fillRowDV]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !36}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !61, metadata !62, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !103, metadata !104, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!38 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 18]
!39 = metadata !{i32 786689, metadata !4, metadata !"irow", metadata !5, i32 33554451, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 19]
!40 = metadata !{i32 786689, metadata !4, metadata !"rowDV", metadata !5, i32 50331668, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowDV] [line 20]
!41 = metadata !{i32 786688, metadata !4, metadata !"rowvec", metadata !5, i32 22, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowvec] [line 22]
!42 = metadata !{i32 786688, metadata !43, metadata !"entries", metadata !5, i32 50, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 50]
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!44 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!45 = metadata !{i32 786688, metadata !43, metadata !"inc1", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 51]
!46 = metadata !{i32 786688, metadata !43, metadata !"inc2", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 51]
!47 = metadata !{i32 786688, metadata !43, metadata !"jcol", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 51]
!48 = metadata !{i32 786688, metadata !43, metadata !"loc", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 51]
!49 = metadata !{i32 786688, metadata !43, metadata !"ncol", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 51]
!50 = metadata !{i32 786688, metadata !43, metadata !"nrow", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 51]
!51 = metadata !{i32 786688, metadata !52, metadata !"entries", metadata !5, i32 60, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 60]
!52 = metadata !{i32 786443, metadata !1, metadata !44, i32 59, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!53 = metadata !{i32 786688, metadata !52, metadata !"ii", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 61]
!54 = metadata !{i32 786688, metadata !52, metadata !"jrow", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 61]
!55 = metadata !{i32 786688, metadata !52, metadata !"kk", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 61]
!56 = metadata !{i32 786688, metadata !52, metadata !"nent", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 61]
!57 = metadata !{i32 786688, metadata !52, metadata !"nrow", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 61]
!58 = metadata !{i32 786688, metadata !52, metadata !"offset", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 61]
!59 = metadata !{i32 786688, metadata !52, metadata !"indices", metadata !5, i32 62, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 62]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!61 = metadata !{i32 786688, metadata !52, metadata !"sizes", metadata !5, i32 62, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 62]
!62 = metadata !{i32 786688, metadata !63, metadata !"entries", metadata !5, i32 74, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 74]
!63 = metadata !{i32 786443, metadata !1, metadata !44, i32 73, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!64 = metadata !{i32 786688, metadata !63, metadata !"ii", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 75]
!65 = metadata !{i32 786688, metadata !63, metadata !"jcol", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 75]
!66 = metadata !{i32 786688, metadata !63, metadata !"kk", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 75]
!67 = metadata !{i32 786688, metadata !63, metadata !"nent", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 75]
!68 = metadata !{i32 786688, metadata !63, metadata !"ncol", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 75]
!69 = metadata !{i32 786688, metadata !63, metadata !"offset", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 75]
!70 = metadata !{i32 786688, metadata !63, metadata !"indices", metadata !5, i32 76, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 76]
!71 = metadata !{i32 786688, metadata !63, metadata !"sizes", metadata !5, i32 76, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 76]
!72 = metadata !{i32 786688, metadata !73, metadata !"entries", metadata !5, i32 91, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 91]
!73 = metadata !{i32 786443, metadata !1, metadata !44, i32 90, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!74 = metadata !{i32 786688, metadata !73, metadata !"ii", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 92]
!75 = metadata !{i32 786688, metadata !73, metadata !"nent", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 92]
!76 = metadata !{i32 786688, metadata !73, metadata !"colids", metadata !5, i32 93, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 93]
!77 = metadata !{i32 786688, metadata !73, metadata !"rowids", metadata !5, i32 93, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 93]
!78 = metadata !{i32 786688, metadata !79, metadata !"entries", metadata !5, i32 103, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 103]
!79 = metadata !{i32 786443, metadata !1, metadata !44, i32 102, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!80 = metadata !{i32 786688, metadata !79, metadata !"first", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 104]
!81 = metadata !{i32 786688, metadata !79, metadata !"ii", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 104]
!82 = metadata !{i32 786688, metadata !79, metadata !"jrow", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 104]
!83 = metadata !{i32 786688, metadata !79, metadata !"kk", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 104]
!84 = metadata !{i32 786688, metadata !79, metadata !"last", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 104]
!85 = metadata !{i32 786688, metadata !79, metadata !"nent", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 104]
!86 = metadata !{i32 786688, metadata !79, metadata !"nrow", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 104]
!87 = metadata !{i32 786688, metadata !79, metadata !"offset", metadata !5, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 104]
!88 = metadata !{i32 786688, metadata !79, metadata !"firstlocs", metadata !5, i32 105, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 105]
!89 = metadata !{i32 786688, metadata !79, metadata !"sizes", metadata !5, i32 105, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 105]
!90 = metadata !{i32 786688, metadata !91, metadata !"entries", metadata !5, i32 134, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 134]
!91 = metadata !{i32 786443, metadata !1, metadata !44, i32 133, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!92 = metadata !{i32 786688, metadata !91, metadata !"first", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 135]
!93 = metadata !{i32 786688, metadata !91, metadata !"jcol", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 135]
!94 = metadata !{i32 786688, metadata !91, metadata !"last", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 135]
!95 = metadata !{i32 786688, metadata !91, metadata !"loc", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 135]
!96 = metadata !{i32 786688, metadata !91, metadata !"nent", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 135]
!97 = metadata !{i32 786688, metadata !91, metadata !"ncol", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 135]
!98 = metadata !{i32 786688, metadata !91, metadata !"offset", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 135]
!99 = metadata !{i32 786688, metadata !91, metadata !"firstlocs", metadata !5, i32 136, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 136]
!100 = metadata !{i32 786688, metadata !91, metadata !"sizes", metadata !5, i32 136, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 136]
!101 = metadata !{i32 786688, metadata !102, metadata !"entries", metadata !5, i32 153, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 153]
!102 = metadata !{i32 786443, metadata !1, metadata !44, i32 152, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!103 = metadata !{i32 786688, metadata !102, metadata !"nent", metadata !5, i32 154, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 154]
!104 = metadata !{i32 786688, metadata !105, metadata !"entries", metadata !5, i32 160, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 160]
!105 = metadata !{i32 786443, metadata !1, metadata !44, i32 159, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!106 = metadata !{i32 786688, metadata !105, metadata !"ii", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 161]
!107 = metadata !{i32 786688, metadata !105, metadata !"ipivot", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 161]
!108 = metadata !{i32 786688, metadata !105, metadata !"jrow", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 161]
!109 = metadata !{i32 786688, metadata !105, metadata !"kk", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 161]
!110 = metadata !{i32 786688, metadata !105, metadata !"m", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 161]
!111 = metadata !{i32 786688, metadata !105, metadata !"nrow", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 161]
!112 = metadata !{i32 786688, metadata !105, metadata !"nent", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 161]
!113 = metadata !{i32 786688, metadata !105, metadata !"stride", metadata !5, i32 161, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 161]
!114 = metadata !{i32 786688, metadata !105, metadata !"pivotsizes", metadata !5, i32 162, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 162]
!115 = metadata !{i32 786688, metadata !116, metadata !"entries", metadata !5, i32 201, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 201]
!116 = metadata !{i32 786443, metadata !1, metadata !44, i32 200, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!117 = metadata !{i32 786688, metadata !116, metadata !"ii", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 202]
!118 = metadata !{i32 786688, metadata !116, metadata !"ipivot", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 202]
!119 = metadata !{i32 786688, metadata !116, metadata !"jrow", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 202]
!120 = metadata !{i32 786688, metadata !116, metadata !"kk", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 202]
!121 = metadata !{i32 786688, metadata !116, metadata !"m", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 202]
!122 = metadata !{i32 786688, metadata !116, metadata !"nrow", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 202]
!123 = metadata !{i32 786688, metadata !116, metadata !"nent", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 202]
!124 = metadata !{i32 786688, metadata !116, metadata !"stride", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 202]
!125 = metadata !{i32 786688, metadata !116, metadata !"pivotsizes", metadata !5, i32 203, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 203]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_fillRowZV", metadata !"SubMtx_fillRowZV", metadata !"", i32 256, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, %struct._ZV*)* @SubMtx_fillRowZV, null, null, metadata !138, i32 260} ; [ DW_TAG_subprogram ] [line 256] [def] [scope 260] [SubMtx_fillRowZV]
!127 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{null, metadata !8, metadata !14, metadata !129}
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ZV]
!130 = metadata !{i32 786454, metadata !1, null, metadata !"ZV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [ZV] [line 20, size 0, align 0, offset 0] [from _ZV]
!131 = metadata !{i32 786451, metadata !132, null, metadata !"_ZV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !133, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ZV] [line 21, size 192, align 64, offset 0] [from ]
!132 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../ZV/ZV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137}
!134 = metadata !{i32 786445, metadata !132, metadata !131, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!135 = metadata !{i32 786445, metadata !132, metadata !131, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!136 = metadata !{i32 786445, metadata !132, metadata !131, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!137 = metadata !{i32 786445, metadata !132, metadata !131, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !203, metadata !204, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225}
!139 = metadata !{i32 786689, metadata !126, metadata !"mtx", metadata !5, i32 16777473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 257]
!140 = metadata !{i32 786689, metadata !126, metadata !"irow", metadata !5, i32 33554690, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 258]
!141 = metadata !{i32 786689, metadata !126, metadata !"rowZV", metadata !5, i32 50331907, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowZV] [line 259]
!142 = metadata !{i32 786688, metadata !126, metadata !"rowvec", metadata !5, i32 261, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowvec] [line 261]
!143 = metadata !{i32 786688, metadata !144, metadata !"entries", metadata !5, i32 289, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 289]
!144 = metadata !{i32 786443, metadata !1, metadata !145, i32 288, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!145 = metadata !{i32 786443, metadata !1, metadata !126, i32 286, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!146 = metadata !{i32 786688, metadata !144, metadata !"inc1", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 290]
!147 = metadata !{i32 786688, metadata !144, metadata !"inc2", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 290]
!148 = metadata !{i32 786688, metadata !144, metadata !"jcol", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 290]
!149 = metadata !{i32 786688, metadata !144, metadata !"loc", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 290]
!150 = metadata !{i32 786688, metadata !144, metadata !"ncol", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 290]
!151 = metadata !{i32 786688, metadata !144, metadata !"nrow", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 290]
!152 = metadata !{i32 786688, metadata !153, metadata !"entries", metadata !5, i32 300, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 300]
!153 = metadata !{i32 786443, metadata !1, metadata !145, i32 299, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!154 = metadata !{i32 786688, metadata !153, metadata !"ii", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 301]
!155 = metadata !{i32 786688, metadata !153, metadata !"jrow", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 301]
!156 = metadata !{i32 786688, metadata !153, metadata !"kk", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 301]
!157 = metadata !{i32 786688, metadata !153, metadata !"nent", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 301]
!158 = metadata !{i32 786688, metadata !153, metadata !"nrow", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 301]
!159 = metadata !{i32 786688, metadata !153, metadata !"offset", metadata !5, i32 301, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 301]
!160 = metadata !{i32 786688, metadata !153, metadata !"indices", metadata !5, i32 302, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 302]
!161 = metadata !{i32 786688, metadata !153, metadata !"sizes", metadata !5, i32 302, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 302]
!162 = metadata !{i32 786688, metadata !163, metadata !"entries", metadata !5, i32 314, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 314]
!163 = metadata !{i32 786443, metadata !1, metadata !145, i32 313, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!164 = metadata !{i32 786688, metadata !163, metadata !"ii", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 315]
!165 = metadata !{i32 786688, metadata !163, metadata !"jcol", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 315]
!166 = metadata !{i32 786688, metadata !163, metadata !"kk", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 315]
!167 = metadata !{i32 786688, metadata !163, metadata !"nent", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 315]
!168 = metadata !{i32 786688, metadata !163, metadata !"ncol", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 315]
!169 = metadata !{i32 786688, metadata !163, metadata !"offset", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 315]
!170 = metadata !{i32 786688, metadata !163, metadata !"indices", metadata !5, i32 316, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 316]
!171 = metadata !{i32 786688, metadata !163, metadata !"sizes", metadata !5, i32 316, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 316]
!172 = metadata !{i32 786688, metadata !173, metadata !"entries", metadata !5, i32 332, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 332]
!173 = metadata !{i32 786443, metadata !1, metadata !145, i32 331, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!174 = metadata !{i32 786688, metadata !173, metadata !"ii", metadata !5, i32 333, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 333]
!175 = metadata !{i32 786688, metadata !173, metadata !"nent", metadata !5, i32 333, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 333]
!176 = metadata !{i32 786688, metadata !173, metadata !"colids", metadata !5, i32 334, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 334]
!177 = metadata !{i32 786688, metadata !173, metadata !"rowids", metadata !5, i32 334, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 334]
!178 = metadata !{i32 786688, metadata !179, metadata !"entries", metadata !5, i32 345, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 345]
!179 = metadata !{i32 786443, metadata !1, metadata !145, i32 344, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!180 = metadata !{i32 786688, metadata !179, metadata !"first", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 346]
!181 = metadata !{i32 786688, metadata !179, metadata !"ii", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 346]
!182 = metadata !{i32 786688, metadata !179, metadata !"jrow", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 346]
!183 = metadata !{i32 786688, metadata !179, metadata !"kk", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 346]
!184 = metadata !{i32 786688, metadata !179, metadata !"last", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 346]
!185 = metadata !{i32 786688, metadata !179, metadata !"nent", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 346]
!186 = metadata !{i32 786688, metadata !179, metadata !"nrow", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 346]
!187 = metadata !{i32 786688, metadata !179, metadata !"offset", metadata !5, i32 346, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 346]
!188 = metadata !{i32 786688, metadata !179, metadata !"firstlocs", metadata !5, i32 347, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 347]
!189 = metadata !{i32 786688, metadata !179, metadata !"sizes", metadata !5, i32 347, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 347]
!190 = metadata !{i32 786688, metadata !191, metadata !"entries", metadata !5, i32 377, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 377]
!191 = metadata !{i32 786443, metadata !1, metadata !145, i32 376, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!192 = metadata !{i32 786688, metadata !191, metadata !"first", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 378]
!193 = metadata !{i32 786688, metadata !191, metadata !"jcol", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 378]
!194 = metadata !{i32 786688, metadata !191, metadata !"last", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 378]
!195 = metadata !{i32 786688, metadata !191, metadata !"loc", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 378]
!196 = metadata !{i32 786688, metadata !191, metadata !"nent", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 378]
!197 = metadata !{i32 786688, metadata !191, metadata !"ncol", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 378]
!198 = metadata !{i32 786688, metadata !191, metadata !"offset", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 378]
!199 = metadata !{i32 786688, metadata !191, metadata !"firstlocs", metadata !5, i32 379, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 379]
!200 = metadata !{i32 786688, metadata !191, metadata !"sizes", metadata !5, i32 379, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 379]
!201 = metadata !{i32 786688, metadata !202, metadata !"entries", metadata !5, i32 397, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 397]
!202 = metadata !{i32 786443, metadata !1, metadata !145, i32 396, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!203 = metadata !{i32 786688, metadata !202, metadata !"nent", metadata !5, i32 398, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 398]
!204 = metadata !{i32 786688, metadata !205, metadata !"entries", metadata !5, i32 405, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 405]
!205 = metadata !{i32 786443, metadata !1, metadata !145, i32 404, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!206 = metadata !{i32 786688, metadata !205, metadata !"ii", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 406]
!207 = metadata !{i32 786688, metadata !205, metadata !"ipivot", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 406]
!208 = metadata !{i32 786688, metadata !205, metadata !"jrow", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 406]
!209 = metadata !{i32 786688, metadata !205, metadata !"kk", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 406]
!210 = metadata !{i32 786688, metadata !205, metadata !"m", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 406]
!211 = metadata !{i32 786688, metadata !205, metadata !"nrow", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 406]
!212 = metadata !{i32 786688, metadata !205, metadata !"nent", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 406]
!213 = metadata !{i32 786688, metadata !205, metadata !"stride", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 406]
!214 = metadata !{i32 786688, metadata !205, metadata !"pivotsizes", metadata !5, i32 407, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 407]
!215 = metadata !{i32 786688, metadata !216, metadata !"entries", metadata !5, i32 448, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 448]
!216 = metadata !{i32 786443, metadata !1, metadata !145, i32 447, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!217 = metadata !{i32 786688, metadata !216, metadata !"ii", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 449]
!218 = metadata !{i32 786688, metadata !216, metadata !"ipivot", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 449]
!219 = metadata !{i32 786688, metadata !216, metadata !"jrow", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 449]
!220 = metadata !{i32 786688, metadata !216, metadata !"kk", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 449]
!221 = metadata !{i32 786688, metadata !216, metadata !"m", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 449]
!222 = metadata !{i32 786688, metadata !216, metadata !"nrow", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 449]
!223 = metadata !{i32 786688, metadata !216, metadata !"nent", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 449]
!224 = metadata !{i32 786688, metadata !216, metadata !"stride", metadata !5, i32 449, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 449]
!225 = metadata !{i32 786688, metadata !216, metadata !"pivotsizes", metadata !5, i32 450, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 450]
!226 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_fillColumnDV", metadata !"SubMtx_fillColumnDV", metadata !"", i32 505, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, %struct._DV*)* @SubMtx_fillColumnDV, null, null, metadata !227, i32 509} ; [ DW_TAG_subprogram ] [line 505] [def] [scope 509] [SubMtx_fillColumnDV]
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !292, metadata !293, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314}
!228 = metadata !{i32 786689, metadata !226, metadata !"mtx", metadata !5, i32 16777722, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 506]
!229 = metadata !{i32 786689, metadata !226, metadata !"icol", metadata !5, i32 33554939, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icol] [line 507]
!230 = metadata !{i32 786689, metadata !226, metadata !"colDV", metadata !5, i32 50332156, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colDV] [line 508]
!231 = metadata !{i32 786688, metadata !226, metadata !"colvec", metadata !5, i32 510, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colvec] [line 510]
!232 = metadata !{i32 786688, metadata !233, metadata !"entries", metadata !5, i32 538, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 538]
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 537, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!234 = metadata !{i32 786443, metadata !1, metadata !226, i32 535, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!235 = metadata !{i32 786688, metadata !233, metadata !"inc1", metadata !5, i32 539, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 539]
!236 = metadata !{i32 786688, metadata !233, metadata !"inc2", metadata !5, i32 539, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 539]
!237 = metadata !{i32 786688, metadata !233, metadata !"jrow", metadata !5, i32 539, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 539]
!238 = metadata !{i32 786688, metadata !233, metadata !"loc", metadata !5, i32 539, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 539]
!239 = metadata !{i32 786688, metadata !233, metadata !"ncol", metadata !5, i32 539, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 539]
!240 = metadata !{i32 786688, metadata !233, metadata !"nrow", metadata !5, i32 539, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 539]
!241 = metadata !{i32 786688, metadata !242, metadata !"entries", metadata !5, i32 548, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 548]
!242 = metadata !{i32 786443, metadata !1, metadata !234, i32 547, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!243 = metadata !{i32 786688, metadata !242, metadata !"ii", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 549]
!244 = metadata !{i32 786688, metadata !242, metadata !"jcol", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 549]
!245 = metadata !{i32 786688, metadata !242, metadata !"kk", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 549]
!246 = metadata !{i32 786688, metadata !242, metadata !"ncol", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 549]
!247 = metadata !{i32 786688, metadata !242, metadata !"nent", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 549]
!248 = metadata !{i32 786688, metadata !242, metadata !"offset", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 549]
!249 = metadata !{i32 786688, metadata !242, metadata !"indices", metadata !5, i32 550, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 550]
!250 = metadata !{i32 786688, metadata !242, metadata !"sizes", metadata !5, i32 550, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 550]
!251 = metadata !{i32 786688, metadata !252, metadata !"entries", metadata !5, i32 562, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 562]
!252 = metadata !{i32 786443, metadata !1, metadata !234, i32 561, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!253 = metadata !{i32 786688, metadata !252, metadata !"ii", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 563]
!254 = metadata !{i32 786688, metadata !252, metadata !"jrow", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 563]
!255 = metadata !{i32 786688, metadata !252, metadata !"kk", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 563]
!256 = metadata !{i32 786688, metadata !252, metadata !"nent", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 563]
!257 = metadata !{i32 786688, metadata !252, metadata !"nrow", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 563]
!258 = metadata !{i32 786688, metadata !252, metadata !"offset", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 563]
!259 = metadata !{i32 786688, metadata !252, metadata !"indices", metadata !5, i32 564, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 564]
!260 = metadata !{i32 786688, metadata !252, metadata !"sizes", metadata !5, i32 564, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 564]
!261 = metadata !{i32 786688, metadata !262, metadata !"entries", metadata !5, i32 578, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 578]
!262 = metadata !{i32 786443, metadata !1, metadata !234, i32 577, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!263 = metadata !{i32 786688, metadata !262, metadata !"ii", metadata !5, i32 579, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 579]
!264 = metadata !{i32 786688, metadata !262, metadata !"nent", metadata !5, i32 579, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 579]
!265 = metadata !{i32 786688, metadata !262, metadata !"colids", metadata !5, i32 580, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 580]
!266 = metadata !{i32 786688, metadata !262, metadata !"rowids", metadata !5, i32 580, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 580]
!267 = metadata !{i32 786688, metadata !268, metadata !"entries", metadata !5, i32 590, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 590]
!268 = metadata !{i32 786443, metadata !1, metadata !234, i32 589, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!269 = metadata !{i32 786688, metadata !268, metadata !"first", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 591]
!270 = metadata !{i32 786688, metadata !268, metadata !"ii", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 591]
!271 = metadata !{i32 786688, metadata !268, metadata !"jcol", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 591]
!272 = metadata !{i32 786688, metadata !268, metadata !"kk", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 591]
!273 = metadata !{i32 786688, metadata !268, metadata !"last", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 591]
!274 = metadata !{i32 786688, metadata !268, metadata !"ncol", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 591]
!275 = metadata !{i32 786688, metadata !268, metadata !"nent", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 591]
!276 = metadata !{i32 786688, metadata !268, metadata !"offset", metadata !5, i32 591, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 591]
!277 = metadata !{i32 786688, metadata !268, metadata !"firstlocs", metadata !5, i32 592, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 592]
!278 = metadata !{i32 786688, metadata !268, metadata !"sizes", metadata !5, i32 592, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 592]
!279 = metadata !{i32 786688, metadata !280, metadata !"entries", metadata !5, i32 621, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 621]
!280 = metadata !{i32 786443, metadata !1, metadata !234, i32 620, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!281 = metadata !{i32 786688, metadata !280, metadata !"first", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 622]
!282 = metadata !{i32 786688, metadata !280, metadata !"jrow", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 622]
!283 = metadata !{i32 786688, metadata !280, metadata !"last", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 622]
!284 = metadata !{i32 786688, metadata !280, metadata !"loc", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 622]
!285 = metadata !{i32 786688, metadata !280, metadata !"nent", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 622]
!286 = metadata !{i32 786688, metadata !280, metadata !"nrow", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 622]
!287 = metadata !{i32 786688, metadata !280, metadata !"offset", metadata !5, i32 622, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 622]
!288 = metadata !{i32 786688, metadata !280, metadata !"firstlocs", metadata !5, i32 623, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 623]
!289 = metadata !{i32 786688, metadata !280, metadata !"sizes", metadata !5, i32 623, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 623]
!290 = metadata !{i32 786688, metadata !291, metadata !"entries", metadata !5, i32 640, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 640]
!291 = metadata !{i32 786443, metadata !1, metadata !234, i32 639, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!292 = metadata !{i32 786688, metadata !291, metadata !"nent", metadata !5, i32 641, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 641]
!293 = metadata !{i32 786688, metadata !294, metadata !"entries", metadata !5, i32 647, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 647]
!294 = metadata !{i32 786443, metadata !1, metadata !234, i32 646, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!295 = metadata !{i32 786688, metadata !294, metadata !"ii", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 648]
!296 = metadata !{i32 786688, metadata !294, metadata !"ipivot", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 648]
!297 = metadata !{i32 786688, metadata !294, metadata !"jcol", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 648]
!298 = metadata !{i32 786688, metadata !294, metadata !"kk", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 648]
!299 = metadata !{i32 786688, metadata !294, metadata !"m", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 648]
!300 = metadata !{i32 786688, metadata !294, metadata !"nrow", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 648]
!301 = metadata !{i32 786688, metadata !294, metadata !"nent", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 648]
!302 = metadata !{i32 786688, metadata !294, metadata !"stride", metadata !5, i32 648, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 648]
!303 = metadata !{i32 786688, metadata !294, metadata !"pivotsizes", metadata !5, i32 649, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 649]
!304 = metadata !{i32 786688, metadata !305, metadata !"entries", metadata !5, i32 688, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 688]
!305 = metadata !{i32 786443, metadata !1, metadata !234, i32 687, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!306 = metadata !{i32 786688, metadata !305, metadata !"ii", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 689]
!307 = metadata !{i32 786688, metadata !305, metadata !"ipivot", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 689]
!308 = metadata !{i32 786688, metadata !305, metadata !"jcol", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 689]
!309 = metadata !{i32 786688, metadata !305, metadata !"kk", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 689]
!310 = metadata !{i32 786688, metadata !305, metadata !"m", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 689]
!311 = metadata !{i32 786688, metadata !305, metadata !"nrow", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 689]
!312 = metadata !{i32 786688, metadata !305, metadata !"nent", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 689]
!313 = metadata !{i32 786688, metadata !305, metadata !"stride", metadata !5, i32 689, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 689]
!314 = metadata !{i32 786688, metadata !305, metadata !"pivotsizes", metadata !5, i32 690, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 690]
!315 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_fillColumnZV", metadata !"SubMtx_fillColumnZV", metadata !"", i32 743, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, %struct._ZV*)* @SubMtx_fillColumnZV, null, null, metadata !316, i32 747} ; [ DW_TAG_subprogram ] [line 743] [def] [scope 747] [SubMtx_fillColumnZV]
!316 = metadata !{metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !381, metadata !382, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403}
!317 = metadata !{i32 786689, metadata !315, metadata !"mtx", metadata !5, i32 16777960, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 744]
!318 = metadata !{i32 786689, metadata !315, metadata !"icol", metadata !5, i32 33555177, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icol] [line 745]
!319 = metadata !{i32 786689, metadata !315, metadata !"colZV", metadata !5, i32 50332394, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colZV] [line 746]
!320 = metadata !{i32 786688, metadata !315, metadata !"colvec", metadata !5, i32 748, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colvec] [line 748]
!321 = metadata !{i32 786688, metadata !322, metadata !"entries", metadata !5, i32 776, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 776]
!322 = metadata !{i32 786443, metadata !1, metadata !323, i32 775, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!323 = metadata !{i32 786443, metadata !1, metadata !315, i32 773, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!324 = metadata !{i32 786688, metadata !322, metadata !"inc1", metadata !5, i32 777, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 777]
!325 = metadata !{i32 786688, metadata !322, metadata !"inc2", metadata !5, i32 777, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 777]
!326 = metadata !{i32 786688, metadata !322, metadata !"jrow", metadata !5, i32 777, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 777]
!327 = metadata !{i32 786688, metadata !322, metadata !"loc", metadata !5, i32 777, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 777]
!328 = metadata !{i32 786688, metadata !322, metadata !"ncol", metadata !5, i32 777, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 777]
!329 = metadata !{i32 786688, metadata !322, metadata !"nrow", metadata !5, i32 777, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 777]
!330 = metadata !{i32 786688, metadata !331, metadata !"entries", metadata !5, i32 787, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 787]
!331 = metadata !{i32 786443, metadata !1, metadata !323, i32 786, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!332 = metadata !{i32 786688, metadata !331, metadata !"ii", metadata !5, i32 788, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 788]
!333 = metadata !{i32 786688, metadata !331, metadata !"jcol", metadata !5, i32 788, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 788]
!334 = metadata !{i32 786688, metadata !331, metadata !"kk", metadata !5, i32 788, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 788]
!335 = metadata !{i32 786688, metadata !331, metadata !"ncol", metadata !5, i32 788, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 788]
!336 = metadata !{i32 786688, metadata !331, metadata !"nent", metadata !5, i32 788, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 788]
!337 = metadata !{i32 786688, metadata !331, metadata !"offset", metadata !5, i32 788, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 788]
!338 = metadata !{i32 786688, metadata !331, metadata !"indices", metadata !5, i32 789, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 789]
!339 = metadata !{i32 786688, metadata !331, metadata !"sizes", metadata !5, i32 789, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 789]
!340 = metadata !{i32 786688, metadata !341, metadata !"entries", metadata !5, i32 802, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 802]
!341 = metadata !{i32 786443, metadata !1, metadata !323, i32 801, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!342 = metadata !{i32 786688, metadata !341, metadata !"ii", metadata !5, i32 803, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 803]
!343 = metadata !{i32 786688, metadata !341, metadata !"jrow", metadata !5, i32 803, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 803]
!344 = metadata !{i32 786688, metadata !341, metadata !"kk", metadata !5, i32 803, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 803]
!345 = metadata !{i32 786688, metadata !341, metadata !"nent", metadata !5, i32 803, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 803]
!346 = metadata !{i32 786688, metadata !341, metadata !"nrow", metadata !5, i32 803, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 803]
!347 = metadata !{i32 786688, metadata !341, metadata !"offset", metadata !5, i32 803, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 803]
!348 = metadata !{i32 786688, metadata !341, metadata !"indices", metadata !5, i32 804, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 804]
!349 = metadata !{i32 786688, metadata !341, metadata !"sizes", metadata !5, i32 804, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 804]
!350 = metadata !{i32 786688, metadata !351, metadata !"entries", metadata !5, i32 819, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 819]
!351 = metadata !{i32 786443, metadata !1, metadata !323, i32 818, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!352 = metadata !{i32 786688, metadata !351, metadata !"ii", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 820]
!353 = metadata !{i32 786688, metadata !351, metadata !"nent", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 820]
!354 = metadata !{i32 786688, metadata !351, metadata !"colids", metadata !5, i32 821, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 821]
!355 = metadata !{i32 786688, metadata !351, metadata !"rowids", metadata !5, i32 821, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 821]
!356 = metadata !{i32 786688, metadata !357, metadata !"entries", metadata !5, i32 832, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 832]
!357 = metadata !{i32 786443, metadata !1, metadata !323, i32 831, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!358 = metadata !{i32 786688, metadata !357, metadata !"first", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 833]
!359 = metadata !{i32 786688, metadata !357, metadata !"ii", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 833]
!360 = metadata !{i32 786688, metadata !357, metadata !"jcol", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 833]
!361 = metadata !{i32 786688, metadata !357, metadata !"kk", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 833]
!362 = metadata !{i32 786688, metadata !357, metadata !"last", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 833]
!363 = metadata !{i32 786688, metadata !357, metadata !"ncol", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 833]
!364 = metadata !{i32 786688, metadata !357, metadata !"nent", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 833]
!365 = metadata !{i32 786688, metadata !357, metadata !"offset", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 833]
!366 = metadata !{i32 786688, metadata !357, metadata !"firstlocs", metadata !5, i32 834, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 834]
!367 = metadata !{i32 786688, metadata !357, metadata !"sizes", metadata !5, i32 834, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 834]
!368 = metadata !{i32 786688, metadata !369, metadata !"entries", metadata !5, i32 864, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 864]
!369 = metadata !{i32 786443, metadata !1, metadata !323, i32 863, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!370 = metadata !{i32 786688, metadata !369, metadata !"first", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 865]
!371 = metadata !{i32 786688, metadata !369, metadata !"jrow", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 865]
!372 = metadata !{i32 786688, metadata !369, metadata !"last", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 865]
!373 = metadata !{i32 786688, metadata !369, metadata !"loc", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 865]
!374 = metadata !{i32 786688, metadata !369, metadata !"nent", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 865]
!375 = metadata !{i32 786688, metadata !369, metadata !"nrow", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 865]
!376 = metadata !{i32 786688, metadata !369, metadata !"offset", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 865]
!377 = metadata !{i32 786688, metadata !369, metadata !"firstlocs", metadata !5, i32 866, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 866]
!378 = metadata !{i32 786688, metadata !369, metadata !"sizes", metadata !5, i32 866, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 866]
!379 = metadata !{i32 786688, metadata !380, metadata !"entries", metadata !5, i32 884, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 884]
!380 = metadata !{i32 786443, metadata !1, metadata !323, i32 883, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!381 = metadata !{i32 786688, metadata !380, metadata !"nent", metadata !5, i32 885, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 885]
!382 = metadata !{i32 786688, metadata !383, metadata !"entries", metadata !5, i32 892, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 892]
!383 = metadata !{i32 786443, metadata !1, metadata !323, i32 891, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!384 = metadata !{i32 786688, metadata !383, metadata !"ii", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 893]
!385 = metadata !{i32 786688, metadata !383, metadata !"ipivot", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 893]
!386 = metadata !{i32 786688, metadata !383, metadata !"jcol", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 893]
!387 = metadata !{i32 786688, metadata !383, metadata !"kk", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 893]
!388 = metadata !{i32 786688, metadata !383, metadata !"m", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 893]
!389 = metadata !{i32 786688, metadata !383, metadata !"nrow", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 893]
!390 = metadata !{i32 786688, metadata !383, metadata !"nent", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 893]
!391 = metadata !{i32 786688, metadata !383, metadata !"stride", metadata !5, i32 893, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 893]
!392 = metadata !{i32 786688, metadata !383, metadata !"pivotsizes", metadata !5, i32 894, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 894]
!393 = metadata !{i32 786688, metadata !394, metadata !"entries", metadata !5, i32 935, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 935]
!394 = metadata !{i32 786443, metadata !1, metadata !323, i32 934, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!395 = metadata !{i32 786688, metadata !394, metadata !"ii", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 936]
!396 = metadata !{i32 786688, metadata !394, metadata !"ipivot", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 936]
!397 = metadata !{i32 786688, metadata !394, metadata !"jcol", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 936]
!398 = metadata !{i32 786688, metadata !394, metadata !"kk", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 936]
!399 = metadata !{i32 786688, metadata !394, metadata !"m", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 936]
!400 = metadata !{i32 786688, metadata !394, metadata !"nrow", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 936]
!401 = metadata !{i32 786688, metadata !394, metadata !"nent", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 936]
!402 = metadata !{i32 786688, metadata !394, metadata !"stride", metadata !5, i32 936, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 936]
!403 = metadata !{i32 786688, metadata !394, metadata !"pivotsizes", metadata !5, i32 937, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 937]
!404 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_maxabs", metadata !"SubMtx_maxabs", metadata !"", i32 991, metadata !405, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._SubMtx*)* @SubMtx_maxabs, null, null, metadata !407, i32 993} ; [ DW_TAG_subprogram ] [line 991] [def] [scope 993] [SubMtx_maxabs]
!405 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!406 = metadata !{metadata !23, metadata !8}
!407 = metadata !{metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !416, metadata !417, metadata !418, metadata !419, metadata !421, metadata !422, metadata !423, metadata !425, metadata !426, metadata !427, metadata !429, metadata !430, metadata !432, metadata !433, metadata !434, metadata !436, metadata !437, metadata !438, metadata !440, metadata !441, metadata !443}
!408 = metadata !{i32 786689, metadata !404, metadata !"mtx", metadata !5, i32 16778208, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 992]
!409 = metadata !{i32 786688, metadata !404, metadata !"maxabs", metadata !5, i32 994, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxabs] [line 994]
!410 = metadata !{i32 786688, metadata !404, metadata !"entries", metadata !5, i32 995, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 995]
!411 = metadata !{i32 786688, metadata !404, metadata !"loc", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 996]
!412 = metadata !{i32 786688, metadata !404, metadata !"nent", metadata !5, i32 996, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 996]
!413 = metadata !{i32 786688, metadata !414, metadata !"inc1", metadata !5, i32 1021, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1021]
!414 = metadata !{i32 786443, metadata !1, metadata !415, i32 1020, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!415 = metadata !{i32 786443, metadata !1, metadata !404, i32 1018, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!416 = metadata !{i32 786688, metadata !414, metadata !"inc2", metadata !5, i32 1021, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1021]
!417 = metadata !{i32 786688, metadata !414, metadata !"ncol", metadata !5, i32 1021, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1021]
!418 = metadata !{i32 786688, metadata !414, metadata !"nrow", metadata !5, i32 1021, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1021]
!419 = metadata !{i32 786688, metadata !420, metadata !"ncol", metadata !5, i32 1027, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1027]
!420 = metadata !{i32 786443, metadata !1, metadata !415, i32 1026, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!421 = metadata !{i32 786688, metadata !420, metadata !"indices", metadata !5, i32 1028, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1028]
!422 = metadata !{i32 786688, metadata !420, metadata !"sizes", metadata !5, i32 1028, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1028]
!423 = metadata !{i32 786688, metadata !424, metadata !"nrow", metadata !5, i32 1034, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1034]
!424 = metadata !{i32 786443, metadata !1, metadata !415, i32 1033, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!425 = metadata !{i32 786688, metadata !424, metadata !"indices", metadata !5, i32 1035, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1035]
!426 = metadata !{i32 786688, metadata !424, metadata !"sizes", metadata !5, i32 1035, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1035]
!427 = metadata !{i32 786688, metadata !428, metadata !"colids", metadata !5, i32 1040, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 1040]
!428 = metadata !{i32 786443, metadata !1, metadata !415, i32 1039, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!429 = metadata !{i32 786688, metadata !428, metadata !"rowids", metadata !5, i32 1040, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 1040]
!430 = metadata !{i32 786688, metadata !431, metadata !"ncol", metadata !5, i32 1045, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1045]
!431 = metadata !{i32 786443, metadata !1, metadata !415, i32 1044, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!432 = metadata !{i32 786688, metadata !431, metadata !"firstlocs", metadata !5, i32 1046, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1046]
!433 = metadata !{i32 786688, metadata !431, metadata !"sizes", metadata !5, i32 1046, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1046]
!434 = metadata !{i32 786688, metadata !435, metadata !"nrow", metadata !5, i32 1053, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1053]
!435 = metadata !{i32 786443, metadata !1, metadata !415, i32 1052, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!436 = metadata !{i32 786688, metadata !435, metadata !"firstlocs", metadata !5, i32 1054, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1054]
!437 = metadata !{i32 786688, metadata !435, metadata !"sizes", metadata !5, i32 1054, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1054]
!438 = metadata !{i32 786688, metadata !439, metadata !"nrow", metadata !5, i32 1063, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1063]
!439 = metadata !{i32 786443, metadata !1, metadata !415, i32 1062, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!440 = metadata !{i32 786688, metadata !439, metadata !"pivotsizes", metadata !5, i32 1064, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1064]
!441 = metadata !{i32 786688, metadata !442, metadata !"nrow", metadata !5, i32 1069, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1069]
!442 = metadata !{i32 786443, metadata !1, metadata !415, i32 1068, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!443 = metadata !{i32 786688, metadata !442, metadata !"pivotsizes", metadata !5, i32 1070, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1070]
!444 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_zero", metadata !"SubMtx_zero", metadata !"", i32 1093, metadata !445, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_zero, null, null, metadata !447, i32 1095} ; [ DW_TAG_subprogram ] [line 1093] [def] [scope 1095] [SubMtx_zero]
!445 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!446 = metadata !{null, metadata !8}
!447 = metadata !{metadata !448}
!448 = metadata !{i32 786689, metadata !444, metadata !"mtx", metadata !5, i32 16778310, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 1094]
!449 = metadata !{i32 18, i32 0, metadata !4, null}
!450 = metadata !{i32 19, i32 0, metadata !4, null}
!451 = metadata !{i32 20, i32 0, metadata !4, null}
!452 = metadata !{i32 28, i32 0, metadata !4, null}
!453 = metadata !{i32 29, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!455 = metadata !{metadata !"any pointer", metadata !456}
!456 = metadata !{metadata !"omnipotent char", metadata !457}
!457 = metadata !{metadata !"Simple C/C++ TBAA"}
!458 = metadata !{i32 31, i32 0, metadata !454, null}
!459 = metadata !{i32 33, i32 0, metadata !4, null}
!460 = metadata !{metadata !"int", metadata !456}
!461 = metadata !{i32 34, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!463 = metadata !{i32 37, i32 0, metadata !462, null}
!464 = metadata !{i32 39, i32 0, metadata !4, null}
!465 = metadata !{i32 40, i32 0, metadata !4, null}
!466 = metadata !{i32 41, i32 0, metadata !4, null}
!467 = metadata !{i32 47, i32 0, metadata !4, null}
!468 = metadata !{i32 50, i32 0, metadata !43, null}
!469 = metadata !{i32 51, i32 0, metadata !43, null}
!470 = metadata !{i32 53, i32 0, metadata !43, null}
!471 = metadata !{i32 54, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !43, i32 54, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!473 = metadata !{i32 55, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !472, i32 54, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!475 = metadata !{i32 56, i32 0, metadata !474, null}
!476 = metadata !{metadata !"double", metadata !456}
!477 = metadata !{i32 60, i32 0, metadata !52, null}
!478 = metadata !{i32 61, i32 0, metadata !52, null}
!479 = metadata !{i32 62, i32 0, metadata !52, null}
!480 = metadata !{i32 64, i32 0, metadata !52, null}
!481 = metadata !{i32 66, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !52, i32 66, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!483 = metadata !{i32 67, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !482, i32 66, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!485 = metadata !{i32 69, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !52, i32 69, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!487 = metadata !{i32 70, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !486, i32 69, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!489 = metadata !{i32 74, i32 0, metadata !63, null}
!490 = metadata !{i32 75, i32 0, metadata !63, null}
!491 = metadata !{i32 76, i32 0, metadata !63, null}
!492 = metadata !{i32 78, i32 0, metadata !63, null}
!493 = metadata !{i32 80, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !63, i32 80, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!495 = metadata !{i32 81, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !497, i32 81, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!497 = metadata !{i32 786443, metadata !1, metadata !494, i32 80, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!498 = metadata !{i32 87, i32 0, metadata !497, null}
!499 = metadata !{i32 82, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !496, i32 81, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!501 = metadata !{i32 83, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !500, i32 82, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!503 = metadata !{i32 84, i32 0, metadata !502, null}
!504 = metadata !{i32 91, i32 0, metadata !73, null}
!505 = metadata !{i32 92, i32 0, metadata !73, null}
!506 = metadata !{i32 93, i32 0, metadata !73, null}
!507 = metadata !{i32 95, i32 0, metadata !73, null}
!508 = metadata !{i32 96, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !73, i32 96, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!510 = metadata !{i32 97, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !509, i32 96, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!512 = metadata !{i32 98, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !511, i32 97, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!514 = metadata !{i32 99, i32 0, metadata !513, null}
!515 = metadata !{i32 103, i32 0, metadata !79, null}
!516 = metadata !{i32 104, i32 0, metadata !79, null}
!517 = metadata !{i32 105, i32 0, metadata !79, null}
!518 = metadata !{i32 108, i32 0, metadata !79, null}
!519 = metadata !{i32 114, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !79, i32 114, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!521 = metadata !{i32 115, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !520, i32 114, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!523 = metadata !{i32 122, i32 0, metadata !79, null}
!524 = metadata !{i32 123, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !79, i32 122, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!526 = metadata !{i32 124, i32 0, metadata !525, null}
!527 = metadata !{i32 125, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !525, i32 125, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!529 = metadata !{i32 126, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 125, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!531 = metadata !{i32 134, i32 0, metadata !91, null}
!532 = metadata !{i32 135, i32 0, metadata !91, null}
!533 = metadata !{i32 136, i32 0, metadata !91, null}
!534 = metadata !{i32 138, i32 0, metadata !91, null}
!535 = metadata !{i32 140, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !91, i32 140, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!537 = metadata !{i32 141, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !536, i32 140, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!539 = metadata !{i32 142, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !538, i32 141, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!541 = metadata !{i32 148, i32 0, metadata !540, null}
!542 = metadata !{i32 146, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !540, i32 144, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!544 = metadata !{i32 144, i32 0, metadata !540, null}
!545 = metadata !{i32 143, i32 0, metadata !540, null}
!546 = metadata !{i32 145, i32 0, metadata !543, null}
!547 = metadata !{i32 147, i32 0, metadata !543, null}
!548 = metadata !{i32 149, i32 0, metadata !540, null}
!549 = metadata !{i32 153, i32 0, metadata !102, null}
!550 = metadata !{i32 154, i32 0, metadata !102, null}
!551 = metadata !{i32 156, i32 0, metadata !102, null}
!552 = metadata !{i32 157, i32 0, metadata !102, null}
!553 = metadata !{i32 158, i32 0, metadata !44, null}
!554 = metadata !{i32 160, i32 0, metadata !105, null}
!555 = metadata !{i32 161, i32 0, metadata !105, null}
!556 = metadata !{i32 162, i32 0, metadata !105, null}
!557 = metadata !{i32 164, i32 0, metadata !105, null}
!558 = metadata !{i32 165, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !105, i32 165, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!560 = metadata !{i32 166, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !559, i32 165, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!562 = metadata !{i32 191, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !564, i32 186, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!564 = metadata !{i32 786443, metadata !1, metadata !565, i32 186, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!565 = metadata !{i32 786443, metadata !1, metadata !561, i32 171, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!566 = metadata !{i32 183, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !568, i32 178, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!568 = metadata !{i32 786443, metadata !1, metadata !565, i32 178, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!569 = metadata !{i32 178, i32 0, metadata !568, null}
!570 = metadata !{i32 171, i32 0, metadata !561, null}
!571 = metadata !{i32 173, i32 0, metadata !565, null}
!572 = metadata !{i32 184, i32 0, metadata !567, null}
!573 = metadata !{i32 186, i32 0, metadata !564, null}
!574 = metadata !{i32 192, i32 0, metadata !563, null}
!575 = metadata !{i32 195, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !561, i32 194, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!577 = metadata !{i32 197, i32 0, metadata !561, null}
!578 = metadata !{i32 201, i32 0, metadata !116, null}
!579 = metadata !{i32 202, i32 0, metadata !116, null}
!580 = metadata !{i32 203, i32 0, metadata !116, null}
!581 = metadata !{i32 205, i32 0, metadata !116, null}
!582 = metadata !{i32 206, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !116, i32 206, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!584 = metadata !{i32 207, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !583, i32 206, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!586 = metadata !{i32 232, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !588, i32 227, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!588 = metadata !{i32 786443, metadata !1, metadata !589, i32 227, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!589 = metadata !{i32 786443, metadata !1, metadata !585, i32 212, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!590 = metadata !{i32 224, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !592, i32 219, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!592 = metadata !{i32 786443, metadata !1, metadata !589, i32 219, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!593 = metadata !{i32 219, i32 0, metadata !592, null}
!594 = metadata !{i32 212, i32 0, metadata !585, null}
!595 = metadata !{i32 214, i32 0, metadata !589, null}
!596 = metadata !{i32 225, i32 0, metadata !591, null}
!597 = metadata !{i32 227, i32 0, metadata !588, null}
!598 = metadata !{i32 233, i32 0, metadata !587, null}
!599 = metadata !{i32 236, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !585, i32 235, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!601 = metadata !{i32 238, i32 0, metadata !585, null}
!602 = metadata !{i32 244, i32 0, metadata !4, null}
!603 = metadata !{i32 257, i32 0, metadata !126, null}
!604 = metadata !{i32 258, i32 0, metadata !126, null}
!605 = metadata !{i32 259, i32 0, metadata !126, null}
!606 = metadata !{i32 267, i32 0, metadata !126, null}
!607 = metadata !{i32 268, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !126, i32 267, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!609 = metadata !{i32 270, i32 0, metadata !608, null}
!610 = metadata !{i32 272, i32 0, metadata !126, null}
!611 = metadata !{i32 273, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !126, i32 272, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!613 = metadata !{i32 276, i32 0, metadata !612, null}
!614 = metadata !{i32 278, i32 0, metadata !126, null}
!615 = metadata !{i32 279, i32 0, metadata !126, null}
!616 = metadata !{i32 280, i32 0, metadata !126, null}
!617 = metadata !{i32 286, i32 0, metadata !126, null}
!618 = metadata !{i32 289, i32 0, metadata !144, null}
!619 = metadata !{i32 290, i32 0, metadata !144, null}
!620 = metadata !{i32 292, i32 0, metadata !144, null}
!621 = metadata !{i32 293, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !144, i32 293, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!623 = metadata !{i32 294, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !622, i32 293, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!625 = metadata !{i32 295, i32 0, metadata !624, null}
!626 = metadata !{i32 296, i32 0, metadata !624, null}
!627 = metadata !{i32 300, i32 0, metadata !153, null}
!628 = metadata !{i32 301, i32 0, metadata !153, null}
!629 = metadata !{i32 302, i32 0, metadata !153, null}
!630 = metadata !{i32 304, i32 0, metadata !153, null}
!631 = metadata !{i32 305, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !153, i32 305, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!633 = metadata !{i32 306, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !632, i32 305, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!635 = metadata !{i32 308, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !153, i32 308, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!637 = metadata !{i32 309, i32 0, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !636, i32 308, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!639 = metadata !{i32 310, i32 0, metadata !638, null}
!640 = metadata !{i32 314, i32 0, metadata !163, null}
!641 = metadata !{i32 315, i32 0, metadata !163, null}
!642 = metadata !{i32 316, i32 0, metadata !163, null}
!643 = metadata !{i32 318, i32 0, metadata !163, null}
!644 = metadata !{i32 320, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !163, i32 320, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!646 = metadata !{i32 321, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !648, i32 321, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!648 = metadata !{i32 786443, metadata !1, metadata !645, i32 320, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!649 = metadata !{i32 328, i32 0, metadata !648, null}
!650 = metadata !{i32 322, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !647, i32 321, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!652 = metadata !{i32 323, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !651, i32 322, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!654 = metadata !{i32 324, i32 0, metadata !653, null}
!655 = metadata !{i32 325, i32 0, metadata !653, null}
!656 = metadata !{i32 332, i32 0, metadata !173, null}
!657 = metadata !{i32 333, i32 0, metadata !173, null}
!658 = metadata !{i32 334, i32 0, metadata !173, null}
!659 = metadata !{i32 336, i32 0, metadata !173, null}
!660 = metadata !{i32 337, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !173, i32 337, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!662 = metadata !{i32 338, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !661, i32 337, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!664 = metadata !{i32 339, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !663, i32 338, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!666 = metadata !{i32 340, i32 0, metadata !665, null}
!667 = metadata !{i32 341, i32 0, metadata !665, null}
!668 = metadata !{i32 345, i32 0, metadata !179, null}
!669 = metadata !{i32 346, i32 0, metadata !179, null}
!670 = metadata !{i32 347, i32 0, metadata !179, null}
!671 = metadata !{i32 350, i32 0, metadata !179, null}
!672 = metadata !{i32 356, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !179, i32 356, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!674 = metadata !{i32 357, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !673, i32 356, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!676 = metadata !{i32 364, i32 0, metadata !179, null}
!677 = metadata !{i32 365, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !179, i32 364, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!679 = metadata !{i32 366, i32 0, metadata !678, null}
!680 = metadata !{i32 367, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !678, i32 367, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!682 = metadata !{i32 368, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !681, i32 367, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!684 = metadata !{i32 369, i32 0, metadata !683, null}
!685 = metadata !{i32 377, i32 0, metadata !191, null}
!686 = metadata !{i32 378, i32 0, metadata !191, null}
!687 = metadata !{i32 379, i32 0, metadata !191, null}
!688 = metadata !{i32 381, i32 0, metadata !191, null}
!689 = metadata !{i32 383, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !191, i32 383, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!691 = metadata !{i32 384, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !690, i32 383, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!693 = metadata !{i32 385, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !692, i32 384, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!695 = metadata !{i32 392, i32 0, metadata !694, null}
!696 = metadata !{i32 389, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !694, i32 387, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!698 = metadata !{i32 390, i32 0, metadata !697, null}
!699 = metadata !{i32 387, i32 0, metadata !694, null}
!700 = metadata !{i32 386, i32 0, metadata !694, null}
!701 = metadata !{i32 388, i32 0, metadata !697, null}
!702 = metadata !{i32 391, i32 0, metadata !697, null}
!703 = metadata !{i32 393, i32 0, metadata !694, null}
!704 = metadata !{i32 397, i32 0, metadata !202, null}
!705 = metadata !{i32 398, i32 0, metadata !202, null}
!706 = metadata !{i32 400, i32 0, metadata !202, null}
!707 = metadata !{i32 401, i32 0, metadata !202, null}
!708 = metadata !{i32 402, i32 0, metadata !202, null}
!709 = metadata !{i32 403, i32 0, metadata !145, null}
!710 = metadata !{i32 405, i32 0, metadata !205, null}
!711 = metadata !{i32 406, i32 0, metadata !205, null}
!712 = metadata !{i32 407, i32 0, metadata !205, null}
!713 = metadata !{i32 409, i32 0, metadata !205, null}
!714 = metadata !{i32 410, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !205, i32 410, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!716 = metadata !{i32 411, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !715, i32 410, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!718 = metadata !{i32 437, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !720, i32 432, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!720 = metadata !{i32 786443, metadata !1, metadata !721, i32 432, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!721 = metadata !{i32 786443, metadata !1, metadata !717, i32 416, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!722 = metadata !{i32 438, i32 0, metadata !719, null}
!723 = metadata !{i32 428, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !725, i32 423, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!725 = metadata !{i32 786443, metadata !1, metadata !721, i32 423, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!726 = metadata !{i32 429, i32 0, metadata !724, null}
!727 = metadata !{i32 423, i32 0, metadata !725, null}
!728 = metadata !{i32 416, i32 0, metadata !717, null}
!729 = metadata !{i32 418, i32 0, metadata !721, null}
!730 = metadata !{i32 430, i32 0, metadata !724, null}
!731 = metadata !{i32 432, i32 0, metadata !720, null}
!732 = metadata !{i32 439, i32 0, metadata !719, null}
!733 = metadata !{i32 442, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !717, i32 441, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!735 = metadata !{i32 444, i32 0, metadata !717, null}
!736 = metadata !{i32 448, i32 0, metadata !216, null}
!737 = metadata !{i32 449, i32 0, metadata !216, null}
!738 = metadata !{i32 450, i32 0, metadata !216, null}
!739 = metadata !{i32 452, i32 0, metadata !216, null}
!740 = metadata !{i32 453, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !216, i32 453, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!742 = metadata !{i32 454, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !741, i32 453, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!744 = metadata !{i32 480, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !746, i32 475, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!746 = metadata !{i32 786443, metadata !1, metadata !747, i32 475, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!747 = metadata !{i32 786443, metadata !1, metadata !743, i32 459, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!748 = metadata !{i32 481, i32 0, metadata !745, null}
!749 = metadata !{i32 471, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !751, i32 466, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!751 = metadata !{i32 786443, metadata !1, metadata !747, i32 466, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!752 = metadata !{i32 472, i32 0, metadata !750, null}
!753 = metadata !{i32 466, i32 0, metadata !751, null}
!754 = metadata !{i32 459, i32 0, metadata !743, null}
!755 = metadata !{i32 461, i32 0, metadata !747, null}
!756 = metadata !{i32 473, i32 0, metadata !750, null}
!757 = metadata !{i32 475, i32 0, metadata !746, null}
!758 = metadata !{i32 482, i32 0, metadata !745, null}
!759 = metadata !{i32 485, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !743, i32 484, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!761 = metadata !{i32 487, i32 0, metadata !743, null}
!762 = metadata !{i32 493, i32 0, metadata !126, null}
!763 = metadata !{i32 506, i32 0, metadata !226, null}
!764 = metadata !{i32 507, i32 0, metadata !226, null}
!765 = metadata !{i32 508, i32 0, metadata !226, null}
!766 = metadata !{i32 516, i32 0, metadata !226, null}
!767 = metadata !{i32 517, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !226, i32 516, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!769 = metadata !{i32 519, i32 0, metadata !768, null}
!770 = metadata !{i32 521, i32 0, metadata !226, null}
!771 = metadata !{i32 522, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !226, i32 521, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!773 = metadata !{i32 525, i32 0, metadata !772, null}
!774 = metadata !{i32 527, i32 0, metadata !226, null}
!775 = metadata !{i32 528, i32 0, metadata !226, null}
!776 = metadata !{i32 529, i32 0, metadata !226, null}
!777 = metadata !{i32 535, i32 0, metadata !226, null}
!778 = metadata !{i32 538, i32 0, metadata !233, null}
!779 = metadata !{i32 539, i32 0, metadata !233, null}
!780 = metadata !{i32 541, i32 0, metadata !233, null}
!781 = metadata !{i32 542, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !233, i32 542, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!783 = metadata !{i32 543, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !782, i32 542, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!785 = metadata !{i32 544, i32 0, metadata !784, null}
!786 = metadata !{i32 548, i32 0, metadata !242, null}
!787 = metadata !{i32 549, i32 0, metadata !242, null}
!788 = metadata !{i32 550, i32 0, metadata !242, null}
!789 = metadata !{i32 552, i32 0, metadata !242, null}
!790 = metadata !{i32 554, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !242, i32 554, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!792 = metadata !{i32 555, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !791, i32 554, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!794 = metadata !{i32 557, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !242, i32 557, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!796 = metadata !{i32 558, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !795, i32 557, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!798 = metadata !{i32 562, i32 0, metadata !252, null}
!799 = metadata !{i32 563, i32 0, metadata !252, null}
!800 = metadata !{i32 564, i32 0, metadata !252, null}
!801 = metadata !{i32 566, i32 0, metadata !252, null}
!802 = metadata !{i32 567, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !252, i32 567, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!804 = metadata !{i32 568, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !806, i32 568, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!806 = metadata !{i32 786443, metadata !1, metadata !803, i32 567, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!807 = metadata !{i32 574, i32 0, metadata !806, null}
!808 = metadata !{i32 569, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !805, i32 568, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!810 = metadata !{i32 570, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !809, i32 569, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!812 = metadata !{i32 571, i32 0, metadata !811, null}
!813 = metadata !{i32 578, i32 0, metadata !262, null}
!814 = metadata !{i32 579, i32 0, metadata !262, null}
!815 = metadata !{i32 580, i32 0, metadata !262, null}
!816 = metadata !{i32 582, i32 0, metadata !262, null}
!817 = metadata !{i32 583, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !262, i32 583, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!819 = metadata !{i32 584, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !818, i32 583, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!821 = metadata !{i32 585, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !820, i32 584, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!823 = metadata !{i32 586, i32 0, metadata !822, null}
!824 = metadata !{i32 590, i32 0, metadata !268, null}
!825 = metadata !{i32 591, i32 0, metadata !268, null}
!826 = metadata !{i32 592, i32 0, metadata !268, null}
!827 = metadata !{i32 595, i32 0, metadata !268, null}
!828 = metadata !{i32 601, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !268, i32 601, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!830 = metadata !{i32 602, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !829, i32 601, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!832 = metadata !{i32 609, i32 0, metadata !268, null}
!833 = metadata !{i32 610, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !268, i32 609, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!835 = metadata !{i32 611, i32 0, metadata !834, null}
!836 = metadata !{i32 612, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !834, i32 612, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!838 = metadata !{i32 613, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !837, i32 612, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!840 = metadata !{i32 621, i32 0, metadata !280, null}
!841 = metadata !{i32 622, i32 0, metadata !280, null}
!842 = metadata !{i32 623, i32 0, metadata !280, null}
!843 = metadata !{i32 625, i32 0, metadata !280, null}
!844 = metadata !{i32 627, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !280, i32 627, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!846 = metadata !{i32 628, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !845, i32 627, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!848 = metadata !{i32 629, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !847, i32 628, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!850 = metadata !{i32 635, i32 0, metadata !849, null}
!851 = metadata !{i32 633, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !849, i32 631, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!853 = metadata !{i32 631, i32 0, metadata !849, null}
!854 = metadata !{i32 630, i32 0, metadata !849, null}
!855 = metadata !{i32 632, i32 0, metadata !852, null}
!856 = metadata !{i32 634, i32 0, metadata !852, null}
!857 = metadata !{i32 636, i32 0, metadata !849, null}
!858 = metadata !{i32 640, i32 0, metadata !291, null}
!859 = metadata !{i32 641, i32 0, metadata !291, null}
!860 = metadata !{i32 643, i32 0, metadata !291, null}
!861 = metadata !{i32 644, i32 0, metadata !291, null}
!862 = metadata !{i32 645, i32 0, metadata !234, null}
!863 = metadata !{i32 647, i32 0, metadata !294, null}
!864 = metadata !{i32 648, i32 0, metadata !294, null}
!865 = metadata !{i32 649, i32 0, metadata !294, null}
!866 = metadata !{i32 651, i32 0, metadata !294, null}
!867 = metadata !{i32 652, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !294, i32 652, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!869 = metadata !{i32 653, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !1, metadata !868, i32 652, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!871 = metadata !{i32 678, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !873, i32 673, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!873 = metadata !{i32 786443, metadata !1, metadata !874, i32 673, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!874 = metadata !{i32 786443, metadata !1, metadata !870, i32 658, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!875 = metadata !{i32 670, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !877, i32 665, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!877 = metadata !{i32 786443, metadata !1, metadata !874, i32 665, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!878 = metadata !{i32 665, i32 0, metadata !877, null}
!879 = metadata !{i32 658, i32 0, metadata !870, null}
!880 = metadata !{i32 660, i32 0, metadata !874, null}
!881 = metadata !{i32 671, i32 0, metadata !876, null}
!882 = metadata !{i32 673, i32 0, metadata !873, null}
!883 = metadata !{i32 679, i32 0, metadata !872, null}
!884 = metadata !{i32 682, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !1, metadata !870, i32 681, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!886 = metadata !{i32 684, i32 0, metadata !870, null}
!887 = metadata !{i32 688, i32 0, metadata !305, null}
!888 = metadata !{i32 689, i32 0, metadata !305, null}
!889 = metadata !{i32 690, i32 0, metadata !305, null}
!890 = metadata !{i32 692, i32 0, metadata !305, null}
!891 = metadata !{i32 693, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !305, i32 693, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!893 = metadata !{i32 694, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !892, i32 693, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!895 = metadata !{i32 719, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 714, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!897 = metadata !{i32 786443, metadata !1, metadata !898, i32 714, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!898 = metadata !{i32 786443, metadata !1, metadata !894, i32 699, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!899 = metadata !{i32 711, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !901, i32 706, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!901 = metadata !{i32 786443, metadata !1, metadata !898, i32 706, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!902 = metadata !{i32 706, i32 0, metadata !901, null}
!903 = metadata !{i32 699, i32 0, metadata !894, null}
!904 = metadata !{i32 701, i32 0, metadata !898, null}
!905 = metadata !{i32 712, i32 0, metadata !900, null}
!906 = metadata !{i32 714, i32 0, metadata !897, null}
!907 = metadata !{i32 720, i32 0, metadata !896, null}
!908 = metadata !{i32 723, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !894, i32 722, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!910 = metadata !{i32 725, i32 0, metadata !894, null}
!911 = metadata !{i32 731, i32 0, metadata !226, null}
!912 = metadata !{i32 744, i32 0, metadata !315, null}
!913 = metadata !{i32 745, i32 0, metadata !315, null}
!914 = metadata !{i32 746, i32 0, metadata !315, null}
!915 = metadata !{i32 754, i32 0, metadata !315, null}
!916 = metadata !{i32 755, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !315, i32 754, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!918 = metadata !{i32 757, i32 0, metadata !917, null}
!919 = metadata !{i32 759, i32 0, metadata !315, null}
!920 = metadata !{i32 760, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !315, i32 759, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!922 = metadata !{i32 763, i32 0, metadata !921, null}
!923 = metadata !{i32 765, i32 0, metadata !315, null}
!924 = metadata !{i32 766, i32 0, metadata !315, null}
!925 = metadata !{i32 767, i32 0, metadata !315, null}
!926 = metadata !{i32 773, i32 0, metadata !315, null}
!927 = metadata !{i32 776, i32 0, metadata !322, null}
!928 = metadata !{i32 777, i32 0, metadata !322, null}
!929 = metadata !{i32 779, i32 0, metadata !322, null}
!930 = metadata !{i32 780, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !322, i32 780, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!932 = metadata !{i32 781, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !931, i32 780, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!934 = metadata !{i32 782, i32 0, metadata !933, null}
!935 = metadata !{i32 783, i32 0, metadata !933, null}
!936 = metadata !{i32 787, i32 0, metadata !331, null}
!937 = metadata !{i32 788, i32 0, metadata !331, null}
!938 = metadata !{i32 789, i32 0, metadata !331, null}
!939 = metadata !{i32 791, i32 0, metadata !331, null}
!940 = metadata !{i32 793, i32 0, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !331, i32 793, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!942 = metadata !{i32 794, i32 0, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !941, i32 793, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!944 = metadata !{i32 796, i32 0, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !331, i32 796, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!946 = metadata !{i32 797, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !945, i32 796, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!948 = metadata !{i32 798, i32 0, metadata !947, null}
!949 = metadata !{i32 802, i32 0, metadata !341, null}
!950 = metadata !{i32 803, i32 0, metadata !341, null}
!951 = metadata !{i32 804, i32 0, metadata !341, null}
!952 = metadata !{i32 806, i32 0, metadata !341, null}
!953 = metadata !{i32 807, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !341, i32 807, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!955 = metadata !{i32 808, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !957, i32 808, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!957 = metadata !{i32 786443, metadata !1, metadata !954, i32 807, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!958 = metadata !{i32 815, i32 0, metadata !957, null}
!959 = metadata !{i32 809, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !956, i32 808, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!961 = metadata !{i32 810, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !960, i32 809, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!963 = metadata !{i32 811, i32 0, metadata !962, null}
!964 = metadata !{i32 812, i32 0, metadata !962, null}
!965 = metadata !{i32 819, i32 0, metadata !351, null}
!966 = metadata !{i32 820, i32 0, metadata !351, null}
!967 = metadata !{i32 821, i32 0, metadata !351, null}
!968 = metadata !{i32 823, i32 0, metadata !351, null}
!969 = metadata !{i32 824, i32 0, metadata !970, null}
!970 = metadata !{i32 786443, metadata !1, metadata !351, i32 824, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!971 = metadata !{i32 825, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !970, i32 824, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!973 = metadata !{i32 826, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !972, i32 825, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!975 = metadata !{i32 827, i32 0, metadata !974, null}
!976 = metadata !{i32 828, i32 0, metadata !974, null}
!977 = metadata !{i32 832, i32 0, metadata !357, null}
!978 = metadata !{i32 833, i32 0, metadata !357, null}
!979 = metadata !{i32 834, i32 0, metadata !357, null}
!980 = metadata !{i32 837, i32 0, metadata !357, null}
!981 = metadata !{i32 843, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !357, i32 843, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!983 = metadata !{i32 844, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !982, i32 843, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!985 = metadata !{i32 851, i32 0, metadata !357, null}
!986 = metadata !{i32 852, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !357, i32 851, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!988 = metadata !{i32 853, i32 0, metadata !987, null}
!989 = metadata !{i32 854, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !987, i32 854, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!991 = metadata !{i32 855, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !990, i32 854, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!993 = metadata !{i32 856, i32 0, metadata !992, null}
!994 = metadata !{i32 864, i32 0, metadata !369, null}
!995 = metadata !{i32 865, i32 0, metadata !369, null}
!996 = metadata !{i32 866, i32 0, metadata !369, null}
!997 = metadata !{i32 868, i32 0, metadata !369, null}
!998 = metadata !{i32 870, i32 0, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !369, i32 870, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1000 = metadata !{i32 871, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !999, i32 870, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1002 = metadata !{i32 872, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !1001, i32 871, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1004 = metadata !{i32 879, i32 0, metadata !1003, null}
!1005 = metadata !{i32 876, i32 0, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !1, metadata !1003, i32 874, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1007 = metadata !{i32 877, i32 0, metadata !1006, null}
!1008 = metadata !{i32 874, i32 0, metadata !1003, null}
!1009 = metadata !{i32 873, i32 0, metadata !1003, null}
!1010 = metadata !{i32 875, i32 0, metadata !1006, null}
!1011 = metadata !{i32 878, i32 0, metadata !1006, null}
!1012 = metadata !{i32 880, i32 0, metadata !1003, null}
!1013 = metadata !{i32 884, i32 0, metadata !380, null}
!1014 = metadata !{i32 885, i32 0, metadata !380, null}
!1015 = metadata !{i32 887, i32 0, metadata !380, null}
!1016 = metadata !{i32 888, i32 0, metadata !380, null}
!1017 = metadata !{i32 889, i32 0, metadata !380, null}
!1018 = metadata !{i32 890, i32 0, metadata !323, null}
!1019 = metadata !{i32 892, i32 0, metadata !383, null}
!1020 = metadata !{i32 893, i32 0, metadata !383, null}
!1021 = metadata !{i32 894, i32 0, metadata !383, null}
!1022 = metadata !{i32 896, i32 0, metadata !383, null}
!1023 = metadata !{i32 897, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !383, i32 897, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1025 = metadata !{i32 898, i32 0, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1, metadata !1024, i32 897, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1027 = metadata !{i32 924, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !1029, i32 919, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1029 = metadata !{i32 786443, metadata !1, metadata !1030, i32 919, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1030 = metadata !{i32 786443, metadata !1, metadata !1026, i32 903, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1031 = metadata !{i32 925, i32 0, metadata !1028, null}
!1032 = metadata !{i32 915, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1034, i32 910, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1034 = metadata !{i32 786443, metadata !1, metadata !1030, i32 910, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1035 = metadata !{i32 916, i32 0, metadata !1033, null}
!1036 = metadata !{i32 910, i32 0, metadata !1034, null}
!1037 = metadata !{i32 903, i32 0, metadata !1026, null}
!1038 = metadata !{i32 905, i32 0, metadata !1030, null}
!1039 = metadata !{i32 917, i32 0, metadata !1033, null}
!1040 = metadata !{i32 919, i32 0, metadata !1029, null}
!1041 = metadata !{i32 926, i32 0, metadata !1028, null}
!1042 = metadata !{i32 929, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !1026, i32 928, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1044 = metadata !{i32 931, i32 0, metadata !1026, null}
!1045 = metadata !{i32 935, i32 0, metadata !394, null}
!1046 = metadata !{i32 936, i32 0, metadata !394, null}
!1047 = metadata !{i32 937, i32 0, metadata !394, null}
!1048 = metadata !{i32 939, i32 0, metadata !394, null}
!1049 = metadata !{i32 940, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !394, i32 940, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1051 = metadata !{i32 941, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1050, i32 940, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1053 = metadata !{i32 967, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1055, i32 962, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1055 = metadata !{i32 786443, metadata !1, metadata !1056, i32 962, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1056 = metadata !{i32 786443, metadata !1, metadata !1052, i32 946, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1057 = metadata !{i32 968, i32 0, metadata !1054, null}
!1058 = metadata !{i32 958, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !1060, i32 953, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1060 = metadata !{i32 786443, metadata !1, metadata !1056, i32 953, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1061 = metadata !{i32 959, i32 0, metadata !1059, null}
!1062 = metadata !{i32 953, i32 0, metadata !1060, null}
!1063 = metadata !{i32 946, i32 0, metadata !1052, null}
!1064 = metadata !{i32 948, i32 0, metadata !1056, null}
!1065 = metadata !{i32 960, i32 0, metadata !1059, null}
!1066 = metadata !{i32 962, i32 0, metadata !1055, null}
!1067 = metadata !{i32 969, i32 0, metadata !1054, null}
!1068 = metadata !{i32 972, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1052, i32 971, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1070 = metadata !{i32 974, i32 0, metadata !1052, null}
!1071 = metadata !{i32 980, i32 0, metadata !315, null}
!1072 = metadata !{i32 992, i32 0, metadata !404, null}
!1073 = metadata !{i32 995, i32 0, metadata !404, null}
!1074 = metadata !{i32 996, i32 0, metadata !404, null}
!1075 = metadata !{i32 1002, i32 0, metadata !404, null}
!1076 = metadata !{i32 1003, i32 0, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !1, metadata !404, i32 1002, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1078 = metadata !{i32 1005, i32 0, metadata !1077, null}
!1079 = metadata !{i32 1007, i32 0, metadata !404, null}
!1080 = metadata !{i32 1008, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !404, i32 1007, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1082 = metadata !{i32 1011, i32 0, metadata !1081, null}
!1083 = metadata !{i32 1018, i32 0, metadata !404, null}
!1084 = metadata !{i32 1021, i32 0, metadata !414, null}
!1085 = metadata !{i32 1023, i32 0, metadata !414, null}
!1086 = metadata !{i32 1024, i32 0, metadata !414, null}
!1087 = metadata !{i32 1025, i32 0, metadata !415, null}
!1088 = metadata !{i32 1027, i32 0, metadata !420, null}
!1089 = metadata !{i32 1028, i32 0, metadata !420, null}
!1090 = metadata !{i32 1030, i32 0, metadata !420, null}
!1091 = metadata !{i32 1032, i32 0, metadata !415, null}
!1092 = metadata !{i32 1034, i32 0, metadata !424, null}
!1093 = metadata !{i32 1035, i32 0, metadata !424, null}
!1094 = metadata !{i32 1037, i32 0, metadata !424, null}
!1095 = metadata !{i32 1038, i32 0, metadata !415, null}
!1096 = metadata !{i32 1040, i32 0, metadata !428, null}
!1097 = metadata !{i32 1042, i32 0, metadata !428, null}
!1098 = metadata !{i32 1043, i32 0, metadata !415, null}
!1099 = metadata !{i32 1045, i32 0, metadata !431, null}
!1100 = metadata !{i32 1046, i32 0, metadata !431, null}
!1101 = metadata !{i32 1049, i32 0, metadata !431, null}
!1102 = metadata !{i32 1051, i32 0, metadata !415, null}
!1103 = metadata !{i32 1053, i32 0, metadata !435, null}
!1104 = metadata !{i32 1054, i32 0, metadata !435, null}
!1105 = metadata !{i32 1056, i32 0, metadata !435, null}
!1106 = metadata !{i32 1058, i32 0, metadata !415, null}
!1107 = metadata !{i32 1060, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !415, i32 1059, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1109 = metadata !{i32 1061, i32 0, metadata !415, null}
!1110 = metadata !{i32 1063, i32 0, metadata !439, null}
!1111 = metadata !{i32 1064, i32 0, metadata !439, null}
!1112 = metadata !{i32 1066, i32 0, metadata !439, null}
!1113 = metadata !{i32 1067, i32 0, metadata !415, null}
!1114 = metadata !{i32 1069, i32 0, metadata !442, null}
!1115 = metadata !{i32 1070, i32 0, metadata !442, null}
!1116 = metadata !{i32 1072, i32 0, metadata !442, null}
!1117 = metadata !{i32 1073, i32 0, metadata !415, null}
!1118 = metadata !{i32 1077, i32 0, metadata !404, null}
!1119 = metadata !{i32 1078, i32 0, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !1, metadata !404, i32 1077, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1121 = metadata !{i32 1079, i32 0, metadata !1120, null}
!1122 = metadata !{i32 1080, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !1, metadata !404, i32 1079, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1124 = metadata !{i32 1081, i32 0, metadata !1123, null}
!1125 = metadata !{i32 1082, i32 0, metadata !404, null}
!1126 = metadata !{i32 1094, i32 0, metadata !444, null}
!1127 = metadata !{i32 1101, i32 0, metadata !444, null}
!1128 = metadata !{i32 1102, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !1, metadata !444, i32 1101, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1130 = metadata !{i32 1104, i32 0, metadata !1129, null}
!1131 = metadata !{i32 1106, i32 0, metadata !444, null}
!1132 = metadata !{i32 1107, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !444, i32 1106, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1134 = metadata !{i32 1108, i32 0, metadata !1133, null}
!1135 = metadata !{i32 1109, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1, metadata !444, i32 1108, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c]
!1137 = metadata !{i32 1110, i32 0, metadata !1136, null}
!1138 = metadata !{i32 1111, i32 0, metadata !444, null}
