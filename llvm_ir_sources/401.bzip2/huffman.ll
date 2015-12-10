; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @BZ2_hbMakeCodeLengths(i8* nocapture %len, i32* nocapture %freq, i32 %alphaSize, i32 %maxLen) #0 {
entry:
  %heap = alloca [260 x i32], align 16
  %weight = alloca [516 x i32], align 16
  %parent = alloca [516 x i32], align 16
  call void @llvm.dbg.value(metadata !{i8* %len}, i64 0, metadata !15), !dbg !82
  call void @llvm.dbg.value(metadata !{i32* %freq}, i64 0, metadata !16), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !17), !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %maxLen}, i64 0, metadata !18), !dbg !85
  %0 = bitcast [260 x i32]* %heap to i8*, !dbg !86
  call void @llvm.lifetime.start(i64 1040, i8* %0) #2, !dbg !86
  call void @llvm.dbg.declare(metadata !{[260 x i32]* %heap}, metadata !28), !dbg !86
  %1 = bitcast [516 x i32]* %weight to i8*, !dbg !87
  call void @llvm.lifetime.start(i64 2064, i8* %1) #2, !dbg !87
  call void @llvm.dbg.declare(metadata !{[516 x i32]* %weight}, metadata !32), !dbg !87
  %2 = bitcast [516 x i32]* %parent to i8*, !dbg !88
  call void @llvm.lifetime.start(i64 2064, i8* %2) #2, !dbg !88
  call void @llvm.dbg.declare(metadata !{[516 x i32]* %parent}, metadata !36), !dbg !88
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !89
  %cmp374 = icmp sgt i32 %alphaSize, 0, !dbg !89
  br i1 %cmp374, label %for.body, label %while.body.preheader, !dbg !89

while.body.preheader:                             ; preds = %for.body, %entry
  %arrayidx6 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 0, !dbg !91
  %arrayidx7 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 0, !dbg !92
  %arrayidx8 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 0, !dbg !93
  %cmp10341 = icmp slt i32 %alphaSize, 1, !dbg !94
  %arrayidx43 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 1, !dbg !95
  %3 = sext i32 %alphaSize to i64
  %4 = add i32 %alphaSize, -1, !dbg !96
  %5 = add i32 %alphaSize, 1, !dbg !97
  br label %while.body, !dbg !97

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %freq, i64 %indvars.iv401, !dbg !98
  %6 = load i32* %arrayidx, align 4, !dbg !98, !tbaa !99
  %cmp1 = icmp eq i32 %6, 0, !dbg !98
  %phitmp = shl i32 %6, 8, !dbg !98
  %.phitmp = select i1 %cmp1, i32 256, i32 %phitmp, !dbg !98
  %indvars.iv.next402 = add i64 %indvars.iv401, 1, !dbg !89
  %arrayidx5 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next402, !dbg !98
  store i32 %.phitmp, i32* %arrayidx5, align 4, !dbg !98, !tbaa !99
  %lftr.wideiv403 = trunc i64 %indvars.iv.next402 to i32, !dbg !89
  %exitcond404 = icmp eq i32 %lftr.wideiv403, %alphaSize, !dbg !89
  br i1 %exitcond404, label %while.body.preheader, label %for.body, !dbg !89

while.body:                                       ; preds = %for.body231, %while.body.preheader
  call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !19), !dbg !97
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !102
  store i32 0, i32* %arrayidx6, align 16, !dbg !91, !tbaa !99
  store i32 0, i32* %arrayidx7, align 16, !dbg !92, !tbaa !99
  store i32 -2, i32* %arrayidx8, align 16, !dbg !93, !tbaa !99
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !23), !dbg !94
  br i1 %cmp10341, label %while.end242, label %for.body11, !dbg !94

for.body11:                                       ; preds = %while.body, %while.end
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %while.end ], [ 1, %while.body ], !dbg !94
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.end ], [ 0, %while.body ]
  %arrayidx13 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv378, !dbg !104
  store i32 -1, i32* %arrayidx13, align 4, !dbg !104, !tbaa !99
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !20), !dbg !105
  %arrayidx16 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next, !dbg !106
  %7 = trunc i64 %indvars.iv378 to i32, !dbg !106
  store i32 %7, i32* %arrayidx16, align 4, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !37), !dbg !107
  call void @llvm.dbg.value(metadata !108, i64 0, metadata !42), !dbg !107
  %arrayidx21 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv378, !dbg !107
  %8 = load i32* %arrayidx21, align 4, !dbg !107, !tbaa !99
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !107
  %shr331 = ashr i32 %9, 1, !dbg !107
  %idxprom22332 = sext i32 %shr331 to i64, !dbg !107
  %arrayidx23333 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom22332, !dbg !107
  %10 = load i32* %arrayidx23333, align 4, !dbg !107, !tbaa !99
  %idxprom24334 = sext i32 %10 to i64, !dbg !107
  %arrayidx25335 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom24334, !dbg !107
  %11 = load i32* %arrayidx25335, align 4, !dbg !107, !tbaa !99
  %cmp26336 = icmp slt i32 %8, %11, !dbg !107
  br i1 %cmp26336, label %while.body27, label %while.end, !dbg !107

while.body27:                                     ; preds = %for.body11, %while.body27
  %arrayidx32340 = phi i32* [ %arrayidx32, %while.body27 ], [ %arrayidx16, %for.body11 ]
  %12 = phi i32 [ %13, %while.body27 ], [ %10, %for.body11 ]
  %shr339 = phi i32 [ %shr, %while.body27 ], [ %shr331, %for.body11 ]
  store i32 %12, i32* %arrayidx32340, align 4, !dbg !109, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %shr339}, i64 0, metadata !37), !dbg !109
  %shr = ashr i32 %shr339, 1, !dbg !107
  %idxprom22 = sext i32 %shr to i64, !dbg !107
  %arrayidx23 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom22, !dbg !107
  %13 = load i32* %arrayidx23, align 4, !dbg !107, !tbaa !99
  %idxprom24 = sext i32 %13 to i64, !dbg !107
  %arrayidx25 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom24, !dbg !107
  %14 = load i32* %arrayidx25, align 4, !dbg !107, !tbaa !99
  %cmp26 = icmp slt i32 %8, %14, !dbg !107
  %idxprom31 = sext i32 %shr339 to i64, !dbg !109
  %arrayidx32 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom31, !dbg !109
  br i1 %cmp26, label %while.body27, label %while.end, !dbg !107

while.end:                                        ; preds = %while.body27, %for.body11
  %arrayidx32.lcssa = phi i32* [ %arrayidx16, %for.body11 ], [ %arrayidx32, %while.body27 ]
  store i32 %7, i32* %arrayidx32.lcssa, align 4, !dbg !107, !tbaa !99
  %indvars.iv.next379 = add i64 %indvars.iv378, 1, !dbg !94
  %exitcond = icmp eq i32 %9, %alphaSize, !dbg !94
  br i1 %exitcond, label %for.end38, label %for.body11, !dbg !94

for.end38:                                        ; preds = %while.end
  %cmp39 = icmp slt i32 %alphaSize, 260, !dbg !111
  br i1 %cmp39, label %while.cond40.preheader, label %if.then, !dbg !111

if.then:                                          ; preds = %for.end38
  call void @BZ2_bz__AssertH__fail(i32 2001) #4, !dbg !111
  br label %while.cond40.preheader, !dbg !111

while.cond40.preheader:                           ; preds = %if.then, %for.end38
  %cmp41364 = icmp sgt i32 %alphaSize, 1, !dbg !96
  br i1 %cmp41364, label %while.body42.lr.ph, label %while.end201, !dbg !96

while.body42.lr.ph:                               ; preds = %while.cond40.preheader
  %15 = sext i32 %alphaSize to i64, !dbg !96
  br label %while.body42, !dbg !96

while.body42:                                     ; preds = %while.end198, %while.body42.lr.ph
  %indvars.iv388 = phi i64 [ %15, %while.body42.lr.ph ], [ %indvars.iv.next389, %while.end198 ], !dbg !96
  %indvars.iv386 = phi i64 [ %3, %while.body42.lr.ph ], [ %indvars.iv.next387, %while.end198 ]
  %16 = load i32* %arrayidx43, align 4, !dbg !95, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !21), !dbg !95
  %arrayidx45 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv388, !dbg !95
  %17 = load i32* %arrayidx45, align 4, !dbg !95, !tbaa !99
  store i32 %17, i32* %arrayidx43, align 4, !dbg !95, !tbaa !99
  %indvars.iv.next389 = add i64 %indvars.iv388, -1, !dbg !96
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !43), !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !47), !dbg !113
  call void @llvm.dbg.value(metadata !114, i64 0, metadata !46), !dbg !115
  %18 = trunc i64 %indvars.iv388 to i32, !dbg !115
  %cmp57345 = icmp slt i32 %18, 3, !dbg !115
  br i1 %cmp57345, label %while.end87, label %if.end59.lr.ph, !dbg !115

if.end59.lr.ph:                                   ; preds = %while.body42
  %idxprom74 = sext i32 %17 to i64, !dbg !115
  %arrayidx75 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom74, !dbg !115
  %19 = load i32* %arrayidx75, align 4, !dbg !115, !tbaa !99
  br label %if.end59, !dbg !115

if.end59:                                         ; preds = %if.end59.lr.ph, %if.end82
  %shl56347 = phi i32 [ 2, %if.end59.lr.ph ], [ %shl56, %if.end82 ]
  %zz48.0346 = phi i32 [ 1, %if.end59.lr.ph ], [ %yy.0, %if.end82 ]
  %20 = trunc i64 %indvars.iv.next389 to i32, !dbg !115
  %cmp60 = icmp slt i32 %shl56347, %20, !dbg !115
  br i1 %cmp60, label %land.lhs.true, label %if.end73, !dbg !115

land.lhs.true:                                    ; preds = %if.end59
  %add61330 = or i32 %shl56347, 1, !dbg !115
  %idxprom62 = sext i32 %add61330 to i64, !dbg !115
  %arrayidx63 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom62, !dbg !115
  %21 = load i32* %arrayidx63, align 4, !dbg !115, !tbaa !99
  %idxprom64 = sext i32 %21 to i64, !dbg !115
  %arrayidx65 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom64, !dbg !115
  %22 = load i32* %arrayidx65, align 4, !dbg !115, !tbaa !99
  %idxprom66 = sext i32 %shl56347 to i64, !dbg !115
  %arrayidx67 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom66, !dbg !115
  %23 = load i32* %arrayidx67, align 8, !dbg !115, !tbaa !99
  %idxprom68 = sext i32 %23 to i64, !dbg !115
  %arrayidx69 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom68, !dbg !115
  %24 = load i32* %arrayidx69, align 4, !dbg !115, !tbaa !99
  %cmp70 = icmp slt i32 %22, %24, !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %add61330}, i64 0, metadata !46), !dbg !115
  %add61330.shl56 = select i1 %cmp70, i32 %add61330, i32 %shl56347, !dbg !115
  br label %if.end73, !dbg !115

if.end73:                                         ; preds = %land.lhs.true, %if.end59
  %yy.0 = phi i32 [ %shl56347, %if.end59 ], [ %add61330.shl56, %land.lhs.true ]
  %idxprom76 = sext i32 %yy.0 to i64, !dbg !115
  %arrayidx77 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom76, !dbg !115
  %25 = load i32* %arrayidx77, align 4, !dbg !115, !tbaa !99
  %idxprom78 = sext i32 %25 to i64, !dbg !115
  %arrayidx79 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom78, !dbg !115
  %26 = load i32* %arrayidx79, align 4, !dbg !115, !tbaa !99
  %cmp80 = icmp slt i32 %19, %26, !dbg !115
  br i1 %cmp80, label %while.end87, label %if.end82, !dbg !115

if.end82:                                         ; preds = %if.end73
  %idxprom85 = sext i32 %zz48.0346 to i64, !dbg !115
  %arrayidx86 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom85, !dbg !115
  store i32 %25, i32* %arrayidx86, align 4, !dbg !115, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %yy.0}, i64 0, metadata !43), !dbg !115
  %shl56 = shl i32 %yy.0, 1, !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %shl56347}, i64 0, metadata !46), !dbg !115
  %cmp57 = icmp sgt i32 %shl56, %20, !dbg !115
  br i1 %cmp57, label %while.end87, label %if.end59, !dbg !115

while.end87:                                      ; preds = %if.end82, %if.end73, %while.body42
  %zz48.0.lcssa = phi i32 [ 1, %while.body42 ], [ %zz48.0346, %if.end73 ], [ %yy.0, %if.end82 ]
  %idxprom88 = sext i32 %zz48.0.lcssa to i64, !dbg !113
  %arrayidx89 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom88, !dbg !113
  store i32 %17, i32* %arrayidx89, align 4, !dbg !113, !tbaa !99
  %27 = load i32* %arrayidx43, align 4, !dbg !117, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !22), !dbg !117
  %arrayidx92 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next389, !dbg !117
  %28 = load i32* %arrayidx92, align 4, !dbg !117, !tbaa !99
  store i32 %28, i32* %arrayidx43, align 4, !dbg !117, !tbaa !99
  %29 = add nsw i64 %indvars.iv388, 4294967294, !dbg !117
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !48), !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !51), !dbg !118
  call void @llvm.dbg.value(metadata !114, i64 0, metadata !50), !dbg !119
  %30 = trunc i64 %29 to i32, !dbg !119
  %cmp106349 = icmp slt i32 %30, 2, !dbg !119
  br i1 %cmp106349, label %while.end137, label %if.end108.lr.ph, !dbg !119

if.end108.lr.ph:                                  ; preds = %while.end87
  %idxprom124 = sext i32 %28 to i64, !dbg !119
  %arrayidx125 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom124, !dbg !119
  %31 = load i32* %arrayidx125, align 4, !dbg !119, !tbaa !99
  br label %if.end108, !dbg !119

if.end108:                                        ; preds = %if.end108.lr.ph, %if.end132
  %shl105351 = phi i32 [ 2, %if.end108.lr.ph ], [ %shl105, %if.end132 ]
  %zz96.0350 = phi i32 [ 1, %if.end108.lr.ph ], [ %yy98.0, %if.end132 ]
  %cmp109 = icmp slt i32 %shl105351, %30, !dbg !119
  br i1 %cmp109, label %land.lhs.true110, label %if.end123, !dbg !119

land.lhs.true110:                                 ; preds = %if.end108
  %add111329 = or i32 %shl105351, 1, !dbg !119
  %idxprom112 = sext i32 %add111329 to i64, !dbg !119
  %arrayidx113 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom112, !dbg !119
  %32 = load i32* %arrayidx113, align 4, !dbg !119, !tbaa !99
  %idxprom114 = sext i32 %32 to i64, !dbg !119
  %arrayidx115 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom114, !dbg !119
  %33 = load i32* %arrayidx115, align 4, !dbg !119, !tbaa !99
  %idxprom116 = sext i32 %shl105351 to i64, !dbg !119
  %arrayidx117 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom116, !dbg !119
  %34 = load i32* %arrayidx117, align 8, !dbg !119, !tbaa !99
  %idxprom118 = sext i32 %34 to i64, !dbg !119
  %arrayidx119 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom118, !dbg !119
  %35 = load i32* %arrayidx119, align 4, !dbg !119, !tbaa !99
  %cmp120 = icmp slt i32 %33, %35, !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %add111329}, i64 0, metadata !50), !dbg !119
  %add111329.shl105 = select i1 %cmp120, i32 %add111329, i32 %shl105351, !dbg !119
  br label %if.end123, !dbg !119

if.end123:                                        ; preds = %land.lhs.true110, %if.end108
  %yy98.0 = phi i32 [ %shl105351, %if.end108 ], [ %add111329.shl105, %land.lhs.true110 ]
  %idxprom126 = sext i32 %yy98.0 to i64, !dbg !119
  %arrayidx127 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom126, !dbg !119
  %36 = load i32* %arrayidx127, align 4, !dbg !119, !tbaa !99
  %idxprom128 = sext i32 %36 to i64, !dbg !119
  %arrayidx129 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom128, !dbg !119
  %37 = load i32* %arrayidx129, align 4, !dbg !119, !tbaa !99
  %cmp130 = icmp slt i32 %31, %37, !dbg !119
  br i1 %cmp130, label %while.end137, label %if.end132, !dbg !119

if.end132:                                        ; preds = %if.end123
  %idxprom135 = sext i32 %zz96.0350 to i64, !dbg !119
  %arrayidx136 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom135, !dbg !119
  store i32 %36, i32* %arrayidx136, align 4, !dbg !119, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %yy98.0}, i64 0, metadata !48), !dbg !119
  %shl105 = shl i32 %yy98.0, 1, !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %shl105351}, i64 0, metadata !50), !dbg !119
  %cmp106 = icmp sgt i32 %shl105, %30, !dbg !119
  br i1 %cmp106, label %while.end137, label %if.end108, !dbg !119

while.end137:                                     ; preds = %if.end132, %if.end123, %while.end87
  %zz96.0.lcssa = phi i32 [ 1, %while.end87 ], [ %zz96.0350, %if.end123 ], [ %yy98.0, %if.end132 ]
  %idxprom138 = sext i32 %zz96.0.lcssa to i64, !dbg !118
  %arrayidx139 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom138, !dbg !118
  store i32 %28, i32* %arrayidx139, align 4, !dbg !118, !tbaa !99
  %indvars.iv.next387 = add i64 %indvars.iv386, 1, !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !19), !dbg !121
  %idxprom141 = sext i32 %27 to i64, !dbg !122
  %arrayidx142 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %idxprom141, !dbg !122
  %38 = trunc i64 %indvars.iv.next387 to i32, !dbg !122
  store i32 %38, i32* %arrayidx142, align 4, !dbg !122, !tbaa !99
  %idxprom143 = sext i32 %16 to i64, !dbg !122
  %arrayidx144 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %idxprom143, !dbg !122
  store i32 %38, i32* %arrayidx144, align 4, !dbg !122, !tbaa !99
  %arrayidx146 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom143, !dbg !123
  %39 = load i32* %arrayidx146, align 4, !dbg !123, !tbaa !99
  %and = and i32 %39, -256, !dbg !123
  %arrayidx148 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom141, !dbg !123
  %40 = load i32* %arrayidx148, align 4, !dbg !123, !tbaa !99
  %and149 = and i32 %40, -256, !dbg !123
  %add150 = add i32 %and149, %and, !dbg !123
  %and153 = and i32 %39, 255, !dbg !123
  %and156 = and i32 %40, 255, !dbg !123
  %cmp157 = icmp ugt i32 %and153, %and156, !dbg !123
  %. = select i1 %cmp157, i32 %39, i32 %40, !dbg !123
  %and161 = and i32 %., 255, !dbg !123
  %add168 = add nsw i32 %and161, 1, !dbg !123
  %or = or i32 %add168, %add150, !dbg !123
  %arrayidx170 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next387, !dbg !123
  store i32 %or, i32* %arrayidx170, align 4, !dbg !123, !tbaa !99
  %arrayidx172 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv.next387, !dbg !124
  store i32 -1, i32* %arrayidx172, align 4, !dbg !124, !tbaa !99
  store i32 %38, i32* %arrayidx92, align 4, !dbg !125, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !54), !dbg !126
  %41 = trunc i64 %indvars.iv.next389 to i32, !dbg !126
  %shr185353 = ashr i32 %41, 1, !dbg !126
  %idxprom186354 = sext i32 %shr185353 to i64, !dbg !126
  %arrayidx187355 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom186354, !dbg !126
  %42 = load i32* %arrayidx187355, align 4, !dbg !126, !tbaa !99
  %idxprom188356 = sext i32 %42 to i64, !dbg !126
  %arrayidx189357 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom188356, !dbg !126
  %43 = load i32* %arrayidx189357, align 4, !dbg !126, !tbaa !99
  %cmp190358 = icmp slt i32 %or, %43, !dbg !126
  br i1 %cmp190358, label %while.body191, label %while.end198, !dbg !126

while.body191:                                    ; preds = %while.end137, %while.body191
  %arrayidx196362 = phi i32* [ %arrayidx196, %while.body191 ], [ %arrayidx92, %while.end137 ]
  %44 = phi i32 [ %45, %while.body191 ], [ %42, %while.end137 ]
  %shr185361 = phi i32 [ %shr185, %while.body191 ], [ %shr185353, %while.end137 ]
  store i32 %44, i32* %arrayidx196362, align 4, !dbg !127, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32 %shr185361}, i64 0, metadata !52), !dbg !127
  %shr185 = ashr i32 %shr185361, 1, !dbg !126
  %idxprom186 = sext i32 %shr185 to i64, !dbg !126
  %arrayidx187 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom186, !dbg !126
  %45 = load i32* %arrayidx187, align 4, !dbg !126, !tbaa !99
  %idxprom188 = sext i32 %45 to i64, !dbg !126
  %arrayidx189 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %idxprom188, !dbg !126
  %46 = load i32* %arrayidx189, align 4, !dbg !126, !tbaa !99
  %cmp190 = icmp slt i32 %or, %46, !dbg !126
  %idxprom195 = sext i32 %shr185361 to i64, !dbg !127
  %arrayidx196 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %idxprom195, !dbg !127
  br i1 %cmp190, label %while.body191, label %while.end198, !dbg !126

while.end198:                                     ; preds = %while.body191, %while.end137
  %arrayidx196.lcssa = phi i32* [ %arrayidx92, %while.end137 ], [ %arrayidx196, %while.body191 ]
  store i32 %38, i32* %arrayidx196.lcssa, align 4, !dbg !126, !tbaa !99
  %cmp41 = icmp sgt i32 %41, 1, !dbg !96
  br i1 %cmp41, label %while.body42, label %while.cond40.while.end201_crit_edge, !dbg !96

while.cond40.while.end201_crit_edge:              ; preds = %while.end198
  %47 = add i32 %4, %alphaSize, !dbg !96
  br label %while.end201, !dbg !96

while.end201:                                     ; preds = %while.cond40.while.end201_crit_edge, %while.cond40.preheader
  %nNodes.0.lcssa = phi i32 [ %47, %while.cond40.while.end201_crit_edge ], [ %alphaSize, %while.cond40.preheader ]
  %cmp202 = icmp slt i32 %nNodes.0.lcssa, 516, !dbg !129
  br i1 %cmp202, label %for.cond205.preheader, label %if.then203, !dbg !129

if.then203:                                       ; preds = %while.end201
  call void @BZ2_bz__AssertH__fail(i32 2002) #4, !dbg !129
  br label %for.cond205.preheader, !dbg !129

for.cond205.preheader:                            ; preds = %if.then203, %while.end201
  br i1 %cmp10341, label %while.end242, label %while.cond208.preheader, !dbg !131

while.cond208.preheader:                          ; preds = %for.cond205.preheader, %while.end216
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %while.end216 ], [ 1, %for.cond205.preheader ]
  %i.2370 = phi i32 [ %inc224, %while.end216 ], [ 1, %for.cond205.preheader ]
  %tooLong.0369 = phi i8 [ %.tooLong.0, %while.end216 ], [ 0, %for.cond205.preheader ]
  br label %while.cond208, !dbg !133

while.cond208:                                    ; preds = %while.cond208, %while.cond208.preheader
  %k.0 = phi i32 [ %48, %while.cond208 ], [ %i.2370, %while.cond208.preheader ]
  %j.0 = phi i32 [ %inc215, %while.cond208 ], [ 0, %while.cond208.preheader ]
  %idxprom209 = sext i32 %k.0 to i64, !dbg !133
  %arrayidx210 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %idxprom209, !dbg !133
  %48 = load i32* %arrayidx210, align 4, !dbg !133, !tbaa !99
  %cmp211 = icmp sgt i32 %48, -1, !dbg !133
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !25), !dbg !135
  %inc215 = add nsw i32 %j.0, 1, !dbg !135
  call void @llvm.dbg.value(metadata !{i32 %inc215}, i64 0, metadata !24), !dbg !135
  br i1 %cmp211, label %while.cond208, label %while.end216, !dbg !133

while.end216:                                     ; preds = %while.cond208
  %conv = trunc i32 %j.0 to i8, !dbg !137
  %49 = add nsw i64 %indvars.iv392, -1, !dbg !137
  %arrayidx218 = getelementptr inbounds i8* %len, i64 %49, !dbg !137
  store i8 %conv, i8* %arrayidx218, align 1, !dbg !137, !tbaa !100
  %cmp219 = icmp sgt i32 %j.0, %maxLen, !dbg !138
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !26), !dbg !138
  %.tooLong.0 = select i1 %cmp219, i8 1, i8 %tooLong.0369, !dbg !138
  %indvars.iv.next393 = add i64 %indvars.iv392, 1, !dbg !131
  %inc224 = add nsw i32 %i.2370, 1, !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %inc224}, i64 0, metadata !23), !dbg !131
  %lftr.wideiv395 = trunc i64 %indvars.iv.next393 to i32, !dbg !131
  %exitcond396 = icmp eq i32 %lftr.wideiv395, %5, !dbg !131
  br i1 %exitcond396, label %for.end225, label %while.cond208.preheader, !dbg !131

for.end225:                                       ; preds = %while.end216
  %phitmp376 = icmp eq i8 %.tooLong.0, 0, !dbg !131
  br i1 %phitmp376, label %while.end242, label %for.cond228.preheader, !dbg !140

for.cond228.preheader:                            ; preds = %for.end225
  br i1 %cmp10341, label %while.end242.critedge, label %for.body231, !dbg !141

for.body231:                                      ; preds = %for.cond228.preheader, %for.body231
  %indvars.iv397 = phi i64 [ %indvars.iv.next398, %for.body231 ], [ 1, %for.cond228.preheader ]
  %arrayidx233 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv397, !dbg !143
  %50 = load i32* %arrayidx233, align 4, !dbg !143, !tbaa !99
  %shr234 = ashr i32 %50, 8, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %shr234}, i64 0, metadata !24), !dbg !143
  %div = sdiv i32 %shr234, 2, !dbg !145
  %add235 = shl i32 %div, 8, !dbg !146
  %shl236 = add i32 %add235, 256, !dbg !146
  store i32 %shl236, i32* %arrayidx233, align 4, !dbg !146, !tbaa !99
  %indvars.iv.next398 = add i64 %indvars.iv397, 1, !dbg !141
  %lftr.wideiv399 = trunc i64 %indvars.iv.next398 to i32, !dbg !141
  %exitcond400 = icmp eq i32 %lftr.wideiv399, %5, !dbg !141
  br i1 %exitcond400, label %while.body, label %for.body231, !dbg !141

while.end242.critedge:                            ; preds = %for.cond228.preheader
  call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !19), !dbg !97
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !102
  store i32 0, i32* %arrayidx6, align 16, !dbg !91, !tbaa !99
  store i32 0, i32* %arrayidx7, align 16, !dbg !92, !tbaa !99
  store i32 -2, i32* %arrayidx8, align 16, !dbg !93, !tbaa !99
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !23), !dbg !94
  br label %while.end242

while.end242:                                     ; preds = %while.end242.critedge, %while.body, %for.cond205.preheader, %for.end225
  call void @llvm.lifetime.end(i64 2064, i8* %2) #2, !dbg !147
  call void @llvm.lifetime.end(i64 2064, i8* %1) #2, !dbg !147
  call void @llvm.lifetime.end(i64 1040, i8* %0) #2, !dbg !147
  ret void, !dbg !147
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @BZ2_hbAssignCodes(i32* nocapture %code, i8* nocapture %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !59), !dbg !148
  tail call void @llvm.dbg.value(metadata !{i8* %length}, i64 0, metadata !60), !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %minLen}, i64 0, metadata !61), !dbg !150
  tail call void @llvm.dbg.value(metadata !{i32 %maxLen}, i64 0, metadata !62), !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !63), !dbg !152
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !65), !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32 %minLen}, i64 0, metadata !64), !dbg !154
  %cmp22 = icmp sgt i32 %minLen, %maxLen, !dbg !154
  br i1 %cmp22, label %for.end11, label %for.cond1.preheader.lr.ph, !dbg !154

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp219 = icmp sgt i32 %alphaSize, 0, !dbg !156
  br label %for.cond1.preheader, !dbg !154

for.cond1.preheader:                              ; preds = %for.end, %for.cond1.preheader.lr.ph
  %vec.024 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %shl, %for.end ]
  %n.023 = phi i32 [ %minLen, %for.cond1.preheader.lr.ph ], [ %inc10, %for.end ]
  br i1 %cmp219, label %for.body3, label %for.end, !dbg !156

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %vec.120 = phi i32 [ %vec.2, %for.inc ], [ %vec.024, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8* %length, i64 %indvars.iv, !dbg !159
  %0 = load i8* %arrayidx, align 1, !dbg !159, !tbaa !100
  %conv = zext i8 %0 to i32, !dbg !159
  %cmp4 = icmp eq i32 %conv, %n.023, !dbg !159
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !159

if.then:                                          ; preds = %for.body3
  %arrayidx7 = getelementptr inbounds i32* %code, i64 %indvars.iv, !dbg !160
  store i32 %vec.120, i32* %arrayidx7, align 4, !dbg !160, !tbaa !99
  %inc = add nsw i32 %vec.120, 1, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !65), !dbg !160
  br label %for.inc, !dbg !160

for.inc:                                          ; preds = %for.body3, %if.then
  %vec.2 = phi i32 [ %inc, %if.then ], [ %vec.120, %for.body3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !156
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !156
  %exitcond = icmp eq i32 %lftr.wideiv, %alphaSize, !dbg !156
  br i1 %exitcond, label %for.end, label %for.body3, !dbg !156

for.end:                                          ; preds = %for.inc, %for.cond1.preheader
  %vec.1.lcssa = phi i32 [ %vec.024, %for.cond1.preheader ], [ %vec.2, %for.inc ]
  %shl = shl i32 %vec.1.lcssa, 1, !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !65), !dbg !162
  %inc10 = add nsw i32 %n.023, 1, !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %inc10}, i64 0, metadata !64), !dbg !154
  %cmp = icmp slt i32 %n.023, %maxLen, !dbg !154
  br i1 %cmp, label %for.cond1.preheader, label %for.end11, !dbg !154

for.end11:                                        ; preds = %for.end, %entry
  ret void, !dbg !163
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_hbCreateDecodeTables(i32* nocapture %limit, i32* nocapture %base, i32* nocapture %perm, i8* nocapture %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %limit}, i64 0, metadata !71), !dbg !164
  tail call void @llvm.dbg.value(metadata !{i32* %base}, i64 0, metadata !72), !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32* %perm}, i64 0, metadata !73), !dbg !166
  tail call void @llvm.dbg.value(metadata !{i8* %length}, i64 0, metadata !74), !dbg !167
  tail call void @llvm.dbg.value(metadata !{i32 %minLen}, i64 0, metadata !75), !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %maxLen}, i64 0, metadata !76), !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32 %alphaSize}, i64 0, metadata !77), !dbg !170
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %minLen}, i64 0, metadata !79), !dbg !172
  %limit159 = bitcast i32* %limit to i8*
  %base171 = bitcast i32* %base to i8*
  %cmp152 = icmp sgt i32 %minLen, %maxLen, !dbg !172
  br i1 %cmp152, label %for.cond12.preheader, label %for.cond1.preheader.lr.ph, !dbg !172

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2149 = icmp sgt i32 %alphaSize, 0, !dbg !174
  br label %for.cond1.preheader, !dbg !172

for.cond1.preheader:                              ; preds = %for.inc9, %for.cond1.preheader.lr.ph
  %i.0154 = phi i32 [ %minLen, %for.cond1.preheader.lr.ph ], [ %inc10, %for.inc9 ]
  %pp.0153 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %pp.1.lcssa, %for.inc9 ]
  br i1 %cmp2149, label %for.body3, label %for.inc9, !dbg !174

for.cond12.preheader:                             ; preds = %for.inc9, %entry
  call void @llvm.memset.p0i8.i64(i8* %base171, i8 0, i64 92, i32 4, i1 false), !dbg !176
  %cmp22146 = icmp sgt i32 %alphaSize, 0, !dbg !178
  br i1 %cmp22146, label %for.body24, label %for.body37, !dbg !178

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.inc ], [ 0, %for.cond1.preheader ]
  %pp.1150 = phi i32 [ %pp.2, %for.inc ], [ %pp.0153, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i8* %length, i64 %indvars.iv172, !dbg !180
  %0 = load i8* %arrayidx, align 1, !dbg !180, !tbaa !100
  %conv = zext i8 %0 to i32, !dbg !180
  %cmp4 = icmp eq i32 %conv, %i.0154, !dbg !180
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !180

if.then:                                          ; preds = %for.body3
  %idxprom6 = sext i32 %pp.1150 to i64, !dbg !181
  %arrayidx7 = getelementptr inbounds i32* %perm, i64 %idxprom6, !dbg !181
  %1 = trunc i64 %indvars.iv172 to i32, !dbg !181
  store i32 %1, i32* %arrayidx7, align 4, !dbg !181, !tbaa !99
  %inc = add nsw i32 %pp.1150, 1, !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !78), !dbg !181
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %for.body3, %if.then
  %pp.2 = phi i32 [ %inc, %if.then ], [ %pp.1150, %for.body3 ]
  %indvars.iv.next173 = add i64 %indvars.iv172, 1, !dbg !174
  %lftr.wideiv174 = trunc i64 %indvars.iv.next173 to i32, !dbg !174
  %exitcond175 = icmp eq i32 %lftr.wideiv174, %alphaSize, !dbg !174
  br i1 %exitcond175, label %for.inc9, label %for.body3, !dbg !174

for.inc9:                                         ; preds = %for.inc, %for.cond1.preheader
  %pp.1.lcssa = phi i32 [ %pp.0153, %for.cond1.preheader ], [ %pp.2, %for.inc ]
  %inc10 = add nsw i32 %i.0154, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %inc10}, i64 0, metadata !79), !dbg !172
  %cmp = icmp slt i32 %i.0154, %maxLen, !dbg !172
  br i1 %cmp, label %for.cond1.preheader, label %for.cond12.preheader, !dbg !172

for.cond21.for.cond34.preheader_crit_edge:        ; preds = %for.body24
  %.pre.pre = load i32* %base, align 4, !dbg !183, !tbaa !99
  br label %for.body37, !dbg !178

for.body24:                                       ; preds = %for.cond12.preheader, %for.body24
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.body24 ], [ 0, %for.cond12.preheader ]
  %arrayidx26 = getelementptr inbounds i8* %length, i64 %indvars.iv163, !dbg !178
  %2 = load i8* %arrayidx26, align 1, !dbg !178, !tbaa !100
  %conv27 = zext i8 %2 to i64, !dbg !178
  %add = add i64 %conv27, 1, !dbg !178
  %arrayidx29 = getelementptr inbounds i32* %base, i64 %add, !dbg !178
  %3 = load i32* %arrayidx29, align 4, !dbg !178, !tbaa !99
  %inc30 = add nsw i32 %3, 1, !dbg !178
  store i32 %inc30, i32* %arrayidx29, align 4, !dbg !178, !tbaa !99
  %indvars.iv.next164 = add i64 %indvars.iv163, 1, !dbg !178
  %lftr.wideiv165 = trunc i64 %indvars.iv.next164 to i32, !dbg !178
  %exitcond166 = icmp eq i32 %lftr.wideiv165, %alphaSize, !dbg !178
  br i1 %exitcond166, label %for.cond21.for.cond34.preheader_crit_edge, label %for.body24, !dbg !178

for.cond46.preheader:                             ; preds = %for.body37
  call void @llvm.memset.p0i8.i64(i8* %limit159, i8 0, i64 92, i32 4, i1 false), !dbg !185
  br i1 %cmp152, label %for.cond73.preheader, label %for.body58.lr.ph, !dbg !187

for.body37:                                       ; preds = %for.cond12.preheader, %for.cond21.for.cond34.preheader_crit_edge, %for.body37
  %4 = phi i32 [ %add42, %for.body37 ], [ %.pre.pre, %for.cond21.for.cond34.preheader_crit_edge ], [ 0, %for.cond12.preheader ], !dbg !183
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.body37 ], [ 1, %for.cond21.for.cond34.preheader_crit_edge ], [ 1, %for.cond12.preheader ]
  %arrayidx41 = getelementptr inbounds i32* %base, i64 %indvars.iv160, !dbg !183
  %5 = load i32* %arrayidx41, align 4, !dbg !183, !tbaa !99
  %add42 = add nsw i32 %5, %4, !dbg !183
  store i32 %add42, i32* %arrayidx41, align 4, !dbg !183, !tbaa !99
  %indvars.iv.next161 = add i64 %indvars.iv160, 1, !dbg !183
  %lftr.wideiv = trunc i64 %indvars.iv.next161 to i32, !dbg !183
  %exitcond = icmp eq i32 %lftr.wideiv, 23, !dbg !183
  br i1 %exitcond, label %for.cond46.preheader, label %for.body37, !dbg !183

for.body58.lr.ph:                                 ; preds = %for.cond46.preheader
  %6 = sext i32 %minLen to i64
  br label %for.body58, !dbg !187

for.cond73.preheader:                             ; preds = %for.body58, %for.cond46.preheader
  %cmp74138 = icmp slt i32 %minLen, %maxLen, !dbg !189
  br i1 %cmp74138, label %for.body76.lr.ph, label %for.end89, !dbg !189

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %7 = sext i32 %minLen to i64
  br label %for.body76, !dbg !189

for.body58:                                       ; preds = %for.body58, %for.body58.lr.ph
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body58 ], [ %6, %for.body58.lr.ph ]
  %vec.0143 = phi i32 [ %shl, %for.body58 ], [ 0, %for.body58.lr.ph ]
  %indvars.iv.next156 = add i64 %indvars.iv155, 1, !dbg !187
  %arrayidx61 = getelementptr inbounds i32* %base, i64 %indvars.iv.next156, !dbg !191
  %8 = load i32* %arrayidx61, align 4, !dbg !191, !tbaa !99
  %arrayidx63 = getelementptr inbounds i32* %base, i64 %indvars.iv155, !dbg !191
  %9 = load i32* %arrayidx63, align 4, !dbg !191, !tbaa !99
  %sub64 = sub nsw i32 %8, %9, !dbg !191
  %add65 = add nsw i32 %sub64, %vec.0143, !dbg !191
  tail call void @llvm.dbg.value(metadata !{i32 %add65}, i64 0, metadata !81), !dbg !191
  %sub66 = add nsw i32 %add65, -1, !dbg !193
  %arrayidx68 = getelementptr inbounds i32* %limit, i64 %indvars.iv155, !dbg !193
  store i32 %sub66, i32* %arrayidx68, align 4, !dbg !193, !tbaa !99
  %shl = shl i32 %add65, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !81), !dbg !194
  %10 = trunc i64 %indvars.iv155 to i32, !dbg !187
  %cmp56 = icmp slt i32 %10, %maxLen, !dbg !187
  br i1 %cmp56, label %for.body58, label %for.cond73.preheader, !dbg !187

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv = phi i64 [ %7, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !189
  %arrayidx79 = getelementptr inbounds i32* %limit, i64 %indvars.iv, !dbg !195
  %11 = load i32* %arrayidx79, align 4, !dbg !195, !tbaa !99
  %add80 = shl i32 %11, 1, !dbg !195
  %shl81 = add i32 %add80, 2, !dbg !195
  %arrayidx83 = getelementptr inbounds i32* %base, i64 %indvars.iv.next, !dbg !195
  %12 = load i32* %arrayidx83, align 4, !dbg !195, !tbaa !99
  %sub84 = sub i32 %shl81, %12, !dbg !195
  store i32 %sub84, i32* %arrayidx83, align 4, !dbg !195, !tbaa !99
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !189
  %cmp74 = icmp slt i32 %13, %maxLen, !dbg !189
  br i1 %cmp74, label %for.body76, label %for.end89, !dbg !189

for.end89:                                        ; preds = %for.body76, %for.cond73.preheader
  ret void, !dbg !196
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !55, metadata !67}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BZ2_hbMakeCodeLengths", metadata !"BZ2_hbMakeCodeLengths", metadata !"", i32 103, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*, i32, i32)* @BZ2_hbMakeCodeLengths, null, null, metadata !14, i32 107} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 107] [BZ2_hbMakeCodeLengths]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !11, metadata !12, metadata !12}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UChar]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"UChar", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [UChar] [line 83, size 0, align 0, offset 0] [from unsigned char]
!10 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Int32]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"Int32", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [Int32] [line 84, size 0, align 0, offset 0] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !28, metadata !32, metadata !36, metadata !37, metadata !42, metadata !43, metadata !46, metadata !47, metadata !48, metadata !50, metadata !51, metadata !52, metadata !54}
!15 = metadata !{i32 786689, metadata !4, metadata !"len", metadata !5, i32 16777319, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 103]
!16 = metadata !{i32 786689, metadata !4, metadata !"freq", metadata !5, i32 33554536, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [freq] [line 104]
!17 = metadata !{i32 786689, metadata !4, metadata !"alphaSize", metadata !5, i32 50331753, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alphaSize] [line 105]
!18 = metadata !{i32 786689, metadata !4, metadata !"maxLen", metadata !5, i32 67108970, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxLen] [line 106]
!19 = metadata !{i32 786688, metadata !4, metadata !"nNodes", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nNodes] [line 112]
!20 = metadata !{i32 786688, metadata !4, metadata !"nHeap", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nHeap] [line 112]
!21 = metadata !{i32 786688, metadata !4, metadata !"n1", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 112]
!22 = metadata !{i32 786688, metadata !4, metadata !"n2", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 112]
!23 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 112]
!24 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 112]
!25 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 112]
!26 = metadata !{i32 786688, metadata !4, metadata !"tooLong", metadata !5, i32 113, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tooLong] [line 113]
!27 = metadata !{i32 786454, metadata !1, null, metadata !"Bool", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Bool] [line 82, size 0, align 0, offset 0] [from unsigned char]
!28 = metadata !{i32 786688, metadata !4, metadata !"heap", metadata !5, i32 115, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heap] [line 115]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8320, i64 32, i32 0, i32 0, metadata !12, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8320, align 32, offset 0] [from Int32]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 260}      ; [ DW_TAG_subrange_type ] [0, 259]
!32 = metadata !{i32 786688, metadata !4, metadata !"weight", metadata !5, i32 116, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 116]
!33 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16512, i64 32, i32 0, i32 0, metadata !12, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16512, align 32, offset 0] [from Int32]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 516}      ; [ DW_TAG_subrange_type ] [0, 515]
!36 = metadata !{i32 786688, metadata !4, metadata !"parent", metadata !5, i32 117, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parent] [line 117]
!37 = metadata !{i32 786688, metadata !38, metadata !"zz", metadata !5, i32 135, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zz] [line 135]
!38 = metadata !{i32 786443, metadata !1, metadata !39, i32 135, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 131, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 131, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 122, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!42 = metadata !{i32 786688, metadata !38, metadata !"tmp", metadata !5, i32 135, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 135]
!43 = metadata !{i32 786688, metadata !44, metadata !"zz", metadata !5, i32 141, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zz] [line 141]
!44 = metadata !{i32 786443, metadata !1, metadata !45, i32 141, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!45 = metadata !{i32 786443, metadata !1, metadata !41, i32 140, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!46 = metadata !{i32 786688, metadata !44, metadata !"yy", metadata !5, i32 141, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yy] [line 141]
!47 = metadata !{i32 786688, metadata !44, metadata !"tmp", metadata !5, i32 141, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 141]
!48 = metadata !{i32 786688, metadata !49, metadata !"zz", metadata !5, i32 142, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zz] [line 142]
!49 = metadata !{i32 786443, metadata !1, metadata !45, i32 142, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!50 = metadata !{i32 786688, metadata !49, metadata !"yy", metadata !5, i32 142, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yy] [line 142]
!51 = metadata !{i32 786688, metadata !49, metadata !"tmp", metadata !5, i32 142, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 142]
!52 = metadata !{i32 786688, metadata !53, metadata !"zz", metadata !5, i32 149, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zz] [line 149]
!53 = metadata !{i32 786443, metadata !1, metadata !45, i32 149, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!54 = metadata !{i32 786688, metadata !53, metadata !"tmp", metadata !5, i32 149, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 149]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BZ2_hbAssignCodes", metadata !"BZ2_hbAssignCodes", metadata !"", i32 192, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32, i32, i32)* @BZ2_hbAssignCodes, null, null, metadata !58, i32 197} ; [ DW_TAG_subprogram ] [line 192] [def] [scope 197] [BZ2_hbAssignCodes]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !11, metadata !8, metadata !12, metadata !12, metadata !12}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!59 = metadata !{i32 786689, metadata !55, metadata !"code", metadata !5, i32 16777408, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code] [line 192]
!60 = metadata !{i32 786689, metadata !55, metadata !"length", metadata !5, i32 33554625, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 193]
!61 = metadata !{i32 786689, metadata !55, metadata !"minLen", metadata !5, i32 50331842, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [minLen] [line 194]
!62 = metadata !{i32 786689, metadata !55, metadata !"maxLen", metadata !5, i32 67109059, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxLen] [line 195]
!63 = metadata !{i32 786689, metadata !55, metadata !"alphaSize", metadata !5, i32 83886276, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alphaSize] [line 196]
!64 = metadata !{i32 786688, metadata !55, metadata !"n", metadata !5, i32 198, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 198]
!65 = metadata !{i32 786688, metadata !55, metadata !"vec", metadata !5, i32 198, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 198]
!66 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !5, i32 198, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 198]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BZ2_hbCreateDecodeTables", metadata !"BZ2_hbCreateDecodeTables", metadata !"", i32 210, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, i8*, i32, i32, i32)* @BZ2_hbCreateDecodeTables, null, null, metadata !70, i32 217} ; [ DW_TAG_subprogram ] [line 210] [def] [scope 217] [BZ2_hbCreateDecodeTables]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !11, metadata !11, metadata !11, metadata !8, metadata !12, metadata !12, metadata !12}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!71 = metadata !{i32 786689, metadata !67, metadata !"limit", metadata !5, i32 16777426, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limit] [line 210]
!72 = metadata !{i32 786689, metadata !67, metadata !"base", metadata !5, i32 33554643, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 211]
!73 = metadata !{i32 786689, metadata !67, metadata !"perm", metadata !5, i32 50331860, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perm] [line 212]
!74 = metadata !{i32 786689, metadata !67, metadata !"length", metadata !5, i32 67109077, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 213]
!75 = metadata !{i32 786689, metadata !67, metadata !"minLen", metadata !5, i32 83886294, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [minLen] [line 214]
!76 = metadata !{i32 786689, metadata !67, metadata !"maxLen", metadata !5, i32 100663511, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxLen] [line 215]
!77 = metadata !{i32 786689, metadata !67, metadata !"alphaSize", metadata !5, i32 117440728, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alphaSize] [line 216]
!78 = metadata !{i32 786688, metadata !67, metadata !"pp", metadata !5, i32 218, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pp] [line 218]
!79 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !5, i32 218, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 218]
!80 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !5, i32 218, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 218]
!81 = metadata !{i32 786688, metadata !67, metadata !"vec", metadata !5, i32 218, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 218]
!82 = metadata !{i32 103, i32 0, metadata !4, null}
!83 = metadata !{i32 104, i32 0, metadata !4, null}
!84 = metadata !{i32 105, i32 0, metadata !4, null}
!85 = metadata !{i32 106, i32 0, metadata !4, null}
!86 = metadata !{i32 115, i32 0, metadata !4, null}
!87 = metadata !{i32 116, i32 0, metadata !4, null}
!88 = metadata !{i32 117, i32 0, metadata !4, null}
!89 = metadata !{i32 119, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !4, i32 119, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!91 = metadata !{i32 127, i32 0, metadata !41, null}
!92 = metadata !{i32 128, i32 0, metadata !41, null}
!93 = metadata !{i32 129, i32 0, metadata !41, null}
!94 = metadata !{i32 131, i32 0, metadata !40, null}
!95 = metadata !{i32 141, i32 0, metadata !45, null}
!96 = metadata !{i32 140, i32 0, metadata !41, null}
!97 = metadata !{i32 124, i32 0, metadata !41, null}
!98 = metadata !{i32 120, i32 0, metadata !90, null}
!99 = metadata !{metadata !"int", metadata !100}
!100 = metadata !{metadata !"omnipotent char", metadata !101}
!101 = metadata !{metadata !"Simple C/C++ TBAA"}
!102 = metadata !{i32 125, i32 0, metadata !41, null}
!103 = metadata !{i32 1}
!104 = metadata !{i32 132, i32 0, metadata !39, null}
!105 = metadata !{i32 133, i32 0, metadata !39, null}
!106 = metadata !{i32 134, i32 0, metadata !39, null}
!107 = metadata !{i32 135, i32 0, metadata !38, null}
!108 = metadata !{i32 undef}
!109 = metadata !{i32 135, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !38, i32 135, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!111 = metadata !{i32 138, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !41, i32 138, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!113 = metadata !{i32 141, i32 0, metadata !44, null}
!114 = metadata !{i32 2}
!115 = metadata !{i32 141, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !44, i32 141, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!117 = metadata !{i32 142, i32 0, metadata !45, null}
!118 = metadata !{i32 142, i32 0, metadata !49, null}
!119 = metadata !{i32 142, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !49, i32 142, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!121 = metadata !{i32 143, i32 0, metadata !45, null}
!122 = metadata !{i32 144, i32 0, metadata !45, null}
!123 = metadata !{i32 145, i32 0, metadata !45, null}
!124 = metadata !{i32 146, i32 0, metadata !45, null}
!125 = metadata !{i32 148, i32 0, metadata !45, null}
!126 = metadata !{i32 149, i32 0, metadata !53, null}
!127 = metadata !{i32 149, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !53, i32 149, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!129 = metadata !{i32 152, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !41, i32 152, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!131 = metadata !{i32 155, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !41, i32 155, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!133 = metadata !{i32 158, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !132, i32 155, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!135 = metadata !{i32 158, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !134, i32 158, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!137 = metadata !{i32 159, i32 0, metadata !134, null}
!138 = metadata !{i32 160, i32 0, metadata !134, null}
!139 = metadata !{i8 1}
!140 = metadata !{i32 163, i32 0, metadata !41, null}
!141 = metadata !{i32 182, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !41, i32 182, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!143 = metadata !{i32 183, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !142, i32 182, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!145 = metadata !{i32 184, i32 0, metadata !144, null}
!146 = metadata !{i32 185, i32 0, metadata !144, null}
!147 = metadata !{i32 188, i32 0, metadata !4, null}
!148 = metadata !{i32 192, i32 0, metadata !55, null}
!149 = metadata !{i32 193, i32 0, metadata !55, null}
!150 = metadata !{i32 194, i32 0, metadata !55, null}
!151 = metadata !{i32 195, i32 0, metadata !55, null}
!152 = metadata !{i32 196, i32 0, metadata !55, null}
!153 = metadata !{i32 200, i32 0, metadata !55, null}
!154 = metadata !{i32 201, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !55, i32 201, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!156 = metadata !{i32 202, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !158, i32 202, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!158 = metadata !{i32 786443, metadata !1, metadata !155, i32 201, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!159 = metadata !{i32 203, i32 0, metadata !157, null}
!160 = metadata !{i32 203, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !157, i32 203, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!162 = metadata !{i32 204, i32 0, metadata !158, null}
!163 = metadata !{i32 206, i32 0, metadata !55, null}
!164 = metadata !{i32 210, i32 0, metadata !67, null}
!165 = metadata !{i32 211, i32 0, metadata !67, null}
!166 = metadata !{i32 212, i32 0, metadata !67, null}
!167 = metadata !{i32 213, i32 0, metadata !67, null}
!168 = metadata !{i32 214, i32 0, metadata !67, null}
!169 = metadata !{i32 215, i32 0, metadata !67, null}
!170 = metadata !{i32 216, i32 0, metadata !67, null}
!171 = metadata !{i32 220, i32 0, metadata !67, null}
!172 = metadata !{i32 221, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !67, i32 221, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!174 = metadata !{i32 222, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !173, i32 222, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!176 = metadata !{i32 225, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !67, i32 225, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!178 = metadata !{i32 226, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !67, i32 226, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!180 = metadata !{i32 223, i32 0, metadata !175, null}
!181 = metadata !{i32 223, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !175, i32 223, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!183 = metadata !{i32 228, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !67, i32 228, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!185 = metadata !{i32 230, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !67, i32 230, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!187 = metadata !{i32 233, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !67, i32 233, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!189 = metadata !{i32 238, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !67, i32 238, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!191 = metadata !{i32 234, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !188, i32 233, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/huffman.c]
!193 = metadata !{i32 235, i32 0, metadata !192, null}
!194 = metadata !{i32 236, i32 0, metadata !192, null}
!195 = metadata !{i32 239, i32 0, metadata !190, null}
!196 = metadata !{i32 240, i32 0, metadata !67, null}
