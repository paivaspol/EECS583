; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@gridrest_ = external global %struct.anon
@.str = private unnamed_addr constant [7 x i8] c"bitant\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"yz\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"quadrant\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"octant\00", align 1
@.str9 = private unnamed_addr constant [103 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/DecodeSymParameters.c,v 1.4 2001/02/24 13:04:43 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c() #0 {
  ret i8* getelementptr inbounds ([103 x i8]* @.str9, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DecodeSymParameters3D(i32* nocapture %sym) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 12), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !tbaa !9
  %3 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 14), align 8, !tbaa !10
  %4 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 16) to i64*), align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %8 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 18) to i64*), align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %12 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 20) to i64*), align 8
  %13 = trunc i64 %12 to i32
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  store i32 %7, i32* %sym, align 4, !tbaa !11
  %16 = getelementptr inbounds i32* %sym, i64 2
  store i32 %11, i32* %16, align 4, !tbaa !11
  %17 = getelementptr inbounds i32* %sym, i64 4
  store i32 %15, i32* %17, align 4, !tbaa !11
  %18 = getelementptr inbounds i32* %sym, i64 1
  store i32 %5, i32* %18, align 4, !tbaa !11
  %19 = getelementptr inbounds i32* %sym, i64 3
  store i32 %9, i32* %19, align 4, !tbaa !11
  %20 = getelementptr inbounds i32* %sym, i64 5
  store i32 %13, i32* %20, align 4, !tbaa !11
  %21 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26                                      ; preds = %23
  store i32 1, i32* %17, align 4, !tbaa !11
  br label %54

; <label>:27                                      ; preds = %23
  %28 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30                                      ; preds = %27
  store i32 1, i32* %16, align 4, !tbaa !11
  br label %54

; <label>:31                                      ; preds = %27
  %32 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

; <label>:34                                      ; preds = %31
  store i32 1, i32* %sym, align 4, !tbaa !11
  br label %54

; <label>:35                                      ; preds = %0
  %36 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %38
  store i32 1, i32* %16, align 4, !tbaa !11
  store i32 1, i32* %17, align 4, !tbaa !11
  br label %54

; <label>:42                                      ; preds = %38
  %43 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

; <label>:45                                      ; preds = %42
  store i32 1, i32* %sym, align 4, !tbaa !11
  store i32 1, i32* %17, align 4, !tbaa !11
  br label %54

; <label>:46                                      ; preds = %42
  %47 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

; <label>:49                                      ; preds = %46
  store i32 1, i32* %sym, align 4, !tbaa !11
  store i32 1, i32* %16, align 4, !tbaa !11
  br label %54

; <label>:50                                      ; preds = %35
  %51 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

; <label>:53                                      ; preds = %50
  store i32 1, i32* %sym, align 4, !tbaa !11
  store i32 1, i32* %16, align 4, !tbaa !11
  store i32 1, i32* %17, align 4, !tbaa !11
  br label %54

; <label>:54                                      ; preds = %31, %46, %50, %45, %49, %41, %53, %26, %34, %30
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 96}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 104}
!10 = !{!3, !7, i64 112}
!11 = !{!8, !8, i64 0}
