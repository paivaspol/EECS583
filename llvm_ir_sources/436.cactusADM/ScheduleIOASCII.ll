; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [16 x i8] c"IOASCII_Startup\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"IOUtil_Startup\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"IOASCII_Choose1D\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"Choose 1D output lines\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"IOASCII_Choose2D\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"Choose 2D output planes\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_IOASCII() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Startup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0)) #2
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Choose1D to i8*), i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #2
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Choose2D to i8*), i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #2
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @IOASCII_Startup() #1

; Function Attrs: optsize
declare i32 @IOASCII_Choose1D() #1

; Function Attrs: optsize
declare i32 @IOASCII_Choose2D() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
