; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/r_su2_hit_a.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize uwtable
define void @right_su2_hit_a(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %link) #0 {
entry:
  %idxprom = sext i32 %p to i64
  %idxprom3 = sext i32 %q to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds %struct.su3_matrix* %link, i64 0, i32 0, i64 %indvars.iv, i64 %idxprom
  %arrayidx7 = getelementptr inbounds %struct.su3_matrix* %link, i64 0, i32 0, i64 %indvars.iv, i64 %idxprom3
  tail call void @mult_su2_mat_vec_elem_a(%struct.su2_matrix* %u, %struct.complex* %arrayidx2, %struct.complex* %arrayidx7) #2
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: optsize
declare void @mult_su2_mat_vec_elem_a(%struct.su2_matrix*, %struct.complex*, %struct.complex*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
