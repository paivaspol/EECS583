; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [18 x i8] c"grid::coordinates\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"grid::gridspacings\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"SymmetryStartup\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c"Register GH Extension for GridSymmetry\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"RegisterCartGrid3DCoords\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"Register coordinates for the Cartesian grid\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"ParamCheck_CartGrid3D\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"Check coordinates for CartGrid3D\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str13 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"Set up spatial 3D Cartesian coordinates on the GH\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_CartGrid3D() #0 {
  %1 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #2
  %2 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #2
  %3 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #2
  %4 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #2
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @SymmetryStartup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @RegisterCartGrid3DCoords to i8*), i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ParamCheck_CartGrid3D to i8*), i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %8 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @CartGrid3D to i8*), i8* getelementptr inbounds ([19 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @SymmetryStartup() #1

; Function Attrs: optsize
declare i32 @RegisterCartGrid3DCoords() #1

; Function Attrs: optsize
declare i32 @ParamCheck_CartGrid3D() #1

; Function Attrs: optsize
declare i32 @CartGrid3D() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
