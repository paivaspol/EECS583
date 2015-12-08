; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_matvec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize uwtable
define void @mult_su3_mat_vec(%struct.su3_matrix* nocapture %a, %struct.su3_vector* nocapture %b, %struct.su3_vector* nocapture %c) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv84 = phi i64 [ 0, %entry ], [ %indvars.iv.next85, %for.end ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %x.sroa.0.081 = phi double [ 0.000000e+00, %for.cond1.preheader ], [ %add48, %for.body3 ]
  %x.sroa.1.080 = phi double [ 0.000000e+00, %for.cond1.preheader ], [ %add51, %for.body3 ]
  %real6 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv84, i64 %indvars.iv, i32 0
  %0 = load double* %real6, align 8, !tbaa !0
  %real10 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0
  %1 = load double* %real10, align 8, !tbaa !0
  %mul = fmul double %0, %1
  %imag16 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv84, i64 %indvars.iv, i32 1
  %2 = load double* %imag16, align 8, !tbaa !0
  %imag20 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1
  %3 = load double* %imag20, align 8, !tbaa !0
  %mul21 = fmul double %2, %3
  %sub = fsub double %mul, %mul21
  %mul33 = fmul double %0, %3
  %mul44 = fmul double %1, %2
  %add = fadd double %mul44, %mul33
  %add48 = fadd double %x.sroa.0.081, %sub
  %add51 = fadd double %x.sroa.1.080, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %x.sroa.0.0.idx = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv84, i32 0
  store double %add48, double* %x.sroa.0.0.idx, align 8
  %x.sroa.1.8.idx58 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv84, i32 1
  store double %add51, double* %x.sroa.1.8.idx58, align 8
  %indvars.iv.next85 = add i64 %indvars.iv84, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv.next85 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, 3
  br i1 %exitcond87, label %for.end57, label %for.cond1.preheader

for.end57:                                        ; preds = %for.end
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
