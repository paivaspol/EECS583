; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define { double, double } @trace_su3(%struct.su3_matrix* nocapture %a) #0 {
entry:
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 0, i64 0, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real5 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 1, i64 1, i32 0
  %1 = load double* %real5, align 8, !tbaa !0
  %add = fadd double %0, %1
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 0, i64 0, i32 1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag13 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 1, i64 1, i32 1
  %3 = load double* %imag13, align 8, !tbaa !0
  %add14 = fadd double %2, %3
  %real20 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 2, i64 2, i32 0
  %4 = load double* %real20, align 8, !tbaa !0
  %add21 = fadd double %add, %4
  %imag27 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 2, i64 2, i32 1
  %5 = load double* %imag27, align 8, !tbaa !0
  %add28 = fadd double %add14, %5
  %.fca.0.insert = insertvalue { double, double } undef, double %add21, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add28, 1
  ret { double, double } %.fca.1.insert
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
