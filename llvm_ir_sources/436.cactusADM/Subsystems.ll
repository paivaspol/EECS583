; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/Subsystems.c,v 1.12 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Subsystems_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InitialiseSubsystemDefaults() #1 {
  %1 = tail call i32 @CCTKi_SetupMainFunctions() #3
  %2 = tail call i32 @CCTKi_SetupCommFunctions() #3
  %3 = tail call i32 @CCTKi_SetupIOFunctions() #3
  %4 = tail call i32 @CCTKBindings_SetupThornFunctions() #3
  %5 = tail call i32 @CCTKi_BindingsImplementationsInitialise() #3
  %6 = tail call i32 @CCTKi_BindingsParametersInitialise() #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_SetupMainFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupCommFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupIOFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKBindings_SetupThornFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsImplementationsInitialise() #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParametersInitialise() #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
