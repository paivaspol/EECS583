; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/lbasename.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readonly uwtable
define i8* @lbasename(i8* %name) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.then, %for.cond.for.inc_crit_edge, %entry
  %name.addr.0 = phi i8* [ %name, %entry ], [ %incdec.ptr.pre, %for.cond.for.inc_crit_edge ], [ %add.ptr, %if.then ]
  %base.0 = phi i8* [ %name, %entry ], [ %base.0, %for.cond.for.inc_crit_edge ], [ %add.ptr, %if.then ]
  %0 = load i8* %name.addr.0, align 1, !tbaa !0
  switch i8 %0, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 47, label %if.then
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  %incdec.ptr.pre = getelementptr inbounds i8* %name.addr.0, i64 1
  br label %for.cond

if.then:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds i8* %name.addr.0, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i8* %base.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
