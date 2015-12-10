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
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !28), !dbg !156
  tail call void @llvm.dbg.value(metadata !{i8** %name}, i64 0, metadata !29), !dbg !156
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !30), !dbg !157
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !158
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !159
  %symbuf.017 = load %struct.symbuf** %symbuf1, align 8, !dbg !159
  %cmp18 = icmp eq %struct.symbuf* %symbuf.017, null, !dbg !160
  br i1 %cmp18, label %while.end, label %while.body.lr.ph, !dbg !160

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8** %name to i64, !dbg !161
  br label %while.body, !dbg !160

while.body:                                       ; preds = %while.body.lr.ph, %if.else
  %symbuf.020 = phi %struct.symbuf* [ %symbuf.017, %while.body.lr.ph ], [ %symbuf.0, %if.else ]
  %base.019 = phi i32 [ 0, %while.body.lr.ph ], [ %add7, %if.else ]
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.020, i64 0, i32 1, !dbg !161
  %0 = load i8*** %buf, align 8, !dbg !161, !tbaa !163
  %sub.ptr.rhs.cast = ptrtoint i8** %0 to i64, !dbg !161
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !161
  %sub.ptr.div15 = lshr exact i64 %sub.ptr.sub, 3, !dbg !161
  %conv = trunc i64 %sub.ptr.div15 to i32, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !31), !dbg !161
  %cmp2 = icmp sgt i32 %conv, -1, !dbg !166
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.020, i64 0, i32 0, !dbg !166
  %1 = load i32* %bufsize, align 4, !dbg !166, !tbaa !167
  %cmp4 = icmp slt i32 %conv, %1, !dbg !166
  %or.cond = and i1 %cmp2, %cmp4, !dbg !166
  br i1 %or.cond, label %if.then, label %if.else, !dbg !166

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %conv, %base.019, !dbg !168
  br label %return, !dbg !168

if.else:                                          ; preds = %while.body
  %add7 = add nsw i32 %1, %base.019, !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !30), !dbg !169
  %next = getelementptr inbounds %struct.symbuf* %symbuf.020, i64 0, i32 2, !dbg !171
  %symbuf.0 = load %struct.symbuf** %next, align 8, !dbg !159
  %cmp = icmp eq %struct.symbuf* %symbuf.0, null, !dbg !160
  br i1 %cmp, label %while.end, label %while.body, !dbg !160

while.end:                                        ; preds = %if.else, %entry
  %2 = load i8** %name, align 8, !dbg !172, !tbaa !163
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i8* %2) #6, !dbg !172
  br label %return, !dbg !173

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ -1, %while.end ]
  ret i32 %retval.0, !dbg !174
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8** @get_symtab_handle(%struct.t_symtab* nocapture %symtab, i32 %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !37), !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %name}, i64 0, metadata !38), !dbg !175
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !176
  %symbuf.012 = load %struct.symbuf** %symbuf1, align 8, !dbg !176
  %cmp13 = icmp eq %struct.symbuf* %symbuf.012, null, !dbg !177
  br i1 %cmp13, label %while.end, label %while.body, !dbg !177

while.body:                                       ; preds = %entry, %if.else
  %symbuf.015 = phi %struct.symbuf* [ %symbuf.0, %if.else ], [ %symbuf.012, %entry ]
  %name.addr.014 = phi i32 [ %sub, %if.else ], [ %name, %entry ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.015, i64 0, i32 0, !dbg !178
  %0 = load i32* %bufsize, align 4, !dbg !178, !tbaa !167
  %cmp2 = icmp slt i32 %name.addr.014, %0, !dbg !178
  br i1 %cmp2, label %if.then, label %if.else, !dbg !178

if.then:                                          ; preds = %while.body
  %idxprom = sext i32 %name.addr.014 to i64, !dbg !180
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.015, i64 0, i32 1, !dbg !180
  %1 = load i8*** %buf, align 8, !dbg !180, !tbaa !163
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !180
  br label %return, !dbg !180

if.else:                                          ; preds = %while.body
  %sub = sub nsw i32 %name.addr.014, %0, !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !38), !dbg !181
  %next = getelementptr inbounds %struct.symbuf* %symbuf.015, i64 0, i32 2, !dbg !183
  %symbuf.0 = load %struct.symbuf** %next, align 8, !dbg !176
  %cmp = icmp eq %struct.symbuf* %symbuf.0, null, !dbg !177
  br i1 %cmp, label %while.end, label %while.body, !dbg !177

while.end:                                        ; preds = %if.else, %entry
  %name.addr.0.lcssa = phi i32 [ %name, %entry ], [ %sub, %if.else ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i32 %name.addr.0.lcssa) #6, !dbg !184
  br label %return, !dbg !185

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i8** [ %arrayidx, %if.then ], [ null, %while.end ]
  ret i8** %retval.0, !dbg !186
}

; Function Attrs: nounwind optsize uwtable
define i8** @put_symtab(%struct.t_symtab* nocapture %symtab, i8* nocapture %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !44), !dbg !187
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !45), !dbg !187
  br label %for.cond.i, !dbg !188

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %s.addr.0.i = phi i8* [ %name, %entry ], [ %incdec.ptr.i, %for.cond.i ]
  %0 = load i8* %s.addr.0.i, align 1, !dbg !188, !tbaa !164
  %cond.i = icmp eq i8 %0, 32, !dbg !188
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.0.i, i64 1, !dbg !188
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !191) #7, !dbg !188
  br i1 %cond.i, label %for.cond.i, label %for.end.i, !dbg !188

for.end.i:                                        ; preds = %for.cond.i
  %call.i = tail call i64 @strlen(i8* %s.addr.0.i) #8, !dbg !192
  %conv3.i = trunc i64 %call.i to i32, !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %conv3.i}, i64 0, metadata !194) #7, !dbg !192
  %1 = xor i32 %conv3.i, -1, !dbg !192
  %sext.i = shl i64 %call.i, 32
  %2 = ashr exact i64 %sext.i, 32
  %3 = add i32 %conv3.i, 1023, !dbg !192
  br label %for.cond4.i, !dbg !192

for.cond4.i:                                      ; preds = %for.body7.i, %for.end.i
  %indvars.iv23 = phi i32 [ %indvars.iv.next24, %for.body7.i ], [ %conv3.i, %for.end.i ], !dbg !192
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body7.i ], [ %3, %for.end.i ]
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %for.body7.i ], [ %2, %for.end.i ]
  %indvars.iv4.i = phi i32 [ %indvars.iv.next5.i, %for.body7.i ], [ %1, %for.end.i ], !dbg !195
  %4 = trunc i64 %indvars.iv6.i to i32, !dbg !192
  %cmp5.i = icmp sgt i32 %4, 0, !dbg !192
  br i1 %cmp5.i, label %for.body7.i, label %for.end12.i, !dbg !192

for.body7.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next7.i = add i64 %indvars.iv6.i, -1, !dbg !192
  %indvars.iv.next24 = add i32 %indvars.iv23, -1, !dbg !192
  %arrayidx.i = getelementptr inbounds i8* %s.addr.0.i, i64 %indvars.iv.next7.i, !dbg !192
  %5 = load i8* %arrayidx.i, align 1, !dbg !192, !tbaa !164
  %cmp9.i = icmp eq i8 %5, 32, !dbg !192
  %indvars.iv.next5.i = add i32 %indvars.iv4.i, 1, !dbg !192
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !192
  br i1 %cmp9.i, label %for.cond4.i, label %for.end12.i, !dbg !192

for.end12.i:                                      ; preds = %for.body7.i, %for.cond4.i
  tail call void @llvm.dbg.value(metadata !197, i64 0, metadata !194) #7, !dbg !198
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !199) #7, !dbg !195
  %cmp1818.i = icmp sgt i32 %indvars.iv23, 0, !dbg !195
  br i1 %cmp1818.i, label %for.body20.lr.ph.i, label %trim_string.exit, !dbg !195

for.body20.lr.ph.i:                               ; preds = %for.end12.i
  %6 = icmp sgt i32 %indvars.iv4.i, -1024, !dbg !192
  %indvars.iv4.op.i = xor i32 %indvars.iv4.i, -1, !dbg !195
  %7 = select i1 %6, i32 %indvars.iv4.op.i, i32 1023, !dbg !195
  store i8 %0, i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0), align 16, !dbg !195, !tbaa !164
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !199) #7, !dbg !195
  %exitcond.i15 = icmp eq i32 %7, 1, !dbg !195
  br i1 %exitcond.i15, label %for.cond17.for.end25_crit_edge.i, label %for.body20.for.body20_crit_edge.i.lr.ph, !dbg !195

for.body20.for.body20_crit_edge.i.lr.ph:          ; preds = %for.body20.lr.ph.i
  %8 = icmp sgt i32 %indvars.iv23, 1023, !dbg !192
  %smax = select i1 %8, i32 %indvars.iv23, i32 1023, !dbg !192
  %9 = sub i32 %indvars.iv, %smax, !dbg !195
  br label %for.body20.for.body20_crit_edge.i, !dbg !195

for.body20.for.body20_crit_edge.i:                ; preds = %for.body20.for.body20_crit_edge.i.lr.ph, %for.body20.for.body20_crit_edge.i
  %indvars.iv.next.i17 = phi i64 [ 1, %for.body20.for.body20_crit_edge.i.lr.ph ], [ %indvars.iv.next.i, %for.body20.for.body20_crit_edge.i ]
  %s.addr.0.i.pn = phi i8* [ %s.addr.0.i, %for.body20.for.body20_crit_edge.i.lr.ph ], [ %incdec.ptr21.i16, %for.body20.for.body20_crit_edge.i ]
  %incdec.ptr21.i16 = getelementptr inbounds i8* %s.addr.0.i.pn, i64 1, !dbg !195
  %.pre.i = load i8* %incdec.ptr21.i16, align 1, !dbg !195, !tbaa !164
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr21.i16}, i64 0, metadata !191) #7, !dbg !195
  %arrayidx23.i = getelementptr inbounds [1024 x i8]* @trim_string.buf, i64 0, i64 %indvars.iv.next.i17, !dbg !195
  store i8 %.pre.i, i8* %arrayidx23.i, align 1, !dbg !195, !tbaa !164
  %indvars.iv.next.i = add i64 %indvars.iv.next.i17, 1, !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !199) #7, !dbg !195
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !195
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !195
  br i1 %exitcond, label %for.cond17.for.end25_crit_edge.i, label %for.body20.for.body20_crit_edge.i, !dbg !195

for.cond17.for.end25_crit_edge.i:                 ; preds = %for.body20.for.body20_crit_edge.i, %for.body20.lr.ph.i
  %phitmp.i = sext i32 %7 to i64, !dbg !195
  br label %trim_string.exit, !dbg !195

trim_string.exit:                                 ; preds = %for.end12.i, %for.cond17.for.end25_crit_edge.i
  %i.0.lcssa.i = phi i64 [ %phitmp.i, %for.cond17.for.end25_crit_edge.i ], [ 0, %for.end12.i ]
  %arrayidx27.i = getelementptr inbounds [1024 x i8]* @trim_string.buf, i64 0, i64 %i.0.lcssa.i, !dbg !200
  store i8 0, i8* %arrayidx27.i, align 1, !dbg !200, !tbaa !164
  tail call void @llvm.dbg.value(metadata !201, i64 0, metadata !202) #7, !dbg !203
  %symbuf1.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !204
  %10 = load %struct.symbuf** %symbuf1.i, align 8, !dbg !204, !tbaa !163
  %cmp.i = icmp eq %struct.symbuf* %10, null, !dbg !204
  br i1 %cmp.i, label %if.then.i, label %do.body.i, !dbg !204

if.then.i:                                        ; preds = %trim_string.exit
  %call.i2 = tail call fastcc %struct.symbuf* @new_symbuf() #6, !dbg !205
  store %struct.symbuf* %call.i2, %struct.symbuf** %symbuf1.i, align 8, !dbg !205, !tbaa !163
  br label %do.body.i, !dbg !205

do.body.i:                                        ; preds = %if.then.i, %trim_string.exit, %for.end.i8
  %symbuf.0.i = phi %struct.symbuf* [ %symbuf.0..i, %for.end.i8 ], [ %call.i2, %if.then.i ], [ %10, %trim_string.exit ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !206) #7, !dbg !207
  %bufsize.i = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 0, !dbg !207
  %11 = load i32* %bufsize.i, align 4, !dbg !207, !tbaa !167
  %cmp44.i = icmp sgt i32 %11, 0, !dbg !207
  br i1 %cmp44.i, label %for.body.lr.ph.i, label %for.end.i8, !dbg !207

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %buf.i = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 1, !dbg !210
  %12 = load i8*** %buf.i, align 8, !dbg !210, !tbaa !163
  br label %for.body.i, !dbg !207

for.cond.i3:                                      ; preds = %if.else.i
  %13 = trunc i64 %indvars.iv.next.i7 to i32, !dbg !207
  %cmp4.i = icmp slt i32 %13, %11, !dbg !207
  br i1 %cmp4.i, label %for.body.i, label %for.end.i8, !dbg !207

for.body.i:                                       ; preds = %for.cond.i3, %for.body.lr.ph.i
  %indvars.iv.i4 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i7, %for.cond.i3 ]
  %arrayidx.i5 = getelementptr inbounds i8** %12, i64 %indvars.iv.i4, !dbg !210
  %14 = load i8** %arrayidx.i5, align 8, !dbg !210, !tbaa !163
  %cmp5.i6 = icmp eq i8* %14, null, !dbg !210
  br i1 %cmp5.i6, label %if.then6.i, label %if.else.i, !dbg !210

if.then6.i:                                       ; preds = %for.body.i
  %nr.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !212
  %15 = load i32* %nr.i, align 4, !dbg !212, !tbaa !167
  %inc.i = add nsw i32 %15, 1, !dbg !212
  store i32 %inc.i, i32* %nr.i, align 4, !dbg !212, !tbaa !167
  %call7.i = tail call noalias i8* @strdup(i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #6, !dbg !214
  %16 = load i8*** %buf.i, align 8, !dbg !214, !tbaa !163
  %arrayidx10.i = getelementptr inbounds i8** %16, i64 %indvars.iv.i4, !dbg !214
  store i8* %call7.i, i8** %arrayidx10.i, align 8, !dbg !214, !tbaa !163
  %17 = load i8*** %buf.i, align 8, !dbg !215, !tbaa !163
  %arrayidx13.i = getelementptr inbounds i8** %17, i64 %indvars.iv.i4, !dbg !215
  br label %enter_buf.exit, !dbg !215

if.else.i:                                        ; preds = %for.body.i
  %call17.i = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #8, !dbg !216
  %cmp18.i = icmp eq i32 %call17.i, 0, !dbg !216
  %indvars.iv.next.i7 = add i64 %indvars.iv.i4, 1, !dbg !207
  br i1 %cmp18.i, label %enter_buf.exit, label %for.cond.i3, !dbg !216

for.end.i8:                                       ; preds = %for.cond.i3, %do.body.i
  %next.i = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 2, !dbg !217
  %18 = load %struct.symbuf** %next.i, align 8, !dbg !217, !tbaa !163
  %cmp26.i = icmp eq %struct.symbuf* %18, null, !dbg !217
  %symbuf.0..i = select i1 %cmp26.i, %struct.symbuf* %symbuf.0.i, %struct.symbuf* %18
  br i1 %cmp26.i, label %do.end.i, label %do.body.i, !dbg !218

do.end.i:                                         ; preds = %for.end.i8
  %call31.i = tail call fastcc %struct.symbuf* @new_symbuf() #6, !dbg !219
  %next32.i = getelementptr inbounds %struct.symbuf* %symbuf.0..i, i64 0, i32 2, !dbg !219
  store %struct.symbuf* %call31.i, %struct.symbuf** %next32.i, align 8, !dbg !219, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %call31.i}, i64 0, metadata !220) #7, !dbg !221
  %nr34.i = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !222
  %19 = load i32* %nr34.i, align 4, !dbg !222, !tbaa !167
  %inc35.i = add nsw i32 %19, 1, !dbg !222
  store i32 %inc35.i, i32* %nr34.i, align 4, !dbg !222, !tbaa !167
  %call36.i = tail call noalias i8* @strdup(i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #6, !dbg !223
  %buf37.i = getelementptr inbounds %struct.symbuf* %call31.i, i64 0, i32 1, !dbg !223
  %20 = load i8*** %buf37.i, align 8, !dbg !223, !tbaa !163
  store i8* %call36.i, i8** %20, align 8, !dbg !223, !tbaa !163
  %21 = load i8*** %buf37.i, align 8, !dbg !224, !tbaa !163
  br label %enter_buf.exit, !dbg !224

enter_buf.exit:                                   ; preds = %if.else.i, %if.then6.i, %do.end.i
  %retval.0.i = phi i8** [ %arrayidx13.i, %if.then6.i ], [ %21, %do.end.i ], [ %arrayidx.i5, %if.else.i ]
  ret i8** %retval.0.i, !dbg !190
}

; Function Attrs: nounwind optsize uwtable
define void @open_symtab(%struct.t_symtab* nocapture %symtab) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !50), !dbg !225
  %nr = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !226
  store i32 0, i32* %nr, align 4, !dbg !226, !tbaa !167
  %symbuf = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !227
  store %struct.symbuf* null, %struct.symbuf** %symbuf, align 8, !dbg !227, !tbaa !163
  ret void, !dbg !228
}

; Function Attrs: nounwind optsize readnone uwtable
define void @close_symtab(%struct.t_symtab* nocapture %symtab) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !53), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nounwind optsize uwtable
define void @done_symtab(%struct.t_symtab* nocapture %symtab) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !56), !dbg !231
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !232
  %0 = load %struct.symbuf** %symbuf1, align 8, !dbg !232, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %0}, i64 0, metadata !58), !dbg !232
  %cmp21 = icmp eq %struct.symbuf* %0, null, !dbg !233
  br i1 %cmp21, label %while.end, label %for.cond.preheader.lr.ph, !dbg !233

for.cond.preheader.lr.ph:                         ; preds = %entry
  %nr = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !234
  br label %for.cond.preheader, !dbg !233

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %symbuf.022 = phi %struct.symbuf* [ %0, %for.cond.preheader.lr.ph ], [ %11, %for.end ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.022, i64 0, i32 0, !dbg !234
  %1 = load i32* %bufsize, align 4, !dbg !234, !tbaa !167
  %cmp219 = icmp sgt i32 %1, 0, !dbg !234
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.022, i64 0, i32 1, !dbg !237
  br i1 %cmp219, label %land.rhs, label %for.end, !dbg !234

land.rhs:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %i.020 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %2 = load i32* %nr, align 4, !dbg !234, !tbaa !167
  %3 = trunc i64 %indvars.iv to i32, !dbg !234
  %cmp3 = icmp slt i32 %3, %2, !dbg !234
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %4 = load i8*** %buf, align 8, !dbg !237, !tbaa !163
  %arrayidx = getelementptr inbounds i8** %4, i64 %indvars.iv, !dbg !237
  %5 = load i8** %arrayidx, align 8, !dbg !237, !tbaa !163
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 175, i8* %5) #6, !dbg !237
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !234
  %inc = add nsw i32 %i.020, 1, !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !57), !dbg !234
  %6 = load i32* %bufsize, align 4, !dbg !234, !tbaa !167
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !234
  %cmp2 = icmp slt i32 %7, %6, !dbg !234
  br i1 %cmp2, label %land.rhs, label %for.end, !dbg !234

for.end:                                          ; preds = %for.cond.preheader, %for.body, %land.rhs
  %i.0.lcssa = phi i32 [ %i.020, %land.rhs ], [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %8 = load i32* %nr, align 4, !dbg !238, !tbaa !167
  %sub = sub nsw i32 %8, %i.0.lcssa, !dbg !238
  store i32 %sub, i32* %nr, align 4, !dbg !238, !tbaa !167
  %9 = load i8*** %buf, align 8, !dbg !239, !tbaa !163
  %10 = bitcast i8** %9 to i8*, !dbg !239
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 177, i8* %10) #6, !dbg !239
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %symbuf.022}, i64 0, metadata !59), !dbg !240
  %next = getelementptr inbounds %struct.symbuf* %symbuf.022, i64 0, i32 2, !dbg !241
  %11 = load %struct.symbuf** %next, align 8, !dbg !241, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %11}, i64 0, metadata !58), !dbg !241
  %12 = bitcast %struct.symbuf* %symbuf.022 to i8*, !dbg !242
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 180, i8* %12) #6, !dbg !242
  %cmp = icmp eq %struct.symbuf* %11, null, !dbg !233
  br i1 %cmp, label %while.end, label %for.cond.preheader, !dbg !233

while.end:                                        ; preds = %for.end, %entry
  store %struct.symbuf* null, %struct.symbuf** %symbuf1, align 8, !dbg !243, !tbaa !163
  ret void, !dbg !244
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @free_symtab(%struct.t_symtab* nocapture %symtab) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !62), !dbg !245
  %symbuf1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !246
  %0 = load %struct.symbuf** %symbuf1, align 8, !dbg !246, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %0}, i64 0, metadata !63), !dbg !246
  %cmp16 = icmp eq %struct.symbuf* %0, null, !dbg !247
  br i1 %cmp16, label %while.end, label %while.body.lr.ph, !dbg !247

while.body.lr.ph:                                 ; preds = %entry
  %nr = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !248
  br label %while.body, !dbg !247

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %symbuf.017 = phi %struct.symbuf* [ %0, %while.body.lr.ph ], [ %3, %while.body ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.017, i64 0, i32 0, !dbg !248
  %1 = load i32* %bufsize, align 4, !dbg !248, !tbaa !167
  %2 = load i32* %nr, align 4, !dbg !248, !tbaa !167
  %cmp2 = icmp slt i32 %1, %2, !dbg !248
  %. = select i1 %cmp2, i32 %1, i32 %2, !dbg !248
  %sub = sub nsw i32 %2, %., !dbg !248
  store i32 %sub, i32* %nr, align 4, !dbg !248, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %symbuf.017}, i64 0, metadata !64), !dbg !250
  %next = getelementptr inbounds %struct.symbuf* %symbuf.017, i64 0, i32 2, !dbg !251
  %3 = load %struct.symbuf** %next, align 8, !dbg !251, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %3}, i64 0, metadata !63), !dbg !251
  %4 = bitcast %struct.symbuf* %symbuf.017 to i8*, !dbg !252
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 196, i8* %4) #6, !dbg !252
  %cmp = icmp eq %struct.symbuf* %3, null, !dbg !247
  br i1 %cmp, label %while.end, label %while.body, !dbg !247

while.end:                                        ; preds = %while.body, %entry
  store %struct.symbuf* null, %struct.symbuf** %symbuf1, align 8, !dbg !253, !tbaa !163
  ret void, !dbg !254
}

; Function Attrs: nounwind optsize uwtable
define void @pr_symtab(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_symtab* %symtab) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !124), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i32 %indent}, i64 0, metadata !125), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !126), !dbg !255
  tail call void @llvm.dbg.value(metadata !{%struct.t_symtab* %symtab}, i64 0, metadata !127), !dbg !255
  %0 = bitcast %struct.t_symtab* %symtab to i8*, !dbg !256
  %call = tail call i32 @available(%struct._IO_FILE* %fp, i8* %0, i8* %title) #6, !dbg !256
  %tobool = icmp eq i32 %call, 0, !dbg !256
  br i1 %tobool, label %if.end12, label %if.then, !dbg !256

if.then:                                          ; preds = %entry
  %nr1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0, !dbg !257
  %1 = load i32* %nr1, align 4, !dbg !257, !tbaa !167
  %call2 = tail call i32 @pr_title_n(%struct._IO_FILE* %fp, i32 %indent, i8* %title, i32 %1) #6, !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !125), !dbg !257
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !128), !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !130), !dbg !260
  %symbuf4 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1, !dbg !261
  %symbuf.037 = load %struct.symbuf** %symbuf4, align 8, !dbg !261
  %cmp38 = icmp eq %struct.symbuf* %symbuf.037, null, !dbg !262
  br i1 %cmp38, label %if.end12, label %for.cond.preheader.lr.ph, !dbg !262

for.cond.preheader.lr.ph:                         ; preds = %if.then
  %2 = load i32* %nr1, align 4, !dbg !260, !tbaa !167
  %tobool7 = icmp eq %struct._IO_FILE* %fp, null, !dbg !263
  br label %for.cond.preheader, !dbg !262

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %symbuf.042 = phi %struct.symbuf* [ %symbuf.037, %for.cond.preheader.lr.ph ], [ %symbuf.0, %for.end ]
  %nr.040 = phi i32 [ %2, %for.cond.preheader.lr.ph ], [ %sub, %for.end ]
  %i.039 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %i.1.lcssa, %for.end ]
  %bufsize = getelementptr inbounds %struct.symbuf* %symbuf.042, i64 0, i32 0, !dbg !267
  %3 = load i32* %bufsize, align 4, !dbg !267, !tbaa !167
  %cmp531 = icmp sgt i32 %3, 0, !dbg !267
  %cmp632 = icmp sgt i32 %nr.040, 0, !dbg !267
  %or.cond33 = and i1 %cmp531, %cmp632, !dbg !267
  br i1 %or.cond33, label %for.body.lr.ph, label %for.end, !dbg !267

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf = getelementptr inbounds %struct.symbuf* %symbuf.042, i64 0, i32 1, !dbg !268
  br label %for.body, !dbg !267

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc11, %for.inc ]
  %i.134 = phi i32 [ %i.039, %for.body.lr.ph ], [ %i.2, %for.inc ]
  br i1 %tobool7, label %for.inc, label %if.then8, !dbg !263

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call2) #6, !dbg !270
  %inc = add nsw i32 %i.134, 1, !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !128), !dbg !268
  %5 = load i8*** %buf, align 8, !dbg !268, !tbaa !163
  %arrayidx = getelementptr inbounds i8** %5, i64 %indvars.iv, !dbg !268
  %6 = load i8** %arrayidx, align 8, !dbg !268, !tbaa !163
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %i.134, i8* %6) #6, !dbg !268
  %.pre = load i32* %bufsize, align 4, !dbg !267, !tbaa !167
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body, %if.then8
  %7 = phi i32 [ %.pre, %if.then8 ], [ %4, %for.body ], !dbg !267
  %i.2 = phi i32 [ %inc, %if.then8 ], [ %i.134, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !267
  %inc11 = add nsw i32 %j.035, 1, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %inc11}, i64 0, metadata !129), !dbg !267
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !267
  %cmp5 = icmp slt i32 %8, %7, !dbg !267
  %cmp6 = icmp slt i32 %8, %nr.040, !dbg !267
  %or.cond = and i1 %cmp5, %cmp6, !dbg !267
  br i1 %or.cond, label %for.body, label %for.end, !dbg !267

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc11, %for.inc ]
  %i.1.lcssa = phi i32 [ %i.039, %for.cond.preheader ], [ %i.2, %for.inc ]
  %sub = sub nsw i32 %nr.040, %j.0.lcssa, !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !130), !dbg !272
  %next = getelementptr inbounds %struct.symbuf* %symbuf.042, i64 0, i32 2, !dbg !273
  %symbuf.0 = load %struct.symbuf** %next, align 8, !dbg !261
  %cmp = icmp eq %struct.symbuf* %symbuf.0, null, !dbg !262
  br i1 %cmp, label %if.end12, label %for.cond.preheader, !dbg !262

if.end12:                                         ; preds = %if.then, %for.end, %entry
  ret void, !dbg !274
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
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 108, i32 1, i32 24) #6, !dbg !275
  %0 = bitcast i8* %call to %struct.symbuf*, !dbg !275
  tail call void @llvm.dbg.value(metadata !{%struct.symbuf* %0}, i64 0, metadata !150), !dbg !275
  %bufsize = bitcast i8* %call to i32*, !dbg !276
  store i32 5, i32* %bufsize, align 4, !dbg !276, !tbaa !167
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 110, i32 5, i32 8) #6, !dbg !277
  %1 = bitcast i8* %call2 to i8**, !dbg !277
  %buf = getelementptr inbounds i8* %call, i64 8, !dbg !277
  %2 = bitcast i8* %buf to i8***, !dbg !277
  store i8** %1, i8*** %2, align 8, !dbg !277, !tbaa !163
  %next = getelementptr inbounds i8* %call, i64 16, !dbg !278
  %3 = bitcast i8* %next to %struct.symbuf**, !dbg !278
  store %struct.symbuf* null, %struct.symbuf** %3, align 8, !dbg !278, !tbaa !163
  ret %struct.symbuf* %0, !dbg !279
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !151, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !33, metadata !40, metadata !46, metadata !51, metadata !54, metadata !60, metadata !65, metadata !132, metadata !139, metadata !146}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"lookup_symtab", metadata !"lookup_symtab", metadata !"", i32 66, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_symtab*, i8**)* @lookup_symtab, null, null, metadata !27, i32 67} ; [ DW_TAG_subprogram ] [line 66] [def] [scope 67] [lookup_symtab]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !22}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symtab]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!17 = metadata !{i32 786454, metadata !12, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!18 = metadata !{i32 786451, metadata !12, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !21, metadata !25}
!20 = metadata !{i32 786445, metadata !12, metadata !18, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !18, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{i32 786445, metadata !12, metadata !18, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!28 = metadata !{i32 786689, metadata !4, metadata !"symtab", metadata !5, i32 16777282, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 66]
!29 = metadata !{i32 786689, metadata !4, metadata !"name", metadata !5, i32 33554498, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 66]
!30 = metadata !{i32 786688, metadata !4, metadata !"base", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 68]
!31 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 68]
!32 = metadata !{i32 786688, metadata !4, metadata !"symbuf", metadata !5, i32 69, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 69]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_symtab_handle", metadata !"get_symtab_handle", metadata !"", i32 87, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8** (%struct.t_symtab*, i32)* @get_symtab_handle, null, null, metadata !36, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [get_symtab_handle]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !22, metadata !9, metadata !8}
!36 = metadata !{metadata !37, metadata !38, metadata !39}
!37 = metadata !{i32 786689, metadata !33, metadata !"symtab", metadata !5, i32 16777303, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 87]
!38 = metadata !{i32 786689, metadata !33, metadata !"name", metadata !5, i32 33554519, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 87]
!39 = metadata !{i32 786688, metadata !33, metadata !"symbuf", metadata !5, i32 89, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 89]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_symtab", metadata !"put_symtab", metadata !"", i32 151, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8** (%struct.t_symtab*, i8*)* @put_symtab, null, null, metadata !43, i32 152} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 152] [put_symtab]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !22, metadata !9, metadata !23}
!43 = metadata !{metadata !44, metadata !45}
!44 = metadata !{i32 786689, metadata !40, metadata !"symtab", metadata !5, i32 16777367, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 151]
!45 = metadata !{i32 786689, metadata !40, metadata !"name", metadata !5, i32 33554583, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 151]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"open_symtab", metadata !"open_symtab", metadata !"", i32 156, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_symtab*)* @open_symtab, null, null, metadata !49, i32 157} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 157] [open_symtab]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !9}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786689, metadata !46, metadata !"symtab", metadata !5, i32 16777372, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 156]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"close_symtab", metadata !"close_symtab", metadata !"", i32 162, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_symtab*)* @close_symtab, null, null, metadata !52, i32 163} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 163] [close_symtab]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786689, metadata !51, metadata !"symtab", metadata !5, i32 16777378, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 162]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"done_symtab", metadata !"done_symtab", metadata !"", i32 166, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_symtab*)* @done_symtab, null, null, metadata !55, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [done_symtab]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59}
!56 = metadata !{i32 786689, metadata !54, metadata !"symtab", metadata !5, i32 16777382, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 166]
!57 = metadata !{i32 786688, metadata !54, metadata !"i", metadata !5, i32 168, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 168]
!58 = metadata !{i32 786688, metadata !54, metadata !"symbuf", metadata !5, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 169]
!59 = metadata !{i32 786688, metadata !54, metadata !"freeptr", metadata !5, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [freeptr] [line 169]
!60 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"free_symtab", metadata !"free_symtab", metadata !"", i32 186, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_symtab*)* @free_symtab, null, null, metadata !61, i32 187} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 187] [free_symtab]
!61 = metadata !{metadata !62, metadata !63, metadata !64}
!62 = metadata !{i32 786689, metadata !60, metadata !"symtab", metadata !5, i32 16777402, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 186]
!63 = metadata !{i32 786688, metadata !60, metadata !"symbuf", metadata !5, i32 188, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 188]
!64 = metadata !{i32 786688, metadata !60, metadata !"freeptr", metadata !5, i32 188, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [freeptr] [line 188]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pr_symtab", metadata !"pr_symtab", metadata !"", i32 202, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i8*, %struct.t_symtab*)* @pr_symtab, null, null, metadata !123, i32 203} ; [ DW_TAG_subprogram ] [line 202] [def] [scope 203] [pr_symtab]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null, metadata !68, metadata !8, metadata !23, metadata !9}
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!69 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!70 = metadata !{i32 786451, metadata !71, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!71 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !93, metadata !94, metadata !95, metadata !96, metadata !99, metadata !101, metadata !103, metadata !107, metadata !109, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !118, metadata !119}
!73 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!74 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!75 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!76 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!77 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!78 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!79 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!80 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!81 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!82 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!83 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!84 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!85 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !86} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!87 = metadata !{i32 786451, metadata !71, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !88, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!88 = metadata !{metadata !89, metadata !90, metadata !92}
!89 = metadata !{i32 786445, metadata !71, metadata !87, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786445, metadata !71, metadata !87, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!92 = metadata !{i32 786445, metadata !71, metadata !87, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!93 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !91} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!94 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!95 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!96 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !97} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!97 = metadata !{i32 786454, metadata !71, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!98 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!99 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !100} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!100 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!101 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !102} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!102 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!103 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !104} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !24, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!107 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !108} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !110} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!110 = metadata !{i32 786454, metadata !71, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!111 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!112 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!113 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!114 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!115 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !116} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!116 = metadata !{i32 786454, metadata !71, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!117 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!118 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!119 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !120} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!120 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !24, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!124 = metadata !{i32 786689, metadata !65, metadata !"fp", metadata !5, i32 16777418, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 202]
!125 = metadata !{i32 786689, metadata !65, metadata !"indent", metadata !5, i32 33554634, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indent] [line 202]
!126 = metadata !{i32 786689, metadata !65, metadata !"title", metadata !5, i32 50331850, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 202]
!127 = metadata !{i32 786689, metadata !65, metadata !"symtab", metadata !5, i32 67109066, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 202]
!128 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 204]
!129 = metadata !{i32 786688, metadata !65, metadata !"j", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 204]
!130 = metadata !{i32 786688, metadata !65, metadata !"nr", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 204]
!131 = metadata !{i32 786688, metadata !65, metadata !"symbuf", metadata !5, i32 205, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 205]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"trim_string", metadata !"trim_string", metadata !"", i32 48, metadata !133, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !135, i32 54} ; [ DW_TAG_subprogram ] [line 48] [local] [def] [scope 54] [trim_string]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{metadata !23, metadata !23}
!135 = metadata !{metadata !136, metadata !137, metadata !138}
!136 = metadata !{i32 786689, metadata !132, metadata !"s", metadata !5, i32 16777264, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 48]
!137 = metadata !{i32 786688, metadata !132, metadata !"len", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 56]
!138 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 56]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"enter_buf", metadata !"enter_buf", metadata !"", i32 116, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !140, i32 117} ; [ DW_TAG_subprogram ] [line 116] [local] [def] [scope 117] [enter_buf]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145}
!141 = metadata !{i32 786689, metadata !139, metadata !"symtab", metadata !5, i32 16777332, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 116]
!142 = metadata !{i32 786689, metadata !139, metadata !"name", metadata !5, i32 33554548, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 116]
!143 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !5, i32 118, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 118]
!144 = metadata !{i32 786688, metadata !139, metadata !"symbuf", metadata !5, i32 119, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 119]
!145 = metadata !{i32 786688, metadata !139, metadata !"bCont", metadata !5, i32 120, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bCont] [line 120]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"new_symbuf", metadata !"new_symbuf", metadata !"", i32 104, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.symbuf* ()* @new_symbuf, null, null, metadata !149, i32 105} ; [ DW_TAG_subprogram ] [line 104] [local] [def] [scope 105] [new_symbuf]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{metadata !16}
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786688, metadata !146, metadata !"symbuf", metadata !5, i32 106, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbuf] [line 106]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786484, i32 0, metadata !132, metadata !"buf", metadata !"buf", metadata !"", metadata !5, i32 55, metadata !153, i32 1, i32 1, [1024 x i8]* @trim_string.buf, null} ; [ DW_TAG_variable ] [buf] [line 55] [local] [def]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !24, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!156 = metadata !{i32 66, i32 0, metadata !4, null}
!157 = metadata !{i32 71, i32 0, metadata !4, null}
!158 = metadata !{i32 72, i32 0, metadata !4, null}
!159 = metadata !{i32 73, i32 0, metadata !4, null}
!160 = metadata !{i32 74, i32 0, metadata !4, null}
!161 = metadata !{i32 75, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!163 = metadata !{metadata !"any pointer", metadata !164}
!164 = metadata !{metadata !"omnipotent char", metadata !165}
!165 = metadata !{metadata !"Simple C/C++ TBAA"}
!166 = metadata !{i32 76, i32 0, metadata !162, null}
!167 = metadata !{metadata !"int", metadata !164}
!168 = metadata !{i32 77, i32 0, metadata !162, null}
!169 = metadata !{i32 79, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !162, i32 78, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!171 = metadata !{i32 80, i32 0, metadata !170, null}
!172 = metadata !{i32 83, i32 0, metadata !4, null}
!173 = metadata !{i32 84, i32 0, metadata !4, null}
!174 = metadata !{i32 85, i32 0, metadata !4, null}
!175 = metadata !{i32 87, i32 0, metadata !33, null}
!176 = metadata !{i32 91, i32 0, metadata !33, null}
!177 = metadata !{i32 92, i32 0, metadata !33, null}
!178 = metadata !{i32 93, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !33, i32 92, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!180 = metadata !{i32 94, i32 0, metadata !179, null}
!181 = metadata !{i32 96, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !179, i32 95, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!183 = metadata !{i32 97, i32 0, metadata !182, null}
!184 = metadata !{i32 100, i32 0, metadata !33, null}
!185 = metadata !{i32 101, i32 0, metadata !33, null}
!186 = metadata !{i32 102, i32 0, metadata !33, null}
!187 = metadata !{i32 151, i32 0, metadata !40, null}
!188 = metadata !{i32 58, i32 0, metadata !189, metadata !190} ; [ DW_TAG_imported_module ]
!189 = metadata !{i32 786443, metadata !1, metadata !132, i32 58, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!190 = metadata !{i32 153, i32 0, metadata !40, null}
!191 = metadata !{i32 786689, metadata !132, metadata !"s", metadata !5, i32 16777264, metadata !23, i32 0, metadata !190} ; [ DW_TAG_arg_variable ] [s] [line 48]
!192 = metadata !{i32 59, i32 0, metadata !193, metadata !190}
!193 = metadata !{i32 786443, metadata !1, metadata !132, i32 59, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!194 = metadata !{i32 786688, metadata !132, metadata !"len", metadata !5, i32 56, metadata !8, i32 0, metadata !190} ; [ DW_TAG_auto_variable ] [len] [line 56]
!195 = metadata !{i32 61, i32 0, metadata !196, metadata !190}
!196 = metadata !{i32 786443, metadata !1, metadata !132, i32 61, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!197 = metadata !{i32 1023}
!198 = metadata !{i32 60, i32 0, metadata !132, metadata !190}
!199 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !5, i32 56, metadata !8, i32 0, metadata !190} ; [ DW_TAG_auto_variable ] [i] [line 56]
!200 = metadata !{i32 62, i32 0, metadata !132, metadata !190}
!201 = metadata !{null}
!202 = metadata !{i32 786689, metadata !139, metadata !"name", metadata !5, i32 33554548, metadata !23, i32 0, metadata !190} ; [ DW_TAG_arg_variable ] [name] [line 116]
!203 = metadata !{i32 116, i32 0, metadata !139, metadata !190}
!204 = metadata !{i32 122, i32 0, metadata !139, metadata !190}
!205 = metadata !{i32 123, i32 0, metadata !139, metadata !190}
!206 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !5, i32 118, metadata !8, i32 0, metadata !190} ; [ DW_TAG_auto_variable ] [i] [line 118]
!207 = metadata !{i32 127, i32 0, metadata !208, metadata !190}
!208 = metadata !{i32 786443, metadata !1, metadata !209, i32 127, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!209 = metadata !{i32 786443, metadata !1, metadata !139, i32 126, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!210 = metadata !{i32 128, i32 0, metadata !211, metadata !190}
!211 = metadata !{i32 786443, metadata !1, metadata !208, i32 127, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!212 = metadata !{i32 129, i32 0, metadata !213, metadata !190}
!213 = metadata !{i32 786443, metadata !1, metadata !211, i32 128, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!214 = metadata !{i32 130, i32 0, metadata !213, metadata !190}
!215 = metadata !{i32 131, i32 0, metadata !213, metadata !190}
!216 = metadata !{i32 132, i32 0, metadata !211, metadata !190}
!217 = metadata !{i32 135, i32 0, metadata !209, metadata !190}
!218 = metadata !{i32 141, i32 0, metadata !209, metadata !190}
!219 = metadata !{i32 143, i32 0, metadata !139, metadata !190}
!220 = metadata !{i32 786688, metadata !139, metadata !"symbuf", metadata !5, i32 119, metadata !16, i32 0, metadata !190} ; [ DW_TAG_auto_variable ] [symbuf] [line 119]
!221 = metadata !{i32 144, i32 0, metadata !139, metadata !190}
!222 = metadata !{i32 146, i32 0, metadata !139, metadata !190}
!223 = metadata !{i32 147, i32 0, metadata !139, metadata !190}
!224 = metadata !{i32 148, i32 0, metadata !139, metadata !190}
!225 = metadata !{i32 156, i32 0, metadata !46, null}
!226 = metadata !{i32 158, i32 0, metadata !46, null}
!227 = metadata !{i32 159, i32 0, metadata !46, null}
!228 = metadata !{i32 160, i32 0, metadata !46, null}
!229 = metadata !{i32 162, i32 0, metadata !51, null}
!230 = metadata !{i32 164, i32 0, metadata !51, null}
!231 = metadata !{i32 166, i32 0, metadata !54, null}
!232 = metadata !{i32 172, i32 0, metadata !54, null}
!233 = metadata !{i32 173, i32 0, metadata !54, null}
!234 = metadata !{i32 174, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !236, i32 174, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!236 = metadata !{i32 786443, metadata !1, metadata !54, i32 173, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!237 = metadata !{i32 175, i32 0, metadata !235, null}
!238 = metadata !{i32 176, i32 0, metadata !236, null}
!239 = metadata !{i32 177, i32 0, metadata !236, null}
!240 = metadata !{i32 178, i32 0, metadata !236, null}
!241 = metadata !{i32 179, i32 0, metadata !236, null}
!242 = metadata !{i32 180, i32 0, metadata !236, null}
!243 = metadata !{i32 182, i32 0, metadata !54, null}
!244 = metadata !{i32 184, i32 0, metadata !54, null}
!245 = metadata !{i32 186, i32 0, metadata !60, null}
!246 = metadata !{i32 191, i32 0, metadata !60, null}
!247 = metadata !{i32 192, i32 0, metadata !60, null}
!248 = metadata !{i32 193, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !60, i32 192, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!250 = metadata !{i32 194, i32 0, metadata !249, null}
!251 = metadata !{i32 195, i32 0, metadata !249, null}
!252 = metadata !{i32 196, i32 0, metadata !249, null}
!253 = metadata !{i32 198, i32 0, metadata !60, null}
!254 = metadata !{i32 200, i32 0, metadata !60, null}
!255 = metadata !{i32 202, i32 0, metadata !65, null}
!256 = metadata !{i32 207, i32 0, metadata !65, null}
!257 = metadata !{i32 209, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !65, i32 208, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!259 = metadata !{i32 210, i32 0, metadata !258, null}
!260 = metadata !{i32 211, i32 0, metadata !258, null}
!261 = metadata !{i32 212, i32 0, metadata !258, null}
!262 = metadata !{i32 213, i32 0, metadata !258, null}
!263 = metadata !{i32 217, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 216, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!265 = metadata !{i32 786443, metadata !1, metadata !266, i32 215, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!266 = metadata !{i32 786443, metadata !1, metadata !258, i32 214, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!267 = metadata !{i32 215, i32 0, metadata !265, null}
!268 = metadata !{i32 220, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !264, i32 218, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/symtab.c]
!270 = metadata !{i32 219, i32 0, metadata !269, null}
!271 = metadata !{i32 221, i32 0, metadata !269, null}
!272 = metadata !{i32 223, i32 0, metadata !266, null}
!273 = metadata !{i32 224, i32 0, metadata !266, null}
!274 = metadata !{i32 228, i32 0, metadata !65, null}
!275 = metadata !{i32 108, i32 0, metadata !146, null}
!276 = metadata !{i32 109, i32 0, metadata !146, null}
!277 = metadata !{i32 110, i32 0, metadata !146, null}
!278 = metadata !{i32 111, i32 0, metadata !146, null}
!279 = metadata !{i32 113, i32 0, metadata !146, null}
