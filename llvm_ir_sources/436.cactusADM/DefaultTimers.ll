; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cClockFuncs = type { i8*, i32, i8* (i32)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*, %struct.cTimerVal*)*, void (i32, i8*, %struct.cTimerVal*)* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"GetrUsage\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"getrusage\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"GetTimeOfDay\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@.str5 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/Cactus/src/main/DefaultTimers.c,v 1.17 2001/12/11 22:15:10 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_DefaultTimers_c() #0 {
entry:
  ret i8* getelementptr inbounds ([89 x i8]* @.str5, i64 0, i64 0), !dbg !252
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_RegisterDefaultTimerFunctions() #1 {
entry:
  %functions.i1 = alloca %struct.cClockFuncs, align 8
  %functions.i = alloca %struct.cClockFuncs, align 8
  %0 = bitcast %struct.cClockFuncs* %functions.i to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 72, i8* %0) #2, !dbg !253
  call void @llvm.dbg.declare(metadata !{%struct.cClockFuncs* %functions.i}, metadata !194) #2, !dbg !253
  %n_vals.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 1, !dbg !255
  store i32 1, i32* %n_vals.i, align 8, !dbg !255, !tbaa !256
  %create.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 2, !dbg !259
  store i8* (i32)* @CCTKi_TimerGetTimeOfDayCreate, i8* (i32)** %create.i, align 8, !dbg !259, !tbaa !260
  %destroy.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 3, !dbg !261
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayDestroy, void (i32, i8*)** %destroy.i, align 8, !dbg !261, !tbaa !260
  %start.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 4, !dbg !262
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStart, void (i32, i8*)** %start.i, align 8, !dbg !262, !tbaa !260
  %stop.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 5, !dbg !263
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStop, void (i32, i8*)** %stop.i, align 8, !dbg !263, !tbaa !260
  %reset.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 6, !dbg !264
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayReset, void (i32, i8*)** %reset.i, align 8, !dbg !264, !tbaa !260
  %get.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 7, !dbg !265
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDayGet, void (i32, i8*, %struct.cTimerVal*)** %get.i, align 8, !dbg !265, !tbaa !260
  %set.i = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 8, !dbg !266
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDaySet, void (i32, i8*, %struct.cTimerVal*)** %set.i, align 8, !dbg !266, !tbaa !260
  %call.i = call i32 @CCTK_ClockRegister(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), %struct.cClockFuncs* %functions.i) #6, !dbg !267
  call void @llvm.lifetime.end(i64 72, i8* %0) #2, !dbg !268
  %1 = bitcast %struct.cClockFuncs* %functions.i1 to i8*, !dbg !269
  call void @llvm.lifetime.start(i64 72, i8* %1) #2, !dbg !269
  call void @llvm.dbg.declare(metadata !{%struct.cClockFuncs* %functions.i1}, metadata !27) #2, !dbg !269
  %n_vals.i2 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 1, !dbg !271
  store i32 1, i32* %n_vals.i2, align 8, !dbg !271, !tbaa !256
  %create.i3 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 2, !dbg !272
  store i8* (i32)* @CCTKi_TimerGetrUsageCreate, i8* (i32)** %create.i3, align 8, !dbg !272, !tbaa !260
  %destroy.i4 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 3, !dbg !273
  store void (i32, i8*)* @CCTKi_TimerGetrUsageDestroy, void (i32, i8*)** %destroy.i4, align 8, !dbg !273, !tbaa !260
  %start.i5 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 4, !dbg !274
  store void (i32, i8*)* @CCTKi_TimerGetrUsageStart, void (i32, i8*)** %start.i5, align 8, !dbg !274, !tbaa !260
  %stop.i6 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 5, !dbg !275
  store void (i32, i8*)* @CCTKi_TimerGetrUsageStop, void (i32, i8*)** %stop.i6, align 8, !dbg !275, !tbaa !260
  %reset.i7 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 6, !dbg !276
  store void (i32, i8*)* @CCTKi_TimerGetrUsageReset, void (i32, i8*)** %reset.i7, align 8, !dbg !276, !tbaa !260
  %get.i8 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 7, !dbg !277
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageGet, void (i32, i8*, %struct.cTimerVal*)** %get.i8, align 8, !dbg !277, !tbaa !260
  %set.i9 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 8, !dbg !278
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageSet, void (i32, i8*, %struct.cTimerVal*)** %set.i9, align 8, !dbg !278, !tbaa !260
  %call.i10 = call i32 @CCTK_ClockRegister(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), %struct.cClockFuncs* %functions.i1) #6, !dbg !279
  call void @llvm.lifetime.end(i64 72, i8* %1) #2, !dbg !280
  ret i32 0, !dbg !281
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #3

; Function Attrs: nounwind optsize uwtable
define internal noalias i8* @CCTKi_TimerGetrUsageCreate(i32 %timernum) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !190), !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !190), !dbg !283
  %call = tail call noalias i8* @malloc(i64 32) #6, !dbg !284
  %tobool = icmp eq i8* %call, null, !dbg !285
  br i1 %tobool, label %if.end, label %if.then, !dbg !285

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 8, i1 false), !dbg !286
  br label %if.end, !dbg !288

if.end:                                           ; preds = %entry, %if.then
  ret i8* %call, !dbg !289
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetrUsageDestroy(i32 %timernum, i8* %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !186), !dbg !290
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !187), !dbg !290
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !186), !dbg !291
  %tobool = icmp eq i8* %data, null, !dbg !292
  br i1 %tobool, label %if.end, label %if.then, !dbg !292

if.then:                                          ; preds = %entry
  tail call void @free(i8* %data) #6, !dbg !293
  br label %if.end, !dbg !295

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !296
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetrUsageStart(i32 %timernum, i8* nocapture %idata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !180), !dbg !297
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !181), !dbg !297
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !180), !dbg !298
  %last = getelementptr inbounds i8* %idata, i64 16, !dbg !299
  call void @llvm.memset.p0i8.i64(i8* %last, i8 0, i64 16, i32 8, i1 false), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetrUsageStop(i32 %timernum, i8* nocapture %idata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !98), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !99), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !98), !dbg !303
  call void @llvm.memset.p0i8.i64(i8* %idata, i8 0, i64 16, i32 8, i1 false), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetrUsageReset(i32 %timernum, i8* nocapture %idata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !93), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !94), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !93), !dbg !307
  call void @llvm.memset.p0i8.i64(i8* %idata, i8 0, i64 16, i32 8, i1 false), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetrUsageGet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture %vals) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !87), !dbg !310
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !88), !dbg !310
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerVal* %vals}, i64 0, metadata !89), !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !87), !dbg !311
  %type = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 0, !dbg !312
  store i32 3, i32* %type, align 4, !dbg !312, !tbaa !257
  %heading = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 1, !dbg !313
  store i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8** %heading, align 8, !dbg !313, !tbaa !260
  %units = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 2, !dbg !314
  store i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8** %units, align 8, !dbg !314, !tbaa !260
  %tv_sec = bitcast i8* %idata to i64*, !dbg !315
  %0 = load i64* %tv_sec, align 8, !dbg !315, !tbaa !316
  %conv = sitofp i64 %0 to double, !dbg !315
  %tv_usec = getelementptr inbounds i8* %idata, i64 8, !dbg !315
  %1 = bitcast i8* %tv_usec to i64*, !dbg !315
  %2 = load i64* %1, align 8, !dbg !315, !tbaa !316
  %conv4 = sitofp i64 %2 to double, !dbg !315
  %div = fdiv double %conv4, 1.000000e+06, !dbg !315
  %add = fadd double %conv, %div, !dbg !315
  %val = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !315
  %d = bitcast %union.anon* %val to double*, !dbg !315
  store double %add, double* %d, align 8, !dbg !315, !tbaa !317
  ret void, !dbg !318
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetrUsageSet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture %vals) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !68), !dbg !319
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !69), !dbg !319
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerVal* %vals}, i64 0, metadata !70), !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !68), !dbg !320
  %val = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !321
  %d = bitcast %union.anon* %val to double*, !dbg !321
  %0 = load double* %d, align 8, !dbg !321, !tbaa !317
  %conv = fptosi double %0 to i64, !dbg !321
  %tv_sec = bitcast i8* %idata to i64*, !dbg !321
  store i64 %conv, i64* %tv_sec, align 8, !dbg !321, !tbaa !316
  %mul = fmul double %0, 1.000000e+06, !dbg !322
  %conv6 = sitofp i64 %conv to double, !dbg !322
  %sub = fsub double %mul, %conv6, !dbg !322
  %conv7 = fptosi double %sub to i64, !dbg !322
  %tv_usec = getelementptr inbounds i8* %idata, i64 8, !dbg !322
  %1 = bitcast i8* %tv_usec to i64*, !dbg !322
  store i64 %conv7, i64* %1, align 8, !dbg !322, !tbaa !316
  ret void, !dbg !323
}

; Function Attrs: optsize
declare i32 @CCTK_ClockRegister(i8*, %struct.cClockFuncs*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind optsize uwtable
define internal noalias i8* @CCTKi_TimerGetTimeOfDayCreate(i32 %timernum) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !243), !dbg !324
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !243), !dbg !325
  %call = tail call noalias i8* @malloc(i64 32) #6, !dbg !326
  %tobool = icmp eq i8* %call, null, !dbg !327
  br i1 %tobool, label %if.end, label %if.then, !dbg !327

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 8, i1 false), !dbg !328
  br label %if.end, !dbg !330

if.end:                                           ; preds = %entry, %if.then
  ret i8* %call, !dbg !331
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetTimeOfDayDestroy(i32 %timernum, i8* %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !239), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !240), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !239), !dbg !333
  %tobool = icmp eq i8* %data, null, !dbg !334
  br i1 %tobool, label %if.end, label %if.then, !dbg !334

if.then:                                          ; preds = %entry
  tail call void @free(i8* %data) #6, !dbg !335
  br label %if.end, !dbg !337

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !338
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetTimeOfDayStart(i32 %timernum, i8* nocapture %idata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !232), !dbg !339
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !233), !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !232), !dbg !340
  %last = getelementptr inbounds i8* %idata, i64 16, !dbg !341
  call void @llvm.memset.p0i8.i64(i8* %last, i8 0, i64 16, i32 8, i1 false), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetTimeOfDayStop(i32 %timernum, i8* nocapture %idata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !220), !dbg !344
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !221), !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !220), !dbg !345
  call void @llvm.memset.p0i8.i64(i8* %idata, i8 0, i64 16, i32 8, i1 false), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetTimeOfDayReset(i32 %timernum, i8* nocapture %idata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !215), !dbg !348
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !216), !dbg !348
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !215), !dbg !349
  call void @llvm.memset.p0i8.i64(i8* %idata, i8 0, i64 32, i32 8, i1 false), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetTimeOfDayGet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture %vals) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !209), !dbg !352
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !210), !dbg !352
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerVal* %vals}, i64 0, metadata !211), !dbg !352
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !209), !dbg !353
  %type = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 0, !dbg !354
  store i32 3, i32* %type, align 4, !dbg !354, !tbaa !257
  %heading = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 1, !dbg !355
  store i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8** %heading, align 8, !dbg !355, !tbaa !260
  %units = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 2, !dbg !356
  store i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8** %units, align 8, !dbg !356, !tbaa !260
  %tv_sec = bitcast i8* %idata to i64*, !dbg !357
  %0 = load i64* %tv_sec, align 8, !dbg !357, !tbaa !316
  %conv = sitofp i64 %0 to double, !dbg !357
  %tv_usec = getelementptr inbounds i8* %idata, i64 8, !dbg !357
  %1 = bitcast i8* %tv_usec to i64*, !dbg !357
  %2 = load i64* %1, align 8, !dbg !357, !tbaa !316
  %conv4 = sitofp i64 %2 to double, !dbg !357
  %div = fdiv double %conv4, 1.000000e+06, !dbg !357
  %add = fadd double %conv, %div, !dbg !357
  %val = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !357
  %d = bitcast %union.anon* %val to double*, !dbg !357
  store double %add, double* %d, align 8, !dbg !357, !tbaa !317
  ret void, !dbg !358
}

; Function Attrs: nounwind optsize uwtable
define internal void @CCTKi_TimerGetTimeOfDaySet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture %vals) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !197), !dbg !359
  tail call void @llvm.dbg.value(metadata !{i8* %idata}, i64 0, metadata !198), !dbg !359
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerVal* %vals}, i64 0, metadata !199), !dbg !359
  tail call void @llvm.dbg.value(metadata !{i32 %timernum}, i64 0, metadata !197), !dbg !360
  %val = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !361
  %d = bitcast %union.anon* %val to double*, !dbg !361
  %0 = load double* %d, align 8, !dbg !361, !tbaa !317
  %conv = fptosi double %0 to i64, !dbg !361
  %tv_sec = bitcast i8* %idata to i64*, !dbg !361
  store i64 %conv, i64* %tv_sec, align 8, !dbg !361, !tbaa !316
  %mul = fmul double %0, 1.000000e+06, !dbg !362
  %conv6 = sitofp i64 %conv to double, !dbg !362
  %sub = fsub double %mul, %conv6, !dbg !362
  %conv7 = fptosi double %sub to i64, !dbg !362
  %tv_usec = getelementptr inbounds i8* %idata, i64 8, !dbg !362
  %1 = bitcast i8* %tv_usec to i64*, !dbg !362
  store i64 %conv7, i64* %1, align 8, !dbg !362, !tbaa !316
  ret void, !dbg !363
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !10, metadata !11, metadata !245, metadata !10, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 16, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 16, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Timers.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"val_none", i64 0} ; [ DW_TAG_enumerator ] [val_none :: 0]
!7 = metadata !{i32 786472, metadata !"val_int", i64 1} ; [ DW_TAG_enumerator ] [val_int :: 1]
!8 = metadata !{i32 786472, metadata !"val_long", i64 2} ; [ DW_TAG_enumerator ] [val_long :: 2]
!9 = metadata !{i32 786472, metadata !"val_double", i64 3} ; [ DW_TAG_enumerator ] [val_double :: 3]
!10 = metadata !{i32 0}
!11 = metadata !{metadata !12, metadata !19, metadata !23, metadata !66, metadata !85, metadata !91, metadata !96, metadata !178, metadata !184, metadata !188, metadata !192, metadata !195, metadata !207, metadata !213, metadata !218, metadata !230, metadata !237, metadata !241}
!12 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_version_main_DefaultTimers_c", metadata !"CCTKi_version_main_DefaultTimers_c", metadata !"", i32 37, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_DefaultTimers_c, null, null, metadata !10, i32 37} ; [ DW_TAG_subprogram ] [line 37] [def] [CCTKi_version_main_DefaultTimers_c]
!13 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_RegisterDefaultTimerFunctions", metadata !"CCTKi_RegisterDefaultTimerFunctions", metadata !"", i32 92, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_RegisterDefaultTimerFunctions, null, null, metadata !10, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [CCTKi_RegisterDefaultTimerFunctions]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_RegisterTimersGetrUsage", metadata !"CCTKi_RegisterTimersGetrUsage", metadata !"", i32 844, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !26, i32 845} ; [ DW_TAG_subprogram ] [line 844] [local] [def] [scope 845] [CCTKi_RegisterTimersGetrUsage]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786688, metadata !23, metadata !"functions", metadata !13, i32 846, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [functions] [line 846]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"cClockFuncs", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [cClockFuncs] [line 49, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 38, i64 576, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 576, align 64, offset 0] [from ]
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !38, metadata !42, metadata !43, metadata !44, metadata !45, metadata !65}
!31 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"name", i32 40, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [name] [line 40, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"n_vals", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [n_vals] [line 41, size 32, align 32, offset 64] [from int]
!33 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"create", i32 42, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [create] [line 42, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !37, metadata !22}
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"destroy", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [destroy] [line 43, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !22, metadata !37}
!42 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"start", i32 44, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [start] [line 44, size 64, align 64, offset 256] [from ]
!43 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"stop", i32 45, i64 64, i64 64, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [stop] [line 45, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"reset", i32 46, i64 64, i64 64, i64 384, i32 0, metadata !39} ; [ DW_TAG_member ] [reset] [line 46, size 64, align 64, offset 384] [from ]
!45 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"get", i32 47, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [get] [line 47, size 64, align 64, offset 448] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !22, metadata !37, metadata !49}
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cTimerVal]
!50 = metadata !{i32 786454, metadata !4, null, metadata !"cTimerVal", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [cTimerVal] [line 29, size 0, align 0, offset 0] [from ]
!51 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 256, align 64, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !55, metadata !56, metadata !57}
!53 = metadata !{i32 786445, metadata !4, metadata !51, metadata !"type", i32 20, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [type] [line 20, size 32, align 32, offset 0] [from cTimerValType]
!54 = metadata !{i32 786454, metadata !4, null, metadata !"cTimerValType", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [cTimerValType] [line 16, size 0, align 0, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !4, metadata !51, metadata !"heading", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [heading] [line 21, size 64, align 64, offset 64] [from ]
!56 = metadata !{i32 786445, metadata !4, metadata !51, metadata !"units", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [units] [line 22, size 64, align 64, offset 128] [from ]
!57 = metadata !{i32 786445, metadata !4, metadata !51, metadata !"val", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !58} ; [ DW_TAG_member ] [val] [line 28, size 64, align 64, offset 192] [from ]
!58 = metadata !{i32 786455, metadata !4, metadata !51, metadata !"", i32 23, i64 64, i64 64, i64 0, i32 0, null, metadata !59, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 23, size 64, align 64, offset 0] [from ]
!59 = metadata !{metadata !60, metadata !61, metadata !63}
!60 = metadata !{i32 786445, metadata !4, metadata !58, metadata !"i", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [i] [line 25, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !4, metadata !58, metadata !"l", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [l] [line 26, size 64, align 64, offset 0] [from long int]
!62 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!63 = metadata !{i32 786445, metadata !4, metadata !58, metadata !"d", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [d] [line 27, size 64, align 64, offset 0] [from double]
!64 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!65 = metadata !{i32 786445, metadata !4, metadata !29, metadata !"set", i32 48, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [set] [line 48, size 64, align 64, offset 512] [from ]
!66 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageSet", metadata !"CCTKi_TimerGetrUsageSet", metadata !"", i32 818, metadata !47, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageSet, null, null, metadata !67, i32 819} ; [ DW_TAG_subprogram ] [line 818] [local] [def] [scope 819] [CCTKi_TimerGetrUsageSet]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71}
!68 = metadata !{i32 786689, metadata !66, metadata !"timernum", metadata !13, i32 16778034, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 818]
!69 = metadata !{i32 786689, metadata !66, metadata !"idata", metadata !13, i32 33555250, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 818]
!70 = metadata !{i32 786689, metadata !66, metadata !"vals", metadata !13, i32 50332466, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vals] [line 818]
!71 = metadata !{i32 786688, metadata !66, metadata !"data", metadata !13, i32 820, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 820]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_GetrUsageTimer]
!73 = metadata !{i32 786454, metadata !1, null, metadata !"t_GetrUsageTimer", i32 504, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [t_GetrUsageTimer] [line 504, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 500, i64 256, i64 64, i32 0, i32 0, null, metadata !75, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 500, size 256, align 64, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !84}
!76 = metadata !{i32 786445, metadata !1, metadata !74, metadata !"total", i32 502, i64 128, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [total] [line 502, size 128, align 64, offset 0] [from timeval]
!77 = metadata !{i32 786451, metadata !78, null, metadata !"timeval", i32 30, i64 128, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [timeval] [line 30, size 128, align 64, offset 0] [from ]
!78 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!79 = metadata !{metadata !80, metadata !82}
!80 = metadata !{i32 786445, metadata !78, metadata !77, metadata !"tv_sec", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [tv_sec] [line 32, size 64, align 64, offset 0] [from __time_t]
!81 = metadata !{i32 786454, metadata !78, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!82 = metadata !{i32 786445, metadata !78, metadata !77, metadata !"tv_usec", i32 33, i64 64, i64 64, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [tv_usec] [line 33, size 64, align 64, offset 64] [from __suseconds_t]
!83 = metadata !{i32 786454, metadata !78, null, metadata !"__suseconds_t", i32 141, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__suseconds_t] [line 141, size 0, align 0, offset 0] [from long int]
!84 = metadata !{i32 786445, metadata !1, metadata !74, metadata !"last", i32 503, i64 128, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [last] [line 503, size 128, align 64, offset 128] [from timeval]
!85 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageGet", metadata !"CCTKi_TimerGetrUsageGet", metadata !"", i32 768, metadata !47, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageGet, null, null, metadata !86, i32 769} ; [ DW_TAG_subprogram ] [line 768] [local] [def] [scope 769] [CCTKi_TimerGetrUsageGet]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90}
!87 = metadata !{i32 786689, metadata !85, metadata !"timernum", metadata !13, i32 16777984, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 768]
!88 = metadata !{i32 786689, metadata !85, metadata !"idata", metadata !13, i32 33555200, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 768]
!89 = metadata !{i32 786689, metadata !85, metadata !"vals", metadata !13, i32 50332416, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vals] [line 768]
!90 = metadata !{i32 786688, metadata !85, metadata !"data", metadata !13, i32 770, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 770]
!91 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageReset", metadata !"CCTKi_TimerGetrUsageReset", metadata !"", i32 720, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetrUsageReset, null, null, metadata !92, i32 721} ; [ DW_TAG_subprogram ] [line 720] [local] [def] [scope 721] [CCTKi_TimerGetrUsageReset]
!92 = metadata !{metadata !93, metadata !94, metadata !95}
!93 = metadata !{i32 786689, metadata !91, metadata !"timernum", metadata !13, i32 16777936, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 720]
!94 = metadata !{i32 786689, metadata !91, metadata !"idata", metadata !13, i32 33555152, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 720]
!95 = metadata !{i32 786688, metadata !91, metadata !"data", metadata !13, i32 722, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 722]
!96 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageStop", metadata !"CCTKi_TimerGetrUsageStop", metadata !"", i32 668, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetrUsageStop, null, null, metadata !97, i32 669} ; [ DW_TAG_subprogram ] [line 668] [local] [def] [scope 669] [CCTKi_TimerGetrUsageStop]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101}
!98 = metadata !{i32 786689, metadata !96, metadata !"timernum", metadata !13, i32 16777884, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 668]
!99 = metadata !{i32 786689, metadata !96, metadata !"idata", metadata !13, i32 33555100, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 668]
!100 = metadata !{i32 786688, metadata !96, metadata !"data", metadata !13, i32 670, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 670]
!101 = metadata !{i32 786688, metadata !96, metadata !"ru", metadata !13, i32 672, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ru] [line 672]
!102 = metadata !{i32 786451, metadata !103, null, metadata !"rusage", i32 187, i64 1152, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null} ; [ DW_TAG_structure_type ] [rusage] [line 187, size 1152, align 64, offset 0] [from ]
!103 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/resource.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !113, metadata !118, metadata !123, metadata !128, metadata !133, metadata !138, metadata !143, metadata !148, metadata !153, metadata !158, metadata !163, metadata !168, metadata !173}
!105 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"ru_utime", i32 190, i64 128, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [ru_utime] [line 190, size 128, align 64, offset 0] [from timeval]
!106 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"ru_stime", i32 192, i64 128, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [ru_stime] [line 192, size 128, align 64, offset 128] [from timeval]
!107 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 194, i64 64, i64 64, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [line 194, size 64, align 64, offset 256] [from ]
!108 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 194, i64 64, i64 64, i64 0, i32 0, null, metadata !109, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 194, size 64, align 64, offset 0] [from ]
!109 = metadata !{metadata !110, metadata !111}
!110 = metadata !{i32 786445, metadata !103, metadata !108, metadata !"ru_maxrss", i32 196, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_maxrss] [line 196, size 64, align 64, offset 0] [from long int]
!111 = metadata !{i32 786445, metadata !103, metadata !108, metadata !"__ru_maxrss_word", i32 197, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_maxrss_word] [line 197, size 64, align 64, offset 0] [from __syscall_slong_t]
!112 = metadata !{i32 786454, metadata !103, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!113 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 202, i64 64, i64 64, i64 320, i32 0, metadata !114} ; [ DW_TAG_member ] [line 202, size 64, align 64, offset 320] [from ]
!114 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 202, i64 64, i64 64, i64 0, i32 0, null, metadata !115, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 202, size 64, align 64, offset 0] [from ]
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786445, metadata !103, metadata !114, metadata !"ru_ixrss", i32 204, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_ixrss] [line 204, size 64, align 64, offset 0] [from long int]
!117 = metadata !{i32 786445, metadata !103, metadata !114, metadata !"__ru_ixrss_word", i32 205, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_ixrss_word] [line 205, size 64, align 64, offset 0] [from __syscall_slong_t]
!118 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 208, i64 64, i64 64, i64 384, i32 0, metadata !119} ; [ DW_TAG_member ] [line 208, size 64, align 64, offset 384] [from ]
!119 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 208, i64 64, i64 64, i64 0, i32 0, null, metadata !120, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 208, size 64, align 64, offset 0] [from ]
!120 = metadata !{metadata !121, metadata !122}
!121 = metadata !{i32 786445, metadata !103, metadata !119, metadata !"ru_idrss", i32 210, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_idrss] [line 210, size 64, align 64, offset 0] [from long int]
!122 = metadata !{i32 786445, metadata !103, metadata !119, metadata !"__ru_idrss_word", i32 211, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_idrss_word] [line 211, size 64, align 64, offset 0] [from __syscall_slong_t]
!123 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 214, i64 64, i64 64, i64 448, i32 0, metadata !124} ; [ DW_TAG_member ] [line 214, size 64, align 64, offset 448] [from ]
!124 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 214, i64 64, i64 64, i64 0, i32 0, null, metadata !125, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 214, size 64, align 64, offset 0] [from ]
!125 = metadata !{metadata !126, metadata !127}
!126 = metadata !{i32 786445, metadata !103, metadata !124, metadata !"ru_isrss", i32 216, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_isrss] [line 216, size 64, align 64, offset 0] [from long int]
!127 = metadata !{i32 786445, metadata !103, metadata !124, metadata !"__ru_isrss_word", i32 217, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_isrss_word] [line 217, size 64, align 64, offset 0] [from __syscall_slong_t]
!128 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !129} ; [ DW_TAG_member ] [line 221, size 64, align 64, offset 512] [from ]
!129 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 221, i64 64, i64 64, i64 0, i32 0, null, metadata !130, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 221, size 64, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132}
!131 = metadata !{i32 786445, metadata !103, metadata !129, metadata !"ru_minflt", i32 223, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_minflt] [line 223, size 64, align 64, offset 0] [from long int]
!132 = metadata !{i32 786445, metadata !103, metadata !129, metadata !"__ru_minflt_word", i32 224, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_minflt_word] [line 224, size 64, align 64, offset 0] [from __syscall_slong_t]
!133 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 227, i64 64, i64 64, i64 576, i32 0, metadata !134} ; [ DW_TAG_member ] [line 227, size 64, align 64, offset 576] [from ]
!134 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 227, i64 64, i64 64, i64 0, i32 0, null, metadata !135, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 227, size 64, align 64, offset 0] [from ]
!135 = metadata !{metadata !136, metadata !137}
!136 = metadata !{i32 786445, metadata !103, metadata !134, metadata !"ru_majflt", i32 229, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_majflt] [line 229, size 64, align 64, offset 0] [from long int]
!137 = metadata !{i32 786445, metadata !103, metadata !134, metadata !"__ru_majflt_word", i32 230, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_majflt_word] [line 230, size 64, align 64, offset 0] [from __syscall_slong_t]
!138 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 233, i64 64, i64 64, i64 640, i32 0, metadata !139} ; [ DW_TAG_member ] [line 233, size 64, align 64, offset 640] [from ]
!139 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 233, i64 64, i64 64, i64 0, i32 0, null, metadata !140, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 233, size 64, align 64, offset 0] [from ]
!140 = metadata !{metadata !141, metadata !142}
!141 = metadata !{i32 786445, metadata !103, metadata !139, metadata !"ru_nswap", i32 235, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_nswap] [line 235, size 64, align 64, offset 0] [from long int]
!142 = metadata !{i32 786445, metadata !103, metadata !139, metadata !"__ru_nswap_word", i32 236, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_nswap_word] [line 236, size 64, align 64, offset 0] [from __syscall_slong_t]
!143 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 240, i64 64, i64 64, i64 704, i32 0, metadata !144} ; [ DW_TAG_member ] [line 240, size 64, align 64, offset 704] [from ]
!144 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 240, i64 64, i64 64, i64 0, i32 0, null, metadata !145, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 240, size 64, align 64, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147}
!146 = metadata !{i32 786445, metadata !103, metadata !144, metadata !"ru_inblock", i32 242, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_inblock] [line 242, size 64, align 64, offset 0] [from long int]
!147 = metadata !{i32 786445, metadata !103, metadata !144, metadata !"__ru_inblock_word", i32 243, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_inblock_word] [line 243, size 64, align 64, offset 0] [from __syscall_slong_t]
!148 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 246, i64 64, i64 64, i64 768, i32 0, metadata !149} ; [ DW_TAG_member ] [line 246, size 64, align 64, offset 768] [from ]
!149 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 246, i64 64, i64 64, i64 0, i32 0, null, metadata !150, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 246, size 64, align 64, offset 0] [from ]
!150 = metadata !{metadata !151, metadata !152}
!151 = metadata !{i32 786445, metadata !103, metadata !149, metadata !"ru_oublock", i32 248, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_oublock] [line 248, size 64, align 64, offset 0] [from long int]
!152 = metadata !{i32 786445, metadata !103, metadata !149, metadata !"__ru_oublock_word", i32 249, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_oublock_word] [line 249, size 64, align 64, offset 0] [from __syscall_slong_t]
!153 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 252, i64 64, i64 64, i64 832, i32 0, metadata !154} ; [ DW_TAG_member ] [line 252, size 64, align 64, offset 832] [from ]
!154 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 252, i64 64, i64 64, i64 0, i32 0, null, metadata !155, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 252, size 64, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !157}
!156 = metadata !{i32 786445, metadata !103, metadata !154, metadata !"ru_msgsnd", i32 254, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_msgsnd] [line 254, size 64, align 64, offset 0] [from long int]
!157 = metadata !{i32 786445, metadata !103, metadata !154, metadata !"__ru_msgsnd_word", i32 255, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_msgsnd_word] [line 255, size 64, align 64, offset 0] [from __syscall_slong_t]
!158 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 258, i64 64, i64 64, i64 896, i32 0, metadata !159} ; [ DW_TAG_member ] [line 258, size 64, align 64, offset 896] [from ]
!159 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 258, i64 64, i64 64, i64 0, i32 0, null, metadata !160, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 258, size 64, align 64, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !162}
!161 = metadata !{i32 786445, metadata !103, metadata !159, metadata !"ru_msgrcv", i32 260, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_msgrcv] [line 260, size 64, align 64, offset 0] [from long int]
!162 = metadata !{i32 786445, metadata !103, metadata !159, metadata !"__ru_msgrcv_word", i32 261, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_msgrcv_word] [line 261, size 64, align 64, offset 0] [from __syscall_slong_t]
!163 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 264, i64 64, i64 64, i64 960, i32 0, metadata !164} ; [ DW_TAG_member ] [line 264, size 64, align 64, offset 960] [from ]
!164 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 264, i64 64, i64 64, i64 0, i32 0, null, metadata !165, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 264, size 64, align 64, offset 0] [from ]
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 786445, metadata !103, metadata !164, metadata !"ru_nsignals", i32 266, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_nsignals] [line 266, size 64, align 64, offset 0] [from long int]
!167 = metadata !{i32 786445, metadata !103, metadata !164, metadata !"__ru_nsignals_word", i32 267, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_nsignals_word] [line 267, size 64, align 64, offset 0] [from __syscall_slong_t]
!168 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 272, i64 64, i64 64, i64 1024, i32 0, metadata !169} ; [ DW_TAG_member ] [line 272, size 64, align 64, offset 1024] [from ]
!169 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 272, i64 64, i64 64, i64 0, i32 0, null, metadata !170, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 272, size 64, align 64, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !172}
!171 = metadata !{i32 786445, metadata !103, metadata !169, metadata !"ru_nvcsw", i32 274, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_nvcsw] [line 274, size 64, align 64, offset 0] [from long int]
!172 = metadata !{i32 786445, metadata !103, metadata !169, metadata !"__ru_nvcsw_word", i32 275, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_nvcsw_word] [line 275, size 64, align 64, offset 0] [from __syscall_slong_t]
!173 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"", i32 279, i64 64, i64 64, i64 1088, i32 0, metadata !174} ; [ DW_TAG_member ] [line 279, size 64, align 64, offset 1088] [from ]
!174 = metadata !{i32 786455, metadata !103, metadata !102, metadata !"", i32 279, i64 64, i64 64, i64 0, i32 0, null, metadata !175, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 279, size 64, align 64, offset 0] [from ]
!175 = metadata !{metadata !176, metadata !177}
!176 = metadata !{i32 786445, metadata !103, metadata !174, metadata !"ru_nivcsw", i32 281, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ru_nivcsw] [line 281, size 64, align 64, offset 0] [from long int]
!177 = metadata !{i32 786445, metadata !103, metadata !174, metadata !"__ru_nivcsw_word", i32 282, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [__ru_nivcsw_word] [line 282, size 64, align 64, offset 0] [from __syscall_slong_t]
!178 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageStart", metadata !"CCTKi_TimerGetrUsageStart", metadata !"", i32 617, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetrUsageStart, null, null, metadata !179, i32 618} ; [ DW_TAG_subprogram ] [line 617] [local] [def] [scope 618] [CCTKi_TimerGetrUsageStart]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183}
!180 = metadata !{i32 786689, metadata !178, metadata !"timernum", metadata !13, i32 16777833, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 617]
!181 = metadata !{i32 786689, metadata !178, metadata !"idata", metadata !13, i32 33555049, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 617]
!182 = metadata !{i32 786688, metadata !178, metadata !"data", metadata !13, i32 619, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 619]
!183 = metadata !{i32 786688, metadata !178, metadata !"ru", metadata !13, i32 621, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ru] [line 621]
!184 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageDestroy", metadata !"CCTKi_TimerGetrUsageDestroy", metadata !"", i32 579, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetrUsageDestroy, null, null, metadata !185, i32 580} ; [ DW_TAG_subprogram ] [line 579] [local] [def] [scope 580] [CCTKi_TimerGetrUsageDestroy]
!185 = metadata !{metadata !186, metadata !187}
!186 = metadata !{i32 786689, metadata !184, metadata !"timernum", metadata !13, i32 16777795, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 579]
!187 = metadata !{i32 786689, metadata !184, metadata !"data", metadata !13, i32 33555011, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 579]
!188 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetrUsageCreate", metadata !"CCTKi_TimerGetrUsageCreate", metadata !"", i32 535, metadata !35, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTKi_TimerGetrUsageCreate, null, null, metadata !189, i32 536} ; [ DW_TAG_subprogram ] [line 535] [local] [def] [scope 536] [CCTKi_TimerGetrUsageCreate]
!189 = metadata !{metadata !190, metadata !191}
!190 = metadata !{i32 786689, metadata !188, metadata !"timernum", metadata !13, i32 16777751, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 535]
!191 = metadata !{i32 786688, metadata !188, metadata !"this", metadata !13, i32 537, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 537]
!192 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_RegisterTimersGetTimeOfDay", metadata !"CCTKi_RegisterTimersGetTimeOfDay", metadata !"", i32 472, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !193, i32 473} ; [ DW_TAG_subprogram ] [line 472] [local] [def] [scope 473] [CCTKi_RegisterTimersGetTimeOfDay]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786688, metadata !192, metadata !"functions", metadata !13, i32 474, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [functions] [line 474]
!195 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDaySet", metadata !"CCTKi_TimerGetTimeOfDaySet", metadata !"", i32 447, metadata !47, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDaySet, null, null, metadata !196, i32 448} ; [ DW_TAG_subprogram ] [line 447] [local] [def] [scope 448] [CCTKi_TimerGetTimeOfDaySet]
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200}
!197 = metadata !{i32 786689, metadata !195, metadata !"timernum", metadata !13, i32 16777663, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 447]
!198 = metadata !{i32 786689, metadata !195, metadata !"idata", metadata !13, i32 33554879, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 447]
!199 = metadata !{i32 786689, metadata !195, metadata !"vals", metadata !13, i32 50332095, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vals] [line 447]
!200 = metadata !{i32 786688, metadata !195, metadata !"data", metadata !13, i32 449, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 449]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_GetTimeOfDayTimer]
!202 = metadata !{i32 786454, metadata !1, null, metadata !"t_GetTimeOfDayTimer", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [t_GetTimeOfDayTimer] [line 132, size 0, align 0, offset 0] [from ]
!203 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 128, i64 256, i64 64, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 256, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786445, metadata !1, metadata !203, metadata !"total", i32 130, i64 128, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [total] [line 130, size 128, align 64, offset 0] [from timeval]
!206 = metadata !{i32 786445, metadata !1, metadata !203, metadata !"last", i32 131, i64 128, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [last] [line 131, size 128, align 64, offset 128] [from timeval]
!207 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDayGet", metadata !"CCTKi_TimerGetTimeOfDayGet", metadata !"", i32 399, metadata !47, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDayGet, null, null, metadata !208, i32 400} ; [ DW_TAG_subprogram ] [line 399] [local] [def] [scope 400] [CCTKi_TimerGetTimeOfDayGet]
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212}
!209 = metadata !{i32 786689, metadata !207, metadata !"timernum", metadata !13, i32 16777615, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 399]
!210 = metadata !{i32 786689, metadata !207, metadata !"idata", metadata !13, i32 33554831, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 399]
!211 = metadata !{i32 786689, metadata !207, metadata !"vals", metadata !13, i32 50332047, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vals] [line 399]
!212 = metadata !{i32 786688, metadata !207, metadata !"data", metadata !13, i32 401, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 401]
!213 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDayReset", metadata !"CCTKi_TimerGetTimeOfDayReset", metadata !"", i32 350, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetTimeOfDayReset, null, null, metadata !214, i32 351} ; [ DW_TAG_subprogram ] [line 350] [local] [def] [scope 351] [CCTKi_TimerGetTimeOfDayReset]
!214 = metadata !{metadata !215, metadata !216, metadata !217}
!215 = metadata !{i32 786689, metadata !213, metadata !"timernum", metadata !13, i32 16777566, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 350]
!216 = metadata !{i32 786689, metadata !213, metadata !"idata", metadata !13, i32 33554782, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 350]
!217 = metadata !{i32 786688, metadata !213, metadata !"data", metadata !13, i32 352, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 352]
!218 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDayStop", metadata !"CCTKi_TimerGetTimeOfDayStop", metadata !"", i32 297, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStop, null, null, metadata !219, i32 298} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [scope 298] [CCTKi_TimerGetTimeOfDayStop]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!220 = metadata !{i32 786689, metadata !218, metadata !"timernum", metadata !13, i32 16777513, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 297]
!221 = metadata !{i32 786689, metadata !218, metadata !"idata", metadata !13, i32 33554729, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 297]
!222 = metadata !{i32 786688, metadata !218, metadata !"data", metadata !13, i32 299, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 299]
!223 = metadata !{i32 786688, metadata !218, metadata !"tp", metadata !13, i32 301, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 301]
!224 = metadata !{i32 786688, metadata !218, metadata !"tzp", metadata !13, i32 302, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tzp] [line 302]
!225 = metadata !{i32 786451, metadata !226, null, metadata !"timezone", i32 55, i64 64, i64 32, i32 0, i32 0, null, metadata !227, i32 0, null, null} ; [ DW_TAG_structure_type ] [timezone] [line 55, size 64, align 32, offset 0] [from ]
!226 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/sys/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!227 = metadata !{metadata !228, metadata !229}
!228 = metadata !{i32 786445, metadata !226, metadata !225, metadata !"tz_minuteswest", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [tz_minuteswest] [line 57, size 32, align 32, offset 0] [from int]
!229 = metadata !{i32 786445, metadata !226, metadata !225, metadata !"tz_dsttime", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [tz_dsttime] [line 58, size 32, align 32, offset 32] [from int]
!230 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDayStart", metadata !"CCTKi_TimerGetTimeOfDayStart", metadata !"", i32 245, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStart, null, null, metadata !231, i32 246} ; [ DW_TAG_subprogram ] [line 245] [local] [def] [scope 246] [CCTKi_TimerGetTimeOfDayStart]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236}
!232 = metadata !{i32 786689, metadata !230, metadata !"timernum", metadata !13, i32 16777461, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 245]
!233 = metadata !{i32 786689, metadata !230, metadata !"idata", metadata !13, i32 33554677, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idata] [line 245]
!234 = metadata !{i32 786688, metadata !230, metadata !"data", metadata !13, i32 247, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 247]
!235 = metadata !{i32 786688, metadata !230, metadata !"tp", metadata !13, i32 249, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 249]
!236 = metadata !{i32 786688, metadata !230, metadata !"tzp", metadata !13, i32 250, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tzp] [line 250]
!237 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDayDestroy", metadata !"CCTKi_TimerGetTimeOfDayDestroy", metadata !"", i32 207, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @CCTKi_TimerGetTimeOfDayDestroy, null, null, metadata !238, i32 208} ; [ DW_TAG_subprogram ] [line 207] [local] [def] [scope 208] [CCTKi_TimerGetTimeOfDayDestroy]
!238 = metadata !{metadata !239, metadata !240}
!239 = metadata !{i32 786689, metadata !237, metadata !"timernum", metadata !13, i32 16777423, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 207]
!240 = metadata !{i32 786689, metadata !237, metadata !"data", metadata !13, i32 33554639, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 207]
!241 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"CCTKi_TimerGetTimeOfDayCreate", metadata !"CCTKi_TimerGetTimeOfDayCreate", metadata !"", i32 162, metadata !35, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTKi_TimerGetTimeOfDayCreate, null, null, metadata !242, i32 163} ; [ DW_TAG_subprogram ] [line 162] [local] [def] [scope 163] [CCTKi_TimerGetTimeOfDayCreate]
!242 = metadata !{metadata !243, metadata !244}
!243 = metadata !{i32 786689, metadata !241, metadata !"timernum", metadata !13, i32 16777378, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timernum] [line 162]
!244 = metadata !{i32 786688, metadata !241, metadata !"this", metadata !13, i32 164, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 164]
!245 = metadata !{metadata !246, metadata !248, metadata !249, metadata !250, metadata !251}
!246 = metadata !{i32 786484, i32 0, null, metadata !"GetrUsageUnits", metadata !"GetrUsageUnits", metadata !"", metadata !13, i32 507, metadata !247, i32 1, i32 1, null, null}
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!248 = metadata !{i32 786484, i32 0, null, metadata !"GetrUsageHeading", metadata !"GetrUsageHeading", metadata !"", metadata !13, i32 506, metadata !247, i32 1, i32 1, null, null}
!249 = metadata !{i32 786484, i32 0, null, metadata !"GetTimeOfDayUnits", metadata !"GetTimeOfDayUnits", metadata !"", metadata !13, i32 135, metadata !247, i32 1, i32 1, null, null}
!250 = metadata !{i32 786484, i32 0, null, metadata !"GetTimeOfDayHeading", metadata !"GetTimeOfDayHeading", metadata !"", metadata !13, i32 134, metadata !247, i32 1, i32 1, null, null}
!251 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !13, i32 35, metadata !16, i32 1, i32 1, null, null}
!252 = metadata !{i32 37, i32 0, metadata !12, null}
!253 = metadata !{i32 474, i32 0, metadata !192, metadata !254}
!254 = metadata !{i32 96, i32 0, metadata !19, null}
!255 = metadata !{i32 476, i32 0, metadata !192, metadata !254}
!256 = metadata !{metadata !"int", metadata !257}
!257 = metadata !{metadata !"omnipotent char", metadata !258}
!258 = metadata !{metadata !"Simple C/C++ TBAA"}
!259 = metadata !{i32 477, i32 0, metadata !192, metadata !254}
!260 = metadata !{metadata !"any pointer", metadata !257}
!261 = metadata !{i32 478, i32 0, metadata !192, metadata !254}
!262 = metadata !{i32 479, i32 0, metadata !192, metadata !254}
!263 = metadata !{i32 480, i32 0, metadata !192, metadata !254}
!264 = metadata !{i32 481, i32 0, metadata !192, metadata !254}
!265 = metadata !{i32 482, i32 0, metadata !192, metadata !254}
!266 = metadata !{i32 483, i32 0, metadata !192, metadata !254}
!267 = metadata !{i32 485, i32 0, metadata !192, metadata !254}
!268 = metadata !{i32 486, i32 0, metadata !192, metadata !254}
!269 = metadata !{i32 846, i32 0, metadata !23, metadata !270}
!270 = metadata !{i32 100, i32 0, metadata !19, null}
!271 = metadata !{i32 848, i32 0, metadata !23, metadata !270}
!272 = metadata !{i32 849, i32 0, metadata !23, metadata !270}
!273 = metadata !{i32 850, i32 0, metadata !23, metadata !270}
!274 = metadata !{i32 851, i32 0, metadata !23, metadata !270}
!275 = metadata !{i32 852, i32 0, metadata !23, metadata !270}
!276 = metadata !{i32 853, i32 0, metadata !23, metadata !270}
!277 = metadata !{i32 854, i32 0, metadata !23, metadata !270}
!278 = metadata !{i32 855, i32 0, metadata !23, metadata !270}
!279 = metadata !{i32 857, i32 0, metadata !23, metadata !270}
!280 = metadata !{i32 859, i32 0, metadata !23, metadata !270}
!281 = metadata !{i32 103, i32 0, metadata !19, null}
!282 = metadata !{i32 535, i32 0, metadata !188, null}
!283 = metadata !{i32 539, i32 0, metadata !188, null}
!284 = metadata !{i32 540, i32 0, metadata !188, null}
!285 = metadata !{i32 542, i32 0, metadata !188, null}
!286 = metadata !{i32 545, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !188, i32 543, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c]
!288 = metadata !{i32 546, i32 0, metadata !287, null}
!289 = metadata !{i32 548, i32 0, metadata !188, null}
!290 = metadata !{i32 579, i32 0, metadata !184, null}
!291 = metadata !{i32 581, i32 0, metadata !184, null}
!292 = metadata !{i32 582, i32 0, metadata !184, null}
!293 = metadata !{i32 584, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !184, i32 583, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c]
!295 = metadata !{i32 585, i32 0, metadata !294, null}
!296 = metadata !{i32 586, i32 0, metadata !184, null}
!297 = metadata !{i32 617, i32 0, metadata !178, null}
!298 = metadata !{i32 623, i32 0, metadata !178, null}
!299 = metadata !{i32 627, i32 0, metadata !178, null}
!300 = metadata !{i32 628, i32 0, metadata !178, null}
!301 = metadata !{i32 638, i32 0, metadata !178, null}
!302 = metadata !{i32 668, i32 0, metadata !96, null}
!303 = metadata !{i32 674, i32 0, metadata !96, null}
!304 = metadata !{i32 679, i32 0, metadata !96, null}
!305 = metadata !{i32 690, i32 0, metadata !96, null}
!306 = metadata !{i32 720, i32 0, metadata !91, null}
!307 = metadata !{i32 724, i32 0, metadata !91, null}
!308 = metadata !{i32 728, i32 0, metadata !91, null}
!309 = metadata !{i32 730, i32 0, metadata !91, null}
!310 = metadata !{i32 768, i32 0, metadata !85, null}
!311 = metadata !{i32 774, i32 0, metadata !85, null}
!312 = metadata !{i32 776, i32 0, metadata !85, null}
!313 = metadata !{i32 777, i32 0, metadata !85, null}
!314 = metadata !{i32 778, i32 0, metadata !85, null}
!315 = metadata !{i32 779, i32 0, metadata !85, null}
!316 = metadata !{metadata !"long", metadata !257}
!317 = metadata !{metadata !"double", metadata !257}
!318 = metadata !{i32 781, i32 0, metadata !85, null}
!319 = metadata !{i32 818, i32 0, metadata !66, null}
!320 = metadata !{i32 822, i32 0, metadata !66, null}
!321 = metadata !{i32 826, i32 0, metadata !66, null}
!322 = metadata !{i32 827, i32 0, metadata !66, null}
!323 = metadata !{i32 828, i32 0, metadata !66, null}
!324 = metadata !{i32 162, i32 0, metadata !241, null}
!325 = metadata !{i32 166, i32 0, metadata !241, null}
!326 = metadata !{i32 168, i32 0, metadata !241, null}
!327 = metadata !{i32 170, i32 0, metadata !241, null}
!328 = metadata !{i32 173, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !241, i32 171, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c]
!330 = metadata !{i32 174, i32 0, metadata !329, null}
!331 = metadata !{i32 176, i32 0, metadata !241, null}
!332 = metadata !{i32 207, i32 0, metadata !237, null}
!333 = metadata !{i32 209, i32 0, metadata !237, null}
!334 = metadata !{i32 210, i32 0, metadata !237, null}
!335 = metadata !{i32 212, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !237, i32 211, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c]
!337 = metadata !{i32 213, i32 0, metadata !336, null}
!338 = metadata !{i32 214, i32 0, metadata !237, null}
!339 = metadata !{i32 245, i32 0, metadata !230, null}
!340 = metadata !{i32 252, i32 0, metadata !230, null}
!341 = metadata !{i32 256, i32 0, metadata !230, null}
!342 = metadata !{i32 257, i32 0, metadata !230, null}
!343 = metadata !{i32 267, i32 0, metadata !230, null}
!344 = metadata !{i32 297, i32 0, metadata !218, null}
!345 = metadata !{i32 304, i32 0, metadata !218, null}
!346 = metadata !{i32 309, i32 0, metadata !218, null}
!347 = metadata !{i32 320, i32 0, metadata !218, null}
!348 = metadata !{i32 350, i32 0, metadata !213, null}
!349 = metadata !{i32 354, i32 0, metadata !213, null}
!350 = metadata !{i32 359, i32 0, metadata !213, null}
!351 = metadata !{i32 362, i32 0, metadata !213, null}
!352 = metadata !{i32 399, i32 0, metadata !207, null}
!353 = metadata !{i32 403, i32 0, metadata !207, null}
!354 = metadata !{i32 406, i32 0, metadata !207, null}
!355 = metadata !{i32 407, i32 0, metadata !207, null}
!356 = metadata !{i32 408, i32 0, metadata !207, null}
!357 = metadata !{i32 409, i32 0, metadata !207, null}
!358 = metadata !{i32 410, i32 0, metadata !207, null}
!359 = metadata !{i32 447, i32 0, metadata !195, null}
!360 = metadata !{i32 451, i32 0, metadata !195, null}
!361 = metadata !{i32 454, i32 0, metadata !195, null}
!362 = metadata !{i32 455, i32 0, metadata !195, null}
!363 = metadata !{i32 456, i32 0, metadata !195, null}
