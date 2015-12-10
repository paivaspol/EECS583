; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c'
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
define i32 @CCTKi_BindingsScheduleInitialise() #0 {
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @CCTKi_BindingsSchedule_BenchADM() #2
  br label %4

; <label>:4                                       ; preds = %0, %3
  %5 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %4
  tail call void @CCTKi_BindingsSchedule_Boundary() #2
  br label %8

; <label>:8                                       ; preds = %4, %7
  %9 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %8
  tail call void @CCTKi_BindingsSchedule_Cactus() #2
  br label %12

; <label>:12                                      ; preds = %8, %11
  %13 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %12
  tail call void @CCTKi_BindingsSchedule_CartGrid3D() #2
  br label %16

; <label>:16                                      ; preds = %12, %15
  %17 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %16
  tail call void @CCTKi_BindingsSchedule_Einstein() #2
  br label %20

; <label>:20                                      ; preds = %16, %19
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %20
  tail call void @CCTKi_BindingsSchedule_IDLinearWaves() #2
  br label %24

; <label>:24                                      ; preds = %20, %23
  %25 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

; <label>:27                                      ; preds = %24
  tail call void @CCTKi_BindingsSchedule_IOASCII() #2
  br label %28

; <label>:28                                      ; preds = %24, %27
  %29 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

; <label>:31                                      ; preds = %28
  tail call void @CCTKi_BindingsSchedule_IOBasic() #2
  br label %32

; <label>:32                                      ; preds = %28, %31
  %33 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

; <label>:35                                      ; preds = %32
  tail call void @CCTKi_BindingsSchedule_IOUtil() #2
  br label %36

; <label>:36                                      ; preds = %32, %35
  %37 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

; <label>:39                                      ; preds = %36
  tail call void @CCTKi_BindingsSchedule_PUGH() #2
  br label %40

; <label>:40                                      ; preds = %36, %39
  %41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0)) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43                                      ; preds = %40
  tail call void @CCTKi_BindingsSchedule_PUGHReduce() #2
  br label %44

; <label>:44                                      ; preds = %40, %43
  %45 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0)) #2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %44
  tail call void @CCTKi_BindingsSchedule_PUGHSlab() #2
  br label %48

; <label>:48                                      ; preds = %44, %47
  %49 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

; <label>:51                                      ; preds = %48
  tail call void @CCTKi_BindingsSchedule_Time() #2
  br label %52

; <label>:52                                      ; preds = %48, %51
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_BenchADM() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Boundary() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Cactus() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_CartGrid3D() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Einstein() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IDLinearWaves() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOASCII() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOBasic() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOUtil() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGH() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGHReduce() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGHSlab() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Time() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
