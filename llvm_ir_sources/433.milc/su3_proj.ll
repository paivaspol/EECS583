; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize uwtable
define void @su3_projector(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b, %struct.su3_matrix* nocapture %c) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc46, %entry
  %indvars.iv71 = phi i64 [ 0, %entry ], [ %indvars.iv.next72, %for.inc46 ]
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv71, i32 0
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv71, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %0 = load double* %real, align 8, !tbaa !0
  %real8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0
  %1 = load double* %real8, align 8, !tbaa !0
  %mul = fmul double %0, %1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag15 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1
  %3 = load double* %imag15, align 8, !tbaa !0
  %mul16 = fmul double %2, %3
  %add = fadd double %mul, %mul16
  %real21 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv71, i64 %indvars.iv, i32 0
  store double %add, double* %real21, align 8, !tbaa !0
  %4 = load double* %imag, align 8, !tbaa !0
  %5 = load double* %real8, align 8, !tbaa !0
  %mul30 = fmul double %4, %5
  %6 = load double* %real, align 8, !tbaa !0
  %7 = load double* %imag15, align 8, !tbaa !0
  %mul39 = fmul double %6, %7
  %sub = fsub double %mul30, %mul39
  %imag45 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv71, i64 %indvars.iv, i32 1
  store double %sub, double* %imag45, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc46, label %for.body3

for.inc46:                                        ; preds = %for.body3
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %lftr.wideiv73 = trunc i64 %indvars.iv.next72 to i32
  %exitcond74 = icmp eq i32 %lftr.wideiv73, 3
  br i1 %exitcond74, label %for.end48, label %for.cond1.preheader

for.end48:                                        ; preds = %for.inc46
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
