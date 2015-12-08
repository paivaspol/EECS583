; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/strcmp1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readonly uwtable
define i32 @strcmp1(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr, %do.cond ]
  %s2.addr.0 = phi i8* [ %s2, %entry ], [ %incdec.ptr1, %do.cond ]
  %0 = load i8* %s1.addr.0, align 1, !tbaa !0
  %1 = load i8* %s2.addr.0, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, 0
  %cmp4 = icmp eq i8 %1, 0
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %do.end, label %do.cond

do.cond:                                          ; preds = %do.body
  %conv2 = sext i8 %1 to i32
  %incdec.ptr1 = getelementptr inbounds i8* %s2.addr.0, i64 1
  %conv = sext i8 %0 to i32
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.0, i64 1
  %cmp6 = icmp eq i8 %0, %1
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %do.cond
  %a.0 = phi i32 [ %conv, %do.cond ], [ 0, %do.body ]
  %b.0 = phi i32 [ %conv2, %do.cond ], [ 0, %do.body ]
  %sub = sub nsw i32 %a.0, %b.0
  ret i32 %sub
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
