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
  ret i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterDefaultTimerFunctions() #1 {
  %functions.i1 = alloca %struct.cClockFuncs, align 8
  %functions.i = alloca %struct.cClockFuncs, align 8
  %1 = bitcast %struct.cClockFuncs* %functions.i to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #2
  %2 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 1
  store i32 1, i32* %2, align 8, !tbaa !2
  %3 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 2
  store i8* (i32)* @CCTKi_TimerGetTimeOfDayCreate, i8* (i32)** %3, align 8, !tbaa !8
  %4 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 3
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayDestroy, void (i32, i8*)** %4, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 4
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStart, void (i32, i8*)** %5, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 5
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayStop, void (i32, i8*)** %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 6
  store void (i32, i8*)* @CCTKi_TimerGetTimeOfDayReset, void (i32, i8*)** %7, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 7
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDayGet, void (i32, i8*, %struct.cTimerVal*)** %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.cClockFuncs* %functions.i, i64 0, i32 8
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetTimeOfDaySet, void (i32, i8*, %struct.cTimerVal*)** %9, align 8, !tbaa !14
  %10 = call i32 @CCTK_ClockRegister(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), %struct.cClockFuncs* %functions.i) #5
  call void @llvm.lifetime.end(i64 72, i8* %1) #2
  %11 = bitcast %struct.cClockFuncs* %functions.i1 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %11) #2
  %12 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 1
  store i32 1, i32* %12, align 8, !tbaa !2
  %13 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 2
  store i8* (i32)* @CCTKi_TimerGetrUsageCreate, i8* (i32)** %13, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 3
  store void (i32, i8*)* @CCTKi_TimerGetrUsageDestroy, void (i32, i8*)** %14, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 4
  store void (i32, i8*)* @CCTKi_TimerGetrUsageStart, void (i32, i8*)** %15, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 5
  store void (i32, i8*)* @CCTKi_TimerGetrUsageStop, void (i32, i8*)** %16, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 6
  store void (i32, i8*)* @CCTKi_TimerGetrUsageReset, void (i32, i8*)** %17, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 7
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageGet, void (i32, i8*, %struct.cTimerVal*)** %18, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.cClockFuncs* %functions.i1, i64 0, i32 8
  store void (i32, i8*, %struct.cTimerVal*)* @CCTKi_TimerGetrUsageSet, void (i32, i8*, %struct.cTimerVal*)** %19, align 8, !tbaa !14
  %20 = call i32 @CCTK_ClockRegister(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), %struct.cClockFuncs* %functions.i1) #5
  call void @llvm.lifetime.end(i64 72, i8* %11) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal noalias i8* @CCTKi_TimerGetTimeOfDayCreate(i32 %timernum) #1 {
  %1 = tail call i8* @malloc(i64 32) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %1 to i64*
  store i64 0, i64* %4, align 8, !tbaa !15
  %5 = getelementptr inbounds i8* %1, i64 8
  %6 = bitcast i8* %5 to i32*
  store i32 0, i32* %6, align 4, !tbaa !19
  br label %7

; <label>:7                                       ; preds = %0, %3
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayDestroy(i32 %timernum, i8* %data) #1 {
  %1 = icmp eq i8* %data, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %data) #6
  br label %3

; <label>:3                                       ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayStart(i32 %timernum, i8* nocapture %idata) #1 {
  %1 = getelementptr inbounds i8* %idata, i64 16
  %2 = bitcast i8* %1 to i64*
  store i64 0, i64* %2, align 8, !tbaa !20
  %3 = getelementptr inbounds i8* %idata, i64 24
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayStop(i32 %timernum, i8* nocapture %idata) #1 {
  %1 = bitcast i8* %idata to i64*
  store i64 0, i64* %1, align 8, !tbaa !15
  %2 = getelementptr inbounds i8* %idata, i64 8
  %3 = bitcast i8* %2 to i32*
  store i32 0, i32* %3, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayReset(i32 %timernum, i8* nocapture %idata) #1 {
  %1 = getelementptr inbounds i8* %idata, i64 16
  %2 = bitcast i8* %1 to i64*
  store i64 0, i64* %2, align 8, !tbaa !20
  %3 = getelementptr inbounds i8* %idata, i64 24
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 4, !tbaa !21
  %5 = bitcast i8* %idata to i64*
  store i64 0, i64* %5, align 8, !tbaa !15
  %6 = getelementptr inbounds i8* %idata, i64 8
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDayGet(i32 %timernum, i8* nocapture readonly %idata, %struct.cTimerVal* nocapture %vals) #1 {
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 0
  store i32 3, i32* %1, align 4, !tbaa !22
  %2 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 1
  store i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8** %2, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8** %3, align 8, !tbaa !25
  %4 = bitcast i8* %idata to i64*
  %5 = load i64* %4, align 8, !tbaa !15
  %6 = sitofp i64 %5 to double
  %7 = getelementptr inbounds i8* %idata, i64 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32* %8, align 4, !tbaa !19
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 1.000000e+06
  %12 = fadd double %6, %11
  %13 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3
  %14 = bitcast %union.anon* %13 to double*
  store double %12, double* %14, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetTimeOfDaySet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture readonly %vals) #1 {
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3
  %2 = bitcast %union.anon* %1 to double*
  %3 = load double* %2, align 8, !tbaa !26
  %4 = fptosi double %3 to i64
  %5 = bitcast i8* %idata to i64*
  store i64 %4, i64* %5, align 8, !tbaa !15
  %6 = fmul double %3, 1.000000e+06
  %7 = sitofp i64 %4 to double
  %8 = fsub double %6, %7
  %9 = fptosi double %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds i8* %idata, i64 8
  %12 = bitcast i8* %11 to i32*
  store i32 %10, i32* %12, align 4, !tbaa !19
  ret void
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
  %1 = tail call i8* @malloc(i64 32) #5
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %1 to i64*
  store i64 0, i64* %4, align 8, !tbaa !15
  %5 = getelementptr inbounds i8* %1, i64 8
  %6 = bitcast i8* %5 to i32*
  store i32 0, i32* %6, align 4, !tbaa !19
  br label %7

; <label>:7                                       ; preds = %0, %3
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageDestroy(i32 %timernum, i8* %data) #1 {
  %1 = icmp eq i8* %data, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %data) #6
  br label %3

; <label>:3                                       ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageStart(i32 %timernum, i8* nocapture %idata) #1 {
  %1 = getelementptr inbounds i8* %idata, i64 16
  %2 = bitcast i8* %1 to i64*
  store i64 0, i64* %2, align 8, !tbaa !20
  %3 = getelementptr inbounds i8* %idata, i64 24
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageStop(i32 %timernum, i8* nocapture %idata) #1 {
  %1 = bitcast i8* %idata to i64*
  store i64 0, i64* %1, align 8, !tbaa !15
  %2 = getelementptr inbounds i8* %idata, i64 8
  %3 = bitcast i8* %2 to i32*
  store i32 0, i32* %3, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageReset(i32 %timernum, i8* nocapture %idata) #1 {
  %1 = bitcast i8* %idata to i64*
  store i64 0, i64* %1, align 8, !tbaa !15
  %2 = getelementptr inbounds i8* %idata, i64 8
  %3 = bitcast i8* %2 to i32*
  store i32 0, i32* %3, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageGet(i32 %timernum, i8* nocapture readonly %idata, %struct.cTimerVal* nocapture %vals) #1 {
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 0
  store i32 3, i32* %1, align 4, !tbaa !22
  %2 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8** %2, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8** %3, align 8, !tbaa !25
  %4 = bitcast i8* %idata to i64*
  %5 = load i64* %4, align 8, !tbaa !15
  %6 = sitofp i64 %5 to double
  %7 = getelementptr inbounds i8* %idata, i64 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32* %8, align 4, !tbaa !19
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 1.000000e+06
  %12 = fadd double %6, %11
  %13 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3
  %14 = bitcast %union.anon* %13 to double*
  store double %12, double* %14, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @CCTKi_TimerGetrUsageSet(i32 %timernum, i8* nocapture %idata, %struct.cTimerVal* nocapture readonly %vals) #1 {
  %1 = getelementptr inbounds %struct.cTimerVal* %vals, i64 0, i32 3
  %2 = bitcast %union.anon* %1 to double*
  %3 = load double* %2, align 8, !tbaa !26
  %4 = fptosi double %3 to i64
  %5 = bitcast i8* %idata to i64*
  store i64 %4, i64* %5, align 8, !tbaa !15
  %6 = fmul double %3, 1.000000e+06
  %7 = sitofp i64 %4 to double
  %8 = fsub double %6, %7
  %9 = fptosi double %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds i8* %idata, i64 8
  %12 = bitcast i8* %11 to i32*
  store i32 %10, i32* %12, align 4, !tbaa !19
  ret void
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"", !4, i64 0, !7, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 16}
!9 = !{!3, !4, i64 24}
!10 = !{!3, !4, i64 32}
!11 = !{!3, !4, i64 40}
!12 = !{!3, !4, i64 48}
!13 = !{!3, !4, i64 56}
!14 = !{!3, !4, i64 64}
!15 = !{!16, !18, i64 0}
!16 = !{!"", !17, i64 0, !17, i64 16}
!17 = !{!"timeval", !18, i64 0, !7, i64 8}
!18 = !{!"long", !5, i64 0}
!19 = !{!16, !7, i64 8}
!20 = !{!16, !18, i64 16}
!21 = !{!16, !7, i64 24}
!22 = !{!23, !5, i64 0}
!23 = !{!"", !5, i64 0, !4, i64 8, !4, i64 16, !5, i64 24}
!24 = !{!23, !4, i64 8}
!25 = !{!23, !4, i64 16}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !5, i64 0}
