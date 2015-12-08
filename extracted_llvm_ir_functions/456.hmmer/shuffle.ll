; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/shuffle.c\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"hey, you didn't end on s_f.\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"hey, pos (%d) != len (%d).\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @StrShuffle(i8* %s1, i8* %s2) #0 {
entry:
  %cmp = icmp eq i8* %s1, %s2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %s1, i8* %s2) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i64 @strlen(i8* %s1) #7
  %conv = trunc i64 %call1 to i32
  %cmp226 = icmp sgt i32 %conv, 1
  br i1 %cmp226, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sext = shl i64 %call1, 32
  %0 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call4 = tail call double @sre_random() #6
  %1 = trunc i64 %indvars.iv to i32
  %conv5 = sitofp i32 %1 to double
  %mul = fmul double %conv5, %call4
  %conv6 = fptosi double %mul to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx = getelementptr inbounds i8* %s1, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx8 = getelementptr inbounds i8* %s1, i64 %indvars.iv.next
  %3 = load i8* %arrayidx8, align 1, !tbaa !0
  store i8 %3, i8* %arrayidx, align 1, !tbaa !0
  store i8 %2, i8* %arrayidx8, align 1, !tbaa !0
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp sgt i32 %4, 1
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret i32 1
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare double @sre_random() #3

; Function Attrs: nounwind optsize uwtable
define i32 @StrDPShuffle(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %Z = alloca [26 x i8], align 16
  %Z416 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 0
  %call = call i64 @strlen(i8* %s2) #7
  %conv = trunc i64 %call to i32
  %cmp403 = icmp sgt i32 %conv, 0
  br i1 %cmp403, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call i16** @__ctype_b_loc() #8
  %0 = load i16** %call4, align 8, !tbaa !2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next432 to i32
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv431 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next432, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %s2, i64 %indvars.iv431
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %idxprom3 = sext i8 %2 to i64
  %arrayidx5 = getelementptr inbounds i16* %0, i64 %idxprom3
  %3 = load i16* %arrayidx5, align 2, !tbaa !3
  %and = and i16 %3, 1024
  %tobool = icmp eq i16 %and, 0
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  br i1 %tobool, label %return, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 127, i64 208) #6
  %4 = bitcast i8* %call7 to i8**
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 128, i64 104) #6
  %5 = bitcast i8* %call8 to i32*
  %sub = shl i64 %call, 32
  %sext387 = add i64 %sub, -4294967296
  %conv13 = ashr exact i64 %sext387, 32
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.end
  %indvars.iv427 = phi i64 [ 0, %for.end ], [ %indvars.iv.next428, %for.body12 ]
  %call14 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 131, i64 %conv13) #6
  %arrayidx16 = getelementptr inbounds i8** %4, i64 %indvars.iv427
  store i8* %call14, i8** %arrayidx16, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i32* %5, i64 %indvars.iv427
  store i32 0, i32* %arrayidx18, align 4, !tbaa !4
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32
  %exitcond430 = icmp eq i32 %lftr.wideiv429, 26
  br i1 %exitcond430, label %for.end21, label %for.body12

for.end21:                                        ; preds = %for.body12
  %6 = load i8* %s2, align 1, !tbaa !0
  %conv23 = sext i8 %6 to i32
  %call24 = call i32 @toupper(i32 %conv23) #6
  %cmp27399 = icmp sgt i32 %conv, 1
  br i1 %cmp27399, label %for.body29.lr.ph, label %for.end48

for.body29.lr.ph:                                 ; preds = %for.end21
  %sub25 = add nsw i32 %call24, -65
  br label %for.body29

for.body29:                                       ; preds = %for.body29, %for.body29.lr.ph
  %indvars.iv423 = phi i64 [ 1, %for.body29.lr.ph ], [ %indvars.iv.next424, %for.body29 ]
  %x.1400 = phi i32 [ %sub25, %for.body29.lr.ph ], [ %sub35, %for.body29 ]
  %arrayidx32 = getelementptr inbounds i8* %s2, i64 %indvars.iv423
  %7 = load i8* %arrayidx32, align 1, !tbaa !0
  %conv33 = sext i8 %7 to i32
  %call34 = call i32 @toupper(i32 %conv33) #6
  %sub35 = add nsw i32 %call34, -65
  %conv36 = trunc i32 %sub35 to i8
  %idxprom37 = sext i32 %x.1400 to i64
  %arrayidx38 = getelementptr inbounds i32* %5, i64 %idxprom37
  %8 = load i32* %arrayidx38, align 4, !tbaa !4
  %idxprom39 = sext i32 %8 to i64
  %arrayidx41 = getelementptr inbounds i8** %4, i64 %idxprom37
  %9 = load i8** %arrayidx41, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i8* %9, i64 %idxprom39
  store i8 %conv36, i8* %arrayidx42, align 1, !tbaa !0
  %10 = load i32* %arrayidx38, align 4, !tbaa !4
  %inc45 = add nsw i32 %10, 1
  store i32 %inc45, i32* %arrayidx38, align 4, !tbaa !4
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  %lftr.wideiv425 = trunc i64 %indvars.iv.next424 to i32
  %exitcond426 = icmp eq i32 %lftr.wideiv425, %conv
  br i1 %exitcond426, label %for.end48, label %for.body29

for.end48:                                        ; preds = %for.body29, %for.end21
  %arrayidx52 = getelementptr inbounds i8* %s2, i64 %conv13
  %11 = load i8* %arrayidx52, align 1, !tbaa !0
  %conv53 = sext i8 %11 to i32
  %call54 = call i32 @toupper(i32 %conv53) #6
  %sub55 = shl i32 %call54, 24
  %sext386 = add i32 %sub55, -1090519040
  %conv66 = ashr exact i32 %sext386, 24
  %idxprom114 = sext i32 %conv66 to i64
  %arrayidx115 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %idxprom114
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc101, %if.end161, %for.end48
  %x.2 = phi i32 [ 0, %for.end48 ], [ %inc102, %for.inc101 ], [ 0, %if.end161 ]
  %cmp59 = icmp slt i32 %x.2, 26
  br i1 %cmp59, label %for.body61, label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %for.cond58
  call void @llvm.memset.p0i8.i64(i8* %Z416, i8 0, i64 26, i32 16, i1 false)
  store i8 1, i8* %arrayidx115, align 1, !tbaa !0
  br label %for.body122

for.body61:                                       ; preds = %for.cond58
  %idxprom62 = sext i32 %x.2 to i64
  %arrayidx63 = getelementptr inbounds i32* %5, i64 %idxprom62
  %12 = load i32* %arrayidx63, align 4, !tbaa !4
  %cmp64 = icmp eq i32 %12, 0
  %cmp67 = icmp eq i32 %x.2, %conv66
  %or.cond433 = or i1 %cmp64, %cmp67
  br i1 %or.cond433, label %for.inc101, label %if.end70

if.end70:                                         ; preds = %for.body61
  %call71 = call double @sre_random() #6
  %13 = load i32* %arrayidx63, align 4, !tbaa !4
  %conv74 = sitofp i32 %13 to double
  %mul75 = fmul double %call71, %conv74
  %conv76 = fptosi double %mul75 to i32
  %idxprom77 = sext i32 %conv76 to i64
  %arrayidx79 = getelementptr inbounds i8** %4, i64 %idxprom62
  %14 = load i8** %arrayidx79, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i8* %14, i64 %idxprom77
  %15 = load i8* %arrayidx80, align 1, !tbaa !0
  %sub84 = add nsw i32 %13, -1
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx88 = getelementptr inbounds i8* %14, i64 %idxprom85
  %16 = load i8* %arrayidx88, align 1, !tbaa !0
  store i8 %16, i8* %arrayidx80, align 1, !tbaa !0
  %17 = load i32* %arrayidx63, align 4, !tbaa !4
  %sub96 = add nsw i32 %17, -1
  %idxprom97 = sext i32 %sub96 to i64
  %18 = load i8** %arrayidx79, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds i8* %18, i64 %idxprom97
  store i8 %15, i8* %arrayidx100, align 1, !tbaa !0
  br label %for.inc101

for.inc101:                                       ; preds = %for.body61, %if.end70
  %inc102 = add nsw i32 %x.2, 1
  br label %for.cond58

while.cond116.loopexit:                           ; preds = %for.inc145
  %tobool117 = icmp eq i32 %keep_connecting.2, 0
  br i1 %tobool117, label %for.body151, label %for.body122

for.body122:                                      ; preds = %while.cond116.loopexit, %for.cond104.preheader, %for.inc145
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %for.inc145 ], [ 0, %for.cond104.preheader ], [ 0, %while.cond116.loopexit ]
  %keep_connecting.1396 = phi i32 [ %keep_connecting.2, %for.inc145 ], [ 0, %for.cond104.preheader ], [ 0, %while.cond116.loopexit ]
  %arrayidx132 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %indvars.iv417
  %19 = load i8* %arrayidx132, align 1, !tbaa !0
  %cmp134 = icmp eq i8 %19, 0
  br i1 %cmp134, label %land.lhs.true, label %for.inc145

land.lhs.true:                                    ; preds = %for.body122
  %arrayidx124 = getelementptr inbounds i32* %5, i64 %indvars.iv417
  %20 = load i32* %arrayidx124, align 4, !tbaa !4
  %arrayidx128 = getelementptr inbounds i8** %4, i64 %indvars.iv417
  %sub125 = add nsw i32 %20, -1
  %21 = load i8** %arrayidx128, align 8, !tbaa !2
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx129 = getelementptr inbounds i8* %21, i64 %idxprom126
  %22 = load i8* %arrayidx129, align 1, !tbaa !0
  %idxprom136 = sext i8 %22 to i64
  %arrayidx137 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %idxprom136
  %23 = load i8* %arrayidx137, align 1, !tbaa !0
  %cmp139 = icmp eq i8 %23, 1
  br i1 %cmp139, label %if.then141, label %for.inc145

if.then141:                                       ; preds = %land.lhs.true
  store i8 1, i8* %arrayidx132, align 1, !tbaa !0
  br label %for.inc145

for.inc145:                                       ; preds = %for.body122, %land.lhs.true, %if.then141
  %keep_connecting.2 = phi i32 [ 1, %if.then141 ], [ %keep_connecting.1396, %land.lhs.true ], [ %keep_connecting.1396, %for.body122 ]
  %indvars.iv.next418 = add i64 %indvars.iv417, 1
  %lftr.wideiv419 = trunc i64 %indvars.iv.next418 to i32
  %exitcond420 = icmp eq i32 %lftr.wideiv419, 26
  br i1 %exitcond420, label %while.cond116.loopexit, label %for.body122

for.body151:                                      ; preds = %while.cond116.loopexit, %for.inc169
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %for.inc169 ], [ 0, %while.cond116.loopexit ]
  %arrayidx153 = getelementptr inbounds i32* %5, i64 %indvars.iv421
  %24 = load i32* %arrayidx153, align 4, !tbaa !4
  %cmp154 = icmp eq i32 %24, 0
  %25 = trunc i64 %indvars.iv421 to i32
  %cmp158 = icmp eq i32 %25, %conv66
  %or.cond = or i1 %cmp154, %cmp158
  br i1 %or.cond, label %for.inc169, label %if.end161

if.end161:                                        ; preds = %for.body151
  %arrayidx163 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %indvars.iv421
  %26 = load i8* %arrayidx163, align 1, !tbaa !0
  %cmp165 = icmp eq i8 %26, 0
  br i1 %cmp165, label %for.cond58, label %for.inc169

for.inc169:                                       ; preds = %if.end161, %for.body151
  %indvars.iv.next422 = add i64 %indvars.iv421, 1
  %27 = trunc i64 %indvars.iv.next422 to i32
  %cmp149 = icmp slt i32 %27, 26
  br i1 %cmp149, label %for.body151, label %for.body176

for.body176:                                      ; preds = %for.inc169, %for.inc210
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %for.inc210 ], [ 0, %for.inc169 ]
  %arrayidx178 = getelementptr inbounds i32* %5, i64 %indvars.iv410
  %28 = load i32* %arrayidx178, align 4, !tbaa !4
  %n.0390 = add i32 %28, -1
  %cmp181391 = icmp sgt i32 %n.0390, 1
  br i1 %cmp181391, label %for.body183.lr.ph, label %for.inc210

for.body183.lr.ph:                                ; preds = %for.body176
  %arrayidx190 = getelementptr inbounds i8** %4, i64 %indvars.iv410
  %29 = sext i32 %n.0390 to i64
  br label %for.body183

for.body183:                                      ; preds = %for.body183.lr.ph, %for.body183
  %indvars.iv407 = phi i64 [ %29, %for.body183.lr.ph ], [ %indvars.iv.next408, %for.body183 ]
  %n.0393 = phi i32 [ %n.0390, %for.body183.lr.ph ], [ %n.0, %for.body183 ]
  %n.0.in392 = phi i32 [ %28, %for.body183.lr.ph ], [ %30, %for.body183 ]
  %call184 = call double @sre_random() #6
  %30 = trunc i64 %indvars.iv407 to i32
  %conv185 = sitofp i32 %30 to double
  %mul186 = fmul double %conv185, %call184
  %conv187 = fptosi double %mul186 to i32
  %idxprom188 = sext i32 %conv187 to i64
  %31 = load i8** %arrayidx190, align 8, !tbaa !2
  %arrayidx191 = getelementptr inbounds i8* %31, i64 %idxprom188
  %32 = load i8* %arrayidx191, align 1, !tbaa !0
  %sub193 = add nsw i32 %n.0.in392, -2
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx197 = getelementptr inbounds i8* %31, i64 %idxprom194
  %33 = load i8* %arrayidx197, align 1, !tbaa !0
  store i8 %33, i8* %arrayidx191, align 1, !tbaa !0
  %34 = load i8** %arrayidx190, align 8, !tbaa !2
  %arrayidx207 = getelementptr inbounds i8* %34, i64 %idxprom194
  store i8 %32, i8* %arrayidx207, align 1, !tbaa !0
  %n.0 = add nsw i32 %n.0393, -1
  %cmp181 = icmp sgt i32 %n.0, 1
  %indvars.iv.next408 = add i64 %indvars.iv407, -1
  br i1 %cmp181, label %for.body183, label %for.inc210

for.inc210:                                       ; preds = %for.body183, %for.body176
  %indvars.iv.next411 = add i64 %indvars.iv410, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next411 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 26
  br i1 %exitcond, label %for.end212, label %for.body176

for.end212:                                       ; preds = %for.inc210
  %call213 = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 240, i64 104) #6
  %35 = bitcast i8* %call213 to i32*
  call void @llvm.memset.p0i8.i64(i8* %call213, i8 0, i64 104, i32 4, i1 false)
  %36 = load i8* %s2, align 1, !tbaa !0
  %conv225 = sext i8 %36 to i32
  %call226 = call i32 @toupper(i32 %conv225) #6
  %sub227 = add nsw i32 %call226, -65
  br label %while.body229

while.body229:                                    ; preds = %while.body229, %for.end212
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body229 ], [ 0, %for.end212 ]
  %x.8 = phi i32 [ %conv240, %while.body229 ], [ %sub227, %for.end212 ]
  %pos.2 = phi i32 [ %inc231, %while.body229 ], [ 0, %for.end212 ]
  %add = add nsw i32 %x.8, 65
  %conv230 = trunc i32 %add to i8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc231 = add nsw i32 %pos.2, 1
  %arrayidx233 = getelementptr inbounds i8* %s1, i64 %indvars.iv
  store i8 %conv230, i8* %arrayidx233, align 1, !tbaa !0
  %idxprom234 = sext i32 %x.8 to i64
  %arrayidx235 = getelementptr inbounds i32* %35, i64 %idxprom234
  %37 = load i32* %arrayidx235, align 4, !tbaa !4
  %idxprom236 = sext i32 %37 to i64
  %arrayidx238 = getelementptr inbounds i8** %4, i64 %idxprom234
  %38 = load i8** %arrayidx238, align 8, !tbaa !2
  %arrayidx239 = getelementptr inbounds i8* %38, i64 %idxprom236
  %39 = load i8* %arrayidx239, align 1, !tbaa !0
  %conv240 = sext i8 %39 to i32
  %inc243 = add nsw i32 %37, 1
  store i32 %inc243, i32* %arrayidx235, align 4, !tbaa !4
  %idxprom244 = sext i8 %39 to i64
  %arrayidx245 = getelementptr inbounds i32* %35, i64 %idxprom244
  %40 = load i32* %arrayidx245, align 4, !tbaa !4
  %arrayidx247 = getelementptr inbounds i32* %5, i64 %idxprom244
  %41 = load i32* %arrayidx247, align 4, !tbaa !4
  %cmp248 = icmp eq i32 %40, %41
  br i1 %cmp248, label %while.end252, label %while.body229

while.end252:                                     ; preds = %while.body229
  %add254 = add nsw i32 %conv66, 65
  %conv255 = trunc i32 %add254 to i8
  %inc256 = add nsw i32 %pos.2, 2
  %idxprom257 = sext i32 %inc231 to i64
  %arrayidx258 = getelementptr inbounds i8* %s1, i64 %idxprom257
  store i8 %conv255, i8* %arrayidx258, align 1, !tbaa !0
  %idxprom259 = sext i32 %inc256 to i64
  %arrayidx260 = getelementptr inbounds i8* %s1, i64 %idxprom259
  store i8 0, i8* %arrayidx260, align 1, !tbaa !0
  %cmp262 = icmp eq i32 %conv240, %conv66
  br i1 %cmp262, label %if.end265, label %if.then264

if.then264:                                       ; preds = %while.end252
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end265

if.end265:                                        ; preds = %while.end252, %if.then264
  %cmp266 = icmp eq i32 %inc256, %conv
  br i1 %cmp266, label %if.end269, label %if.then268

if.then268:                                       ; preds = %if.end265
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0), i32 %inc256, i32 %conv) #6
  br label %if.end269

if.end269:                                        ; preds = %if.end265, %if.then268
  call void @Free2DArray(i8** %4, i32 26) #6
  call void @free(i8* %call8) #6
  call void @free(i8* %call213) #6
  br label %return

return:                                           ; preds = %for.body, %if.end269
  %retval.0 = phi i32 [ 1, %if.end269 ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @StrMarkov0(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %p = alloca [26 x float], align 16
  %0 = bitcast [26 x float]* %p to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #5
  %call = call i64 @strlen(i8* %s2) #7
  %conv = trunc i64 %call to i32
  %cmp56 = icmp sgt i32 %conv, 0
  br i1 %cmp56, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %arraydecay64 = getelementptr inbounds [26 x float]* %p, i64 0, i64 0
  call void @FSet(float* %arraydecay64, i32 26, float 0.000000e+00) #6
  br label %for.end21.thread

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call i16** @__ctype_b_loc() #8
  %1 = load i16** %call4, align 8, !tbaa !2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next63 to i32
  %cmp = icmp slt i32 %2, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv62 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next63, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %s2, i64 %indvars.iv62
  %3 = load i8* %arrayidx, align 1, !tbaa !0
  %idxprom3 = sext i8 %3 to i64
  %arrayidx5 = getelementptr inbounds i16* %1, i64 %idxprom3
  %4 = load i16* %arrayidx5, align 2, !tbaa !3
  %and = and i16 %4, 1024
  %tobool = icmp eq i16 %and, 0
  %indvars.iv.next63 = add i64 %indvars.iv62, 1
  br i1 %tobool, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [26 x float]* %p, i64 0, i64 0
  call void @FSet(float* %arraydecay, i32 26, float 0.000000e+00) #6
  br i1 %cmp56, label %for.body10, label %for.end21.thread

for.body10:                                       ; preds = %for.end, %for.body10
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body10 ], [ 0, %for.end ]
  %arrayidx12 = getelementptr inbounds i8* %s2, i64 %indvars.iv58
  %5 = load i8* %arrayidx12, align 1, !tbaa !0
  %conv13 = sext i8 %5 to i32
  %call14 = call i32 @toupper(i32 %conv13) #6
  %sub = add nsw i32 %call14, -65
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [26 x float]* %p, i64 0, i64 %idxprom15
  %6 = load float* %arrayidx16, align 4, !tbaa !5
  %conv18 = fadd float %6, 1.000000e+00
  store float %conv18, float* %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %lftr.wideiv60 = trunc i64 %indvars.iv.next59 to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %conv
  br i1 %exitcond61, label %for.end21, label %for.body10

for.end21.thread:                                 ; preds = %for.end.thread, %for.end
  %arraydecay65.ph = phi float* [ %arraydecay64, %for.end.thread ], [ %arraydecay, %for.end ]
  call void @FNorm(float* %arraydecay65.ph, i32 26) #6
  br label %for.end35

for.end21:                                        ; preds = %for.body10
  call void @FNorm(float* %arraydecay, i32 26) #6
  br i1 %cmp56, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.end21, %for.body26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body26 ], [ 0, %for.end21 ]
  %call28 = call i32 @FChoose(float* %arraydecay, i32 26) #6
  %add29 = add nsw i32 %call28, 65
  %conv30 = trunc i32 %add29 to i8
  %arrayidx32 = getelementptr inbounds i8* %s1, i64 %indvars.iv
  store i8 %conv30, i8* %arrayidx32, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv
  br i1 %exitcond, label %for.cond23.for.end35_crit_edge, label %for.body26

for.cond23.for.end35_crit_edge:                   ; preds = %for.body26
  %sext = shl i64 %call, 32
  %phitmp = ashr exact i64 %sext, 32
  br label %for.end35

for.end35:                                        ; preds = %for.end21.thread, %for.cond23.for.end35_crit_edge, %for.end21
  %pos.2.lcssa = phi i64 [ %phitmp, %for.cond23.for.end35_crit_edge ], [ 0, %for.end21 ], [ 0, %for.end21.thread ]
  %arrayidx37 = getelementptr inbounds i8* %s1, i64 %pos.2.lcssa
  store i8 0, i8* %arrayidx37, align 1, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end35
  %retval.0 = phi i32 [ 1, %for.end35 ], [ 0, %for.body ]
  call void @llvm.lifetime.end(i64 104, i8* %0) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #3

; Function Attrs: optsize
declare void @FNorm(float*, i32) #3

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @StrMarkov1(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %p = alloca [26 x [26 x float]], align 16
  %0 = bitcast [26 x [26 x float]]* %p to i8*
  call void @llvm.lifetime.start(i64 2704, i8* %0) #5
  %call = call i64 @strlen(i8* %s2) #7
  %conv = trunc i64 %call to i32
  %cmp103 = icmp sgt i32 %conv, 0
  br i1 %cmp103, label %for.body.lr.ph, label %for.body10

for.body.lr.ph:                                   ; preds = %entry
  %call4 = call i16** @__ctype_b_loc() #8
  %1 = load i16** %call4, align 8, !tbaa !2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next118 to i32
  %cmp = icmp slt i32 %2, %conv
  br i1 %cmp, label %for.body, label %for.body10

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv117 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next118, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %s2, i64 %indvars.iv117
  %3 = load i8* %arrayidx, align 1, !tbaa !0
  %idxprom3 = sext i8 %3 to i64
  %arrayidx5 = getelementptr inbounds i16* %1, i64 %idxprom3
  %4 = load i16* %arrayidx5, align 2, !tbaa !3
  %and = and i16 %4, 1024
  %tobool = icmp eq i16 %and, 0
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  br i1 %tobool, label %cleanup, label %for.cond

for.body10:                                       ; preds = %entry, %for.cond, %for.body10
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.body10 ], [ 0, %for.cond ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %indvars.iv113, i64 0
  call void @FSet(float* %arraydecay, i32 26, float 0.000000e+00) #6
  %indvars.iv.next114 = add i64 %indvars.iv113, 1
  %lftr.wideiv115 = trunc i64 %indvars.iv.next114 to i32
  %exitcond116 = icmp eq i32 %lftr.wideiv115, 26
  br i1 %exitcond116, label %for.end15, label %for.body10

for.end15:                                        ; preds = %for.body10
  %5 = load i8* %s2, align 1, !tbaa !0
  %conv17 = sext i8 %5 to i32
  %call18 = call i32 @toupper(i32 %conv17) #6
  %sub = add nsw i32 %call18, -65
  %cmp2099 = icmp sgt i32 %conv, 1
  br i1 %cmp2099, label %for.body22, label %for.body41

for.body22:                                       ; preds = %for.end15, %for.body22
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body22 ], [ 1, %for.end15 ]
  %x.1100 = phi i32 [ %sub28, %for.body22 ], [ %sub, %for.end15 ]
  %arrayidx25 = getelementptr inbounds i8* %s2, i64 %indvars.iv109
  %6 = load i8* %arrayidx25, align 1, !tbaa !0
  %conv26 = sext i8 %6 to i32
  %call27 = call i32 @toupper(i32 %conv26) #6
  %sub28 = add nsw i32 %call27, -65
  %idxprom29 = sext i32 %sub28 to i64
  %idxprom30 = sext i32 %x.1100 to i64
  %arrayidx32 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %idxprom30, i64 %idxprom29
  %7 = load float* %arrayidx32, align 4, !tbaa !5
  %conv34 = fadd float %7, 1.000000e+00
  store float %conv34, float* %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next110 = add i64 %indvars.iv109, 1
  %lftr.wideiv111 = trunc i64 %indvars.iv.next110 to i32
  %exitcond112 = icmp eq i32 %lftr.wideiv111, %conv
  br i1 %exitcond112, label %for.body41, label %for.body22

for.body41:                                       ; preds = %for.end15, %for.body22, %for.body41
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body41 ], [ 0, %for.body22 ], [ 0, %for.end15 ]
  %arraydecay44 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %indvars.iv105, i64 0
  call void @FNorm(float* %arraydecay44, i32 26) #6
  %indvars.iv.next106 = add i64 %indvars.iv105, 1
  %lftr.wideiv107 = trunc i64 %indvars.iv.next106 to i32
  %exitcond108 = icmp eq i32 %lftr.wideiv107, 26
  br i1 %exitcond108, label %for.end47, label %for.body41

for.end47:                                        ; preds = %for.body41
  %conv49 = trunc i32 %call18 to i8
  store i8 %conv49, i8* %s1, align 1, !tbaa !0
  br i1 %cmp2099, label %for.body54, label %for.end65

for.body54:                                       ; preds = %for.end47, %for.body54
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body54 ], [ 1, %for.end47 ]
  %x.396 = phi i32 [ %call58, %for.body54 ], [ %sub, %for.end47 ]
  %idxprom55 = sext i32 %x.396 to i64
  %arraydecay57 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %idxprom55, i64 0
  %call58 = call i32 @FChoose(float* %arraydecay57, i32 26) #6
  %add59 = add nsw i32 %call58, 65
  %conv60 = trunc i32 %add59 to i8
  %arrayidx62 = getelementptr inbounds i8* %s1, i64 %indvars.iv
  store i8 %conv60, i8* %arrayidx62, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv
  br i1 %exitcond, label %for.cond51.for.end65_crit_edge, label %for.body54

for.cond51.for.end65_crit_edge:                   ; preds = %for.body54
  %sext = shl i64 %call, 32
  %phitmp = ashr exact i64 %sext, 32
  br label %for.end65

for.end65:                                        ; preds = %for.cond51.for.end65_crit_edge, %for.end47
  %pos.2.lcssa = phi i64 [ %phitmp, %for.cond51.for.end65_crit_edge ], [ 1, %for.end47 ]
  %arrayidx67 = getelementptr inbounds i8* %s1, i64 %pos.2.lcssa
  store i8 0, i8* %arrayidx67, align 1, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end65
  %retval.0 = phi i32 [ 1, %for.end65 ], [ 0, %for.body ]
  call void @llvm.lifetime.end(i64 2704, i8* %0) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @StrReverse(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  %call = tail call i64 @strlen(i8* %s2) #7
  %conv = trunc i64 %call to i32
  %div = sdiv i32 %conv, 2
  %cmp34 = icmp sgt i32 %conv, 1
  br i1 %cmp34, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i64 %call, 4294967295
  %0 = icmp sgt i32 %conv, 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %sub2 = sub i64 %sub, %indvars.iv
  %sext36 = shl i64 %sub2, 32
  %idxprom = ashr exact i64 %sext36, 32
  %arrayidx = getelementptr inbounds i8* %s2, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %arrayidx4 = getelementptr inbounds i8* %s2, i64 %indvars.iv
  %2 = load i8* %arrayidx4, align 1, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8* %s1, i64 %idxprom
  store i8 %2, i8* %arrayidx8, align 1, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8* %s1, i64 %indvars.iv
  store i8 %1, i8* %arrayidx10, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %div
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %4 = sext i32 %div to i64
  %phitmp = select i1 %0, i64 %4, i64 1
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %pos.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %rem33 = and i32 %conv, 1
  %tobool = icmp eq i32 %rem33, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds i8* %s2, i64 %pos.0.lcssa
  %5 = load i8* %arrayidx12, align 1, !tbaa !0
  %arrayidx14 = getelementptr inbounds i8* %s1, i64 %pos.0.lcssa
  store i8 %5, i8* %arrayidx14, align 1, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %sext = shl i64 %call, 32
  %idxprom15 = ashr exact i64 %sext, 32
  %arrayidx16 = getelementptr inbounds i8* %s1, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1, !tbaa !0
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @StrRegionalShuffle(i8* %s1, i8* %s2, i32 %w) #0 {
entry:
  %cmp = icmp eq i8* %s1, %s2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %s1, i8* %s2) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i64 @strlen(i8* %s1) #7
  %conv = trunc i64 %call1 to i32
  %cmp253 = icmp sgt i32 %conv, 0
  br i1 %cmp253, label %for.body.lr.ph, label %for.end27

for.body.lr.ph:                                   ; preds = %if.end
  %0 = xor i32 %w, -1
  %1 = xor i32 %conv, -1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body13, %for.body
  %cmp2 = icmp slt i32 %add, %conv
  %indvars.iv.next = sub i32 %indvars.iv, %w
  br i1 %cmp2, label %for.body, label %for.end27

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %indvars.iv = phi i32 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.loopexit ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.loopexit ]
  %add = add nsw i32 %i.054, %w
  %cmp5 = icmp slt i32 %conv, %add
  %conv.add = select i1 %cmp5, i32 %conv, i32 %add
  %j.050 = add nsw i32 %conv.add, -1
  %cmp1151 = icmp sgt i32 %j.050, %i.054
  br i1 %cmp1151, label %for.body13.lr.ph, label %for.cond.loopexit

for.body13.lr.ph:                                 ; preds = %for.body
  %2 = icmp sgt i32 %indvars.iv, %1
  %smax = select i1 %2, i32 %indvars.iv, i32 %1
  %3 = sub i32 -2, %smax
  %4 = sext i32 %3 to i64
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %indvars.iv55 = phi i64 [ %4, %for.body13.lr.ph ], [ %indvars.iv.next56, %for.body13 ]
  %j.052 = phi i32 [ %j.050, %for.body13.lr.ph ], [ %j.0, %for.body13 ]
  %call14 = tail call double @sre_random() #6
  %5 = trunc i64 %indvars.iv55 to i32
  %sub15 = sub nsw i32 %5, %i.054
  %conv16 = sitofp i32 %sub15 to double
  %mul = fmul double %conv16, %call14
  %conv17 = fptosi double %mul to i32
  %add18 = add nsw i32 %conv17, %i.054
  %idxprom = sext i32 %add18 to i64
  %arrayidx = getelementptr inbounds i8* %s1, i64 %idxprom
  %6 = load i8* %arrayidx, align 1, !tbaa !0
  %arrayidx20 = getelementptr inbounds i8* %s1, i64 %indvars.iv55
  %7 = load i8* %arrayidx20, align 1, !tbaa !0
  store i8 %7, i8* %arrayidx, align 1, !tbaa !0
  store i8 %6, i8* %arrayidx20, align 1, !tbaa !0
  %j.0 = add nsw i32 %j.052, -1
  %cmp11 = icmp sgt i32 %j.0, %i.054
  %indvars.iv.next56 = add i64 %indvars.iv55, -1
  br i1 %cmp11, label %for.body13, label %for.cond.loopexit

for.end27:                                        ; preds = %for.cond.loopexit, %if.end
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @AlignmentShuffle(i8** %ali1, i8** %ali2, i32 %nseq, i32 %alen) #0 {
entry:
  %cmp = icmp eq i8** %ali1, %ali2
  br i1 %cmp, label %for.cond4.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp178 = icmp sgt i32 %nseq, 0
  br i1 %cmp178, label %for.body, label %for.cond14.preheader

for.cond4.preheader:                              ; preds = %for.body, %entry
  %cmp576 = icmp sgt i32 %nseq, 0
  br i1 %cmp576, label %for.body6.lr.ph, label %for.cond14.preheader

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %idxprom7 = sext i32 %alen to i64
  br label %for.body6

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8** %ali1, i64 %indvars.iv87
  %0 = load i8** %arrayidx, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8** %ali2, i64 %indvars.iv87
  %1 = load i8** %arrayidx3, align 8, !tbaa !2
  %call = tail call i8* @strcpy(i8* %0, i8* %1) #6
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %nseq
  br i1 %exitcond90, label %for.cond4.preheader, label %for.body

for.cond14.preheader:                             ; preds = %for.cond.preheader, %for.body6, %for.cond4.preheader
  %cmp57692 = phi i1 [ false, %for.cond4.preheader ], [ %cmp576, %for.body6 ], [ false, %for.cond.preheader ]
  %cmp1574 = icmp sgt i32 %alen, 1
  br i1 %cmp1574, label %for.body16.lr.ph, label %for.end44

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %2 = sext i32 %alen to i64
  br label %for.body16

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv83 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next84, %for.body6 ]
  %arrayidx9 = getelementptr inbounds i8** %ali1, i64 %indvars.iv83
  %3 = load i8** %arrayidx9, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8* %3, i64 %idxprom7
  store i8 0, i8* %arrayidx10, align 1, !tbaa !0
  %indvars.iv.next84 = add i64 %indvars.iv83, 1
  %lftr.wideiv85 = trunc i64 %indvars.iv.next84 to i32
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %nseq
  br i1 %exitcond86, label %for.cond14.preheader, label %for.body6

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc43
  %indvars.iv80 = phi i64 [ %2, %for.body16.lr.ph ], [ %indvars.iv.next81.pre-phi, %for.inc43 ]
  %call17 = tail call double @sre_random() #6
  br i1 %cmp57692, label %for.body22.lr.ph, label %for.body16.for.inc43_crit_edge

for.body16.for.inc43_crit_edge:                   ; preds = %for.body16
  %indvars.iv.next81.pre = add i64 %indvars.iv80, -1
  br label %for.inc43

for.body22.lr.ph:                                 ; preds = %for.body16
  %4 = trunc i64 %indvars.iv80 to i32
  %conv = sitofp i32 %4 to double
  %mul = fmul double %conv, %call17
  %conv18 = fptosi double %mul to i32
  %idxprom23 = sext i32 %conv18 to i64
  %5 = add nsw i64 %indvars.iv80, -1
  br label %for.body22

for.body22:                                       ; preds = %for.body22, %for.body22.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx25 = getelementptr inbounds i8** %ali1, i64 %indvars.iv
  %6 = load i8** %arrayidx25, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i8* %6, i64 %idxprom23
  %7 = load i8* %arrayidx26, align 1, !tbaa !0
  %arrayidx30 = getelementptr inbounds i8* %6, i64 %5
  %8 = load i8* %arrayidx30, align 1, !tbaa !0
  store i8 %8, i8* %arrayidx26, align 1, !tbaa !0
  %9 = load i8** %arrayidx25, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds i8* %9, i64 %5
  store i8 %7, i8* %arrayidx39, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.inc43, label %for.body22

for.inc43:                                        ; preds = %for.body22, %for.body16.for.inc43_crit_edge
  %indvars.iv.next81.pre-phi = phi i64 [ %indvars.iv.next81.pre, %for.body16.for.inc43_crit_edge ], [ %5, %for.body22 ]
  %10 = trunc i64 %indvars.iv.next81.pre-phi to i32
  %cmp15 = icmp sgt i32 %10, 1
  br i1 %cmp15, label %for.body16, label %for.end44

for.end44:                                        ; preds = %for.inc43, %for.cond14.preheader
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @AlignmentBootstrap(i8** nocapture %ali1, i8** nocapture %ali2, i32 %nseq, i32 %alen) #0 {
entry:
  %cmp42 = icmp sgt i32 %alen, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond15.preheader

for.body.lr.ph:                                   ; preds = %entry
  %conv = sitofp i32 %alen to double
  %cmp340 = icmp sgt i32 %nseq, 0
  br label %for.body

for.cond15.preheader:                             ; preds = %for.inc12, %entry
  %cmp1638 = icmp sgt i32 %nseq, 0
  br i1 %cmp1638, label %for.body18.lr.ph, label %for.end25

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader
  %idxprom19 = sext i32 %alen to i64
  br label %for.body18

for.body:                                         ; preds = %for.inc12, %for.body.lr.ph
  %indvars.iv48 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next49, %for.inc12 ]
  %call = tail call double @sre_random() #6
  br i1 %cmp340, label %for.body5.lr.ph, label %for.inc12

for.body5.lr.ph:                                  ; preds = %for.body
  %mul = fmul double %conv, %call
  %conv1 = fptosi double %mul to i32
  %idxprom = sext i32 %conv1 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv44 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next45, %for.body5 ]
  %arrayidx = getelementptr inbounds i8** %ali2, i64 %indvars.iv44
  %0 = load i8** %arrayidx, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8* %0, i64 %idxprom
  %1 = load i8* %arrayidx7, align 1, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8** %ali1, i64 %indvars.iv44
  %2 = load i8** %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8* %2, i64 %indvars.iv48
  store i8 %1, i8* %arrayidx11, align 1, !tbaa !0
  %indvars.iv.next45 = add i64 %indvars.iv44, 1
  %lftr.wideiv46 = trunc i64 %indvars.iv.next45 to i32
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %nseq
  br i1 %exitcond47, label %for.inc12, label %for.body5

for.inc12:                                        ; preds = %for.body5, %for.body
  %indvars.iv.next49 = add i64 %indvars.iv48, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %alen
  br i1 %exitcond51, label %for.cond15.preheader, label %for.body

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx21 = getelementptr inbounds i8** %ali1, i64 %indvars.iv
  %3 = load i8** %arrayidx21, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i8* %3, i64 %idxprom19
  store i8 0, i8* %arrayidx22, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end25, label %for.body18

for.end25:                                        ; preds = %for.body18, %for.cond15.preheader
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @QRNAShuffle(i8* %xs, i8* %ys, i8* %x, i8* %y) #0 {
entry:
  %cmp = icmp eq i8* %xs, %x
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @strcpy(i8* %xs, i8* %x) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = icmp eq i8* %ys, %y
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @strcpy(i8* %ys, i8* %y) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %call5 = tail call i64 @strlen(i8* %x) #7
  %conv = trunc i64 %call5 to i32
  %sext = shl i64 %call5, 32
  %mul = ashr exact i64 %sext, 30
  %call7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 572, i64 %mul) #6
  %0 = bitcast i8* %call7 to i32*
  %call10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 573, i64 %mul) #6
  %1 = bitcast i8* %call10 to i32*
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 574, i64 %mul) #6
  %2 = bitcast i8* %call13 to i32*
  %cmp14573 = icmp sgt i32 %conv, 0
  br i1 %cmp14573, label %for.body, label %for.end377

for.cond207.preheader:                            ; preds = %for.inc
  %cmp208571 = icmp sgt i32 %nxy.1, 1
  br i1 %cmp208571, label %for.body210.lr.ph, label %for.cond264.preheader

for.body210.lr.ph:                                ; preds = %for.cond207.preheader
  %3 = sext i32 %nxy.1 to i64
  br label %for.body210

for.body:                                         ; preds = %if.end4, %for.inc
  %indvars.iv585 = phi i64 [ %indvars.iv.next586, %for.inc ], [ 0, %if.end4 ]
  %ny.0576 = phi i32 [ %ny.1, %for.inc ], [ 0, %if.end4 ]
  %nx.0575 = phi i32 [ %nx.1, %for.inc ], [ 0, %if.end4 ]
  %nxy.0574 = phi i32 [ %nxy.1, %for.inc ], [ 0, %if.end4 ]
  %arrayidx = getelementptr inbounds i8* %x, i64 %indvars.iv585
  %4 = load i8* %arrayidx, align 1, !tbaa !0
  switch i8 %4, label %land.lhs.true101 [
    i8 32, label %land.lhs.true
    i8 46, label %land.lhs.true
    i8 95, label %land.lhs.true
    i8 45, label %land.lhs.true
    i8 126, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %arrayidx43 = getelementptr inbounds i8* %y, i64 %indvars.iv585
  %5 = load i8* %arrayidx43, align 1, !tbaa !0
  switch i8 %5, label %if.else [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.else:                                          ; preds = %land.lhs.true
  switch i8 %4, label %land.lhs.true101 [
    i8 32, label %if.then164
    i8 46, label %if.then164
    i8 95, label %if.then164
    i8 45, label %if.then164
    i8 126, label %if.then164
  ]

land.lhs.true101:                                 ; preds = %if.else, %for.body
  %arrayidx103 = getelementptr inbounds i8* %y, i64 %indvars.iv585
  %6 = load i8* %arrayidx103, align 1, !tbaa !0
  switch i8 %6, label %if.then131 [
    i8 32, label %if.else134
    i8 46, label %if.else134
    i8 95, label %if.else134
    i8 45, label %if.else134
    i8 126, label %if.else134
  ]

if.then131:                                       ; preds = %land.lhs.true101
  %idxprom132 = sext i32 %nxy.0574 to i64
  %arrayidx133 = getelementptr inbounds i32* %0, i64 %idxprom132
  %7 = trunc i64 %indvars.iv585 to i32
  store i32 %7, i32* %arrayidx133, align 4, !tbaa !4
  %inc = add nsw i32 %nxy.0574, 1
  br label %for.inc

if.else134:                                       ; preds = %land.lhs.true101, %land.lhs.true101, %land.lhs.true101, %land.lhs.true101, %land.lhs.true101
  switch i8 %4, label %if.else168 [
    i8 32, label %if.then164
    i8 46, label %if.then164
    i8 95, label %if.then164
    i8 45, label %if.then164
    i8 126, label %if.then164
  ]

if.then164:                                       ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else134, %if.else134, %if.else134, %if.else134, %if.else134
  %idxprom165 = sext i32 %ny.0576 to i64
  %arrayidx166 = getelementptr inbounds i32* %2, i64 %idxprom165
  %8 = trunc i64 %indvars.iv585 to i32
  store i32 %8, i32* %arrayidx166, align 4, !tbaa !4
  %inc167 = add nsw i32 %ny.0576, 1
  br label %for.inc

if.else168:                                       ; preds = %if.else134
  %arrayidx170 = getelementptr inbounds i8* %y, i64 %indvars.iv585
  %9 = load i8* %arrayidx170, align 1, !tbaa !0
  switch i8 %9, label %for.inc [
    i8 32, label %if.then198
    i8 46, label %if.then198
    i8 95, label %if.then198
    i8 45, label %if.then198
    i8 126, label %if.then198
  ]

if.then198:                                       ; preds = %if.else168, %if.else168, %if.else168, %if.else168, %if.else168
  %idxprom199 = sext i32 %nx.0575 to i64
  %arrayidx200 = getelementptr inbounds i32* %1, i64 %idxprom199
  %10 = trunc i64 %indvars.iv585 to i32
  store i32 %10, i32* %arrayidx200, align 4, !tbaa !4
  %inc201 = add nsw i32 %nx.0575, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else168, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %if.then164, %if.then198, %if.then131
  %nxy.1 = phi i32 [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %if.then164 ], [ %nxy.0574, %if.then198 ], [ %inc, %if.then131 ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %land.lhs.true ], [ %nxy.0574, %if.else168 ]
  %nx.1 = phi i32 [ %nx.0575, %land.lhs.true ], [ %nx.0575, %if.then164 ], [ %inc201, %if.then198 ], [ %nx.0575, %if.then131 ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %land.lhs.true ], [ %nx.0575, %if.else168 ]
  %ny.1 = phi i32 [ %ny.0576, %land.lhs.true ], [ %inc167, %if.then164 ], [ %ny.0576, %if.then198 ], [ %ny.0576, %if.then131 ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %land.lhs.true ], [ %ny.0576, %if.else168 ]
  %indvars.iv.next586 = add i64 %indvars.iv585, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next586 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv
  br i1 %exitcond, label %for.cond207.preheader, label %for.body

for.cond264.preheader:                            ; preds = %for.body210, %for.cond207.preheader
  %cmp265569 = icmp sgt i32 %nx.1, 1
  br i1 %cmp265569, label %for.body267.lr.ph, label %for.cond321.preheader

for.body267.lr.ph:                                ; preds = %for.cond264.preheader
  %11 = sext i32 %nx.1 to i64
  br label %for.body267

for.body210:                                      ; preds = %for.body210.lr.ph, %for.body210
  %indvars.iv583 = phi i64 [ %3, %for.body210.lr.ph ], [ %indvars.iv.next584, %for.body210 ]
  %call211 = tail call double @sre_random() #6
  %12 = trunc i64 %indvars.iv583 to i32
  %conv212 = sitofp i32 %12 to double
  %mul213 = fmul double %conv212, %call211
  %conv214 = fptosi double %mul213 to i32
  %idxprom215 = sext i32 %conv214 to i64
  %arrayidx216 = getelementptr inbounds i32* %0, i64 %idxprom215
  %13 = load i32* %arrayidx216, align 4, !tbaa !4
  %idxprom217 = sext i32 %13 to i64
  %arrayidx218 = getelementptr inbounds i8* %xs, i64 %idxprom217
  %14 = load i8* %arrayidx218, align 1, !tbaa !0
  %arrayidx222 = getelementptr inbounds i8* %ys, i64 %idxprom217
  %15 = load i8* %arrayidx222, align 1, !tbaa !0
  %indvars.iv.next584 = add i64 %indvars.iv583, -1
  %arrayidx226 = getelementptr inbounds i32* %0, i64 %indvars.iv.next584
  %16 = load i32* %arrayidx226, align 4, !tbaa !4
  %idxprom227 = sext i32 %16 to i64
  %arrayidx228 = getelementptr inbounds i8* %xs, i64 %idxprom227
  %17 = load i8* %arrayidx228, align 1, !tbaa !0
  store i8 %17, i8* %arrayidx218, align 1, !tbaa !0
  %18 = load i32* %arrayidx226, align 4, !tbaa !4
  %idxprom236 = sext i32 %18 to i64
  %arrayidx237 = getelementptr inbounds i8* %ys, i64 %idxprom236
  %19 = load i8* %arrayidx237, align 1, !tbaa !0
  %20 = load i32* %arrayidx216, align 4, !tbaa !4
  %idxprom240 = sext i32 %20 to i64
  %arrayidx241 = getelementptr inbounds i8* %ys, i64 %idxprom240
  store i8 %19, i8* %arrayidx241, align 1, !tbaa !0
  %21 = load i32* %arrayidx226, align 4, !tbaa !4
  store i32 %21, i32* %arrayidx216, align 4, !tbaa !4
  %22 = load i32* %arrayidx226, align 4, !tbaa !4
  %idxprom250 = sext i32 %22 to i64
  %arrayidx251 = getelementptr inbounds i8* %xs, i64 %idxprom250
  store i8 %14, i8* %arrayidx251, align 1, !tbaa !0
  %23 = load i32* %arrayidx226, align 4, !tbaa !4
  %idxprom255 = sext i32 %23 to i64
  %arrayidx256 = getelementptr inbounds i8* %ys, i64 %idxprom255
  store i8 %15, i8* %arrayidx256, align 1, !tbaa !0
  %24 = load i32* %arrayidx226, align 4, !tbaa !4
  store i32 %24, i32* %arrayidx216, align 4, !tbaa !4
  %25 = trunc i64 %indvars.iv.next584 to i32
  %cmp208 = icmp sgt i32 %25, 1
  br i1 %cmp208, label %for.body210, label %for.cond264.preheader

for.cond321.preheader:                            ; preds = %for.body267, %for.cond264.preheader
  %cmp322567 = icmp sgt i32 %ny.1, 1
  br i1 %cmp322567, label %for.body324.lr.ph, label %for.end377

for.body324.lr.ph:                                ; preds = %for.cond321.preheader
  %26 = sext i32 %ny.1 to i64
  br label %for.body324

for.body267:                                      ; preds = %for.body267.lr.ph, %for.body267
  %indvars.iv581 = phi i64 [ %11, %for.body267.lr.ph ], [ %indvars.iv.next582, %for.body267 ]
  %call268 = tail call double @sre_random() #6
  %27 = trunc i64 %indvars.iv581 to i32
  %conv269 = sitofp i32 %27 to double
  %mul270 = fmul double %conv269, %call268
  %conv271 = fptosi double %mul270 to i32
  %idxprom272 = sext i32 %conv271 to i64
  %arrayidx273 = getelementptr inbounds i32* %1, i64 %idxprom272
  %28 = load i32* %arrayidx273, align 4, !tbaa !4
  %idxprom274 = sext i32 %28 to i64
  %arrayidx275 = getelementptr inbounds i8* %xs, i64 %idxprom274
  %29 = load i8* %arrayidx275, align 1, !tbaa !0
  %arrayidx279 = getelementptr inbounds i8* %ys, i64 %idxprom274
  %30 = load i8* %arrayidx279, align 1, !tbaa !0
  %indvars.iv.next582 = add i64 %indvars.iv581, -1
  %arrayidx284 = getelementptr inbounds i32* %1, i64 %indvars.iv.next582
  %31 = load i32* %arrayidx284, align 4, !tbaa !4
  %idxprom285 = sext i32 %31 to i64
  %arrayidx286 = getelementptr inbounds i8* %xs, i64 %idxprom285
  %32 = load i8* %arrayidx286, align 1, !tbaa !0
  store i8 %32, i8* %arrayidx275, align 1, !tbaa !0
  %33 = load i32* %arrayidx284, align 4, !tbaa !4
  %idxprom294 = sext i32 %33 to i64
  %arrayidx295 = getelementptr inbounds i8* %ys, i64 %idxprom294
  %34 = load i8* %arrayidx295, align 1, !tbaa !0
  %35 = load i32* %arrayidx273, align 4, !tbaa !4
  %idxprom298 = sext i32 %35 to i64
  %arrayidx299 = getelementptr inbounds i8* %ys, i64 %idxprom298
  store i8 %34, i8* %arrayidx299, align 1, !tbaa !0
  %36 = load i32* %arrayidx284, align 4, !tbaa !4
  store i32 %36, i32* %arrayidx273, align 4, !tbaa !4
  %37 = load i32* %arrayidx284, align 4, !tbaa !4
  %idxprom308 = sext i32 %37 to i64
  %arrayidx309 = getelementptr inbounds i8* %xs, i64 %idxprom308
  store i8 %29, i8* %arrayidx309, align 1, !tbaa !0
  %38 = load i32* %arrayidx284, align 4, !tbaa !4
  %idxprom313 = sext i32 %38 to i64
  %arrayidx314 = getelementptr inbounds i8* %ys, i64 %idxprom313
  store i8 %30, i8* %arrayidx314, align 1, !tbaa !0
  store i32 %28, i32* %arrayidx284, align 4, !tbaa !4
  %39 = trunc i64 %indvars.iv.next582 to i32
  %cmp265 = icmp sgt i32 %39, 1
  br i1 %cmp265, label %for.body267, label %for.cond321.preheader

for.body324:                                      ; preds = %for.body324.lr.ph, %for.body324
  %indvars.iv = phi i64 [ %26, %for.body324.lr.ph ], [ %indvars.iv.next, %for.body324 ]
  %call325 = tail call double @sre_random() #6
  %40 = trunc i64 %indvars.iv to i32
  %conv326 = sitofp i32 %40 to double
  %mul327 = fmul double %conv326, %call325
  %conv328 = fptosi double %mul327 to i32
  %idxprom329 = sext i32 %conv328 to i64
  %arrayidx330 = getelementptr inbounds i32* %2, i64 %idxprom329
  %41 = load i32* %arrayidx330, align 4, !tbaa !4
  %idxprom331 = sext i32 %41 to i64
  %arrayidx332 = getelementptr inbounds i8* %xs, i64 %idxprom331
  %42 = load i8* %arrayidx332, align 1, !tbaa !0
  %arrayidx336 = getelementptr inbounds i8* %ys, i64 %idxprom331
  %43 = load i8* %arrayidx336, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx341 = getelementptr inbounds i32* %2, i64 %indvars.iv.next
  %44 = load i32* %arrayidx341, align 4, !tbaa !4
  %idxprom342 = sext i32 %44 to i64
  %arrayidx343 = getelementptr inbounds i8* %xs, i64 %idxprom342
  %45 = load i8* %arrayidx343, align 1, !tbaa !0
  store i8 %45, i8* %arrayidx332, align 1, !tbaa !0
  %46 = load i32* %arrayidx341, align 4, !tbaa !4
  %idxprom351 = sext i32 %46 to i64
  %arrayidx352 = getelementptr inbounds i8* %ys, i64 %idxprom351
  %47 = load i8* %arrayidx352, align 1, !tbaa !0
  %48 = load i32* %arrayidx330, align 4, !tbaa !4
  %idxprom355 = sext i32 %48 to i64
  %arrayidx356 = getelementptr inbounds i8* %ys, i64 %idxprom355
  store i8 %47, i8* %arrayidx356, align 1, !tbaa !0
  %49 = load i32* %arrayidx341, align 4, !tbaa !4
  store i32 %49, i32* %arrayidx330, align 4, !tbaa !4
  %50 = load i32* %arrayidx341, align 4, !tbaa !4
  %idxprom365 = sext i32 %50 to i64
  %arrayidx366 = getelementptr inbounds i8* %xs, i64 %idxprom365
  store i8 %42, i8* %arrayidx366, align 1, !tbaa !0
  %51 = load i32* %arrayidx341, align 4, !tbaa !4
  %idxprom370 = sext i32 %51 to i64
  %arrayidx371 = getelementptr inbounds i8* %ys, i64 %idxprom370
  store i8 %43, i8* %arrayidx371, align 1, !tbaa !0
  store i32 %41, i32* %arrayidx341, align 4, !tbaa !4
  %52 = trunc i64 %indvars.iv.next to i32
  %cmp322 = icmp sgt i32 %52, 1
  br i1 %cmp322, label %for.body324, label %for.end377

for.end377:                                       ; preds = %if.end4, %for.body324, %for.cond321.preheader
  tail call void @free(i8* %call7) #6
  tail call void @free(i8* %call10) #6
  tail call void @free(i8* %call13) #6
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"short", metadata !0}
!4 = metadata !{metadata !"int", metadata !0}
!5 = metadata !{metadata !"float", metadata !0}
