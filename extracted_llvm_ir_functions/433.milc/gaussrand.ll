; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

@gaussian_rand_no.iset = internal unnamed_addr global i1 false
@gaussian_rand_no.gset = internal unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: nounwind optsize uwtable
define double @gaussian_rand_no(%struct.double_prn* %prn_pt) #0 {
entry:
  %.b = load i1* @gaussian_rand_no.iset, align 1
  br i1 %.b, label %if.else, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %call = tail call double @myrand(%struct.double_prn* %prn_pt) #3
  %mul = fmul double %call, 2.000000e+00
  %sub = fadd double %mul, -1.000000e+00
  %call1 = tail call double @myrand(%struct.double_prn* %prn_pt) #3
  %mul2 = fmul double %call1, 2.000000e+00
  %sub3 = fadd double %mul2, -1.000000e+00
  %mul4 = fmul double %sub, %sub
  %mul5 = fmul double %sub3, %sub3
  %add = fadd double %mul4, %mul5
  %cmp6 = fcmp ult double %add, 1.000000e+00
  br i1 %cmp6, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %call7 = tail call double @log(double %add) #3
  %sub8 = fsub double -0.000000e+00, %call7
  %div = fdiv double %sub8, %add
  %call9 = tail call double @sqrt(double %div) #3
  %mul10 = fmul double %sub, %call9
  store double %mul10, double* @gaussian_rand_no.gset, align 8, !tbaa !0
  store i1 true, i1* @gaussian_rand_no.iset, align 1
  %mul11 = fmul double %sub3, %call9
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* @gaussian_rand_no.iset, align 1
  %0 = load double* @gaussian_rand_no.gset, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %do.end
  %retval.0 = phi double [ %mul11, %do.end ], [ %0, %if.else ]
  ret double %retval.0
}

; Function Attrs: optsize
declare double @myrand(%struct.double_prn*) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize
declare double @log(double) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
