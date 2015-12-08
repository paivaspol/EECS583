; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @strcpy1(i8* nocapture %s1, i8* nocapture %s2, i32 %length) #0 {
entry:
  %cmp20 = icmp sgt i32 %length, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end9
  %blank.025 = phi i32 [ %blank.118, %if.end9 ], [ 0, %entry ]
  %i.024 = phi i32 [ %inc, %if.end9 ], [ 0, %entry ]
  %s1.addr.022 = phi i8* [ %incdec.ptr10, %if.end9 ], [ %s1, %entry ]
  %s2.addr.021 = phi i8* [ %s2.addr.1, %if.end9 ], [ %s2, %entry ]
  %cmp1 = icmp eq i32 %blank.025, 0
  br i1 %cmp1, label %if.end5, label %if.else

if.end5:                                          ; preds = %for.body
  %0 = load i8* %s2.addr.021, align 1, !tbaa !0
  %cmp2 = icmp eq i8 %0, 0
  %.blank.0 = zext i1 %cmp2 to i32
  br i1 %cmp2, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  store i8 %0, i8* %s1.addr.022, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %s2.addr.021, i64 1
  br label %if.end9

if.else:                                          ; preds = %if.end5, %for.body
  %blank.119 = phi i32 [ %.blank.0, %if.end5 ], [ %blank.025, %for.body ]
  store i8 32, i8* %s1.addr.022, align 1, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %blank.118 = phi i32 [ 0, %if.then8 ], [ %blank.119, %if.else ]
  %s2.addr.1 = phi i8* [ %incdec.ptr, %if.then8 ], [ %s2.addr.021, %if.else ]
  %incdec.ptr10 = getelementptr inbounds i8* %s1.addr.022, i64 1
  %inc = add nsw i32 %i.024, 1
  %exitcond = icmp eq i32 %inc, %length
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end9, %entry
  ret i32 0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
