; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/agc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @agc_max(float** nocapture %mfc, i32 %n_frame) #0 {
entry:
  %0 = load float** %mfc, align 8, !tbaa !0
  %1 = load float* %0, align 4, !tbaa !3
  %cmp30 = icmp sgt i32 %n_frame, 1
  br i1 %cmp30, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body, %entry
  %maxc0.0.lcssa = phi float [ %1, %entry ], [ %maxc0.1, %for.body ]
  %cmp928 = icmp sgt i32 %n_frame, 0
  br i1 %cmp928, label %for.body10, label %for.end16

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body ], [ 1, %entry ]
  %maxc0.031 = phi float [ %maxc0.1, %for.body ], [ %1, %entry ]
  %arrayidx2 = getelementptr inbounds float** %mfc, i64 %indvars.iv33
  %2 = load float** %arrayidx2, align 8, !tbaa !0
  %3 = load float* %2, align 4, !tbaa !3
  %cmp4 = fcmp ogt float %3, %maxc0.031
  %maxc0.1 = select i1 %cmp4, float %3, float %maxc0.031
  %indvars.iv.next34 = add i64 %indvars.iv33, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %n_frame
  br i1 %exitcond36, label %for.cond8.preheader, label %for.body

for.body10:                                       ; preds = %for.cond8.preheader, %for.body10.for.body10_crit_edge
  %4 = phi float [ %.pre37, %for.body10.for.body10_crit_edge ], [ %1, %for.cond8.preheader ]
  %5 = phi float* [ %.pre, %for.body10.for.body10_crit_edge ], [ %0, %for.cond8.preheader ]
  %indvars.iv = phi i64 [ %phitmp, %for.body10.for.body10_crit_edge ], [ 1, %for.cond8.preheader ]
  %sub = fsub float %4, %maxc0.0.lcssa
  store float %sub, float* %5, align 4, !tbaa !3
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_frame
  br i1 %exitcond, label %for.end16, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  %arrayidx12.phi.trans.insert = getelementptr inbounds float** %mfc, i64 %indvars.iv
  %.pre = load float** %arrayidx12.phi.trans.insert, align 8, !tbaa !0
  %.pre37 = load float* %.pre, align 4, !tbaa !3
  %phitmp = add i64 %indvars.iv, 1
  br label %for.body10

for.end16:                                        ; preds = %for.body10, %for.cond8.preheader
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
