; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iupactype = type { i8, i8, i8, i8 }

@iupac = external global [0 x %struct.iupactype]

; Function Attrs: nounwind optsize readonly uwtable
define i32 @seqcmp(i8* nocapture %s1, i8* nocapture %s2, i32 %allow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !28), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !29), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %allow}, i64 0, metadata !30), !dbg !75
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !31), !dbg !76
  %0 = load i8* %s1, align 1, !dbg !77, !tbaa !78
  %cmp42 = icmp eq i8 %0, 0, !dbg !77
  br i1 %cmp42, label %while.end24, label %land.lhs.true, !dbg !77

land.lhs.true:                                    ; preds = %entry, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %entry ]
  %mmat.045 = phi i32 [ %mmat.0.inc, %while.body ], [ 0, %entry ]
  %s1.addr.044 = phi i8* [ %incdec.ptr, %while.body ], [ %s1, %entry ]
  %s2.addr.043 = phi i8* [ %incdec.ptr12, %while.body ], [ %s2, %entry ]
  %2 = load i8* %s2.addr.043, align 1, !dbg !77, !tbaa !78
  %cmp3 = icmp eq i8 %2, 0, !dbg !77
  %cmp5 = icmp sgt i32 %mmat.045, %allow, !dbg !77
  %or.cond = or i1 %cmp3, %cmp5, !dbg !77
  br i1 %or.cond, label %while.cond13.preheader, label %while.body, !dbg !77

while.cond13.preheader:                           ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr14}, i64 0, metadata !28), !dbg !80
  %cmp1937 = icmp sle i32 %mmat.045, %allow, !dbg !80
  %not.cmp1638 = icmp ne i8 %1, 0, !dbg !80
  %.cmp1939 = and i1 %cmp1937, %not.cmp1638, !dbg !80
  br i1 %.cmp1939, label %while.body22, label %while.end24

while.body:                                       ; preds = %land.lhs.true
  %and36 = and i8 %2, %1, !dbg !81
  %not.cmp10 = icmp ne i8 %and36, %2, !dbg !81
  %inc = zext i1 %not.cmp10 to i32, !dbg !81
  %mmat.0.inc = add nsw i32 %inc, %mmat.045, !dbg !81
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.044, i64 1, !dbg !83
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !28), !dbg !83
  %incdec.ptr12 = getelementptr inbounds i8* %s2.addr.043, i64 1, !dbg !84
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr12}, i64 0, metadata !29), !dbg !84
  %3 = load i8* %incdec.ptr, align 1, !dbg !77, !tbaa !78
  %cmp = icmp eq i8 %3, 0, !dbg !77
  br i1 %cmp, label %while.end24, label %land.lhs.true, !dbg !77

while.body22:                                     ; preds = %while.cond13.preheader, %while.body22
  %mmat.241 = phi i32 [ %inc23, %while.body22 ], [ %mmat.045, %while.cond13.preheader ]
  %s1.addr.140 = phi i8* [ %incdec.ptr14, %while.body22 ], [ %s1.addr.044, %while.cond13.preheader ]
  %incdec.ptr14 = getelementptr inbounds i8* %s1.addr.140, i64 1, !dbg !80
  %inc23 = add nsw i32 %mmat.241, 1, !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %inc23}, i64 0, metadata !31), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr14}, i64 0, metadata !28), !dbg !80
  %4 = load i8* %incdec.ptr14, align 1, !dbg !80, !tbaa !78
  %cmp19 = icmp slt i32 %mmat.241, %allow, !dbg !80
  %not.cmp16 = icmp ne i8 %4, 0, !dbg !80
  %.cmp19 = and i1 %cmp19, %not.cmp16, !dbg !80
  br i1 %.cmp19, label %while.body22, label %while.end24

while.end24:                                      ; preds = %while.body, %entry, %while.body22, %while.cond13.preheader
  %mmat.2.lcssa = phi i32 [ %mmat.045, %while.cond13.preheader ], [ %inc23, %while.body22 ], [ 0, %entry ], [ %mmat.0.inc, %while.body ]
  ret i32 %mmat.2.lcssa, !dbg !86
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @seqncmp(i8* nocapture %s1, i8* nocapture %s2, i32 %n, i32 %allow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !36), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !37), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !38), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %allow}, i64 0, metadata !39), !dbg !87
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !40), !dbg !88
  %0 = load i8* %s2, align 1, !dbg !89, !tbaa !78
  %cmp47 = icmp eq i8 %0, 0, !dbg !89
  br i1 %cmp47, label %while.cond12.preheader, label %land.rhs, !dbg !89

land.rhs:                                         ; preds = %entry, %if.end
  %1 = phi i8 [ %3, %if.end ], [ %0, %entry ]
  %mmat.051 = phi i32 [ %mmat.1, %if.end ], [ 0, %entry ]
  %n.addr.050 = phi i32 [ %dec, %if.end ], [ %n, %entry ]
  %s2.addr.049 = phi i8* [ %incdec.ptr11, %if.end ], [ %s2, %entry ]
  %s1.addr.048 = phi i8* [ %incdec.ptr, %if.end ], [ %s1, %entry ]
  %dec = add nsw i32 %n.addr.050, -1, !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !38), !dbg !89
  %cmp2 = icmp eq i32 %n.addr.050, 0, !dbg !89
  br i1 %cmp2, label %while.cond12.preheader, label %while.body

while.cond12.preheader:                           ; preds = %if.end, %land.rhs, %entry
  %mmat.0.lcssa = phi i32 [ 0, %entry ], [ %mmat.051, %land.rhs ], [ %mmat.1, %if.end ]
  %s1.addr.0.lcssa = phi i8* [ %s1, %entry ], [ %s1.addr.048, %land.rhs ], [ %incdec.ptr, %if.end ]
  %n.addr.1.ph = phi i32 [ %n, %entry ], [ %dec, %land.rhs ], [ %dec, %if.end ]
  %cmp1440 = icmp eq i32 %n.addr.1.ph, 0, !dbg !90
  br i1 %cmp1440, label %return, label %land.end24, !dbg !90

while.body:                                       ; preds = %land.rhs
  %2 = load i8* %s1.addr.048, align 1, !dbg !91, !tbaa !78
  %and38 = and i8 %2, %1, !dbg !91
  %cmp7 = icmp eq i8 %and38, %1, !dbg !91
  br i1 %cmp7, label %if.end, label %land.lhs.true, !dbg !91

land.lhs.true:                                    ; preds = %while.body
  %inc = add nsw i32 %mmat.051, 1, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !40), !dbg !91
  %cmp9 = icmp slt i32 %mmat.051, %allow, !dbg !91
  br i1 %cmp9, label %if.end, label %return, !dbg !91

if.end:                                           ; preds = %land.lhs.true, %while.body
  %mmat.1 = phi i32 [ %mmat.051, %while.body ], [ %inc, %land.lhs.true ]
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.048, i64 1, !dbg !93
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !36), !dbg !93
  %incdec.ptr11 = getelementptr inbounds i8* %s2.addr.049, i64 1, !dbg !94
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr11}, i64 0, metadata !37), !dbg !94
  %3 = load i8* %incdec.ptr11, align 1, !dbg !89, !tbaa !78
  %cmp = icmp eq i8 %3, 0, !dbg !89
  br i1 %cmp, label %while.cond12.preheader, label %land.rhs, !dbg !89

land.end24:                                       ; preds = %while.cond12.preheader, %while.body25
  %dec1343.in = phi i32 [ %dec1343, %while.body25 ], [ %n.addr.1.ph, %while.cond12.preheader ]
  %mmat.242 = phi i32 [ %inc26, %while.body25 ], [ %mmat.0.lcssa, %while.cond12.preheader ]
  %s1.addr.141 = phi i8* [ %incdec.ptr17, %while.body25 ], [ %s1.addr.0.lcssa, %while.cond12.preheader ]
  %dec1343 = add nsw i32 %dec1343.in, -1, !dbg !90
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr17}, i64 0, metadata !36), !dbg !90
  %4 = load i8* %s1.addr.141, align 1, !dbg !90, !tbaa !78
  %cmp22 = icmp sle i32 %mmat.242, %allow, !dbg !90
  %not.cmp19 = icmp ne i8 %4, 0, !dbg !90
  %.cmp22 = and i1 %cmp22, %not.cmp19, !dbg !90
  br i1 %.cmp22, label %while.body25, label %return

while.body25:                                     ; preds = %land.end24
  %incdec.ptr17 = getelementptr inbounds i8* %s1.addr.141, i64 1, !dbg !90
  %inc26 = add nsw i32 %mmat.242, 1, !dbg !95
  tail call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !40), !dbg !95
  tail call void @llvm.dbg.value(metadata !{i32 %dec1343}, i64 0, metadata !38), !dbg !90
  %cmp14 = icmp eq i32 %dec1343, 0, !dbg !90
  br i1 %cmp14, label %return, label %land.end24, !dbg !90

return:                                           ; preds = %land.lhs.true, %while.cond12.preheader, %land.end24, %while.body25
  %retval.0 = phi i32 [ %mmat.0.lcssa, %while.cond12.preheader ], [ %mmat.242, %land.end24 ], [ %inc26, %while.body25 ], [ %inc, %land.lhs.true ]
  ret i32 %retval.0, !dbg !96
}

; Function Attrs: nounwind optsize uwtable
define i32 @seqencode(i8* nocapture %codeseq, i8* nocapture %str) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %codeseq}, i64 0, metadata !45), !dbg !97
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !46), !dbg !98
  tail call void @llvm.dbg.value(metadata !{i8* %codeseq}, i64 0, metadata !47), !dbg !99
  %0 = load i8* %str, align 1, !dbg !100, !tbaa !78
  %cmp35 = icmp eq i8 %0, 0, !dbg !100
  br i1 %cmp35, label %return, label %while.body.lr.ph, !dbg !100

while.body.lr.ph:                                 ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #6, !dbg !101
  br label %while.body, !dbg !100

while.body:                                       ; preds = %while.body.lr.ph, %if.else
  %conv38.in = phi i8 [ %0, %while.body.lr.ph ], [ %7, %if.else ]
  %ptr.037 = phi i8* [ %codeseq, %while.body.lr.ph ], [ %incdec.ptr, %if.else ]
  %str.addr.036 = phi i8* [ %str, %while.body.lr.ph ], [ %incdec.ptr21, %if.else ]
  %idxprom = sext i8 %conv38.in to i64, !dbg !101
  %1 = load i16** %call, align 8, !dbg !101, !tbaa !102
  %arrayidx = getelementptr inbounds i16* %1, i64 %idxprom, !dbg !101
  %2 = load i16* %arrayidx, align 2, !dbg !101, !tbaa !103
  %and = and i16 %2, 512, !dbg !101
  %tobool = icmp eq i16 %and, 0, !dbg !101
  br i1 %tobool, label %for.cond.preheader, label %if.then, !dbg !101

if.then:                                          ; preds = %while.body
  %conv38 = sext i8 %conv38.in to i32, !dbg !100
  %call5 = tail call i32 @toupper(i32 %conv38) #7, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !49), !dbg !104
  %conv6 = trunc i32 %call5 to i8, !dbg !106
  store i8 %conv6, i8* %str.addr.036, align 1, !dbg !106, !tbaa !78
  br label %for.cond.preheader, !dbg !106

for.cond.preheader:                               ; preds = %while.body, %if.then
  %3 = phi i8 [ %conv38.in, %while.body ], [ %conv6, %if.then ]
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %sym = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0, !dbg !107
  %4 = load i8* %sym, align 1, !dbg !107, !tbaa !78
  %cmp11 = icmp ne i8 %3, %4, !dbg !107
  %5 = trunc i64 %indvars.iv to i32, !dbg !107
  %cmp13 = icmp slt i32 %5, 18, !dbg !107
  %or.cond = and i1 %cmp11, %cmp13, !dbg !107
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !107
  %inc = add nsw i32 %idx.0, 1, !dbg !107
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !48), !dbg !107
  br i1 %or.cond, label %for.cond, label %for.end, !dbg !107

for.end:                                          ; preds = %for.cond
  %cmp15 = icmp sgt i32 %idx.0, 17, !dbg !109
  br i1 %cmp15, label %return, label %if.else, !dbg !109

if.else:                                          ; preds = %for.end
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !110
  %6 = load i8* %code, align 1, !dbg !110, !tbaa !78
  store i8 %6, i8* %ptr.037, align 1, !dbg !110, !tbaa !78
  %incdec.ptr = getelementptr inbounds i8* %ptr.037, i64 1, !dbg !111
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !47), !dbg !111
  %incdec.ptr21 = getelementptr inbounds i8* %str.addr.036, i64 1, !dbg !112
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr21}, i64 0, metadata !46), !dbg !112
  %7 = load i8* %incdec.ptr21, align 1, !dbg !100, !tbaa !78
  %cmp = icmp eq i8 %7, 0, !dbg !100
  br i1 %cmp, label %return, label %while.body, !dbg !100

return:                                           ; preds = %if.else, %for.end, %entry
  %ptr.0.lcssa = phi i8* [ %codeseq, %entry ], [ %ptr.037, %for.end ], [ %incdec.ptr, %if.else ]
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.end ], [ 1, %if.else ]
  store i8 0, i8* %ptr.0.lcssa, align 1, !dbg !113, !tbaa !78
  ret i32 %retval.0, !dbg !115
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @coded_revcomp(i8* nocapture %comp, i8* nocapture %seq) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %comp}, i64 0, metadata !54), !dbg !116
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !55), !dbg !116
  %call = tail call i64 @strlen(i8* %seq) #8, !dbg !117
  tail call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !56), !dbg !117
  tail call void @llvm.dbg.value(metadata !{i8* %comp}, i64 0, metadata !59), !dbg !118
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr1}, i64 0, metadata !58), !dbg !119
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !61), !dbg !121
  %cmp29 = icmp sgt i64 %call, 0, !dbg !121
  br i1 %cmp29, label %for.cond2.preheader.lr.ph, label %return, !dbg !121

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %add.ptr.sum = add i64 %call, -1, !dbg !119
  %add.ptr1 = getelementptr inbounds i8* %seq, i64 %add.ptr.sum, !dbg !119
  br label %for.cond2.preheader, !dbg !121

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %if.else
  %pos.032 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %inc16, %if.else ]
  %fwdp.031 = phi i8* [ %comp, %for.cond2.preheader.lr.ph ], [ %incdec.ptr, %if.else ]
  %bckp.030 = phi i8* [ %add.ptr1, %for.cond2.preheader.lr.ph ], [ %incdec.ptr14, %if.else ]
  %0 = load i8* %bckp.030, align 1, !dbg !123, !tbaa !78
  br label %for.cond2, !dbg !123

for.cond2:                                        ; preds = %for.cond2, %for.cond2.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond2 ], [ 0, %for.cond2.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond2 ], [ 0, %for.cond2.preheader ]
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !123
  %1 = load i8* %code, align 1, !dbg !123, !tbaa !78
  %cmp4 = icmp ne i8 %0, %1, !dbg !123
  %2 = trunc i64 %indvars.iv to i32, !dbg !123
  %cmp6 = icmp slt i32 %2, 17, !dbg !123
  %or.cond = and i1 %cmp4, %cmp6, !dbg !123
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !123
  %inc = add nsw i32 %idx.0, 1, !dbg !123
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !60), !dbg !123
  br i1 %or.cond, label %for.cond2, label %for.end, !dbg !123

for.end:                                          ; preds = %for.cond2
  %cmp9 = icmp sgt i32 %idx.0, 17, !dbg !126
  br i1 %cmp9, label %return, label %if.else, !dbg !126

if.else:                                          ; preds = %for.end
  %comp13 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 3, !dbg !127
  %3 = load i8* %comp13, align 1, !dbg !127, !tbaa !78
  store i8 %3, i8* %fwdp.031, align 1, !dbg !127, !tbaa !78
  %incdec.ptr = getelementptr inbounds i8* %fwdp.031, i64 1, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !59), !dbg !128
  %incdec.ptr14 = getelementptr inbounds i8* %bckp.030, i64 -1, !dbg !129
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr14}, i64 0, metadata !58), !dbg !129
  %inc16 = add nsw i64 %pos.032, 1, !dbg !121
  tail call void @llvm.dbg.value(metadata !{i64 %inc16}, i64 0, metadata !61), !dbg !121
  %cmp = icmp slt i64 %inc16, %call, !dbg !121
  br i1 %cmp, label %for.cond2.preheader, label %return, !dbg !121

return:                                           ; preds = %if.else, %for.end, %entry
  %fwdp.0.lcssa = phi i8* [ %comp, %entry ], [ %fwdp.031, %for.end ], [ %incdec.ptr, %if.else ]
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.end ], [ 1, %if.else ]
  store i8 0, i8* %fwdp.0.lcssa, align 1, !dbg !130, !tbaa !78
  ret i32 %retval.0, !dbg !132
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @seqdecode(i8* nocapture %str, i8* nocapture %codeseq) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !64), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i8* %codeseq}, i64 0, metadata !65), !dbg !133
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !67), !dbg !134
  %0 = load i8* %codeseq, align 1, !dbg !135, !tbaa !78
  %cmp31 = icmp eq i8 %0, 0, !dbg !135
  br i1 %cmp31, label %while.end, label %for.cond.preheader, !dbg !135

for.cond.preheader:                               ; preds = %entry, %if.else
  %1 = phi i8 [ %5, %if.else ], [ %0, %entry ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %if.else ], [ 0, %entry ]
  %pos.033 = phi i32 [ %inc16, %if.else ], [ 0, %entry ]
  %codeseq.addr.032 = phi i8* [ %incdec.ptr, %if.else ], [ %codeseq, %entry ]
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !136
  %2 = load i8* %code, align 1, !dbg !136, !tbaa !78
  %cmp4 = icmp ne i8 %1, %2, !dbg !136
  %3 = trunc i64 %indvars.iv to i32, !dbg !136
  %cmp6 = icmp slt i32 %3, 17, !dbg !136
  %or.cond = and i1 %cmp4, %cmp6, !dbg !136
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !136
  %inc = add nsw i32 %idx.0, 1, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !66), !dbg !136
  br i1 %or.cond, label %for.cond, label %for.end, !dbg !136

for.end:                                          ; preds = %for.cond
  %cmp8 = icmp sgt i32 %idx.0, 17, !dbg !139
  br i1 %cmp8, label %if.then, label %if.else, !dbg !139

if.then:                                          ; preds = %for.end
  %idxprom10 = sext i32 %pos.033 to i64, !dbg !140
  %arrayidx11 = getelementptr inbounds i8* %str, i64 %idxprom10, !dbg !140
  store i8 88, i8* %arrayidx11, align 1, !dbg !140, !tbaa !78
  br label %return, !dbg !142

if.else:                                          ; preds = %for.end
  %sym = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0, !dbg !143
  %4 = load i8* %sym, align 1, !dbg !143, !tbaa !78
  %arrayidx15 = getelementptr inbounds i8* %str, i64 %indvars.iv35, !dbg !143
  store i8 %4, i8* %arrayidx15, align 1, !dbg !143, !tbaa !78
  %incdec.ptr = getelementptr inbounds i8* %codeseq.addr.032, i64 1, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !65), !dbg !144
  %indvars.iv.next36 = add i64 %indvars.iv35, 1, !dbg !135
  %inc16 = add nsw i32 %pos.033, 1, !dbg !145
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !67), !dbg !145
  %5 = load i8* %incdec.ptr, align 1, !dbg !135, !tbaa !78
  %cmp = icmp eq i8 %5, 0, !dbg !135
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %for.cond.preheader, !dbg !135

while.cond.while.end_crit_edge:                   ; preds = %if.else
  %phitmp = sext i32 %inc16 to i64, !dbg !135
  br label %while.end, !dbg !135

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %pos.0.lcssa = phi i64 [ %phitmp, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %arrayidx18 = getelementptr inbounds i8* %str, i64 %pos.0.lcssa, !dbg !146
  store i8 0, i8* %arrayidx18, align 1, !dbg !146, !tbaa !78
  br label %return, !dbg !147

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.end ]
  ret i32 %retval.0, !dbg !147
}

; Function Attrs: nounwind optsize uwtable
define i32 @seqndecode(i8* nocapture %str, i8* nocapture %codeseq, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !70), !dbg !148
  tail call void @llvm.dbg.value(metadata !{i8* %codeseq}, i64 0, metadata !71), !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !72), !dbg !150
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !74), !dbg !151
  %cmp29 = icmp sgt i32 %n, 0, !dbg !152
  br i1 %cmp29, label %for.cond.preheader, label %while.end, !dbg !152

for.cond.preheader:                               ; preds = %entry, %if.else
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %if.else ], [ 0, %entry ]
  %dec32.in = phi i32 [ %dec32, %if.else ], [ %n, %entry ]
  %pos.031 = phi i32 [ %inc14, %if.else ], [ 0, %entry ]
  %codeseq.addr.030 = phi i8* [ %incdec.ptr, %if.else ], [ %codeseq, %entry ]
  %0 = load i8* %codeseq.addr.030, align 1, !dbg !153, !tbaa !78
  br label %for.cond, !dbg !153

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %idx.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %code = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !153
  %1 = load i8* %code, align 1, !dbg !153, !tbaa !78
  %cmp2 = icmp ne i8 %0, %1, !dbg !153
  %2 = trunc i64 %indvars.iv to i32, !dbg !153
  %cmp4 = icmp slt i32 %2, 17, !dbg !153
  %or.cond = and i1 %cmp2, %cmp4, !dbg !153
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !153
  %inc = add nsw i32 %idx.0, 1, !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !73), !dbg !153
  br i1 %or.cond, label %for.cond, label %for.end, !dbg !153

for.end:                                          ; preds = %for.cond
  %dec32 = add nsw i32 %dec32.in, -1, !dbg !152
  %cmp6 = icmp sgt i32 %idx.0, 17, !dbg !156
  br i1 %cmp6, label %if.then, label %if.else, !dbg !156

if.then:                                          ; preds = %for.end
  %idxprom8 = sext i32 %pos.031 to i64, !dbg !157
  %arrayidx9 = getelementptr inbounds i8* %str, i64 %idxprom8, !dbg !157
  store i8 88, i8* %arrayidx9, align 1, !dbg !157, !tbaa !78
  br label %return, !dbg !159

if.else:                                          ; preds = %for.end
  %sym = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0, !dbg !160
  %3 = load i8* %sym, align 1, !dbg !160, !tbaa !78
  %arrayidx13 = getelementptr inbounds i8* %str, i64 %indvars.iv34, !dbg !160
  store i8 %3, i8* %arrayidx13, align 1, !dbg !160, !tbaa !78
  %incdec.ptr = getelementptr inbounds i8* %codeseq.addr.030, i64 1, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !71), !dbg !161
  %indvars.iv.next35 = add i64 %indvars.iv34, 1, !dbg !152
  %inc14 = add nsw i32 %pos.031, 1, !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %inc14}, i64 0, metadata !74), !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %dec32}, i64 0, metadata !72), !dbg !152
  %cmp = icmp sgt i32 %dec32, 0, !dbg !152
  br i1 %cmp, label %for.cond.preheader, label %while.cond.while.end_crit_edge, !dbg !152

while.cond.while.end_crit_edge:                   ; preds = %if.else
  %phitmp = sext i32 %inc14 to i64, !dbg !152
  br label %while.end, !dbg !152

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %pos.0.lcssa = phi i64 [ %phitmp, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %arrayidx16 = getelementptr inbounds i8* %str, i64 %pos.0.lcssa, !dbg !163
  store i8 0, i8* %arrayidx16, align 1, !dbg !163, !tbaa !78
  br label %return, !dbg !164

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.end ]
  ret i32 %retval.0, !dbg !164
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !32, metadata !41, metadata !52, metadata !62, metadata !68}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"seqcmp", metadata !"seqcmp", metadata !"", i32 28, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @seqcmp, null, null, metadata !27, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [seqcmp]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !25, metadata !24}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31}
!28 = metadata !{i32 786689, metadata !20, metadata !"s1", metadata !21, i32 16777244, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 28]
!29 = metadata !{i32 786689, metadata !20, metadata !"s2", metadata !21, i32 33554460, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 28]
!30 = metadata !{i32 786689, metadata !20, metadata !"allow", metadata !21, i32 50331676, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [allow] [line 28]
!31 = metadata !{i32 786688, metadata !20, metadata !"mmat", metadata !21, i32 30, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmat] [line 30]
!32 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"seqncmp", metadata !"seqncmp", metadata !"", i32 47, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32, i32)* @seqncmp, null, null, metadata !35, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [seqncmp]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !24, metadata !25, metadata !25, metadata !24, metadata !24}
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!36 = metadata !{i32 786689, metadata !32, metadata !"s1", metadata !21, i32 16777263, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 47]
!37 = metadata !{i32 786689, metadata !32, metadata !"s2", metadata !21, i32 33554479, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 47]
!38 = metadata !{i32 786689, metadata !32, metadata !"n", metadata !21, i32 50331695, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 47]
!39 = metadata !{i32 786689, metadata !32, metadata !"allow", metadata !21, i32 67108911, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [allow] [line 47]
!40 = metadata !{i32 786688, metadata !32, metadata !"mmat", metadata !21, i32 49, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmat] [line 49]
!41 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"seqencode", metadata !"seqencode", metadata !"", i32 70, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @seqencode, null, null, metadata !44, i32 72} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 72] [seqencode]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !24, metadata !25, metadata !25}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!45 = metadata !{i32 786689, metadata !41, metadata !"codeseq", metadata !21, i32 16777286, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [codeseq] [line 70]
!46 = metadata !{i32 786689, metadata !41, metadata !"str", metadata !21, i32 33554503, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 71]
!47 = metadata !{i32 786688, metadata !41, metadata !"ptr", metadata !21, i32 73, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 73]
!48 = metadata !{i32 786688, metadata !41, metadata !"idx", metadata !21, i32 74, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 74]
!49 = metadata !{i32 786688, metadata !50, metadata !"__res", metadata !21, i32 79, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 79]
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 79, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!51 = metadata !{i32 786443, metadata !1, metadata !41, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!52 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"coded_revcomp", metadata !"coded_revcomp", metadata !"", i32 98, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @coded_revcomp, null, null, metadata !53, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [coded_revcomp]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !61}
!54 = metadata !{i32 786689, metadata !52, metadata !"comp", metadata !21, i32 16777314, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comp] [line 98]
!55 = metadata !{i32 786689, metadata !52, metadata !"seq", metadata !21, i32 33554530, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 98]
!56 = metadata !{i32 786688, metadata !52, metadata !"bases", metadata !21, i32 100, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bases] [line 100]
!57 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786688, metadata !52, metadata !"bckp", metadata !21, i32 101, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bckp] [line 101]
!59 = metadata !{i32 786688, metadata !52, metadata !"fwdp", metadata !21, i32 101, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fwdp] [line 101]
!60 = metadata !{i32 786688, metadata !52, metadata !"idx", metadata !21, i32 102, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 102]
!61 = metadata !{i32 786688, metadata !52, metadata !"pos", metadata !21, i32 103, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 103]
!62 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"seqdecode", metadata !"seqdecode", metadata !"", i32 127, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @seqdecode, null, null, metadata !63, i32 128} ; [ DW_TAG_subprogram ] [line 127] [def] [scope 128] [seqdecode]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67}
!64 = metadata !{i32 786689, metadata !62, metadata !"str", metadata !21, i32 16777343, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 127]
!65 = metadata !{i32 786689, metadata !62, metadata !"codeseq", metadata !21, i32 33554559, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [codeseq] [line 127]
!66 = metadata !{i32 786688, metadata !62, metadata !"idx", metadata !21, i32 129, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 129]
!67 = metadata !{i32 786688, metadata !62, metadata !"pos", metadata !21, i32 130, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 130]
!68 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"seqndecode", metadata !"seqndecode", metadata !"", i32 152, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @seqndecode, null, null, metadata !69, i32 156} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 156] [seqndecode]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!70 = metadata !{i32 786689, metadata !68, metadata !"str", metadata !21, i32 16777369, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 153]
!71 = metadata !{i32 786689, metadata !68, metadata !"codeseq", metadata !21, i32 33554586, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [codeseq] [line 154]
!72 = metadata !{i32 786689, metadata !68, metadata !"n", metadata !21, i32 50331803, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 155]
!73 = metadata !{i32 786688, metadata !68, metadata !"idx", metadata !21, i32 157, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 157]
!74 = metadata !{i32 786688, metadata !68, metadata !"pos", metadata !21, i32 158, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 158]
!75 = metadata !{i32 28, i32 0, metadata !20, null}
!76 = metadata !{i32 30, i32 0, metadata !20, null}
!77 = metadata !{i32 32, i32 0, metadata !20, null}
!78 = metadata !{metadata !"omnipotent char", metadata !79}
!79 = metadata !{metadata !"Simple C/C++ TBAA"}
!80 = metadata !{i32 39, i32 0, metadata !20, null}
!81 = metadata !{i32 34, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !20, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!83 = metadata !{i32 36, i32 0, metadata !82, null}
!84 = metadata !{i32 37, i32 0, metadata !82, null}
!85 = metadata !{i32 40, i32 0, metadata !20, null}
!86 = metadata !{i32 41, i32 0, metadata !20, null}
!87 = metadata !{i32 47, i32 0, metadata !32, null}
!88 = metadata !{i32 49, i32 0, metadata !32, null}
!89 = metadata !{i32 51, i32 0, metadata !32, null}
!90 = metadata !{i32 60, i32 0, metadata !32, null}
!91 = metadata !{i32 54, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !32, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!93 = metadata !{i32 57, i32 0, metadata !92, null}
!94 = metadata !{i32 58, i32 0, metadata !92, null} ; [ DW_TAG_imported_module ]
!95 = metadata !{i32 61, i32 0, metadata !32, null}
!96 = metadata !{i32 63, i32 0, metadata !32, null}
!97 = metadata !{i32 70, i32 0, metadata !41, null}
!98 = metadata !{i32 71, i32 0, metadata !41, null}
!99 = metadata !{i32 76, i32 0, metadata !41, null}
!100 = metadata !{i32 77, i32 0, metadata !41, null}
!101 = metadata !{i32 79, i32 0, metadata !51, null}
!102 = metadata !{metadata !"any pointer", metadata !78}
!103 = metadata !{metadata !"short", metadata !78}
!104 = metadata !{i32 79, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !50, i32 79, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!106 = metadata !{i32 79, i32 0, metadata !50, null}
!107 = metadata !{i32 80, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !51, i32 80, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!109 = metadata !{i32 82, i32 0, metadata !51, null}
!110 = metadata !{i32 88, i32 0, metadata !51, null}
!111 = metadata !{i32 89, i32 0, metadata !51, null}
!112 = metadata !{i32 90, i32 0, metadata !51, null}
!113 = metadata !{i32 84, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !51, i32 83, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!115 = metadata !{i32 93, i32 0, metadata !41, null}
!116 = metadata !{i32 98, i32 0, metadata !52, null}
!117 = metadata !{i32 105, i32 0, metadata !52, null}
!118 = metadata !{i32 107, i32 0, metadata !52, null}
!119 = metadata !{i32 108, i32 0, metadata !52, null}
!120 = metadata !{i64 0}
!121 = metadata !{i32 109, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !52, i32 109, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!123 = metadata !{i32 111, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !125, i32 111, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!125 = metadata !{i32 786443, metadata !1, metadata !122, i32 110, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!126 = metadata !{i32 112, i32 0, metadata !125, null}
!127 = metadata !{i32 118, i32 0, metadata !125, null}
!128 = metadata !{i32 119, i32 0, metadata !125, null}
!129 = metadata !{i32 120, i32 0, metadata !125, null}
!130 = metadata !{i32 114, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !125, i32 113, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!132 = metadata !{i32 123, i32 0, metadata !52, null}
!133 = metadata !{i32 127, i32 0, metadata !62, null}
!134 = metadata !{i32 132, i32 0, metadata !62, null}
!135 = metadata !{i32 133, i32 0, metadata !62, null}
!136 = metadata !{i32 135, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !138, i32 135, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!138 = metadata !{i32 786443, metadata !1, metadata !62, i32 134, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!139 = metadata !{i32 137, i32 0, metadata !138, null}
!140 = metadata !{i32 139, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !138, i32 138, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!142 = metadata !{i32 140, i32 0, metadata !141, null}
!143 = metadata !{i32 143, i32 0, metadata !138, null}
!144 = metadata !{i32 144, i32 0, metadata !138, null}
!145 = metadata !{i32 145, i32 0, metadata !138, null}
!146 = metadata !{i32 147, i32 0, metadata !62, null}
!147 = metadata !{i32 148, i32 0, metadata !62, null}
!148 = metadata !{i32 153, i32 0, metadata !68, null}
!149 = metadata !{i32 154, i32 0, metadata !68, null}
!150 = metadata !{i32 155, i32 0, metadata !68, null}
!151 = metadata !{i32 158, i32 0, metadata !68, null}
!152 = metadata !{i32 160, i32 0, metadata !68, null}
!153 = metadata !{i32 162, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !155, i32 162, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!155 = metadata !{i32 786443, metadata !1, metadata !68, i32 161, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!156 = metadata !{i32 163, i32 0, metadata !155, null}
!157 = metadata !{i32 165, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !155, i32 164, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/seqencode.c]
!159 = metadata !{i32 166, i32 0, metadata !158, null}
!160 = metadata !{i32 169, i32 0, metadata !155, null}
!161 = metadata !{i32 170, i32 0, metadata !155, null}
!162 = metadata !{i32 171, i32 0, metadata !155, null}
!163 = metadata !{i32 173, i32 0, metadata !68, null}
!164 = metadata !{i32 174, i32 0, metadata !68, null}
