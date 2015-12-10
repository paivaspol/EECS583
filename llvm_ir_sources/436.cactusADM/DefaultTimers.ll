; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cClockFuncs = type { i8*, i32, i8* (i32)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*, %struct.cTimerVal*)*, void (i32, i8*, %struct.cTimerVal*)* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [89 x i8] c"$Header: /cactus/Cactus/src/main/DefaultTimers.c,v 1.17 2001/12/11 22:15:10 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"GetTimeOfDay\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"GetrUsage\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"getrusage\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_DefaultTimers_c() #0 {
  ret i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), !dbg !202
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterDefaultTimerFunctions() #1 {
  %functions.i1 = alloca %struct.cClockFuncs, align 8
  %functions.i = alloca %struct.cClockFuncs, align 8
  %1 = bitcast %struct.cClockFuncs* %functions.i to i8*, !dbg !203
  call void @llvm.lifetime.start(i64 72, i8* %1) #2, !dbg !203
  %2 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 1, !dbg !205
  store i32 1, i32* %2, align 8, !dbg !206, !tbaa !207
  %3 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 2, !dbg !213
  store i8* (i32)* @CCTKi_TimerGetTimeOfDayCreate, i8* (i32)** %3, align 8, !dbg !214, !tbaa !215
  %4 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 3, !dbg !216
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayDestroy, void (i32, i8*)** %4, align 8, !dbg !217, !tbaa !218
  %5 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 4, !dbg !219
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStart, void (i32, i8*)** %5, align 8, !dbg !220, !tbaa !221
  %6 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 5, !dbg !222
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStop, void (i32, i8*)** %6, align 8, !dbg !223, !tbaa !224
  %7 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 6, !dbg !225
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayReset, void (i32, i8*)** %7, align 8, !dbg !226, !tbaa !227
  %8 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 7, !dbg !228
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDayGet, void (i32, i8*, %struct.cTimerVal*)** %8, align 8, !dbg !229, !tbaa !230
  %9 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 8, !dbg !231
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDaySet, void (i32, i8*, %struct.cTimerVal*)** %9, align 8, !dbg !232, !tbaa !233
  tail call void @llvm.dbg.value(metadata %struct.cClockFuncs* %functions.i, i64 0, metadata !51, metadata !234) #2, !dbg !235
  %10 = call i32 @CCTK_ClockRegister(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), %struct.cClockFuncs* %functions.i) #6, !dbg !236
  call void @llvm.lifetime.end(i64 72, i8* %1) #2, !dbg !237
  %11 = bitcast %struct.cClockFuncs* %functions.i1 to i8*, !dbg !238
  call void @llvm.lifetime.start(i64 72, i8* %11) #2, !dbg !238
  %12 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 1, !dbg !240
  store i32 1, i32* %12, align 8, !dbg !241, !tbaa !207
  %13 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 2, !dbg !242
  store i8* (i32)* @CCTKi_TimerGetrUsageCreate, i8* (i32)** %13, align 8, !dbg !243, !tbaa !215
  %14 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 3, !dbg !244
  store void (i32, i8*)* @CCTKi_TimerGetrUsageDestroy, void (i32, i8*)** %14, align 8, !dbg !245, !tbaa !218
  %15 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 4, !dbg !246
  store void (i32, i8*)* @CCTKi_TimerGetrUsageStart, void (i32, i8*)** %15, align 8, !dbg !247, !tbaa !221
  %16 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 5, !dbg !248
  store void (i32, i8*)* @CCTKi_TimerGetrUsageStop, void (i32, i8*)** %16, align 8, !dbg !249, !tbaa !224
  %17 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 6, !dbg !250
  store void (i32, i8*)* @CCTKi_TimerGetrUsageReset, void (i32, i8*)** %17, align 8, !dbg !251, !tbaa !227
  %18 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 7, !dbg !252
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageGet, void (i32, i8*, %struct.cTimerVal*)** %18, align 8, !dbg !253, !tbaa !230
  %19 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 8, !dbg !254
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageSet, void (i32, i8*, %struct.cTimerVal*)** %19, align 8, !dbg !255, !tbaa !233
  call void @llvm.dbg.value(metadata %struct.cClockFuncs* %functions.i1, i64 0, metadata !134, metadata !234) #2, !dbg !256
  %20 = call i32 @CCTK_ClockRegister(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), %struct.cClockFuncs* %functions.i1) #6, !dbg !257
  call void @llvm.lifetime.end(i64 72, i8* %11) #2, !dbg !258
  ret i32 0, !dbg !259
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal noalias i8* @CCTKi_TimerGetTimeOfDayCreate(i32 %timernum) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !90, metadata !234), !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !90, metadata !234), !dbg !260
  %1 = tail call i8* @malloc(i64 32) #6, !dbg !261
  %2 = icmp eq i8* %1, null, !dbg !262
  br i1 %2, label %7, label %3, !dbg !264

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %1 to i64*, !dbg !265
  store i64 0, i64* %4, align 8, !dbg !267, !tbaa !268
  %5 = getelementptr inbounds i8* %1, i64 8, !dbg !272
  %6 = bitcast i8* %5 to i32*, !dbg !272
  store i32 0, i32* %6, align 4, !dbg !273, !tbaa !274
  br label %7, !dbg !275

; <label>:7                                       ; preds = %0, %3
  ret i8* %1, !dbg !276
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayDestroy(i32 %timernum, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !94, metadata !234), !dbg !277
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !95, metadata !234), !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !94, metadata !234), !dbg !277
  %1 = icmp eq i8* %data, null, !dbg !279
  br i1 %1, label %3, label %2, !dbg !281

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %data) #7, !dbg !282
  br label %3, !dbg !284

; <label>:3                                       ; preds = %0, %2
  ret void, !dbg !285
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayStart(i32 %timernum, i8* nocapture %idata) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !98, metadata !234), !dbg !286
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !99, metadata !234), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !98, metadata !234), !dbg !286
  %1 = getelementptr inbounds i8* %idata, i64 16, !dbg !288
  %2 = bitcast i8* %1 to i64*, !dbg !289
  store i64 0, i64* %2, align 8, !dbg !290, !tbaa !291
  %3 = getelementptr inbounds i8* %idata, i64 24, !dbg !292
  %4 = bitcast i8* %3 to i32*, !dbg !292
  store i32 0, i32* %4, align 4, !dbg !293, !tbaa !294
  ret void, !dbg !295
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayStop(i32 %timernum, i8* nocapture %idata) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !110, metadata !234), !dbg !296
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !111, metadata !234), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !110, metadata !234), !dbg !296
  %1 = bitcast i8* %idata to i64*, !dbg !298
  store i64 0, i64* %1, align 8, !dbg !299, !tbaa !268
  %2 = getelementptr inbounds i8* %idata, i64 8, !dbg !300
  %3 = bitcast i8* %2 to i32*, !dbg !300
  store i32 0, i32* %3, align 4, !dbg !301, !tbaa !274
  ret void, !dbg !302
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayReset(i32 %timernum, i8* nocapture %idata) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !117, metadata !234), !dbg !303
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !118, metadata !234), !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !117, metadata !234), !dbg !303
  %1 = getelementptr inbounds i8* %idata, i64 16, !dbg !305
  %2 = bitcast i8* %1 to i64*, !dbg !306
  store i64 0, i64* %2, align 8, !dbg !307, !tbaa !291
  %3 = getelementptr inbounds i8* %idata, i64 24, !dbg !308
  %4 = bitcast i8* %3 to i32*, !dbg !308
  store i32 0, i32* %4, align 4, !dbg !309, !tbaa !294
  %5 = bitcast i8* %idata to i64*, !dbg !310
  store i64 0, i64* %5, align 8, !dbg !311, !tbaa !268
  %6 = getelementptr inbounds i8* %idata, i64 8, !dbg !312
  %7 = bitcast i8* %6 to i32*, !dbg !312
  store i32 0, i32* %7, align 4, !dbg !313, !tbaa !274
  ret void, !dbg !314
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayGet(i32 %timernum, i8* nocapture readonly %idata, %struct.cTimerVal* nocapture %vals) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !122, metadata !234), !dbg !315
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !123, metadata !234), !dbg !316
  tail call void @llvm.dbg.value(metadata %struct.cTimerVal* %vals, i64 0, metadata !124, metadata !234), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !122, metadata !234), !dbg !315
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 0, !dbg !318
  store i32 3, i32* %1, align 4, !dbg !319, !tbaa !320
  %2 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 1, !dbg !322
  store i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8** %2, align 8, !dbg !323, !tbaa !324
  %3 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 2, !dbg !325
  store i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8** %3, align 8, !dbg !326, !tbaa !327
  %4 = bitcast i8* %idata to i64*, !dbg !328
  %5 = load i64* %4, align 8, !dbg !328, !tbaa !268
  %6 = sitofp i64 %5 to double, !dbg !329
  %7 = getelementptr inbounds i8* %idata, i64 8, !dbg !330
  %8 = bitcast i8* %7 to i32*, !dbg !330
  %9 = load i32* %8, align 4, !dbg !330, !tbaa !274
  %10 = sitofp i32 %9 to double, !dbg !331
  %11 = fdiv double %10, 1.000000e+06, !dbg !332
  %12 = fadd double %6, %11, !dbg !333
  %13 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !334
  %14 = bitcast %union.anon* %13 to double*, !dbg !335
  store double %12, double* %14, align 8, !dbg !336, !tbaa !337
  ret void, !dbg !339
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDaySet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture readonly %vals) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !128, metadata !234), !dbg !340
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !129, metadata !234), !dbg !341
  tail call void @llvm.dbg.value(metadata %struct.cTimerVal* %vals, i64 0, metadata !130, metadata !234), !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !128, metadata !234), !dbg !340
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !343
  %2 = bitcast %union.anon* %1 to double*, !dbg !344
  %3 = load double* %2, align 8, !dbg !344, !tbaa !337
  %4 = fptosi double %3 to i64, !dbg !345
  %5 = bitcast i8* %idata to i64*, !dbg !346
  store i64 %4, i64* %5, align 8, !dbg !347, !tbaa !268
  %6 = fmul double %3, 1.000000e+06, !dbg !348
  %7 = sitofp i64 %4 to double, !dbg !349
  %8 = fsub double %6, %7, !dbg !350
  %9 = fptosi double %8 to i64, !dbg !351
  %10 = trunc i64 %9 to i32, !dbg !351
  %11 = getelementptr inbounds i8* %idata, i64 8, !dbg !352
  %12 = bitcast i8* %11 to i32*, !dbg !352
  store i32 %10, i32* %12, align 4, !dbg !353, !tbaa !274
  ret void, !dbg !354
}

; Function Attrs: optsize
declare i32 @CCTK_ClockRegister(i8*, %struct.cClockFuncs*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal noalias i8* @CCTKi_TimerGetrUsageCreate(i32 %timernum) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !137, metadata !234), !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !137, metadata !234), !dbg !355
  %1 = tail call i8* @malloc(i64 32) #6, !dbg !356
  %2 = icmp eq i8* %1, null, !dbg !357
  br i1 %2, label %7, label %3, !dbg !359

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %1 to i64*, !dbg !360
  store i64 0, i64* %4, align 8, !dbg !362, !tbaa !268
  %5 = getelementptr inbounds i8* %1, i64 8, !dbg !363
  %6 = bitcast i8* %5 to i32*, !dbg !363
  store i32 0, i32* %6, align 4, !dbg !364, !tbaa !274
  br label %7, !dbg !365

; <label>:7                                       ; preds = %0, %3
  ret i8* %1, !dbg !366
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageDestroy(i32 %timernum, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !141, metadata !234), !dbg !367
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !142, metadata !234), !dbg !368
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !141, metadata !234), !dbg !367
  %1 = icmp eq i8* %data, null, !dbg !369
  br i1 %1, label %3, label %2, !dbg !371

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %data) #7, !dbg !372
  br label %3, !dbg !374

; <label>:3                                       ; preds = %0, %2
  ret void, !dbg !375
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageStart(i32 %timernum, i8* nocapture %idata) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !145, metadata !234), !dbg !376
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !146, metadata !234), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !145, metadata !234), !dbg !376
  %1 = getelementptr inbounds i8* %idata, i64 16, !dbg !378
  %2 = bitcast i8* %1 to i64*, !dbg !379
  store i64 0, i64* %2, align 8, !dbg !380, !tbaa !291
  %3 = getelementptr inbounds i8* %idata, i64 24, !dbg !381
  %4 = bitcast i8* %3 to i32*, !dbg !381
  store i32 0, i32* %4, align 4, !dbg !382, !tbaa !294
  ret void, !dbg !383
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageStop(i32 %timernum, i8* nocapture %idata) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !170, metadata !234), !dbg !384
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !171, metadata !234), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !170, metadata !234), !dbg !384
  %1 = bitcast i8* %idata to i64*, !dbg !386
  store i64 0, i64* %1, align 8, !dbg !387, !tbaa !268
  %2 = getelementptr inbounds i8* %idata, i64 8, !dbg !388
  %3 = bitcast i8* %2 to i32*, !dbg !388
  store i32 0, i32* %3, align 4, !dbg !389, !tbaa !274
  ret void, !dbg !390
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageReset(i32 %timernum, i8* nocapture %idata) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !176, metadata !234), !dbg !391
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !177, metadata !234), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !176, metadata !234), !dbg !391
  %1 = bitcast i8* %idata to i64*, !dbg !393
  store i64 0, i64* %1, align 8, !dbg !394, !tbaa !268
  %2 = getelementptr inbounds i8* %idata, i64 8, !dbg !395
  %3 = bitcast i8* %2 to i32*, !dbg !395
  store i32 0, i32* %3, align 4, !dbg !396, !tbaa !274
  ret void, !dbg !397
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageGet(i32 %timernum, i8* nocapture readonly %idata, %struct.cTimerVal* nocapture %vals) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !181, metadata !234), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !182, metadata !234), !dbg !399
  tail call void @llvm.dbg.value(metadata %struct.cTimerVal* %vals, i64 0, metadata !183, metadata !234), !dbg !400
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !181, metadata !234), !dbg !398
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 0, !dbg !401
  store i32 3, i32* %1, align 4, !dbg !402, !tbaa !320
  %2 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 1, !dbg !403
  store i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8** %2, align 8, !dbg !404, !tbaa !324
  %3 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 2, !dbg !405
  store i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8** %3, align 8, !dbg !406, !tbaa !327
  %4 = bitcast i8* %idata to i64*, !dbg !407
  %5 = load i64* %4, align 8, !dbg !407, !tbaa !268
  %6 = sitofp i64 %5 to double, !dbg !408
  %7 = getelementptr inbounds i8* %idata, i64 8, !dbg !409
  %8 = bitcast i8* %7 to i32*, !dbg !409
  %9 = load i32* %8, align 4, !dbg !409, !tbaa !274
  %10 = sitofp i32 %9 to double, !dbg !410
  %11 = fdiv double %10, 1.000000e+06, !dbg !411
  %12 = fadd double %6, %11, !dbg !412
  %13 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !413
  %14 = bitcast %union.anon* %13 to double*, !dbg !414
  store double %12, double* %14, align 8, !dbg !415, !tbaa !337
  ret void, !dbg !416
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageSet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture readonly %vals) #1 {
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !187, metadata !234), !dbg !417
  tail call void @llvm.dbg.value(metadata i8* %idata, i64 0, metadata !188, metadata !234), !dbg !418
  tail call void @llvm.dbg.value(metadata %struct.cTimerVal* %vals, i64 0, metadata !189, metadata !234), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 %timernum, i64 0, metadata !187, metadata !234), !dbg !417
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3, !dbg !420
  %2 = bitcast %union.anon* %1 to double*, !dbg !421
  %3 = load double* %2, align 8, !dbg !421, !tbaa !337
  %4 = fptosi double %3 to i64, !dbg !422
  %5 = bitcast i8* %idata to i64*, !dbg !423
  store i64 %4, i64* %5, align 8, !dbg !424, !tbaa !268
  %6 = fmul double %3, 1.000000e+06, !dbg !425
  %7 = sitofp i64 %4 to double, !dbg !426
  %8 = fsub double %6, %7, !dbg !427
  %9 = fptosi double %8 to i64, !dbg !428
  %10 = trunc i64 %9 to i32, !dbg !428
  %11 = getelementptr inbounds i8* %idata, i64 8, !dbg !429
  %12 = bitcast i8* %11 to i32*, !dbg !429
  store i32 %10, i32* %12, align 4, !dbg !430, !tbaa !274
  ret void, !dbg !431
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!198, !199, !200}
!llvm.ident = !{!201}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !36, globals: !191, imports: !43)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/DefaultTimers.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 16, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Timers.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "val_none", value: 0)
!7 = !DIEnumerator(name: "val_int", value: 1)
!8 = !DIEnumerator(name: "val_long", value: 2)
!9 = !DIEnumerator(name: "val_double", value: 3)
!10 = !{!11, !29, !22, !30}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_GetTimeOfDayTimer", file: !1, line: 132, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 128, size: 256, align: 64, elements: !14)
!14 = !{!15, !28}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !13, file: !1, line: 130, baseType: !16, size: 128, align: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !17, line: 30, size: 128, align: 64, elements: !18)
!17 = !DIFile(filename: "/usr/include/sys/_types/_timeval.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !{!19, !23}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !16, file: !17, line: 32, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !21, line: 120, baseType: !22)
!21 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !16, file: !17, line: 33, baseType: !24, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_suseconds_t", file: !25, line: 74, baseType: !26)
!25 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !21, line: 44, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !13, file: !1, line: 131, baseType: !16, size: 128, align: 64, offset: 128)
!29 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_GetrUsageTimer", file: !1, line: 504, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 500, size: 256, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !32, file: !1, line: 502, baseType: !16, size: 128, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !32, file: !1, line: 503, baseType: !16, size: 128, align: 64, offset: 128)
!36 = !{!37, !44, !47, !88, !92, !96, !108, !115, !120, !126, !132, !135, !139, !143, !168, !174, !179, !185}
!37 = !DISubprogram(name: "CCTKi_version_main_DefaultTimers_c", scope: !1, file: !1, line: 37, type: !38, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_DefaultTimers_c, variables: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !{}
!44 = !DISubprogram(name: "CCTKi_RegisterDefaultTimerFunctions", scope: !1, file: !1, line: 92, type: !45, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_RegisterDefaultTimerFunctions, variables: !43)
!45 = !DISubroutineType(types: !46)
!46 = !{!27}
!47 = !DISubprogram(name: "CCTKi_RegisterTimersGetTimeOfDay", scope: !1, file: !1, line: 472, type: !48, isLocal: true, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !{!51}
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "functions", scope: !47, file: !1, line: 474, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cClockFuncs", file: !4, line: 49, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 38, size: 576, align: 64, elements: !54)
!54 = !{!55, !56, !57, !62, !66, !67, !68, !69, !87}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !4, line: 40, baseType: !40, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "n_vals", scope: !53, file: !4, line: 41, baseType: !27, size: 32, align: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !53, file: !4, line: 42, baseType: !58, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !27}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !53, file: !4, line: 43, baseType: !63, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !27, !61}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !53, file: !4, line: 44, baseType: !63, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !53, file: !4, line: 45, baseType: !63, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !53, file: !4, line: 46, baseType: !63, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !53, file: !4, line: 47, baseType: !70, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !27, !61, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerVal", file: !4, line: 29, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 18, size: 256, align: 64, elements: !76)
!76 = !{!77, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !4, line: 20, baseType: !78, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerValType", file: !4, line: 16, baseType: !3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "heading", scope: !75, file: !4, line: 21, baseType: !40, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !75, file: !4, line: 22, baseType: !40, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !4, line: 28, baseType: !82, size: 64, align: 64, offset: 192)
!82 = !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !4, line: 23, size: 64, align: 64, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !82, file: !4, line: 25, baseType: !27, size: 32, align: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !82, file: !4, line: 26, baseType: !22, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !82, file: !4, line: 27, baseType: !29, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !53, file: !4, line: 48, baseType: !70, size: 64, align: 64, offset: 512)
!88 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDayCreate", scope: !1, file: !1, line: 162, type: !59, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTKi_TimerGetTimeOfDayCreate, variables: !89)
!89 = !{!90, !91}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !88, file: !1, line: 162, type: !27)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this", scope: !88, file: !1, line: 164, type: !11)
!92 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDayDestroy", scope: !1, file: !1, line: 207, type: !64, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetTimeOfDayDestroy, variables: !93)
!93 = !{!94, !95}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !92, file: !1, line: 207, type: !27)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !92, file: !1, line: 207, type: !61)
!96 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDayStart", scope: !1, file: !1, line: 245, type: !64, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStart, variables: !97)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !96, file: !1, line: 245, type: !27)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !96, file: !1, line: 245, type: !61)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !96, file: !1, line: 247, type: !11)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !96, file: !1, line: 249, type: !16)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tzp", scope: !96, file: !1, line: 250, type: !103)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !104, line: 124, size: 64, align: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/sys/time.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !103, file: !104, line: 125, baseType: !27, size: 32, align: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !103, file: !104, line: 126, baseType: !27, size: 32, align: 32, offset: 32)
!108 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDayStop", scope: !1, file: !1, line: 297, type: !64, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStop, variables: !109)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !108, file: !1, line: 297, type: !27)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !108, file: !1, line: 297, type: !61)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !108, file: !1, line: 299, type: !11)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !108, file: !1, line: 301, type: !16)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tzp", scope: !108, file: !1, line: 302, type: !103)
!115 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDayReset", scope: !1, file: !1, line: 350, type: !64, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetTimeOfDayReset, variables: !116)
!116 = !{!117, !118, !119}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !115, file: !1, line: 350, type: !27)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !115, file: !1, line: 350, type: !61)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !115, file: !1, line: 352, type: !11)
!120 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDayGet", scope: !1, file: !1, line: 399, type: !71, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDayGet, variables: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !120, file: !1, line: 399, type: !27)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !120, file: !1, line: 399, type: !61)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vals", arg: 3, scope: !120, file: !1, line: 399, type: !73)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !120, file: !1, line: 401, type: !11)
!126 = !DISubprogram(name: "CCTKi_TimerGetTimeOfDaySet", scope: !1, file: !1, line: 447, type: !71, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDaySet, variables: !127)
!127 = !{!128, !129, !130, !131}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !126, file: !1, line: 447, type: !27)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !126, file: !1, line: 447, type: !61)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vals", arg: 3, scope: !126, file: !1, line: 447, type: !73)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !126, file: !1, line: 449, type: !11)
!132 = !DISubprogram(name: "CCTKi_RegisterTimersGetrUsage", scope: !1, file: !1, line: 844, type: !48, isLocal: true, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, variables: !133)
!133 = !{!134}
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "functions", scope: !132, file: !1, line: 846, type: !52)
!135 = !DISubprogram(name: "CCTKi_TimerGetrUsageCreate", scope: !1, file: !1, line: 535, type: !59, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTKi_TimerGetrUsageCreate, variables: !136)
!136 = !{!137, !138}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !135, file: !1, line: 535, type: !27)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this", scope: !135, file: !1, line: 537, type: !30)
!139 = !DISubprogram(name: "CCTKi_TimerGetrUsageDestroy", scope: !1, file: !1, line: 579, type: !64, isLocal: true, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetrUsageDestroy, variables: !140)
!140 = !{!141, !142}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !139, file: !1, line: 579, type: !27)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !139, file: !1, line: 579, type: !61)
!143 = !DISubprogram(name: "CCTKi_TimerGetrUsageStart", scope: !1, file: !1, line: 617, type: !64, isLocal: true, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetrUsageStart, variables: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !143, file: !1, line: 617, type: !27)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !143, file: !1, line: 617, type: !61)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !143, file: !1, line: 619, type: !30)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ru", scope: !143, file: !1, line: 621, type: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !150, line: 152, size: 1152, align: 64, elements: !151)
!150 = !DIFile(filename: "/usr/include/sys/resource.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !149, file: !150, line: 153, baseType: !16, size: 128, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !149, file: !150, line: 154, baseType: !16, size: 128, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !149, file: !150, line: 163, baseType: !22, size: 64, align: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !149, file: !150, line: 165, baseType: !22, size: 64, align: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !149, file: !150, line: 166, baseType: !22, size: 64, align: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !149, file: !150, line: 167, baseType: !22, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !149, file: !150, line: 168, baseType: !22, size: 64, align: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !149, file: !150, line: 169, baseType: !22, size: 64, align: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !149, file: !150, line: 170, baseType: !22, size: 64, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !149, file: !150, line: 171, baseType: !22, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !149, file: !150, line: 172, baseType: !22, size: 64, align: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !149, file: !150, line: 173, baseType: !22, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !149, file: !150, line: 174, baseType: !22, size: 64, align: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !149, file: !150, line: 175, baseType: !22, size: 64, align: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !149, file: !150, line: 176, baseType: !22, size: 64, align: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !149, file: !150, line: 177, baseType: !22, size: 64, align: 64, offset: 1088)
!168 = !DISubprogram(name: "CCTKi_TimerGetrUsageStop", scope: !1, file: !1, line: 668, type: !64, isLocal: true, isDefinition: true, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetrUsageStop, variables: !169)
!169 = !{!170, !171, !172, !173}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !168, file: !1, line: 668, type: !27)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !168, file: !1, line: 668, type: !61)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !168, file: !1, line: 670, type: !30)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ru", scope: !168, file: !1, line: 672, type: !149)
!174 = !DISubprogram(name: "CCTKi_TimerGetrUsageReset", scope: !1, file: !1, line: 720, type: !64, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @CCTKi_TimerGetrUsageReset, variables: !175)
!175 = !{!176, !177, !178}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !174, file: !1, line: 720, type: !27)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !174, file: !1, line: 720, type: !61)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !174, file: !1, line: 722, type: !30)
!179 = !DISubprogram(name: "CCTKi_TimerGetrUsageGet", scope: !1, file: !1, line: 768, type: !71, isLocal: true, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageGet, variables: !180)
!180 = !{!181, !182, !183, !184}
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !179, file: !1, line: 768, type: !27)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !179, file: !1, line: 768, type: !61)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vals", arg: 3, scope: !179, file: !1, line: 768, type: !73)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !179, file: !1, line: 770, type: !30)
!185 = !DISubprogram(name: "CCTKi_TimerGetrUsageSet", scope: !1, file: !1, line: 818, type: !71, isLocal: true, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageSet, variables: !186)
!186 = !{!187, !188, !189, !190}
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timernum", arg: 1, scope: !185, file: !1, line: 818, type: !27)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idata", arg: 2, scope: !185, file: !1, line: 818, type: !61)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vals", arg: 3, scope: !185, file: !1, line: 818, type: !73)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !185, file: !1, line: 820, type: !30)
!191 = !{!192, !193, !195, !196, !197}
!192 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 35, type: !40, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariable(name: "GetTimeOfDayHeading", scope: !0, file: !1, line: 134, type: !194, isLocal: true, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!195 = !DIGlobalVariable(name: "GetTimeOfDayUnits", scope: !0, file: !1, line: 135, type: !194, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariable(name: "GetrUsageHeading", scope: !0, file: !1, line: 506, type: !194, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariable(name: "GetrUsageUnits", scope: !0, file: !1, line: 507, type: !194, isLocal: true, isDefinition: true)
!198 = !{i32 2, !"Dwarf Version", i32 2}
!199 = !{i32 2, !"Debug Info Version", i32 700000003}
!200 = !{i32 1, !"PIC Level", i32 2}
!201 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!202 = !DILocation(line: 37, column: 1, scope: !37)
!203 = !DILocation(line: 474, column: 3, scope: !47, inlinedAt: !204)
!204 = distinct !DILocation(line: 96, column: 3, scope: !44)
!205 = !DILocation(line: 476, column: 13, scope: !47, inlinedAt: !204)
!206 = !DILocation(line: 476, column: 21, scope: !47, inlinedAt: !204)
!207 = !{!208, !212, i64 8}
!208 = !{!"", !209, i64 0, !212, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40, !209, i64 48, !209, i64 56, !209, i64 64}
!209 = !{!"any pointer", !210, i64 0}
!210 = !{!"omnipotent char", !211, i64 0}
!211 = !{!"Simple C/C++ TBAA"}
!212 = !{!"int", !210, i64 0}
!213 = !DILocation(line: 477, column: 13, scope: !47, inlinedAt: !204)
!214 = !DILocation(line: 477, column: 21, scope: !47, inlinedAt: !204)
!215 = !{!208, !209, i64 16}
!216 = !DILocation(line: 478, column: 13, scope: !47, inlinedAt: !204)
!217 = !DILocation(line: 478, column: 21, scope: !47, inlinedAt: !204)
!218 = !{!208, !209, i64 24}
!219 = !DILocation(line: 479, column: 13, scope: !47, inlinedAt: !204)
!220 = !DILocation(line: 479, column: 21, scope: !47, inlinedAt: !204)
!221 = !{!208, !209, i64 32}
!222 = !DILocation(line: 480, column: 13, scope: !47, inlinedAt: !204)
!223 = !DILocation(line: 480, column: 21, scope: !47, inlinedAt: !204)
!224 = !{!208, !209, i64 40}
!225 = !DILocation(line: 481, column: 13, scope: !47, inlinedAt: !204)
!226 = !DILocation(line: 481, column: 21, scope: !47, inlinedAt: !204)
!227 = !{!208, !209, i64 48}
!228 = !DILocation(line: 482, column: 13, scope: !47, inlinedAt: !204)
!229 = !DILocation(line: 482, column: 21, scope: !47, inlinedAt: !204)
!230 = !{!208, !209, i64 56}
!231 = !DILocation(line: 483, column: 13, scope: !47, inlinedAt: !204)
!232 = !DILocation(line: 483, column: 21, scope: !47, inlinedAt: !204)
!233 = !{!208, !209, i64 64}
!234 = !DIExpression()
!235 = !DILocation(line: 474, column: 15, scope: !47, inlinedAt: !204)
!236 = !DILocation(line: 485, column: 3, scope: !47, inlinedAt: !204)
!237 = !DILocation(line: 486, column: 1, scope: !47, inlinedAt: !204)
!238 = !DILocation(line: 846, column: 3, scope: !132, inlinedAt: !239)
!239 = distinct !DILocation(line: 100, column: 3, scope: !44)
!240 = !DILocation(line: 848, column: 13, scope: !132, inlinedAt: !239)
!241 = !DILocation(line: 848, column: 21, scope: !132, inlinedAt: !239)
!242 = !DILocation(line: 849, column: 13, scope: !132, inlinedAt: !239)
!243 = !DILocation(line: 849, column: 21, scope: !132, inlinedAt: !239)
!244 = !DILocation(line: 850, column: 13, scope: !132, inlinedAt: !239)
!245 = !DILocation(line: 850, column: 21, scope: !132, inlinedAt: !239)
!246 = !DILocation(line: 851, column: 13, scope: !132, inlinedAt: !239)
!247 = !DILocation(line: 851, column: 21, scope: !132, inlinedAt: !239)
!248 = !DILocation(line: 852, column: 13, scope: !132, inlinedAt: !239)
!249 = !DILocation(line: 852, column: 21, scope: !132, inlinedAt: !239)
!250 = !DILocation(line: 853, column: 13, scope: !132, inlinedAt: !239)
!251 = !DILocation(line: 853, column: 21, scope: !132, inlinedAt: !239)
!252 = !DILocation(line: 854, column: 13, scope: !132, inlinedAt: !239)
!253 = !DILocation(line: 854, column: 21, scope: !132, inlinedAt: !239)
!254 = !DILocation(line: 855, column: 13, scope: !132, inlinedAt: !239)
!255 = !DILocation(line: 855, column: 21, scope: !132, inlinedAt: !239)
!256 = !DILocation(line: 846, column: 15, scope: !132, inlinedAt: !239)
!257 = !DILocation(line: 857, column: 3, scope: !132, inlinedAt: !239)
!258 = !DILocation(line: 859, column: 1, scope: !132, inlinedAt: !239)
!259 = !DILocation(line: 103, column: 3, scope: !44)
!260 = !DILocation(line: 162, column: 48, scope: !88)
!261 = !DILocation(line: 168, column: 10, scope: !88)
!262 = !DILocation(line: 170, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !88, file: !1, line: 170, column: 6)
!264 = !DILocation(line: 170, column: 6, scope: !88)
!265 = !DILocation(line: 172, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 171, column: 3)
!267 = !DILocation(line: 172, column: 25, scope: !266)
!268 = !{!269, !271, i64 0}
!269 = !{!"", !270, i64 0, !270, i64 16}
!270 = !{!"timeval", !271, i64 0, !212, i64 8}
!271 = !{!"long", !210, i64 0}
!272 = !DILocation(line: 173, column: 17, scope: !266)
!273 = !DILocation(line: 173, column: 25, scope: !266)
!274 = !{!269, !212, i64 8}
!275 = !DILocation(line: 174, column: 3, scope: !266)
!276 = !DILocation(line: 176, column: 3, scope: !88)
!277 = !DILocation(line: 207, column: 48, scope: !92)
!278 = !DILocation(line: 207, column: 64, scope: !92)
!279 = !DILocation(line: 210, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !92, file: !1, line: 210, column: 6)
!281 = !DILocation(line: 210, column: 6, scope: !92)
!282 = !DILocation(line: 212, column: 5, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 211, column: 3)
!284 = !DILocation(line: 213, column: 3, scope: !283)
!285 = !DILocation(line: 214, column: 1, scope: !92)
!286 = !DILocation(line: 245, column: 46, scope: !96)
!287 = !DILocation(line: 245, column: 62, scope: !96)
!288 = !DILocation(line: 256, column: 9, scope: !96)
!289 = !DILocation(line: 256, column: 14, scope: !96)
!290 = !DILocation(line: 256, column: 21, scope: !96)
!291 = !{!269, !271, i64 16}
!292 = !DILocation(line: 257, column: 14, scope: !96)
!293 = !DILocation(line: 257, column: 22, scope: !96)
!294 = !{!269, !212, i64 24}
!295 = !DILocation(line: 267, column: 1, scope: !96)
!296 = !DILocation(line: 297, column: 45, scope: !108)
!297 = !DILocation(line: 297, column: 61, scope: !108)
!298 = !DILocation(line: 308, column: 15, scope: !108)
!299 = !DILocation(line: 308, column: 22, scope: !108)
!300 = !DILocation(line: 309, column: 15, scope: !108)
!301 = !DILocation(line: 309, column: 22, scope: !108)
!302 = !DILocation(line: 320, column: 1, scope: !108)
!303 = !DILocation(line: 350, column: 46, scope: !115)
!304 = !DILocation(line: 350, column: 62, scope: !115)
!305 = !DILocation(line: 357, column: 9, scope: !115)
!306 = !DILocation(line: 357, column: 14, scope: !115)
!307 = !DILocation(line: 357, column: 22, scope: !115)
!308 = !DILocation(line: 358, column: 14, scope: !115)
!309 = !DILocation(line: 358, column: 23, scope: !115)
!310 = !DILocation(line: 359, column: 15, scope: !115)
!311 = !DILocation(line: 359, column: 23, scope: !115)
!312 = !DILocation(line: 360, column: 15, scope: !115)
!313 = !DILocation(line: 360, column: 24, scope: !115)
!314 = !DILocation(line: 362, column: 1, scope: !115)
!315 = !DILocation(line: 399, column: 44, scope: !120)
!316 = !DILocation(line: 399, column: 60, scope: !120)
!317 = !DILocation(line: 399, column: 78, scope: !120)
!318 = !DILocation(line: 406, column: 11, scope: !120)
!319 = !DILocation(line: 406, column: 19, scope: !120)
!320 = !{!321, !210, i64 0}
!321 = !{!"", !210, i64 0, !209, i64 8, !209, i64 16, !210, i64 24}
!322 = !DILocation(line: 407, column: 11, scope: !120)
!323 = !DILocation(line: 407, column: 19, scope: !120)
!324 = !{!321, !209, i64 8}
!325 = !DILocation(line: 408, column: 11, scope: !120)
!326 = !DILocation(line: 408, column: 19, scope: !120)
!327 = !{!321, !209, i64 16}
!328 = !DILocation(line: 409, column: 33, scope: !120)
!329 = !DILocation(line: 409, column: 21, scope: !120)
!330 = !DILocation(line: 409, column: 62, scope: !120)
!331 = !DILocation(line: 409, column: 42, scope: !120)
!332 = !DILocation(line: 409, column: 69, scope: !120)
!333 = !DILocation(line: 409, column: 40, scope: !120)
!334 = !DILocation(line: 409, column: 11, scope: !120)
!335 = !DILocation(line: 409, column: 15, scope: !120)
!336 = !DILocation(line: 409, column: 19, scope: !120)
!337 = !{!338, !338, i64 0}
!338 = !{!"double", !210, i64 0}
!339 = !DILocation(line: 410, column: 1, scope: !120)
!340 = !DILocation(line: 447, column: 44, scope: !126)
!341 = !DILocation(line: 447, column: 60, scope: !126)
!342 = !DILocation(line: 447, column: 78, scope: !126)
!343 = !DILocation(line: 454, column: 39, scope: !126)
!344 = !DILocation(line: 454, column: 43, scope: !126)
!345 = !DILocation(line: 454, column: 25, scope: !126)
!346 = !DILocation(line: 454, column: 15, scope: !126)
!347 = !DILocation(line: 454, column: 23, scope: !126)
!348 = !DILocation(line: 455, column: 39, scope: !126)
!349 = !DILocation(line: 455, column: 54, scope: !126)
!350 = !DILocation(line: 455, column: 53, scope: !126)
!351 = !DILocation(line: 455, column: 25, scope: !126)
!352 = !DILocation(line: 455, column: 15, scope: !126)
!353 = !DILocation(line: 455, column: 23, scope: !126)
!354 = !DILocation(line: 456, column: 1, scope: !126)
!355 = !DILocation(line: 535, column: 45, scope: !135)
!356 = !DILocation(line: 540, column: 10, scope: !135)
!357 = !DILocation(line: 542, column: 6, scope: !358)
!358 = distinct !DILexicalBlock(scope: !135, file: !1, line: 542, column: 6)
!359 = !DILocation(line: 542, column: 6, scope: !135)
!360 = !DILocation(line: 544, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 543, column: 3)
!362 = !DILocation(line: 544, column: 25, scope: !361)
!363 = !DILocation(line: 545, column: 17, scope: !361)
!364 = !DILocation(line: 545, column: 25, scope: !361)
!365 = !DILocation(line: 546, column: 3, scope: !361)
!366 = !DILocation(line: 548, column: 3, scope: !135)
!367 = !DILocation(line: 579, column: 45, scope: !139)
!368 = !DILocation(line: 579, column: 61, scope: !139)
!369 = !DILocation(line: 582, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !139, file: !1, line: 582, column: 6)
!371 = !DILocation(line: 582, column: 6, scope: !139)
!372 = !DILocation(line: 584, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 583, column: 3)
!374 = !DILocation(line: 585, column: 3, scope: !373)
!375 = !DILocation(line: 586, column: 1, scope: !139)
!376 = !DILocation(line: 617, column: 43, scope: !143)
!377 = !DILocation(line: 617, column: 59, scope: !143)
!378 = !DILocation(line: 627, column: 9, scope: !143)
!379 = !DILocation(line: 627, column: 14, scope: !143)
!380 = !DILocation(line: 627, column: 21, scope: !143)
!381 = !DILocation(line: 628, column: 14, scope: !143)
!382 = !DILocation(line: 628, column: 21, scope: !143)
!383 = !DILocation(line: 638, column: 1, scope: !143)
!384 = !DILocation(line: 668, column: 42, scope: !168)
!385 = !DILocation(line: 668, column: 58, scope: !168)
!386 = !DILocation(line: 678, column: 15, scope: !168)
!387 = !DILocation(line: 678, column: 22, scope: !168)
!388 = !DILocation(line: 679, column: 15, scope: !168)
!389 = !DILocation(line: 679, column: 22, scope: !168)
!390 = !DILocation(line: 690, column: 1, scope: !168)
!391 = !DILocation(line: 720, column: 43, scope: !174)
!392 = !DILocation(line: 720, column: 59, scope: !174)
!393 = !DILocation(line: 727, column: 15, scope: !174)
!394 = !DILocation(line: 727, column: 23, scope: !174)
!395 = !DILocation(line: 728, column: 15, scope: !174)
!396 = !DILocation(line: 728, column: 23, scope: !174)
!397 = !DILocation(line: 730, column: 1, scope: !174)
!398 = !DILocation(line: 768, column: 41, scope: !179)
!399 = !DILocation(line: 768, column: 57, scope: !179)
!400 = !DILocation(line: 768, column: 75, scope: !179)
!401 = !DILocation(line: 776, column: 11, scope: !179)
!402 = !DILocation(line: 776, column: 19, scope: !179)
!403 = !DILocation(line: 777, column: 11, scope: !179)
!404 = !DILocation(line: 777, column: 19, scope: !179)
!405 = !DILocation(line: 778, column: 11, scope: !179)
!406 = !DILocation(line: 778, column: 19, scope: !179)
!407 = !DILocation(line: 779, column: 33, scope: !179)
!408 = !DILocation(line: 779, column: 21, scope: !179)
!409 = !DILocation(line: 779, column: 62, scope: !179)
!410 = !DILocation(line: 779, column: 42, scope: !179)
!411 = !DILocation(line: 779, column: 69, scope: !179)
!412 = !DILocation(line: 779, column: 40, scope: !179)
!413 = !DILocation(line: 779, column: 11, scope: !179)
!414 = !DILocation(line: 779, column: 15, scope: !179)
!415 = !DILocation(line: 779, column: 19, scope: !179)
!416 = !DILocation(line: 781, column: 1, scope: !179)
!417 = !DILocation(line: 818, column: 41, scope: !185)
!418 = !DILocation(line: 818, column: 57, scope: !185)
!419 = !DILocation(line: 818, column: 75, scope: !185)
!420 = !DILocation(line: 826, column: 39, scope: !185)
!421 = !DILocation(line: 826, column: 43, scope: !185)
!422 = !DILocation(line: 826, column: 25, scope: !185)
!423 = !DILocation(line: 826, column: 15, scope: !185)
!424 = !DILocation(line: 826, column: 23, scope: !185)
!425 = !DILocation(line: 827, column: 39, scope: !185)
!426 = !DILocation(line: 827, column: 54, scope: !185)
!427 = !DILocation(line: 827, column: 53, scope: !185)
!428 = !DILocation(line: 827, column: 25, scope: !185)
!429 = !DILocation(line: 827, column: 15, scope: !185)
!430 = !DILocation(line: 827, column: 23, scope: !185)
!431 = !DILocation(line: 828, column: 1, scope: !185)
