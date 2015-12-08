; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_nn.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @mult_su3_nn(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b, %struct.su3_matrix* nocapture %c) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc71, %entry
  %indvars.iv111 = phi i64 [ 0, %entry ], [ %indvars.iv.next112, %for.inc71 ]
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end, %for.cond1.preheader
  %indvars.iv107 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next108, %for.end ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %x.sroa.0.0104 = phi double [ 0.000000e+00, %for.cond4.preheader ], [ %add59, %for.body6 ]
  %x.sroa.1.0103 = phi double [ 0.000000e+00, %for.cond4.preheader ], [ %add62, %for.body6 ]
  %real9 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv111, i64 %indvars.iv, i32 0
  %0 = load double* %real9, align 8, !tbaa !0
  %real15 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv107, i32 0
  %1 = load double* %real15, align 8, !tbaa !0
  %mul = fmul double %0, %1
  %imag21 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv111, i64 %indvars.iv, i32 1
  %2 = load double* %imag21, align 8, !tbaa !0
  %imag27 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv107, i32 1
  %3 = load double* %imag27, align 8, !tbaa !0
  %mul28 = fmul double %2, %3
  %sub = fsub double %mul, %mul28
  %mul42 = fmul double %0, %3
  %mul55 = fmul double %1, %2
  %add = fadd double %mul55, %mul42
  %add59 = fadd double %x.sroa.0.0104, %sub
  %add62 = fadd double %x.sroa.1.0103, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %for.body6
  %x.sroa.0.0.idx = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv111, i64 %indvars.iv107, i32 0
  store double %add59, double* %x.sroa.0.0.idx, align 8
  %x.sroa.1.8.idx74 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv111, i64 %indvars.iv107, i32 1
  store double %add62, double* %x.sroa.1.8.idx74, align 8
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %lftr.wideiv109 = trunc i64 %indvars.iv.next108 to i32
  %exitcond110 = icmp eq i32 %lftr.wideiv109, 3
  br i1 %exitcond110, label %for.inc71, label %for.cond4.preheader

for.inc71:                                        ; preds = %for.end
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %lftr.wideiv113 = trunc i64 %indvars.iv.next112 to i32
  %exitcond114 = icmp eq i32 %lftr.wideiv113, 3
  br i1 %exitcond114, label %for.end73, label %for.cond1.preheader

for.end73:                                        ; preds = %for.inc71
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
