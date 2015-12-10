; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [13 x i8] c"ActiveThorns\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"CCTKi_SetParameter: Errors while activating thorns\0A\00", align 1
@.str4 = private unnamed_addr constant [75 x i8] c"In parameter file '%s' line %d: Range error setting parameter '%s' to '%s'\00", align 1
@num_0errors = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [58 x i8] c"In parameter file '%s' line %d:: Parameter '%s' not found\00", align 1
@num_1errors = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [75 x i8] c"In parameter file '%s' line %d: Parameter '%s' set in two different thorns\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"In parameter file '%s' line %d: Parameter '%s' is not associated with an active thorn\00", align 1
@.str8 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/SetParams.c,v 1.34 2002/01/02 12:24:41 tradke Exp $\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_SetParams_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str8, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetParameter(i8* %parameter, i8* %value, i32 %lineno) #1 {
  %param.i = alloca i8*, align 8
  %imp.i = alloca i8*, align 8
  %parfile = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %parfile, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #2
  %2 = tail call i32 @CCTK_ParameterLevel() #6
  %3 = call i32 @CCTK_ParameterFilename(i32 256, i8* %1) #6
  %4 = call i32 @CCTK_Equals(i8* %parameter, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0)) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = call i32 @CCTKi_ActivateThorns(i8* %value) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %.thread, label %9

; <label>:9                                       ; preds = %6
  %10 = call i32 @CCTK_Warn(i32 0, i32 96, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0)) #6
  br label %.thread

; <label>:11                                      ; preds = %0
  %12 = bitcast i8** %param.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12)
  %13 = bitcast i8** %imp.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13)
  %14 = call i32 @Util_SplitString(i8** %imp.i, i8** %param.i, i8* %parameter, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #6
  %15 = load i8** %param.i, align 8, !tbaa !2
  %16 = icmp eq i8* %15, null
  %17 = load i8** %imp.i, align 8, !tbaa !2
  br i1 %16, label %18, label %20

; <label>:18                                      ; preds = %11
  %19 = call i32 @CCTK_ParameterSet(i8* %parameter, i8* %17, i8* %value) #6
  br label %55

; <label>:20                                      ; preds = %11
  %21 = call i32 @CCTK_IsImplementationActive(i8* %17) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

; <label>:23                                      ; preds = %20
  %24 = load i8** %imp.i, align 8, !tbaa !2
  %25 = call i8* @CCTK_ActivatingThorn(i8* %24) #6
  %26 = load i8** %imp.i, align 8, !tbaa !2
  %27 = call i32 @CCTK_Equals(i8* %25, i8* %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %23
  %30 = load i8** %param.i, align 8, !tbaa !2
  %31 = call i32 @CCTK_ParameterSet(i8* %30, i8* %25, i8* %value) #6
  br label %32

; <label>:32                                      ; preds = %29, %23, %20
  %found.0.i = phi i32 [ 0, %23 ], [ 1, %29 ], [ 0, %20 ]
  %retval_imp.0.i = phi i32 [ 0, %23 ], [ %31, %29 ], [ 0, %20 ]
  %33 = load i8** %imp.i, align 8, !tbaa !2
  %34 = call i32 @CCTK_IsThornActive(i8* %33) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %32
  %37 = icmp eq i32 %found.0.i, 0
  br i1 %37, label %55, label %.thread15.i

; <label>:38                                      ; preds = %32
  %39 = load i8** %param.i, align 8, !tbaa !2
  %40 = load i8** %imp.i, align 8, !tbaa !2
  %41 = call i32 @CCTK_ParameterSet(i8* %39, i8* %40, i8* %value) #6
  %42 = icmp eq i32 %found.0.i, 1
  %43 = icmp sgt i32 %retval_imp.0.i, -1
  %44 = or i32 %41, %retval_imp.0.i
  %45 = icmp sgt i32 %44, -1
  %46 = and i1 %42, %45
  br i1 %46, label %55, label %47

; <label>:47                                      ; preds = %38
  %48 = and i32 %41, %retval_imp.0.i
  %49 = icmp slt i32 %48, 0
  %50 = and i1 %42, %49
  br i1 %50, label %55, label %51

; <label>:51                                      ; preds = %47
  br i1 %42, label %52, label %.thread15.i

; <label>:52                                      ; preds = %51
  %53 = select i1 %43, i32 %retval_imp.0.i, i32 %41
  br label %55

.thread15.i:                                      ; preds = %51, %36
  %retval_thorn.08121317.i = phi i32 [ %41, %51 ], [ 0, %36 ]
  %54 = add nsw i32 %retval_thorn.08121317.i, %retval_imp.0.i
  br label %55

; <label>:55                                      ; preds = %.thread15.i, %52, %47, %38, %36, %18
  %retval.0.i = phi i32 [ %53, %52 ], [ %19, %18 ], [ -5, %36 ], [ -4, %38 ], [ %retval_imp.0.i, %47 ], [ %54, %.thread15.i ]
  %56 = load i8** %imp.i, align 8, !tbaa !2
  call void @free(i8* %56) #6
  %57 = load i8** %param.i, align 8, !tbaa !2
  call void @free(i8* %57) #6
  call void @llvm.lifetime.end(i64 8, i8* %12)
  call void @llvm.lifetime.end(i64 8, i8* %13)
  switch i32 %retval.0.i, label %.thread [
    i32 -1, label %58
    i32 -2, label %62
    i32 -4, label %71
    i32 -5, label %80
  ]

; <label>:58                                      ; preds = %55
  %59 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 108, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter, i8* %value) #6
  %60 = load i32* @num_0errors, align 4, !tbaa !6
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @num_0errors, align 4, !tbaa !6
  br label %.thread

; <label>:62                                      ; preds = %55
  %63 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 116, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter) #6
  %64 = icmp eq i32 %2, 2
  br i1 %64, label %65, label %68

; <label>:65                                      ; preds = %62
  %66 = load i32* @num_1errors, align 4, !tbaa !6
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @num_1errors, align 4, !tbaa !6
  br label %.thread

; <label>:68                                      ; preds = %62
  %69 = load i32* @num_0errors, align 4, !tbaa !6
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @num_0errors, align 4, !tbaa !6
  br label %.thread

; <label>:71                                      ; preds = %55
  %72 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 131, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str6, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter) #6
  %73 = icmp eq i32 %2, 2
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %71
  %75 = load i32* @num_1errors, align 4, !tbaa !6
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @num_1errors, align 4, !tbaa !6
  br label %.thread

; <label>:77                                      ; preds = %71
  %78 = load i32* @num_0errors, align 4, !tbaa !6
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @num_0errors, align 4, !tbaa !6
  br label %.thread

; <label>:80                                      ; preds = %55
  %81 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 146, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter) #6
  switch i32 %2, label %.thread [
    i32 0, label %82
    i32 1, label %85
  ]

; <label>:82                                      ; preds = %80
  %83 = load i32* @num_0errors, align 4, !tbaa !6
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @num_0errors, align 4, !tbaa !6
  br label %.thread

; <label>:85                                      ; preds = %80
  %86 = load i32* @num_1errors, align 4, !tbaa !6
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @num_1errors, align 4, !tbaa !6
  br label %.thread

.thread:                                          ; preds = %9, %6, %80, %55, %68, %65, %85, %82, %74, %77, %58
  %retval.01 = phi i32 [ -5, %80 ], [ %retval.0.i, %55 ], [ -2, %68 ], [ -2, %65 ], [ -5, %85 ], [ -5, %82 ], [ -4, %74 ], [ -4, %77 ], [ -1, %58 ], [ 0, %6 ], [ 0, %9 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #2
  ret i32 %retval.01
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterLevel() #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTKi_ActivateThorns(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTKi_NumParameterFileErrors(i32 %level) #4 {
  switch i32 %level, label %5 [
    i32 0, label %1
    i32 1, label %3
  ]

; <label>:1                                       ; preds = %0
  %2 = load i32* @num_0errors, align 4, !tbaa !6
  br label %5

; <label>:3                                       ; preds = %0
  %4 = load i32* @num_1errors, align 4, !tbaa !6
  br label %5

; <label>:5                                       ; preds = %0, %3, %1
  %retval.0 = phi i32 [ %2, %1 ], [ %4, %3 ], [ 0, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterSet(i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_IsImplementationActive(i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_ActivatingThorn(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
