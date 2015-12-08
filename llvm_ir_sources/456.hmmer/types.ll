; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squid_errno = external global i32
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IsInt(i8* %s) #0 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #5
  %0 = load i16** %call, align 8, !tbaa !0
  br label %while.cond

if.then:                                          ; preds = %entry
  store i32 6, i32* @squid_errno, align 4, !tbaa !3
  br label %return

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %s, %while.cond.preheader ]
  %1 = load i8* %s.addr.0, align 1, !tbaa !1
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom
  %2 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %2, 8192
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  switch i8 %1, label %if.end10 [
    i8 45, label %if.then8
    i8 43, label %if.then8
  ]

if.then8:                                         ; preds = %while.end, %while.end
  br label %if.end10

if.end10:                                         ; preds = %while.end, %if.then8
  %s.addr.1 = phi i8* [ %incdec.ptr, %if.then8 ], [ %s.addr.0, %while.end ]
  %call11 = tail call i32 @strncmp(i8* %s.addr.1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i64 2) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false18

land.lhs.true:                                    ; preds = %if.end10
  %call14 = tail call i64 @strlen(i8* %s.addr.1) #6
  %conv15 = trunc i64 %call14 to i32
  %cmp16 = icmp sgt i32 %conv15, 2
  br i1 %cmp16, label %if.end39, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true, %if.end10
  %call19 = tail call i32 @strncmp(i8* %s.addr.1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i64 2) #6
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.else

land.lhs.true22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call i64 @strlen(i8* %s.addr.1) #6
  %conv24 = trunc i64 %call23 to i32
  %cmp25 = icmp sgt i32 %conv24, 2
  br i1 %cmp25, label %if.end39, label %if.else

if.else:                                          ; preds = %land.lhs.true22, %lor.lhs.false18
  %3 = load i8* %s.addr.1, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %3, 48
  br i1 %cmp29, label %land.lhs.true31, label %while.cond42.preheader

land.lhs.true31:                                  ; preds = %if.else
  %call32 = tail call i64 @strlen(i8* %s.addr.1) #6
  %conv33 = trunc i64 %call32 to i32
  %cmp34 = icmp sgt i32 %conv33, 1
  %incdec.ptr37 = getelementptr inbounds i8* %s.addr.1, i64 1
  %incdec.ptr37.s.addr.1 = select i1 %cmp34, i8* %incdec.ptr37, i8* %s.addr.1
  %.pre = load i8* %incdec.ptr37.s.addr.1, align 1, !tbaa !1
  br label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %if.else, %land.lhs.true31
  %4 = phi i8 [ %.pre, %land.lhs.true31 ], [ %3, %if.else ]
  %s.addr.3.ph = phi i8* [ %incdec.ptr37.s.addr.1, %land.lhs.true31 ], [ %s.addr.1, %if.else ]
  %cmp4498 = icmp eq i8 %4, 0
  br i1 %cmp4498, label %return, label %while.body46

if.end39:                                         ; preds = %land.lhs.true, %land.lhs.true22
  %add.ptr = getelementptr inbounds i8* %s.addr.1, i64 2
  %5 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp6194 = icmp eq i8 %5, 0
  br i1 %cmp6194, label %return, label %while.body63

while.cond42:                                     ; preds = %while.body46
  %6 = load i8* %incdec.ptr56, align 1, !tbaa !1
  %cmp44 = icmp eq i8 %6, 0
  br i1 %cmp44, label %return, label %while.body46

while.body46:                                     ; preds = %while.cond42.preheader, %while.cond42
  %7 = phi i8 [ %6, %while.cond42 ], [ %4, %while.cond42.preheader ]
  %s.addr.399 = phi i8* [ %incdec.ptr56, %while.cond42 ], [ %s.addr.3.ph, %while.cond42.preheader ]
  %idxprom48 = sext i8 %7 to i64
  %arrayidx50 = getelementptr inbounds i16* %0, i64 %idxprom48
  %8 = load i16* %arrayidx50, align 2, !tbaa !4
  %and52 = and i16 %8, 2048
  %tobool53 = icmp eq i16 %and52, 0
  %incdec.ptr56 = getelementptr inbounds i8* %s.addr.399, i64 1
  br i1 %tobool53, label %return, label %while.cond42

while.cond59:                                     ; preds = %while.body63
  %9 = load i8* %incdec.ptr73, align 1, !tbaa !1
  %cmp61 = icmp eq i8 %9, 0
  br i1 %cmp61, label %return, label %while.body63

while.body63:                                     ; preds = %if.end39, %while.cond59
  %10 = phi i8 [ %9, %while.cond59 ], [ %5, %if.end39 ]
  %s.addr.495 = phi i8* [ %incdec.ptr73, %while.cond59 ], [ %add.ptr, %if.end39 ]
  %idxprom65 = sext i8 %10 to i64
  %arrayidx67 = getelementptr inbounds i16* %0, i64 %idxprom65
  %11 = load i16* %arrayidx67, align 2, !tbaa !4
  %and69 = and i16 %11, 4096
  %tobool70 = icmp eq i16 %and69, 0
  %incdec.ptr73 = getelementptr inbounds i8* %s.addr.495, i64 1
  br i1 %tobool70, label %return, label %while.cond59

return:                                           ; preds = %while.cond42.preheader, %while.body46, %while.cond42, %if.end39, %while.body63, %while.cond59, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end39 ], [ 0, %while.body63 ], [ 1, %while.cond59 ], [ 1, %while.cond42.preheader ], [ 0, %while.body46 ], [ 1, %while.cond42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IsReal(i8* %s) #3 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #5
  %0 = load i16** %call, align 8, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %s, %while.cond.preheader ]
  %1 = load i8* %s.addr.0, align 1, !tbaa !1
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom
  %2 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %2, 8192
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  switch i8 %1, label %while.cond11.preheader [
    i8 45, label %if.then8
    i8 43, label %if.then8
  ]

if.then8:                                         ; preds = %while.end, %while.end
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %if.then8, %while.end
  %3 = phi i8 [ %1, %while.end ], [ %.pre, %if.then8 ]
  %s.addr.1.ph = phi i8* [ %s.addr.0, %while.end ], [ %incdec.ptr, %if.then8 ]
  %cmp13102 = icmp eq i8 %3, 0
  br i1 %cmp13102, label %while.cond65.preheader, label %while.body15

while.body15:                                     ; preds = %while.cond11.preheader, %if.end62
  %4 = phi i8 [ %9, %if.end62 ], [ %3, %while.cond11.preheader ]
  %gotreal.0106 = phi i32 [ %gotreal.1, %if.end62 ], [ 0, %while.cond11.preheader ]
  %gotexp.0105 = phi i32 [ %gotexp.1, %if.end62 ], [ 0, %while.cond11.preheader ]
  %gotdecimal.0104 = phi i32 [ %gotdecimal.1, %if.end62 ], [ 0, %while.cond11.preheader ]
  %s.addr.1103 = phi i8* [ %incdec.ptr63, %if.end62 ], [ %s.addr.1.ph, %while.cond11.preheader ]
  %idxprom17 = sext i8 %4 to i64
  %arrayidx19 = getelementptr inbounds i16* %0, i64 %idxprom17
  %5 = load i16* %arrayidx19, align 2, !tbaa !4
  %conv20 = zext i16 %5 to i32
  %and21 = and i32 %conv20, 2048
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.else, label %if.then23

if.then23:                                        ; preds = %while.body15
  %inc = add nsw i32 %gotreal.0106, 1
  br label %if.end62

if.else:                                          ; preds = %while.body15
  switch i8 %4, label %if.else50 [
    i8 46, label %if.then27
    i8 101, label %if.then44
    i8 69, label %if.then44
  ]

if.then27:                                        ; preds = %if.else
  %6 = or i32 %gotexp.0105, %gotdecimal.0104
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.else33, label %return

if.else33:                                        ; preds = %if.then27
  %inc34 = add nsw i32 %gotdecimal.0104, 1
  br label %if.end62

if.then44:                                        ; preds = %if.else, %if.else
  %tobool45 = icmp eq i32 %gotexp.0105, 0
  br i1 %tobool45, label %if.end62, label %return

if.else50:                                        ; preds = %if.else
  %and56 = and i32 %conv20, 8192
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %if.end62, label %while.cond65.preheader

while.cond65.preheader:                           ; preds = %if.end62, %if.else50, %while.cond11.preheader
  %8 = phi i8 [ 0, %while.cond11.preheader ], [ %4, %if.else50 ], [ 0, %if.end62 ]
  %gotreal.0.lcssa = phi i32 [ 0, %while.cond11.preheader ], [ %gotreal.0106, %if.else50 ], [ %gotreal.1, %if.end62 ]
  %s.addr.1.lcssa = phi i8* [ %s.addr.1.ph, %while.cond11.preheader ], [ %s.addr.1103, %if.else50 ], [ %incdec.ptr63, %if.end62 ]
  br label %while.cond65

if.end62:                                         ; preds = %if.then44, %if.else50, %if.else33, %if.then23
  %gotdecimal.1 = phi i32 [ %gotdecimal.0104, %if.then23 ], [ %inc34, %if.else33 ], [ %gotdecimal.0104, %if.else50 ], [ %gotdecimal.0104, %if.then44 ]
  %gotexp.1 = phi i32 [ %gotexp.0105, %if.then23 ], [ %gotexp.0105, %if.else33 ], [ %gotexp.0105, %if.else50 ], [ 1, %if.then44 ]
  %gotreal.1 = phi i32 [ %inc, %if.then23 ], [ %gotreal.0106, %if.else33 ], [ %gotreal.0106, %if.else50 ], [ %gotreal.0106, %if.then44 ]
  %incdec.ptr63 = getelementptr inbounds i8* %s.addr.1103, i64 1
  %9 = load i8* %incdec.ptr63, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %while.cond65.preheader, label %while.body15

while.cond65:                                     ; preds = %while.cond65.while.cond65_crit_edge, %while.cond65.preheader
  %10 = phi i8 [ %.pre114, %while.cond65.while.cond65_crit_edge ], [ %8, %while.cond65.preheader ]
  %s.addr.2 = phi i8* [ %incdec.ptr74, %while.cond65.while.cond65_crit_edge ], [ %s.addr.1.lcssa, %while.cond65.preheader ]
  %idxprom67 = sext i8 %10 to i64
  %arrayidx69 = getelementptr inbounds i16* %0, i64 %idxprom67
  %11 = load i16* %arrayidx69, align 2, !tbaa !4
  %and71 = and i16 %11, 8192
  %tobool72 = icmp eq i16 %and71, 0
  %incdec.ptr74 = getelementptr inbounds i8* %s.addr.2, i64 1
  br i1 %tobool72, label %while.end75, label %while.cond65.while.cond65_crit_edge

while.cond65.while.cond65_crit_edge:              ; preds = %while.cond65
  %.pre114 = load i8* %incdec.ptr74, align 1, !tbaa !1
  br label %while.cond65

while.end75:                                      ; preds = %while.cond65
  %cmp77 = icmp ne i8 %10, 0
  %tobool79 = icmp eq i32 %gotreal.0.lcssa, 0
  %or.cond = or i1 %cmp77, %tobool79
  %12 = zext i1 %or.cond to i32
  %. = xor i32 %12, 1
  ret i32 %.

return:                                           ; preds = %if.then44, %if.then27, %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @Byteswap(i8* nocapture %swap, i32 %nbytes) #0 {
entry:
  %div = sdiv i32 %nbytes, 2
  %cmp20 = icmp sgt i32 %nbytes, 1
  br i1 %cmp20, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i32 %nbytes, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %sub1 = sub i32 %sub, %0
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8* %swap, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8* %swap, i64 %indvars.iv
  %2 = load i8* %arrayidx3, align 1, !tbaa !1
  store i8 %2, i8* %arrayidx, align 1, !tbaa !1
  store i8 %1, i8* %arrayidx3, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %div
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define zeroext i16 @sre_ntoh16(i16 zeroext %netshort) #4 {
entry:
  ret i16 %netshort
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @sre_ntoh32(i32 %netlong) #4 {
entry:
  ret i32 %netlong
}

; Function Attrs: nounwind optsize readnone uwtable
define zeroext i16 @sre_hton16(i16 zeroext %hostshort) #4 {
entry:
  ret i16 %hostshort
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @sre_hton32(i32 %hostlong) #4 {
entry:
  ret i32 %hostlong
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @sre_ntoh64(i64 %net_int64) #4 {
entry:
  ret i64 %net_int64
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @sre_hton64(i64 %host_int64) #4 {
entry:
  ret i64 %host_int64
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
