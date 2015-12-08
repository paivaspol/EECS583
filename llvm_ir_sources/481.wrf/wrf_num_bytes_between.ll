; ModuleID = '../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @wrf_num_bytes_between_(i8* %a, i8* %b, i32* nocapture %n) #0 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %a to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %b to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp = icmp slt i32 %conv, 0
  %sub = sub nsw i32 0, %conv
  %sub.conv = select i1 %cmp, i32 %sub, i32 %conv
  store i32 %sub.conv, i32* %n, align 4, !tbaa !0
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_initial_data_value_(float* nocapture %n) #0 {
entry:
  store float 0.000000e+00, float* %n, align 4, !tbaa !3
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define i32 @what_is_a_nan_(i32* nocapture %n) #0 {
entry:
  store i32 -4194304, i32* %n, align 4, !tbaa !0
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define i32 @wrf_mem_copy_(i8* nocapture %a, i8* nocapture %b, i32* nocapture %n) #0 {
entry:
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %a.addr.05 = phi i8* [ %incdec.ptr, %for.body ], [ %a, %entry ]
  %b.addr.04 = phi i8* [ %incdec.ptr1, %for.body ], [ %b, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %a.addr.05, i64 1
  %1 = load i8* %a.addr.05, align 1, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8* %b.addr.04, i64 1
  store i8 %1, i8* %b.addr.04, align 1, !tbaa !1
  %inc = add nsw i32 %i.06, 1
  %2 = load i32* %n, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 undef
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
