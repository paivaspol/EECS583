; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }

@timerest_ = external global %struct.anon
@.str = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_Time() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !tbaa !2
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #2
  br label %9

; <label>:9                                       ; preds = %4, %0, %7
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

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
