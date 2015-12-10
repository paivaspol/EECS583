; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i32 }
%struct.anon.1 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@benchadmpriv_ = external global %struct.anon.0
@einsteinrest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [17 x i8] c"Bench_ParamCheck\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"benchadm\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"Check parameters\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"ADM\00", align 1
@.str7 = private unnamed_addr constant [26 x i8] c"BenchADM::ADM_metric_prev\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"BenchADM::ADM_curv_stag\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"BenchRegisterSlicing\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"Register slicings\00", align 1
@.str11 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Bench_PreLoop\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Setup for ADM\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"InitialEinstein\00", align 1
@.str17 = private unnamed_addr constant [29 x i8] c"Bench_StaggeredLeapfrog1a_TS\00", align 1
@.str18 = private unnamed_addr constant [51 x i8] c"Time symmetric initial data for staggered leapfrog\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"InitialFlat\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"LapseOne\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"LapseGaussian\00", align 1
@.str24 = private unnamed_addr constant [26 x i8] c"Bench_StaggeredLeapfrog1a\00", align 1
@.str25 = private unnamed_addr constant [52 x i8] c"Time asymmetric initial data for staggered leapfrog\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"BenchADM::ADM_sources\00", align 1
@.str27 = private unnamed_addr constant [25 x i8] c"Bench_StaggeredLeapfrog2\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"Evolve using Staggered Leapfrog\00", align 1
@.str29 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_BenchADM() #0 {
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @benchadmpriv_, i64 0, i32 1), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon.1* @einsteinrest_, i64 0, i32 6), align 8, !tbaa !8
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Bench_ParamCheck to i8*), i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %4 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #2
  %8 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #2
  %9 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  %10 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  %11 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @BenchRegisterSlicing to i8*), i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %12 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_preloop_ to i8*), i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %16, label %14

; <label>:14                                      ; preds = %6
  %15 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog1a_ts_ to i8*), i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #2
  br label %18

; <label>:16                                      ; preds = %6
  %17 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog1a_ to i8*), i8* getelementptr inbounds ([26 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #2
  br label %18

; <label>:18                                      ; preds = %16, %14
  %19 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog2_ to i8*), i8* getelementptr inbounds ([25 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  br label %20

; <label>:20                                      ; preds = %0, %18
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @Bench_ParamCheck() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @BenchRegisterSlicing() #1

; Function Attrs: optsize
declare i32 @bench_preloop_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog1a_ts_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog1a_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog2_() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"", !4, i64 0, !7, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!9, !4, i64 48}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136}
!10 = !{!"double", !5, i64 0}
