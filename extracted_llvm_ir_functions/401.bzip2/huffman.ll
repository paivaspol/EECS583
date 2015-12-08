; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @BZ2_hbMakeCodeLengths(i8* nocapture %len, i32* nocapture %freq, i32 %alphaSize, i32 %maxLen) #0 {
entry:
  %heap = alloca [260 x i32], align 16
  %weight = alloca [516 x i32], align 16
  %parent = alloca [516 x i32], align 16
  %0 = bitcast [260 x i32]* %heap to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %0) #1
  %1 = bitcast [516 x i32]* %weight to i8*
  call void @llvm.lifetime.start(i64 2064, i8* %1) #1
  %2 = bitcast [516 x i32]* %parent to i8*
  call void @llvm.lifetime.start(i64 2064, i8* %2) #1
  %cmp374 = icmp sgt i32 %alphaSize, 0
  br i1 %cmp374, label %for.body, label %while.body.preheader

while.body.preheader:                             ; preds = %for.body, %entry
  %arrayidx6 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 0
  %arrayidx7 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 0
  %arrayidx8 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 0
  %cmp10341 = icmp slt i32 %alphaSize, 1
  %arrayidx43 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 1
  %3 = sext i32 %alphaSize to i64
  %4 = add i32 %alphaSize, -1
  %5 = add i32 %alphaSize, 1
  br label %while.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %freq, i64 %indvars.iv401
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %6, 0
  %phitmp = shl i32 %6, 8
  %.phitmp = select i1 %cmp1, i32 256, i32 %phitmp
  %indvars.iv.next402 = add i64 %indvars.iv401, 1
  %arrayidx5 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next402
  store i32 %.phitmp, i32* %arrayidx5, align 4, !tbaa !0
  %lftr.wideiv403 = trunc i64 %indvars.iv.next402 to i32
  %exitcond404 = icmp eq i32 %lftr.wideiv403, %alphaSize
  br i1 %exitcond404, label %while.body.preheader, label %for.body

while.body:                                       ; preds = %for.body231, %while.body.preheader
  store i32 0, i32* %arrayidx6, align 16, !tbaa !0
  store i32 0, i32* %arrayidx7, align 16, !tbaa !0
  store i32 -2, i32* %arrayidx8, align 16, !tbaa !0
  br i1 %cmp10341, label %while.end242, label %for.body11

for.body11:                                       ; preds = %while.body, %while.end
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %while.end ], [ 1, %while.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.end ], [ 0, %while.body ]
  %arrayidx13 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv378
  store i32 -1, i32* %arrayidx13, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx16 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next
  %7 = trunc i64 %indvars.iv378 to i32
  store i32 %7, i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv378
  %8 = load i32* %arrayidx21, align 4, !tbaa !0
  %9 = trunc i64 %indvars.iv.next to i32
  %shr331 = ashr i32 %9, 1
  %idxprom22332 = sext i32 %shr331 to i64
  %arrayidx23333 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom22332
  %10 = load i32* %arrayidx23333, align 4, !tbaa !0
  %idxprom24334 = sext i32 %10 to i64
  %arrayidx25335 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom24334
  %11 = load i32* %arrayidx25335, align 4, !tbaa !0
  %cmp26336 = icmp slt i32 %8, %11
  br i1 %cmp26336, label %while.body27, label %while.end

while.body27:                                     ; preds = %for.body11, %while.body27
  %arrayidx32340 = phi i32* [ %arrayidx32, %while.body27 ], [ %arrayidx16, %for.body11 ]
  %12 = phi i32 [ %13, %while.body27 ], [ %10, %for.body11 ]
  %shr339 = phi i32 [ %shr, %while.body27 ], [ %shr331, %for.body11 ]
  store i32 %12, i32* %arrayidx32340, align 4, !tbaa !0
  %shr = ashr i32 %shr339, 1
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom22
  %13 = load i32* %arrayidx23, align 4, !tbaa !0
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom24
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %cmp26 = icmp slt i32 %8, %14
  %idxprom31 = sext i32 %shr339 to i64
  %arrayidx32 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom31
  br i1 %cmp26, label %while.body27, label %while.end

while.end:                                        ; preds = %while.body27, %for.body11
  %arrayidx32.lcssa = phi i32* [ %arrayidx16, %for.body11 ], [ %arrayidx32, %while.body27 ]
  store i32 %7, i32* %arrayidx32.lcssa, align 4, !tbaa !0
  %indvars.iv.next379 = add i64 %indvars.iv378, 1
  %exitcond = icmp eq i32 %9, %alphaSize
  br i1 %exitcond, label %for.end38, label %for.body11

for.end38:                                        ; preds = %while.end
  %cmp39 = icmp slt i32 %alphaSize, 260
  br i1 %cmp39, label %while.cond40.preheader, label %if.then

if.then:                                          ; preds = %for.end38
  call void @BZ2_bz__AssertH__fail(i32 2001) #3
  br label %while.cond40.preheader

while.cond40.preheader:                           ; preds = %if.then, %for.end38
  %cmp41364 = icmp sgt i32 %alphaSize, 1
  br i1 %cmp41364, label %while.body42.lr.ph, label %while.end201

while.body42.lr.ph:                               ; preds = %while.cond40.preheader
  %15 = sext i32 %alphaSize to i64
  br label %while.body42

while.body42:                                     ; preds = %while.end198, %while.body42.lr.ph
  %indvars.iv388 = phi i64 [ %15, %while.body42.lr.ph ], [ %indvars.iv.next389, %while.end198 ]
  %indvars.iv386 = phi i64 [ %3, %while.body42.lr.ph ], [ %indvars.iv.next387, %while.end198 ]
  %16 = load i32* %arrayidx43, align 4, !tbaa !0
  %arrayidx45 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv388
  %17 = load i32* %arrayidx45, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx43, align 4, !tbaa !0
  %indvars.iv.next389 = add i64 %indvars.iv388, -1
  %18 = trunc i64 %indvars.iv388 to i32
  %cmp57345 = icmp slt i32 %18, 3
  br i1 %cmp57345, label %while.end87, label %if.end59.lr.ph

if.end59.lr.ph:                                   ; preds = %while.body42
  %idxprom74 = sext i32 %17 to i64
  %arrayidx75 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom74
  %19 = load i32* %arrayidx75, align 4, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %if.end59.lr.ph, %if.end82
  %shl56347 = phi i32 [ 2, %if.end59.lr.ph ], [ %shl56, %if.end82 ]
  %zz48.0346 = phi i32 [ 1, %if.end59.lr.ph ], [ %yy.0, %if.end82 ]
  %20 = trunc i64 %indvars.iv.next389 to i32
  %cmp60 = icmp slt i32 %shl56347, %20
  br i1 %cmp60, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %if.end59
  %add61330 = or i32 %shl56347, 1
  %idxprom62 = sext i32 %add61330 to i64
  %arrayidx63 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom62
  %21 = load i32* %arrayidx63, align 4, !tbaa !0
  %idxprom64 = sext i32 %21 to i64
  %arrayidx65 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom64
  %22 = load i32* %arrayidx65, align 4, !tbaa !0
  %idxprom66 = sext i32 %shl56347 to i64
  %arrayidx67 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom66
  %23 = load i32* %arrayidx67, align 8, !tbaa !0
  %idxprom68 = sext i32 %23 to i64
  %arrayidx69 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom68
  %24 = load i32* %arrayidx69, align 4, !tbaa !0
  %cmp70 = icmp slt i32 %22, %24
  %add61330.shl56 = select i1 %cmp70, i32 %add61330, i32 %shl56347
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true, %if.end59
  %yy.0 = phi i32 [ %shl56347, %if.end59 ], [ %add61330.shl56, %land.lhs.true ]
  %idxprom76 = sext i32 %yy.0 to i64
  %arrayidx77 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom76
  %25 = load i32* %arrayidx77, align 4, !tbaa !0
  %idxprom78 = sext i32 %25 to i64
  %arrayidx79 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom78
  %26 = load i32* %arrayidx79, align 4, !tbaa !0
  %cmp80 = icmp slt i32 %19, %26
  br i1 %cmp80, label %while.end87, label %if.end82

if.end82:                                         ; preds = %if.end73
  %idxprom85 = sext i32 %zz48.0346 to i64
  %arrayidx86 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom85
  store i32 %25, i32* %arrayidx86, align 4, !tbaa !0
  %shl56 = shl i32 %yy.0, 1
  %cmp57 = icmp sgt i32 %shl56, %20
  br i1 %cmp57, label %while.end87, label %if.end59

while.end87:                                      ; preds = %if.end82, %if.end73, %while.body42
  %zz48.0.lcssa = phi i32 [ 1, %while.body42 ], [ %zz48.0346, %if.end73 ], [ %yy.0, %if.end82 ]
  %idxprom88 = sext i32 %zz48.0.lcssa to i64
  %arrayidx89 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom88
  store i32 %17, i32* %arrayidx89, align 4, !tbaa !0
  %27 = load i32* %arrayidx43, align 4, !tbaa !0
  %arrayidx92 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next389
  %28 = load i32* %arrayidx92, align 4, !tbaa !0
  store i32 %28, i32* %arrayidx43, align 4, !tbaa !0
  %29 = add nsw i64 %indvars.iv388, 4294967294
  %30 = trunc i64 %29 to i32
  %cmp106349 = icmp slt i32 %30, 2
  br i1 %cmp106349, label %while.end137, label %if.end108.lr.ph

if.end108.lr.ph:                                  ; preds = %while.end87
  %idxprom124 = sext i32 %28 to i64
  %arrayidx125 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom124
  %31 = load i32* %arrayidx125, align 4, !tbaa !0
  br label %if.end108

if.end108:                                        ; preds = %if.end108.lr.ph, %if.end132
  %shl105351 = phi i32 [ 2, %if.end108.lr.ph ], [ %shl105, %if.end132 ]
  %zz96.0350 = phi i32 [ 1, %if.end108.lr.ph ], [ %yy98.0, %if.end132 ]
  %cmp109 = icmp slt i32 %shl105351, %30
  br i1 %cmp109, label %land.lhs.true110, label %if.end123

land.lhs.true110:                                 ; preds = %if.end108
  %add111329 = or i32 %shl105351, 1
  %idxprom112 = sext i32 %add111329 to i64
  %arrayidx113 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom112
  %32 = load i32* %arrayidx113, align 4, !tbaa !0
  %idxprom114 = sext i32 %32 to i64
  %arrayidx115 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom114
  %33 = load i32* %arrayidx115, align 4, !tbaa !0
  %idxprom116 = sext i32 %shl105351 to i64
  %arrayidx117 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom116
  %34 = load i32* %arrayidx117, align 8, !tbaa !0
  %idxprom118 = sext i32 %34 to i64
  %arrayidx119 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom118
  %35 = load i32* %arrayidx119, align 4, !tbaa !0
  %cmp120 = icmp slt i32 %33, %35
  %add111329.shl105 = select i1 %cmp120, i32 %add111329, i32 %shl105351
  br label %if.end123

if.end123:                                        ; preds = %land.lhs.true110, %if.end108
  %yy98.0 = phi i32 [ %shl105351, %if.end108 ], [ %add111329.shl105, %land.lhs.true110 ]
  %idxprom126 = sext i32 %yy98.0 to i64
  %arrayidx127 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom126
  %36 = load i32* %arrayidx127, align 4, !tbaa !0
  %idxprom128 = sext i32 %36 to i64
  %arrayidx129 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom128
  %37 = load i32* %arrayidx129, align 4, !tbaa !0
  %cmp130 = icmp slt i32 %31, %37
  br i1 %cmp130, label %while.end137, label %if.end132

if.end132:                                        ; preds = %if.end123
  %idxprom135 = sext i32 %zz96.0350 to i64
  %arrayidx136 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom135
  store i32 %36, i32* %arrayidx136, align 4, !tbaa !0
  %shl105 = shl i32 %yy98.0, 1
  %cmp106 = icmp sgt i32 %shl105, %30
  br i1 %cmp106, label %while.end137, label %if.end108

while.end137:                                     ; preds = %if.end132, %if.end123, %while.end87
  %zz96.0.lcssa = phi i32 [ 1, %while.end87 ], [ %zz96.0350, %if.end123 ], [ %yy98.0, %if.end132 ]
  %idxprom138 = sext i32 %zz96.0.lcssa to i64
  %arrayidx139 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom138
  store i32 %28, i32* %arrayidx139, align 4, !tbaa !0
  %indvars.iv.next387 = add i64 %indvars.iv386, 1
  %idxprom141 = sext i32 %27 to i64
  %arrayidx142 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %idxprom141
  %38 = trunc i64 %indvars.iv.next387 to i32
  store i32 %38, i32* %arrayidx142, align 4, !tbaa !0
  %idxprom143 = sext i32 %16 to i64
  %arrayidx144 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %idxprom143
  store i32 %38, i32* %arrayidx144, align 4, !tbaa !0
  %arrayidx146 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom143
  %39 = load i32* %arrayidx146, align 4, !tbaa !0
  %and = and i32 %39, -256
  %arrayidx148 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom141
  %40 = load i32* %arrayidx148, align 4, !tbaa !0
  %and149 = and i32 %40, -256
  %add150 = add i32 %and149, %and
  %and153 = and i32 %39, 255
  %and156 = and i32 %40, 255
  %cmp157 = icmp ugt i32 %and153, %and156
  %. = select i1 %cmp157, i32 %39, i32 %40
  %and161 = and i32 %., 255
  %add168 = add nsw i32 %and161, 1
  %or = or i32 %add168, %add150
  %arrayidx170 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next387
  store i32 %or, i32* %arrayidx170, align 4, !tbaa !0
  %arrayidx172 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv.next387
  store i32 -1, i32* %arrayidx172, align 4, !tbaa !0
  store i32 %38, i32* %arrayidx92, align 4, !tbaa !0
  %41 = trunc i64 %indvars.iv.next389 to i32
  %shr185353 = ashr i32 %41, 1
  %idxprom186354 = sext i32 %shr185353 to i64
  %arrayidx187355 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom186354
  %42 = load i32* %arrayidx187355, align 4, !tbaa !0
  %idxprom188356 = sext i32 %42 to i64
  %arrayidx189357 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom188356
  %43 = load i32* %arrayidx189357, align 4, !tbaa !0
  %cmp190358 = icmp slt i32 %or, %43
  br i1 %cmp190358, label %while.body191, label %while.end198

while.body191:                                    ; preds = %while.end137, %while.body191
  %arrayidx196362 = phi i32* [ %arrayidx196, %while.body191 ], [ %arrayidx92, %while.end137 ]
  %44 = phi i32 [ %45, %while.body191 ], [ %42, %while.end137 ]
  %shr185361 = phi i32 [ %shr185, %while.body191 ], [ %shr185353, %while.end137 ]
  store i32 %44, i32* %arrayidx196362, align 4, !tbaa !0
  %shr185 = ashr i32 %shr185361, 1
  %idxprom186 = sext i32 %shr185 to i64
  %arrayidx187 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom186
  %45 = load i32* %arrayidx187, align 4, !tbaa !0
  %idxprom188 = sext i32 %45 to i64
  %arrayidx189 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom188
  %46 = load i32* %arrayidx189, align 4, !tbaa !0
  %cmp190 = icmp slt i32 %or, %46
  %idxprom195 = sext i32 %shr185361 to i64
  %arrayidx196 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom195
  br i1 %cmp190, label %while.body191, label %while.end198

while.end198:                                     ; preds = %while.body191, %while.end137
  %arrayidx196.lcssa = phi i32* [ %arrayidx92, %while.end137 ], [ %arrayidx196, %while.body191 ]
  store i32 %38, i32* %arrayidx196.lcssa, align 4, !tbaa !0
  %cmp41 = icmp sgt i32 %41, 1
  br i1 %cmp41, label %while.body42, label %while.cond40.while.end201_crit_edge

while.cond40.while.end201_crit_edge:              ; preds = %while.end198
  %47 = add i32 %4, %alphaSize
  br label %while.end201

while.end201:                                     ; preds = %while.cond40.while.end201_crit_edge, %while.cond40.preheader
  %nNodes.0.lcssa = phi i32 [ %47, %while.cond40.while.end201_crit_edge ], [ %alphaSize, %while.cond40.preheader ]
  %cmp202 = icmp slt i32 %nNodes.0.lcssa, 516
  br i1 %cmp202, label %for.cond205.preheader, label %if.then203

if.then203:                                       ; preds = %while.end201
  call void @BZ2_bz__AssertH__fail(i32 2002) #3
  br label %for.cond205.preheader

for.cond205.preheader:                            ; preds = %if.then203, %while.end201
  br i1 %cmp10341, label %while.end242, label %while.cond208.preheader

while.cond208.preheader:                          ; preds = %for.cond205.preheader, %while.end216
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %while.end216 ], [ 1, %for.cond205.preheader ]
  %i.2370 = phi i32 [ %inc224, %while.end216 ], [ 1, %for.cond205.preheader ]
  %tooLong.0369 = phi i8 [ %.tooLong.0, %while.end216 ], [ 0, %for.cond205.preheader ]
  br label %while.cond208

while.cond208:                                    ; preds = %while.cond208, %while.cond208.preheader
  %k.0 = phi i32 [ %48, %while.cond208 ], [ %i.2370, %while.cond208.preheader ]
  %j.0 = phi i32 [ %inc215, %while.cond208 ], [ 0, %while.cond208.preheader ]
  %idxprom209 = sext i32 %k.0 to i64
  %arrayidx210 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %idxprom209
  %48 = load i32* %arrayidx210, align 4, !tbaa !0
  %cmp211 = icmp sgt i32 %48, -1
  %inc215 = add nsw i32 %j.0, 1
  br i1 %cmp211, label %while.cond208, label %while.end216

while.end216:                                     ; preds = %while.cond208
  %conv = trunc i32 %j.0 to i8
  %49 = add nsw i64 %indvars.iv392, -1
  %arrayidx218 = getelementptr inbounds i8* %len, i64 %49
  store i8 %conv, i8* %arrayidx218, align 1, !tbaa !1
  %cmp219 = icmp sgt i32 %j.0, %maxLen
  %.tooLong.0 = select i1 %cmp219, i8 1, i8 %tooLong.0369
  %indvars.iv.next393 = add i64 %indvars.iv392, 1
  %inc224 = add nsw i32 %i.2370, 1
  %lftr.wideiv395 = trunc i64 %indvars.iv.next393 to i32
  %exitcond396 = icmp eq i32 %lftr.wideiv395, %5
  br i1 %exitcond396, label %for.end225, label %while.cond208.preheader

for.end225:                                       ; preds = %while.end216
  %phitmp376 = icmp eq i8 %.tooLong.0, 0
  br i1 %phitmp376, label %while.end242, label %for.cond228.preheader

for.cond228.preheader:                            ; preds = %for.end225
  br i1 %cmp10341, label %while.end242.critedge, label %for.body231

for.body231:                                      ; preds = %for.cond228.preheader, %for.body231
  %indvars.iv397 = phi i64 [ %indvars.iv.next398, %for.body231 ], [ 1, %for.cond228.preheader ]
  %arrayidx233 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv397
  %50 = load i32* %arrayidx233, align 4, !tbaa !0
  %shr234 = ashr i32 %50, 8
  %div = sdiv i32 %shr234, 2
  %add235 = shl i32 %div, 8
  %shl236 = add i32 %add235, 256
  store i32 %shl236, i32* %arrayidx233, align 4, !tbaa !0
  %indvars.iv.next398 = add i64 %indvars.iv397, 1
  %lftr.wideiv399 = trunc i64 %indvars.iv.next398 to i32
  %exitcond400 = icmp eq i32 %lftr.wideiv399, %5
  br i1 %exitcond400, label %while.body, label %for.body231

while.end242.critedge:                            ; preds = %for.cond228.preheader
  store i32 0, i32* %arrayidx6, align 16, !tbaa !0
  store i32 0, i32* %arrayidx7, align 16, !tbaa !0
  store i32 -2, i32* %arrayidx8, align 16, !tbaa !0
  br label %while.end242

while.end242:                                     ; preds = %while.end242.critedge, %while.body, %for.cond205.preheader, %for.end225
  call void @llvm.lifetime.end(i64 2064, i8* %2) #1
  call void @llvm.lifetime.end(i64 2064, i8* %1) #1
  call void @llvm.lifetime.end(i64 1040, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @BZ2_hbAssignCodes(i32* nocapture %code, i8* nocapture %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %cmp22 = icmp sgt i32 %minLen, %maxLen
  br i1 %cmp22, label %for.end11, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp219 = icmp sgt i32 %alphaSize, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %for.cond1.preheader.lr.ph
  %vec.024 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %shl, %for.end ]
  %n.023 = phi i32 [ %minLen, %for.cond1.preheader.lr.ph ], [ %inc10, %for.end ]
  br i1 %cmp219, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %vec.120 = phi i32 [ %vec.2, %for.inc ], [ %vec.024, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8* %length, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %0 to i32
  %cmp4 = icmp eq i32 %conv, %n.023
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %arrayidx7 = getelementptr inbounds i32* %code, i64 %indvars.iv
  store i32 %vec.120, i32* %arrayidx7, align 4, !tbaa !0
  %inc = add nsw i32 %vec.120, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %vec.2 = phi i32 [ %inc, %if.then ], [ %vec.120, %for.body3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %alphaSize
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.inc, %for.cond1.preheader
  %vec.1.lcssa = phi i32 [ %vec.024, %for.cond1.preheader ], [ %vec.2, %for.inc ]
  %shl = shl i32 %vec.1.lcssa, 1
  %inc10 = add nsw i32 %n.023, 1
  %cmp = icmp slt i32 %n.023, %maxLen
  br i1 %cmp, label %for.cond1.preheader, label %for.end11

for.end11:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_hbCreateDecodeTables(i32* nocapture %limit, i32* nocapture %base, i32* nocapture %perm, i8* nocapture %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %limit159 = bitcast i32* %limit to i8*
  %base171 = bitcast i32* %base to i8*
  %cmp152 = icmp sgt i32 %minLen, %maxLen
  br i1 %cmp152, label %for.cond12.preheader, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2149 = icmp sgt i32 %alphaSize, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc9, %for.cond1.preheader.lr.ph
  %i.0154 = phi i32 [ %minLen, %for.cond1.preheader.lr.ph ], [ %inc10, %for.inc9 ]
  %pp.0153 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %pp.1.lcssa, %for.inc9 ]
  br i1 %cmp2149, label %for.body3, label %for.inc9

for.cond12.preheader:                             ; preds = %for.inc9, %entry
  call void @llvm.memset.p0i8.i64(i8* %base171, i8 0, i64 92, i32 4, i1 false)
  %cmp22146 = icmp sgt i32 %alphaSize, 0
  br i1 %cmp22146, label %for.body24, label %for.body37

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.inc ], [ 0, %for.cond1.preheader ]
  %pp.1150 = phi i32 [ %pp.2, %for.inc ], [ %pp.0153, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8* %length, i64 %indvars.iv172
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %0 to i32
  %cmp4 = icmp eq i32 %conv, %i.0154
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %idxprom6 = sext i32 %pp.1150 to i64
  %arrayidx7 = getelementptr inbounds i32* %perm, i64 %idxprom6
  %1 = trunc i64 %indvars.iv172 to i32
  store i32 %1, i32* %arrayidx7, align 4, !tbaa !0
  %inc = add nsw i32 %pp.1150, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %pp.2 = phi i32 [ %inc, %if.then ], [ %pp.1150, %for.body3 ]
  %indvars.iv.next173 = add i64 %indvars.iv172, 1
  %lftr.wideiv174 = trunc i64 %indvars.iv.next173 to i32
  %exitcond175 = icmp eq i32 %lftr.wideiv174, %alphaSize
  br i1 %exitcond175, label %for.inc9, label %for.body3

for.inc9:                                         ; preds = %for.inc, %for.cond1.preheader
  %pp.1.lcssa = phi i32 [ %pp.0153, %for.cond1.preheader ], [ %pp.2, %for.inc ]
  %inc10 = add nsw i32 %i.0154, 1
  %cmp = icmp slt i32 %i.0154, %maxLen
  br i1 %cmp, label %for.cond1.preheader, label %for.cond12.preheader

for.cond21.for.cond34.preheader_crit_edge:        ; preds = %for.body24
  %.pre.pre = load i32* %base, align 4, !tbaa !0
  br label %for.body37

for.body24:                                       ; preds = %for.cond12.preheader, %for.body24
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.body24 ], [ 0, %for.cond12.preheader ]
  %arrayidx26 = getelementptr inbounds i8* %length, i64 %indvars.iv163
  %2 = load i8* %arrayidx26, align 1, !tbaa !1
  %conv27 = zext i8 %2 to i64
  %add = add i64 %conv27, 1
  %arrayidx29 = getelementptr inbounds i32* %base, i64 %add
  %3 = load i32* %arrayidx29, align 4, !tbaa !0
  %inc30 = add nsw i32 %3, 1
  store i32 %inc30, i32* %arrayidx29, align 4, !tbaa !0
  %indvars.iv.next164 = add i64 %indvars.iv163, 1
  %lftr.wideiv165 = trunc i64 %indvars.iv.next164 to i32
  %exitcond166 = icmp eq i32 %lftr.wideiv165, %alphaSize
  br i1 %exitcond166, label %for.cond21.for.cond34.preheader_crit_edge, label %for.body24

for.cond46.preheader:                             ; preds = %for.body37
  call void @llvm.memset.p0i8.i64(i8* %limit159, i8 0, i64 92, i32 4, i1 false)
  br i1 %cmp152, label %for.cond73.preheader, label %for.body58.lr.ph

for.body37:                                       ; preds = %for.cond12.preheader, %for.cond21.for.cond34.preheader_crit_edge, %for.body37
  %4 = phi i32 [ %add42, %for.body37 ], [ %.pre.pre, %for.cond21.for.cond34.preheader_crit_edge ], [ 0, %for.cond12.preheader ]
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.body37 ], [ 1, %for.cond21.for.cond34.preheader_crit_edge ], [ 1, %for.cond12.preheader ]
  %arrayidx41 = getelementptr inbounds i32* %base, i64 %indvars.iv160
  %5 = load i32* %arrayidx41, align 4, !tbaa !0
  %add42 = add nsw i32 %5, %4
  store i32 %add42, i32* %arrayidx41, align 4, !tbaa !0
  %indvars.iv.next161 = add i64 %indvars.iv160, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next161 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 23
  br i1 %exitcond, label %for.cond46.preheader, label %for.body37

for.body58.lr.ph:                                 ; preds = %for.cond46.preheader
  %6 = sext i32 %minLen to i64
  br label %for.body58

for.cond73.preheader:                             ; preds = %for.body58, %for.cond46.preheader
  %cmp74138 = icmp slt i32 %minLen, %maxLen
  br i1 %cmp74138, label %for.body76.lr.ph, label %for.end89

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %7 = sext i32 %minLen to i64
  br label %for.body76

for.body58:                                       ; preds = %for.body58, %for.body58.lr.ph
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body58 ], [ %6, %for.body58.lr.ph ]
  %vec.0143 = phi i32 [ %shl, %for.body58 ], [ 0, %for.body58.lr.ph ]
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %arrayidx61 = getelementptr inbounds i32* %base, i64 %indvars.iv.next156
  %8 = load i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx63 = getelementptr inbounds i32* %base, i64 %indvars.iv155
  %9 = load i32* %arrayidx63, align 4, !tbaa !0
  %sub64 = sub nsw i32 %8, %9
  %add65 = add nsw i32 %sub64, %vec.0143
  %sub66 = add nsw i32 %add65, -1
  %arrayidx68 = getelementptr inbounds i32* %limit, i64 %indvars.iv155
  store i32 %sub66, i32* %arrayidx68, align 4, !tbaa !0
  %shl = shl i32 %add65, 1
  %10 = trunc i64 %indvars.iv155 to i32
  %cmp56 = icmp slt i32 %10, %maxLen
  br i1 %cmp56, label %for.body58, label %for.cond73.preheader

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv = phi i64 [ %7, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx79 = getelementptr inbounds i32* %limit, i64 %indvars.iv
  %11 = load i32* %arrayidx79, align 4, !tbaa !0
  %add80 = shl i32 %11, 1
  %shl81 = add i32 %add80, 2
  %arrayidx83 = getelementptr inbounds i32* %base, i64 %indvars.iv.next
  %12 = load i32* %arrayidx83, align 4, !tbaa !0
  %sub84 = sub i32 %shl81, %12
  store i32 %sub84, i32* %arrayidx83, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp74 = icmp slt i32 %13, %maxLen
  br i1 %cmp74, label %for.body76, label %for.end89

for.end89:                                        ; preds = %for.body76, %for.cond73.preheader
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
