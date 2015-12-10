; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadMain.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_Initialise = global i32 (%struct.tFleshConfig*)* null, align 8
@CCTK_OverloadInitialise.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/MainOverloadables.h\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Overload Macros: Attempted to overload function %s%s twice\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"CCTK_\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"Initialise\00", align 1
@CCTK_Evolve = global i32 (%struct.tFleshConfig*)* null, align 8
@CCTK_OverloadEvolve.overloaded = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [7 x i8] c"Evolve\00", align 1
@CCTK_Shutdown = global i32 (%struct.tFleshConfig*)* null, align 8
@CCTK_OverloadShutdown.overloaded = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@CCTK_MainLoopIndex = global i32 ()* null, align 8
@CCTK_OverloadMainLoopIndex.overloaded = internal unnamed_addr global i32 0, align 4
@.str7 = private unnamed_addr constant [14 x i8] c"MainLoopIndex\00", align 1
@CCTK_SetMainLoopIndex = global i32 (i32)* null, align 8
@CCTK_OverloadSetMainLoopIndex.overloaded = internal unnamed_addr global i32 0, align 4
@.str8 = private unnamed_addr constant [17 x i8] c"SetMainLoopIndex\00", align 1
@.str9 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/main/OverloadMain.c,v 1.14 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_OverloadMain_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str9, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadInitialise(i32 (%struct.tFleshConfig*)* %func) #1 {
  %1 = icmp eq i32 (%struct.tFleshConfig*)* %func, null
  %2 = load i32* @CCTK_OverloadInitialise.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.tFleshConfig*)* %func, i32 (%struct.tFleshConfig*)** @CCTK_Initialise, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadInitialise.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 45, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadEvolve(i32 (%struct.tFleshConfig*)* %func) #1 {
  %1 = icmp eq i32 (%struct.tFleshConfig*)* %func, null
  %2 = load i32* @CCTK_OverloadEvolve.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.tFleshConfig*)* %func, i32 (%struct.tFleshConfig*)** @CCTK_Evolve, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadEvolve.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 46, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadShutdown(i32 (%struct.tFleshConfig*)* %func) #1 {
  %1 = icmp eq i32 (%struct.tFleshConfig*)* %func, null
  %2 = load i32* @CCTK_OverloadShutdown.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.tFleshConfig*)* %func, i32 (%struct.tFleshConfig*)** @CCTK_Shutdown, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadShutdown.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 47, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadMainLoopIndex(i32 ()* %func) #1 {
  %1 = icmp eq i32 ()* %func, null
  %2 = load i32* @CCTK_OverloadMainLoopIndex.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 ()* %func, i32 ()** @CCTK_MainLoopIndex, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadMainLoopIndex.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 56, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadSetMainLoopIndex(i32 (i32)* %func) #1 {
  %1 = icmp eq i32 (i32)* %func, null
  %2 = load i32* @CCTK_OverloadSetMainLoopIndex.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (i32)* %func, i32 (i32)** @CCTK_SetMainLoopIndex, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadSetMainLoopIndex.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 65, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #3
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupMainFunctions() #1 {
  %1 = tail call i32 @CCTK_OverloadInitialise(i32 (%struct.tFleshConfig*)* @CactusDefaultInitialise) #4
  %2 = tail call i32 @CCTK_OverloadEvolve(i32 (%struct.tFleshConfig*)* @CactusDefaultEvolve) #4
  %3 = tail call i32 @CCTK_OverloadShutdown(i32 (%struct.tFleshConfig*)* @CactusDefaultShutdown) #4
  %4 = tail call i32 @CCTK_OverloadMainLoopIndex(i32 ()* @CactusDefaultMainLoopIndex) #4
  %5 = tail call i32 @CCTK_OverloadSetMainLoopIndex(i32 (i32)* @CactusDefaultSetMainLoopIndex) #4
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CactusDefaultInitialise(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultEvolve(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultShutdown(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultMainLoopIndex() #2

; Function Attrs: optsize
declare i32 @CactusDefaultSetMainLoopIndex(i32) #2

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
