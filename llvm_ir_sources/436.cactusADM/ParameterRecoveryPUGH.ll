; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGH.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"report\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_PUGH() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !tbaa !2
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) #2
  br label %6

; <label>:6                                       ; preds = %0, %4
  %7 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) #2
  br label %11

; <label>:11                                      ; preds = %6, %9
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
!2 = !{!3, !4, i64 80}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
