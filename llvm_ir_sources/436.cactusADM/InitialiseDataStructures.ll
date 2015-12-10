; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseDataStructures.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str1 = private unnamed_addr constant [101 x i8] c"$Header: /cactus/Cactus/src/main/InitialiseDataStructures.c,v 1.23 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_InitialiseDataStructures_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str1, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InitialiseDataStructures(%struct.tFleshConfig* nocapture %ConfigData) #1 {
  %1 = tail call i32 @CCTKi_RegisterDefaultTimerFunctions() #3
  %2 = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 2
  store i32 0, i32* %2, align 4, !tbaa !2
  %3 = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 1
  store %struct.cGH** null, %struct.cGH*** %3, align 8, !tbaa !8
  %4 = tail call i32 @CCTKi_ActivateThorn(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #3
  %5 = tail call i32 @CCTKi_SetupCache() #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_RegisterDefaultTimerFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_ActivateThorn(i8*) #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupCache() #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 16}
!3 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 8}
