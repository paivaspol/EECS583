; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@white_to_move = external global i32
@Material = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@.str = private unnamed_addr constant [21 x i8] c"(i > 0) && (i < 145)\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c\00", align 1
@__PRETTY_FUNCTION__.suicide_mid_eval = private unnamed_addr constant [23 x i8] c"int suicide_mid_eval()\00", align 1
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
  %call = tail call i32 @suicide_mid_eval() #6, !dbg !92
  ret i32 %call, !dbg !92
}

; Function Attrs: nounwind optsize uwtable
define i32 @suicide_mid_eval() #0 {
entry:
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %black_back_pawn = alloca [11 x i32], align 16
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %0 = bitcast [2 x [11 x i32]]* %pawns to i8*, !dbg !93
  call void @llvm.lifetime.start(i64 88, i8* %0) #2, !dbg !93
  call void @llvm.dbg.declare(metadata !{[2 x [11 x i32]]* %pawns}, metadata !19), !dbg !93
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*, !dbg !93
  call void @llvm.lifetime.start(i64 44, i8* %1) #2, !dbg !93
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %white_back_pawn}, metadata !24), !dbg !93
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*, !dbg !93
  call void @llvm.lifetime.start(i64 44, i8* %2) #2, !dbg !93
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %black_back_pawn}, metadata !27), !dbg !93
  call void @llvm.dbg.declare(metadata !{i32* %score}, metadata !33), !dbg !94
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !33), !dbg !94
  store i32 0, i32* %score, align 4, !dbg !94, !tbaa !95
  call void @llvm.dbg.declare(metadata !{i32* %in_cache}, metadata !34), !dbg !98
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !35), !dbg !99
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !36), !dbg !99
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !37), !dbg !99
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !38), !dbg !99
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !39), !dbg !100
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !40), !dbg !100
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !41), !dbg !100
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !42), !dbg !100
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !43), !dbg !101
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !44), !dbg !101
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !45), !dbg !101
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !46), !dbg !101
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !34), !dbg !102
  store i32 0, i32* %in_cache, align 4, !dbg !102, !tbaa !95
  call void @checkECache(i32* %score, i32* %in_cache) #7, !dbg !103
  call void @llvm.dbg.value(metadata !{i32* %in_cache}, i64 0, metadata !34), !dbg !104
  %3 = load i32* %in_cache, align 4, !dbg !104, !tbaa !95
  %tobool = icmp eq i32 %3, 0, !dbg !104
  br i1 %tobool, label %if.end2, label %if.then, !dbg !104

if.then:                                          ; preds = %entry
  %4 = load i32* @white_to_move, align 4, !dbg !105, !tbaa !95
  %cmp = icmp eq i32 %4, 1, !dbg !105
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !105
  %5 = load i32* %score, align 4, !dbg !105, !tbaa !95
  %sub = sub nsw i32 0, %5, !dbg !107
  %.sub = select i1 %cmp, i32 %5, i32 %sub, !dbg !105
  br label %cleanup, !dbg !105

if.end2:                                          ; preds = %entry
  %6 = load i32* @Material, align 4, !dbg !108, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !33), !dbg !108
  store i32 %6, i32* %score, align 4, !dbg !108, !tbaa !95
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false), !dbg !109
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !30), !dbg !110
  br label %for.body, !dbg !110

for.cond6.preheader:                              ; preds = %for.body
  %7 = load i32* @piece_count, align 4, !dbg !112, !tbaa !95
  %cmp7634 = icmp slt i32 %7, 1, !dbg !112
  br i1 %cmp7634, label %for.end385, label %for.body8, !dbg !112

for.body:                                         ; preds = %for.body, %if.end2
  %indvars.iv647 = phi i64 [ 0, %if.end2 ], [ %indvars.iv.next648, %for.body ]
  %arrayidx = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %indvars.iv647, !dbg !114
  store i32 7, i32* %arrayidx, align 4, !dbg !114, !tbaa !95
  %arrayidx5 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %indvars.iv647, !dbg !116
  store i32 2, i32* %arrayidx5, align 4, !dbg !116, !tbaa !95
  %indvars.iv.next648 = add i64 %indvars.iv647, 1, !dbg !110
  %lftr.wideiv649 = trunc i64 %indvars.iv.next648 to i32, !dbg !110
  %exitcond650 = icmp eq i32 %lftr.wideiv649, 11, !dbg !110
  br i1 %exitcond650, label %for.cond6.preheader, label %for.body, !dbg !110

for.cond57.preheader:                             ; preds = %for.inc54
  br i1 %cmp7634, label %for.end385, label %for.body59, !dbg !117

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc54
  %indvars.iv645 = phi i64 [ %indvars.iv.next646, %for.inc54 ], [ 1, %for.cond6.preheader ]
  %a.0635 = phi i32 [ %a.1, %for.inc54 ], [ 1, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv645, !dbg !119
  %8 = load i32* %arrayidx10, align 4, !dbg !119, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !30), !dbg !119
  %tobool11 = icmp eq i32 %8, 0, !dbg !121
  br i1 %tobool11, label %for.inc54, label %if.else, !dbg !121

if.else:                                          ; preds = %for.body8
  %inc13 = add nsw i32 %a.0635, 1, !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %inc13}, i64 0, metadata !31), !dbg !122
  %.off = add i32 %8, -1, !dbg !123
  %9 = icmp ult i32 %.off, 144, !dbg !123
  br i1 %9, label %cond.end, label %cond.false, !dbg !123

cond.false:                                       ; preds = %if.else
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.suicide_mid_eval, i64 0, i64 0)) #8, !dbg !123
  unreachable, !dbg !123

cond.end:                                         ; preds = %if.else
  %idxprom17 = sext i32 %8 to i64, !dbg !124
  %arrayidx18 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom17, !dbg !124
  %10 = load i32* %arrayidx18, align 4, !dbg !124, !tbaa !95
  %add = add nsw i32 %10, 1, !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !18), !dbg !124
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom17, !dbg !125
  %11 = load i32* %arrayidx20, align 4, !dbg !125, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !17), !dbg !125
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom17, !dbg !126
  %12 = load i32* %arrayidx22, align 4, !dbg !126, !tbaa !95
  switch i32 %12, label %for.inc54 [
    i32 1, label %if.then24
    i32 2, label %if.then40
  ], !dbg !126

if.then24:                                        ; preds = %cond.end
  %idxprom25 = sext i32 %add to i64, !dbg !127
  %arrayidx27 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom25, !dbg !127
  %13 = load i32* %arrayidx27, align 4, !dbg !127, !tbaa !95
  %inc28 = add nsw i32 %13, 1, !dbg !127
  store i32 %inc28, i32* %arrayidx27, align 4, !dbg !127, !tbaa !95
  %arrayidx30 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom25, !dbg !129
  %14 = load i32* %arrayidx30, align 4, !dbg !129, !tbaa !95
  %cmp31 = icmp slt i32 %11, %14, !dbg !129
  br i1 %cmp31, label %if.then32, label %for.inc54, !dbg !129

if.then32:                                        ; preds = %if.then24
  store i32 %11, i32* %arrayidx30, align 4, !dbg !130, !tbaa !95
  br label %for.inc54, !dbg !132

if.then40:                                        ; preds = %cond.end
  %idxprom41 = sext i32 %add to i64, !dbg !133
  %arrayidx43 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom41, !dbg !133
  %15 = load i32* %arrayidx43, align 4, !dbg !133, !tbaa !95
  %inc44 = add nsw i32 %15, 1, !dbg !133
  store i32 %inc44, i32* %arrayidx43, align 4, !dbg !133, !tbaa !95
  %arrayidx46 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom41, !dbg !135
  %16 = load i32* %arrayidx46, align 4, !dbg !135, !tbaa !95
  %cmp47 = icmp sgt i32 %11, %16, !dbg !135
  br i1 %cmp47, label %if.then48, label %for.inc54, !dbg !135

if.then48:                                        ; preds = %if.then40
  store i32 %11, i32* %arrayidx46, align 4, !dbg !136, !tbaa !95
  br label %for.inc54, !dbg !138

for.inc54:                                        ; preds = %cond.end, %for.body8, %if.then32, %if.then24, %if.then40, %if.then48
  %a.1 = phi i32 [ %inc13, %if.then32 ], [ %inc13, %if.then24 ], [ %inc13, %if.then48 ], [ %inc13, %if.then40 ], [ %a.0635, %for.body8 ], [ %inc13, %cond.end ]
  %indvars.iv.next646 = add i64 %indvars.iv645, 1, !dbg !112
  %cmp7 = icmp sgt i32 %a.1, %7, !dbg !112
  br i1 %cmp7, label %for.cond57.preheader, label %for.body8, !dbg !112

for.body59:                                       ; preds = %for.cond57.preheader, %for.inc383
  %17 = phi i32 [ %92, %for.inc383 ], [ %6, %for.cond57.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc383 ], [ 1, %for.cond57.preheader ]
  %bbc.0621 = phi i32 [ %bbc.1, %for.inc383 ], [ 0, %for.cond57.preheader ]
  %wbc.0620 = phi i32 [ %wbc.1, %for.inc383 ], [ 0, %for.cond57.preheader ]
  %bb.0619 = phi i32 [ %bb.2, %for.inc383 ], [ 0, %for.cond57.preheader ]
  %wb.0618 = phi i32 [ %wb.2, %for.inc383 ], [ 0, %for.cond57.preheader ]
  %a.2616 = phi i32 [ %a.3, %for.inc383 ], [ 1, %for.cond57.preheader ]
  %arrayidx61 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !139
  %18 = load i32* %arrayidx61, align 4, !dbg !139, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !30), !dbg !139
  %tobool62 = icmp eq i32 %18, 0, !dbg !141
  br i1 %tobool62, label %for.inc383, label %if.else64, !dbg !141

if.else64:                                        ; preds = %for.body59
  %inc65 = add nsw i32 %a.2616, 1, !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !31), !dbg !142
  %idxprom67 = sext i32 %18 to i64, !dbg !143
  %arrayidx68 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom67, !dbg !143
  %19 = load i32* %arrayidx68, align 4, !dbg !143, !tbaa !95
  %add69 = add nsw i32 %19, 1, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %add69}, i64 0, metadata !18), !dbg !143
  %arrayidx71 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom67, !dbg !144
  %20 = load i32* %arrayidx71, align 4, !dbg !144, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !17), !dbg !144
  %arrayidx73 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom67, !dbg !145
  %21 = load i32* %arrayidx73, align 4, !dbg !145, !tbaa !95
  switch i32 %21, label %for.inc383 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb180
    i32 7, label %sw.bb290
    i32 8, label %sw.bb297
    i32 11, label %sw.bb304
    i32 12, label %sw.bb321
    i32 3, label %sw.bb338
    i32 4, label %sw.bb345
    i32 9, label %sw.bb352
    i32 10, label %sw.bb360
    i32 5, label %sw.bb368
    i32 6, label %sw.bb375
  ], !dbg !145

sw.bb:                                            ; preds = %if.else64
  %arrayidx75 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !146
  %22 = load i32* %arrayidx75, align 4, !dbg !146, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !146
  %add76 = add nsw i32 %17, %22, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %add76}, i64 0, metadata !33), !dbg !146
  store i32 %add76, i32* %score, align 4, !dbg !146, !tbaa !95
  %call = call fastcc i32 @s_pawn_mobility(i32 %18) #6, !dbg !148
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !148
  %add77 = add nsw i32 %add76, %call, !dbg !148
  call void @llvm.dbg.value(metadata !{i32 %add77}, i64 0, metadata !33), !dbg !148
  store i32 %add77, i32* %score, align 4, !dbg !148, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !149) #2, !dbg !151
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !152) #2, !dbg !153
  %add.i = add nsw i32 %18, 24, !dbg !154
  %idxprom.i = sext i32 %add.i to i64, !dbg !154
  %arrayidx.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom.i, !dbg !154
  %23 = load i32* %arrayidx.i, align 4, !dbg !154, !tbaa !95
  %cmp.i = icmp eq i32 %23, 2, !dbg !154
  br i1 %cmp.i, label %black_saccers.exit, label %lor.lhs.false.i, !dbg !154

lor.lhs.false.i:                                  ; preds = %sw.bb
  %add1.i = add nsw i32 %18, 22, !dbg !154
  %idxprom2.i = sext i32 %add1.i to i64, !dbg !154
  %arrayidx3.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom2.i, !dbg !154
  %24 = load i32* %arrayidx3.i, align 4, !dbg !154, !tbaa !95
  %cmp4.i = icmp eq i32 %24, 2, !dbg !154
  br i1 %cmp4.i, label %black_saccers.exit, label %lor.lhs.false5.i, !dbg !154

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %add6.i = add nsw i32 %18, 26, !dbg !154
  %idxprom7.i = sext i32 %add6.i to i64, !dbg !154
  %arrayidx8.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7.i, !dbg !154
  %25 = load i32* %arrayidx8.i, align 4, !dbg !154, !tbaa !95
  %cmp9.i = icmp eq i32 %25, 2, !dbg !154
  br i1 %cmp9.i, label %black_saccers.exit, label %if.end.i, !dbg !154

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %cmp12.i = icmp slt i32 %20, 6, !dbg !155
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end42.i, !dbg !155

land.lhs.true.i:                                  ; preds = %if.end.i
  %add13.i = add nsw i32 %18, 25, !dbg !155
  %idxprom14.i = sext i32 %add13.i to i64, !dbg !155
  %arrayidx15.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom14.i, !dbg !155
  %26 = load i32* %arrayidx15.i, align 4, !dbg !155, !tbaa !95
  %cmp16.i = icmp eq i32 %26, 2, !dbg !155
  br i1 %cmp16.i, label %if.then54.i, label %lor.lhs.false17.i, !dbg !155

lor.lhs.false17.i:                                ; preds = %land.lhs.true.i
  %add18.i = add nsw i32 %18, 23, !dbg !155
  %idxprom19.i = sext i32 %add18.i to i64, !dbg !155
  %arrayidx20.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom19.i, !dbg !155
  %27 = load i32* %arrayidx20.i, align 4, !dbg !155, !tbaa !95
  %cmp21.i = icmp eq i32 %27, 2, !dbg !155
  br i1 %cmp21.i, label %if.then54.i, label %if.else.i, !dbg !155

if.else.i:                                        ; preds = %lor.lhs.false17.i
  %cmp25.i = icmp eq i32 %20, 4, !dbg !156
  br i1 %cmp25.i, label %land.lhs.true26.i, label %if.end42.i, !dbg !156

land.lhs.true26.i:                                ; preds = %if.else.i
  %add27.i = add nsw i32 %18, 35, !dbg !156
  %idxprom28.i = sext i32 %add27.i to i64, !dbg !156
  %arrayidx29.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28.i, !dbg !156
  %28 = load i32* %arrayidx29.i, align 4, !dbg !156, !tbaa !95
  %cmp30.i = icmp eq i32 %28, 2, !dbg !156
  br i1 %cmp30.i, label %if.then54.i, label %lor.lhs.false31.i, !dbg !156

lor.lhs.false31.i:                                ; preds = %land.lhs.true26.i
  %add32.i = add nsw i32 %18, 37, !dbg !156
  %idxprom33.i = sext i32 %add32.i to i64, !dbg !156
  %arrayidx34.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom33.i, !dbg !156
  %29 = load i32* %arrayidx34.i, align 4, !dbg !156, !tbaa !95
  %cmp35.i = icmp eq i32 %29, 2, !dbg !156
  br i1 %cmp35.i, label %if.then54.i, label %if.end42.i, !dbg !156

if.end42.i:                                       ; preds = %lor.lhs.false31.i, %if.else.i, %if.end.i
  %add40.i = add nsw i32 %18, 11, !dbg !157
  %call.i = call i32 @is_attacked(i32 %add40.i, i32 0) #7, !dbg !157
  %tobool41.i = icmp ne i32 %call.i, 0, !dbg !157
  %cond.i = zext i1 %tobool41.i to i32, !dbg !157
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !152) #2, !dbg !157
  br i1 %tobool41.i, label %if.end49.i, label %if.then44.i, !dbg !159

if.then44.i:                                      ; preds = %if.end42.i
  %add45.i = add nsw i32 %18, 13, !dbg !160
  %call46.i = call i32 @is_attacked(i32 %add45.i, i32 0) #7, !dbg !160
  %tobool47.i = icmp ne i32 %call46.i, 0, !dbg !160
  %cond48.i = select i1 %tobool47.i, i32 2, i32 0, !dbg !160
  call void @llvm.dbg.value(metadata !{i32 %cond48.i}, i64 0, metadata !152) #2, !dbg !160
  br label %if.end49.i, !dbg !162

if.end49.i:                                       ; preds = %if.then44.i, %if.end42.i
  %f.2.i = phi i32 [ %cond.i, %if.end42.i ], [ %cond48.i, %if.then44.i ]
  switch i32 %f.2.i, label %if.else60.i [
    i32 0, label %black_saccers.exit
    i32 1, label %if.then54.i
  ], !dbg !163

if.then54.i:                                      ; preds = %if.end49.i, %lor.lhs.false31.i, %land.lhs.true26.i, %lor.lhs.false17.i, %land.lhs.true.i
  %add55.i = add nsw i32 %18, 11, !dbg !164
  %call56.i = call i32 @calc_attackers(i32 %add55.i, i32 0) #7, !dbg !164
  %cmp57.i = icmp sgt i32 %call56.i, 1, !dbg !164
  %..i = select i1 %cmp57.i, i32 0, i32 30, !dbg !167
  br label %black_saccers.exit, !dbg !167

if.else60.i:                                      ; preds = %if.end49.i
  %add61.i = add nsw i32 %18, 13, !dbg !169
  %call62.i = call i32 @calc_attackers(i32 %add61.i, i32 0) #7, !dbg !169
  %cmp63.i = icmp sgt i32 %call62.i, 1, !dbg !169
  %.80.i = select i1 %cmp63.i, i32 0, i32 30, !dbg !171
  br label %black_saccers.exit, !dbg !171

black_saccers.exit:                               ; preds = %if.end49.i, %sw.bb, %lor.lhs.false.i, %lor.lhs.false5.i, %if.then54.i, %if.else60.i
  %retval.0.i = phi i32 [ 0, %lor.lhs.false5.i ], [ 0, %lor.lhs.false.i ], [ 0, %sw.bb ], [ %..i, %if.then54.i ], [ %.80.i, %if.else60.i ], [ 0, %if.end49.i ]
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !150
  %30 = load i32* %score, align 4, !dbg !150, !tbaa !95
  %sub79 = sub nsw i32 %30, %retval.0.i, !dbg !150
  call void @llvm.dbg.value(metadata !{i32 %sub79}, i64 0, metadata !33), !dbg !150
  store i32 %sub79, i32* %score, align 4, !dbg !150, !tbaa !95
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !28), !dbg !173
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !29), !dbg !174
  %add81 = add nsw i32 %19, 2, !dbg !175
  %idxprom82 = sext i32 %add81 to i64, !dbg !175
  %arrayidx83 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom82, !dbg !175
  %31 = load i32* %arrayidx83, align 4, !dbg !175, !tbaa !95
  %cmp84 = icmp sgt i32 %31, %20, !dbg !175
  br i1 %cmp84, label %land.lhs.true85, label %if.end106, !dbg !175

land.lhs.true85:                                  ; preds = %black_saccers.exit
  %idxprom87 = sext i32 %19 to i64, !dbg !175
  %arrayidx88 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom87, !dbg !175
  %32 = load i32* %arrayidx88, align 4, !dbg !175, !tbaa !95
  %cmp89 = icmp sgt i32 %32, %20, !dbg !175
  br i1 %cmp89, label %if.then90, label %if.end106, !dbg !175

if.then90:                                        ; preds = %land.lhs.true85
  %sub91 = add nsw i32 %sub79, -8, !dbg !176
  call void @llvm.dbg.value(metadata !{i32 %sub91}, i64 0, metadata !33), !dbg !176
  store i32 %sub91, i32* %score, align 4, !dbg !176, !tbaa !95
  call void @llvm.dbg.value(metadata !178, i64 0, metadata !29), !dbg !179
  %arrayidx95 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom82, !dbg !180
  %33 = load i32* %arrayidx95, align 4, !dbg !180, !tbaa !95
  %tobool96 = icmp eq i32 %33, 0, !dbg !180
  br i1 %tobool96, label %land.lhs.true97, label %if.end106, !dbg !180

land.lhs.true97:                                  ; preds = %if.then90
  %arrayidx101 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom87, !dbg !180
  %34 = load i32* %arrayidx101, align 4, !dbg !180, !tbaa !95
  %tobool102 = icmp eq i32 %34, 0, !dbg !180
  br i1 %tobool102, label %if.then103, label %if.end106, !dbg !180

if.then103:                                       ; preds = %land.lhs.true97
  %sub104 = add nsw i32 %sub79, -20, !dbg !181
  call void @llvm.dbg.value(metadata !{i32 %sub104}, i64 0, metadata !33), !dbg !181
  store i32 %sub104, i32* %score, align 4, !dbg !181, !tbaa !95
  call void @llvm.dbg.value(metadata !178, i64 0, metadata !28), !dbg !183
  br label %if.end106, !dbg !184

if.end106:                                        ; preds = %land.lhs.true97, %if.then90, %if.then103, %land.lhs.true85, %black_saccers.exit
  %35 = phi i32 [ %sub91, %if.then90 ], [ %sub91, %land.lhs.true97 ], [ %sub104, %if.then103 ], [ %sub79, %land.lhs.true85 ], [ %sub79, %black_saccers.exit ]
  %isolated.0 = phi i32 [ 0, %if.then90 ], [ 0, %land.lhs.true97 ], [ 1, %if.then103 ], [ 0, %land.lhs.true85 ], [ 0, %black_saccers.exit ]
  %backwards.0 = phi i32 [ 1, %if.then90 ], [ 1, %land.lhs.true97 ], [ 1, %if.then103 ], [ 0, %land.lhs.true85 ], [ 0, %black_saccers.exit ]
  %idxprom107 = sext i32 %add69 to i64, !dbg !185
  %arrayidx109 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom107, !dbg !185
  %36 = load i32* %arrayidx109, align 4, !dbg !185, !tbaa !95
  %tobool110 = icmp eq i32 %36, 0, !dbg !185
  br i1 %tobool110, label %if.then111, label %if.end120, !dbg !185

if.then111:                                       ; preds = %if.end106
  %tobool112 = icmp eq i32 %backwards.0, 0, !dbg !186
  br i1 %tobool112, label %if.end115, label %if.then113, !dbg !186

if.then113:                                       ; preds = %if.then111
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !186
  %sub114 = add nsw i32 %35, -5, !dbg !186
  call void @llvm.dbg.value(metadata !{i32 %sub114}, i64 0, metadata !33), !dbg !186
  store i32 %sub114, i32* %score, align 4, !dbg !186, !tbaa !95
  br label %if.end115, !dbg !186

if.end115:                                        ; preds = %if.then111, %if.then113
  %37 = phi i32 [ %35, %if.then111 ], [ %sub114, %if.then113 ]
  %tobool116 = icmp eq i32 %isolated.0, 0, !dbg !188
  br i1 %tobool116, label %if.end120, label %if.then117, !dbg !188

if.then117:                                       ; preds = %if.end115
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !188
  %sub118 = add nsw i32 %37, -8, !dbg !188
  call void @llvm.dbg.value(metadata !{i32 %sub118}, i64 0, metadata !33), !dbg !188
  store i32 %sub118, i32* %score, align 4, !dbg !188, !tbaa !95
  br label %if.end120, !dbg !188

if.end120:                                        ; preds = %if.end115, %if.end106, %if.then117
  %38 = phi i32 [ %37, %if.end115 ], [ %35, %if.end106 ], [ %sub118, %if.then117 ]
  %arrayidx123 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom107, !dbg !189
  %39 = load i32* %arrayidx123, align 4, !dbg !189, !tbaa !95
  %cmp124 = icmp sgt i32 %39, 1, !dbg !189
  br i1 %cmp124, label %if.then125, label %if.end131, !dbg !189

if.then125:                                       ; preds = %if.end120
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !190
  %40 = mul i32 %39, -15
  %mul.neg = add i32 %40, 15, !dbg !190
  %sub130 = add i32 %mul.neg, %38, !dbg !190
  call void @llvm.dbg.value(metadata !{i32 %sub130}, i64 0, metadata !33), !dbg !190
  store i32 %sub130, i32* %score, align 4, !dbg !190, !tbaa !95
  br label %if.end131, !dbg !190

if.end131:                                        ; preds = %if.then125, %if.end120
  %41 = phi i32 [ %sub130, %if.then125 ], [ %38, %if.end120 ]
  %idxprom138 = sext i32 %19 to i64, !dbg !191
  br i1 %tobool110, label %land.lhs.true136, label %if.end171, !dbg !191

land.lhs.true136:                                 ; preds = %if.end131
  %arrayidx139 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom138, !dbg !191
  %42 = load i32* %arrayidx139, align 4, !dbg !191, !tbaa !95
  %cmp140 = icmp slt i32 %20, %42, !dbg !191
  br i1 %cmp140, label %if.end171, label %land.lhs.true141, !dbg !191

land.lhs.true141:                                 ; preds = %land.lhs.true136
  %arrayidx144 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom82, !dbg !191
  %43 = load i32* %arrayidx144, align 4, !dbg !191, !tbaa !95
  %cmp145 = icmp slt i32 %20, %43, !dbg !191
  br i1 %cmp145, label %if.end171, label %if.then146, !dbg !191

if.then146:                                       ; preds = %land.lhs.true141
  %44 = mul i32 %20, 3, !dbg !192
  %add151 = add i32 %44, 24, !dbg !192
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !192
  %add152 = add nsw i32 %add151, %41, !dbg !192
  call void @llvm.dbg.value(metadata !{i32 %add152}, i64 0, metadata !33), !dbg !192
  store i32 %add152, i32* %score, align 4, !dbg !192, !tbaa !95
  switch i32 %19, label %if.end166 [
    i32 1, label %if.then159
    i32 8, label %if.then159
  ], !dbg !194

if.then159:                                       ; preds = %if.then146, %if.then146
  %sub162 = shl i32 %20, 1, !dbg !195
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !195
  %add165 = add nsw i32 %add152, %sub162, !dbg !195
  call void @llvm.dbg.value(metadata !{i32 %add165}, i64 0, metadata !33), !dbg !195
  store i32 %add165, i32* %score, align 4, !dbg !195, !tbaa !95
  br label %if.end166, !dbg !195

if.end166:                                        ; preds = %if.then146, %if.then159
  %45 = phi i32 [ %add152, %if.then146 ], [ %add165, %if.then159 ]
  %tobool167 = icmp eq i32 %isolated.0, 0, !dbg !196
  br i1 %tobool167, label %if.then168, label %if.end171, !dbg !196

if.then168:                                       ; preds = %if.end166
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !197
  %add169 = add nsw i32 %45, 6, !dbg !197
  call void @llvm.dbg.value(metadata !{i32 %add169}, i64 0, metadata !33), !dbg !197
  store i32 %add169, i32* %score, align 4, !dbg !197, !tbaa !95
  br label %if.end171, !dbg !199

if.end171:                                        ; preds = %if.end131, %if.end166, %land.lhs.true141, %land.lhs.true136, %if.then168
  %46 = phi i32 [ %add169, %if.then168 ], [ %41, %land.lhs.true136 ], [ %41, %land.lhs.true141 ], [ %45, %if.end166 ], [ %41, %if.end131 ]
  %arrayidx175 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom138, !dbg !200
  %47 = load i32* %arrayidx175, align 4, !dbg !200, !tbaa !95
  %tobool176 = icmp eq i32 %47, 0, !dbg !200
  br i1 %tobool176, label %if.then177, label %for.inc383, !dbg !200

if.then177:                                       ; preds = %if.end171
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !201
  %sub178 = add nsw i32 %46, -20, !dbg !201
  call void @llvm.dbg.value(metadata !{i32 %sub178}, i64 0, metadata !33), !dbg !201
  store i32 %sub178, i32* %score, align 4, !dbg !201, !tbaa !95
  br label %for.inc383, !dbg !201

sw.bb180:                                         ; preds = %if.else64
  %arrayidx182 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !202
  %48 = load i32* %arrayidx182, align 4, !dbg !202, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !202
  %sub183 = sub nsw i32 %17, %48, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %sub183}, i64 0, metadata !33), !dbg !202
  store i32 %sub183, i32* %score, align 4, !dbg !202, !tbaa !95
  %call184 = call fastcc i32 @s_pawn_mobility(i32 %18) #6, !dbg !203
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !203
  %sub185 = sub nsw i32 %sub183, %call184, !dbg !203
  call void @llvm.dbg.value(metadata !{i32 %sub185}, i64 0, metadata !33), !dbg !203
  store i32 %sub185, i32* %score, align 4, !dbg !203, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !204) #2, !dbg !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !207) #2, !dbg !208
  %sub.i = add nsw i32 %18, -24, !dbg !209
  %idxprom.i516 = sext i32 %sub.i to i64, !dbg !209
  %arrayidx.i517 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom.i516, !dbg !209
  %49 = load i32* %arrayidx.i517, align 4, !dbg !209, !tbaa !95
  %cmp.i518 = icmp eq i32 %49, 1, !dbg !209
  br i1 %cmp.i518, label %white_saccers.exit, label %lor.lhs.false.i522, !dbg !209

lor.lhs.false.i522:                               ; preds = %sw.bb180
  %sub1.i = add nsw i32 %18, -22, !dbg !209
  %idxprom2.i519 = sext i32 %sub1.i to i64, !dbg !209
  %arrayidx3.i520 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom2.i519, !dbg !209
  %50 = load i32* %arrayidx3.i520, align 4, !dbg !209, !tbaa !95
  %cmp4.i521 = icmp eq i32 %50, 1, !dbg !209
  br i1 %cmp4.i521, label %white_saccers.exit, label %lor.lhs.false5.i526, !dbg !209

lor.lhs.false5.i526:                              ; preds = %lor.lhs.false.i522
  %sub6.i = add nsw i32 %18, -26, !dbg !209
  %idxprom7.i523 = sext i32 %sub6.i to i64, !dbg !209
  %arrayidx8.i524 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7.i523, !dbg !209
  %51 = load i32* %arrayidx8.i524, align 4, !dbg !209, !tbaa !95
  %cmp9.i525 = icmp eq i32 %51, 1, !dbg !209
  br i1 %cmp9.i525, label %white_saccers.exit, label %if.end.i530, !dbg !209

if.end.i530:                                      ; preds = %lor.lhs.false5.i526
  %cmp12.i529 = icmp sgt i32 %20, 3, !dbg !210
  br i1 %cmp12.i529, label %land.lhs.true.i534, label %if.end42.i552, !dbg !210

land.lhs.true.i534:                               ; preds = %if.end.i530
  %sub13.i = add nsw i32 %18, -25, !dbg !210
  %idxprom14.i531 = sext i32 %sub13.i to i64, !dbg !210
  %arrayidx15.i532 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom14.i531, !dbg !210
  %52 = load i32* %arrayidx15.i532, align 4, !dbg !210, !tbaa !95
  %cmp16.i533 = icmp eq i32 %52, 1, !dbg !210
  br i1 %cmp16.i533, label %if.then54.i562, label %lor.lhs.false17.i538, !dbg !210

lor.lhs.false17.i538:                             ; preds = %land.lhs.true.i534
  %sub18.i = add nsw i32 %18, -23, !dbg !210
  %idxprom19.i535 = sext i32 %sub18.i to i64, !dbg !210
  %arrayidx20.i536 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom19.i535, !dbg !210
  %53 = load i32* %arrayidx20.i536, align 4, !dbg !210, !tbaa !95
  %cmp21.i537 = icmp eq i32 %53, 1, !dbg !210
  br i1 %cmp21.i537, label %if.then54.i562, label %if.else.i540, !dbg !210

if.else.i540:                                     ; preds = %lor.lhs.false17.i538
  %cmp25.i539 = icmp eq i32 %20, 5, !dbg !211
  br i1 %cmp25.i539, label %land.lhs.true26.i544, label %if.end42.i552, !dbg !211

land.lhs.true26.i544:                             ; preds = %if.else.i540
  %sub27.i = add nsw i32 %18, -35, !dbg !211
  %idxprom28.i541 = sext i32 %sub27.i to i64, !dbg !211
  %arrayidx29.i542 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28.i541, !dbg !211
  %54 = load i32* %arrayidx29.i542, align 4, !dbg !211, !tbaa !95
  %cmp30.i543 = icmp eq i32 %54, 1, !dbg !211
  br i1 %cmp30.i543, label %if.then54.i562, label %lor.lhs.false31.i548, !dbg !211

lor.lhs.false31.i548:                             ; preds = %land.lhs.true26.i544
  %sub32.i = add nsw i32 %18, -37, !dbg !211
  %idxprom33.i545 = sext i32 %sub32.i to i64, !dbg !211
  %arrayidx34.i546 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom33.i545, !dbg !211
  %55 = load i32* %arrayidx34.i546, align 4, !dbg !211, !tbaa !95
  %cmp35.i547 = icmp eq i32 %55, 1, !dbg !211
  br i1 %cmp35.i547, label %if.then54.i562, label %if.end42.i552, !dbg !211

if.end42.i552:                                    ; preds = %lor.lhs.false31.i548, %if.else.i540, %if.end.i530
  %sub40.i = add nsw i32 %18, -11, !dbg !212
  %call.i549 = call i32 @is_attacked(i32 %sub40.i, i32 1) #7, !dbg !212
  %tobool41.i550 = icmp ne i32 %call.i549, 0, !dbg !212
  %cond.i551 = zext i1 %tobool41.i550 to i32, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %cond.i551}, i64 0, metadata !207) #2, !dbg !212
  br i1 %tobool41.i550, label %if.end49.i558, label %if.then44.i556, !dbg !214

if.then44.i556:                                   ; preds = %if.end42.i552
  %sub45.i = add nsw i32 %18, -13, !dbg !215
  %call46.i553 = call i32 @is_attacked(i32 %sub45.i, i32 1) #7, !dbg !215
  %tobool47.i554 = icmp ne i32 %call46.i553, 0, !dbg !215
  %cond48.i555 = select i1 %tobool47.i554, i32 2, i32 0, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %cond48.i555}, i64 0, metadata !207) #2, !dbg !215
  br label %if.end49.i558, !dbg !217

if.end49.i558:                                    ; preds = %if.then44.i556, %if.end42.i552
  %f.2.i557 = phi i32 [ %cond.i551, %if.end42.i552 ], [ %cond48.i555, %if.then44.i556 ]
  switch i32 %f.2.i557, label %if.else60.i566 [
    i32 0, label %white_saccers.exit
    i32 1, label %if.then54.i562
  ], !dbg !218

if.then54.i562:                                   ; preds = %if.end49.i558, %lor.lhs.false31.i548, %land.lhs.true26.i544, %lor.lhs.false17.i538, %land.lhs.true.i534
  %sub55.i = add nsw i32 %18, -11, !dbg !219
  %call56.i559 = call i32 @calc_attackers(i32 %sub55.i, i32 1) #7, !dbg !219
  %cmp57.i560 = icmp sgt i32 %call56.i559, 1, !dbg !219
  %..i561 = select i1 %cmp57.i560, i32 0, i32 30, !dbg !222
  br label %white_saccers.exit, !dbg !222

if.else60.i566:                                   ; preds = %if.end49.i558
  %sub61.i = add nsw i32 %18, -13, !dbg !224
  %call62.i563 = call i32 @calc_attackers(i32 %sub61.i, i32 1) #7, !dbg !224
  %cmp63.i564 = icmp sgt i32 %call62.i563, 1, !dbg !224
  %.80.i565 = select i1 %cmp63.i564, i32 0, i32 30, !dbg !226
  br label %white_saccers.exit, !dbg !226

white_saccers.exit:                               ; preds = %if.end49.i558, %sw.bb180, %lor.lhs.false.i522, %lor.lhs.false5.i526, %if.then54.i562, %if.else60.i566
  %retval.0.i567 = phi i32 [ 0, %lor.lhs.false5.i526 ], [ 0, %lor.lhs.false.i522 ], [ 0, %sw.bb180 ], [ %..i561, %if.then54.i562 ], [ %.80.i565, %if.else60.i566 ], [ 0, %if.end49.i558 ]
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !205
  %56 = load i32* %score, align 4, !dbg !205, !tbaa !95
  %add187 = add nsw i32 %56, %retval.0.i567, !dbg !205
  call void @llvm.dbg.value(metadata !{i32 %add187}, i64 0, metadata !33), !dbg !205
  store i32 %add187, i32* %score, align 4, !dbg !205, !tbaa !95
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !28), !dbg !228
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !29), !dbg !229
  %add189 = add nsw i32 %19, 2, !dbg !230
  %idxprom190 = sext i32 %add189 to i64, !dbg !230
  %arrayidx191 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom190, !dbg !230
  %57 = load i32* %arrayidx191, align 4, !dbg !230, !tbaa !95
  %cmp192 = icmp slt i32 %57, %20, !dbg !230
  br i1 %cmp192, label %land.lhs.true193, label %if.end214, !dbg !230

land.lhs.true193:                                 ; preds = %white_saccers.exit
  %idxprom195 = sext i32 %19 to i64, !dbg !230
  %arrayidx196 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom195, !dbg !230
  %58 = load i32* %arrayidx196, align 4, !dbg !230, !tbaa !95
  %cmp197 = icmp slt i32 %58, %20, !dbg !230
  br i1 %cmp197, label %if.then198, label %if.end214, !dbg !230

if.then198:                                       ; preds = %land.lhs.true193
  %add199 = add nsw i32 %add187, 8, !dbg !231
  call void @llvm.dbg.value(metadata !{i32 %add199}, i64 0, metadata !33), !dbg !231
  store i32 %add199, i32* %score, align 4, !dbg !231, !tbaa !95
  call void @llvm.dbg.value(metadata !178, i64 0, metadata !29), !dbg !233
  %arrayidx203 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom190, !dbg !234
  %59 = load i32* %arrayidx203, align 4, !dbg !234, !tbaa !95
  %tobool204 = icmp eq i32 %59, 0, !dbg !234
  br i1 %tobool204, label %land.lhs.true205, label %if.end214, !dbg !234

land.lhs.true205:                                 ; preds = %if.then198
  %arrayidx209 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom195, !dbg !234
  %60 = load i32* %arrayidx209, align 4, !dbg !234, !tbaa !95
  %tobool210 = icmp eq i32 %60, 0, !dbg !234
  br i1 %tobool210, label %if.then211, label %if.end214, !dbg !234

if.then211:                                       ; preds = %land.lhs.true205
  %add212 = add nsw i32 %add187, 20, !dbg !235
  call void @llvm.dbg.value(metadata !{i32 %add212}, i64 0, metadata !33), !dbg !235
  store i32 %add212, i32* %score, align 4, !dbg !235, !tbaa !95
  call void @llvm.dbg.value(metadata !178, i64 0, metadata !28), !dbg !237
  br label %if.end214, !dbg !238

if.end214:                                        ; preds = %land.lhs.true205, %if.then198, %if.then211, %land.lhs.true193, %white_saccers.exit
  %61 = phi i32 [ %add199, %if.then198 ], [ %add199, %land.lhs.true205 ], [ %add212, %if.then211 ], [ %add187, %land.lhs.true193 ], [ %add187, %white_saccers.exit ]
  %isolated.1 = phi i32 [ 0, %if.then198 ], [ 0, %land.lhs.true205 ], [ 1, %if.then211 ], [ 0, %land.lhs.true193 ], [ 0, %white_saccers.exit ]
  %backwards.1 = phi i32 [ 1, %if.then198 ], [ 1, %land.lhs.true205 ], [ 1, %if.then211 ], [ 0, %land.lhs.true193 ], [ 0, %white_saccers.exit ]
  %idxprom215 = sext i32 %add69 to i64, !dbg !239
  %arrayidx217 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom215, !dbg !239
  %62 = load i32* %arrayidx217, align 4, !dbg !239, !tbaa !95
  %tobool218 = icmp eq i32 %62, 0, !dbg !239
  br i1 %tobool218, label %if.then219, label %if.end228, !dbg !239

if.then219:                                       ; preds = %if.end214
  %tobool220 = icmp eq i32 %backwards.1, 0, !dbg !240
  br i1 %tobool220, label %if.end223, label %if.then221, !dbg !240

if.then221:                                       ; preds = %if.then219
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !240
  %add222 = add nsw i32 %61, 5, !dbg !240
  call void @llvm.dbg.value(metadata !{i32 %add222}, i64 0, metadata !33), !dbg !240
  store i32 %add222, i32* %score, align 4, !dbg !240, !tbaa !95
  br label %if.end223, !dbg !240

if.end223:                                        ; preds = %if.then219, %if.then221
  %63 = phi i32 [ %61, %if.then219 ], [ %add222, %if.then221 ]
  %tobool224 = icmp eq i32 %isolated.1, 0, !dbg !242
  br i1 %tobool224, label %if.end228, label %if.then225, !dbg !242

if.then225:                                       ; preds = %if.end223
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !242
  %add226 = add nsw i32 %63, 8, !dbg !242
  call void @llvm.dbg.value(metadata !{i32 %add226}, i64 0, metadata !33), !dbg !242
  store i32 %add226, i32* %score, align 4, !dbg !242, !tbaa !95
  br label %if.end228, !dbg !242

if.end228:                                        ; preds = %if.end223, %if.end214, %if.then225
  %64 = phi i32 [ %63, %if.end223 ], [ %61, %if.end214 ], [ %add226, %if.then225 ]
  %arrayidx231 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom215, !dbg !243
  %65 = load i32* %arrayidx231, align 4, !dbg !243, !tbaa !95
  %cmp232 = icmp sgt i32 %65, 1, !dbg !243
  br i1 %cmp232, label %if.then233, label %if.end240, !dbg !243

if.then233:                                       ; preds = %if.end228
  %66 = mul i32 %65, 15, !dbg !244
  %mul238 = add i32 %66, -15, !dbg !244
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !244
  %add239 = add nsw i32 %mul238, %64, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %add239}, i64 0, metadata !33), !dbg !244
  store i32 %add239, i32* %score, align 4, !dbg !244, !tbaa !95
  br label %if.end240, !dbg !244

if.end240:                                        ; preds = %if.then233, %if.end228
  %67 = phi i32 [ %add239, %if.then233 ], [ %64, %if.end228 ]
  %idxprom247 = sext i32 %19 to i64, !dbg !245
  br i1 %tobool218, label %land.lhs.true245, label %if.end281, !dbg !245

land.lhs.true245:                                 ; preds = %if.end240
  %arrayidx248 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom247, !dbg !245
  %68 = load i32* %arrayidx248, align 4, !dbg !245, !tbaa !95
  %cmp249 = icmp sgt i32 %20, %68, !dbg !245
  br i1 %cmp249, label %if.end281, label %land.lhs.true250, !dbg !245

land.lhs.true250:                                 ; preds = %land.lhs.true245
  %arrayidx253 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom190, !dbg !245
  %69 = load i32* %arrayidx253, align 4, !dbg !245, !tbaa !95
  %cmp254 = icmp sgt i32 %20, %69, !dbg !245
  br i1 %cmp254, label %if.end281, label %if.then255, !dbg !245

if.then255:                                       ; preds = %land.lhs.true250
  %sub258 = sub nsw i32 7, %20, !dbg !246
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !246
  %70 = mul i32 %sub258, -3
  %add260.neg = add i32 %67, -30, !dbg !246
  %sub261 = add i32 %add260.neg, %70, !dbg !246
  call void @llvm.dbg.value(metadata !{i32 %sub261}, i64 0, metadata !33), !dbg !246
  store i32 %sub261, i32* %score, align 4, !dbg !246, !tbaa !95
  switch i32 %19, label %if.end276 [
    i32 1, label %if.then269
    i32 8, label %if.then269
  ], !dbg !248

if.then269:                                       ; preds = %if.then255, %if.then255
  %mul273 = shl i32 %sub258, 1, !dbg !249
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !249
  %add274.neg = add i32 %sub261, -4, !dbg !249
  %sub275 = sub i32 %add274.neg, %mul273, !dbg !249
  call void @llvm.dbg.value(metadata !{i32 %sub275}, i64 0, metadata !33), !dbg !249
  store i32 %sub275, i32* %score, align 4, !dbg !249, !tbaa !95
  br label %if.end276, !dbg !249

if.end276:                                        ; preds = %if.then255, %if.then269
  %71 = phi i32 [ %sub261, %if.then255 ], [ %sub275, %if.then269 ]
  %tobool277 = icmp eq i32 %isolated.1, 0, !dbg !250
  br i1 %tobool277, label %if.then278, label %if.end281, !dbg !250

if.then278:                                       ; preds = %if.end276
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !251
  %sub279 = add nsw i32 %71, -6, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %sub279}, i64 0, metadata !33), !dbg !251
  store i32 %sub279, i32* %score, align 4, !dbg !251, !tbaa !95
  br label %if.end281, !dbg !253

if.end281:                                        ; preds = %if.end240, %if.end276, %land.lhs.true250, %land.lhs.true245, %if.then278
  %72 = phi i32 [ %sub279, %if.then278 ], [ %67, %land.lhs.true245 ], [ %67, %land.lhs.true250 ], [ %71, %if.end276 ], [ %67, %if.end240 ]
  %arrayidx285 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom247, !dbg !254
  %73 = load i32* %arrayidx285, align 4, !dbg !254, !tbaa !95
  %tobool286 = icmp eq i32 %73, 0, !dbg !254
  br i1 %tobool286, label %if.then287, label %for.inc383, !dbg !254

if.then287:                                       ; preds = %if.end281
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !255
  %add288 = add nsw i32 %72, 20, !dbg !255
  call void @llvm.dbg.value(metadata !{i32 %add288}, i64 0, metadata !33), !dbg !255
  store i32 %add288, i32* %score, align 4, !dbg !255, !tbaa !95
  br label %for.inc383, !dbg !255

sw.bb290:                                         ; preds = %if.else64
  %arrayidx292 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !256
  %74 = load i32* %arrayidx292, align 4, !dbg !256, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !256
  %add293 = add nsw i32 %17, %74, !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %add293}, i64 0, metadata !33), !dbg !256
  store i32 %add293, i32* %score, align 4, !dbg !256, !tbaa !95
  %call294 = call fastcc i32 @s_rook_mobility(i32 %18) #6, !dbg !257
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !257
  %add295 = add nsw i32 %add293, %call294, !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %add295}, i64 0, metadata !33), !dbg !257
  store i32 %add295, i32* %score, align 4, !dbg !257, !tbaa !95
  br label %for.inc383, !dbg !258

sw.bb297:                                         ; preds = %if.else64
  %arrayidx299 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !259
  %75 = load i32* %arrayidx299, align 4, !dbg !259, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !259
  %sub300 = sub nsw i32 %17, %75, !dbg !259
  call void @llvm.dbg.value(metadata !{i32 %sub300}, i64 0, metadata !33), !dbg !259
  store i32 %sub300, i32* %score, align 4, !dbg !259, !tbaa !95
  %call301 = call fastcc i32 @s_rook_mobility(i32 %18) #6, !dbg !260
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !260
  %sub302 = sub nsw i32 %sub300, %call301, !dbg !260
  call void @llvm.dbg.value(metadata !{i32 %sub302}, i64 0, metadata !33), !dbg !260
  store i32 %sub302, i32* %score, align 4, !dbg !260, !tbaa !95
  br label %for.inc383, !dbg !261

sw.bb304:                                         ; preds = %if.else64
  %arrayidx306 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !262
  %76 = load i32* %arrayidx306, align 4, !dbg !262, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !262
  %add307 = add nsw i32 %17, %76, !dbg !262
  call void @llvm.dbg.value(metadata !{i32 %add307}, i64 0, metadata !33), !dbg !262
  store i32 %add307, i32* %score, align 4, !dbg !262, !tbaa !95
  %call308 = call fastcc i32 @s_bishop_mobility(i32 %18) #6, !dbg !263
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !263
  %add309 = add nsw i32 %add307, %call308, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %add309}, i64 0, metadata !33), !dbg !263
  store i32 %add309, i32* %score, align 4, !dbg !263, !tbaa !95
  %tobool310 = icmp eq i32 %wb.0618, 0, !dbg !264
  %arrayidx320.phi.trans.insert = getelementptr inbounds [144 x i32]* @sqcolor, i64 0, i64 %idxprom67
  %.pre = load i32* %arrayidx320.phi.trans.insert, align 4, !dbg !265, !tbaa !95
  br i1 %tobool310, label %for.inc383, label %if.then311, !dbg !264

if.then311:                                       ; preds = %sw.bb304
  %cmp314 = icmp eq i32 %.pre, %wbc.0620, !dbg !266
  call void @llvm.dbg.value(metadata !268, i64 0, metadata !35), !dbg !269
  %wb.0.op = add i32 %wb.0618, 1, !dbg !266
  %phitmp614 = select i1 %cmp314, i32 %wb.0.op, i32 100, !dbg !266
  br label %for.inc383, !dbg !266

sw.bb321:                                         ; preds = %if.else64
  %arrayidx323 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !270
  %77 = load i32* %arrayidx323, align 4, !dbg !270, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !270
  %sub324 = sub nsw i32 %17, %77, !dbg !270
  call void @llvm.dbg.value(metadata !{i32 %sub324}, i64 0, metadata !33), !dbg !270
  store i32 %sub324, i32* %score, align 4, !dbg !270, !tbaa !95
  %call325 = call fastcc i32 @s_bishop_mobility(i32 %18) #6, !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !271
  %sub326 = sub nsw i32 %sub324, %call325, !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %sub326}, i64 0, metadata !33), !dbg !271
  store i32 %sub326, i32* %score, align 4, !dbg !271, !tbaa !95
  %tobool327 = icmp eq i32 %bb.0619, 0, !dbg !272
  %arrayidx337.phi.trans.insert = getelementptr inbounds [144 x i32]* @sqcolor, i64 0, i64 %idxprom67
  %.pre651 = load i32* %arrayidx337.phi.trans.insert, align 4, !dbg !273, !tbaa !95
  br i1 %tobool327, label %for.inc383, label %if.then328, !dbg !272

if.then328:                                       ; preds = %sw.bb321
  %cmp331 = icmp eq i32 %.pre651, %bbc.0621, !dbg !274
  call void @llvm.dbg.value(metadata !268, i64 0, metadata !36), !dbg !276
  %bb.0.op = add i32 %bb.0619, 1, !dbg !274
  %phitmp = select i1 %cmp331, i32 %bb.0.op, i32 100, !dbg !274
  br label %for.inc383, !dbg !274

sw.bb338:                                         ; preds = %if.else64
  %arrayidx340 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !277
  %78 = load i32* %arrayidx340, align 4, !dbg !277, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !277
  %add341 = add nsw i32 %17, %78, !dbg !277
  call void @llvm.dbg.value(metadata !{i32 %add341}, i64 0, metadata !33), !dbg !277
  store i32 %add341, i32* %score, align 4, !dbg !277, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !278), !dbg !280
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !281), !dbg !282
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !283), !dbg !284
  br label %for.body.i, !dbg !284

for.body.i:                                       ; preds = %for.body.i, %sw.bb338
  %indvars.iv.i = phi i64 [ 0, %sw.bb338 ], [ %indvars.iv.next.i, %for.body.i ]
  %m.09.i = phi i32 [ 0, %sw.bb338 ], [ %inc.m.0.i, %for.body.i ]
  %arrayidx.i568 = getelementptr inbounds [8 x i32]* @knight_o, i64 0, i64 %indvars.iv.i, !dbg !286
  %79 = load i32* %arrayidx.i568, align 4, !dbg !286, !tbaa !95
  %add.i569 = add nsw i32 %79, %18, !dbg !286
  %idxprom1.i = sext i32 %add.i569 to i64, !dbg !286
  %arrayidx2.i = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i, !dbg !286
  %80 = load i32* %arrayidx2.i, align 4, !dbg !286, !tbaa !95
  %cmp3.i = icmp eq i32 %80, 13, !dbg !286
  %inc.i = zext i1 %cmp3.i to i32, !dbg !286
  %inc.m.0.i = add nsw i32 %inc.i, %m.09.i, !dbg !286
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !284
  %lftr.wideiv642 = trunc i64 %indvars.iv.next.i to i32, !dbg !284
  %exitcond643 = icmp eq i32 %lftr.wideiv642, 8, !dbg !284
  br i1 %exitcond643, label %s_knight_mobility.exit, label %for.body.i, !dbg !284

s_knight_mobility.exit:                           ; preds = %for.body.i
  %shl.i = shl i32 %inc.m.0.i, 2, !dbg !288
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !279
  %add343 = add nsw i32 %add341, %shl.i, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %add343}, i64 0, metadata !33), !dbg !279
  store i32 %add343, i32* %score, align 4, !dbg !279, !tbaa !95
  br label %for.inc383, !dbg !289

sw.bb345:                                         ; preds = %if.else64
  %arrayidx347 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !290
  %81 = load i32* %arrayidx347, align 4, !dbg !290, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !290
  %sub348 = sub nsw i32 %17, %81, !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %sub348}, i64 0, metadata !33), !dbg !290
  store i32 %sub348, i32* %score, align 4, !dbg !290, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !291), !dbg !293
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !294), !dbg !295
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !296), !dbg !297
  br label %for.body.i582, !dbg !297

for.body.i582:                                    ; preds = %for.body.i582, %sw.bb345
  %indvars.iv.i570 = phi i64 [ 0, %sw.bb345 ], [ %indvars.iv.next.i579, %for.body.i582 ]
  %m.09.i571 = phi i32 [ 0, %sw.bb345 ], [ %inc.m.0.i578, %for.body.i582 ]
  %arrayidx.i572 = getelementptr inbounds [8 x i32]* @knight_o, i64 0, i64 %indvars.iv.i570, !dbg !298
  %82 = load i32* %arrayidx.i572, align 4, !dbg !298, !tbaa !95
  %add.i573 = add nsw i32 %82, %18, !dbg !298
  %idxprom1.i574 = sext i32 %add.i573 to i64, !dbg !298
  %arrayidx2.i575 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i574, !dbg !298
  %83 = load i32* %arrayidx2.i575, align 4, !dbg !298, !tbaa !95
  %cmp3.i576 = icmp eq i32 %83, 13, !dbg !298
  %inc.i577 = zext i1 %cmp3.i576 to i32, !dbg !298
  %inc.m.0.i578 = add nsw i32 %inc.i577, %m.09.i571, !dbg !298
  %indvars.iv.next.i579 = add i64 %indvars.iv.i570, 1, !dbg !297
  %lftr.wideiv640 = trunc i64 %indvars.iv.next.i579 to i32, !dbg !297
  %exitcond641 = icmp eq i32 %lftr.wideiv640, 8, !dbg !297
  br i1 %exitcond641, label %s_knight_mobility.exit584, label %for.body.i582, !dbg !297

s_knight_mobility.exit584:                        ; preds = %for.body.i582
  %shl.i583 = shl i32 %inc.m.0.i578, 2, !dbg !299
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !292
  %sub350 = sub nsw i32 %sub348, %shl.i583, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %sub350}, i64 0, metadata !33), !dbg !292
  store i32 %sub350, i32* %score, align 4, !dbg !292, !tbaa !95
  br label %for.inc383, !dbg !300

sw.bb352:                                         ; preds = %if.else64
  %arrayidx354 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !301
  %84 = load i32* %arrayidx354, align 4, !dbg !301, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !301
  %add355 = add nsw i32 %17, %84, !dbg !301
  call void @llvm.dbg.value(metadata !{i32 %add355}, i64 0, metadata !33), !dbg !301
  store i32 %add355, i32* %score, align 4, !dbg !301, !tbaa !95
  %call356 = call fastcc i32 @s_rook_mobility(i32 %18) #6, !dbg !302
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !302
  %add357 = add nsw i32 %add355, %call356, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %add357}, i64 0, metadata !33), !dbg !302
  store i32 %add357, i32* %score, align 4, !dbg !302, !tbaa !95
  %call358 = call fastcc i32 @s_bishop_mobility(i32 %18) #6, !dbg !303
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !303
  %add359 = add nsw i32 %add357, %call358, !dbg !303
  call void @llvm.dbg.value(metadata !{i32 %add359}, i64 0, metadata !33), !dbg !303
  store i32 %add359, i32* %score, align 4, !dbg !303, !tbaa !95
  br label %for.inc383, !dbg !304

sw.bb360:                                         ; preds = %if.else64
  %arrayidx362 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !305
  %85 = load i32* %arrayidx362, align 4, !dbg !305, !tbaa !95
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !305
  %sub363 = sub nsw i32 %17, %85, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %sub363}, i64 0, metadata !33), !dbg !305
  store i32 %sub363, i32* %score, align 4, !dbg !305, !tbaa !95
  %call364 = call fastcc i32 @s_rook_mobility(i32 %18) #6, !dbg !306
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !306
  %sub365 = sub nsw i32 %sub363, %call364, !dbg !306
  call void @llvm.dbg.value(metadata !{i32 %sub365}, i64 0, metadata !33), !dbg !306
  store i32 %sub365, i32* %score, align 4, !dbg !306, !tbaa !95
  %call366 = call fastcc i32 @s_bishop_mobility(i32 %18) #6, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !307
  %sub367 = sub nsw i32 %sub365, %call366, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %sub367}, i64 0, metadata !33), !dbg !307
  store i32 %sub367, i32* %score, align 4, !dbg !307, !tbaa !95
  br label %for.inc383, !dbg !308

sw.bb368:                                         ; preds = %if.else64
  %arrayidx370 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !309
  %86 = load i32* %arrayidx370, align 4, !dbg !309, !tbaa !95
  %shr = ashr i32 %86, 1, !dbg !309
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !309
  %add371 = add nsw i32 %17, %shr, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %add371}, i64 0, metadata !33), !dbg !309
  store i32 %add371, i32* %score, align 4, !dbg !309, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !310), !dbg !312
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !313), !dbg !314
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !315), !dbg !316
  br label %for.body.i597, !dbg !316

for.body.i597:                                    ; preds = %for.body.i597, %sw.bb368
  %indvars.iv.i585 = phi i64 [ 0, %sw.bb368 ], [ %indvars.iv.next.i594, %for.body.i597 ]
  %m.09.i586 = phi i32 [ 0, %sw.bb368 ], [ %inc.m.0.i593, %for.body.i597 ]
  %arrayidx.i587 = getelementptr inbounds [8 x i32]* @king_o, i64 0, i64 %indvars.iv.i585, !dbg !318
  %87 = load i32* %arrayidx.i587, align 4, !dbg !318, !tbaa !95
  %add.i588 = add nsw i32 %87, %18, !dbg !318
  %idxprom1.i589 = sext i32 %add.i588 to i64, !dbg !318
  %arrayidx2.i590 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i589, !dbg !318
  %88 = load i32* %arrayidx2.i590, align 4, !dbg !318, !tbaa !95
  %cmp3.i591 = icmp eq i32 %88, 13, !dbg !318
  %inc.i592 = zext i1 %cmp3.i591 to i32, !dbg !318
  %inc.m.0.i593 = add nsw i32 %inc.i592, %m.09.i586, !dbg !318
  %indvars.iv.next.i594 = add i64 %indvars.iv.i585, 1, !dbg !316
  %lftr.wideiv638 = trunc i64 %indvars.iv.next.i594 to i32, !dbg !316
  %exitcond639 = icmp eq i32 %lftr.wideiv638, 8, !dbg !316
  br i1 %exitcond639, label %s_king_mobility.exit, label %for.body.i597, !dbg !316

s_king_mobility.exit:                             ; preds = %for.body.i597
  %shl.i598 = shl i32 %inc.m.0.i593, 2, !dbg !320
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !311
  %add373 = add nsw i32 %add371, %shl.i598, !dbg !311
  call void @llvm.dbg.value(metadata !{i32 %add373}, i64 0, metadata !33), !dbg !311
  store i32 %add373, i32* %score, align 4, !dbg !311, !tbaa !95
  br label %for.inc383, !dbg !321

sw.bb375:                                         ; preds = %if.else64
  %arrayidx377 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %idxprom67, !dbg !322
  %89 = load i32* %arrayidx377, align 4, !dbg !322, !tbaa !95
  %shr378 = ashr i32 %89, 1, !dbg !322
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !322
  %sub379 = sub nsw i32 %17, %shr378, !dbg !322
  call void @llvm.dbg.value(metadata !{i32 %sub379}, i64 0, metadata !33), !dbg !322
  store i32 %sub379, i32* %score, align 4, !dbg !322, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !323), !dbg !325
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !326), !dbg !327
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !328), !dbg !329
  br label %for.body.i611, !dbg !329

for.body.i611:                                    ; preds = %for.body.i611, %sw.bb375
  %indvars.iv.i599 = phi i64 [ 0, %sw.bb375 ], [ %indvars.iv.next.i608, %for.body.i611 ]
  %m.09.i600 = phi i32 [ 0, %sw.bb375 ], [ %inc.m.0.i607, %for.body.i611 ]
  %arrayidx.i601 = getelementptr inbounds [8 x i32]* @king_o, i64 0, i64 %indvars.iv.i599, !dbg !330
  %90 = load i32* %arrayidx.i601, align 4, !dbg !330, !tbaa !95
  %add.i602 = add nsw i32 %90, %18, !dbg !330
  %idxprom1.i603 = sext i32 %add.i602 to i64, !dbg !330
  %arrayidx2.i604 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1.i603, !dbg !330
  %91 = load i32* %arrayidx2.i604, align 4, !dbg !330, !tbaa !95
  %cmp3.i605 = icmp eq i32 %91, 13, !dbg !330
  %inc.i606 = zext i1 %cmp3.i605 to i32, !dbg !330
  %inc.m.0.i607 = add nsw i32 %inc.i606, %m.09.i600, !dbg !330
  %indvars.iv.next.i608 = add i64 %indvars.iv.i599, 1, !dbg !329
  %lftr.wideiv = trunc i64 %indvars.iv.next.i608 to i32, !dbg !329
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !329
  br i1 %exitcond, label %s_king_mobility.exit613, label %for.body.i611, !dbg !329

s_king_mobility.exit613:                          ; preds = %for.body.i611
  %shl.i612 = shl i32 %inc.m.0.i607, 2, !dbg !331
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !324
  %sub381 = sub nsw i32 %sub379, %shl.i612, !dbg !324
  call void @llvm.dbg.value(metadata !{i32 %sub381}, i64 0, metadata !33), !dbg !324
  store i32 %sub381, i32* %score, align 4, !dbg !324, !tbaa !95
  br label %for.inc383, !dbg !332

for.inc383:                                       ; preds = %sw.bb321, %sw.bb304, %if.then328, %if.then311, %if.end281, %if.end171, %for.body59, %sw.bb290, %sw.bb297, %s_knight_mobility.exit, %s_knight_mobility.exit584, %sw.bb352, %sw.bb360, %s_king_mobility.exit, %s_king_mobility.exit613, %if.else64, %if.then177, %if.then287
  %92 = phi i32 [ %17, %if.else64 ], [ %sub381, %s_king_mobility.exit613 ], [ %add373, %s_king_mobility.exit ], [ %sub367, %sw.bb360 ], [ %add359, %sw.bb352 ], [ %sub350, %s_knight_mobility.exit584 ], [ %add343, %s_knight_mobility.exit ], [ %sub302, %sw.bb297 ], [ %add295, %sw.bb290 ], [ %add288, %if.then287 ], [ %sub178, %if.then177 ], [ %17, %for.body59 ], [ %46, %if.end171 ], [ %72, %if.end281 ], [ %add309, %if.then311 ], [ %sub326, %if.then328 ], [ %add309, %sw.bb304 ], [ %sub326, %sw.bb321 ]
  %a.3 = phi i32 [ %inc65, %if.else64 ], [ %inc65, %s_king_mobility.exit613 ], [ %inc65, %s_king_mobility.exit ], [ %inc65, %sw.bb360 ], [ %inc65, %sw.bb352 ], [ %inc65, %s_knight_mobility.exit584 ], [ %inc65, %s_knight_mobility.exit ], [ %inc65, %sw.bb297 ], [ %inc65, %sw.bb290 ], [ %inc65, %if.then287 ], [ %inc65, %if.then177 ], [ %a.2616, %for.body59 ], [ %inc65, %if.end171 ], [ %inc65, %if.end281 ], [ %inc65, %if.then311 ], [ %inc65, %if.then328 ], [ %inc65, %sw.bb304 ], [ %inc65, %sw.bb321 ]
  %wb.2 = phi i32 [ %wb.0618, %if.else64 ], [ %wb.0618, %s_king_mobility.exit613 ], [ %wb.0618, %s_king_mobility.exit ], [ %wb.0618, %sw.bb360 ], [ %wb.0618, %sw.bb352 ], [ %wb.0618, %s_knight_mobility.exit584 ], [ %wb.0618, %s_knight_mobility.exit ], [ %wb.0618, %sw.bb297 ], [ %wb.0618, %sw.bb290 ], [ %wb.0618, %if.then287 ], [ %wb.0618, %if.then177 ], [ %wb.0618, %for.body59 ], [ %wb.0618, %if.end171 ], [ %wb.0618, %if.end281 ], [ %phitmp614, %if.then311 ], [ %wb.0618, %if.then328 ], [ 1, %sw.bb304 ], [ %wb.0618, %sw.bb321 ]
  %bb.2 = phi i32 [ %bb.0619, %if.else64 ], [ %bb.0619, %s_king_mobility.exit613 ], [ %bb.0619, %s_king_mobility.exit ], [ %bb.0619, %sw.bb360 ], [ %bb.0619, %sw.bb352 ], [ %bb.0619, %s_knight_mobility.exit584 ], [ %bb.0619, %s_knight_mobility.exit ], [ %bb.0619, %sw.bb297 ], [ %bb.0619, %sw.bb290 ], [ %bb.0619, %if.then287 ], [ %bb.0619, %if.then177 ], [ %bb.0619, %for.body59 ], [ %bb.0619, %if.end171 ], [ %bb.0619, %if.end281 ], [ %bb.0619, %if.then311 ], [ %phitmp, %if.then328 ], [ %bb.0619, %sw.bb304 ], [ 1, %sw.bb321 ]
  %wbc.1 = phi i32 [ %wbc.0620, %if.else64 ], [ %wbc.0620, %s_king_mobility.exit613 ], [ %wbc.0620, %s_king_mobility.exit ], [ %wbc.0620, %sw.bb360 ], [ %wbc.0620, %sw.bb352 ], [ %wbc.0620, %s_knight_mobility.exit584 ], [ %wbc.0620, %s_knight_mobility.exit ], [ %wbc.0620, %sw.bb297 ], [ %wbc.0620, %sw.bb290 ], [ %wbc.0620, %if.then287 ], [ %wbc.0620, %if.then177 ], [ %wbc.0620, %for.body59 ], [ %wbc.0620, %if.end171 ], [ %wbc.0620, %if.end281 ], [ %.pre, %if.then311 ], [ %wbc.0620, %if.then328 ], [ %.pre, %sw.bb304 ], [ %wbc.0620, %sw.bb321 ]
  %bbc.1 = phi i32 [ %bbc.0621, %if.else64 ], [ %bbc.0621, %s_king_mobility.exit613 ], [ %bbc.0621, %s_king_mobility.exit ], [ %bbc.0621, %sw.bb360 ], [ %bbc.0621, %sw.bb352 ], [ %bbc.0621, %s_knight_mobility.exit584 ], [ %bbc.0621, %s_knight_mobility.exit ], [ %bbc.0621, %sw.bb297 ], [ %bbc.0621, %sw.bb290 ], [ %bbc.0621, %if.then287 ], [ %bbc.0621, %if.then177 ], [ %bbc.0621, %for.body59 ], [ %bbc.0621, %if.end171 ], [ %bbc.0621, %if.end281 ], [ %bbc.0621, %if.then311 ], [ %.pre651, %if.then328 ], [ %bbc.0621, %sw.bb304 ], [ %.pre651, %sw.bb321 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !117
  %93 = load i32* @piece_count, align 4, !dbg !117, !tbaa !95
  %cmp58 = icmp sgt i32 %a.3, %93, !dbg !117
  br i1 %cmp58, label %for.end385, label %for.body59, !dbg !117

for.end385:                                       ; preds = %for.cond6.preheader, %for.inc383, %for.cond57.preheader
  %94 = phi i32 [ %6, %for.cond57.preheader ], [ %92, %for.inc383 ], [ %6, %for.cond6.preheader ]
  %.lcssa = phi i32 [ %7, %for.cond57.preheader ], [ %93, %for.inc383 ], [ %7, %for.cond6.preheader ]
  %bbc.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %bbc.1, %for.inc383 ], [ 0, %for.cond6.preheader ]
  %wbc.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %wbc.1, %for.inc383 ], [ 0, %for.cond6.preheader ]
  %bb.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %bb.2, %for.inc383 ], [ 0, %for.cond6.preheader ]
  %wb.0.lcssa = phi i32 [ 0, %for.cond57.preheader ], [ %wb.2, %for.inc383 ], [ 0, %for.cond6.preheader ]
  %cmp386 = icmp slt i32 %wb.0.lcssa, 99, !dbg !333
  %cmp388 = icmp slt i32 %bb.0.lcssa, 99, !dbg !333
  %or.cond = and i1 %cmp386, %cmp388, !dbg !333
  br i1 %or.cond, label %land.lhs.true389, label %if.end399, !dbg !333

land.lhs.true389:                                 ; preds = %for.end385
  %cmp390 = icmp ne i32 %wbc.0.lcssa, %bbc.0.lcssa, !dbg !333
  %cmp392 = icmp slt i32 %.lcssa, 32, !dbg !333
  %or.cond407 = and i1 %cmp390, %cmp392, !dbg !333
  br i1 %or.cond407, label %if.then393, label %if.end399, !dbg !333

if.then393:                                       ; preds = %land.lhs.true389
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !334
  %conv = sitofp i32 %94 to float, !dbg !334
  %conv394 = sitofp i32 %.lcssa to float, !dbg !334
  %conv396 = fmul float %conv394, 3.125000e-02, !dbg !334
  %mul397 = fmul float %conv396, %conv, !dbg !334
  %conv398 = fptosi float %mul397 to i32, !dbg !334
  call void @llvm.dbg.value(metadata !{i32 %conv398}, i64 0, metadata !33), !dbg !334
  store i32 %conv398, i32* %score, align 4, !dbg !334, !tbaa !95
  br label %if.end399, !dbg !336

if.end399:                                        ; preds = %if.then393, %land.lhs.true389, %for.end385
  %95 = phi i32 [ %conv398, %if.then393 ], [ %94, %land.lhs.true389 ], [ %94, %for.end385 ]
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !337
  call void @storeECache(i32 %95) #7, !dbg !337
  %96 = load i32* @white_to_move, align 4, !dbg !338, !tbaa !95
  %cmp400 = icmp eq i32 %96, 1, !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !33), !dbg !339
  %97 = load i32* %score, align 4, !dbg !339, !tbaa !95
  %sub404 = sub nsw i32 0, %97, !dbg !341
  %.sub404 = select i1 %cmp400, i32 %97, i32 %sub404, !dbg !338
  br label %cleanup, !dbg !338

cleanup:                                          ; preds = %if.end399, %if.then
  %retval.0 = phi i32 [ %.sub, %if.then ], [ %.sub404, %if.end399 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #2, !dbg !343
  call void @llvm.lifetime.end(i64 44, i8* %1) #2, !dbg !343
  call void @llvm.lifetime.end(i64 88, i8* %0) #2, !dbg !343
  ret i32 %retval.0, !dbg !343
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
define internal fastcc i32 @s_pawn_mobility(i32 %square) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !79), !dbg !344
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !80), !dbg !345
  %idxprom = sext i32 %square to i64, !dbg !346
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !346
  %0 = load i32* %arrayidx, align 4, !dbg !346, !tbaa !95
  %cmp = icmp eq i32 %0, 1, !dbg !346
  br i1 %cmp, label %if.then, label %if.else, !dbg !346

if.then:                                          ; preds = %entry
  %add = add nsw i32 %square, 12, !dbg !347
  %idxprom1 = sext i32 %add to i64, !dbg !347
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !347
  %1 = load i32* %arrayidx2, align 4, !dbg !347, !tbaa !95
  %cmp3 = icmp eq i32 %1, 13, !dbg !347
  tail call void @llvm.dbg.value(metadata !178, i64 0, metadata !80), !dbg !347
  %. = select i1 %cmp3, i32 8, i32 0, !dbg !347
  ret i32 %., !dbg !347

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %square, -12, !dbg !349
  %idxprom5 = sext i32 %sub to i64, !dbg !349
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom5, !dbg !349
  %2 = load i32* %arrayidx6, align 4, !dbg !349, !tbaa !95
  %cmp7 = icmp eq i32 %2, 13, !dbg !349
  tail call void @llvm.dbg.value(metadata !178, i64 0, metadata !80), !dbg !349
  %.15 = select i1 %cmp7, i32 8, i32 0, !dbg !349
  ret i32 %.15, !dbg !351
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @s_rook_mobility(i32 %square) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !66), !dbg !352
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !68), !dbg !353
  %0 = sext i32 %square to i64
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond ], [ %0, %entry ]
  %m.0 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, -12, !dbg !354
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next49, !dbg !354
  %1 = load i32* %arrayidx, align 4, !dbg !354, !tbaa !95
  %cmp = icmp eq i32 %1, 13, !dbg !354
  %inc = add nsw i32 %m.0, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !68), !dbg !356
  br i1 %cmp, label %for.cond, label %for.cond3, !dbg !354

for.cond3:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond3 ], [ %0, %for.cond ]
  %m.1 = phi i32 [ %inc8, %for.cond3 ], [ %m.0, %for.cond ]
  %indvars.iv.next47 = add i64 %indvars.iv46, -1, !dbg !357
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next47, !dbg !357
  %2 = load i32* %arrayidx5, align 4, !dbg !357, !tbaa !95
  %cmp6 = icmp eq i32 %2, 13, !dbg !357
  %inc8 = add nsw i32 %m.1, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata !{i32 %inc8}, i64 0, metadata !68), !dbg !359
  br i1 %cmp6, label %for.cond3, label %for.cond12, !dbg !357

for.cond12:                                       ; preds = %for.cond3, %for.cond12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond12 ], [ %0, %for.cond3 ]
  %m.2 = phi i32 [ %inc17, %for.cond12 ], [ %m.1, %for.cond3 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 1, !dbg !360
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next45, !dbg !360
  %3 = load i32* %arrayidx14, align 4, !dbg !360, !tbaa !95
  %cmp15 = icmp eq i32 %3, 13, !dbg !360
  %inc17 = add nsw i32 %m.2, 1, !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !68), !dbg !362
  br i1 %cmp15, label %for.cond12, label %for.cond22, !dbg !360

for.cond22:                                       ; preds = %for.cond12, %for.cond22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond22 ], [ %0, %for.cond12 ]
  %m.3 = phi i32 [ %inc27, %for.cond22 ], [ %m.2, %for.cond12 ]
  %indvars.iv.next = add i64 %indvars.iv, 12, !dbg !363
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !363
  %4 = load i32* %arrayidx24, align 4, !dbg !363, !tbaa !95
  %cmp25 = icmp eq i32 %4, 13, !dbg !363
  %inc27 = add nsw i32 %m.3, 1, !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %inc27}, i64 0, metadata !68), !dbg !365
  br i1 %cmp25, label %for.cond22, label %for.end30, !dbg !363

for.end30:                                        ; preds = %for.cond22
  %shl = shl i32 %m.3, 2, !dbg !366
  ret i32 %shl, !dbg !366
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @s_bishop_mobility(i32 %square) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !61), !dbg !367
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !63), !dbg !368
  %0 = sext i32 %square to i64
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond ], [ %0, %entry ]
  %m.0 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, -13, !dbg !369
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next49, !dbg !369
  %1 = load i32* %arrayidx, align 4, !dbg !369, !tbaa !95
  %cmp = icmp eq i32 %1, 13, !dbg !369
  %inc = add nsw i32 %m.0, 1, !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !63), !dbg !371
  br i1 %cmp, label %for.cond, label %for.cond3, !dbg !369

for.cond3:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond3 ], [ %0, %for.cond ]
  %m.1 = phi i32 [ %inc8, %for.cond3 ], [ %m.0, %for.cond ]
  %indvars.iv.next47 = add i64 %indvars.iv46, -11, !dbg !372
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next47, !dbg !372
  %2 = load i32* %arrayidx5, align 4, !dbg !372, !tbaa !95
  %cmp6 = icmp eq i32 %2, 13, !dbg !372
  %inc8 = add nsw i32 %m.1, 1, !dbg !374
  tail call void @llvm.dbg.value(metadata !{i32 %inc8}, i64 0, metadata !63), !dbg !374
  br i1 %cmp6, label %for.cond3, label %for.cond12, !dbg !372

for.cond12:                                       ; preds = %for.cond3, %for.cond12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond12 ], [ %0, %for.cond3 ]
  %m.2 = phi i32 [ %inc17, %for.cond12 ], [ %m.1, %for.cond3 ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 11, !dbg !375
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next45, !dbg !375
  %3 = load i32* %arrayidx14, align 4, !dbg !375, !tbaa !95
  %cmp15 = icmp eq i32 %3, 13, !dbg !375
  %inc17 = add nsw i32 %m.2, 1, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !63), !dbg !377
  br i1 %cmp15, label %for.cond12, label %for.cond22, !dbg !375

for.cond22:                                       ; preds = %for.cond12, %for.cond22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond22 ], [ %0, %for.cond12 ]
  %m.3 = phi i32 [ %inc27, %for.cond22 ], [ %m.2, %for.cond12 ]
  %indvars.iv.next = add i64 %indvars.iv, 13, !dbg !378
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !378
  %4 = load i32* %arrayidx24, align 4, !dbg !378, !tbaa !95
  %cmp25 = icmp eq i32 %4, 13, !dbg !378
  %inc27 = add nsw i32 %m.3, 1, !dbg !380
  tail call void @llvm.dbg.value(metadata !{i32 %inc27}, i64 0, metadata !63), !dbg !380
  br i1 %cmp25, label %for.cond22, label %for.end30, !dbg !378

for.end30:                                        ; preds = %for.cond22
  %shl = shl i32 %m.3, 2, !dbg !381
  ret i32 %shl, !dbg !381
}

; Function Attrs: optsize
declare void @storeECache(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #3

; Function Attrs: optsize
declare i32 @calc_attackers(i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !81, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !15, metadata !47, metadata !54, metadata !59, metadata !64, metadata !69, metadata !73, metadata !77}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"suicide_eval", metadata !"suicide_eval", metadata !"", i32 268, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @suicide_eval, null, null, metadata !8, i32 268} ; [ DW_TAG_subprogram ] [line 268] [def] [suicide_eval]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"suicide_mid_eval", metadata !"suicide_mid_eval", metadata !"", i32 274, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @suicide_mid_eval, null, null, metadata !16, i32 274} ; [ DW_TAG_subprogram ] [line 274] [def] [suicide_mid_eval]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!17 = metadata !{i32 786688, metadata !15, metadata !"srank", metadata !11, i32 278, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [srank] [line 278]
!18 = metadata !{i32 786688, metadata !15, metadata !"pawn_file", metadata !11, i32 278, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawn_file] [line 278]
!19 = metadata !{i32 786688, metadata !15, metadata !"pawns", metadata !11, i32 278, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawns] [line 278]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 704, i64 32, i32 0, i32 0, metadata !14, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 704, align 32, offset 0] [from int]
!21 = metadata !{metadata !22, metadata !23}
!22 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!23 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ] [0, 10]
!24 = metadata !{i32 786688, metadata !15, metadata !"white_back_pawn", metadata !11, i32 278, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [white_back_pawn] [line 278]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 352, i64 32, i32 0, i32 0, metadata !14, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 352, align 32, offset 0] [from int]
!26 = metadata !{metadata !23}
!27 = metadata !{i32 786688, metadata !15, metadata !"black_back_pawn", metadata !11, i32 278, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [black_back_pawn] [line 278]
!28 = metadata !{i32 786688, metadata !15, metadata !"isolated", metadata !11, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isolated] [line 279]
!29 = metadata !{i32 786688, metadata !15, metadata !"backwards", metadata !11, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backwards] [line 279]
!30 = metadata !{i32 786688, metadata !15, metadata !"i", metadata !11, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 279]
!31 = metadata !{i32 786688, metadata !15, metadata !"a", metadata !11, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 279]
!32 = metadata !{i32 786688, metadata !15, metadata !"j", metadata !11, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 279]
!33 = metadata !{i32 786688, metadata !15, metadata !"score", metadata !11, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 280]
!34 = metadata !{i32 786688, metadata !15, metadata !"in_cache", metadata !11, i32 281, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_cache] [line 281]
!35 = metadata !{i32 786688, metadata !15, metadata !"wb", metadata !11, i32 282, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wb] [line 282]
!36 = metadata !{i32 786688, metadata !15, metadata !"bb", metadata !11, i32 282, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bb] [line 282]
!37 = metadata !{i32 786688, metadata !15, metadata !"wbc", metadata !11, i32 282, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wbc] [line 282]
!38 = metadata !{i32 786688, metadata !15, metadata !"bbc", metadata !11, i32 282, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bbc] [line 282]
!39 = metadata !{i32 786688, metadata !15, metadata !"wk", metadata !11, i32 283, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wk] [line 283]
!40 = metadata !{i32 786688, metadata !15, metadata !"bk", metadata !11, i32 283, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bk] [line 283]
!41 = metadata !{i32 786688, metadata !15, metadata !"wr", metadata !11, i32 283, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wr] [line 283]
!42 = metadata !{i32 786688, metadata !15, metadata !"br", metadata !11, i32 283, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br] [line 283]
!43 = metadata !{i32 786688, metadata !15, metadata !"wn", metadata !11, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wn] [line 284]
!44 = metadata !{i32 786688, metadata !15, metadata !"bn", metadata !11, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bn] [line 284]
!45 = metadata !{i32 786688, metadata !15, metadata !"wp", metadata !11, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wp] [line 284]
!46 = metadata !{i32 786688, metadata !15, metadata !"bp", metadata !11, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 284]
!47 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"s_king_mobility", metadata !"s_king_mobility", metadata !"", i32 95, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !50, i32 96} ; [ DW_TAG_subprogram ] [line 95] [local] [def] [scope 96] [s_king_mobility]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !14, metadata !14}
!50 = metadata !{metadata !51, metadata !52, metadata !53}
!51 = metadata !{i32 786689, metadata !47, metadata !"square", metadata !11, i32 16777311, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 95]
!52 = metadata !{i32 786688, metadata !47, metadata !"d", metadata !11, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 97]
!53 = metadata !{i32 786688, metadata !47, metadata !"m", metadata !11, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 97]
!54 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"s_knight_mobility", metadata !"s_knight_mobility", metadata !"", i32 67, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !55, i32 68} ; [ DW_TAG_subprogram ] [line 67] [local] [def] [scope 68] [s_knight_mobility]
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786689, metadata !54, metadata !"square", metadata !11, i32 16777283, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 67]
!57 = metadata !{i32 786688, metadata !54, metadata !"d", metadata !11, i32 69, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 69]
!58 = metadata !{i32 786688, metadata !54, metadata !"m", metadata !11, i32 69, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 69]
!59 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"s_bishop_mobility", metadata !"s_bishop_mobility", metadata !"", i32 33, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @s_bishop_mobility, null, null, metadata !60, i32 34} ; [ DW_TAG_subprogram ] [line 33] [local] [def] [scope 34] [s_bishop_mobility]
!60 = metadata !{metadata !61, metadata !62, metadata !63}
!61 = metadata !{i32 786689, metadata !59, metadata !"square", metadata !11, i32 16777249, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 33]
!62 = metadata !{i32 786688, metadata !59, metadata !"l", metadata !11, i32 35, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 35]
!63 = metadata !{i32 786688, metadata !59, metadata !"m", metadata !11, i32 36, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 36]
!64 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"s_rook_mobility", metadata !"s_rook_mobility", metadata !"", i32 50, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @s_rook_mobility, null, null, metadata !65, i32 51} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [scope 51] [s_rook_mobility]
!65 = metadata !{metadata !66, metadata !67, metadata !68}
!66 = metadata !{i32 786689, metadata !64, metadata !"square", metadata !11, i32 16777266, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 50]
!67 = metadata !{i32 786688, metadata !64, metadata !"l", metadata !11, i32 52, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 52]
!68 = metadata !{i32 786688, metadata !64, metadata !"m", metadata !11, i32 53, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 53]
!69 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"white_saccers", metadata !"white_saccers", metadata !"", i32 186, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !70, i32 187} ; [ DW_TAG_subprogram ] [line 186] [local] [def] [scope 187] [white_saccers]
!70 = metadata !{metadata !71, metadata !72}
!71 = metadata !{i32 786689, metadata !69, metadata !"square", metadata !11, i32 16777402, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 186]
!72 = metadata !{i32 786688, metadata !69, metadata !"f", metadata !11, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 191]
!73 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"black_saccers", metadata !"black_saccers", metadata !"", i32 107, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !74, i32 108} ; [ DW_TAG_subprogram ] [line 107] [local] [def] [scope 108] [black_saccers]
!74 = metadata !{metadata !75, metadata !76}
!75 = metadata !{i32 786689, metadata !73, metadata !"square", metadata !11, i32 16777323, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 107]
!76 = metadata !{i32 786688, metadata !73, metadata !"f", metadata !11, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 109]
!77 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"s_pawn_mobility", metadata !"s_pawn_mobility", metadata !"", i32 79, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @s_pawn_mobility, null, null, metadata !78, i32 80} ; [ DW_TAG_subprogram ] [line 79] [local] [def] [scope 80] [s_pawn_mobility]
!78 = metadata !{metadata !79, metadata !80}
!79 = metadata !{i32 786689, metadata !77, metadata !"square", metadata !11, i32 16777295, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 79]
!80 = metadata !{i32 786688, metadata !77, metadata !"m", metadata !11, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 81]
!81 = metadata !{metadata !82, metadata !87, metadata !88}
!82 = metadata !{i32 786484, i32 0, null, metadata !"king_o", metadata !"king_o", metadata !"", metadata !11, i32 31, metadata !83, i32 1, i32 1, [8 x i32]* @king_o, null} ; [ DW_TAG_variable ] [king_o] [line 31] [local] [def]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !84, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!84 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!87 = metadata !{i32 786484, i32 0, null, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 30, metadata !83, i32 1, i32 1, [8 x i32]* @knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 30] [local] [def]
!88 = metadata !{i32 786484, i32 0, null, metadata !"scentral", metadata !"scentral", metadata !"", metadata !11, i32 14, metadata !89, i32 1, i32 1, [144 x i32]* @scentral, null} ; [ DW_TAG_variable ] [scentral] [line 14] [local] [def]
!89 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !14, metadata !90, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4608, align 32, offset 0] [from int]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786465, i64 0, i64 144}      ; [ DW_TAG_subrange_type ] [0, 143]
!92 = metadata !{i32 271, i32 0, metadata !10, null}
!93 = metadata !{i32 278, i32 0, metadata !15, null}
!94 = metadata !{i32 280, i32 0, metadata !15, null}
!95 = metadata !{metadata !"int", metadata !96}
!96 = metadata !{metadata !"omnipotent char", metadata !97}
!97 = metadata !{metadata !"Simple C/C++ TBAA"}
!98 = metadata !{i32 281, i32 0, metadata !15, null}
!99 = metadata !{i32 282, i32 0, metadata !15, null}
!100 = metadata !{i32 283, i32 0, metadata !15, null}
!101 = metadata !{i32 284, i32 0, metadata !15, null}
!102 = metadata !{i32 286, i32 0, metadata !15, null}
!103 = metadata !{i32 288, i32 0, metadata !15, null}
!104 = metadata !{i32 290, i32 0, metadata !15, null}
!105 = metadata !{i32 292, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !15, i32 291, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!107 = metadata !{i32 293, i32 0, metadata !106, null}
!108 = metadata !{i32 296, i32 0, metadata !15, null}
!109 = metadata !{i32 301, i32 0, metadata !15, null}
!110 = metadata !{i32 302, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !15, i32 302, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!112 = metadata !{i32 306, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !15, i32 306, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!114 = metadata !{i32 303, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !111, i32 302, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!116 = metadata !{i32 304, i32 0, metadata !115, null}
!117 = metadata !{i32 334, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !15, i32 334, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!119 = metadata !{i32 307, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !113, i32 306, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!121 = metadata !{i32 309, i32 0, metadata !120, null}
!122 = metadata !{i32 312, i32 0, metadata !120, null}
!123 = metadata !{i32 314, i32 0, metadata !120, null}
!124 = metadata !{i32 316, i32 0, metadata !120, null}
!125 = metadata !{i32 317, i32 0, metadata !120, null}
!126 = metadata !{i32 318, i32 0, metadata !120, null}
!127 = metadata !{i32 319, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !120, i32 318, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!129 = metadata !{i32 320, i32 0, metadata !128, null}
!130 = metadata !{i32 321, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !128, i32 320, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!132 = metadata !{i32 322, i32 0, metadata !131, null}
!133 = metadata !{i32 325, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !120, i32 324, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!135 = metadata !{i32 326, i32 0, metadata !134, null}
!136 = metadata !{i32 327, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !134, i32 326, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!138 = metadata !{i32 328, i32 0, metadata !137, null}
!139 = metadata !{i32 335, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !118, i32 334, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!141 = metadata !{i32 337, i32 0, metadata !140, null}
!142 = metadata !{i32 340, i32 0, metadata !140, null}
!143 = metadata !{i32 342, i32 0, metadata !140, null}
!144 = metadata !{i32 343, i32 0, metadata !140, null}
!145 = metadata !{i32 344, i32 0, metadata !140, null}
!146 = metadata !{i32 346, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !140, i32 344, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!148 = metadata !{i32 347, i32 0, metadata !147, null}
!149 = metadata !{i32 786689, metadata !73, metadata !"square", metadata !11, i32 16777323, metadata !14, i32 0, metadata !150} ; [ DW_TAG_arg_variable ] [square] [line 107]
!150 = metadata !{i32 348, i32 0, metadata !147, null}
!151 = metadata !{i32 107, i32 0, metadata !73, metadata !150}
!152 = metadata !{i32 786688, metadata !73, metadata !"f", metadata !11, i32 109, metadata !14, i32 0, metadata !150} ; [ DW_TAG_auto_variable ] [f] [line 109]
!153 = metadata !{i32 109, i32 0, metadata !73, metadata !150}
!154 = metadata !{i32 117, i32 0, metadata !73, metadata !150}
!155 = metadata !{i32 126, i32 0, metadata !73, metadata !150}
!156 = metadata !{i32 133, i32 0, metadata !73, metadata !150}
!157 = metadata !{i32 142, i32 0, metadata !158, metadata !150}
!158 = metadata !{i32 786443, metadata !1, metadata !73, i32 141, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!159 = metadata !{i32 144, i32 0, metadata !73, metadata !150}
!160 = metadata !{i32 146, i32 0, metadata !161, metadata !150}
!161 = metadata !{i32 786443, metadata !1, metadata !73, i32 145, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!162 = metadata !{i32 147, i32 0, metadata !161, metadata !150}
!163 = metadata !{i32 149, i32 0, metadata !73, metadata !150}
!164 = metadata !{i32 159, i32 0, metadata !165, metadata !150}
!165 = metadata !{i32 786443, metadata !1, metadata !166, i32 158, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!166 = metadata !{i32 786443, metadata !1, metadata !73, i32 154, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!167 = metadata !{i32 162, i32 0, metadata !168, metadata !150}
!168 = metadata !{i32 786443, metadata !1, metadata !165, i32 160, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!169 = metadata !{i32 172, i32 0, metadata !170, metadata !150}
!170 = metadata !{i32 786443, metadata !1, metadata !166, i32 171, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!171 = metadata !{i32 174, i32 0, metadata !172, metadata !150}
!172 = metadata !{i32 786443, metadata !1, metadata !170, i32 173, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!173 = metadata !{i32 350, i32 0, metadata !147, null}
!174 = metadata !{i32 351, i32 0, metadata !147, null}
!175 = metadata !{i32 354, i32 0, metadata !147, null}
!176 = metadata !{i32 356, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !147, i32 355, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!178 = metadata !{i32 1}
!179 = metadata !{i32 357, i32 0, metadata !177, null}
!180 = metadata !{i32 359, i32 0, metadata !177, null}
!181 = metadata !{i32 360, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !177, i32 359, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!183 = metadata !{i32 361, i32 0, metadata !182, null}
!184 = metadata !{i32 362, i32 0, metadata !182, null}
!185 = metadata !{i32 365, i32 0, metadata !147, null}
!186 = metadata !{i32 366, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !147, i32 365, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!188 = metadata !{i32 367, i32 0, metadata !187, null}
!189 = metadata !{i32 370, i32 0, metadata !147, null}
!190 = metadata !{i32 371, i32 0, metadata !147, null}
!191 = metadata !{i32 373, i32 0, metadata !147, null}
!192 = metadata !{i32 375, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !147, i32 374, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!194 = metadata !{i32 378, i32 0, metadata !193, null}
!195 = metadata !{i32 379, i32 0, metadata !193, null}
!196 = metadata !{i32 382, i32 0, metadata !193, null}
!197 = metadata !{i32 384, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !193, i32 383, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!199 = metadata !{i32 385, i32 0, metadata !198, null}
!200 = metadata !{i32 389, i32 0, metadata !147, null}
!201 = metadata !{i32 390, i32 0, metadata !147, null}
!202 = metadata !{i32 395, i32 0, metadata !147, null}
!203 = metadata !{i32 396, i32 0, metadata !147, null}
!204 = metadata !{i32 786689, metadata !69, metadata !"square", metadata !11, i32 16777402, metadata !14, i32 0, metadata !205} ; [ DW_TAG_arg_variable ] [square] [line 186]
!205 = metadata !{i32 397, i32 0, metadata !147, null}
!206 = metadata !{i32 186, i32 0, metadata !69, metadata !205}
!207 = metadata !{i32 786688, metadata !69, metadata !"f", metadata !11, i32 191, metadata !14, i32 0, metadata !205} ; [ DW_TAG_auto_variable ] [f] [line 191]
!208 = metadata !{i32 191, i32 0, metadata !69, metadata !205}
!209 = metadata !{i32 199, i32 0, metadata !69, metadata !205}
!210 = metadata !{i32 208, i32 0, metadata !69, metadata !205}
!211 = metadata !{i32 215, i32 0, metadata !69, metadata !205}
!212 = metadata !{i32 224, i32 0, metadata !213, metadata !205}
!213 = metadata !{i32 786443, metadata !1, metadata !69, i32 223, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!214 = metadata !{i32 226, i32 0, metadata !69, metadata !205}
!215 = metadata !{i32 228, i32 0, metadata !216, metadata !205}
!216 = metadata !{i32 786443, metadata !1, metadata !69, i32 227, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!217 = metadata !{i32 229, i32 0, metadata !216, metadata !205}
!218 = metadata !{i32 231, i32 0, metadata !69, metadata !205}
!219 = metadata !{i32 241, i32 0, metadata !220, metadata !205}
!220 = metadata !{i32 786443, metadata !1, metadata !221, i32 240, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!221 = metadata !{i32 786443, metadata !1, metadata !69, i32 236, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!222 = metadata !{i32 244, i32 0, metadata !223, metadata !205}
!223 = metadata !{i32 786443, metadata !1, metadata !220, i32 242, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!224 = metadata !{i32 254, i32 0, metadata !225, metadata !205}
!225 = metadata !{i32 786443, metadata !1, metadata !221, i32 253, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!226 = metadata !{i32 256, i32 0, metadata !227, metadata !205}
!227 = metadata !{i32 786443, metadata !1, metadata !225, i32 255, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!228 = metadata !{i32 398, i32 0, metadata !147, null}
!229 = metadata !{i32 399, i32 0, metadata !147, null}
!230 = metadata !{i32 402, i32 0, metadata !147, null}
!231 = metadata !{i32 404, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !147, i32 403, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!233 = metadata !{i32 405, i32 0, metadata !232, null}
!234 = metadata !{i32 407, i32 0, metadata !232, null}
!235 = metadata !{i32 408, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !232, i32 407, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!237 = metadata !{i32 409, i32 0, metadata !236, null}
!238 = metadata !{i32 410, i32 0, metadata !236, null}
!239 = metadata !{i32 413, i32 0, metadata !147, null}
!240 = metadata !{i32 414, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !147, i32 413, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!242 = metadata !{i32 415, i32 0, metadata !241, null}
!243 = metadata !{i32 418, i32 0, metadata !147, null}
!244 = metadata !{i32 419, i32 0, metadata !147, null}
!245 = metadata !{i32 421, i32 0, metadata !147, null}
!246 = metadata !{i32 423, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !147, i32 422, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!248 = metadata !{i32 426, i32 0, metadata !247, null}
!249 = metadata !{i32 427, i32 0, metadata !247, null}
!250 = metadata !{i32 430, i32 0, metadata !247, null}
!251 = metadata !{i32 432, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !247, i32 431, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!253 = metadata !{i32 433, i32 0, metadata !252, null}
!254 = metadata !{i32 436, i32 0, metadata !147, null}
!255 = metadata !{i32 437, i32 0, metadata !147, null}
!256 = metadata !{i32 442, i32 0, metadata !147, null}
!257 = metadata !{i32 443, i32 0, metadata !147, null}
!258 = metadata !{i32 445, i32 0, metadata !147, null}
!259 = metadata !{i32 448, i32 0, metadata !147, null}
!260 = metadata !{i32 449, i32 0, metadata !147, null}
!261 = metadata !{i32 451, i32 0, metadata !147, null}
!262 = metadata !{i32 454, i32 0, metadata !147, null}
!263 = metadata !{i32 455, i32 0, metadata !147, null}
!264 = metadata !{i32 456, i32 0, metadata !147, null}
!265 = metadata !{i32 462, i32 0, metadata !147, null}
!266 = metadata !{i32 458, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !147, i32 457, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!268 = metadata !{i32 99}
!269 = metadata !{i32 459, i32 0, metadata !267, null}
!270 = metadata !{i32 466, i32 0, metadata !147, null}
!271 = metadata !{i32 467, i32 0, metadata !147, null}
!272 = metadata !{i32 468, i32 0, metadata !147, null}
!273 = metadata !{i32 475, i32 0, metadata !147, null}
!274 = metadata !{i32 471, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !147, i32 469, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!276 = metadata !{i32 472, i32 0, metadata !275, null}
!277 = metadata !{i32 479, i32 0, metadata !147, null}
!278 = metadata !{i32 786689, metadata !54, metadata !"square", metadata !11, i32 16777283, metadata !14, i32 0, metadata !279} ; [ DW_TAG_arg_variable ] [square] [line 67]
!279 = metadata !{i32 480, i32 0, metadata !147, null}
!280 = metadata !{i32 67, i32 0, metadata !54, metadata !279}
!281 = metadata !{i32 786688, metadata !54, metadata !"m", metadata !11, i32 69, metadata !14, i32 0, metadata !279} ; [ DW_TAG_auto_variable ] [m] [line 69]
!282 = metadata !{i32 69, i32 0, metadata !54, metadata !279}
!283 = metadata !{i32 786688, metadata !54, metadata !"d", metadata !11, i32 69, metadata !14, i32 0, metadata !279} ; [ DW_TAG_auto_variable ] [d] [line 69]
!284 = metadata !{i32 71, i32 0, metadata !285, metadata !279}
!285 = metadata !{i32 786443, metadata !1, metadata !54, i32 71, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!286 = metadata !{i32 73, i32 0, metadata !287, metadata !279}
!287 = metadata !{i32 786443, metadata !1, metadata !285, i32 72, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!288 = metadata !{i32 76, i32 0, metadata !54, metadata !279}
!289 = metadata !{i32 482, i32 0, metadata !147, null}
!290 = metadata !{i32 485, i32 0, metadata !147, null}
!291 = metadata !{i32 786689, metadata !54, metadata !"square", metadata !11, i32 16777283, metadata !14, i32 0, metadata !292} ; [ DW_TAG_arg_variable ] [square] [line 67]
!292 = metadata !{i32 486, i32 0, metadata !147, null}
!293 = metadata !{i32 67, i32 0, metadata !54, metadata !292}
!294 = metadata !{i32 786688, metadata !54, metadata !"m", metadata !11, i32 69, metadata !14, i32 0, metadata !292} ; [ DW_TAG_auto_variable ] [m] [line 69]
!295 = metadata !{i32 69, i32 0, metadata !54, metadata !292}
!296 = metadata !{i32 786688, metadata !54, metadata !"d", metadata !11, i32 69, metadata !14, i32 0, metadata !292} ; [ DW_TAG_auto_variable ] [d] [line 69]
!297 = metadata !{i32 71, i32 0, metadata !285, metadata !292}
!298 = metadata !{i32 73, i32 0, metadata !287, metadata !292}
!299 = metadata !{i32 76, i32 0, metadata !54, metadata !292}
!300 = metadata !{i32 488, i32 0, metadata !147, null}
!301 = metadata !{i32 491, i32 0, metadata !147, null}
!302 = metadata !{i32 492, i32 0, metadata !147, null}
!303 = metadata !{i32 493, i32 0, metadata !147, null}
!304 = metadata !{i32 494, i32 0, metadata !147, null}
!305 = metadata !{i32 497, i32 0, metadata !147, null}
!306 = metadata !{i32 498, i32 0, metadata !147, null}
!307 = metadata !{i32 499, i32 0, metadata !147, null}
!308 = metadata !{i32 500, i32 0, metadata !147, null}
!309 = metadata !{i32 503, i32 0, metadata !147, null}
!310 = metadata !{i32 786689, metadata !47, metadata !"square", metadata !11, i32 16777311, metadata !14, i32 0, metadata !311} ; [ DW_TAG_arg_variable ] [square] [line 95]
!311 = metadata !{i32 504, i32 0, metadata !147, null}
!312 = metadata !{i32 95, i32 0, metadata !47, metadata !311}
!313 = metadata !{i32 786688, metadata !47, metadata !"m", metadata !11, i32 97, metadata !14, i32 0, metadata !311} ; [ DW_TAG_auto_variable ] [m] [line 97]
!314 = metadata !{i32 97, i32 0, metadata !47, metadata !311}
!315 = metadata !{i32 786688, metadata !47, metadata !"d", metadata !11, i32 97, metadata !14, i32 0, metadata !311} ; [ DW_TAG_auto_variable ] [d] [line 97]
!316 = metadata !{i32 99, i32 0, metadata !317, metadata !311}
!317 = metadata !{i32 786443, metadata !1, metadata !47, i32 99, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!318 = metadata !{i32 101, i32 0, metadata !319, metadata !311}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 100, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!320 = metadata !{i32 104, i32 0, metadata !47, metadata !311}
!321 = metadata !{i32 506, i32 0, metadata !147, null}
!322 = metadata !{i32 509, i32 0, metadata !147, null}
!323 = metadata !{i32 786689, metadata !47, metadata !"square", metadata !11, i32 16777311, metadata !14, i32 0, metadata !324} ; [ DW_TAG_arg_variable ] [square] [line 95]
!324 = metadata !{i32 510, i32 0, metadata !147, null}
!325 = metadata !{i32 95, i32 0, metadata !47, metadata !324}
!326 = metadata !{i32 786688, metadata !47, metadata !"m", metadata !11, i32 97, metadata !14, i32 0, metadata !324} ; [ DW_TAG_auto_variable ] [m] [line 97]
!327 = metadata !{i32 97, i32 0, metadata !47, metadata !324}
!328 = metadata !{i32 786688, metadata !47, metadata !"d", metadata !11, i32 97, metadata !14, i32 0, metadata !324} ; [ DW_TAG_auto_variable ] [d] [line 97]
!329 = metadata !{i32 99, i32 0, metadata !317, metadata !324}
!330 = metadata !{i32 101, i32 0, metadata !319, metadata !324}
!331 = metadata !{i32 104, i32 0, metadata !47, metadata !324}
!332 = metadata !{i32 512, i32 0, metadata !147, null}
!333 = metadata !{i32 517, i32 0, metadata !15, null}
!334 = metadata !{i32 519, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !15, i32 518, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!336 = metadata !{i32 520, i32 0, metadata !335, null}
!337 = metadata !{i32 522, i32 0, metadata !15, null}
!338 = metadata !{i32 525, i32 0, metadata !15, null}
!339 = metadata !{i32 526, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !15, i32 525, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!341 = metadata !{i32 529, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !15, i32 528, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!343 = metadata !{i32 532, i32 0, metadata !15, null}
!344 = metadata !{i32 79, i32 0, metadata !77, null}
!345 = metadata !{i32 81, i32 0, metadata !77, null}
!346 = metadata !{i32 83, i32 0, metadata !77, null}
!347 = metadata !{i32 85, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !77, i32 84, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!349 = metadata !{i32 89, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !77, i32 88, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!351 = metadata !{i32 92, i32 0, metadata !77, null}
!352 = metadata !{i32 50, i32 0, metadata !64, null}
!353 = metadata !{i32 53, i32 0, metadata !64, null}
!354 = metadata !{i32 55, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !64, i32 55, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!356 = metadata !{i32 56, i32 0, metadata !355, null}
!357 = metadata !{i32 57, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !64, i32 57, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!359 = metadata !{i32 58, i32 0, metadata !358, null} ; [ DW_TAG_imported_module ]
!360 = metadata !{i32 59, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !64, i32 59, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!362 = metadata !{i32 60, i32 0, metadata !361, null}
!363 = metadata !{i32 61, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !64, i32 61, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!365 = metadata !{i32 62, i32 0, metadata !364, null}
!366 = metadata !{i32 64, i32 0, metadata !64, null}
!367 = metadata !{i32 33, i32 0, metadata !59, null}
!368 = metadata !{i32 36, i32 0, metadata !59, null}
!369 = metadata !{i32 38, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !59, i32 38, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!371 = metadata !{i32 39, i32 0, metadata !370, null}
!372 = metadata !{i32 40, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !59, i32 40, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!374 = metadata !{i32 41, i32 0, metadata !373, null}
!375 = metadata !{i32 42, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !59, i32 42, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!377 = metadata !{i32 43, i32 0, metadata !376, null}
!378 = metadata !{i32 44, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !59, i32 44, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/seval.c]
!380 = metadata !{i32 45, i32 0, metadata !379, null}
!381 = metadata !{i32 47, i32 0, metadata !59, null}
