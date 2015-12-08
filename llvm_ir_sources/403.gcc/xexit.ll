; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/xexit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_xexit_cleanup = common global void ()* null, align 8

; Function Attrs: noreturn nounwind optsize uwtable
define void @xexit(i32 %code) #0 {
entry:
  %0 = load void ()** @_xexit_cleanup, align 8, !tbaa !0
  %cmp = icmp eq void ()* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void %0() #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @exit(i32 %code) #3
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #1

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
