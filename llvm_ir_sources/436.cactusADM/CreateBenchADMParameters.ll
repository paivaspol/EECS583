; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateBenchADMParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8* }
%struct.anon.0 = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"Numerical method to use for ADM\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"stagleap\00", align 1
@benchadmrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [32 x i8] c"Evolve using Staggered Leapfrog\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"bound\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str9 = private unnamed_addr constant [32 x i8] c"Boundary condition to implement\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@benchadmpriv_ = external global %struct.anon.0
@.str11 = private unnamed_addr constant [22 x i8] c"No boundary condition\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"time_symmetric\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str14 = private unnamed_addr constant [51 x i8] c"How to get the initial data for staggered leapfrog\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"EINSTEIN\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"evolution_system\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"ADM\00", align 1
@.str19 = private unnamed_addr constant [34 x i8] c"Evolve using ADM evolution scheme\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"slicing\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str22 = private unnamed_addr constant [22 x i8] c"Lapse is set to unity\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsCreateBenchADMParameters() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* bitcast (%struct.anon* @benchadmrest_ to i8*), i32 1, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0)) #2
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* bitcast (%struct.anon.0* @benchadmpriv_ to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0)) #2
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([51 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @benchadmpriv_, i64 0, i32 1) to i8*), i32 0) #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsBenchADMParameterExtensions() #0 {
  %1 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str19, i64 0, i64 0)) #2
  %2 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str22, i64 0, i64 0)) #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterAddRange(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
