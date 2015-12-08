; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/ranmom.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

@lattice = external global %struct.site*
@sites_on_node = external global i32

; Function Attrs: nounwind optsize uwtable
define void @ranmom() #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %for.cond1.preheader.lr.ph, label %for.end6

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc4
  %s.015 = phi %struct.site* [ %1, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.inc4 ]
  %i.014 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc5, %for.inc4 ]
  %site_prn = getelementptr inbounds %struct.site* %s.015, i64 0, i32 6
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx = getelementptr inbounds %struct.site* %s.015, i64 0, i32 9, i64 %indvars.iv
  tail call void @random_anti_hermitian(%struct.anti_hermitmat* %arrayidx, %struct.double_prn* %site_prn) #2
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc4, label %for.body3

for.inc4:                                         ; preds = %for.body3
  %inc5 = add nsw i32 %i.014, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.015, i64 1
  %2 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc5, %2
  br i1 %cmp, label %for.cond1.preheader, label %for.end6

for.end6:                                         ; preds = %for.inc4, %entry
  ret void
}

; Function Attrs: optsize
declare void @random_anti_hermitian(%struct.anti_hermitmat*, %struct.double_prn*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
