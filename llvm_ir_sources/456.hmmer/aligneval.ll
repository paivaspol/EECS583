; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @ComparePairAlignments(i8* nocapture %known1, i8* nocapture %known2, i8* nocapture %calc1, i8* nocapture %calc2) #0 {
entry:
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %known1}, i64 0, metadata !28), !dbg !174
  call void @llvm.dbg.value(metadata !{i8* %known2}, i64 0, metadata !29), !dbg !174
  call void @llvm.dbg.value(metadata !{i8* %calc1}, i64 0, metadata !30), !dbg !174
  call void @llvm.dbg.value(metadata !{i8* %calc2}, i64 0, metadata !31), !dbg !174
  call void @llvm.dbg.declare(metadata !{i32** %klist1}, metadata !32), !dbg !175
  call void @llvm.dbg.declare(metadata !{i32** %klist2}, metadata !35), !dbg !176
  call void @llvm.dbg.declare(metadata !{i32** %tlist1}, metadata !36), !dbg !177
  call void @llvm.dbg.declare(metadata !{i32** %tlist2}, metadata !37), !dbg !178
  call void @llvm.dbg.declare(metadata !{i32* %len1}, metadata !38), !dbg !179
  call void @llvm.dbg.declare(metadata !{i32* %len2}, metadata !39), !dbg !179
  call void @llvm.dbg.declare(metadata !{float* %score}, metadata !40), !dbg !180
  call fastcc void @make_alilist(i8* %calc1, i8* %calc2, i32** %tlist1, i32* %len1) #8, !dbg !181
  call fastcc void @make_alilist(i8* %calc2, i8* %calc1, i32** %tlist2, i32* %len2) #8, !dbg !182
  call fastcc void @make_alilist(i8* %known1, i8* %known2, i32** %klist1, i32* %len1) #8, !dbg !183
  call fastcc void @make_alilist(i8* %known2, i8* %known1, i32** %klist2, i32* %len2) #8, !dbg !184
  call void @llvm.dbg.value(metadata !{i32** %klist1}, i64 0, metadata !32), !dbg !185
  %0 = load i32** %klist1, align 8, !dbg !185, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32** %klist2}, i64 0, metadata !35), !dbg !185
  %1 = load i32** %klist2, align 8, !dbg !185, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32** %tlist1}, i64 0, metadata !36), !dbg !185
  %2 = load i32** %tlist1, align 8, !dbg !185, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32** %tlist2}, i64 0, metadata !37), !dbg !185
  %3 = load i32** %tlist2, align 8, !dbg !185, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32* %len1}, i64 0, metadata !38), !dbg !185
  %4 = load i32* %len1, align 4, !dbg !185, !tbaa !189
  call void @llvm.dbg.value(metadata !{i32* %len2}, i64 0, metadata !39), !dbg !185
  %5 = load i32* %len2, align 4, !dbg !185, !tbaa !189
  call fastcc void @compare_lists(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, float* %score) #8, !dbg !185
  call void @llvm.dbg.value(metadata !{i32** %klist1}, i64 0, metadata !32), !dbg !190
  %6 = bitcast i32* %0 to i8*, !dbg !190
  call void @free(i8* %6) #9, !dbg !190
  call void @llvm.dbg.value(metadata !{i32** %klist2}, i64 0, metadata !35), !dbg !191
  %7 = bitcast i32* %1 to i8*, !dbg !191
  call void @free(i8* %7) #9, !dbg !191
  call void @llvm.dbg.value(metadata !{i32** %tlist1}, i64 0, metadata !36), !dbg !192
  %8 = bitcast i32* %2 to i8*, !dbg !192
  call void @free(i8* %8) #9, !dbg !192
  call void @llvm.dbg.value(metadata !{i32** %tlist2}, i64 0, metadata !37), !dbg !193
  %9 = bitcast i32* %3 to i8*, !dbg !193
  call void @free(i8* %9) #9, !dbg !193
  call void @llvm.dbg.value(metadata !{float* %score}, i64 0, metadata !40), !dbg !194
  %10 = load float* %score, align 4, !dbg !194, !tbaa !195
  ret float %10, !dbg !196
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @make_alilist(i8* nocapture %s1, i8* nocapture %s2, i32** nocapture %ret_s1_list, i32* nocapture %ret_listlen) #0 {
entry:
  %call = tail call i64 @strlen(i8* %s1) #10, !dbg !197
  %mul = shl i64 %call, 2, !dbg !197
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 179, i64 %mul) #9, !dbg !197
  %0 = bitcast i8* %call1 to i32*, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !170), !dbg !197
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !173), !dbg !198
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !172), !dbg !198
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !171), !dbg !199
  br label %for.cond, !dbg !199

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %r1.0 = phi i32 [ %r1.1, %for.inc ], [ 0, %entry ]
  %r2.0 = phi i32 [ %r2.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !199
  %1 = load i8* %arrayidx, align 1, !dbg !199, !tbaa !187
  switch i8 %1, label %if.then [
    i8 0, label %for.end
    i8 32, label %if.end
    i8 46, label %if.end
    i8 95, label %if.end
    i8 45, label %if.end
    i8 126, label %if.end
  ], !dbg !199

if.then:                                          ; preds = %for.cond
  %arrayidx32 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !201
  %2 = load i8* %arrayidx32, align 1, !dbg !201, !tbaa !187
  switch i8 %2, label %lor.lhs.false54 [
    i8 32, label %cond.end
    i8 46, label %cond.end
    i8 95, label %cond.end
    i8 45, label %cond.end
  ], !dbg !201

lor.lhs.false54:                                  ; preds = %if.then
  %cmp58 = icmp eq i8 %2, 126, !dbg !201
  %. = select i1 %cmp58, i32 -1, i32 %r2.0, !dbg !201
  br label %cond.end, !dbg !201

cond.end:                                         ; preds = %if.then, %if.then, %if.then, %if.then, %lor.lhs.false54
  %cond = phi i32 [ -1, %if.then ], [ %., %lor.lhs.false54 ], [ -1, %if.then ], [ -1, %if.then ], [ -1, %if.then ], !dbg !201
  %idxprom60 = sext i32 %r1.0 to i64, !dbg !201
  %arrayidx61 = getelementptr inbounds i32* %0, i64 %idxprom60, !dbg !201
  store i32 %cond, i32* %arrayidx61, align 4, !dbg !201, !tbaa !189
  %inc = add nsw i32 %r1.0, 1, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !172), !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %cond.end
  %r1.1 = phi i32 [ %inc, %cond.end ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ]
  %arrayidx63 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !206
  %3 = load i8* %arrayidx63, align 1, !dbg !206, !tbaa !187
  switch i8 %3, label %if.then91 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !206

if.then91:                                        ; preds = %if.end
  %inc92 = add nsw i32 %r2.0, 1, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !173), !dbg !207
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.then91
  %r2.1 = phi i32 [ %r2.0, %if.end ], [ %inc92, %if.then91 ], [ %r2.0, %if.end ], [ %r2.0, %if.end ], [ %r2.0, %if.end ], [ %r2.0, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !199
  br label %for.cond, !dbg !199

for.end:                                          ; preds = %for.cond
  store i32 %r1.0, i32* %ret_listlen, align 4, !dbg !208, !tbaa !189
  store i32* %0, i32** %ret_s1_list, align 8, !dbg !209, !tbaa !186
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @compare_lists(i32* nocapture %k1, i32* nocapture %k2, i32* nocapture %t1, i32* nocapture %t2, i32 %len1, i32 %len2, float* nocapture %ret_sc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !210, i64 0, metadata !142), !dbg !211
  tail call void @llvm.dbg.value(metadata !210, i64 0, metadata !141), !dbg !211
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !143), !dbg !212
  %cmp6 = icmp sgt i32 %len1, 0, !dbg !212
  br i1 %cmp6, label %for.body, label %for.cond9.preheader, !dbg !212

for.cond9.preheader:                              ; preds = %for.inc, %entry
  %tot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %conv1, %for.inc ]
  %id.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %id.1, %for.inc ]
  %cmp101 = icmp sgt i32 %len2, 0, !dbg !214
  br i1 %cmp101, label %for.body12, label %for.end29, !dbg !214

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc ], [ 0, %entry ]
  %tot.08 = phi float [ %conv1, %for.inc ], [ 0.000000e+00, %entry ]
  %id.07 = phi float [ %id.1, %for.inc ], [ 0.000000e+00, %entry ]
  %conv1 = fadd float %tot.08, 1.000000e+00, !dbg !216
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !142), !dbg !216
  %arrayidx = getelementptr inbounds i32* %t1, i64 %indvars.iv12, !dbg !218
  %0 = load i32* %arrayidx, align 4, !dbg !218, !tbaa !189
  %arrayidx3 = getelementptr inbounds i32* %k1, i64 %indvars.iv12, !dbg !218
  %1 = load i32* %arrayidx3, align 4, !dbg !218, !tbaa !189
  %cmp4 = icmp eq i32 %0, %1, !dbg !218
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !218

if.then:                                          ; preds = %for.body
  %conv8 = fadd float %id.07, 1.000000e+00, !dbg !218
  tail call void @llvm.dbg.value(metadata !{float %conv8}, i64 0, metadata !141), !dbg !218
  br label %for.inc, !dbg !218

for.inc:                                          ; preds = %for.body, %if.then
  %id.1 = phi float [ %conv8, %if.then ], [ %id.07, %for.body ]
  %indvars.iv.next13 = add i64 %indvars.iv12, 1, !dbg !212
  %lftr.wideiv14 = trunc i64 %indvars.iv.next13 to i32, !dbg !212
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %len1, !dbg !212
  br i1 %exitcond15, label %for.cond9.preheader, label %for.body, !dbg !212

for.body12:                                       ; preds = %for.cond9.preheader, %for.inc27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 0, %for.cond9.preheader ]
  %tot.13 = phi float [ %conv15, %for.inc27 ], [ %tot.0.lcssa, %for.cond9.preheader ]
  %id.22 = phi float [ %id.3, %for.inc27 ], [ %id.0.lcssa, %for.cond9.preheader ]
  %conv15 = fadd float %tot.13, 1.000000e+00, !dbg !219
  tail call void @llvm.dbg.value(metadata !{float %conv15}, i64 0, metadata !142), !dbg !219
  %arrayidx17 = getelementptr inbounds i32* %k2, i64 %indvars.iv, !dbg !221
  %2 = load i32* %arrayidx17, align 4, !dbg !221, !tbaa !189
  %arrayidx19 = getelementptr inbounds i32* %t2, i64 %indvars.iv, !dbg !221
  %3 = load i32* %arrayidx19, align 4, !dbg !221, !tbaa !189
  %cmp20 = icmp eq i32 %2, %3, !dbg !221
  br i1 %cmp20, label %if.then22, label %for.inc27, !dbg !221

if.then22:                                        ; preds = %for.body12
  %conv25 = fadd float %id.22, 1.000000e+00, !dbg !221
  tail call void @llvm.dbg.value(metadata !{float %conv25}, i64 0, metadata !141), !dbg !221
  br label %for.inc27, !dbg !221

for.inc27:                                        ; preds = %for.body12, %if.then22
  %id.3 = phi float [ %conv25, %if.then22 ], [ %id.22, %for.body12 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !214
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !214
  %exitcond = icmp eq i32 %lftr.wideiv, %len2, !dbg !214
  br i1 %exitcond, label %for.end29, label %for.body12, !dbg !214

for.end29:                                        ; preds = %for.inc27, %for.cond9.preheader
  %tot.1.lcssa = phi float [ %tot.0.lcssa, %for.cond9.preheader ], [ %conv15, %for.inc27 ]
  %id.2.lcssa = phi float [ %id.0.lcssa, %for.cond9.preheader ], [ %id.3, %for.inc27 ]
  %div = fdiv float %id.2.lcssa, %tot.1.lcssa, !dbg !222
  store float %div, float* %ret_sc, align 4, !dbg !222, !tbaa !195
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define float @CompareRefPairAlignments(i32* nocapture %ref, i8* nocapture %known1, i8* nocapture %known2, i8* nocapture %calc1, i8* nocapture %calc2) #0 {
entry:
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i32* %ref}, i64 0, metadata !45), !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %known1}, i64 0, metadata !46), !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %known2}, i64 0, metadata !47), !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %calc1}, i64 0, metadata !48), !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %calc2}, i64 0, metadata !49), !dbg !223
  call void @llvm.dbg.declare(metadata !{i32** %klist1}, metadata !50), !dbg !224
  call void @llvm.dbg.declare(metadata !{i32** %klist2}, metadata !51), !dbg !225
  call void @llvm.dbg.declare(metadata !{i32** %tlist1}, metadata !52), !dbg !226
  call void @llvm.dbg.declare(metadata !{i32** %tlist2}, metadata !53), !dbg !227
  call void @llvm.dbg.declare(metadata !{i32* %len1}, metadata !54), !dbg !228
  call void @llvm.dbg.declare(metadata !{i32* %len2}, metadata !55), !dbg !228
  call void @llvm.dbg.declare(metadata !{float* %score}, metadata !56), !dbg !229
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known1, i8* %calc1, i8* %calc2, i32** %tlist1, i32* %len1) #8, !dbg !230
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known2, i8* %calc2, i8* %calc1, i32** %tlist2, i32* %len2) #8, !dbg !231
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known1, i8* %known1, i8* %known2, i32** %klist1, i32* %len1) #8, !dbg !232
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known2, i8* %known2, i8* %known1, i32** %klist2, i32* %len2) #8, !dbg !233
  call void @llvm.dbg.value(metadata !{i32** %klist1}, i64 0, metadata !50), !dbg !234
  %0 = load i32** %klist1, align 8, !dbg !234, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32** %klist2}, i64 0, metadata !51), !dbg !234
  %1 = load i32** %klist2, align 8, !dbg !234, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32** %tlist1}, i64 0, metadata !52), !dbg !234
  %2 = load i32** %tlist1, align 8, !dbg !234, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32** %tlist2}, i64 0, metadata !53), !dbg !234
  %3 = load i32** %tlist2, align 8, !dbg !234, !tbaa !186
  call void @llvm.dbg.value(metadata !{i32* %len1}, i64 0, metadata !54), !dbg !234
  %4 = load i32* %len1, align 4, !dbg !234, !tbaa !189
  call void @llvm.dbg.value(metadata !{i32* %len2}, i64 0, metadata !55), !dbg !234
  %5 = load i32* %len2, align 4, !dbg !234, !tbaa !189
  call fastcc void @compare_lists(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, float* %score) #8, !dbg !234
  call void @llvm.dbg.value(metadata !{i32** %klist1}, i64 0, metadata !50), !dbg !235
  %6 = bitcast i32* %0 to i8*, !dbg !235
  call void @free(i8* %6) #9, !dbg !235
  call void @llvm.dbg.value(metadata !{i32** %klist2}, i64 0, metadata !51), !dbg !236
  %7 = bitcast i32* %1 to i8*, !dbg !236
  call void @free(i8* %7) #9, !dbg !236
  call void @llvm.dbg.value(metadata !{i32** %tlist1}, i64 0, metadata !52), !dbg !237
  %8 = bitcast i32* %2 to i8*, !dbg !237
  call void @free(i8* %8) #9, !dbg !237
  call void @llvm.dbg.value(metadata !{i32** %tlist2}, i64 0, metadata !53), !dbg !238
  %9 = bitcast i32* %3 to i8*, !dbg !238
  call void @free(i8* %9) #9, !dbg !238
  call void @llvm.dbg.value(metadata !{float* %score}, i64 0, metadata !56), !dbg !239
  %10 = load float* %score, align 4, !dbg !239, !tbaa !195
  ret float %10, !dbg !240
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @make_ref_alilist(i32* nocapture %ref, i8* nocapture %k1, i8* nocapture %s1, i8* nocapture %s2, i32** nocapture %ret_s1_list, i32* nocapture %ret_listlen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !241, i64 0, metadata !151), !dbg !242
  %call = tail call i64 @strlen(i8* %s1) #10, !dbg !243
  %mul = shl i64 %call, 2, !dbg !243
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 236, i64 %mul) #9, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !156), !dbg !243
  %call2 = tail call i64 @strlen(i8* %s1) #10, !dbg !244
  %mul3 = shl i64 %call2, 2, !dbg !244
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 237, i64 %mul3) #9, !dbg !244
  %0 = bitcast i8* %call4 to i32*, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !160), !dbg !244
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !158), !dbg !245
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !157), !dbg !246
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc ], [ 0, %entry ]
  %r1.0 = phi i32 [ %r1.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %k1, i64 %indvars.iv1, !dbg !246
  %1 = load i8* %arrayidx, align 1, !dbg !246, !tbaa !187
  switch i8 %1, label %if.then [
    i8 0, label %for.cond39.preheader
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !246

for.cond39.preheader:                             ; preds = %for.cond
  %2 = bitcast i8* %call1 to i32*, !dbg !243
  br label %for.cond39, !dbg !248

if.then:                                          ; preds = %for.cond
  %arrayidx35 = getelementptr inbounds i32* %ref, i64 %indvars.iv1, !dbg !250
  %3 = load i32* %arrayidx35, align 4, !dbg !250, !tbaa !189
  %tobool = icmp ne i32 %3, 0, !dbg !250
  %cond = zext i1 %tobool to i32, !dbg !250
  %idxprom36 = sext i32 %r1.0 to i64, !dbg !250
  %arrayidx37 = getelementptr inbounds i32* %0, i64 %idxprom36, !dbg !250
  store i32 %cond, i32* %arrayidx37, align 4, !dbg !250, !tbaa !189
  %inc = add nsw i32 %r1.0, 1, !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !158), !dbg !253
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %if.then
  %r1.1 = phi i32 [ %inc, %if.then ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ]
  %indvars.iv.next2 = add i64 %indvars.iv1, 1, !dbg !246
  br label %for.cond, !dbg !246

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc177
  %indvars.iv = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next, %for.inc177 ]
  %r1.2 = phi i32 [ 0, %for.cond39.preheader ], [ %r1.3, %for.inc177 ]
  %r2.0 = phi i32 [ 0, %for.cond39.preheader ], [ %r2.1, %for.inc177 ]
  %lpos.0 = phi i32 [ 0, %for.cond39.preheader ], [ %lpos.1, %for.inc177 ]
  %arrayidx41 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !248
  %4 = load i8* %arrayidx41, align 1, !dbg !248, !tbaa !187
  switch i8 %4, label %land.lhs.true [
    i8 0, label %for.end179
    i8 32, label %if.end112
    i8 46, label %if.end112
    i8 95, label %if.end112
    i8 45, label %if.end112
    i8 126, label %if.end112
  ], !dbg !248

land.lhs.true:                                    ; preds = %for.cond39
  %idxprom75 = sext i32 %r1.2 to i64, !dbg !255
  %arrayidx76 = getelementptr inbounds i32* %0, i64 %idxprom75, !dbg !255
  %5 = load i32* %arrayidx76, align 4, !dbg !255, !tbaa !189
  %tobool77 = icmp eq i32 %5, 0, !dbg !255
  br i1 %tobool77, label %if.end112, label %if.then78, !dbg !255

if.then78:                                        ; preds = %land.lhs.true
  %arrayidx80 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !257
  %6 = load i8* %arrayidx80, align 1, !dbg !257, !tbaa !187
  switch i8 %6, label %lor.lhs.false102 [
    i8 32, label %cond.end
    i8 46, label %cond.end
    i8 95, label %cond.end
    i8 45, label %cond.end
  ], !dbg !257

lor.lhs.false102:                                 ; preds = %if.then78
  %cmp106 = icmp eq i8 %6, 126, !dbg !257
  %. = select i1 %cmp106, i32 -1, i32 %r2.0, !dbg !257
  br label %cond.end, !dbg !257

cond.end:                                         ; preds = %if.then78, %if.then78, %if.then78, %if.then78, %lor.lhs.false102
  %cond108 = phi i32 [ -1, %if.then78 ], [ %., %lor.lhs.false102 ], [ -1, %if.then78 ], [ -1, %if.then78 ], [ -1, %if.then78 ], !dbg !257
  %idxprom109 = sext i32 %lpos.0 to i64, !dbg !257
  %arrayidx110 = getelementptr inbounds i32* %2, i64 %idxprom109, !dbg !257
  store i32 %cond108, i32* %arrayidx110, align 4, !dbg !257, !tbaa !189
  %inc111 = add nsw i32 %lpos.0, 1, !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !161), !dbg !259
  %.pr.pre = load i8* %arrayidx41, align 1, !dbg !260, !tbaa !187
  br label %if.end112, !dbg !261

if.end112:                                        ; preds = %land.lhs.true, %cond.end, %for.cond39, %for.cond39, %for.cond39, %for.cond39, %for.cond39
  %7 = phi i8 [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %land.lhs.true ], [ %.pr.pre, %cond.end ], !dbg !260
  %lpos.1 = phi i32 [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %land.lhs.true ], [ %inc111, %cond.end ]
  switch i8 %7, label %if.then142 [
    i8 32, label %if.end144
    i8 46, label %if.end144
    i8 95, label %if.end144
    i8 45, label %if.end144
    i8 126, label %if.end144
  ], !dbg !260

if.then142:                                       ; preds = %if.end112
  %inc143 = add nsw i32 %r1.2, 1, !dbg !262
  tail call void @llvm.dbg.value(metadata !{i32 %inc143}, i64 0, metadata !158), !dbg !262
  br label %if.end144, !dbg !262

if.end144:                                        ; preds = %if.end112, %if.end112, %if.end112, %if.end112, %if.end112, %if.then142
  %r1.3 = phi i32 [ %r1.2, %if.end112 ], [ %inc143, %if.then142 ], [ %r1.2, %if.end112 ], [ %r1.2, %if.end112 ], [ %r1.2, %if.end112 ], [ %r1.2, %if.end112 ]
  %arrayidx146 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !263
  %8 = load i8* %arrayidx146, align 1, !dbg !263, !tbaa !187
  switch i8 %8, label %if.then174 [
    i8 32, label %for.inc177
    i8 46, label %for.inc177
    i8 95, label %for.inc177
    i8 45, label %for.inc177
    i8 126, label %for.inc177
  ], !dbg !263

if.then174:                                       ; preds = %if.end144
  %inc175 = add nsw i32 %r2.0, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %inc175}, i64 0, metadata !159), !dbg !264
  br label %for.inc177, !dbg !264

for.inc177:                                       ; preds = %if.end144, %if.end144, %if.end144, %if.end144, %if.end144, %if.then174
  %r2.1 = phi i32 [ %r2.0, %if.end144 ], [ %inc175, %if.then174 ], [ %r2.0, %if.end144 ], [ %r2.0, %if.end144 ], [ %r2.0, %if.end144 ], [ %r2.0, %if.end144 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !248
  br label %for.cond39, !dbg !248

for.end179:                                       ; preds = %for.cond39
  tail call void @free(i8* %call4) #9, !dbg !265
  store i32 %lpos.0, i32* %ret_listlen, align 4, !dbg !266, !tbaa !189
  store i32* %2, i32** %ret_s1_list, align 8, !dbg !267, !tbaa !186
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @CompareMultAlignments(i8** nocapture %kseqs, i8** nocapture %tseqs, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %kseqs}, i64 0, metadata !62), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i8** %tseqs}, i64 0, metadata !63), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !64), !dbg !268
  tail call void @llvm.dbg.value(metadata !210, i64 0, metadata !68), !dbg !269
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !65), !dbg !270
  %cmp41 = icmp sgt i32 %N, 0, !dbg !270
  br i1 %cmp41, label %for.body, label %for.end15, !dbg !270

for.cond.loopexit:                                ; preds = %if.end
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !270
  br i1 %cmp237, label %for.body, label %for.end15, !dbg !270

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 1, %entry ]
  %tot_score.043 = phi float [ %add12, %for.cond.loopexit ], [ 0.000000e+00, %entry ]
  %i.042 = phi i32 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, 1, !dbg !270
  %add = add nsw i32 %i.042, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !66), !dbg !272
  %0 = trunc i64 %indvars.iv.next49 to i32, !dbg !272
  %cmp237 = icmp slt i32 %0, %N, !dbg !272
  br i1 %cmp237, label %for.body3.lr.ph, label %for.end15, !dbg !272

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i8** %kseqs, i64 %indvars.iv48, !dbg !274
  %arrayidx7 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv48, !dbg !274
  br label %for.body3, !dbg !272

for.body3:                                        ; preds = %for.body3.lr.ph, %if.end
  %indvars.iv45 = phi i64 [ %indvars.iv, %for.body3.lr.ph ], [ %indvars.iv.next46, %if.end ], !dbg !270
  %tot_score.139 = phi float [ %tot_score.043, %for.body3.lr.ph ], [ %add12, %if.end ]
  %j.038 = phi i32 [ %add, %for.body3.lr.ph ], [ %inc, %if.end ]
  %1 = load i8** %arrayidx, align 8, !dbg !274, !tbaa !186
  %arrayidx5 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv45, !dbg !274
  %2 = load i8** %arrayidx5, align 8, !dbg !274, !tbaa !186
  %3 = load i8** %arrayidx7, align 8, !dbg !274, !tbaa !186
  %arrayidx9 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv45, !dbg !274
  %4 = load i8** %arrayidx9, align 8, !dbg !274, !tbaa !186
  %call = tail call float @ComparePairAlignments(i8* %1, i8* %2, i8* %3, i8* %4) #8, !dbg !274
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !67), !dbg !274
  %cmp10 = fcmp olt float %call, 0.000000e+00, !dbg !276
  br i1 %cmp10, label %return, label %if.end, !dbg !276

if.end:                                           ; preds = %for.body3
  %add12 = fadd float %tot_score.139, %call, !dbg !277
  tail call void @llvm.dbg.value(metadata !{float %add12}, i64 0, metadata !68), !dbg !277
  %inc = add nsw i32 %j.038, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !66), !dbg !272
  %cmp2 = icmp slt i32 %inc, %N, !dbg !272
  %indvars.iv.next46 = add i64 %indvars.iv45, 1, !dbg !272
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit, !dbg !272

for.end15:                                        ; preds = %for.cond.loopexit, %for.body, %entry
  %tot_score.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add12, %for.cond.loopexit ], [ %tot_score.043, %for.body ]
  %conv16 = fpext float %tot_score.0.lcssa to double, !dbg !278
  %mul = fmul double %conv16, 2.000000e+00, !dbg !278
  %conv17 = sitofp i32 %N to float, !dbg !278
  %conv18 = fpext float %conv17 to double, !dbg !278
  %sub = fadd double %conv18, -1.000000e+00, !dbg !278
  %mul21 = fmul double %conv18, %sub, !dbg !278
  %div = fdiv double %mul, %mul21, !dbg !278
  %conv22 = fptrunc double %div to float, !dbg !278
  br label %return, !dbg !278

return:                                           ; preds = %for.body3, %for.end15
  %retval.0 = phi float [ %conv22, %for.end15 ], [ -1.000000e+00, %for.body3 ]
  ret float %retval.0, !dbg !279
}

; Function Attrs: nounwind optsize uwtable
define float @CompareRefMultAlignments(i32* nocapture %ref, i8** nocapture %kseqs, i8** nocapture %tseqs, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ref}, i64 0, metadata !73), !dbg !280
  tail call void @llvm.dbg.value(metadata !{i8** %kseqs}, i64 0, metadata !74), !dbg !280
  tail call void @llvm.dbg.value(metadata !{i8** %tseqs}, i64 0, metadata !75), !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !76), !dbg !280
  tail call void @llvm.dbg.value(metadata !210, i64 0, metadata !80), !dbg !281
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !77), !dbg !282
  %cmp42 = icmp sgt i32 %N, 0, !dbg !282
  br i1 %cmp42, label %for.body, label %for.end15, !dbg !282

for.cond.loopexit:                                ; preds = %if.end
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !282
  br i1 %cmp238, label %for.body, label %for.end15, !dbg !282

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 1, %entry ]
  %tot_score.044 = phi float [ %add12, %for.cond.loopexit ], [ 0.000000e+00, %entry ]
  %i.043 = phi i32 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv.next50 = add i64 %indvars.iv49, 1, !dbg !282
  %add = add nsw i32 %i.043, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !78), !dbg !284
  %0 = trunc i64 %indvars.iv.next50 to i32, !dbg !284
  %cmp238 = icmp slt i32 %0, %N, !dbg !284
  br i1 %cmp238, label %for.body3.lr.ph, label %for.end15, !dbg !284

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i8** %kseqs, i64 %indvars.iv49, !dbg !286
  %arrayidx7 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv49, !dbg !286
  br label %for.body3, !dbg !284

for.body3:                                        ; preds = %for.body3.lr.ph, %if.end
  %indvars.iv46 = phi i64 [ %indvars.iv, %for.body3.lr.ph ], [ %indvars.iv.next47, %if.end ], !dbg !282
  %tot_score.140 = phi float [ %tot_score.044, %for.body3.lr.ph ], [ %add12, %if.end ]
  %j.039 = phi i32 [ %add, %for.body3.lr.ph ], [ %inc, %if.end ]
  %1 = load i8** %arrayidx, align 8, !dbg !286, !tbaa !186
  %arrayidx5 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv46, !dbg !286
  %2 = load i8** %arrayidx5, align 8, !dbg !286, !tbaa !186
  %3 = load i8** %arrayidx7, align 8, !dbg !286, !tbaa !186
  %arrayidx9 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv46, !dbg !286
  %4 = load i8** %arrayidx9, align 8, !dbg !286, !tbaa !186
  %call = tail call float @CompareRefPairAlignments(i32* %ref, i8* %1, i8* %2, i8* %3, i8* %4) #8, !dbg !286
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !79), !dbg !286
  %cmp10 = fcmp olt float %call, 0.000000e+00, !dbg !288
  br i1 %cmp10, label %return, label %if.end, !dbg !288

if.end:                                           ; preds = %for.body3
  %add12 = fadd float %tot_score.140, %call, !dbg !289
  tail call void @llvm.dbg.value(metadata !{float %add12}, i64 0, metadata !80), !dbg !289
  %inc = add nsw i32 %j.039, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !78), !dbg !284
  %cmp2 = icmp slt i32 %inc, %N, !dbg !284
  %indvars.iv.next47 = add i64 %indvars.iv46, 1, !dbg !284
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit, !dbg !284

for.end15:                                        ; preds = %for.cond.loopexit, %for.body, %entry
  %tot_score.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add12, %for.cond.loopexit ], [ %tot_score.044, %for.body ]
  %conv16 = fpext float %tot_score.0.lcssa to double, !dbg !290
  %mul = fmul double %conv16, 2.000000e+00, !dbg !290
  %conv17 = sitofp i32 %N to float, !dbg !290
  %conv18 = fpext float %conv17 to double, !dbg !290
  %sub = fadd double %conv18, -1.000000e+00, !dbg !290
  %mul21 = fmul double %conv18, %sub, !dbg !290
  %div = fdiv double %mul, %mul21, !dbg !290
  %conv22 = fptrunc double %div to float, !dbg !290
  br label %return, !dbg !290

return:                                           ; preds = %for.body3, %for.end15
  %retval.0 = phi float [ %conv22, %for.end15 ], [ -1.000000e+00, %for.body3 ]
  ret float %retval.0, !dbg !291
}

; Function Attrs: nounwind optsize readonly uwtable
define float @PairwiseIdentity(i8* nocapture %s1, i8* nocapture %s2) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !85), !dbg !292
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !86), !dbg !292
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !89), !dbg !293
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !88), !dbg !293
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !87), !dbg !293
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !90), !dbg !294
  %0 = load i8* %s1, align 1, !dbg !294, !tbaa !187
  %cmp121 = icmp eq i8 %0, 0, !dbg !294
  br i1 %cmp121, label %for.end, label %land.rhs, !dbg !294

land.rhs:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = phi i8 [ %3, %for.inc ], [ %0, %entry ]
  %len2.0124 = phi i32 [ %len2.1, %for.inc ], [ 0, %entry ]
  %len1.0123 = phi i32 [ %len1.1, %for.inc ], [ 0, %entry ]
  %idents.0122 = phi i32 [ %idents.1, %for.inc ], [ 0, %entry ]
  %arrayidx3 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !294
  %2 = load i8* %arrayidx3, align 1, !dbg !294, !tbaa !187
  %cmp5 = icmp eq i8 %2, 0, !dbg !294
  br i1 %cmp5, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  switch i8 %1, label %if.then [
    i8 32, label %if.end45
    i8 46, label %if.end45
    i8 95, label %if.end45
    i8 45, label %if.end45
    i8 126, label %if.end45
  ], !dbg !296

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %len1.0123, 1, !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !88), !dbg !298
  %cmp41 = icmp eq i8 %1, %2, !dbg !300
  %inc44 = zext i1 %cmp41 to i32, !dbg !300
  %inc44.idents.0 = add nsw i32 %inc44, %idents.0122, !dbg !300
  br label %if.end45, !dbg !300

if.end45:                                         ; preds = %if.then, %for.body, %for.body, %for.body, %for.body, %for.body
  %idents.1 = phi i32 [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %inc44.idents.0, %if.then ]
  %len1.1 = phi i32 [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %inc, %if.then ]
  switch i8 %2, label %if.then75 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !301

if.then75:                                        ; preds = %if.end45
  %inc76 = add nsw i32 %len2.0124, 1, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %inc76}, i64 0, metadata !89), !dbg !301
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %if.end45, %if.end45, %if.end45, %if.end45, %if.end45, %if.then75
  %len2.1 = phi i32 [ %len2.0124, %if.end45 ], [ %inc76, %if.then75 ], [ %len2.0124, %if.end45 ], [ %len2.0124, %if.end45 ], [ %len2.0124, %if.end45 ], [ %len2.0124, %if.end45 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !294
  %arrayidx = getelementptr inbounds i8* %s1, i64 %indvars.iv.next, !dbg !294
  %3 = load i8* %arrayidx, align 1, !dbg !294, !tbaa !187
  %cmp = icmp eq i8 %3, 0, !dbg !294
  br i1 %cmp, label %for.end, label %land.rhs, !dbg !294

for.end:                                          ; preds = %for.inc, %land.rhs, %entry
  %len2.0.lcssa = phi i32 [ 0, %entry ], [ %len2.0124, %land.rhs ], [ %len2.1, %for.inc ]
  %len1.0.lcssa = phi i32 [ 0, %entry ], [ %len1.0123, %land.rhs ], [ %len1.1, %for.inc ]
  %idents.0.lcssa = phi i32 [ 0, %entry ], [ %idents.0122, %land.rhs ], [ %idents.1, %for.inc ]
  %cmp79 = icmp slt i32 %len2.0.lcssa, %len1.0.lcssa, !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %len2.0.lcssa}, i64 0, metadata !88), !dbg !302
  %len2.0.len1.0 = select i1 %cmp79, i32 %len2.0.lcssa, i32 %len1.0.lcssa, !dbg !302
  %cmp83 = icmp eq i32 %len2.0.len1.0, 0, !dbg !303
  br i1 %cmp83, label %cond.end, label %cond.false, !dbg !303

cond.false:                                       ; preds = %for.end
  %conv85 = sitofp i32 %idents.0.lcssa to float, !dbg !303
  %conv86 = sitofp i32 %len2.0.len1.0 to float, !dbg !303
  %div = fdiv float %conv85, %conv86, !dbg !303
  br label %cond.end, !dbg !303

cond.end:                                         ; preds = %for.end, %cond.false
  %cond = phi float [ %div, %cond.false ], [ 0.000000e+00, %for.end ]
  ret float %cond, !dbg !303
}

; Function Attrs: nounwind optsize uwtable
define float @AlignmentIdentityBySampling(i8** nocapture %aseq, i32 %L, i32 %N, i32 %nsample) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !95), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !96), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !97), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %nsample}, i64 0, metadata !98), !dbg !304
  %cmp = icmp slt i32 %N, 2, !dbg !305
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !305

for.cond.preheader:                               ; preds = %entry
  %cmp121 = icmp sgt i32 %nsample, 0, !dbg !306
  br i1 %cmp121, label %for.body.lr.ph, label %for.end, !dbg !306

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = sitofp i32 %N to double, !dbg !308
  br label %for.body, !dbg !306

for.body:                                         ; preds = %do.end, %for.body.lr.ph
  %sum.023 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %do.end ]
  %x.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end ]
  %call = tail call double @sre_random() #9, !dbg !308
  %mul = fmul double %conv, %call, !dbg !308
  %conv2 = fptosi double %mul to i32, !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !100), !dbg !308
  br label %do.body, !dbg !310

do.body:                                          ; preds = %do.body, %for.body
  %call3 = tail call double @sre_random() #9, !dbg !311
  %mul5 = fmul double %conv, %call3, !dbg !311
  %conv6 = fptosi double %mul5 to i32, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %conv6}, i64 0, metadata !101), !dbg !311
  %cmp7 = icmp eq i32 %conv6, %conv2, !dbg !311
  br i1 %cmp7, label %do.body, label %do.end, !dbg !311

do.end:                                           ; preds = %do.body
  %idxprom = sext i32 %conv2 to i64, !dbg !313
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %idxprom, !dbg !313
  %0 = load i8** %arrayidx, align 8, !dbg !313, !tbaa !186
  %idxprom9 = sext i32 %conv6 to i64, !dbg !313
  %arrayidx10 = getelementptr inbounds i8** %aseq, i64 %idxprom9, !dbg !313
  %1 = load i8** %arrayidx10, align 8, !dbg !313, !tbaa !186
  %call11 = tail call float @PairwiseIdentity(i8* %0, i8* %1) #8, !dbg !313
  %add = fadd float %sum.023, %call11, !dbg !313
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !102), !dbg !313
  %inc = add nsw i32 %x.022, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !99), !dbg !306
  %exitcond = icmp eq i32 %inc, %nsample, !dbg !306
  br i1 %exitcond, label %for.end, label %for.body, !dbg !306

for.end:                                          ; preds = %do.end, %for.cond.preheader
  %sum.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %add, %do.end ]
  %conv12 = sitofp i32 %nsample to float, !dbg !314
  %div = fdiv float %sum.0.lcssa, %conv12, !dbg !314
  br label %return, !dbg !314

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi float [ %div, %for.end ], [ 1.000000e+00, %entry ]
  ret float %retval.0, !dbg !315
}

; Function Attrs: optsize
declare double @sre_random() #4

; Function Attrs: nounwind optsize uwtable
define i8* @MajorityRuleConsensus(i8** nocapture %aseq, i32 %nseq, i32 %alen) #0 {
entry:
  %count = alloca [27 x i32], align 16
  %0 = bitcast [27 x i32]* %count to i8*
  call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !107), !dbg !316
  call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !108), !dbg !316
  call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !109), !dbg !316
  call void @llvm.lifetime.start(i64 108, i8* %0) #5, !dbg !317
  call void @llvm.dbg.declare(metadata !{[27 x i32]* %count}, metadata !111), !dbg !317
  %add = add nsw i32 %alen, 1, !dbg !318
  %conv = sext i32 %add to i64, !dbg !318
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 485, i64 %conv) #9, !dbg !318
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !110), !dbg !318
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !117), !dbg !319
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !116), !dbg !319
  %cmp91 = icmp sgt i32 %alen, 0, !dbg !319
  br i1 %cmp91, label %for.cond2.preheader.lr.ph, label %for.end63, !dbg !319

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp786 = icmp sgt i32 %nseq, 0, !dbg !320
  %arrayidx33 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 26, !dbg !321
  %conv35 = sitofp i32 %nseq to float, !dbg !321
  br label %for.cond2.preheader, !dbg !319

for.cond2.preheader:                              ; preds = %for.inc61, %for.cond2.preheader.lr.ph
  %indvars.iv98 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next99, %for.inc61 ]
  %spos.092 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %spos.1, %for.inc61 ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 108, i32 16, i1 false), !dbg !322
  br i1 %cmp786, label %for.body9.lr.ph, label %for.end32, !dbg !320

for.body9.lr.ph:                                  ; preds = %for.cond2.preheader
  %call16 = call i16** @__ctype_b_loc() #11, !dbg !324
  br label %for.body9, !dbg !320

for.body9:                                        ; preds = %for.inc30, %for.body9.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc30 ]
  %arrayidx12 = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !324
  %1 = load i8** %arrayidx12, align 8, !dbg !324, !tbaa !186
  %arrayidx13 = getelementptr inbounds i8* %1, i64 %indvars.iv98, !dbg !324
  %2 = load i8* %arrayidx13, align 1, !dbg !324, !tbaa !187
  %idxprom15 = sext i8 %2 to i64, !dbg !324
  %3 = load i16** %call16, align 8, !dbg !324, !tbaa !186
  %arrayidx17 = getelementptr inbounds i16* %3, i64 %idxprom15, !dbg !324
  %4 = load i16* %arrayidx17, align 2, !dbg !324, !tbaa !325
  %and = and i16 %4, 1024, !dbg !324
  %tobool = icmp eq i16 %and, 0, !dbg !324
  br i1 %tobool, label %if.else, label %if.then, !dbg !324

if.then:                                          ; preds = %for.body9
  %conv14 = sext i8 %2 to i32, !dbg !324
  %call24 = call i32 @toupper(i32 %conv14) #9, !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !122), !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !119), !dbg !328
  %sub = add nsw i32 %call24, -65, !dbg !329
  %idxprom25 = sext i32 %sub to i64, !dbg !329
  %arrayidx26 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 %idxprom25, !dbg !329
  %5 = load i32* %arrayidx26, align 4, !dbg !329, !tbaa !189
  %inc27 = add nsw i32 %5, 1, !dbg !329
  store i32 %inc27, i32* %arrayidx26, align 4, !dbg !329, !tbaa !189
  br label %for.inc30, !dbg !330

if.else:                                          ; preds = %for.body9
  %6 = load i32* %arrayidx33, align 8, !dbg !331, !tbaa !189
  %inc29 = add nsw i32 %6, 1, !dbg !331
  store i32 %inc29, i32* %arrayidx33, align 8, !dbg !331, !tbaa !189
  br label %for.inc30

for.inc30:                                        ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !320
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !320
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !320
  br i1 %exitcond, label %for.cond6.for.end32_crit_edge, label %for.body9, !dbg !320

for.cond6.for.end32_crit_edge:                    ; preds = %for.inc30
  %.pre = load i32* %arrayidx33, align 8, !dbg !321, !tbaa !189
  %phitmp = sitofp i32 %.pre to float, !dbg !320
  br label %for.end32, !dbg !320

for.end32:                                        ; preds = %for.cond6.for.end32_crit_edge, %for.cond2.preheader
  %7 = phi float [ %phitmp, %for.cond6.for.end32_crit_edge ], [ 0.000000e+00, %for.cond2.preheader ]
  %div = fdiv float %7, %conv35, !dbg !321
  %cmp37 = fcmp ugt float %div, 5.000000e-01, !dbg !321
  br i1 %cmp37, label %for.inc61, label %for.body43, !dbg !321

for.body43:                                       ; preds = %for.end32, %for.body43
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body43 ], [ 0, %for.end32 ]
  %bestx.090 = phi i32 [ %x.1.bestx.0, %for.body43 ], [ -1, %for.end32 ]
  %max.089 = phi i32 [ %.max.0, %for.body43 ], [ -1, %for.end32 ]
  %arrayidx45 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 %indvars.iv94, !dbg !333
  %8 = load i32* %arrayidx45, align 4, !dbg !333, !tbaa !189
  %cmp46 = icmp sgt i32 %8, %max.089, !dbg !333
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !120), !dbg !336
  call void @llvm.dbg.value(metadata !338, i64 0, metadata !121), !dbg !336
  %.max.0 = select i1 %cmp46, i32 %8, i32 %max.089, !dbg !333
  %9 = trunc i64 %indvars.iv94 to i32, !dbg !333
  %x.1.bestx.0 = select i1 %cmp46, i32 %9, i32 %bestx.090, !dbg !333
  %indvars.iv.next95 = add i64 %indvars.iv94, 1, !dbg !339
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32, !dbg !339
  %exitcond97 = icmp eq i32 %lftr.wideiv96, 26, !dbg !339
  br i1 %exitcond97, label %for.end54, label %for.body43, !dbg !339

for.end54:                                        ; preds = %for.body43
  %add55 = add nsw i32 %x.1.bestx.0, 65, !dbg !340
  %conv56 = trunc i32 %add55 to i8, !dbg !340
  %inc57 = add nsw i32 %spos.092, 1, !dbg !340
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !117), !dbg !340
  %idxprom58 = sext i32 %spos.092 to i64, !dbg !340
  %arrayidx59 = getelementptr inbounds i8* %call, i64 %idxprom58, !dbg !340
  store i8 %conv56, i8* %arrayidx59, align 1, !dbg !340, !tbaa !187
  br label %for.inc61, !dbg !341

for.inc61:                                        ; preds = %for.end32, %for.end54
  %spos.1 = phi i32 [ %inc57, %for.end54 ], [ %spos.092, %for.end32 ]
  %indvars.iv.next99 = add i64 %indvars.iv98, 1, !dbg !319
  %lftr.wideiv100 = trunc i64 %indvars.iv.next99 to i32, !dbg !319
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %alen, !dbg !319
  br i1 %exitcond101, label %for.end63, label %for.cond2.preheader, !dbg !319

for.end63:                                        ; preds = %for.inc61, %entry
  %spos.0.lcssa = phi i32 [ 0, %entry ], [ %spos.1, %for.inc61 ]
  %idxprom64 = sext i32 %spos.0.lcssa to i64, !dbg !342
  %arrayidx65 = getelementptr inbounds i8* %call, i64 %idxprom64, !dbg !342
  store i8 0, i8* %arrayidx65, align 1, !dbg !342, !tbaa !187
  call void @llvm.lifetime.end(i64 108, i8* %0) #5, !dbg !343
  ret i8* %call, !dbg !343
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !41, metadata !57, metadata !69, metadata !81, metadata !91, metadata !103, metadata !129, metadata !144, metadata !162}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ComparePairAlignments", metadata !"ComparePairAlignments", metadata !"", i32 95, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i8*, i8*, i8*)* @ComparePairAlignments, null, null, metadata !27, i32 96} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 96] [ComparePairAlignments]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !25, metadata !25, metadata !25}
!24 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!28 = metadata !{i32 786689, metadata !20, metadata !"known1", metadata !21, i32 16777311, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [known1] [line 95]
!29 = metadata !{i32 786689, metadata !20, metadata !"known2", metadata !21, i32 33554527, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [known2] [line 95]
!30 = metadata !{i32 786689, metadata !20, metadata !"calc1", metadata !21, i32 50331743, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [calc1] [line 95]
!31 = metadata !{i32 786689, metadata !20, metadata !"calc2", metadata !21, i32 67108959, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [calc2] [line 95]
!32 = metadata !{i32 786688, metadata !20, metadata !"klist1", metadata !21, i32 97, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [klist1] [line 97]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!35 = metadata !{i32 786688, metadata !20, metadata !"klist2", metadata !21, i32 98, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [klist2] [line 98]
!36 = metadata !{i32 786688, metadata !20, metadata !"tlist1", metadata !21, i32 99, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tlist1] [line 99]
!37 = metadata !{i32 786688, metadata !20, metadata !"tlist2", metadata !21, i32 100, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tlist2] [line 100]
!38 = metadata !{i32 786688, metadata !20, metadata !"len1", metadata !21, i32 101, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len1] [line 101]
!39 = metadata !{i32 786688, metadata !20, metadata !"len2", metadata !21, i32 101, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len2] [line 101]
!40 = metadata !{i32 786688, metadata !20, metadata !"score", metadata !21, i32 102, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 102]
!41 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"CompareRefPairAlignments", metadata !"CompareRefPairAlignments", metadata !"", i32 133, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32*, i8*, i8*, i8*, i8*)* @CompareRefPairAlignments, null, null, metadata !44, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [CompareRefPairAlignments]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !24, metadata !33, metadata !25, metadata !25, metadata !25, metadata !25}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!45 = metadata !{i32 786689, metadata !41, metadata !"ref", metadata !21, i32 16777349, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref] [line 133]
!46 = metadata !{i32 786689, metadata !41, metadata !"known1", metadata !21, i32 33554565, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [known1] [line 133]
!47 = metadata !{i32 786689, metadata !41, metadata !"known2", metadata !21, i32 50331781, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [known2] [line 133]
!48 = metadata !{i32 786689, metadata !41, metadata !"calc1", metadata !21, i32 67108997, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [calc1] [line 133]
!49 = metadata !{i32 786689, metadata !41, metadata !"calc2", metadata !21, i32 83886213, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [calc2] [line 133]
!50 = metadata !{i32 786688, metadata !41, metadata !"klist1", metadata !21, i32 135, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [klist1] [line 135]
!51 = metadata !{i32 786688, metadata !41, metadata !"klist2", metadata !21, i32 136, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [klist2] [line 136]
!52 = metadata !{i32 786688, metadata !41, metadata !"tlist1", metadata !21, i32 137, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tlist1] [line 137]
!53 = metadata !{i32 786688, metadata !41, metadata !"tlist2", metadata !21, i32 138, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tlist2] [line 138]
!54 = metadata !{i32 786688, metadata !41, metadata !"len1", metadata !21, i32 139, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len1] [line 139]
!55 = metadata !{i32 786688, metadata !41, metadata !"len2", metadata !21, i32 139, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len2] [line 139]
!56 = metadata !{i32 786688, metadata !41, metadata !"score", metadata !21, i32 140, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 140]
!57 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"CompareMultAlignments", metadata !"CompareMultAlignments", metadata !"", i32 334, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8**, i8**, i32)* @CompareMultAlignments, null, null, metadata !61, i32 335} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 335] [CompareMultAlignments]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{metadata !24, metadata !60, metadata !60, metadata !34}
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!62 = metadata !{i32 786689, metadata !57, metadata !"kseqs", metadata !21, i32 16777550, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kseqs] [line 334]
!63 = metadata !{i32 786689, metadata !57, metadata !"tseqs", metadata !21, i32 33554766, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tseqs] [line 334]
!64 = metadata !{i32 786689, metadata !57, metadata !"N", metadata !21, i32 50331982, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 334]
!65 = metadata !{i32 786688, metadata !57, metadata !"i", metadata !21, i32 336, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 336]
!66 = metadata !{i32 786688, metadata !57, metadata !"j", metadata !21, i32 336, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 336]
!67 = metadata !{i32 786688, metadata !57, metadata !"score", metadata !21, i32 337, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 337]
!68 = metadata !{i32 786688, metadata !57, metadata !"tot_score", metadata !21, i32 338, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tot_score] [line 338]
!69 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"CompareRefMultAlignments", metadata !"CompareRefMultAlignments", metadata !"", i32 366, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32*, i8**, i8**, i32)* @CompareRefMultAlignments, null, null, metadata !72, i32 367} ; [ DW_TAG_subprogram ] [line 366] [def] [scope 367] [CompareRefMultAlignments]
!70 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !24, metadata !33, metadata !60, metadata !60, metadata !34}
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!73 = metadata !{i32 786689, metadata !69, metadata !"ref", metadata !21, i32 16777582, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref] [line 366]
!74 = metadata !{i32 786689, metadata !69, metadata !"kseqs", metadata !21, i32 33554798, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kseqs] [line 366]
!75 = metadata !{i32 786689, metadata !69, metadata !"tseqs", metadata !21, i32 50332014, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tseqs] [line 366]
!76 = metadata !{i32 786689, metadata !69, metadata !"N", metadata !21, i32 67109230, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 366]
!77 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !21, i32 368, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 368]
!78 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !21, i32 368, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 368]
!79 = metadata !{i32 786688, metadata !69, metadata !"score", metadata !21, i32 369, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 369]
!80 = metadata !{i32 786688, metadata !69, metadata !"tot_score", metadata !21, i32 370, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tot_score] [line 370]
!81 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"PairwiseIdentity", metadata !"PairwiseIdentity", metadata !"", i32 401, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i8*)* @PairwiseIdentity, null, null, metadata !84, i32 402} ; [ DW_TAG_subprogram ] [line 401] [def] [scope 402] [PairwiseIdentity]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !24, metadata !25, metadata !25}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!85 = metadata !{i32 786689, metadata !81, metadata !"s1", metadata !21, i32 16777617, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 401]
!86 = metadata !{i32 786689, metadata !81, metadata !"s2", metadata !21, i32 33554833, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 401]
!87 = metadata !{i32 786688, metadata !81, metadata !"idents", metadata !21, i32 403, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idents] [line 403]
!88 = metadata !{i32 786688, metadata !81, metadata !"len1", metadata !21, i32 404, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len1] [line 404]
!89 = metadata !{i32 786688, metadata !81, metadata !"len2", metadata !21, i32 404, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len2] [line 404]
!90 = metadata !{i32 786688, metadata !81, metadata !"x", metadata !21, i32 405, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 405]
!91 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"AlignmentIdentityBySampling", metadata !"AlignmentIdentityBySampling", metadata !"", i32 443, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8**, i32, i32, i32)* @AlignmentIdentityBySampling, null, null, metadata !94, i32 444} ; [ DW_TAG_subprogram ] [line 443] [def] [scope 444] [AlignmentIdentityBySampling]
!92 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !24, metadata !60, metadata !34, metadata !34, metadata !34}
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!95 = metadata !{i32 786689, metadata !91, metadata !"aseq", metadata !21, i32 16777659, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 443]
!96 = metadata !{i32 786689, metadata !91, metadata !"L", metadata !21, i32 33554875, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 443]
!97 = metadata !{i32 786689, metadata !91, metadata !"N", metadata !21, i32 50332091, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 443]
!98 = metadata !{i32 786689, metadata !91, metadata !"nsample", metadata !21, i32 67109307, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsample] [line 443]
!99 = metadata !{i32 786688, metadata !91, metadata !"x", metadata !21, i32 445, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 445]
!100 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !21, i32 445, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 445]
!101 = metadata !{i32 786688, metadata !91, metadata !"j", metadata !21, i32 445, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 445]
!102 = metadata !{i32 786688, metadata !91, metadata !"sum", metadata !21, i32 446, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 446]
!103 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MajorityRuleConsensus", metadata !"MajorityRuleConsensus", metadata !"", i32 475, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**, i32, i32)* @MajorityRuleConsensus, null, null, metadata !106, i32 476} ; [ DW_TAG_subprogram ] [line 475] [def] [scope 476] [MajorityRuleConsensus]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !25, metadata !60, metadata !34, metadata !34}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122}
!107 = metadata !{i32 786689, metadata !103, metadata !"aseq", metadata !21, i32 16777691, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 475]
!108 = metadata !{i32 786689, metadata !103, metadata !"nseq", metadata !21, i32 33554907, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 475]
!109 = metadata !{i32 786689, metadata !103, metadata !"alen", metadata !21, i32 50332123, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 475]
!110 = metadata !{i32 786688, metadata !103, metadata !"cs", metadata !21, i32 477, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cs] [line 477]
!111 = metadata !{i32 786688, metadata !103, metadata !"count", metadata !21, i32 478, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 478]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 864, i64 32, i32 0, i32 0, metadata !34, metadata !113, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 864, align 32, offset 0] [from int]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786465, i64 0, i64 27}      ; [ DW_TAG_subrange_type ] [0, 26]
!115 = metadata !{i32 786688, metadata !103, metadata !"idx", metadata !21, i32 479, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 479]
!116 = metadata !{i32 786688, metadata !103, metadata !"apos", metadata !21, i32 479, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 479]
!117 = metadata !{i32 786688, metadata !103, metadata !"spos", metadata !21, i32 480, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spos] [line 480]
!118 = metadata !{i32 786688, metadata !103, metadata !"x", metadata !21, i32 481, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 481]
!119 = metadata !{i32 786688, metadata !103, metadata !"sym", metadata !21, i32 482, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 482]
!120 = metadata !{i32 786688, metadata !103, metadata !"max", metadata !21, i32 483, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 483]
!121 = metadata !{i32 786688, metadata !103, metadata !"bestx", metadata !21, i32 483, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestx] [line 483]
!122 = metadata !{i32 786688, metadata !123, metadata !"__res", metadata !21, i32 494, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 494]
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 494, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!124 = metadata !{i32 786443, metadata !1, metadata !125, i32 493, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!125 = metadata !{i32 786443, metadata !1, metadata !126, i32 492, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 491, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 488, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!128 = metadata !{i32 786443, metadata !1, metadata !103, i32 487, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!129 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"compare_lists", metadata !"compare_lists", metadata !"", i32 295, metadata !130, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, i32*, i32, i32, float*)* @compare_lists, null, null, metadata !133, i32 296} ; [ DW_TAG_subprogram ] [line 295] [local] [def] [scope 296] [compare_lists]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !34, metadata !33, metadata !33, metadata !33, metadata !33, metadata !34, metadata !34, metadata !132}
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143}
!134 = metadata !{i32 786689, metadata !129, metadata !"k1", metadata !21, i32 16777511, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 295]
!135 = metadata !{i32 786689, metadata !129, metadata !"k2", metadata !21, i32 33554727, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k2] [line 295]
!136 = metadata !{i32 786689, metadata !129, metadata !"t1", metadata !21, i32 50331943, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t1] [line 295]
!137 = metadata !{i32 786689, metadata !129, metadata !"t2", metadata !21, i32 67109159, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t2] [line 295]
!138 = metadata !{i32 786689, metadata !129, metadata !"len1", metadata !21, i32 83886375, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len1] [line 295]
!139 = metadata !{i32 786689, metadata !129, metadata !"len2", metadata !21, i32 100663591, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len2] [line 295]
!140 = metadata !{i32 786689, metadata !129, metadata !"ret_sc", metadata !21, i32 117440807, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_sc] [line 295]
!141 = metadata !{i32 786688, metadata !129, metadata !"id", metadata !21, i32 297, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [id] [line 297]
!142 = metadata !{i32 786688, metadata !129, metadata !"tot", metadata !21, i32 298, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tot] [line 298]
!143 = metadata !{i32 786688, metadata !129, metadata !"i", metadata !21, i32 299, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 299]
!144 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"make_ref_alilist", metadata !"make_ref_alilist", metadata !"", i32 224, metadata !145, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i8*, i8*, i32**, i32*)* @make_ref_alilist, null, null, metadata !148, i32 226} ; [ DW_TAG_subprogram ] [line 224] [local] [def] [scope 226] [make_ref_alilist]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{metadata !34, metadata !33, metadata !25, metadata !25, metadata !25, metadata !25, metadata !147, metadata !33}
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!149 = metadata !{i32 786689, metadata !144, metadata !"ref", metadata !21, i32 16777440, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref] [line 224]
!150 = metadata !{i32 786689, metadata !144, metadata !"k1", metadata !21, i32 33554656, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 224]
!151 = metadata !{i32 786689, metadata !144, metadata !"k2", metadata !21, i32 50331872, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k2] [line 224]
!152 = metadata !{i32 786689, metadata !144, metadata !"s1", metadata !21, i32 67109089, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 225]
!153 = metadata !{i32 786689, metadata !144, metadata !"s2", metadata !21, i32 83886305, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 225]
!154 = metadata !{i32 786689, metadata !144, metadata !"ret_s1_list", metadata !21, i32 100663521, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_s1_list] [line 225]
!155 = metadata !{i32 786689, metadata !144, metadata !"ret_listlen", metadata !21, i32 117440737, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_listlen] [line 225]
!156 = metadata !{i32 786688, metadata !144, metadata !"s1_list", metadata !21, i32 227, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1_list] [line 227]
!157 = metadata !{i32 786688, metadata !144, metadata !"col", metadata !21, i32 228, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 228]
!158 = metadata !{i32 786688, metadata !144, metadata !"r1", metadata !21, i32 229, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 229]
!159 = metadata !{i32 786688, metadata !144, metadata !"r2", metadata !21, i32 229, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 229]
!160 = metadata !{i32 786688, metadata !144, metadata !"canons1", metadata !21, i32 230, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [canons1] [line 230]
!161 = metadata !{i32 786688, metadata !144, metadata !"lpos", metadata !21, i32 231, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lpos] [line 231]
!162 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"make_alilist", metadata !"make_alilist", metadata !"", i32 170, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32**, i32*)* @make_alilist, null, null, metadata !165, i32 171} ; [ DW_TAG_subprogram ] [line 170] [local] [def] [scope 171] [make_alilist]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !34, metadata !25, metadata !25, metadata !147, metadata !33}
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!166 = metadata !{i32 786689, metadata !162, metadata !"s1", metadata !21, i32 16777386, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 170]
!167 = metadata !{i32 786689, metadata !162, metadata !"s2", metadata !21, i32 33554602, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 170]
!168 = metadata !{i32 786689, metadata !162, metadata !"ret_s1_list", metadata !21, i32 50331818, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_s1_list] [line 170]
!169 = metadata !{i32 786689, metadata !162, metadata !"ret_listlen", metadata !21, i32 67109034, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_listlen] [line 170]
!170 = metadata !{i32 786688, metadata !162, metadata !"s1_list", metadata !21, i32 172, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1_list] [line 172]
!171 = metadata !{i32 786688, metadata !162, metadata !"col", metadata !21, i32 173, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 173]
!172 = metadata !{i32 786688, metadata !162, metadata !"r1", metadata !21, i32 174, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 174]
!173 = metadata !{i32 786688, metadata !162, metadata !"r2", metadata !21, i32 174, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 174]
!174 = metadata !{i32 95, i32 0, metadata !20, null}
!175 = metadata !{i32 97, i32 0, metadata !20, null}
!176 = metadata !{i32 98, i32 0, metadata !20, null}
!177 = metadata !{i32 99, i32 0, metadata !20, null}
!178 = metadata !{i32 100, i32 0, metadata !20, null}
!179 = metadata !{i32 101, i32 0, metadata !20, null}
!180 = metadata !{i32 102, i32 0, metadata !20, null}
!181 = metadata !{i32 104, i32 0, metadata !20, null}
!182 = metadata !{i32 105, i32 0, metadata !20, null}
!183 = metadata !{i32 106, i32 0, metadata !20, null}
!184 = metadata !{i32 107, i32 0, metadata !20, null}
!185 = metadata !{i32 108, i32 0, metadata !20, null}
!186 = metadata !{metadata !"any pointer", metadata !187}
!187 = metadata !{metadata !"omnipotent char", metadata !188}
!188 = metadata !{metadata !"Simple C/C++ TBAA"}
!189 = metadata !{metadata !"int", metadata !187}
!190 = metadata !{i32 110, i32 0, metadata !20, null}
!191 = metadata !{i32 111, i32 0, metadata !20, null}
!192 = metadata !{i32 112, i32 0, metadata !20, null}
!193 = metadata !{i32 113, i32 0, metadata !20, null}
!194 = metadata !{i32 114, i32 0, metadata !20, null}
!195 = metadata !{metadata !"float", metadata !187}
!196 = metadata !{i32 115, i32 0, metadata !20, null}
!197 = metadata !{i32 179, i32 0, metadata !162, null}
!198 = metadata !{i32 180, i32 0, metadata !162, null}
!199 = metadata !{i32 181, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !162, i32 181, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!201 = metadata !{i32 188, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !203, i32 187, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!203 = metadata !{i32 786443, metadata !1, metadata !200, i32 182, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!204 = metadata !{i32 189, i32 0, metadata !202, null}
!205 = metadata !{i32 190, i32 0, metadata !202, null}
!206 = metadata !{i32 194, i32 0, metadata !203, null}
!207 = metadata !{i32 195, i32 0, metadata !203, null}
!208 = metadata !{i32 198, i32 0, metadata !162, null}
!209 = metadata !{i32 199, i32 0, metadata !162, null}
!210 = metadata !{float 0.000000e+00}
!211 = metadata !{i32 301, i32 0, metadata !129, null}
!212 = metadata !{i32 302, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !129, i32 302, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!214 = metadata !{i32 308, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !129, i32 308, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!216 = metadata !{i32 304, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !213, i32 303, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!218 = metadata !{i32 305, i32 0, metadata !217, null}
!219 = metadata !{i32 310, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !215, i32 309, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!221 = metadata !{i32 311, i32 0, metadata !220, null}
!222 = metadata !{i32 314, i32 0, metadata !129, null}
!223 = metadata !{i32 133, i32 0, metadata !41, null}
!224 = metadata !{i32 135, i32 0, metadata !41, null}
!225 = metadata !{i32 136, i32 0, metadata !41, null}
!226 = metadata !{i32 137, i32 0, metadata !41, null}
!227 = metadata !{i32 138, i32 0, metadata !41, null}
!228 = metadata !{i32 139, i32 0, metadata !41, null}
!229 = metadata !{i32 140, i32 0, metadata !41, null}
!230 = metadata !{i32 142, i32 0, metadata !41, null}
!231 = metadata !{i32 143, i32 0, metadata !41, null}
!232 = metadata !{i32 144, i32 0, metadata !41, null}
!233 = metadata !{i32 145, i32 0, metadata !41, null}
!234 = metadata !{i32 146, i32 0, metadata !41, null}
!235 = metadata !{i32 148, i32 0, metadata !41, null}
!236 = metadata !{i32 149, i32 0, metadata !41, null}
!237 = metadata !{i32 150, i32 0, metadata !41, null}
!238 = metadata !{i32 151, i32 0, metadata !41, null}
!239 = metadata !{i32 152, i32 0, metadata !41, null}
!240 = metadata !{i32 153, i32 0, metadata !41, null}
!241 = metadata !{i8* null}
!242 = metadata !{i32 224, i32 0, metadata !144, null}
!243 = metadata !{i32 236, i32 0, metadata !144, null}
!244 = metadata !{i32 237, i32 0, metadata !144, null}
!245 = metadata !{i32 243, i32 0, metadata !144, null}
!246 = metadata !{i32 244, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !144, i32 244, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!248 = metadata !{i32 259, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !144, i32 259, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!250 = metadata !{i32 248, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !252, i32 247, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!252 = metadata !{i32 786443, metadata !1, metadata !247, i32 245, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!253 = metadata !{i32 249, i32 0, metadata !251, null}
!254 = metadata !{i32 250, i32 0, metadata !251, null}
!255 = metadata !{i32 261, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !249, i32 260, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!257 = metadata !{i32 263, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !256, i32 262, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!259 = metadata !{i32 264, i32 0, metadata !258, null}
!260 = metadata !{i32 267, i32 0, metadata !256, null}
!261 = metadata !{i32 265, i32 0, metadata !258, null}
!262 = metadata !{i32 268, i32 0, metadata !256, null}
!263 = metadata !{i32 269, i32 0, metadata !256, null}
!264 = metadata !{i32 270, i32 0, metadata !256, null}
!265 = metadata !{i32 273, i32 0, metadata !144, null}
!266 = metadata !{i32 274, i32 0, metadata !144, null}
!267 = metadata !{i32 275, i32 0, metadata !144, null}
!268 = metadata !{i32 334, i32 0, metadata !57, null}
!269 = metadata !{i32 338, i32 0, metadata !57, null}
!270 = metadata !{i32 340, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !57, i32 340, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!272 = metadata !{i32 341, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !271, i32 341, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!274 = metadata !{i32 343, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 342, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!276 = metadata !{i32 344, i32 0, metadata !275, null}
!277 = metadata !{i32 345, i32 0, metadata !275, null}
!278 = metadata !{i32 347, i32 0, metadata !57, null}
!279 = metadata !{i32 348, i32 0, metadata !57, null}
!280 = metadata !{i32 366, i32 0, metadata !69, null}
!281 = metadata !{i32 370, i32 0, metadata !69, null}
!282 = metadata !{i32 373, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !69, i32 373, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!284 = metadata !{i32 374, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !283, i32 374, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!286 = metadata !{i32 376, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !285, i32 375, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!288 = metadata !{i32 377, i32 0, metadata !287, null}
!289 = metadata !{i32 378, i32 0, metadata !287, null}
!290 = metadata !{i32 380, i32 0, metadata !69, null}
!291 = metadata !{i32 381, i32 0, metadata !69, null}
!292 = metadata !{i32 401, i32 0, metadata !81, null}
!293 = metadata !{i32 407, i32 0, metadata !81, null}
!294 = metadata !{i32 408, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !81, i32 408, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!296 = metadata !{i32 410, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !295, i32 409, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!298 = metadata !{i32 411, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !297, i32 410, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!300 = metadata !{i32 412, i32 0, metadata !299, null}
!301 = metadata !{i32 414, i32 0, metadata !297, null}
!302 = metadata !{i32 416, i32 0, metadata !81, null}
!303 = metadata !{i32 417, i32 0, metadata !81, null}
!304 = metadata !{i32 443, i32 0, metadata !91, null}
!305 = metadata !{i32 448, i32 0, metadata !91, null}
!306 = metadata !{i32 451, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !91, i32 451, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!308 = metadata !{i32 453, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !307, i32 452, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!310 = metadata !{i32 454, i32 0, metadata !309, null}
!311 = metadata !{i32 454, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !309, i32 454, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!313 = metadata !{i32 455, i32 0, metadata !309, null}
!314 = metadata !{i32 457, i32 0, metadata !91, null}
!315 = metadata !{i32 458, i32 0, metadata !91, null}
!316 = metadata !{i32 475, i32 0, metadata !103, null}
!317 = metadata !{i32 478, i32 0, metadata !103, null}
!318 = metadata !{i32 485, i32 0, metadata !103, null}
!319 = metadata !{i32 487, i32 0, metadata !128, null}
!320 = metadata !{i32 491, i32 0, metadata !126, null}
!321 = metadata !{i32 501, i32 0, metadata !127, null}
!322 = metadata !{i32 489, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !127, i32 489, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!324 = metadata !{i32 493, i32 0, metadata !125, null}
!325 = metadata !{metadata !"short", metadata !187}
!326 = metadata !{i32 494, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !123, i32 494, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!328 = metadata !{i32 494, i32 0, metadata !123, null}
!329 = metadata !{i32 495, i32 0, metadata !124, null}
!330 = metadata !{i32 496, i32 0, metadata !124, null}
!331 = metadata !{i32 497, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !125, i32 496, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!333 = metadata !{i32 504, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !335, i32 503, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!335 = metadata !{i32 786443, metadata !1, metadata !127, i32 501, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!336 = metadata !{i32 504, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !334, i32 504, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c]
!338 = metadata !{i32 undef}
!339 = metadata !{i32 503, i32 0, metadata !334, null}
!340 = metadata !{i32 505, i32 0, metadata !335, null}
!341 = metadata !{i32 506, i32 0, metadata !335, null}
!342 = metadata !{i32 508, i32 0, metadata !103, null}
!343 = metadata !{i32 510, i32 0, metadata !103, null}
