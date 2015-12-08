; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i8* @revcomp(i8* %comp, i8* %seq) #0 {
entry:
  %cmp = icmp eq i8* %comp, null
  %cmp1 = icmp eq i8* %seq, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  %call = tail call i32 @StrReverse(i8* %comp, i8* %seq) #3
  %0 = load i8* %comp, align 1, !tbaa !0
  %cmp443 = icmp eq i8 %0, 0
  br i1 %cmp443, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end3
  %call25 = tail call i16** @__ctype_b_loc() #4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end31
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %5, %if.end31 ]
  %s.044 = phi i8* [ %comp, %for.body.lr.ph ], [ %incdec.ptr, %if.end31 ]
  %conv = sext i8 %1 to i32
  %call7 = tail call i32 @sre_toupper(i32 %conv) #3
  %conv8 = trunc i32 %call7 to i8
  %sext = shl i32 %call7, 24
  %conv9 = ashr exact i32 %sext, 24
  switch i32 %conv9, label %sw.epilog [
    i32 65, label %sw.bb
    i32 67, label %sw.bb10
    i32 71, label %sw.bb11
    i32 84, label %sw.bb12
    i32 85, label %sw.bb13
    i32 82, label %sw.bb14
    i32 89, label %sw.bb15
    i32 77, label %sw.bb16
    i32 75, label %sw.bb17
    i32 83, label %sw.bb18
    i32 87, label %sw.bb19
    i32 72, label %sw.bb20
    i32 68, label %sw.bb21
    i32 66, label %sw.bb22
    i32 86, label %sw.bb23
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb20:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb23:                                          ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  %c.0 = phi i8 [ %conv8, %for.body ], [ 66, %sw.bb23 ], [ 86, %sw.bb22 ], [ 72, %sw.bb21 ], [ 68, %sw.bb20 ], [ 87, %sw.bb19 ], [ 83, %sw.bb18 ], [ 77, %sw.bb17 ], [ 75, %sw.bb16 ], [ 82, %sw.bb15 ], [ 89, %sw.bb14 ], [ 65, %sw.bb13 ], [ 65, %sw.bb12 ], [ 67, %sw.bb11 ], [ 71, %sw.bb10 ], [ 84, %sw.bb ]
  %2 = load i8* %s.044, align 1, !tbaa !0
  %idxprom = sext i8 %2 to i64
  %3 = load i16** %call25, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %4, 512
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.end31, label %if.then27

if.then27:                                        ; preds = %sw.epilog
  %conv28 = sext i8 %c.0 to i32
  %call29 = tail call i32 @sre_tolower(i32 %conv28) #3
  %conv30 = trunc i32 %call29 to i8
  br label %if.end31

if.end31:                                         ; preds = %sw.epilog, %if.then27
  %c.1 = phi i8 [ %conv30, %if.then27 ], [ %c.0, %sw.epilog ]
  store i8 %c.1, i8* %s.044, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %s.044, i64 1
  %5 = load i8* %incdec.ptr, align 1, !tbaa !0
  %cmp4 = icmp eq i8 %5, 0
  br i1 %cmp4, label %return, label %for.body

return:                                           ; preds = %if.end3, %if.end31, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %comp, %if.end31 ], [ %comp, %if.end3 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i32 @StrReverse(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: optsize
declare i32 @sre_tolower(i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind optsize readnone }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"short", metadata !0}
