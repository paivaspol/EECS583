; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_rdot.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define double @su3_rdot(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b) #0 {
entry:
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real3 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 0
  %1 = load double* %real3, align 8, !tbaa !0
  %mul = fmul double %0, %1
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 1
  %3 = load double* %imag8, align 8, !tbaa !0
  %mul9 = fmul double %2, %3
  %add = fadd double %mul, %mul9
  %real12 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 0
  %4 = load double* %real12, align 8, !tbaa !0
  %real15 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 0
  %5 = load double* %real15, align 8, !tbaa !0
  %mul16 = fmul double %4, %5
  %add17 = fadd double %add, %mul16
  %imag20 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 1
  %6 = load double* %imag20, align 8, !tbaa !0
  %imag23 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 1
  %7 = load double* %imag23, align 8, !tbaa !0
  %mul24 = fmul double %6, %7
  %add25 = fadd double %add17, %mul24
  %real28 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 0
  %8 = load double* %real28, align 8, !tbaa !0
  %real31 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 0
  %9 = load double* %real31, align 8, !tbaa !0
  %mul32 = fmul double %8, %9
  %add33 = fadd double %add25, %mul32
  %imag36 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 1
  %10 = load double* %imag36, align 8, !tbaa !0
  %imag39 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 1
  %11 = load double* %imag39, align 8, !tbaa !0
  %mul40 = fmul double %10, %11
  %add41 = fadd double %add33, %mul40
  ret double %add41
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
