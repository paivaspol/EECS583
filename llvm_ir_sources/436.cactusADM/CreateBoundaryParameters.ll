; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateBoundaryParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"radpower\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"Power of decay rate in extrapolation used in radiative boundaries\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@boundaryrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"A negative value switches off this feature\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsCreateBoundaryParameters() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (%struct.anon* @boundaryrest_ to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsBoundaryParameterExtensions() #2 {
  ret i32 0
}

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
