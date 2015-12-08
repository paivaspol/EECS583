; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/make_ahmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }

; Function Attrs: nounwind optsize uwtable
define void @make_anti_hermitian(%struct.su3_matrix* nocapture %m3, %struct.anti_hermitmat* nocapture %ah3) #0 {
entry:
  %imag = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 0, i32 1
  %0 = load double* %imag, align 8, !tbaa !0
  %imag5 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 1, i32 1
  %1 = load double* %imag5, align 8, !tbaa !0
  %add = fadd double %0, %1
  %imag9 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 2, i32 1
  %2 = load double* %imag9, align 8, !tbaa !0
  %add10 = fadd double %add, %2
  %mul = fmul double %add10, 0x3FD5555551C112DA
  %sub = fsub double %0, %mul
  %m00im = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 3
  store double %sub, double* %m00im, align 8, !tbaa !0
  %3 = load double* %imag5, align 8, !tbaa !0
  %sub19 = fsub double %3, %mul
  %m11im = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 4
  store double %sub19, double* %m11im, align 8, !tbaa !0
  %4 = load double* %imag9, align 8, !tbaa !0
  %sub24 = fsub double %4, %mul
  %m22im = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 5
  store double %sub24, double* %m22im, align 8, !tbaa !0
  %real = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 1, i32 0
  %5 = load double* %real, align 8, !tbaa !0
  %real31 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 0, i32 0
  %6 = load double* %real31, align 8, !tbaa !0
  %sub32 = fsub double %5, %6
  %mul33 = fmul double %sub32, 5.000000e-01
  %real34 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 0, i32 0
  store double %mul33, double* %real34, align 8, !tbaa !0
  %real38 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 2, i32 0
  %7 = load double* %real38, align 8, !tbaa !0
  %real42 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 0, i32 0
  %8 = load double* %real42, align 8, !tbaa !0
  %sub43 = fsub double %7, %8
  %mul44 = fmul double %sub43, 5.000000e-01
  %real45 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 1, i32 0
  store double %mul44, double* %real45, align 8, !tbaa !0
  %real49 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 2, i32 0
  %9 = load double* %real49, align 8, !tbaa !0
  %real53 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 1, i32 0
  %10 = load double* %real53, align 8, !tbaa !0
  %sub54 = fsub double %9, %10
  %mul55 = fmul double %sub54, 5.000000e-01
  %real56 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 2, i32 0
  store double %mul55, double* %real56, align 8, !tbaa !0
  %imag60 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 1, i32 1
  %11 = load double* %imag60, align 8, !tbaa !0
  %imag64 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 0, i32 1
  %12 = load double* %imag64, align 8, !tbaa !0
  %add65 = fadd double %11, %12
  %mul66 = fmul double %add65, 5.000000e-01
  %imag68 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 0, i32 1
  store double %mul66, double* %imag68, align 8, !tbaa !0
  %imag72 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 2, i32 1
  %13 = load double* %imag72, align 8, !tbaa !0
  %imag76 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 0, i32 1
  %14 = load double* %imag76, align 8, !tbaa !0
  %add77 = fadd double %13, %14
  %mul78 = fmul double %add77, 5.000000e-01
  %imag80 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 1, i32 1
  store double %mul78, double* %imag80, align 8, !tbaa !0
  %imag84 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 2, i32 1
  %15 = load double* %imag84, align 8, !tbaa !0
  %imag88 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 1, i32 1
  %16 = load double* %imag88, align 8, !tbaa !0
  %add89 = fadd double %15, %16
  %mul90 = fmul double %add89, 5.000000e-01
  %imag92 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 2, i32 1
  store double %mul90, double* %imag92, align 8, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
