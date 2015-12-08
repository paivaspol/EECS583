; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_mv_s_4dir.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize uwtable
define void @mult_su3_mat_vec_sum_4dir(%struct.su3_matrix* %a, %struct.su3_vector* %b0, %struct.su3_vector* %b1, %struct.su3_vector* %b2, %struct.su3_vector* %b3, %struct.su3_vector* %c) #0 {
entry:
  tail call void @mult_su3_mat_vec(%struct.su3_matrix* %a, %struct.su3_vector* %b0, %struct.su3_vector* %c) #2
  %add.ptr1 = getelementptr inbounds %struct.su3_matrix* %a, i64 1
  tail call void @mult_su3_mat_vec_sum(%struct.su3_matrix* %add.ptr1, %struct.su3_vector* %b1, %struct.su3_vector* %c) #2
  %add.ptr2 = getelementptr inbounds %struct.su3_matrix* %a, i64 2
  tail call void @mult_su3_mat_vec_sum(%struct.su3_matrix* %add.ptr2, %struct.su3_vector* %b2, %struct.su3_vector* %c) #2
  %add.ptr3 = getelementptr inbounds %struct.su3_matrix* %a, i64 3
  tail call void @mult_su3_mat_vec_sum(%struct.su3_matrix* %add.ptr3, %struct.su3_vector* %b3, %struct.su3_vector* %c) #2
  ret void
}

; Function Attrs: optsize
declare void @mult_su3_mat_vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: optsize
declare void @mult_su3_mat_vec_sum(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
