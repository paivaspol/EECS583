; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [97 x i8] c"$Header: /cactus/Cactus/src/util/RegisterKeyedFunction.c,v 1.6 2001/05/10 12:35:21 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_RegisterKeyedFunction_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @RegisterKeyedFunction(void ()** nocapture %array, i32 %min, i32 %max, i32 %key, void ()* %func) #1 {
  %1 = icmp slt i32 %key, %min
  %2 = icmp sgt i32 %key, %max
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = sext i32 %key to i64
  %5 = getelementptr inbounds void ()** %array, i64 %4
  %6 = load void ()** %5, align 8, !tbaa !2
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %3
  store void ()* %func, void ()** %5, align 8, !tbaa !2
  br label %9

; <label>:9                                       ; preds = %0, %3, %8
  %return_code.0 = phi i32 [ 0, %8 ], [ 1, %3 ], [ 2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias void ()** @CreateKeyedFunctionArray(i32 %size) #1 {
  %1 = sext i32 %size to i64
  %2 = shl nsw i64 %1, 3
  %3 = tail call i8* @malloc(i64 %2) #4
  %4 = bitcast i8* %3 to void ()**
  %5 = icmp ne i8* %3, null
  %6 = icmp sgt i32 %size, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %7 = add i32 %size, -1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add nuw nsw i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %10, i32 8, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %0, %.lr.ph
  ret void ()** %4
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
