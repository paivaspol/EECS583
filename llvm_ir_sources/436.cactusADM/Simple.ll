; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { double, double, double, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@timepriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"Time Step not defined for greater than 4 dimensions\00", align 1
@.str6 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusBase/Time/src/Simple.c,v 1.11 2001/05/10 12:35:44 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Time_Simple_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Time_Simple(%struct.cGH* nocapture %cctkGH) #1 {
  %1 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 1), align 8, !tbaa !2
  %2 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !8
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 9
  %5 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 10
  %6 = load double** %5, align 8, !tbaa !11
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #3
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #3
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %.thread3

; <label>:11                                      ; preds = %0
  %12 = load double* %6, align 8, !tbaa !12
  %13 = icmp sgt i32 %3, 1
  br i1 %13, label %14, label %.thread3

; <label>:14                                      ; preds = %11
  %15 = getelementptr inbounds double* %6, i64 1
  %16 = load double* %15, align 8, !tbaa !12
  %17 = fcmp olt double %12, %16
  %min_spacing.0. = select i1 %17, double %12, double %16
  %18 = icmp sgt i32 %3, 2
  br i1 %18, label %19, label %.thread3

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds double* %6, i64 2
  %21 = load double* %20, align 8, !tbaa !12
  %22 = fcmp olt double %min_spacing.0., %21
  %min_spacing.1. = select i1 %22, double %min_spacing.0., double %21
  %23 = icmp sgt i32 %3, 3
  br i1 %23, label %24, label %.thread3

; <label>:24                                      ; preds = %19
  %25 = tail call i32 @CCTK_Warn(i32 0, i32 52, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0)) #3
  br label %.thread3

.thread3:                                         ; preds = %0, %11, %14, %24, %19
  %min_spacing.24 = phi double [ %min_spacing.1., %24 ], [ %min_spacing.1., %19 ], [ %min_spacing.0., %14 ], [ %12, %11 ], [ 0.000000e+00, %0 ]
  %26 = fmul double %1, %min_spacing.24
  store double %26, double* %4, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 8}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !7, i64 24}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !4, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !10, i64 112, !4, i64 120, !10, i64 128, !10, i64 136, !10, i64 144}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!9, !10, i64 72}
!12 = !{!4, !4, i64 0}
!13 = !{!9, !4, i64 64}
