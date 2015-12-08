; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @sre_tolower(i32 %c) #0 {
entry:
  %idxprom = sext i32 %c to i64
  %call = tail call i16** @__ctype_b_loc() #3
  %0 = load i16** %call, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom
  %1 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %1, 256
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @tolower(i32 %c) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %c, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @sre_toupper(i32 %c) #0 {
entry:
  %idxprom = sext i32 %c to i64
  %call = tail call i16** @__ctype_b_loc() #3
  %0 = load i16** %call, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom
  %1 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %1, 512
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @toupper(i32 %c) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %c, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
