; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_OutputGH = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadOutputGH.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Overload Macros: Attempted to overload function %s%s twice\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"CCTK_\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"OutputGH\00", align 1
@CCTK_OutputVarAsByMethod = global i32 (%struct.cGH*, i8*, i8*, i8*)* null, align 8
@CCTK_OverloadOutputVarAsByMethod.overloaded = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [20 x i8] c"OutputVarAsByMethod\00", align 1
@.str6 = private unnamed_addr constant [84 x i8] c"$Header: /cactus/Cactus/src/IO/OverloadIO.c,v 1.11 2001/11/05 14:58:49 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_IO_OverloadIO_c() #0 {
  ret i8* getelementptr inbounds ([84 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadOutputGH(i32 (%struct.cGH*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*)* %func, null
  %2 = load i32* @CCTK_OverloadOutputGH.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadOutputGH.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 43, i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadOutputVarAsByMethod(i32 (%struct.cGH*, i8*, i8*, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i8*, i8*, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*, i8*, i8*)* %func, i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 52, i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupIOFunctions() #1 {
  %1 = tail call i32 @CCTK_OverloadOutputGH(i32 (%struct.cGH*)* @CactusDefaultOutputGH) #4
  %2 = tail call i32 @CCTK_OverloadOutputVarAsByMethod(i32 (%struct.cGH*, i8*, i8*, i8*)* @CactusDefaultOutputVarAsByMethod) #4
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CactusDefaultOutputGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultOutputVarAsByMethod(%struct.cGH*, i8*, i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
