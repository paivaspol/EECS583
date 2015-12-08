; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/s_m_a_vec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @scalar_mult_add_su3_vector(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b, double %s, %struct.su3_vector* nocapture %c) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real5 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0
  %1 = load double* %real5, align 8, !tbaa !0
  %mul = fmul double %1, %s
  %add = fadd double %0, %mul
  %real9 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv, i32 0
  store double %add, double* %real9, align 8, !tbaa !0
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag16 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1
  %3 = load double* %imag16, align 8, !tbaa !0
  %mul17 = fmul double %3, %s
  %add18 = fadd double %2, %mul17
  %imag22 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv, i32 1
  store double %add18, double* %imag22, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
