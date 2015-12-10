; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsVariablesInitialise() #0 {
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CactusBindingsVariables_IOASCII_Initialise() #2
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CactusBindingsVariables_BenchADM_Initialise() #2
  br label %10

; <label>:10                                      ; preds = %5, %8
  %11 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CactusBindingsVariables_Cactus_Initialise() #2
  br label %15

; <label>:15                                      ; preds = %10, %13
  %16 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CactusBindingsVariables_Boundary_Initialise() #2
  br label %20

; <label>:20                                      ; preds = %15, %18
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CactusBindingsVariables_PUGH_Initialise() #2
  br label %25

; <label>:25                                      ; preds = %20, %23
  %26 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CactusBindingsVariables_IOUtil_Initialise() #2
  br label %30

; <label>:30                                      ; preds = %25, %28
  %31 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CactusBindingsVariables_PUGHSlab_Initialise() #2
  br label %35

; <label>:35                                      ; preds = %30, %33
  %36 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CactusBindingsVariables_CartGrid3D_Initialise() #2
  br label %40

; <label>:40                                      ; preds = %35, %38
  %41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CactusBindingsVariables_IOBasic_Initialise() #2
  br label %45

; <label>:45                                      ; preds = %40, %43
  %46 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CactusBindingsVariables_PUGHReduce_Initialise() #2
  br label %50

; <label>:50                                      ; preds = %45, %48
  %51 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CactusBindingsVariables_IDLinearWaves_Initialise() #2
  br label %55

; <label>:55                                      ; preds = %50, %53
  %56 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CactusBindingsVariables_Time_Initialise() #2
  br label %60

; <label>:60                                      ; preds = %55, %58
  %61 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CactusBindingsVariables_Einstein_Initialise() #2
  br label %65

; <label>:65                                      ; preds = %60, %63
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOASCII_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_BenchADM_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Cactus_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Boundary_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGH_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOUtil_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGHSlab_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_CartGrid3D_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOBasic_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGHReduce_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IDLinearWaves_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Time_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Einstein_Initialise() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
