; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cactuspriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/SetupCache.c,v 1.10 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_SetupCache_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupCache() #1 {
  %1 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 8) to i64*), align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 10), align 8, !tbaa !2
  %6 = ashr i64 %1, 32
  %7 = sext i32 %5 to i64
  br label %8

; <label>:8                                       ; preds = %0, %4
  %cacheline_bytes.0 = phi i64 [ %7, %4 ], [ 128, %0 ]
  %cache_size.0 = phi i64 [ %6, %4 ], [ 8388608, %0 ]
  %9 = tail call i32 @Utili_CacheDataSet(i64 %cacheline_bytes.0, i64 %cache_size.0) #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Utili_CacheDataSet(i64, i64) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 48}
!3 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
