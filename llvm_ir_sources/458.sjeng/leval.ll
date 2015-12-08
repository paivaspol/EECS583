; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@white_to_move = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@Xfile = external constant [144 x i32]
@Xrank = external constant [144 x i32]
@board = external global [144 x i32]
@lcentral = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Material = external global i32
@comp_color = external global i32
@l_king_mobility.king_o = internal unnamed_addr constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16
@l_knight_mobility.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: nounwind optsize uwtable
define i32 @losers_eval() #0 {
entry:
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %black_back_pawn = alloca [11 x i32], align 16
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %0 = bitcast [2 x [11 x i32]]* %pawns to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*
  call void @llvm.lifetime.start(i64 44, i8* %1) #1
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*
  call void @llvm.lifetime.start(i64 44, i8* %2) #1
  store i32 0, i32* %score, align 4, !tbaa !0
  store i32 0, i32* %in_cache, align 4, !tbaa !0
  call void @checkECache(i32* %score, i32* %in_cache) #4
  %3 = load i32* %in_cache, align 4, !tbaa !0
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 1
  %5 = load i32* %score, align 4, !tbaa !0
  %sub = sub nsw i32 0, %5
  %.sub = select i1 %cmp, i32 %5, i32 %sub
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false)
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body
  %6 = load i32* @piece_count, align 4, !tbaa !0
  %cmp7623 = icmp slt i32 %6, 1
  br i1 %cmp7623, label %for.end391, label %for.body8

for.body:                                         ; preds = %for.body, %if.end2
  %indvars.iv639 = phi i64 [ 0, %if.end2 ], [ %indvars.iv.next640, %for.body ]
  %arrayidx = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %indvars.iv639
  store i32 7, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %indvars.iv639
  store i32 2, i32* %arrayidx5, align 4, !tbaa !0
  %indvars.iv.next640 = add i64 %indvars.iv639, 1
  %lftr.wideiv641 = trunc i64 %indvars.iv.next640 to i32
  %exitcond642 = icmp eq i32 %lftr.wideiv641, 11
  br i1 %exitcond642, label %for.cond6.preheader, label %for.body

for.cond55.preheader:                             ; preds = %for.inc52
  br i1 %cmp7623, label %for.end391, label %for.body57.lr.ph

for.body57.lr.ph:                                 ; preds = %for.cond55.preheader
  %add77 = add nsw i32 %pawn_file.1, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom78
  %sub81 = add nsw i32 %pawn_file.1, -1
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom82
  %arrayidx90 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom78
  %arrayidx96 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom82
  %idxprom102 = sext i32 %pawn_file.1 to i64
  %arrayidx104 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom102
  %arrayidx118 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom102
  %arrayidx135 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom82
  %arrayidx140 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom78
  %arrayidx211 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom78
  %arrayidx217 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom82
  br label %for.body57

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc52
  %indvars.iv637 = phi i64 [ %indvars.iv.next638, %for.inc52 ], [ 1, %for.cond6.preheader ]
  %a.0626 = phi i32 [ %a.1, %for.inc52 ], [ 1, %for.cond6.preheader ]
  %pawn_file.0625 = phi i32 [ %pawn_file.1, %for.inc52 ], [ 0, %for.cond6.preheader ]
  %srank.0624 = phi i32 [ %srank.1, %for.inc52 ], [ 0, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv637
  %7 = load i32* %arrayidx10, align 4, !tbaa !0
  %tobool11 = icmp eq i32 %7, 0
  br i1 %tobool11, label %for.inc52, label %if.else

if.else:                                          ; preds = %for.body8
  %inc13 = add nsw i32 %a.0626, 1
  %idxprom15 = sext i32 %7 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom15
  %8 = load i32* %arrayidx16, align 4, !tbaa !0
  %add = add nsw i32 %8, 1
  %arrayidx18 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom15
  %9 = load i32* %arrayidx18, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15
  %10 = load i32* %arrayidx20, align 4, !tbaa !0
  switch i32 %10, label %for.inc52 [
    i32 1, label %if.then22
    i32 2, label %if.then38
  ]

if.then22:                                        ; preds = %if.else
  %idxprom23 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom23
  %11 = load i32* %arrayidx25, align 4, !tbaa !0
  %inc26 = add nsw i32 %11, 1
  store i32 %inc26, i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom23
  %12 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp slt i32 %9, %12
  br i1 %cmp29, label %if.then30, label %for.inc52

if.then30:                                        ; preds = %if.then22
  store i32 %9, i32* %arrayidx28, align 4, !tbaa !0
  br label %for.inc52

if.then38:                                        ; preds = %if.else
  %idxprom39 = sext i32 %add to i64
  %arrayidx41 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom39
  %13 = load i32* %arrayidx41, align 4, !tbaa !0
  %inc42 = add nsw i32 %13, 1
  store i32 %inc42, i32* %arrayidx41, align 4, !tbaa !0
  %arrayidx44 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom39
  %14 = load i32* %arrayidx44, align 4, !tbaa !0
  %cmp45 = icmp sgt i32 %9, %14
  br i1 %cmp45, label %if.then46, label %for.inc52

if.then46:                                        ; preds = %if.then38
  store i32 %9, i32* %arrayidx44, align 4, !tbaa !0
  br label %for.inc52

for.inc52:                                        ; preds = %if.else, %for.body8, %if.then30, %if.then22, %if.then38, %if.then46
  %srank.1 = phi i32 [ %9, %if.then30 ], [ %9, %if.then22 ], [ %9, %if.then46 ], [ %9, %if.then38 ], [ %srank.0624, %for.body8 ], [ %9, %if.else ]
  %pawn_file.1 = phi i32 [ %add, %if.then30 ], [ %add, %if.then22 ], [ %add, %if.then46 ], [ %add, %if.then38 ], [ %pawn_file.0625, %for.body8 ], [ %add, %if.else ]
  %a.1 = phi i32 [ %inc13, %if.then30 ], [ %inc13, %if.then22 ], [ %inc13, %if.then46 ], [ %inc13, %if.then38 ], [ %a.0626, %for.body8 ], [ %inc13, %if.else ]
  %indvars.iv.next638 = add i64 %indvars.iv637, 1
  %cmp7 = icmp sgt i32 %a.1, %6
  br i1 %cmp7, label %for.cond55.preheader, label %for.body8

for.body57:                                       ; preds = %for.body57.lr.ph, %for.inc389
  %indvars.iv = phi i64 [ 1, %for.body57.lr.ph ], [ %indvars.iv.next, %for.inc389 ]
  %bpawns.0615 = phi i32 [ 0, %for.body57.lr.ph ], [ %bpawns.1, %for.inc389 ]
  %wpawns.0614 = phi i32 [ 0, %for.body57.lr.ph ], [ %wpawns.1, %for.inc389 ]
  %bpassp.0613 = phi i32 [ 0, %for.body57.lr.ph ], [ %bpassp.2, %for.inc389 ]
  %wpassp.0612 = phi i32 [ 0, %for.body57.lr.ph ], [ %wpassp.2, %for.inc389 ]
  %bks.0611 = phi i32 [ 0, %for.body57.lr.ph ], [ %bks.1, %for.inc389 ]
  %wks.0610 = phi i32 [ 0, %for.body57.lr.ph ], [ %wks.1, %for.inc389 ]
  %bp.0609 = phi i32 [ 0, %for.body57.lr.ph ], [ %bp.1, %for.inc389 ]
  %wp.0608 = phi i32 [ 0, %for.body57.lr.ph ], [ %wp.1, %for.inc389 ]
  %a.2606 = phi i32 [ 1, %for.body57.lr.ph ], [ %a.3, %for.inc389 ]
  %arrayidx59 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %15 = load i32* %arrayidx59, align 4, !tbaa !0
  %tobool60 = icmp eq i32 %15, 0
  br i1 %tobool60, label %for.inc389, label %if.else62

if.else62:                                        ; preds = %for.body57
  %inc63 = add nsw i32 %a.2606, 1
  %idxprom65 = sext i32 %15 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom65
  %16 = load i32* %arrayidx66, align 4, !tbaa !0
  switch i32 %16, label %for.inc389 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb183
    i32 7, label %sw.bb305
    i32 8, label %sw.bb313
    i32 11, label %sw.bb321
    i32 12, label %sw.bb329
    i32 3, label %sw.bb337
    i32 4, label %sw.bb346
    i32 9, label %sw.bb355
    i32 10, label %sw.bb366
    i32 5, label %sw.bb377
    i32 6, label %sw.bb383
  ]

sw.bb:                                            ; preds = %if.else62
  %inc67 = add nsw i32 %wp.0608, 1
  %inc68 = add nsw i32 %wpawns.0614, 1
  %arrayidx70 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %17 = load i32* %arrayidx70, align 4, !tbaa !0
  %18 = load i32* %score, align 4, !tbaa !0
  %add71 = add nsw i32 %18, %17
  store i32 %add71, i32* %score, align 4, !tbaa !0
  %call = call fastcc i32 @l_pawn_mobility(i32 %15) #5
  %shl = shl i32 %call, 2
  %add72 = add nsw i32 %shl, %add71
  %arrayidx74 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom65
  %19 = load i32* %arrayidx74, align 4, !tbaa !0
  %sub75 = shl i32 %19, 3
  %mul = add i32 %sub75, -16
  %add76 = add nsw i32 %mul, %add72
  store i32 %add76, i32* %score, align 4, !tbaa !0
  %20 = load i32* %arrayidx79, align 4, !tbaa !0
  %cmp80 = icmp sgt i32 %20, %srank.1
  br i1 %cmp80, label %land.lhs.true, label %if.end101

land.lhs.true:                                    ; preds = %sw.bb
  %21 = load i32* %arrayidx83, align 4, !tbaa !0
  %cmp84 = icmp sgt i32 %21, %srank.1
  br i1 %cmp84, label %if.then85, label %if.end101

if.then85:                                        ; preds = %land.lhs.true
  %sub86 = add nsw i32 %add76, -8
  store i32 %sub86, i32* %score, align 4, !tbaa !0
  %22 = load i32* %arrayidx90, align 4, !tbaa !0
  %tobool91 = icmp eq i32 %22, 0
  br i1 %tobool91, label %land.lhs.true92, label %if.end101

land.lhs.true92:                                  ; preds = %if.then85
  %23 = load i32* %arrayidx96, align 4, !tbaa !0
  %tobool97 = icmp eq i32 %23, 0
  br i1 %tobool97, label %if.then98, label %if.end101

if.then98:                                        ; preds = %land.lhs.true92
  %sub99 = add nsw i32 %add76, -20
  store i32 %sub99, i32* %score, align 4, !tbaa !0
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true92, %if.then85, %land.lhs.true, %sw.bb, %if.then98
  %24 = phi i32 [ %sub99, %if.then98 ], [ %add76, %sw.bb ], [ %add76, %land.lhs.true ], [ %sub86, %if.then85 ], [ %sub86, %land.lhs.true92 ]
  %isolated.0 = phi i32 [ 1, %if.then98 ], [ 0, %sw.bb ], [ 0, %land.lhs.true ], [ 0, %if.then85 ], [ 0, %land.lhs.true92 ]
  %backwards.0 = phi i32 [ 1, %if.then98 ], [ 0, %sw.bb ], [ 0, %land.lhs.true ], [ 1, %if.then85 ], [ 1, %land.lhs.true92 ]
  %25 = load i32* %arrayidx104, align 4, !tbaa !0
  %tobool105 = icmp eq i32 %25, 0
  br i1 %tobool105, label %if.then106, label %if.end115

if.then106:                                       ; preds = %if.end101
  %tobool107 = icmp eq i32 %backwards.0, 0
  br i1 %tobool107, label %if.end110, label %if.then108

if.then108:                                       ; preds = %if.then106
  %sub109 = add nsw i32 %24, -5
  store i32 %sub109, i32* %score, align 4, !tbaa !0
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.then108
  %26 = phi i32 [ %24, %if.then106 ], [ %sub109, %if.then108 ]
  %tobool111 = icmp eq i32 %isolated.0, 0
  br i1 %tobool111, label %if.end115, label %if.then112

if.then112:                                       ; preds = %if.end110
  %sub113 = add nsw i32 %26, -8
  store i32 %sub113, i32* %score, align 4, !tbaa !0
  br label %if.end115

if.end115:                                        ; preds = %if.end110, %if.end101, %if.then112
  %27 = phi i32 [ %sub113, %if.then112 ], [ %24, %if.end101 ], [ %26, %if.end110 ]
  %28 = load i32* %arrayidx118, align 4, !tbaa !0
  %cmp119 = icmp sgt i32 %28, 1
  br i1 %cmp119, label %if.then120, label %if.end127

if.then120:                                       ; preds = %if.end115
  %sub124 = shl i32 %28, 3
  %mul125.neg = sub i32 8, %sub124
  %sub126 = add i32 %mul125.neg, %27
  store i32 %sub126, i32* %score, align 4, !tbaa !0
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %if.end115
  %29 = phi i32 [ %sub126, %if.then120 ], [ %27, %if.end115 ]
  br i1 %tobool105, label %land.lhs.true132, label %if.end174

land.lhs.true132:                                 ; preds = %if.end127
  %30 = load i32* %arrayidx135, align 4, !tbaa !0
  %cmp136 = icmp slt i32 %srank.1, %30
  br i1 %cmp136, label %if.end174, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %land.lhs.true132
  %31 = load i32* %arrayidx140, align 4, !tbaa !0
  %cmp141 = icmp slt i32 %srank.1, %31
  br i1 %cmp141, label %if.end174, label %if.then142

if.then142:                                       ; preds = %land.lhs.true137
  %32 = mul i32 %19, 10
  %add147 = add i32 %32, 5
  %add148 = add nsw i32 %add147, %29
  %cmp151 = icmp eq i32 %19, 7
  %add153 = add nsw i32 %add148, 50
  %add153.add148 = select i1 %cmp151, i32 %add153, i32 %add148
  %add153.add148644 = select i1 %cmp151, i32 %add153, i32 %add148
  store i32 %add153.add148, i32* %score, align 4, !tbaa !0
  %inc155 = add nsw i32 %wpassp.0612, 1
  %arrayidx157 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom65
  %33 = load i32* %arrayidx157, align 4, !tbaa !0
  switch i32 %33, label %if.end169 [
    i32 1, label %if.then162
    i32 8, label %if.then162
  ]

if.then162:                                       ; preds = %if.then142, %if.then142
  %sub165 = shl i32 %19, 1
  %add168 = add nsw i32 %add153.add148644, %sub165
  store i32 %add168, i32* %score, align 4, !tbaa !0
  br label %if.end169

if.end169:                                        ; preds = %if.then142, %if.then162
  %34 = phi i32 [ %add153.add148644, %if.then142 ], [ %add168, %if.then162 ]
  %tobool170 = icmp eq i32 %isolated.0, 0
  br i1 %tobool170, label %if.then171, label %if.end174

if.then171:                                       ; preds = %if.end169
  %add172 = add nsw i32 %34, 24
  store i32 %add172, i32* %score, align 4, !tbaa !0
  br label %if.end174

if.end174:                                        ; preds = %if.end169, %land.lhs.true137, %land.lhs.true132, %if.end127, %if.then171
  %35 = phi i32 [ %add172, %if.then171 ], [ %29, %if.end127 ], [ %29, %land.lhs.true132 ], [ %29, %land.lhs.true137 ], [ %34, %if.end169 ]
  %wpassp.1 = phi i32 [ %inc155, %if.then171 ], [ %wpassp.0612, %if.end127 ], [ %wpassp.0612, %land.lhs.true132 ], [ %wpassp.0612, %land.lhs.true137 ], [ %inc155, %if.end169 ]
  %36 = load i32* %arrayidx96, align 4, !tbaa !0
  %tobool179 = icmp eq i32 %36, 0
  br i1 %tobool179, label %if.then180, label %for.inc389

if.then180:                                       ; preds = %if.end174
  %sub181 = add nsw i32 %35, -5
  store i32 %sub181, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb183:                                         ; preds = %if.else62
  %inc184 = add nsw i32 %bp.0609, 1
  %inc185 = add nsw i32 %bpawns.0615, 1
  %arrayidx187 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %37 = load i32* %arrayidx187, align 4, !tbaa !0
  %38 = load i32* %score, align 4, !tbaa !0
  %sub188 = sub nsw i32 %38, %37
  store i32 %sub188, i32* %score, align 4, !tbaa !0
  %call189 = call fastcc i32 @l_pawn_mobility(i32 %15) #5
  %shl190 = shl i32 %call189, 2
  %sub191 = sub nsw i32 %sub188, %shl190
  %arrayidx193 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom65
  %39 = load i32* %arrayidx193, align 4, !tbaa !0
  %sub194 = sub nsw i32 7, %39
  %mul195 = shl nsw i32 %sub194, 3
  %sub196 = sub nsw i32 %sub191, %mul195
  store i32 %sub196, i32* %score, align 4, !tbaa !0
  %40 = load i32* %arrayidx140, align 4, !tbaa !0
  %cmp200 = icmp slt i32 %40, %srank.1
  br i1 %cmp200, label %land.lhs.true201, label %if.end222

land.lhs.true201:                                 ; preds = %sw.bb183
  %41 = load i32* %arrayidx135, align 4, !tbaa !0
  %cmp205 = icmp slt i32 %41, %srank.1
  br i1 %cmp205, label %if.then206, label %if.end222

if.then206:                                       ; preds = %land.lhs.true201
  %add207 = add nsw i32 %sub196, 8
  store i32 %add207, i32* %score, align 4, !tbaa !0
  %42 = load i32* %arrayidx211, align 4, !tbaa !0
  %tobool212 = icmp eq i32 %42, 0
  br i1 %tobool212, label %land.lhs.true213, label %if.end222

land.lhs.true213:                                 ; preds = %if.then206
  %43 = load i32* %arrayidx217, align 4, !tbaa !0
  %tobool218 = icmp eq i32 %43, 0
  br i1 %tobool218, label %if.then219, label %if.end222

if.then219:                                       ; preds = %land.lhs.true213
  %add220 = add nsw i32 %sub196, 20
  store i32 %add220, i32* %score, align 4, !tbaa !0
  br label %if.end222

if.end222:                                        ; preds = %land.lhs.true213, %if.then206, %land.lhs.true201, %sw.bb183, %if.then219
  %44 = phi i32 [ %add220, %if.then219 ], [ %sub196, %sw.bb183 ], [ %sub196, %land.lhs.true201 ], [ %add207, %if.then206 ], [ %add207, %land.lhs.true213 ]
  %isolated.1 = phi i32 [ 1, %if.then219 ], [ 0, %sw.bb183 ], [ 0, %land.lhs.true201 ], [ 0, %if.then206 ], [ 0, %land.lhs.true213 ]
  %backwards.1 = phi i32 [ 1, %if.then219 ], [ 0, %sw.bb183 ], [ 0, %land.lhs.true201 ], [ 1, %if.then206 ], [ 1, %land.lhs.true213 ]
  %45 = load i32* %arrayidx118, align 4, !tbaa !0
  %tobool226 = icmp eq i32 %45, 0
  br i1 %tobool226, label %if.then227, label %if.end236

if.then227:                                       ; preds = %if.end222
  %tobool228 = icmp eq i32 %backwards.1, 0
  br i1 %tobool228, label %if.end231, label %if.then229

if.then229:                                       ; preds = %if.then227
  %add230 = add nsw i32 %44, 5
  store i32 %add230, i32* %score, align 4, !tbaa !0
  br label %if.end231

if.end231:                                        ; preds = %if.then227, %if.then229
  %46 = phi i32 [ %44, %if.then227 ], [ %add230, %if.then229 ]
  %tobool232 = icmp eq i32 %isolated.1, 0
  br i1 %tobool232, label %if.end236, label %if.then233

if.then233:                                       ; preds = %if.end231
  %add234 = add nsw i32 %46, 8
  store i32 %add234, i32* %score, align 4, !tbaa !0
  br label %if.end236

if.end236:                                        ; preds = %if.end231, %if.end222, %if.then233
  %47 = phi i32 [ %add234, %if.then233 ], [ %44, %if.end222 ], [ %46, %if.end231 ]
  %48 = load i32* %arrayidx104, align 4, !tbaa !0
  %cmp240 = icmp sgt i32 %48, 1
  br i1 %cmp240, label %if.then241, label %if.end248

if.then241:                                       ; preds = %if.end236
  %sub245 = shl i32 %48, 3
  %mul246 = add i32 %sub245, -8
  %add247 = add nsw i32 %mul246, %47
  store i32 %add247, i32* %score, align 4, !tbaa !0
  br label %if.end248

if.end248:                                        ; preds = %if.then241, %if.end236
  %49 = phi i32 [ %add247, %if.then241 ], [ %47, %if.end236 ]
  br i1 %tobool226, label %land.lhs.true253, label %if.end296

land.lhs.true253:                                 ; preds = %if.end248
  %50 = load i32* %arrayidx83, align 4, !tbaa !0
  %cmp257 = icmp sgt i32 %srank.1, %50
  br i1 %cmp257, label %if.end296, label %land.lhs.true258

land.lhs.true258:                                 ; preds = %land.lhs.true253
  %51 = load i32* %arrayidx79, align 4, !tbaa !0
  %cmp262 = icmp sgt i32 %srank.1, %51
  br i1 %cmp262, label %if.end296, label %if.then263

if.then263:                                       ; preds = %land.lhs.true258
  %52 = mul i32 %sub194, -10
  %add268.neg = add i32 %49, -25
  %sub269 = add i32 %add268.neg, %52
  %cmp272 = icmp eq i32 %39, 2
  %sub274 = add nsw i32 %sub269, -50
  %sub274.sub269 = select i1 %cmp272, i32 %sub274, i32 %sub269
  %sub274.sub269645 = select i1 %cmp272, i32 %sub274, i32 %sub269
  store i32 %sub274.sub269, i32* %score, align 4, !tbaa !0
  %inc276 = add nsw i32 %bpassp.0613, 1
  %arrayidx278 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom65
  %53 = load i32* %arrayidx278, align 4, !tbaa !0
  switch i32 %53, label %if.end291 [
    i32 1, label %if.then284
    i32 8, label %if.then284
  ]

if.then284:                                       ; preds = %if.then263, %if.then263
  %mul288 = shl i32 %sub194, 1
  %add289.neg = add i32 %sub274.sub269645, -4
  %sub290 = sub i32 %add289.neg, %mul288
  store i32 %sub290, i32* %score, align 4, !tbaa !0
  br label %if.end291

if.end291:                                        ; preds = %if.then263, %if.then284
  %54 = phi i32 [ %sub274.sub269645, %if.then263 ], [ %sub290, %if.then284 ]
  %tobool292 = icmp eq i32 %isolated.1, 0
  br i1 %tobool292, label %if.then293, label %if.end296

if.then293:                                       ; preds = %if.end291
  %sub294 = add nsw i32 %54, -24
  store i32 %sub294, i32* %score, align 4, !tbaa !0
  br label %if.end296

if.end296:                                        ; preds = %if.end291, %land.lhs.true258, %land.lhs.true253, %if.end248, %if.then293
  %55 = phi i32 [ %sub294, %if.then293 ], [ %49, %if.end248 ], [ %49, %land.lhs.true253 ], [ %49, %land.lhs.true258 ], [ %54, %if.end291 ]
  %bpassp.1 = phi i32 [ %inc276, %if.then293 ], [ %bpassp.0613, %if.end248 ], [ %bpassp.0613, %land.lhs.true253 ], [ %bpassp.0613, %land.lhs.true258 ], [ %inc276, %if.end291 ]
  %56 = load i32* %arrayidx217, align 4, !tbaa !0
  %tobool301 = icmp eq i32 %56, 0
  br i1 %tobool301, label %if.then302, label %for.inc389

if.then302:                                       ; preds = %if.end296
  %add303 = add nsw i32 %55, 5
  store i32 %add303, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb305:                                         ; preds = %if.else62
  %inc306 = add nsw i32 %wp.0608, 1
  %call307 = call fastcc i32 @l_rook_mobility(i32 %15) #5
  %shl308 = shl i32 %call307, 2
  %57 = load i32* %score, align 4, !tbaa !0
  %add309 = add nsw i32 %57, %shl308
  %arrayidx311 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %58 = load i32* %arrayidx311, align 4, !tbaa !0
  %add312 = add nsw i32 %add309, %58
  store i32 %add312, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb313:                                         ; preds = %if.else62
  %inc314 = add nsw i32 %bp.0609, 1
  %call315 = call fastcc i32 @l_rook_mobility(i32 %15) #5
  %shl316 = shl i32 %call315, 2
  %59 = load i32* %score, align 4, !tbaa !0
  %sub317 = sub nsw i32 %59, %shl316
  %arrayidx319 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %60 = load i32* %arrayidx319, align 4, !tbaa !0
  %sub320 = sub nsw i32 %sub317, %60
  store i32 %sub320, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb321:                                         ; preds = %if.else62
  %inc322 = add nsw i32 %wp.0608, 1
  %call323 = call fastcc i32 @l_bishop_mobility(i32 %15) #5
  %shl324 = shl i32 %call323, 2
  %61 = load i32* %score, align 4, !tbaa !0
  %add325 = add nsw i32 %61, %shl324
  %arrayidx327 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %62 = load i32* %arrayidx327, align 4, !tbaa !0
  %add328 = add nsw i32 %add325, %62
  store i32 %add328, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb329:                                         ; preds = %if.else62
  %inc330 = add nsw i32 %bp.0609, 1
  %call331 = call fastcc i32 @l_bishop_mobility(i32 %15) #5
  %shl332 = shl i32 %call331, 2
  %63 = load i32* %score, align 4, !tbaa !0
  %sub333 = sub nsw i32 %63, %shl332
  %arrayidx335 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %64 = load i32* %arrayidx335, align 4, !tbaa !0
  %sub336 = sub nsw i32 %sub333, %64
  store i32 %sub336, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb337:                                         ; preds = %if.else62
  %arrayidx340 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %65 = load i32* %arrayidx340, align 4, !tbaa !0
  %shl341 = shl i32 %65, 1
  %66 = load i32* %score, align 4, !tbaa !0
  %add342 = add nsw i32 %66, %shl341
  store i32 %add342, i32* %score, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %sw.bb337
  %indvars.iv.i = phi i64 [ 0, %sw.bb337 ], [ %indvars.iv.next.i, %for.body.i ]
  %m.09.i = phi i32 [ 0, %sw.bb337 ], [ %inc.m.0.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %indvars.iv.i
  %67 = load i32* %arrayidx.i, align 4, !tbaa !0
  %add.i = add nsw i32 %67, %15
  %idxprom1.i = sext i32 %add.i to i64
  %arrayidx2.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i
  %68 = load i32* %arrayidx2.i, align 4, !tbaa !0
  %cmp3.i = icmp eq i32 %68, 13
  %inc.i = zext i1 %cmp3.i to i32
  %inc.m.0.i = add nsw i32 %inc.i, %m.09.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv635 = trunc i64 %indvars.iv.next.i to i32
  %exitcond636 = icmp eq i32 %lftr.wideiv635, 8
  br i1 %exitcond636, label %l_knight_mobility.exit, label %for.body.i

l_knight_mobility.exit:                           ; preds = %for.body.i
  %inc338 = add nsw i32 %wp.0608, 1
  %shl344 = shl i32 %inc.m.0.i, 2
  %add345 = add nsw i32 %add342, %shl344
  store i32 %add345, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb346:                                         ; preds = %if.else62
  %arrayidx349 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %69 = load i32* %arrayidx349, align 4, !tbaa !0
  %shl350 = shl i32 %69, 1
  %70 = load i32* %score, align 4, !tbaa !0
  %sub351 = sub nsw i32 %70, %shl350
  store i32 %sub351, i32* %score, align 4, !tbaa !0
  br label %for.body.i603

for.body.i603:                                    ; preds = %for.body.i603, %sw.bb346
  %indvars.iv.i591 = phi i64 [ 0, %sw.bb346 ], [ %indvars.iv.next.i600, %for.body.i603 ]
  %m.09.i592 = phi i32 [ 0, %sw.bb346 ], [ %inc.m.0.i599, %for.body.i603 ]
  %arrayidx.i593 = getelementptr inbounds [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %indvars.iv.i591
  %71 = load i32* %arrayidx.i593, align 4, !tbaa !0
  %add.i594 = add nsw i32 %71, %15
  %idxprom1.i595 = sext i32 %add.i594 to i64
  %arrayidx2.i596 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i595
  %72 = load i32* %arrayidx2.i596, align 4, !tbaa !0
  %cmp3.i597 = icmp eq i32 %72, 13
  %inc.i598 = zext i1 %cmp3.i597 to i32
  %inc.m.0.i599 = add nsw i32 %inc.i598, %m.09.i592
  %indvars.iv.next.i600 = add i64 %indvars.iv.i591, 1
  %lftr.wideiv633 = trunc i64 %indvars.iv.next.i600 to i32
  %exitcond634 = icmp eq i32 %lftr.wideiv633, 8
  br i1 %exitcond634, label %l_knight_mobility.exit604, label %for.body.i603

l_knight_mobility.exit604:                        ; preds = %for.body.i603
  %inc347 = add nsw i32 %bp.0609, 1
  %shl353 = shl i32 %inc.m.0.i599, 2
  %sub354 = sub nsw i32 %sub351, %shl353
  store i32 %sub354, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb355:                                         ; preds = %if.else62
  %inc356 = add nsw i32 %wp.0608, 1
  %call357 = call fastcc i32 @l_bishop_mobility(i32 %15) #5
  %shl358 = shl i32 %call357, 1
  %73 = load i32* %score, align 4, !tbaa !0
  %add359 = add nsw i32 %73, %shl358
  store i32 %add359, i32* %score, align 4, !tbaa !0
  %call360 = call fastcc i32 @l_rook_mobility(i32 %15) #5
  %shl361 = shl i32 %call360, 1
  %add362 = add nsw i32 %shl361, %add359
  %arrayidx364 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %74 = load i32* %arrayidx364, align 4, !tbaa !0
  %add365 = add nsw i32 %add362, %74
  store i32 %add365, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb366:                                         ; preds = %if.else62
  %inc367 = add nsw i32 %bp.0609, 1
  %call368 = call fastcc i32 @l_bishop_mobility(i32 %15) #5
  %shl369 = shl i32 %call368, 1
  %75 = load i32* %score, align 4, !tbaa !0
  %sub370 = sub nsw i32 %75, %shl369
  store i32 %sub370, i32* %score, align 4, !tbaa !0
  %call371 = call fastcc i32 @l_rook_mobility(i32 %15) #5
  %shl372 = shl i32 %call371, 1
  %sub373 = sub nsw i32 %sub370, %shl372
  %arrayidx375 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %76 = load i32* %arrayidx375, align 4, !tbaa !0
  %sub376 = sub nsw i32 %sub373, %76
  store i32 %sub376, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb377:                                         ; preds = %if.else62
  %arrayidx379 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %77 = load i32* %arrayidx379, align 4, !tbaa !0
  br label %for.body.i589

for.body.i589:                                    ; preds = %for.body.i589, %sw.bb377
  %indvars.iv.i577 = phi i64 [ 0, %sw.bb377 ], [ %indvars.iv.next.i586, %for.body.i589 ]
  %m.09.i578 = phi i32 [ 0, %sw.bb377 ], [ %inc.m.0.i585, %for.body.i589 ]
  %arrayidx.i579 = getelementptr inbounds [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %indvars.iv.i577
  %78 = load i32* %arrayidx.i579, align 4, !tbaa !0
  %add.i580 = add nsw i32 %78, %15
  %idxprom1.i581 = sext i32 %add.i580 to i64
  %arrayidx2.i582 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i581
  %79 = load i32* %arrayidx2.i582, align 4, !tbaa !0
  %cmp3.i583 = icmp eq i32 %79, 13
  %inc.i584 = zext i1 %cmp3.i583 to i32
  %inc.m.0.i585 = add nsw i32 %inc.i584, %m.09.i578
  %indvars.iv.next.i586 = add i64 %indvars.iv.i577, 1
  %lftr.wideiv631 = trunc i64 %indvars.iv.next.i586 to i32
  %exitcond632 = icmp eq i32 %lftr.wideiv631, 8
  br i1 %exitcond632, label %l_king_mobility.exit590, label %for.body.i589

l_king_mobility.exit590:                          ; preds = %for.body.i589
  %shl380 = shl i32 %77, 1
  %80 = load i32* %score, align 4, !tbaa !0
  %add382 = add nsw i32 %80, %inc.m.0.i585
  store i32 %add382, i32* %score, align 4, !tbaa !0
  br label %for.inc389

sw.bb383:                                         ; preds = %if.else62
  %arrayidx385 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom65
  %81 = load i32* %arrayidx385, align 4, !tbaa !0
  br label %for.body.i576

for.body.i576:                                    ; preds = %for.body.i576, %sw.bb383
  %indvars.iv.i564 = phi i64 [ 0, %sw.bb383 ], [ %indvars.iv.next.i573, %for.body.i576 ]
  %m.09.i565 = phi i32 [ 0, %sw.bb383 ], [ %inc.m.0.i572, %for.body.i576 ]
  %arrayidx.i566 = getelementptr inbounds [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %indvars.iv.i564
  %82 = load i32* %arrayidx.i566, align 4, !tbaa !0
  %add.i567 = add nsw i32 %82, %15
  %idxprom1.i568 = sext i32 %add.i567 to i64
  %arrayidx2.i569 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i568
  %83 = load i32* %arrayidx2.i569, align 4, !tbaa !0
  %cmp3.i570 = icmp eq i32 %83, 13
  %inc.i571 = zext i1 %cmp3.i570 to i32
  %inc.m.0.i572 = add nsw i32 %inc.i571, %m.09.i565
  %indvars.iv.next.i573 = add i64 %indvars.iv.i564, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i573 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %l_king_mobility.exit, label %for.body.i576

l_king_mobility.exit:                             ; preds = %for.body.i576
  %shl386 = shl i32 %81, 1
  %84 = load i32* %score, align 4, !tbaa !0
  %sub388 = sub nsw i32 %84, %inc.m.0.i572
  store i32 %sub388, i32* %score, align 4, !tbaa !0
  br label %for.inc389

for.inc389:                                       ; preds = %if.end174, %if.end296, %for.body57, %sw.bb305, %sw.bb313, %sw.bb321, %sw.bb329, %l_knight_mobility.exit, %l_knight_mobility.exit604, %sw.bb355, %sw.bb366, %l_king_mobility.exit590, %l_king_mobility.exit, %if.else62, %if.then180, %if.then302
  %a.3 = phi i32 [ %inc63, %if.else62 ], [ %inc63, %l_king_mobility.exit ], [ %inc63, %l_king_mobility.exit590 ], [ %inc63, %sw.bb366 ], [ %inc63, %sw.bb355 ], [ %inc63, %l_knight_mobility.exit604 ], [ %inc63, %l_knight_mobility.exit ], [ %inc63, %sw.bb329 ], [ %inc63, %sw.bb321 ], [ %inc63, %sw.bb313 ], [ %inc63, %sw.bb305 ], [ %inc63, %if.end296 ], [ %inc63, %if.then302 ], [ %inc63, %if.end174 ], [ %inc63, %if.then180 ], [ %a.2606, %for.body57 ]
  %wp.1 = phi i32 [ %wp.0608, %if.else62 ], [ %wp.0608, %l_king_mobility.exit ], [ %wp.0608, %l_king_mobility.exit590 ], [ %wp.0608, %sw.bb366 ], [ %inc356, %sw.bb355 ], [ %wp.0608, %l_knight_mobility.exit604 ], [ %inc338, %l_knight_mobility.exit ], [ %wp.0608, %sw.bb329 ], [ %inc322, %sw.bb321 ], [ %wp.0608, %sw.bb313 ], [ %inc306, %sw.bb305 ], [ %wp.0608, %if.end296 ], [ %wp.0608, %if.then302 ], [ %inc67, %if.end174 ], [ %inc67, %if.then180 ], [ %wp.0608, %for.body57 ]
  %bp.1 = phi i32 [ %bp.0609, %if.else62 ], [ %bp.0609, %l_king_mobility.exit ], [ %bp.0609, %l_king_mobility.exit590 ], [ %inc367, %sw.bb366 ], [ %bp.0609, %sw.bb355 ], [ %inc347, %l_knight_mobility.exit604 ], [ %bp.0609, %l_knight_mobility.exit ], [ %inc330, %sw.bb329 ], [ %bp.0609, %sw.bb321 ], [ %inc314, %sw.bb313 ], [ %bp.0609, %sw.bb305 ], [ %inc184, %if.end296 ], [ %inc184, %if.then302 ], [ %bp.0609, %if.end174 ], [ %bp.0609, %if.then180 ], [ %bp.0609, %for.body57 ]
  %wks.1 = phi i32 [ %wks.0610, %if.else62 ], [ %wks.0610, %l_king_mobility.exit ], [ %shl380, %l_king_mobility.exit590 ], [ %wks.0610, %sw.bb366 ], [ %wks.0610, %sw.bb355 ], [ %wks.0610, %l_knight_mobility.exit604 ], [ %wks.0610, %l_knight_mobility.exit ], [ %wks.0610, %sw.bb329 ], [ %wks.0610, %sw.bb321 ], [ %wks.0610, %sw.bb313 ], [ %wks.0610, %sw.bb305 ], [ %wks.0610, %if.end296 ], [ %wks.0610, %if.then302 ], [ %wks.0610, %if.end174 ], [ %wks.0610, %if.then180 ], [ %wks.0610, %for.body57 ]
  %bks.1 = phi i32 [ %bks.0611, %if.else62 ], [ %shl386, %l_king_mobility.exit ], [ %bks.0611, %l_king_mobility.exit590 ], [ %bks.0611, %sw.bb366 ], [ %bks.0611, %sw.bb355 ], [ %bks.0611, %l_knight_mobility.exit604 ], [ %bks.0611, %l_knight_mobility.exit ], [ %bks.0611, %sw.bb329 ], [ %bks.0611, %sw.bb321 ], [ %bks.0611, %sw.bb313 ], [ %bks.0611, %sw.bb305 ], [ %bks.0611, %if.end296 ], [ %bks.0611, %if.then302 ], [ %bks.0611, %if.end174 ], [ %bks.0611, %if.then180 ], [ %bks.0611, %for.body57 ]
  %wpassp.2 = phi i32 [ %wpassp.0612, %if.else62 ], [ %wpassp.0612, %l_king_mobility.exit ], [ %wpassp.0612, %l_king_mobility.exit590 ], [ %wpassp.0612, %sw.bb366 ], [ %wpassp.0612, %sw.bb355 ], [ %wpassp.0612, %l_knight_mobility.exit604 ], [ %wpassp.0612, %l_knight_mobility.exit ], [ %wpassp.0612, %sw.bb329 ], [ %wpassp.0612, %sw.bb321 ], [ %wpassp.0612, %sw.bb313 ], [ %wpassp.0612, %sw.bb305 ], [ %wpassp.0612, %if.end296 ], [ %wpassp.0612, %if.then302 ], [ %wpassp.1, %if.end174 ], [ %wpassp.1, %if.then180 ], [ %wpassp.0612, %for.body57 ]
  %bpassp.2 = phi i32 [ %bpassp.0613, %if.else62 ], [ %bpassp.0613, %l_king_mobility.exit ], [ %bpassp.0613, %l_king_mobility.exit590 ], [ %bpassp.0613, %sw.bb366 ], [ %bpassp.0613, %sw.bb355 ], [ %bpassp.0613, %l_knight_mobility.exit604 ], [ %bpassp.0613, %l_knight_mobility.exit ], [ %bpassp.0613, %sw.bb329 ], [ %bpassp.0613, %sw.bb321 ], [ %bpassp.0613, %sw.bb313 ], [ %bpassp.0613, %sw.bb305 ], [ %bpassp.1, %if.end296 ], [ %bpassp.1, %if.then302 ], [ %bpassp.0613, %if.end174 ], [ %bpassp.0613, %if.then180 ], [ %bpassp.0613, %for.body57 ]
  %wpawns.1 = phi i32 [ %wpawns.0614, %if.else62 ], [ %wpawns.0614, %l_king_mobility.exit ], [ %wpawns.0614, %l_king_mobility.exit590 ], [ %wpawns.0614, %sw.bb366 ], [ %wpawns.0614, %sw.bb355 ], [ %wpawns.0614, %l_knight_mobility.exit604 ], [ %wpawns.0614, %l_knight_mobility.exit ], [ %wpawns.0614, %sw.bb329 ], [ %wpawns.0614, %sw.bb321 ], [ %wpawns.0614, %sw.bb313 ], [ %wpawns.0614, %sw.bb305 ], [ %wpawns.0614, %if.end296 ], [ %wpawns.0614, %if.then302 ], [ %inc68, %if.end174 ], [ %inc68, %if.then180 ], [ %wpawns.0614, %for.body57 ]
  %bpawns.1 = phi i32 [ %bpawns.0615, %if.else62 ], [ %bpawns.0615, %l_king_mobility.exit ], [ %bpawns.0615, %l_king_mobility.exit590 ], [ %bpawns.0615, %sw.bb366 ], [ %bpawns.0615, %sw.bb355 ], [ %bpawns.0615, %l_knight_mobility.exit604 ], [ %bpawns.0615, %l_knight_mobility.exit ], [ %bpawns.0615, %sw.bb329 ], [ %bpawns.0615, %sw.bb321 ], [ %bpawns.0615, %sw.bb313 ], [ %bpawns.0615, %sw.bb305 ], [ %inc185, %if.end296 ], [ %inc185, %if.then302 ], [ %bpawns.0615, %if.end174 ], [ %bpawns.0615, %if.then180 ], [ %bpawns.0615, %for.body57 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp56 = icmp sgt i32 %a.3, %6
  br i1 %cmp56, label %for.end391, label %for.body57

for.end391:                                       ; preds = %for.cond6.preheader, %for.inc389, %for.cond55.preheader
  %bpawns.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %bpawns.1, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %wpawns.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %wpawns.1, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %bpassp.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %bpassp.2, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %wpassp.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %wpassp.2, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %bks.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %bks.1, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %wks.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %wks.1, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %bp.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %bp.1, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %wp.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %wp.1, %for.inc389 ], [ 0, %for.cond6.preheader ]
  %add392 = add nsw i32 %bp.0.lcssa, %wp.0.lcssa
  %cmp393 = icmp sgt i32 %add392, 10
  br i1 %cmp393, label %if.then394, label %if.end397

if.then394:                                       ; preds = %for.end391
  %85 = load i32* %score, align 4, !tbaa !0
  %sub395561 = sub i32 %bks.0.lcssa, %wks.0.lcssa
  %sub396 = add i32 %sub395561, %85
  store i32 %sub396, i32* %score, align 4, !tbaa !0
  br label %if.end397

if.end397:                                        ; preds = %if.then394, %for.end391
  %86 = load i32* @Material, align 4, !tbaa !0
  %neg = sub i32 0, %86
  %ispos = icmp sgt i32 %86, -1
  %87 = select i1 %ispos, i32 %86, i32 %neg
  %cmp399 = icmp slt i32 %87, 901
  br i1 %cmp399, label %if.then400, label %if.else402

if.then400:                                       ; preds = %if.end397
  %88 = load i32* %score, align 4, !tbaa !0
  %add401 = add nsw i32 %88, %86
  store i32 %add401, i32* %score, align 4, !tbaa !0
  br label %if.end425

if.else402:                                       ; preds = %if.end397
  %cmp403 = icmp sgt i32 %86, 0
  %89 = load i32* @comp_color, align 4, !tbaa !0
  %cmp405 = icmp eq i32 %89, 1
  %or.cond = and i1 %cmp403, %cmp405
  %tobool407 = icmp eq i32 %wpassp.0.lcssa, 0
  %or.cond562 = and i1 %or.cond, %tobool407
  br i1 %or.cond562, label %if.then408, label %if.else411

if.then408:                                       ; preds = %if.else402
  %sub409 = sub i32 1800, %86
  %90 = load i32* %score, align 4, !tbaa !0
  %add410 = add nsw i32 %sub409, %90
  store i32 %add410, i32* %score, align 4, !tbaa !0
  br label %if.end425

if.else411:                                       ; preds = %if.else402
  %cmp412 = icmp slt i32 %86, 0
  %cmp414 = icmp eq i32 %89, 0
  %or.cond448 = and i1 %cmp412, %cmp414
  %tobool416 = icmp eq i32 %bpassp.0.lcssa, 0
  %or.cond563 = and i1 %or.cond448, %tobool416
  br i1 %or.cond563, label %if.then417, label %if.else421

if.then417:                                       ; preds = %if.else411
  %sub419 = sub i32 -1800, %86
  %91 = load i32* %score, align 4, !tbaa !0
  %add420 = add nsw i32 %sub419, %91
  store i32 %add420, i32* %score, align 4, !tbaa !0
  br label %if.end425

if.else421:                                       ; preds = %if.else411
  %92 = load i32* %score, align 4, !tbaa !0
  %add422 = add nsw i32 %92, %86
  store i32 %add422, i32* %score, align 4, !tbaa !0
  br label %if.end425

if.end425:                                        ; preds = %if.then408, %if.else421, %if.then417, %if.then400
  %93 = phi i32 [ %add410, %if.then408 ], [ %add422, %if.else421 ], [ %add420, %if.then417 ], [ %add401, %if.then400 ]
  %tobool426 = icmp eq i32 %wpawns.0.lcssa, 0
  br i1 %tobool426, label %if.then427, label %if.else429

if.then427:                                       ; preds = %if.end425
  %add428 = add nsw i32 %93, 200
  store i32 %add428, i32* %score, align 4, !tbaa !0
  br label %if.end434

if.else429:                                       ; preds = %if.end425
  %tobool430 = icmp eq i32 %bpawns.0.lcssa, 0
  br i1 %tobool430, label %if.then431, label %if.end434

if.then431:                                       ; preds = %if.else429
  %sub432 = add nsw i32 %93, -200
  store i32 %sub432, i32* %score, align 4, !tbaa !0
  br label %if.end434

if.end434:                                        ; preds = %if.else429, %if.then431, %if.then427
  %94 = phi i32 [ %93, %if.else429 ], [ %sub432, %if.then431 ], [ %add428, %if.then427 ]
  %tobool435 = icmp eq i32 %wp.0.lcssa, 0
  br i1 %tobool435, label %if.then436, label %if.else437

if.then436:                                       ; preds = %if.end434
  store i32 1000000, i32* %score, align 4, !tbaa !0
  br label %if.end441

if.else437:                                       ; preds = %if.end434
  %tobool438 = icmp eq i32 %bp.0.lcssa, 0
  br i1 %tobool438, label %if.then439, label %if.end441

if.then439:                                       ; preds = %if.else437
  store i32 -1000000, i32* %score, align 4, !tbaa !0
  br label %if.end441

if.end441:                                        ; preds = %if.else437, %if.then439, %if.then436
  %95 = phi i32 [ %94, %if.else437 ], [ -1000000, %if.then439 ], [ 1000000, %if.then436 ]
  call void @storeECache(i32 %95) #4
  %96 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp442 = icmp eq i32 %96, 1
  %97 = load i32* %score, align 4, !tbaa !0
  %sub445 = sub nsw i32 0, %97
  %.sub445 = select i1 %cmp442, i32 %97, i32 %sub445
  br label %cleanup

cleanup:                                          ; preds = %if.end441, %if.then
  %retval.0 = phi i32 [ %.sub, %if.then ], [ %.sub445, %if.end441 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #1
  call void @llvm.lifetime.end(i64 44, i8* %1) #1
  call void @llvm.lifetime.end(i64 88, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @l_pawn_mobility(i32 %square) #3 {
entry:
  %idxprom = sext i32 %square to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nsw i32 %square, 12
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %1, 13
  %. = zext i1 %cmp3 to i32
  ret i32 %.

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %square, -12
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %2, 13
  %.15 = zext i1 %cmp7 to i32
  ret i32 %.15
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @l_rook_mobility(i32 %square) #3 {
entry:
  %0 = sext i32 %square to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond ], [ %0, %entry ]
  %m.0 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, -12
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next49
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 13
  %inc = add nsw i32 %m.0, 1
  br i1 %cmp, label %for.cond, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond3 ], [ %0, %for.cond ]
  %m.1 = phi i32 [ %inc8, %for.cond3 ], [ %m.0, %for.cond ]
  %indvars.iv.next47 = add i64 %indvars.iv46, -1
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next47
  %2 = load i32* %arrayidx5, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %2, 13
  %inc8 = add nsw i32 %m.1, 1
  br i1 %cmp6, label %for.cond3, label %for.cond12

for.cond12:                                       ; preds = %for.cond3, %for.cond12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond12 ], [ %0, %for.cond3 ]
  %m.2 = phi i32 [ %inc17, %for.cond12 ], [ %m.1, %for.cond3 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 1
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next45
  %3 = load i32* %arrayidx14, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %3, 13
  %inc17 = add nsw i32 %m.2, 1
  br i1 %cmp15, label %for.cond12, label %for.cond22

for.cond22:                                       ; preds = %for.cond12, %for.cond22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond22 ], [ %0, %for.cond12 ]
  %m.3 = phi i32 [ %inc27, %for.cond22 ], [ %m.2, %for.cond12 ]
  %indvars.iv.next = add i64 %indvars.iv, 12
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next
  %4 = load i32* %arrayidx24, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %4, 13
  %inc27 = add nsw i32 %m.3, 1
  br i1 %cmp25, label %for.cond22, label %for.end30

for.end30:                                        ; preds = %for.cond22
  ret i32 %m.3
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @l_bishop_mobility(i32 %square) #3 {
entry:
  %0 = sext i32 %square to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond ], [ %0, %entry ]
  %m.0 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, -13
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next49
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 13
  %inc = add nsw i32 %m.0, 1
  br i1 %cmp, label %for.cond, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond3 ], [ %0, %for.cond ]
  %m.1 = phi i32 [ %inc8, %for.cond3 ], [ %m.0, %for.cond ]
  %indvars.iv.next47 = add i64 %indvars.iv46, -11
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next47
  %2 = load i32* %arrayidx5, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %2, 13
  %inc8 = add nsw i32 %m.1, 1
  br i1 %cmp6, label %for.cond3, label %for.cond12

for.cond12:                                       ; preds = %for.cond3, %for.cond12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond12 ], [ %0, %for.cond3 ]
  %m.2 = phi i32 [ %inc17, %for.cond12 ], [ %m.1, %for.cond3 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 11
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next45
  %3 = load i32* %arrayidx14, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %3, 13
  %inc17 = add nsw i32 %m.2, 1
  br i1 %cmp15, label %for.cond12, label %for.cond22

for.cond22:                                       ; preds = %for.cond12, %for.cond22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond22 ], [ %0, %for.cond12 ]
  %m.3 = phi i32 [ %inc27, %for.cond22 ], [ %m.2, %for.cond12 ]
  %indvars.iv.next = add i64 %indvars.iv, 13
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next
  %4 = load i32* %arrayidx24, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %4, 13
  %inc27 = add nsw i32 %m.3, 1
  br i1 %cmp25, label %for.cond22, label %for.end30

for.end30:                                        ; preds = %for.cond22
  ret i32 %m.3
}

; Function Attrs: optsize
declare void @storeECache(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
