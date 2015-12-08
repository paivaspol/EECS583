; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@white_to_move = external global i32
@Material = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@Xfile = external constant [144 x i32]
@Xrank = external constant [144 x i32]
@board = external global [144 x i32]
@scentral = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = external constant [144 x i32]
@king_o = internal unnamed_addr constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16
@knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: nounwind optsize uwtable
define i32 @suicide_eval() #0 {
entry:
  %call = tail call i32 @suicide_mid_eval() #4
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @suicide_mid_eval() #0 {
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
  call void @checkECache(i32* %score, i32* %in_cache) #5
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
  %6 = load i32* @Material, align 4, !tbaa !0
  store i32 %6, i32* %score, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false)
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body
  %7 = load i32* @piece_count, align 4, !tbaa !0
  %cmp7629 = icmp slt i32 %7, 1
  br i1 %cmp7629, label %for.end382, label %for.body8

for.body:                                         ; preds = %for.body, %if.end2
  %indvars.iv642 = phi i64 [ 0, %if.end2 ], [ %indvars.iv.next643, %for.body ]
  %arrayidx = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %indvars.iv642
  store i32 7, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %indvars.iv642
  store i32 2, i32* %arrayidx5, align 4, !tbaa !0
  %indvars.iv.next643 = add i64 %indvars.iv642, 1
  %lftr.wideiv644 = trunc i64 %indvars.iv.next643 to i32
  %exitcond645 = icmp eq i32 %lftr.wideiv644, 11
  br i1 %exitcond645, label %for.cond6.preheader, label %for.body

for.cond55.preheader:                             ; preds = %for.inc52
  br i1 %cmp7629, label %for.end382, label %for.body57

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc52
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %for.inc52 ], [ 1, %for.cond6.preheader ]
  %a.0630 = phi i32 [ %a.1, %for.inc52 ], [ 1, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv640
  %8 = load i32* %arrayidx10, align 4, !tbaa !0
  %tobool11 = icmp eq i32 %8, 0
  br i1 %tobool11, label %for.inc52, label %if.else

if.else:                                          ; preds = %for.body8
  %inc13 = add nsw i32 %a.0630, 1
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom15
  %9 = load i32* %arrayidx16, align 4, !tbaa !0
  %add = add nsw i32 %9, 1
  %arrayidx18 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom15
  %10 = load i32* %arrayidx18, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15
  %11 = load i32* %arrayidx20, align 4, !tbaa !0
  switch i32 %11, label %for.inc52 [
    i32 1, label %if.then22
    i32 2, label %if.then38
  ]

if.then22:                                        ; preds = %if.else
  %idxprom23 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom23
  %12 = load i32* %arrayidx25, align 4, !tbaa !0
  %inc26 = add nsw i32 %12, 1
  store i32 %inc26, i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom23
  %13 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp slt i32 %10, %13
  br i1 %cmp29, label %if.then30, label %for.inc52

if.then30:                                        ; preds = %if.then22
  store i32 %10, i32* %arrayidx28, align 4, !tbaa !0
  br label %for.inc52

if.then38:                                        ; preds = %if.else
  %idxprom39 = sext i32 %add to i64
  %arrayidx41 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom39
  %14 = load i32* %arrayidx41, align 4, !tbaa !0
  %inc42 = add nsw i32 %14, 1
  store i32 %inc42, i32* %arrayidx41, align 4, !tbaa !0
  %arrayidx44 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom39
  %15 = load i32* %arrayidx44, align 4, !tbaa !0
  %cmp45 = icmp sgt i32 %10, %15
  br i1 %cmp45, label %if.then46, label %for.inc52

if.then46:                                        ; preds = %if.then38
  store i32 %10, i32* %arrayidx44, align 4, !tbaa !0
  br label %for.inc52

for.inc52:                                        ; preds = %if.else, %for.body8, %if.then30, %if.then22, %if.then38, %if.then46
  %a.1 = phi i32 [ %inc13, %if.then30 ], [ %inc13, %if.then22 ], [ %inc13, %if.then46 ], [ %inc13, %if.then38 ], [ %a.0630, %for.body8 ], [ %inc13, %if.else ]
  %indvars.iv.next641 = add i64 %indvars.iv640, 1
  %cmp7 = icmp sgt i32 %a.1, %7
  br i1 %cmp7, label %for.cond55.preheader, label %for.body8

for.body57:                                       ; preds = %for.cond55.preheader, %for.inc380
  %16 = phi i32 [ %91, %for.inc380 ], [ %6, %for.cond55.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc380 ], [ 1, %for.cond55.preheader ]
  %bbc.0616 = phi i32 [ %bbc.1, %for.inc380 ], [ 0, %for.cond55.preheader ]
  %wbc.0615 = phi i32 [ %wbc.1, %for.inc380 ], [ 0, %for.cond55.preheader ]
  %bb.0614 = phi i32 [ %bb.2, %for.inc380 ], [ 0, %for.cond55.preheader ]
  %wb.0613 = phi i32 [ %wb.2, %for.inc380 ], [ 0, %for.cond55.preheader ]
  %a.2611 = phi i32 [ %a.3, %for.inc380 ], [ 1, %for.cond55.preheader ]
  %arrayidx59 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %17 = load i32* %arrayidx59, align 4, !tbaa !0
  %tobool60 = icmp eq i32 %17, 0
  br i1 %tobool60, label %for.inc380, label %if.else62

if.else62:                                        ; preds = %for.body57
  %inc63 = add nsw i32 %a.2611, 1
  %idxprom65 = sext i32 %17 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom65
  %18 = load i32* %arrayidx66, align 4, !tbaa !0
  %add67 = add nsw i32 %18, 1
  %arrayidx69 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom65
  %19 = load i32* %arrayidx69, align 4, !tbaa !0
  %arrayidx71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom65
  %20 = load i32* %arrayidx71, align 4, !tbaa !0
  switch i32 %20, label %for.inc380 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb177
    i32 7, label %sw.bb287
    i32 8, label %sw.bb294
    i32 11, label %sw.bb301
    i32 12, label %sw.bb318
    i32 3, label %sw.bb335
    i32 4, label %sw.bb342
    i32 9, label %sw.bb349
    i32 10, label %sw.bb357
    i32 5, label %sw.bb365
    i32 6, label %sw.bb372
  ]

sw.bb:                                            ; preds = %if.else62
  %arrayidx73 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %21 = load i32* %arrayidx73, align 4, !tbaa !0
  %add74 = add nsw i32 %16, %21
  store i32 %add74, i32* %score, align 4, !tbaa !0
  %call = call fastcc i32 @s_pawn_mobility(i32 %17) #4
  %add75 = add nsw i32 %add74, %call
  store i32 %add75, i32* %score, align 4, !tbaa !0
  %add.i = add nsw i32 %17, 24
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom.i
  %22 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %22, 2
  br i1 %cmp.i, label %black_saccers.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %add1.i = add nsw i32 %17, 22
  %idxprom2.i = sext i32 %add1.i to i64
  %arrayidx3.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom2.i
  %23 = load i32* %arrayidx3.i, align 4, !tbaa !0
  %cmp4.i = icmp eq i32 %23, 2
  br i1 %cmp4.i, label %black_saccers.exit, label %lor.lhs.false5.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %add6.i = add nsw i32 %17, 26
  %idxprom7.i = sext i32 %add6.i to i64
  %arrayidx8.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7.i
  %24 = load i32* %arrayidx8.i, align 4, !tbaa !0
  %cmp9.i = icmp eq i32 %24, 2
  br i1 %cmp9.i, label %black_saccers.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %cmp12.i = icmp slt i32 %19, 6
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end42.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %add13.i = add nsw i32 %17, 25
  %idxprom14.i = sext i32 %add13.i to i64
  %arrayidx15.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom14.i
  %25 = load i32* %arrayidx15.i, align 4, !tbaa !0
  %cmp16.i = icmp eq i32 %25, 2
  br i1 %cmp16.i, label %if.then54.i, label %lor.lhs.false17.i

lor.lhs.false17.i:                                ; preds = %land.lhs.true.i
  %add18.i = add nsw i32 %17, 23
  %idxprom19.i = sext i32 %add18.i to i64
  %arrayidx20.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom19.i
  %26 = load i32* %arrayidx20.i, align 4, !tbaa !0
  %cmp21.i = icmp eq i32 %26, 2
  br i1 %cmp21.i, label %if.then54.i, label %if.else.i

if.else.i:                                        ; preds = %lor.lhs.false17.i
  %cmp25.i = icmp eq i32 %19, 4
  br i1 %cmp25.i, label %land.lhs.true26.i, label %if.end42.i

land.lhs.true26.i:                                ; preds = %if.else.i
  %add27.i = add nsw i32 %17, 35
  %idxprom28.i = sext i32 %add27.i to i64
  %arrayidx29.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28.i
  %27 = load i32* %arrayidx29.i, align 4, !tbaa !0
  %cmp30.i = icmp eq i32 %27, 2
  br i1 %cmp30.i, label %if.then54.i, label %lor.lhs.false31.i

lor.lhs.false31.i:                                ; preds = %land.lhs.true26.i
  %add32.i = add nsw i32 %17, 37
  %idxprom33.i = sext i32 %add32.i to i64
  %arrayidx34.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom33.i
  %28 = load i32* %arrayidx34.i, align 4, !tbaa !0
  %cmp35.i = icmp eq i32 %28, 2
  br i1 %cmp35.i, label %if.then54.i, label %if.end42.i

if.end42.i:                                       ; preds = %lor.lhs.false31.i, %if.else.i, %if.end.i
  %add40.i = add nsw i32 %17, 11
  %call.i = call i32 @is_attacked(i32 %add40.i, i32 0) #5
  %tobool41.i = icmp ne i32 %call.i, 0
  %cond.i = zext i1 %tobool41.i to i32
  br i1 %tobool41.i, label %if.end49.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end42.i
  %add45.i = add nsw i32 %17, 13
  %call46.i = call i32 @is_attacked(i32 %add45.i, i32 0) #5
  %tobool47.i = icmp ne i32 %call46.i, 0
  %cond48.i = select i1 %tobool47.i, i32 2, i32 0
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.end42.i
  %f.2.i = phi i32 [ %cond.i, %if.end42.i ], [ %cond48.i, %if.then44.i ]
  switch i32 %f.2.i, label %if.else60.i [
    i32 0, label %black_saccers.exit
    i32 1, label %if.then54.i
  ]

if.then54.i:                                      ; preds = %if.end49.i, %lor.lhs.false31.i, %land.lhs.true26.i, %lor.lhs.false17.i, %land.lhs.true.i
  %add55.i = add nsw i32 %17, 11
  %call56.i = call i32 @calc_attackers(i32 %add55.i, i32 0) #5
  %cmp57.i = icmp sgt i32 %call56.i, 1
  %..i = select i1 %cmp57.i, i32 0, i32 30
  br label %black_saccers.exit

if.else60.i:                                      ; preds = %if.end49.i
  %add61.i = add nsw i32 %17, 13
  %call62.i = call i32 @calc_attackers(i32 %add61.i, i32 0) #5
  %cmp63.i = icmp sgt i32 %call62.i, 1
  %.80.i = select i1 %cmp63.i, i32 0, i32 30
  br label %black_saccers.exit

black_saccers.exit:                               ; preds = %if.end49.i, %sw.bb, %lor.lhs.false.i, %lor.lhs.false5.i, %if.then54.i, %if.else60.i
  %retval.0.i = phi i32 [ 0, %lor.lhs.false5.i ], [ 0, %lor.lhs.false.i ], [ 0, %sw.bb ], [ %..i, %if.then54.i ], [ %.80.i, %if.else60.i ], [ 0, %if.end49.i ]
  %29 = load i32* %score, align 4, !tbaa !0
  %sub77 = sub nsw i32 %29, %retval.0.i
  store i32 %sub77, i32* %score, align 4, !tbaa !0
  %add79 = add nsw i32 %18, 2
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom80
  %30 = load i32* %arrayidx81, align 4, !tbaa !0
  %cmp82 = icmp sgt i32 %30, %19
  br i1 %cmp82, label %land.lhs.true, label %if.end103

land.lhs.true:                                    ; preds = %black_saccers.exit
  %idxprom84 = sext i32 %18 to i64
  %arrayidx85 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom84
  %31 = load i32* %arrayidx85, align 4, !tbaa !0
  %cmp86 = icmp sgt i32 %31, %19
  br i1 %cmp86, label %if.then87, label %if.end103

if.then87:                                        ; preds = %land.lhs.true
  %sub88 = add nsw i32 %sub77, -8
  store i32 %sub88, i32* %score, align 4, !tbaa !0
  %arrayidx92 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom80
  %32 = load i32* %arrayidx92, align 4, !tbaa !0
  %tobool93 = icmp eq i32 %32, 0
  br i1 %tobool93, label %land.lhs.true94, label %if.end103

land.lhs.true94:                                  ; preds = %if.then87
  %arrayidx98 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom84
  %33 = load i32* %arrayidx98, align 4, !tbaa !0
  %tobool99 = icmp eq i32 %33, 0
  br i1 %tobool99, label %if.then100, label %if.end103

if.then100:                                       ; preds = %land.lhs.true94
  %sub101 = add nsw i32 %sub77, -20
  store i32 %sub101, i32* %score, align 4, !tbaa !0
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true94, %if.then87, %if.then100, %land.lhs.true, %black_saccers.exit
  %34 = phi i32 [ %sub88, %if.then87 ], [ %sub88, %land.lhs.true94 ], [ %sub101, %if.then100 ], [ %sub77, %land.lhs.true ], [ %sub77, %black_saccers.exit ]
  %isolated.0 = phi i32 [ 0, %if.then87 ], [ 0, %land.lhs.true94 ], [ 1, %if.then100 ], [ 0, %land.lhs.true ], [ 0, %black_saccers.exit ]
  %backwards.0 = phi i32 [ 1, %if.then87 ], [ 1, %land.lhs.true94 ], [ 1, %if.then100 ], [ 0, %land.lhs.true ], [ 0, %black_saccers.exit ]
  %idxprom104 = sext i32 %add67 to i64
  %arrayidx106 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom104
  %35 = load i32* %arrayidx106, align 4, !tbaa !0
  %tobool107 = icmp eq i32 %35, 0
  br i1 %tobool107, label %if.then108, label %if.end117

if.then108:                                       ; preds = %if.end103
  %tobool109 = icmp eq i32 %backwards.0, 0
  br i1 %tobool109, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.then108
  %sub111 = add nsw i32 %34, -5
  store i32 %sub111, i32* %score, align 4, !tbaa !0
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.then110
  %36 = phi i32 [ %34, %if.then108 ], [ %sub111, %if.then110 ]
  %tobool113 = icmp eq i32 %isolated.0, 0
  br i1 %tobool113, label %if.end117, label %if.then114

if.then114:                                       ; preds = %if.end112
  %sub115 = add nsw i32 %36, -8
  store i32 %sub115, i32* %score, align 4, !tbaa !0
  br label %if.end117

if.end117:                                        ; preds = %if.end112, %if.end103, %if.then114
  %37 = phi i32 [ %36, %if.end112 ], [ %34, %if.end103 ], [ %sub115, %if.then114 ]
  %arrayidx120 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom104
  %38 = load i32* %arrayidx120, align 4, !tbaa !0
  %cmp121 = icmp sgt i32 %38, 1
  br i1 %cmp121, label %if.then122, label %if.end128

if.then122:                                       ; preds = %if.end117
  %39 = mul i32 %38, -15
  %mul.neg = add i32 %39, 15
  %sub127 = add i32 %mul.neg, %37
  store i32 %sub127, i32* %score, align 4, !tbaa !0
  br label %if.end128

if.end128:                                        ; preds = %if.then122, %if.end117
  %40 = phi i32 [ %sub127, %if.then122 ], [ %37, %if.end117 ]
  %idxprom135 = sext i32 %18 to i64
  br i1 %tobool107, label %land.lhs.true133, label %if.end168

land.lhs.true133:                                 ; preds = %if.end128
  %arrayidx136 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom135
  %41 = load i32* %arrayidx136, align 4, !tbaa !0
  %cmp137 = icmp slt i32 %19, %41
  br i1 %cmp137, label %if.end168, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %land.lhs.true133
  %arrayidx141 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom80
  %42 = load i32* %arrayidx141, align 4, !tbaa !0
  %cmp142 = icmp slt i32 %19, %42
  br i1 %cmp142, label %if.end168, label %if.then143

if.then143:                                       ; preds = %land.lhs.true138
  %43 = mul i32 %19, 3
  %add148 = add i32 %43, 24
  %add149 = add nsw i32 %add148, %40
  store i32 %add149, i32* %score, align 4, !tbaa !0
  switch i32 %18, label %if.end163 [
    i32 1, label %if.then156
    i32 8, label %if.then156
  ]

if.then156:                                       ; preds = %if.then143, %if.then143
  %sub159 = shl i32 %19, 1
  %add162 = add nsw i32 %add149, %sub159
  store i32 %add162, i32* %score, align 4, !tbaa !0
  br label %if.end163

if.end163:                                        ; preds = %if.then143, %if.then156
  %44 = phi i32 [ %add149, %if.then143 ], [ %add162, %if.then156 ]
  %tobool164 = icmp eq i32 %isolated.0, 0
  br i1 %tobool164, label %if.then165, label %if.end168

if.then165:                                       ; preds = %if.end163
  %add166 = add nsw i32 %44, 6
  store i32 %add166, i32* %score, align 4, !tbaa !0
  br label %if.end168

if.end168:                                        ; preds = %if.end128, %if.end163, %land.lhs.true138, %land.lhs.true133, %if.then165
  %45 = phi i32 [ %add166, %if.then165 ], [ %40, %land.lhs.true133 ], [ %40, %land.lhs.true138 ], [ %44, %if.end163 ], [ %40, %if.end128 ]
  %arrayidx172 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom135
  %46 = load i32* %arrayidx172, align 4, !tbaa !0
  %tobool173 = icmp eq i32 %46, 0
  br i1 %tobool173, label %if.then174, label %for.inc380

if.then174:                                       ; preds = %if.end168
  %sub175 = add nsw i32 %45, -20
  store i32 %sub175, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb177:                                         ; preds = %if.else62
  %arrayidx179 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %47 = load i32* %arrayidx179, align 4, !tbaa !0
  %sub180 = sub nsw i32 %16, %47
  store i32 %sub180, i32* %score, align 4, !tbaa !0
  %call181 = call fastcc i32 @s_pawn_mobility(i32 %17) #4
  %sub182 = sub nsw i32 %sub180, %call181
  store i32 %sub182, i32* %score, align 4, !tbaa !0
  %sub.i = add nsw i32 %17, -24
  %idxprom.i511 = sext i32 %sub.i to i64
  %arrayidx.i512 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom.i511
  %48 = load i32* %arrayidx.i512, align 4, !tbaa !0
  %cmp.i513 = icmp eq i32 %48, 1
  br i1 %cmp.i513, label %white_saccers.exit, label %lor.lhs.false.i517

lor.lhs.false.i517:                               ; preds = %sw.bb177
  %sub1.i = add nsw i32 %17, -22
  %idxprom2.i514 = sext i32 %sub1.i to i64
  %arrayidx3.i515 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom2.i514
  %49 = load i32* %arrayidx3.i515, align 4, !tbaa !0
  %cmp4.i516 = icmp eq i32 %49, 1
  br i1 %cmp4.i516, label %white_saccers.exit, label %lor.lhs.false5.i521

lor.lhs.false5.i521:                              ; preds = %lor.lhs.false.i517
  %sub6.i = add nsw i32 %17, -26
  %idxprom7.i518 = sext i32 %sub6.i to i64
  %arrayidx8.i519 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7.i518
  %50 = load i32* %arrayidx8.i519, align 4, !tbaa !0
  %cmp9.i520 = icmp eq i32 %50, 1
  br i1 %cmp9.i520, label %white_saccers.exit, label %if.end.i525

if.end.i525:                                      ; preds = %lor.lhs.false5.i521
  %cmp12.i524 = icmp sgt i32 %19, 3
  br i1 %cmp12.i524, label %land.lhs.true.i529, label %if.end42.i547

land.lhs.true.i529:                               ; preds = %if.end.i525
  %sub13.i = add nsw i32 %17, -25
  %idxprom14.i526 = sext i32 %sub13.i to i64
  %arrayidx15.i527 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom14.i526
  %51 = load i32* %arrayidx15.i527, align 4, !tbaa !0
  %cmp16.i528 = icmp eq i32 %51, 1
  br i1 %cmp16.i528, label %if.then54.i557, label %lor.lhs.false17.i533

lor.lhs.false17.i533:                             ; preds = %land.lhs.true.i529
  %sub18.i = add nsw i32 %17, -23
  %idxprom19.i530 = sext i32 %sub18.i to i64
  %arrayidx20.i531 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom19.i530
  %52 = load i32* %arrayidx20.i531, align 4, !tbaa !0
  %cmp21.i532 = icmp eq i32 %52, 1
  br i1 %cmp21.i532, label %if.then54.i557, label %if.else.i535

if.else.i535:                                     ; preds = %lor.lhs.false17.i533
  %cmp25.i534 = icmp eq i32 %19, 5
  br i1 %cmp25.i534, label %land.lhs.true26.i539, label %if.end42.i547

land.lhs.true26.i539:                             ; preds = %if.else.i535
  %sub27.i = add nsw i32 %17, -35
  %idxprom28.i536 = sext i32 %sub27.i to i64
  %arrayidx29.i537 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28.i536
  %53 = load i32* %arrayidx29.i537, align 4, !tbaa !0
  %cmp30.i538 = icmp eq i32 %53, 1
  br i1 %cmp30.i538, label %if.then54.i557, label %lor.lhs.false31.i543

lor.lhs.false31.i543:                             ; preds = %land.lhs.true26.i539
  %sub32.i = add nsw i32 %17, -37
  %idxprom33.i540 = sext i32 %sub32.i to i64
  %arrayidx34.i541 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom33.i540
  %54 = load i32* %arrayidx34.i541, align 4, !tbaa !0
  %cmp35.i542 = icmp eq i32 %54, 1
  br i1 %cmp35.i542, label %if.then54.i557, label %if.end42.i547

if.end42.i547:                                    ; preds = %lor.lhs.false31.i543, %if.else.i535, %if.end.i525
  %sub40.i = add nsw i32 %17, -11
  %call.i544 = call i32 @is_attacked(i32 %sub40.i, i32 1) #5
  %tobool41.i545 = icmp ne i32 %call.i544, 0
  %cond.i546 = zext i1 %tobool41.i545 to i32
  br i1 %tobool41.i545, label %if.end49.i553, label %if.then44.i551

if.then44.i551:                                   ; preds = %if.end42.i547
  %sub45.i = add nsw i32 %17, -13
  %call46.i548 = call i32 @is_attacked(i32 %sub45.i, i32 1) #5
  %tobool47.i549 = icmp ne i32 %call46.i548, 0
  %cond48.i550 = select i1 %tobool47.i549, i32 2, i32 0
  br label %if.end49.i553

if.end49.i553:                                    ; preds = %if.then44.i551, %if.end42.i547
  %f.2.i552 = phi i32 [ %cond.i546, %if.end42.i547 ], [ %cond48.i550, %if.then44.i551 ]
  switch i32 %f.2.i552, label %if.else60.i561 [
    i32 0, label %white_saccers.exit
    i32 1, label %if.then54.i557
  ]

if.then54.i557:                                   ; preds = %if.end49.i553, %lor.lhs.false31.i543, %land.lhs.true26.i539, %lor.lhs.false17.i533, %land.lhs.true.i529
  %sub55.i = add nsw i32 %17, -11
  %call56.i554 = call i32 @calc_attackers(i32 %sub55.i, i32 1) #5
  %cmp57.i555 = icmp sgt i32 %call56.i554, 1
  %..i556 = select i1 %cmp57.i555, i32 0, i32 30
  br label %white_saccers.exit

if.else60.i561:                                   ; preds = %if.end49.i553
  %sub61.i = add nsw i32 %17, -13
  %call62.i558 = call i32 @calc_attackers(i32 %sub61.i, i32 1) #5
  %cmp63.i559 = icmp sgt i32 %call62.i558, 1
  %.80.i560 = select i1 %cmp63.i559, i32 0, i32 30
  br label %white_saccers.exit

white_saccers.exit:                               ; preds = %if.end49.i553, %sw.bb177, %lor.lhs.false.i517, %lor.lhs.false5.i521, %if.then54.i557, %if.else60.i561
  %retval.0.i562 = phi i32 [ 0, %lor.lhs.false5.i521 ], [ 0, %lor.lhs.false.i517 ], [ 0, %sw.bb177 ], [ %..i556, %if.then54.i557 ], [ %.80.i560, %if.else60.i561 ], [ 0, %if.end49.i553 ]
  %55 = load i32* %score, align 4, !tbaa !0
  %add184 = add nsw i32 %55, %retval.0.i562
  store i32 %add184, i32* %score, align 4, !tbaa !0
  %add186 = add nsw i32 %18, 2
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom187
  %56 = load i32* %arrayidx188, align 4, !tbaa !0
  %cmp189 = icmp slt i32 %56, %19
  br i1 %cmp189, label %land.lhs.true190, label %if.end211

land.lhs.true190:                                 ; preds = %white_saccers.exit
  %idxprom192 = sext i32 %18 to i64
  %arrayidx193 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom192
  %57 = load i32* %arrayidx193, align 4, !tbaa !0
  %cmp194 = icmp slt i32 %57, %19
  br i1 %cmp194, label %if.then195, label %if.end211

if.then195:                                       ; preds = %land.lhs.true190
  %add196 = add nsw i32 %add184, 8
  store i32 %add196, i32* %score, align 4, !tbaa !0
  %arrayidx200 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom187
  %58 = load i32* %arrayidx200, align 4, !tbaa !0
  %tobool201 = icmp eq i32 %58, 0
  br i1 %tobool201, label %land.lhs.true202, label %if.end211

land.lhs.true202:                                 ; preds = %if.then195
  %arrayidx206 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom192
  %59 = load i32* %arrayidx206, align 4, !tbaa !0
  %tobool207 = icmp eq i32 %59, 0
  br i1 %tobool207, label %if.then208, label %if.end211

if.then208:                                       ; preds = %land.lhs.true202
  %add209 = add nsw i32 %add184, 20
  store i32 %add209, i32* %score, align 4, !tbaa !0
  br label %if.end211

if.end211:                                        ; preds = %land.lhs.true202, %if.then195, %if.then208, %land.lhs.true190, %white_saccers.exit
  %60 = phi i32 [ %add196, %if.then195 ], [ %add196, %land.lhs.true202 ], [ %add209, %if.then208 ], [ %add184, %land.lhs.true190 ], [ %add184, %white_saccers.exit ]
  %isolated.1 = phi i32 [ 0, %if.then195 ], [ 0, %land.lhs.true202 ], [ 1, %if.then208 ], [ 0, %land.lhs.true190 ], [ 0, %white_saccers.exit ]
  %backwards.1 = phi i32 [ 1, %if.then195 ], [ 1, %land.lhs.true202 ], [ 1, %if.then208 ], [ 0, %land.lhs.true190 ], [ 0, %white_saccers.exit ]
  %idxprom212 = sext i32 %add67 to i64
  %arrayidx214 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom212
  %61 = load i32* %arrayidx214, align 4, !tbaa !0
  %tobool215 = icmp eq i32 %61, 0
  br i1 %tobool215, label %if.then216, label %if.end225

if.then216:                                       ; preds = %if.end211
  %tobool217 = icmp eq i32 %backwards.1, 0
  br i1 %tobool217, label %if.end220, label %if.then218

if.then218:                                       ; preds = %if.then216
  %add219 = add nsw i32 %60, 5
  store i32 %add219, i32* %score, align 4, !tbaa !0
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %if.then218
  %62 = phi i32 [ %60, %if.then216 ], [ %add219, %if.then218 ]
  %tobool221 = icmp eq i32 %isolated.1, 0
  br i1 %tobool221, label %if.end225, label %if.then222

if.then222:                                       ; preds = %if.end220
  %add223 = add nsw i32 %62, 8
  store i32 %add223, i32* %score, align 4, !tbaa !0
  br label %if.end225

if.end225:                                        ; preds = %if.end220, %if.end211, %if.then222
  %63 = phi i32 [ %62, %if.end220 ], [ %60, %if.end211 ], [ %add223, %if.then222 ]
  %arrayidx228 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom212
  %64 = load i32* %arrayidx228, align 4, !tbaa !0
  %cmp229 = icmp sgt i32 %64, 1
  br i1 %cmp229, label %if.then230, label %if.end237

if.then230:                                       ; preds = %if.end225
  %65 = mul i32 %64, 15
  %mul235 = add i32 %65, -15
  %add236 = add nsw i32 %mul235, %63
  store i32 %add236, i32* %score, align 4, !tbaa !0
  br label %if.end237

if.end237:                                        ; preds = %if.then230, %if.end225
  %66 = phi i32 [ %add236, %if.then230 ], [ %63, %if.end225 ]
  %idxprom244 = sext i32 %18 to i64
  br i1 %tobool215, label %land.lhs.true242, label %if.end278

land.lhs.true242:                                 ; preds = %if.end237
  %arrayidx245 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom244
  %67 = load i32* %arrayidx245, align 4, !tbaa !0
  %cmp246 = icmp sgt i32 %19, %67
  br i1 %cmp246, label %if.end278, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %land.lhs.true242
  %arrayidx250 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom187
  %68 = load i32* %arrayidx250, align 4, !tbaa !0
  %cmp251 = icmp sgt i32 %19, %68
  br i1 %cmp251, label %if.end278, label %if.then252

if.then252:                                       ; preds = %land.lhs.true247
  %sub255 = sub nsw i32 7, %19
  %69 = mul i32 %sub255, -3
  %add257.neg = add i32 %66, -30
  %sub258 = add i32 %add257.neg, %69
  store i32 %sub258, i32* %score, align 4, !tbaa !0
  switch i32 %18, label %if.end273 [
    i32 1, label %if.then266
    i32 8, label %if.then266
  ]

if.then266:                                       ; preds = %if.then252, %if.then252
  %mul270 = shl i32 %sub255, 1
  %add271.neg = add i32 %sub258, -4
  %sub272 = sub i32 %add271.neg, %mul270
  store i32 %sub272, i32* %score, align 4, !tbaa !0
  br label %if.end273

if.end273:                                        ; preds = %if.then252, %if.then266
  %70 = phi i32 [ %sub258, %if.then252 ], [ %sub272, %if.then266 ]
  %tobool274 = icmp eq i32 %isolated.1, 0
  br i1 %tobool274, label %if.then275, label %if.end278

if.then275:                                       ; preds = %if.end273
  %sub276 = add nsw i32 %70, -6
  store i32 %sub276, i32* %score, align 4, !tbaa !0
  br label %if.end278

if.end278:                                        ; preds = %if.end237, %if.end273, %land.lhs.true247, %land.lhs.true242, %if.then275
  %71 = phi i32 [ %sub276, %if.then275 ], [ %66, %land.lhs.true242 ], [ %66, %land.lhs.true247 ], [ %70, %if.end273 ], [ %66, %if.end237 ]
  %arrayidx282 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom244
  %72 = load i32* %arrayidx282, align 4, !tbaa !0
  %tobool283 = icmp eq i32 %72, 0
  br i1 %tobool283, label %if.then284, label %for.inc380

if.then284:                                       ; preds = %if.end278
  %add285 = add nsw i32 %71, 20
  store i32 %add285, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb287:                                         ; preds = %if.else62
  %arrayidx289 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %73 = load i32* %arrayidx289, align 4, !tbaa !0
  %add290 = add nsw i32 %16, %73
  store i32 %add290, i32* %score, align 4, !tbaa !0
  %call291 = call fastcc i32 @s_rook_mobility(i32 %17) #4
  %add292 = add nsw i32 %add290, %call291
  store i32 %add292, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb294:                                         ; preds = %if.else62
  %arrayidx296 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %74 = load i32* %arrayidx296, align 4, !tbaa !0
  %sub297 = sub nsw i32 %16, %74
  store i32 %sub297, i32* %score, align 4, !tbaa !0
  %call298 = call fastcc i32 @s_rook_mobility(i32 %17) #4
  %sub299 = sub nsw i32 %sub297, %call298
  store i32 %sub299, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb301:                                         ; preds = %if.else62
  %arrayidx303 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %75 = load i32* %arrayidx303, align 4, !tbaa !0
  %add304 = add nsw i32 %16, %75
  store i32 %add304, i32* %score, align 4, !tbaa !0
  %call305 = call fastcc i32 @s_bishop_mobility(i32 %17) #4
  %add306 = add nsw i32 %add304, %call305
  store i32 %add306, i32* %score, align 4, !tbaa !0
  %tobool307 = icmp eq i32 %wb.0613, 0
  %arrayidx317.phi.trans.insert = getelementptr inbounds [144 x i32]* @sqcolor, i64 0, i64 %idxprom65
  %.pre = load i32* %arrayidx317.phi.trans.insert, align 4, !tbaa !0
  br i1 %tobool307, label %for.inc380, label %if.then308

if.then308:                                       ; preds = %sw.bb301
  %cmp311 = icmp eq i32 %.pre, %wbc.0615
  %wb.0.op = add i32 %wb.0613, 1
  %phitmp609 = select i1 %cmp311, i32 %wb.0.op, i32 100
  br label %for.inc380

sw.bb318:                                         ; preds = %if.else62
  %arrayidx320 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %76 = load i32* %arrayidx320, align 4, !tbaa !0
  %sub321 = sub nsw i32 %16, %76
  store i32 %sub321, i32* %score, align 4, !tbaa !0
  %call322 = call fastcc i32 @s_bishop_mobility(i32 %17) #4
  %sub323 = sub nsw i32 %sub321, %call322
  store i32 %sub323, i32* %score, align 4, !tbaa !0
  %tobool324 = icmp eq i32 %bb.0614, 0
  %arrayidx334.phi.trans.insert = getelementptr inbounds [144 x i32]* @sqcolor, i64 0, i64 %idxprom65
  %.pre646 = load i32* %arrayidx334.phi.trans.insert, align 4, !tbaa !0
  br i1 %tobool324, label %for.inc380, label %if.then325

if.then325:                                       ; preds = %sw.bb318
  %cmp328 = icmp eq i32 %.pre646, %bbc.0616
  %bb.0.op = add i32 %bb.0614, 1
  %phitmp = select i1 %cmp328, i32 %bb.0.op, i32 100
  br label %for.inc380

sw.bb335:                                         ; preds = %if.else62
  %arrayidx337 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %77 = load i32* %arrayidx337, align 4, !tbaa !0
  %add338 = add nsw i32 %16, %77
  store i32 %add338, i32* %score, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %sw.bb335
  %indvars.iv.i = phi i64 [ 0, %sw.bb335 ], [ %indvars.iv.next.i, %for.body.i ]
  %m.09.i = phi i32 [ 0, %sw.bb335 ], [ %inc.m.0.i, %for.body.i ]
  %arrayidx.i563 = getelementptr inbounds [8 x i32]* @knight_o, i64 0, i64 %indvars.iv.i
  %78 = load i32* %arrayidx.i563, align 4, !tbaa !0
  %add.i564 = add nsw i32 %78, %17
  %idxprom1.i = sext i32 %add.i564 to i64
  %arrayidx2.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i
  %79 = load i32* %arrayidx2.i, align 4, !tbaa !0
  %cmp3.i = icmp eq i32 %79, 13
  %inc.i = zext i1 %cmp3.i to i32
  %inc.m.0.i = add nsw i32 %inc.i, %m.09.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv637 = trunc i64 %indvars.iv.next.i to i32
  %exitcond638 = icmp eq i32 %lftr.wideiv637, 8
  br i1 %exitcond638, label %s_knight_mobility.exit, label %for.body.i

s_knight_mobility.exit:                           ; preds = %for.body.i
  %shl.i = shl i32 %inc.m.0.i, 2
  %add340 = add nsw i32 %add338, %shl.i
  store i32 %add340, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb342:                                         ; preds = %if.else62
  %arrayidx344 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %80 = load i32* %arrayidx344, align 4, !tbaa !0
  %sub345 = sub nsw i32 %16, %80
  store i32 %sub345, i32* %score, align 4, !tbaa !0
  br label %for.body.i577

for.body.i577:                                    ; preds = %for.body.i577, %sw.bb342
  %indvars.iv.i565 = phi i64 [ 0, %sw.bb342 ], [ %indvars.iv.next.i574, %for.body.i577 ]
  %m.09.i566 = phi i32 [ 0, %sw.bb342 ], [ %inc.m.0.i573, %for.body.i577 ]
  %arrayidx.i567 = getelementptr inbounds [8 x i32]* @knight_o, i64 0, i64 %indvars.iv.i565
  %81 = load i32* %arrayidx.i567, align 4, !tbaa !0
  %add.i568 = add nsw i32 %81, %17
  %idxprom1.i569 = sext i32 %add.i568 to i64
  %arrayidx2.i570 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i569
  %82 = load i32* %arrayidx2.i570, align 4, !tbaa !0
  %cmp3.i571 = icmp eq i32 %82, 13
  %inc.i572 = zext i1 %cmp3.i571 to i32
  %inc.m.0.i573 = add nsw i32 %inc.i572, %m.09.i566
  %indvars.iv.next.i574 = add i64 %indvars.iv.i565, 1
  %lftr.wideiv635 = trunc i64 %indvars.iv.next.i574 to i32
  %exitcond636 = icmp eq i32 %lftr.wideiv635, 8
  br i1 %exitcond636, label %s_knight_mobility.exit579, label %for.body.i577

s_knight_mobility.exit579:                        ; preds = %for.body.i577
  %shl.i578 = shl i32 %inc.m.0.i573, 2
  %sub347 = sub nsw i32 %sub345, %shl.i578
  store i32 %sub347, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb349:                                         ; preds = %if.else62
  %arrayidx351 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %83 = load i32* %arrayidx351, align 4, !tbaa !0
  %add352 = add nsw i32 %16, %83
  store i32 %add352, i32* %score, align 4, !tbaa !0
  %call353 = call fastcc i32 @s_rook_mobility(i32 %17) #4
  %add354 = add nsw i32 %add352, %call353
  store i32 %add354, i32* %score, align 4, !tbaa !0
  %call355 = call fastcc i32 @s_bishop_mobility(i32 %17) #4
  %add356 = add nsw i32 %add354, %call355
  store i32 %add356, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb357:                                         ; preds = %if.else62
  %arrayidx359 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %84 = load i32* %arrayidx359, align 4, !tbaa !0
  %sub360 = sub nsw i32 %16, %84
  store i32 %sub360, i32* %score, align 4, !tbaa !0
  %call361 = call fastcc i32 @s_rook_mobility(i32 %17) #4
  %sub362 = sub nsw i32 %sub360, %call361
  store i32 %sub362, i32* %score, align 4, !tbaa !0
  %call363 = call fastcc i32 @s_bishop_mobility(i32 %17) #4
  %sub364 = sub nsw i32 %sub362, %call363
  store i32 %sub364, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb365:                                         ; preds = %if.else62
  %arrayidx367 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %85 = load i32* %arrayidx367, align 4, !tbaa !0
  %shr = ashr i32 %85, 1
  %add368 = add nsw i32 %16, %shr
  store i32 %add368, i32* %score, align 4, !tbaa !0
  br label %for.body.i592

for.body.i592:                                    ; preds = %for.body.i592, %sw.bb365
  %indvars.iv.i580 = phi i64 [ 0, %sw.bb365 ], [ %indvars.iv.next.i589, %for.body.i592 ]
  %m.09.i581 = phi i32 [ 0, %sw.bb365 ], [ %inc.m.0.i588, %for.body.i592 ]
  %arrayidx.i582 = getelementptr inbounds [8 x i32]* @king_o, i64 0, i64 %indvars.iv.i580
  %86 = load i32* %arrayidx.i582, align 4, !tbaa !0
  %add.i583 = add nsw i32 %86, %17
  %idxprom1.i584 = sext i32 %add.i583 to i64
  %arrayidx2.i585 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i584
  %87 = load i32* %arrayidx2.i585, align 4, !tbaa !0
  %cmp3.i586 = icmp eq i32 %87, 13
  %inc.i587 = zext i1 %cmp3.i586 to i32
  %inc.m.0.i588 = add nsw i32 %inc.i587, %m.09.i581
  %indvars.iv.next.i589 = add i64 %indvars.iv.i580, 1
  %lftr.wideiv633 = trunc i64 %indvars.iv.next.i589 to i32
  %exitcond634 = icmp eq i32 %lftr.wideiv633, 8
  br i1 %exitcond634, label %s_king_mobility.exit, label %for.body.i592

s_king_mobility.exit:                             ; preds = %for.body.i592
  %shl.i593 = shl i32 %inc.m.0.i588, 2
  %add370 = add nsw i32 %add368, %shl.i593
  store i32 %add370, i32* %score, align 4, !tbaa !0
  br label %for.inc380

sw.bb372:                                         ; preds = %if.else62
  %arrayidx374 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom65
  %88 = load i32* %arrayidx374, align 4, !tbaa !0
  %shr375 = ashr i32 %88, 1
  %sub376 = sub nsw i32 %16, %shr375
  store i32 %sub376, i32* %score, align 4, !tbaa !0
  br label %for.body.i606

for.body.i606:                                    ; preds = %for.body.i606, %sw.bb372
  %indvars.iv.i594 = phi i64 [ 0, %sw.bb372 ], [ %indvars.iv.next.i603, %for.body.i606 ]
  %m.09.i595 = phi i32 [ 0, %sw.bb372 ], [ %inc.m.0.i602, %for.body.i606 ]
  %arrayidx.i596 = getelementptr inbounds [8 x i32]* @king_o, i64 0, i64 %indvars.iv.i594
  %89 = load i32* %arrayidx.i596, align 4, !tbaa !0
  %add.i597 = add nsw i32 %89, %17
  %idxprom1.i598 = sext i32 %add.i597 to i64
  %arrayidx2.i599 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i598
  %90 = load i32* %arrayidx2.i599, align 4, !tbaa !0
  %cmp3.i600 = icmp eq i32 %90, 13
  %inc.i601 = zext i1 %cmp3.i600 to i32
  %inc.m.0.i602 = add nsw i32 %inc.i601, %m.09.i595
  %indvars.iv.next.i603 = add i64 %indvars.iv.i594, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i603 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %s_king_mobility.exit608, label %for.body.i606

s_king_mobility.exit608:                          ; preds = %for.body.i606
  %shl.i607 = shl i32 %inc.m.0.i602, 2
  %sub378 = sub nsw i32 %sub376, %shl.i607
  store i32 %sub378, i32* %score, align 4, !tbaa !0
  br label %for.inc380

for.inc380:                                       ; preds = %sw.bb318, %sw.bb301, %if.then325, %if.then308, %if.end278, %if.end168, %for.body57, %sw.bb287, %sw.bb294, %s_knight_mobility.exit, %s_knight_mobility.exit579, %sw.bb349, %sw.bb357, %s_king_mobility.exit, %s_king_mobility.exit608, %if.else62, %if.then174, %if.then284
  %91 = phi i32 [ %16, %if.else62 ], [ %sub378, %s_king_mobility.exit608 ], [ %add370, %s_king_mobility.exit ], [ %sub364, %sw.bb357 ], [ %add356, %sw.bb349 ], [ %sub347, %s_knight_mobility.exit579 ], [ %add340, %s_knight_mobility.exit ], [ %sub299, %sw.bb294 ], [ %add292, %sw.bb287 ], [ %add285, %if.then284 ], [ %sub175, %if.then174 ], [ %16, %for.body57 ], [ %45, %if.end168 ], [ %71, %if.end278 ], [ %add306, %if.then308 ], [ %sub323, %if.then325 ], [ %add306, %sw.bb301 ], [ %sub323, %sw.bb318 ]
  %a.3 = phi i32 [ %inc63, %if.else62 ], [ %inc63, %s_king_mobility.exit608 ], [ %inc63, %s_king_mobility.exit ], [ %inc63, %sw.bb357 ], [ %inc63, %sw.bb349 ], [ %inc63, %s_knight_mobility.exit579 ], [ %inc63, %s_knight_mobility.exit ], [ %inc63, %sw.bb294 ], [ %inc63, %sw.bb287 ], [ %inc63, %if.then284 ], [ %inc63, %if.then174 ], [ %a.2611, %for.body57 ], [ %inc63, %if.end168 ], [ %inc63, %if.end278 ], [ %inc63, %if.then308 ], [ %inc63, %if.then325 ], [ %inc63, %sw.bb301 ], [ %inc63, %sw.bb318 ]
  %wb.2 = phi i32 [ %wb.0613, %if.else62 ], [ %wb.0613, %s_king_mobility.exit608 ], [ %wb.0613, %s_king_mobility.exit ], [ %wb.0613, %sw.bb357 ], [ %wb.0613, %sw.bb349 ], [ %wb.0613, %s_knight_mobility.exit579 ], [ %wb.0613, %s_knight_mobility.exit ], [ %wb.0613, %sw.bb294 ], [ %wb.0613, %sw.bb287 ], [ %wb.0613, %if.then284 ], [ %wb.0613, %if.then174 ], [ %wb.0613, %for.body57 ], [ %wb.0613, %if.end168 ], [ %wb.0613, %if.end278 ], [ %phitmp609, %if.then308 ], [ %wb.0613, %if.then325 ], [ 1, %sw.bb301 ], [ %wb.0613, %sw.bb318 ]
  %bb.2 = phi i32 [ %bb.0614, %if.else62 ], [ %bb.0614, %s_king_mobility.exit608 ], [ %bb.0614, %s_king_mobility.exit ], [ %bb.0614, %sw.bb357 ], [ %bb.0614, %sw.bb349 ], [ %bb.0614, %s_knight_mobility.exit579 ], [ %bb.0614, %s_knight_mobility.exit ], [ %bb.0614, %sw.bb294 ], [ %bb.0614, %sw.bb287 ], [ %bb.0614, %if.then284 ], [ %bb.0614, %if.then174 ], [ %bb.0614, %for.body57 ], [ %bb.0614, %if.end168 ], [ %bb.0614, %if.end278 ], [ %bb.0614, %if.then308 ], [ %phitmp, %if.then325 ], [ %bb.0614, %sw.bb301 ], [ 1, %sw.bb318 ]
  %wbc.1 = phi i32 [ %wbc.0615, %if.else62 ], [ %wbc.0615, %s_king_mobility.exit608 ], [ %wbc.0615, %s_king_mobility.exit ], [ %wbc.0615, %sw.bb357 ], [ %wbc.0615, %sw.bb349 ], [ %wbc.0615, %s_knight_mobility.exit579 ], [ %wbc.0615, %s_knight_mobility.exit ], [ %wbc.0615, %sw.bb294 ], [ %wbc.0615, %sw.bb287 ], [ %wbc.0615, %if.then284 ], [ %wbc.0615, %if.then174 ], [ %wbc.0615, %for.body57 ], [ %wbc.0615, %if.end168 ], [ %wbc.0615, %if.end278 ], [ %.pre, %if.then308 ], [ %wbc.0615, %if.then325 ], [ %.pre, %sw.bb301 ], [ %wbc.0615, %sw.bb318 ]
  %bbc.1 = phi i32 [ %bbc.0616, %if.else62 ], [ %bbc.0616, %s_king_mobility.exit608 ], [ %bbc.0616, %s_king_mobility.exit ], [ %bbc.0616, %sw.bb357 ], [ %bbc.0616, %sw.bb349 ], [ %bbc.0616, %s_knight_mobility.exit579 ], [ %bbc.0616, %s_knight_mobility.exit ], [ %bbc.0616, %sw.bb294 ], [ %bbc.0616, %sw.bb287 ], [ %bbc.0616, %if.then284 ], [ %bbc.0616, %if.then174 ], [ %bbc.0616, %for.body57 ], [ %bbc.0616, %if.end168 ], [ %bbc.0616, %if.end278 ], [ %bbc.0616, %if.then308 ], [ %.pre646, %if.then325 ], [ %bbc.0616, %sw.bb301 ], [ %.pre646, %sw.bb318 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %92 = load i32* @piece_count, align 4, !tbaa !0
  %cmp56 = icmp sgt i32 %a.3, %92
  br i1 %cmp56, label %for.end382, label %for.body57

for.end382:                                       ; preds = %for.cond6.preheader, %for.inc380, %for.cond55.preheader
  %93 = phi i32 [ %6, %for.cond55.preheader ], [ %91, %for.inc380 ], [ %6, %for.cond6.preheader ]
  %.lcssa = phi i32 [ %7, %for.cond55.preheader ], [ %92, %for.inc380 ], [ %7, %for.cond6.preheader ]
  %bbc.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %bbc.1, %for.inc380 ], [ 0, %for.cond6.preheader ]
  %wbc.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %wbc.1, %for.inc380 ], [ 0, %for.cond6.preheader ]
  %bb.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %bb.2, %for.inc380 ], [ 0, %for.cond6.preheader ]
  %wb.0.lcssa = phi i32 [ 0, %for.cond55.preheader ], [ %wb.2, %for.inc380 ], [ 0, %for.cond6.preheader ]
  %cmp383 = icmp slt i32 %wb.0.lcssa, 99
  %cmp385 = icmp slt i32 %bb.0.lcssa, 99
  %or.cond510 = and i1 %cmp383, %cmp385
  br i1 %or.cond510, label %land.lhs.true386, label %if.end396

land.lhs.true386:                                 ; preds = %for.end382
  %cmp387 = icmp ne i32 %wbc.0.lcssa, %bbc.0.lcssa
  %cmp389 = icmp slt i32 %.lcssa, 32
  %or.cond = and i1 %cmp387, %cmp389
  br i1 %or.cond, label %if.then390, label %if.end396

if.then390:                                       ; preds = %land.lhs.true386
  %conv = sitofp i32 %93 to float
  %conv391 = sitofp i32 %.lcssa to float
  %conv393 = fmul float %conv391, 3.125000e-02
  %mul394 = fmul float %conv393, %conv
  %conv395 = fptosi float %mul394 to i32
  store i32 %conv395, i32* %score, align 4, !tbaa !0
  br label %if.end396

if.end396:                                        ; preds = %if.then390, %land.lhs.true386, %for.end382
  %94 = phi i32 [ %conv395, %if.then390 ], [ %93, %land.lhs.true386 ], [ %93, %for.end382 ]
  call void @storeECache(i32 %94) #5
  %95 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp397 = icmp eq i32 %95, 1
  %96 = load i32* %score, align 4, !tbaa !0
  %sub401 = sub nsw i32 0, %96
  %.sub401 = select i1 %cmp397, i32 %96, i32 %sub401
  br label %cleanup

cleanup:                                          ; preds = %if.end396, %if.then
  %retval.0 = phi i32 [ %.sub, %if.then ], [ %.sub401, %if.end396 ]
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
define internal fastcc i32 @s_pawn_mobility(i32 %square) #3 {
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
  %. = select i1 %cmp3, i32 8, i32 0
  ret i32 %.

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %square, -12
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %2, 13
  %.15 = select i1 %cmp7, i32 8, i32 0
  ret i32 %.15
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @s_rook_mobility(i32 %square) #3 {
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
  %shl = shl i32 %m.3, 2
  ret i32 %shl
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @s_bishop_mobility(i32 %square) #3 {
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
  %shl = shl i32 %m.3, 2
  ret i32 %shl
}

; Function Attrs: optsize
declare void @storeECache(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #2

; Function Attrs: optsize
declare i32 @calc_attackers(i32, i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
