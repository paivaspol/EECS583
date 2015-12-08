; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_n.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* nocapture %u, %struct.complex* nocapture %x0, %struct.complex* nocapture %x1) #0 {
entry:
  %t0.sroa.0.0.idx = getelementptr inbounds %struct.complex* %x0, i64 0, i32 0
  %t0.sroa.0.0.copyload = load double* %t0.sroa.0.0.idx, align 8
  %t0.sroa.1.8.idx132 = getelementptr inbounds %struct.complex* %x0, i64 0, i32 1
  %t0.sroa.1.8.copyload = load double* %t0.sroa.1.8.idx132, align 8
  %t1.sroa.0.0.idx = getelementptr inbounds %struct.complex* %x1, i64 0, i32 0
  %t1.sroa.0.0.copyload = load double* %t1.sroa.0.0.idx, align 8
  %t1.sroa.1.8.idx125 = getelementptr inbounds %struct.complex* %x1, i64 0, i32 1
  %t1.sroa.1.8.copyload = load double* %t1.sroa.1.8.idx125, align 8
  %real = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %mul = fmul double %t0.sroa.0.0.copyload, %0
  %imag = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 1
  %1 = load double* %imag, align 8, !tbaa !0
  %mul7 = fmul double %t0.sroa.1.8.copyload, %1
  %sub = fsub double %mul, %mul7
  %mul14 = fmul double %t0.sroa.1.8.copyload, %0
  %mul20 = fmul double %t0.sroa.0.0.copyload, %1
  %add = fadd double %mul14, %mul20
  %real25 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 0
  %2 = load double* %real25, align 8, !tbaa !0
  %mul27 = fmul double %t1.sroa.0.0.copyload, %2
  %imag31 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 1
  %3 = load double* %imag31, align 8, !tbaa !0
  %mul33 = fmul double %t1.sroa.1.8.copyload, %3
  %sub34 = fsub double %mul27, %mul33
  %mul41 = fmul double %t1.sroa.1.8.copyload, %2
  %mul47 = fmul double %t1.sroa.0.0.copyload, %3
  %add48 = fadd double %mul41, %mul47
  %add52 = fadd double %sub, %sub34
  store double %add52, double* %t0.sroa.0.0.idx, align 8, !tbaa !0
  %add56 = fadd double %add, %add48
  store double %add56, double* %t0.sroa.1.8.idx132, align 8, !tbaa !0
  %real61 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 0
  %4 = load double* %real61, align 8, !tbaa !0
  %mul63 = fmul double %t0.sroa.0.0.copyload, %4
  %imag67 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 1
  %5 = load double* %imag67, align 8, !tbaa !0
  %mul69 = fmul double %t0.sroa.1.8.copyload, %5
  %sub70 = fsub double %mul63, %mul69
  %mul77 = fmul double %t0.sroa.1.8.copyload, %4
  %mul83 = fmul double %t0.sroa.0.0.copyload, %5
  %add84 = fadd double %mul77, %mul83
  %real89 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 0
  %6 = load double* %real89, align 8, !tbaa !0
  %mul91 = fmul double %t1.sroa.0.0.copyload, %6
  %imag95 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 1
  %7 = load double* %imag95, align 8, !tbaa !0
  %mul97 = fmul double %t1.sroa.1.8.copyload, %7
  %sub98 = fsub double %mul91, %mul97
  %mul105 = fmul double %t1.sroa.1.8.copyload, %6
  %mul111 = fmul double %t1.sroa.0.0.copyload, %7
  %add112 = fadd double %mul105, %mul111
  %add116 = fadd double %sub70, %sub98
  store double %add116, double* %t1.sroa.0.0.idx, align 8, !tbaa !0
  %add120 = fadd double %add84, %add112
  store double %add120, double* %t1.sroa.1.8.idx125, align 8, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
