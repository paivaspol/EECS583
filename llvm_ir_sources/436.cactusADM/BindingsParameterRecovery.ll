; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameterRecovery.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"Time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecoveryInitialise() #0 {
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTKi_BindingsParameterRecovery_BenchADM() #2
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %89, label %6

; <label>:6                                       ; preds = %0, %3
  %retval.1 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %7 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9                                       ; preds = %6
  %10 = tail call i32 @CCTKi_BindingsParameterRecovery_Boundary() #2
  %11 = icmp eq i32 %10, 0
  %retval.1. = select i1 %11, i32 %retval.1, i32 %10
  %12 = icmp sgt i32 %retval.1., 0
  br i1 %12, label %89, label %13

; <label>:13                                      ; preds = %6, %9
  %retval.3 = phi i32 [ %retval.1., %9 ], [ %retval.1, %6 ]
  %14 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

; <label>:16                                      ; preds = %13
  %17 = tail call i32 @CCTKi_BindingsParameterRecovery_Cactus() #2
  %18 = icmp eq i32 %17, 0
  %retval.3. = select i1 %18, i32 %retval.3, i32 %17
  %19 = icmp sgt i32 %retval.3., 0
  br i1 %19, label %89, label %20

; <label>:20                                      ; preds = %13, %16
  %retval.5 = phi i32 [ %retval.3., %16 ], [ %retval.3, %13 ]
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) #2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTKi_BindingsParameterRecovery_CartGrid3D() #2
  %25 = icmp eq i32 %24, 0
  %retval.5. = select i1 %25, i32 %retval.5, i32 %24
  %26 = icmp sgt i32 %retval.5., 0
  br i1 %26, label %89, label %27

; <label>:27                                      ; preds = %20, %23
  %retval.7 = phi i32 [ %retval.5., %23 ], [ %retval.5, %20 ]
  %28 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

; <label>:30                                      ; preds = %27
  %31 = tail call i32 @CCTKi_BindingsParameterRecovery_Einstein() #2
  %32 = icmp eq i32 %31, 0
  %retval.7. = select i1 %32, i32 %retval.7, i32 %31
  %33 = icmp sgt i32 %retval.7., 0
  br i1 %33, label %89, label %34

; <label>:34                                      ; preds = %27, %30
  %retval.9 = phi i32 [ %retval.7., %30 ], [ %retval.7, %27 ]
  %35 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

; <label>:37                                      ; preds = %34
  %38 = tail call i32 @CCTKi_BindingsParameterRecovery_IDLinearWaves() #2
  %39 = icmp eq i32 %38, 0
  %retval.9. = select i1 %39, i32 %retval.9, i32 %38
  %40 = icmp sgt i32 %retval.9., 0
  br i1 %40, label %89, label %41

; <label>:41                                      ; preds = %34, %37
  %retval.11 = phi i32 [ %retval.9., %37 ], [ %retval.9, %34 ]
  %42 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

; <label>:44                                      ; preds = %41
  %45 = tail call i32 @CCTKi_BindingsParameterRecovery_IOASCII() #2
  %46 = icmp eq i32 %45, 0
  %retval.11. = select i1 %46, i32 %retval.11, i32 %45
  %47 = icmp sgt i32 %retval.11., 0
  br i1 %47, label %89, label %48

; <label>:48                                      ; preds = %41, %44
  %retval.13 = phi i32 [ %retval.11., %44 ], [ %retval.11, %41 ]
  %49 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51                                      ; preds = %48
  %52 = tail call i32 @CCTKi_BindingsParameterRecovery_IOBasic() #2
  %53 = icmp eq i32 %52, 0
  %retval.13. = select i1 %53, i32 %retval.13, i32 %52
  %54 = icmp sgt i32 %retval.13., 0
  br i1 %54, label %89, label %55

; <label>:55                                      ; preds = %48, %51
  %retval.15 = phi i32 [ %retval.13., %51 ], [ %retval.13, %48 ]
  %56 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTKi_BindingsParameterRecovery_IOUtil() #2
  %60 = icmp eq i32 %59, 0
  %retval.15. = select i1 %60, i32 %retval.15, i32 %59
  %61 = icmp sgt i32 %retval.15., 0
  br i1 %61, label %89, label %62

; <label>:62                                      ; preds = %55, %58
  %retval.17 = phi i32 [ %retval.15., %58 ], [ %retval.15, %55 ]
  %63 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

; <label>:65                                      ; preds = %62
  %66 = tail call i32 @CCTKi_BindingsParameterRecovery_PUGH() #2
  %67 = icmp eq i32 %66, 0
  %retval.17. = select i1 %67, i32 %retval.17, i32 %66
  %68 = icmp sgt i32 %retval.17., 0
  br i1 %68, label %89, label %69

; <label>:69                                      ; preds = %62, %65
  %retval.19 = phi i32 [ %retval.17., %65 ], [ %retval.17, %62 ]
  %70 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0)) #2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

; <label>:72                                      ; preds = %69
  %73 = tail call i32 @CCTKi_BindingsParameterRecovery_PUGHReduce() #2
  %74 = icmp eq i32 %73, 0
  %retval.19. = select i1 %74, i32 %retval.19, i32 %73
  %75 = icmp sgt i32 %retval.19., 0
  br i1 %75, label %89, label %76

; <label>:76                                      ; preds = %69, %72
  %retval.21 = phi i32 [ %retval.19., %72 ], [ %retval.19, %69 ]
  %77 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0)) #2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

; <label>:79                                      ; preds = %76
  %80 = tail call i32 @CCTKi_BindingsParameterRecovery_PUGHSlab() #2
  %81 = icmp eq i32 %80, 0
  %retval.21. = select i1 %81, i32 %retval.21, i32 %80
  %82 = icmp sgt i32 %retval.21., 0
  br i1 %82, label %89, label %83

; <label>:83                                      ; preds = %76, %79
  %retval.23 = phi i32 [ %retval.21., %79 ], [ %retval.21, %76 ]
  %84 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

; <label>:86                                      ; preds = %83
  %87 = tail call i32 @CCTKi_BindingsParameterRecovery_Time() #2
  %88 = icmp eq i32 %87, 0
  %retval.23. = select i1 %88, i32 %retval.23, i32 %87
  ret i32 %retval.23.

; <label>:89                                      ; preds = %83, %79, %72, %65, %58, %51, %44, %37, %30, %23, %16, %9, %3
  %retval.24 = phi i32 [ %4, %3 ], [ %retval.1., %9 ], [ %retval.3., %16 ], [ %retval.5., %23 ], [ %retval.7., %30 ], [ %retval.9., %37 ], [ %retval.11., %44 ], [ %retval.13., %51 ], [ %retval.15., %58 ], [ %retval.17., %65 ], [ %retval.19., %72 ], [ %retval.21., %79 ], [ %retval.23, %83 ]
  ret i32 %retval.24
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_BenchADM() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_Boundary() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_Cactus() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_CartGrid3D() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_Einstein() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_IDLinearWaves() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_IOASCII() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_IOBasic() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_IOUtil() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_PUGH() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_PUGHReduce() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_PUGHSlab() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecovery_Time() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
