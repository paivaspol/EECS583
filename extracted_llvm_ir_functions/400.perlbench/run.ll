; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/run.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }

@PL_op = external global %struct.op*
@PL_sig_pending = external global i32
@PL_tainted = external global i8

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_runops_standard() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_ppaddr2 = getelementptr inbounds %struct.op* %0, i64 0, i32 2
  %1 = load %struct.op* ()** %op_ppaddr2, align 8, !tbaa !0
  %call3 = tail call %struct.op* %1() #2
  store %struct.op* %call3, %struct.op** @PL_op, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.op* %call3, null
  br i1 %tobool4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %2 = phi %struct.op* [ %call, %while.cond.backedge ], [ %call3, %entry ]
  %3 = load i32* @PL_sig_pending, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %while.cond.backedge, label %if.then

if.then:                                          ; preds = %while.body
  tail call void @Perl_despatch_signals() #2
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then, %while.body
  %4 = phi %struct.op* [ %.pre, %if.then ], [ %2, %while.body ]
  %op_ppaddr = getelementptr inbounds %struct.op* %4, i64 0, i32 2
  %5 = load %struct.op* ()** %op_ppaddr, align 8, !tbaa !0
  %call = tail call %struct.op* %5() #2
  store %struct.op* %call, %struct.op** @PL_op, align 8, !tbaa !0
  %tobool = icmp eq %struct.op* %call, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %entry
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_despatch_signals() #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
