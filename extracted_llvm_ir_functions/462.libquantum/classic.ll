; ModuleID = '../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #0 {
entry:
  %cmp3 = icmp sgt i32 %b, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %r.05 = phi i32 [ %mul, %for.body ], [ 1, %entry ]
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %mul = mul nsw i32 %r.05, %a
  %inc = add nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, %b
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i32 [ 1, %entry ], [ %mul, %for.body ]
  ret i32 %r.0.lcssa
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #0 {
entry:
  %tobool3 = icmp eq i32 %v, 0
  br i1 %tobool3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %u.addr.05 = phi i32 [ %v.addr.04, %while.body ], [ %u, %entry ]
  %v.addr.04 = phi i32 [ %rem, %while.body ], [ %v, %entry ]
  %rem = srem i32 %u.addr.05, %v.addr.04
  %tobool = icmp eq i32 %rem, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %u.addr.0.lcssa = phi i32 [ %u, %entry ], [ %v.addr.04, %while.body ]
  ret i32 %u.addr.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @quantum_frac_approx(i32* nocapture %a, i32* nocapture %b, i32 %width) #1 {
entry:
  %0 = load i32* %a, align 4, !tbaa !0
  %conv = sitofp i32 %0 to float
  %1 = load i32* %b, align 4, !tbaa !0
  %conv1 = sitofp i32 %1 to float
  %div = fdiv float %conv, %conv1
  %shl = shl i32 1, %width
  %mul23 = shl nsw i32 %shl, 1
  %conv24 = sitofp i32 %mul23 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %g.0 = phi float [ %div, %entry ], [ %conv10, %if.end ]
  %num2.0 = phi i32 [ 0, %entry ], [ %num1.0, %if.end ]
  %den2.0 = phi i32 [ 1, %entry ], [ %den1.0, %if.end ]
  %num1.0 = phi i32 [ 1, %entry ], [ %add14, %if.end ]
  %den1.0 = phi i32 [ 0, %entry ], [ %add11, %if.end ]
  %num.0 = phi i32 [ 0, %entry ], [ %add14, %if.end ]
  %conv2 = fpext float %g.0 to double
  %add = fadd double %conv2, 5.000000e-06
  %conv3 = fptosi double %add to i32
  %mul = mul nsw i32 %den1.0, %conv3
  %add11 = add nsw i32 %mul, %den2.0
  %cmp = icmp sgt i32 %add11, %shl
  br i1 %cmp, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %conv4 = sitofp i32 %conv3 to double
  %sub = fadd double %conv4, -5.000000e-06
  %sub6 = fsub double %conv2, %sub
  %conv7 = fptrunc double %sub6 to float
  %conv10 = fdiv float 1.000000e+00, %conv7
  %mul13 = mul nsw i32 %conv3, %num1.0
  %add14 = add nsw i32 %mul13, %num2.0
  %conv17 = sitofp i32 %add14 to float
  %conv18 = sitofp i32 %add11 to float
  %div19 = fdiv float %conv17, %conv18
  %sub20 = fsub float %div19, %div
  %call = tail call float @fabsf(float %sub20) #3
  %conv21 = fpext float %call to double
  %cmp26 = fcmp ogt double %conv21, %div25
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %if.end
  %num.1 = phi i32 [ %num.0, %do.body ], [ %add14, %if.end ]
  %den.1 = phi i32 [ %den1.0, %do.body ], [ %add11, %if.end ]
  store i32 %num.1, i32* %a, align 4, !tbaa !0
  store i32 %den.1, i32* %b, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readnone
declare float @fabsf(float) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_getwidth(i32 %n) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %shl = shl i32 1, %i.0
  %cmp = icmp slt i32 %shl, %n
  %inc = add nsw i32 %i.0, 1
  br i1 %cmp, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  ret i32 %i.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %mul = mul nsw i32 %i.0, %c
  %rem = srem i32 %mul, %n
  %cmp = icmp eq i32 %rem, 1
  %inc = add nsw i32 %i.0, 1
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 %i.0
}

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
