; ModuleID = '../../SPEC/benchspec/CPU2006/998.specrand/src/specrand.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seedi = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @spec_srand(i32 %seed) #0 {
entry:
  store i32 %seed, i32* @seedi, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @spec_rand() #0 {
entry:
  %0 = load i32* @seedi, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %div = sdiv i64 %conv, 127773
  %rem = srem i64 %conv, 127773
  %sext = shl i64 %rem, 32
  %conv4 = ashr exact i64 %sext, 32
  %mul = mul nsw i64 %conv4, 16807
  %sext14 = shl i64 %div, 32
  %conv5 = ashr exact i64 %sext14, 32
  %1 = mul i64 %conv5, -2836
  %sub = add i64 %mul, %1
  %conv7 = trunc i64 %sub to i32
  %cmp = icmp sgt i32 %conv7, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %add = add nsw i64 %sub, 2147483647
  %conv10 = trunc i64 %add to i32
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %storemerge = phi i32 [ %conv10, %if.else ], [ %conv7, %entry ]
  store i32 %storemerge, i32* @seedi, align 4, !tbaa !0
  %conv11 = sitofp i32 %storemerge to double
  %div12 = fdiv double %conv11, 0x41DFFFFFFFC00000
  ret double %div12
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
