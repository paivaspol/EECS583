; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"symtab lookup \22%s\22 not found\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"symtab get_symtab_handle %d not found\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"symbuf->buf[i]\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"symbuf->buf\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"freeptr\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"%s[%d]=\22%s\22\0A\00", align 1
@trim_string.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str7 = private unnamed_addr constant [7 x i8] c"symbuf\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @lookup_symtab(%struct.t_symtab* nocapture %symtab, i8** %name) #0 {
entry:
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %symbuf.017 = load %struct.symbuf** %symbuf1, align 8
  %cmp18 = icmp eq %struct.symbuf* %symbuf.017, null
  br i1 %cmp18, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8** %name to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.else
  %symbuf.020 = phi %struct.symbuf* [ %symbuf.017, %while.body.lr.ph ], [ %symbuf.0, %if.else ]
  %base.019 = phi i32 [ 0, %while.body.lr.ph ], [ %add7, %if.else ]
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.020, i64 0, i32 1
  %0 = load i8*** %buf, align 8, !tbaa !0
  %sub.ptr.rhs.cast = ptrtoint i8** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div15 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div15 to i32
  %cmp2 = icmp sgt i32 %conv, -1
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.020, i64 0, i32 0
  %1 = load i32* %bufsize, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %conv, %1
  %or.cond = and i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %conv, %base.019
  br label %return

if.else:                                          ; preds = %while.body
  %add7 = add nsw i32 %1, %base.019
  %next = getelementptr inbounds %struct.symbuf* %symbuf.020, i64 0, i32 2
  %symbuf.0 = load %struct.symbuf** %next, align 8
  %cmp = icmp eq %struct.symbuf* %symbuf.0, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %if.else, %entry
  %2 = load i8** %name, align 8, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i8* %2) #5
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ -1, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8** @get_symtab_handle(%struct.t_symtab* nocapture %symtab, i32 %name) #0 {
entry:
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %symbuf.012 = load %struct.symbuf** %symbuf1, align 8
  %cmp13 = icmp eq %struct.symbuf* %symbuf.012, null
  br i1 %cmp13, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.else
  %symbuf.015 = phi %struct.symbuf* [ %symbuf.0, %if.else ], [ %symbuf.012, %entry ]
  %name.addr.014 = phi i32 [ %sub, %if.else ], [ %name, %entry ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.015, i64 0, i32 0
  %0 = load i32* %bufsize, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %name.addr.014, %0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %idxprom = sext i32 %name.addr.014 to i64
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.015, i64 0, i32 1
  %1 = load i8*** %buf, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom
  br label %return

if.else:                                          ; preds = %while.body
  %sub = sub nsw i32 %name.addr.014, %0
  %next = getelementptr inbounds %struct.symbuf* %symbuf.015, i64 0, i32 2
  %symbuf.0 = load %struct.symbuf** %next, align 8
  %cmp = icmp eq %struct.symbuf* %symbuf.0, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %if.else, %entry
  %name.addr.0.lcssa = phi i32 [ %name, %entry ], [ %sub, %if.else ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i32 %name.addr.0.lcssa) #5
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i8** [ %arrayidx, %if.then ], [ null, %while.end ]
  ret i8** %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8** @put_symtab(%struct.t_symtab* nocapture %symtab, i8* nocapture %name) #0 {
entry:
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %s.addr.0.i = phi i8* [ %name, %entry ], [ %incdec.ptr.i, %for.cond.i ]
  %0 = load i8* %s.addr.0.i, align 1, !tbaa !1
  %cond.i = icmp eq i8 %0, 32
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.0.i, i64 1
  br i1 %cond.i, label %for.cond.i, label %for.end.i

for.end.i:                                        ; preds = %for.cond.i
  %call.i = tail call i64 @strlen(i8* %s.addr.0.i) #6
  %conv3.i = trunc i64 %call.i to i32
  %1 = xor i32 %conv3.i, -1
  %sext.i = shl i64 %call.i, 32
  %2 = ashr exact i64 %sext.i, 32
  %3 = add i32 %conv3.i, 1023
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body7.i, %for.end.i
  %indvars.iv23 = phi i32 [ %indvars.iv.next24, %for.body7.i ], [ %conv3.i, %for.end.i ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body7.i ], [ %3, %for.end.i ]
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %for.body7.i ], [ %2, %for.end.i ]
  %indvars.iv4.i = phi i32 [ %indvars.iv.next5.i, %for.body7.i ], [ %1, %for.end.i ]
  %4 = trunc i64 %indvars.iv6.i to i32
  %cmp5.i = icmp sgt i32 %4, 0
  br i1 %cmp5.i, label %for.body7.i, label %for.end12.i

for.body7.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next7.i = add i64 %indvars.iv6.i, -1
  %indvars.iv.next24 = add i32 %indvars.iv23, -1
  %arrayidx.i = getelementptr inbounds i8* %s.addr.0.i, i64 %indvars.iv.next7.i
  %5 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp9.i = icmp eq i8 %5, 32
  %indvars.iv.next5.i = add i32 %indvars.iv4.i, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %cmp9.i, label %for.cond4.i, label %for.end12.i

for.end12.i:                                      ; preds = %for.body7.i, %for.cond4.i
  %cmp1818.i = icmp sgt i32 %indvars.iv23, 0
  br i1 %cmp1818.i, label %for.body20.lr.ph.i, label %trim_string.exit

for.body20.lr.ph.i:                               ; preds = %for.end12.i
  %6 = icmp sgt i32 %indvars.iv4.i, -1024
  %indvars.iv4.op.i = xor i32 %indvars.iv4.i, -1
  %7 = select i1 %6, i32 %indvars.iv4.op.i, i32 1023
  store i8 %0, i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0), align 16, !tbaa !1
  %exitcond.i15 = icmp eq i32 %7, 1
  br i1 %exitcond.i15, label %for.cond17.for.end25_crit_edge.i, label %for.body20.for.body20_crit_edge.i.lr.ph

for.body20.for.body20_crit_edge.i.lr.ph:          ; preds = %for.body20.lr.ph.i
  %8 = icmp sgt i32 %indvars.iv23, 1023
  %smax = select i1 %8, i32 %indvars.iv23, i32 1023
  %9 = sub i32 %indvars.iv, %smax
  br label %for.body20.for.body20_crit_edge.i

for.body20.for.body20_crit_edge.i:                ; preds = %for.body20.for.body20_crit_edge.i.lr.ph, %for.body20.for.body20_crit_edge.i
  %indvars.iv.next.i17 = phi i64 [ 1, %for.body20.for.body20_crit_edge.i.lr.ph ], [ %indvars.iv.next.i, %for.body20.for.body20_crit_edge.i ]
  %s.addr.0.i.pn = phi i8* [ %s.addr.0.i, %for.body20.for.body20_crit_edge.i.lr.ph ], [ %incdec.ptr21.i16, %for.body20.for.body20_crit_edge.i ]
  %incdec.ptr21.i16 = getelementptr inbounds i8* %s.addr.0.i.pn, i64 1
  %.pre.i = load i8* %incdec.ptr21.i16, align 1, !tbaa !1
  %arrayidx23.i = getelementptr inbounds [1024 x i8]* @trim_string.buf, i64 0, i64 %indvars.iv.next.i17
  store i8 %.pre.i, i8* %arrayidx23.i, align 1, !tbaa !1
  %indvars.iv.next.i = add i64 %indvars.iv.next.i17, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %for.cond17.for.end25_crit_edge.i, label %for.body20.for.body20_crit_edge.i

for.cond17.for.end25_crit_edge.i:                 ; preds = %for.body20.for.body20_crit_edge.i, %for.body20.lr.ph.i
  %phitmp.i = sext i32 %7 to i64
  br label %trim_string.exit

trim_string.exit:                                 ; preds = %for.end12.i, %for.cond17.for.end25_crit_edge.i
  %i.0.lcssa.i = phi i64 [ %phitmp.i, %for.cond17.for.end25_crit_edge.i ], [ 0, %for.end12.i ]
  %arrayidx27.i = getelementptr inbounds [1024 x i8]* @trim_string.buf, i64 0, i64 %i.0.lcssa.i
  store i8 0, i8* %arrayidx27.i, align 1, !tbaa !1
  %symbuf1.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %10 = load %struct.symbuf** %symbuf1.i, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.symbuf* %10, null
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %trim_string.exit
  %call.i2 = tail call fastcc %struct.symbuf* @new_symbuf() #5
  store %struct.symbuf* %call.i2, %struct.symbuf** %symbuf1.i, align 8, !tbaa !0
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %trim_string.exit, %for.end.i8
  %symbuf.0.i = phi %struct.symbuf* [ %symbuf.0..i, %for.end.i8 ], [ %call.i2, %if.then.i ], [ %10, %trim_string.exit ]
  %bufsize.i = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 0
  %11 = load i32* %bufsize.i, align 4, !tbaa !3
  %cmp44.i = icmp sgt i32 %11, 0
  br i1 %cmp44.i, label %for.body.lr.ph.i, label %for.end.i8

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %buf.i = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 1
  %12 = load i8*** %buf.i, align 8, !tbaa !0
  br label %for.body.i

for.cond.i3:                                      ; preds = %if.else.i
  %13 = trunc i64 %indvars.iv.next.i7 to i32
  %cmp4.i = icmp slt i32 %13, %11
  br i1 %cmp4.i, label %for.body.i, label %for.end.i8

for.body.i:                                       ; preds = %for.cond.i3, %for.body.lr.ph.i
  %indvars.iv.i4 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i7, %for.cond.i3 ]
  %arrayidx.i5 = getelementptr inbounds i8** %12, i64 %indvars.iv.i4
  %14 = load i8** %arrayidx.i5, align 8, !tbaa !0
  %cmp5.i6 = icmp eq i8* %14, null
  br i1 %cmp5.i6, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %for.body.i
  %nr.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %15 = load i32* %nr.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %15, 1
  store i32 %inc.i, i32* %nr.i, align 4, !tbaa !3
  %call7.i = tail call i8* @gmx_strdup(i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #5
  %16 = load i8*** %buf.i, align 8, !tbaa !0
  %arrayidx10.i = getelementptr inbounds i8** %16, i64 %indvars.iv.i4
  store i8* %call7.i, i8** %arrayidx10.i, align 8, !tbaa !0
  %17 = load i8*** %buf.i, align 8, !tbaa !0
  %arrayidx13.i = getelementptr inbounds i8** %17, i64 %indvars.iv.i4
  br label %enter_buf.exit

if.else.i:                                        ; preds = %for.body.i
  %call17.i = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #6
  %cmp18.i = icmp eq i32 %call17.i, 0
  %indvars.iv.next.i7 = add i64 %indvars.iv.i4, 1
  br i1 %cmp18.i, label %enter_buf.exit, label %for.cond.i3

for.end.i8:                                       ; preds = %for.cond.i3, %do.body.i
  %next.i = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 2
  %18 = load %struct.symbuf** %next.i, align 8, !tbaa !0
  %cmp26.i = icmp eq %struct.symbuf* %18, null
  %symbuf.0..i = select i1 %cmp26.i, %struct.symbuf* %symbuf.0.i, %struct.symbuf* %18
  br i1 %cmp26.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %for.end.i8
  %call31.i = tail call fastcc %struct.symbuf* @new_symbuf() #5
  %next32.i = getelementptr inbounds %struct.symbuf* %symbuf.0..i, i64 0, i32 2
  store %struct.symbuf* %call31.i, %struct.symbuf** %next32.i, align 8, !tbaa !0
  %nr34.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %19 = load i32* %nr34.i, align 4, !tbaa !3
  %inc35.i = add nsw i32 %19, 1
  store i32 %inc35.i, i32* %nr34.i, align 4, !tbaa !3
  %call36.i = tail call i8* @gmx_strdup(i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #5
  %buf37.i = getelementptr inbounds %struct.symbuf* %call31.i, i64 0, i32 1
  %20 = load i8*** %buf37.i, align 8, !tbaa !0
  store i8* %call36.i, i8** %20, align 8, !tbaa !0
  %21 = load i8*** %buf37.i, align 8, !tbaa !0
  br label %enter_buf.exit

enter_buf.exit:                                   ; preds = %if.else.i, %if.then6.i, %do.end.i
  %retval.0.i = phi i8** [ %arrayidx13.i, %if.then6.i ], [ %21, %do.end.i ], [ %arrayidx.i5, %if.else.i ]
  ret i8** %retval.0.i
}

; Function Attrs: nounwind optsize uwtable
define void @open_symtab(%struct.t_symtab* nocapture %symtab) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  store i32 0, i32* %nr, align 4, !tbaa !3
  %symbuf = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  store %struct.symbuf* null, %struct.symbuf** %symbuf, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @close_symtab(%struct.t_symtab* nocapture %symtab) #2 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @done_symtab(%struct.t_symtab* nocapture %symtab) #0 {
entry:
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %0 = load %struct.symbuf** %symbuf1, align 8, !tbaa !0
  %cmp21 = icmp eq %struct.symbuf* %0, null
  br i1 %cmp21, label %while.end, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %entry
  %nr = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %symbuf.022 = phi %struct.symbuf* [ %0, %for.cond.preheader.lr.ph ], [ %11, %for.end ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.022, i64 0, i32 0
  %1 = load i32* %bufsize, align 4, !tbaa !3
  %cmp219 = icmp sgt i32 %1, 0
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.022, i64 0, i32 1
  br i1 %cmp219, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %i.020 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %2 = load i32* %nr, align 4, !tbaa !3
  %3 = trunc i64 %indvars.iv to i32
  %cmp3 = icmp slt i32 %3, %2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %4 = load i8*** %buf, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv
  %5 = load i8** %arrayidx, align 8, !tbaa !0
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 175, i8* %5) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.020, 1
  %6 = load i32* %bufsize, align 4, !tbaa !3
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %7, %6
  br i1 %cmp2, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.body, %land.rhs
  %i.0.lcssa = phi i32 [ %i.020, %land.rhs ], [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %8 = load i32* %nr, align 4, !tbaa !3
  %sub = sub nsw i32 %8, %i.0.lcssa
  store i32 %sub, i32* %nr, align 4, !tbaa !3
  %9 = load i8*** %buf, align 8, !tbaa !0
  %10 = bitcast i8** %9 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 177, i8* %10) #5
  %next = getelementptr inbounds %struct.symbuf* %symbuf.022, i64 0, i32 2
  %11 = load %struct.symbuf** %next, align 8, !tbaa !0
  %12 = bitcast %struct.symbuf* %symbuf.022 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 180, i8* %12) #5
  %cmp = icmp eq %struct.symbuf* %11, null
  br i1 %cmp, label %while.end, label %for.cond.preheader

while.end:                                        ; preds = %for.end, %entry
  store %struct.symbuf* null, %struct.symbuf** %symbuf1, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @free_symtab(%struct.t_symtab* nocapture %symtab) #0 {
entry:
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %0 = load %struct.symbuf** %symbuf1, align 8, !tbaa !0
  %cmp16 = icmp eq %struct.symbuf* %0, null
  br i1 %cmp16, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %nr = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %symbuf.017 = phi %struct.symbuf* [ %0, %while.body.lr.ph ], [ %3, %while.body ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.017, i64 0, i32 0
  %1 = load i32* %bufsize, align 4, !tbaa !3
  %2 = load i32* %nr, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %2
  %. = select i1 %cmp2, i32 %1, i32 %2
  %sub = sub nsw i32 %2, %.
  store i32 %sub, i32* %nr, align 4, !tbaa !3
  %next = getelementptr inbounds %struct.symbuf* %symbuf.017, i64 0, i32 2
  %3 = load %struct.symbuf** %next, align 8, !tbaa !0
  %4 = bitcast %struct.symbuf* %symbuf.017 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 196, i8* %4) #5
  %cmp = icmp eq %struct.symbuf* %3, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  store %struct.symbuf* null, %struct.symbuf** %symbuf1, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pr_symtab(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_symtab* %symtab) #0 {
entry:
  %0 = bitcast %struct.t_symtab* %symtab to i8*
  %call = tail call i32 @available(%struct._IO_FILE* %fp, i8* %0, i8* %title) #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %nr1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %1 = load i32* %nr1, align 4, !tbaa !3
  %call2 = tail call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %1) #5
  %symbuf4 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %symbuf.037 = load %struct.symbuf** %symbuf4, align 8
  %cmp38 = icmp eq %struct.symbuf* %symbuf.037, null
  br i1 %cmp38, label %if.end12, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %if.then
  %2 = load i32* %nr1, align 4, !tbaa !3
  %tobool7 = icmp eq %struct._IO_FILE* %fp, null
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %symbuf.042 = phi %struct.symbuf* [ %symbuf.037, %for.cond.preheader.lr.ph ], [ %symbuf.0, %for.end ]
  %nr.040 = phi i32 [ %2, %for.cond.preheader.lr.ph ], [ %sub, %for.end ]
  %i.039 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %i.1.lcssa, %for.end ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.042, i64 0, i32 0
  %3 = load i32* %bufsize, align 4, !tbaa !3
  %cmp531 = icmp sgt i32 %3, 0
  %cmp632 = icmp sgt i32 %nr.040, 0
  %or.cond33 = and i1 %cmp531, %cmp632
  br i1 %or.cond33, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.042, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc11, %for.inc ]
  %i.134 = phi i32 [ %i.039, %for.body.lr.ph ], [ %i.2, %for.inc ]
  br i1 %tobool7, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call2) #5
  %inc = add nsw i32 %i.134, 1
  %5 = load i8*** %buf, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %5, i64 %indvars.iv
  %6 = load i8** %arrayidx, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %i.134, i8* %6) #5
  %.pre = load i32* %bufsize, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %7 = phi i32 [ %.pre, %if.then8 ], [ %4, %for.body ]
  %i.2 = phi i32 [ %inc, %if.then8 ], [ %i.134, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc11 = add nsw i32 %j.035, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %8, %7
  %cmp6 = icmp slt i32 %8, %nr.040
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc11, %for.inc ]
  %i.1.lcssa = phi i32 [ %i.039, %for.cond.preheader ], [ %i.2, %for.inc ]
  %sub = sub nsw i32 %nr.040, %j.0.lcssa
  %next = getelementptr inbounds %struct.symbuf* %symbuf.042, i64 0, i32 2
  %symbuf.0 = load %struct.symbuf** %next, align 8
  %cmp = icmp eq %struct.symbuf* %symbuf.0, null
  br i1 %cmp, label %if.end12, label %for.cond.preheader

if.end12:                                         ; preds = %if.then, %for.end, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @available(%struct._IO_FILE*, i8*, i8*) #1

; Function Attrs: optsize
declare i32 @pr_title_n(%struct._IO_FILE*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i32 @pr_indent(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.symbuf* @new_symbuf() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 108, i32 1, i32 24) #5
  %0 = bitcast i8* %call to %struct.symbuf*
  %bufsize = bitcast i8* %call to i32*
  store i32 5, i32* %bufsize, align 4, !tbaa !3
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 110, i32 5, i32 8) #5
  %1 = bitcast i8* %call2 to i8**
  %buf = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %buf to i8***
  store i8** %1, i8*** %2, align 8, !tbaa !0
  %next = getelementptr inbounds i8* %call, i64 16
  %3 = bitcast i8* %next to %struct.symbuf**
  store %struct.symbuf* null, %struct.symbuf** %3, align 8, !tbaa !0
  ret %struct.symbuf* %0
}

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
