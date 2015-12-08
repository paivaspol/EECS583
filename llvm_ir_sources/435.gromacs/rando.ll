; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rando.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @make_seed() #0 {
entry:
  %call = tail call i64 @time(i64* null) #2
  %call1 = tail call i32 @getpid() #2
  %conv = sext i32 %call1 to i64
  %add = add nsw i64 %conv, %call
  %rem = srem i64 %add, 1000000
  %conv2 = trunc i64 %rem to i32
  ret i32 %conv2
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize
declare i32 @getpid() #1

; Function Attrs: nounwind optsize uwtable
define float @rando(i32* nocapture %ig) #0 {
entry:
  %0 = load i32* %ig, align 4, !tbaa !0
  %ispos = icmp sgt i32 %0, -1
  %neg = sub i32 0, %0
  %1 = select i1 %ispos, i32 %0, i32 %neg
  %rem = srem i32 %1, 100000000
  %div = sdiv i32 %rem, 10000
  %rem1 = srem i32 %rem, 10000
  %mul = mul nsw i32 %div, 5821
  %mul4 = mul nsw i32 %rem1, 3141
  %add = add nsw i32 %mul4, %mul
  %rem5 = srem i32 %add, 10000
  %mul6 = mul nsw i32 %rem5, 10000
  %mul7 = mul nsw i32 %rem1, 5821
  %add8 = add i32 %mul7, 1
  %add9 = add i32 %add8, %mul6
  %rem10 = srem i32 %add9, 100000000
  %div11 = sdiv i32 %rem10, 10
  %conv = sitofp i32 %div11 to float
  %mul12 = fmul float %conv, 1.000000e+01
  %div13 = fdiv float %mul12, 1.000000e+08
  %cmp = fcmp ole float %div13, 0.000000e+00
  %cmp15 = fcmp ogt float %div13, 1.000000e+00
  %or.cond = or i1 %cmp, %cmp15
  %.div13 = select i1 %or.cond, float 0.000000e+00, float %div13
  store i32 %rem10, i32* %ig, align 4, !tbaa !0
  ret float %.div13
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
