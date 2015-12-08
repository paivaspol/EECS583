; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = internal global [16 x i16] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define void @PutPel_14(i16** nocapture %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  %add = add nsw i32 %x, 16
  %idxprom = sext i32 %add to i64
  %add1 = add nsw i32 %y, 16
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds i16** %Pic, i64 %idxprom2
  %0 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i16* %0, i64 %idxprom
  store i16 %val, i16* %arrayidx3, align 2, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PutPel_11(i16* nocapture %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  %mul = mul nsw i32 %width, %y
  %add = add nsw i32 %mul, %x
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16* %Pic, i64 %idxprom
  store i16 %val, i16* %arrayidx, align 2, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i16* @FastLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #1 {
entry:
  %mul = mul nsw i32 %width, %y
  %add = add nsw i32 %mul, %x
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16* %Pic, i64 %idxprom
  ret i16* %arrayidx
}

; Function Attrs: nounwind optsize uwtable
define i16* @UMVLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %sub = add nsw i32 %height, -1
  %cmp = icmp sle i32 %height, %y
  %sub.y = select i1 %cmp, i32 %sub, i32 %y
  %cmp2 = icmp slt i32 %sub.y, 0
  %.sub.y = select i1 %cmp2, i32 0, i32 %sub.y
  %mul = mul nsw i32 %.sub.y, %width
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16* %Pic, i64 %idxprom
  %cmp14 = icmp slt i32 %x, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add i32 %x, 16
  %cmp15 = icmp sgt i32 %add, 0
  %.add = select i1 %cmp15, i32 0, i32 %add
  %cmp21124 = icmp sgt i32 %.add, %x
  br i1 %cmp21124, label %for.body.lr.ph, label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %if.then
  %0 = sext i32 %x to i64
  br label %for.body

for.cond27.preheader:                             ; preds = %for.body, %if.then
  br i1 %cmp15, label %for.body29, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv131 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next132, %for.body ]
  %1 = load i16* %arrayidx, align 2, !tbaa !3
  %2 = trunc i64 %indvars.iv131 to i32
  %sub23 = sub nsw i32 %2, %x
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom24
  store i16 %1, i16* %arrayidx25, align 2, !tbaa !3
  %indvars.iv.next132 = add i64 %indvars.iv131, 1
  %3 = trunc i64 %indvars.iv.next132 to i32
  %cmp21 = icmp slt i32 %3, %.add
  br i1 %cmp21, label %for.body, label %for.cond27.preheader

for.body29:                                       ; preds = %for.cond27.preheader, %for.body29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body29 ], [ 0, %for.cond27.preheader ]
  %arrayidx.sum120 = add i64 %indvars.iv, %idxprom
  %arrayidx31 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum120
  %4 = load i16* %arrayidx31, align 2, !tbaa !3
  %5 = trunc i64 %indvars.iv to i32
  %sub32 = sub nsw i32 %5, %x
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom33
  store i16 %4, i16* %arrayidx34, align 2, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %return, label %for.body29

if.else:                                          ; preds = %entry
  %sub38 = add nsw i32 %width, -16
  %cmp39 = icmp slt i32 %sub38, %x
  br i1 %cmp39, label %for.cond41.preheader, label %if.else70

for.cond41.preheader:                             ; preds = %if.else
  %cmp42129 = icmp slt i32 %x, %width
  br i1 %cmp42129, label %for.body43.lr.ph, label %for.end51

for.body43.lr.ph:                                 ; preds = %for.cond41.preheader
  %6 = sext i32 %x to i64
  br label %for.body43

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %indvars.iv135 = phi i64 [ %6, %for.body43.lr.ph ], [ %indvars.iv.next136, %for.body43 ]
  %arrayidx.sum119 = add i64 %indvars.iv135, %idxprom
  %arrayidx45 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum119
  %7 = load i16* %arrayidx45, align 2, !tbaa !3
  %8 = trunc i64 %indvars.iv135 to i32
  %sub46 = sub nsw i32 %8, %x
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom47
  store i16 %7, i16* %arrayidx48, align 2, !tbaa !3
  %indvars.iv.next136 = add i64 %indvars.iv135, 1
  %9 = trunc i64 %indvars.iv.next136 to i32
  %cmp42 = icmp slt i32 %9, %width
  br i1 %cmp42, label %for.body43, label %for.end51

for.end51:                                        ; preds = %for.body43, %for.cond41.preheader
  %add52 = add nsw i32 %x, 16
  %cond57 = select i1 %cmp42129, i32 %width, i32 %x
  %cmp59127 = icmp slt i32 %cond57, %add52
  br i1 %cmp59127, label %for.body60.lr.ph, label %return

for.body60.lr.ph:                                 ; preds = %for.end51
  %sub61 = add nsw i32 %width, -1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx.sum118 = add i64 %idxprom, %idxprom62
  %arrayidx63 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum118
  %10 = sext i32 %cond57 to i64
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.body60
  %indvars.iv133 = phi i64 [ %10, %for.body60.lr.ph ], [ %indvars.iv.next134, %for.body60 ]
  %11 = load i16* %arrayidx63, align 2, !tbaa !3
  %12 = trunc i64 %indvars.iv133 to i32
  %sub64 = sub nsw i32 %12, %x
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom65
  store i16 %11, i16* %arrayidx66, align 2, !tbaa !3
  %indvars.iv.next134 = add i64 %indvars.iv133, 1
  %13 = trunc i64 %indvars.iv.next134 to i32
  %cmp59 = icmp slt i32 %13, %add52
  br i1 %cmp59, label %for.body60, label %return

if.else70:                                        ; preds = %if.else
  %idxprom71 = sext i32 %x to i64
  %arrayidx.sum = add i64 %idxprom, %idxprom71
  %arrayidx72 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum
  br label %return

return:                                           ; preds = %for.end51, %for.body60, %for.cond27.preheader, %for.body29, %if.else70
  %retval.0 = phi i16* [ %arrayidx72, %if.else70 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body29 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.cond27.preheader ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body60 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.end51 ]
  ret i16* %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i16* @FastLineX(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #1 {
entry:
  %mul = mul nsw i32 %width, %y
  %idx.ext = sext i32 %mul to i64
  %idx.ext1 = sext i32 %x to i64
  %add.ptr.sum = add i64 %idx.ext, %idx.ext1
  %add.ptr2 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum
  ret i16* %add.ptr2
}

; Function Attrs: nounwind optsize uwtable
define i16* @UMVLineX(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %sub = add nsw i32 %height, -1
  %cmp = icmp sle i32 %height, %y
  %sub.y = select i1 %cmp, i32 %sub, i32 %y
  %cmp2 = icmp slt i32 %sub.y, 0
  %.sub.y = select i1 %cmp2, i32 0, i32 %sub.y
  %mul = mul nsw i32 %.sub.y, %width
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16* %Pic, i64 %idx.ext
  %cmp14 = icmp slt i32 %x, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add i32 %x, %size
  %cmp15 = icmp sgt i32 %add, 0
  %.add = select i1 %cmp15, i32 0, i32 %add
  %cmp21126 = icmp sgt i32 %.add, %x
  br i1 %cmp21126, label %for.body.lr.ph, label %for.cond25.preheader

for.body.lr.ph:                                   ; preds = %if.then
  %0 = sext i32 %x to i64
  br label %for.body

for.cond25.preheader:                             ; preds = %for.body, %if.then
  br i1 %cmp15, label %for.body27, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv133 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next134, %for.body ]
  %1 = load i16* %add.ptr, align 2, !tbaa !3
  %2 = trunc i64 %indvars.iv133 to i32
  %sub22 = sub nsw i32 %2, %x
  %idxprom = sext i32 %sub22 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom
  store i16 %1, i16* %arrayidx23, align 2, !tbaa !3
  %indvars.iv.next134 = add i64 %indvars.iv133, 1
  %3 = trunc i64 %indvars.iv.next134 to i32
  %cmp21 = icmp slt i32 %3, %.add
  br i1 %cmp21, label %for.body, label %for.cond25.preheader

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.cond25.preheader ]
  %add.ptr.sum122 = add i64 %indvars.iv, %idx.ext
  %arrayidx29 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum122
  %4 = load i16* %arrayidx29, align 2, !tbaa !3
  %5 = trunc i64 %indvars.iv to i32
  %sub30 = sub nsw i32 %5, %x
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom31
  store i16 %4, i16* %arrayidx32, align 2, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %return, label %for.body27

if.else:                                          ; preds = %entry
  %sub36 = sub nsw i32 %width, %size
  %cmp37 = icmp slt i32 %sub36, %x
  br i1 %cmp37, label %for.cond39.preheader, label %if.else68

for.cond39.preheader:                             ; preds = %if.else
  %cmp40131 = icmp slt i32 %x, %width
  br i1 %cmp40131, label %for.body41.lr.ph, label %for.end49

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %6 = sext i32 %x to i64
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %indvars.iv137 = phi i64 [ %6, %for.body41.lr.ph ], [ %indvars.iv.next138, %for.body41 ]
  %add.ptr.sum121 = add i64 %indvars.iv137, %idx.ext
  %arrayidx43 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum121
  %7 = load i16* %arrayidx43, align 2, !tbaa !3
  %8 = trunc i64 %indvars.iv137 to i32
  %sub44 = sub nsw i32 %8, %x
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom45
  store i16 %7, i16* %arrayidx46, align 2, !tbaa !3
  %indvars.iv.next138 = add i64 %indvars.iv137, 1
  %9 = trunc i64 %indvars.iv.next138 to i32
  %cmp40 = icmp slt i32 %9, %width
  br i1 %cmp40, label %for.body41, label %for.end49

for.end49:                                        ; preds = %for.body41, %for.cond39.preheader
  %add50 = add nsw i32 %x, %size
  %cond55 = select i1 %cmp40131, i32 %width, i32 %x
  %cmp57129 = icmp slt i32 %cond55, %add50
  br i1 %cmp57129, label %for.body58.lr.ph, label %return

for.body58.lr.ph:                                 ; preds = %for.end49
  %sub59 = add nsw i32 %width, -1
  %idxprom60 = sext i32 %sub59 to i64
  %add.ptr.sum120 = add i64 %idx.ext, %idxprom60
  %arrayidx61 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum120
  %10 = sext i32 %cond55 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58.lr.ph, %for.body58
  %indvars.iv135 = phi i64 [ %10, %for.body58.lr.ph ], [ %indvars.iv.next136, %for.body58 ]
  %11 = load i16* %arrayidx61, align 2, !tbaa !3
  %12 = trunc i64 %indvars.iv135 to i32
  %sub62 = sub nsw i32 %12, %x
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom63
  store i16 %11, i16* %arrayidx64, align 2, !tbaa !3
  %indvars.iv.next136 = add i64 %indvars.iv135, 1
  %13 = trunc i64 %indvars.iv.next136 to i32
  %cmp57 = icmp slt i32 %13, %add50
  br i1 %cmp57, label %for.body58, label %return

if.else68:                                        ; preds = %if.else
  %idx.ext69 = sext i32 %x to i64
  %add.ptr.sum = add i64 %idx.ext, %idx.ext69
  %add.ptr70 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum
  br label %return

return:                                           ; preds = %for.end49, %for.body58, %for.cond25.preheader, %for.body27, %if.else68
  %retval.0 = phi i16* [ %add.ptr70, %if.else68 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body27 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.cond25.preheader ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body58 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.end49 ]
  ret i16* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i16 @UMVPelY_14(i16** nocapture %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #2 {
entry:
  %sub = shl i32 %width, 2
  %shl = add i32 %sub, 28
  %sub2 = shl i32 %height, 2
  %shl3 = add i32 %sub2, 28
  %add4 = add nsw i32 %x, 16
  %add5 = add nsw i32 %y, 16
  %cmp = icmp slt i32 %add4, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %cmp6 = icmp slt i32 %add5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %and = and i32 %add4, 3
  %idxprom118 = zext i32 %and to i64
  %and8 = and i32 %add5, 3
  %idxprom9119 = zext i32 %and8 to i64
  %arrayidx = getelementptr inbounds i16** %Pic, i64 %idxprom9119
  %0 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i16* %0, i64 %idxprom118
  br label %return

if.end:                                           ; preds = %if.then
  %cmp11 = icmp sgt i32 %add5, %shl3
  %and13 = and i32 %add4, 3
  %idxprom14117 = zext i32 %and13 to i64
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %and15 = and i32 %add5, 3
  %add16 = or i32 %shl3, %and15
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i16** %Pic, i64 %idxprom17
  %1 = load i16** %arrayidx18, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i16* %1, i64 %idxprom14117
  br label %return

if.end20:                                         ; preds = %if.end
  %idxprom23 = sext i32 %add5 to i64
  %arrayidx24 = getelementptr inbounds i16** %Pic, i64 %idxprom23
  %2 = load i16** %arrayidx24, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i16* %2, i64 %idxprom14117
  br label %return

if.end26:                                         ; preds = %entry
  %cmp27 = icmp sgt i32 %add4, %shl
  %cmp29 = icmp slt i32 %add5, 0
  br i1 %cmp27, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end26
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.then28
  %and31 = and i32 %add4, 3
  %add32 = or i32 %shl, %and31
  %idxprom33 = sext i32 %add32 to i64
  %and34 = and i32 %add5, 3
  %idxprom35116 = zext i32 %and34 to i64
  %arrayidx36 = getelementptr inbounds i16** %Pic, i64 %idxprom35116
  %3 = load i16** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i16* %3, i64 %idxprom33
  br label %return

if.end38:                                         ; preds = %if.then28
  %cmp39 = icmp sgt i32 %add5, %shl3
  %and41 = and i32 %add4, 3
  %add42 = or i32 %shl, %and41
  %idxprom43 = sext i32 %add42 to i64
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end38
  %and44 = and i32 %add5, 3
  %add45 = or i32 %shl3, %and44
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i16** %Pic, i64 %idxprom46
  %4 = load i16** %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i16* %4, i64 %idxprom43
  br label %return

if.end49:                                         ; preds = %if.end38
  %idxprom53 = sext i32 %add5 to i64
  %arrayidx54 = getelementptr inbounds i16** %Pic, i64 %idxprom53
  %5 = load i16** %arrayidx54, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i16* %5, i64 %idxprom43
  br label %return

if.end56:                                         ; preds = %if.end26
  br i1 %cmp29, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end56
  %idxprom59 = sext i32 %add4 to i64
  %and60 = and i32 %add5, 3
  %idxprom61115 = zext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds i16** %Pic, i64 %idxprom61115
  %6 = load i16** %arrayidx62, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds i16* %6, i64 %idxprom59
  br label %return

if.end64:                                         ; preds = %if.end56
  %cmp65 = icmp sgt i32 %add5, %shl3
  %idxprom67 = sext i32 %add4 to i64
  br i1 %cmp65, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end64
  %and68 = and i32 %add5, 3
  %add69 = or i32 %shl3, %and68
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds i16** %Pic, i64 %idxprom70
  %7 = load i16** %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i16* %7, i64 %idxprom67
  br label %return

if.end73:                                         ; preds = %if.end64
  %idxprom75 = sext i32 %add5 to i64
  %arrayidx76 = getelementptr inbounds i16** %Pic, i64 %idxprom75
  %8 = load i16** %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i16* %8, i64 %idxprom67
  br label %return

return:                                           ; preds = %if.end73, %if.then66, %if.then58, %if.end49, %if.then40, %if.then30, %if.end20, %if.then12, %if.then7
  %retval.0.in = phi i16* [ %arrayidx10, %if.then7 ], [ %arrayidx19, %if.then12 ], [ %arrayidx25, %if.end20 ], [ %arrayidx37, %if.then30 ], [ %arrayidx48, %if.then40 ], [ %arrayidx55, %if.end49 ], [ %arrayidx63, %if.then58 ], [ %arrayidx72, %if.then66 ], [ %arrayidx77, %if.end73 ]
  %retval.0 = load i16* %retval.0.in, align 2
  ret i16 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i16 @FastPelY_14(i16** nocapture %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #2 {
entry:
  %add = add nsw i32 %x, 16
  %idxprom = sext i32 %add to i64
  %add1 = add nsw i32 %y, 16
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds i16** %Pic, i64 %idxprom2
  %0 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i16* %0, i64 %idxprom
  %1 = load i16* %arrayidx3, align 2, !tbaa !3
  ret i16 %1
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
