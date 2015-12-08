; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"malloc of %ld bytes failed: file %s line %d\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"realloc of %ld bytes failed: file %s line %d\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @Strdup(i8* %s) #0 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %s) #7
  %add = add i64 %call, 1
  %call1 = tail call noalias i8* @malloc(i64 %add) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @strcpy(i8* %call1, i8* %s) #8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %call1, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @StringChop(i8* nocapture %s) #0 {
entry:
  %call = tail call i64 @strlen(i8* %s) #7
  %sub = add i64 %call, 4294967295
  %conv = trunc i64 %sub to i32
  %cmp13 = icmp sgt i32 %conv, -1
  br i1 %cmp13, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %call4 = tail call i16** @__ctype_b_loc() #9
  %0 = load i16** %call4, align 8, !tbaa !0
  %sext = shl i64 %sub, 32
  %1 = ashr exact i64 %sext, 32
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, -1
  %2 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv = phi i64 [ %1, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.cond ]
  %i.014 = phi i32 [ %conv, %land.rhs.lr.ph ], [ %dec, %while.cond ]
  %arrayidx = getelementptr inbounds i8* %s, i64 %indvars.iv
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %idxprom3 = sext i8 %3 to i64
  %arrayidx5 = getelementptr inbounds i16* %0, i64 %idxprom3
  %4 = load i16* %arrayidx5, align 2, !tbaa !3
  %and = and i16 %4, 8192
  %tobool = icmp eq i16 %and, 0
  %dec = add nsw i32 %i.014, -1
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %entry
  %i.0.lcssa = phi i32 [ %conv, %entry ], [ %i.014, %land.rhs ], [ %dec, %while.cond ]
  %add = add nsw i32 %i.0.lcssa, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i8* %s, i64 %idxprom7
  store i8 0, i8* %arrayidx8, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind optsize uwtable
define i32 @Strinsert(i8* nocapture %s1, i8 signext %c, i32 %pos) #0 {
entry:
  %idx.ext = sext i32 %pos to i64
  %add.ptr = getelementptr inbounds i8* %s1, i64 %idx.ext
  %tobool4 = icmp eq i8 %c, 0
  br i1 %tobool4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %s.06 = phi i8* [ %incdec.ptr, %for.body ], [ %add.ptr, %entry ]
  %c.addr.05 = phi i8 [ %0, %for.body ], [ %c, %entry ]
  %0 = load i8* %s.06, align 1, !tbaa !1
  store i8 %c.addr.05, i8* %s.06, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %s.06, i64 1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %s.0.lcssa = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %for.body ]
  store i8 0, i8* %s.0.lcssa, align 1, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Strdelete(i8* nocapture %s1, i32 %pos) #0 {
entry:
  %idx.ext = sext i32 %pos to i64
  %add.ptr = getelementptr inbounds i8* %s1, i64 %idx.ext
  %0 = load i8* %add.ptr, align 1, !tbaa !1
  %tobool5 = icmp eq i8 %0, 0
  br i1 %tobool5, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %s.06 = phi i8* [ %add.ptr1, %for.body ], [ %add.ptr, %entry ]
  %add.ptr1 = getelementptr inbounds i8* %s.06, i64 1
  %1 = load i8* %add.ptr1, align 1, !tbaa !1
  store i8 %1, i8* %s.06, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define void @s2lower(i8* nocapture %s) #0 {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %0, 0
  br i1 %cmp7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i8 [ %2, %for.body ], [ %0, %entry ]
  %s.addr.08 = phi i8* [ %incdec.ptr, %for.body ], [ %s, %entry ]
  %conv = sext i8 %1 to i32
  %call = tail call i32 @sre_tolower(i32 %conv) #8
  %conv3 = trunc i32 %call to i8
  store i8 %conv3, i8* %s.addr.08, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %s.addr.08, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @sre_tolower(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @s2upper(i8* nocapture %s) #0 {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %0, 0
  br i1 %cmp7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i8 [ %2, %for.body ], [ %0, %entry ]
  %s.addr.08 = phi i8* [ %incdec.ptr, %for.body ], [ %s, %entry ]
  %conv = sext i8 %1 to i32
  %call = tail call i32 @sre_toupper(i32 %conv) #8
  %conv3 = trunc i32 %call to i8
  store i8 %conv3, i8* %s.addr.08, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %s.addr.08, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @sre_malloc(i8* %file, i32 %line, i64 %size) #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 %size) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i64 %size, i8* %file, i32 %line) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @sre_realloc(i8* %file, i32 %line, i8* nocapture %p, i64 %size) #0 {
entry:
  %call = tail call i8* @realloc(i8* %p, i64 %size) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i64 %size, i8* %file, i32 %line) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Free2DArray(i8** %p, i32 %dim1) #0 {
entry:
  %cmp = icmp eq i8** %p, null
  br i1 %cmp, label %if.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp113 = icmp sgt i32 %dim1, 0
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8** %p, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %0, null
  br i1 %cmp2, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  tail call void @free(i8* %0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %dim1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %1 = bitcast i8** %p to i8*
  tail call void @free(i8* %1) #8
  br label %if.end6

if.end6:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Free3DArray(i8*** %p, i32 %dim1, i32 %dim2) #0 {
entry:
  %cmp = icmp eq i8*** %p, null
  br i1 %cmp, label %if.end23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp139 = icmp sgt i32 %dim1, 0
  br i1 %cmp139, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp537 = icmp sgt i32 %dim2, 0
  br label %for.body

for.body:                                         ; preds = %for.inc20, %for.body.lr.ph
  %indvars.iv41 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next42, %for.inc20 ]
  %arrayidx = getelementptr inbounds i8*** %p, i64 %indvars.iv41
  %0 = load i8*** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8** %0, null
  br i1 %cmp2, label %for.inc20, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body
  br i1 %cmp537, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %1 = phi i8** [ %0, %for.cond4.preheader ], [ %.pre, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx10 = getelementptr inbounds i8** %1, i64 %indvars.iv
  %2 = load i8** %arrayidx10, align 8, !tbaa !0
  %cmp11 = icmp eq i8* %2, null
  br i1 %cmp11, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body6
  tail call void @free(i8* %2) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then12
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %dim2
  %.pre = load i8*** %arrayidx, align 8, !tbaa !0
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %for.inc, %for.cond4.preheader
  %3 = phi i8** [ %0, %for.cond4.preheader ], [ %.pre, %for.inc ]
  %4 = bitcast i8** %3 to i8*
  tail call void @free(i8* %4) #8
  br label %for.inc20

for.inc20:                                        ; preds = %for.body, %for.end
  %indvars.iv.next42 = add i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %dim1
  br i1 %exitcond44, label %for.end22, label %for.body

for.end22:                                        ; preds = %for.inc20, %for.cond.preheader
  %5 = bitcast i8*** %p to i8*
  tail call void @free(i8* %5) #8
  br label %if.end23

if.end23:                                         ; preds = %entry, %for.end22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @RandomSequence(i8* nocapture %alphabet, float* %p, i32 %n, i32 %len) #0 {
entry:
  %add = add nsw i32 %len, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 199, i64 %conv) #10
  %cmp13 = icmp sgt i32 %len, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %call2 = tail call i32 @FChoose(float* %p, i32 %n) #8
  %idxprom = sext i32 %call2 to i64
  %arrayidx = getelementptr inbounds i8* %alphabet, i64 %idxprom
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8* %call, i64 %indvars.iv
  store i8 %0, i8* %arrayidx4, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = sext i32 %len to i64
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %x.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx6 = getelementptr inbounds i8* %call, i64 %x.0.lcssa
  store i8 0, i8* %arrayidx6, align 1, !tbaa !1
  ret i8* %call
}

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i8* @sre_fgets(i8** nocapture %buf, i32* nocapture %n, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %0 = load i32* %n, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i8** %buf, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 253, i64 128) #10
  store i8* %call, i8** %buf, align 8, !tbaa !0
  store i32 128, i32* %n, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %1 = phi i8* [ %call, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %2 = phi i32 [ 128, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %call1 = tail call i8* @fgets(i8* %1, i32 %2, %struct._IO_FILE* %fp) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @feof(%struct._IO_FILE* %fp) #8
  %tobool = icmp eq i32 %call5, 0
  %3 = load i8** %buf, align 8, !tbaa !0
  br i1 %tobool, label %if.end7, label %return

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i64 @strlen(i8* %3) #7
  %sub = shl i64 %call8, 32
  %sext = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp10 = icmp eq i8 %4, 10
  br i1 %cmp10, label %return, label %if.end13

if.end13:                                         ; preds = %if.end7
  %5 = load i32* %n, align 4, !tbaa !4
  %sub14 = add nsw i32 %5, -1
  %6 = sext i32 %sub14 to i64
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end13
  %7 = phi i8* [ %.pre56, %if.end21.while.body_crit_edge ], [ %3, %if.end13 ]
  %8 = phi i32 [ %.pre55, %if.end21.while.body_crit_edge ], [ %5, %if.end13 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end21.while.body_crit_edge ], [ %6, %if.end13 ]
  %add = add nsw i32 %8, 128
  store i32 %add, i32* %n, align 4, !tbaa !4
  %conv15 = sext i32 %add to i64
  %call16 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 283, i8* %7, i64 %conv15) #10
  store i8* %call16, i8** %buf, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %call16, i64 %indvars.iv
  %call17 = tail call i8* @fgets(i8* %add.ptr, i32 129, %struct._IO_FILE* %fp) #8
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.body
  %9 = load i8** %buf, align 8, !tbaa !0
  br label %return

if.end21:                                         ; preds = %while.body
  %call22 = tail call i64 @strlen(i8* %add.ptr) #7
  %sub24 = shl i64 %call22, 32
  %sext53 = add i64 %sub24, -4294967296
  %idxprom25 = ashr exact i64 %sext53, 32
  %add.ptr.sum = add i64 %idxprom25, %indvars.iv
  %arrayidx26 = getelementptr inbounds i8* %call16, i64 %add.ptr.sum
  %10 = load i8* %arrayidx26, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %10, 10
  br i1 %cmp28, label %if.then30, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  %indvars.iv.next = add i64 %indvars.iv, 128
  %.pre55 = load i32* %n, align 4, !tbaa !4
  %.pre56 = load i8** %buf, align 8, !tbaa !0
  br label %while.body

if.then30:                                        ; preds = %if.end21
  %11 = load i8** %buf, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end7, %if.end4, %if.end, %if.then30, %if.then20
  %retval.0 = phi i8* [ %9, %if.then20 ], [ %11, %if.then30 ], [ null, %if.end ], [ %3, %if.end4 ], [ %3, %if.end7 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @sre_strcat(i8** nocapture %dest, i32 %ldest, i8* %src, i32 %lsrc) #0 {
entry:
  %cmp = icmp slt i32 %ldest, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8** %dest, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %call = tail call i64 @strlen(i8* %0) #7
  %phitmp51 = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %entry, %cond.false, %if.then
  %len1.0 = phi i32 [ %phitmp51, %cond.false ], [ 0, %if.then ], [ %ldest, %entry ]
  %cmp2 = icmp slt i32 %lsrc, 0
  br i1 %cmp2, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp eq i8* %src, null
  br i1 %cmp5, label %return, label %cond.false8

cond.false8:                                      ; preds = %if.then4
  %call9 = tail call i64 @strlen(i8* %src) #7
  %phitmp = trunc i64 %call9 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.end, %cond.false8
  %len2.0 = phi i32 [ %phitmp, %cond.false8 ], [ %lsrc, %if.end ]
  %cmp15 = icmp eq i32 %len2.0, 0
  br i1 %cmp15, label %return, label %if.end18

if.end18:                                         ; preds = %if.end14
  %1 = load i8** %dest, align 8, !tbaa !0
  %cmp19 = icmp eq i8* %1, null
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  %add = add nsw i32 %len2.0, 1
  %conv22 = sext i32 %add to i64
  %call23 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 344, i64 %conv22) #10
  br label %if.end30

if.else24:                                        ; preds = %if.end18
  %add25 = add i32 %len1.0, 1
  %add26 = add i32 %add25, %len2.0
  %conv27 = sext i32 %add26 to i64
  %call29 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 345, i8* %1, i64 %conv27) #10
  %add31.pre = add nsw i32 %len2.0, 1
  %conv32.pre = sext i32 %add31.pre to i64
  br label %if.end30

if.end30:                                         ; preds = %if.else24, %if.then21
  %conv32.pre-phi = phi i64 [ %conv32.pre, %if.else24 ], [ %conv22, %if.then21 ]
  %storemerge = phi i8* [ %call29, %if.else24 ], [ %call23, %if.then21 ]
  store i8* %storemerge, i8** %dest, align 8, !tbaa !0
  %idx.ext = sext i32 %len1.0 to i64
  %add.ptr = getelementptr inbounds i8* %storemerge, i64 %idx.ext
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %src, i64 %conv32.pre-phi, i32 1, i1 false)
  %add33 = add nsw i32 %len2.0, %len1.0
  br label %return

return:                                           ; preds = %if.then4, %if.end14, %if.end30
  %retval.0 = phi i32 [ %add33, %if.end30 ], [ %len1.0, %if.end14 ], [ %len1.0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize uwtable
define i8* @sre_strtok(i8** nocapture %s, i8* nocapture %delim, i32* %len) #0 {
entry:
  %0 = load i8** %s, align 8, !tbaa !0
  %call = tail call i64 @strspn(i8* %0, i8* %delim) #7
  %add.ptr = getelementptr inbounds i8* %0, i64 %call
  %1 = load i8* %add.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strcspn(i8* %add.ptr, i8* %delim) #7
  %conv = trunc i64 %call1 to i32
  %sext = shl i64 %call1, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr.sum = add i64 %idx.ext, %call
  %add.ptr2 = getelementptr inbounds i8* %0, i64 %add.ptr.sum
  %2 = load i8* %add.ptr2, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.end7, label %if.else

if.else:                                          ; preds = %if.end
  store i8 0, i8* %add.ptr2, align 1, !tbaa !1
  %add.ptr2.sum = add i64 %add.ptr.sum, 1
  %add.ptr6 = getelementptr inbounds i8* %0, i64 %add.ptr2.sum
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  %storemerge = phi i8* [ %add.ptr6, %if.else ], [ %add.ptr2, %if.end ]
  store i8* %storemerge, i8** %s, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %len, null
  br i1 %cmp8, label %return, label %if.then10

if.then10:                                        ; preds = %if.end7
  store i32 %conv, i32* %len, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.then10, %if.end7, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %add.ptr, %if.end7 ], [ %add.ptr, %if.then10 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @sre_strdup(i8* %s, i32 %n) #0 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %n, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* %s) #7
  %conv = trunc i64 %call to i32
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %n.addr.0 = phi i32 [ %conv, %if.then2 ], [ %n, %if.end ]
  %add = add nsw i32 %n.addr.0, 1
  %conv4 = sext i32 %add to i64
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 442, i64 %conv4) #10
  %call6 = tail call i8* @strcpy(i8* %call5, i8* %s) #8
  br label %return

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi i8* [ %call5, %if.end3 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @sre_strncpy(i8* %s1, i8* nocapture %s2, i32 %n) #0 {
entry:
  %conv = sext i32 %n to i64
  %call = tail call i8* @strncpy(i8* %s1, i8* %s2, i64 %conv) #8
  %arrayidx = getelementptr inbounds i8* %s1, i64 %conv
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  ret i8* %s1
}

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IsBlankline(i8* nocapture %s) #6 {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %0, 0
  br i1 %cmp6, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #9
  %1 = load i16** %call, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %return, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %3 = phi i8 [ %0, %for.body.lr.ph ], [ %2, %for.cond ]
  %s.addr.07 = phi i8* [ %s, %for.body.lr.ph ], [ %incdec.ptr, %for.cond ]
  %idxprom = sext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16* %1, i64 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !3
  %and = and i16 %4, 8192
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %s.addr.07, i64 1
  br i1 %tobool, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
