; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @wrf_num_bytes_between_(i8* %a, i8* %b, i32* nocapture %n) #0 {
  %1 = ptrtoint i8* %a to i64
  %2 = ptrtoint i8* %b to i64
  %3 = sub i64 %1, %2
  %4 = trunc i64 %3 to i32
  %5 = icmp slt i32 %4, 0
  %6 = sub nsw i32 0, %4
  %. = select i1 %5, i32 %6, i32 %4
  store i32 %., i32* %n, align 4, !tbaa !2
  ret i32 undef
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_initial_data_value_(float* nocapture %n) #0 {
  store float 0.000000e+00, float* %n, align 4, !tbaa !6
  ret i32 undef
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @what_is_a_nan_(i32* nocapture %n) #0 {
  store i32 -4194304, i32* %n, align 4, !tbaa !2
  ret i32 undef
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @wrf_mem_copy_(i8* nocapture readonly %a, i8* nocapture %b, i32* nocapture readonly %n) #0 {
  %1 = load i32* %n, align 4, !tbaa !2
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %i.04 = phi i32 [ %6, %.lr.ph ], [ 0, %0 ]
  %.03 = phi i8* [ %3, %.lr.ph ], [ %a, %0 ]
  %.012 = phi i8* [ %5, %.lr.ph ], [ %b, %0 ]
  %3 = getelementptr inbounds i8* %.03, i64 1
  %4 = load i8* %.03, align 1, !tbaa !8
  %5 = getelementptr inbounds i8* %.012, i64 1
  store i8 %4, i8* %.012, align 1, !tbaa !8
  %6 = add nuw nsw i32 %i.04, 1
  %7 = load i32* %n, align 4, !tbaa !2
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret i32 undef
}

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!4, !4, i64 0}
