; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOUtil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@iorest_ = external global %struct.anon
@.str = private unnamed_addr constant [15 x i8] c"IOUtil_Startup\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"Driver_Startup\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"IOUtil_RecoverGH\00", align 1
@.str9 = private unnamed_addr constant [28 x i8] c"Checkpoint recovery routine\00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"CCTK_RECOVER_VARIABLES\00", align 1
@.str11 = private unnamed_addr constant [30 x i8] c"IOUtil_RecoverIDFromDatafiles\00", align 1
@.str12 = private unnamed_addr constant [30 x i8] c"Initial data recovery routine\00", align 1
@.str13 = private unnamed_addr constant [21 x i8] c"IOUtil_UpdateParFile\00", align 1
@.str14 = private unnamed_addr constant [44 x i8] c"Append steered parameters to parameter file\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"HTTP_Work\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_IOUtil() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 17), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 18), align 8, !tbaa !9
  %3 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 19), align 8, !tbaa !10
  %4 = load i32* getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 47), align 8, !tbaa !11
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_Startup to i8*), i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0)) #2
  %6 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_RecoverGH to i8*), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %10

; <label>:10                                      ; preds = %0, %8
  %11 = load i8* %3, align 1, !tbaa !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %10
  %14 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_RecoverIDFromDatafiles to i8*), i8* getelementptr inbounds ([30 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #2
  br label %15

; <label>:15                                      ; preds = %10, %13
  %16 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #2
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne i32 %4, 0
  %or.cond = and i1 %18, %17
  br i1 %or.cond, label %19, label %21

; <label>:19                                      ; preds = %15
  %20 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_UpdateParFile to i8*), i8* getelementptr inbounds ([21 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0)) #2
  br label %21

; <label>:21                                      ; preds = %15, %19
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @IOUtil_Startup() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @IOUtil_RecoverGH() #1

; Function Attrs: optsize
declare i32 @IOUtil_RecoverIDFromDatafiles() #1

; Function Attrs: optsize
declare i32 @IOUtil_UpdateParFile() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 136}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 144}
!10 = !{!3, !7, i64 152}
!11 = !{!3, !8, i64 280}
!12 = !{!5, !5, i64 0}
