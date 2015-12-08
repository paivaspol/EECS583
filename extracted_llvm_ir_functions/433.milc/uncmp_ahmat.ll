; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize uwtable
define void @uncompress_anti_hermitian(%struct.anti_hermitmat* nocapture %mat_antihermit, %struct.su3_matrix* nocapture %mat_su3) #0 {
entry:
  %m00im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 3
  %0 = load double* %m00im, align 8, !tbaa !0
  %imag = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 0, i32 1
  store double %0, double* %imag, align 8, !tbaa !0
  %real = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 0, i32 0
  store double 0.000000e+00, double* %real, align 8, !tbaa !0
  %m11im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 4
  %1 = load double* %m11im, align 8, !tbaa !0
  %imag8 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 1, i32 1
  store double %1, double* %imag8, align 8, !tbaa !0
  %real12 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 1, i32 0
  store double 0.000000e+00, double* %real12, align 8, !tbaa !0
  %m22im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 5
  %2 = load double* %m22im, align 8, !tbaa !0
  %imag16 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 2, i32 1
  store double %2, double* %imag16, align 8, !tbaa !0
  %real20 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 2, i32 0
  store double 0.000000e+00, double* %real20, align 8, !tbaa !0
  %imag21 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 1
  %3 = load double* %imag21, align 8, !tbaa !0
  %imag25 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 1, i32 1
  store double %3, double* %imag25, align 8, !tbaa !0
  %real27 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 0
  %4 = load double* %real27, align 8, !tbaa !0
  %real31 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 1, i32 0
  store double %4, double* %real31, align 8, !tbaa !0
  %sub = fsub double -0.000000e+00, %4
  %real35 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 0, i32 0
  store double %sub, double* %real35, align 8, !tbaa !0
  %5 = load double* %imag21, align 8, !tbaa !0
  %imag41 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 0, i32 1
  store double %5, double* %imag41, align 8, !tbaa !0
  %imag42 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 1
  %6 = load double* %imag42, align 8, !tbaa !0
  %imag46 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 2, i32 1
  store double %6, double* %imag46, align 8, !tbaa !0
  %real48 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 0
  %7 = load double* %real48, align 8, !tbaa !0
  %real52 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 2, i32 0
  store double %7, double* %real52, align 8, !tbaa !0
  %sub53 = fsub double -0.000000e+00, %7
  %real57 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 0, i32 0
  store double %sub53, double* %real57, align 8, !tbaa !0
  %8 = load double* %imag42, align 8, !tbaa !0
  %imag63 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 0, i32 1
  store double %8, double* %imag63, align 8, !tbaa !0
  %imag64 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 1
  %9 = load double* %imag64, align 8, !tbaa !0
  %imag68 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 2, i32 1
  store double %9, double* %imag68, align 8, !tbaa !0
  %real70 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 0
  %10 = load double* %real70, align 8, !tbaa !0
  %real74 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 2, i32 0
  store double %10, double* %real74, align 8, !tbaa !0
  %sub75 = fsub double -0.000000e+00, %10
  %real79 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 1, i32 0
  store double %sub75, double* %real79, align 8, !tbaa !0
  %11 = load double* %imag64, align 8, !tbaa !0
  %imag85 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 1, i32 1
  store double %11, double* %imag85, align 8, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
