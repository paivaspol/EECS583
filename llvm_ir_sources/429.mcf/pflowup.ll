; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) #0 {
entry:
  %cmp26 = icmp eq %struct.node* %iplus, %w
  br i1 %cmp26, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %for.body, %entry
  %cmp324 = icmp eq %struct.node* %jplus, %w
  br i1 %cmp324, label %for.end14, label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %iplus.addr.027 = phi %struct.node* [ %1, %for.body ], [ %iplus, %entry ]
  %orientation = getelementptr inbounds %struct.node* %iplus.addr.027, i64 0, i32 1
  %0 = load i32* %orientation, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  %flow = getelementptr inbounds %struct.node* %iplus.addr.027, i64 0, i32 10
  %. = zext i1 %tobool to i64
  store i64 %., i64* %flow, align 8, !tbaa !3
  %pred = getelementptr inbounds %struct.node* %iplus.addr.027, i64 0, i32 3
  %1 = load %struct.node** %pred, align 8, !tbaa !4
  %cmp = icmp eq %struct.node* %1, %w
  br i1 %cmp, label %for.cond2.preheader, label %for.body

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %jplus.addr.025 = phi %struct.node* [ %3, %for.body4 ], [ %jplus, %for.cond2.preheader ]
  %orientation5 = getelementptr inbounds %struct.node* %jplus.addr.025, i64 0, i32 1
  %2 = load i32* %orientation5, align 4, !tbaa !0
  %flow8 = getelementptr inbounds %struct.node* %jplus.addr.025, i64 0, i32 10
  %not.tobool6 = icmp ne i32 %2, 0
  %.23 = zext i1 %not.tobool6 to i64
  store i64 %.23, i64* %flow8, align 8, !tbaa !3
  %pred13 = getelementptr inbounds %struct.node* %jplus.addr.025, i64 0, i32 3
  %3 = load %struct.node** %pred13, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.node* %3, %w
  br i1 %cmp3, label %for.end14, label %for.body4

for.end14:                                        ; preds = %for.body4, %for.cond2.preheader
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}