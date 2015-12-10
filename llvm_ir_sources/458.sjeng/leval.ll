; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@white_to_move = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@.str = private unnamed_addr constant [21 x i8] c"(i > 0) && (i < 145)\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c\00", align 1
@__PRETTY_FUNCTION__.losers_eval = private unnamed_addr constant [18 x i8] c"int losers_eval()\00", align 1
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
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !16), !dbg !79
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !17), !dbg !79
  %0 = bitcast [2 x [11 x i32]]* %pawns to i8*, !dbg !79
  call void @llvm.lifetime.start(i64 88, i8* %0) #2, !dbg !79
  call void @llvm.dbg.declare(metadata !{[2 x [11 x i32]]* %pawns}, metadata !18), !dbg !79
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*, !dbg !79
  call void @llvm.lifetime.start(i64 44, i8* %1) #2, !dbg !79
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %white_back_pawn}, metadata !23), !dbg !79
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*, !dbg !79
  call void @llvm.lifetime.start(i64 44, i8* %2) #2, !dbg !79
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %black_back_pawn}, metadata !26), !dbg !79
  call void @llvm.dbg.declare(metadata !{i32* %score}, metadata !32), !dbg !80
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !32), !dbg !80
  store i32 0, i32* %score, align 4, !dbg !80, !tbaa !81
  call void @llvm.dbg.declare(metadata !{i32* %in_cache}, metadata !33), !dbg !84
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !34), !dbg !85
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !35), !dbg !85
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !36), !dbg !86
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !37), !dbg !86
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !38), !dbg !87
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !39), !dbg !87
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !40), !dbg !88
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !41), !dbg !88
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !33), !dbg !89
  store i32 0, i32* %in_cache, align 4, !dbg !89, !tbaa !81
  call void @checkECache(i32* %score, i32* %in_cache) #6, !dbg !90
  call void @llvm.dbg.value(metadata !{i32* %in_cache}, i64 0, metadata !33), !dbg !91
  %3 = load i32* %in_cache, align 4, !dbg !91, !tbaa !81
  %tobool = icmp eq i32 %3, 0, !dbg !91
  br i1 %tobool, label %if.end2, label %if.then, !dbg !91

if.then:                                          ; preds = %entry
  %4 = load i32* @white_to_move, align 4, !dbg !92, !tbaa !81
  %cmp = icmp eq i32 %4, 1, !dbg !92
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !92
  %5 = load i32* %score, align 4, !dbg !92, !tbaa !81
  %sub = sub nsw i32 0, %5, !dbg !94
  %.sub = select i1 %cmp, i32 %5, i32 %sub, !dbg !92
  br label %cleanup, !dbg !92

if.end2:                                          ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false), !dbg !95
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !29), !dbg !96
  br label %for.body, !dbg !96

for.cond6.preheader:                              ; preds = %for.body
  %6 = load i32* @piece_count, align 4, !dbg !98, !tbaa !81
  %cmp7630 = icmp slt i32 %6, 1, !dbg !98
  br i1 %cmp7630, label %for.end394, label %for.body8, !dbg !98

for.body:                                         ; preds = %for.body, %if.end2
  %indvars.iv646 = phi i64 [ 0, %if.end2 ], [ %indvars.iv.next647, %for.body ]
  %arrayidx = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %indvars.iv646, !dbg !100
  store i32 7, i32* %arrayidx, align 4, !dbg !100, !tbaa !81
  %arrayidx5 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %indvars.iv646, !dbg !102
  store i32 2, i32* %arrayidx5, align 4, !dbg !102, !tbaa !81
  %indvars.iv.next647 = add i64 %indvars.iv646, 1, !dbg !96
  %lftr.wideiv648 = trunc i64 %indvars.iv.next647 to i32, !dbg !96
  %exitcond649 = icmp eq i32 %lftr.wideiv648, 11, !dbg !96
  br i1 %exitcond649, label %for.cond6.preheader, label %for.body, !dbg !96

for.cond57.preheader:                             ; preds = %for.inc54
  br i1 %cmp7630, label %for.end394, label %for.body59.lr.ph, !dbg !103

for.body59.lr.ph:                                 ; preds = %for.cond57.preheader
  %add79 = add nsw i32 %pawn_file.1, 1, !dbg !105
  %idxprom80 = sext i32 %add79 to i64, !dbg !105
  %arrayidx81 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom80, !dbg !105
  %sub84 = add nsw i32 %pawn_file.1, -1, !dbg !105
  %idxprom85 = sext i32 %sub84 to i64, !dbg !105
  %arrayidx86 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom85, !dbg !105
  %arrayidx93 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom80, !dbg !108
  %arrayidx99 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom85, !dbg !108
  %idxprom105 = sext i32 %pawn_file.1 to i64, !dbg !110
  %arrayidx107 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom105, !dbg !110
  %arrayidx121 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom105, !dbg !111
  %arrayidx138 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom85, !dbg !112
  %arrayidx143 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom80, !dbg !112
  %arrayidx214 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom80, !dbg !113
  %arrayidx220 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom85, !dbg !113
  br label %for.body59, !dbg !103

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc54
  %indvars.iv644 = phi i64 [ %indvars.iv.next645, %for.inc54 ], [ 1, %for.cond6.preheader ]
  %a.0633 = phi i32 [ %a.1, %for.inc54 ], [ 1, %for.cond6.preheader ]
  %pawn_file.0632 = phi i32 [ %pawn_file.1, %for.inc54 ], [ 0, %for.cond6.preheader ]
  %srank.0631 = phi i32 [ %srank.1, %for.inc54 ], [ 0, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv644, !dbg !115
  %7 = load i32* %arrayidx10, align 4, !dbg !115, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !29), !dbg !115
  %tobool11 = icmp eq i32 %7, 0, !dbg !117
  br i1 %tobool11, label %for.inc54, label %if.else, !dbg !117

if.else:                                          ; preds = %for.body8
  %inc13 = add nsw i32 %a.0633, 1, !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %inc13}, i64 0, metadata !30), !dbg !118
  %.off = add i32 %7, -1, !dbg !119
  %8 = icmp ult i32 %.off, 144, !dbg !119
  br i1 %8, label %cond.end, label %cond.false, !dbg !119

cond.false:                                       ; preds = %if.else
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 145, i8* getelementptr inbounds ([18 x i8]* @__PRETTY_FUNCTION__.losers_eval, i64 0, i64 0)) #7, !dbg !119
  unreachable, !dbg !119

cond.end:                                         ; preds = %if.else
  %idxprom17 = sext i32 %7 to i64, !dbg !120
  %arrayidx18 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom17, !dbg !120
  %9 = load i32* %arrayidx18, align 4, !dbg !120, !tbaa !81
  %add = add nsw i32 %9, 1, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !17), !dbg !120
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom17, !dbg !121
  %10 = load i32* %arrayidx20, align 4, !dbg !121, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !16), !dbg !121
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom17, !dbg !122
  %11 = load i32* %arrayidx22, align 4, !dbg !122, !tbaa !81
  switch i32 %11, label %for.inc54 [
    i32 1, label %if.then24
    i32 2, label %if.then40
  ], !dbg !122

if.then24:                                        ; preds = %cond.end
  %idxprom25 = sext i32 %add to i64, !dbg !123
  %arrayidx27 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom25, !dbg !123
  %12 = load i32* %arrayidx27, align 4, !dbg !123, !tbaa !81
  %inc28 = add nsw i32 %12, 1, !dbg !123
  store i32 %inc28, i32* %arrayidx27, align 4, !dbg !123, !tbaa !81
  %arrayidx30 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom25, !dbg !125
  %13 = load i32* %arrayidx30, align 4, !dbg !125, !tbaa !81
  %cmp31 = icmp slt i32 %10, %13, !dbg !125
  br i1 %cmp31, label %if.then32, label %for.inc54, !dbg !125

if.then32:                                        ; preds = %if.then24
  store i32 %10, i32* %arrayidx30, align 4, !dbg !126, !tbaa !81
  br label %for.inc54, !dbg !128

if.then40:                                        ; preds = %cond.end
  %idxprom41 = sext i32 %add to i64, !dbg !129
  %arrayidx43 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom41, !dbg !129
  %14 = load i32* %arrayidx43, align 4, !dbg !129, !tbaa !81
  %inc44 = add nsw i32 %14, 1, !dbg !129
  store i32 %inc44, i32* %arrayidx43, align 4, !dbg !129, !tbaa !81
  %arrayidx46 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom41, !dbg !131
  %15 = load i32* %arrayidx46, align 4, !dbg !131, !tbaa !81
  %cmp47 = icmp sgt i32 %10, %15, !dbg !131
  br i1 %cmp47, label %if.then48, label %for.inc54, !dbg !131

if.then48:                                        ; preds = %if.then40
  store i32 %10, i32* %arrayidx46, align 4, !dbg !132, !tbaa !81
  br label %for.inc54, !dbg !134

for.inc54:                                        ; preds = %cond.end, %for.body8, %if.then32, %if.then24, %if.then40, %if.then48
  %srank.1 = phi i32 [ %10, %if.then32 ], [ %10, %if.then24 ], [ %10, %if.then48 ], [ %10, %if.then40 ], [ %srank.0631, %for.body8 ], [ %10, %cond.end ]
  %pawn_file.1 = phi i32 [ %add, %if.then32 ], [ %add, %if.then24 ], [ %add, %if.then48 ], [ %add, %if.then40 ], [ %pawn_file.0632, %for.body8 ], [ %add, %cond.end ]
  %a.1 = phi i32 [ %inc13, %if.then32 ], [ %inc13, %if.then24 ], [ %inc13, %if.then48 ], [ %inc13, %if.then40 ], [ %a.0633, %for.body8 ], [ %inc13, %cond.end ]
  %indvars.iv.next645 = add i64 %indvars.iv644, 1, !dbg !98
  %cmp7 = icmp sgt i32 %a.1, %6, !dbg !98
  br i1 %cmp7, label %for.cond57.preheader, label %for.body8, !dbg !98

for.body59:                                       ; preds = %for.body59.lr.ph, %for.inc392
  %indvars.iv = phi i64 [ 1, %for.body59.lr.ph ], [ %indvars.iv.next, %for.inc392 ]
  %bpawns.0620 = phi i32 [ 0, %for.body59.lr.ph ], [ %bpawns.1, %for.inc392 ]
  %wpawns.0619 = phi i32 [ 0, %for.body59.lr.ph ], [ %wpawns.1, %for.inc392 ]
  %bpassp.0618 = phi i32 [ 0, %for.body59.lr.ph ], [ %bpassp.2, %for.inc392 ]
  %wpassp.0617 = phi i32 [ 0, %for.body59.lr.ph ], [ %wpassp.2, %for.inc392 ]
  %bks.0616 = phi i32 [ 0, %for.body59.lr.ph ], [ %bks.1, %for.inc392 ]
  %wks.0615 = phi i32 [ 0, %for.body59.lr.ph ], [ %wks.1, %for.inc392 ]
  %bp.0614 = phi i32 [ 0, %for.body59.lr.ph ], [ %bp.1, %for.inc392 ]
  %wp.0613 = phi i32 [ 0, %for.body59.lr.ph ], [ %wp.1, %for.inc392 ]
  %a.2611 = phi i32 [ 1, %for.body59.lr.ph ], [ %a.3, %for.inc392 ]
  %arrayidx61 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !135
  %16 = load i32* %arrayidx61, align 4, !dbg !135, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !29), !dbg !135
  %tobool62 = icmp eq i32 %16, 0, !dbg !136
  br i1 %tobool62, label %for.inc392, label %if.else64, !dbg !136

if.else64:                                        ; preds = %for.body59
  %inc65 = add nsw i32 %a.2611, 1, !dbg !137
  call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !30), !dbg !137
  %idxprom67 = sext i32 %16 to i64, !dbg !138
  %arrayidx68 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom67, !dbg !138
  %17 = load i32* %arrayidx68, align 4, !dbg !138, !tbaa !81
  switch i32 %17, label %for.inc392 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb186
    i32 7, label %sw.bb308
    i32 8, label %sw.bb316
    i32 11, label %sw.bb324
    i32 12, label %sw.bb332
    i32 3, label %sw.bb340
    i32 4, label %sw.bb349
    i32 9, label %sw.bb358
    i32 10, label %sw.bb369
    i32 5, label %sw.bb380
    i32 6, label %sw.bb386
  ], !dbg !138

sw.bb:                                            ; preds = %if.else64
  %inc69 = add nsw i32 %wp.0613, 1, !dbg !139
  call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !34), !dbg !139
  %inc70 = add nsw i32 %wpawns.0619, 1, !dbg !140
  call void @llvm.dbg.value(metadata !{i32 %inc70}, i64 0, metadata !40), !dbg !140
  %arrayidx72 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !141
  %18 = load i32* %arrayidx72, align 4, !dbg !141, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !141
  %19 = load i32* %score, align 4, !dbg !141, !tbaa !81
  %add73 = add nsw i32 %19, %18, !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %add73}, i64 0, metadata !32), !dbg !141
  store i32 %add73, i32* %score, align 4, !dbg !141, !tbaa !81
  %call = call fastcc i32 @l_pawn_mobility(i32 %16) #8, !dbg !142
  %shl = shl i32 %call, 2, !dbg !142
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !142
  %add74 = add nsw i32 %shl, %add73, !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %add74}, i64 0, metadata !32), !dbg !142
  %arrayidx76 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom67, !dbg !143
  %20 = load i32* %arrayidx76, align 4, !dbg !143, !tbaa !81
  %sub77 = shl i32 %20, 3, !dbg !143
  %mul = add i32 %sub77, -16, !dbg !143
  %add78 = add nsw i32 %mul, %add74, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %add78}, i64 0, metadata !32), !dbg !143
  store i32 %add78, i32* %score, align 4, !dbg !143, !tbaa !81
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !27), !dbg !144
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !28), !dbg !145
  %21 = load i32* %arrayidx81, align 4, !dbg !105, !tbaa !81
  %cmp82 = icmp sgt i32 %21, %srank.1, !dbg !105
  br i1 %cmp82, label %land.lhs.true83, label %if.end104, !dbg !105

land.lhs.true83:                                  ; preds = %sw.bb
  %22 = load i32* %arrayidx86, align 4, !dbg !105, !tbaa !81
  %cmp87 = icmp sgt i32 %22, %srank.1, !dbg !105
  br i1 %cmp87, label %if.then88, label %if.end104, !dbg !105

if.then88:                                        ; preds = %land.lhs.true83
  %sub89 = add nsw i32 %add78, -8, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %sub89}, i64 0, metadata !32), !dbg !146
  store i32 %sub89, i32* %score, align 4, !dbg !146, !tbaa !81
  call void @llvm.dbg.value(metadata !147, i64 0, metadata !28), !dbg !148
  %23 = load i32* %arrayidx93, align 4, !dbg !108, !tbaa !81
  %tobool94 = icmp eq i32 %23, 0, !dbg !108
  br i1 %tobool94, label %land.lhs.true95, label %if.end104, !dbg !108

land.lhs.true95:                                  ; preds = %if.then88
  %24 = load i32* %arrayidx99, align 4, !dbg !108, !tbaa !81
  %tobool100 = icmp eq i32 %24, 0, !dbg !108
  br i1 %tobool100, label %if.then101, label %if.end104, !dbg !108

if.then101:                                       ; preds = %land.lhs.true95
  %sub102 = add nsw i32 %add78, -20, !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %sub102}, i64 0, metadata !32), !dbg !149
  store i32 %sub102, i32* %score, align 4, !dbg !149, !tbaa !81
  call void @llvm.dbg.value(metadata !147, i64 0, metadata !27), !dbg !151
  br label %if.end104, !dbg !152

if.end104:                                        ; preds = %land.lhs.true95, %if.then88, %land.lhs.true83, %sw.bb, %if.then101
  %25 = phi i32 [ %sub102, %if.then101 ], [ %add78, %sw.bb ], [ %add78, %land.lhs.true83 ], [ %sub89, %if.then88 ], [ %sub89, %land.lhs.true95 ]
  %isolated.0 = phi i32 [ 1, %if.then101 ], [ 0, %sw.bb ], [ 0, %land.lhs.true83 ], [ 0, %if.then88 ], [ 0, %land.lhs.true95 ]
  %backwards.0 = phi i32 [ 1, %if.then101 ], [ 0, %sw.bb ], [ 0, %land.lhs.true83 ], [ 1, %if.then88 ], [ 1, %land.lhs.true95 ]
  %26 = load i32* %arrayidx107, align 4, !dbg !110, !tbaa !81
  %tobool108 = icmp eq i32 %26, 0, !dbg !110
  br i1 %tobool108, label %if.then109, label %if.end118, !dbg !110

if.then109:                                       ; preds = %if.end104
  %tobool110 = icmp eq i32 %backwards.0, 0, !dbg !153
  br i1 %tobool110, label %if.end113, label %if.then111, !dbg !153

if.then111:                                       ; preds = %if.then109
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !153
  %sub112 = add nsw i32 %25, -5, !dbg !153
  call void @llvm.dbg.value(metadata !{i32 %sub112}, i64 0, metadata !32), !dbg !153
  store i32 %sub112, i32* %score, align 4, !dbg !153, !tbaa !81
  br label %if.end113, !dbg !153

if.end113:                                        ; preds = %if.then109, %if.then111
  %27 = phi i32 [ %25, %if.then109 ], [ %sub112, %if.then111 ]
  %tobool114 = icmp eq i32 %isolated.0, 0, !dbg !155
  br i1 %tobool114, label %if.end118, label %if.then115, !dbg !155

if.then115:                                       ; preds = %if.end113
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !155
  %sub116 = add nsw i32 %27, -8, !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %sub116}, i64 0, metadata !32), !dbg !155
  store i32 %sub116, i32* %score, align 4, !dbg !155, !tbaa !81
  br label %if.end118, !dbg !155

if.end118:                                        ; preds = %if.end113, %if.end104, %if.then115
  %28 = phi i32 [ %sub116, %if.then115 ], [ %25, %if.end104 ], [ %27, %if.end113 ]
  %29 = load i32* %arrayidx121, align 4, !dbg !111, !tbaa !81
  %cmp122 = icmp sgt i32 %29, 1, !dbg !111
  br i1 %cmp122, label %if.then123, label %if.end130, !dbg !111

if.then123:                                       ; preds = %if.end118
  %sub127 = shl i32 %29, 3, !dbg !156
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !156
  %mul128.neg = sub i32 8, %sub127, !dbg !156
  %sub129 = add i32 %mul128.neg, %28, !dbg !156
  call void @llvm.dbg.value(metadata !{i32 %sub129}, i64 0, metadata !32), !dbg !156
  store i32 %sub129, i32* %score, align 4, !dbg !156, !tbaa !81
  br label %if.end130, !dbg !156

if.end130:                                        ; preds = %if.then123, %if.end118
  %30 = phi i32 [ %sub129, %if.then123 ], [ %28, %if.end118 ]
  br i1 %tobool108, label %land.lhs.true135, label %if.end177, !dbg !112

land.lhs.true135:                                 ; preds = %if.end130
  %31 = load i32* %arrayidx138, align 4, !dbg !112, !tbaa !81
  %cmp139 = icmp slt i32 %srank.1, %31, !dbg !112
  br i1 %cmp139, label %if.end177, label %land.lhs.true140, !dbg !112

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %32 = load i32* %arrayidx143, align 4, !dbg !112, !tbaa !81
  %cmp144 = icmp slt i32 %srank.1, %32, !dbg !112
  br i1 %cmp144, label %if.end177, label %if.then145, !dbg !112

if.then145:                                       ; preds = %land.lhs.true140
  %33 = mul i32 %20, 10, !dbg !157
  %add150 = add i32 %33, 5, !dbg !157
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !157
  %add151 = add nsw i32 %add150, %30, !dbg !157
  call void @llvm.dbg.value(metadata !{i32 %add151}, i64 0, metadata !32), !dbg !157
  %cmp154 = icmp eq i32 %20, 7, !dbg !159
  %add156 = add nsw i32 %add151, 50, !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %add156}, i64 0, metadata !32), !dbg !159
  %add156.add151 = select i1 %cmp154, i32 %add156, i32 %add151, !dbg !159
  %add156.add151651 = select i1 %cmp154, i32 %add156, i32 %add151, !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %add156.add151}, i64 0, metadata !32), !dbg !157
  store i32 %add156.add151, i32* %score, align 4, !dbg !157, !tbaa !81
  %inc158 = add nsw i32 %wpassp.0617, 1, !dbg !160
  call void @llvm.dbg.value(metadata !{i32 %inc158}, i64 0, metadata !38), !dbg !160
  %arrayidx160 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom67, !dbg !161
  %34 = load i32* %arrayidx160, align 4, !dbg !161, !tbaa !81
  switch i32 %34, label %if.end172 [
    i32 1, label %if.then165
    i32 8, label %if.then165
  ], !dbg !161

if.then165:                                       ; preds = %if.then145, %if.then145
  %sub168 = shl i32 %20, 1, !dbg !162
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !162
  %add171 = add nsw i32 %add156.add151651, %sub168, !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %add171}, i64 0, metadata !32), !dbg !162
  store i32 %add171, i32* %score, align 4, !dbg !162, !tbaa !81
  br label %if.end172, !dbg !162

if.end172:                                        ; preds = %if.then145, %if.then165
  %35 = phi i32 [ %add156.add151651, %if.then145 ], [ %add171, %if.then165 ]
  %tobool173 = icmp eq i32 %isolated.0, 0, !dbg !163
  br i1 %tobool173, label %if.then174, label %if.end177, !dbg !163

if.then174:                                       ; preds = %if.end172
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !164
  %add175 = add nsw i32 %35, 24, !dbg !164
  call void @llvm.dbg.value(metadata !{i32 %add175}, i64 0, metadata !32), !dbg !164
  store i32 %add175, i32* %score, align 4, !dbg !164, !tbaa !81
  br label %if.end177, !dbg !166

if.end177:                                        ; preds = %if.end172, %land.lhs.true140, %land.lhs.true135, %if.end130, %if.then174
  %36 = phi i32 [ %add175, %if.then174 ], [ %30, %if.end130 ], [ %30, %land.lhs.true135 ], [ %30, %land.lhs.true140 ], [ %35, %if.end172 ]
  %wpassp.1 = phi i32 [ %inc158, %if.then174 ], [ %wpassp.0617, %if.end130 ], [ %wpassp.0617, %land.lhs.true135 ], [ %wpassp.0617, %land.lhs.true140 ], [ %inc158, %if.end172 ]
  %37 = load i32* %arrayidx99, align 4, !dbg !167, !tbaa !81
  %tobool182 = icmp eq i32 %37, 0, !dbg !167
  br i1 %tobool182, label %if.then183, label %for.inc392, !dbg !167

if.then183:                                       ; preds = %if.end177
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !168
  %sub184 = add nsw i32 %36, -5, !dbg !168
  call void @llvm.dbg.value(metadata !{i32 %sub184}, i64 0, metadata !32), !dbg !168
  store i32 %sub184, i32* %score, align 4, !dbg !168, !tbaa !81
  br label %for.inc392, !dbg !168

sw.bb186:                                         ; preds = %if.else64
  %inc187 = add nsw i32 %bp.0614, 1, !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %inc187}, i64 0, metadata !35), !dbg !169
  %inc188 = add nsw i32 %bpawns.0620, 1, !dbg !170
  call void @llvm.dbg.value(metadata !{i32 %inc188}, i64 0, metadata !41), !dbg !170
  %arrayidx190 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !171
  %38 = load i32* %arrayidx190, align 4, !dbg !171, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !171
  %39 = load i32* %score, align 4, !dbg !171, !tbaa !81
  %sub191 = sub nsw i32 %39, %38, !dbg !171
  call void @llvm.dbg.value(metadata !{i32 %sub191}, i64 0, metadata !32), !dbg !171
  store i32 %sub191, i32* %score, align 4, !dbg !171, !tbaa !81
  %call192 = call fastcc i32 @l_pawn_mobility(i32 %16) #8, !dbg !172
  %shl193 = shl i32 %call192, 2, !dbg !172
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !172
  %sub194 = sub nsw i32 %sub191, %shl193, !dbg !172
  call void @llvm.dbg.value(metadata !{i32 %sub194}, i64 0, metadata !32), !dbg !172
  %arrayidx196 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom67, !dbg !173
  %40 = load i32* %arrayidx196, align 4, !dbg !173, !tbaa !81
  %sub197 = sub nsw i32 7, %40, !dbg !173
  %mul198 = shl nsw i32 %sub197, 3, !dbg !173
  %sub199 = sub nsw i32 %sub194, %mul198, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %sub199}, i64 0, metadata !32), !dbg !173
  store i32 %sub199, i32* %score, align 4, !dbg !173, !tbaa !81
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !27), !dbg !174
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !28), !dbg !175
  %41 = load i32* %arrayidx143, align 4, !dbg !176, !tbaa !81
  %cmp203 = icmp slt i32 %41, %srank.1, !dbg !176
  br i1 %cmp203, label %land.lhs.true204, label %if.end225, !dbg !176

land.lhs.true204:                                 ; preds = %sw.bb186
  %42 = load i32* %arrayidx138, align 4, !dbg !176, !tbaa !81
  %cmp208 = icmp slt i32 %42, %srank.1, !dbg !176
  br i1 %cmp208, label %if.then209, label %if.end225, !dbg !176

if.then209:                                       ; preds = %land.lhs.true204
  %add210 = add nsw i32 %sub199, 8, !dbg !177
  call void @llvm.dbg.value(metadata !{i32 %add210}, i64 0, metadata !32), !dbg !177
  store i32 %add210, i32* %score, align 4, !dbg !177, !tbaa !81
  call void @llvm.dbg.value(metadata !147, i64 0, metadata !28), !dbg !178
  %43 = load i32* %arrayidx214, align 4, !dbg !113, !tbaa !81
  %tobool215 = icmp eq i32 %43, 0, !dbg !113
  br i1 %tobool215, label %land.lhs.true216, label %if.end225, !dbg !113

land.lhs.true216:                                 ; preds = %if.then209
  %44 = load i32* %arrayidx220, align 4, !dbg !113, !tbaa !81
  %tobool221 = icmp eq i32 %44, 0, !dbg !113
  br i1 %tobool221, label %if.then222, label %if.end225, !dbg !113

if.then222:                                       ; preds = %land.lhs.true216
  %add223 = add nsw i32 %sub199, 20, !dbg !179
  call void @llvm.dbg.value(metadata !{i32 %add223}, i64 0, metadata !32), !dbg !179
  store i32 %add223, i32* %score, align 4, !dbg !179, !tbaa !81
  call void @llvm.dbg.value(metadata !147, i64 0, metadata !27), !dbg !181
  br label %if.end225, !dbg !182

if.end225:                                        ; preds = %land.lhs.true216, %if.then209, %land.lhs.true204, %sw.bb186, %if.then222
  %45 = phi i32 [ %add223, %if.then222 ], [ %sub199, %sw.bb186 ], [ %sub199, %land.lhs.true204 ], [ %add210, %if.then209 ], [ %add210, %land.lhs.true216 ]
  %isolated.1 = phi i32 [ 1, %if.then222 ], [ 0, %sw.bb186 ], [ 0, %land.lhs.true204 ], [ 0, %if.then209 ], [ 0, %land.lhs.true216 ]
  %backwards.1 = phi i32 [ 1, %if.then222 ], [ 0, %sw.bb186 ], [ 0, %land.lhs.true204 ], [ 1, %if.then209 ], [ 1, %land.lhs.true216 ]
  %46 = load i32* %arrayidx121, align 4, !dbg !183, !tbaa !81
  %tobool229 = icmp eq i32 %46, 0, !dbg !183
  br i1 %tobool229, label %if.then230, label %if.end239, !dbg !183

if.then230:                                       ; preds = %if.end225
  %tobool231 = icmp eq i32 %backwards.1, 0, !dbg !184
  br i1 %tobool231, label %if.end234, label %if.then232, !dbg !184

if.then232:                                       ; preds = %if.then230
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !184
  %add233 = add nsw i32 %45, 5, !dbg !184
  call void @llvm.dbg.value(metadata !{i32 %add233}, i64 0, metadata !32), !dbg !184
  store i32 %add233, i32* %score, align 4, !dbg !184, !tbaa !81
  br label %if.end234, !dbg !184

if.end234:                                        ; preds = %if.then230, %if.then232
  %47 = phi i32 [ %45, %if.then230 ], [ %add233, %if.then232 ]
  %tobool235 = icmp eq i32 %isolated.1, 0, !dbg !186
  br i1 %tobool235, label %if.end239, label %if.then236, !dbg !186

if.then236:                                       ; preds = %if.end234
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !186
  %add237 = add nsw i32 %47, 8, !dbg !186
  call void @llvm.dbg.value(metadata !{i32 %add237}, i64 0, metadata !32), !dbg !186
  store i32 %add237, i32* %score, align 4, !dbg !186, !tbaa !81
  br label %if.end239, !dbg !186

if.end239:                                        ; preds = %if.end234, %if.end225, %if.then236
  %48 = phi i32 [ %add237, %if.then236 ], [ %45, %if.end225 ], [ %47, %if.end234 ]
  %49 = load i32* %arrayidx107, align 4, !dbg !187, !tbaa !81
  %cmp243 = icmp sgt i32 %49, 1, !dbg !187
  br i1 %cmp243, label %if.then244, label %if.end251, !dbg !187

if.then244:                                       ; preds = %if.end239
  %sub248 = shl i32 %49, 3, !dbg !188
  %mul249 = add i32 %sub248, -8, !dbg !188
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !188
  %add250 = add nsw i32 %mul249, %48, !dbg !188
  call void @llvm.dbg.value(metadata !{i32 %add250}, i64 0, metadata !32), !dbg !188
  store i32 %add250, i32* %score, align 4, !dbg !188, !tbaa !81
  br label %if.end251, !dbg !188

if.end251:                                        ; preds = %if.then244, %if.end239
  %50 = phi i32 [ %add250, %if.then244 ], [ %48, %if.end239 ]
  br i1 %tobool229, label %land.lhs.true256, label %if.end299, !dbg !189

land.lhs.true256:                                 ; preds = %if.end251
  %51 = load i32* %arrayidx86, align 4, !dbg !189, !tbaa !81
  %cmp260 = icmp sgt i32 %srank.1, %51, !dbg !189
  br i1 %cmp260, label %if.end299, label %land.lhs.true261, !dbg !189

land.lhs.true261:                                 ; preds = %land.lhs.true256
  %52 = load i32* %arrayidx81, align 4, !dbg !189, !tbaa !81
  %cmp265 = icmp sgt i32 %srank.1, %52, !dbg !189
  br i1 %cmp265, label %if.end299, label %if.then266, !dbg !189

if.then266:                                       ; preds = %land.lhs.true261
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !190
  %53 = mul i32 %sub197, -10
  %add271.neg = add i32 %50, -25, !dbg !190
  %sub272 = add i32 %add271.neg, %53, !dbg !190
  call void @llvm.dbg.value(metadata !{i32 %sub272}, i64 0, metadata !32), !dbg !190
  %cmp275 = icmp eq i32 %40, 2, !dbg !192
  %sub277 = add nsw i32 %sub272, -50, !dbg !192
  call void @llvm.dbg.value(metadata !{i32 %sub277}, i64 0, metadata !32), !dbg !192
  %sub277.sub272 = select i1 %cmp275, i32 %sub277, i32 %sub272, !dbg !192
  %sub277.sub272652 = select i1 %cmp275, i32 %sub277, i32 %sub272, !dbg !192
  call void @llvm.dbg.value(metadata !{i32 %sub277.sub272}, i64 0, metadata !32), !dbg !190
  store i32 %sub277.sub272, i32* %score, align 4, !dbg !190, !tbaa !81
  %inc279 = add nsw i32 %bpassp.0618, 1, !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %inc279}, i64 0, metadata !39), !dbg !193
  %arrayidx281 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom67, !dbg !194
  %54 = load i32* %arrayidx281, align 4, !dbg !194, !tbaa !81
  switch i32 %54, label %if.end294 [
    i32 1, label %if.then287
    i32 8, label %if.then287
  ], !dbg !194

if.then287:                                       ; preds = %if.then266, %if.then266
  %mul291 = shl i32 %sub197, 1, !dbg !195
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !195
  %add292.neg = add i32 %sub277.sub272652, -4, !dbg !195
  %sub293 = sub i32 %add292.neg, %mul291, !dbg !195
  call void @llvm.dbg.value(metadata !{i32 %sub293}, i64 0, metadata !32), !dbg !195
  store i32 %sub293, i32* %score, align 4, !dbg !195, !tbaa !81
  br label %if.end294, !dbg !195

if.end294:                                        ; preds = %if.then266, %if.then287
  %55 = phi i32 [ %sub277.sub272652, %if.then266 ], [ %sub293, %if.then287 ]
  %tobool295 = icmp eq i32 %isolated.1, 0, !dbg !196
  br i1 %tobool295, label %if.then296, label %if.end299, !dbg !196

if.then296:                                       ; preds = %if.end294
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !197
  %sub297 = add nsw i32 %55, -24, !dbg !197
  call void @llvm.dbg.value(metadata !{i32 %sub297}, i64 0, metadata !32), !dbg !197
  store i32 %sub297, i32* %score, align 4, !dbg !197, !tbaa !81
  br label %if.end299, !dbg !199

if.end299:                                        ; preds = %if.end294, %land.lhs.true261, %land.lhs.true256, %if.end251, %if.then296
  %56 = phi i32 [ %sub297, %if.then296 ], [ %50, %if.end251 ], [ %50, %land.lhs.true256 ], [ %50, %land.lhs.true261 ], [ %55, %if.end294 ]
  %bpassp.1 = phi i32 [ %inc279, %if.then296 ], [ %bpassp.0618, %if.end251 ], [ %bpassp.0618, %land.lhs.true256 ], [ %bpassp.0618, %land.lhs.true261 ], [ %inc279, %if.end294 ]
  %57 = load i32* %arrayidx220, align 4, !dbg !200, !tbaa !81
  %tobool304 = icmp eq i32 %57, 0, !dbg !200
  br i1 %tobool304, label %if.then305, label %for.inc392, !dbg !200

if.then305:                                       ; preds = %if.end299
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !201
  %add306 = add nsw i32 %56, 5, !dbg !201
  call void @llvm.dbg.value(metadata !{i32 %add306}, i64 0, metadata !32), !dbg !201
  store i32 %add306, i32* %score, align 4, !dbg !201, !tbaa !81
  br label %for.inc392, !dbg !201

sw.bb308:                                         ; preds = %if.else64
  %inc309 = add nsw i32 %wp.0613, 1, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %inc309}, i64 0, metadata !34), !dbg !202
  %call310 = call fastcc i32 @l_rook_mobility(i32 %16) #8, !dbg !203
  %shl311 = shl i32 %call310, 2, !dbg !203
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !203
  %58 = load i32* %score, align 4, !dbg !203, !tbaa !81
  %add312 = add nsw i32 %58, %shl311, !dbg !203
  call void @llvm.dbg.value(metadata !{i32 %add312}, i64 0, metadata !32), !dbg !203
  %arrayidx314 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !204
  %59 = load i32* %arrayidx314, align 4, !dbg !204, !tbaa !81
  %add315 = add nsw i32 %add312, %59, !dbg !204
  call void @llvm.dbg.value(metadata !{i32 %add315}, i64 0, metadata !32), !dbg !204
  store i32 %add315, i32* %score, align 4, !dbg !204, !tbaa !81
  br label %for.inc392, !dbg !205

sw.bb316:                                         ; preds = %if.else64
  %inc317 = add nsw i32 %bp.0614, 1, !dbg !206
  call void @llvm.dbg.value(metadata !{i32 %inc317}, i64 0, metadata !35), !dbg !206
  %call318 = call fastcc i32 @l_rook_mobility(i32 %16) #8, !dbg !207
  %shl319 = shl i32 %call318, 2, !dbg !207
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !207
  %60 = load i32* %score, align 4, !dbg !207, !tbaa !81
  %sub320 = sub nsw i32 %60, %shl319, !dbg !207
  call void @llvm.dbg.value(metadata !{i32 %sub320}, i64 0, metadata !32), !dbg !207
  %arrayidx322 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !208
  %61 = load i32* %arrayidx322, align 4, !dbg !208, !tbaa !81
  %sub323 = sub nsw i32 %sub320, %61, !dbg !208
  call void @llvm.dbg.value(metadata !{i32 %sub323}, i64 0, metadata !32), !dbg !208
  store i32 %sub323, i32* %score, align 4, !dbg !208, !tbaa !81
  br label %for.inc392, !dbg !209

sw.bb324:                                         ; preds = %if.else64
  %inc325 = add nsw i32 %wp.0613, 1, !dbg !210
  call void @llvm.dbg.value(metadata !{i32 %inc325}, i64 0, metadata !34), !dbg !210
  %call326 = call fastcc i32 @l_bishop_mobility(i32 %16) #8, !dbg !211
  %shl327 = shl i32 %call326, 2, !dbg !211
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !211
  %62 = load i32* %score, align 4, !dbg !211, !tbaa !81
  %add328 = add nsw i32 %62, %shl327, !dbg !211
  call void @llvm.dbg.value(metadata !{i32 %add328}, i64 0, metadata !32), !dbg !211
  %arrayidx330 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !212
  %63 = load i32* %arrayidx330, align 4, !dbg !212, !tbaa !81
  %add331 = add nsw i32 %add328, %63, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %add331}, i64 0, metadata !32), !dbg !212
  store i32 %add331, i32* %score, align 4, !dbg !212, !tbaa !81
  br label %for.inc392, !dbg !213

sw.bb332:                                         ; preds = %if.else64
  %inc333 = add nsw i32 %bp.0614, 1, !dbg !214
  call void @llvm.dbg.value(metadata !{i32 %inc333}, i64 0, metadata !35), !dbg !214
  %call334 = call fastcc i32 @l_bishop_mobility(i32 %16) #8, !dbg !215
  %shl335 = shl i32 %call334, 2, !dbg !215
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !215
  %64 = load i32* %score, align 4, !dbg !215, !tbaa !81
  %sub336 = sub nsw i32 %64, %shl335, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %sub336}, i64 0, metadata !32), !dbg !215
  %arrayidx338 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !216
  %65 = load i32* %arrayidx338, align 4, !dbg !216, !tbaa !81
  %sub339 = sub nsw i32 %sub336, %65, !dbg !216
  call void @llvm.dbg.value(metadata !{i32 %sub339}, i64 0, metadata !32), !dbg !216
  store i32 %sub339, i32* %score, align 4, !dbg !216, !tbaa !81
  br label %for.inc392, !dbg !217

sw.bb340:                                         ; preds = %if.else64
  call void @llvm.dbg.value(metadata !{i32 %inc341}, i64 0, metadata !34), !dbg !218
  %arrayidx343 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !219
  %66 = load i32* %arrayidx343, align 4, !dbg !219, !tbaa !81
  %shl344 = shl i32 %66, 1, !dbg !219
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !219
  %67 = load i32* %score, align 4, !dbg !219, !tbaa !81
  %add345 = add nsw i32 %67, %shl344, !dbg !219
  call void @llvm.dbg.value(metadata !{i32 %add345}, i64 0, metadata !32), !dbg !219
  store i32 %add345, i32* %score, align 4, !dbg !219, !tbaa !81
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !220), !dbg !222
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !223), !dbg !224
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !225), !dbg !226
  br label %for.body.i, !dbg !226

for.body.i:                                       ; preds = %for.body.i, %sw.bb340
  %indvars.iv.i = phi i64 [ 0, %sw.bb340 ], [ %indvars.iv.next.i, %for.body.i ]
  %m.09.i = phi i32 [ 0, %sw.bb340 ], [ %inc.m.0.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %indvars.iv.i, !dbg !228
  %68 = load i32* %arrayidx.i, align 4, !dbg !228, !tbaa !81
  %add.i = add nsw i32 %68, %16, !dbg !228
  %idxprom1.i = sext i32 %add.i to i64, !dbg !228
  %arrayidx2.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i, !dbg !228
  %69 = load i32* %arrayidx2.i, align 4, !dbg !228, !tbaa !81
  %cmp3.i = icmp eq i32 %69, 13, !dbg !228
  %inc.i = zext i1 %cmp3.i to i32, !dbg !228
  %inc.m.0.i = add nsw i32 %inc.i, %m.09.i, !dbg !228
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !226
  %lftr.wideiv642 = trunc i64 %indvars.iv.next.i to i32, !dbg !226
  %exitcond643 = icmp eq i32 %lftr.wideiv642, 8, !dbg !226
  br i1 %exitcond643, label %l_knight_mobility.exit, label %for.body.i, !dbg !226

l_knight_mobility.exit:                           ; preds = %for.body.i
  %inc341 = add nsw i32 %wp.0613, 1, !dbg !218
  %shl347 = shl i32 %inc.m.0.i, 2, !dbg !221
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !221
  %add348 = add nsw i32 %add345, %shl347, !dbg !221
  call void @llvm.dbg.value(metadata !{i32 %add348}, i64 0, metadata !32), !dbg !221
  store i32 %add348, i32* %score, align 4, !dbg !221, !tbaa !81
  br label %for.inc392, !dbg !230

sw.bb349:                                         ; preds = %if.else64
  call void @llvm.dbg.value(metadata !{i32 %inc350}, i64 0, metadata !35), !dbg !231
  %arrayidx352 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !232
  %70 = load i32* %arrayidx352, align 4, !dbg !232, !tbaa !81
  %shl353 = shl i32 %70, 1, !dbg !232
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !232
  %71 = load i32* %score, align 4, !dbg !232, !tbaa !81
  %sub354 = sub nsw i32 %71, %shl353, !dbg !232
  call void @llvm.dbg.value(metadata !{i32 %sub354}, i64 0, metadata !32), !dbg !232
  store i32 %sub354, i32* %score, align 4, !dbg !232, !tbaa !81
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !233), !dbg !235
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !236), !dbg !237
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !238), !dbg !239
  br label %for.body.i608, !dbg !239

for.body.i608:                                    ; preds = %for.body.i608, %sw.bb349
  %indvars.iv.i596 = phi i64 [ 0, %sw.bb349 ], [ %indvars.iv.next.i605, %for.body.i608 ]
  %m.09.i597 = phi i32 [ 0, %sw.bb349 ], [ %inc.m.0.i604, %for.body.i608 ]
  %arrayidx.i598 = getelementptr inbounds [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %indvars.iv.i596, !dbg !240
  %72 = load i32* %arrayidx.i598, align 4, !dbg !240, !tbaa !81
  %add.i599 = add nsw i32 %72, %16, !dbg !240
  %idxprom1.i600 = sext i32 %add.i599 to i64, !dbg !240
  %arrayidx2.i601 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i600, !dbg !240
  %73 = load i32* %arrayidx2.i601, align 4, !dbg !240, !tbaa !81
  %cmp3.i602 = icmp eq i32 %73, 13, !dbg !240
  %inc.i603 = zext i1 %cmp3.i602 to i32, !dbg !240
  %inc.m.0.i604 = add nsw i32 %inc.i603, %m.09.i597, !dbg !240
  %indvars.iv.next.i605 = add i64 %indvars.iv.i596, 1, !dbg !239
  %lftr.wideiv640 = trunc i64 %indvars.iv.next.i605 to i32, !dbg !239
  %exitcond641 = icmp eq i32 %lftr.wideiv640, 8, !dbg !239
  br i1 %exitcond641, label %l_knight_mobility.exit609, label %for.body.i608, !dbg !239

l_knight_mobility.exit609:                        ; preds = %for.body.i608
  %inc350 = add nsw i32 %bp.0614, 1, !dbg !231
  %shl356 = shl i32 %inc.m.0.i604, 2, !dbg !234
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !234
  %sub357 = sub nsw i32 %sub354, %shl356, !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %sub357}, i64 0, metadata !32), !dbg !234
  store i32 %sub357, i32* %score, align 4, !dbg !234, !tbaa !81
  br label %for.inc392, !dbg !241

sw.bb358:                                         ; preds = %if.else64
  %inc359 = add nsw i32 %wp.0613, 1, !dbg !242
  call void @llvm.dbg.value(metadata !{i32 %inc359}, i64 0, metadata !34), !dbg !242
  %call360 = call fastcc i32 @l_bishop_mobility(i32 %16) #8, !dbg !243
  %shl361 = shl i32 %call360, 1, !dbg !243
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !243
  %74 = load i32* %score, align 4, !dbg !243, !tbaa !81
  %add362 = add nsw i32 %74, %shl361, !dbg !243
  call void @llvm.dbg.value(metadata !{i32 %add362}, i64 0, metadata !32), !dbg !243
  store i32 %add362, i32* %score, align 4, !dbg !243, !tbaa !81
  %call363 = call fastcc i32 @l_rook_mobility(i32 %16) #8, !dbg !244
  %shl364 = shl i32 %call363, 1, !dbg !244
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !244
  %add365 = add nsw i32 %shl364, %add362, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %add365}, i64 0, metadata !32), !dbg !244
  %arrayidx367 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !245
  %75 = load i32* %arrayidx367, align 4, !dbg !245, !tbaa !81
  %add368 = add nsw i32 %add365, %75, !dbg !245
  call void @llvm.dbg.value(metadata !{i32 %add368}, i64 0, metadata !32), !dbg !245
  store i32 %add368, i32* %score, align 4, !dbg !245, !tbaa !81
  br label %for.inc392, !dbg !246

sw.bb369:                                         ; preds = %if.else64
  %inc370 = add nsw i32 %bp.0614, 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc370}, i64 0, metadata !35), !dbg !247
  %call371 = call fastcc i32 @l_bishop_mobility(i32 %16) #8, !dbg !248
  %shl372 = shl i32 %call371, 1, !dbg !248
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !248
  %76 = load i32* %score, align 4, !dbg !248, !tbaa !81
  %sub373 = sub nsw i32 %76, %shl372, !dbg !248
  call void @llvm.dbg.value(metadata !{i32 %sub373}, i64 0, metadata !32), !dbg !248
  store i32 %sub373, i32* %score, align 4, !dbg !248, !tbaa !81
  %call374 = call fastcc i32 @l_rook_mobility(i32 %16) #8, !dbg !249
  %shl375 = shl i32 %call374, 1, !dbg !249
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !249
  %sub376 = sub nsw i32 %sub373, %shl375, !dbg !249
  call void @llvm.dbg.value(metadata !{i32 %sub376}, i64 0, metadata !32), !dbg !249
  %arrayidx378 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !250
  %77 = load i32* %arrayidx378, align 4, !dbg !250, !tbaa !81
  %sub379 = sub nsw i32 %sub376, %77, !dbg !250
  call void @llvm.dbg.value(metadata !{i32 %sub379}, i64 0, metadata !32), !dbg !250
  store i32 %sub379, i32* %score, align 4, !dbg !250, !tbaa !81
  br label %for.inc392, !dbg !251

sw.bb380:                                         ; preds = %if.else64
  %arrayidx382 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !252
  %78 = load i32* %arrayidx382, align 4, !dbg !252, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32 %shl383}, i64 0, metadata !36), !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !253), !dbg !255
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !256), !dbg !257
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !258), !dbg !259
  br label %for.body.i594, !dbg !259

for.body.i594:                                    ; preds = %for.body.i594, %sw.bb380
  %indvars.iv.i582 = phi i64 [ 0, %sw.bb380 ], [ %indvars.iv.next.i591, %for.body.i594 ]
  %m.09.i583 = phi i32 [ 0, %sw.bb380 ], [ %inc.m.0.i590, %for.body.i594 ]
  %arrayidx.i584 = getelementptr inbounds [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %indvars.iv.i582, !dbg !261
  %79 = load i32* %arrayidx.i584, align 4, !dbg !261, !tbaa !81
  %add.i585 = add nsw i32 %79, %16, !dbg !261
  %idxprom1.i586 = sext i32 %add.i585 to i64, !dbg !261
  %arrayidx2.i587 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i586, !dbg !261
  %80 = load i32* %arrayidx2.i587, align 4, !dbg !261, !tbaa !81
  %cmp3.i588 = icmp eq i32 %80, 13, !dbg !261
  %inc.i589 = zext i1 %cmp3.i588 to i32, !dbg !261
  %inc.m.0.i590 = add nsw i32 %inc.i589, %m.09.i583, !dbg !261
  %indvars.iv.next.i591 = add i64 %indvars.iv.i582, 1, !dbg !259
  %lftr.wideiv638 = trunc i64 %indvars.iv.next.i591 to i32, !dbg !259
  %exitcond639 = icmp eq i32 %lftr.wideiv638, 8, !dbg !259
  br i1 %exitcond639, label %l_king_mobility.exit595, label %for.body.i594, !dbg !259

l_king_mobility.exit595:                          ; preds = %for.body.i594
  %shl383 = shl i32 %78, 1, !dbg !252
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !254
  %81 = load i32* %score, align 4, !dbg !254, !tbaa !81
  %add385 = add nsw i32 %81, %inc.m.0.i590, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %add385}, i64 0, metadata !32), !dbg !254
  store i32 %add385, i32* %score, align 4, !dbg !254, !tbaa !81
  br label %for.inc392, !dbg !263

sw.bb386:                                         ; preds = %if.else64
  %arrayidx388 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %idxprom67, !dbg !264
  %82 = load i32* %arrayidx388, align 4, !dbg !264, !tbaa !81
  call void @llvm.dbg.value(metadata !{i32 %shl389}, i64 0, metadata !37), !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !265), !dbg !267
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !268), !dbg !269
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !270), !dbg !271
  br label %for.body.i581, !dbg !271

for.body.i581:                                    ; preds = %for.body.i581, %sw.bb386
  %indvars.iv.i569 = phi i64 [ 0, %sw.bb386 ], [ %indvars.iv.next.i578, %for.body.i581 ]
  %m.09.i570 = phi i32 [ 0, %sw.bb386 ], [ %inc.m.0.i577, %for.body.i581 ]
  %arrayidx.i571 = getelementptr inbounds [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %indvars.iv.i569, !dbg !272
  %83 = load i32* %arrayidx.i571, align 4, !dbg !272, !tbaa !81
  %add.i572 = add nsw i32 %83, %16, !dbg !272
  %idxprom1.i573 = sext i32 %add.i572 to i64, !dbg !272
  %arrayidx2.i574 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i573, !dbg !272
  %84 = load i32* %arrayidx2.i574, align 4, !dbg !272, !tbaa !81
  %cmp3.i575 = icmp eq i32 %84, 13, !dbg !272
  %inc.i576 = zext i1 %cmp3.i575 to i32, !dbg !272
  %inc.m.0.i577 = add nsw i32 %inc.i576, %m.09.i570, !dbg !272
  %indvars.iv.next.i578 = add i64 %indvars.iv.i569, 1, !dbg !271
  %lftr.wideiv = trunc i64 %indvars.iv.next.i578 to i32, !dbg !271
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !271
  br i1 %exitcond, label %l_king_mobility.exit, label %for.body.i581, !dbg !271

l_king_mobility.exit:                             ; preds = %for.body.i581
  %shl389 = shl i32 %82, 1, !dbg !264
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !266
  %85 = load i32* %score, align 4, !dbg !266, !tbaa !81
  %sub391 = sub nsw i32 %85, %inc.m.0.i577, !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %sub391}, i64 0, metadata !32), !dbg !266
  store i32 %sub391, i32* %score, align 4, !dbg !266, !tbaa !81
  br label %for.inc392, !dbg !273

for.inc392:                                       ; preds = %if.end177, %if.end299, %for.body59, %sw.bb308, %sw.bb316, %sw.bb324, %sw.bb332, %l_knight_mobility.exit, %l_knight_mobility.exit609, %sw.bb358, %sw.bb369, %l_king_mobility.exit595, %l_king_mobility.exit, %if.else64, %if.then183, %if.then305
  %a.3 = phi i32 [ %inc65, %if.else64 ], [ %inc65, %l_king_mobility.exit ], [ %inc65, %l_king_mobility.exit595 ], [ %inc65, %sw.bb369 ], [ %inc65, %sw.bb358 ], [ %inc65, %l_knight_mobility.exit609 ], [ %inc65, %l_knight_mobility.exit ], [ %inc65, %sw.bb332 ], [ %inc65, %sw.bb324 ], [ %inc65, %sw.bb316 ], [ %inc65, %sw.bb308 ], [ %inc65, %if.end299 ], [ %inc65, %if.then305 ], [ %inc65, %if.end177 ], [ %inc65, %if.then183 ], [ %a.2611, %for.body59 ]
  %wp.1 = phi i32 [ %wp.0613, %if.else64 ], [ %wp.0613, %l_king_mobility.exit ], [ %wp.0613, %l_king_mobility.exit595 ], [ %wp.0613, %sw.bb369 ], [ %inc359, %sw.bb358 ], [ %wp.0613, %l_knight_mobility.exit609 ], [ %inc341, %l_knight_mobility.exit ], [ %wp.0613, %sw.bb332 ], [ %inc325, %sw.bb324 ], [ %wp.0613, %sw.bb316 ], [ %inc309, %sw.bb308 ], [ %wp.0613, %if.end299 ], [ %wp.0613, %if.then305 ], [ %inc69, %if.end177 ], [ %inc69, %if.then183 ], [ %wp.0613, %for.body59 ]
  %bp.1 = phi i32 [ %bp.0614, %if.else64 ], [ %bp.0614, %l_king_mobility.exit ], [ %bp.0614, %l_king_mobility.exit595 ], [ %inc370, %sw.bb369 ], [ %bp.0614, %sw.bb358 ], [ %inc350, %l_knight_mobility.exit609 ], [ %bp.0614, %l_knight_mobility.exit ], [ %inc333, %sw.bb332 ], [ %bp.0614, %sw.bb324 ], [ %inc317, %sw.bb316 ], [ %bp.0614, %sw.bb308 ], [ %inc187, %if.end299 ], [ %inc187, %if.then305 ], [ %bp.0614, %if.end177 ], [ %bp.0614, %if.then183 ], [ %bp.0614, %for.body59 ]
  %wks.1 = phi i32 [ %wks.0615, %if.else64 ], [ %wks.0615, %l_king_mobility.exit ], [ %shl383, %l_king_mobility.exit595 ], [ %wks.0615, %sw.bb369 ], [ %wks.0615, %sw.bb358 ], [ %wks.0615, %l_knight_mobility.exit609 ], [ %wks.0615, %l_knight_mobility.exit ], [ %wks.0615, %sw.bb332 ], [ %wks.0615, %sw.bb324 ], [ %wks.0615, %sw.bb316 ], [ %wks.0615, %sw.bb308 ], [ %wks.0615, %if.end299 ], [ %wks.0615, %if.then305 ], [ %wks.0615, %if.end177 ], [ %wks.0615, %if.then183 ], [ %wks.0615, %for.body59 ]
  %bks.1 = phi i32 [ %bks.0616, %if.else64 ], [ %shl389, %l_king_mobility.exit ], [ %bks.0616, %l_king_mobility.exit595 ], [ %bks.0616, %sw.bb369 ], [ %bks.0616, %sw.bb358 ], [ %bks.0616, %l_knight_mobility.exit609 ], [ %bks.0616, %l_knight_mobility.exit ], [ %bks.0616, %sw.bb332 ], [ %bks.0616, %sw.bb324 ], [ %bks.0616, %sw.bb316 ], [ %bks.0616, %sw.bb308 ], [ %bks.0616, %if.end299 ], [ %bks.0616, %if.then305 ], [ %bks.0616, %if.end177 ], [ %bks.0616, %if.then183 ], [ %bks.0616, %for.body59 ]
  %wpassp.2 = phi i32 [ %wpassp.0617, %if.else64 ], [ %wpassp.0617, %l_king_mobility.exit ], [ %wpassp.0617, %l_king_mobility.exit595 ], [ %wpassp.0617, %sw.bb369 ], [ %wpassp.0617, %sw.bb358 ], [ %wpassp.0617, %l_knight_mobility.exit609 ], [ %wpassp.0617, %l_knight_mobility.exit ], [ %wpassp.0617, %sw.bb332 ], [ %wpassp.0617, %sw.bb324 ], [ %wpassp.0617, %sw.bb316 ], [ %wpassp.0617, %sw.bb308 ], [ %wpassp.0617, %if.end299 ], [ %wpassp.0617, %if.then305 ], [ %wpassp.1, %if.end177 ], [ %wpassp.1, %if.then183 ], [ %wpassp.0617, %for.body59 ]
  %bpassp.2 = phi i32 [ %bpassp.0618, %if.else64 ], [ %bpassp.0618, %l_king_mobility.exit ], [ %bpassp.0618, %l_king_mobility.exit595 ], [ %bpassp.0618, %sw.bb369 ], [ %bpassp.0618, %sw.bb358 ], [ %bpassp.0618, %l_knight_mobility.exit609 ], [ %bpassp.0618, %l_knight_mobility.exit ], [ %bpassp.0618, %sw.bb332 ], [ %bpassp.0618, %sw.bb324 ], [ %bpassp.0618, %sw.bb316 ], [ %bpassp.0618, %sw.bb308 ], [ %bpassp.1, %if.end299 ], [ %bpassp.1, %if.then305 ], [ %bpassp.0618, %if.end177 ], [ %bpassp.0618, %if.then183 ], [ %bpassp.0618, %for.body59 ]
  %wpawns.1 = phi i32 [ %wpawns.0619, %if.else64 ], [ %wpawns.0619, %l_king_mobility.exit ], [ %wpawns.0619, %l_king_mobility.exit595 ], [ %wpawns.0619, %sw.bb369 ], [ %wpawns.0619, %sw.bb358 ], [ %wpawns.0619, %l_knight_mobility.exit609 ], [ %wpawns.0619, %l_knight_mobility.exit ], [ %wpawns.0619, %sw.bb332 ], [ %wpawns.0619, %sw.bb324 ], [ %wpawns.0619, %sw.bb316 ], [ %wpawns.0619, %sw.bb308 ], [ %wpawns.0619, %if.end299 ], [ %wpawns.0619, %if.then305 ], [ %inc70, %if.end177 ], [ %inc70, %if.then183 ], [ %wpawns.0619, %for.body59 ]
  %bpawns.1 = phi i32 [ %bpawns.0620, %if.else64 ], [ %bpawns.0620, %l_king_mobility.exit ], [ %bpawns.0620, %l_king_mobility.exit595 ], [ %bpawns.0620, %sw.bb369 ], [ %bpawns.0620, %sw.bb358 ], [ %bpawns.0620, %l_knight_mobility.exit609 ], [ %bpawns.0620, %l_knight_mobility.exit ], [ %bpawns.0620, %sw.bb332 ], [ %bpawns.0620, %sw.bb324 ], [ %bpawns.0620, %sw.bb316 ], [ %bpawns.0620, %sw.bb308 ], [ %inc188, %if.end299 ], [ %inc188, %if.then305 ], [ %bpawns.0620, %if.end177 ], [ %bpawns.0620, %if.then183 ], [ %bpawns.0620, %for.body59 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !103
  %cmp58 = icmp sgt i32 %a.3, %6, !dbg !103
  br i1 %cmp58, label %for.end394, label %for.body59, !dbg !103

for.end394:                                       ; preds = %for.cond6.preheader, %for.inc392, %for.cond57.preheader
  %bpawns.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %bpawns.1, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %wpawns.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %wpawns.1, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %bpassp.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %bpassp.2, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %wpassp.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %wpassp.2, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %bks.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %bks.1, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %wks.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %wks.1, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %bp.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %bp.1, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %wp.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %wp.1, %for.inc392 ], [ 0, %for.cond6.preheader ]
  %add395 = add nsw i32 %bp.0.lcssa, %wp.0.lcssa, !dbg !274
  %cmp396 = icmp sgt i32 %add395, 10, !dbg !274
  br i1 %cmp396, label %if.then397, label %if.end400, !dbg !274

if.then397:                                       ; preds = %for.end394
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !275
  %86 = load i32* %score, align 4, !dbg !275, !tbaa !81
  %sub398567 = sub i32 %bks.0.lcssa, %wks.0.lcssa, !dbg !275
  %sub399 = add i32 %sub398567, %86, !dbg !275
  call void @llvm.dbg.value(metadata !{i32 %sub399}, i64 0, metadata !32), !dbg !275
  store i32 %sub399, i32* %score, align 4, !dbg !275, !tbaa !81
  br label %if.end400, !dbg !277

if.end400:                                        ; preds = %if.then397, %for.end394
  %87 = load i32* @Material, align 4, !dbg !278, !tbaa !81
  %neg = sub i32 0, %87, !dbg !278
  %ispos = icmp sgt i32 %87, -1, !dbg !278
  %88 = select i1 %ispos, i32 %87, i32 %neg, !dbg !278
  %cmp402 = icmp slt i32 %88, 901, !dbg !278
  br i1 %cmp402, label %if.then403, label %if.else405, !dbg !278

if.then403:                                       ; preds = %if.end400
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !279
  %89 = load i32* %score, align 4, !dbg !279, !tbaa !81
  %add404 = add nsw i32 %89, %87, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %add404}, i64 0, metadata !32), !dbg !279
  store i32 %add404, i32* %score, align 4, !dbg !279, !tbaa !81
  br label %if.end428, !dbg !281

if.else405:                                       ; preds = %if.end400
  %cmp406 = icmp sgt i32 %87, 0, !dbg !282
  %90 = load i32* @comp_color, align 4, !dbg !282, !tbaa !81
  %cmp408 = icmp eq i32 %90, 1, !dbg !282
  %or.cond451 = and i1 %cmp406, %cmp408, !dbg !282
  %tobool410 = icmp eq i32 %wpassp.0.lcssa, 0, !dbg !282
  %or.cond = and i1 %or.cond451, %tobool410, !dbg !282
  br i1 %or.cond, label %if.then411, label %if.else414, !dbg !282

if.then411:                                       ; preds = %if.else405
  %sub412 = sub i32 1800, %87, !dbg !284
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !284
  %91 = load i32* %score, align 4, !dbg !284, !tbaa !81
  %add413 = add nsw i32 %sub412, %91, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %add413}, i64 0, metadata !32), !dbg !284
  store i32 %add413, i32* %score, align 4, !dbg !284, !tbaa !81
  br label %if.end428, !dbg !286

if.else414:                                       ; preds = %if.else405
  %cmp415 = icmp slt i32 %87, 0, !dbg !287
  %cmp417 = icmp eq i32 %90, 0, !dbg !287
  %or.cond452 = and i1 %cmp415, %cmp417, !dbg !287
  %tobool419 = icmp eq i32 %bpassp.0.lcssa, 0, !dbg !287
  %or.cond568 = and i1 %or.cond452, %tobool419, !dbg !287
  br i1 %or.cond568, label %if.then420, label %if.else424, !dbg !287

if.then420:                                       ; preds = %if.else414
  %sub422 = sub i32 -1800, %87, !dbg !288
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !288
  %92 = load i32* %score, align 4, !dbg !288, !tbaa !81
  %add423 = add nsw i32 %sub422, %92, !dbg !288
  call void @llvm.dbg.value(metadata !{i32 %add423}, i64 0, metadata !32), !dbg !288
  store i32 %add423, i32* %score, align 4, !dbg !288, !tbaa !81
  br label %if.end428, !dbg !290

if.else424:                                       ; preds = %if.else414
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !291
  %93 = load i32* %score, align 4, !dbg !291, !tbaa !81
  %add425 = add nsw i32 %93, %87, !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %add425}, i64 0, metadata !32), !dbg !291
  store i32 %add425, i32* %score, align 4, !dbg !291, !tbaa !81
  br label %if.end428

if.end428:                                        ; preds = %if.then411, %if.else424, %if.then420, %if.then403
  %94 = phi i32 [ %add413, %if.then411 ], [ %add425, %if.else424 ], [ %add423, %if.then420 ], [ %add404, %if.then403 ]
  %tobool429 = icmp eq i32 %wpawns.0.lcssa, 0, !dbg !293
  br i1 %tobool429, label %if.then430, label %if.else432, !dbg !293

if.then430:                                       ; preds = %if.end428
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !293
  %add431 = add nsw i32 %94, 200, !dbg !293
  call void @llvm.dbg.value(metadata !{i32 %add431}, i64 0, metadata !32), !dbg !293
  store i32 %add431, i32* %score, align 4, !dbg !293, !tbaa !81
  br label %if.end437, !dbg !293

if.else432:                                       ; preds = %if.end428
  %tobool433 = icmp eq i32 %bpawns.0.lcssa, 0, !dbg !294
  br i1 %tobool433, label %if.then434, label %if.end437, !dbg !294

if.then434:                                       ; preds = %if.else432
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !294
  %sub435 = add nsw i32 %94, -200, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %sub435}, i64 0, metadata !32), !dbg !294
  store i32 %sub435, i32* %score, align 4, !dbg !294, !tbaa !81
  br label %if.end437, !dbg !294

if.end437:                                        ; preds = %if.else432, %if.then434, %if.then430
  %95 = phi i32 [ %94, %if.else432 ], [ %sub435, %if.then434 ], [ %add431, %if.then430 ]
  %tobool438 = icmp eq i32 %wp.0.lcssa, 0, !dbg !295
  br i1 %tobool438, label %if.then439, label %if.else440, !dbg !295

if.then439:                                       ; preds = %if.end437
  call void @llvm.dbg.value(metadata !296, i64 0, metadata !32), !dbg !295
  store i32 1000000, i32* %score, align 4, !dbg !295, !tbaa !81
  br label %if.end444, !dbg !295

if.else440:                                       ; preds = %if.end437
  %tobool441 = icmp eq i32 %bp.0.lcssa, 0, !dbg !297
  br i1 %tobool441, label %if.then442, label %if.end444, !dbg !297

if.then442:                                       ; preds = %if.else440
  call void @llvm.dbg.value(metadata !298, i64 0, metadata !32), !dbg !297
  store i32 -1000000, i32* %score, align 4, !dbg !297, !tbaa !81
  br label %if.end444, !dbg !297

if.end444:                                        ; preds = %if.else440, %if.then442, %if.then439
  %96 = phi i32 [ %95, %if.else440 ], [ -1000000, %if.then442 ], [ 1000000, %if.then439 ]
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !299
  call void @storeECache(i32 %96) #6, !dbg !299
  %97 = load i32* @white_to_move, align 4, !dbg !300, !tbaa !81
  %cmp445 = icmp eq i32 %97, 1, !dbg !300
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !32), !dbg !301
  %98 = load i32* %score, align 4, !dbg !301, !tbaa !81
  %sub448 = sub nsw i32 0, %98, !dbg !303
  %.sub448 = select i1 %cmp445, i32 %98, i32 %sub448, !dbg !300
  br label %cleanup, !dbg !300

cleanup:                                          ; preds = %if.end444, %if.then
  %retval.0 = phi i32 [ %.sub, %if.then ], [ %.sub448, %if.end444 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #2, !dbg !305
  call void @llvm.lifetime.end(i64 44, i8* %1) #2, !dbg !305
  call void @llvm.lifetime.end(i64 88, i8* %0) #2, !dbg !305
  ret i32 %retval.0, !dbg !305
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @l_pawn_mobility(i32 %square) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !66), !dbg !306
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !67), !dbg !307
  %idxprom = sext i32 %square to i64, !dbg !308
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !308
  %0 = load i32* %arrayidx, align 4, !dbg !308, !tbaa !81
  %cmp = icmp eq i32 %0, 1, !dbg !308
  br i1 %cmp, label %if.then, label %if.else, !dbg !308

if.then:                                          ; preds = %entry
  %add = add nsw i32 %square, 12, !dbg !309
  %idxprom1 = sext i32 %add to i64, !dbg !309
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !309
  %1 = load i32* %arrayidx2, align 4, !dbg !309, !tbaa !81
  %cmp3 = icmp eq i32 %1, 13, !dbg !309
  tail call void @llvm.dbg.value(metadata !147, i64 0, metadata !67), !dbg !309
  %. = zext i1 %cmp3 to i32, !dbg !309
  ret i32 %., !dbg !309

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %square, -12, !dbg !311
  %idxprom5 = sext i32 %sub to i64, !dbg !311
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom5, !dbg !311
  %2 = load i32* %arrayidx6, align 4, !dbg !311, !tbaa !81
  %cmp7 = icmp eq i32 %2, 13, !dbg !311
  tail call void @llvm.dbg.value(metadata !147, i64 0, metadata !67), !dbg !311
  %.15 = zext i1 %cmp7 to i32, !dbg !311
  ret i32 %.15, !dbg !313
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @l_rook_mobility(i32 %square) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !61), !dbg !314
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !63), !dbg !315
  %0 = sext i32 %square to i64
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond ], [ %0, %entry ]
  %m.0 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, -12, !dbg !316
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next49, !dbg !316
  %1 = load i32* %arrayidx, align 4, !dbg !316, !tbaa !81
  %cmp = icmp eq i32 %1, 13, !dbg !316
  %inc = add nsw i32 %m.0, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !63), !dbg !318
  br i1 %cmp, label %for.cond, label %for.cond3, !dbg !316

for.cond3:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond3 ], [ %0, %for.cond ]
  %m.1 = phi i32 [ %inc8, %for.cond3 ], [ %m.0, %for.cond ]
  %indvars.iv.next47 = add i64 %indvars.iv46, -1, !dbg !319
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next47, !dbg !319
  %2 = load i32* %arrayidx5, align 4, !dbg !319, !tbaa !81
  %cmp6 = icmp eq i32 %2, 13, !dbg !319
  %inc8 = add nsw i32 %m.1, 1, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %inc8}, i64 0, metadata !63), !dbg !321
  br i1 %cmp6, label %for.cond3, label %for.cond12, !dbg !319

for.cond12:                                       ; preds = %for.cond3, %for.cond12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond12 ], [ %0, %for.cond3 ]
  %m.2 = phi i32 [ %inc17, %for.cond12 ], [ %m.1, %for.cond3 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 1, !dbg !322
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next45, !dbg !322
  %3 = load i32* %arrayidx14, align 4, !dbg !322, !tbaa !81
  %cmp15 = icmp eq i32 %3, 13, !dbg !322
  %inc17 = add nsw i32 %m.2, 1, !dbg !324
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !63), !dbg !324
  br i1 %cmp15, label %for.cond12, label %for.cond22, !dbg !322

for.cond22:                                       ; preds = %for.cond12, %for.cond22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond22 ], [ %0, %for.cond12 ]
  %m.3 = phi i32 [ %inc27, %for.cond22 ], [ %m.2, %for.cond12 ]
  %indvars.iv.next = add i64 %indvars.iv, 12, !dbg !325
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !325
  %4 = load i32* %arrayidx24, align 4, !dbg !325, !tbaa !81
  %cmp25 = icmp eq i32 %4, 13, !dbg !325
  %inc27 = add nsw i32 %m.3, 1, !dbg !327
  tail call void @llvm.dbg.value(metadata !{i32 %inc27}, i64 0, metadata !63), !dbg !327
  br i1 %cmp25, label %for.cond22, label %for.end30, !dbg !325

for.end30:                                        ; preds = %for.cond22
  ret i32 %m.3, !dbg !328
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @l_bishop_mobility(i32 %square) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !56), !dbg !329
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !58), !dbg !330
  %0 = sext i32 %square to i64
  br label %for.cond, !dbg !331

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond ], [ %0, %entry ]
  %m.0 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, -13, !dbg !331
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next49, !dbg !331
  %1 = load i32* %arrayidx, align 4, !dbg !331, !tbaa !81
  %cmp = icmp eq i32 %1, 13, !dbg !331
  %inc = add nsw i32 %m.0, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !58), !dbg !333
  br i1 %cmp, label %for.cond, label %for.cond3, !dbg !331

for.cond3:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond3 ], [ %0, %for.cond ]
  %m.1 = phi i32 [ %inc8, %for.cond3 ], [ %m.0, %for.cond ]
  %indvars.iv.next47 = add i64 %indvars.iv46, -11, !dbg !334
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next47, !dbg !334
  %2 = load i32* %arrayidx5, align 4, !dbg !334, !tbaa !81
  %cmp6 = icmp eq i32 %2, 13, !dbg !334
  %inc8 = add nsw i32 %m.1, 1, !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %inc8}, i64 0, metadata !58), !dbg !336
  br i1 %cmp6, label %for.cond3, label %for.cond12, !dbg !334

for.cond12:                                       ; preds = %for.cond3, %for.cond12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond12 ], [ %0, %for.cond3 ]
  %m.2 = phi i32 [ %inc17, %for.cond12 ], [ %m.1, %for.cond3 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 11, !dbg !337
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next45, !dbg !337
  %3 = load i32* %arrayidx14, align 4, !dbg !337, !tbaa !81
  %cmp15 = icmp eq i32 %3, 13, !dbg !337
  %inc17 = add nsw i32 %m.2, 1, !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !58), !dbg !339
  br i1 %cmp15, label %for.cond12, label %for.cond22, !dbg !337

for.cond22:                                       ; preds = %for.cond12, %for.cond22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond22 ], [ %0, %for.cond12 ]
  %m.3 = phi i32 [ %inc27, %for.cond22 ], [ %m.2, %for.cond12 ]
  %indvars.iv.next = add i64 %indvars.iv, 13, !dbg !340
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !340
  %4 = load i32* %arrayidx24, align 4, !dbg !340, !tbaa !81
  %cmp25 = icmp eq i32 %4, 13, !dbg !340
  %inc27 = add nsw i32 %m.3, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata !{i32 %inc27}, i64 0, metadata !58), !dbg !342
  br i1 %cmp25, label %for.cond22, label %for.end30, !dbg !340

for.end30:                                        ; preds = %for.cond22
  ret i32 %m.3, !dbg !343
}

; Function Attrs: optsize
declare void @storeECache(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !68, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !42, metadata !49, metadata !54, metadata !59, metadata !64}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"losers_eval", metadata !"losers_eval", metadata !"", i32 106, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @losers_eval, null, null, metadata !15, i32 106} ; [ DW_TAG_subprogram ] [line 106] [def] [losers_eval]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !23, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41}
!16 = metadata !{i32 786688, metadata !10, metadata !"srank", metadata !11, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [srank] [line 109]
!17 = metadata !{i32 786688, metadata !10, metadata !"pawn_file", metadata !11, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawn_file] [line 109]
!18 = metadata !{i32 786688, metadata !10, metadata !"pawns", metadata !11, i32 109, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawns] [line 109]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 704, i64 32, i32 0, i32 0, metadata !14, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 704, align 32, offset 0] [from int]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!22 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ] [0, 10]
!23 = metadata !{i32 786688, metadata !10, metadata !"white_back_pawn", metadata !11, i32 109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [white_back_pawn] [line 109]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 352, i64 32, i32 0, i32 0, metadata !14, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 352, align 32, offset 0] [from int]
!25 = metadata !{metadata !22}
!26 = metadata !{i32 786688, metadata !10, metadata !"black_back_pawn", metadata !11, i32 109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [black_back_pawn] [line 109]
!27 = metadata !{i32 786688, metadata !10, metadata !"isolated", metadata !11, i32 110, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isolated] [line 110]
!28 = metadata !{i32 786688, metadata !10, metadata !"backwards", metadata !11, i32 110, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backwards] [line 110]
!29 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 111]
!30 = metadata !{i32 786688, metadata !10, metadata !"a", metadata !11, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 111]
!31 = metadata !{i32 786688, metadata !10, metadata !"j", metadata !11, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 111]
!32 = metadata !{i32 786688, metadata !10, metadata !"score", metadata !11, i32 112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 112]
!33 = metadata !{i32 786688, metadata !10, metadata !"in_cache", metadata !11, i32 113, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_cache] [line 113]
!34 = metadata !{i32 786688, metadata !10, metadata !"wp", metadata !11, i32 114, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wp] [line 114]
!35 = metadata !{i32 786688, metadata !10, metadata !"bp", metadata !11, i32 114, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 114]
!36 = metadata !{i32 786688, metadata !10, metadata !"wks", metadata !11, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wks] [line 115]
!37 = metadata !{i32 786688, metadata !10, metadata !"bks", metadata !11, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bks] [line 115]
!38 = metadata !{i32 786688, metadata !10, metadata !"wpassp", metadata !11, i32 116, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wpassp] [line 116]
!39 = metadata !{i32 786688, metadata !10, metadata !"bpassp", metadata !11, i32 116, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpassp] [line 116]
!40 = metadata !{i32 786688, metadata !10, metadata !"wpawns", metadata !11, i32 117, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wpawns] [line 117]
!41 = metadata !{i32 786688, metadata !10, metadata !"bpawns", metadata !11, i32 117, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpawns] [line 117]
!42 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"l_king_mobility", metadata !"l_king_mobility", metadata !"", i32 92, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !45, i32 93} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 93] [l_king_mobility]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !14, metadata !14}
!45 = metadata !{metadata !46, metadata !47, metadata !48}
!46 = metadata !{i32 786689, metadata !42, metadata !"square", metadata !11, i32 16777308, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 92]
!47 = metadata !{i32 786688, metadata !42, metadata !"d", metadata !11, i32 95, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 95]
!48 = metadata !{i32 786688, metadata !42, metadata !"m", metadata !11, i32 95, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 95]
!49 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"l_knight_mobility", metadata !"l_knight_mobility", metadata !"", i32 63, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !50, i32 64} ; [ DW_TAG_subprogram ] [line 63] [local] [def] [scope 64] [l_knight_mobility]
!50 = metadata !{metadata !51, metadata !52, metadata !53}
!51 = metadata !{i32 786689, metadata !49, metadata !"square", metadata !11, i32 16777279, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 63]
!52 = metadata !{i32 786688, metadata !49, metadata !"d", metadata !11, i32 66, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 66]
!53 = metadata !{i32 786688, metadata !49, metadata !"m", metadata !11, i32 66, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 66]
!54 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"l_bishop_mobility", metadata !"l_bishop_mobility", metadata !"", i32 28, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @l_bishop_mobility, null, null, metadata !55, i32 29} ; [ DW_TAG_subprogram ] [line 28] [local] [def] [scope 29] [l_bishop_mobility]
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786689, metadata !54, metadata !"square", metadata !11, i32 16777244, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 28]
!57 = metadata !{i32 786688, metadata !54, metadata !"l", metadata !11, i32 30, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 30]
!58 = metadata !{i32 786688, metadata !54, metadata !"m", metadata !11, i32 31, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 31]
!59 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"l_rook_mobility", metadata !"l_rook_mobility", metadata !"", i32 45, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @l_rook_mobility, null, null, metadata !60, i32 46} ; [ DW_TAG_subprogram ] [line 45] [local] [def] [scope 46] [l_rook_mobility]
!60 = metadata !{metadata !61, metadata !62, metadata !63}
!61 = metadata !{i32 786689, metadata !59, metadata !"square", metadata !11, i32 16777261, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 45]
!62 = metadata !{i32 786688, metadata !59, metadata !"l", metadata !11, i32 47, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 47]
!63 = metadata !{i32 786688, metadata !59, metadata !"m", metadata !11, i32 48, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 48]
!64 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"l_pawn_mobility", metadata !"l_pawn_mobility", metadata !"", i32 76, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @l_pawn_mobility, null, null, metadata !65, i32 77} ; [ DW_TAG_subprogram ] [line 76] [local] [def] [scope 77] [l_pawn_mobility]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786689, metadata !64, metadata !"square", metadata !11, i32 16777292, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 76]
!67 = metadata !{i32 786688, metadata !64, metadata !"m", metadata !11, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 78]
!68 = metadata !{metadata !69, metadata !74, metadata !75}
!69 = metadata !{i32 786484, i32 0, metadata !42, metadata !"king_o", metadata !"king_o", metadata !"", metadata !11, i32 94, metadata !70, i32 1, i32 1, [8 x i32]* @l_king_mobility.king_o, null} ; [ DW_TAG_variable ] [king_o] [line 94] [local] [def]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !71, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!71 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!74 = metadata !{i32 786484, i32 0, metadata !49, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 65, metadata !70, i32 1, i32 1, [8 x i32]* @l_knight_mobility.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 65] [local] [def]
!75 = metadata !{i32 786484, i32 0, null, metadata !"lcentral", metadata !"lcentral", metadata !"", metadata !11, i32 14, metadata !76, i32 1, i32 1, [144 x i32]* @lcentral, null} ; [ DW_TAG_variable ] [lcentral] [line 14] [local] [def]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !14, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4608, align 32, offset 0] [from int]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 144}      ; [ DW_TAG_subrange_type ] [0, 143]
!79 = metadata !{i32 109, i32 0, metadata !10, null}
!80 = metadata !{i32 112, i32 0, metadata !10, null}
!81 = metadata !{metadata !"int", metadata !82}
!82 = metadata !{metadata !"omnipotent char", metadata !83}
!83 = metadata !{metadata !"Simple C/C++ TBAA"}
!84 = metadata !{i32 113, i32 0, metadata !10, null}
!85 = metadata !{i32 114, i32 0, metadata !10, null}
!86 = metadata !{i32 115, i32 0, metadata !10, null}
!87 = metadata !{i32 116, i32 0, metadata !10, null}
!88 = metadata !{i32 117, i32 0, metadata !10, null}
!89 = metadata !{i32 119, i32 0, metadata !10, null}
!90 = metadata !{i32 121, i32 0, metadata !10, null}
!91 = metadata !{i32 123, i32 0, metadata !10, null}
!92 = metadata !{i32 125, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !10, i32 124, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!94 = metadata !{i32 126, i32 0, metadata !93, null}
!95 = metadata !{i32 132, i32 0, metadata !10, null}
!96 = metadata !{i32 133, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !10, i32 133, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!98 = metadata !{i32 137, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !10, i32 137, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!100 = metadata !{i32 134, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !97, i32 133, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!102 = metadata !{i32 135, i32 0, metadata !101, null}
!103 = metadata !{i32 165, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !10, i32 165, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!105 = metadata !{i32 184, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !107, i32 173, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!107 = metadata !{i32 786443, metadata !1, metadata !104, i32 165, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!108 = metadata !{i32 189, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !106, i32 185, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!110 = metadata !{i32 195, i32 0, metadata !106, null}
!111 = metadata !{i32 200, i32 0, metadata !106, null}
!112 = metadata !{i32 203, i32 0, metadata !106, null}
!113 = metadata !{i32 247, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !106, i32 243, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!115 = metadata !{i32 138, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !99, i32 137, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!117 = metadata !{i32 140, i32 0, metadata !116, null}
!118 = metadata !{i32 143, i32 0, metadata !116, null}
!119 = metadata !{i32 145, i32 0, metadata !116, null}
!120 = metadata !{i32 147, i32 0, metadata !116, null}
!121 = metadata !{i32 148, i32 0, metadata !116, null}
!122 = metadata !{i32 149, i32 0, metadata !116, null}
!123 = metadata !{i32 150, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !116, i32 149, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!125 = metadata !{i32 151, i32 0, metadata !124, null}
!126 = metadata !{i32 152, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !124, i32 151, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!128 = metadata !{i32 153, i32 0, metadata !127, null}
!129 = metadata !{i32 156, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !116, i32 155, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!131 = metadata !{i32 157, i32 0, metadata !130, null}
!132 = metadata !{i32 158, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !130, i32 157, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!134 = metadata !{i32 159, i32 0, metadata !133, null}
!135 = metadata !{i32 166, i32 0, metadata !107, null}
!136 = metadata !{i32 168, i32 0, metadata !107, null}
!137 = metadata !{i32 171, i32 0, metadata !107, null}
!138 = metadata !{i32 173, i32 0, metadata !107, null}
!139 = metadata !{i32 175, i32 0, metadata !106, null}
!140 = metadata !{i32 176, i32 0, metadata !106, null}
!141 = metadata !{i32 177, i32 0, metadata !106, null}
!142 = metadata !{i32 178, i32 0, metadata !106, null}
!143 = metadata !{i32 179, i32 0, metadata !106, null}
!144 = metadata !{i32 180, i32 0, metadata !106, null}
!145 = metadata !{i32 181, i32 0, metadata !106, null}
!146 = metadata !{i32 186, i32 0, metadata !109, null}
!147 = metadata !{i32 1}
!148 = metadata !{i32 187, i32 0, metadata !109, null}
!149 = metadata !{i32 190, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !109, i32 189, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!151 = metadata !{i32 191, i32 0, metadata !150, null}
!152 = metadata !{i32 192, i32 0, metadata !150, null}
!153 = metadata !{i32 196, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !106, i32 195, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!155 = metadata !{i32 197, i32 0, metadata !154, null}
!156 = metadata !{i32 201, i32 0, metadata !106, null}
!157 = metadata !{i32 205, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !106, i32 204, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!159 = metadata !{i32 207, i32 0, metadata !158, null}
!160 = metadata !{i32 209, i32 0, metadata !158, null}
!161 = metadata !{i32 212, i32 0, metadata !158, null}
!162 = metadata !{i32 213, i32 0, metadata !158, null}
!163 = metadata !{i32 216, i32 0, metadata !158, null}
!164 = metadata !{i32 218, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !158, i32 217, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!166 = metadata !{i32 219, i32 0, metadata !165, null}
!167 = metadata !{i32 223, i32 0, metadata !106, null}
!168 = metadata !{i32 224, i32 0, metadata !106, null}
!169 = metadata !{i32 229, i32 0, metadata !106, null}
!170 = metadata !{i32 230, i32 0, metadata !106, null}
!171 = metadata !{i32 231, i32 0, metadata !106, null}
!172 = metadata !{i32 232, i32 0, metadata !106, null}
!173 = metadata !{i32 233, i32 0, metadata !106, null}
!174 = metadata !{i32 234, i32 0, metadata !106, null}
!175 = metadata !{i32 235, i32 0, metadata !106, null}
!176 = metadata !{i32 242, i32 0, metadata !106, null}
!177 = metadata !{i32 244, i32 0, metadata !114, null}
!178 = metadata !{i32 245, i32 0, metadata !114, null}
!179 = metadata !{i32 248, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !114, i32 247, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!181 = metadata !{i32 249, i32 0, metadata !180, null}
!182 = metadata !{i32 250, i32 0, metadata !180, null}
!183 = metadata !{i32 253, i32 0, metadata !106, null}
!184 = metadata !{i32 254, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !106, i32 253, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!186 = metadata !{i32 255, i32 0, metadata !185, null}
!187 = metadata !{i32 258, i32 0, metadata !106, null}
!188 = metadata !{i32 259, i32 0, metadata !106, null}
!189 = metadata !{i32 261, i32 0, metadata !106, null}
!190 = metadata !{i32 263, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !106, i32 262, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!192 = metadata !{i32 265, i32 0, metadata !191, null}
!193 = metadata !{i32 267, i32 0, metadata !191, null}
!194 = metadata !{i32 270, i32 0, metadata !191, null}
!195 = metadata !{i32 271, i32 0, metadata !191, null}
!196 = metadata !{i32 274, i32 0, metadata !191, null}
!197 = metadata !{i32 276, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !191, i32 275, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!199 = metadata !{i32 277, i32 0, metadata !198, null}
!200 = metadata !{i32 280, i32 0, metadata !106, null}
!201 = metadata !{i32 281, i32 0, metadata !106, null}
!202 = metadata !{i32 286, i32 0, metadata !106, null}
!203 = metadata !{i32 287, i32 0, metadata !106, null}
!204 = metadata !{i32 288, i32 0, metadata !106, null}
!205 = metadata !{i32 289, i32 0, metadata !106, null}
!206 = metadata !{i32 292, i32 0, metadata !106, null}
!207 = metadata !{i32 293, i32 0, metadata !106, null}
!208 = metadata !{i32 294, i32 0, metadata !106, null}
!209 = metadata !{i32 295, i32 0, metadata !106, null}
!210 = metadata !{i32 298, i32 0, metadata !106, null}
!211 = metadata !{i32 299, i32 0, metadata !106, null}
!212 = metadata !{i32 300, i32 0, metadata !106, null}
!213 = metadata !{i32 301, i32 0, metadata !106, null}
!214 = metadata !{i32 304, i32 0, metadata !106, null}
!215 = metadata !{i32 305, i32 0, metadata !106, null}
!216 = metadata !{i32 306, i32 0, metadata !106, null}
!217 = metadata !{i32 307, i32 0, metadata !106, null}
!218 = metadata !{i32 310, i32 0, metadata !106, null}
!219 = metadata !{i32 311, i32 0, metadata !106, null}
!220 = metadata !{i32 786689, metadata !49, metadata !"square", metadata !11, i32 16777279, metadata !14, i32 0, metadata !221} ; [ DW_TAG_arg_variable ] [square] [line 63]
!221 = metadata !{i32 312, i32 0, metadata !106, null}
!222 = metadata !{i32 63, i32 0, metadata !49, metadata !221}
!223 = metadata !{i32 786688, metadata !49, metadata !"m", metadata !11, i32 66, metadata !14, i32 0, metadata !221} ; [ DW_TAG_auto_variable ] [m] [line 66]
!224 = metadata !{i32 66, i32 0, metadata !49, metadata !221}
!225 = metadata !{i32 786688, metadata !49, metadata !"d", metadata !11, i32 66, metadata !14, i32 0, metadata !221} ; [ DW_TAG_auto_variable ] [d] [line 66]
!226 = metadata !{i32 68, i32 0, metadata !227, metadata !221}
!227 = metadata !{i32 786443, metadata !1, metadata !49, i32 68, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!228 = metadata !{i32 70, i32 0, metadata !229, metadata !221}
!229 = metadata !{i32 786443, metadata !1, metadata !227, i32 69, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!230 = metadata !{i32 313, i32 0, metadata !106, null}
!231 = metadata !{i32 316, i32 0, metadata !106, null}
!232 = metadata !{i32 317, i32 0, metadata !106, null}
!233 = metadata !{i32 786689, metadata !49, metadata !"square", metadata !11, i32 16777279, metadata !14, i32 0, metadata !234} ; [ DW_TAG_arg_variable ] [square] [line 63]
!234 = metadata !{i32 318, i32 0, metadata !106, null}
!235 = metadata !{i32 63, i32 0, metadata !49, metadata !234}
!236 = metadata !{i32 786688, metadata !49, metadata !"m", metadata !11, i32 66, metadata !14, i32 0, metadata !234} ; [ DW_TAG_auto_variable ] [m] [line 66]
!237 = metadata !{i32 66, i32 0, metadata !49, metadata !234}
!238 = metadata !{i32 786688, metadata !49, metadata !"d", metadata !11, i32 66, metadata !14, i32 0, metadata !234} ; [ DW_TAG_auto_variable ] [d] [line 66]
!239 = metadata !{i32 68, i32 0, metadata !227, metadata !234}
!240 = metadata !{i32 70, i32 0, metadata !229, metadata !234}
!241 = metadata !{i32 319, i32 0, metadata !106, null}
!242 = metadata !{i32 322, i32 0, metadata !106, null}
!243 = metadata !{i32 323, i32 0, metadata !106, null}
!244 = metadata !{i32 324, i32 0, metadata !106, null}
!245 = metadata !{i32 325, i32 0, metadata !106, null}
!246 = metadata !{i32 326, i32 0, metadata !106, null}
!247 = metadata !{i32 329, i32 0, metadata !106, null}
!248 = metadata !{i32 330, i32 0, metadata !106, null}
!249 = metadata !{i32 331, i32 0, metadata !106, null}
!250 = metadata !{i32 332, i32 0, metadata !106, null}
!251 = metadata !{i32 333, i32 0, metadata !106, null}
!252 = metadata !{i32 337, i32 0, metadata !106, null}
!253 = metadata !{i32 786689, metadata !42, metadata !"square", metadata !11, i32 16777308, metadata !14, i32 0, metadata !254} ; [ DW_TAG_arg_variable ] [square] [line 92]
!254 = metadata !{i32 338, i32 0, metadata !106, null}
!255 = metadata !{i32 92, i32 0, metadata !42, metadata !254}
!256 = metadata !{i32 786688, metadata !42, metadata !"m", metadata !11, i32 95, metadata !14, i32 0, metadata !254} ; [ DW_TAG_auto_variable ] [m] [line 95]
!257 = metadata !{i32 95, i32 0, metadata !42, metadata !254}
!258 = metadata !{i32 786688, metadata !42, metadata !"d", metadata !11, i32 95, metadata !14, i32 0, metadata !254} ; [ DW_TAG_auto_variable ] [d] [line 95]
!259 = metadata !{i32 97, i32 0, metadata !260, metadata !254}
!260 = metadata !{i32 786443, metadata !1, metadata !42, i32 97, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!261 = metadata !{i32 99, i32 0, metadata !262, metadata !254}
!262 = metadata !{i32 786443, metadata !1, metadata !260, i32 98, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!263 = metadata !{i32 339, i32 0, metadata !106, null}
!264 = metadata !{i32 343, i32 0, metadata !106, null}
!265 = metadata !{i32 786689, metadata !42, metadata !"square", metadata !11, i32 16777308, metadata !14, i32 0, metadata !266} ; [ DW_TAG_arg_variable ] [square] [line 92]
!266 = metadata !{i32 344, i32 0, metadata !106, null}
!267 = metadata !{i32 92, i32 0, metadata !42, metadata !266}
!268 = metadata !{i32 786688, metadata !42, metadata !"m", metadata !11, i32 95, metadata !14, i32 0, metadata !266} ; [ DW_TAG_auto_variable ] [m] [line 95]
!269 = metadata !{i32 95, i32 0, metadata !42, metadata !266}
!270 = metadata !{i32 786688, metadata !42, metadata !"d", metadata !11, i32 95, metadata !14, i32 0, metadata !266} ; [ DW_TAG_auto_variable ] [d] [line 95]
!271 = metadata !{i32 97, i32 0, metadata !260, metadata !266}
!272 = metadata !{i32 99, i32 0, metadata !262, metadata !266}
!273 = metadata !{i32 345, i32 0, metadata !106, null}
!274 = metadata !{i32 349, i32 0, metadata !10, null}
!275 = metadata !{i32 351, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !10, i32 350, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!277 = metadata !{i32 352, i32 0, metadata !276, null}
!278 = metadata !{i32 354, i32 0, metadata !10, null}
!279 = metadata !{i32 356, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !10, i32 355, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!281 = metadata !{i32 357, i32 0, metadata !280, null}
!282 = metadata !{i32 371, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !10, i32 359, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!284 = metadata !{i32 373, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !283, i32 372, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!286 = metadata !{i32 374, i32 0, metadata !285, null}
!287 = metadata !{i32 375, i32 0, metadata !283, null}
!288 = metadata !{i32 377, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !283, i32 376, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!290 = metadata !{i32 378, i32 0, metadata !289, null}
!291 = metadata !{i32 381, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !283, i32 380, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!293 = metadata !{i32 385, i32 0, metadata !10, null}
!294 = metadata !{i32 386, i32 0, metadata !10, null}
!295 = metadata !{i32 388, i32 0, metadata !10, null}
!296 = metadata !{i32 1000000}
!297 = metadata !{i32 389, i32 0, metadata !10, null}
!298 = metadata !{i32 -1000000}
!299 = metadata !{i32 391, i32 0, metadata !10, null}
!300 = metadata !{i32 394, i32 0, metadata !10, null}
!301 = metadata !{i32 395, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !10, i32 394, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!303 = metadata !{i32 398, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !10, i32 397, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!305 = metadata !{i32 401, i32 0, metadata !10, null}
!306 = metadata !{i32 76, i32 0, metadata !64, null}
!307 = metadata !{i32 78, i32 0, metadata !64, null}
!308 = metadata !{i32 80, i32 0, metadata !64, null}
!309 = metadata !{i32 82, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !64, i32 81, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!311 = metadata !{i32 86, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !64, i32 85, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!313 = metadata !{i32 89, i32 0, metadata !64, null}
!314 = metadata !{i32 45, i32 0, metadata !59, null}
!315 = metadata !{i32 48, i32 0, metadata !59, null}
!316 = metadata !{i32 50, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !59, i32 50, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!318 = metadata !{i32 51, i32 0, metadata !317, null}
!319 = metadata !{i32 52, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !59, i32 52, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!321 = metadata !{i32 53, i32 0, metadata !320, null}
!322 = metadata !{i32 54, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !59, i32 54, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!324 = metadata !{i32 55, i32 0, metadata !323, null}
!325 = metadata !{i32 56, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !59, i32 56, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!327 = metadata !{i32 57, i32 0, metadata !326, null}
!328 = metadata !{i32 59, i32 0, metadata !59, null}
!329 = metadata !{i32 28, i32 0, metadata !54, null}
!330 = metadata !{i32 31, i32 0, metadata !54, null}
!331 = metadata !{i32 33, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !54, i32 33, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!333 = metadata !{i32 34, i32 0, metadata !332, null}
!334 = metadata !{i32 35, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !54, i32 35, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!336 = metadata !{i32 36, i32 0, metadata !335, null}
!337 = metadata !{i32 37, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !54, i32 37, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!339 = metadata !{i32 38, i32 0, metadata !338, null}
!340 = metadata !{i32 39, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !54, i32 39, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/leval.c]
!342 = metadata !{i32 40, i32 0, metadata !341, null}
!343 = metadata !{i32 42, i32 0, metadata !54, null}
