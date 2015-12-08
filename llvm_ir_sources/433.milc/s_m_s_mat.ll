; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/s_m_s_mat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @scalar_mult_sub_su3_matrix(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b, double %s, %struct.su3_matrix* nocapture %c) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc37, %entry
  %indvars.iv60 = phi i64 [ 0, %entry ], [ %indvars.iv.next61, %for.inc37 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv60, i64 %indvars.iv, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real11 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv60, i64 %indvars.iv, i32 0
  %1 = load double* %real11, align 8, !tbaa !0
  %mul = fmul double %1, %s
  %sub = fsub double %0, %mul
  %real17 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv60, i64 %indvars.iv, i32 0
  store double %sub, double* %real17, align 8, !tbaa !0
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv60, i64 %indvars.iv, i32 1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag28 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv60, i64 %indvars.iv, i32 1
  %3 = load double* %imag28, align 8, !tbaa !0
  %mul29 = fmul double %3, %s
  %sub30 = fsub double %2, %mul29
  %imag36 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv60, i64 %indvars.iv, i32 1
  store double %sub30, double* %imag36, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc37, label %for.body3

for.inc37:                                        ; preds = %for.body3
  %indvars.iv.next61 = add i64 %indvars.iv60, 1
  %lftr.wideiv62 = trunc i64 %indvars.iv.next61 to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv62, 3
  br i1 %exitcond63, label %for.end39, label %for.cond1.preheader

for.end39:                                        ; preds = %for.inc37
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
