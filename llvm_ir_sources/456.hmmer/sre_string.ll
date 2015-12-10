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
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !27), !dbg !211
  %cmp = icmp eq i8* %s, null, !dbg !212
  br i1 %cmp, label %return, label %if.end, !dbg !212

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %s) #8, !dbg !213
  %add = add i64 %call, 1, !dbg !213
  %call1 = tail call noalias i8* @malloc(i64 %add) #9, !dbg !213
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !28), !dbg !213
  %cmp2 = icmp eq i8* %call1, null, !dbg !213
  br i1 %cmp2, label %return, label %if.end4, !dbg !213

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @strcpy(i8* %call1, i8* %s) #9, !dbg !214
  br label %return, !dbg !215

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %call1, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0, !dbg !216
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
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !33), !dbg !217
  %call = tail call i64 @strlen(i8* %s) #8, !dbg !218
  %sub = add i64 %call, 4294967295, !dbg !218
  %conv = trunc i64 %sub to i32, !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !34), !dbg !218
  %cmp13 = icmp sgt i32 %conv, -1, !dbg !219
  br i1 %cmp13, label %land.rhs.lr.ph, label %while.end, !dbg !219

land.rhs.lr.ph:                                   ; preds = %entry
  %call4 = tail call i16** @__ctype_b_loc() #10, !dbg !219
  %0 = load i16** %call4, align 8, !dbg !219, !tbaa !220
  %sext = shl i64 %sub, 32
  %1 = ashr exact i64 %sext, 32
  br label %land.rhs, !dbg !219

while.cond:                                       ; preds = %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !219
  %2 = trunc i64 %indvars.iv to i32, !dbg !219
  %cmp = icmp sgt i32 %2, 0, !dbg !219
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !219

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv = phi i64 [ %1, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.cond ]
  %i.014 = phi i32 [ %conv, %land.rhs.lr.ph ], [ %dec, %while.cond ]
  %arrayidx = getelementptr inbounds i8* %s, i64 %indvars.iv, !dbg !219
  %3 = load i8* %arrayidx, align 1, !dbg !219, !tbaa !221
  %idxprom3 = sext i8 %3 to i64, !dbg !219
  %arrayidx5 = getelementptr inbounds i16* %0, i64 %idxprom3, !dbg !219
  %4 = load i16* %arrayidx5, align 2, !dbg !219, !tbaa !223
  %and = and i16 %4, 8192, !dbg !219
  %tobool = icmp eq i16 %and, 0, !dbg !219
  %dec = add nsw i32 %i.014, -1, !dbg !219
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !34), !dbg !219
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %entry
  %i.0.lcssa = phi i32 [ %conv, %entry ], [ %i.014, %land.rhs ], [ %dec, %while.cond ]
  %add = add nsw i32 %i.0.lcssa, 1, !dbg !224
  %idxprom7 = sext i32 %add to i64, !dbg !224
  %arrayidx8 = getelementptr inbounds i8* %s, i64 %idxprom7, !dbg !224
  store i8 0, i8* %arrayidx8, align 1, !dbg !224, !tbaa !221
  ret void, !dbg !225
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind optsize uwtable
define i32 @Strinsert(i8* nocapture %s1, i8 signext %c, i32 %pos) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !40), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !41), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !42), !dbg !228
  %idx.ext = sext i32 %pos to i64, !dbg !229
  %add.ptr = getelementptr inbounds i8* %s1, i64 %idx.ext, !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !44), !dbg !229
  %tobool4 = icmp eq i8 %c, 0, !dbg !229
  br i1 %tobool4, label %for.end, label %for.body, !dbg !229

for.body:                                         ; preds = %entry, %for.body
  %s.06 = phi i8* [ %incdec.ptr, %for.body ], [ %add.ptr, %entry ]
  %c.addr.05 = phi i8 [ %0, %for.body ], [ %c, %entry ]
  %0 = load i8* %s.06, align 1, !dbg !231, !tbaa !221
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !43), !dbg !231
  store i8 %c.addr.05, i8* %s.06, align 1, !dbg !233, !tbaa !221
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !41), !dbg !234
  %incdec.ptr = getelementptr inbounds i8* %s.06, i64 1, !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !44), !dbg !229
  %tobool = icmp eq i8 %0, 0, !dbg !229
  br i1 %tobool, label %for.end, label %for.body, !dbg !229

for.end:                                          ; preds = %for.body, %entry
  %s.0.lcssa = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %for.body ]
  store i8 0, i8* %s.0.lcssa, align 1, !dbg !235, !tbaa !221
  ret i32 1, !dbg !236
}

; Function Attrs: nounwind optsize uwtable
define i32 @Strdelete(i8* nocapture %s1, i32 %pos) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !49), !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !50), !dbg !238
  %idx.ext = sext i32 %pos to i64, !dbg !239
  %add.ptr = getelementptr inbounds i8* %s1, i64 %idx.ext, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !51), !dbg !239
  %0 = load i8* %add.ptr, align 1, !dbg !239, !tbaa !221
  %tobool5 = icmp eq i8 %0, 0, !dbg !239
  br i1 %tobool5, label %for.end, label %for.body, !dbg !239

for.body:                                         ; preds = %entry, %for.body
  %s.06 = phi i8* [ %add.ptr1, %for.body ], [ %add.ptr, %entry ]
  %add.ptr1 = getelementptr inbounds i8* %s.06, i64 1, !dbg !241
  %1 = load i8* %add.ptr1, align 1, !dbg !241, !tbaa !221
  store i8 %1, i8* %s.06, align 1, !dbg !241, !tbaa !221
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr1}, i64 0, metadata !51), !dbg !239
  %tobool = icmp eq i8 %1, 0, !dbg !239
  br i1 %tobool, label %for.end, label %for.body, !dbg !239

for.end:                                          ; preds = %for.body, %entry
  ret i32 1, !dbg !242
}

; Function Attrs: nounwind optsize uwtable
define void @s2lower(i8* nocapture %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !54), !dbg !243
  %0 = load i8* %s, align 1, !dbg !244, !tbaa !221
  %cmp7 = icmp eq i8 %0, 0, !dbg !244
  br i1 %cmp7, label %for.end, label %for.body, !dbg !244

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i8 [ %2, %for.body ], [ %0, %entry ]
  %s.addr.08 = phi i8* [ %incdec.ptr, %for.body ], [ %s, %entry ]
  %conv = sext i8 %1 to i32, !dbg !244
  %call = tail call i32 @sre_tolower(i32 %conv) #9, !dbg !246
  %conv3 = trunc i32 %call to i8, !dbg !246
  store i8 %conv3, i8* %s.addr.08, align 1, !dbg !246, !tbaa !221
  %incdec.ptr = getelementptr inbounds i8* %s.addr.08, i64 1, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !54), !dbg !244
  %2 = load i8* %incdec.ptr, align 1, !dbg !244, !tbaa !221
  %cmp = icmp eq i8 %2, 0, !dbg !244
  br i1 %cmp, label %for.end, label %for.body, !dbg !244

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !247
}

; Function Attrs: optsize
declare i32 @sre_tolower(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @s2upper(i8* nocapture %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !57), !dbg !248
  %0 = load i8* %s, align 1, !dbg !249, !tbaa !221
  %cmp7 = icmp eq i8 %0, 0, !dbg !249
  br i1 %cmp7, label %for.end, label %for.body, !dbg !249

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i8 [ %2, %for.body ], [ %0, %entry ]
  %s.addr.08 = phi i8* [ %incdec.ptr, %for.body ], [ %s, %entry ]
  %conv = sext i8 %1 to i32, !dbg !249
  %call = tail call i32 @sre_toupper(i32 %conv) #9, !dbg !251
  %conv3 = trunc i32 %call to i8, !dbg !251
  store i8 %conv3, i8* %s.addr.08, align 1, !dbg !251, !tbaa !221
  %incdec.ptr = getelementptr inbounds i8* %s.addr.08, i64 1, !dbg !249
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !57), !dbg !249
  %2 = load i8* %incdec.ptr, align 1, !dbg !249, !tbaa !221
  %cmp = icmp eq i8 %2, 0, !dbg !249
  br i1 %cmp, label %for.end, label %for.body, !dbg !249

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !252
}

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @sre_malloc(i8* %file, i32 %line, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !65), !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !66), !dbg !253
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !67), !dbg !253
  %call = tail call noalias i8* @malloc(i64 %size) #9, !dbg !254
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !68), !dbg !254
  %cmp = icmp eq i8* %call, null, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i64 %size, i8* %file, i32 %line) #9, !dbg !255
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call, !dbg !256
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @sre_realloc(i8* %file, i32 %line, i8* nocapture %p, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !73), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !74), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !75), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !76), !dbg !257
  %call = tail call i8* @realloc(i8* %p, i64 %size) #9, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !77), !dbg !258
  %cmp = icmp eq i8* %call, null, !dbg !258
  br i1 %cmp, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i64 %size, i8* %file, i32 %line) #9, !dbg !259
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call, !dbg !260
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Free2DArray(i8** %p, i32 %dim1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !83), !dbg !261
  tail call void @llvm.dbg.value(metadata !{i32 %dim1}, i64 0, metadata !84), !dbg !261
  %cmp = icmp eq i8** %p, null, !dbg !262
  br i1 %cmp, label %if.end6, label %for.cond.preheader, !dbg !262

for.cond.preheader:                               ; preds = %entry
  %cmp113 = icmp sgt i32 %dim1, 0, !dbg !263
  br i1 %cmp113, label %for.body, label %for.end, !dbg !263

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8** %p, i64 %indvars.iv, !dbg !266
  %0 = load i8** %arrayidx, align 8, !dbg !266, !tbaa !220
  %cmp2 = icmp eq i8* %0, null, !dbg !266
  br i1 %cmp2, label %for.inc, label %if.then3, !dbg !266

if.then3:                                         ; preds = %for.body
  tail call void @free(i8* %0) #9, !dbg !266
  br label %for.inc, !dbg !266

for.inc:                                          ; preds = %for.body, %if.then3
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !263
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !263
  %exitcond = icmp eq i32 %lftr.wideiv, %dim1, !dbg !263
  br i1 %exitcond, label %for.end, label %for.body, !dbg !263

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %1 = bitcast i8** %p to i8*, !dbg !267
  tail call void @free(i8* %1) #9, !dbg !267
  br label %if.end6, !dbg !268

if.end6:                                          ; preds = %entry, %for.end
  ret void, !dbg !269
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Free3DArray(i8*** %p, i32 %dim1, i32 %dim2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8*** %p}, i64 0, metadata !91), !dbg !270
  tail call void @llvm.dbg.value(metadata !{i32 %dim1}, i64 0, metadata !92), !dbg !270
  tail call void @llvm.dbg.value(metadata !{i32 %dim2}, i64 0, metadata !93), !dbg !270
  %cmp = icmp eq i8*** %p, null, !dbg !271
  br i1 %cmp, label %if.end23, label %for.cond.preheader, !dbg !271

for.cond.preheader:                               ; preds = %entry
  %cmp139 = icmp sgt i32 %dim1, 0, !dbg !272
  br i1 %cmp139, label %for.body.lr.ph, label %for.end22, !dbg !272

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp537 = icmp sgt i32 %dim2, 0, !dbg !275
  br label %for.body, !dbg !272

for.body:                                         ; preds = %for.inc20, %for.body.lr.ph
  %indvars.iv41 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next42, %for.inc20 ]
  %arrayidx = getelementptr inbounds i8*** %p, i64 %indvars.iv41, !dbg !278
  %0 = load i8*** %arrayidx, align 8, !dbg !278, !tbaa !220
  %cmp2 = icmp eq i8** %0, null, !dbg !278
  br i1 %cmp2, label %for.inc20, label %for.cond4.preheader, !dbg !278

for.cond4.preheader:                              ; preds = %for.body
  br i1 %cmp537, label %for.body6, label %for.end, !dbg !275

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %1 = phi i8** [ %0, %for.cond4.preheader ], [ %.pre, %for.inc ], !dbg !279
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx10 = getelementptr inbounds i8** %1, i64 %indvars.iv, !dbg !279
  %2 = load i8** %arrayidx10, align 8, !dbg !279, !tbaa !220
  %cmp11 = icmp eq i8* %2, null, !dbg !279
  br i1 %cmp11, label %for.inc, label %if.then12, !dbg !279

if.then12:                                        ; preds = %for.body6
  tail call void @free(i8* %2) #9, !dbg !279
  br label %for.inc, !dbg !279

for.inc:                                          ; preds = %for.body6, %if.then12
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !275
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !275
  %exitcond = icmp eq i32 %lftr.wideiv, %dim2, !dbg !275
  %.pre = load i8*** %arrayidx, align 8, !dbg !280, !tbaa !220
  br i1 %exitcond, label %for.end, label %for.body6, !dbg !275

for.end:                                          ; preds = %for.inc, %for.cond4.preheader
  %3 = phi i8** [ %0, %for.cond4.preheader ], [ %.pre, %for.inc ]
  %4 = bitcast i8** %3 to i8*, !dbg !280
  tail call void @free(i8* %4) #9, !dbg !280
  br label %for.inc20, !dbg !281

for.inc20:                                        ; preds = %for.body, %for.end
  %indvars.iv.next42 = add i64 %indvars.iv41, 1, !dbg !272
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32, !dbg !272
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %dim1, !dbg !272
  br i1 %exitcond44, label %for.end22, label %for.body, !dbg !272

for.end22:                                        ; preds = %for.inc20, %for.cond.preheader
  %5 = bitcast i8*** %p to i8*, !dbg !282
  tail call void @free(i8* %5) #9, !dbg !282
  br label %if.end23, !dbg !283

if.end23:                                         ; preds = %entry, %for.end22
  ret void, !dbg !284
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @RandomSequence(i8* nocapture %alphabet, float* %p, i32 %n, i32 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %alphabet}, i64 0, metadata !102), !dbg !285
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !103), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !104), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !105), !dbg !285
  %add = add nsw i32 %len, 1, !dbg !286
  %conv = sext i32 %add to i64, !dbg !286
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 199, i64 %conv) #11, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !106), !dbg !286
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !107), !dbg !287
  %cmp13 = icmp sgt i32 %len, 0, !dbg !287
  br i1 %cmp13, label %for.body, label %for.end, !dbg !287

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %call2 = tail call i32 @FChoose(float* %p, i32 %n) #9, !dbg !289
  %idxprom = sext i32 %call2 to i64, !dbg !289
  %arrayidx = getelementptr inbounds i8* %alphabet, i64 %idxprom, !dbg !289
  %0 = load i8* %arrayidx, align 1, !dbg !289, !tbaa !221
  %arrayidx4 = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !289
  store i8 %0, i8* %arrayidx4, align 1, !dbg !289, !tbaa !221
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !107), !dbg !287
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !287
  %exitcond = icmp eq i32 %lftr.wideiv, %len, !dbg !287
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body, !dbg !287

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = sext i32 %len to i64, !dbg !287
  br label %for.end, !dbg !287

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %x.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx6 = getelementptr inbounds i8* %call, i64 %x.0.lcssa, !dbg !290
  store i8 0, i8* %arrayidx6, align 1, !dbg !290, !tbaa !221
  ret i8* %call, !dbg !291
}

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i8* @sre_fgets(i8** nocapture %buf, i32* nocapture %n, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !166), !dbg !292
  tail call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !167), !dbg !292
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !168), !dbg !292
  %0 = load i32* %n, align 4, !dbg !293, !tbaa !294
  %cmp = icmp eq i32 %0, 0, !dbg !293
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !293

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i8** %buf, align 8, !dbg !295, !tbaa !220
  br label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 253, i64 128) #11, !dbg !296
  store i8* %call, i8** %buf, align 8, !dbg !296, !tbaa !220
  store i32 128, i32* %n, align 4, !dbg !298, !tbaa !294
  br label %if.end, !dbg !299

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %1 = phi i8* [ %call, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %2 = phi i32 [ 128, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %call1 = tail call i8* @fgets(i8* %1, i32 %2, %struct._IO_FILE* %fp) #9, !dbg !295
  %cmp2 = icmp eq i8* %call1, null, !dbg !295
  br i1 %cmp2, label %return, label %if.end4, !dbg !295

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @feof(%struct._IO_FILE* %fp) #9, !dbg !300
  %tobool = icmp eq i32 %call5, 0, !dbg !300
  %3 = load i8** %buf, align 8, !dbg !300, !tbaa !220
  br i1 %tobool, label %if.end7, label %return, !dbg !300

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i64 @strlen(i8* %3) #8, !dbg !301
  %sub = shl i64 %call8, 32, !dbg !302
  %sext = add i64 %sub, -4294967296, !dbg !302
  %idxprom = ashr exact i64 %sext, 32, !dbg !302
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom, !dbg !302
  %4 = load i8* %arrayidx, align 1, !dbg !302, !tbaa !221
  %cmp10 = icmp eq i8 %4, 10, !dbg !302
  br i1 %cmp10, label %return, label %if.end13, !dbg !302

if.end13:                                         ; preds = %if.end7
  %5 = load i32* %n, align 4, !dbg !303, !tbaa !294
  %sub14 = add nsw i32 %5, -1, !dbg !303
  tail call void @llvm.dbg.value(metadata !{i32 %sub14}, i64 0, metadata !171), !dbg !303
  %6 = sext i32 %sub14 to i64
  br label %while.body, !dbg !304

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end13
  %7 = phi i8* [ %.pre56, %if.end21.while.body_crit_edge ], [ %3, %if.end13 ]
  %8 = phi i32 [ %.pre55, %if.end21.while.body_crit_edge ], [ %5, %if.end13 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end21.while.body_crit_edge ], [ %6, %if.end13 ]
  %add = add nsw i32 %8, 128, !dbg !305
  store i32 %add, i32* %n, align 4, !dbg !305, !tbaa !294
  %conv15 = sext i32 %add to i64, !dbg !307
  %call16 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 283, i8* %7, i64 %conv15) #11, !dbg !307
  store i8* %call16, i8** %buf, align 8, !dbg !307, !tbaa !220
  %add.ptr = getelementptr inbounds i8* %call16, i64 %indvars.iv, !dbg !308
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !169), !dbg !308
  %call17 = tail call i8* @fgets(i8* %add.ptr, i32 129, %struct._IO_FILE* %fp) #9, !dbg !309
  %cmp18 = icmp eq i8* %call17, null, !dbg !309
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !309

if.then20:                                        ; preds = %while.body
  %9 = load i8** %buf, align 8, !dbg !309, !tbaa !220
  br label %return, !dbg !309

if.end21:                                         ; preds = %while.body
  %call22 = tail call i64 @strlen(i8* %add.ptr) #8, !dbg !310
  %sub24 = shl i64 %call22, 32, !dbg !311
  %sext53 = add i64 %sub24, -4294967296, !dbg !311
  %idxprom25 = ashr exact i64 %sext53, 32, !dbg !311
  %add.ptr.sum = add i64 %idxprom25, %indvars.iv, !dbg !311
  %arrayidx26 = getelementptr inbounds i8* %call16, i64 %add.ptr.sum, !dbg !311
  %10 = load i8* %arrayidx26, align 1, !dbg !311, !tbaa !221
  %cmp28 = icmp eq i8 %10, 10, !dbg !311
  br i1 %cmp28, label %if.then30, label %if.end21.while.body_crit_edge, !dbg !311

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  %indvars.iv.next = add i64 %indvars.iv, 128, !dbg !311
  %.pre55 = load i32* %n, align 4, !dbg !305, !tbaa !294
  %.pre56 = load i8** %buf, align 8, !dbg !307, !tbaa !220
  br label %while.body, !dbg !311

if.then30:                                        ; preds = %if.end21
  %11 = load i8** %buf, align 8, !dbg !311, !tbaa !220
  br label %return, !dbg !311

return:                                           ; preds = %if.end7, %if.end4, %if.end, %if.then30, %if.then20
  %retval.0 = phi i8* [ %9, %if.then20 ], [ %11, %if.then30 ], [ null, %if.end ], [ %3, %if.end4 ], [ %3, %if.end7 ]
  ret i8* %retval.0, !dbg !312
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @sre_strcat(i8** nocapture %dest, i32 %ldest, i8* %src, i32 %lsrc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %dest}, i64 0, metadata !176), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %ldest}, i64 0, metadata !177), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !178), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %lsrc}, i64 0, metadata !179), !dbg !313
  %cmp = icmp slt i32 %ldest, 0, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  %0 = load i8** %dest, align 8, !dbg !314, !tbaa !220
  %cmp1 = icmp eq i8* %0, null, !dbg !314
  br i1 %cmp1, label %if.end, label %cond.false, !dbg !314

cond.false:                                       ; preds = %if.then
  %call = tail call i64 @strlen(i8* %0) #8, !dbg !314
  %phitmp51 = trunc i64 %call to i32, !dbg !314
  br label %if.end, !dbg !314

if.end:                                           ; preds = %entry, %cond.false, %if.then
  %len1.0 = phi i32 [ %phitmp51, %cond.false ], [ 0, %if.then ], [ %ldest, %entry ]
  %cmp2 = icmp slt i32 %lsrc, 0, !dbg !315
  br i1 %cmp2, label %if.then4, label %if.end14, !dbg !315

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp eq i8* %src, null, !dbg !315
  br i1 %cmp5, label %return, label %cond.false8, !dbg !315

cond.false8:                                      ; preds = %if.then4
  %call9 = tail call i64 @strlen(i8* %src) #8, !dbg !315
  %phitmp = trunc i64 %call9 to i32, !dbg !315
  br label %if.end14, !dbg !315

if.end14:                                         ; preds = %if.end, %cond.false8
  %len2.0 = phi i32 [ %phitmp, %cond.false8 ], [ %lsrc, %if.end ]
  %cmp15 = icmp eq i32 %len2.0, 0, !dbg !316
  br i1 %cmp15, label %return, label %if.end18, !dbg !316

if.end18:                                         ; preds = %if.end14
  %1 = load i8** %dest, align 8, !dbg !317, !tbaa !220
  %cmp19 = icmp eq i8* %1, null, !dbg !317
  br i1 %cmp19, label %if.then21, label %if.else24, !dbg !317

if.then21:                                        ; preds = %if.end18
  %add = add nsw i32 %len2.0, 1, !dbg !317
  %conv22 = sext i32 %add to i64, !dbg !317
  %call23 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 344, i64 %conv22) #11, !dbg !317
  br label %if.end30, !dbg !317

if.else24:                                        ; preds = %if.end18
  %add25 = add i32 %len1.0, 1, !dbg !318
  %add26 = add i32 %add25, %len2.0, !dbg !318
  %conv27 = sext i32 %add26 to i64, !dbg !318
  %call29 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 345, i8* %1, i64 %conv27) #11, !dbg !318
  %add31.pre = add nsw i32 %len2.0, 1, !dbg !319
  %conv32.pre = sext i32 %add31.pre to i64, !dbg !319
  br label %if.end30

if.end30:                                         ; preds = %if.else24, %if.then21
  %conv32.pre-phi = phi i64 [ %conv32.pre, %if.else24 ], [ %conv22, %if.then21 ], !dbg !319
  %storemerge = phi i8* [ %call29, %if.else24 ], [ %call23, %if.then21 ]
  store i8* %storemerge, i8** %dest, align 8, !dbg !317, !tbaa !220
  %idx.ext = sext i32 %len1.0 to i64, !dbg !319
  %add.ptr = getelementptr inbounds i8* %storemerge, i64 %idx.ext, !dbg !319
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %src, i64 %conv32.pre-phi, i32 1, i1 false), !dbg !319
  %add33 = add nsw i32 %len2.0, %len1.0, !dbg !320
  br label %return, !dbg !320

return:                                           ; preds = %if.then4, %if.end14, %if.end30
  %retval.0 = phi i32 [ %add33, %if.end30 ], [ %len1.0, %if.end14 ], [ %len1.0, %if.then4 ]
  ret i32 %retval.0, !dbg !321
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize uwtable
define i8* @sre_strtok(i8** nocapture %s, i8* nocapture %delim, i32* %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %s}, i64 0, metadata !186), !dbg !322
  tail call void @llvm.dbg.value(metadata !{i8* %delim}, i64 0, metadata !187), !dbg !322
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !188), !dbg !322
  %0 = load i8** %s, align 8, !dbg !323, !tbaa !220
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !189), !dbg !323
  %call = tail call i64 @strspn(i8* %0, i8* %delim) #8, !dbg !324
  %add.ptr = getelementptr inbounds i8* %0, i64 %call, !dbg !324
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !189), !dbg !324
  %1 = load i8* %add.ptr, align 1, !dbg !325, !tbaa !221
  %tobool = icmp eq i8 %1, 0, !dbg !325
  br i1 %tobool, label %return, label %if.end, !dbg !325

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strcspn(i8* %add.ptr, i8* %delim) #8, !dbg !326
  %conv = trunc i64 %call1 to i32, !dbg !326
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !191), !dbg !326
  %sext = shl i64 %call1, 32, !dbg !327
  %idx.ext = ashr exact i64 %sext, 32, !dbg !327
  %add.ptr.sum = add i64 %idx.ext, %call, !dbg !327
  %add.ptr2 = getelementptr inbounds i8* %0, i64 %add.ptr.sum, !dbg !327
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2}, i64 0, metadata !190), !dbg !327
  %2 = load i8* %add.ptr2, align 1, !dbg !328, !tbaa !221
  %cmp = icmp eq i8 %2, 0, !dbg !328
  br i1 %cmp, label %if.end7, label %if.else, !dbg !328

if.else:                                          ; preds = %if.end
  store i8 0, i8* %add.ptr2, align 1, !dbg !329, !tbaa !221
  %add.ptr2.sum = add i64 %add.ptr.sum, 1, !dbg !331
  %add.ptr6 = getelementptr inbounds i8* %0, i64 %add.ptr2.sum, !dbg !331
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  %storemerge = phi i8* [ %add.ptr6, %if.else ], [ %add.ptr2, %if.end ]
  store i8* %storemerge, i8** %s, align 8, !dbg !332, !tbaa !220
  %cmp8 = icmp eq i32* %len, null, !dbg !334
  br i1 %cmp8, label %return, label %if.then10, !dbg !334

if.then10:                                        ; preds = %if.end7
  store i32 %conv, i32* %len, align 4, !dbg !334, !tbaa !294
  br label %return, !dbg !334

return:                                           ; preds = %if.then10, %if.end7, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %add.ptr, %if.end7 ], [ %add.ptr, %if.then10 ]
  ret i8* %retval.0, !dbg !335
}

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @sre_strdup(i8* %s, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !196), !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !197), !dbg !336
  %cmp = icmp eq i8* %s, null, !dbg !337
  br i1 %cmp, label %return, label %if.end, !dbg !337

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %n, 0, !dbg !338
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !338

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* %s) #8, !dbg !338
  %conv = trunc i64 %call to i32, !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !197), !dbg !338
  br label %if.end3, !dbg !338

if.end3:                                          ; preds = %if.then2, %if.end
  %n.addr.0 = phi i32 [ %conv, %if.then2 ], [ %n, %if.end ]
  %add = add nsw i32 %n.addr.0, 1, !dbg !339
  %conv4 = sext i32 %add to i64, !dbg !339
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 442, i64 %conv4) #11, !dbg !339
  tail call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !198), !dbg !339
  %call6 = tail call i8* @strcpy(i8* %call5, i8* %s) #9, !dbg !340
  br label %return, !dbg !341

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi i8* [ %call5, %if.end3 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !342
}

; Function Attrs: nounwind optsize uwtable
define i8* @sre_strncpy(i8* %s1, i8* nocapture %s2, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !203), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !204), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !205), !dbg !343
  %conv = sext i32 %n to i64, !dbg !344
  %call = tail call i8* @strncpy(i8* %s1, i8* %s2, i64 %conv) #9, !dbg !344
  %arrayidx = getelementptr inbounds i8* %s1, i64 %conv, !dbg !345
  store i8 0, i8* %arrayidx, align 1, !dbg !345, !tbaa !221
  ret i8* %s1, !dbg !346
}

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IsBlankline(i8* nocapture %s) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !210), !dbg !347
  %0 = load i8* %s, align 1, !dbg !348, !tbaa !221
  %cmp6 = icmp eq i8 %0, 0, !dbg !348
  br i1 %cmp6, label %return, label %for.body.lr.ph, !dbg !348

for.body.lr.ph:                                   ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #10, !dbg !350
  %1 = load i16** %call, align 8, !dbg !350, !tbaa !220
  br label %for.body, !dbg !348

for.cond:                                         ; preds = %for.body
  %2 = load i8* %incdec.ptr, align 1, !dbg !348, !tbaa !221
  %cmp = icmp eq i8 %2, 0, !dbg !348
  br i1 %cmp, label %return, label %for.body, !dbg !348

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %3 = phi i8 [ %0, %for.body.lr.ph ], [ %2, %for.cond ]
  %s.addr.07 = phi i8* [ %s, %for.body.lr.ph ], [ %incdec.ptr, %for.cond ]
  %idxprom = sext i8 %3 to i64, !dbg !350
  %arrayidx = getelementptr inbounds i16* %1, i64 %idxprom, !dbg !350
  %4 = load i16* %arrayidx, align 2, !dbg !350, !tbaa !223
  %and = and i16 %4, 8192, !dbg !350
  %tobool = icmp eq i16 %and, 0, !dbg !350
  %incdec.ptr = getelementptr inbounds i8* %s.addr.07, i64 1, !dbg !348
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !210), !dbg !348
  br i1 %tobool, label %return, label %for.cond, !dbg !350

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0, !dbg !351
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !29, metadata !36, metadata !45, metadata !52, metadata !55, metadata !58, metadata !69, metadata !78, metadata !86, metadata !96, metadata !108, metadata !172, metadata !182, metadata !192, metadata !199, metadata !206}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Strdup", metadata !"Strdup", metadata !"", i32 36, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @Strdup, null, null, metadata !26, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [Strdup]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{metadata !27, metadata !28}
!27 = metadata !{i32 786689, metadata !20, metadata !"s", metadata !21, i32 16777252, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 36]
!28 = metadata !{i32 786688, metadata !20, metadata !"new", metadata !21, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 38]
!29 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StringChop", metadata !"StringChop", metadata !"", i32 51, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @StringChop, null, null, metadata !32, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [StringChop]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !24}
!32 = metadata !{metadata !33, metadata !34}
!33 = metadata !{i32 786689, metadata !29, metadata !"s", metadata !21, i32 16777267, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 51]
!34 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !21, i32 53, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Strinsert", metadata !"Strinsert", metadata !"", i32 61, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8, i32)* @Strinsert, null, null, metadata !39, i32 64} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 64] [Strinsert]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !35, metadata !24, metadata !25, metadata !35}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!40 = metadata !{i32 786689, metadata !36, metadata !"s1", metadata !21, i32 16777277, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 61]
!41 = metadata !{i32 786689, metadata !36, metadata !"c", metadata !21, i32 33554494, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 62]
!42 = metadata !{i32 786689, metadata !36, metadata !"pos", metadata !21, i32 50331711, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 63]
!43 = metadata !{i32 786688, metadata !36, metadata !"oldc", metadata !21, i32 65, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldc] [line 65]
!44 = metadata !{i32 786688, metadata !36, metadata !"s", metadata !21, i32 66, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 66]
!45 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Strdelete", metadata !"Strdelete", metadata !"", i32 82, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @Strdelete, null, null, metadata !48, i32 84} ; [ DW_TAG_subprogram ] [line 82] [def] [scope 84] [Strdelete]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !35, metadata !24, metadata !35}
!48 = metadata !{metadata !49, metadata !50, metadata !51}
!49 = metadata !{i32 786689, metadata !45, metadata !"s1", metadata !21, i32 16777298, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 82]
!50 = metadata !{i32 786689, metadata !45, metadata !"pos", metadata !21, i32 33554515, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 83]
!51 = metadata !{i32 786688, metadata !45, metadata !"s", metadata !21, i32 85, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 85]
!52 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"s2lower", metadata !"s2lower", metadata !"", i32 94, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @s2lower, null, null, metadata !53, i32 95} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 95] [s2lower]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786689, metadata !52, metadata !"s", metadata !21, i32 16777310, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 94]
!55 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"s2upper", metadata !"s2upper", metadata !"", i32 101, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @s2upper, null, null, metadata !56, i32 102} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 102] [s2upper]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786689, metadata !55, metadata !"s", metadata !21, i32 16777317, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 101]
!58 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_malloc", metadata !"sre_malloc", metadata !"", i32 109, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @sre_malloc, null, null, metadata !64, i32 110} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 110] [sre_malloc]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !24, metadata !35, metadata !62}
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!63 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68}
!65 = metadata !{i32 786689, metadata !58, metadata !"file", metadata !21, i32 16777325, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 109]
!66 = metadata !{i32 786689, metadata !58, metadata !"line", metadata !21, i32 33554541, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 109]
!67 = metadata !{i32 786689, metadata !58, metadata !"size", metadata !21, i32 50331757, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 109]
!68 = metadata !{i32 786688, metadata !58, metadata !"ptr", metadata !21, i32 111, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 111]
!69 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_realloc", metadata !"sre_realloc", metadata !"", i32 120, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i8*, i64)* @sre_realloc, null, null, metadata !72, i32 121} ; [ DW_TAG_subprogram ] [line 120] [def] [scope 121] [sre_realloc]
!70 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !61, metadata !24, metadata !35, metadata !61, metadata !62}
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!73 = metadata !{i32 786689, metadata !69, metadata !"file", metadata !21, i32 16777336, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 120]
!74 = metadata !{i32 786689, metadata !69, metadata !"line", metadata !21, i32 33554552, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 120]
!75 = metadata !{i32 786689, metadata !69, metadata !"p", metadata !21, i32 50331768, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 120]
!76 = metadata !{i32 786689, metadata !69, metadata !"size", metadata !21, i32 67108984, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 120]
!77 = metadata !{i32 786688, metadata !69, metadata !"ptr", metadata !21, i32 122, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 122]
!78 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Free2DArray", metadata !"Free2DArray", metadata !"", i32 152, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32)* @Free2DArray, null, null, metadata !82, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [Free2DArray]
!79 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{null, metadata !81, metadata !35}
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !85}
!83 = metadata !{i32 786689, metadata !78, metadata !"p", metadata !21, i32 16777368, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 152]
!84 = metadata !{i32 786689, metadata !78, metadata !"dim1", metadata !21, i32 33554584, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim1] [line 152]
!85 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !21, i32 154, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 154]
!86 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Free3DArray", metadata !"Free3DArray", metadata !"", i32 163, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8***, i32, i32)* @Free3DArray, null, null, metadata !90, i32 164} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 164] [Free3DArray]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{null, metadata !89, metadata !35, metadata !35}
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!91 = metadata !{i32 786689, metadata !86, metadata !"p", metadata !21, i32 16777379, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 163]
!92 = metadata !{i32 786689, metadata !86, metadata !"dim1", metadata !21, i32 33554595, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim1] [line 163]
!93 = metadata !{i32 786689, metadata !86, metadata !"dim2", metadata !21, i32 50331811, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim2] [line 163]
!94 = metadata !{i32 786688, metadata !86, metadata !"i", metadata !21, i32 165, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 165]
!95 = metadata !{i32 786688, metadata !86, metadata !"j", metadata !21, i32 165, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 165]
!96 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"RandomSequence", metadata !"RandomSequence", metadata !"", i32 194, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, float*, i32, i32)* @RandomSequence, null, null, metadata !101, i32 195} ; [ DW_TAG_subprogram ] [line 194] [def] [scope 195] [RandomSequence]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !24, metadata !24, metadata !99, metadata !35, metadata !35}
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!100 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!102 = metadata !{i32 786689, metadata !96, metadata !"alphabet", metadata !21, i32 16777410, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alphabet] [line 194]
!103 = metadata !{i32 786689, metadata !96, metadata !"p", metadata !21, i32 33554626, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 194]
!104 = metadata !{i32 786689, metadata !96, metadata !"n", metadata !21, i32 50331842, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 194]
!105 = metadata !{i32 786689, metadata !96, metadata !"len", metadata !21, i32 67109058, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 194]
!106 = metadata !{i32 786688, metadata !96, metadata !"s", metadata !21, i32 196, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 196]
!107 = metadata !{i32 786688, metadata !96, metadata !"x", metadata !21, i32 197, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 197]
!108 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_fgets", metadata !"sre_fgets", metadata !"", i32 245, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**, i32*, %struct._IO_FILE*)* @sre_fgets, null, null, metadata !165, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [sre_fgets]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !24, metadata !111, metadata !112, metadata !113}
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!116 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !138, metadata !139, metadata !140, metadata !141, metadata !144, metadata !146, metadata !148, metadata !152, metadata !153, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!120 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!121 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!122 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!123 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!124 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!125 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!126 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!127 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!128 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!129 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!130 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !131} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!132 = metadata !{i32 786451, metadata !116, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !133, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!133 = metadata !{metadata !134, metadata !135, metadata !137}
!134 = metadata !{i32 786445, metadata !116, metadata !132, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!135 = metadata !{i32 786445, metadata !116, metadata !132, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!137 = metadata !{i32 786445, metadata !116, metadata !132, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!138 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !136} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!139 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !35} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!140 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!141 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !142} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!142 = metadata !{i32 786454, metadata !116, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!143 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!144 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !145} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!145 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!146 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !147} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!147 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!148 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !149} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !25, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!152 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !61} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!153 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !154} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!154 = metadata !{i32 786454, metadata !116, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!155 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !61} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!156 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !61} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!157 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !61} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!158 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !61} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!159 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !62} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!160 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !35} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!161 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !162} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !25, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!166 = metadata !{i32 786689, metadata !108, metadata !"buf", metadata !21, i32 16777461, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 245]
!167 = metadata !{i32 786689, metadata !108, metadata !"n", metadata !21, i32 33554677, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 245]
!168 = metadata !{i32 786689, metadata !108, metadata !"fp", metadata !21, i32 50331893, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 245]
!169 = metadata !{i32 786688, metadata !108, metadata !"s", metadata !21, i32 247, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 247]
!170 = metadata !{i32 786688, metadata !108, metadata !"len", metadata !21, i32 248, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 248]
!171 = metadata !{i32 786688, metadata !108, metadata !"pos", metadata !21, i32 249, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 249]
!172 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_strcat", metadata !"sre_strcat", metadata !"", i32 332, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i32, i8*, i32)* @sre_strcat, null, null, metadata !175, i32 333} ; [ DW_TAG_subprogram ] [line 332] [def] [scope 333] [sre_strcat]
!173 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{metadata !35, metadata !111, metadata !35, metadata !24, metadata !35}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!176 = metadata !{i32 786689, metadata !172, metadata !"dest", metadata !21, i32 16777548, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 332]
!177 = metadata !{i32 786689, metadata !172, metadata !"ldest", metadata !21, i32 33554764, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ldest] [line 332]
!178 = metadata !{i32 786689, metadata !172, metadata !"src", metadata !21, i32 50331980, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 332]
!179 = metadata !{i32 786689, metadata !172, metadata !"lsrc", metadata !21, i32 67109196, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lsrc] [line 332]
!180 = metadata !{i32 786688, metadata !172, metadata !"len1", metadata !21, i32 334, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len1] [line 334]
!181 = metadata !{i32 786688, metadata !172, metadata !"len2", metadata !21, i32 334, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len2] [line 334]
!182 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_strtok", metadata !"sre_strtok", metadata !"", i32 399, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**, i8*, i32*)* @sre_strtok, null, null, metadata !185, i32 400} ; [ DW_TAG_subprogram ] [line 399] [def] [scope 400] [sre_strtok]
!183 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{metadata !24, metadata !111, metadata !24, metadata !112}
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!186 = metadata !{i32 786689, metadata !182, metadata !"s", metadata !21, i32 16777615, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 399]
!187 = metadata !{i32 786689, metadata !182, metadata !"delim", metadata !21, i32 33554831, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delim] [line 399]
!188 = metadata !{i32 786689, metadata !182, metadata !"len", metadata !21, i32 50332047, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 399]
!189 = metadata !{i32 786688, metadata !182, metadata !"begin", metadata !21, i32 401, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [begin] [line 401]
!190 = metadata !{i32 786688, metadata !182, metadata !"end", metadata !21, i32 401, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 401]
!191 = metadata !{i32 786688, metadata !182, metadata !"n", metadata !21, i32 402, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 402]
!192 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_strdup", metadata !"sre_strdup", metadata !"", i32 436, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @sre_strdup, null, null, metadata !195, i32 437} ; [ DW_TAG_subprogram ] [line 436] [def] [scope 437] [sre_strdup]
!193 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{metadata !24, metadata !24, metadata !35}
!195 = metadata !{metadata !196, metadata !197, metadata !198}
!196 = metadata !{i32 786689, metadata !192, metadata !"s", metadata !21, i32 16777652, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 436]
!197 = metadata !{i32 786689, metadata !192, metadata !"n", metadata !21, i32 33554868, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 436]
!198 = metadata !{i32 786688, metadata !192, metadata !"new", metadata !21, i32 438, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 438]
!199 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_strncpy", metadata !"sre_strncpy", metadata !"", i32 462, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @sre_strncpy, null, null, metadata !202, i32 463} ; [ DW_TAG_subprogram ] [line 462] [def] [scope 463] [sre_strncpy]
!200 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{metadata !24, metadata !24, metadata !24, metadata !35}
!202 = metadata !{metadata !203, metadata !204, metadata !205}
!203 = metadata !{i32 786689, metadata !199, metadata !"s1", metadata !21, i32 16777678, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 462]
!204 = metadata !{i32 786689, metadata !199, metadata !"s2", metadata !21, i32 33554894, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 462]
!205 = metadata !{i32 786689, metadata !199, metadata !"n", metadata !21, i32 50332110, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 462]
!206 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IsBlankline", metadata !"IsBlankline", metadata !"", i32 477, metadata !207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @IsBlankline, null, null, metadata !209, i32 478} ; [ DW_TAG_subprogram ] [line 477] [def] [scope 478] [IsBlankline]
!207 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{metadata !35, metadata !24}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786689, metadata !206, metadata !"s", metadata !21, i32 16777693, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 477]
!211 = metadata !{i32 36, i32 0, metadata !20, null}
!212 = metadata !{i32 39, i32 0, metadata !20, null}
!213 = metadata !{i32 40, i32 0, metadata !20, null}
!214 = metadata !{i32 41, i32 0, metadata !20, null}
!215 = metadata !{i32 42, i32 0, metadata !20, null}
!216 = metadata !{i32 43, i32 0, metadata !20, null}
!217 = metadata !{i32 51, i32 0, metadata !29, null}
!218 = metadata !{i32 55, i32 0, metadata !29, null}
!219 = metadata !{i32 56, i32 0, metadata !29, null}
!220 = metadata !{metadata !"any pointer", metadata !221}
!221 = metadata !{metadata !"omnipotent char", metadata !222}
!222 = metadata !{metadata !"Simple C/C++ TBAA"}
!223 = metadata !{metadata !"short", metadata !221}
!224 = metadata !{i32 57, i32 0, metadata !29, null}
!225 = metadata !{i32 58, i32 0, metadata !29, null} ; [ DW_TAG_imported_module ]
!226 = metadata !{i32 61, i32 0, metadata !36, null}
!227 = metadata !{i32 62, i32 0, metadata !36, null}
!228 = metadata !{i32 63, i32 0, metadata !36, null}
!229 = metadata !{i32 68, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !36, i32 68, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!231 = metadata !{i32 71, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !230, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!233 = metadata !{i32 72, i32 0, metadata !232, null}
!234 = metadata !{i32 73, i32 0, metadata !232, null}
!235 = metadata !{i32 75, i32 0, metadata !36, null}
!236 = metadata !{i32 77, i32 0, metadata !36, null}
!237 = metadata !{i32 82, i32 0, metadata !45, null}
!238 = metadata !{i32 83, i32 0, metadata !45, null}
!239 = metadata !{i32 87, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !45, i32 87, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!241 = metadata !{i32 88, i32 0, metadata !240, null}
!242 = metadata !{i32 90, i32 0, metadata !45, null}
!243 = metadata !{i32 94, i32 0, metadata !52, null}
!244 = metadata !{i32 96, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !52, i32 96, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!246 = metadata !{i32 97, i32 0, metadata !245, null}
!247 = metadata !{i32 98, i32 0, metadata !52, null}
!248 = metadata !{i32 101, i32 0, metadata !55, null}
!249 = metadata !{i32 103, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !55, i32 103, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!251 = metadata !{i32 104, i32 0, metadata !250, null}
!252 = metadata !{i32 105, i32 0, metadata !55, null}
!253 = metadata !{i32 109, i32 0, metadata !58, null}
!254 = metadata !{i32 114, i32 0, metadata !58, null}
!255 = metadata !{i32 115, i32 0, metadata !58, null}
!256 = metadata !{i32 116, i32 0, metadata !58, null}
!257 = metadata !{i32 120, i32 0, metadata !69, null}
!258 = metadata !{i32 124, i32 0, metadata !69, null}
!259 = metadata !{i32 125, i32 0, metadata !69, null}
!260 = metadata !{i32 126, i32 0, metadata !69, null}
!261 = metadata !{i32 152, i32 0, metadata !78, null}
!262 = metadata !{i32 156, i32 0, metadata !78, null}
!263 = metadata !{i32 157, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 157, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!265 = metadata !{i32 786443, metadata !1, metadata !78, i32 156, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!266 = metadata !{i32 158, i32 0, metadata !264, null}
!267 = metadata !{i32 159, i32 0, metadata !265, null}
!268 = metadata !{i32 160, i32 0, metadata !265, null}
!269 = metadata !{i32 161, i32 0, metadata !78, null}
!270 = metadata !{i32 163, i32 0, metadata !86, null}
!271 = metadata !{i32 167, i32 0, metadata !86, null}
!272 = metadata !{i32 168, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !274, i32 168, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!274 = metadata !{i32 786443, metadata !1, metadata !86, i32 167, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!275 = metadata !{i32 170, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !277, i32 170, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!277 = metadata !{i32 786443, metadata !1, metadata !273, i32 169, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!278 = metadata !{i32 169, i32 0, metadata !273, null}
!279 = metadata !{i32 171, i32 0, metadata !276, null}
!280 = metadata !{i32 172, i32 0, metadata !277, null}
!281 = metadata !{i32 173, i32 0, metadata !277, null}
!282 = metadata !{i32 174, i32 0, metadata !274, null}
!283 = metadata !{i32 175, i32 0, metadata !274, null}
!284 = metadata !{i32 176, i32 0, metadata !86, null}
!285 = metadata !{i32 194, i32 0, metadata !96, null}
!286 = metadata !{i32 199, i32 0, metadata !96, null}
!287 = metadata !{i32 200, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !96, i32 200, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!289 = metadata !{i32 201, i32 0, metadata !288, null}
!290 = metadata !{i32 202, i32 0, metadata !96, null}
!291 = metadata !{i32 203, i32 0, metadata !96, null}
!292 = metadata !{i32 245, i32 0, metadata !108, null}
!293 = metadata !{i32 251, i32 0, metadata !108, null}
!294 = metadata !{metadata !"int", metadata !221}
!295 = metadata !{i32 260, i32 0, metadata !108, null}
!296 = metadata !{i32 253, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !108, i32 252, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!298 = metadata !{i32 254, i32 0, metadata !297, null}
!299 = metadata !{i32 255, i32 0, metadata !297, null}
!300 = metadata !{i32 267, i32 0, metadata !108, null}
!301 = metadata !{i32 272, i32 0, metadata !108, null}
!302 = metadata !{i32 273, i32 0, metadata !108, null}
!303 = metadata !{i32 280, i32 0, metadata !108, null}
!304 = metadata !{i32 281, i32 0, metadata !108, null}
!305 = metadata !{i32 282, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !108, i32 281, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!307 = metadata !{i32 283, i32 0, metadata !306, null}
!308 = metadata !{i32 284, i32 0, metadata !306, null}
!309 = metadata !{i32 285, i32 0, metadata !306, null}
!310 = metadata !{i32 286, i32 0, metadata !306, null}
!311 = metadata !{i32 287, i32 0, metadata !306, null}
!312 = metadata !{i32 291, i32 0, metadata !108, null}
!313 = metadata !{i32 332, i32 0, metadata !172, null}
!314 = metadata !{i32 336, i32 0, metadata !172, null}
!315 = metadata !{i32 339, i32 0, metadata !172, null}
!316 = metadata !{i32 342, i32 0, metadata !172, null}
!317 = metadata !{i32 344, i32 0, metadata !172, null}
!318 = metadata !{i32 345, i32 0, metadata !172, null}
!319 = metadata !{i32 347, i32 0, metadata !172, null}
!320 = metadata !{i32 348, i32 0, metadata !172, null}
!321 = metadata !{i32 349, i32 0, metadata !172, null}
!322 = metadata !{i32 399, i32 0, metadata !182, null}
!323 = metadata !{i32 404, i32 0, metadata !182, null}
!324 = metadata !{i32 405, i32 0, metadata !182, null}
!325 = metadata !{i32 406, i32 0, metadata !182, null}
!326 = metadata !{i32 408, i32 0, metadata !182, null}
!327 = metadata !{i32 409, i32 0, metadata !182, null}
!328 = metadata !{i32 410, i32 0, metadata !182, null}
!329 = metadata !{i32 412, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !182, i32 411, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!331 = metadata !{i32 413, i32 0, metadata !330, null}
!332 = metadata !{i32 410, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !182, i32 410, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!334 = metadata !{i32 416, i32 0, metadata !182, null}
!335 = metadata !{i32 418, i32 0, metadata !182, null}
!336 = metadata !{i32 436, i32 0, metadata !192, null}
!337 = metadata !{i32 440, i32 0, metadata !192, null}
!338 = metadata !{i32 441, i32 0, metadata !192, null}
!339 = metadata !{i32 442, i32 0, metadata !192, null}
!340 = metadata !{i32 443, i32 0, metadata !192, null}
!341 = metadata !{i32 444, i32 0, metadata !192, null}
!342 = metadata !{i32 445, i32 0, metadata !192, null}
!343 = metadata !{i32 462, i32 0, metadata !199, null}
!344 = metadata !{i32 464, i32 0, metadata !199, null}
!345 = metadata !{i32 465, i32 0, metadata !199, null}
!346 = metadata !{i32 466, i32 0, metadata !199, null}
!347 = metadata !{i32 477, i32 0, metadata !206, null}
!348 = metadata !{i32 479, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !206, i32 479, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_string.c]
!350 = metadata !{i32 480, i32 0, metadata !349, null}
!351 = metadata !{i32 481, i32 0, metadata !206, null}
