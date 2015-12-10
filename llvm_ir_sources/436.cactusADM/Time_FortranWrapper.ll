; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Time::couranttemps\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"time::speedvars\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperTime(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  %1 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !tbaa !2
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, align 4, !tbaa !2
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #2
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, align 4, !tbaa !2
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #2
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, align 4, !tbaa !2
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #2
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0)) #2
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  br label %25

; <label>:25                                      ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ %21, %20 ]
  %27 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, double*, double*, double*)*
  %28 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %29 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2
  %30 = load i32** %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %32 = load i32** %31, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %34 = load i32** %33, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %36 = load i32** %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %38 = load i32** %37, align 8, !tbaa !13
  %39 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8
  %40 = load i32** %39, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7
  %42 = load i32** %41, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %44 = load i32** %43, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9
  %46 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %47 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %48 = load double** %47, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11
  %50 = load double** %49, align 8, !tbaa !18
  %51 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %52 = load i32** %51, align 8, !tbaa !19
  %53 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  %54 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %55 = load i32** %54, align 8, !tbaa !20
  %56 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %57 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !tbaa !2
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %67, label %59

; <label>:59                                      ; preds = %25
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %62 = load i8**** %61, align 8, !tbaa !21
  %63 = getelementptr inbounds i8*** %62, i64 %60
  %64 = bitcast i8*** %63 to double***
  %65 = load double*** %64, align 8, !tbaa !22
  %66 = load double** %65, align 8, !tbaa !22
  br label %67

; <label>:67                                      ; preds = %25, %59
  %68 = phi double* [ %66, %59 ], [ null, %25 ]
  %69 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %79, label %71

; <label>:71                                      ; preds = %67
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %74 = load i8**** %73, align 8, !tbaa !21
  %75 = getelementptr inbounds i8*** %74, i64 %72
  %76 = bitcast i8*** %75 to double***
  %77 = load double*** %76, align 8, !tbaa !22
  %78 = load double** %77, align 8, !tbaa !22
  br label %79

; <label>:79                                      ; preds = %67, %71
  %80 = phi double* [ %78, %71 ], [ null, %67 ]
  %81 = icmp slt i32 %26, 0
  br i1 %81, label %90, label %82

; <label>:82                                      ; preds = %79
  %83 = sext i32 %26 to i64
  %84 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %85 = load i8**** %84, align 8, !tbaa !21
  %86 = getelementptr inbounds i8*** %85, i64 %83
  %87 = bitcast i8*** %86 to double***
  %88 = load double*** %87, align 8, !tbaa !22
  %89 = load double** %88, align 8, !tbaa !22
  br label %90

; <label>:90                                      ; preds = %79, %82
  %91 = phi double* [ %89, %82 ], [ null, %79 ]
  tail call void %27(i32* %28, i32* %30, i32* %32, i32* %34, i32* %36, i32* %38, i32* %40, i32* %42, i32* %44, double* %45, double* %46, double* %48, double* %50, i32* %52, i32* %53, i32* %55, i32* %56, %struct.cGH* %GH, double* %68, double* %80, double* %91) #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !3, i64 0, !3, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !3, i64 104, !8, i64 112, !9, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!7, !8, i64 16}
!11 = !{!7, !8, i64 24}
!12 = !{!7, !8, i64 32}
!13 = !{!7, !8, i64 40}
!14 = !{!7, !8, i64 56}
!15 = !{!7, !8, i64 48}
!16 = !{!7, !8, i64 88}
!17 = !{!7, !8, i64 72}
!18 = !{!7, !8, i64 80}
!19 = !{!7, !8, i64 96}
!20 = !{!7, !8, i64 112}
!21 = !{!7, !8, i64 128}
!22 = !{!8, !8, i64 0}
