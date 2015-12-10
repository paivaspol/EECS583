; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str1 = private unnamed_addr constant [69 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c\00", align 1
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

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_CactusTimers_c() #0 {
entry:
  ret i8* getelementptr inbounds ([88 x i8]* @.str18, i64 0, i64 0), !dbg !349
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_ClockRegister(i8* %clockname, %struct.cClockFuncs* nocapture %functions) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %clockname}, i64 0, metadata !64), !dbg !350
  tail call void @llvm.dbg.value(metadata !{%struct.cClockFuncs* %functions}, i64 0, metadata !65), !dbg !350
  %call = tail call noalias i8* @malloc(i64 72) #8, !dbg !351
  %tobool = icmp eq i8* %call, null, !dbg !352
  br i1 %tobool, label %for.cond.preheader, label %if.then, !dbg !352

if.then:                                          ; preds = %entry
  %name = bitcast i8* %call to i8**, !dbg !353
  store i8* %clockname, i8** %name, align 8, !dbg !353, !tbaa !355
  %n_vals = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 1, !dbg !358
  %0 = load i32* %n_vals, align 4, !dbg !358, !tbaa !359
  %n_vals4 = getelementptr inbounds i8* %call, i64 8, !dbg !358
  %1 = bitcast i8* %n_vals4 to i32*, !dbg !358
  store i32 %0, i32* %1, align 4, !dbg !358, !tbaa !359
  %create = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 2, !dbg !360
  %2 = load i8* (i32)** %create, align 8, !dbg !360, !tbaa !355
  %create5 = getelementptr inbounds i8* %call, i64 16, !dbg !360
  %3 = bitcast i8* %create5 to i8* (i32)**, !dbg !360
  store i8* (i32)* %2, i8* (i32)** %3, align 8, !dbg !360, !tbaa !355
  %destroy = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 3, !dbg !361
  %4 = load void (i32, i8*)** %destroy, align 8, !dbg !361, !tbaa !355
  %destroy6 = getelementptr inbounds i8* %call, i64 24, !dbg !361
  %5 = bitcast i8* %destroy6 to void (i32, i8*)**, !dbg !361
  store void (i32, i8*)* %4, void (i32, i8*)** %5, align 8, !dbg !361, !tbaa !355
  %start = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 4, !dbg !362
  %6 = load void (i32, i8*)** %start, align 8, !dbg !362, !tbaa !355
  %start7 = getelementptr inbounds i8* %call, i64 32, !dbg !362
  %7 = bitcast i8* %start7 to void (i32, i8*)**, !dbg !362
  store void (i32, i8*)* %6, void (i32, i8*)** %7, align 8, !dbg !362, !tbaa !355
  %stop = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 5, !dbg !363
  %8 = load void (i32, i8*)** %stop, align 8, !dbg !363, !tbaa !355
  %stop8 = getelementptr inbounds i8* %call, i64 40, !dbg !363
  %9 = bitcast i8* %stop8 to void (i32, i8*)**, !dbg !363
  store void (i32, i8*)* %8, void (i32, i8*)** %9, align 8, !dbg !363, !tbaa !355
  %reset = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 6, !dbg !364
  %10 = load void (i32, i8*)** %reset, align 8, !dbg !364, !tbaa !355
  %reset9 = getelementptr inbounds i8* %call, i64 48, !dbg !364
  %11 = bitcast i8* %reset9 to void (i32, i8*)**, !dbg !364
  store void (i32, i8*)* %10, void (i32, i8*)** %11, align 8, !dbg !364, !tbaa !355
  %get = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 7, !dbg !365
  %12 = load void (i32, i8*, %struct.cTimerVal*)** %get, align 8, !dbg !365, !tbaa !355
  %get10 = getelementptr inbounds i8* %call, i64 56, !dbg !365
  %13 = bitcast i8* %get10 to void (i32, i8*, %struct.cTimerVal*)**, !dbg !365
  store void (i32, i8*, %struct.cTimerVal*)* %12, void (i32, i8*, %struct.cTimerVal*)** %13, align 8, !dbg !365, !tbaa !355
  %set = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 8, !dbg !366
  %14 = load void (i32, i8*, %struct.cTimerVal*)** %set, align 8, !dbg !366, !tbaa !355
  %set11 = getelementptr inbounds i8* %call, i64 64, !dbg !366
  %15 = bitcast i8* %set11 to void (i32, i8*, %struct.cTimerVal*)**, !dbg !366
  store void (i32, i8*, %struct.cTimerVal*)* %14, void (i32, i8*, %struct.cTimerVal*)** %15, align 8, !dbg !366, !tbaa !355
  br label %for.cond.preheader, !dbg !367

for.cond.preheader:                               ; preds = %entry, %if.then
  %16 = load i32* @n_timers, align 4, !dbg !368, !tbaa !359
  %cmp52 = icmp sgt i32 %16, 0, !dbg !368
  br i1 %cmp52, label %for.body.lr.ph, label %for.end, !dbg !368

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %create17 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 2, !dbg !370
  br label %for.body, !dbg !368

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %handle.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %17 = load %struct.cHandledData** @timers, align 8, !dbg !373, !tbaa !355
  %call12 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %17, i32 %handle.053) #8, !dbg !373
  %data = bitcast i8* %call12 to i8***, !dbg !374
  %18 = load i8*** %data, align 8, !dbg !374, !tbaa !355
  %19 = bitcast i8** %18 to i8*, !dbg !374
  %20 = load i32* @n_clocks, align 4, !dbg !374, !tbaa !359
  %add = add nsw i32 %20, 1, !dbg !374
  %conv = sext i32 %add to i64, !dbg !374
  %mul = shl nsw i64 %conv, 3, !dbg !374
  %call13 = tail call i8* @realloc(i8* %19, i64 %mul) #8, !dbg !374
  tail call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !66), !dbg !374
  %tobool14 = icmp eq i8* %call13, null, !dbg !375
  br i1 %tobool14, label %for.inc, label %if.then15, !dbg !375

if.then15:                                        ; preds = %for.body
  %21 = bitcast i8* %call13 to i8**, !dbg !376
  store i8** %21, i8*** %data, align 8, !dbg !376, !tbaa !355
  %22 = load i8* (i32)** %create17, align 8, !dbg !370, !tbaa !355
  %call18 = tail call i8* %22(i32 %handle.053) #8, !dbg !370
  %23 = load i32* @n_clocks, align 4, !dbg !370, !tbaa !359
  %idxprom = sext i32 %23 to i64, !dbg !370
  %24 = load i8*** %data, align 8, !dbg !370, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %24, i64 %idxprom, !dbg !370
  store i8* %call18, i8** %arrayidx, align 8, !dbg !370, !tbaa !355
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %for.body, %if.then15
  %inc = add nsw i32 %handle.053, 1, !dbg !368
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !67), !dbg !368
  %25 = load i32* @n_timers, align 4, !dbg !368, !tbaa !359
  %cmp = icmp slt i32 %inc, %25, !dbg !368
  br i1 %cmp, label %for.body, label %for.end, !dbg !368

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call21 = tail call i32 @Util_NewHandle(%struct.cHandledData** @clocks, i8* %clockname, i8* %call) #8, !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %call21}, i64 0, metadata !67), !dbg !378
  %26 = load i32* @n_clocks, align 4, !dbg !379, !tbaa !359
  %inc22 = add nsw i32 %26, 1, !dbg !379
  store i32 %inc22, i32* @n_clocks, align 4, !dbg !379, !tbaa !359
  %n_vals23 = getelementptr inbounds %struct.cClockFuncs* %functions, i64 0, i32 1, !dbg !380
  %27 = load i32* %n_vals23, align 4, !dbg !380, !tbaa !359
  %28 = load i32* @n_clock_vals, align 4, !dbg !380, !tbaa !359
  %add24 = add nsw i32 %28, %27, !dbg !380
  store i32 %add24, i32* @n_clock_vals, align 4, !dbg !380, !tbaa !359
  ret i32 %call21, !dbg !381
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_ClockName(i32 %handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !81), !dbg !382
  %0 = load %struct.cHandledData** @clocks, align 8, !dbg !383, !tbaa !355
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #8, !dbg !383
  %tobool = icmp eq i8* %call, null, !dbg !384
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !384

cond.true:                                        ; preds = %entry
  %name = bitcast i8* %call to i8**, !dbg !384
  %1 = load i8** %name, align 8, !dbg !384, !tbaa !355
  br label %cond.end, !dbg !384

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ], !dbg !384
  ret i8* %cond, !dbg !384
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_ClockHandle(i8* nocapture %clockname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %clockname}, i64 0, metadata !87), !dbg !385
  %0 = load i32* @n_clocks, align 4, !dbg !386, !tbaa !359
  %handle.08 = add nsw i32 %0, -1, !dbg !387
  %cmp9 = icmp sgt i32 %0, 0, !dbg !387
  br i1 %cmp9, label %for.body, label %for.end, !dbg !387

for.body:                                         ; preds = %entry, %for.cond.backedge
  %handle.010 = phi i32 [ %handle.0, %for.cond.backedge ], [ %handle.08, %entry ]
  %1 = load %struct.cHandledData** @clocks, align 8, !dbg !389, !tbaa !355
  %call1 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle.010) #8, !dbg !389
  %tobool = icmp eq i8* %call1, null, !dbg !391
  br i1 %tobool, label %for.cond.backedge, label %land.lhs.true, !dbg !391

for.cond.backedge:                                ; preds = %for.body, %land.lhs.true
  %handle.0 = add nsw i32 %handle.010, -1, !dbg !387
  %cmp = icmp sgt i32 %handle.010, 0, !dbg !387
  br i1 %cmp, label %for.body, label %for.end, !dbg !387

land.lhs.true:                                    ; preds = %for.body
  %name = bitcast i8* %call1 to i8**, !dbg !391
  %2 = load i8** %name, align 8, !dbg !391, !tbaa !355
  %call2 = tail call i32 @strcmp(i8* %2, i8* %clockname) #9, !dbg !391
  %cmp3 = icmp eq i32 %call2, 0, !dbg !391
  br i1 %cmp3, label %for.end, label %for.cond.backedge, !dbg !391

for.end:                                          ; preds = %for.cond.backedge, %land.lhs.true, %entry
  %handle.0.lcssa = phi i32 [ %handle.08, %entry ], [ %handle.010, %land.lhs.true ], [ %handle.0, %for.cond.backedge ]
  ret i32 %handle.0.lcssa, !dbg !392
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumClocks() #5 {
entry:
  %0 = load i32* @n_clocks, align 4, !dbg !393, !tbaa !359
  ret i32 %0, !dbg !393
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @cctk_numclocks_(i32* nocapture %nclocks) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %nclocks}, i64 0, metadata !98), !dbg !394
  %0 = load i32* @n_clocks, align 4, !dbg !395, !tbaa !359
  store i32 %0, i32* %nclocks, align 4, !dbg !396, !tbaa !359
  ret void, !dbg !397
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumTimers() #5 {
entry:
  %0 = load i32* @n_timers, align 4, !dbg !398, !tbaa !359
  ret i32 %0, !dbg !398
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_numtimers_(i32* nocapture %ntimers) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ntimers}, i64 0, metadata !102), !dbg !399
  %0 = load i32* @n_timers, align 4, !dbg !400, !tbaa !359
  store i32 %0, i32* %ntimers, align 4, !dbg !401, !tbaa !359
  ret void, !dbg !402
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_TimerName(i32 %timer_handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timer_handle}, i64 0, metadata !105), !dbg !403
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !404, !tbaa !355
  %call = tail call i8* @Util_GetHandleName(%struct.cHandledData* %0, i32 %timer_handle) #8, !dbg !404
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !106), !dbg !404
  ret i8* %call, !dbg !405
}

; Function Attrs: optsize
declare i8* @Util_GetHandleName(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerCreate(i8* %timername) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !109), !dbg !406
  %call = tail call fastcc i32 @CCTKi_TimerCreate(i8* %timername) #10, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !110), !dbg !407
  ret i32 %call, !dbg !408
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CCTKi_TimerCreate(i8* %timername) #1 {
entry:
  %timer = alloca %struct.t_Timer*, align 8
  call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !321), !dbg !409
  call void @llvm.dbg.declare(metadata !{%struct.t_Timer** %timer}, metadata !323), !dbg !410
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !411, !tbaa !355
  %1 = bitcast %struct.t_Timer** %timer to i8**, !dbg !411
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** %1) #8, !dbg !411
  %cmp = icmp sgt i32 %call, -1, !dbg !411
  br i1 %cmp, label %if.end18, label %if.else, !dbg !411

if.else:                                          ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 8) #8, !dbg !412
  %2 = bitcast i8* %call2 to %struct.t_Timer*, !dbg !412
  call void @llvm.dbg.value(metadata !{%struct.t_Timer* %2}, i64 0, metadata !323), !dbg !412
  store %struct.t_Timer* %2, %struct.t_Timer** %timer, align 8, !dbg !412, !tbaa !355
  %tobool = icmp eq i8* %call2, null, !dbg !414
  br i1 %tobool, label %if.end18, label %if.then3, !dbg !414

if.then3:                                         ; preds = %if.else
  %3 = load i32* @n_clocks, align 4, !dbg !415, !tbaa !359
  %conv = sext i32 %3 to i64, !dbg !415
  %mul = shl nsw i64 %conv, 3, !dbg !415
  %call4 = call noalias i8* @malloc(i64 %mul) #8, !dbg !415
  %4 = bitcast i8* %call4 to i8**, !dbg !415
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !323), !dbg !415
  %data = bitcast i8* %call2 to i8***, !dbg !415
  store i8** %4, i8*** %data, align 8, !dbg !415, !tbaa !355
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !323), !dbg !417
  %tobool6 = icmp eq i8* %call4, null, !dbg !417
  br i1 %tobool6, label %if.else15, label %if.then7, !dbg !417

if.then7:                                         ; preds = %if.then3
  %call8 = call i32 @Util_NewHandle(%struct.cHandledData** @timers, i8* %timername, i8* %call2) #8, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !325), !dbg !418
  %5 = load i32* @n_timers, align 4, !dbg !420, !tbaa !359
  %inc = add nsw i32 %5, 1, !dbg !420
  store i32 %inc, i32* @n_timers, align 4, !dbg !420, !tbaa !359
  call void @llvm.dbg.value(metadata !10, i64 0, metadata !326), !dbg !421
  %6 = load i32* @n_clocks, align 4, !dbg !421, !tbaa !359
  %cmp924 = icmp sgt i32 %6, 0, !dbg !421
  br i1 %cmp924, label %for.body, label %if.end18, !dbg !421

for.body:                                         ; preds = %if.then7, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then7 ]
  %7 = load %struct.cHandledData** @clocks, align 8, !dbg !423, !tbaa !355
  %8 = trunc i64 %indvars.iv to i32, !dbg !423
  %call11 = call i8* @Util_GetHandledData(%struct.cHandledData* %7, i32 %8) #8, !dbg !423
  %create = getelementptr inbounds i8* %call11, i64 16, !dbg !425
  %9 = bitcast i8* %create to i8* (i32)**, !dbg !425
  %10 = load i8* (i32)** %9, align 8, !dbg !425, !tbaa !355
  %call12 = call i8* %10(i32 %call8) #8, !dbg !425
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !323), !dbg !425
  %11 = load %struct.t_Timer** %timer, align 8, !dbg !425, !tbaa !355
  %data13 = getelementptr inbounds %struct.t_Timer* %11, i64 0, i32 0, !dbg !425
  %12 = load i8*** %data13, align 8, !dbg !425, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %12, i64 %indvars.iv, !dbg !425
  store i8* %call12, i8** %arrayidx, align 8, !dbg !425, !tbaa !355
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !421
  %13 = load i32* @n_clocks, align 4, !dbg !421, !tbaa !359
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !421
  %cmp9 = icmp slt i32 %14, %13, !dbg !421
  br i1 %cmp9, label %for.body, label %if.end18, !dbg !421

if.else15:                                        ; preds = %if.then3
  call void @free(i8* %call2) #8, !dbg !426
  call void @llvm.dbg.value(metadata !428, i64 0, metadata !322), !dbg !429
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %for.body, %if.else, %entry, %if.else15
  %retval1.0 = phi i32 [ -2, %if.else15 ], [ -1, %entry ], [ -2, %if.else ], [ %call8, %for.body ], [ %call8, %if.then7 ]
  ret i32 %retval1.0, !dbg !430
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timercreate_(i32* nocapture %timer_index, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %timer_index}, i64 0, metadata !117), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !118), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !119), !dbg !431
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !432
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !120), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !433) #7, !dbg !435
  %call.i = tail call fastcc i32 @CCTKi_TimerCreate(i8* %call) #8, !dbg !436
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !437) #7, !dbg !436
  store i32 %call.i, i32* %timer_index, align 4, !dbg !434, !tbaa !359
  tail call void @free(i8* %call) #8, !dbg !438
  ret void, !dbg !439
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerCreateI() #1 {
entry:
  %timername = alloca [40 x i8], align 16
  %0 = getelementptr inbounds [40 x i8]* %timername, i64 0, i64 0, !dbg !440
  call void @llvm.lifetime.start(i64 40, i8* %0) #7, !dbg !440
  call void @llvm.dbg.declare(metadata !{[40 x i8]* %timername}, metadata !124), !dbg !440
  %1 = load i32* @n_timers, align 4, !dbg !441, !tbaa !359
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %1) #8, !dbg !441
  %call3 = call fastcc i32 @CCTKi_TimerCreate(i8* %0) #10, !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !123), !dbg !442
  call void @llvm.lifetime.end(i64 40, i8* %0) #7, !dbg !443
  ret i32 %call3, !dbg !443
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define void @cctk_timercreatei_(i32* nocapture %ierr) #1 {
entry:
  %timername.i = alloca [40 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !130), !dbg !444
  %0 = getelementptr inbounds [40 x i8]* %timername.i, i64 0, i64 0, !dbg !445
  call void @llvm.lifetime.start(i64 40, i8* %0) #7, !dbg !445
  call void @llvm.dbg.declare(metadata !{[40 x i8]* %timername.i}, metadata !124) #7, !dbg !445
  %1 = load i32* @n_timers, align 4, !dbg !447, !tbaa !359
  %call.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %1) #8, !dbg !447
  %call3.i = call fastcc i32 @CCTKi_TimerCreate(i8* %0) #8, !dbg !448
  call void @llvm.dbg.value(metadata !{i32 %call3.i}, i64 0, metadata !449) #7, !dbg !448
  call void @llvm.lifetime.end(i64 40, i8* %0) #7, !dbg !450
  store i32 %call3.i, i32* %ierr, align 4, !dbg !446, !tbaa !359
  ret void, !dbg !451
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerDestroy(i8* %timername) #1 {
entry:
  %timer = alloca %struct.t_Timer*, align 8
  call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !133), !dbg !452
  call void @llvm.dbg.declare(metadata !{%struct.t_Timer** %timer}, metadata !134), !dbg !453
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !454, !tbaa !355
  %1 = bitcast %struct.t_Timer** %timer to i8**, !dbg !454
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** %1) #8, !dbg !454
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !135), !dbg !454
  %cmp = icmp sgt i32 %call, -1, !dbg !455
  br i1 %cmp, label %if.then, label %if.else, !dbg !455

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !134), !dbg !456
  %2 = load %struct.t_Timer** %timer, align 8, !dbg !456, !tbaa !355
  call fastcc void @CCTKi_TimerDestroy(i32 %call, %struct.t_Timer* %2) #10, !dbg !456
  br label %if.end, !dbg !458

if.else:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 493, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* %timername) #8, !dbg !459
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.cmp = xor i1 %cmp, true, !dbg !461
  %cond = sext i1 %not.cmp to i32, !dbg !461
  ret i32 %cond, !dbg !461
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CCTKi_TimerDestroy(i32 %this_timer, %struct.t_Timer* %timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !315), !dbg !462
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %timer}, i64 0, metadata !316), !dbg !462
  %tobool = icmp eq %struct.t_Timer* %timer, null, !dbg !463
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !463

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !463
  %0 = load i8*** %data, align 8, !dbg !463, !tbaa !355
  %tobool1 = icmp eq i8** %0, null, !dbg !463
  br i1 %tobool1, label %if.end, label %for.cond.preheader, !dbg !463

for.cond.preheader:                               ; preds = %land.lhs.true
  %1 = load i32* @n_clocks, align 4, !dbg !464, !tbaa !359
  %cmp13 = icmp sgt i32 %1, 0, !dbg !464
  br i1 %cmp13, label %for.body, label %for.end, !dbg !464

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %2 = load %struct.cHandledData** @clocks, align 8, !dbg !467, !tbaa !355
  %3 = trunc i64 %indvars.iv to i32, !dbg !467
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %3) #8, !dbg !467
  %destroy = getelementptr inbounds i8* %call, i64 24, !dbg !469
  %4 = bitcast i8* %destroy to void (i32, i8*)**, !dbg !469
  %5 = load void (i32, i8*)** %4, align 8, !dbg !469, !tbaa !355
  %6 = load i8*** %data, align 8, !dbg !469, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !469
  %7 = load i8** %arrayidx, align 8, !dbg !469, !tbaa !355
  tail call void %5(i32 %this_timer, i8* %7) #8, !dbg !469
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !464
  %8 = load i32* @n_clocks, align 4, !dbg !464, !tbaa !359
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !464
  %cmp = icmp slt i32 %9, %8, !dbg !464
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !464

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i8*** %data, align 8, !dbg !470, !tbaa !355
  br label %for.end, !dbg !464

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader
  %10 = phi i8** [ %.pre, %for.cond.for.end_crit_edge ], [ %0, %for.cond.preheader ]
  %11 = bitcast i8** %10 to i8*, !dbg !470
  tail call void @free(i8* %11) #8, !dbg !470
  %12 = bitcast %struct.t_Timer* %timer to i8*, !dbg !471
  tail call void @free(i8* %12) #8, !dbg !471
  %13 = load %struct.cHandledData** @timers, align 8, !dbg !472, !tbaa !355
  %call4 = tail call i32 @Util_DeleteHandle(%struct.cHandledData* %13, i32 %this_timer) #8, !dbg !472
  %14 = load i32* @n_timers, align 4, !dbg !473, !tbaa !359
  %dec = add nsw i32 %14, -1, !dbg !473
  store i32 %dec, i32* @n_timers, align 4, !dbg !473, !tbaa !359
  br label %if.end, !dbg !474

if.end:                                           ; preds = %land.lhs.true, %entry, %for.end
  ret void, !dbg !475
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerdestroy_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !138), !dbg !476
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !139), !dbg !476
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !140), !dbg !476
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !141), !dbg !477
  %call1 = tail call i32 @CCTK_TimerDestroy(i8* %call) #10, !dbg !478
  store i32 %call1, i32* %ierr, align 4, !dbg !478, !tbaa !359
  tail call void @free(i8* %call) #8, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerDestroyI(i32 %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !146), !dbg !481
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !482, !tbaa !355
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_timer) #8, !dbg !482
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %1}, i64 0, metadata !147), !dbg !482
  %tobool = icmp ne i8* %call, null, !dbg !483
  br i1 %tobool, label %if.then, label %if.else, !dbg !483

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %call to %struct.t_Timer*, !dbg !482
  tail call fastcc void @CCTKi_TimerDestroy(i32 %this_timer, %struct.t_Timer* %1) #10, !dbg !484
  br label %if.end, !dbg !486

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 541, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0), i32 %this_timer) #8, !dbg !487
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.tobool = xor i1 %tobool, true, !dbg !489
  %cond = sext i1 %not.tobool to i32, !dbg !489
  ret i32 %cond, !dbg !489
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerdestroyi_(i32* nocapture %ierr, i32* nocapture %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !152), !dbg !490
  tail call void @llvm.dbg.value(metadata !{i32* %this_timer}, i64 0, metadata !153), !dbg !490
  %0 = load i32* %this_timer, align 4, !dbg !491, !tbaa !359
  %call = tail call i32 @CCTK_TimerDestroyI(i32 %0) #10, !dbg !491
  store i32 %call, i32* %ierr, align 4, !dbg !491, !tbaa !359
  ret void, !dbg !492
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerStart(i8* %timername) #1 {
entry:
  %timer = alloca %struct.t_Timer*, align 8
  call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !156), !dbg !493
  call void @llvm.dbg.declare(metadata !{%struct.t_Timer** %timer}, metadata !157), !dbg !494
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !495, !tbaa !355
  %1 = bitcast %struct.t_Timer** %timer to i8**, !dbg !495
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** %1) #8, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !158), !dbg !495
  %cmp = icmp sgt i32 %call, -1, !dbg !496
  br i1 %cmp, label %if.then, label %if.else, !dbg !496

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !157), !dbg !497
  %2 = load %struct.t_Timer** %timer, align 8, !dbg !497, !tbaa !355
  call fastcc void @CCTKi_TimerStart(i32 %call, %struct.t_Timer* %2) #10, !dbg !497
  br label %if.end, !dbg !499

if.else:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 629, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i8* %timername) #8, !dbg !500
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.cmp = xor i1 %cmp, true, !dbg !502
  %cond = sext i1 %not.cmp to i32, !dbg !502
  ret i32 %cond, !dbg !502
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CCTKi_TimerStart(i32 %this_timer, %struct.t_Timer* %timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !309), !dbg !503
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %timer}, i64 0, metadata !310), !dbg !503
  %tobool = icmp eq %struct.t_Timer* %timer, null, !dbg !504
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !504

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !504
  %0 = load i8*** %data, align 8, !dbg !504, !tbaa !355
  %tobool1 = icmp ne i8** %0, null, !dbg !504
  %1 = load i32* @n_clocks, align 4, !dbg !505, !tbaa !359
  %cmp8 = icmp sgt i32 %1, 0, !dbg !505
  %or.cond = and i1 %tobool1, %cmp8, !dbg !504
  br i1 %or.cond, label %for.body, label %if.end, !dbg !504

for.body:                                         ; preds = %land.lhs.true, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %land.lhs.true ]
  %2 = load %struct.cHandledData** @clocks, align 8, !dbg !508, !tbaa !355
  %3 = trunc i64 %indvars.iv to i32, !dbg !508
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %3) #8, !dbg !508
  %start = getelementptr inbounds i8* %call, i64 32, !dbg !510
  %4 = bitcast i8* %start to void (i32, i8*)**, !dbg !510
  %5 = load void (i32, i8*)** %4, align 8, !dbg !510, !tbaa !355
  %6 = load i8*** %data, align 8, !dbg !510, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !510
  %7 = load i8** %arrayidx, align 8, !dbg !510, !tbaa !355
  tail call void %5(i32 %this_timer, i8* %7) #8, !dbg !510
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !505
  %8 = load i32* @n_clocks, align 4, !dbg !505, !tbaa !359
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !505
  %cmp = icmp slt i32 %9, %8, !dbg !505
  br i1 %cmp, label %for.body, label %if.end, !dbg !505

if.end:                                           ; preds = %land.lhs.true, %for.body, %entry
  ret void, !dbg !511
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerstart_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !161), !dbg !512
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !162), !dbg !512
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !163), !dbg !512
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !513
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !164), !dbg !513
  %call1 = tail call i32 @CCTK_TimerStart(i8* %call) #10, !dbg !514
  store i32 %call1, i32* %ierr, align 4, !dbg !514, !tbaa !359
  tail call void @free(i8* %call) #8, !dbg !515
  ret void, !dbg !516
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerStartI(i32 %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !167), !dbg !517
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !518, !tbaa !355
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_timer) #8, !dbg !518
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %1}, i64 0, metadata !168), !dbg !518
  %tobool = icmp ne i8* %call, null, !dbg !519
  br i1 %tobool, label %if.then, label %if.else, !dbg !519

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %call to %struct.t_Timer*, !dbg !518
  tail call fastcc void @CCTKi_TimerStart(i32 %this_timer, %struct.t_Timer* %1) #10, !dbg !520
  br label %if.end, !dbg !522

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 677, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), i32 %this_timer) #8, !dbg !523
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.tobool = xor i1 %tobool, true, !dbg !525
  %cond = sext i1 %not.tobool to i32, !dbg !525
  ret i32 %cond, !dbg !525
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerstarti_(i32* nocapture %ierr, i32* nocapture %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !171), !dbg !526
  tail call void @llvm.dbg.value(metadata !{i32* %this_timer}, i64 0, metadata !172), !dbg !526
  %0 = load i32* %this_timer, align 4, !dbg !527, !tbaa !359
  %call = tail call i32 @CCTK_TimerStartI(i32 %0) #10, !dbg !527
  store i32 %call, i32* %ierr, align 4, !dbg !527, !tbaa !359
  ret void, !dbg !528
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerStop(i8* %timername) #1 {
entry:
  %timer = alloca %struct.t_Timer*, align 8
  call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !175), !dbg !529
  call void @llvm.dbg.declare(metadata !{%struct.t_Timer** %timer}, metadata !176), !dbg !530
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !531, !tbaa !355
  %1 = bitcast %struct.t_Timer** %timer to i8**, !dbg !531
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** %1) #8, !dbg !531
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !177), !dbg !531
  %cmp = icmp sgt i32 %call, -1, !dbg !532
  br i1 %cmp, label %if.then, label %if.else, !dbg !532

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !176), !dbg !533
  %2 = load %struct.t_Timer** %timer, align 8, !dbg !533, !tbaa !355
  call fastcc void @CCTKi_TimerStop(i32 %call, %struct.t_Timer* %2) #10, !dbg !533
  br label %if.end, !dbg !535

if.else:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 761, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i8* %timername) #8, !dbg !536
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.cmp = xor i1 %cmp, true, !dbg !538
  %cond = sext i1 %not.cmp to i32, !dbg !538
  ret i32 %cond, !dbg !538
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CCTKi_TimerStop(i32 %this_timer, %struct.t_Timer* %timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !303), !dbg !539
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %timer}, i64 0, metadata !304), !dbg !539
  %tobool = icmp eq %struct.t_Timer* %timer, null, !dbg !540
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !540

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !540
  %0 = load i8*** %data, align 8, !dbg !540, !tbaa !355
  %tobool1 = icmp ne i8** %0, null, !dbg !540
  %1 = load i32* @n_clocks, align 4, !dbg !541, !tbaa !359
  %cmp8 = icmp sgt i32 %1, 0, !dbg !541
  %or.cond = and i1 %tobool1, %cmp8, !dbg !540
  br i1 %or.cond, label %for.body, label %if.end, !dbg !540

for.body:                                         ; preds = %land.lhs.true, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %land.lhs.true ]
  %2 = load %struct.cHandledData** @clocks, align 8, !dbg !544, !tbaa !355
  %3 = trunc i64 %indvars.iv to i32, !dbg !544
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %3) #8, !dbg !544
  %stop = getelementptr inbounds i8* %call, i64 40, !dbg !546
  %4 = bitcast i8* %stop to void (i32, i8*)**, !dbg !546
  %5 = load void (i32, i8*)** %4, align 8, !dbg !546, !tbaa !355
  %6 = load i8*** %data, align 8, !dbg !546, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !546
  %7 = load i8** %arrayidx, align 8, !dbg !546, !tbaa !355
  tail call void %5(i32 %this_timer, i8* %7) #8, !dbg !546
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !541
  %8 = load i32* @n_clocks, align 4, !dbg !541, !tbaa !359
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !541
  %cmp = icmp slt i32 %9, %8, !dbg !541
  br i1 %cmp, label %for.body, label %if.end, !dbg !541

if.end:                                           ; preds = %land.lhs.true, %for.body, %entry
  ret void, !dbg !547
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerstop_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !180), !dbg !548
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !181), !dbg !548
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !182), !dbg !548
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !549
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !183), !dbg !549
  %call1 = tail call i32 @CCTK_TimerStop(i8* %call) #10, !dbg !550
  store i32 %call1, i32* %ierr, align 4, !dbg !550, !tbaa !359
  tail call void @free(i8* %call) #8, !dbg !551
  ret void, !dbg !552
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerStopI(i32 %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !186), !dbg !553
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !554, !tbaa !355
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_timer) #8, !dbg !554
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %1}, i64 0, metadata !187), !dbg !554
  %tobool = icmp ne i8* %call, null, !dbg !555
  br i1 %tobool, label %if.then, label %if.else, !dbg !555

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %call to %struct.t_Timer*, !dbg !554
  tail call fastcc void @CCTKi_TimerStop(i32 %this_timer, %struct.t_Timer* %1) #10, !dbg !556
  br label %if.end, !dbg !558

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 809, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), i32 %this_timer) #8, !dbg !559
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.tobool = xor i1 %tobool, true, !dbg !561
  %cond = sext i1 %not.tobool to i32, !dbg !561
  ret i32 %cond, !dbg !561
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerstopi_(i32* nocapture %ierr, i32* nocapture %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !190), !dbg !562
  tail call void @llvm.dbg.value(metadata !{i32* %this_timer}, i64 0, metadata !191), !dbg !562
  %0 = load i32* %this_timer, align 4, !dbg !563, !tbaa !359
  %call = tail call i32 @CCTK_TimerStopI(i32 %0) #10, !dbg !563
  store i32 %call, i32* %ierr, align 4, !dbg !563, !tbaa !359
  ret void, !dbg !564
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerReset(i8* %timername) #1 {
entry:
  %timer = alloca %struct.t_Timer*, align 8
  call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !194), !dbg !565
  call void @llvm.dbg.declare(metadata !{%struct.t_Timer** %timer}, metadata !195), !dbg !566
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !567, !tbaa !355
  %1 = bitcast %struct.t_Timer** %timer to i8**, !dbg !567
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** %1) #8, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !196), !dbg !567
  %cmp = icmp sgt i32 %call, -1, !dbg !568
  br i1 %cmp, label %if.then, label %if.else, !dbg !568

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !195), !dbg !569
  %2 = load %struct.t_Timer** %timer, align 8, !dbg !569, !tbaa !355
  call fastcc void @CCTKi_TimerReset(i32 %call, %struct.t_Timer* %2) #10, !dbg !569
  br label %if.end, !dbg !571

if.else:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 892, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i8* %timername) #8, !dbg !572
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.cmp = xor i1 %cmp, true, !dbg !574
  %cond = sext i1 %not.cmp to i32, !dbg !574
  ret i32 %cond, !dbg !574
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CCTKi_TimerReset(i32 %this_timer, %struct.t_Timer* %timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !297), !dbg !575
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %timer}, i64 0, metadata !298), !dbg !575
  %tobool = icmp eq %struct.t_Timer* %timer, null, !dbg !576
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !576

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !576
  %0 = load i8*** %data, align 8, !dbg !576, !tbaa !355
  %tobool1 = icmp ne i8** %0, null, !dbg !576
  %1 = load i32* @n_clocks, align 4, !dbg !577, !tbaa !359
  %cmp8 = icmp sgt i32 %1, 0, !dbg !577
  %or.cond = and i1 %tobool1, %cmp8, !dbg !576
  br i1 %or.cond, label %for.body, label %if.end, !dbg !576

for.body:                                         ; preds = %land.lhs.true, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %land.lhs.true ]
  %2 = load %struct.cHandledData** @clocks, align 8, !dbg !580, !tbaa !355
  %3 = trunc i64 %indvars.iv to i32, !dbg !580
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %3) #8, !dbg !580
  %reset = getelementptr inbounds i8* %call, i64 48, !dbg !582
  %4 = bitcast i8* %reset to void (i32, i8*)**, !dbg !582
  %5 = load void (i32, i8*)** %4, align 8, !dbg !582, !tbaa !355
  %6 = load i8*** %data, align 8, !dbg !582, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !582
  %7 = load i8** %arrayidx, align 8, !dbg !582, !tbaa !355
  tail call void %5(i32 %this_timer, i8* %7) #8, !dbg !582
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !577
  %8 = load i32* @n_clocks, align 4, !dbg !577, !tbaa !359
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !577
  %cmp = icmp slt i32 %9, %8, !dbg !577
  br i1 %cmp, label %for.body, label %if.end, !dbg !577

if.end:                                           ; preds = %land.lhs.true, %for.body, %entry
  ret void, !dbg !583
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerreset_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !199), !dbg !584
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !200), !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !201), !dbg !584
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !585
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !202), !dbg !585
  %call1 = tail call i32 @CCTK_TimerReset(i8* %call) #10, !dbg !586
  store i32 %call1, i32* %ierr, align 4, !dbg !586, !tbaa !359
  tail call void @free(i8* %call) #8, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerResetI(i32 %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !205), !dbg !589
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !590, !tbaa !355
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_timer) #8, !dbg !590
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %1}, i64 0, metadata !206), !dbg !590
  %tobool = icmp ne i8* %call, null, !dbg !591
  br i1 %tobool, label %if.then, label %if.else, !dbg !591

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %call to %struct.t_Timer*, !dbg !590
  tail call fastcc void @CCTKi_TimerReset(i32 %this_timer, %struct.t_Timer* %1) #10, !dbg !592
  br label %if.end, !dbg !594

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 940, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), i32 %this_timer) #8, !dbg !595
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %not.tobool = xor i1 %tobool, true, !dbg !597
  %cond = sext i1 %not.tobool to i32, !dbg !597
  ret i32 %cond, !dbg !597
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerreseti_(i32* nocapture %ierr, i32* nocapture %this_timer) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !209), !dbg !598
  tail call void @llvm.dbg.value(metadata !{i32* %this_timer}, i64 0, metadata !210), !dbg !598
  %0 = load i32* %this_timer, align 4, !dbg !599, !tbaa !359
  %call = tail call i32 @CCTK_TimerResetI(i32 %0) #10, !dbg !599
  store i32 %call, i32* %ierr, align 4, !dbg !599, !tbaa !359
  ret void, !dbg !600
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_Timer(i8* %timername, %struct.cTimerData* nocapture %info) #1 {
entry:
  %timer = alloca %struct.t_Timer*, align 8
  call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !221), !dbg !601
  call void @llvm.dbg.value(metadata !{%struct.cTimerData* %info}, i64 0, metadata !222), !dbg !601
  call void @llvm.dbg.declare(metadata !{%struct.t_Timer** %timer}, metadata !223), !dbg !602
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !603, !tbaa !355
  %1 = bitcast %struct.t_Timer** %timer to i8**, !dbg !603
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** %1) #8, !dbg !603
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !224), !dbg !603
  %cmp = icmp sgt i32 %call, -1, !dbg !604
  br i1 %cmp, label %if.then, label %if.end, !dbg !604

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.t_Timer** %timer}, i64 0, metadata !223), !dbg !605
  %2 = load %struct.t_Timer** %timer, align 8, !dbg !605, !tbaa !355
  call fastcc void @CCTKi_Timer(i32 %call, %struct.t_Timer* %2, %struct.cTimerData* %info) #10, !dbg !605
  br label %if.end, !dbg !607

if.end:                                           ; preds = %if.then, %entry
  %not.cmp = xor i1 %cmp, true, !dbg !608
  %cond = sext i1 %not.cmp to i32, !dbg !608
  ret i32 %cond, !dbg !608
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CCTKi_Timer(i32 %this_timer, %struct.t_Timer* %timer, %struct.cTimerData* nocapture %info) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !287), !dbg !609
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %timer}, i64 0, metadata !288), !dbg !609
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerData* %info}, i64 0, metadata !289), !dbg !609
  tail call void @llvm.dbg.value(metadata !10, i64 0, metadata !292), !dbg !610
  %tobool = icmp eq %struct.t_Timer* %timer, null, !dbg !611
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !611

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.t_Timer* %timer, i64 0, i32 0, !dbg !611
  %0 = load i8*** %data, align 8, !dbg !611, !tbaa !355
  %tobool1 = icmp ne i8** %0, null, !dbg !611
  %1 = load i32* @n_clocks, align 4, !dbg !612, !tbaa !359
  %cmp15 = icmp sgt i32 %1, 0, !dbg !612
  %or.cond = and i1 %tobool1, %cmp15, !dbg !611
  br i1 %or.cond, label %for.body.lr.ph, label %if.end, !dbg !611

for.body.lr.ph:                                   ; preds = %land.lhs.true
  %vals = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 1, !dbg !615
  br label %for.body, !dbg !612

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %total_vars.017 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %2 = load %struct.cHandledData** @clocks, align 8, !dbg !617, !tbaa !355
  %3 = trunc i64 %indvars.iv to i32, !dbg !617
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %3) #8, !dbg !617
  %get = getelementptr inbounds i8* %call, i64 56, !dbg !615
  %4 = bitcast i8* %get to void (i32, i8*, %struct.cTimerVal*)**, !dbg !615
  %5 = load void (i32, i8*, %struct.cTimerVal*)** %4, align 8, !dbg !615, !tbaa !355
  %6 = load i8*** %data, align 8, !dbg !615, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !615
  %7 = load i8** %arrayidx, align 8, !dbg !615, !tbaa !355
  %idxprom3 = sext i32 %total_vars.017 to i64, !dbg !615
  %8 = load %struct.cTimerVal** %vals, align 8, !dbg !615, !tbaa !355
  %arrayidx4 = getelementptr inbounds %struct.cTimerVal* %8, i64 %idxprom3, !dbg !615
  tail call void %5(i32 %this_timer, i8* %7, %struct.cTimerVal* %arrayidx4) #8, !dbg !615
  %n_vals = getelementptr inbounds i8* %call, i64 8, !dbg !618
  %9 = bitcast i8* %n_vals to i32*, !dbg !618
  %10 = load i32* %9, align 4, !dbg !618, !tbaa !359
  %add = add nsw i32 %10, %total_vars.017, !dbg !618
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !292), !dbg !618
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !612
  %11 = load i32* @n_clocks, align 4, !dbg !612, !tbaa !359
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !612
  %cmp = icmp slt i32 %12, %11, !dbg !612
  br i1 %cmp, label %for.body, label %if.end, !dbg !612

if.end:                                           ; preds = %land.lhs.true, %for.body, %entry
  %total_vars.1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %add, %for.body ]
  %n_vals5 = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 0, !dbg !619
  store i32 %total_vars.1, i32* %n_vals5, align 4, !dbg !619, !tbaa !359
  ret void, !dbg !620
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerI(i32 %this_timer, %struct.cTimerData* nocapture %info) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !229), !dbg !621
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerData* %info}, i64 0, metadata !230), !dbg !621
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !622, !tbaa !355
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_timer) #8, !dbg !622
  tail call void @llvm.dbg.value(metadata !{%struct.t_Timer* %1}, i64 0, metadata !231), !dbg !622
  %tobool = icmp ne i8* %call, null, !dbg !623
  br i1 %tobool, label %if.then, label %if.end, !dbg !623

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %call to %struct.t_Timer*, !dbg !622
  tail call fastcc void @CCTKi_Timer(i32 %this_timer, %struct.t_Timer* %1, %struct.cTimerData* %info) #10, !dbg !624
  br label %if.end, !dbg !626

if.end:                                           ; preds = %if.then, %entry
  %not.tobool = xor i1 %tobool, true, !dbg !627
  %cond = sext i1 %not.tobool to i32, !dbg !627
  ret i32 %cond, !dbg !627
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.cTimerData* @CCTK_TimerCreateData() #1 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #8, !dbg !628
  %0 = bitcast i8* %call to %struct.cTimerData*, !dbg !628
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerData* %0}, i64 0, metadata !236), !dbg !628
  %tobool = icmp eq i8* %call, null, !dbg !629
  br i1 %tobool, label %if.end6, label %if.then, !dbg !629

if.then:                                          ; preds = %entry
  %1 = load i32* @n_clock_vals, align 4, !dbg !630, !tbaa !359
  %n_vals = bitcast i8* %call to i32*, !dbg !630
  store i32 %1, i32* %n_vals, align 4, !dbg !630, !tbaa !359
  %conv = sext i32 %1 to i64, !dbg !632
  %mul = shl nsw i64 %conv, 5, !dbg !632
  %call2 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !632
  %2 = bitcast i8* %call2 to %struct.cTimerVal*, !dbg !632
  %vals = getelementptr inbounds i8* %call, i64 8, !dbg !632
  %3 = bitcast i8* %vals to %struct.cTimerVal**, !dbg !632
  store %struct.cTimerVal* %2, %struct.cTimerVal** %3, align 8, !dbg !632, !tbaa !355
  %tobool4 = icmp eq i8* %call2, null, !dbg !633
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !633

if.then5:                                         ; preds = %if.then
  tail call void @free(i8* %call) #8, !dbg !634
  tail call void @llvm.dbg.value(metadata !636, i64 0, metadata !236), !dbg !637
  br label %if.end6, !dbg !638

if.end6:                                          ; preds = %if.then, %entry, %if.then5
  %retval1.0 = phi %struct.cTimerData* [ %0, %if.then ], [ null, %if.then5 ], [ %0, %entry ]
  ret %struct.cTimerData* %retval1.0, !dbg !639
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerDestroyData(%struct.cTimerData* %info) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerData* %info}, i64 0, metadata !241), !dbg !640
  %tobool = icmp eq %struct.cTimerData* %info, null, !dbg !641
  br i1 %tobool, label %if.end5, label %if.then, !dbg !641

if.then:                                          ; preds = %entry
  %vals = getelementptr inbounds %struct.cTimerData* %info, i64 0, i32 1, !dbg !642
  %0 = load %struct.cTimerVal** %vals, align 8, !dbg !642, !tbaa !355
  %tobool1 = icmp eq %struct.cTimerVal* %0, null, !dbg !642
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !642

if.then2:                                         ; preds = %if.then
  %1 = bitcast %struct.cTimerVal* %0 to i8*, !dbg !644
  tail call void @free(i8* %1) #8, !dbg !644
  br label %if.end, !dbg !646

if.end:                                           ; preds = %if.then, %if.then2
  %2 = bitcast %struct.cTimerData* %info to i8*, !dbg !647
  tail call void @free(i8* %2) #8, !dbg !647
  br label %if.end5, !dbg !648

if.end5:                                          ; preds = %entry, %if.end
  ret i32 0, !dbg !649
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerPrintDataI(i32 %this_timer, i32 %this_clock) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !246), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i32 %this_clock}, i64 0, metadata !247), !dbg !650
  tail call void @llvm.dbg.value(metadata !10, i64 0, metadata !251), !dbg !651
  %cmp = icmp eq i32 %this_timer, -1, !dbg !652
  br i1 %cmp, label %if.end7, label %if.else, !dbg !652

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !254), !dbg !653
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !255), !dbg !655
  %cmp2 = icmp slt i32 %this_timer, 0, !dbg !656
  br i1 %cmp2, label %if.end7.thread108, label %lor.lhs.false, !dbg !656

lor.lhs.false:                                    ; preds = %if.else
  %add = add nsw i32 %this_timer, 1, !dbg !655
  %0 = load i32* @n_timers, align 4, !dbg !657, !tbaa !359
  %cmp4 = icmp slt i32 %0, %this_timer, !dbg !656
  br i1 %cmp4, label %if.end7.thread108, label %for.body.lr.ph, !dbg !656

if.end7.thread108:                                ; preds = %if.else, %lor.lhs.false
  %call6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1235, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i32 %this_timer) #8, !dbg !658
  tail call void @llvm.dbg.value(metadata !660, i64 0, metadata !251), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %this_timer}, i64 0, metadata !255), !dbg !662
  tail call void @llvm.dbg.value(metadata !{i32 %firsttimer.0106}, i64 0, metadata !250), !dbg !663
  br label %for.end64, !dbg !663

if.end7:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !10, i64 0, metadata !254), !dbg !665
  %1 = load i32* @n_timers, align 4, !dbg !667, !tbaa !359
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !255), !dbg !668
  tail call void @llvm.dbg.value(metadata !{i32 %firsttimer.0106}, i64 0, metadata !250), !dbg !663
  %cmp8101 = icmp sgt i32 %1, 0, !dbg !663
  br i1 %cmp8101, label %for.body.lr.ph, label %for.end64, !dbg !663

for.body.lr.ph:                                   ; preds = %lor.lhs.false, %if.end7
  %lasttimer.0107 = phi i32 [ %1, %if.end7 ], [ %add, %lor.lhs.false ]
  %firsttimer.0106 = phi i32 [ 0, %if.end7 ], [ %this_timer, %lor.lhs.false ]
  %cmp13 = icmp eq i32 %this_clock, -1, !dbg !669
  %add16 = add nsw i32 %this_clock, 1, !dbg !671
  br label %for.body, !dbg !663

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %timer.0102 = phi i32 [ %firsttimer.0106, %for.body.lr.ph ], [ %inc63, %for.end ]
  %call9 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #10, !dbg !673
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerData* %call9}, i64 0, metadata !248), !dbg !673
  %call10 = tail call i32 @CCTK_TimerI(i32 %timer.0102, %struct.cTimerData* %call9) #10, !dbg !674
  tail call void @llvm.dbg.value(metadata !{i32 %timer.0102}, i64 0, metadata !675) #7, !dbg !677
  %2 = load %struct.cHandledData** @timers, align 8, !dbg !678, !tbaa !355
  %call.i = tail call i8* @Util_GetHandleName(%struct.cHandledData* %2, i32 %timer.0102) #8, !dbg !678
  tail call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !679) #7, !dbg !678
  %call12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i8* %call.i) #8, !dbg !676
  br i1 %cmp13, label %if.end17, label %for.body20.lr.ph, !dbg !669

if.end17:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !10, i64 0, metadata !252), !dbg !680
  %n_vals = getelementptr inbounds %struct.cTimerData* %call9, i64 0, i32 0, !dbg !682
  %3 = load i32* %n_vals, align 4, !dbg !682, !tbaa !359
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !253), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %firstclock.0111}, i64 0, metadata !249), !dbg !683
  %cmp1999 = icmp sgt i32 %3, 0, !dbg !683
  br i1 %cmp1999, label %for.body20.lr.ph, label %for.end, !dbg !683

for.body20.lr.ph:                                 ; preds = %for.body, %if.end17
  %lastclock.0112 = phi i32 [ %3, %if.end17 ], [ %add16, %for.body ]
  %firstclock.0111 = phi i32 [ 0, %if.end17 ], [ %this_clock, %for.body ]
  %vals = getelementptr inbounds %struct.cTimerData* %call9, i64 0, i32 1, !dbg !685
  %4 = sext i32 %firstclock.0111 to i64
  br label %for.body20, !dbg !683

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %4, %for.body20.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load %struct.cTimerVal** %vals, align 8, !dbg !685, !tbaa !355
  %type = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 0, !dbg !685
  %6 = load i32* %type, align 4, !dbg !685, !tbaa !356
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb32
    i32 3, label %sw.bb46
  ], !dbg !685

sw.bb:                                            ; preds = %for.body20
  %heading = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 1, !dbg !687
  %7 = load i8** %heading, align 8, !dbg !687, !tbaa !355
  %val = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 3, !dbg !687
  %i27 = bitcast %union.anon* %val to i32*, !dbg !687
  %8 = load i32* %i27, align 4, !dbg !687, !tbaa !359
  %units = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 2, !dbg !687
  %9 = load i8** %units, align 8, !dbg !687, !tbaa !355
  %call31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* %7, i32 %8, i8* %9) #8, !dbg !687
  br label %for.inc, !dbg !689

sw.bb32:                                          ; preds = %for.body20
  %heading36 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 1, !dbg !690
  %10 = load i8** %heading36, align 8, !dbg !690, !tbaa !355
  %l = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 3, i32 0, !dbg !690
  %11 = load i64* %l, align 8, !dbg !690, !tbaa !691
  %conv = trunc i64 %11 to i32, !dbg !690
  %units44 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 2, !dbg !690
  %12 = load i8** %units44, align 8, !dbg !690, !tbaa !355
  %call45 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i8* %10, i32 %conv, i8* %12) #8, !dbg !690
  br label %for.inc, !dbg !692

sw.bb46:                                          ; preds = %for.body20
  %heading50 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 1, !dbg !693
  %13 = load i8** %heading50, align 8, !dbg !693, !tbaa !355
  %val54 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 3, !dbg !693
  %d = bitcast %union.anon* %val54 to double*, !dbg !693
  %14 = load double* %d, align 8, !dbg !693, !tbaa !694
  %units58 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 2, !dbg !693
  %15 = load i8** %units58, align 8, !dbg !693, !tbaa !355
  %call59 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i8* %13, double %14, i8* %15) #8, !dbg !693
  br label %for.inc, !dbg !695

sw.default:                                       ; preds = %for.body20
  %call60 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1280, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str15, i64 0, i64 0)) #8, !dbg !696
  br label %for.inc, !dbg !697

for.inc:                                          ; preds = %sw.bb, %sw.bb32, %sw.bb46, %sw.default
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !683
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !683
  %cmp19 = icmp slt i32 %16, %lastclock.0112, !dbg !683
  br i1 %cmp19, label %for.body20, label %for.end, !dbg !683

for.end:                                          ; preds = %for.inc, %if.end17
  %call61 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %call9) #10, !dbg !698
  %inc63 = add nsw i32 %timer.0102, 1, !dbg !663
  tail call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !250), !dbg !663
  %exitcond = icmp eq i32 %inc63, %lasttimer.0107, !dbg !663
  br i1 %exitcond, label %for.end64, label %for.body, !dbg !663

for.end64:                                        ; preds = %for.end, %if.end7.thread108, %if.end7
  %retval1.0104 = phi i32 [ 0, %if.end7 ], [ -1, %if.end7.thread108 ], [ 0, %for.end ]
  ret i32 %retval1.0104, !dbg !699
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerprintdatai_(i32* nocapture %ierr, i32* nocapture %this_timer, i32* nocapture %this_clock) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !260), !dbg !700
  tail call void @llvm.dbg.value(metadata !{i32* %this_timer}, i64 0, metadata !261), !dbg !700
  tail call void @llvm.dbg.value(metadata !{i32* %this_clock}, i64 0, metadata !262), !dbg !700
  %0 = load i32* %this_timer, align 4, !dbg !701, !tbaa !359
  %1 = load i32* %this_clock, align 4, !dbg !701, !tbaa !359
  %call = tail call i32 @CCTK_TimerPrintDataI(i32 %0, i32 %1) #10, !dbg !701
  store i32 %call, i32* %ierr, align 4, !dbg !701, !tbaa !359
  ret void, !dbg !702
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TimerPrintData(i8* %timername, i8* %clockname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %timername}, i64 0, metadata !267), !dbg !703
  tail call void @llvm.dbg.value(metadata !{i8* %clockname}, i64 0, metadata !268), !dbg !703
  tail call void @llvm.dbg.value(metadata !10, i64 0, metadata !271), !dbg !704
  %tobool = icmp eq i8* %clockname, null, !dbg !705
  br i1 %tobool, label %if.end4, label %if.else, !dbg !705

if.else:                                          ; preds = %entry
  %call = tail call i32 @CCTK_ClockHandle(i8* %clockname) #10, !dbg !706
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !270), !dbg !706
  %cmp = icmp eq i32 %call, -1, !dbg !708
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !708

if.then2:                                         ; preds = %if.else
  %call3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1339, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0), i8* %clockname) #8, !dbg !709
  tail call void @llvm.dbg.value(metadata !660, i64 0, metadata !271), !dbg !711
  br label %if.end4, !dbg !712

if.end4:                                          ; preds = %entry, %if.else, %if.then2
  %this_clock.0 = phi i32 [ -1, %if.then2 ], [ %call, %if.else ], [ -1, %entry ]
  %retval1.0 = phi i32 [ -1, %if.then2 ], [ 0, %if.else ], [ 0, %entry ]
  %tobool5 = icmp eq i8* %timername, null, !dbg !713
  br i1 %tobool5, label %if.end13, label %if.else7, !dbg !713

if.else7:                                         ; preds = %if.end4
  %0 = load %struct.cHandledData** @timers, align 8, !dbg !714, !tbaa !355
  %call8 = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %timername, i8** null) #8, !dbg !714
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !269), !dbg !714
  %cmp9 = icmp eq i32 %call8, -1, !dbg !716
  br i1 %cmp9, label %if.end13.thread, label %if.end13, !dbg !716

if.end13.thread:                                  ; preds = %if.else7
  %call11 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1354, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0), i8* %timername) #8, !dbg !717
  tail call void @llvm.dbg.value(metadata !660, i64 0, metadata !271), !dbg !719
  br label %if.end17, !dbg !720

if.end13:                                         ; preds = %if.end4, %if.else7
  %this_timer.0 = phi i32 [ %call8, %if.else7 ], [ -1, %if.end4 ]
  %cmp14 = icmp eq i32 %retval1.0, 0, !dbg !720
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !720

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i32 @CCTK_TimerPrintDataI(i32 %this_timer.0, i32 %this_clock.0) #10, !dbg !721
  tail call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !271), !dbg !721
  br label %if.end17, !dbg !723

if.end17:                                         ; preds = %if.end13.thread, %if.then15, %if.end13
  %retval1.2 = phi i32 [ %call16, %if.then15 ], [ -1, %if.end13 ], [ -1, %if.end13.thread ]
  ret i32 %retval1.2, !dbg !724
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_timerprintdata_(i32* nocapture %ierr, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !276), !dbg !725
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !277), !dbg !725
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !278), !dbg !725
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !279), !dbg !725
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !280), !dbg !725
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !726
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !281), !dbg !726
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8, !dbg !726
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !282), !dbg !726
  %0 = load i8* %call, align 1, !dbg !727, !tbaa !356
  %tobool = icmp ne i8 %0, 0, !dbg !727
  %cond = select i1 %tobool, i8* %call, i8* null, !dbg !727
  %1 = load i8* %call1, align 1, !dbg !727, !tbaa !356
  %tobool3 = icmp ne i8 %1, 0, !dbg !727
  %cond7 = select i1 %tobool3, i8* %call1, i8* null, !dbg !727
  %call8 = tail call i32 @CCTK_TimerPrintData(i8* %cond, i8* %cond7) #10, !dbg !727
  store i32 %call8, i32* %ierr, align 4, !dbg !727, !tbaa !359
  tail call void @free(i8* %call) #8, !dbg !728
  tail call void @free(i8* %call1) #8, !dbg !729
  ret void, !dbg !730
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !10, metadata !11, metadata !327, metadata !10, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 16, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 16, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Timers.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"val_none", i64 0} ; [ DW_TAG_enumerator ] [val_none :: 0]
!7 = metadata !{i32 786472, metadata !"val_int", i64 1} ; [ DW_TAG_enumerator ] [val_int :: 1]
!8 = metadata !{i32 786472, metadata !"val_long", i64 2} ; [ DW_TAG_enumerator ] [val_long :: 2]
!9 = metadata !{i32 786472, metadata !"val_double", i64 3} ; [ DW_TAG_enumerator ] [val_double :: 3]
!10 = metadata !{i32 0}
!11 = metadata !{metadata !12, metadata !19, metadata !77, metadata !83, metadata !90, metadata !93, metadata !99, metadata !100, metadata !103, metadata !107, metadata !111, metadata !121, metadata !128, metadata !131, metadata !136, metadata !142, metadata !148, metadata !154, metadata !159, metadata !165, metadata !169, metadata !173, metadata !178, metadata !184, metadata !188, metadata !192, metadata !197, metadata !203, metadata !207, metadata !211, metadata !225, metadata !232, metadata !237, metadata !242, metadata !256, metadata !263, metadata !272, metadata !283, metadata !293, metadata !301, metadata !307, metadata !313, metadata !319}
!12 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_version_util_CactusTimers_c", metadata !"CCTKi_version_util_CactusTimers_c", metadata !"", i32 27, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_CactusTimers_c, null, null, metadata !10, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_util_CactusTimers_c]
!13 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_ClockRegister", metadata !"CCTK_ClockRegister", metadata !"", i32 121, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.cClockFuncs*)* @CCTK_ClockRegister, null, null, metadata !63, i32 122} ; [ DW_TAG_subprogram ] [line 121] [def] [scope 122] [CCTK_ClockRegister]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !16, metadata !23}
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cClockFuncs]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"cClockFuncs", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [cClockFuncs] [line 49, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 38, i64 576, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 576, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !35, metadata !39, metadata !40, metadata !41, metadata !42, metadata !62}
!28 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"name", i32 40, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [name] [line 40, size 64, align 64, offset 0] [from ]
!29 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"n_vals", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [n_vals] [line 41, size 32, align 32, offset 64] [from int]
!30 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"create", i32 42, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [create] [line 42, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !22}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!35 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"destroy", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [destroy] [line 43, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{null, metadata !22, metadata !34}
!39 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"start", i32 44, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [start] [line 44, size 64, align 64, offset 256] [from ]
!40 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"stop", i32 45, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [stop] [line 45, size 64, align 64, offset 320] [from ]
!41 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"reset", i32 46, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [reset] [line 46, size 64, align 64, offset 384] [from ]
!42 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"get", i32 47, i64 64, i64 64, i64 448, i32 0, metadata !43} ; [ DW_TAG_member ] [get] [line 47, size 64, align 64, offset 448] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{null, metadata !22, metadata !34, metadata !46}
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cTimerVal]
!47 = metadata !{i32 786454, metadata !4, null, metadata !"cTimerVal", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cTimerVal] [line 29, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 256, align 64, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !52, metadata !53, metadata !54}
!50 = metadata !{i32 786445, metadata !4, metadata !48, metadata !"type", i32 20, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [type] [line 20, size 32, align 32, offset 0] [from cTimerValType]
!51 = metadata !{i32 786454, metadata !4, null, metadata !"cTimerValType", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [cTimerValType] [line 16, size 0, align 0, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !4, metadata !48, metadata !"heading", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [heading] [line 21, size 64, align 64, offset 64] [from ]
!53 = metadata !{i32 786445, metadata !4, metadata !48, metadata !"units", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [units] [line 22, size 64, align 64, offset 128] [from ]
!54 = metadata !{i32 786445, metadata !4, metadata !48, metadata !"val", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [val] [line 28, size 64, align 64, offset 192] [from ]
!55 = metadata !{i32 786455, metadata !4, metadata !48, metadata !"", i32 23, i64 64, i64 64, i64 0, i32 0, null, metadata !56, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 23, size 64, align 64, offset 0] [from ]
!56 = metadata !{metadata !57, metadata !58, metadata !60}
!57 = metadata !{i32 786445, metadata !4, metadata !55, metadata !"i", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [i] [line 25, size 32, align 32, offset 0] [from int]
!58 = metadata !{i32 786445, metadata !4, metadata !55, metadata !"l", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [l] [line 26, size 64, align 64, offset 0] [from long int]
!59 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786445, metadata !4, metadata !55, metadata !"d", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [d] [line 27, size 64, align 64, offset 0] [from double]
!61 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!62 = metadata !{i32 786445, metadata !4, metadata !26, metadata !"set", i32 48, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ] [set] [line 48, size 64, align 64, offset 512] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !75}
!64 = metadata !{i32 786689, metadata !19, metadata !"clockname", metadata !13, i32 16777337, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clockname] [line 121]
!65 = metadata !{i32 786689, metadata !19, metadata !"functions", metadata !13, i32 33554553, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [functions] [line 121]
!66 = metadata !{i32 786688, metadata !19, metadata !"tmp", metadata !13, i32 123, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 123]
!67 = metadata !{i32 786688, metadata !19, metadata !"handle", metadata !13, i32 124, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 124]
!68 = metadata !{i32 786688, metadata !19, metadata !"timer", metadata !13, i32 125, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 125]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_Timer]
!70 = metadata !{i32 786454, metadata !1, null, metadata !"t_Timer", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [t_Timer] [line 68, size 0, align 0, offset 0] [from ]
!71 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 65, i64 64, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 65, size 64, align 64, offset 0] [from ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786445, metadata !1, metadata !71, metadata !"data", i32 67, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!75 = metadata !{i32 786688, metadata !19, metadata !"newfuncs", metadata !13, i32 126, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newfuncs] [line 126]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cClockFuncs]
!77 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_ClockName", metadata !"CCTK_ClockName", metadata !"", i32 184, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_ClockName, null, null, metadata !80, i32 185} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 185] [CCTK_ClockName]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !16, metadata !22}
!80 = metadata !{metadata !81, metadata !82}
!81 = metadata !{i32 786689, metadata !77, metadata !"handle", metadata !13, i32 16777400, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 184]
!82 = metadata !{i32 786688, metadata !77, metadata !"funcs", metadata !13, i32 186, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 186]
!83 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_ClockHandle", metadata !"CCTK_ClockHandle", metadata !"", i32 214, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_ClockHandle, null, null, metadata !86, i32 215} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 215] [CCTK_ClockHandle]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{metadata !22, metadata !16}
!86 = metadata !{metadata !87, metadata !88, metadata !89}
!87 = metadata !{i32 786689, metadata !83, metadata !"clockname", metadata !13, i32 16777430, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clockname] [line 214]
!88 = metadata !{i32 786688, metadata !83, metadata !"handle", metadata !13, i32 216, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 216]
!89 = metadata !{i32 786688, metadata !83, metadata !"funcs", metadata !13, i32 217, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 217]
!90 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_NumClocks", metadata !"CCTK_NumClocks", metadata !"", i32 246, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_NumClocks, null, null, metadata !10, i32 247} ; [ DW_TAG_subprogram ] [line 246] [def] [scope 247] [CCTK_NumClocks]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !22}
!93 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_numclocks_", metadata !"cctk_numclocks_", metadata !"", i32 251, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_numclocks_, null, null, metadata !97, i32 253} ; [ DW_TAG_subprogram ] [line 251] [def] [scope 253] [cctk_numclocks_]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !96}
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786689, metadata !93, metadata !"nclocks", metadata !13, i32 16777468, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nclocks] [line 252]
!99 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_NumTimers", metadata !"CCTK_NumTimers", metadata !"", i32 271, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_NumTimers, null, null, metadata !10, i32 272} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 272] [CCTK_NumTimers]
!100 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_numtimers_", metadata !"cctk_numtimers_", metadata !"", i32 276, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_numtimers_, null, null, metadata !101, i32 278} ; [ DW_TAG_subprogram ] [line 276] [def] [scope 278] [cctk_numtimers_]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786689, metadata !100, metadata !"ntimers", metadata !13, i32 16777493, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntimers] [line 277]
!103 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerName", metadata !"CCTK_TimerName", metadata !"", i32 303, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_TimerName, null, null, metadata !104, i32 304} ; [ DW_TAG_subprogram ] [line 303] [def] [scope 304] [CCTK_TimerName]
!104 = metadata !{metadata !105, metadata !106}
!105 = metadata !{i32 786689, metadata !103, metadata !"timer_handle", metadata !13, i32 16777519, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer_handle] [line 303]
!106 = metadata !{i32 786688, metadata !103, metadata !"retval", metadata !13, i32 305, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 305]
!107 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerCreate", metadata !"CCTK_TimerCreate", metadata !"", i32 334, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_TimerCreate, null, null, metadata !108, i32 335} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 335] [CCTK_TimerCreate]
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786689, metadata !107, metadata !"timername", metadata !13, i32 16777550, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 334]
!110 = metadata !{i32 786688, metadata !107, metadata !"retval", metadata !13, i32 336, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 336]
!111 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timercreate_", metadata !"cctk_timercreate_", metadata !"", i32 344, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_timercreate_, null, null, metadata !116, i32 346} ; [ DW_TAG_subprogram ] [line 344] [def] [scope 346] [cctk_timercreate_]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{null, metadata !96, metadata !114, metadata !115}
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!115 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120}
!117 = metadata !{i32 786689, metadata !111, metadata !"timer_index", metadata !13, i32 16777561, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer_index] [line 345]
!118 = metadata !{i32 786689, metadata !111, metadata !"cctk_str1", metadata !13, i32 33554777, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 345]
!119 = metadata !{i32 786689, metadata !111, metadata !"cctk_strlen1", metadata !13, i32 50331993, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 345]
!120 = metadata !{i32 786688, metadata !111, metadata !"timername", metadata !13, i32 347, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timername] [line 347]
!121 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerCreateI", metadata !"CCTK_TimerCreateI", metadata !"", i32 367, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_TimerCreateI, null, null, metadata !122, i32 368} ; [ DW_TAG_subprogram ] [line 367] [def] [scope 368] [CCTK_TimerCreateI]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786688, metadata !121, metadata !"retval", metadata !13, i32 369, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 369]
!124 = metadata !{i32 786688, metadata !121, metadata !"timername", metadata !13, i32 370, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timername] [line 370]
!125 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !18, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786465, i64 0, i64 40}      ; [ DW_TAG_subrange_type ] [0, 39]
!128 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timercreatei_", metadata !"cctk_timercreatei_", metadata !"", i32 379, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_timercreatei_, null, null, metadata !129, i32 381} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 381] [cctk_timercreatei_]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786689, metadata !128, metadata !"ierr", metadata !13, i32 16777596, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 380]
!131 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerDestroy", metadata !"CCTK_TimerDestroy", metadata !"", i32 480, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_TimerDestroy, null, null, metadata !132, i32 481} ; [ DW_TAG_subprogram ] [line 480] [def] [scope 481] [CCTK_TimerDestroy]
!132 = metadata !{metadata !133, metadata !134, metadata !135}
!133 = metadata !{i32 786689, metadata !131, metadata !"timername", metadata !13, i32 16777696, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 480]
!134 = metadata !{i32 786688, metadata !131, metadata !"timer", metadata !13, i32 482, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 482]
!135 = metadata !{i32 786688, metadata !131, metadata !"this_timer", metadata !13, i32 483, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 483]
!136 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerdestroy_", metadata !"cctk_timerdestroy_", metadata !"", i32 500, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_timerdestroy_, null, null, metadata !137, i32 502} ; [ DW_TAG_subprogram ] [line 500] [def] [scope 502] [cctk_timerdestroy_]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141}
!138 = metadata !{i32 786689, metadata !136, metadata !"ierr", metadata !13, i32 16777717, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 501]
!139 = metadata !{i32 786689, metadata !136, metadata !"cctk_str1", metadata !13, i32 33554933, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 501]
!140 = metadata !{i32 786689, metadata !136, metadata !"cctk_strlen1", metadata !13, i32 50332149, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 501]
!141 = metadata !{i32 786688, metadata !136, metadata !"timername", metadata !13, i32 503, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timername] [line 503]
!142 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerDestroyI", metadata !"CCTK_TimerDestroyI", metadata !"", i32 529, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_TimerDestroyI, null, null, metadata !145, i32 530} ; [ DW_TAG_subprogram ] [line 529] [def] [scope 530] [CCTK_TimerDestroyI]
!143 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{metadata !22, metadata !22}
!145 = metadata !{metadata !146, metadata !147}
!146 = metadata !{i32 786689, metadata !142, metadata !"this_timer", metadata !13, i32 16777745, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 529]
!147 = metadata !{i32 786688, metadata !142, metadata !"timer", metadata !13, i32 531, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 531]
!148 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerdestroyi_", metadata !"cctk_timerdestroyi_", metadata !"", i32 548, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_timerdestroyi_, null, null, metadata !151, i32 550} ; [ DW_TAG_subprogram ] [line 548] [def] [scope 550] [cctk_timerdestroyi_]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{null, metadata !96, metadata !96}
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786689, metadata !148, metadata !"ierr", metadata !13, i32 16777765, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 549]
!153 = metadata !{i32 786689, metadata !148, metadata !"this_timer", metadata !13, i32 33554981, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 549]
!154 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerStart", metadata !"CCTK_TimerStart", metadata !"", i32 616, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_TimerStart, null, null, metadata !155, i32 617} ; [ DW_TAG_subprogram ] [line 616] [def] [scope 617] [CCTK_TimerStart]
!155 = metadata !{metadata !156, metadata !157, metadata !158}
!156 = metadata !{i32 786689, metadata !154, metadata !"timername", metadata !13, i32 16777832, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 616]
!157 = metadata !{i32 786688, metadata !154, metadata !"timer", metadata !13, i32 618, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 618]
!158 = metadata !{i32 786688, metadata !154, metadata !"this_timer", metadata !13, i32 619, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 619]
!159 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerstart_", metadata !"cctk_timerstart_", metadata !"", i32 636, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_timerstart_, null, null, metadata !160, i32 638} ; [ DW_TAG_subprogram ] [line 636] [def] [scope 638] [cctk_timerstart_]
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164}
!161 = metadata !{i32 786689, metadata !159, metadata !"ierr", metadata !13, i32 16777853, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 637]
!162 = metadata !{i32 786689, metadata !159, metadata !"cctk_str1", metadata !13, i32 33555069, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 637]
!163 = metadata !{i32 786689, metadata !159, metadata !"cctk_strlen1", metadata !13, i32 50332285, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 637]
!164 = metadata !{i32 786688, metadata !159, metadata !"timername", metadata !13, i32 639, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timername] [line 639]
!165 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerStartI", metadata !"CCTK_TimerStartI", metadata !"", i32 665, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_TimerStartI, null, null, metadata !166, i32 666} ; [ DW_TAG_subprogram ] [line 665] [def] [scope 666] [CCTK_TimerStartI]
!166 = metadata !{metadata !167, metadata !168}
!167 = metadata !{i32 786689, metadata !165, metadata !"this_timer", metadata !13, i32 16777881, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 665]
!168 = metadata !{i32 786688, metadata !165, metadata !"timer", metadata !13, i32 667, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 667]
!169 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerstarti_", metadata !"cctk_timerstarti_", metadata !"", i32 684, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_timerstarti_, null, null, metadata !170, i32 686} ; [ DW_TAG_subprogram ] [line 684] [def] [scope 686] [cctk_timerstarti_]
!170 = metadata !{metadata !171, metadata !172}
!171 = metadata !{i32 786689, metadata !169, metadata !"ierr", metadata !13, i32 16777901, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 685]
!172 = metadata !{i32 786689, metadata !169, metadata !"this_timer", metadata !13, i32 33555117, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 685]
!173 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerStop", metadata !"CCTK_TimerStop", metadata !"", i32 748, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_TimerStop, null, null, metadata !174, i32 749} ; [ DW_TAG_subprogram ] [line 748] [def] [scope 749] [CCTK_TimerStop]
!174 = metadata !{metadata !175, metadata !176, metadata !177}
!175 = metadata !{i32 786689, metadata !173, metadata !"timername", metadata !13, i32 16777964, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 748]
!176 = metadata !{i32 786688, metadata !173, metadata !"timer", metadata !13, i32 750, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 750]
!177 = metadata !{i32 786688, metadata !173, metadata !"this_timer", metadata !13, i32 751, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 751]
!178 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerstop_", metadata !"cctk_timerstop_", metadata !"", i32 768, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_timerstop_, null, null, metadata !179, i32 770} ; [ DW_TAG_subprogram ] [line 768] [def] [scope 770] [cctk_timerstop_]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183}
!180 = metadata !{i32 786689, metadata !178, metadata !"ierr", metadata !13, i32 16777985, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 769]
!181 = metadata !{i32 786689, metadata !178, metadata !"cctk_str1", metadata !13, i32 33555201, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 769]
!182 = metadata !{i32 786689, metadata !178, metadata !"cctk_strlen1", metadata !13, i32 50332417, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 769]
!183 = metadata !{i32 786688, metadata !178, metadata !"timername", metadata !13, i32 771, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timername] [line 771]
!184 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerStopI", metadata !"CCTK_TimerStopI", metadata !"", i32 797, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_TimerStopI, null, null, metadata !185, i32 798} ; [ DW_TAG_subprogram ] [line 797] [def] [scope 798] [CCTK_TimerStopI]
!185 = metadata !{metadata !186, metadata !187}
!186 = metadata !{i32 786689, metadata !184, metadata !"this_timer", metadata !13, i32 16778013, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 797]
!187 = metadata !{i32 786688, metadata !184, metadata !"timer", metadata !13, i32 799, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 799]
!188 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerstopi_", metadata !"cctk_timerstopi_", metadata !"", i32 816, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_timerstopi_, null, null, metadata !189, i32 818} ; [ DW_TAG_subprogram ] [line 816] [def] [scope 818] [cctk_timerstopi_]
!189 = metadata !{metadata !190, metadata !191}
!190 = metadata !{i32 786689, metadata !188, metadata !"ierr", metadata !13, i32 16778033, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 817]
!191 = metadata !{i32 786689, metadata !188, metadata !"this_timer", metadata !13, i32 33555249, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 817]
!192 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerReset", metadata !"CCTK_TimerReset", metadata !"", i32 879, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_TimerReset, null, null, metadata !193, i32 880} ; [ DW_TAG_subprogram ] [line 879] [def] [scope 880] [CCTK_TimerReset]
!193 = metadata !{metadata !194, metadata !195, metadata !196}
!194 = metadata !{i32 786689, metadata !192, metadata !"timername", metadata !13, i32 16778095, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 879]
!195 = metadata !{i32 786688, metadata !192, metadata !"timer", metadata !13, i32 881, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 881]
!196 = metadata !{i32 786688, metadata !192, metadata !"this_timer", metadata !13, i32 882, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 882]
!197 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerreset_", metadata !"cctk_timerreset_", metadata !"", i32 899, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_timerreset_, null, null, metadata !198, i32 901} ; [ DW_TAG_subprogram ] [line 899] [def] [scope 901] [cctk_timerreset_]
!198 = metadata !{metadata !199, metadata !200, metadata !201, metadata !202}
!199 = metadata !{i32 786689, metadata !197, metadata !"ierr", metadata !13, i32 16778116, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 900]
!200 = metadata !{i32 786689, metadata !197, metadata !"cctk_str1", metadata !13, i32 33555332, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 900]
!201 = metadata !{i32 786689, metadata !197, metadata !"cctk_strlen1", metadata !13, i32 50332548, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 900]
!202 = metadata !{i32 786688, metadata !197, metadata !"timername", metadata !13, i32 902, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timername] [line 902]
!203 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerResetI", metadata !"CCTK_TimerResetI", metadata !"", i32 928, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_TimerResetI, null, null, metadata !204, i32 929} ; [ DW_TAG_subprogram ] [line 928] [def] [scope 929] [CCTK_TimerResetI]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786689, metadata !203, metadata !"this_timer", metadata !13, i32 16778144, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 928]
!206 = metadata !{i32 786688, metadata !203, metadata !"timer", metadata !13, i32 930, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 930]
!207 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerreseti_", metadata !"cctk_timerreseti_", metadata !"", i32 947, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_timerreseti_, null, null, metadata !208, i32 949} ; [ DW_TAG_subprogram ] [line 947] [def] [scope 949] [cctk_timerreseti_]
!208 = metadata !{metadata !209, metadata !210}
!209 = metadata !{i32 786689, metadata !207, metadata !"ierr", metadata !13, i32 16778164, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 948]
!210 = metadata !{i32 786689, metadata !207, metadata !"this_timer", metadata !13, i32 33555380, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 948]
!211 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_Timer", metadata !"CCTK_Timer", metadata !"", i32 1016, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.cTimerData*)* @CCTK_Timer, null, null, metadata !220, i32 1017} ; [ DW_TAG_subprogram ] [line 1016] [def] [scope 1017] [CCTK_Timer]
!212 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !22, metadata !16, metadata !214}
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cTimerData]
!215 = metadata !{i32 786454, metadata !1, null, metadata !"cTimerData", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [cTimerData] [line 35, size 0, align 0, offset 0] [from ]
!216 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 31, i64 128, i64 64, i32 0, i32 0, null, metadata !217, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 31, size 128, align 64, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !219}
!218 = metadata !{i32 786445, metadata !4, metadata !216, metadata !"n_vals", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [n_vals] [line 33, size 32, align 32, offset 0] [from int]
!219 = metadata !{i32 786445, metadata !4, metadata !216, metadata !"vals", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [vals] [line 34, size 64, align 64, offset 64] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !224}
!221 = metadata !{i32 786689, metadata !211, metadata !"timername", metadata !13, i32 16778232, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 1016]
!222 = metadata !{i32 786689, metadata !211, metadata !"info", metadata !13, i32 33555448, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 1016]
!223 = metadata !{i32 786688, metadata !211, metadata !"timer", metadata !13, i32 1018, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 1018]
!224 = metadata !{i32 786688, metadata !211, metadata !"this_timer", metadata !13, i32 1019, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 1019]
!225 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerI", metadata !"CCTK_TimerI", metadata !"", i32 1057, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.cTimerData*)* @CCTK_TimerI, null, null, metadata !228, i32 1058} ; [ DW_TAG_subprogram ] [line 1057] [def] [scope 1058] [CCTK_TimerI]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{metadata !22, metadata !22, metadata !214}
!228 = metadata !{metadata !229, metadata !230, metadata !231}
!229 = metadata !{i32 786689, metadata !225, metadata !"this_timer", metadata !13, i32 16778273, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 1057]
!230 = metadata !{i32 786689, metadata !225, metadata !"info", metadata !13, i32 33555489, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 1057]
!231 = metadata !{i32 786688, metadata !225, metadata !"timer", metadata !13, i32 1059, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 1059]
!232 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerCreateData", metadata !"CCTK_TimerCreateData", metadata !"", i32 1131, metadata !233, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.cTimerData* ()* @CCTK_TimerCreateData, null, null, metadata !235, i32 1132} ; [ DW_TAG_subprogram ] [line 1131] [def] [scope 1132] [CCTK_TimerCreateData]
!233 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!234 = metadata !{metadata !214}
!235 = metadata !{metadata !236}
!236 = metadata !{i32 786688, metadata !232, metadata !"retval", metadata !13, i32 1133, metadata !214, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1133]
!237 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerDestroyData", metadata !"CCTK_TimerDestroyData", metadata !"", i32 1172, metadata !238, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cTimerData*)* @CCTK_TimerDestroyData, null, null, metadata !240, i32 1173} ; [ DW_TAG_subprogram ] [line 1172] [def] [scope 1173] [CCTK_TimerDestroyData]
!238 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!239 = metadata !{metadata !22, metadata !214}
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786689, metadata !237, metadata !"info", metadata !13, i32 16778388, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 1172]
!242 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerPrintDataI", metadata !"CCTK_TimerPrintDataI", metadata !"", i32 1214, metadata !243, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @CCTK_TimerPrintDataI, null, null, metadata !245, i32 1215} ; [ DW_TAG_subprogram ] [line 1214] [def] [scope 1215] [CCTK_TimerPrintDataI]
!243 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{metadata !22, metadata !22, metadata !22}
!245 = metadata !{metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255}
!246 = metadata !{i32 786689, metadata !242, metadata !"this_timer", metadata !13, i32 16778430, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 1214]
!247 = metadata !{i32 786689, metadata !242, metadata !"this_clock", metadata !13, i32 33555646, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_clock] [line 1214]
!248 = metadata !{i32 786688, metadata !242, metadata !"info", metadata !13, i32 1216, metadata !214, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 1216]
!249 = metadata !{i32 786688, metadata !242, metadata !"i", metadata !13, i32 1217, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1217]
!250 = metadata !{i32 786688, metadata !242, metadata !"timer", metadata !13, i32 1217, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 1217]
!251 = metadata !{i32 786688, metadata !242, metadata !"retval", metadata !13, i32 1217, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1217]
!252 = metadata !{i32 786688, metadata !242, metadata !"firstclock", metadata !13, i32 1218, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstclock] [line 1218]
!253 = metadata !{i32 786688, metadata !242, metadata !"lastclock", metadata !13, i32 1218, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastclock] [line 1218]
!254 = metadata !{i32 786688, metadata !242, metadata !"firsttimer", metadata !13, i32 1219, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firsttimer] [line 1219]
!255 = metadata !{i32 786688, metadata !242, metadata !"lasttimer", metadata !13, i32 1219, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lasttimer] [line 1219]
!256 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerprintdatai_", metadata !"cctk_timerprintdatai_", metadata !"", i32 1291, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*)* @cctk_timerprintdatai_, null, null, metadata !259, i32 1293} ; [ DW_TAG_subprogram ] [line 1291] [def] [scope 1293] [cctk_timerprintdatai_]
!257 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{null, metadata !96, metadata !96, metadata !96}
!259 = metadata !{metadata !260, metadata !261, metadata !262}
!260 = metadata !{i32 786689, metadata !256, metadata !"ierr", metadata !13, i32 16778508, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 1292]
!261 = metadata !{i32 786689, metadata !256, metadata !"this_timer", metadata !13, i32 33555724, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 1292]
!262 = metadata !{i32 786689, metadata !256, metadata !"this_clock", metadata !13, i32 50332940, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_clock] [line 1292]
!263 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTK_TimerPrintData", metadata !"CCTK_TimerPrintData", metadata !"", i32 1323, metadata !264, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTK_TimerPrintData, null, null, metadata !266, i32 1324} ; [ DW_TAG_subprogram ] [line 1323] [def] [scope 1324] [CCTK_TimerPrintData]
!264 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!265 = metadata !{metadata !22, metadata !16, metadata !16}
!266 = metadata !{metadata !267, metadata !268, metadata !269, metadata !270, metadata !271}
!267 = metadata !{i32 786689, metadata !263, metadata !"timername", metadata !13, i32 16778539, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 1323]
!268 = metadata !{i32 786689, metadata !263, metadata !"clockname", metadata !13, i32 33555755, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clockname] [line 1323]
!269 = metadata !{i32 786688, metadata !263, metadata !"this_timer", metadata !13, i32 1325, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 1325]
!270 = metadata !{i32 786688, metadata !263, metadata !"this_clock", metadata !13, i32 1325, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_clock] [line 1325]
!271 = metadata !{i32 786688, metadata !263, metadata !"retval", metadata !13, i32 1325, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1325]
!272 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"cctk_timerprintdata_", metadata !"cctk_timerprintdata_", metadata !"", i32 1368, metadata !273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i8*, i32, i32)* @cctk_timerprintdata_, null, null, metadata !275, i32 1370} ; [ DW_TAG_subprogram ] [line 1368] [def] [scope 1370] [cctk_timerprintdata_]
!273 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!274 = metadata !{null, metadata !96, metadata !114, metadata !114, metadata !115, metadata !115}
!275 = metadata !{metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282}
!276 = metadata !{i32 786689, metadata !272, metadata !"ierr", metadata !13, i32 16778585, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 1369]
!277 = metadata !{i32 786689, metadata !272, metadata !"cctk_str1", metadata !13, i32 33555801, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1369]
!278 = metadata !{i32 786689, metadata !272, metadata !"cctk_str2", metadata !13, i32 50333017, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 1369]
!279 = metadata !{i32 786689, metadata !272, metadata !"cctk_strlen1", metadata !13, i32 67110233, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1369]
!280 = metadata !{i32 786689, metadata !272, metadata !"cctk_strlen2", metadata !13, i32 83887449, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 1369]
!281 = metadata !{i32 786688, metadata !272, metadata !"timer", metadata !13, i32 1371, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 1371]
!282 = metadata !{i32 786688, metadata !272, metadata !"clock", metadata !13, i32 1371, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock] [line 1371]
!283 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_Timer", metadata !"CCTKi_Timer", metadata !"", i32 1096, metadata !284, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_Timer*, %struct.cTimerData*)* @CCTKi_Timer, null, null, metadata !286, i32 1097} ; [ DW_TAG_subprogram ] [line 1096] [local] [def] [scope 1097] [CCTKi_Timer]
!284 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{null, metadata !22, metadata !69, metadata !214}
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292}
!287 = metadata !{i32 786689, metadata !283, metadata !"this_timer", metadata !13, i32 16778312, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 1096]
!288 = metadata !{i32 786689, metadata !283, metadata !"timer", metadata !13, i32 33555528, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 1096]
!289 = metadata !{i32 786689, metadata !283, metadata !"info", metadata !13, i32 50332744, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 1096]
!290 = metadata !{i32 786688, metadata !283, metadata !"funcs", metadata !13, i32 1098, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 1098]
!291 = metadata !{i32 786688, metadata !283, metadata !"handle", metadata !13, i32 1099, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 1099]
!292 = metadata !{i32 786688, metadata !283, metadata !"total_vars", metadata !13, i32 1099, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_vars] [line 1099]
!293 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerReset", metadata !"CCTKi_TimerReset", metadata !"", i32 973, metadata !294, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_Timer*)* @CCTKi_TimerReset, null, null, metadata !296, i32 974} ; [ DW_TAG_subprogram ] [line 973] [local] [def] [scope 974] [CCTKi_TimerReset]
!294 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{null, metadata !22, metadata !69}
!296 = metadata !{metadata !297, metadata !298, metadata !299, metadata !300}
!297 = metadata !{i32 786689, metadata !293, metadata !"this_timer", metadata !13, i32 16778189, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 973]
!298 = metadata !{i32 786689, metadata !293, metadata !"timer", metadata !13, i32 33555405, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 973]
!299 = metadata !{i32 786688, metadata !293, metadata !"funcs", metadata !13, i32 975, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 975]
!300 = metadata !{i32 786688, metadata !293, metadata !"handle", metadata !13, i32 976, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 976]
!301 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerStop", metadata !"CCTKi_TimerStop", metadata !"", i32 842, metadata !294, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_Timer*)* @CCTKi_TimerStop, null, null, metadata !302, i32 843} ; [ DW_TAG_subprogram ] [line 842] [local] [def] [scope 843] [CCTKi_TimerStop]
!302 = metadata !{metadata !303, metadata !304, metadata !305, metadata !306}
!303 = metadata !{i32 786689, metadata !301, metadata !"this_timer", metadata !13, i32 16778058, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 842]
!304 = metadata !{i32 786689, metadata !301, metadata !"timer", metadata !13, i32 33555274, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 842]
!305 = metadata !{i32 786688, metadata !301, metadata !"funcs", metadata !13, i32 844, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 844]
!306 = metadata !{i32 786688, metadata !301, metadata !"handle", metadata !13, i32 845, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 845]
!307 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerStart", metadata !"CCTKi_TimerStart", metadata !"", i32 710, metadata !294, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_Timer*)* @CCTKi_TimerStart, null, null, metadata !308, i32 711} ; [ DW_TAG_subprogram ] [line 710] [local] [def] [scope 711] [CCTKi_TimerStart]
!308 = metadata !{metadata !309, metadata !310, metadata !311, metadata !312}
!309 = metadata !{i32 786689, metadata !307, metadata !"this_timer", metadata !13, i32 16777926, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 710]
!310 = metadata !{i32 786689, metadata !307, metadata !"timer", metadata !13, i32 33555142, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 710]
!311 = metadata !{i32 786688, metadata !307, metadata !"funcs", metadata !13, i32 712, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 712]
!312 = metadata !{i32 786688, metadata !307, metadata !"handle", metadata !13, i32 713, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 713]
!313 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerDestroy", metadata !"CCTKi_TimerDestroy", metadata !"", i32 574, metadata !294, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_Timer*)* @CCTKi_TimerDestroy, null, null, metadata !314, i32 575} ; [ DW_TAG_subprogram ] [line 574] [local] [def] [scope 575] [CCTKi_TimerDestroy]
!314 = metadata !{metadata !315, metadata !316, metadata !317, metadata !318}
!315 = metadata !{i32 786689, metadata !313, metadata !"this_timer", metadata !13, i32 16777790, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_timer] [line 574]
!316 = metadata !{i32 786689, metadata !313, metadata !"timer", metadata !13, i32 33555006, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 574]
!317 = metadata !{i32 786688, metadata !313, metadata !"handle", metadata !13, i32 576, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 576]
!318 = metadata !{i32 786688, metadata !313, metadata !"funcs", metadata !13, i32 577, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 577]
!319 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerCreate", metadata !"CCTKi_TimerCreate", metadata !"", i32 407, metadata !84, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTKi_TimerCreate, null, null, metadata !320, i32 408} ; [ DW_TAG_subprogram ] [line 407] [local] [def] [scope 408] [CCTKi_TimerCreate]
!320 = metadata !{metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326}
!321 = metadata !{i32 786689, metadata !319, metadata !"timername", metadata !13, i32 16777623, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timername] [line 407]
!322 = metadata !{i32 786688, metadata !319, metadata !"retval", metadata !13, i32 409, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 409]
!323 = metadata !{i32 786688, metadata !319, metadata !"timer", metadata !13, i32 410, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 410]
!324 = metadata !{i32 786688, metadata !319, metadata !"funcs", metadata !13, i32 411, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcs] [line 411]
!325 = metadata !{i32 786688, metadata !319, metadata !"this_timer", metadata !13, i32 412, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_timer] [line 412]
!326 = metadata !{i32 786688, metadata !319, metadata !"handle", metadata !13, i32 413, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 413]
!327 = metadata !{metadata !328, metadata !329, metadata !345, metadata !346, metadata !347, metadata !348}
!328 = metadata !{i32 786484, i32 0, null, metadata !"n_clock_vals", metadata !"n_clock_vals", metadata !"", metadata !13, i32 89, metadata !22, i32 1, i32 1, i32* @n_clock_vals, null} ; [ DW_TAG_variable ] [n_clock_vals] [line 89] [local] [def]
!329 = metadata !{i32 786484, i32 0, null, metadata !"clocks", metadata !"clocks", metadata !"", metadata !13, i32 86, metadata !330, i32 1, i32 1, %struct.cHandledData** @clocks, null} ; [ DW_TAG_variable ] [clocks] [line 86] [local] [def]
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!331 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!332 = metadata !{i32 786451, metadata !333, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!333 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!334 = metadata !{metadata !335, metadata !343, metadata !344}
!335 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!336 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!337 = metadata !{i32 786454, metadata !333, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!338 = metadata !{i32 786451, metadata !333, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !339, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!339 = metadata !{metadata !340, metadata !341, metadata !342}
!340 = metadata !{i32 786445, metadata !333, metadata !338, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!341 = metadata !{i32 786445, metadata !333, metadata !338, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!342 = metadata !{i32 786445, metadata !333, metadata !338, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!343 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!344 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !115} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!345 = metadata !{i32 786484, i32 0, null, metadata !"n_clocks", metadata !"n_clocks", metadata !"", metadata !13, i32 85, metadata !22, i32 1, i32 1, i32* @n_clocks, null} ; [ DW_TAG_variable ] [n_clocks] [line 85] [local] [def]
!346 = metadata !{i32 786484, i32 0, null, metadata !"timers", metadata !"timers", metadata !"", metadata !13, i32 92, metadata !330, i32 1, i32 1, %struct.cHandledData** @timers, null} ; [ DW_TAG_variable ] [timers] [line 92] [local] [def]
!347 = metadata !{i32 786484, i32 0, null, metadata !"n_timers", metadata !"n_timers", metadata !"", metadata !13, i32 91, metadata !22, i32 1, i32 1, i32* @n_timers, null} ; [ DW_TAG_variable ] [n_timers] [line 91] [local] [def]
!348 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !13, i32 25, metadata !16, i32 1, i32 1, null, null}
!349 = metadata !{i32 27, i32 0, metadata !12, null}
!350 = metadata !{i32 121, i32 0, metadata !19, null}
!351 = metadata !{i32 129, i32 0, metadata !19, null}
!352 = metadata !{i32 130, i32 0, metadata !19, null}
!353 = metadata !{i32 132, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !19, i32 131, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!355 = metadata !{metadata !"any pointer", metadata !356}
!356 = metadata !{metadata !"omnipotent char", metadata !357}
!357 = metadata !{metadata !"Simple C/C++ TBAA"}
!358 = metadata !{i32 133, i32 0, metadata !354, null}
!359 = metadata !{metadata !"int", metadata !356}
!360 = metadata !{i32 134, i32 0, metadata !354, null}
!361 = metadata !{i32 135, i32 0, metadata !354, null}
!362 = metadata !{i32 136, i32 0, metadata !354, null}
!363 = metadata !{i32 137, i32 0, metadata !354, null}
!364 = metadata !{i32 138, i32 0, metadata !354, null}
!365 = metadata !{i32 139, i32 0, metadata !354, null}
!366 = metadata !{i32 140, i32 0, metadata !354, null}
!367 = metadata !{i32 141, i32 0, metadata !354, null}
!368 = metadata !{i32 144, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !19, i32 144, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!370 = metadata !{i32 152, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !372, i32 150, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!372 = metadata !{i32 786443, metadata !1, metadata !369, i32 145, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!373 = metadata !{i32 146, i32 0, metadata !372, null}
!374 = metadata !{i32 148, i32 0, metadata !372, null}
!375 = metadata !{i32 149, i32 0, metadata !372, null}
!376 = metadata !{i32 151, i32 0, metadata !371, null}
!377 = metadata !{i32 153, i32 0, metadata !371, null}
!378 = metadata !{i32 157, i32 0, metadata !19, null}
!379 = metadata !{i32 158, i32 0, metadata !19, null}
!380 = metadata !{i32 159, i32 0, metadata !19, null}
!381 = metadata !{i32 161, i32 0, metadata !19, null}
!382 = metadata !{i32 184, i32 0, metadata !77, null}
!383 = metadata !{i32 189, i32 0, metadata !77, null}
!384 = metadata !{i32 191, i32 0, metadata !77, null}
!385 = metadata !{i32 214, i32 0, metadata !83, null}
!386 = metadata !{i32 248, i32 0, metadata !90, metadata !387}
!387 = metadata !{i32 220, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !83, i32 220, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!389 = metadata !{i32 222, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !388, i32 221, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!391 = metadata !{i32 223, i32 0, metadata !390, null}
!392 = metadata !{i32 229, i32 0, metadata !83, null}
!393 = metadata !{i32 248, i32 0, metadata !90, null}
!394 = metadata !{i32 252, i32 0, metadata !93, null}
!395 = metadata !{i32 248, i32 0, metadata !90, metadata !396}
!396 = metadata !{i32 254, i32 0, metadata !93, null}
!397 = metadata !{i32 255, i32 0, metadata !93, null}
!398 = metadata !{i32 273, i32 0, metadata !99, null}
!399 = metadata !{i32 277, i32 0, metadata !100, null}
!400 = metadata !{i32 273, i32 0, metadata !99, metadata !401}
!401 = metadata !{i32 279, i32 0, metadata !100, null}
!402 = metadata !{i32 280, i32 0, metadata !100, null}
!403 = metadata !{i32 303, i32 0, metadata !103, null}
!404 = metadata !{i32 308, i32 0, metadata !103, null}
!405 = metadata !{i32 310, i32 0, metadata !103, null}
!406 = metadata !{i32 334, i32 0, metadata !107, null}
!407 = metadata !{i32 339, i32 0, metadata !107, null}
!408 = metadata !{i32 341, i32 0, metadata !107, null}
!409 = metadata !{i32 407, i32 0, metadata !319, null}
!410 = metadata !{i32 410, i32 0, metadata !319, null}
!411 = metadata !{i32 416, i32 0, metadata !319, null}
!412 = metadata !{i32 423, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !319, i32 422, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!414 = metadata !{i32 425, i32 0, metadata !413, null}
!415 = metadata !{i32 427, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !413, i32 426, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!417 = metadata !{i32 429, i32 0, metadata !416, null}
!418 = metadata !{i32 432, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !416, i32 430, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!420 = metadata !{i32 433, i32 0, metadata !419, null}
!421 = metadata !{i32 436, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !419, i32 436, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!423 = metadata !{i32 438, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !422, i32 437, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!425 = metadata !{i32 440, i32 0, metadata !424, null}
!426 = metadata !{i32 446, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !416, i32 445, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!428 = metadata !{i32 -2}
!429 = metadata !{i32 447, i32 0, metadata !427, null}
!430 = metadata !{i32 456, i32 0, metadata !319, null}
!431 = metadata !{i32 345, i32 0, metadata !111, null}
!432 = metadata !{i32 347, i32 0, metadata !111, null}
!433 = metadata !{i32 786689, metadata !107, metadata !"timername", metadata !13, i32 16777550, metadata !16, i32 0, metadata !434} ; [ DW_TAG_arg_variable ] [timername] [line 334]
!434 = metadata !{i32 348, i32 0, metadata !111, null}
!435 = metadata !{i32 334, i32 0, metadata !107, metadata !434}
!436 = metadata !{i32 339, i32 0, metadata !107, metadata !434}
!437 = metadata !{i32 786688, metadata !107, metadata !"retval", metadata !13, i32 336, metadata !22, i32 0, metadata !434} ; [ DW_TAG_auto_variable ] [retval] [line 336]
!438 = metadata !{i32 349, i32 0, metadata !111, null}
!439 = metadata !{i32 350, i32 0, metadata !111, null}
!440 = metadata !{i32 370, i32 0, metadata !121, null}
!441 = metadata !{i32 373, i32 0, metadata !121, null}
!442 = metadata !{i32 374, i32 0, metadata !121, null}
!443 = metadata !{i32 377, i32 0, metadata !121, null}
!444 = metadata !{i32 380, i32 0, metadata !128, null}
!445 = metadata !{i32 370, i32 0, metadata !121, metadata !446}
!446 = metadata !{i32 382, i32 0, metadata !128, null}
!447 = metadata !{i32 373, i32 0, metadata !121, metadata !446}
!448 = metadata !{i32 374, i32 0, metadata !121, metadata !446}
!449 = metadata !{i32 786688, metadata !121, metadata !"retval", metadata !13, i32 369, metadata !22, i32 0, metadata !446} ; [ DW_TAG_auto_variable ] [retval] [line 369]
!450 = metadata !{i32 377, i32 0, metadata !121, metadata !446}
!451 = metadata !{i32 383, i32 0, metadata !128, null}
!452 = metadata !{i32 480, i32 0, metadata !131, null}
!453 = metadata !{i32 482, i32 0, metadata !131, null}
!454 = metadata !{i32 486, i32 0, metadata !131, null}
!455 = metadata !{i32 487, i32 0, metadata !131, null}
!456 = metadata !{i32 489, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !131, i32 488, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!458 = metadata !{i32 490, i32 0, metadata !457, null}
!459 = metadata !{i32 493, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !131, i32 492, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!461 = metadata !{i32 497, i32 0, metadata !131, null}
!462 = metadata !{i32 574, i32 0, metadata !313, null}
!463 = metadata !{i32 580, i32 0, metadata !313, null}
!464 = metadata !{i32 583, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 583, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!466 = metadata !{i32 786443, metadata !1, metadata !313, i32 581, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!467 = metadata !{i32 585, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !465, i32 584, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!469 = metadata !{i32 586, i32 0, metadata !468, null}
!470 = metadata !{i32 588, i32 0, metadata !466, null}
!471 = metadata !{i32 589, i32 0, metadata !466, null}
!472 = metadata !{i32 590, i32 0, metadata !466, null}
!473 = metadata !{i32 591, i32 0, metadata !466, null}
!474 = metadata !{i32 592, i32 0, metadata !466, null}
!475 = metadata !{i32 593, i32 0, metadata !313, null}
!476 = metadata !{i32 501, i32 0, metadata !136, null}
!477 = metadata !{i32 503, i32 0, metadata !136, null}
!478 = metadata !{i32 504, i32 0, metadata !136, null}
!479 = metadata !{i32 505, i32 0, metadata !136, null}
!480 = metadata !{i32 506, i32 0, metadata !136, null}
!481 = metadata !{i32 529, i32 0, metadata !142, null}
!482 = metadata !{i32 534, i32 0, metadata !142, null}
!483 = metadata !{i32 535, i32 0, metadata !142, null}
!484 = metadata !{i32 537, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !142, i32 536, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!486 = metadata !{i32 538, i32 0, metadata !485, null}
!487 = metadata !{i32 541, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !142, i32 540, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!489 = metadata !{i32 545, i32 0, metadata !142, null}
!490 = metadata !{i32 549, i32 0, metadata !148, null}
!491 = metadata !{i32 551, i32 0, metadata !148, null}
!492 = metadata !{i32 552, i32 0, metadata !148, null}
!493 = metadata !{i32 616, i32 0, metadata !154, null}
!494 = metadata !{i32 618, i32 0, metadata !154, null}
!495 = metadata !{i32 622, i32 0, metadata !154, null}
!496 = metadata !{i32 623, i32 0, metadata !154, null}
!497 = metadata !{i32 625, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !154, i32 624, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!499 = metadata !{i32 626, i32 0, metadata !498, null}
!500 = metadata !{i32 629, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !154, i32 628, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!502 = metadata !{i32 633, i32 0, metadata !154, null}
!503 = metadata !{i32 710, i32 0, metadata !307, null}
!504 = metadata !{i32 716, i32 0, metadata !307, null}
!505 = metadata !{i32 719, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !507, i32 719, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!507 = metadata !{i32 786443, metadata !1, metadata !307, i32 717, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!508 = metadata !{i32 721, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !506, i32 720, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!510 = metadata !{i32 722, i32 0, metadata !509, null}
!511 = metadata !{i32 725, i32 0, metadata !307, null}
!512 = metadata !{i32 637, i32 0, metadata !159, null}
!513 = metadata !{i32 639, i32 0, metadata !159, null}
!514 = metadata !{i32 640, i32 0, metadata !159, null}
!515 = metadata !{i32 641, i32 0, metadata !159, null}
!516 = metadata !{i32 642, i32 0, metadata !159, null}
!517 = metadata !{i32 665, i32 0, metadata !165, null}
!518 = metadata !{i32 670, i32 0, metadata !165, null}
!519 = metadata !{i32 671, i32 0, metadata !165, null}
!520 = metadata !{i32 673, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !165, i32 672, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!522 = metadata !{i32 674, i32 0, metadata !521, null}
!523 = metadata !{i32 677, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !165, i32 676, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!525 = metadata !{i32 681, i32 0, metadata !165, null}
!526 = metadata !{i32 685, i32 0, metadata !169, null}
!527 = metadata !{i32 687, i32 0, metadata !169, null}
!528 = metadata !{i32 688, i32 0, metadata !169, null}
!529 = metadata !{i32 748, i32 0, metadata !173, null}
!530 = metadata !{i32 750, i32 0, metadata !173, null}
!531 = metadata !{i32 754, i32 0, metadata !173, null}
!532 = metadata !{i32 755, i32 0, metadata !173, null}
!533 = metadata !{i32 757, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !173, i32 756, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!535 = metadata !{i32 758, i32 0, metadata !534, null}
!536 = metadata !{i32 761, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !173, i32 760, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!538 = metadata !{i32 765, i32 0, metadata !173, null}
!539 = metadata !{i32 842, i32 0, metadata !301, null}
!540 = metadata !{i32 847, i32 0, metadata !301, null}
!541 = metadata !{i32 850, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !543, i32 850, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!543 = metadata !{i32 786443, metadata !1, metadata !301, i32 848, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!544 = metadata !{i32 852, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !542, i32 851, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!546 = metadata !{i32 853, i32 0, metadata !545, null}
!547 = metadata !{i32 856, i32 0, metadata !301, null}
!548 = metadata !{i32 769, i32 0, metadata !178, null}
!549 = metadata !{i32 771, i32 0, metadata !178, null}
!550 = metadata !{i32 772, i32 0, metadata !178, null}
!551 = metadata !{i32 773, i32 0, metadata !178, null}
!552 = metadata !{i32 774, i32 0, metadata !178, null}
!553 = metadata !{i32 797, i32 0, metadata !184, null}
!554 = metadata !{i32 802, i32 0, metadata !184, null}
!555 = metadata !{i32 803, i32 0, metadata !184, null}
!556 = metadata !{i32 805, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !184, i32 804, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!558 = metadata !{i32 806, i32 0, metadata !557, null}
!559 = metadata !{i32 809, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !184, i32 808, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!561 = metadata !{i32 813, i32 0, metadata !184, null}
!562 = metadata !{i32 817, i32 0, metadata !188, null}
!563 = metadata !{i32 819, i32 0, metadata !188, null}
!564 = metadata !{i32 820, i32 0, metadata !188, null}
!565 = metadata !{i32 879, i32 0, metadata !192, null}
!566 = metadata !{i32 881, i32 0, metadata !192, null}
!567 = metadata !{i32 885, i32 0, metadata !192, null}
!568 = metadata !{i32 886, i32 0, metadata !192, null}
!569 = metadata !{i32 888, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !192, i32 887, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!571 = metadata !{i32 889, i32 0, metadata !570, null}
!572 = metadata !{i32 892, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !192, i32 891, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!574 = metadata !{i32 896, i32 0, metadata !192, null}
!575 = metadata !{i32 973, i32 0, metadata !293, null}
!576 = metadata !{i32 979, i32 0, metadata !293, null}
!577 = metadata !{i32 982, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !579, i32 982, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!579 = metadata !{i32 786443, metadata !1, metadata !293, i32 980, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!580 = metadata !{i32 984, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !578, i32 983, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!582 = metadata !{i32 985, i32 0, metadata !581, null}
!583 = metadata !{i32 988, i32 0, metadata !293, null}
!584 = metadata !{i32 900, i32 0, metadata !197, null}
!585 = metadata !{i32 902, i32 0, metadata !197, null}
!586 = metadata !{i32 903, i32 0, metadata !197, null}
!587 = metadata !{i32 904, i32 0, metadata !197, null}
!588 = metadata !{i32 905, i32 0, metadata !197, null}
!589 = metadata !{i32 928, i32 0, metadata !203, null}
!590 = metadata !{i32 933, i32 0, metadata !203, null}
!591 = metadata !{i32 934, i32 0, metadata !203, null}
!592 = metadata !{i32 936, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !203, i32 935, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!594 = metadata !{i32 937, i32 0, metadata !593, null}
!595 = metadata !{i32 940, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !203, i32 939, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!597 = metadata !{i32 944, i32 0, metadata !203, null}
!598 = metadata !{i32 948, i32 0, metadata !207, null}
!599 = metadata !{i32 950, i32 0, metadata !207, null}
!600 = metadata !{i32 951, i32 0, metadata !207, null}
!601 = metadata !{i32 1016, i32 0, metadata !211, null}
!602 = metadata !{i32 1018, i32 0, metadata !211, null}
!603 = metadata !{i32 1022, i32 0, metadata !211, null}
!604 = metadata !{i32 1023, i32 0, metadata !211, null}
!605 = metadata !{i32 1025, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !211, i32 1024, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!607 = metadata !{i32 1026, i32 0, metadata !606, null}
!608 = metadata !{i32 1028, i32 0, metadata !211, null}
!609 = metadata !{i32 1096, i32 0, metadata !283, null}
!610 = metadata !{i32 1102, i32 0, metadata !283, null}
!611 = metadata !{i32 1103, i32 0, metadata !283, null}
!612 = metadata !{i32 1106, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !614, i32 1106, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!614 = metadata !{i32 786443, metadata !1, metadata !283, i32 1104, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!615 = metadata !{i32 1109, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !613, i32 1107, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!617 = metadata !{i32 1108, i32 0, metadata !616, null}
!618 = metadata !{i32 1111, i32 0, metadata !616, null}
!619 = metadata !{i32 1114, i32 0, metadata !283, null}
!620 = metadata !{i32 1115, i32 0, metadata !283, null}
!621 = metadata !{i32 1057, i32 0, metadata !225, null}
!622 = metadata !{i32 1062, i32 0, metadata !225, null}
!623 = metadata !{i32 1063, i32 0, metadata !225, null}
!624 = metadata !{i32 1065, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !225, i32 1064, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!626 = metadata !{i32 1066, i32 0, metadata !625, null}
!627 = metadata !{i32 1068, i32 0, metadata !225, null}
!628 = metadata !{i32 1136, i32 0, metadata !232, null}
!629 = metadata !{i32 1137, i32 0, metadata !232, null}
!630 = metadata !{i32 1139, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !232, i32 1138, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!632 = metadata !{i32 1141, i32 0, metadata !631, null}
!633 = metadata !{i32 1142, i32 0, metadata !631, null}
!634 = metadata !{i32 1144, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !631, i32 1143, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!636 = metadata !{%struct.cTimerData* null}
!637 = metadata !{i32 1145, i32 0, metadata !635, null}
!638 = metadata !{i32 1146, i32 0, metadata !635, null}
!639 = metadata !{i32 1149, i32 0, metadata !232, null}
!640 = metadata !{i32 1172, i32 0, metadata !237, null}
!641 = metadata !{i32 1174, i32 0, metadata !237, null}
!642 = metadata !{i32 1176, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !237, i32 1175, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!644 = metadata !{i32 1178, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !643, i32 1177, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!646 = metadata !{i32 1180, i32 0, metadata !645, null}
!647 = metadata !{i32 1181, i32 0, metadata !643, null}
!648 = metadata !{i32 1182, i32 0, metadata !643, null}
!649 = metadata !{i32 1184, i32 0, metadata !237, null}
!650 = metadata !{i32 1214, i32 0, metadata !242, null}
!651 = metadata !{i32 1222, i32 0, metadata !242, null}
!652 = metadata !{i32 1224, i32 0, metadata !242, null}
!653 = metadata !{i32 1231, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !242, i32 1230, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!655 = metadata !{i32 1232, i32 0, metadata !654, null}
!656 = metadata !{i32 1233, i32 0, metadata !654, null}
!657 = metadata !{i32 273, i32 0, metadata !99, metadata !656}
!658 = metadata !{i32 1235, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !654, i32 1234, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!660 = metadata !{i32 -1}
!661 = metadata !{i32 1237, i32 0, metadata !659, null}
!662 = metadata !{i32 1238, i32 0, metadata !659, null}
!663 = metadata !{i32 1242, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !242, i32 1242, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!665 = metadata !{i32 1226, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !242, i32 1225, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!667 = metadata !{i32 273, i32 0, metadata !99, metadata !668}
!668 = metadata !{i32 1227, i32 0, metadata !666, null}
!669 = metadata !{i32 1249, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !664, i32 1243, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!671 = metadata !{i32 1257, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !670, i32 1255, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!673 = metadata !{i32 1244, i32 0, metadata !670, null}
!674 = metadata !{i32 1245, i32 0, metadata !670, null}
!675 = metadata !{i32 786689, metadata !103, metadata !"timer_handle", metadata !13, i32 16777519, metadata !22, i32 0, metadata !676} ; [ DW_TAG_arg_variable ] [timer_handle] [line 303]
!676 = metadata !{i32 1247, i32 0, metadata !670, null}
!677 = metadata !{i32 303, i32 0, metadata !103, metadata !676}
!678 = metadata !{i32 308, i32 0, metadata !103, metadata !676}
!679 = metadata !{i32 786688, metadata !103, metadata !"retval", metadata !13, i32 305, metadata !16, i32 0, metadata !676} ; [ DW_TAG_auto_variable ] [retval] [line 305]
!680 = metadata !{i32 1251, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !670, i32 1250, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!682 = metadata !{i32 1252, i32 0, metadata !681, null}
!683 = metadata !{i32 1260, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !670, i32 1260, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!685 = metadata !{i32 1262, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !684, i32 1261, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!687 = metadata !{i32 1265, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !686, i32 1263, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!689 = metadata !{i32 1267, i32 0, metadata !688, null}
!690 = metadata !{i32 1270, i32 0, metadata !688, null}
!691 = metadata !{metadata !"long", metadata !356}
!692 = metadata !{i32 1272, i32 0, metadata !688, null}
!693 = metadata !{i32 1275, i32 0, metadata !688, null}
!694 = metadata !{metadata !"double", metadata !356}
!695 = metadata !{i32 1277, i32 0, metadata !688, null}
!696 = metadata !{i32 1280, i32 0, metadata !688, null}
!697 = metadata !{i32 1282, i32 0, metadata !688, null}
!698 = metadata !{i32 1285, i32 0, metadata !670, null}
!699 = metadata !{i32 1288, i32 0, metadata !242, null}
!700 = metadata !{i32 1292, i32 0, metadata !256, null}
!701 = metadata !{i32 1294, i32 0, metadata !256, null}
!702 = metadata !{i32 1295, i32 0, metadata !256, null}
!703 = metadata !{i32 1323, i32 0, metadata !263, null}
!704 = metadata !{i32 1328, i32 0, metadata !263, null}
!705 = metadata !{i32 1330, i32 0, metadata !263, null}
!706 = metadata !{i32 1336, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !263, i32 1335, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!708 = metadata !{i32 1337, i32 0, metadata !707, null}
!709 = metadata !{i32 1339, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !707, i32 1338, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!711 = metadata !{i32 1341, i32 0, metadata !710, null}
!712 = metadata !{i32 1342, i32 0, metadata !710, null}
!713 = metadata !{i32 1345, i32 0, metadata !263, null}
!714 = metadata !{i32 1351, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !263, i32 1350, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!716 = metadata !{i32 1352, i32 0, metadata !715, null}
!717 = metadata !{i32 1354, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !715, i32 1353, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!719 = metadata !{i32 1356, i32 0, metadata !718, null}
!720 = metadata !{i32 1360, i32 0, metadata !263, null}
!721 = metadata !{i32 1362, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !263, i32 1361, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusTimers.c]
!723 = metadata !{i32 1363, i32 0, metadata !722, null}
!724 = metadata !{i32 1365, i32 0, metadata !263, null}
!725 = metadata !{i32 1369, i32 0, metadata !272, null}
!726 = metadata !{i32 1371, i32 0, metadata !272, null}
!727 = metadata !{i32 1374, i32 0, metadata !272, null}
!728 = metadata !{i32 1375, i32 0, metadata !272, null}
!729 = metadata !{i32 1376, i32 0, metadata !272, null}
!730 = metadata !{i32 1377, i32 0, metadata !272, null}
