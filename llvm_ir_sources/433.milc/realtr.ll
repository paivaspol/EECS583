; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define double @realtrace_su3(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc25, %entry
  %indvars.iv45 = phi i64 [ 0, %entry ], [ %indvars.iv.next46, %for.inc25 ]
  %sum.044 = phi double [ 0.000000e+00, %entry ], [ %add24, %for.inc25 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %sum.142 = phi double [ %sum.044, %for.cond1.preheader ], [ %add24, %for.body3 ]
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real11 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 0
  %1 = load double* %real11, align 8, !tbaa !0
  %mul = fmul double %0, %1
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag22 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 1
  %3 = load double* %imag22, align 8, !tbaa !0
  %mul23 = fmul double %2, %3
  %add = fadd double %mul, %mul23
  %add24 = fadd double %sum.142, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc25, label %for.body3

for.inc25:                                        ; preds = %for.body3
  %indvars.iv.next46 = add i64 %indvars.iv45, 1
  %lftr.wideiv47 = trunc i64 %indvars.iv.next46 to i32
  %exitcond48 = icmp eq i32 %lftr.wideiv47, 3
  br i1 %exitcond48, label %for.end27, label %for.cond1.preheader

for.end27:                                        ; preds = %for.inc25
  ret double %add24
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}