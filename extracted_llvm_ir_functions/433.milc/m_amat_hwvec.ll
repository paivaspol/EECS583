; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_amat_hwvec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.half_wilson_vector = type { [2 x %struct.su3_vector] }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize uwtable
define void @mult_adj_su3_mat_hwvec(%struct.su3_matrix* %mat, %struct.half_wilson_vector* %src, %struct.half_wilson_vector* %dest) #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.half_wilson_vector* %src, i64 0, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds %struct.half_wilson_vector* %dest, i64 0, i32 0, i64 0
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %mat, %struct.su3_vector* %arrayidx, %struct.su3_vector* %arrayidx2) #2
  %arrayidx4 = getelementptr inbounds %struct.half_wilson_vector* %src, i64 0, i32 0, i64 1
  %arrayidx6 = getelementptr inbounds %struct.half_wilson_vector* %dest, i64 0, i32 0, i64 1
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %mat, %struct.su3_vector* %arrayidx4, %struct.su3_vector* %arrayidx6) #2
  ret void
}

; Function Attrs: optsize
declare void @mult_adj_su3_mat_vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
