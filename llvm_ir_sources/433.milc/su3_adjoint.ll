; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @su3_adjoint(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc23, %entry
  %indvars.iv39 = phi i64 [ 0, %entry ], [ %indvars.iv.next40, %for.inc23 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv39, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real11 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv39, i64 %indvars.iv, i32 0
  store double %0, double* %real11, align 8, !tbaa !0
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv39, i32 1
  %1 = load double* %imag, align 8, !tbaa !0
  %sub = fsub double -0.000000e+00, %1
  %imag22 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv39, i64 %indvars.iv, i32 1
  store double %sub, double* %imag22, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc23, label %for.body3

for.inc23:                                        ; preds = %for.body3
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, 3
  br i1 %exitcond42, label %for.end25, label %for.cond1.preheader

for.end25:                                        ; preds = %for.inc23
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}