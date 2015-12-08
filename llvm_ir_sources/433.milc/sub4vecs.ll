; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @sub_four_su3_vecs(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b1, %struct.su3_vector* nocapture %b2, %struct.su3_vector* nocapture %b3, %struct.su3_vector* nocapture %b4) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 0
  %0 = load double* %real, align 8, !tbaa !0
  %real4 = getelementptr inbounds %struct.su3_vector* %b1, i64 0, i32 0, i64 %indvars.iv, i32 0
  %1 = load double* %real4, align 8, !tbaa !0
  %sub = fsub double %0, %1
  store double %sub, double* %real, align 8, !tbaa !0
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 1
  %2 = load double* %imag, align 8, !tbaa !0
  %imag15 = getelementptr inbounds %struct.su3_vector* %b1, i64 0, i32 0, i64 %indvars.iv, i32 1
  %3 = load double* %imag15, align 8, !tbaa !0
  %sub16 = fsub double %2, %3
  store double %sub16, double* %imag, align 8, !tbaa !0
  %real28 = getelementptr inbounds %struct.su3_vector* %b2, i64 0, i32 0, i64 %indvars.iv, i32 0
  %4 = load double* %real28, align 8, !tbaa !0
  %sub29 = fsub double %sub, %4
  store double %sub29, double* %real, align 8, !tbaa !0
  %imag41 = getelementptr inbounds %struct.su3_vector* %b2, i64 0, i32 0, i64 %indvars.iv, i32 1
  %5 = load double* %imag41, align 8, !tbaa !0
  %sub42 = fsub double %sub16, %5
  store double %sub42, double* %imag, align 8, !tbaa !0
  %real54 = getelementptr inbounds %struct.su3_vector* %b3, i64 0, i32 0, i64 %indvars.iv, i32 0
  %6 = load double* %real54, align 8, !tbaa !0
  %sub55 = fsub double %sub29, %6
  store double %sub55, double* %real, align 8, !tbaa !0
  %imag67 = getelementptr inbounds %struct.su3_vector* %b3, i64 0, i32 0, i64 %indvars.iv, i32 1
  %7 = load double* %imag67, align 8, !tbaa !0
  %sub68 = fsub double %sub42, %7
  store double %sub68, double* %imag, align 8, !tbaa !0
  %real80 = getelementptr inbounds %struct.su3_vector* %b4, i64 0, i32 0, i64 %indvars.iv, i32 0
  %8 = load double* %real80, align 8, !tbaa !0
  %sub81 = fsub double %sub55, %8
  store double %sub81, double* %real, align 8, !tbaa !0
  %imag93 = getelementptr inbounds %struct.su3_vector* %b4, i64 0, i32 0, i64 %indvars.iv, i32 1
  %9 = load double* %imag93, align 8, !tbaa !0
  %sub94 = fsub double %sub68, %9
  store double %sub94, double* %imag, align 8, !tbaa !0
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
