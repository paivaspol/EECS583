; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize uwtable
define void @mult_adj_su3_mat_vec(%struct.su3_matrix* nocapture %a, %struct.su3_vector* nocapture %b, %struct.su3_vector* nocapture %c) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv74 = phi i64 [ 0, %entry ], [ %indvars.iv.next75, %for.end ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %x.sroa.1.071 = phi double [ 0.000000e+00, %for.cond1.preheader ], [ %add46, %for.body3 ]
  %x.sroa.0.070 = phi double [ 0.000000e+00, %for.cond1.preheader ], [ %add43, %for.body3 ]
  %real6 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv74, i32 0
  %0 = load double* %real6, align 8, !tbaa !0
  %imag13 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv74, i32 1
  %1 = load double* %imag13, align 8, !tbaa !0
  %sub = fsub double -0.000000e+00, %1
  %real19 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0
  %2 = load double* %real19, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %imag24 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1
  %3 = load double* %imag24, align 8, !tbaa !0
  %mul25 = fmul double %3, %sub
  %sub26 = fsub double %mul, %mul25
  %mul33 = fmul double %0, %3
  %mul39 = fmul double %2, %sub
  %add = fadd double %mul39, %mul33
  %add43 = fadd double %x.sroa.0.070, %sub26
  %add46 = fadd double %x.sroa.1.071, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %x.sroa.0.0.idx = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv74, i32 0
  store double %add43, double* %x.sroa.0.0.idx, align 8
  %x.sroa.1.8.idx55 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv74, i32 1
  store double %add46, double* %x.sroa.1.8.idx55, align 8
  %indvars.iv.next75 = add i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, 3
  br i1 %exitcond77, label %for.end52, label %for.cond1.preheader

for.end52:                                        ; preds = %for.end
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
