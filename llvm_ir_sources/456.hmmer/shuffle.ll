; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"hey, you didn't end on s_f.\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"hey, pos (%d) != len (%d).\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @StrShuffle(i8* %s1, i8* %s2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !28), !dbg !153
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !29), !dbg !153
  %cmp = icmp eq i8* %s1, %s2, !dbg !154
  br i1 %cmp, label %if.end, label %if.then, !dbg !154

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %s1, i8* %s2) #7, !dbg !154
  br label %if.end, !dbg !154

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i64 @strlen(i8* %s1) #8, !dbg !155
  %conv = trunc i64 %call1 to i32, !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !30), !dbg !155
  %cmp226 = icmp sgt i32 %conv, 1, !dbg !155
  br i1 %cmp226, label %for.body.lr.ph, label %for.end, !dbg !155

for.body.lr.ph:                                   ; preds = %if.end
  %sext = shl i64 %call1, 32
  %0 = ashr exact i64 %sext, 32
  br label %for.body, !dbg !155

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call4 = tail call double @sre_random() #7, !dbg !157
  %1 = trunc i64 %indvars.iv to i32, !dbg !157
  %conv5 = sitofp i32 %1 to double, !dbg !157
  %mul = fmul double %conv5, %call4, !dbg !157
  %conv6 = fptosi double %mul to i32, !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %conv6}, i64 0, metadata !31), !dbg !157
  %idxprom = sext i32 %conv6 to i64, !dbg !159
  %arrayidx = getelementptr inbounds i8* %s1, i64 %idxprom, !dbg !159
  %2 = load i8* %arrayidx, align 1, !dbg !159, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %2}, i64 0, metadata !32), !dbg !159
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !155
  %arrayidx8 = getelementptr inbounds i8* %s1, i64 %indvars.iv.next, !dbg !162
  %3 = load i8* %arrayidx8, align 1, !dbg !162, !tbaa !160
  store i8 %3, i8* %arrayidx, align 1, !dbg !162, !tbaa !160
  store i8 %2, i8* %arrayidx8, align 1, !dbg !163, !tbaa !160
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !155
  %cmp2 = icmp sgt i32 %4, 1, !dbg !155
  br i1 %cmp2, label %for.body, label %for.end, !dbg !155

for.end:                                          ; preds = %for.body, %if.end
  ret i32 1, !dbg !164
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare double @sre_random() #4

; Function Attrs: nounwind optsize uwtable
define i32 @StrDPShuffle(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %Z = alloca [26 x i8], align 16
  %Z416 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 0
  call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !35), !dbg !165
  call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !36), !dbg !165
  call void @llvm.dbg.declare(metadata !{[26 x i8]* %Z}, metadata !48), !dbg !166
  %call = call i64 @strlen(i8* %s2) #8, !dbg !167
  %conv = trunc i64 %call to i32, !dbg !167
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !37), !dbg !167
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !38), !dbg !168
  %cmp403 = icmp sgt i32 %conv, 0, !dbg !168
  br i1 %cmp403, label %for.body.lr.ph, label %for.end, !dbg !168

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call i16** @__ctype_b_loc() #9, !dbg !170
  %0 = load i16** %call4, align 8, !dbg !170, !tbaa !171
  br label %for.body, !dbg !168

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next432 to i32, !dbg !168
  %cmp = icmp slt i32 %1, %conv, !dbg !168
  br i1 %cmp, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv431 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next432, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %s2, i64 %indvars.iv431, !dbg !170
  %2 = load i8* %arrayidx, align 1, !dbg !170, !tbaa !160
  %idxprom3 = sext i8 %2 to i64, !dbg !170
  %arrayidx5 = getelementptr inbounds i16* %0, i64 %idxprom3, !dbg !170
  %3 = load i16* %arrayidx5, align 2, !dbg !170, !tbaa !172
  %and = and i16 %3, 1024, !dbg !170
  %tobool = icmp eq i16 %and, 0, !dbg !170
  %indvars.iv.next432 = add i64 %indvars.iv431, 1, !dbg !168
  br i1 %tobool, label %return, label %for.cond, !dbg !170

for.end:                                          ; preds = %for.cond, %entry
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 127, i64 208) #7, !dbg !173
  %4 = bitcast i8* %call7 to i8**, !dbg !173
  call void @llvm.dbg.value(metadata !{i8** %4}, i64 0, metadata !41), !dbg !173
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 128, i64 104) #7, !dbg !174
  %5 = bitcast i8* %call8 to i32*, !dbg !174
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !43), !dbg !174
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !39), !dbg !175
  %sub = shl i64 %call, 32, !dbg !177
  %sext387 = add i64 %sub, -4294967296, !dbg !177
  %conv13 = ashr exact i64 %sext387, 32, !dbg !177
  br label %for.body12, !dbg !175

for.body12:                                       ; preds = %for.body12, %for.end
  %indvars.iv427 = phi i64 [ 0, %for.end ], [ %indvars.iv.next428, %for.body12 ]
  %call14 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 131, i64 %conv13) #7, !dbg !177
  %arrayidx16 = getelementptr inbounds i8** %4, i64 %indvars.iv427, !dbg !177
  store i8* %call14, i8** %arrayidx16, align 8, !dbg !177, !tbaa !171
  %arrayidx18 = getelementptr inbounds i32* %5, i64 %indvars.iv427, !dbg !179
  store i32 0, i32* %arrayidx18, align 4, !dbg !179, !tbaa !180
  %indvars.iv.next428 = add i64 %indvars.iv427, 1, !dbg !175
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32, !dbg !175
  %exitcond430 = icmp eq i32 %lftr.wideiv429, 26, !dbg !175
  br i1 %exitcond430, label %for.end21, label %for.body12, !dbg !175

for.end21:                                        ; preds = %for.body12
  %6 = load i8* %s2, align 1, !dbg !181, !tbaa !160
  %conv23 = sext i8 %6 to i32, !dbg !181
  %call24 = call i32 @toupper(i32 %conv23) #7, !dbg !181
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !54), !dbg !181
  call void @llvm.dbg.value(metadata !{i32 %sub25}, i64 0, metadata !39), !dbg !183
  call void @llvm.dbg.value(metadata !184, i64 0, metadata !38), !dbg !185
  %cmp27399 = icmp sgt i32 %conv, 1, !dbg !185
  br i1 %cmp27399, label %for.body29.lr.ph, label %for.end48, !dbg !185

for.body29.lr.ph:                                 ; preds = %for.end21
  %sub25 = add nsw i32 %call24, -65, !dbg !183
  br label %for.body29, !dbg !185

for.body29:                                       ; preds = %for.body29, %for.body29.lr.ph
  %indvars.iv423 = phi i64 [ 1, %for.body29.lr.ph ], [ %indvars.iv.next424, %for.body29 ]
  %x.1400 = phi i32 [ %sub25, %for.body29.lr.ph ], [ %sub35, %for.body29 ]
  %arrayidx32 = getelementptr inbounds i8* %s2, i64 %indvars.iv423, !dbg !186
  %7 = load i8* %arrayidx32, align 1, !dbg !186, !tbaa !160
  %conv33 = sext i8 %7 to i32, !dbg !186
  %call34 = call i32 @toupper(i32 %conv33) #7, !dbg !186
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !56), !dbg !186
  %sub35 = add nsw i32 %call34, -65, !dbg !188
  call void @llvm.dbg.value(metadata !{i32 %sub35}, i64 0, metadata !40), !dbg !188
  %conv36 = trunc i32 %sub35 to i8, !dbg !189
  %idxprom37 = sext i32 %x.1400 to i64, !dbg !189
  %arrayidx38 = getelementptr inbounds i32* %5, i64 %idxprom37, !dbg !189
  %8 = load i32* %arrayidx38, align 4, !dbg !189, !tbaa !180
  %idxprom39 = sext i32 %8 to i64, !dbg !189
  %arrayidx41 = getelementptr inbounds i8** %4, i64 %idxprom37, !dbg !189
  %9 = load i8** %arrayidx41, align 8, !dbg !189, !tbaa !171
  %arrayidx42 = getelementptr inbounds i8* %9, i64 %idxprom39, !dbg !189
  store i8 %conv36, i8* %arrayidx42, align 1, !dbg !189, !tbaa !160
  %10 = load i32* %arrayidx38, align 4, !dbg !190, !tbaa !180
  %inc45 = add nsw i32 %10, 1, !dbg !190
  store i32 %inc45, i32* %arrayidx38, align 4, !dbg !190, !tbaa !180
  call void @llvm.dbg.value(metadata !{i32 %sub35}, i64 0, metadata !39), !dbg !191
  %indvars.iv.next424 = add i64 %indvars.iv423, 1, !dbg !185
  %lftr.wideiv425 = trunc i64 %indvars.iv.next424 to i32, !dbg !185
  %exitcond426 = icmp eq i32 %lftr.wideiv425, %conv, !dbg !185
  br i1 %exitcond426, label %for.end48, label %for.body29, !dbg !185

for.end48:                                        ; preds = %for.body29, %for.end21
  %arrayidx52 = getelementptr inbounds i8* %s2, i64 %conv13, !dbg !192
  %11 = load i8* %arrayidx52, align 1, !dbg !192, !tbaa !160
  %conv53 = sext i8 %11 to i32, !dbg !192
  %call54 = call i32 @toupper(i32 %conv53) #7, !dbg !192
  call void @llvm.dbg.value(metadata !{i32 %call54}, i64 0, metadata !60), !dbg !192
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !53), !dbg !194
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !39), !dbg !195
  %sub55 = shl i32 %call54, 24, !dbg !198
  %sext386 = add i32 %sub55, -1090519040, !dbg !198
  %conv66 = ashr exact i32 %sext386, 24, !dbg !198
  %idxprom114 = sext i32 %conv66 to i64, !dbg !200
  %arrayidx115 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %idxprom114, !dbg !200
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc101, %if.end161, %for.end48
  %x.2 = phi i32 [ 0, %for.end48 ], [ %inc102, %for.inc101 ], [ 0, %if.end161 ]
  %cmp59 = icmp slt i32 %x.2, 26, !dbg !195
  br i1 %cmp59, label %for.body61, label %for.cond104.preheader, !dbg !195

for.cond104.preheader:                            ; preds = %for.cond58
  call void @llvm.memset.p0i8.i64(i8* %Z416, i8 0, i64 26, i32 16, i1 false), !dbg !201
  call void @llvm.dbg.value(metadata !184, i64 0, metadata !52), !dbg !200
  store i8 1, i8* %arrayidx115, align 1, !dbg !200, !tbaa !160
  br label %for.body122, !dbg !203

for.body61:                                       ; preds = %for.cond58
  %idxprom62 = sext i32 %x.2 to i64, !dbg !198
  %arrayidx63 = getelementptr inbounds i32* %5, i64 %idxprom62, !dbg !198
  %12 = load i32* %arrayidx63, align 4, !dbg !198, !tbaa !180
  %cmp64 = icmp eq i32 %12, 0, !dbg !198
  %cmp67 = icmp eq i32 %x.2, %conv66, !dbg !198
  %or.cond433 = or i1 %cmp64, %cmp67, !dbg !198
  br i1 %or.cond433, label %for.inc101, label %if.end70, !dbg !198

if.end70:                                         ; preds = %for.body61
  %call71 = call double @sre_random() #7, !dbg !204
  %13 = load i32* %arrayidx63, align 4, !dbg !204, !tbaa !180
  %conv74 = sitofp i32 %13 to double, !dbg !204
  %mul75 = fmul double %call71, %conv74, !dbg !204
  %conv76 = fptosi double %mul75 to i32, !dbg !204
  call void @llvm.dbg.value(metadata !{i32 %conv76}, i64 0, metadata !38), !dbg !204
  %idxprom77 = sext i32 %conv76 to i64, !dbg !205
  %arrayidx79 = getelementptr inbounds i8** %4, i64 %idxprom62, !dbg !205
  %14 = load i8** %arrayidx79, align 8, !dbg !205, !tbaa !171
  %arrayidx80 = getelementptr inbounds i8* %14, i64 %idxprom77, !dbg !205
  %15 = load i8* %arrayidx80, align 1, !dbg !205, !tbaa !160
  %sub84 = add nsw i32 %13, -1, !dbg !206
  %idxprom85 = sext i32 %sub84 to i64, !dbg !206
  %arrayidx88 = getelementptr inbounds i8* %14, i64 %idxprom85, !dbg !206
  %16 = load i8* %arrayidx88, align 1, !dbg !206, !tbaa !160
  store i8 %16, i8* %arrayidx80, align 1, !dbg !206, !tbaa !160
  %17 = load i32* %arrayidx63, align 4, !dbg !207, !tbaa !180
  %sub96 = add nsw i32 %17, -1, !dbg !207
  %idxprom97 = sext i32 %sub96 to i64, !dbg !207
  %18 = load i8** %arrayidx79, align 8, !dbg !207, !tbaa !171
  %arrayidx100 = getelementptr inbounds i8* %18, i64 %idxprom97, !dbg !207
  store i8 %15, i8* %arrayidx100, align 1, !dbg !207, !tbaa !160
  br label %for.inc101, !dbg !208

for.inc101:                                       ; preds = %for.body61, %if.end70
  %inc102 = add nsw i32 %x.2, 1, !dbg !195
  call void @llvm.dbg.value(metadata !{i32 %inc102}, i64 0, metadata !39), !dbg !195
  br label %for.cond58, !dbg !195

while.cond116.loopexit:                           ; preds = %for.inc145
  %tobool117 = icmp eq i32 %keep_connecting.2, 0, !dbg !203
  br i1 %tobool117, label %for.body151, label %for.body122, !dbg !203

for.body122:                                      ; preds = %while.cond116.loopexit, %for.cond104.preheader, %for.inc145
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %for.inc145 ], [ 0, %for.cond104.preheader ], [ 0, %while.cond116.loopexit ]
  %keep_connecting.1396 = phi i32 [ %keep_connecting.2, %for.inc145 ], [ 0, %for.cond104.preheader ], [ 0, %while.cond116.loopexit ]
  %arrayidx132 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %indvars.iv417, !dbg !209
  %19 = load i8* %arrayidx132, align 1, !dbg !209, !tbaa !160
  %cmp134 = icmp eq i8 %19, 0, !dbg !209
  br i1 %cmp134, label %land.lhs.true, label %for.inc145, !dbg !209

land.lhs.true:                                    ; preds = %for.body122
  %arrayidx124 = getelementptr inbounds i32* %5, i64 %indvars.iv417, !dbg !213
  %20 = load i32* %arrayidx124, align 4, !dbg !213, !tbaa !180
  %arrayidx128 = getelementptr inbounds i8** %4, i64 %indvars.iv417, !dbg !213
  %sub125 = add nsw i32 %20, -1, !dbg !213
  %21 = load i8** %arrayidx128, align 8, !dbg !213, !tbaa !171
  %idxprom126 = sext i32 %sub125 to i64, !dbg !213
  %arrayidx129 = getelementptr inbounds i8* %21, i64 %idxprom126, !dbg !213
  %22 = load i8* %arrayidx129, align 1, !dbg !213, !tbaa !160
  %idxprom136 = sext i8 %22 to i64, !dbg !209
  %arrayidx137 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %idxprom136, !dbg !209
  %23 = load i8* %arrayidx137, align 1, !dbg !209, !tbaa !160
  %cmp139 = icmp eq i8 %23, 1, !dbg !209
  br i1 %cmp139, label %if.then141, label %for.inc145, !dbg !209

if.then141:                                       ; preds = %land.lhs.true
  store i8 1, i8* %arrayidx132, align 1, !dbg !214, !tbaa !160
  call void @llvm.dbg.value(metadata !184, i64 0, metadata !52), !dbg !216
  br label %for.inc145, !dbg !217

for.inc145:                                       ; preds = %for.body122, %land.lhs.true, %if.then141
  %keep_connecting.2 = phi i32 [ 1, %if.then141 ], [ %keep_connecting.1396, %land.lhs.true ], [ %keep_connecting.1396, %for.body122 ]
  %indvars.iv.next418 = add i64 %indvars.iv417, 1, !dbg !218
  %lftr.wideiv419 = trunc i64 %indvars.iv.next418 to i32, !dbg !218
  %exitcond420 = icmp eq i32 %lftr.wideiv419, 26, !dbg !218
  br i1 %exitcond420, label %while.cond116.loopexit, label %for.body122, !dbg !218

for.body151:                                      ; preds = %while.cond116.loopexit, %for.inc169
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %for.inc169 ], [ 0, %while.cond116.loopexit ]
  %arrayidx153 = getelementptr inbounds i32* %5, i64 %indvars.iv421, !dbg !219
  %24 = load i32* %arrayidx153, align 4, !dbg !219, !tbaa !180
  %cmp154 = icmp eq i32 %24, 0, !dbg !219
  %25 = trunc i64 %indvars.iv421 to i32, !dbg !219
  %cmp158 = icmp eq i32 %25, %conv66, !dbg !219
  %or.cond = or i1 %cmp154, %cmp158, !dbg !219
  br i1 %or.cond, label %for.inc169, label %if.end161, !dbg !219

if.end161:                                        ; preds = %for.body151
  %arrayidx163 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %indvars.iv421, !dbg !222
  %26 = load i8* %arrayidx163, align 1, !dbg !222, !tbaa !160
  %cmp165 = icmp eq i8 %26, 0, !dbg !222
  br i1 %cmp165, label %for.cond58, label %for.inc169, !dbg !222

for.inc169:                                       ; preds = %if.end161, %for.body151
  %indvars.iv.next422 = add i64 %indvars.iv421, 1, !dbg !223
  %27 = trunc i64 %indvars.iv.next422 to i32, !dbg !223
  %cmp149 = icmp slt i32 %27, 26, !dbg !223
  br i1 %cmp149, label %for.body151, label %for.body176, !dbg !223

for.body176:                                      ; preds = %for.inc169, %for.inc210
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %for.inc210 ], [ 0, %for.inc169 ]
  %arrayidx178 = getelementptr inbounds i32* %5, i64 %indvars.iv410, !dbg !224
  %28 = load i32* %arrayidx178, align 4, !dbg !224, !tbaa !180
  %n.0390 = add i32 %28, -1, !dbg !224
  %cmp181391 = icmp sgt i32 %n.0390, 1, !dbg !224
  br i1 %cmp181391, label %for.body183.lr.ph, label %for.inc210, !dbg !224

for.body183.lr.ph:                                ; preds = %for.body176
  %arrayidx190 = getelementptr inbounds i8** %4, i64 %indvars.iv410, !dbg !227
  %29 = sext i32 %n.0390 to i64
  br label %for.body183, !dbg !224

for.body183:                                      ; preds = %for.body183.lr.ph, %for.body183
  %indvars.iv407 = phi i64 [ %29, %for.body183.lr.ph ], [ %indvars.iv.next408, %for.body183 ]
  %n.0393 = phi i32 [ %n.0390, %for.body183.lr.ph ], [ %n.0, %for.body183 ]
  %n.0.in392 = phi i32 [ %28, %for.body183.lr.ph ], [ %30, %for.body183 ]
  %call184 = call double @sre_random() #7, !dbg !229
  %30 = trunc i64 %indvars.iv407 to i32, !dbg !229
  %conv185 = sitofp i32 %30 to double, !dbg !229
  %mul186 = fmul double %conv185, %call184, !dbg !229
  %conv187 = fptosi double %mul186 to i32, !dbg !229
  call void @llvm.dbg.value(metadata !{i32 %conv187}, i64 0, metadata !38), !dbg !229
  %idxprom188 = sext i32 %conv187 to i64, !dbg !227
  %31 = load i8** %arrayidx190, align 8, !dbg !227, !tbaa !171
  %arrayidx191 = getelementptr inbounds i8* %31, i64 %idxprom188, !dbg !227
  %32 = load i8* %arrayidx191, align 1, !dbg !227, !tbaa !160
  %sub193 = add nsw i32 %n.0.in392, -2, !dbg !230
  %idxprom194 = sext i32 %sub193 to i64, !dbg !230
  %arrayidx197 = getelementptr inbounds i8* %31, i64 %idxprom194, !dbg !230
  %33 = load i8* %arrayidx197, align 1, !dbg !230, !tbaa !160
  store i8 %33, i8* %arrayidx191, align 1, !dbg !230, !tbaa !160
  %34 = load i8** %arrayidx190, align 8, !dbg !231, !tbaa !171
  %arrayidx207 = getelementptr inbounds i8* %34, i64 %idxprom194, !dbg !231
  store i8 %32, i8* %arrayidx207, align 1, !dbg !231, !tbaa !160
  %n.0 = add nsw i32 %n.0393, -1, !dbg !224
  %cmp181 = icmp sgt i32 %n.0, 1, !dbg !224
  %indvars.iv.next408 = add i64 %indvars.iv407, -1, !dbg !224
  br i1 %cmp181, label %for.body183, label %for.inc210, !dbg !224

for.inc210:                                       ; preds = %for.body183, %for.body176
  %indvars.iv.next411 = add i64 %indvars.iv410, 1, !dbg !232
  %lftr.wideiv = trunc i64 %indvars.iv.next411 to i32, !dbg !232
  %exitcond = icmp eq i32 %lftr.wideiv, 26, !dbg !232
  br i1 %exitcond, label %for.end212, label %for.body176, !dbg !232

for.end212:                                       ; preds = %for.inc210
  %call213 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 240, i64 104) #7, !dbg !233
  %35 = bitcast i8* %call213 to i32*, !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %35}, i64 0, metadata !45), !dbg !233
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !39), !dbg !234
  call void @llvm.memset.p0i8.i64(i8* %call213, i8 0, i64 104, i32 4, i1 false), !dbg !234
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !38), !dbg !236
  %36 = load i8* %s2, align 1, !dbg !237, !tbaa !160
  %conv225 = sext i8 %36 to i32, !dbg !237
  %call226 = call i32 @toupper(i32 %conv225) #7, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %call226}, i64 0, metadata !62), !dbg !237
  %sub227 = add nsw i32 %call226, -65, !dbg !239
  call void @llvm.dbg.value(metadata !{i32 %sub227}, i64 0, metadata !39), !dbg !239
  br label %while.body229, !dbg !240

while.body229:                                    ; preds = %while.body229, %for.end212
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body229 ], [ 0, %for.end212 ]
  %x.8 = phi i32 [ %conv240, %while.body229 ], [ %sub227, %for.end212 ]
  %pos.2 = phi i32 [ %inc231, %while.body229 ], [ 0, %for.end212 ]
  %add = add nsw i32 %x.8, 65, !dbg !241
  %conv230 = trunc i32 %add to i8, !dbg !241
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !243
  %inc231 = add nsw i32 %pos.2, 1, !dbg !241
  call void @llvm.dbg.value(metadata !{i32 %inc231}, i64 0, metadata !38), !dbg !241
  %arrayidx233 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !241
  store i8 %conv230, i8* %arrayidx233, align 1, !dbg !241, !tbaa !160
  %idxprom234 = sext i32 %x.8 to i64, !dbg !244
  %arrayidx235 = getelementptr inbounds i32* %35, i64 %idxprom234, !dbg !244
  %37 = load i32* %arrayidx235, align 4, !dbg !244, !tbaa !180
  %idxprom236 = sext i32 %37 to i64, !dbg !244
  %arrayidx238 = getelementptr inbounds i8** %4, i64 %idxprom234, !dbg !244
  %38 = load i8** %arrayidx238, align 8, !dbg !244, !tbaa !171
  %arrayidx239 = getelementptr inbounds i8* %38, i64 %idxprom236, !dbg !244
  %39 = load i8* %arrayidx239, align 1, !dbg !244, !tbaa !160
  %conv240 = sext i8 %39 to i32, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %conv240}, i64 0, metadata !40), !dbg !244
  %inc243 = add nsw i32 %37, 1, !dbg !245
  store i32 %inc243, i32* %arrayidx235, align 4, !dbg !245, !tbaa !180
  call void @llvm.dbg.value(metadata !{i32 %conv240}, i64 0, metadata !39), !dbg !246
  %idxprom244 = sext i8 %39 to i64, !dbg !243
  %arrayidx245 = getelementptr inbounds i32* %35, i64 %idxprom244, !dbg !243
  %40 = load i32* %arrayidx245, align 4, !dbg !243, !tbaa !180
  %arrayidx247 = getelementptr inbounds i32* %5, i64 %idxprom244, !dbg !243
  %41 = load i32* %arrayidx247, align 4, !dbg !243, !tbaa !180
  %cmp248 = icmp eq i32 %40, %41, !dbg !243
  br i1 %cmp248, label %while.end252, label %while.body229, !dbg !243

while.end252:                                     ; preds = %while.body229
  %add254 = add nsw i32 %conv66, 65, !dbg !247
  %conv255 = trunc i32 %add254 to i8, !dbg !247
  %inc256 = add nsw i32 %pos.2, 2, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc256}, i64 0, metadata !38), !dbg !247
  %idxprom257 = sext i32 %inc231 to i64, !dbg !247
  %arrayidx258 = getelementptr inbounds i8* %s1, i64 %idxprom257, !dbg !247
  store i8 %conv255, i8* %arrayidx258, align 1, !dbg !247, !tbaa !160
  %idxprom259 = sext i32 %inc256 to i64, !dbg !248
  %arrayidx260 = getelementptr inbounds i8* %s1, i64 %idxprom259, !dbg !248
  store i8 0, i8* %arrayidx260, align 1, !dbg !248, !tbaa !160
  %cmp262 = icmp eq i32 %conv240, %conv66, !dbg !249
  br i1 %cmp262, label %if.end265, label %if.then264, !dbg !249

if.then264:                                       ; preds = %while.end252
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !249
  br label %if.end265, !dbg !249

if.end265:                                        ; preds = %while.end252, %if.then264
  %cmp266 = icmp eq i32 %inc256, %conv, !dbg !250
  br i1 %cmp266, label %if.end269, label %if.then268, !dbg !250

if.then268:                                       ; preds = %if.end265
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0), i32 %inc256, i32 %conv) #7, !dbg !250
  br label %if.end269, !dbg !250

if.end269:                                        ; preds = %if.end265, %if.then268
  call void @Free2DArray(i8** %4, i32 26) #7, !dbg !251
  call void @free(i8* %call8) #7, !dbg !252
  call void @free(i8* %call213) #7, !dbg !253
  br label %return, !dbg !254

return:                                           ; preds = %for.body, %if.end269
  %retval.0 = phi i32 [ 1, %if.end269 ], [ 0, %for.body ]
  ret i32 %retval.0, !dbg !254
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #4

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @StrMarkov0(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %p = alloca [26 x float], align 16
  call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !66), !dbg !255
  call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !67), !dbg !255
  %0 = bitcast [26 x float]* %p to i8*, !dbg !256
  call void @llvm.lifetime.start(i64 104, i8* %0) #6, !dbg !256
  call void @llvm.dbg.declare(metadata !{[26 x float]* %p}, metadata !70), !dbg !256
  %call = call i64 @strlen(i8* %s2) #8, !dbg !257
  %conv = trunc i64 %call to i32, !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !68), !dbg !257
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !69), !dbg !258
  %cmp56 = icmp sgt i32 %conv, 0, !dbg !258
  br i1 %cmp56, label %for.body.lr.ph, label %for.end.thread, !dbg !258

for.end.thread:                                   ; preds = %entry
  %arraydecay64 = getelementptr inbounds [26 x float]* %p, i64 0, i64 0, !dbg !260
  call void @FSet(float* %arraydecay64, i32 26, float 0.000000e+00) #7, !dbg !260
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !69), !dbg !261
  br label %for.end21.thread, !dbg !261

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call i16** @__ctype_b_loc() #9, !dbg !262
  %1 = load i16** %call4, align 8, !dbg !262, !tbaa !171
  br label %for.body, !dbg !258

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next63 to i32, !dbg !258
  %cmp = icmp slt i32 %2, %conv, !dbg !258
  br i1 %cmp, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv62 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next63, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %s2, i64 %indvars.iv62, !dbg !262
  %3 = load i8* %arrayidx, align 1, !dbg !262, !tbaa !160
  %idxprom3 = sext i8 %3 to i64, !dbg !262
  %arrayidx5 = getelementptr inbounds i16* %1, i64 %idxprom3, !dbg !262
  %4 = load i16* %arrayidx5, align 2, !dbg !262, !tbaa !172
  %and = and i16 %4, 1024, !dbg !262
  %tobool = icmp eq i16 %and, 0, !dbg !262
  %indvars.iv.next63 = add i64 %indvars.iv62, 1, !dbg !258
  br i1 %tobool, label %cleanup, label %for.cond, !dbg !262

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [26 x float]* %p, i64 0, i64 0, !dbg !260
  call void @FSet(float* %arraydecay, i32 26, float 0.000000e+00) #7, !dbg !260
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !69), !dbg !261
  br i1 %cmp56, label %for.body10, label %for.end21.thread, !dbg !261

for.body10:                                       ; preds = %for.end, %for.body10
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body10 ], [ 0, %for.end ]
  %arrayidx12 = getelementptr inbounds i8* %s2, i64 %indvars.iv58, !dbg !263
  %5 = load i8* %arrayidx12, align 1, !dbg !263, !tbaa !160
  %conv13 = sext i8 %5 to i32, !dbg !263
  %call14 = call i32 @toupper(i32 %conv13) #7, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !73), !dbg !263
  %sub = add nsw i32 %call14, -65, !dbg !265
  %idxprom15 = sext i32 %sub to i64, !dbg !265
  %arrayidx16 = getelementptr inbounds [26 x float]* %p, i64 0, i64 %idxprom15, !dbg !265
  %6 = load float* %arrayidx16, align 4, !dbg !265, !tbaa !266
  %conv18 = fadd float %6, 1.000000e+00, !dbg !265
  store float %conv18, float* %arrayidx16, align 4, !dbg !265, !tbaa !266
  %indvars.iv.next59 = add i64 %indvars.iv58, 1, !dbg !261
  %lftr.wideiv60 = trunc i64 %indvars.iv.next59 to i32, !dbg !261
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %conv, !dbg !261
  br i1 %exitcond61, label %for.end21, label %for.body10, !dbg !261

for.end21.thread:                                 ; preds = %for.end.thread, %for.end
  %arraydecay65.ph = phi float* [ %arraydecay64, %for.end.thread ], [ %arraydecay, %for.end ]
  call void @FNorm(float* %arraydecay65.ph, i32 26) #7, !dbg !267
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !69), !dbg !268
  br label %for.end35, !dbg !268

for.end21:                                        ; preds = %for.body10
  call void @FNorm(float* %arraydecay, i32 26) #7, !dbg !267
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !69), !dbg !268
  br i1 %cmp56, label %for.body26, label %for.end35, !dbg !268

for.body26:                                       ; preds = %for.end21, %for.body26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body26 ], [ 0, %for.end21 ]
  %call28 = call i32 @FChoose(float* %arraydecay, i32 26) #7, !dbg !270
  %add29 = add nsw i32 %call28, 65, !dbg !270
  %conv30 = trunc i32 %add29 to i8, !dbg !270
  %arrayidx32 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !270
  store i8 %conv30, i8* %arrayidx32, align 1, !dbg !270, !tbaa !160
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !268
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !69), !dbg !268
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !268
  %exitcond = icmp eq i32 %lftr.wideiv, %conv, !dbg !268
  br i1 %exitcond, label %for.cond23.for.end35_crit_edge, label %for.body26, !dbg !268

for.cond23.for.end35_crit_edge:                   ; preds = %for.body26
  %sext = shl i64 %call, 32, !dbg !268
  %phitmp = ashr exact i64 %sext, 32, !dbg !268
  br label %for.end35, !dbg !268

for.end35:                                        ; preds = %for.end21.thread, %for.cond23.for.end35_crit_edge, %for.end21
  %pos.2.lcssa = phi i64 [ %phitmp, %for.cond23.for.end35_crit_edge ], [ 0, %for.end21 ], [ 0, %for.end21.thread ]
  %arrayidx37 = getelementptr inbounds i8* %s1, i64 %pos.2.lcssa, !dbg !271
  store i8 0, i8* %arrayidx37, align 1, !dbg !271, !tbaa !160
  br label %cleanup, !dbg !272

cleanup:                                          ; preds = %for.body, %for.end35
  %retval.0 = phi i32 [ 1, %for.end35 ], [ 0, %for.body ]
  call void @llvm.lifetime.end(i64 104, i8* %0) #6, !dbg !272
  ret i32 %retval.0, !dbg !273
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #4

; Function Attrs: optsize
declare void @FNorm(float*, i32) #4

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @StrMarkov1(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %p = alloca [26 x [26 x float]], align 16
  call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !78), !dbg !274
  call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !79), !dbg !274
  %0 = bitcast [26 x [26 x float]]* %p to i8*, !dbg !275
  call void @llvm.lifetime.start(i64 2704, i8* %0) #6, !dbg !275
  call void @llvm.dbg.declare(metadata !{[26 x [26 x float]]* %p}, metadata !85), !dbg !275
  %call = call i64 @strlen(i8* %s2) #8, !dbg !276
  %conv = trunc i64 %call to i32, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !80), !dbg !276
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !81), !dbg !277
  %cmp103 = icmp sgt i32 %conv, 0, !dbg !277
  br i1 %cmp103, label %for.body.lr.ph, label %for.body10, !dbg !277

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call i16** @__ctype_b_loc() #9, !dbg !279
  %1 = load i16** %call4, align 8, !dbg !279, !tbaa !171
  br label %for.body, !dbg !277

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next118 to i32, !dbg !277
  %cmp = icmp slt i32 %2, %conv, !dbg !277
  br i1 %cmp, label %for.body, label %for.body10, !dbg !277

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv117 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next118, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %s2, i64 %indvars.iv117, !dbg !279
  %3 = load i8* %arrayidx, align 1, !dbg !279, !tbaa !160
  %idxprom3 = sext i8 %3 to i64, !dbg !279
  %arrayidx5 = getelementptr inbounds i16* %1, i64 %idxprom3, !dbg !279
  %4 = load i16* %arrayidx5, align 2, !dbg !279, !tbaa !172
  %and = and i16 %4, 1024, !dbg !279
  %tobool = icmp eq i16 %and, 0, !dbg !279
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !277
  br i1 %tobool, label %cleanup, label %for.cond, !dbg !279

for.body10:                                       ; preds = %entry, %for.cond, %for.body10
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.body10 ], [ 0, %for.cond ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %indvars.iv113, i64 0, !dbg !280
  call void @FSet(float* %arraydecay, i32 26, float 0.000000e+00) #7, !dbg !280
  %indvars.iv.next114 = add i64 %indvars.iv113, 1, !dbg !280
  %lftr.wideiv115 = trunc i64 %indvars.iv.next114 to i32, !dbg !280
  %exitcond116 = icmp eq i32 %lftr.wideiv115, 26, !dbg !280
  br i1 %exitcond116, label %for.end15, label %for.body10, !dbg !280

for.end15:                                        ; preds = %for.body10
  %5 = load i8* %s2, align 1, !dbg !282, !tbaa !160
  %conv17 = sext i8 %5 to i32, !dbg !282
  %call18 = call i32 @toupper(i32 %conv17) #7, !dbg !282
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !88), !dbg !282
  %sub = add nsw i32 %call18, -65, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !82), !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !84), !dbg !284
  call void @llvm.dbg.value(metadata !184, i64 0, metadata !81), !dbg !285
  %cmp2099 = icmp sgt i32 %conv, 1, !dbg !285
  br i1 %cmp2099, label %for.body22, label %for.body41, !dbg !285

for.body22:                                       ; preds = %for.end15, %for.body22
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body22 ], [ 1, %for.end15 ]
  %x.1100 = phi i32 [ %sub28, %for.body22 ], [ %sub, %for.end15 ]
  %arrayidx25 = getelementptr inbounds i8* %s2, i64 %indvars.iv109, !dbg !286
  %6 = load i8* %arrayidx25, align 1, !dbg !286, !tbaa !160
  %conv26 = sext i8 %6 to i32, !dbg !286
  %call27 = call i32 @toupper(i32 %conv26) #7, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !90), !dbg !286
  %sub28 = add nsw i32 %call27, -65, !dbg !288
  call void @llvm.dbg.value(metadata !{i32 %sub28}, i64 0, metadata !83), !dbg !288
  %idxprom29 = sext i32 %sub28 to i64, !dbg !289
  %idxprom30 = sext i32 %x.1100 to i64, !dbg !289
  %arrayidx32 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %idxprom30, i64 %idxprom29, !dbg !289
  %7 = load float* %arrayidx32, align 4, !dbg !289, !tbaa !266
  %conv34 = fadd float %7, 1.000000e+00, !dbg !289
  store float %conv34, float* %arrayidx32, align 4, !dbg !289, !tbaa !266
  call void @llvm.dbg.value(metadata !{i32 %sub28}, i64 0, metadata !82), !dbg !290
  %indvars.iv.next110 = add i64 %indvars.iv109, 1, !dbg !285
  %lftr.wideiv111 = trunc i64 %indvars.iv.next110 to i32, !dbg !285
  %exitcond112 = icmp eq i32 %lftr.wideiv111, %conv, !dbg !285
  br i1 %exitcond112, label %for.body41, label %for.body22, !dbg !285

for.body41:                                       ; preds = %for.end15, %for.body22, %for.body41
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body41 ], [ 0, %for.body22 ], [ 0, %for.end15 ]
  %arraydecay44 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %indvars.iv105, i64 0, !dbg !291
  call void @FNorm(float* %arraydecay44, i32 26) #7, !dbg !291
  %indvars.iv.next106 = add i64 %indvars.iv105, 1, !dbg !293
  %lftr.wideiv107 = trunc i64 %indvars.iv.next106 to i32, !dbg !293
  %exitcond108 = icmp eq i32 %lftr.wideiv107, 26, !dbg !293
  br i1 %exitcond108, label %for.end47, label %for.body41, !dbg !293

for.end47:                                        ; preds = %for.body41
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !82), !dbg !294
  %conv49 = trunc i32 %call18 to i8, !dbg !295
  store i8 %conv49, i8* %s1, align 1, !dbg !295, !tbaa !160
  call void @llvm.dbg.value(metadata !184, i64 0, metadata !81), !dbg !296
  br i1 %cmp2099, label %for.body54, label %for.end65, !dbg !296

for.body54:                                       ; preds = %for.end47, %for.body54
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body54 ], [ 1, %for.end47 ]
  %x.396 = phi i32 [ %call58, %for.body54 ], [ %sub, %for.end47 ]
  %idxprom55 = sext i32 %x.396 to i64, !dbg !298
  %arraydecay57 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %idxprom55, i64 0, !dbg !298
  %call58 = call i32 @FChoose(float* %arraydecay57, i32 26) #7, !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %call58}, i64 0, metadata !83), !dbg !298
  %add59 = add nsw i32 %call58, 65, !dbg !300
  %conv60 = trunc i32 %add59 to i8, !dbg !300
  %arrayidx62 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !300
  store i8 %conv60, i8* %arrayidx62, align 1, !dbg !300, !tbaa !160
  call void @llvm.dbg.value(metadata !{i32 %call58}, i64 0, metadata !82), !dbg !301
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !81), !dbg !296
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !296
  %exitcond = icmp eq i32 %lftr.wideiv, %conv, !dbg !296
  br i1 %exitcond, label %for.cond51.for.end65_crit_edge, label %for.body54, !dbg !296

for.cond51.for.end65_crit_edge:                   ; preds = %for.body54
  %sext = shl i64 %call, 32, !dbg !296
  %phitmp = ashr exact i64 %sext, 32, !dbg !296
  br label %for.end65, !dbg !296

for.end65:                                        ; preds = %for.cond51.for.end65_crit_edge, %for.end47
  %pos.2.lcssa = phi i64 [ %phitmp, %for.cond51.for.end65_crit_edge ], [ 1, %for.end47 ]
  %arrayidx67 = getelementptr inbounds i8* %s1, i64 %pos.2.lcssa, !dbg !302
  store i8 0, i8* %arrayidx67, align 1, !dbg !302, !tbaa !160
  br label %cleanup, !dbg !303

cleanup:                                          ; preds = %for.body, %for.end65
  %retval.0 = phi i32 [ 1, %for.end65 ], [ 0, %for.body ]
  call void @llvm.lifetime.end(i64 2704, i8* %0) #6, !dbg !303
  ret i32 %retval.0, !dbg !304
}

; Function Attrs: nounwind optsize uwtable
define i32 @StrReverse(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !96), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !97), !dbg !305
  %call = tail call i64 @strlen(i8* %s2) #8, !dbg !306
  %conv = trunc i64 %call to i32, !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !98), !dbg !306
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !99), !dbg !307
  %div = sdiv i32 %conv, 2, !dbg !307
  %cmp34 = icmp sgt i32 %conv, 1, !dbg !307
  br i1 %cmp34, label %for.body.lr.ph, label %for.end, !dbg !307

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i64 %call, 4294967295, !dbg !309
  %0 = icmp sgt i32 %conv, 3, !dbg !307
  br label %for.body, !dbg !307

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %sub2 = sub i64 %sub, %indvars.iv, !dbg !309
  %sext36 = shl i64 %sub2, 32, !dbg !309
  %idxprom = ashr exact i64 %sext36, 32, !dbg !309
  %arrayidx = getelementptr inbounds i8* %s2, i64 %idxprom, !dbg !309
  %1 = load i8* %arrayidx, align 1, !dbg !309, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !100), !dbg !309
  %arrayidx4 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !311
  %2 = load i8* %arrayidx4, align 1, !dbg !311, !tbaa !160
  %arrayidx8 = getelementptr inbounds i8* %s1, i64 %idxprom, !dbg !311
  store i8 %2, i8* %arrayidx8, align 1, !dbg !311, !tbaa !160
  %arrayidx10 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !312
  store i8 %1, i8* %arrayidx10, align 1, !dbg !312, !tbaa !160
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !307
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !307
  %cmp = icmp slt i32 %3, %div, !dbg !307
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !307

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %4 = sext i32 %div to i64, !dbg !307
  %phitmp = select i1 %0, i64 %4, i64 1, !dbg !307
  br label %for.end, !dbg !307

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %pos.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %rem33 = and i32 %conv, 1, !dbg !313
  %tobool = icmp eq i32 %rem33, 0, !dbg !313
  br i1 %tobool, label %if.end, label %if.then, !dbg !313

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds i8* %s2, i64 %pos.0.lcssa, !dbg !314
  %5 = load i8* %arrayidx12, align 1, !dbg !314, !tbaa !160
  %arrayidx14 = getelementptr inbounds i8* %s1, i64 %pos.0.lcssa, !dbg !314
  store i8 %5, i8* %arrayidx14, align 1, !dbg !314, !tbaa !160
  br label %if.end, !dbg !314

if.end:                                           ; preds = %for.end, %if.then
  %sext = shl i64 %call, 32, !dbg !316
  %idxprom15 = ashr exact i64 %sext, 32, !dbg !316
  %arrayidx16 = getelementptr inbounds i8* %s1, i64 %idxprom15, !dbg !316
  store i8 0, i8* %arrayidx16, align 1, !dbg !316, !tbaa !160
  ret i32 1, !dbg !317
}

; Function Attrs: nounwind optsize uwtable
define i32 @StrRegionalShuffle(i8* %s1, i8* %s2, i32 %w) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !105), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !106), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %w}, i64 0, metadata !107), !dbg !318
  %cmp = icmp eq i8* %s1, %s2, !dbg !319
  br i1 %cmp, label %if.end, label %if.then, !dbg !319

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %s1, i8* %s2) #7, !dbg !319
  br label %if.end, !dbg !319

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i64 @strlen(i8* %s1) #8, !dbg !320
  %conv = trunc i64 %call1 to i32, !dbg !320
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !108), !dbg !320
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !111), !dbg !321
  %cmp253 = icmp sgt i32 %conv, 0, !dbg !321
  br i1 %cmp253, label %for.body.lr.ph, label %for.end27, !dbg !321

for.body.lr.ph:                                   ; preds = %if.end
  %0 = xor i32 %w, -1, !dbg !321
  %1 = xor i32 %conv, -1, !dbg !321
  br label %for.body, !dbg !321

for.cond.loopexit:                                ; preds = %for.body13, %for.body
  %cmp2 = icmp slt i32 %add, %conv, !dbg !321
  %indvars.iv.next = sub i32 %indvars.iv, %w, !dbg !321
  br i1 %cmp2, label %for.body, label %for.end27, !dbg !321

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %indvars.iv = phi i32 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.loopexit ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.loopexit ]
  %add = add nsw i32 %i.054, %w, !dbg !323
  %cmp5 = icmp slt i32 %conv, %add, !dbg !323
  %conv.add = select i1 %cmp5, i32 %conv, i32 %add, !dbg !323
  %j.050 = add nsw i32 %conv.add, -1, !dbg !323
  %cmp1151 = icmp sgt i32 %j.050, %i.054, !dbg !323
  br i1 %cmp1151, label %for.body13.lr.ph, label %for.cond.loopexit, !dbg !323

for.body13.lr.ph:                                 ; preds = %for.body
  %2 = icmp sgt i32 %indvars.iv, %1, !dbg !321
  %smax = select i1 %2, i32 %indvars.iv, i32 %1, !dbg !321
  %3 = sub i32 -2, %smax, !dbg !323
  %4 = sext i32 %3 to i64, !dbg !321
  br label %for.body13, !dbg !323

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %indvars.iv55 = phi i64 [ %4, %for.body13.lr.ph ], [ %indvars.iv.next56, %for.body13 ], !dbg !321
  %j.052 = phi i32 [ %j.050, %for.body13.lr.ph ], [ %j.0, %for.body13 ]
  %call14 = tail call double @sre_random() #7, !dbg !325
  %5 = trunc i64 %indvars.iv55 to i32, !dbg !325
  %sub15 = sub nsw i32 %5, %i.054, !dbg !325
  %conv16 = sitofp i32 %sub15 to double, !dbg !325
  %mul = fmul double %conv16, %call14, !dbg !325
  %conv17 = fptosi double %mul to i32, !dbg !325
  %add18 = add nsw i32 %conv17, %i.054, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !110), !dbg !325
  %idxprom = sext i32 %add18 to i64, !dbg !327
  %arrayidx = getelementptr inbounds i8* %s1, i64 %idxprom, !dbg !327
  %6 = load i8* %arrayidx, align 1, !dbg !327, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %6}, i64 0, metadata !109), !dbg !327
  %arrayidx20 = getelementptr inbounds i8* %s1, i64 %indvars.iv55, !dbg !328
  %7 = load i8* %arrayidx20, align 1, !dbg !328, !tbaa !160
  store i8 %7, i8* %arrayidx, align 1, !dbg !328, !tbaa !160
  store i8 %6, i8* %arrayidx20, align 1, !dbg !329, !tbaa !160
  %j.0 = add nsw i32 %j.052, -1, !dbg !323
  %cmp11 = icmp sgt i32 %j.0, %i.054, !dbg !323
  %indvars.iv.next56 = add i64 %indvars.iv55, -1, !dbg !323
  br i1 %cmp11, label %for.body13, label %for.cond.loopexit, !dbg !323

for.end27:                                        ; preds = %for.cond.loopexit, %if.end
  ret i32 1, !dbg !330
}

; Function Attrs: nounwind optsize uwtable
define i32 @AlignmentShuffle(i8** %ali1, i8** %ali2, i32 %nseq, i32 %alen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %ali1}, i64 0, metadata !117), !dbg !331
  tail call void @llvm.dbg.value(metadata !{i8** %ali2}, i64 0, metadata !118), !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !119), !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !120), !dbg !331
  %cmp = icmp eq i8** %ali1, %ali2, !dbg !332
  br i1 %cmp, label %for.cond4.preheader, label %for.cond.preheader, !dbg !332

for.cond.preheader:                               ; preds = %entry
  %cmp178 = icmp sgt i32 %nseq, 0, !dbg !333
  br i1 %cmp178, label %for.body, label %for.cond14.preheader, !dbg !333

for.cond4.preheader:                              ; preds = %for.body, %entry
  %cmp576 = icmp sgt i32 %nseq, 0, !dbg !336
  br i1 %cmp576, label %for.body6.lr.ph, label %for.cond14.preheader, !dbg !336

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %idxprom7 = sext i32 %alen to i64, !dbg !338
  br label %for.body6, !dbg !336

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8** %ali1, i64 %indvars.iv87, !dbg !333
  %0 = load i8** %arrayidx, align 8, !dbg !333, !tbaa !171
  %arrayidx3 = getelementptr inbounds i8** %ali2, i64 %indvars.iv87, !dbg !333
  %1 = load i8** %arrayidx3, align 8, !dbg !333, !tbaa !171
  %call = tail call i8* @strcpy(i8* %0, i8* %1) #7, !dbg !333
  %indvars.iv.next88 = add i64 %indvars.iv87, 1, !dbg !333
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32, !dbg !333
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %nseq, !dbg !333
  br i1 %exitcond90, label %for.cond4.preheader, label %for.body, !dbg !333

for.cond14.preheader:                             ; preds = %for.cond.preheader, %for.body6, %for.cond4.preheader
  %cmp57692 = phi i1 [ false, %for.cond4.preheader ], [ %cmp576, %for.body6 ], [ false, %for.cond.preheader ]
  %cmp1574 = icmp sgt i32 %alen, 1, !dbg !339
  br i1 %cmp1574, label %for.body16.lr.ph, label %for.end44, !dbg !339

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %2 = sext i32 %alen to i64
  br label %for.body16, !dbg !339

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv83 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next84, %for.body6 ]
  %arrayidx9 = getelementptr inbounds i8** %ali1, i64 %indvars.iv83, !dbg !338
  %3 = load i8** %arrayidx9, align 8, !dbg !338, !tbaa !171
  %arrayidx10 = getelementptr inbounds i8* %3, i64 %idxprom7, !dbg !338
  store i8 0, i8* %arrayidx10, align 1, !dbg !338, !tbaa !160
  %indvars.iv.next84 = add i64 %indvars.iv83, 1, !dbg !336
  %lftr.wideiv85 = trunc i64 %indvars.iv.next84 to i32, !dbg !336
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %nseq, !dbg !336
  br i1 %exitcond86, label %for.cond14.preheader, label %for.body6, !dbg !336

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc43
  %indvars.iv80 = phi i64 [ %2, %for.body16.lr.ph ], [ %indvars.iv.next81.pre-phi, %for.inc43 ]
  %call17 = tail call double @sre_random() #7, !dbg !341
  tail call void @llvm.dbg.value(metadata !{i32 %conv18}, i64 0, metadata !122), !dbg !341
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !121), !dbg !343
  br i1 %cmp57692, label %for.body22.lr.ph, label %for.body16.for.inc43_crit_edge, !dbg !343

for.body16.for.inc43_crit_edge:                   ; preds = %for.body16
  %indvars.iv.next81.pre = add i64 %indvars.iv80, -1, !dbg !339
  br label %for.inc43, !dbg !343

for.body22.lr.ph:                                 ; preds = %for.body16
  %4 = trunc i64 %indvars.iv80 to i32, !dbg !341
  %conv = sitofp i32 %4 to double, !dbg !341
  %mul = fmul double %conv, %call17, !dbg !341
  %conv18 = fptosi double %mul to i32, !dbg !341
  %idxprom23 = sext i32 %conv18 to i64, !dbg !345
  %5 = add nsw i64 %indvars.iv80, -1, !dbg !347
  br label %for.body22, !dbg !343

for.body22:                                       ; preds = %for.body22, %for.body22.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx25 = getelementptr inbounds i8** %ali1, i64 %indvars.iv, !dbg !345
  %6 = load i8** %arrayidx25, align 8, !dbg !345, !tbaa !171
  %arrayidx26 = getelementptr inbounds i8* %6, i64 %idxprom23, !dbg !345
  %7 = load i8* %arrayidx26, align 1, !dbg !345, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %7}, i64 0, metadata !123), !dbg !345
  %arrayidx30 = getelementptr inbounds i8* %6, i64 %5, !dbg !347
  %8 = load i8* %arrayidx30, align 1, !dbg !347, !tbaa !160
  store i8 %8, i8* %arrayidx26, align 1, !dbg !347, !tbaa !160
  %9 = load i8** %arrayidx25, align 8, !dbg !348, !tbaa !171
  %arrayidx39 = getelementptr inbounds i8* %9, i64 %5, !dbg !348
  store i8 %7, i8* %arrayidx39, align 1, !dbg !348, !tbaa !160
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !343
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !343
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !343
  br i1 %exitcond, label %for.inc43, label %for.body22, !dbg !343

for.inc43:                                        ; preds = %for.body22, %for.body16.for.inc43_crit_edge
  %indvars.iv.next81.pre-phi = phi i64 [ %indvars.iv.next81.pre, %for.body16.for.inc43_crit_edge ], [ %5, %for.body22 ], !dbg !339
  %10 = trunc i64 %indvars.iv.next81.pre-phi to i32, !dbg !339
  %cmp15 = icmp sgt i32 %10, 1, !dbg !339
  br i1 %cmp15, label %for.body16, label %for.end44, !dbg !339

for.end44:                                        ; preds = %for.inc43, %for.cond14.preheader
  ret i32 1, !dbg !349
}

; Function Attrs: nounwind optsize uwtable
define i32 @AlignmentBootstrap(i8** nocapture %ali1, i8** nocapture %ali2, i32 %nseq, i32 %alen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %ali1}, i64 0, metadata !126), !dbg !350
  tail call void @llvm.dbg.value(metadata !{i8** %ali2}, i64 0, metadata !127), !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !128), !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !129), !dbg !350
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !130), !dbg !351
  %cmp42 = icmp sgt i32 %alen, 0, !dbg !351
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond15.preheader, !dbg !351

for.body.lr.ph:                                   ; preds = %entry
  %conv = sitofp i32 %alen to double, !dbg !353
  %cmp340 = icmp sgt i32 %nseq, 0, !dbg !355
  br label %for.body, !dbg !351

for.cond15.preheader:                             ; preds = %for.inc12, %entry
  %cmp1638 = icmp sgt i32 %nseq, 0, !dbg !357
  br i1 %cmp1638, label %for.body18.lr.ph, label %for.end25, !dbg !357

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader
  %idxprom19 = sext i32 %alen to i64, !dbg !359
  br label %for.body18, !dbg !357

for.body:                                         ; preds = %for.inc12, %for.body.lr.ph
  %indvars.iv48 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next49, %for.inc12 ]
  %call = tail call double @sre_random() #7, !dbg !353
  tail call void @llvm.dbg.value(metadata !{i32 %conv1}, i64 0, metadata !131), !dbg !353
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !132), !dbg !355
  br i1 %cmp340, label %for.body5.lr.ph, label %for.inc12, !dbg !355

for.body5.lr.ph:                                  ; preds = %for.body
  %mul = fmul double %conv, %call, !dbg !353
  %conv1 = fptosi double %mul to i32, !dbg !353
  %idxprom = sext i32 %conv1 to i64, !dbg !360
  br label %for.body5, !dbg !355

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv44 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next45, %for.body5 ]
  %arrayidx = getelementptr inbounds i8** %ali2, i64 %indvars.iv44, !dbg !360
  %0 = load i8** %arrayidx, align 8, !dbg !360, !tbaa !171
  %arrayidx7 = getelementptr inbounds i8* %0, i64 %idxprom, !dbg !360
  %1 = load i8* %arrayidx7, align 1, !dbg !360, !tbaa !160
  %arrayidx10 = getelementptr inbounds i8** %ali1, i64 %indvars.iv44, !dbg !360
  %2 = load i8** %arrayidx10, align 8, !dbg !360, !tbaa !171
  %arrayidx11 = getelementptr inbounds i8* %2, i64 %indvars.iv48, !dbg !360
  store i8 %1, i8* %arrayidx11, align 1, !dbg !360, !tbaa !160
  %indvars.iv.next45 = add i64 %indvars.iv44, 1, !dbg !355
  %lftr.wideiv46 = trunc i64 %indvars.iv.next45 to i32, !dbg !355
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %nseq, !dbg !355
  br i1 %exitcond47, label %for.inc12, label %for.body5, !dbg !355

for.inc12:                                        ; preds = %for.body5, %for.body
  %indvars.iv.next49 = add i64 %indvars.iv48, 1, !dbg !351
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32, !dbg !351
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %alen, !dbg !351
  br i1 %exitcond51, label %for.cond15.preheader, label %for.body, !dbg !351

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx21 = getelementptr inbounds i8** %ali1, i64 %indvars.iv, !dbg !359
  %3 = load i8** %arrayidx21, align 8, !dbg !359, !tbaa !171
  %arrayidx22 = getelementptr inbounds i8* %3, i64 %idxprom19, !dbg !359
  store i8 0, i8* %arrayidx22, align 1, !dbg !359, !tbaa !160
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !357
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !357
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !357
  br i1 %exitcond, label %for.end25, label %for.body18, !dbg !357

for.end25:                                        ; preds = %for.body18, %for.cond15.preheader
  ret i32 1, !dbg !361
}

; Function Attrs: nounwind optsize uwtable
define i32 @QRNAShuffle(i8* %xs, i8* %ys, i8* %x, i8* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %xs}, i64 0, metadata !137), !dbg !362
  tail call void @llvm.dbg.value(metadata !{i8* %ys}, i64 0, metadata !138), !dbg !362
  tail call void @llvm.dbg.value(metadata !{i8* %x}, i64 0, metadata !139), !dbg !362
  tail call void @llvm.dbg.value(metadata !{i8* %y}, i64 0, metadata !140), !dbg !362
  %cmp = icmp eq i8* %xs, %x, !dbg !363
  br i1 %cmp, label %if.end, label %if.then, !dbg !363

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %xs, i8* %x) #7, !dbg !363
  br label %if.end, !dbg !363

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = icmp eq i8* %ys, %y, !dbg !364
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !364

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @strcpy(i8* %ys, i8* %y) #7, !dbg !364
  br label %if.end4, !dbg !364

if.end4:                                          ; preds = %if.end, %if.then2
  %call5 = tail call i64 @strlen(i8* %x) #8, !dbg !365
  %conv = trunc i64 %call5 to i32, !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !141), !dbg !365
  %sext = shl i64 %call5, 32, !dbg !366
  %mul = ashr exact i64 %sext, 30, !dbg !366
  %call7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 572, i64 %mul) #7, !dbg !366
  %0 = bitcast i8* %call7 to i32*, !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !142), !dbg !366
  %call10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 573, i64 %mul) #7, !dbg !367
  %1 = bitcast i8* %call10 to i32*, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !143), !dbg !367
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 574, i64 %mul) #7, !dbg !368
  %2 = bitcast i8* %call13 to i32*, !dbg !368
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !144), !dbg !368
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !147), !dbg !369
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !146), !dbg !369
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !145), !dbg !369
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !148), !dbg !370
  %cmp14573 = icmp sgt i32 %conv, 0, !dbg !370
  br i1 %cmp14573, label %for.body, label %for.end377, !dbg !370

for.cond207.preheader:                            ; preds = %for.inc
  %cmp208571 = icmp sgt i32 %nxy.1, 1, !dbg !372
  br i1 %cmp208571, label %for.body210.lr.ph, label %for.cond264.preheader, !dbg !372

for.body210.lr.ph:                                ; preds = %for.cond207.preheader
  %3 = sext i32 %nxy.1 to i64
  br label %for.body210, !dbg !372

for.body:                                         ; preds = %if.end4, %for.inc
  %indvars.iv585 = phi i64 [ %indvars.iv.next586, %for.inc ], [ 0, %if.end4 ]
  %ny.0576 = phi i32 [ %ny.1, %for.inc ], [ 0, %if.end4 ]
  %nx.0575 = phi i32 [ %nx.1, %for.inc ], [ 0, %if.end4 ]
  %nxy.0574 = phi i32 [ %nxy.1, %for.inc ], [ 0, %if.end4 ]
  %arrayidx = getelementptr inbounds i8* %x, i64 %indvars.iv585, !dbg !374
  %4 = load i8* %arrayidx, align 1, !dbg !374, !tbaa !160
  switch i8 %4, label %land.lhs.true101 [
    i8 32, label %land.lhs.true
    i8 46, label %land.lhs.true
    i8 95, label %land.lhs.true
    i8 45, label %land.lhs.true
    i8 126, label %land.lhs.true
  ], !dbg !374

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %arrayidx43 = getelementptr inbounds i8* %y, i64 %indvars.iv585, !dbg !374
  %5 = load i8* %arrayidx43, align 1, !dbg !374, !tbaa !160
  switch i8 %5, label %if.else [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !374

if.else:                                          ; preds = %land.lhs.true
  switch i8 %4, label %land.lhs.true101 [
    i8 32, label %if.then164
    i8 46, label %if.then164
    i8 95, label %if.then164
    i8 45, label %if.then164
    i8 126, label %if.then164
  ], !dbg !376

land.lhs.true101:                                 ; preds = %if.else, %for.body
  %arrayidx103 = getelementptr inbounds i8* %y, i64 %indvars.iv585, !dbg !376
  %6 = load i8* %arrayidx103, align 1, !dbg !376, !tbaa !160
  switch i8 %6, label %if.then131 [
    i8 32, label %if.else134
    i8 46, label %if.else134
    i8 95, label %if.else134
    i8 45, label %if.else134
    i8 126, label %if.else134
  ], !dbg !376

if.then131:                                       ; preds = %land.lhs.true101
  %idxprom132 = sext i32 %nxy.0574 to i64, !dbg !377
  %arrayidx133 = getelementptr inbounds i32* %0, i64 %idxprom132, !dbg !377
  %7 = trunc i64 %indvars.iv585 to i32, !dbg !377
  store i32 %7, i32* %arrayidx133, align 4, !dbg !377, !tbaa !180
  %inc = add nsw i32 %nxy.0574, 1, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !145), !dbg !377
  br label %for.inc, !dbg !377

if.else134:                                       ; preds = %land.lhs.true101, %land.lhs.true101, %land.lhs.true101, %land.lhs.true101, %land.lhs.true101
  switch i8 %4, label %if.else168 [
    i8 32, label %if.then164
    i8 46, label %if.then164
    i8 95, label %if.then164
    i8 45, label %if.then164
    i8 126, label %if.then164
  ], !dbg !379

if.then164:                                       ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else134, %if.else134, %if.else134, %if.else134, %if.else134
  %idxprom165 = sext i32 %ny.0576 to i64, !dbg !380
  %arrayidx166 = getelementptr inbounds i32* %2, i64 %idxprom165, !dbg !380
  %8 = trunc i64 %indvars.iv585 to i32, !dbg !380
  store i32 %8, i32* %arrayidx166, align 4, !dbg !380, !tbaa !180
  %inc167 = add nsw i32 %ny.0576, 1, !dbg !380
  tail call void @llvm.dbg.value(metadata !{i32 %inc167}, i64 0, metadata !147), !dbg !380
  br label %for.inc, !dbg !380

if.else168:                                       ; preds = %if.else134
  %arrayidx170 = getelementptr inbounds i8* %y, i64 %indvars.iv585, !dbg !382
  %9 = load i8* %arrayidx170, align 1, !dbg !382, !tbaa !160
  switch i8 %9, label %for.inc [
    i8 32, label %if.then198
    i8 46, label %if.then198
    i8 95, label %if.then198
    i8 45, label %if.then198
    i8 126, label %if.then198
  ], !dbg !382

if.then198:                                       ; preds = %if.else168, %if.else168, %if.else168, %if.else168, %if.else168
  %idxprom199 = sext i32 %nx.0575 to i64, !dbg !383
  %arrayidx200 = getelementptr inbounds i32* %1, i64 %idxprom199, !dbg !383
  %10 = trunc i64 %indvars.iv585 to i32, !dbg !383
  store i32 %10, i32* %arrayidx200, align 4, !dbg !383, !tbaa !180
  %inc201 = add nsw i32 %nx.0575, 1, !dbg !383
  tail call void @llvm.dbg.value(metadata !{i32 %inc201}, i64 0, metadata !146), !dbg !383
  br label %for.inc, !dbg !383

for.inc:                                          ; preds = %if.else168, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %if.then164, %if.then198, %if.then131
  %nxy.1 = phi i32 [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %if.then164 ], [ %nxy.0574, %if.then198 ], [ %inc, %if.then131 ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %if.else168 ]
  %nx.1 = phi i32 [ %nx.0575, %land.lhs.true ], [ %nx.0575, %if.then164 ], [ %inc201, %if.then198 ], [ %nx.0575, %if.then131 ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %if.else168 ]
  %ny.1 = phi i32 [ %ny.0576, %land.lhs.true ], [ %inc167, %if.then164 ], [ %ny.0576, %if.then198 ], [ %ny.0576, %if.then131 ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %if.else168 ]
  %indvars.iv.next586 = add i64 %indvars.iv585, 1, !dbg !370
  %lftr.wideiv = trunc i64 %indvars.iv.next586 to i32, !dbg !370
  %exitcond = icmp eq i32 %lftr.wideiv, %conv, !dbg !370
  br i1 %exitcond, label %for.cond207.preheader, label %for.body, !dbg !370

for.cond264.preheader:                            ; preds = %for.body210, %for.cond207.preheader
  %cmp265569 = icmp sgt i32 %nx.1, 1, !dbg !385
  br i1 %cmp265569, label %for.body267.lr.ph, label %for.cond321.preheader, !dbg !385

for.body267.lr.ph:                                ; preds = %for.cond264.preheader
  %11 = sext i32 %nx.1 to i64
  br label %for.body267, !dbg !385

for.body210:                                      ; preds = %for.body210.lr.ph, %for.body210
  %indvars.iv583 = phi i64 [ %3, %for.body210.lr.ph ], [ %indvars.iv.next584, %for.body210 ]
  %call211 = tail call double @sre_random() #7, !dbg !387
  %12 = trunc i64 %indvars.iv583 to i32, !dbg !387
  %conv212 = sitofp i32 %12 to double, !dbg !387
  %mul213 = fmul double %conv212, %call211, !dbg !387
  %conv214 = fptosi double %mul213 to i32, !dbg !387
  tail call void @llvm.dbg.value(metadata !{i32 %conv214}, i64 0, metadata !149), !dbg !387
  %idxprom215 = sext i32 %conv214 to i64, !dbg !389
  %arrayidx216 = getelementptr inbounds i32* %0, i64 %idxprom215, !dbg !389
  %13 = load i32* %arrayidx216, align 4, !dbg !389, !tbaa !180
  %idxprom217 = sext i32 %13 to i64, !dbg !389
  %arrayidx218 = getelementptr inbounds i8* %xs, i64 %idxprom217, !dbg !389
  %14 = load i8* %arrayidx218, align 1, !dbg !389, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %14}, i64 0, metadata !151), !dbg !389
  %arrayidx222 = getelementptr inbounds i8* %ys, i64 %idxprom217, !dbg !389
  %15 = load i8* %arrayidx222, align 1, !dbg !389, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !152), !dbg !389
  %indvars.iv.next584 = add i64 %indvars.iv583, -1, !dbg !372
  %arrayidx226 = getelementptr inbounds i32* %0, i64 %indvars.iv.next584, !dbg !390
  %16 = load i32* %arrayidx226, align 4, !dbg !390, !tbaa !180
  %idxprom227 = sext i32 %16 to i64, !dbg !390
  %arrayidx228 = getelementptr inbounds i8* %xs, i64 %idxprom227, !dbg !390
  %17 = load i8* %arrayidx228, align 1, !dbg !390, !tbaa !160
  store i8 %17, i8* %arrayidx218, align 1, !dbg !390, !tbaa !160
  %18 = load i32* %arrayidx226, align 4, !dbg !390, !tbaa !180
  %idxprom236 = sext i32 %18 to i64, !dbg !390
  %arrayidx237 = getelementptr inbounds i8* %ys, i64 %idxprom236, !dbg !390
  %19 = load i8* %arrayidx237, align 1, !dbg !390, !tbaa !160
  %20 = load i32* %arrayidx216, align 4, !dbg !390, !tbaa !180
  %idxprom240 = sext i32 %20 to i64, !dbg !390
  %arrayidx241 = getelementptr inbounds i8* %ys, i64 %idxprom240, !dbg !390
  store i8 %19, i8* %arrayidx241, align 1, !dbg !390, !tbaa !160
  %21 = load i32* %arrayidx226, align 4, !dbg !390, !tbaa !180
  store i32 %21, i32* %arrayidx216, align 4, !dbg !390, !tbaa !180
  %22 = load i32* %arrayidx226, align 4, !dbg !391, !tbaa !180
  %idxprom250 = sext i32 %22 to i64, !dbg !391
  %arrayidx251 = getelementptr inbounds i8* %xs, i64 %idxprom250, !dbg !391
  store i8 %14, i8* %arrayidx251, align 1, !dbg !391, !tbaa !160
  %23 = load i32* %arrayidx226, align 4, !dbg !391, !tbaa !180
  %idxprom255 = sext i32 %23 to i64, !dbg !391
  %arrayidx256 = getelementptr inbounds i8* %ys, i64 %idxprom255, !dbg !391
  store i8 %15, i8* %arrayidx256, align 1, !dbg !391, !tbaa !160
  %24 = load i32* %arrayidx226, align 4, !dbg !391, !tbaa !180
  store i32 %24, i32* %arrayidx216, align 4, !dbg !391, !tbaa !180
  %25 = trunc i64 %indvars.iv.next584 to i32, !dbg !372
  %cmp208 = icmp sgt i32 %25, 1, !dbg !372
  br i1 %cmp208, label %for.body210, label %for.cond264.preheader, !dbg !372

for.cond321.preheader:                            ; preds = %for.body267, %for.cond264.preheader
  %cmp322567 = icmp sgt i32 %ny.1, 1, !dbg !392
  br i1 %cmp322567, label %for.body324.lr.ph, label %for.end377, !dbg !392

for.body324.lr.ph:                                ; preds = %for.cond321.preheader
  %26 = sext i32 %ny.1 to i64
  br label %for.body324, !dbg !392

for.body267:                                      ; preds = %for.body267.lr.ph, %for.body267
  %indvars.iv581 = phi i64 [ %11, %for.body267.lr.ph ], [ %indvars.iv.next582, %for.body267 ]
  %call268 = tail call double @sre_random() #7, !dbg !394
  %27 = trunc i64 %indvars.iv581 to i32, !dbg !394
  %conv269 = sitofp i32 %27 to double, !dbg !394
  %mul270 = fmul double %conv269, %call268, !dbg !394
  %conv271 = fptosi double %mul270 to i32, !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32 %conv271}, i64 0, metadata !149), !dbg !394
  %idxprom272 = sext i32 %conv271 to i64, !dbg !396
  %arrayidx273 = getelementptr inbounds i32* %1, i64 %idxprom272, !dbg !396
  %28 = load i32* %arrayidx273, align 4, !dbg !396, !tbaa !180
  %idxprom274 = sext i32 %28 to i64, !dbg !396
  %arrayidx275 = getelementptr inbounds i8* %xs, i64 %idxprom274, !dbg !396
  %29 = load i8* %arrayidx275, align 1, !dbg !396, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !151), !dbg !396
  %arrayidx279 = getelementptr inbounds i8* %ys, i64 %idxprom274, !dbg !396
  %30 = load i8* %arrayidx279, align 1, !dbg !396, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !152), !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !150), !dbg !396
  %indvars.iv.next582 = add i64 %indvars.iv581, -1, !dbg !385
  %arrayidx284 = getelementptr inbounds i32* %1, i64 %indvars.iv.next582, !dbg !397
  %31 = load i32* %arrayidx284, align 4, !dbg !397, !tbaa !180
  %idxprom285 = sext i32 %31 to i64, !dbg !397
  %arrayidx286 = getelementptr inbounds i8* %xs, i64 %idxprom285, !dbg !397
  %32 = load i8* %arrayidx286, align 1, !dbg !397, !tbaa !160
  store i8 %32, i8* %arrayidx275, align 1, !dbg !397, !tbaa !160
  %33 = load i32* %arrayidx284, align 4, !dbg !397, !tbaa !180
  %idxprom294 = sext i32 %33 to i64, !dbg !397
  %arrayidx295 = getelementptr inbounds i8* %ys, i64 %idxprom294, !dbg !397
  %34 = load i8* %arrayidx295, align 1, !dbg !397, !tbaa !160
  %35 = load i32* %arrayidx273, align 4, !dbg !397, !tbaa !180
  %idxprom298 = sext i32 %35 to i64, !dbg !397
  %arrayidx299 = getelementptr inbounds i8* %ys, i64 %idxprom298, !dbg !397
  store i8 %34, i8* %arrayidx299, align 1, !dbg !397, !tbaa !160
  %36 = load i32* %arrayidx284, align 4, !dbg !397, !tbaa !180
  store i32 %36, i32* %arrayidx273, align 4, !dbg !397, !tbaa !180
  %37 = load i32* %arrayidx284, align 4, !dbg !398, !tbaa !180
  %idxprom308 = sext i32 %37 to i64, !dbg !398
  %arrayidx309 = getelementptr inbounds i8* %xs, i64 %idxprom308, !dbg !398
  store i8 %29, i8* %arrayidx309, align 1, !dbg !398, !tbaa !160
  %38 = load i32* %arrayidx284, align 4, !dbg !398, !tbaa !180
  %idxprom313 = sext i32 %38 to i64, !dbg !398
  %arrayidx314 = getelementptr inbounds i8* %ys, i64 %idxprom313, !dbg !398
  store i8 %30, i8* %arrayidx314, align 1, !dbg !398, !tbaa !160
  store i32 %28, i32* %arrayidx284, align 4, !dbg !398, !tbaa !180
  %39 = trunc i64 %indvars.iv.next582 to i32, !dbg !385
  %cmp265 = icmp sgt i32 %39, 1, !dbg !385
  br i1 %cmp265, label %for.body267, label %for.cond321.preheader, !dbg !385

for.body324:                                      ; preds = %for.body324.lr.ph, %for.body324
  %indvars.iv = phi i64 [ %26, %for.body324.lr.ph ], [ %indvars.iv.next, %for.body324 ]
  %call325 = tail call double @sre_random() #7, !dbg !399
  %40 = trunc i64 %indvars.iv to i32, !dbg !399
  %conv326 = sitofp i32 %40 to double, !dbg !399
  %mul327 = fmul double %conv326, %call325, !dbg !399
  %conv328 = fptosi double %mul327 to i32, !dbg !399
  tail call void @llvm.dbg.value(metadata !{i32 %conv328}, i64 0, metadata !149), !dbg !399
  %idxprom329 = sext i32 %conv328 to i64, !dbg !401
  %arrayidx330 = getelementptr inbounds i32* %2, i64 %idxprom329, !dbg !401
  %41 = load i32* %arrayidx330, align 4, !dbg !401, !tbaa !180
  %idxprom331 = sext i32 %41 to i64, !dbg !401
  %arrayidx332 = getelementptr inbounds i8* %xs, i64 %idxprom331, !dbg !401
  %42 = load i8* %arrayidx332, align 1, !dbg !401, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %42}, i64 0, metadata !151), !dbg !401
  %arrayidx336 = getelementptr inbounds i8* %ys, i64 %idxprom331, !dbg !401
  %43 = load i8* %arrayidx336, align 1, !dbg !401, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{i8 %43}, i64 0, metadata !152), !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !150), !dbg !401
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !392
  %arrayidx341 = getelementptr inbounds i32* %2, i64 %indvars.iv.next, !dbg !402
  %44 = load i32* %arrayidx341, align 4, !dbg !402, !tbaa !180
  %idxprom342 = sext i32 %44 to i64, !dbg !402
  %arrayidx343 = getelementptr inbounds i8* %xs, i64 %idxprom342, !dbg !402
  %45 = load i8* %arrayidx343, align 1, !dbg !402, !tbaa !160
  store i8 %45, i8* %arrayidx332, align 1, !dbg !402, !tbaa !160
  %46 = load i32* %arrayidx341, align 4, !dbg !402, !tbaa !180
  %idxprom351 = sext i32 %46 to i64, !dbg !402
  %arrayidx352 = getelementptr inbounds i8* %ys, i64 %idxprom351, !dbg !402
  %47 = load i8* %arrayidx352, align 1, !dbg !402, !tbaa !160
  %48 = load i32* %arrayidx330, align 4, !dbg !402, !tbaa !180
  %idxprom355 = sext i32 %48 to i64, !dbg !402
  %arrayidx356 = getelementptr inbounds i8* %ys, i64 %idxprom355, !dbg !402
  store i8 %47, i8* %arrayidx356, align 1, !dbg !402, !tbaa !160
  %49 = load i32* %arrayidx341, align 4, !dbg !402, !tbaa !180
  store i32 %49, i32* %arrayidx330, align 4, !dbg !402, !tbaa !180
  %50 = load i32* %arrayidx341, align 4, !dbg !403, !tbaa !180
  %idxprom365 = sext i32 %50 to i64, !dbg !403
  %arrayidx366 = getelementptr inbounds i8* %xs, i64 %idxprom365, !dbg !403
  store i8 %42, i8* %arrayidx366, align 1, !dbg !403, !tbaa !160
  %51 = load i32* %arrayidx341, align 4, !dbg !403, !tbaa !180
  %idxprom370 = sext i32 %51 to i64, !dbg !403
  %arrayidx371 = getelementptr inbounds i8* %ys, i64 %idxprom370, !dbg !403
  store i8 %43, i8* %arrayidx371, align 1, !dbg !403, !tbaa !160
  store i32 %41, i32* %arrayidx341, align 4, !dbg !403, !tbaa !180
  %52 = trunc i64 %indvars.iv.next to i32, !dbg !392
  %cmp322 = icmp sgt i32 %52, 1, !dbg !392
  br i1 %cmp322, label %for.body324, label %for.end377, !dbg !392

for.end377:                                       ; preds = %if.end4, %for.body324, %for.cond321.preheader
  tail call void @free(i8* %call7) #7, !dbg !404
  tail call void @free(i8* %call10) #7, !dbg !404
  tail call void @free(i8* %call13) #7, !dbg !404
  ret i32 1, !dbg !405
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !33, metadata !64, metadata !76, metadata !94, metadata !101, metadata !113, metadata !124, metadata !133}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StrShuffle", metadata !"StrShuffle", metadata !"", i32 59, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @StrShuffle, null, null, metadata !27, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [StrShuffle]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !25}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!28 = metadata !{i32 786689, metadata !20, metadata !"s1", metadata !21, i32 16777275, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 59]
!29 = metadata !{i32 786689, metadata !20, metadata !"s2", metadata !21, i32 33554491, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 59]
!30 = metadata !{i32 786688, metadata !20, metadata !"len", metadata !21, i32 61, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 61]
!31 = metadata !{i32 786688, metadata !20, metadata !"pos", metadata !21, i32 62, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 62]
!32 = metadata !{i32 786688, metadata !20, metadata !"c", metadata !21, i32 63, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 63]
!33 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StrDPShuffle", metadata !"StrDPShuffle", metadata !"", i32 100, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @StrDPShuffle, null, null, metadata !34, i32 101} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 101] [StrDPShuffle]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !52, metadata !53, metadata !54, metadata !56, metadata !60, metadata !62}
!35 = metadata !{i32 786689, metadata !33, metadata !"s1", metadata !21, i32 16777316, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 100]
!36 = metadata !{i32 786689, metadata !33, metadata !"s2", metadata !21, i32 33554532, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 100]
!37 = metadata !{i32 786688, metadata !33, metadata !"len", metadata !21, i32 102, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 102]
!38 = metadata !{i32 786688, metadata !33, metadata !"pos", metadata !21, i32 103, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 103]
!39 = metadata !{i32 786688, metadata !33, metadata !"x", metadata !21, i32 104, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 104]
!40 = metadata !{i32 786688, metadata !33, metadata !"y", metadata !21, i32 104, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 104]
!41 = metadata !{i32 786688, metadata !33, metadata !"E", metadata !21, i32 105, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [E] [line 105]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786688, metadata !33, metadata !"nE", metadata !21, i32 106, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nE] [line 106]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!45 = metadata !{i32 786688, metadata !33, metadata !"iE", metadata !21, i32 107, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iE] [line 107]
!46 = metadata !{i32 786688, metadata !33, metadata !"n", metadata !21, i32 108, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 108]
!47 = metadata !{i32 786688, metadata !33, metadata !"sf", metadata !21, i32 109, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sf] [line 109]
!48 = metadata !{i32 786688, metadata !33, metadata !"Z", metadata !21, i32 110, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Z] [line 110]
!49 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 208, i64 8, i32 0, i32 0, metadata !26, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 208, align 8, offset 0] [from char]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 26}       ; [ DW_TAG_subrange_type ] [0, 25]
!52 = metadata !{i32 786688, metadata !33, metadata !"keep_connecting", metadata !21, i32 111, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keep_connecting] [line 111]
!53 = metadata !{i32 786688, metadata !33, metadata !"is_eulerian", metadata !21, i32 112, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_eulerian] [line 112]
!54 = metadata !{i32 786688, metadata !55, metadata !"__res", metadata !21, i32 135, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 135]
!55 = metadata !{i32 786443, metadata !1, metadata !33, i32 135, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!56 = metadata !{i32 786688, metadata !57, metadata !"__res", metadata !21, i32 138, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 138]
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 138, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 137, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!59 = metadata !{i32 786443, metadata !1, metadata !33, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!60 = metadata !{i32 786688, metadata !61, metadata !"__res", metadata !21, i32 146, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 146]
!61 = metadata !{i32 786443, metadata !1, metadata !33, i32 146, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!62 = metadata !{i32 786688, metadata !63, metadata !"__res", metadata !21, i32 244, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 244]
!63 = metadata !{i32 786443, metadata !1, metadata !33, i32 244, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!64 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StrMarkov0", metadata !"StrMarkov0", metadata !"", i32 290, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @StrMarkov0, null, null, metadata !65, i32 291} ; [ DW_TAG_subprogram ] [line 290] [def] [scope 291] [StrMarkov0]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73}
!66 = metadata !{i32 786689, metadata !64, metadata !"s1", metadata !21, i32 16777506, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 290]
!67 = metadata !{i32 786689, metadata !64, metadata !"s2", metadata !21, i32 33554722, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 290]
!68 = metadata !{i32 786688, metadata !64, metadata !"len", metadata !21, i32 292, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 292]
!69 = metadata !{i32 786688, metadata !64, metadata !"pos", metadata !21, i32 293, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 293]
!70 = metadata !{i32 786688, metadata !64, metadata !"p", metadata !21, i32 294, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 294]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 832, i64 32, i32 0, i32 0, metadata !72, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 832, align 32, offset 0] [from float]
!72 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!73 = metadata !{i32 786688, metadata !74, metadata !"__res", metadata !21, i32 306, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 306]
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 306, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!75 = metadata !{i32 786443, metadata !1, metadata !64, i32 305, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!76 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StrMarkov1", metadata !"StrMarkov1", metadata !"", i32 335, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @StrMarkov1, null, null, metadata !77, i32 336} ; [ DW_TAG_subprogram ] [line 335] [def] [scope 336] [StrMarkov1]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !88, metadata !90}
!78 = metadata !{i32 786689, metadata !76, metadata !"s1", metadata !21, i32 16777551, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 335]
!79 = metadata !{i32 786689, metadata !76, metadata !"s2", metadata !21, i32 33554767, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 335]
!80 = metadata !{i32 786688, metadata !76, metadata !"len", metadata !21, i32 337, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 337]
!81 = metadata !{i32 786688, metadata !76, metadata !"pos", metadata !21, i32 338, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 338]
!82 = metadata !{i32 786688, metadata !76, metadata !"x", metadata !21, i32 339, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 339]
!83 = metadata !{i32 786688, metadata !76, metadata !"y", metadata !21, i32 339, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 339]
!84 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !21, i32 340, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 340]
!85 = metadata !{i32 786688, metadata !76, metadata !"p", metadata !21, i32 341, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 341]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 21632, i64 32, i32 0, i32 0, metadata !72, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 21632, align 32, offset 0] [from float]
!87 = metadata !{metadata !51, metadata !51}
!88 = metadata !{i32 786688, metadata !89, metadata !"__res", metadata !21, i32 353, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 353]
!89 = metadata !{i32 786443, metadata !1, metadata !76, i32 353, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!90 = metadata !{i32 786688, metadata !91, metadata !"__res", metadata !21, i32 356, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 356]
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 356, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 355, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!93 = metadata !{i32 786443, metadata !1, metadata !76, i32 354, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!94 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StrReverse", metadata !"StrReverse", metadata !"", i32 392, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @StrReverse, null, null, metadata !95, i32 393} ; [ DW_TAG_subprogram ] [line 392] [def] [scope 393] [StrReverse]
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99, metadata !100}
!96 = metadata !{i32 786689, metadata !94, metadata !"s1", metadata !21, i32 16777608, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 392]
!97 = metadata !{i32 786689, metadata !94, metadata !"s2", metadata !21, i32 33554824, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 392]
!98 = metadata !{i32 786688, metadata !94, metadata !"len", metadata !21, i32 394, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 394]
!99 = metadata !{i32 786688, metadata !94, metadata !"pos", metadata !21, i32 395, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 395]
!100 = metadata !{i32 786688, metadata !94, metadata !"c", metadata !21, i32 396, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 396]
!101 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"StrRegionalShuffle", metadata !"StrRegionalShuffle", metadata !"", i32 424, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @StrRegionalShuffle, null, null, metadata !104, i32 425} ; [ DW_TAG_subprogram ] [line 424] [def] [scope 425] [StrRegionalShuffle]
!102 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{metadata !24, metadata !25, metadata !25, metadata !24}
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!105 = metadata !{i32 786689, metadata !101, metadata !"s1", metadata !21, i32 16777640, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 424]
!106 = metadata !{i32 786689, metadata !101, metadata !"s2", metadata !21, i32 33554856, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 424]
!107 = metadata !{i32 786689, metadata !101, metadata !"w", metadata !21, i32 50332072, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 424]
!108 = metadata !{i32 786688, metadata !101, metadata !"len", metadata !21, i32 426, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 426]
!109 = metadata !{i32 786688, metadata !101, metadata !"c", metadata !21, i32 427, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 427]
!110 = metadata !{i32 786688, metadata !101, metadata !"pos", metadata !21, i32 428, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 428]
!111 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !21, i32 429, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 429]
!112 = metadata !{i32 786688, metadata !101, metadata !"j", metadata !21, i32 429, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 429]
!113 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"AlignmentShuffle", metadata !"AlignmentShuffle", metadata !"", i32 463, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8**, i32, i32)* @AlignmentShuffle, null, null, metadata !116, i32 464} ; [ DW_TAG_subprogram ] [line 463] [def] [scope 464] [AlignmentShuffle]
!114 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !24, metadata !42, metadata !42, metadata !24, metadata !24}
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!117 = metadata !{i32 786689, metadata !113, metadata !"ali1", metadata !21, i32 16777679, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali1] [line 463]
!118 = metadata !{i32 786689, metadata !113, metadata !"ali2", metadata !21, i32 33554895, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali2] [line 463]
!119 = metadata !{i32 786689, metadata !113, metadata !"nseq", metadata !21, i32 50332111, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 463]
!120 = metadata !{i32 786689, metadata !113, metadata !"alen", metadata !21, i32 67109327, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 463]
!121 = metadata !{i32 786688, metadata !113, metadata !"i", metadata !21, i32 465, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 465]
!122 = metadata !{i32 786688, metadata !113, metadata !"pos", metadata !21, i32 466, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 466]
!123 = metadata !{i32 786688, metadata !113, metadata !"c", metadata !21, i32 467, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 467]
!124 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"AlignmentBootstrap", metadata !"AlignmentBootstrap", metadata !"", i32 512, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8**, i32, i32)* @AlignmentBootstrap, null, null, metadata !125, i32 513} ; [ DW_TAG_subprogram ] [line 512] [def] [scope 513] [AlignmentBootstrap]
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!126 = metadata !{i32 786689, metadata !124, metadata !"ali1", metadata !21, i32 16777728, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali1] [line 512]
!127 = metadata !{i32 786689, metadata !124, metadata !"ali2", metadata !21, i32 33554944, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali2] [line 512]
!128 = metadata !{i32 786689, metadata !124, metadata !"nseq", metadata !21, i32 50332160, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 512]
!129 = metadata !{i32 786689, metadata !124, metadata !"alen", metadata !21, i32 67109376, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 512]
!130 = metadata !{i32 786688, metadata !124, metadata !"pos", metadata !21, i32 514, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 514]
!131 = metadata !{i32 786688, metadata !124, metadata !"col", metadata !21, i32 515, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 515]
!132 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !21, i32 516, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 516]
!133 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"QRNAShuffle", metadata !"QRNAShuffle", metadata !"", i32 555, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i8*, i8*)* @QRNAShuffle, null, null, metadata !136, i32 556} ; [ DW_TAG_subprogram ] [line 555] [def] [scope 556] [QRNAShuffle]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !24, metadata !25, metadata !25, metadata !25, metadata !25}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152}
!137 = metadata !{i32 786689, metadata !133, metadata !"xs", metadata !21, i32 16777771, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xs] [line 555]
!138 = metadata !{i32 786689, metadata !133, metadata !"ys", metadata !21, i32 33554987, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ys] [line 555]
!139 = metadata !{i32 786689, metadata !133, metadata !"x", metadata !21, i32 50332203, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 555]
!140 = metadata !{i32 786689, metadata !133, metadata !"y", metadata !21, i32 67109419, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 555]
!141 = metadata !{i32 786688, metadata !133, metadata !"L", metadata !21, i32 557, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 557]
!142 = metadata !{i32 786688, metadata !133, metadata !"xycol", metadata !21, i32 558, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xycol] [line 558]
!143 = metadata !{i32 786688, metadata !133, metadata !"xcol", metadata !21, i32 558, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xcol] [line 558]
!144 = metadata !{i32 786688, metadata !133, metadata !"ycol", metadata !21, i32 558, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ycol] [line 558]
!145 = metadata !{i32 786688, metadata !133, metadata !"nxy", metadata !21, i32 559, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nxy] [line 559]
!146 = metadata !{i32 786688, metadata !133, metadata !"nx", metadata !21, i32 559, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 559]
!147 = metadata !{i32 786688, metadata !133, metadata !"ny", metadata !21, i32 559, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 559]
!148 = metadata !{i32 786688, metadata !133, metadata !"i", metadata !21, i32 560, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 560]
!149 = metadata !{i32 786688, metadata !133, metadata !"pos", metadata !21, i32 561, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 561]
!150 = metadata !{i32 786688, metadata !133, metadata !"c", metadata !21, i32 561, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 561]
!151 = metadata !{i32 786688, metadata !133, metadata !"xsym", metadata !21, i32 562, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xsym] [line 562]
!152 = metadata !{i32 786688, metadata !133, metadata !"ysym", metadata !21, i32 562, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ysym] [line 562]
!153 = metadata !{i32 59, i32 0, metadata !20, null}
!154 = metadata !{i32 65, i32 0, metadata !20, null}
!155 = metadata !{i32 66, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !20, i32 66, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!157 = metadata !{i32 68, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !156, i32 67, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!159 = metadata !{i32 69, i32 0, metadata !158, null}
!160 = metadata !{metadata !"omnipotent char", metadata !161}
!161 = metadata !{metadata !"Simple C/C++ TBAA"}
!162 = metadata !{i32 70, i32 0, metadata !158, null}
!163 = metadata !{i32 71, i32 0, metadata !158, null}
!164 = metadata !{i32 73, i32 0, metadata !20, null}
!165 = metadata !{i32 100, i32 0, metadata !33, null}
!166 = metadata !{i32 110, i32 0, metadata !33, null}
!167 = metadata !{i32 116, i32 0, metadata !33, null}
!168 = metadata !{i32 117, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !33, i32 117, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!170 = metadata !{i32 118, i32 0, metadata !169, null}
!171 = metadata !{metadata !"any pointer", metadata !160}
!172 = metadata !{metadata !"short", metadata !160}
!173 = metadata !{i32 127, i32 0, metadata !33, null}
!174 = metadata !{i32 128, i32 0, metadata !33, null}
!175 = metadata !{i32 129, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !33, i32 129, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!177 = metadata !{i32 131, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !176, i32 130, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!179 = metadata !{i32 132, i32 0, metadata !178, null}
!180 = metadata !{metadata !"int", metadata !160}
!181 = metadata !{i32 135, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !55, i32 135, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!183 = metadata !{i32 135, i32 0, metadata !55, null}
!184 = metadata !{i32 1}
!185 = metadata !{i32 136, i32 0, metadata !59, null}
!186 = metadata !{i32 138, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !57, i32 138, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!188 = metadata !{i32 138, i32 0, metadata !57, null}
!189 = metadata !{i32 139, i32 0, metadata !58, null}
!190 = metadata !{i32 140, i32 0, metadata !58, null}
!191 = metadata !{i32 141, i32 0, metadata !58, null}
!192 = metadata !{i32 146, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !61, i32 146, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!194 = metadata !{i32 147, i32 0, metadata !33, null}
!195 = metadata !{i32 157, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !197, i32 157, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!197 = metadata !{i32 786443, metadata !1, metadata !33, i32 149, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!198 = metadata !{i32 159, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !196, i32 158, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!200 = metadata !{i32 177, i32 0, metadata !197, null}
!201 = metadata !{i32 176, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !197, i32 176, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!203 = metadata !{i32 179, i32 0, metadata !197, null}
!204 = metadata !{i32 161, i32 0, metadata !199, null}
!205 = metadata !{i32 162, i32 0, metadata !199, null}
!206 = metadata !{i32 163, i32 0, metadata !199, null}
!207 = metadata !{i32 164, i32 0, metadata !199, null}
!208 = metadata !{i32 165, i32 0, metadata !199, null}
!209 = metadata !{i32 184, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !211, i32 182, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!211 = metadata !{i32 786443, metadata !1, metadata !212, i32 181, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!212 = metadata !{i32 786443, metadata !1, metadata !197, i32 179, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!213 = metadata !{i32 183, i32 0, metadata !210, null}
!214 = metadata !{i32 186, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !210, i32 185, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!216 = metadata !{i32 187, i32 0, metadata !215, null}
!217 = metadata !{i32 188, i32 0, metadata !215, null}
!218 = metadata !{i32 181, i32 0, metadata !211, null}
!219 = metadata !{i32 199, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !221, i32 198, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!221 = metadata !{i32 786443, metadata !1, metadata !197, i32 197, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!222 = metadata !{i32 200, i32 0, metadata !220, null}
!223 = metadata !{i32 197, i32 0, metadata !221, null}
!224 = metadata !{i32 225, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 225, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!226 = metadata !{i32 786443, metadata !1, metadata !33, i32 224, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!227 = metadata !{i32 228, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !225, i32 226, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!229 = metadata !{i32 227, i32 0, metadata !228, null}
!230 = metadata !{i32 229, i32 0, metadata !228, null}
!231 = metadata !{i32 230, i32 0, metadata !228, null}
!232 = metadata !{i32 224, i32 0, metadata !226, null}
!233 = metadata !{i32 240, i32 0, metadata !33, null}
!234 = metadata !{i32 241, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !33, i32 241, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!236 = metadata !{i32 243, i32 0, metadata !33, null}
!237 = metadata !{i32 244, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !63, i32 244, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!239 = metadata !{i32 244, i32 0, metadata !63, null}
!240 = metadata !{i32 245, i32 0, metadata !33, null}
!241 = metadata !{i32 247, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !33, i32 246, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!243 = metadata !{i32 254, i32 0, metadata !242, null}
!244 = metadata !{i32 249, i32 0, metadata !242, null}
!245 = metadata !{i32 250, i32 0, metadata !242, null}
!246 = metadata !{i32 252, i32 0, metadata !242, null}
!247 = metadata !{i32 257, i32 0, metadata !33, null}
!248 = metadata !{i32 258, i32 0, metadata !33, null}
!249 = metadata !{i32 262, i32 0, metadata !33, null}
!250 = metadata !{i32 263, i32 0, metadata !33, null}
!251 = metadata !{i32 267, i32 0, metadata !33, null}
!252 = metadata !{i32 268, i32 0, metadata !33, null}
!253 = metadata !{i32 269, i32 0, metadata !33, null}
!254 = metadata !{i32 270, i32 0, metadata !33, null}
!255 = metadata !{i32 290, i32 0, metadata !64, null}
!256 = metadata !{i32 294, i32 0, metadata !64, null}
!257 = metadata !{i32 298, i32 0, metadata !64, null}
!258 = metadata !{i32 299, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !64, i32 299, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!260 = metadata !{i32 304, i32 0, metadata !64, null}
!261 = metadata !{i32 305, i32 0, metadata !75, null}
!262 = metadata !{i32 300, i32 0, metadata !259, null}
!263 = metadata !{i32 306, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !74, i32 306, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!265 = metadata !{i32 306, i32 0, metadata !74, null}
!266 = metadata !{metadata !"float", metadata !160}
!267 = metadata !{i32 307, i32 0, metadata !64, null}
!268 = metadata !{i32 311, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !64, i32 311, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!270 = metadata !{i32 312, i32 0, metadata !269, null}
!271 = metadata !{i32 313, i32 0, metadata !64, null}
!272 = metadata !{i32 315, i32 0, metadata !64, null}
!273 = metadata !{i32 316, i32 0, metadata !64, null}
!274 = metadata !{i32 335, i32 0, metadata !76, null}
!275 = metadata !{i32 341, i32 0, metadata !76, null}
!276 = metadata !{i32 345, i32 0, metadata !76, null}
!277 = metadata !{i32 346, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !76, i32 346, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!279 = metadata !{i32 347, i32 0, metadata !278, null}
!280 = metadata !{i32 351, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !76, i32 351, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!282 = metadata !{i32 353, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !89, i32 353, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!284 = metadata !{i32 353, i32 0, metadata !89, null}
!285 = metadata !{i32 354, i32 0, metadata !93, null}
!286 = metadata !{i32 356, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !91, i32 356, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!288 = metadata !{i32 356, i32 0, metadata !91, null}
!289 = metadata !{i32 357, i32 0, metadata !92, null}
!290 = metadata !{i32 358, i32 0, metadata !92, null}
!291 = metadata !{i32 361, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !76, i32 360, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!293 = metadata !{i32 360, i32 0, metadata !292, null}
!294 = metadata !{i32 365, i32 0, metadata !76, null}
!295 = metadata !{i32 366, i32 0, metadata !76, null}
!296 = metadata !{i32 367, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !76, i32 367, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!298 = metadata !{i32 369, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !297, i32 368, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!300 = metadata !{i32 370, i32 0, metadata !299, null}
!301 = metadata !{i32 371, i32 0, metadata !299, null}
!302 = metadata !{i32 373, i32 0, metadata !76, null}
!303 = metadata !{i32 375, i32 0, metadata !76, null}
!304 = metadata !{i32 376, i32 0, metadata !76, null}
!305 = metadata !{i32 392, i32 0, metadata !94, null}
!306 = metadata !{i32 398, i32 0, metadata !94, null}
!307 = metadata !{i32 399, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !94, i32 399, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!309 = metadata !{i32 401, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !308, i32 400, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!311 = metadata !{i32 402, i32 0, metadata !310, null}
!312 = metadata !{i32 403, i32 0, metadata !310, null}
!313 = metadata !{i32 405, i32 0, metadata !94, null}
!314 = metadata !{i32 405, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !94, i32 405, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!316 = metadata !{i32 406, i32 0, metadata !94, null}
!317 = metadata !{i32 407, i32 0, metadata !94, null}
!318 = metadata !{i32 424, i32 0, metadata !101, null}
!319 = metadata !{i32 431, i32 0, metadata !101, null}
!320 = metadata !{i32 432, i32 0, metadata !101, null}
!321 = metadata !{i32 434, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !101, i32 434, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!323 = metadata !{i32 435, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !322, i32 435, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!325 = metadata !{i32 437, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !324, i32 436, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!327 = metadata !{i32 438, i32 0, metadata !326, null}
!328 = metadata !{i32 439, i32 0, metadata !326, null}
!329 = metadata !{i32 440, i32 0, metadata !326, null}
!330 = metadata !{i32 442, i32 0, metadata !101, null}
!331 = metadata !{i32 463, i32 0, metadata !113, null}
!332 = metadata !{i32 469, i32 0, metadata !113, null}
!333 = metadata !{i32 471, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !335, i32 471, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!335 = metadata !{i32 786443, metadata !1, metadata !113, i32 470, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!336 = metadata !{i32 474, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !113, i32 474, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!338 = metadata !{i32 475, i32 0, metadata !337, null}
!339 = metadata !{i32 477, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !113, i32 477, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!341 = metadata !{i32 479, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !340, i32 478, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!343 = metadata !{i32 480, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !342, i32 480, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!345 = metadata !{i32 482, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !344, i32 481, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!347 = metadata !{i32 483, i32 0, metadata !346, null}
!348 = metadata !{i32 484, i32 0, metadata !346, null}
!349 = metadata !{i32 488, i32 0, metadata !113, null}
!350 = metadata !{i32 512, i32 0, metadata !124, null}
!351 = metadata !{i32 518, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !124, i32 518, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!353 = metadata !{i32 520, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !352, i32 519, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!355 = metadata !{i32 521, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !354, i32 521, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!357 = metadata !{i32 524, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !124, i32 524, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!359 = metadata !{i32 525, i32 0, metadata !358, null}
!360 = metadata !{i32 522, i32 0, metadata !356, null}
!361 = metadata !{i32 527, i32 0, metadata !124, null}
!362 = metadata !{i32 555, i32 0, metadata !133, null}
!363 = metadata !{i32 564, i32 0, metadata !133, null}
!364 = metadata !{i32 565, i32 0, metadata !133, null}
!365 = metadata !{i32 571, i32 0, metadata !133, null}
!366 = metadata !{i32 572, i32 0, metadata !133, null}
!367 = metadata !{i32 573, i32 0, metadata !133, null}
!368 = metadata !{i32 574, i32 0, metadata !133, null}
!369 = metadata !{i32 575, i32 0, metadata !133, null}
!370 = metadata !{i32 577, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !133, i32 577, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!372 = metadata !{i32 588, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !133, i32 588, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!374 = metadata !{i32 579, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !371, i32 578, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!376 = metadata !{i32 580, i32 0, metadata !375, null}
!377 = metadata !{i32 580, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !375, i32 580, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!379 = metadata !{i32 581, i32 0, metadata !375, null}
!380 = metadata !{i32 581, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !375, i32 581, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!382 = metadata !{i32 582, i32 0, metadata !375, null}
!383 = metadata !{i32 582, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !375, i32 582, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!385 = metadata !{i32 594, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !133, i32 594, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!387 = metadata !{i32 589, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !373, i32 588, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!389 = metadata !{i32 590, i32 0, metadata !388, null}
!390 = metadata !{i32 591, i32 0, metadata !388, null}
!391 = metadata !{i32 592, i32 0, metadata !388, null}
!392 = metadata !{i32 600, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !133, i32 600, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!394 = metadata !{i32 595, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !386, i32 594, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!396 = metadata !{i32 596, i32 0, metadata !395, null}
!397 = metadata !{i32 597, i32 0, metadata !395, null}
!398 = metadata !{i32 598, i32 0, metadata !395, null}
!399 = metadata !{i32 601, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !393, i32 600, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c]
!401 = metadata !{i32 602, i32 0, metadata !400, null}
!402 = metadata !{i32 603, i32 0, metadata !400, null}
!403 = metadata !{i32 604, i32 0, metadata !400, null}
!404 = metadata !{i32 607, i32 0, metadata !133, null}
!405 = metadata !{i32 608, i32 0, metadata !133, null}
