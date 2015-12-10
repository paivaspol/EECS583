; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { i8*, i32 }

@einsteinrest_ = external global %struct.anon
@timerest_ = external global %struct.anon.2
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"psiminustwo\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"isotropic\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"courant\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_Einstein() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8), align 8, !tbaa !9
  %3 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9), align 8, !tbaa !10
  %4 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !tbaa !11
  %5 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !tbaa !12
  %6 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !tbaa !13
  %7 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #2
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #2
  %9 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %5, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #2
  br label %13

; <label>:13                                      ; preds = %0, %11
  %14 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #2
  %15 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #2
  %16 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) #2
  %17 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %13
  %20 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #2
  %21 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #2
  br label %22

; <label>:22                                      ; preds = %13, %19
  %23 = tail call i32 @CCTK_Equals(i8* %6, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %22
  %26 = tail call i32 @CCTK_Equals(i8* %6, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) #2
  br label %27

; <label>:27                                      ; preds = %22, %25
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 56}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 64}
!10 = !{!3, !7, i64 72}
!11 = !{!3, !7, i64 88}
!12 = !{!3, !7, i64 96}
!13 = !{!14, !7, i64 0}
!14 = !{!"", !7, i64 0, !8, i64 8}
