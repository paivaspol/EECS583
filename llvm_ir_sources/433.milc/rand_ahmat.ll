; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/rand_ahmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

; Function Attrs: nounwind optsize uwtable
define void @random_anti_hermitian(%struct.anti_hermitmat* nocapture %mat_antihermit, %struct.double_prn* %prn_pt) #0 {
entry:
  %call1 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %call2 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %mul = fmul double %call2, 0x3FE279A74590331C
  %add = fadd double %call1, %mul
  %m00im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 3
  store double %add, double* %m00im, align 8, !tbaa !0
  %add4 = fsub double %mul, %call1
  %m11im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 4
  store double %add4, double* %m11im, align 8, !tbaa !0
  %mul6 = fmul double %call2, 0xBFF279A74590331C
  %m22im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 5
  store double %mul6, double* %m22im, align 8, !tbaa !0
  %call7 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %real = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 0
  store double %call7, double* %real, align 8, !tbaa !0
  %call8 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %real9 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 0
  store double %call8, double* %real9, align 8, !tbaa !0
  %call10 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %real11 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 0
  store double %call10, double* %real11, align 8, !tbaa !0
  %call12 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %imag = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 1
  store double %call12, double* %imag, align 8, !tbaa !0
  %call14 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %imag16 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 1
  store double %call14, double* %imag16, align 8, !tbaa !0
  %call17 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #2
  %imag19 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 1
  store double %call17, double* %imag19, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare double @gaussian_rand_no(%struct.double_prn*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
