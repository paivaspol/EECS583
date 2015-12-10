; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [397 x i8] c"       10                                  \0A  1   0101       ************************  \0A  01  1010 10      The Cactus Code V4.0    \0A 1010 1101 011      www.cactuscode.org     \0A  1001 100101    ************************  \0A    00010101                               \0A     100011     (c) Copyright The Authors  \0A      0100      GNU Licensed. No Warranty  \0A      0101                                 \0A\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"Cactus version: %s\0A\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"Parameter file: %s\0A\00", align 1
@number_banners = internal unnamed_addr global i32 0, align 4
@banner_strings = internal unnamed_addr global i8** null, align 8
@.str3 = private unnamed_addr constant [18 x i8] c"cctk_show_banners\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/main/Banner.c,v 1.33 2002/01/04 13:30:18 tradke Exp $\00", align 1
@.str7 = private unnamed_addr constant [82 x i8] c"--------------------------------------------------------------------------------\0A\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Banner_c() #0 {
  ret i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CactusBanner() #1 {
  %buffer = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #2
  %2 = tail call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str7, i64 0, i64 0)) #5
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([397 x i8]* @.str, i64 0, i64 0)) #5
  %4 = tail call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str7, i64 0, i64 0)) #5
  %5 = tail call i8* @CCTK_FullVersion() #5
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0), i8* %5) #5
  %7 = call i32 @CCTK_ParameterFilename(i32 255, i8* %1) #5
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i8* %1) #5
  %9 = call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str7, i64 0, i64 0)) #5
  call void @llvm.lifetime.end(i64 256, i8* %1) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare i8* @CCTK_FullVersion() #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterBanner(i8* %banner) #1 {
  %1 = load i32* @number_banners, align 4, !tbaa !2
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @number_banners, align 4, !tbaa !2
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %2 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call i8* @malloc(i64 %6) #5
  store i8* %7, i8** bitcast (i8*** @banner_strings to i8**), align 8, !tbaa !6
  %8 = bitcast i8* %7 to i8**
  br label %20

; <label>:9                                       ; preds = %0
  %10 = load i8*** @banner_strings, align 8, !tbaa !6
  %11 = bitcast i8** %10 to i8*
  %12 = sext i32 %2 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call i8* @realloc(i8* %11, i64 %13) #5
  store i8* %14, i8** bitcast (i8*** @banner_strings to i8**), align 8, !tbaa !6
  %15 = icmp eq i8* %14, null
  %16 = bitcast i8* %14 to i8**
  br i1 %15, label %17, label %20

; <label>:17                                      ; preds = %9
  store i8** %10, i8*** @banner_strings, align 8, !tbaa !6
  %18 = load i32* @number_banners, align 4, !tbaa !2
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @number_banners, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %9, %17, %4
  %21 = phi i8** [ %16, %9 ], [ %10, %17 ], [ %8, %4 ]
  %22 = icmp eq i8** %21, null
  br i1 %22, label %35, label %23

; <label>:23                                      ; preds = %20
  %24 = tail call i8* @Util_Strdup(i8* %banner) #5
  %25 = load i32* @number_banners, align 4, !tbaa !2
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = load i8*** @banner_strings, align 8, !tbaa !6
  %29 = getelementptr inbounds i8** %28, i64 %27
  store i8* %24, i8** %29, align 8, !tbaa !6
  %30 = load i8*** @banner_strings, align 8, !tbaa !6
  %31 = getelementptr inbounds i8** %30, i64 %27
  %32 = load i8** %31, align 8, !tbaa !6
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %23
  store i32 %26, i32* @number_banners, align 4, !tbaa !2
  br label %35

; <label>:35                                      ; preds = %20, %23, %34
  %retval.0 = phi i32 [ -1, %34 ], [ 0, %23 ], [ -1, %20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_registerbanner_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i32 @CCTK_RegisterBanner(i8* %1) #6
  store i32 %2, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_PrintBanners() #1 {
  %i = alloca i32, align 4
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %i) #5
  %2 = bitcast i8* %1 to i32*
  %3 = load i32* %2, align 4, !tbaa !2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %.preheader

.preheader:                                       ; preds = %0
  store i32 0, i32* %i, align 4, !tbaa !2
  %5 = load i32* @number_banners, align 4, !tbaa !2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %15
  %7 = phi i32 [ %16, %15 ], [ %5, %.preheader ]
  %storemerge1 = phi i32 [ %18, %15 ], [ 0, %.preheader ]
  %8 = sext i32 %storemerge1 to i64
  %9 = load i8*** @banner_strings, align 8, !tbaa !6
  %10 = getelementptr inbounds i8** %9, i64 %8
  %11 = load i8** %10, align 8, !tbaa !6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %.lr.ph
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8]* @.str7, i64 0, i64 0), i8* %11) #5
  %.pre = load i32* %i, align 4, !tbaa !2
  %.pre2 = load i32* @number_banners, align 4, !tbaa !2
  br label %15

; <label>:15                                      ; preds = %.lr.ph, %13
  %16 = phi i32 [ %7, %.lr.ph ], [ %.pre2, %13 ]
  %17 = phi i32 [ %storemerge1, %.lr.ph ], [ %.pre, %13 ]
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4, !tbaa !2
  %19 = icmp slt i32 %18, %16
  br i1 %19, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %15, %.preheader
  %20 = call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str7, i64 0, i64 0)) #5
  br label %21

; <label>:21                                      ; preds = %0, %._crit_edge
  ret i32 0
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
