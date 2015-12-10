; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Courant.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }
%struct.anon.0 = type { double, double, double, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@timerest_ = external global %struct.anon
@timepriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [74 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Courant.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"Time Step not defined for greater than 4 dimensions\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"Time step set to %f\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"Courant timestep would be %f\00", align 1
@.str10 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusBase/Time/src/Courant.c,v 1.15 2002/01/02 17:20:16 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Time_Courant_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Time_Courant(%struct.cGH* nocapture %cctkGH) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !tbaa !2
  %2 = load i32* getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 1), align 8, !tbaa !8
  %3 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 0), align 8, !tbaa !9
  %4 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 1), align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !13
  %7 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 9
  %8 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 10
  %9 = load double** %8, align 8, !tbaa !15
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17
  %13 = load i8**** %12, align 8, !tbaa !16
  %14 = getelementptr inbounds i8*** %13, i64 %11
  %15 = bitcast i8*** %14 to double***
  %16 = load double*** %15, align 8, !tbaa !17
  %17 = load double** %16, align 8, !tbaa !17
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #4
  %19 = sext i32 %18 to i64
  %20 = load i8**** %12, align 8, !tbaa !16
  %21 = getelementptr inbounds i8*** %20, i64 %19
  %22 = bitcast i8*** %21 to double***
  %23 = load double*** %22, align 8, !tbaa !17
  %24 = load double** %23, align 8, !tbaa !17
  %25 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #4
  %26 = sext i32 %25 to i64
  %27 = load i8**** %12, align 8, !tbaa !16
  %28 = getelementptr inbounds i8*** %27, i64 %26
  %29 = bitcast i8*** %28 to double***
  %30 = load double*** %29, align 8, !tbaa !17
  %31 = load double** %30, align 8, !tbaa !17
  %32 = load double* %9, align 8, !tbaa !18
  %33 = icmp sgt i32 %6, 1
  br i1 %33, label %34, label %.thread1

; <label>:34                                      ; preds = %0
  %35 = getelementptr inbounds double* %9, i64 1
  %36 = load double* %35, align 8, !tbaa !18
  %37 = fcmp olt double %32, %36
  %. = select i1 %37, double %32, double %36
  %38 = icmp sgt i32 %6, 2
  br i1 %38, label %39, label %.thread1

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds double* %9, i64 2
  %41 = load double* %40, align 8, !tbaa !18
  %42 = fcmp olt double %., %41
  %min_spacing.0. = select i1 %42, double %., double %41
  %43 = icmp sgt i32 %6, 3
  br i1 %43, label %44, label %.thread1

; <label>:44                                      ; preds = %39
  %45 = tail call i32 @CCTK_Warn(i32 0, i32 51, i8* getelementptr inbounds ([74 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0)) #4
  br label %.thread1

.thread1:                                         ; preds = %0, %34, %44, %39
  %min_spacing.12 = phi double [ %min_spacing.0., %44 ], [ %min_spacing.0., %39 ], [ %., %34 ], [ %32, %0 ]
  %46 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

; <label>:48                                      ; preds = %.thread1
  %49 = load double* %24, align 8, !tbaa !18
  %50 = fmul double %3, %49
  %51 = sitofp i32 %6 to double
  %52 = tail call double @sqrt(double %51) #5
  %53 = fdiv double %50, %52
  store double %53, double* %17, align 8, !tbaa !18
  br label %63

; <label>:54                                      ; preds = %.thread1
  %55 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

; <label>:57                                      ; preds = %54
  %58 = load double* %31, align 8, !tbaa !18
  %59 = fdiv double %3, %58
  %60 = sitofp i32 %6 to double
  %61 = tail call double @sqrt(double %60) #5
  %62 = fdiv double %59, %61
  store double %62, double* %17, align 8, !tbaa !18
  br label %63

; <label>:63                                      ; preds = %54, %57, %48
  %64 = icmp eq i32 %2, 0
  br i1 %64, label %65, label %68

; <label>:65                                      ; preds = %63
  %66 = load double* %17, align 8, !tbaa !18
  store double %66, double* %7, align 8, !tbaa !19
  %67 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), double %66) #4
  br label %72

; <label>:68                                      ; preds = %63
  %69 = fmul double %4, %min_spacing.12
  store double %69, double* %7, align 8, !tbaa !19
  %70 = load double* %17, align 8, !tbaa !18
  %71 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str9, i64 0, i64 0), double %70) #4
  br label %72

; <label>:72                                      ; preds = %68, %65
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !7, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !7, i64 8}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24}
!11 = !{!"double", !5, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !7, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !11, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !11, i64 120, !4, i64 128, !4, i64 136, !4, i64 144}
!15 = !{!14, !4, i64 72}
!16 = !{!14, !4, i64 128}
!17 = !{!4, !4, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!14, !11, i64 64}
