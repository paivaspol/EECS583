; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/update.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@steps = external global i32
@epsilon = external global double
@nflavors = external global i32
@mass = external global double
@niter = external global i32
@rsqmin = external global double

; Function Attrs: nounwind optsize uwtable
define i32 @update() #0 {
entry:
  %final_rsq = alloca double, align 8
  call void @ranmom() #2
  %0 = load i32* @steps, align 4, !tbaa !0
  %cmp29 = icmp slt i32 %0, 1
  br i1 %cmp29, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %iters.031 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %step.030 = phi i32 [ %inc, %for.body ], [ 1, %entry ]
  %1 = load double* @epsilon, align 8, !tbaa !3
  %2 = load i32* @nflavors, align 4, !tbaa !0
  %conv = sitofp i32 %2 to double
  %div = fmul double %conv, 1.250000e-01
  %sub = fsub double 5.000000e-01, %div
  %mul = fmul double %1, %sub
  call void @update_u(double %mul) #2
  %3 = load double* @mass, align 8, !tbaa !3
  call void @grsource_imp(i32 1040, double %3, i32 2) #2
  %4 = load double* @epsilon, align 8, !tbaa !3
  %5 = load i32* @nflavors, align 4, !tbaa !0
  %conv3 = sitofp i32 %5 to double
  %mul4 = fmul double %4, %conv3
  %div5 = fmul double %mul4, 1.250000e-01
  call void @update_u(double %div5) #2
  %6 = load double* @mass, align 8, !tbaa !3
  %7 = load i32* @niter, align 4, !tbaa !0
  %8 = load double* @rsqmin, align 8, !tbaa !3
  %call = call i32 @ks_congrad(i32 1040, i32 1184, double %6, i32 %7, double %8, i32 2, double* %final_rsq) #2
  %add = add nsw i32 %call, %iters.031
  %9 = load double* @epsilon, align 8, !tbaa !3
  call void @update_h(double %9) #2
  %10 = load double* @epsilon, align 8, !tbaa !3
  %mul22 = fmul double %10, 5.000000e-01
  call void @update_u(double %mul22) #2
  call void @rephase(i32 0) #2
  call void @reunitarize() #2
  call void @rephase(i32 1) #2
  %inc = add nsw i32 %step.030, 1
  %11 = load i32* @steps, align 4, !tbaa !0
  %cmp = icmp slt i32 %step.030, %11
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp23 = icmp sgt i32 %11, 0
  br i1 %cmp23, label %if.then, label %return

if.then:                                          ; preds = %for.end
  %div25 = sdiv i32 %add, %11
  br label %return

return:                                           ; preds = %entry, %for.end, %if.then
  %retval.0 = phi i32 [ %div25, %if.then ], [ -99, %for.end ], [ -99, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @ranmom() #1

; Function Attrs: optsize
declare void @update_u(double) #1

; Function Attrs: optsize
declare void @grsource_imp(i32, double, i32) #1

; Function Attrs: optsize
declare i32 @ks_congrad(i32, i32, double, i32, double, i32, double*) #1

; Function Attrs: optsize
declare void @update_h(double) #1

; Function Attrs: optsize
declare void @rephase(i32) #1

; Function Attrs: optsize
declare void @reunitarize() #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
