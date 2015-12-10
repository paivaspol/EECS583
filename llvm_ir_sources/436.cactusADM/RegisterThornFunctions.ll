; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c'
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
define i32 @CCTKBindings_RegisterThornFunctions() #0 {
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTKBindings_IOASCIIAliases() #2
  br label %5

; <label>:5                                       ; preds = %0, %3
  %retval.0 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %6 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTKBindings_BenchADMAliases() #2
  br label %10

; <label>:10                                      ; preds = %5, %8
  %retval.1 = phi i32 [ %9, %8 ], [ %retval.0, %5 ]
  %11 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTKBindings_CactusAliases() #2
  br label %15

; <label>:15                                      ; preds = %10, %13
  %retval.2 = phi i32 [ %14, %13 ], [ %retval.1, %10 ]
  %16 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTKBindings_BoundaryAliases() #2
  br label %20

; <label>:20                                      ; preds = %15, %18
  %retval.3 = phi i32 [ %19, %18 ], [ %retval.2, %15 ]
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTKBindings_PUGHAliases() #2
  br label %25

; <label>:25                                      ; preds = %20, %23
  %retval.4 = phi i32 [ %24, %23 ], [ %retval.3, %20 ]
  %26 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTKBindings_IOUtilAliases() #2
  br label %30

; <label>:30                                      ; preds = %25, %28
  %retval.5 = phi i32 [ %29, %28 ], [ %retval.4, %25 ]
  %31 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTKBindings_PUGHSlabAliases() #2
  br label %35

; <label>:35                                      ; preds = %30, %33
  %retval.6 = phi i32 [ %34, %33 ], [ %retval.5, %30 ]
  %36 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTKBindings_CartGrid3DAliases() #2
  br label %40

; <label>:40                                      ; preds = %35, %38
  %retval.7 = phi i32 [ %39, %38 ], [ %retval.6, %35 ]
  %41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTKBindings_IOBasicAliases() #2
  br label %45

; <label>:45                                      ; preds = %40, %43
  %retval.8 = phi i32 [ %44, %43 ], [ %retval.7, %40 ]
  %46 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CCTKBindings_PUGHReduceAliases() #2
  br label %50

; <label>:50                                      ; preds = %45, %48
  %retval.9 = phi i32 [ %49, %48 ], [ %retval.8, %45 ]
  %51 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CCTKBindings_IDLinearWavesAliases() #2
  br label %55

; <label>:55                                      ; preds = %50, %53
  %retval.10 = phi i32 [ %54, %53 ], [ %retval.9, %50 ]
  %56 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTKBindings_TimeAliases() #2
  br label %60

; <label>:60                                      ; preds = %55, %58
  %retval.11 = phi i32 [ %59, %58 ], [ %retval.10, %55 ]
  %61 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTKBindings_EinsteinAliases() #2
  br label %65

; <label>:65                                      ; preds = %60, %63
  %retval.12 = phi i32 [ %64, %63 ], [ %retval.11, %60 ]
  ret i32 %retval.12
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOASCIIAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_BenchADMAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_CactusAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_BoundaryAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOUtilAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHSlabAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_CartGrid3DAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOBasicAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHReduceAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IDLinearWavesAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_TimeAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_EinsteinAliases() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
