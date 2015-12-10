; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }

@timerest_ = external global %struct.anon
@.str = private unnamed_addr constant [16 x i8] c"time::speedvars\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Time::couranttemps\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Time_Initialise\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"Initialise Time variables\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"Time_Simple\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"Time_Given\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@.str11 = private unnamed_addr constant [40 x i8] c"Set timestep based on Courant condition\00", align 1
@.str12 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"Time_Courant\00", align 1
@.str16 = private unnamed_addr constant [30 x i8] c"Reset timestep each iteration\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"Set fixed timestep\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_Time() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !tbaa !2
  %2 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #2
  %3 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #2
  %4 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #2
  %5 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #2
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Initialise to i8*), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #2
  %7 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %0
  %10 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Simple to i8*), i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #2
  br label %22

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0)) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %14, %11
  %18 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Simple to i8*), i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #2
  %19 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Courant to i8*), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %22

; <label>:20                                      ; preds = %14
  %21 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Given to i8*), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %22

; <label>:22                                      ; preds = %17, %20, %9
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @Time_Initialise() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @Time_Simple() #1

; Function Attrs: optsize
declare i32 @Time_Courant() #1

; Function Attrs: optsize
declare i32 @Time_Given() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !7, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
