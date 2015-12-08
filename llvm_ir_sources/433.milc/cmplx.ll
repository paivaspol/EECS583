; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/cmplx.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @cmplx(double %x, double %y) #0 {
entry:
  %.fca.0.insert = insertvalue { double, double } undef, double %x, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %y, 1
  ret { double, double } %.fca.1.insert
}

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
