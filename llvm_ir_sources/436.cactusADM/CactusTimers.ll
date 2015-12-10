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
  ret i8* getelementptr inbounds ([88 x i8]* @.str18, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ClockRegister(i8* %clockname, %struct.cClockFuncs* nocapture readonly %functions) #1 {
  %1 = tail call i8* @malloc(i64 72) #7
  %2 = icmp eq i8* %1, null
  br i1 %2, label %.preheader, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %1 to i8**
  store i8* %clockname, i8** %4, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !8
  %7 = getelementptr inbounds i8* %1, i64 8
  %8 = bitcast i8* %7 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !8
  %9 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 2
  %10 = getelementptr inbounds i8* %1, i64 16
  %11 = bitcast i8* (i32)** %9 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8, !tbaa !9
  %13 = bitcast i8* %10 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 4
  %15 = getelementptr inbounds i8* %1, i64 32
  %16 = bitcast void (i32, i8*)** %14 to <2 x i64>*
  %17 = load <2 x i64>* %16, align 8, !tbaa !9
  %18 = bitcast i8* %15 to <2 x i64>*
  store <2 x i64> %17, <2 x i64>* %18, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 6
  %20 = getelementptr inbounds i8* %1, i64 48
  %21 = bitcast void (i32, i8*)** %19 to <2 x i64>*
  %22 = load <2 x i64>* %21, align 8, !tbaa !9
  %23 = bitcast i8* %20 to <2 x i64>*
  store <2 x i64> %22, <2 x i64>* %23, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 8
  %25 = bitcast void (i32, i8*, %struct.cTimerVal*)** %24 to i64*
  %26 = load i64* %25, align 8, !tbaa !10
  %27 = getelementptr inbounds i8* %1, i64 64
  %28 = bitcast i8* %27 to i64*
  store i64 %26, i64* %28, align 8, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %0, %3
  %29 = load i32* @n_timers, align 4, !tbaa !11
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %31 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 2
  br label %32

; <label>:32                                      ; preds = %.lr.ph, %51
  %handle.01 = phi i32 [ 0, %.lr.ph ], [ %52, %51 ]
  %33 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %34 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %33, i32 %handle.01) #7
  %35 = bitcast i8* %34 to i8**
  %36 = load i8** %35, align 8, !tbaa !12
  %37 = load i32* @n_clocks, align 4, !tbaa !11
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call i8* @realloc(i8* %36, i64 %40) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %51, label %43

; <label>:43                                      ; preds = %32
  %44 = bitcast i8* %34 to i8***
  store i8* %41, i8** %35, align 8, !tbaa !12
  %45 = load i8* (i32)** %31, align 8, !tbaa !14
  %46 = tail call i8* %45(i32 %handle.01) #7
  %47 = load i32* @n_clocks, align 4, !tbaa !11
  %48 = sext i32 %47 to i64
  %49 = load i8*** %44, align 8, !tbaa !12
  %50 = getelementptr inbounds i8** %49, i64 %48
  store i8* %46, i8** %50, align 8, !tbaa !9
  br label %51

; <label>:51                                      ; preds = %32, %43
  %52 = add nuw nsw i32 %handle.01, 1
  %53 = load i32* @n_timers, align 4, !tbaa !11
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %32, label %._crit_edge

._crit_edge:                                      ; preds = %51, %.preheader
  %55 = tail call i32 @Util_NewHandle(%struct.cHandledData** @clocks, i8* %clockname, i8* %1) #7
  %56 = load i32* @n_clocks, align 4, !tbaa !11
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @n_clocks, align 4, !tbaa !11
  %58 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 1
  %59 = load i32* %58, align 4, !tbaa !8
  %60 = load i32* @n_clock_vals, align 4, !tbaa !11
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* @n_clock_vals, align 4, !tbaa !11
  ret i32 %55
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_ClockName(i32 %handle) #1 {
  %1 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #7
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**
  %6 = load i8** %5, align 8, !tbaa !2
  br label %7

; <label>:7                                       ; preds = %0, %4
  %8 = phi i8* [ %6, %4 ], [ null, %0 ]
  ret i8* %8
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ClockHandle(i8* nocapture readonly %clockname) #1 {
  %1 = load i32* @n_clocks, align 4, !tbaa !11
  %handle.01 = add nsw i32 %1, -1
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.backedge
  %handle.02 = phi i32 [ %handle.0, %.backedge ], [ %handle.01, %0 ]
  %3 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.02) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %.backedge, label %7

.backedge:                                        ; preds = %.lr.ph, %7
  %handle.0 = add nsw i32 %handle.02, -1
  %6 = icmp sgt i32 %handle.02, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

; <label>:7                                       ; preds = %.lr.ph
  %8 = bitcast i8* %4 to i8**
  %9 = load i8** %8, align 8, !tbaa !2
  %10 = tail call i32 @strcmp(i8* %9, i8* %clockname) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %._crit_edge, label %.backedge

._crit_edge:                                      ; preds = %.backedge, %7, %0
  %handle.0.lcssa = phi i32 [ %handle.01, %0 ], [ %handle.0, %.backedge ], [ %handle.02, %7 ]
  ret i32 %handle.0.lcssa
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumClocks() #4 {
  %1 = load i32* @n_clocks, align 4, !tbaa !11
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numclocks_(i32* nocapture %nclocks) #1 {
  %1 = load i32* @n_clocks, align 4, !tbaa !11
  store i32 %1, i32* %nclocks, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumTimers() #4 {
  %1 = load i32* @n_timers, align 4, !tbaa !11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numtimers_(i32* nocapture %ntimers) #1 {
  %1 = load i32* @n_timers, align 4, !tbaa !11
  store i32 %1, i32* %ntimers, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_TimerName(i32 %timer_handle) #1 {
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %1, i32 %timer_handle) #7
  ret i8* %2
}

; Function Attrs: optsize
declare i8* @Util_GetHandleName(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerCreate(i8* %timername) #1 {
  %1 = tail call fastcc i32 @CCTKi_TimerCreate(i8* %timername) #8
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CCTKi_TimerCreate(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = bitcast %struct.t_Timer** %timer to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %.loopexit, label %5

; <label>:5                                       ; preds = %0
  %6 = call i8* @malloc(i64 8) #7
  store i8* %6, i8** %2, align 8, !tbaa !9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %.loopexit, label %8

; <label>:8                                       ; preds = %5
  %9 = bitcast i8* %6 to i8**
  %10 = load i32* @n_clocks, align 4, !tbaa !11
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = call i8* @malloc(i64 %12) #7
  store i8* %13, i8** %9, align 8, !tbaa !12
  %14 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.t_Timer* %14, i64 0, i32 0
  %16 = load i8*** %15, align 8, !tbaa !12
  %17 = icmp eq i8** %16, null
  %18 = bitcast %struct.t_Timer* %14 to i8*
  br i1 %17, label %39, label %19

; <label>:19                                      ; preds = %8
  %20 = call i32 @Util_NewHandle(%struct.cHandledData** @timers, i8* %timername, i8* %18) #7
  %21 = load i32* @n_timers, align 4, !tbaa !11
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @n_timers, align 4, !tbaa !11
  %23 = load i32* @n_clocks, align 4, !tbaa !11
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %19 ]
  %25 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %26 = trunc i64 %indvars.iv to i32
  %27 = call i8* @Util_GetHandledData(%struct.cHandledData* %25, i32 %26) #7
  %28 = getelementptr inbounds i8* %27, i64 16
  %29 = bitcast i8* %28 to i8* (i32)**
  %30 = load i8* (i32)** %29, align 8, !tbaa !14
  %31 = call i8* %30(i32 %20) #7
  %32 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.t_Timer* %32, i64 0, i32 0
  %34 = load i8*** %33, align 8, !tbaa !12
  %35 = getelementptr inbounds i8** %34, i64 %indvars.iv
  store i8* %31, i8** %35, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = load i32* @n_clocks, align 4, !tbaa !11
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %indvars.iv.next, %37
  br i1 %38, label %.lr.ph, label %.loopexit

; <label>:39                                      ; preds = %8
  call void @free(i8* %18) #8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %19, %5, %0, %39
  %retval.0 = phi i32 [ -2, %39 ], [ -1, %0 ], [ -2, %5 ], [ %20, %19 ], [ %20, %.lr.ph ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timercreate_(i32* nocapture %timer_index, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call fastcc i32 @CCTKi_TimerCreate(i8* %1) #7
  store i32 %2, i32* %timer_index, align 4, !tbaa !11
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerCreateI() #1 {
  %timername = alloca [40 x i8], align 16
  %1 = getelementptr inbounds [40 x i8]* %timername, i64 0, i64 0
  call void @llvm.lifetime.start(i64 40, i8* %1) #6
  %2 = load i32* @n_timers, align 4, !tbaa !11
  %3 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 40, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %2) #7
  %4 = call fastcc i32 @CCTKi_TimerCreate(i8* %1) #8
  call void @llvm.lifetime.end(i64 40, i8* %1) #6
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timercreatei_(i32* nocapture %ierr) #1 {
  %timername.i = alloca [40 x i8], align 16
  %1 = getelementptr inbounds [40 x i8]* %timername.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 40, i8* %1) #6
  %2 = load i32* @n_timers, align 4, !tbaa !11
  %3 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 40, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %2) #7
  %4 = call fastcc i32 @CCTKi_TimerCreate(i8* %1) #7
  call void @llvm.lifetime.end(i64 40, i8* %1) #6
  store i32 %4, i32* %ierr, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerDestroy(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = bitcast %struct.t_Timer** %timer to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  call fastcc void @CCTKi_TimerDestroy(i32 %3, %struct.t_Timer* %6) #8
  br label %9

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 493, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* %timername) #7
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true
  %10 = sext i1 %not. to i32
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerDestroy(i32 %this_timer, %struct.t_Timer* %timer) #1 {
  %1 = icmp eq %struct.t_Timer* %timer, null
  br i1 %1, label %27, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0
  %4 = load i8*** %3, align 8, !tbaa !12
  %5 = icmp eq i8** %4, null
  br i1 %5, label %27, label %.preheader

.preheader:                                       ; preds = %2
  %6 = bitcast i8** %4 to i8*
  %7 = load i32* @n_clocks, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %9 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %10 = trunc i64 %indvars.iv to i32
  %11 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %9, i32 %10) #7
  %12 = getelementptr inbounds i8* %11, i64 24
  %13 = bitcast i8* %12 to void (i32, i8*)**
  %14 = load void (i32, i8*)** %13, align 8, !tbaa !15
  %15 = load i8*** %3, align 8, !tbaa !12
  %16 = getelementptr inbounds i8** %15, i64 %indvars.iv
  %17 = load i8** %16, align 8, !tbaa !9
  tail call void %14(i32 %this_timer, i8* %17) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = load i32* @n_clocks, align 4, !tbaa !11
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %indvars.iv.next, %19
  br i1 %20, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = bitcast %struct.t_Timer* %timer to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !12
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge
  %21 = phi i8* [ %.pre, %._crit_edge ], [ %6, %.preheader ]
  tail call void @free(i8* %21) #8
  %22 = bitcast %struct.t_Timer* %timer to i8*
  tail call void @free(i8* %22) #8
  %23 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %24 = tail call i32 @Util_DeleteHandle(%struct.cHandledData* %23, i32 %this_timer) #7
  %25 = load i32* @n_timers, align 4, !tbaa !11
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @n_timers, align 4, !tbaa !11
  br label %27

; <label>:27                                      ; preds = %2, %0, %.preheader._crit_edge
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerdestroy_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call i32 @CCTK_TimerDestroy(i8* %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerDestroyI(i32 %this_timer) #1 {
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #7
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*
  tail call fastcc void @CCTKi_TimerDestroy(i32 %this_timer, %struct.t_Timer* %5) #8
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 541, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0), i32 %this_timer) #7
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true
  %9 = sext i1 %not. to i32
  ret i32 %9
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerdestroyi_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  %1 = load i32* %this_timer, align 4, !tbaa !11
  %2 = tail call i32 @CCTK_TimerDestroyI(i32 %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStart(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = bitcast %struct.t_Timer** %timer to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  call fastcc void @CCTKi_TimerStart(i32 %3, %struct.t_Timer* %6) #8
  br label %9

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 629, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i8* %timername) #7
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true
  %10 = sext i1 %not. to i32
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerStart(i32 %this_timer, %struct.t_Timer* readonly %timer) #1 {
  %1 = icmp eq %struct.t_Timer* %timer, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0
  %4 = load i8*** %3, align 8, !tbaa !12
  %5 = icmp ne i8** %4, null
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0
  %or.cond = and i1 %5, %7
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %8 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %9 = trunc i64 %indvars.iv to i32
  %10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %8, i32 %9) #7
  %11 = getelementptr inbounds i8* %10, i64 32
  %12 = bitcast i8* %11 to void (i32, i8*)**
  %13 = load void (i32, i8*)** %12, align 8, !tbaa !16
  %14 = load i8*** %3, align 8, !tbaa !12
  %15 = getelementptr inbounds i8** %14, i64 %indvars.iv
  %16 = load i8** %15, align 8, !tbaa !9
  tail call void %13(i32 %this_timer, i8* %16) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32* @n_clocks, align 4, !tbaa !11
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %2, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstart_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call i32 @CCTK_TimerStart(i8* %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStartI(i32 %this_timer) #1 {
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #7
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*
  tail call fastcc void @CCTKi_TimerStart(i32 %this_timer, %struct.t_Timer* %5) #8
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 677, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), i32 %this_timer) #7
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true
  %9 = sext i1 %not. to i32
  ret i32 %9
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstarti_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  %1 = load i32* %this_timer, align 4, !tbaa !11
  %2 = tail call i32 @CCTK_TimerStartI(i32 %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStop(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = bitcast %struct.t_Timer** %timer to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  call fastcc void @CCTKi_TimerStop(i32 %3, %struct.t_Timer* %6) #8
  br label %9

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 761, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i8* %timername) #7
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true
  %10 = sext i1 %not. to i32
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerStop(i32 %this_timer, %struct.t_Timer* readonly %timer) #1 {
  %1 = icmp eq %struct.t_Timer* %timer, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0
  %4 = load i8*** %3, align 8, !tbaa !12
  %5 = icmp ne i8** %4, null
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0
  %or.cond = and i1 %5, %7
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %8 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %9 = trunc i64 %indvars.iv to i32
  %10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %8, i32 %9) #7
  %11 = getelementptr inbounds i8* %10, i64 40
  %12 = bitcast i8* %11 to void (i32, i8*)**
  %13 = load void (i32, i8*)** %12, align 8, !tbaa !17
  %14 = load i8*** %3, align 8, !tbaa !12
  %15 = getelementptr inbounds i8** %14, i64 %indvars.iv
  %16 = load i8** %15, align 8, !tbaa !9
  tail call void %13(i32 %this_timer, i8* %16) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32* @n_clocks, align 4, !tbaa !11
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %2, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstop_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call i32 @CCTK_TimerStop(i8* %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerStopI(i32 %this_timer) #1 {
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #7
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*
  tail call fastcc void @CCTKi_TimerStop(i32 %this_timer, %struct.t_Timer* %5) #8
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 809, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), i32 %this_timer) #7
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true
  %9 = sext i1 %not. to i32
  ret i32 %9
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerstopi_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  %1 = load i32* %this_timer, align 4, !tbaa !11
  %2 = tail call i32 @CCTK_TimerStopI(i32 %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerReset(i8* %timername) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = bitcast %struct.t_Timer** %timer to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  call fastcc void @CCTKi_TimerReset(i32 %3, %struct.t_Timer* %6) #8
  br label %9

; <label>:7                                       ; preds = %0
  %8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 892, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i8* %timername) #7
  br label %9

; <label>:9                                       ; preds = %7, %5
  %not. = xor i1 %4, true
  %10 = sext i1 %not. to i32
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_TimerReset(i32 %this_timer, %struct.t_Timer* readonly %timer) #1 {
  %1 = icmp eq %struct.t_Timer* %timer, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0
  %4 = load i8*** %3, align 8, !tbaa !12
  %5 = icmp ne i8** %4, null
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0
  %or.cond = and i1 %5, %7
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %8 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %9 = trunc i64 %indvars.iv to i32
  %10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %8, i32 %9) #7
  %11 = getelementptr inbounds i8* %10, i64 48
  %12 = bitcast i8* %11 to void (i32, i8*)**
  %13 = load void (i32, i8*)** %12, align 8, !tbaa !18
  %14 = load i8*** %3, align 8, !tbaa !12
  %15 = getelementptr inbounds i8** %14, i64 %indvars.iv
  %16 = load i8** %15, align 8, !tbaa !9
  tail call void %13(i32 %this_timer, i8* %16) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32* @n_clocks, align 4, !tbaa !11
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %2, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerreset_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call i32 @CCTK_TimerReset(i8* %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerResetI(i32 %this_timer) #1 {
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #7
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*
  tail call fastcc void @CCTKi_TimerReset(i32 %this_timer, %struct.t_Timer* %5) #8
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 940, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), i32 %this_timer) #7
  br label %8

; <label>:8                                       ; preds = %6, %4
  %not. = xor i1 %3, true
  %9 = sext i1 %not. to i32
  ret i32 %9
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerreseti_(i32* nocapture %ierr, i32* nocapture readonly %this_timer) #1 {
  %1 = load i32* %this_timer, align 4, !tbaa !11
  %2 = tail call i32 @CCTK_TimerResetI(i32 %1) #8
  store i32 %2, i32* %ierr, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Timer(i8* %timername, %struct.cTimerData* nocapture %info) #1 {
  %timer = alloca %struct.t_Timer*, align 8
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = bitcast %struct.t_Timer** %timer to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %timername, i8** %2) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.t_Timer** %timer, align 8, !tbaa !9
  call fastcc void @CCTKi_Timer(i32 %3, %struct.t_Timer* %6, %struct.cTimerData* %info) #8
  br label %7

; <label>:7                                       ; preds = %5, %0
  %not. = xor i1 %4, true
  %8 = sext i1 %not. to i32
  ret i32 %8
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_Timer(i32 %this_timer, %struct.t_Timer* readonly %timer, %struct.cTimerData* nocapture %info) #1 {
  %1 = icmp eq %struct.t_Timer* %timer, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0
  %4 = load i8*** %3, align 8, !tbaa !12
  %5 = icmp ne i8** %4, null
  %6 = load i32* @n_clocks, align 4
  %7 = icmp sgt i32 %6, 0
  %or.cond = and i1 %5, %7
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  %8 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 1
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %total_vars.02 = phi i32 [ 0, %.lr.ph ], [ %25, %9 ]
  %10 = load %struct.cHandledData** @clocks, align 8, !tbaa !9
  %11 = trunc i64 %indvars.iv to i32
  %12 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %10, i32 %11) #7
  %13 = getelementptr inbounds i8* %12, i64 56
  %14 = bitcast i8* %13 to void (i32, i8*, %struct.cTimerVal*)**
  %15 = load void (i32, i8*, %struct.cTimerVal*)** %14, align 8, !tbaa !19
  %16 = load i8*** %3, align 8, !tbaa !12
  %17 = getelementptr inbounds i8** %16, i64 %indvars.iv
  %18 = load i8** %17, align 8, !tbaa !9
  %19 = sext i32 %total_vars.02 to i64
  %20 = load %struct.cTimerVal** %8, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.cTimerVal* %20, i64 %19
  tail call void %15(i32 %this_timer, i8* %18, %struct.cTimerVal* %21) #7
  %22 = getelementptr inbounds i8* %12, i64 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32* %23, align 4, !tbaa !8
  %25 = add nsw i32 %24, %total_vars.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = load i32* @n_clocks, align 4, !tbaa !11
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next, %27
  br i1 %28, label %9, label %.loopexit

.loopexit:                                        ; preds = %9, %2, %0
  %total_vars.1 = phi i32 [ 0, %2 ], [ 0, %0 ], [ %25, %9 ]
  %29 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 0
  store i32 %total_vars.1, i32* %29, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerI(i32 %this_timer, %struct.cTimerData* nocapture %info) #1 {
  %1 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_timer) #7
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to %struct.t_Timer*
  tail call fastcc void @CCTKi_Timer(i32 %this_timer, %struct.t_Timer* %5, %struct.cTimerData* %info) #8
  br label %6

; <label>:6                                       ; preds = %4, %0
  %not. = xor i1 %3, true
  %7 = sext i1 %not. to i32
  ret i32 %7
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.cTimerData* @CCTK_TimerCreateData() #1 {
  %1 = tail call i8* @malloc(i64 16) #7
  %2 = bitcast i8* %1 to %struct.cTimerData*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %14, label %4

; <label>:4                                       ; preds = %0
  %5 = load i32* @n_clock_vals, align 4, !tbaa !11
  %6 = bitcast i8* %1 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !22
  %7 = sext i32 %5 to i64
  %8 = shl nsw i64 %7, 5
  %9 = tail call i8* @malloc(i64 %8) #7
  %10 = getelementptr inbounds i8* %1, i64 8
  %11 = bitcast i8* %10 to i8**
  store i8* %9, i8** %11, align 8, !tbaa !20
  %12 = icmp eq i8* %9, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %4
  tail call void @free(i8* %1) #8
  br label %14

; <label>:14                                      ; preds = %4, %0, %13
  %retval.0 = phi %struct.cTimerData* [ %2, %4 ], [ null, %13 ], [ %2, %0 ]
  ret %struct.cTimerData* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerDestroyData(%struct.cTimerData* %info) #1 {
  %1 = icmp eq %struct.cTimerData* %info, null
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 1
  %4 = load %struct.cTimerVal** %3, align 8, !tbaa !20
  %5 = icmp eq %struct.cTimerVal* %4, null
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %2
  %7 = bitcast %struct.cTimerVal* %4 to i8*
  tail call void @free(i8* %7) #8
  br label %8

; <label>:8                                       ; preds = %2, %6
  %9 = bitcast %struct.cTimerData* %info to i8*
  tail call void @free(i8* %9) #8
  br label %10

; <label>:10                                      ; preds = %0, %8
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerPrintDataI(i32 %this_timer, i32 %this_clock) #1 {
  %1 = icmp eq i32 %this_timer, -1
  br i1 %1, label %9, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp slt i32 %this_timer, 0
  br i1 %3, label %.thread11, label %4

; <label>:4                                       ; preds = %2
  %5 = add nsw i32 %this_timer, 1
  %6 = load i32* @n_timers, align 4, !tbaa !11
  %7 = icmp slt i32 %6, %this_timer
  br i1 %7, label %.thread11, label %.lr.ph4

.thread11:                                        ; preds = %2, %4
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1235, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i32 %this_timer) #7
  br label %._crit_edge5

; <label>:9                                       ; preds = %0
  %10 = load i32* @n_timers, align 4, !tbaa !11
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %4, %9
  %lasttimer.010 = phi i32 [ %10, %9 ], [ %5, %4 ]
  %firsttimer.09 = phi i32 [ 0, %9 ], [ %this_timer, %4 ]
  %12 = icmp eq i32 %this_clock, -1
  %13 = add nsw i32 %this_clock, 1
  %14 = add i32 %lasttimer.010, -1
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %.lr.ph4
  %timer.02 = phi i32 [ %firsttimer.09, %.lr.ph4 ], [ %63, %._crit_edge ]
  %16 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #8
  %17 = tail call i32 @CCTK_TimerI(i32 %timer.02, %struct.cTimerData* %16) #8
  %18 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %19 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %18, i32 %timer.02) #7
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i8* %19) #7
  br i1 %12, label %21, label %.lr.ph

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds %struct.cTimerData* %16, i64 0, i32 0
  %23 = load i32* %22, align 4, !tbaa !22
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %15, %21
  %lastclock.014 = phi i32 [ %23, %21 ], [ %13, %15 ]
  %firstclock.013 = phi i32 [ 0, %21 ], [ %this_clock, %15 ]
  %25 = getelementptr inbounds %struct.cTimerData* %16, i64 0, i32 1
  %26 = sext i32 %firstclock.013 to i64
  %27 = add i32 %lastclock.014, -1
  br label %28

; <label>:28                                      ; preds = %61, %.lr.ph
  %indvars.iv = phi i64 [ %26, %.lr.ph ], [ %indvars.iv.next, %61 ]
  %29 = load %struct.cTimerVal** %25, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 0
  %31 = load i32* %30, align 4, !tbaa !23
  switch i32 %31, label %59 [
    i32 1, label %32
    i32 2, label %41
    i32 3, label %50
  ]

; <label>:32                                      ; preds = %28
  %33 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 1
  %34 = load i8** %33, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 3
  %36 = bitcast %union.anon* %35 to i32*
  %37 = load i32* %36, align 4, !tbaa !11
  %38 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 2
  %39 = load i8** %38, align 8, !tbaa !26
  %40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* %34, i32 %37, i8* %39) #7
  br label %61

; <label>:41                                      ; preds = %28
  %42 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 1
  %43 = load i8** %42, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 3, i32 0
  %45 = load i64* %44, align 8, !tbaa !27
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 2
  %48 = load i8** %47, align 8, !tbaa !26
  %49 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* %43, i32 %46, i8* %48) #7
  br label %61

; <label>:50                                      ; preds = %28
  %51 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 1
  %52 = load i8** %51, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 3
  %54 = bitcast %union.anon* %53 to double*
  %55 = load double* %54, align 8, !tbaa !29
  %56 = getelementptr inbounds %struct.cTimerVal* %29, i64 %indvars.iv, i32 2
  %57 = load i8** %56, align 8, !tbaa !26
  %58 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i8* %52, double %55, i8* %57) #7
  br label %61

; <label>:59                                      ; preds = %28
  %60 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1280, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str15, i64 0, i64 0)) #7
  br label %61

; <label>:61                                      ; preds = %32, %41, %50, %59
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %27
  br i1 %exitcond, label %._crit_edge, label %28

._crit_edge:                                      ; preds = %61, %21
  %62 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %16) #8
  %63 = add nsw i32 %timer.02, 1
  %exitcond6 = icmp eq i32 %timer.02, %14
  br i1 %exitcond6, label %._crit_edge5, label %15

._crit_edge5:                                     ; preds = %._crit_edge, %.thread11, %9
  %retval.07 = phi i32 [ 0, %9 ], [ -1, %.thread11 ], [ 0, %._crit_edge ]
  ret i32 %retval.07
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerprintdatai_(i32* nocapture %ierr, i32* nocapture readonly %this_timer, i32* nocapture readonly %this_clock) #1 {
  %1 = load i32* %this_timer, align 4, !tbaa !11
  %2 = load i32* %this_clock, align 4, !tbaa !11
  %3 = tail call i32 @CCTK_TimerPrintDataI(i32 %1, i32 %2) #8
  store i32 %3, i32* %ierr, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TimerPrintData(i8* %timername, i8* %clockname) #1 {
  %1 = icmp eq i8* %clockname, null
  br i1 %1, label %7, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_ClockHandle(i8* %clockname) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1339, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0), i8* %clockname) #7
  br label %7

; <label>:7                                       ; preds = %0, %2, %5
  %this_clock.0 = phi i32 [ -1, %5 ], [ %3, %2 ], [ -1, %0 ]
  %retval.0 = phi i32 [ -1, %5 ], [ 0, %2 ], [ 0, %0 ]
  %8 = icmp eq i8* %timername, null
  br i1 %8, label %14, label %9

; <label>:9                                       ; preds = %7
  %10 = load %struct.cHandledData** @timers, align 8, !tbaa !9
  %11 = tail call i32 @Util_GetHandle(%struct.cHandledData* %10, i8* %timername, i8** null) #7
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %.thread, label %14

.thread:                                          ; preds = %9
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1354, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0), i8* %timername) #7
  br label %18

; <label>:14                                      ; preds = %7, %9
  %this_timer.0 = phi i32 [ %11, %9 ], [ -1, %7 ]
  %15 = icmp eq i32 %retval.0, 0
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %14
  %17 = tail call i32 @CCTK_TimerPrintDataI(i32 %this_timer.0, i32 %this_clock.0) #8
  br label %18

; <label>:18                                      ; preds = %.thread, %16, %14
  %retval.2 = phi i32 [ %17, %16 ], [ -1, %14 ], [ -1, %.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_timerprintdata_(i32* nocapture %ierr, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #7
  %3 = load i8* %1, align 1, !tbaa !31
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %4, i8* %1, i8* null
  %6 = load i8* %2, align 1, !tbaa !31
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %7, i8* %2, i8* null
  %9 = tail call i32 @CCTK_TimerPrintData(i8* %5, i8* %8) #8
  store i32 %9, i32* %ierr, align 4, !tbaa !11
  tail call void @free(i8* %1) #8
  tail call void @free(i8* %2) #8
  ret void
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !7, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !7, i64 8}
!9 = !{!4, !4, i64 0}
!10 = !{!3, !4, i64 64}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !4, i64 0}
!13 = !{!"", !4, i64 0}
!14 = !{!3, !4, i64 16}
!15 = !{!3, !4, i64 24}
!16 = !{!3, !4, i64 32}
!17 = !{!3, !4, i64 40}
!18 = !{!3, !4, i64 48}
!19 = !{!3, !4, i64 56}
!20 = !{!21, !4, i64 8}
!21 = !{!"", !7, i64 0, !4, i64 8}
!22 = !{!21, !7, i64 0}
!23 = !{!24, !5, i64 0}
!24 = !{!"", !5, i64 0, !4, i64 8, !4, i64 16, !5, i64 24}
!25 = !{!24, !4, i64 8}
!26 = !{!24, !4, i64 16}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !5, i64 0}
!31 = !{!5, !5, i64 0}
