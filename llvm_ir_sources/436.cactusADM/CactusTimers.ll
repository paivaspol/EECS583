; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.cClockFuncs = type { i8*, i32, i8* (i32)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*, %struct.cTimerVal*)*, void (i32, i8*, %struct.cTimerVal*)* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }
%struct.t_Timer = type { i8** }
%struct.cTimerData = type { i32, %struct.cTimerVal* }

@n_timers = internal unnamed_addr global i32 0, align 4
@timers = internal global %struct.cHandledData* null, align 8
@n_clocks = internal unnamed_addr global i32 0, align 4
@clocks = internal global %struct.cHandledData* null, align 8
@n_clock_vals = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"UNNAMED TIMER %5d\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [40 x i8] c"CCTK_TimerDestroy: Timer '%s' not found\00", align 1
@.str4 = private unnamed_addr constant [39 x i8] c"CCTK_TimerDestroyI: Timer %d not found\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"CCTK_TimerStart: Timer %s not found\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"CCTK_TimerStartI: Timer %d not found\00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"CCTK_TimerStop: Timer %s not found\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"CCTK_TimerStopI: Timer %d not found\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"CCTK_TimerReset: Timer %s not found\00", align 1
@.str10 = private unnamed_addr constant [37 x i8] c"CCTK_TimerResetI: Timer %d not found\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"CCTK_TimerPrintDataI: Timer %d not found\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"Results from timer \22%s\22:\0A\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"\09%s: %d %s\0A\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"\09%s: %.3f %s\0A\00", align 1
@.str15 = private unnamed_addr constant [55 x i8] c"CCTK_TimerPrintDataI: Unknown data type for timer info\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"CCTK_TimerPrintData: Clock %s not found\00", align 1
@.str17 = private unnamed_addr constant [40 x i8] c"CCTK_TimerPrintData: Timer %s not found\00", align 1
@.str18 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/util/CactusTimers.c,v 1.24 2002/01/02 19:36:20 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_CactusTimers_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str18, i64 0, i64 0), !dbg !353
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ClockRegister(i8* %clockname, %struct.cClockFuncs* nocapture readonly %functions) #1 {
  tail call void @llvm.dbg.value(metadata i8* %clockname, i64 0, metadata !77, metadata !354), !dbg !355
  tail call void @llvm.dbg.value(metadata %struct.cClockFuncs* %functions, i64 0, metadata !78, metadata !354), !dbg !356
  %1 = tail call i8* @malloc(i64 72) #8, !dbg !357
  %2 = icmp eq i8* %1, null, !dbg !358
  br i1 %2, label %.preheader, label %3, !dbg !360

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %1 to i8**, !dbg !361
  store i8* %clockname, i8** %4, align 8, !dbg !363, !tbaa !364
  %5 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 1, !dbg !370
  %6 = load i32* %5, align 4, !dbg !370, !tbaa !371
  %7 = getelementptr inbounds i8* %1, i64 8, !dbg !372
  %8 = bitcast i8* %7 to i32*, !dbg !372
  store i32 %6, i32* %8, align 4, !dbg !373, !tbaa !371
  %9 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 2, !dbg !374
  %10 = getelementptr inbounds i8* %1, i64 16, !dbg !375
  %11 = bitcast i8* (i32)** %9 to <2 x i64>*, !dbg !374
  %12 = load <2 x i64>* %11, align 8, !dbg !374, !tbaa !376
  %13 = bitcast i8* %10 to <2 x i64>*, !dbg !375
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !375, !tbaa !376
  %14 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 4, !dbg !377
  %15 = getelementptr inbounds i8* %1, i64 32, !dbg !378
  %16 = bitcast void (i32, i8*)** %14 to <2 x i64>*, !dbg !377
  %17 = load <2 x i64>* %16, align 8, !dbg !377, !tbaa !376
  %18 = bitcast i8* %15 to <2 x i64>*, !dbg !378
  store <2 x i64> %17, <2 x i64>* %18, align 8, !dbg !378, !tbaa !376
  %19 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 6, !dbg !379
  %20 = getelementptr inbounds i8* %1, i64 48, !dbg !380
  %21 = bitcast void (i32, i8*)** %19 to <2 x i64>*, !dbg !379
  %22 = load <2 x i64>* %21, align 8, !dbg !379, !tbaa !376
  %23 = bitcast i8* %20 to <2 x i64>*, !dbg !380
  store <2 x i64> %22, <2 x i64>* %23, align 8, !dbg !380, !tbaa !376
  %24 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 8, !dbg !381
  %25 = bitcast void (i32, i8*, %struct.cTimerVal*)** %24 to i64*, !dbg !381
  %26 = load i64* %25, align 8, !dbg !381, !tbaa !382
  %27 = getelementptr inbounds i8* %1, i64 64, !dbg !383
  %28 = bitcast i8* %27 to i64*, !dbg !383
  store i64 %26, i64* %28, align 8, !dbg !383, !tbaa !382
  br label %.preheader, !dbg !384

.preheader:                                       ; preds = %0, %3
  %29 = load i32* @n_timers, align 4, !dbg !385, !tbaa !388
  %30 = icmp sgt i32 %29, 0, !dbg !389
  br i1 %30, label %.lr.ph, label %._crit_edge, !dbg !390

.lr.ph:                                           ; preds = %.preheader
  %31 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 2, !dbg !391
  br label %32, !dbg !390

; <label>:32                                      ; preds = %.lr.ph, %51
  %handle.01 = phi i32 [ 0, %.lr.ph ], [ %52, %51 ]
  %33 = load %struct.cHandledData** @timers, align 8, !dbg !395, !tbaa !376
  %34 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %33, i32 %handle.01) #8, !dbg !396
  %35 = bitcast i8* %34 to i8**, !dbg !397
  %36 = load i8** %35, align 8, !dbg !397, !tbaa !398
  %37 = load i32* @n_clocks, align 4, !dbg !400, !tbaa !388
  %38 = add nsw i32 %37, 1, !dbg !401
  %39 = sext i32 %38 to i64, !dbg !402
  %40 = shl nsw i64 %39, 3, !dbg !403
  %41 = tail call i8* @realloc(i8* %36, i64 %40) #8, !dbg !404
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !79, metadata !354), !dbg !405
  %42 = icmp eq i8* %41, null, !dbg !406
  br i1 %42, label %51, label %43, !dbg !407

; <label>:43                                      ; preds = %32
  %44 = bitcast i8* %34 to i8***, !dbg !397
  store i8* %41, i8** %35, align 8, !dbg !408, !tbaa !398
  %45 = load i8* (i32)** %31, align 8, !dbg !391, !tbaa !409
  %46 = tail call i8* %45(i32 %handle.01) #8, !dbg !410
  %47 = load i32* @n_clocks, align 4, !dbg !411, !tbaa !388
  %48 = sext i32 %47 to i64, !dbg !412
  %49 = load i8*** %44, align 8, !dbg !413, !tbaa !398
  %50 = getelementptr inbounds i8** %49, i64 %48, !dbg !412
  store i8* %46, i8** %50, align 8, !dbg !414, !tbaa !376
  br label %51, !dbg !415

; <label>:51                                      ; preds = %32, %43
  %52 = add nuw nsw i32 %handle.01, 1, !dbg !416
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !80, metadata !354), !dbg !417
  %53 = load i32* @n_timers, align 4, !dbg !385, !tbaa !388
  %54 = icmp slt i32 %52, %53, !dbg !389
  br i1 %54, label %32, label %._crit_edge, !dbg !390

._crit_edge:                                      ; preds = %51, %.preheader
  %55 = tail call i32 @Util_NewHandle(%struct.cHandledData** @clocks, i8* %clockname, i8* %1) #8, !dbg !418
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !80, metadata !354), !dbg !417
  %56 = load i32* @n_clocks, align 4, !dbg !419, !tbaa !388
  %57 = add nsw i32 %56, 1, !dbg !419
  store i32 %57, i32* @n_clocks, align 4, !dbg !419, !tbaa !388
  %58 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 1, !dbg !420
  %59 = load i32* %58, align 4, !dbg !420, !tbaa !371
  %60 = load i32* @n_clock_vals, align 4, !dbg !421, !tbaa !388
  %61 = add nsw i32 %60, %59, !dbg !421
  store i32 %61, i32* @n_clock_vals, align 4, !dbg !421, !tbaa !388
  ret i32 %55, !dbg !422
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_ClockName(i32 %handle) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !87, metadata !354), !dbg !423
  %1 = load %struct.cHandledData** @clocks, align 8, !dbg !424, !tbaa !376
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #8, !dbg !425
  %3 = icmp eq i8* %2, null, !dbg !426
  br i1 %3, label %7, label %4, !dbg !426

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**, !dbg !427
  %6 = load i8** %5, align 8, !dbg !427, !tbaa !364
  br label %7, !dbg !426

; <label>:7                                       ; preds = %0, %4
  %8 = phi i8* [ %6, %4 ], [ null, %0 ], !dbg !426
  ret i8* %8, !dbg !428
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ClockHandle(i8* nocapture readonly %clockname) #1 {
  tail call void @llvm.dbg.value(metadata i8* %clockname, i64 0, metadata !93, metadata !354), !dbg !429
  %1 = load i32* @n_clocks, align 4, !dbg !430, !tbaa !388
  %handle.01 = add nsw i32 %1, -1, !dbg !433
  %2 = icmp sgt i32 %1, 0, !dbg !434
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !436

.lr.ph:                                           ; preds = %0, %.backedge
  %handle.02 = phi i32 [ %handle.0, %.backedge ], [ %handle.01, %0 ]
  %3 = load %struct.cHandledData** @clocks, align 8, !dbg !437, !tbaa !376
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.02) #8, !dbg !439
  %5 = icmp eq i8* %4, null, !dbg !440
  br i1 %5, label %.backedge, label %7, !dbg !442

.backedge:                                        ; preds = %.lr.ph, %7
  %handle.0 = add nsw i32 %handle.02, -1, !dbg !433
  %6 = icmp sgt i32 %handle.02, 0, !dbg !434
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !436

; <label>:7                                       ; preds = %.lr.ph
  %8 = bitcast i8* %4 to i8**, !dbg !443
  %9 = load i8** %8, align 8, !dbg !443, !tbaa !364
  %10 = tail call i32 @strcmp(i8* %9, i8* %clockname) #8, !dbg !444
  %11 = icmp eq i32 %10, 0, !dbg !445
  br i1 %11, label %._crit_edge, label %.backedge, !dbg !446

._crit_edge:                                      ; preds = %.backedge, %7, %0
  %handle.0.lcssa = phi i32 [ %handle.01, %0 ], [ %handle.0, %.backedge ], [ %handle.02, %7 ]
  ret i32 %handle.0.lcssa, !dbg !447
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumClocks() #5 {
  %1 = load i32* @n_clocks, align 4, !dbg !448, !tbaa !388
  ret i32 %1, !dbg !449
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numclocks_(i32* nocapture %nclocks) #1 {
  tail call void @llvm.dbg.value(metadata i32* %nclocks, i64 0, metadata !104, metadata !354), !dbg !450
  %1 = load i32* @n_clocks, align 4, !dbg !451, !tbaa !388
  store i32 %1, i32* %nclocks, align 4, !dbg !453, !tbaa !388
  ret void, !dbg !454
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumTimers() #5 {
  %1 = load i32* @n_timers, align 4, !dbg !455, !tbaa !388
  ret i32 %1, !dbg !456
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numtimers_(i32* nocapture %ntimers) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ntimers, i64 0, metadata !108, metadata !354), !dbg !457
  %1 = load i32* @n_timers, align 4, !dbg !458, !tbaa !388
  store i32 %1, i32* %ntimers, align 4, !dbg !460, !tbaa !388
  ret void, !dbg !461
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_TimerName(i32 %timer_handle) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timer_handle, i64 0, metadata !111, metadata !354), !dbg !462
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !463, !tbaa !376
  %2 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %1, i32 %timer_handle) #8, !dbg !464
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !112, metadata !354), !dbg !465
  ret i8* %2, !dbg !466
}

; Function Attrs: optsize
declare i8* @Util_GetHandleName(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerCreate(i8* %timername) #1 {
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !115, metadata !354), !dbg !467
  %1 = tail call fastcc i32 @CCTKi_TimerCreate(i8* %timername) #9, !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !116, metadata !354), !dbg !469
  ret i32 %1, !dbg !470
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CCTKi_TimerCreate(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !285, metadata !354), !dbg !471
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !472, !tbaa !376
  %2 = bitcast %struct.t_Timer** %timer to i8**, !dbg !474
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #8, !dbg !475
  %4 = icmp sgt i32 %3, -1, !dbg !476
  br i1 %4, label %.loopexit, label %5, !dbg !477

; <label>:5                                       ; preds = %0
  %6 = call i8* @malloc(i64 8) #8, !dbg !478
  store i8* %6, i8** %2, align 8, !dbg !480, !tbaa !376
  %7 = icmp eq i8* %6, null, !dbg !481
  br i1 %7, label %.loopexit, label %8, !dbg !483

; <label>:8                                       ; preds = %5
  %9 = bitcast i8* %6 to i8**
  %10 = load i32* @n_clocks, align 4, !dbg !484, !tbaa !388
  %11 = sext i32 %10 to i64, !dbg !484
  %12 = shl nsw i64 %11, 3, !dbg !486
  %13 = call i8* @malloc(i64 %12) #8, !dbg !487
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !287, metadata !354), !dbg !488
  store i8* %13, i8** %9, align 8, !dbg !489, !tbaa !398
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !287, metadata !354), !dbg !488
  %14 = load %struct.t_Timer** %timer, align 8, !dbg !490, !tbaa !376
  %15 = getelementptr inbounds %struct.t_Timer* %14, i64 0, i32 0, !dbg !492
  %16 = load i8*** %15, align 8, !dbg !492, !tbaa !398
  %17 = icmp eq i8** %16, null, !dbg !490
  %18 = bitcast %struct.t_Timer* %14 to i8*, !dbg !493
  br i1 %17, label %39, label %19, !dbg !495

; <label>:19                                      ; preds = %8
  %20 = call i32 @Util_NewHandle(%struct.cHandledData** @timers, i8* %timername, i8* %18) #8, !dbg !496
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !289, metadata !354), !dbg !498
  %21 = load i32* @n_timers, align 4, !dbg !499, !tbaa !388
  %22 = add nsw i32 %21, 1, !dbg !499
  store i32 %22, i32* @n_timers, align 4, !dbg !499, !tbaa !388
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !290, metadata !354), !dbg !500
  %23 = load i32* @n_clocks, align 4, !dbg !501, !tbaa !388
  %24 = icmp sgt i32 %23, 0, !dbg !504
  br i1 %24, label %.lr.ph, label %.loopexit, !dbg !505

.lr.ph:                                           ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %19 ]
  %25 = load %struct.cHandledData** @clocks, align 8, !dbg !506, !tbaa !376
  %26 = trunc i64 %indvars.iv to i32, !dbg !508
  %27 = call i8* @Util_GetHandledData(%struct.cHandledData* %25, i32 %26) #8, !dbg !508
  %28 = getelementptr inbounds i8* %27, i64 16, !dbg !509
  %29 = bitcast i8* %28 to i8* (i32)**, !dbg !509
  %30 = load i8* (i32)** %29, align 8, !dbg !509, !tbaa !409
  %31 = call i8* %30(i32 %20) #8, !dbg !510
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !287, metadata !354), !dbg !488
  %32 = load %struct.t_Timer** %timer, align 8, !dbg !511, !tbaa !376
  %33 = getelementptr inbounds %struct.t_Timer* %32, i64 0, i32 0, !dbg !512
  %34 = load i8*** %33, align 8, !dbg !512, !tbaa !398
  %35 = getelementptr inbounds i8** %34, i64 %indvars.iv, !dbg !511
  store i8* %31, i8** %35, align 8, !dbg !513, !tbaa !376
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !505
  %36 = load i32* @n_clocks, align 4, !dbg !501, !tbaa !388
  %37 = sext i32 %36 to i64, !dbg !504
  %38 = icmp slt i64 %indvars.iv.next, %37, !dbg !504
  br i1 %38, label %.lr.ph, label %.loopexit, !dbg !505

; <label>:39                                      ; preds = %8
  call void @free(i8* %18) #9, !dbg !514
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !286, metadata !354), !dbg !515
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %19, %5, %0, %39
  %retval.0 = phi i32 [ -2, %39 ], [ -1, %0 ], [ -2, %5 ], [ %20, %19 ], [ %20, %.lr.ph ]
  ret i32 %retval.0, !dbg !516
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timercreate_(i32* nocapture %timer_index, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %timer_index, i64 0, metadata !123, metadata !354), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !124, metadata !354), !dbg !518
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !125, metadata !354), !dbg !518
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !519
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !126, metadata !354), !dbg !519
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !115, metadata !354) #7, !dbg !520
  %2 = tail call fastcc i32 @CCTKi_TimerCreate(i8* %1) #8, !dbg !522
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !116, metadata !354) #7, !dbg !523
  store i32 %2, i32* %timer_index, align 4, !dbg !524, !tbaa !388
  tail call void @free(i8* %1) #9, !dbg !525
  ret void, !dbg !526
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerCreateI() #1 {
  %timername = alloca [40 x i8], align 16
  %1 = getelementptr inbounds [40 x i8]* %timername, i64 0, i64 0, !dbg !527
  call void @llvm.lifetime.start(i64 40, i8* %1) #7, !dbg !527
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %timername, metadata !130, metadata !354), !dbg !528
  %2 = load i32* @n_timers, align 4, !dbg !529, !tbaa !388
  %3 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 40, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %2) #8, !dbg !529
  %4 = call fastcc i32 @CCTKi_TimerCreate(i8* %1) #9, !dbg !530
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !129, metadata !354), !dbg !531
  call void @llvm.lifetime.end(i64 40, i8* %1) #7, !dbg !532
  ret i32 %4, !dbg !532
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timercreatei_(i32* nocapture %ierr) #1 {
  %timername.i = alloca [40 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !136, metadata !354), !dbg !533
  %1 = getelementptr inbounds [40 x i8]* %timername.i, i64 0, i64 0, !dbg !534
  call void @llvm.lifetime.start(i64 40, i8* %1) #7, !dbg !534
  %2 = load i32* @n_timers, align 4, !dbg !536, !tbaa !388
  %3 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 40, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %2) #8, !dbg !536
  %4 = call fastcc i32 @CCTKi_TimerCreate(i8* %1) #8, !dbg !537
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !129, metadata !354) #7, !dbg !538
  call void @llvm.lifetime.end(i64 40, i8* %1) #7, !dbg !539
  store i32 %4, i32* %ierr, align 4, !dbg !540, !tbaa !388
  call void @llvm.dbg.declare(metadata [40 x i8]* %timername.i, metadata !130, metadata !354), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerDestroy(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !139, metadata !354), !dbg !543
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !544, !tbaa !376
  %2 = bitcast %struct.t_Timer** %timer to i8**, !dbg !545
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #8, !dbg !546
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !141, metadata !354), !dbg !547
  %4 = icmp sgt i32 %3, -1, !dbg !548
  br i1 %4, label %5, label %7, !dbg !550

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !140, metadata !354), !dbg !551
  %6 = load %struct.t_Timer** %timer, align 8, !dbg !552, !tbaa !376
  call fastcc void @CCTKi_TimerDestroy(i32 %3, %struct.t_Timer* %6) #9, !dbg !554
  br label %9, !dbg !555

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 493, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* %timername) #8, !dbg !556
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true, !dbg !558
  %10 = sext i1 %not. to i32, !dbg !558
  ret i32 %10, !dbg !559
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerDestroy(i32 %this_timer, %struct.t_Timer* %timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !295, metadata !354), !dbg !560
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %timer, i64 0, metadata !296, metadata !354), !dbg !561
  %1 = icmp eq %struct.t_Timer* %timer, null, !dbg !562
  br i1 %1, label %27, label %2, !dbg !564

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !565
  %4 = load i8*** %3, align 8, !dbg !565, !tbaa !398
  %5 = icmp eq i8** %4, null, !dbg !566
  br i1 %5, label %27, label %.preheader, !dbg !567

.preheader:                                       ; preds = %2
  %6 = bitcast i8** %4 to i8*
  %7 = load i32* @n_clocks, align 4, !dbg !568, !tbaa !388
  %8 = icmp sgt i32 %7, 0, !dbg !572
  br i1 %8, label %.lr.ph, label %.preheader._crit_edge, !dbg !573

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %9 = load %struct.cHandledData** @clocks, align 8, !dbg !574, !tbaa !376
  %10 = trunc i64 %indvars.iv to i32, !dbg !576
  %11 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %9, i32 %10) #8, !dbg !576
  %12 = getelementptr inbounds i8* %11, i64 24, !dbg !577
  %13 = bitcast i8* %12 to void (i32, i8*)**, !dbg !577
  %14 = load void (i32, i8*)** %13, align 8, !dbg !577, !tbaa !578
  %15 = load i8*** %3, align 8, !dbg !579, !tbaa !398
  %16 = getelementptr inbounds i8** %15, i64 %indvars.iv, !dbg !580
  %17 = load i8** %16, align 8, !dbg !580, !tbaa !376
  tail call void %14(i32 %this_timer, i8* %17) #8, !dbg !581
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !573
  %18 = load i32* @n_clocks, align 4, !dbg !568, !tbaa !388
  %19 = sext i32 %18 to i64, !dbg !572
  %20 = icmp slt i64 %indvars.iv.next, %19, !dbg !572
  br i1 %20, label %.lr.ph, label %._crit_edge, !dbg !573

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = bitcast %struct.t_Timer* %timer to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !dbg !582, !tbaa !398
  br label %.preheader._crit_edge, !dbg !573

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge
  %21 = phi i8* [ %.pre, %._crit_edge ], [ %6, %.preheader ]
  tail call void @free(i8* %21) #9, !dbg !583
  %22 = bitcast %struct.t_Timer* %timer to i8*, !dbg !584
  tail call void @free(i8* %22) #9, !dbg !585
  %23 = load %struct.cHandledData** @timers, align 8, !dbg !586, !tbaa !376
  %24 = tail call i32 @Util_DeleteHandle(%struct.cHandledData* %23, i32 %this_timer) #8, !dbg !587
  %25 = load i32* @n_timers, align 4, !dbg !588, !tbaa !388
  %26 = add nsw i32 %25, -1, !dbg !588
  store i32 %26, i32* @n_timers, align 4, !dbg !588, !tbaa !388
  br label %27, !dbg !589

; <label>:27                                      ; preds = %2, %0, %.preheader._crit_edge
  ret void, !dbg !590
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerdestroy_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !144, metadata !354), !dbg !591
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !145, metadata !354), !dbg !592
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !146, metadata !354), !dbg !592
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !147, metadata !354), !dbg !593
  %2 = tail call i32 @CCTK_TimerDestroy(i8* %1) #9, !dbg !594
  store i32 %2, i32* %ierr, align 4, !dbg !595, !tbaa !388
  tail call void @free(i8* %1) #9, !dbg !596
  ret void, !dbg !597
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerDestroyI(i32 %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !152, metadata !354), !dbg !598
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !599, !tbaa !376
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #8, !dbg !600
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %5, i64 0, metadata !153, metadata !354), !dbg !601
  %3 = icmp ne i8* %2, null, !dbg !602
  br i1 %3, label %4, label %6, !dbg !604

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*, !dbg !600
  tail call fastcc void @CCTKi_TimerDestroy(i32 %this_timer, %struct.t_Timer* %5) #9, !dbg !605
  br label %8, !dbg !607

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 541, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0), i32 %this_timer) #8, !dbg !608
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true, !dbg !610
  %9 = sext i1 %not. to i32, !dbg !610
  ret i32 %9, !dbg !611
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerdestroyi_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !158, metadata !354), !dbg !612
  tail call void @llvm.dbg.value(metadata i32* %this_timer, i64 0, metadata !159, metadata !354), !dbg !613
  %1 = load i32* %this_timer, align 4, !dbg !614, !tbaa !388
  %2 = tail call i32 @CCTK_TimerDestroyI(i32 %1) #9, !dbg !615
  store i32 %2, i32* %ierr, align 4, !dbg !616, !tbaa !388
  ret void, !dbg !617
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStart(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !162, metadata !354), !dbg !618
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !619, !tbaa !376
  %2 = bitcast %struct.t_Timer** %timer to i8**, !dbg !620
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #8, !dbg !621
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !164, metadata !354), !dbg !622
  %4 = icmp sgt i32 %3, -1, !dbg !623
  br i1 %4, label %5, label %7, !dbg !625

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !163, metadata !354), !dbg !626
  %6 = load %struct.t_Timer** %timer, align 8, !dbg !627, !tbaa !376
  call fastcc void @CCTKi_TimerStart(i32 %3, %struct.t_Timer* %6) #9, !dbg !629
  br label %9, !dbg !630

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 629, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i8* %timername) #8, !dbg !631
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true, !dbg !633
  %10 = sext i1 %not. to i32, !dbg !633
  ret i32 %10, !dbg !634
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerStart(i32 %this_timer, %struct.t_Timer* readonly %timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !301, metadata !354), !dbg !635
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %timer, i64 0, metadata !302, metadata !354), !dbg !636
  %1 = icmp eq %struct.t_Timer* %timer, null, !dbg !637
  br i1 %1, label %.loopexit, label %2, !dbg !639

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !640
  %4 = load i8*** %3, align 8, !dbg !640, !tbaa !398
  %5 = icmp ne i8** %4, null, !dbg !641
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0, !dbg !642
  %or.cond = and i1 %5, %7, !dbg !646
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !646

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %8 = load %struct.cHandledData** @clocks, align 8, !dbg !647, !tbaa !376
  %9 = trunc i64 %indvars.iv to i32, !dbg !649
  %10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %8, i32 %9) #8, !dbg !649
  %11 = getelementptr inbounds i8* %10, i64 32, !dbg !650
  %12 = bitcast i8* %11 to void (i32, i8*)**, !dbg !650
  %13 = load void (i32, i8*)** %12, align 8, !dbg !650, !tbaa !651
  %14 = load i8*** %3, align 8, !dbg !652, !tbaa !398
  %15 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !653
  %16 = load i8** %15, align 8, !dbg !653, !tbaa !376
  tail call void %13(i32 %this_timer, i8* %16) #8, !dbg !654
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !655
  %17 = load i32* @n_clocks, align 4, !dbg !656, !tbaa !388
  %18 = sext i32 %17 to i64, !dbg !642
  %19 = icmp slt i64 %indvars.iv.next, %18, !dbg !642
  br i1 %19, label %.lr.ph, label %.loopexit, !dbg !655

.loopexit:                                        ; preds = %.lr.ph, %2, %0
  ret void, !dbg !657
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstart_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !167, metadata !354), !dbg !658
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !168, metadata !354), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !169, metadata !354), !dbg !659
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !170, metadata !354), !dbg !660
  %2 = tail call i32 @CCTK_TimerStart(i8* %1) #9, !dbg !661
  store i32 %2, i32* %ierr, align 4, !dbg !662, !tbaa !388
  tail call void @free(i8* %1) #9, !dbg !663
  ret void, !dbg !664
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStartI(i32 %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !173, metadata !354), !dbg !665
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !666, !tbaa !376
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #8, !dbg !667
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %5, i64 0, metadata !174, metadata !354), !dbg !668
  %3 = icmp ne i8* %2, null, !dbg !669
  br i1 %3, label %4, label %6, !dbg !671

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*, !dbg !667
  tail call fastcc void @CCTKi_TimerStart(i32 %this_timer, %struct.t_Timer* %5) #9, !dbg !672
  br label %8, !dbg !674

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 677, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), i32 %this_timer) #8, !dbg !675
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true, !dbg !677
  %9 = sext i1 %not. to i32, !dbg !677
  ret i32 %9, !dbg !678
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstarti_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !177, metadata !354), !dbg !679
  tail call void @llvm.dbg.value(metadata i32* %this_timer, i64 0, metadata !178, metadata !354), !dbg !680
  %1 = load i32* %this_timer, align 4, !dbg !681, !tbaa !388
  %2 = tail call i32 @CCTK_TimerStartI(i32 %1) #9, !dbg !682
  store i32 %2, i32* %ierr, align 4, !dbg !683, !tbaa !388
  ret void, !dbg !684
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStop(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !181, metadata !354), !dbg !685
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !686, !tbaa !376
  %2 = bitcast %struct.t_Timer** %timer to i8**, !dbg !687
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #8, !dbg !688
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !183, metadata !354), !dbg !689
  %4 = icmp sgt i32 %3, -1, !dbg !690
  br i1 %4, label %5, label %7, !dbg !692

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !182, metadata !354), !dbg !693
  %6 = load %struct.t_Timer** %timer, align 8, !dbg !694, !tbaa !376
  call fastcc void @CCTKi_TimerStop(i32 %3, %struct.t_Timer* %6) #9, !dbg !696
  br label %9, !dbg !697

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 761, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i8* %timername) #8, !dbg !698
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true, !dbg !700
  %10 = sext i1 %not. to i32, !dbg !700
  ret i32 %10, !dbg !701
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerStop(i32 %this_timer, %struct.t_Timer* readonly %timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !307, metadata !354), !dbg !702
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %timer, i64 0, metadata !308, metadata !354), !dbg !703
  %1 = icmp eq %struct.t_Timer* %timer, null, !dbg !704
  br i1 %1, label %.loopexit, label %2, !dbg !706

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !707
  %4 = load i8*** %3, align 8, !dbg !707, !tbaa !398
  %5 = icmp ne i8** %4, null, !dbg !708
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0, !dbg !709
  %or.cond = and i1 %5, %7, !dbg !713
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !713

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %8 = load %struct.cHandledData** @clocks, align 8, !dbg !714, !tbaa !376
  %9 = trunc i64 %indvars.iv to i32, !dbg !716
  %10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %8, i32 %9) #8, !dbg !716
  %11 = getelementptr inbounds i8* %10, i64 40, !dbg !717
  %12 = bitcast i8* %11 to void (i32, i8*)**, !dbg !717
  %13 = load void (i32, i8*)** %12, align 8, !dbg !717, !tbaa !718
  %14 = load i8*** %3, align 8, !dbg !719, !tbaa !398
  %15 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !720
  %16 = load i8** %15, align 8, !dbg !720, !tbaa !376
  tail call void %13(i32 %this_timer, i8* %16) #8, !dbg !721
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !722
  %17 = load i32* @n_clocks, align 4, !dbg !723, !tbaa !388
  %18 = sext i32 %17 to i64, !dbg !709
  %19 = icmp slt i64 %indvars.iv.next, %18, !dbg !709
  br i1 %19, label %.lr.ph, label %.loopexit, !dbg !722

.loopexit:                                        ; preds = %.lr.ph, %2, %0
  ret void, !dbg !724
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstop_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !186, metadata !354), !dbg !725
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !187, metadata !354), !dbg !726
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !188, metadata !354), !dbg !726
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !727
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !189, metadata !354), !dbg !727
  %2 = tail call i32 @CCTK_TimerStop(i8* %1) #9, !dbg !728
  store i32 %2, i32* %ierr, align 4, !dbg !729, !tbaa !388
  tail call void @free(i8* %1) #9, !dbg !730
  ret void, !dbg !731
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStopI(i32 %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !192, metadata !354), !dbg !732
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !733, !tbaa !376
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #8, !dbg !734
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %5, i64 0, metadata !193, metadata !354), !dbg !735
  %3 = icmp ne i8* %2, null, !dbg !736
  br i1 %3, label %4, label %6, !dbg !738

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*, !dbg !734
  tail call fastcc void @CCTKi_TimerStop(i32 %this_timer, %struct.t_Timer* %5) #9, !dbg !739
  br label %8, !dbg !741

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 809, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), i32 %this_timer) #8, !dbg !742
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true, !dbg !744
  %9 = sext i1 %not. to i32, !dbg !744
  ret i32 %9, !dbg !745
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstopi_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !196, metadata !354), !dbg !746
  tail call void @llvm.dbg.value(metadata i32* %this_timer, i64 0, metadata !197, metadata !354), !dbg !747
  %1 = load i32* %this_timer, align 4, !dbg !748, !tbaa !388
  %2 = tail call i32 @CCTK_TimerStopI(i32 %1) #9, !dbg !749
  store i32 %2, i32* %ierr, align 4, !dbg !750, !tbaa !388
  ret void, !dbg !751
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerReset(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !200, metadata !354), !dbg !752
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !753, !tbaa !376
  %2 = bitcast %struct.t_Timer** %timer to i8**, !dbg !754
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #8, !dbg !755
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !202, metadata !354), !dbg !756
  %4 = icmp sgt i32 %3, -1, !dbg !757
  br i1 %4, label %5, label %7, !dbg !759

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !201, metadata !354), !dbg !760
  %6 = load %struct.t_Timer** %timer, align 8, !dbg !761, !tbaa !376
  call fastcc void @CCTKi_TimerReset(i32 %3, %struct.t_Timer* %6) #9, !dbg !763
  br label %9, !dbg !764

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 892, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i8* %timername) #8, !dbg !765
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true, !dbg !767
  %10 = sext i1 %not. to i32, !dbg !767
  ret i32 %10, !dbg !768
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerReset(i32 %this_timer, %struct.t_Timer* readonly %timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !313, metadata !354), !dbg !769
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %timer, i64 0, metadata !314, metadata !354), !dbg !770
  %1 = icmp eq %struct.t_Timer* %timer, null, !dbg !771
  br i1 %1, label %.loopexit, label %2, !dbg !773

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !774
  %4 = load i8*** %3, align 8, !dbg !774, !tbaa !398
  %5 = icmp ne i8** %4, null, !dbg !775
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0, !dbg !776
  %or.cond = and i1 %5, %7, !dbg !780
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !780

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %8 = load %struct.cHandledData** @clocks, align 8, !dbg !781, !tbaa !376
  %9 = trunc i64 %indvars.iv to i32, !dbg !783
  %10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %8, i32 %9) #8, !dbg !783
  %11 = getelementptr inbounds i8* %10, i64 48, !dbg !784
  %12 = bitcast i8* %11 to void (i32, i8*)**, !dbg !784
  %13 = load void (i32, i8*)** %12, align 8, !dbg !784, !tbaa !785
  %14 = load i8*** %3, align 8, !dbg !786, !tbaa !398
  %15 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !787
  %16 = load i8** %15, align 8, !dbg !787, !tbaa !376
  tail call void %13(i32 %this_timer, i8* %16) #8, !dbg !788
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !789
  %17 = load i32* @n_clocks, align 4, !dbg !790, !tbaa !388
  %18 = sext i32 %17 to i64, !dbg !776
  %19 = icmp slt i64 %indvars.iv.next, %18, !dbg !776
  br i1 %19, label %.lr.ph, label %.loopexit, !dbg !789

.loopexit:                                        ; preds = %.lr.ph, %2, %0
  ret void, !dbg !791
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerreset_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !205, metadata !354), !dbg !792
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !206, metadata !354), !dbg !793
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !207, metadata !354), !dbg !793
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !794
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !208, metadata !354), !dbg !794
  %2 = tail call i32 @CCTK_TimerReset(i8* %1) #9, !dbg !795
  store i32 %2, i32* %ierr, align 4, !dbg !796, !tbaa !388
  tail call void @free(i8* %1) #9, !dbg !797
  ret void, !dbg !798
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerResetI(i32 %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !211, metadata !354), !dbg !799
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !800, !tbaa !376
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #8, !dbg !801
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %5, i64 0, metadata !212, metadata !354), !dbg !802
  %3 = icmp ne i8* %2, null, !dbg !803
  br i1 %3, label %4, label %6, !dbg !805

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*, !dbg !801
  tail call fastcc void @CCTKi_TimerReset(i32 %this_timer, %struct.t_Timer* %5) #9, !dbg !806
  br label %8, !dbg !808

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 940, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), i32 %this_timer) #8, !dbg !809
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true, !dbg !811
  %9 = sext i1 %not. to i32, !dbg !811
  ret i32 %9, !dbg !812
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerreseti_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !215, metadata !354), !dbg !813
  tail call void @llvm.dbg.value(metadata i32* %this_timer, i64 0, metadata !216, metadata !354), !dbg !814
  %1 = load i32* %this_timer, align 4, !dbg !815, !tbaa !388
  %2 = tail call i32 @CCTK_TimerResetI(i32 %1) #9, !dbg !816
  store i32 %2, i32* %ierr, align 4, !dbg !817, !tbaa !388
  ret void, !dbg !818
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Timer(i8* %timername, %struct.cTimerData* nocapture %info) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !221, metadata !354), !dbg !819
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %info, i64 0, metadata !222, metadata !354), !dbg !820
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !821, !tbaa !376
  %2 = bitcast %struct.t_Timer** %timer to i8**, !dbg !822
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #8, !dbg !823
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !224, metadata !354), !dbg !824
  %4 = icmp sgt i32 %3, -1, !dbg !825
  br i1 %4, label %5, label %7, !dbg !827

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.t_Timer** %timer, i64 0, metadata !223, metadata !354), !dbg !828
  %6 = load %struct.t_Timer** %timer, align 8, !dbg !829, !tbaa !376
  call fastcc void @CCTKi_Timer(i32 %3, %struct.t_Timer* %6, %struct.cTimerData* %info) #9, !dbg !831
  br label %7, !dbg !832

; <label>:7                                       ; preds = %5, %0
  %not. = xor i1 %4, true, !dbg !833
  %8 = sext i1 %not. to i32, !dbg !833
  ret i32 %8, !dbg !834
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_Timer(i32 %this_timer, %struct.t_Timer* readonly %timer, %struct.cTimerData* nocapture %info) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !321, metadata !354), !dbg !835
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %timer, i64 0, metadata !322, metadata !354), !dbg !836
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %info, i64 0, metadata !323, metadata !354), !dbg !837
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !326, metadata !354), !dbg !838
  %1 = icmp eq %struct.t_Timer* %timer, null, !dbg !839
  br i1 %1, label %.loopexit, label %2, !dbg !841

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !842
  %4 = load i8*** %3, align 8, !dbg !842, !tbaa !398
  %5 = icmp ne i8** %4, null, !dbg !843
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0, !dbg !844
  %or.cond = and i1 %5, %7, !dbg !848
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !848

.lr.ph:                                           ; preds = %2
  %8 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 1, !dbg !849
  br label %9, !dbg !851

; <label>:9                                       ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %total_vars.02 = phi i32 [ 0, %.lr.ph ], [ %25, %9 ]
  %10 = load %struct.cHandledData** @clocks, align 8, !dbg !852, !tbaa !376
  %11 = trunc i64 %indvars.iv to i32, !dbg !853
  %12 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %10, i32 %11) #8, !dbg !853
  %13 = getelementptr inbounds i8* %12, i64 56, !dbg !854
  %14 = bitcast i8* %13 to void (i32, i8*, %struct.cTimerVal*)**, !dbg !854
  %15 = load void (i32, i8*, %struct.cTimerVal*)** %14, align 8, !dbg !854, !tbaa !855
  %16 = load i8*** %3, align 8, !dbg !856, !tbaa !398
  %17 = getelementptr inbounds i8** %16, i64 %indvars.iv, !dbg !857
  %18 = load i8** %17, align 8, !dbg !857, !tbaa !376
  %19 = sext i32 %total_vars.02 to i64, !dbg !858
  %20 = load %struct.cTimerVal** %8, align 8, !dbg !849, !tbaa !859
  %21 = getelementptr inbounds %struct.cTimerVal* %20, i64 %19, !dbg !858
  tail call void %15(i32 %this_timer, i8* %18, %struct.cTimerVal* %21) #8, !dbg !861
  %22 = getelementptr inbounds i8* %12, i64 8, !dbg !862
  %23 = bitcast i8* %22 to i32*, !dbg !862
  %24 = load i32* %23, align 4, !dbg !862, !tbaa !371
  %25 = add nsw i32 %24, %total_vars.02, !dbg !863
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !326, metadata !354), !dbg !838
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !851
  %26 = load i32* @n_clocks, align 4, !dbg !864, !tbaa !388
  %27 = sext i32 %26 to i64, !dbg !844
  %28 = icmp slt i64 %indvars.iv.next, %27, !dbg !844
  br i1 %28, label %9, label %.loopexit, !dbg !851

.loopexit:                                        ; preds = %9, %2, %0
  %total_vars.1 = phi i32 [ 0, %2 ], [ 0, %0 ], [ %25, %9 ]
  %29 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 0, !dbg !865
  store i32 %total_vars.1, i32* %29, align 4, !dbg !866, !tbaa !867
  ret void, !dbg !868
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerI(i32 %this_timer, %struct.cTimerData* nocapture %info) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !229, metadata !354), !dbg !869
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %info, i64 0, metadata !230, metadata !354), !dbg !870
  %1 = load %struct.cHandledData** @timers, align 8, !dbg !871, !tbaa !376
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #8, !dbg !872
  tail call void @llvm.dbg.value(metadata %struct.t_Timer* %5, i64 0, metadata !231, metadata !354), !dbg !873
  %3 = icmp ne i8* %2, null, !dbg !874
  br i1 %3, label %4, label %6, !dbg !876

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*, !dbg !872
  tail call fastcc void @CCTKi_Timer(i32 %this_timer, %struct.t_Timer* %5, %struct.cTimerData* %info) #9, !dbg !877
  br label %6, !dbg !879

; <label>:6                                       ; preds = %4, %0
  %not. = xor i1 %3, true, !dbg !880
  %7 = sext i1 %not. to i32, !dbg !880
  ret i32 %7, !dbg !881
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.cTimerData* @CCTK_TimerCreateData() #1 {
  %1 = tail call i8* @malloc(i64 16) #8, !dbg !882
  %2 = bitcast i8* %1 to %struct.cTimerData*, !dbg !883
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %2, i64 0, metadata !236, metadata !354), !dbg !884
  %3 = icmp eq i8* %1, null, !dbg !885
  br i1 %3, label %14, label %4, !dbg !887

; <label>:4                                       ; preds = %0
  %5 = load i32* @n_clock_vals, align 4, !dbg !888, !tbaa !388
  %6 = bitcast i8* %1 to i32*, !dbg !890
  store i32 %5, i32* %6, align 4, !dbg !891, !tbaa !867
  %7 = sext i32 %5 to i64, !dbg !892
  %8 = shl nsw i64 %7, 5, !dbg !893
  %9 = tail call i8* @malloc(i64 %8) #8, !dbg !894
  %10 = getelementptr inbounds i8* %1, i64 8, !dbg !895
  %11 = bitcast i8* %10 to i8**, !dbg !896
  store i8* %9, i8** %11, align 8, !dbg !896, !tbaa !859
  %12 = icmp eq i8* %9, null, !dbg !897
  br i1 %12, label %13, label %14, !dbg !899

; <label>:13                                      ; preds = %4
  tail call void @free(i8* %1) #9, !dbg !900
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* null, i64 0, metadata !236, metadata !354), !dbg !884
  br label %14, !dbg !902

; <label>:14                                      ; preds = %4, %0, %13
  %retval.0 = phi %struct.cTimerData* [ %2, %4 ], [ null, %13 ], [ %2, %0 ]
  ret %struct.cTimerData* %retval.0, !dbg !903
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerDestroyData(%struct.cTimerData* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %info, i64 0, metadata !241, metadata !354), !dbg !904
  %1 = icmp eq %struct.cTimerData* %info, null, !dbg !905
  br i1 %1, label %10, label %2, !dbg !907

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 1, !dbg !908
  %4 = load %struct.cTimerVal** %3, align 8, !dbg !908, !tbaa !859
  %5 = icmp eq %struct.cTimerVal* %4, null, !dbg !911
  br i1 %5, label %8, label %6, !dbg !912

; <label>:6                                       ; preds = %2
  %7 = bitcast %struct.cTimerVal* %4 to i8*, !dbg !913
  tail call void @free(i8* %7) #9, !dbg !915
  br label %8, !dbg !916

; <label>:8                                       ; preds = %2, %6
  %9 = bitcast %struct.cTimerData* %info to i8*, !dbg !917
  tail call void @free(i8* %9) #9, !dbg !918
  br label %10, !dbg !919

; <label>:10                                      ; preds = %0, %8
  ret i32 0, !dbg !920
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerPrintDataI(i32 %this_timer, i32 %this_clock) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !246, metadata !354), !dbg !921
  tail call void @llvm.dbg.value(metadata i32 %this_clock, i64 0, metadata !247, metadata !354), !dbg !922
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !354), !dbg !923
  %1 = icmp eq i32 %this_timer, -1, !dbg !924
  br i1 %1, label %9, label %2, !dbg !926

; <label>:2                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !254, metadata !354), !dbg !927
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !255, metadata !354), !dbg !928
  %3 = icmp slt i32 %this_timer, 0, !dbg !929
  br i1 %3, label %.thread11, label %4, !dbg !932

; <label>:4                                       ; preds = %2
  %5 = add nsw i32 %this_timer, 1, !dbg !933
  %6 = load i32* @n_timers, align 4, !dbg !934, !tbaa !388
  %7 = icmp slt i32 %6, %this_timer, !dbg !936
  br i1 %7, label %.thread11, label %.lr.ph4, !dbg !937

.thread11:                                        ; preds = %2, %4
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1235, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i32 %this_timer) #8, !dbg !938
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !251, metadata !354), !dbg !923
  tail call void @llvm.dbg.value(metadata i32 %this_timer, i64 0, metadata !255, metadata !354), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !354), !dbg !940
  br label %._crit_edge5, !dbg !941

; <label>:9                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !254, metadata !354), !dbg !927
  %10 = load i32* @n_timers, align 4, !dbg !943, !tbaa !388
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !255, metadata !354), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !354), !dbg !940
  %11 = icmp sgt i32 %10, 0, !dbg !946
  br i1 %11, label %.lr.ph4, label %._crit_edge5, !dbg !941

.lr.ph4:                                          ; preds = %4, %9
  %lasttimer.010 = phi i32 [ %10, %9 ], [ %5, %4 ]
  %firsttimer.09 = phi i32 [ 0, %9 ], [ %this_timer, %4 ]
  %12 = icmp eq i32 %this_clock, -1, !dbg !948
  %13 = add nsw i32 %this_clock, 1, !dbg !951
  %14 = add i32 %lasttimer.010, -1, !dbg !941
  br label %15, !dbg !941

; <label>:15                                      ; preds = %._crit_edge, %.lr.ph4
  %timer.02 = phi i32 [ %firsttimer.09, %.lr.ph4 ], [ %63, %._crit_edge ]
  %16 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #9, !dbg !953
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %16, i64 0, metadata !248, metadata !354), !dbg !954
  %17 = tail call i32 @CCTK_TimerI(i32 %timer.02, %struct.cTimerData* %16) #9, !dbg !955
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !111, metadata !354) #7, !dbg !956
  %18 = load %struct.cHandledData** @timers, align 8, !dbg !958, !tbaa !376
  %19 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %18, i32 %timer.02) #8, !dbg !959
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !112, metadata !354) #7, !dbg !960
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i8* %19) #8, !dbg !961
  br i1 %12, label %21, label %.lr.ph, !dbg !962

; <label>:21                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !252, metadata !354), !dbg !963
  %22 = getelementptr inbounds %struct.cTimerData* %16, i64 0, i32 0, !dbg !964
  %23 = load i32* %22, align 4, !dbg !964, !tbaa !867
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !253, metadata !354), !dbg !966
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !249, metadata !354), !dbg !967
  %24 = icmp sgt i32 %23, 0, !dbg !968
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !971

.lr.ph:                                           ; preds = %15, %21
  %lastclock.014 = phi i32 [ %23, %21 ], [ %13, %15 ]
  %firstclock.013 = phi i32 [ 0, %21 ], [ %this_clock, %15 ]
  %25 = getelementptr inbounds %struct.cTimerData* %16, i64 0, i32 1, !dbg !972
  %26 = sext i32 %firstclock.013 to i64
  %27 = add i32 %lastclock.014, -1, !dbg !971
  br label %28, !dbg !971

; <label>:28                                      ; preds = %61, %.lr.ph
  %indvars.iv = phi i64 [ %26, %.lr.ph ], [ %indvars.iv.next, %61 ]
  %29 = load %struct.cTimerVal** %25, align 8, !dbg !972, !tbaa !859
  %30 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 0, !dbg !974
  %31 = load i32* %30, align 4, !dbg !974, !tbaa !975
  switch i32 %31, label %59 [
    i32 1, label %32
    i32 2, label %41
    i32 3, label %50
  ], !dbg !977

; <label>:32                                      ; preds = %28
  %33 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 1, !dbg !978
  %34 = load i8** %33, align 8, !dbg !978, !tbaa !980
  %35 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 3, !dbg !981
  %36 = bitcast %union.anon* %35 to i32*, !dbg !982
  %37 = load i32* %36, align 4, !dbg !982, !tbaa !388
  %38 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 2, !dbg !983
  %39 = load i8** %38, align 8, !dbg !983, !tbaa !984
  %40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* %34, i32 %37, i8* %39) #8, !dbg !985
  br label %61, !dbg !986

; <label>:41                                      ; preds = %28
  %42 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 1, !dbg !987
  %43 = load i8** %42, align 8, !dbg !987, !tbaa !980
  %44 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 3, i32 0, !dbg !988
  %45 = load i64* %44, align 8, !dbg !988, !tbaa !989
  %46 = trunc i64 %45 to i32, !dbg !991
  %47 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 2, !dbg !992
  %48 = load i8** %47, align 8, !dbg !992, !tbaa !984
  %49 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* %43, i32 %46, i8* %48) #8, !dbg !993
  br label %61, !dbg !994

; <label>:50                                      ; preds = %28
  %51 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 1, !dbg !995
  %52 = load i8** %51, align 8, !dbg !995, !tbaa !980
  %53 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 3, !dbg !996
  %54 = bitcast %union.anon* %53 to double*, !dbg !997
  %55 = load double* %54, align 8, !dbg !997, !tbaa !998
  %56 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 2, !dbg !1000
  %57 = load i8** %56, align 8, !dbg !1000, !tbaa !984
  %58 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i8* %52, double %55, i8* %57) #8, !dbg !1001
  br label %61, !dbg !1002

; <label>:59                                      ; preds = %28
  %60 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1280, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str15, i64 0, i64 0)) #8, !dbg !1003
  br label %61, !dbg !1004

; <label>:61                                      ; preds = %32, %41, %50, %59
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !971
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !971
  %exitcond = icmp eq i32 %lftr.wideiv, %27, !dbg !971
  br i1 %exitcond, label %._crit_edge, label %28, !dbg !971

._crit_edge:                                      ; preds = %61, %21
  %62 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %16) #9, !dbg !1005
  %63 = add nsw i32 %timer.02, 1, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !250, metadata !354), !dbg !940
  %exitcond6 = icmp eq i32 %timer.02, %14, !dbg !941
  br i1 %exitcond6, label %._crit_edge5, label %15, !dbg !941

._crit_edge5:                                     ; preds = %._crit_edge, %.thread11, %9
  %retval.07 = phi i32 [ 0, %9 ], [ -1, %.thread11 ], [ 0, %._crit_edge ]
  ret i32 %retval.07, !dbg !1007
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerprintdatai_(i32* nocapture %ierr, i32* nocapture readonly %this_timer, i32* nocapture readonly %this_clock) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !260, metadata !354), !dbg !1008
  tail call void @llvm.dbg.value(metadata i32* %this_timer, i64 0, metadata !261, metadata !354), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32* %this_clock, i64 0, metadata !262, metadata !354), !dbg !1010
  %1 = load i32* %this_timer, align 4, !dbg !1011, !tbaa !388
  %2 = load i32* %this_clock, align 4, !dbg !1012, !tbaa !388
  %3 = tail call i32 @CCTK_TimerPrintDataI(i32 %1, i32 %2) #9, !dbg !1013
  store i32 %3, i32* %ierr, align 4, !dbg !1014, !tbaa !388
  ret void, !dbg !1015
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerPrintData(i8* %timername, i8* %clockname) #1 {
  tail call void @llvm.dbg.value(metadata i8* %timername, i64 0, metadata !267, metadata !354), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* %clockname, i64 0, metadata !268, metadata !354), !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !271, metadata !354), !dbg !1018
  %1 = icmp eq i8* %clockname, null, !dbg !1019
  br i1 %1, label %7, label %2, !dbg !1021

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_ClockHandle(i8* %clockname) #9, !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !270, metadata !354), !dbg !1024
  %4 = icmp eq i32 %3, -1, !dbg !1025
  br i1 %4, label %5, label %7, !dbg !1027

; <label>:5                                       ; preds = %2
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1339, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0), i8* %clockname) #8, !dbg !1028
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !271, metadata !354), !dbg !1018
  br label %7, !dbg !1030

; <label>:7                                       ; preds = %0, %2, %5
  %this_clock.0 = phi i32 [ -1, %5 ], [ %3, %2 ], [ -1, %0 ]
  %retval.0 = phi i32 [ -1, %5 ], [ 0, %2 ], [ 0, %0 ]
  %8 = icmp eq i8* %timername, null, !dbg !1031
  br i1 %8, label %14, label %9, !dbg !1033

; <label>:9                                       ; preds = %7
  %10 = load %struct.cHandledData** @timers, align 8, !dbg !1034, !tbaa !376
  %11 = tail call i32 @Util_GetHandle(%struct.cHandledData* %10, i8* %timername, i8** null) #8, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !269, metadata !354), !dbg !1037
  %12 = icmp eq i32 %11, -1, !dbg !1038
  br i1 %12, label %.thread, label %14, !dbg !1040

.thread:                                          ; preds = %9
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1354, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0), i8* %timername) #8, !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !271, metadata !354), !dbg !1018
  br label %18, !dbg !1043

; <label>:14                                      ; preds = %7, %9
  %this_timer.0 = phi i32 [ %11, %9 ], [ -1, %7 ]
  %15 = icmp eq i32 %retval.0, 0, !dbg !1044
  br i1 %15, label %16, label %18, !dbg !1043

; <label>:16                                      ; preds = %14
  %17 = tail call i32 @CCTK_TimerPrintDataI(i32 %this_timer.0, i32 %this_clock.0) #9, !dbg !1046
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !271, metadata !354), !dbg !1018
  br label %18, !dbg !1048

; <label>:18                                      ; preds = %.thread, %16, %14
  %retval.2 = phi i32 [ %17, %16 ], [ -1, %14 ], [ -1, %.thread ]
  ret i32 %retval.2, !dbg !1049
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerprintdata_(i32* nocapture %ierr, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !276, metadata !354), !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !277, metadata !354), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !278, metadata !354), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !279, metadata !354), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !280, metadata !354), !dbg !1051
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !1052
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !281, metadata !354), !dbg !1052
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8, !dbg !1052
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !282, metadata !354), !dbg !1052
  %3 = load i8* %1, align 1, !dbg !1053, !tbaa !1054
  %4 = icmp ne i8 %3, 0, !dbg !1053
  %5 = select i1 %4, i8* %1, i8* null, !dbg !1053
  %6 = load i8* %2, align 1, !dbg !1055, !tbaa !1054
  %7 = icmp ne i8 %6, 0, !dbg !1055
  %8 = select i1 %7, i8* %2, i8* null, !dbg !1055
  %9 = tail call i32 @CCTK_TimerPrintData(i8* %5, i8* %8) #9, !dbg !1056
  store i32 %9, i32* %ierr, align 4, !dbg !1057, !tbaa !388
  tail call void @free(i8* %1) #9, !dbg !1058
  tail call void @free(i8* %2) #9, !dbg !1059
  ret void, !dbg !1060
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!349, !350, !351}
!llvm.ident = !{!352}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !68, globals: !327, imports: !72)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 16, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Timers.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "val_none", value: 0)
!7 = !DIEnumerator(name: "val_int", value: 1)
!8 = !DIEnumerator(name: "val_long", value: 2)
!9 = !DIEnumerator(name: "val_double", value: 3)
!10 = !{!11, !54, !59, !60, !62, !37, !20}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "cClockFuncs", file: !4, line: 49, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 38, size: 576, align: 64, elements: !14)
!14 = !{!15, !19, !21, !26, !30, !31, !32, !33, !53}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !4, line: 40, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n_vals", scope: !13, file: !4, line: 41, baseType: !20, size: 32, align: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !13, file: !4, line: 42, baseType: !22, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !20}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !13, file: !4, line: 43, baseType: !27, size: 64, align: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !20, !25}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !13, file: !4, line: 44, baseType: !27, size: 64, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !13, file: !4, line: 45, baseType: !27, size: 64, align: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !13, file: !4, line: 46, baseType: !27, size: 64, align: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !13, file: !4, line: 47, baseType: !34, size: 64, align: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !20, !25, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerVal", file: !4, line: 29, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 18, size: 256, align: 64, elements: !40)
!40 = !{!41, !43, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !4, line: 20, baseType: !42, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerValType", file: !4, line: 16, baseType: !3)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "heading", scope: !39, file: !4, line: 21, baseType: !16, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !39, file: !4, line: 22, baseType: !16, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !39, file: !4, line: 28, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !4, line: 23, size: 64, align: 64, elements: !47)
!47 = !{!48, !49, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !46, file: !4, line: 25, baseType: !20, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !46, file: !4, line: 26, baseType: !50, size: 64, align: 64)
!50 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !46, file: !4, line: 27, baseType: !52, size: 64, align: 64)
!52 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !13, file: !4, line: 48, baseType: !34, size: 64, align: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_Timer", file: !1, line: 68, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 65, size: 64, align: 64, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !1, line: 67, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerData", file: !4, line: 35, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 31, size: 128, align: 64, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "n_vals", scope: !64, file: !4, line: 33, baseType: !20, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !64, file: !4, line: 34, baseType: !37, size: 64, align: 64, offset: 64)
!68 = !{!69, !73, !83, !89, !96, !99, !105, !106, !109, !113, !117, !127, !134, !137, !142, !148, !154, !160, !165, !171, !175, !179, !184, !190, !194, !198, !203, !209, !213, !217, !225, !232, !237, !242, !256, !263, !272, !283, !291, !299, !305, !311, !317}
!69 = !DISubprogram(name: "CCTKi_version_util_CactusTimers_c", scope: !1, file: !1, line: 27, type: !70, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_CactusTimers_c, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!16}
!72 = !{}
!73 = !DISubprogram(name: "CCTK_ClockRegister", scope: !1, file: !1, line: 121, type: !74, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct.cClockFuncs*)* @CCTK_ClockRegister, variables: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!20, !16, !60}
!76 = !{!77, !78, !79, !80, !81, !82}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "clockname", arg: 1, scope: !73, file: !1, line: 121, type: !16)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "functions", arg: 2, scope: !73, file: !1, line: 121, type: !60)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !73, file: !1, line: 123, type: !25)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !73, file: !1, line: 124, type: !20)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !73, file: !1, line: 125, type: !54)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newfuncs", scope: !73, file: !1, line: 126, type: !11)
!83 = !DISubprogram(name: "CCTK_ClockName", scope: !1, file: !1, line: 184, type: !84, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTK_ClockName, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!16, !20}
!86 = !{!87, !88}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !83, file: !1, line: 184, type: !20)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !83, file: !1, line: 186, type: !60)
!89 = !DISubprogram(name: "CCTK_ClockHandle", scope: !1, file: !1, line: 214, type: !90, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_ClockHandle, variables: !92)
!90 = !DISubroutineType(types: !91)
!91 = !{!20, !16}
!92 = !{!93, !94, !95}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "clockname", arg: 1, scope: !89, file: !1, line: 214, type: !16)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !89, file: !1, line: 216, type: !20)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !89, file: !1, line: 217, type: !60)
!96 = !DISubprogram(name: "CCTK_NumClocks", scope: !1, file: !1, line: 246, type: !97, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_NumClocks, variables: !72)
!97 = !DISubroutineType(types: !98)
!98 = !{!20}
!99 = !DISubprogram(name: "cctk_numclocks_", scope: !1, file: !1, line: 251, type: !100, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @cctk_numclocks_, variables: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!103 = !{!104}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nclocks", arg: 1, scope: !99, file: !1, line: 252, type: !102)
!105 = !DISubprogram(name: "CCTK_NumTimers", scope: !1, file: !1, line: 271, type: !97, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_NumTimers, variables: !72)
!106 = !DISubprogram(name: "cctk_numtimers_", scope: !1, file: !1, line: 276, type: !100, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @cctk_numtimers_, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ntimers", arg: 1, scope: !106, file: !1, line: 277, type: !102)
!109 = !DISubprogram(name: "CCTK_TimerName", scope: !1, file: !1, line: 303, type: !84, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTK_TimerName, variables: !110)
!110 = !{!111, !112}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer_handle", arg: 1, scope: !109, file: !1, line: 303, type: !20)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !109, file: !1, line: 305, type: !16)
!113 = !DISubprogram(name: "CCTK_TimerCreate", scope: !1, file: !1, line: 334, type: !90, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_TimerCreate, variables: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !113, file: !1, line: 334, type: !16)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !113, file: !1, line: 336, type: !20)
!117 = !DISubprogram(name: "cctk_timercreate_", scope: !1, file: !1, line: 344, type: !118, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_timercreate_, variables: !122)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !102, !120, !121}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!121 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer_index", arg: 1, scope: !117, file: !1, line: 345, type: !102)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !117, file: !1, line: 345, type: !120)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !117, file: !1, line: 345, type: !121)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timername", scope: !117, file: !1, line: 347, type: !120)
!127 = !DISubprogram(name: "CCTK_TimerCreateI", scope: !1, file: !1, line: 367, type: !97, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_TimerCreateI, variables: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !127, file: !1, line: 369, type: !20)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timername", scope: !127, file: !1, line: 370, type: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, align: 8, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 40)
!134 = !DISubprogram(name: "cctk_timercreatei_", scope: !1, file: !1, line: 379, type: !100, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @cctk_timercreatei_, variables: !135)
!135 = !{!136}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !134, file: !1, line: 380, type: !102)
!137 = !DISubprogram(name: "CCTK_TimerDestroy", scope: !1, file: !1, line: 480, type: !90, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_TimerDestroy, variables: !138)
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !137, file: !1, line: 480, type: !16)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !137, file: !1, line: 482, type: !54)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !137, file: !1, line: 483, type: !20)
!142 = !DISubprogram(name: "cctk_timerdestroy_", scope: !1, file: !1, line: 500, type: !118, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_timerdestroy_, variables: !143)
!143 = !{!144, !145, !146, !147}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !142, file: !1, line: 501, type: !102)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !142, file: !1, line: 501, type: !120)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !142, file: !1, line: 501, type: !121)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timername", scope: !142, file: !1, line: 503, type: !120)
!148 = !DISubprogram(name: "CCTK_TimerDestroyI", scope: !1, file: !1, line: 529, type: !149, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTK_TimerDestroyI, variables: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!20, !20}
!151 = !{!152, !153}
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !148, file: !1, line: 529, type: !20)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !148, file: !1, line: 531, type: !54)
!154 = !DISubprogram(name: "cctk_timerdestroyi_", scope: !1, file: !1, line: 548, type: !155, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @cctk_timerdestroyi_, variables: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !102, !102}
!157 = !{!158, !159}
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !154, file: !1, line: 549, type: !102)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 2, scope: !154, file: !1, line: 549, type: !102)
!160 = !DISubprogram(name: "CCTK_TimerStart", scope: !1, file: !1, line: 616, type: !90, isLocal: false, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_TimerStart, variables: !161)
!161 = !{!162, !163, !164}
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !160, file: !1, line: 616, type: !16)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !160, file: !1, line: 618, type: !54)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !160, file: !1, line: 619, type: !20)
!165 = !DISubprogram(name: "cctk_timerstart_", scope: !1, file: !1, line: 636, type: !118, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_timerstart_, variables: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !165, file: !1, line: 637, type: !102)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !165, file: !1, line: 637, type: !120)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !165, file: !1, line: 637, type: !121)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timername", scope: !165, file: !1, line: 639, type: !120)
!171 = !DISubprogram(name: "CCTK_TimerStartI", scope: !1, file: !1, line: 665, type: !149, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTK_TimerStartI, variables: !172)
!172 = !{!173, !174}
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !171, file: !1, line: 665, type: !20)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !171, file: !1, line: 667, type: !54)
!175 = !DISubprogram(name: "cctk_timerstarti_", scope: !1, file: !1, line: 684, type: !155, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @cctk_timerstarti_, variables: !176)
!176 = !{!177, !178}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !175, file: !1, line: 685, type: !102)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 2, scope: !175, file: !1, line: 685, type: !102)
!179 = !DISubprogram(name: "CCTK_TimerStop", scope: !1, file: !1, line: 748, type: !90, isLocal: false, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_TimerStop, variables: !180)
!180 = !{!181, !182, !183}
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !179, file: !1, line: 748, type: !16)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !179, file: !1, line: 750, type: !54)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !179, file: !1, line: 751, type: !20)
!184 = !DISubprogram(name: "cctk_timerstop_", scope: !1, file: !1, line: 768, type: !118, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_timerstop_, variables: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !184, file: !1, line: 769, type: !102)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !184, file: !1, line: 769, type: !120)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !184, file: !1, line: 769, type: !121)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timername", scope: !184, file: !1, line: 771, type: !120)
!190 = !DISubprogram(name: "CCTK_TimerStopI", scope: !1, file: !1, line: 797, type: !149, isLocal: false, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTK_TimerStopI, variables: !191)
!191 = !{!192, !193}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !190, file: !1, line: 797, type: !20)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !190, file: !1, line: 799, type: !54)
!194 = !DISubprogram(name: "cctk_timerstopi_", scope: !1, file: !1, line: 816, type: !155, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @cctk_timerstopi_, variables: !195)
!195 = !{!196, !197}
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !194, file: !1, line: 817, type: !102)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 2, scope: !194, file: !1, line: 817, type: !102)
!198 = !DISubprogram(name: "CCTK_TimerReset", scope: !1, file: !1, line: 879, type: !90, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_TimerReset, variables: !199)
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !198, file: !1, line: 879, type: !16)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !198, file: !1, line: 881, type: !54)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !198, file: !1, line: 882, type: !20)
!203 = !DISubprogram(name: "cctk_timerreset_", scope: !1, file: !1, line: 899, type: !118, isLocal: false, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_timerreset_, variables: !204)
!204 = !{!205, !206, !207, !208}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !203, file: !1, line: 900, type: !102)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !203, file: !1, line: 900, type: !120)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !203, file: !1, line: 900, type: !121)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timername", scope: !203, file: !1, line: 902, type: !120)
!209 = !DISubprogram(name: "CCTK_TimerResetI", scope: !1, file: !1, line: 928, type: !149, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTK_TimerResetI, variables: !210)
!210 = !{!211, !212}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !209, file: !1, line: 928, type: !20)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !209, file: !1, line: 930, type: !54)
!213 = !DISubprogram(name: "cctk_timerreseti_", scope: !1, file: !1, line: 947, type: !155, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @cctk_timerreseti_, variables: !214)
!214 = !{!215, !216}
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !213, file: !1, line: 948, type: !102)
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 2, scope: !213, file: !1, line: 948, type: !102)
!217 = !DISubprogram(name: "CCTK_Timer", scope: !1, file: !1, line: 1016, type: !218, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct.cTimerData*)* @CCTK_Timer, variables: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{!20, !16, !62}
!220 = !{!221, !222, !223, !224}
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !217, file: !1, line: 1016, type: !16)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 2, scope: !217, file: !1, line: 1016, type: !62)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !217, file: !1, line: 1018, type: !54)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !217, file: !1, line: 1019, type: !20)
!225 = !DISubprogram(name: "CCTK_TimerI", scope: !1, file: !1, line: 1057, type: !226, isLocal: false, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.cTimerData*)* @CCTK_TimerI, variables: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{!20, !20, !62}
!228 = !{!229, !230, !231}
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !225, file: !1, line: 1057, type: !20)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 2, scope: !225, file: !1, line: 1057, type: !62)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !225, file: !1, line: 1059, type: !54)
!232 = !DISubprogram(name: "CCTK_TimerCreateData", scope: !1, file: !1, line: 1131, type: !233, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true, function: %struct.cTimerData* ()* @CCTK_TimerCreateData, variables: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!62}
!235 = !{!236}
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !232, file: !1, line: 1133, type: !62)
!237 = !DISubprogram(name: "CCTK_TimerDestroyData", scope: !1, file: !1, line: 1172, type: !238, isLocal: false, isDefinition: true, scopeLine: 1173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cTimerData*)* @CCTK_TimerDestroyData, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!20, !62}
!240 = !{!241}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !237, file: !1, line: 1172, type: !62)
!242 = !DISubprogram(name: "CCTK_TimerPrintDataI", scope: !1, file: !1, line: 1214, type: !243, isLocal: false, isDefinition: true, scopeLine: 1215, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @CCTK_TimerPrintDataI, variables: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!20, !20, !20}
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !242, file: !1, line: 1214, type: !20)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_clock", arg: 2, scope: !242, file: !1, line: 1214, type: !20)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !242, file: !1, line: 1216, type: !62)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !242, file: !1, line: 1217, type: !20)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !242, file: !1, line: 1217, type: !20)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !242, file: !1, line: 1217, type: !20)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "firstclock", scope: !242, file: !1, line: 1218, type: !20)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastclock", scope: !242, file: !1, line: 1218, type: !20)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "firsttimer", scope: !242, file: !1, line: 1219, type: !20)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lasttimer", scope: !242, file: !1, line: 1219, type: !20)
!256 = !DISubprogram(name: "cctk_timerprintdatai_", scope: !1, file: !1, line: 1291, type: !257, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*)* @cctk_timerprintdatai_, variables: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !102, !102, !102}
!259 = !{!260, !261, !262}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !256, file: !1, line: 1292, type: !102)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 2, scope: !256, file: !1, line: 1292, type: !102)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_clock", arg: 3, scope: !256, file: !1, line: 1292, type: !102)
!263 = !DISubprogram(name: "CCTK_TimerPrintData", scope: !1, file: !1, line: 1323, type: !264, isLocal: false, isDefinition: true, scopeLine: 1324, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @CCTK_TimerPrintData, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!20, !16, !16}
!266 = !{!267, !268, !269, !270, !271}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !263, file: !1, line: 1323, type: !16)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "clockname", arg: 2, scope: !263, file: !1, line: 1323, type: !16)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !263, file: !1, line: 1325, type: !20)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_clock", scope: !263, file: !1, line: 1325, type: !20)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !263, file: !1, line: 1325, type: !20)
!272 = !DISubprogram(name: "cctk_timerprintdata_", scope: !1, file: !1, line: 1368, type: !273, isLocal: false, isDefinition: true, scopeLine: 1370, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i8*, i32, i32)* @cctk_timerprintdata_, variables: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !102, !120, !120, !121, !121}
!275 = !{!276, !277, !278, !279, !280, !281, !282}
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !272, file: !1, line: 1369, type: !102)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !272, file: !1, line: 1369, type: !120)
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 3, scope: !272, file: !1, line: 1369, type: !120)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !272, file: !1, line: 1369, type: !121)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 5, scope: !272, file: !1, line: 1369, type: !121)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !272, file: !1, line: 1371, type: !120)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clock", scope: !272, file: !1, line: 1371, type: !120)
!283 = !DISubprogram(name: "CCTKi_TimerCreate", scope: !1, file: !1, line: 407, type: !90, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTKi_TimerCreate, variables: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timername", arg: 1, scope: !283, file: !1, line: 407, type: !16)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !283, file: !1, line: 409, type: !20)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer", scope: !283, file: !1, line: 410, type: !54)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !283, file: !1, line: 411, type: !60)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_timer", scope: !283, file: !1, line: 412, type: !20)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !283, file: !1, line: 413, type: !20)
!291 = !DISubprogram(name: "CCTKi_TimerDestroy", scope: !1, file: !1, line: 574, type: !292, isLocal: true, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_Timer*)* @CCTKi_TimerDestroy, variables: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !20, !54}
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !291, file: !1, line: 574, type: !20)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer", arg: 2, scope: !291, file: !1, line: 574, type: !54)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !291, file: !1, line: 576, type: !20)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !291, file: !1, line: 577, type: !60)
!299 = !DISubprogram(name: "CCTKi_TimerStart", scope: !1, file: !1, line: 710, type: !292, isLocal: true, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_Timer*)* @CCTKi_TimerStart, variables: !300)
!300 = !{!301, !302, !303, !304}
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !299, file: !1, line: 710, type: !20)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer", arg: 2, scope: !299, file: !1, line: 710, type: !54)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !299, file: !1, line: 712, type: !60)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !299, file: !1, line: 713, type: !20)
!305 = !DISubprogram(name: "CCTKi_TimerStop", scope: !1, file: !1, line: 842, type: !292, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_Timer*)* @CCTKi_TimerStop, variables: !306)
!306 = !{!307, !308, !309, !310}
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !305, file: !1, line: 842, type: !20)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer", arg: 2, scope: !305, file: !1, line: 842, type: !54)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !305, file: !1, line: 844, type: !60)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !305, file: !1, line: 845, type: !20)
!311 = !DISubprogram(name: "CCTKi_TimerReset", scope: !1, file: !1, line: 973, type: !292, isLocal: true, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_Timer*)* @CCTKi_TimerReset, variables: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !311, file: !1, line: 973, type: !20)
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer", arg: 2, scope: !311, file: !1, line: 973, type: !54)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !311, file: !1, line: 975, type: !60)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !311, file: !1, line: 976, type: !20)
!317 = !DISubprogram(name: "CCTKi_Timer", scope: !1, file: !1, line: 1096, type: !318, isLocal: true, isDefinition: true, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_Timer*, %struct.cTimerData*)* @CCTKi_Timer, variables: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !20, !54, !62}
!320 = !{!321, !322, !323, !324, !325, !326}
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_timer", arg: 1, scope: !317, file: !1, line: 1096, type: !20)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timer", arg: 2, scope: !317, file: !1, line: 1096, type: !54)
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !317, file: !1, line: 1096, type: !62)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcs", scope: !317, file: !1, line: 1098, type: !60)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !317, file: !1, line: 1099, type: !20)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total_vars", scope: !317, file: !1, line: 1099, type: !20)
!327 = !{!328, !329, !330, !346, !347, !348}
!328 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 25, type: !16, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariable(name: "n_timers", scope: !0, file: !1, line: 91, type: !20, isLocal: true, isDefinition: true, variable: i32* @n_timers)
!330 = !DIGlobalVariable(name: "timers", scope: !0, file: !1, line: 92, type: !331, isLocal: true, isDefinition: true, variable: %struct.cHandledData** @timers)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandledData", file: !333, line: 28, baseType: !334)
!333 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!334 = !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 23, size: 128, align: 64, elements: !335)
!335 = !{!336, !344, !345}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !334, file: !333, line: 25, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandleStorage", file: !333, line: 21, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 16, size: 192, align: 64, elements: !340)
!340 = !{!341, !342, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !339, file: !333, line: 18, baseType: !121, size: 32, align: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !333, line: 19, baseType: !120, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !339, file: !333, line: 20, baseType: !25, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !334, file: !333, line: 26, baseType: !121, size: 32, align: 32, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused", scope: !334, file: !333, line: 27, baseType: !121, size: 32, align: 32, offset: 96)
!346 = !DIGlobalVariable(name: "n_clocks", scope: !0, file: !1, line: 85, type: !20, isLocal: true, isDefinition: true, variable: i32* @n_clocks)
!347 = !DIGlobalVariable(name: "clocks", scope: !0, file: !1, line: 86, type: !331, isLocal: true, isDefinition: true, variable: %struct.cHandledData** @clocks)
!348 = !DIGlobalVariable(name: "n_clock_vals", scope: !0, file: !1, line: 89, type: !20, isLocal: true, isDefinition: true, variable: i32* @n_clock_vals)
!349 = !{i32 2, !"Dwarf Version", i32 2}
!350 = !{i32 2, !"Debug Info Version", i32 700000003}
!351 = !{i32 1, !"PIC Level", i32 2}
!352 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!353 = !DILocation(line: 27, column: 1, scope: !69)
!354 = !DIExpression()
!355 = !DILocation(line: 121, column: 37, scope: !73)
!356 = !DILocation(line: 121, column: 67, scope: !73)
!357 = !DILocation(line: 129, column: 30, scope: !73)
!358 = !DILocation(line: 130, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !73, file: !1, line: 130, column: 7)
!360 = !DILocation(line: 130, column: 7, scope: !73)
!361 = !DILocation(line: 132, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !1, line: 131, column: 3)
!363 = !DILocation(line: 132, column: 20, scope: !362)
!364 = !{!365, !366, i64 0}
!365 = !{!"", !366, i64 0, !369, i64 8, !366, i64 16, !366, i64 24, !366, i64 32, !366, i64 40, !366, i64 48, !366, i64 56, !366, i64 64}
!366 = !{!"any pointer", !367, i64 0}
!367 = !{!"omnipotent char", !368, i64 0}
!368 = !{!"Simple C/C++ TBAA"}
!369 = !{!"int", !367, i64 0}
!370 = !DILocation(line: 133, column: 35, scope: !362)
!371 = !{!365, !369, i64 8}
!372 = !DILocation(line: 133, column: 15, scope: !362)
!373 = !DILocation(line: 133, column: 22, scope: !362)
!374 = !DILocation(line: 134, column: 35, scope: !362)
!375 = !DILocation(line: 134, column: 22, scope: !362)
!376 = !{!366, !366, i64 0}
!377 = !DILocation(line: 136, column: 34, scope: !362)
!378 = !DILocation(line: 136, column: 21, scope: !362)
!379 = !DILocation(line: 138, column: 34, scope: !362)
!380 = !DILocation(line: 138, column: 21, scope: !362)
!381 = !DILocation(line: 140, column: 32, scope: !362)
!382 = !{!365, !366, i64 64}
!383 = !DILocation(line: 140, column: 19, scope: !362)
!384 = !DILocation(line: 141, column: 3, scope: !362)
!385 = !DILocation(line: 144, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 144, column: 3)
!387 = distinct !DILexicalBlock(scope: !73, file: !1, line: 144, column: 3)
!388 = !{!369, !369, i64 0}
!389 = !DILocation(line: 144, column: 27, scope: !386)
!390 = !DILocation(line: 144, column: 3, scope: !387)
!391 = !DILocation(line: 152, column: 42, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 150, column: 5)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 149, column: 9)
!394 = distinct !DILexicalBlock(scope: !386, file: !1, line: 145, column: 3)
!395 = !DILocation(line: 146, column: 46, scope: !394)
!396 = !DILocation(line: 146, column: 25, scope: !394)
!397 = !DILocation(line: 148, column: 27, scope: !394)
!398 = !{!399, !366, i64 0}
!399 = !{!"", !366, i64 0}
!400 = !DILocation(line: 148, column: 34, scope: !394)
!401 = !DILocation(line: 148, column: 43, scope: !394)
!402 = !DILocation(line: 148, column: 33, scope: !394)
!403 = !DILocation(line: 148, column: 48, scope: !394)
!404 = !DILocation(line: 148, column: 11, scope: !394)
!405 = !DILocation(line: 123, column: 9, scope: !73)
!406 = !DILocation(line: 149, column: 9, scope: !393)
!407 = !DILocation(line: 149, column: 9, scope: !394)
!408 = !DILocation(line: 151, column: 19, scope: !392)
!409 = !{!365, !366, i64 16}
!410 = !DILocation(line: 152, column: 31, scope: !392)
!411 = !DILocation(line: 152, column: 19, scope: !392)
!412 = !DILocation(line: 152, column: 7, scope: !392)
!413 = !DILocation(line: 152, column: 14, scope: !392)
!414 = !DILocation(line: 152, column: 29, scope: !392)
!415 = !DILocation(line: 153, column: 5, scope: !392)
!416 = !DILocation(line: 144, column: 45, scope: !386)
!417 = !DILocation(line: 124, column: 7, scope: !73)
!418 = !DILocation(line: 157, column: 12, scope: !73)
!419 = !DILocation(line: 158, column: 11, scope: !73)
!420 = !DILocation(line: 159, column: 30, scope: !73)
!421 = !DILocation(line: 159, column: 16, scope: !73)
!422 = !DILocation(line: 161, column: 3, scope: !73)
!423 = !DILocation(line: 184, column: 33, scope: !83)
!424 = !DILocation(line: 189, column: 54, scope: !83)
!425 = !DILocation(line: 189, column: 33, scope: !83)
!426 = !DILocation(line: 191, column: 11, scope: !83)
!427 = !DILocation(line: 191, column: 26, scope: !83)
!428 = !DILocation(line: 191, column: 3, scope: !83)
!429 = !DILocation(line: 214, column: 35, scope: !89)
!430 = !DILocation(line: 248, column: 11, scope: !96, inlinedAt: !431)
!431 = distinct !DILocation(line: 220, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !89, file: !1, line: 220, column: 3)
!433 = !DILocation(line: 220, column: 35, scope: !432)
!434 = !DILocation(line: 220, column: 47, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !1, line: 220, column: 3)
!436 = !DILocation(line: 220, column: 3, scope: !432)
!437 = !DILocation(line: 222, column: 56, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !1, line: 221, column: 3)
!439 = !DILocation(line: 222, column: 35, scope: !438)
!440 = !DILocation(line: 223, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 223, column: 9)
!442 = !DILocation(line: 223, column: 15, scope: !441)
!443 = !DILocation(line: 223, column: 33, scope: !441)
!444 = !DILocation(line: 223, column: 18, scope: !441)
!445 = !DILocation(line: 223, column: 50, scope: !441)
!446 = !DILocation(line: 223, column: 9, scope: !438)
!447 = !DILocation(line: 229, column: 3, scope: !89)
!448 = !DILocation(line: 248, column: 11, scope: !96)
!449 = !DILocation(line: 248, column: 3, scope: !96)
!450 = !DILocation(line: 252, column: 34, scope: !99)
!451 = !DILocation(line: 248, column: 11, scope: !96, inlinedAt: !452)
!452 = distinct !DILocation(line: 254, column: 14, scope: !99)
!453 = !DILocation(line: 254, column: 12, scope: !99)
!454 = !DILocation(line: 255, column: 1, scope: !99)
!455 = !DILocation(line: 273, column: 11, scope: !105)
!456 = !DILocation(line: 273, column: 3, scope: !105)
!457 = !DILocation(line: 277, column: 34, scope: !106)
!458 = !DILocation(line: 273, column: 11, scope: !105, inlinedAt: !459)
!459 = distinct !DILocation(line: 279, column: 14, scope: !106)
!460 = !DILocation(line: 279, column: 12, scope: !106)
!461 = !DILocation(line: 280, column: 1, scope: !106)
!462 = !DILocation(line: 303, column: 33, scope: !109)
!463 = !DILocation(line: 308, column: 32, scope: !109)
!464 = !DILocation(line: 308, column: 12, scope: !109)
!465 = !DILocation(line: 305, column: 15, scope: !109)
!466 = !DILocation(line: 310, column: 3, scope: !109)
!467 = !DILocation(line: 334, column: 35, scope: !113)
!468 = !DILocation(line: 339, column: 12, scope: !113)
!469 = !DILocation(line: 336, column: 7, scope: !113)
!470 = !DILocation(line: 341, column: 3, scope: !113)
!471 = !DILocation(line: 407, column: 43, scope: !283)
!472 = !DILocation(line: 416, column: 23, scope: !473)
!473 = distinct !DILexicalBlock(scope: !283, file: !1, line: 416, column: 7)
!474 = !DILocation(line: 416, column: 42, scope: !473)
!475 = !DILocation(line: 416, column: 7, scope: !473)
!476 = !DILocation(line: 416, column: 60, scope: !473)
!477 = !DILocation(line: 416, column: 7, scope: !283)
!478 = !DILocation(line: 423, column: 25, scope: !479)
!479 = distinct !DILexicalBlock(scope: !473, file: !1, line: 422, column: 3)
!480 = !DILocation(line: 423, column: 11, scope: !479)
!481 = !DILocation(line: 425, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 425, column: 9)
!483 = !DILocation(line: 425, column: 9, scope: !479)
!484 = !DILocation(line: 427, column: 39, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 426, column: 5)
!486 = !DILocation(line: 427, column: 48, scope: !485)
!487 = !DILocation(line: 427, column: 31, scope: !485)
!488 = !DILocation(line: 410, column: 12, scope: !283)
!489 = !DILocation(line: 427, column: 19, scope: !485)
!490 = !DILocation(line: 429, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !1, line: 429, column: 11)
!492 = !DILocation(line: 429, column: 18, scope: !491)
!493 = !DILocation(line: 446, column: 15, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !1, line: 445, column: 7)
!495 = !DILocation(line: 429, column: 11, scope: !485)
!496 = !DILocation(line: 432, column: 22, scope: !497)
!497 = distinct !DILexicalBlock(scope: !491, file: !1, line: 430, column: 7)
!498 = !DILocation(line: 412, column: 7, scope: !283)
!499 = !DILocation(line: 433, column: 17, scope: !497)
!500 = !DILocation(line: 413, column: 7, scope: !283)
!501 = !DILocation(line: 436, column: 35, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 436, column: 9)
!503 = distinct !DILexicalBlock(scope: !497, file: !1, line: 436, column: 9)
!504 = !DILocation(line: 436, column: 33, scope: !502)
!505 = !DILocation(line: 436, column: 9, scope: !503)
!506 = !DILocation(line: 438, column: 62, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !1, line: 437, column: 9)
!508 = !DILocation(line: 438, column: 41, scope: !507)
!509 = !DILocation(line: 440, column: 40, scope: !507)
!510 = !DILocation(line: 440, column: 33, scope: !507)
!511 = !DILocation(line: 440, column: 11, scope: !507)
!512 = !DILocation(line: 440, column: 18, scope: !507)
!513 = !DILocation(line: 440, column: 31, scope: !507)
!514 = !DILocation(line: 446, column: 9, scope: !494)
!515 = !DILocation(line: 409, column: 7, scope: !283)
!516 = !DILocation(line: 456, column: 3, scope: !283)
!517 = !DILocation(line: 345, column: 34, scope: !117)
!518 = !DILocation(line: 345, column: 47, scope: !117)
!519 = !DILocation(line: 347, column: 3, scope: !117)
!520 = !DILocation(line: 334, column: 35, scope: !113, inlinedAt: !521)
!521 = distinct !DILocation(line: 348, column: 18, scope: !117)
!522 = !DILocation(line: 339, column: 12, scope: !113, inlinedAt: !521)
!523 = !DILocation(line: 336, column: 7, scope: !113, inlinedAt: !521)
!524 = !DILocation(line: 348, column: 16, scope: !117)
!525 = !DILocation(line: 349, column: 3, scope: !117)
!526 = !DILocation(line: 350, column: 1, scope: !117)
!527 = !DILocation(line: 370, column: 3, scope: !127)
!528 = !DILocation(line: 370, column: 8, scope: !127)
!529 = !DILocation(line: 373, column: 3, scope: !127)
!530 = !DILocation(line: 374, column: 12, scope: !127)
!531 = !DILocation(line: 369, column: 7, scope: !127)
!532 = !DILocation(line: 377, column: 1, scope: !127)
!533 = !DILocation(line: 380, column: 34, scope: !134)
!534 = !DILocation(line: 370, column: 3, scope: !127, inlinedAt: !535)
!535 = distinct !DILocation(line: 382, column: 11, scope: !134)
!536 = !DILocation(line: 373, column: 3, scope: !127, inlinedAt: !535)
!537 = !DILocation(line: 374, column: 12, scope: !127, inlinedAt: !535)
!538 = !DILocation(line: 369, column: 7, scope: !127, inlinedAt: !535)
!539 = !DILocation(line: 377, column: 1, scope: !127, inlinedAt: !535)
!540 = !DILocation(line: 382, column: 9, scope: !134)
!541 = !DILocation(line: 370, column: 8, scope: !127, inlinedAt: !535)
!542 = !DILocation(line: 383, column: 1, scope: !134)
!543 = !DILocation(line: 480, column: 36, scope: !137)
!544 = !DILocation(line: 486, column: 32, scope: !137)
!545 = !DILocation(line: 486, column: 52, scope: !137)
!546 = !DILocation(line: 486, column: 16, scope: !137)
!547 = !DILocation(line: 483, column: 7, scope: !137)
!548 = !DILocation(line: 487, column: 18, scope: !549)
!549 = distinct !DILexicalBlock(scope: !137, file: !1, line: 487, column: 7)
!550 = !DILocation(line: 487, column: 7, scope: !137)
!551 = !DILocation(line: 482, column: 12, scope: !137)
!552 = !DILocation(line: 489, column: 37, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !1, line: 488, column: 3)
!554 = !DILocation(line: 489, column: 5, scope: !553)
!555 = !DILocation(line: 490, column: 3, scope: !553)
!556 = !DILocation(line: 493, column: 5, scope: !557)
!557 = distinct !DILexicalBlock(scope: !549, file: !1, line: 492, column: 3)
!558 = !DILocation(line: 497, column: 11, scope: !137)
!559 = !DILocation(line: 497, column: 3, scope: !137)
!560 = !DILocation(line: 574, column: 37, scope: !291)
!561 = !DILocation(line: 574, column: 58, scope: !291)
!562 = !DILocation(line: 580, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !291, file: !1, line: 580, column: 7)
!564 = !DILocation(line: 580, column: 13, scope: !563)
!565 = !DILocation(line: 580, column: 23, scope: !563)
!566 = !DILocation(line: 580, column: 16, scope: !563)
!567 = !DILocation(line: 580, column: 7, scope: !291)
!568 = !DILocation(line: 583, column: 31, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 583, column: 5)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 583, column: 5)
!571 = distinct !DILexicalBlock(scope: !563, file: !1, line: 581, column: 3)
!572 = !DILocation(line: 583, column: 29, scope: !569)
!573 = !DILocation(line: 583, column: 5, scope: !570)
!574 = !DILocation(line: 585, column: 58, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !1, line: 584, column: 5)
!576 = !DILocation(line: 585, column: 37, scope: !575)
!577 = !DILocation(line: 586, column: 14, scope: !575)
!578 = !{!365, !366, i64 24}
!579 = !DILocation(line: 586, column: 42, scope: !575)
!580 = !DILocation(line: 586, column: 35, scope: !575)
!581 = !DILocation(line: 586, column: 7, scope: !575)
!582 = !DILocation(line: 588, column: 18, scope: !571)
!583 = !DILocation(line: 588, column: 5, scope: !571)
!584 = !DILocation(line: 589, column: 11, scope: !571)
!585 = !DILocation(line: 589, column: 5, scope: !571)
!586 = !DILocation(line: 590, column: 24, scope: !571)
!587 = !DILocation(line: 590, column: 5, scope: !571)
!588 = !DILocation(line: 591, column: 13, scope: !571)
!589 = !DILocation(line: 592, column: 3, scope: !571)
!590 = !DILocation(line: 593, column: 1, scope: !291)
!591 = !DILocation(line: 501, column: 34, scope: !142)
!592 = !DILocation(line: 501, column: 40, scope: !142)
!593 = !DILocation(line: 503, column: 3, scope: !142)
!594 = !DILocation(line: 504, column: 11, scope: !142)
!595 = !DILocation(line: 504, column: 9, scope: !142)
!596 = !DILocation(line: 505, column: 3, scope: !142)
!597 = !DILocation(line: 506, column: 1, scope: !142)
!598 = !DILocation(line: 529, column: 29, scope: !148)
!599 = !DILocation(line: 534, column: 32, scope: !148)
!600 = !DILocation(line: 534, column: 11, scope: !148)
!601 = !DILocation(line: 531, column: 12, scope: !148)
!602 = !DILocation(line: 535, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !148, file: !1, line: 535, column: 7)
!604 = !DILocation(line: 535, column: 7, scope: !148)
!605 = !DILocation(line: 537, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !1, line: 536, column: 3)
!607 = !DILocation(line: 538, column: 3, scope: !606)
!608 = !DILocation(line: 541, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !1, line: 540, column: 3)
!610 = !DILocation(line: 545, column: 11, scope: !148)
!611 = !DILocation(line: 545, column: 3, scope: !148)
!612 = !DILocation(line: 549, column: 34, scope: !154)
!613 = !DILocation(line: 549, column: 45, scope: !154)
!614 = !DILocation(line: 551, column: 31, scope: !154)
!615 = !DILocation(line: 551, column: 11, scope: !154)
!616 = !DILocation(line: 551, column: 9, scope: !154)
!617 = !DILocation(line: 552, column: 1, scope: !154)
!618 = !DILocation(line: 616, column: 34, scope: !160)
!619 = !DILocation(line: 622, column: 32, scope: !160)
!620 = !DILocation(line: 622, column: 51, scope: !160)
!621 = !DILocation(line: 622, column: 16, scope: !160)
!622 = !DILocation(line: 619, column: 7, scope: !160)
!623 = !DILocation(line: 623, column: 18, scope: !624)
!624 = distinct !DILexicalBlock(scope: !160, file: !1, line: 623, column: 7)
!625 = !DILocation(line: 623, column: 7, scope: !160)
!626 = !DILocation(line: 618, column: 12, scope: !160)
!627 = !DILocation(line: 625, column: 35, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !1, line: 624, column: 3)
!629 = !DILocation(line: 625, column: 5, scope: !628)
!630 = !DILocation(line: 626, column: 3, scope: !628)
!631 = !DILocation(line: 629, column: 5, scope: !632)
!632 = distinct !DILexicalBlock(scope: !624, file: !1, line: 628, column: 3)
!633 = !DILocation(line: 633, column: 11, scope: !160)
!634 = !DILocation(line: 633, column: 3, scope: !160)
!635 = !DILocation(line: 710, column: 35, scope: !299)
!636 = !DILocation(line: 710, column: 56, scope: !299)
!637 = !DILocation(line: 716, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !299, file: !1, line: 716, column: 7)
!639 = !DILocation(line: 716, column: 13, scope: !638)
!640 = !DILocation(line: 716, column: 23, scope: !638)
!641 = !DILocation(line: 716, column: 16, scope: !638)
!642 = !DILocation(line: 719, column: 29, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 719, column: 5)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 719, column: 5)
!645 = distinct !DILexicalBlock(scope: !638, file: !1, line: 717, column: 3)
!646 = !DILocation(line: 716, column: 7, scope: !299)
!647 = !DILocation(line: 721, column: 58, scope: !648)
!648 = distinct !DILexicalBlock(scope: !643, file: !1, line: 720, column: 5)
!649 = !DILocation(line: 721, column: 37, scope: !648)
!650 = !DILocation(line: 722, column: 14, scope: !648)
!651 = !{!365, !366, i64 32}
!652 = !DILocation(line: 722, column: 40, scope: !648)
!653 = !DILocation(line: 722, column: 33, scope: !648)
!654 = !DILocation(line: 722, column: 7, scope: !648)
!655 = !DILocation(line: 719, column: 5, scope: !644)
!656 = !DILocation(line: 719, column: 31, scope: !643)
!657 = !DILocation(line: 725, column: 1, scope: !299)
!658 = !DILocation(line: 637, column: 34, scope: !165)
!659 = !DILocation(line: 637, column: 40, scope: !165)
!660 = !DILocation(line: 639, column: 3, scope: !165)
!661 = !DILocation(line: 640, column: 11, scope: !165)
!662 = !DILocation(line: 640, column: 9, scope: !165)
!663 = !DILocation(line: 641, column: 3, scope: !165)
!664 = !DILocation(line: 642, column: 1, scope: !165)
!665 = !DILocation(line: 665, column: 27, scope: !171)
!666 = !DILocation(line: 670, column: 32, scope: !171)
!667 = !DILocation(line: 670, column: 11, scope: !171)
!668 = !DILocation(line: 667, column: 12, scope: !171)
!669 = !DILocation(line: 671, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !171, file: !1, line: 671, column: 7)
!671 = !DILocation(line: 671, column: 7, scope: !171)
!672 = !DILocation(line: 673, column: 5, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !1, line: 672, column: 3)
!674 = !DILocation(line: 674, column: 3, scope: !673)
!675 = !DILocation(line: 677, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !1, line: 676, column: 3)
!677 = !DILocation(line: 681, column: 11, scope: !171)
!678 = !DILocation(line: 681, column: 3, scope: !171)
!679 = !DILocation(line: 685, column: 34, scope: !175)
!680 = !DILocation(line: 685, column: 45, scope: !175)
!681 = !DILocation(line: 687, column: 29, scope: !175)
!682 = !DILocation(line: 687, column: 11, scope: !175)
!683 = !DILocation(line: 687, column: 9, scope: !175)
!684 = !DILocation(line: 688, column: 1, scope: !175)
!685 = !DILocation(line: 748, column: 33, scope: !179)
!686 = !DILocation(line: 754, column: 32, scope: !179)
!687 = !DILocation(line: 754, column: 51, scope: !179)
!688 = !DILocation(line: 754, column: 16, scope: !179)
!689 = !DILocation(line: 751, column: 7, scope: !179)
!690 = !DILocation(line: 755, column: 18, scope: !691)
!691 = distinct !DILexicalBlock(scope: !179, file: !1, line: 755, column: 7)
!692 = !DILocation(line: 755, column: 7, scope: !179)
!693 = !DILocation(line: 750, column: 12, scope: !179)
!694 = !DILocation(line: 757, column: 34, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !1, line: 756, column: 3)
!696 = !DILocation(line: 757, column: 5, scope: !695)
!697 = !DILocation(line: 758, column: 3, scope: !695)
!698 = !DILocation(line: 761, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !1, line: 760, column: 3)
!700 = !DILocation(line: 765, column: 11, scope: !179)
!701 = !DILocation(line: 765, column: 3, scope: !179)
!702 = !DILocation(line: 842, column: 34, scope: !305)
!703 = !DILocation(line: 842, column: 55, scope: !305)
!704 = !DILocation(line: 847, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !305, file: !1, line: 847, column: 7)
!706 = !DILocation(line: 847, column: 13, scope: !705)
!707 = !DILocation(line: 847, column: 23, scope: !705)
!708 = !DILocation(line: 847, column: 16, scope: !705)
!709 = !DILocation(line: 850, column: 29, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 850, column: 5)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 850, column: 5)
!712 = distinct !DILexicalBlock(scope: !705, file: !1, line: 848, column: 3)
!713 = !DILocation(line: 847, column: 7, scope: !305)
!714 = !DILocation(line: 852, column: 58, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !1, line: 851, column: 5)
!716 = !DILocation(line: 852, column: 37, scope: !715)
!717 = !DILocation(line: 853, column: 14, scope: !715)
!718 = !{!365, !366, i64 40}
!719 = !DILocation(line: 853, column: 39, scope: !715)
!720 = !DILocation(line: 853, column: 32, scope: !715)
!721 = !DILocation(line: 853, column: 7, scope: !715)
!722 = !DILocation(line: 850, column: 5, scope: !711)
!723 = !DILocation(line: 850, column: 31, scope: !710)
!724 = !DILocation(line: 856, column: 1, scope: !305)
!725 = !DILocation(line: 769, column: 34, scope: !184)
!726 = !DILocation(line: 769, column: 40, scope: !184)
!727 = !DILocation(line: 771, column: 3, scope: !184)
!728 = !DILocation(line: 772, column: 11, scope: !184)
!729 = !DILocation(line: 772, column: 9, scope: !184)
!730 = !DILocation(line: 773, column: 3, scope: !184)
!731 = !DILocation(line: 774, column: 1, scope: !184)
!732 = !DILocation(line: 797, column: 26, scope: !190)
!733 = !DILocation(line: 802, column: 32, scope: !190)
!734 = !DILocation(line: 802, column: 11, scope: !190)
!735 = !DILocation(line: 799, column: 12, scope: !190)
!736 = !DILocation(line: 803, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !190, file: !1, line: 803, column: 7)
!738 = !DILocation(line: 803, column: 7, scope: !190)
!739 = !DILocation(line: 805, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !1, line: 804, column: 3)
!741 = !DILocation(line: 806, column: 3, scope: !740)
!742 = !DILocation(line: 809, column: 5, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !1, line: 808, column: 3)
!744 = !DILocation(line: 813, column: 11, scope: !190)
!745 = !DILocation(line: 813, column: 3, scope: !190)
!746 = !DILocation(line: 817, column: 34, scope: !194)
!747 = !DILocation(line: 817, column: 45, scope: !194)
!748 = !DILocation(line: 819, column: 28, scope: !194)
!749 = !DILocation(line: 819, column: 11, scope: !194)
!750 = !DILocation(line: 819, column: 9, scope: !194)
!751 = !DILocation(line: 820, column: 1, scope: !194)
!752 = !DILocation(line: 879, column: 34, scope: !198)
!753 = !DILocation(line: 885, column: 32, scope: !198)
!754 = !DILocation(line: 885, column: 51, scope: !198)
!755 = !DILocation(line: 885, column: 16, scope: !198)
!756 = !DILocation(line: 882, column: 7, scope: !198)
!757 = !DILocation(line: 886, column: 18, scope: !758)
!758 = distinct !DILexicalBlock(scope: !198, file: !1, line: 886, column: 7)
!759 = !DILocation(line: 886, column: 7, scope: !198)
!760 = !DILocation(line: 881, column: 12, scope: !198)
!761 = !DILocation(line: 888, column: 35, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !1, line: 887, column: 3)
!763 = !DILocation(line: 888, column: 5, scope: !762)
!764 = !DILocation(line: 889, column: 3, scope: !762)
!765 = !DILocation(line: 892, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !758, file: !1, line: 891, column: 3)
!767 = !DILocation(line: 896, column: 11, scope: !198)
!768 = !DILocation(line: 896, column: 3, scope: !198)
!769 = !DILocation(line: 973, column: 35, scope: !311)
!770 = !DILocation(line: 973, column: 56, scope: !311)
!771 = !DILocation(line: 979, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !311, file: !1, line: 979, column: 7)
!773 = !DILocation(line: 979, column: 13, scope: !772)
!774 = !DILocation(line: 979, column: 23, scope: !772)
!775 = !DILocation(line: 979, column: 16, scope: !772)
!776 = !DILocation(line: 982, column: 29, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !1, line: 982, column: 5)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 982, column: 5)
!779 = distinct !DILexicalBlock(scope: !772, file: !1, line: 980, column: 3)
!780 = !DILocation(line: 979, column: 7, scope: !311)
!781 = !DILocation(line: 984, column: 58, scope: !782)
!782 = distinct !DILexicalBlock(scope: !777, file: !1, line: 983, column: 5)
!783 = !DILocation(line: 984, column: 37, scope: !782)
!784 = !DILocation(line: 985, column: 14, scope: !782)
!785 = !{!365, !366, i64 48}
!786 = !DILocation(line: 985, column: 40, scope: !782)
!787 = !DILocation(line: 985, column: 33, scope: !782)
!788 = !DILocation(line: 985, column: 7, scope: !782)
!789 = !DILocation(line: 982, column: 5, scope: !778)
!790 = !DILocation(line: 982, column: 31, scope: !777)
!791 = !DILocation(line: 988, column: 1, scope: !311)
!792 = !DILocation(line: 900, column: 34, scope: !203)
!793 = !DILocation(line: 900, column: 40, scope: !203)
!794 = !DILocation(line: 902, column: 3, scope: !203)
!795 = !DILocation(line: 903, column: 11, scope: !203)
!796 = !DILocation(line: 903, column: 9, scope: !203)
!797 = !DILocation(line: 904, column: 3, scope: !203)
!798 = !DILocation(line: 905, column: 1, scope: !203)
!799 = !DILocation(line: 928, column: 27, scope: !209)
!800 = !DILocation(line: 933, column: 32, scope: !209)
!801 = !DILocation(line: 933, column: 11, scope: !209)
!802 = !DILocation(line: 930, column: 12, scope: !209)
!803 = !DILocation(line: 934, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !209, file: !1, line: 934, column: 7)
!805 = !DILocation(line: 934, column: 7, scope: !209)
!806 = !DILocation(line: 936, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !1, line: 935, column: 3)
!808 = !DILocation(line: 937, column: 3, scope: !807)
!809 = !DILocation(line: 940, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !804, file: !1, line: 939, column: 3)
!811 = !DILocation(line: 944, column: 11, scope: !209)
!812 = !DILocation(line: 944, column: 3, scope: !209)
!813 = !DILocation(line: 948, column: 34, scope: !213)
!814 = !DILocation(line: 948, column: 45, scope: !213)
!815 = !DILocation(line: 950, column: 29, scope: !213)
!816 = !DILocation(line: 950, column: 11, scope: !213)
!817 = !DILocation(line: 950, column: 9, scope: !213)
!818 = !DILocation(line: 951, column: 1, scope: !213)
!819 = !DILocation(line: 1016, column: 29, scope: !217)
!820 = !DILocation(line: 1016, column: 52, scope: !217)
!821 = !DILocation(line: 1022, column: 32, scope: !217)
!822 = !DILocation(line: 1022, column: 51, scope: !217)
!823 = !DILocation(line: 1022, column: 16, scope: !217)
!824 = !DILocation(line: 1019, column: 7, scope: !217)
!825 = !DILocation(line: 1023, column: 18, scope: !826)
!826 = distinct !DILexicalBlock(scope: !217, file: !1, line: 1023, column: 7)
!827 = !DILocation(line: 1023, column: 7, scope: !217)
!828 = !DILocation(line: 1018, column: 12, scope: !217)
!829 = !DILocation(line: 1025, column: 30, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !1, line: 1024, column: 3)
!831 = !DILocation(line: 1025, column: 5, scope: !830)
!832 = !DILocation(line: 1026, column: 3, scope: !830)
!833 = !DILocation(line: 1028, column: 11, scope: !217)
!834 = !DILocation(line: 1028, column: 3, scope: !217)
!835 = !DILocation(line: 1096, column: 30, scope: !317)
!836 = !DILocation(line: 1096, column: 51, scope: !317)
!837 = !DILocation(line: 1096, column: 70, scope: !317)
!838 = !DILocation(line: 1099, column: 15, scope: !317)
!839 = !DILocation(line: 1103, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !317, file: !1, line: 1103, column: 7)
!841 = !DILocation(line: 1103, column: 13, scope: !840)
!842 = !DILocation(line: 1103, column: 23, scope: !840)
!843 = !DILocation(line: 1103, column: 16, scope: !840)
!844 = !DILocation(line: 1106, column: 29, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 1106, column: 5)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 1106, column: 5)
!847 = distinct !DILexicalBlock(scope: !840, file: !1, line: 1104, column: 3)
!848 = !DILocation(line: 1103, column: 7, scope: !317)
!849 = !DILocation(line: 1109, column: 60, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !1, line: 1107, column: 5)
!851 = !DILocation(line: 1106, column: 5, scope: !846)
!852 = !DILocation(line: 1108, column: 58, scope: !850)
!853 = !DILocation(line: 1108, column: 37, scope: !850)
!854 = !DILocation(line: 1109, column: 14, scope: !850)
!855 = !{!365, !366, i64 56}
!856 = !DILocation(line: 1109, column: 38, scope: !850)
!857 = !DILocation(line: 1109, column: 31, scope: !850)
!858 = !DILocation(line: 1109, column: 54, scope: !850)
!859 = !{!860, !366, i64 8}
!860 = !{!"", !369, i64 0, !366, i64 8}
!861 = !DILocation(line: 1109, column: 7, scope: !850)
!862 = !DILocation(line: 1111, column: 28, scope: !850)
!863 = !DILocation(line: 1111, column: 18, scope: !850)
!864 = !DILocation(line: 1106, column: 31, scope: !845)
!865 = !DILocation(line: 1114, column: 9, scope: !317)
!866 = !DILocation(line: 1114, column: 16, scope: !317)
!867 = !{!860, !369, i64 0}
!868 = !DILocation(line: 1115, column: 1, scope: !317)
!869 = !DILocation(line: 1057, column: 22, scope: !225)
!870 = !DILocation(line: 1057, column: 46, scope: !225)
!871 = !DILocation(line: 1062, column: 32, scope: !225)
!872 = !DILocation(line: 1062, column: 11, scope: !225)
!873 = !DILocation(line: 1059, column: 12, scope: !225)
!874 = !DILocation(line: 1063, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !225, file: !1, line: 1063, column: 7)
!876 = !DILocation(line: 1063, column: 7, scope: !225)
!877 = !DILocation(line: 1065, column: 5, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !1, line: 1064, column: 3)
!879 = !DILocation(line: 1066, column: 3, scope: !878)
!880 = !DILocation(line: 1068, column: 11, scope: !225)
!881 = !DILocation(line: 1068, column: 3, scope: !225)
!882 = !DILocation(line: 1136, column: 27, scope: !232)
!883 = !DILocation(line: 1136, column: 12, scope: !232)
!884 = !DILocation(line: 1133, column: 15, scope: !232)
!885 = !DILocation(line: 1137, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !232, file: !1, line: 1137, column: 7)
!887 = !DILocation(line: 1137, column: 7, scope: !232)
!888 = !DILocation(line: 1139, column: 22, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !1, line: 1138, column: 3)
!890 = !DILocation(line: 1139, column: 13, scope: !889)
!891 = !DILocation(line: 1139, column: 20, scope: !889)
!892 = !DILocation(line: 1141, column: 42, scope: !889)
!893 = !DILocation(line: 1141, column: 55, scope: !889)
!894 = !DILocation(line: 1141, column: 34, scope: !889)
!895 = !DILocation(line: 1141, column: 13, scope: !889)
!896 = !DILocation(line: 1141, column: 18, scope: !889)
!897 = !DILocation(line: 1142, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1142, column: 9)
!899 = !DILocation(line: 1142, column: 9, scope: !889)
!900 = !DILocation(line: 1144, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !1, line: 1143, column: 5)
!902 = !DILocation(line: 1146, column: 5, scope: !901)
!903 = !DILocation(line: 1149, column: 3, scope: !232)
!904 = !DILocation(line: 1172, column: 40, scope: !237)
!905 = !DILocation(line: 1174, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !237, file: !1, line: 1174, column: 7)
!907 = !DILocation(line: 1174, column: 7, scope: !237)
!908 = !DILocation(line: 1176, column: 15, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !1, line: 1176, column: 9)
!910 = distinct !DILexicalBlock(scope: !906, file: !1, line: 1175, column: 3)
!911 = !DILocation(line: 1176, column: 9, scope: !909)
!912 = !DILocation(line: 1176, column: 9, scope: !910)
!913 = !DILocation(line: 1178, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !909, file: !1, line: 1177, column: 5)
!915 = !DILocation(line: 1178, column: 7, scope: !914)
!916 = !DILocation(line: 1180, column: 5, scope: !914)
!917 = !DILocation(line: 1181, column: 11, scope: !910)
!918 = !DILocation(line: 1181, column: 5, scope: !910)
!919 = !DILocation(line: 1182, column: 3, scope: !910)
!920 = !DILocation(line: 1184, column: 3, scope: !237)
!921 = !DILocation(line: 1214, column: 31, scope: !242)
!922 = !DILocation(line: 1214, column: 47, scope: !242)
!923 = !DILocation(line: 1217, column: 17, scope: !242)
!924 = !DILocation(line: 1224, column: 18, scope: !925)
!925 = distinct !DILexicalBlock(scope: !242, file: !1, line: 1224, column: 7)
!926 = !DILocation(line: 1224, column: 7, scope: !242)
!927 = !DILocation(line: 1219, column: 7, scope: !242)
!928 = !DILocation(line: 1219, column: 19, scope: !242)
!929 = !DILocation(line: 1233, column: 20, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 1233, column: 9)
!931 = distinct !DILexicalBlock(scope: !925, file: !1, line: 1230, column: 3)
!932 = !DILocation(line: 1233, column: 24, scope: !930)
!933 = !DILocation(line: 1232, column: 28, scope: !931)
!934 = !DILocation(line: 273, column: 11, scope: !105, inlinedAt: !935)
!935 = distinct !DILocation(line: 1233, column: 40, scope: !930)
!936 = !DILocation(line: 1233, column: 38, scope: !930)
!937 = !DILocation(line: 1233, column: 9, scope: !931)
!938 = !DILocation(line: 1235, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !930, file: !1, line: 1234, column: 5)
!940 = !DILocation(line: 1217, column: 10, scope: !242)
!941 = !DILocation(line: 1242, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !242, file: !1, line: 1242, column: 3)
!943 = !DILocation(line: 273, column: 11, scope: !105, inlinedAt: !944)
!944 = distinct !DILocation(line: 1227, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !925, file: !1, line: 1225, column: 3)
!946 = !DILocation(line: 1242, column: 34, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !1, line: 1242, column: 3)
!948 = !DILocation(line: 1249, column: 20, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 1249, column: 9)
!950 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1243, column: 3)
!951 = !DILocation(line: 1257, column: 30, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1255, column: 5)
!953 = !DILocation(line: 1244, column: 12, scope: !950)
!954 = !DILocation(line: 1216, column: 15, scope: !242)
!955 = !DILocation(line: 1245, column: 5, scope: !950)
!956 = !DILocation(line: 303, column: 33, scope: !109, inlinedAt: !957)
!957 = distinct !DILocation(line: 1247, column: 45, scope: !950)
!958 = !DILocation(line: 308, column: 32, scope: !109, inlinedAt: !957)
!959 = !DILocation(line: 308, column: 12, scope: !109, inlinedAt: !957)
!960 = !DILocation(line: 305, column: 15, scope: !109, inlinedAt: !957)
!961 = !DILocation(line: 1247, column: 5, scope: !950)
!962 = !DILocation(line: 1249, column: 9, scope: !950)
!963 = !DILocation(line: 1218, column: 7, scope: !242)
!964 = !DILocation(line: 1252, column: 25, scope: !965)
!965 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1250, column: 5)
!966 = !DILocation(line: 1218, column: 19, scope: !242)
!967 = !DILocation(line: 1217, column: 7, scope: !242)
!968 = !DILocation(line: 1260, column: 28, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 1260, column: 5)
!970 = distinct !DILexicalBlock(scope: !950, file: !1, line: 1260, column: 5)
!971 = !DILocation(line: 1260, column: 5, scope: !970)
!972 = !DILocation(line: 1262, column: 21, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !1, line: 1261, column: 5)
!974 = !DILocation(line: 1262, column: 29, scope: !973)
!975 = !{!976, !367, i64 0}
!976 = !{!"", !367, i64 0, !366, i64 8, !366, i64 16, !367, i64 24}
!977 = !DILocation(line: 1262, column: 7, scope: !973)
!978 = !DILocation(line: 1265, column: 50, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1263, column: 7)
!980 = !{!976, !366, i64 8}
!981 = !DILocation(line: 1266, column: 33, scope: !979)
!982 = !DILocation(line: 1266, column: 37, scope: !979)
!983 = !DILocation(line: 1266, column: 54, scope: !979)
!984 = !{!976, !366, i64 16}
!985 = !DILocation(line: 1265, column: 11, scope: !979)
!986 = !DILocation(line: 1267, column: 11, scope: !979)
!987 = !DILocation(line: 1270, column: 50, scope: !979)
!988 = !DILocation(line: 1271, column: 43, scope: !979)
!989 = !{!990, !990, i64 0}
!990 = !{!"long", !367, i64 0}
!991 = !DILocation(line: 1271, column: 19, scope: !979)
!992 = !DILocation(line: 1271, column: 60, scope: !979)
!993 = !DILocation(line: 1270, column: 11, scope: !979)
!994 = !DILocation(line: 1272, column: 11, scope: !979)
!995 = !DILocation(line: 1275, column: 52, scope: !979)
!996 = !DILocation(line: 1276, column: 33, scope: !979)
!997 = !DILocation(line: 1276, column: 37, scope: !979)
!998 = !{!999, !999, i64 0}
!999 = !{!"double", !367, i64 0}
!1000 = !DILocation(line: 1276, column: 54, scope: !979)
!1001 = !DILocation(line: 1275, column: 11, scope: !979)
!1002 = !DILocation(line: 1277, column: 11, scope: !979)
!1003 = !DILocation(line: 1280, column: 11, scope: !979)
!1004 = !DILocation(line: 1282, column: 11, scope: !979)
!1005 = !DILocation(line: 1285, column: 5, scope: !950)
!1006 = !DILocation(line: 1242, column: 52, scope: !947)
!1007 = !DILocation(line: 1288, column: 3, scope: !242)
!1008 = !DILocation(line: 1292, column: 34, scope: !256)
!1009 = !DILocation(line: 1292, column: 45, scope: !256)
!1010 = !DILocation(line: 1292, column: 62, scope: !256)
!1011 = !DILocation(line: 1294, column: 33, scope: !256)
!1012 = !DILocation(line: 1294, column: 46, scope: !256)
!1013 = !DILocation(line: 1294, column: 11, scope: !256)
!1014 = !DILocation(line: 1294, column: 9, scope: !256)
!1015 = !DILocation(line: 1295, column: 1, scope: !256)
!1016 = !DILocation(line: 1323, column: 38, scope: !263)
!1017 = !DILocation(line: 1323, column: 61, scope: !263)
!1018 = !DILocation(line: 1325, column: 31, scope: !263)
!1019 = !DILocation(line: 1330, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !263, file: !1, line: 1330, column: 7)
!1021 = !DILocation(line: 1330, column: 7, scope: !263)
!1022 = !DILocation(line: 1336, column: 18, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 1335, column: 3)
!1024 = !DILocation(line: 1325, column: 19, scope: !263)
!1025 = !DILocation(line: 1337, column: 20, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1337, column: 9)
!1027 = !DILocation(line: 1337, column: 9, scope: !1023)
!1028 = !DILocation(line: 1339, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 1338, column: 5)
!1030 = !DILocation(line: 1342, column: 5, scope: !1029)
!1031 = !DILocation(line: 1345, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !263, file: !1, line: 1345, column: 7)
!1033 = !DILocation(line: 1345, column: 7, scope: !263)
!1034 = !DILocation(line: 1351, column: 34, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 1350, column: 3)
!1036 = !DILocation(line: 1351, column: 18, scope: !1035)
!1037 = !DILocation(line: 1325, column: 7, scope: !263)
!1038 = !DILocation(line: 1352, column: 20, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 1352, column: 9)
!1040 = !DILocation(line: 1352, column: 9, scope: !1035)
!1041 = !DILocation(line: 1354, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 1353, column: 5)
!1043 = !DILocation(line: 1360, column: 7, scope: !263)
!1044 = !DILocation(line: 1360, column: 14, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !263, file: !1, line: 1360, column: 7)
!1046 = !DILocation(line: 1362, column: 14, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1361, column: 3)
!1048 = !DILocation(line: 1363, column: 3, scope: !1047)
!1049 = !DILocation(line: 1365, column: 3, scope: !263)
!1050 = !DILocation(line: 1369, column: 34, scope: !272)
!1051 = !DILocation(line: 1369, column: 40, scope: !272)
!1052 = !DILocation(line: 1371, column: 3, scope: !272)
!1053 = !DILocation(line: 1374, column: 32, scope: !272)
!1054 = !{!367, !367, i64 0}
!1055 = !DILocation(line: 1374, column: 55, scope: !272)
!1056 = !DILocation(line: 1374, column: 11, scope: !272)
!1057 = !DILocation(line: 1374, column: 9, scope: !272)
!1058 = !DILocation(line: 1375, column: 3, scope: !272)
!1059 = !DILocation(line: 1376, column: 3, scope: !272)
!1060 = !DILocation(line: 1377, column: 1, scope: !272)
