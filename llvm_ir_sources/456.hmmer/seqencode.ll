; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iupactype = type { i8, i8, i8, i8 }

@iupac = external global [0 x %struct.iupactype]

; Function Attrs: nounwind optsize readonly uwtable
define i32 @seqcmp(i8* nocapture %s1, i8* nocapture %s2, i32 %allow) #0 {
entry:
  %0 = load i8* %s1, align 1, !tbaa !0
  %cmp42 = icmp eq i8 %0, 0
  br i1 %cmp42, label %while.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %entry ]
  %mmat.045 = phi i32 [ %mmat.0.inc, %while.body ], [ 0, %entry ]
  %s1.addr.044 = phi i8* [ %incdec.ptr, %while.body ], [ %s1, %entry ]
  %s2.addr.043 = phi i8* [ %incdec.ptr12, %while.body ], [ %s2, %entry ]
  %2 = load i8* %s2.addr.043, align 1, !tbaa !0
  %cmp3 = icmp eq i8 %2, 0
  %cmp5 = icmp sgt i32 %mmat.045, %allow
  %or.cond = or i1 %cmp3, %cmp5
  br i1 %or.cond, label %while.cond13.preheader, label %while.body

while.cond13.preheader:                           ; preds = %land.lhs.true
  %cmp1937 = icmp sle i32 %mmat.045, %allow
  %not.cmp1638 = icmp ne i8 %1, 0
  %.cmp1939 = and i1 %cmp1937, %not.cmp1638
  br i1 %.cmp1939, label %while.body22, label %while.end24

while.body:                                       ; preds = %land.lhs.true
  %and36 = and i8 %2, %1
  %not.cmp10 = icmp ne i8 %and36, %2
  %inc = zext i1 %not.cmp10 to i32
  %mmat.0.inc = add nsw i32 %inc, %mmat.045
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.044, i64 1
  %incdec.ptr12 = getelementptr inbounds i8* %s2.addr.043, i64 1
  %3 = load i8* %incdec.ptr, align 1, !tbaa !0
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %while.end24, label %land.lhs.true

while.body22:                                     ; preds = %while.cond13.preheader, %while.body22
  %mmat.241 = phi i32 [ %inc23, %while.body22 ], [ %mmat.045, %while.cond13.preheader ]
  %s1.addr.140 = phi i8* [ %incdec.ptr14, %while.body22 ], [ %s1.addr.044, %while.cond13.preheader ]
  %incdec.ptr14 = getelementptr inbounds i8* %s1.addr.140, i64 1
  %inc23 = add nsw i32 %mmat.241, 1
  %4 = load i8* %incdec.ptr14, align 1, !tbaa !0
  %cmp19 = icmp slt i32 %mmat.241, %allow
  %not.cmp16 = icmp ne i8 %4, 0
  %.cmp19 = and i1 %cmp19, %not.cmp16
  br i1 %.cmp19, label %while.body22, label %while.end24

while.end24:                                      ; preds = %while.body, %entry, %while.body22, %while.cond13.preheader
  %mmat.2.lcssa = phi i32 [ %mmat.045, %while.cond13.preheader ], [ %inc23, %while.body22 ], [ 0, %entry ], [ %mmat.0.inc, %while.body ]
  ret i32 %mmat.2.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @seqncmp(i8* nocapture %s1, i8* nocapture %s2, i32 %n, i32 %allow) #0 {
entry:
  %0 = load i8* %s2, align 1, !tbaa !0
  %cmp47 = icmp eq i8 %0, 0
  br i1 %cmp47, label %while.cond12.preheader, label %land.rhs

land.rhs:                                         ; preds = %entry, %if.end
  %1 = phi i8 [ %3, %if.end ], [ %0, %entry ]
  %mmat.051 = phi i32 [ %mmat.1, %if.end ], [ 0, %entry ]
  %n.addr.050 = phi i32 [ %dec, %if.end ], [ %n, %entry ]
  %s2.addr.049 = phi i8* [ %incdec.ptr11, %if.end ], [ %s2, %entry ]
  %s1.addr.048 = phi i8* [ %incdec.ptr, %if.end ], [ %s1, %entry ]
  %dec = add nsw i32 %n.addr.050, -1
  %cmp2 = icmp eq i32 %n.addr.050, 0
  br i1 %cmp2, label %while.cond12.preheader, label %while.body

while.cond12.preheader:                           ; preds = %if.end, %land.rhs, %entry
  %mmat.0.lcssa = phi i32 [ 0, %entry ], [ %mmat.051, %land.rhs ], [ %mmat.1, %if.end ]
  %s1.addr.0.lcssa = phi i8* [ %s1, %entry ], [ %s1.addr.048, %land.rhs ], [ %incdec.ptr, %if.end ]
  %n.addr.1.ph = phi i32 [ %n, %entry ], [ %dec, %land.rhs ], [ %dec, %if.end ]
  %cmp1440 = icmp eq i32 %n.addr.1.ph, 0
  br i1 %cmp1440, label %return, label %land.end24

while.body:                                       ; preds = %land.rhs
  %2 = load i8* %s1.addr.048, align 1, !tbaa !0
  %and38 = and i8 %2, %1
  %cmp7 = icmp eq i8 %and38, %1
  br i1 %cmp7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %inc = add nsw i32 %mmat.051, 1
  %cmp9 = icmp slt i32 %mmat.051, %allow
  br i1 %cmp9, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %mmat.1 = phi i32 [ %mmat.051, %while.body ], [ %inc, %land.lhs.true ]
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.048, i64 1
  %incdec.ptr11 = getelementptr inbounds i8* %s2.addr.049, i64 1
  %3 = load i8* %incdec.ptr11, align 1, !tbaa !0
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %while.cond12.preheader, label %land.rhs

land.end24:                                       ; preds = %while.cond12.preheader, %while.body25
  %dec1343.in = phi i32 [ %dec1343, %while.body25 ], [ %n.addr.1.ph, %while.cond12.preheader ]
  %mmat.242 = phi i32 [ %inc26, %while.body25 ], [ %mmat.0.lcssa, %while.cond12.preheader ]
  %s1.addr.141 = phi i8* [ %incdec.ptr17, %while.body25 ], [ %s1.addr.0.lcssa, %while.cond12.preheader ]
  %dec1343 = add nsw i32 %dec1343.in, -1
  %4 = load i8* %s1.addr.141, align 1, !tbaa !0
  %cmp22 = icmp sle i32 %mmat.242, %allow
  %not.cmp19 = icmp ne i8 %4, 0
  %.cmp22 = and i1 %cmp22, %not.cmp19
  br i1 %.cmp22, label %while.body25, label %return

while.body25:                                     ; preds = %land.end24
  %incdec.ptr17 = getelementptr inbounds i8* %s1.addr.141, i64 1
  %inc26 = add nsw i32 %mmat.242, 1
  %cmp14 = icmp eq i32 %dec1343, 0
  br i1 %cmp14, label %return, label %land.end24

return:                                           ; preds = %land.lhs.true, %while.cond12.preheader, %land.end24, %while.body25
  %retval.0 = phi i32 [ %mmat.0.lcssa, %while.cond12.preheader ], [ %mmat.242, %land.end24 ], [ %inc26, %while.body25 ], [ %inc, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @seqencode(i8* nocapture %codeseq, i8* nocapture %str) #1 {
entry:
  %0 = load i8* %str, align 1, !tbaa !0
  %cmp35 = icmp eq i8 %0, 0
  br i1 %cmp35, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.else
  %conv38.in = phi i8 [ %0, %while.body.lr.ph ], [ %7, %if.else ]
  %ptr.037 = phi i8* [ %codeseq, %while.body.lr.ph ], [ %incdec.ptr, %if.else ]
  %str.addr.036 = phi i8* [ %str, %while.body.lr.ph ], [ %incdec.ptr21, %if.else ]
  %idxprom = sext i8 %conv38.in to i64
  %1 = load i16** %call, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16* %1, i64 %idxprom
  %2 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %2, 512
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %while.body
  %conv38 = sext i8 %conv38.in to i32
  %call5 = tail call i32 @toupper(i32 %conv38) #6
  %conv6 = trunc i32 %call5 to i8
  store i8 %conv6, i8* %str.addr.036, align 1, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body, %if.then
  %3 = phi i8 [ %conv38.in, %while.body ], [ %conv6, %if.then ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %sym = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0
  %4 = load i8* %sym, align 1, !tbaa !0
  %cmp11 = icmp ne i8 %3, %4
  %5 = trunc i64 %indvars.iv to i32
  %cmp13 = icmp slt i32 %5, 18
  %or.cond = and i1 %cmp11, %cmp13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.0, 1
  br i1 %or.cond, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %cmp15 = icmp sgt i32 %idx.0, 17
  br i1 %cmp15, label %return, label %if.else

if.else:                                          ; preds = %for.end
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2
  %6 = load i8* %code, align 1, !tbaa !0
  store i8 %6, i8* %ptr.037, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %ptr.037, i64 1
  %incdec.ptr21 = getelementptr inbounds i8* %str.addr.036, i64 1
  %7 = load i8* %incdec.ptr21, align 1, !tbaa !0
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %return, label %while.body

return:                                           ; preds = %if.else, %for.end, %entry
  %ptr.0.lcssa = phi i8* [ %codeseq, %entry ], [ %ptr.037, %for.end ], [ %incdec.ptr, %if.else ]
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.end ], [ 1, %if.else ]
  store i8 0, i8* %ptr.0.lcssa, align 1, !tbaa !0
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @coded_revcomp(i8* nocapture %comp, i8* nocapture %seq) #1 {
entry:
  %call = tail call i64 @strlen(i8* %seq) #7
  %cmp29 = icmp sgt i64 %call, 0
  br i1 %cmp29, label %for.cond2.preheader.lr.ph, label %return

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %add.ptr.sum = add i64 %call, -1
  %add.ptr1 = getelementptr inbounds i8* %seq, i64 %add.ptr.sum
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %if.else
  %pos.032 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %inc16, %if.else ]
  %fwdp.031 = phi i8* [ %comp, %for.cond2.preheader.lr.ph ], [ %incdec.ptr, %if.else ]
  %bckp.030 = phi i8* [ %add.ptr1, %for.cond2.preheader.lr.ph ], [ %incdec.ptr14, %if.else ]
  %0 = load i8* %bckp.030, align 1, !tbaa !0
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2, %for.cond2.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond2 ], [ 0, %for.cond2.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond2 ], [ 0, %for.cond2.preheader ]
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2
  %1 = load i8* %code, align 1, !tbaa !0
  %cmp4 = icmp ne i8 %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %cmp6 = icmp slt i32 %2, 17
  %or.cond = and i1 %cmp4, %cmp6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.0, 1
  br i1 %or.cond, label %for.cond2, label %for.end

for.end:                                          ; preds = %for.cond2
  %cmp9 = icmp sgt i32 %idx.0, 17
  br i1 %cmp9, label %return, label %if.else

if.else:                                          ; preds = %for.end
  %comp13 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 3
  %3 = load i8* %comp13, align 1, !tbaa !0
  store i8 %3, i8* %fwdp.031, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %fwdp.031, i64 1
  %incdec.ptr14 = getelementptr inbounds i8* %bckp.030, i64 -1
  %inc16 = add nsw i64 %pos.032, 1
  %cmp = icmp slt i64 %inc16, %call
  br i1 %cmp, label %for.cond2.preheader, label %return

return:                                           ; preds = %if.else, %for.end, %entry
  %fwdp.0.lcssa = phi i8* [ %comp, %entry ], [ %fwdp.031, %for.end ], [ %incdec.ptr, %if.else ]
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.end ], [ 1, %if.else ]
  store i8 0, i8* %fwdp.0.lcssa, align 1, !tbaa !0
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @seqdecode(i8* nocapture %str, i8* nocapture %codeseq) #1 {
entry:
  %0 = load i8* %codeseq, align 1, !tbaa !0
  %cmp31 = icmp eq i8 %0, 0
  br i1 %cmp31, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.else
  %1 = phi i8 [ %5, %if.else ], [ %0, %entry ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %if.else ], [ 0, %entry ]
  %pos.033 = phi i32 [ %inc16, %if.else ], [ 0, %entry ]
  %codeseq.addr.032 = phi i8* [ %incdec.ptr, %if.else ], [ %codeseq, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2
  %2 = load i8* %code, align 1, !tbaa !0
  %cmp4 = icmp ne i8 %1, %2
  %3 = trunc i64 %indvars.iv to i32
  %cmp6 = icmp slt i32 %3, 17
  %or.cond = and i1 %cmp4, %cmp6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.0, 1
  br i1 %or.cond, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %cmp8 = icmp sgt i32 %idx.0, 17
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %idxprom10 = sext i32 %pos.033 to i64
  %arrayidx11 = getelementptr inbounds i8* %str, i64 %idxprom10
  store i8 88, i8* %arrayidx11, align 1, !tbaa !0
  br label %return

if.else:                                          ; preds = %for.end
  %sym = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0
  %4 = load i8* %sym, align 1, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8* %str, i64 %indvars.iv35
  store i8 %4, i8* %arrayidx15, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %codeseq.addr.032, i64 1
  %indvars.iv.next36 = add i64 %indvars.iv35, 1
  %inc16 = add nsw i32 %pos.033, 1
  %5 = load i8* %incdec.ptr, align 1, !tbaa !0
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %for.cond.preheader

while.cond.while.end_crit_edge:                   ; preds = %if.else
  %phitmp = sext i32 %inc16 to i64
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %pos.0.lcssa = phi i64 [ %phitmp, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %arrayidx18 = getelementptr inbounds i8* %str, i64 %pos.0.lcssa
  store i8 0, i8* %arrayidx18, align 1, !tbaa !0
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @seqndecode(i8* nocapture %str, i8* nocapture %codeseq, i32 %n) #1 {
entry:
  %cmp29 = icmp sgt i32 %n, 0
  br i1 %cmp29, label %for.cond.preheader, label %while.end

for.cond.preheader:                               ; preds = %entry, %if.else
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %if.else ], [ 0, %entry ]
  %dec32.in = phi i32 [ %dec32, %if.else ], [ %n, %entry ]
  %pos.031 = phi i32 [ %inc14, %if.else ], [ 0, %entry ]
  %codeseq.addr.030 = phi i8* [ %incdec.ptr, %if.else ], [ %codeseq, %entry ]
  %0 = load i8* %codeseq.addr.030, align 1, !tbaa !0
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2
  %1 = load i8* %code, align 1, !tbaa !0
  %cmp2 = icmp ne i8 %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %cmp4 = icmp slt i32 %2, 17
  %or.cond = and i1 %cmp2, %cmp4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.0, 1
  br i1 %or.cond, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %dec32 = add nsw i32 %dec32.in, -1
  %cmp6 = icmp sgt i32 %idx.0, 17
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %idxprom8 = sext i32 %pos.031 to i64
  %arrayidx9 = getelementptr inbounds i8* %str, i64 %idxprom8
  store i8 88, i8* %arrayidx9, align 1, !tbaa !0
  br label %return

if.else:                                          ; preds = %for.end
  %sym = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0
  %3 = load i8* %sym, align 1, !tbaa !0
  %arrayidx13 = getelementptr inbounds i8* %str, i64 %indvars.iv34
  store i8 %3, i8* %arrayidx13, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %codeseq.addr.030, i64 1
  %indvars.iv.next35 = add i64 %indvars.iv34, 1
  %inc14 = add nsw i32 %pos.031, 1
  %cmp = icmp sgt i32 %dec32, 0
  br i1 %cmp, label %for.cond.preheader, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %if.else
  %phitmp = sext i32 %inc14 to i64
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %pos.0.lcssa = phi i64 [ %phitmp, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %arrayidx16 = getelementptr inbounds i8* %str, i64 %pos.0.lcssa
  store i8 0, i8* %arrayidx16, align 1, !tbaa !0
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.end ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"short", metadata !0}
