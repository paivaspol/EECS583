; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/s_m_mat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @scalar_mult_su3_matrix(%struct.su3_matrix* nocapture %a, double %s, %struct.su3_matrix* nocapture %b) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc24, %entry
  %indvars.iv42 = phi i64 [ 0, %entry ], [ %indvars.iv.next43, %for.inc24 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv42, i64 %indvars.iv, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %mul = fmul double %0, %s
  %real11 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv42, i64 %indvars.iv, i32 0
  store double %mul, double* %real11, align 8, !tbaa !0
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv42, i64 %indvars.iv, i32 1
  %1 = load double* %imag, align 8, !tbaa !0
  %mul17 = fmul double %1, %s
  %imag23 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv42, i64 %indvars.iv, i32 1
  store double %mul17, double* %imag23, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc24, label %for.body3

for.inc24:                                        ; preds = %for.body3
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv.next43 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, 3
  br i1 %exitcond45, label %for.end26, label %for.cond1.preheader

for.end26:                                        ; preds = %for.inc24
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
