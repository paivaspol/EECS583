; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@searching_pv = external global i32
@material = external global [14 x i32]
@board = external global [144 x i32]
@white_to_move = external global i32
@ply = external global i32
@pv = external global [300 x [300 x %struct.move_s]]
@i_depth = external global i32
@history_h = external global [144 x [144 x i32]]
@killer1 = external global [300 x %struct.move_s]
@killer2 = external global [300 x %struct.move_s]
@killer3 = external global [300 x %struct.move_s]
@nodes = external global i32
@rootnodecount = common global [512 x i32] zeroinitializer, align 16
@raw_nodes = external global i32
@numb_moves = external global i32
@pv_length = external global [300 x i32]
@time_exit = external global i32
@start_time = external global i64
@time_for_move = external global i32
@failed = common global i32 0, align 4
@extendedtime = common global i32 0, align 4
@fixed_time = external global i32
@go_fast = external global i32
@Variant = external global i32
@time_left = external global i32
@.str = private unnamed_addr constant [38 x i8] c"Extended from %d to %d, time left %d\0A\00", align 1
@qnodes = external global i32
@kingcap = external global i32
@search.rc_index = internal unnamed_addr constant [14 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 5, i32 5, i32 3, i32 3, i32 4, i32 4, i32 2, i32 2, i32 0], align 16
@checks = common global [300 x i32] zeroinitializer, align 16
@singular = common global [300 x i32] zeroinitializer, align 16
@recaps = common global [300 x i32] zeroinitializer, align 16
@ext_check = external global i32
@cfg_recap = external global i32
@path = external global [300 x %struct.move_s]
@ext_recap = common global i32 0, align 4
@captures = external global i32
@ep_square = external global i32
@phase = external global i32
@fifty = external global i32
@hash = external global i32
@NTries = external global i32
@NCuts = external global i32
@TExt = external global i32
@ext_onerep = common global i32 0, align 4
@cfg_onerep = external global i32
@cfg_futprune = external global i32
@Material = external global i32
@move_number = external global i32
@hash_history = external global [600 x i32]
@Xrank = external constant [144 x i32]
@cfg_razordrop = external global i32
@razor_drop = common global i32 0, align 4
@cfg_cutdrop = external global i32
@drop_cuts = common global i32 0, align 4
@FULL = external global i32
@PVS = external global i32
@PVSF = external global i32
@razor_material = common global i32 0, align 4
@killer_scores = external global [300 x i32]
@killer_scores2 = external global [300 x i32]
@killer_scores3 = external global [300 x i32]
@FHF = common global i32 0, align 4
@FH = common global i32 0, align 4
@dummy = external global %struct.move_s
@time_failure = external global i32
@cur_score = external global i32
@result = external global i32
@legals = common global i32 0, align 4
@movetotal = common global i32 0, align 4
@alllosers = external global i32
@rootlosers = external global [300 x i32]
@moveleft = common global i32 0, align 4
@searching_move = common global [20 x i8] zeroinitializer, align 16
@post = external global i32
@xb_mode = external global i32
@bestmovenum = common global i32 0, align 4
@is_pondering = external global i32
@userealholdings = external global i32
@ECacheProbes = external global i32
@ECacheHits = external global i32
@TTProbes = external global i32
@TTHits = external global i32
@TTStores = external global i32
@forcedwin = external global i32
@maxposdiff = external global i32
@true_i_depth = common global i8 0, align 1
@is_analyzing = external global i32
@inc = external global i32
@time_cushion = external global i32
@.str4 = private unnamed_addr constant [20 x i8] c"Time for move : %d\0A\00", align 1
@piece_count = external global i32
@pn_time = external global i32
@pn_move = external global %struct.move_s
@maxdepth = external global i32
@postpv = common global [256 x i8] zeroinitializer, align 16
@s_threat = common global i32 0, align 4
@.str5 = private unnamed_addr constant [49 x i8] c"tellics whisper %d restart(s), ended up with %s\0A\00", align 1
@moves_to_tc = external global i32
@.str6 = private unnamed_addr constant [27 x i8] c"tellics kibitz Mate in %d\0A\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"tellics ptell Mate in %d, give him no more pieces.\0A\00", align 1
@tradefreely = common global i32 0, align 4
@must_sit = external global i32
@realholdings = external global [255 x i8]
@partnerdead = external global i32
@ugly_ep_hack = common global i32 0, align 4
@str = private unnamed_addr constant [15 x i8] c"Endgame phase.\00"
@str15 = private unnamed_addr constant [61 x i8] c"tellics ptell I'll have to sit...(lose piece that mates you)\00"
@str16 = private unnamed_addr constant [24 x i8] c"tellics ptell ---trades\00"
@str17 = private unnamed_addr constant [80 x i8] c"tellics ptell I am forcedly mated (dead). Tell me 'go' to start moving into it.\00"
@str18 = private unnamed_addr constant [48 x i8] c"tellics kibitz Both players dead...resigning...\00"
@str19 = private unnamed_addr constant [15 x i8] c"tellics resign\00"
@str20 = private unnamed_addr constant [36 x i8] c"tellics ptell You can trade freely.\00"
@str21 = private unnamed_addr constant [18 x i8] c"Middlegame phase.\00"
@str22 = private unnamed_addr constant [15 x i8] c"Opening phase.\00"

; Function Attrs: nounwind optsize uwtable
define void @order_moves(%struct.move_s* nocapture %moves, i32* nocapture %move_ordering, i32* nocapture %see_values, i32 %num_moves, i32 %best) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !27), !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32* %move_ordering}, i64 0, metadata !28), !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32* %see_values}, i64 0, metadata !29), !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32 %num_moves}, i64 0, metadata !30), !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32 %best}, i64 0, metadata !31), !dbg !282
  %0 = load i32* @searching_pv, align 4, !dbg !283, !tbaa !284
  %tobool = icmp eq i32 %0, 0, !dbg !283
  br i1 %tobool, label %for.cond301.preheader, label %if.then, !dbg !283

for.cond301.preheader:                            ; preds = %entry
  %cmp302762 = icmp sgt i32 %num_moves, 0, !dbg !286
  br i1 %cmp302762, label %for.body303.lr.ph, label %if.end543, !dbg !286

for.body303.lr.ph:                                ; preds = %for.cond301.preheader
  %cmp316 = icmp ne i32 %best, -1, !dbg !289
  %cmp356 = icmp eq i32 %best, -2, !dbg !291
  br label %for.body303, !dbg !286

if.then:                                          ; preds = %entry
  store i32 0, i32* @searching_pv, align 4, !dbg !292, !tbaa !284
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !34), !dbg !294
  %cmp765 = icmp sgt i32 %num_moves, 0, !dbg !294
  br i1 %cmp765, label %for.body.lr.ph, label %if.end543, !dbg !294

for.body.lr.ph:                                   ; preds = %if.then
  %1 = icmp ult i32 %best, -2, !dbg !296
  %cmp146 = icmp eq i32 %best, -2, !dbg !298
  br label %for.body, !dbg !294

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv768 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next769, %for.inc ]
  %from1 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 0, !dbg !299
  %2 = load i32* %from1, align 4, !dbg !299, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !35), !dbg !299
  %target4 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 1, !dbg !301
  %3 = load i32* %target4, align 4, !dbg !301, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !36), !dbg !301
  %promoted7 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 3, !dbg !302
  %4 = load i32* %promoted7, align 4, !dbg !302, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !32), !dbg !302
  %captured10 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 2, !dbg !303
  %5 = load i32* %captured10, align 4, !dbg !303, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !33), !dbg !303
  %cmp11 = icmp ne i32 %5, 13, !dbg !304
  br i1 %cmp11, label %if.then12, label %if.else50, !dbg !304

if.then12:                                        ; preds = %for.body
  %idxprom13 = sext i32 %5 to i64, !dbg !305
  %arrayidx14 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom13, !dbg !305
  %6 = load i32* %arrayidx14, align 4, !dbg !305, !tbaa !300
  %ispos757 = icmp sgt i32 %6, -1, !dbg !305
  %neg758 = sub i32 0, %6, !dbg !305
  %7 = select i1 %ispos757, i32 %6, i32 %neg758, !dbg !305
  %add = add nsw i32 %7, 15, !dbg !305
  %idxprom15 = sext i32 %2 to i64, !dbg !305
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15, !dbg !305
  %8 = load i32* %arrayidx16, align 4, !dbg !305, !tbaa !300
  %idxprom17 = sext i32 %8 to i64, !dbg !305
  %arrayidx18 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom17, !dbg !305
  %9 = load i32* %arrayidx18, align 4, !dbg !305, !tbaa !300
  %ispos759 = icmp sgt i32 %9, -1, !dbg !305
  %neg760 = sub i32 0, %9, !dbg !305
  %10 = select i1 %ispos759, i32 %9, i32 %neg760, !dbg !305
  %cmp20 = icmp slt i32 %add, %10, !dbg !305
  br i1 %cmp20, label %if.else, label %if.then21, !dbg !305

if.then21:                                        ; preds = %if.then12
  %shr = ashr i32 %10, 4, !dbg !307
  %sub = sub nsw i32 %7, %shr, !dbg !307
  %arrayidx31 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !307
  store i32 %sub, i32* %arrayidx31, align 4, !dbg !307, !tbaa !300
  %add34 = add nsw i32 %sub, 50000000, !dbg !309
  %arrayidx36 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !309
  store i32 %add34, i32* %arrayidx36, align 4, !dbg !309, !tbaa !300
  br label %if.end53, !dbg !310

if.else:                                          ; preds = %if.then12
  %11 = load i32* @white_to_move, align 4, !dbg !311, !tbaa !300
  %not.tobool37 = icmp eq i32 %11, 0, !dbg !311
  %cond = zext i1 %not.tobool37 to i32, !dbg !311
  %call38 = tail call i32 @see(i32 %cond, i32 %3, i32 %2) #6, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %call38}, i64 0, metadata !37), !dbg !311
  %cmp39 = icmp sgt i32 %call38, -51, !dbg !313
  br i1 %cmp39, label %if.then40, label %if.else44, !dbg !313

if.then40:                                        ; preds = %if.else
  %add41 = add nsw i32 %call38, 50000000, !dbg !314
  %arrayidx43 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !314
  store i32 %add41, i32* %arrayidx43, align 4, !dbg !314, !tbaa !300
  br label %if.end, !dbg !314

if.else44:                                        ; preds = %if.else
  %arrayidx46 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !315
  store i32 %call38, i32* %arrayidx46, align 4, !dbg !315, !tbaa !300
  br label %if.end

if.end:                                           ; preds = %if.else44, %if.then40
  %arrayidx48 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !316
  store i32 %call38, i32* %arrayidx48, align 4, !dbg !316, !tbaa !300
  br label %if.end53

if.else50:                                        ; preds = %for.body
  %arrayidx52 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !317
  store i32 0, i32* %arrayidx52, align 4, !dbg !317, !tbaa !300
  br label %if.end53

if.end53:                                         ; preds = %if.then21, %if.end, %if.else50
  %12 = load i32* @ply, align 4, !dbg !318, !tbaa !300
  %idxprom54 = sext i32 %12 to i64, !dbg !318
  %from56 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %idxprom54, i32 0, !dbg !318
  %13 = load i32* %from56, align 4, !dbg !318, !tbaa !300
  %cmp57 = icmp eq i32 %2, %13, !dbg !318
  br i1 %cmp57, label %land.lhs.true, label %if.else103, !dbg !318

land.lhs.true:                                    ; preds = %if.end53
  %target60 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %idxprom54, i32 1, !dbg !318
  %14 = load i32* %target60, align 4, !dbg !318, !tbaa !300
  %cmp61 = icmp eq i32 %3, %14, !dbg !318
  br i1 %cmp61, label %land.lhs.true62, label %if.else103, !dbg !318

land.lhs.true62:                                  ; preds = %land.lhs.true
  %promoted65 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %idxprom54, i32 3, !dbg !318
  %15 = load i32* %promoted65, align 4, !dbg !318, !tbaa !300
  %cmp66 = icmp eq i32 %4, %15, !dbg !318
  br i1 %cmp66, label %if.then67, label %if.else103, !dbg !318

if.then67:                                        ; preds = %land.lhs.true62
  store i32 1, i32* @searching_pv, align 4, !dbg !319, !tbaa !284
  %arrayidx69 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !321
  store i32 100000000, i32* %arrayidx69, align 4, !dbg !321, !tbaa !300
  br i1 %cmp11, label %if.then71, label %for.inc, !dbg !322

if.then71:                                        ; preds = %if.then67
  %idxprom72 = sext i32 %5 to i64, !dbg !323
  %arrayidx73 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom72, !dbg !323
  %16 = load i32* %arrayidx73, align 4, !dbg !323, !tbaa !300
  %ispos753 = icmp sgt i32 %16, -1, !dbg !323
  %neg754 = sub i32 0, %16, !dbg !323
  %17 = select i1 %ispos753, i32 %16, i32 %neg754, !dbg !323
  %add75 = add nsw i32 %17, 15, !dbg !323
  %idxprom76 = sext i32 %2 to i64, !dbg !323
  %arrayidx77 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom76, !dbg !323
  %18 = load i32* %arrayidx77, align 4, !dbg !323, !tbaa !300
  %idxprom78 = sext i32 %18 to i64, !dbg !323
  %arrayidx79 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom78, !dbg !323
  %19 = load i32* %arrayidx79, align 4, !dbg !323, !tbaa !300
  %ispos755 = icmp sgt i32 %19, -1, !dbg !323
  %neg756 = sub i32 0, %19, !dbg !323
  %20 = select i1 %ispos755, i32 %19, i32 %neg756, !dbg !323
  %cmp81 = icmp slt i32 %add75, %20, !dbg !323
  br i1 %cmp81, label %if.else95, label %if.then82, !dbg !323

if.then82:                                        ; preds = %if.then71
  %shr91 = ashr i32 %20, 4, !dbg !325
  %sub92 = sub nsw i32 %17, %shr91, !dbg !325
  %arrayidx94 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !325
  store i32 %sub92, i32* %arrayidx94, align 4, !dbg !325, !tbaa !300
  br label %for.inc, !dbg !327

if.else95:                                        ; preds = %if.then71
  %21 = load i32* @white_to_move, align 4, !dbg !328, !tbaa !300
  %not.tobool96 = icmp eq i32 %21, 0, !dbg !328
  %cond97 = zext i1 %not.tobool96 to i32, !dbg !328
  %call98 = tail call i32 @see(i32 %cond97, i32 %3, i32 %2) #6, !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %call98}, i64 0, metadata !37), !dbg !328
  %arrayidx100 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !330
  store i32 %call98, i32* %arrayidx100, align 4, !dbg !330, !tbaa !300
  br label %for.inc

if.else103:                                       ; preds = %land.lhs.true62, %land.lhs.true, %if.end53
  %22 = trunc i64 %indvars.iv768 to i32, !dbg !296
  %cmp108 = icmp eq i32 %22, %best, !dbg !296
  %or.cond = and i1 %1, %cmp108, !dbg !296
  br i1 %or.cond, label %if.then109, label %if.else145, !dbg !296

if.then109:                                       ; preds = %if.else103
  %arrayidx111 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !331
  store i32 100000000, i32* %arrayidx111, align 4, !dbg !331, !tbaa !300
  br i1 %cmp11, label %if.then113, label %for.inc, !dbg !333

if.then113:                                       ; preds = %if.then109
  %idxprom114 = sext i32 %5 to i64, !dbg !334
  %arrayidx115 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom114, !dbg !334
  %23 = load i32* %arrayidx115, align 4, !dbg !334, !tbaa !300
  %ispos749 = icmp sgt i32 %23, -1, !dbg !334
  %neg750 = sub i32 0, %23, !dbg !334
  %24 = select i1 %ispos749, i32 %23, i32 %neg750, !dbg !334
  %add117 = add nsw i32 %24, 15, !dbg !334
  %idxprom118 = sext i32 %2 to i64, !dbg !334
  %arrayidx119 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom118, !dbg !334
  %25 = load i32* %arrayidx119, align 4, !dbg !334, !tbaa !300
  %idxprom120 = sext i32 %25 to i64, !dbg !334
  %arrayidx121 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom120, !dbg !334
  %26 = load i32* %arrayidx121, align 4, !dbg !334, !tbaa !300
  %ispos751 = icmp sgt i32 %26, -1, !dbg !334
  %neg752 = sub i32 0, %26, !dbg !334
  %27 = select i1 %ispos751, i32 %26, i32 %neg752, !dbg !334
  %cmp123 = icmp slt i32 %add117, %27, !dbg !334
  br i1 %cmp123, label %if.else137, label %if.then124, !dbg !334

if.then124:                                       ; preds = %if.then113
  %shr133 = ashr i32 %27, 4, !dbg !336
  %sub134 = sub nsw i32 %24, %shr133, !dbg !336
  %arrayidx136 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !336
  store i32 %sub134, i32* %arrayidx136, align 4, !dbg !336, !tbaa !300
  br label %for.inc, !dbg !338

if.else137:                                       ; preds = %if.then113
  %28 = load i32* @white_to_move, align 4, !dbg !339, !tbaa !300
  %not.tobool138 = icmp eq i32 %28, 0, !dbg !339
  %cond139 = zext i1 %not.tobool138 to i32, !dbg !339
  %call140 = tail call i32 @see(i32 %cond139, i32 %3, i32 %2) #6, !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %call140}, i64 0, metadata !37), !dbg !339
  %arrayidx142 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !341
  store i32 %call140, i32* %arrayidx142, align 4, !dbg !341, !tbaa !300
  br label %for.inc

if.else145:                                       ; preds = %if.else103
  br i1 %cmp146, label %if.then147, label %if.else211, !dbg !298

if.then147:                                       ; preds = %if.else145
  %add148 = add nsw i32 %12, 1, !dbg !342
  %idxprom149 = sext i32 %add148 to i64, !dbg !342
  %from154 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom149, i64 %idxprom149, i32 0, !dbg !342
  %29 = load i32* %from154, align 4, !dbg !342, !tbaa !300
  %cmp155 = icmp eq i32 %2, %29, !dbg !342
  br i1 %cmp155, label %land.lhs.true156, label %for.inc, !dbg !342

land.lhs.true156:                                 ; preds = %if.then147
  %target163 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom149, i64 %idxprom149, i32 1, !dbg !342
  %30 = load i32* %target163, align 4, !dbg !342, !tbaa !300
  %cmp164 = icmp eq i32 %3, %30, !dbg !342
  br i1 %cmp164, label %land.lhs.true165, label %for.inc, !dbg !342

land.lhs.true165:                                 ; preds = %land.lhs.true156
  %promoted172 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom149, i64 %idxprom149, i32 3, !dbg !342
  %31 = load i32* %promoted172, align 4, !dbg !342, !tbaa !300
  %cmp173 = icmp eq i32 %4, %31, !dbg !342
  br i1 %cmp173, label %if.then174, label %for.inc, !dbg !342

if.then174:                                       ; preds = %land.lhs.true165
  %arrayidx176 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !344
  store i32 100000000, i32* %arrayidx176, align 4, !dbg !344, !tbaa !300
  br i1 %cmp11, label %if.then178, label %for.inc, !dbg !346

if.then178:                                       ; preds = %if.then174
  %idxprom179 = sext i32 %5 to i64, !dbg !347
  %arrayidx180 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom179, !dbg !347
  %32 = load i32* %arrayidx180, align 4, !dbg !347, !tbaa !300
  %ispos745 = icmp sgt i32 %32, -1, !dbg !347
  %neg746 = sub i32 0, %32, !dbg !347
  %33 = select i1 %ispos745, i32 %32, i32 %neg746, !dbg !347
  %add182 = add nsw i32 %33, 15, !dbg !347
  %idxprom183 = sext i32 %2 to i64, !dbg !347
  %arrayidx184 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom183, !dbg !347
  %34 = load i32* %arrayidx184, align 4, !dbg !347, !tbaa !300
  %idxprom185 = sext i32 %34 to i64, !dbg !347
  %arrayidx186 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom185, !dbg !347
  %35 = load i32* %arrayidx186, align 4, !dbg !347, !tbaa !300
  %ispos747 = icmp sgt i32 %35, -1, !dbg !347
  %neg748 = sub i32 0, %35, !dbg !347
  %36 = select i1 %ispos747, i32 %35, i32 %neg748, !dbg !347
  %cmp188 = icmp slt i32 %add182, %36, !dbg !347
  br i1 %cmp188, label %if.else202, label %if.then189, !dbg !347

if.then189:                                       ; preds = %if.then178
  %shr198 = ashr i32 %36, 4, !dbg !349
  %sub199 = sub nsw i32 %33, %shr198, !dbg !349
  %arrayidx201 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !349
  store i32 %sub199, i32* %arrayidx201, align 4, !dbg !349, !tbaa !300
  br label %for.inc, !dbg !351

if.else202:                                       ; preds = %if.then178
  %37 = load i32* @white_to_move, align 4, !dbg !352, !tbaa !300
  %not.tobool203 = icmp eq i32 %37, 0, !dbg !352
  %cond204 = zext i1 %not.tobool203 to i32, !dbg !352
  %call205 = tail call i32 @see(i32 %cond204, i32 %3, i32 %2) #6, !dbg !352
  tail call void @llvm.dbg.value(metadata !{i32 %call205}, i64 0, metadata !37), !dbg !352
  %arrayidx207 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768, !dbg !354
  store i32 %call205, i32* %arrayidx207, align 4, !dbg !354, !tbaa !300
  br label %for.inc

if.else211:                                       ; preds = %if.else145
  %cmp212 = icmp ne i32 %12, 1, !dbg !355
  %38 = load i32* @i_depth, align 4, !dbg !355, !tbaa !300
  %cmp213 = icmp slt i32 %38, 2, !dbg !355
  %or.cond544 = or i1 %cmp212, %cmp213, !dbg !355
  br i1 %or.cond544, label %if.then214, label %if.else289, !dbg !355

if.then214:                                       ; preds = %if.else211
  %idxprom215 = sext i32 %3 to i64, !dbg !357
  %idxprom216 = sext i32 %2 to i64, !dbg !357
  %arrayidx218 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom216, i64 %idxprom215, !dbg !357
  %39 = load i32* %arrayidx218, align 4, !dbg !357, !tbaa !300
  %arrayidx220 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !357
  %40 = load i32* %arrayidx220, align 4, !dbg !357, !tbaa !300
  %add221 = add i32 %40, %39, !dbg !357
  store i32 %add221, i32* %arrayidx220, align 4, !dbg !357, !tbaa !300
  %41 = load i32* @ply, align 4, !dbg !359, !tbaa !300
  %idxprom222 = sext i32 %41 to i64, !dbg !359
  %from224 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom222, i32 0, !dbg !359
  %42 = load i32* %from224, align 4, !dbg !359, !tbaa !300
  %cmp225 = icmp eq i32 %2, %42, !dbg !359
  br i1 %cmp225, label %land.lhs.true226, label %if.else240, !dbg !359

land.lhs.true226:                                 ; preds = %if.then214
  %target229 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom222, i32 1, !dbg !359
  %43 = load i32* %target229, align 4, !dbg !359, !tbaa !300
  %cmp230 = icmp eq i32 %3, %43, !dbg !359
  br i1 %cmp230, label %land.lhs.true231, label %if.else240, !dbg !359

land.lhs.true231:                                 ; preds = %land.lhs.true226
  %promoted234 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom222, i32 3, !dbg !359
  %44 = load i32* %promoted234, align 4, !dbg !359, !tbaa !300
  %cmp235 = icmp eq i32 %4, %44, !dbg !359
  br i1 %cmp235, label %if.then236, label %if.else240, !dbg !359

if.then236:                                       ; preds = %land.lhs.true231
  %add239 = add nsw i32 %add221, 25000000, !dbg !360
  store i32 %add239, i32* %arrayidx220, align 4, !dbg !360, !tbaa !300
  br label %for.inc, !dbg !360

if.else240:                                       ; preds = %land.lhs.true231, %land.lhs.true226, %if.then214
  %from243 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom222, i32 0, !dbg !361
  %45 = load i32* %from243, align 4, !dbg !361, !tbaa !300
  %cmp244 = icmp eq i32 %2, %45, !dbg !361
  br i1 %cmp244, label %land.lhs.true245, label %if.else259, !dbg !361

land.lhs.true245:                                 ; preds = %if.else240
  %target248 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom222, i32 1, !dbg !361
  %46 = load i32* %target248, align 4, !dbg !361, !tbaa !300
  %cmp249 = icmp eq i32 %3, %46, !dbg !361
  br i1 %cmp249, label %land.lhs.true250, label %if.else259, !dbg !361

land.lhs.true250:                                 ; preds = %land.lhs.true245
  %promoted253 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom222, i32 3, !dbg !361
  %47 = load i32* %promoted253, align 4, !dbg !361, !tbaa !300
  %cmp254 = icmp eq i32 %4, %47, !dbg !361
  br i1 %cmp254, label %if.then255, label %if.else259, !dbg !361

if.then255:                                       ; preds = %land.lhs.true250
  %add258 = add nsw i32 %add221, 20000000, !dbg !362
  store i32 %add258, i32* %arrayidx220, align 4, !dbg !362, !tbaa !300
  br label %for.inc, !dbg !362

if.else259:                                       ; preds = %land.lhs.true250, %land.lhs.true245, %if.else240
  %from262 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom222, i32 0, !dbg !363
  %48 = load i32* %from262, align 4, !dbg !363, !tbaa !300
  %cmp263 = icmp eq i32 %2, %48, !dbg !363
  br i1 %cmp263, label %land.lhs.true264, label %for.inc, !dbg !363

land.lhs.true264:                                 ; preds = %if.else259
  %target267 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom222, i32 1, !dbg !363
  %49 = load i32* %target267, align 4, !dbg !363, !tbaa !300
  %cmp268 = icmp eq i32 %3, %49, !dbg !363
  br i1 %cmp268, label %land.lhs.true269, label %for.inc, !dbg !363

land.lhs.true269:                                 ; preds = %land.lhs.true264
  %promoted272 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom222, i32 3, !dbg !363
  %50 = load i32* %promoted272, align 4, !dbg !363, !tbaa !300
  %cmp273 = icmp eq i32 %4, %50, !dbg !363
  br i1 %cmp273, label %if.then274, label %for.inc, !dbg !363

if.then274:                                       ; preds = %land.lhs.true269
  %add277 = add nsw i32 %add221, 15000000, !dbg !364
  store i32 %add277, i32* %arrayidx220, align 4, !dbg !364, !tbaa !300
  br label %for.inc, !dbg !364

if.else289:                                       ; preds = %if.else211
  %arrayidx285 = getelementptr inbounds [512 x i32]* @rootnodecount, i64 0, i64 %indvars.iv768, !dbg !365
  %51 = load i32* %arrayidx285, align 4, !dbg !365, !tbaa !300
  %div292 = udiv i32 %51, 100, !dbg !368
  %arrayidx294 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768, !dbg !368
  store i32 %div292, i32* %arrayidx294, align 4, !dbg !368, !tbaa !300
  br label %for.inc

for.inc:                                          ; preds = %if.then82, %if.else95, %if.then67, %if.then174, %if.else202, %if.then189, %land.lhs.true165, %land.lhs.true156, %if.then147, %if.else289, %if.then236, %if.else259, %land.lhs.true264, %land.lhs.true269, %if.then274, %if.then255, %if.then109, %if.else137, %if.then124
  %indvars.iv.next769 = add i64 %indvars.iv768, 1, !dbg !294
  %lftr.wideiv770 = trunc i64 %indvars.iv.next769 to i32, !dbg !294
  %exitcond771 = icmp eq i32 %lftr.wideiv770, %num_moves, !dbg !294
  br i1 %exitcond771, label %if.end543, label %for.body, !dbg !294

for.body303:                                      ; preds = %for.inc540, %for.body303.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body303.lr.ph ], [ %indvars.iv.next, %for.inc540 ]
  %from306 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 0, !dbg !370
  %52 = load i32* %from306, align 4, !dbg !370, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !35), !dbg !370
  %target309 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 1, !dbg !371
  %53 = load i32* %target309, align 4, !dbg !371, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !36), !dbg !371
  %promoted312 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 3, !dbg !372
  %54 = load i32* %promoted312, align 4, !dbg !372, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !32), !dbg !372
  %captured315 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 2, !dbg !373
  %55 = load i32* %captured315, align 4, !dbg !373, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !33), !dbg !373
  %56 = trunc i64 %indvars.iv to i32, !dbg !289
  %cmp318 = icmp eq i32 %56, %best, !dbg !289
  %or.cond761 = and i1 %cmp316, %cmp318, !dbg !289
  br i1 %or.cond761, label %if.then319, label %if.else355, !dbg !289

if.then319:                                       ; preds = %for.body303
  %arrayidx321 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !374
  store i32 100000000, i32* %arrayidx321, align 4, !dbg !374, !tbaa !300
  %cmp322 = icmp eq i32 %55, 13, !dbg !376
  br i1 %cmp322, label %if.end473, label %if.then323, !dbg !376

if.then323:                                       ; preds = %if.then319
  %idxprom324 = sext i32 %55 to i64, !dbg !377
  %arrayidx325 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom324, !dbg !377
  %57 = load i32* %arrayidx325, align 4, !dbg !377, !tbaa !300
  %ispos741 = icmp sgt i32 %57, -1, !dbg !377
  %neg742 = sub i32 0, %57, !dbg !377
  %58 = select i1 %ispos741, i32 %57, i32 %neg742, !dbg !377
  %add327 = add nsw i32 %58, 15, !dbg !377
  %idxprom328 = sext i32 %52 to i64, !dbg !377
  %arrayidx329 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom328, !dbg !377
  %59 = load i32* %arrayidx329, align 4, !dbg !377, !tbaa !300
  %idxprom330 = sext i32 %59 to i64, !dbg !377
  %arrayidx331 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom330, !dbg !377
  %60 = load i32* %arrayidx331, align 4, !dbg !377, !tbaa !300
  %ispos743 = icmp sgt i32 %60, -1, !dbg !377
  %neg744 = sub i32 0, %60, !dbg !377
  %61 = select i1 %ispos743, i32 %60, i32 %neg744, !dbg !377
  %cmp333 = icmp slt i32 %add327, %61, !dbg !377
  br i1 %cmp333, label %if.else347, label %if.then334, !dbg !377

if.then334:                                       ; preds = %if.then323
  %shr343 = ashr i32 %61, 4, !dbg !379
  %sub344 = sub nsw i32 %58, %shr343, !dbg !379
  %arrayidx346 = getelementptr inbounds i32* %see_values, i64 %indvars.iv, !dbg !379
  store i32 %sub344, i32* %arrayidx346, align 4, !dbg !379, !tbaa !300
  br label %if.end473, !dbg !381

if.else347:                                       ; preds = %if.then323
  %62 = load i32* @white_to_move, align 4, !dbg !382, !tbaa !300
  %not.tobool348 = icmp eq i32 %62, 0, !dbg !382
  %cond349 = zext i1 %not.tobool348 to i32, !dbg !382
  %call350 = tail call i32 @see(i32 %cond349, i32 %53, i32 %52) #6, !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32 %call350}, i64 0, metadata !37), !dbg !382
  %arrayidx352 = getelementptr inbounds i32* %see_values, i64 %indvars.iv, !dbg !384
  store i32 %call350, i32* %arrayidx352, align 4, !dbg !384, !tbaa !300
  br label %if.end473

if.else355:                                       ; preds = %for.body303
  br i1 %cmp356, label %if.then357, label %if.else421, !dbg !291

if.then357:                                       ; preds = %if.else355
  %63 = load i32* @ply, align 4, !dbg !385, !tbaa !300
  %add358 = add nsw i32 %63, 1, !dbg !385
  %idxprom359 = sext i32 %add358 to i64, !dbg !385
  %from364 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom359, i64 %idxprom359, i32 0, !dbg !385
  %64 = load i32* %from364, align 4, !dbg !385, !tbaa !300
  %cmp365 = icmp eq i32 %52, %64, !dbg !385
  br i1 %cmp365, label %land.lhs.true366, label %if.end473, !dbg !385

land.lhs.true366:                                 ; preds = %if.then357
  %target373 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom359, i64 %idxprom359, i32 1, !dbg !385
  %65 = load i32* %target373, align 4, !dbg !385, !tbaa !300
  %cmp374 = icmp eq i32 %53, %65, !dbg !385
  br i1 %cmp374, label %land.lhs.true375, label %if.end473, !dbg !385

land.lhs.true375:                                 ; preds = %land.lhs.true366
  %promoted382 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom359, i64 %idxprom359, i32 3, !dbg !385
  %66 = load i32* %promoted382, align 4, !dbg !385, !tbaa !300
  %cmp383 = icmp eq i32 %54, %66, !dbg !385
  br i1 %cmp383, label %if.then384, label %if.end473, !dbg !385

if.then384:                                       ; preds = %land.lhs.true375
  %arrayidx386 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !387
  store i32 100000000, i32* %arrayidx386, align 4, !dbg !387, !tbaa !300
  %cmp387 = icmp eq i32 %55, 13, !dbg !389
  br i1 %cmp387, label %if.end473, label %if.then388, !dbg !389

if.then388:                                       ; preds = %if.then384
  %idxprom389 = sext i32 %55 to i64, !dbg !390
  %arrayidx390 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom389, !dbg !390
  %67 = load i32* %arrayidx390, align 4, !dbg !390, !tbaa !300
  %ispos737 = icmp sgt i32 %67, -1, !dbg !390
  %neg738 = sub i32 0, %67, !dbg !390
  %68 = select i1 %ispos737, i32 %67, i32 %neg738, !dbg !390
  %add392 = add nsw i32 %68, 15, !dbg !390
  %idxprom393 = sext i32 %52 to i64, !dbg !390
  %arrayidx394 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom393, !dbg !390
  %69 = load i32* %arrayidx394, align 4, !dbg !390, !tbaa !300
  %idxprom395 = sext i32 %69 to i64, !dbg !390
  %arrayidx396 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom395, !dbg !390
  %70 = load i32* %arrayidx396, align 4, !dbg !390, !tbaa !300
  %ispos739 = icmp sgt i32 %70, -1, !dbg !390
  %neg740 = sub i32 0, %70, !dbg !390
  %71 = select i1 %ispos739, i32 %70, i32 %neg740, !dbg !390
  %cmp398 = icmp slt i32 %add392, %71, !dbg !390
  br i1 %cmp398, label %if.else412, label %if.then399, !dbg !390

if.then399:                                       ; preds = %if.then388
  %shr408 = ashr i32 %71, 4, !dbg !392
  %sub409 = sub nsw i32 %68, %shr408, !dbg !392
  %arrayidx411 = getelementptr inbounds i32* %see_values, i64 %indvars.iv, !dbg !392
  store i32 %sub409, i32* %arrayidx411, align 4, !dbg !392, !tbaa !300
  br label %if.end473, !dbg !394

if.else412:                                       ; preds = %if.then388
  %72 = load i32* @white_to_move, align 4, !dbg !395, !tbaa !300
  %not.tobool413 = icmp eq i32 %72, 0, !dbg !395
  %cond414 = zext i1 %not.tobool413 to i32, !dbg !395
  %call415 = tail call i32 @see(i32 %cond414, i32 %53, i32 %52) #6, !dbg !395
  tail call void @llvm.dbg.value(metadata !{i32 %call415}, i64 0, metadata !37), !dbg !395
  %arrayidx417 = getelementptr inbounds i32* %see_values, i64 %indvars.iv, !dbg !397
  store i32 %call415, i32* %arrayidx417, align 4, !dbg !397, !tbaa !300
  br label %if.end473

if.else421:                                       ; preds = %if.else355
  %cmp422 = icmp eq i32 %55, 13, !dbg !398
  br i1 %cmp422, label %if.else468, label %if.then423, !dbg !398

if.then423:                                       ; preds = %if.else421
  %idxprom424 = sext i32 %55 to i64, !dbg !399
  %arrayidx425 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom424, !dbg !399
  %73 = load i32* %arrayidx425, align 4, !dbg !399, !tbaa !300
  %ispos = icmp sgt i32 %73, -1, !dbg !399
  %neg = sub i32 0, %73, !dbg !399
  %74 = select i1 %ispos, i32 %73, i32 %neg, !dbg !399
  %add427 = add nsw i32 %74, 15, !dbg !399
  %idxprom428 = sext i32 %52 to i64, !dbg !399
  %arrayidx429 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom428, !dbg !399
  %75 = load i32* %arrayidx429, align 4, !dbg !399, !tbaa !300
  %idxprom430 = sext i32 %75 to i64, !dbg !399
  %arrayidx431 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom430, !dbg !399
  %76 = load i32* %arrayidx431, align 4, !dbg !399, !tbaa !300
  %ispos735 = icmp sgt i32 %76, -1, !dbg !399
  %neg736 = sub i32 0, %76, !dbg !399
  %77 = select i1 %ispos735, i32 %76, i32 %neg736, !dbg !399
  %cmp433 = icmp slt i32 %add427, %77, !dbg !399
  br i1 %cmp433, label %if.else452, label %if.then434, !dbg !399

if.then434:                                       ; preds = %if.then423
  %shr443 = ashr i32 %77, 4, !dbg !401
  %sub444 = sub nsw i32 %74, %shr443, !dbg !401
  %arrayidx446 = getelementptr inbounds i32* %see_values, i64 %indvars.iv, !dbg !401
  store i32 %sub444, i32* %arrayidx446, align 4, !dbg !401, !tbaa !300
  %add449 = add nsw i32 %sub444, 50000000, !dbg !403
  %arrayidx451 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !403
  store i32 %add449, i32* %arrayidx451, align 4, !dbg !403, !tbaa !300
  br label %if.end473, !dbg !404

if.else452:                                       ; preds = %if.then423
  %78 = load i32* @white_to_move, align 4, !dbg !405, !tbaa !300
  %not.tobool453 = icmp eq i32 %78, 0, !dbg !405
  %cond454 = zext i1 %not.tobool453 to i32, !dbg !405
  %call455 = tail call i32 @see(i32 %cond454, i32 %53, i32 %52) #6, !dbg !405
  tail call void @llvm.dbg.value(metadata !{i32 %call455}, i64 0, metadata !37), !dbg !405
  %cmp456 = icmp sgt i32 %call455, -51, !dbg !407
  br i1 %cmp456, label %if.then457, label %if.else461, !dbg !407

if.then457:                                       ; preds = %if.else452
  %add458 = add nsw i32 %call455, 50000000, !dbg !408
  %arrayidx460 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !408
  store i32 %add458, i32* %arrayidx460, align 4, !dbg !408, !tbaa !300
  br label %if.end464, !dbg !408

if.else461:                                       ; preds = %if.else452
  %arrayidx463 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !409
  store i32 %call455, i32* %arrayidx463, align 4, !dbg !409, !tbaa !300
  br label %if.end464

if.end464:                                        ; preds = %if.else461, %if.then457
  %arrayidx466 = getelementptr inbounds i32* %see_values, i64 %indvars.iv, !dbg !410
  store i32 %call455, i32* %arrayidx466, align 4, !dbg !410, !tbaa !300
  br label %if.end473

if.else468:                                       ; preds = %if.else421
  %arrayidx470 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !411
  store i32 0, i32* %arrayidx470, align 4, !dbg !411, !tbaa !300
  br label %if.end473

if.end473:                                        ; preds = %land.lhs.true375, %land.lhs.true366, %if.then357, %if.then319, %if.then384, %if.else412, %if.then399, %if.then434, %if.end464, %if.else468, %if.else347, %if.then334
  %idxprom474 = sext i32 %53 to i64, !dbg !412
  %idxprom475 = sext i32 %52 to i64, !dbg !412
  %arrayidx477 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom475, i64 %idxprom474, !dbg !412
  %79 = load i32* %arrayidx477, align 4, !dbg !412, !tbaa !300
  %arrayidx479 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !412
  %80 = load i32* %arrayidx479, align 4, !dbg !412, !tbaa !300
  %add480 = add i32 %80, %79, !dbg !412
  store i32 %add480, i32* %arrayidx479, align 4, !dbg !412, !tbaa !300
  %81 = load i32* @ply, align 4, !dbg !413, !tbaa !300
  %idxprom481 = sext i32 %81 to i64, !dbg !413
  %from483 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom481, i32 0, !dbg !413
  %82 = load i32* %from483, align 4, !dbg !413, !tbaa !300
  %cmp484 = icmp eq i32 %52, %82, !dbg !413
  br i1 %cmp484, label %land.lhs.true485, label %if.else499, !dbg !413

land.lhs.true485:                                 ; preds = %if.end473
  %target488 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom481, i32 1, !dbg !413
  %83 = load i32* %target488, align 4, !dbg !413, !tbaa !300
  %cmp489 = icmp eq i32 %53, %83, !dbg !413
  br i1 %cmp489, label %land.lhs.true490, label %if.else499, !dbg !413

land.lhs.true490:                                 ; preds = %land.lhs.true485
  %promoted493 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom481, i32 3, !dbg !413
  %84 = load i32* %promoted493, align 4, !dbg !413, !tbaa !300
  %cmp494 = icmp eq i32 %54, %84, !dbg !413
  br i1 %cmp494, label %if.then495, label %if.else499, !dbg !413

if.then495:                                       ; preds = %land.lhs.true490
  %add498 = add nsw i32 %add480, 25000000, !dbg !414
  store i32 %add498, i32* %arrayidx479, align 4, !dbg !414, !tbaa !300
  br label %for.inc540, !dbg !414

if.else499:                                       ; preds = %land.lhs.true490, %land.lhs.true485, %if.end473
  %from502 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom481, i32 0, !dbg !415
  %85 = load i32* %from502, align 4, !dbg !415, !tbaa !300
  %cmp503 = icmp eq i32 %52, %85, !dbg !415
  br i1 %cmp503, label %land.lhs.true504, label %if.else518, !dbg !415

land.lhs.true504:                                 ; preds = %if.else499
  %target507 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom481, i32 1, !dbg !415
  %86 = load i32* %target507, align 4, !dbg !415, !tbaa !300
  %cmp508 = icmp eq i32 %53, %86, !dbg !415
  br i1 %cmp508, label %land.lhs.true509, label %if.else518, !dbg !415

land.lhs.true509:                                 ; preds = %land.lhs.true504
  %promoted512 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom481, i32 3, !dbg !415
  %87 = load i32* %promoted512, align 4, !dbg !415, !tbaa !300
  %cmp513 = icmp eq i32 %54, %87, !dbg !415
  br i1 %cmp513, label %if.then514, label %if.else518, !dbg !415

if.then514:                                       ; preds = %land.lhs.true509
  %add517 = add nsw i32 %add480, 20000000, !dbg !416
  store i32 %add517, i32* %arrayidx479, align 4, !dbg !416, !tbaa !300
  br label %for.inc540, !dbg !416

if.else518:                                       ; preds = %land.lhs.true509, %land.lhs.true504, %if.else499
  %from521 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom481, i32 0, !dbg !417
  %88 = load i32* %from521, align 4, !dbg !417, !tbaa !300
  %cmp522 = icmp eq i32 %52, %88, !dbg !417
  br i1 %cmp522, label %land.lhs.true523, label %for.inc540, !dbg !417

land.lhs.true523:                                 ; preds = %if.else518
  %target526 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom481, i32 1, !dbg !417
  %89 = load i32* %target526, align 4, !dbg !417, !tbaa !300
  %cmp527 = icmp eq i32 %53, %89, !dbg !417
  br i1 %cmp527, label %land.lhs.true528, label %for.inc540, !dbg !417

land.lhs.true528:                                 ; preds = %land.lhs.true523
  %promoted531 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom481, i32 3, !dbg !417
  %90 = load i32* %promoted531, align 4, !dbg !417, !tbaa !300
  %cmp532 = icmp eq i32 %54, %90, !dbg !417
  br i1 %cmp532, label %if.then533, label %for.inc540, !dbg !417

if.then533:                                       ; preds = %land.lhs.true528
  %add536 = add nsw i32 %add480, 15000000, !dbg !418
  store i32 %add536, i32* %arrayidx479, align 4, !dbg !418, !tbaa !300
  br label %for.inc540, !dbg !418

for.inc540:                                       ; preds = %if.then495, %if.else518, %land.lhs.true523, %land.lhs.true528, %if.then533, %if.then514
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !286
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !286
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves, !dbg !286
  br i1 %exitcond, label %if.end543, label %for.body303, !dbg !286

if.end543:                                        ; preds = %if.then, %for.inc, %for.cond301.preheader, %for.inc540
  ret void, !dbg !419
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @see(i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @perft(i32 %depth) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !42), !dbg !420
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !421
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !421
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !43), !dbg !421
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !47), !dbg !422
  %tobool = icmp eq i32 %depth, 0, !dbg !423
  br i1 %tobool, label %if.then, label %if.end, !dbg !423

if.then:                                          ; preds = %entry
  %1 = load i32* @raw_nodes, align 4, !dbg !424, !tbaa !300
  %inc = add nsw i32 %1, 1, !dbg !424
  store i32 %inc, i32* @raw_nodes, align 4, !dbg !424, !tbaa !300
  br label %cleanup, !dbg !426

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !427
  call void @gen(%struct.move_s* %arrayidx) #6, !dbg !427
  %2 = load i32* @numb_moves, align 4, !dbg !428, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !47), !dbg !428
  %call = call i32 @in_check() #6, !dbg !429
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !49), !dbg !429
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !48), !dbg !430
  %cmp14 = icmp sgt i32 %2, 0, !dbg !430
  br i1 %cmp14, label %for.body.lr.ph, label %cleanup, !dbg !430

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %depth, -1, !dbg !432
  br label %for.body, !dbg !430

for.body:                                         ; preds = %if.end6, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %if.end6 ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.015) #6, !dbg !435
  %call3 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.015, i32 %call) #6, !dbg !436
  %tobool4 = icmp eq i32 %call3, 0, !dbg !436
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !436

if.then5:                                         ; preds = %for.body
  call void @perft(i32 %sub) #7, !dbg !432
  br label %if.end6, !dbg !437

if.end6:                                          ; preds = %for.body, %if.then5
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.015) #6, !dbg !438
  %inc8 = add nsw i32 %i.015, 1, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %inc8}, i64 0, metadata !48), !dbg !430
  %exitcond = icmp eq i32 %inc8, %2, !dbg !430
  br i1 %exitcond, label %cleanup, label %for.body, !dbg !430

cleanup:                                          ; preds = %if.end, %if.end6, %if.then
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !439
  ret void, !dbg !440
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #2

; Function Attrs: optsize
declare i32 @in_check() #2

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #2

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #2

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @qsearch(i32 %alpha, i32 %beta, i32 %depth) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %i = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %best = alloca i32, align 4
  %bound = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !54), !dbg !441
  call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !55), !dbg !441
  call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !56), !dbg !441
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !442
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !442
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !57), !dbg !442
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !59), !dbg !443
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !61), !dbg !445
  %1 = bitcast [512 x i32]* %move_ordering to i8*, !dbg !445
  call void @llvm.lifetime.start(i64 2048, i8* %1) #3, !dbg !445
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %move_ordering}, metadata !63), !dbg !446
  %2 = bitcast [512 x i32]* %see_values to i8*, !dbg !445
  call void @llvm.lifetime.start(i64 2048, i8* %2) #3, !dbg !445
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %see_values}, metadata !65), !dbg !445
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !68), !dbg !448
  call void @llvm.dbg.declare(metadata !{i32* %best}, metadata !71), !dbg !449
  call void @llvm.dbg.declare(metadata !{i32* %bound}, metadata !73), !dbg !449
  %3 = load i32* @ply, align 4, !dbg !450, !tbaa !300
  %idxprom = sext i32 %3 to i64, !dbg !450
  %arrayidx = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom, !dbg !450
  store i32 %3, i32* %arrayidx, align 4, !dbg !450, !tbaa !300
  %4 = load i32* @nodes, align 4, !dbg !451, !tbaa !300
  %and = and i32 %4, 65535, !dbg !451
  %tobool = icmp eq i32 %and, 0, !dbg !451
  br i1 %tobool, label %if.then, label %if.end26, !dbg !451

if.then:                                          ; preds = %entry
  %call = call i32 @interrupt() #6, !dbg !452
  %tobool1 = icmp eq i32 %call, 0, !dbg !452
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !452

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @time_exit, align 4, !dbg !454, !tbaa !284
  br label %cleanup, !dbg !456

if.else:                                          ; preds = %if.then
  %call3 = call i64 @rtime() #6, !dbg !457
  %5 = load i64* @start_time, align 8, !dbg !457, !tbaa !458
  %call4 = call i32 @rdifftime(i64 %call3, i64 %5) #6, !dbg !457
  %6 = load i32* @time_for_move, align 4, !dbg !457, !tbaa !300
  %cmp = icmp sge i32 %call4, %6, !dbg !457
  %7 = load i32* @i_depth, align 4, !dbg !457, !tbaa !300
  %cmp5 = icmp sgt i32 %7, 1, !dbg !457
  %or.cond = and i1 %cmp, %cmp5, !dbg !457
  br i1 %or.cond, label %if.then6, label %if.end26, !dbg !457

if.then6:                                         ; preds = %if.else
  %8 = load i32* @failed, align 4, !dbg !459, !tbaa !300
  %cmp7 = icmp ne i32 %8, 1, !dbg !459
  %9 = load i32* @extendedtime, align 4, !dbg !459, !tbaa !300
  %tobool9 = icmp ne i32 %9, 0, !dbg !459
  %or.cond125 = or i1 %cmp7, %tobool9, !dbg !459
  %10 = load i32* @fixed_time, align 4, !dbg !459, !tbaa !300
  %tobool11 = icmp ne i32 %10, 0, !dbg !459
  %or.cond126 = or i1 %or.cond125, %tobool11, !dbg !459
  %11 = load i32* @go_fast, align 4, !dbg !459, !tbaa !284
  %tobool13 = icmp ne i32 %11, 0, !dbg !459
  %or.cond127 = or i1 %or.cond126, %tobool13, !dbg !459
  %or.cond127.not = xor i1 %or.cond127, true, !dbg !459
  %12 = load i32* @Variant, align 4, !dbg !459, !tbaa !300
  %cmp15 = icmp ne i32 %12, 1, !dbg !459
  %or.cond128 = and i1 %cmp15, %or.cond127.not, !dbg !459
  br i1 %or.cond128, label %land.lhs.true16, label %if.else23, !dbg !459

land.lhs.true16:                                  ; preds = %if.then6
  %13 = load i32* @time_left, align 4, !dbg !459, !tbaa !300
  %mul = shl nsw i32 %6, 2, !dbg !459
  %cmp17 = icmp sgt i32 %mul, 1000, !dbg !459
  %mul. = select i1 %cmp17, i32 %mul, i32 1000, !dbg !459
  %cmp19 = icmp sgt i32 %13, %mul., !dbg !459
  br i1 %cmp19, label %if.then20, label %if.else23, !dbg !459

if.then20:                                        ; preds = %land.lhs.true16
  store i32 1, i32* @extendedtime, align 4, !dbg !461, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !75), !dbg !463
  %call21 = call i32 @allocate_time() #6, !dbg !464
  %14 = load i32* @time_for_move, align 4, !dbg !464, !tbaa !300
  %add = add nsw i32 %14, %call21, !dbg !464
  store i32 %add, i32* @time_for_move, align 4, !dbg !464, !tbaa !300
  %15 = load i32* @time_left, align 4, !dbg !465, !tbaa !300
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %add, i32 %15) #6, !dbg !465
  br label %if.end26, !dbg !466

if.else23:                                        ; preds = %if.then6, %land.lhs.true16
  store i32 1, i32* @time_exit, align 4, !dbg !467, !tbaa !284
  br label %cleanup, !dbg !469

if.end26:                                         ; preds = %if.else, %entry, %if.then20
  %cmp27 = icmp slt i32 %depth, 1, !dbg !470
  %16 = load i32* @ply, align 4, !dbg !470, !tbaa !300
  %cmp28 = icmp sgt i32 %16, 299, !dbg !470
  %or.cond129 = or i1 %cmp27, %cmp28, !dbg !470
  br i1 %or.cond129, label %if.then29, label %if.end31, !dbg !470

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 @eval(i32 %alpha, i32 %beta) #6, !dbg !471
  call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !61), !dbg !471
  br label %cleanup, !dbg !473

if.end31:                                         ; preds = %if.end26
  %17 = load i32* @qnodes, align 4, !dbg !474, !tbaa !300
  %inc = add nsw i32 %17, 1, !dbg !474
  store i32 %inc, i32* @qnodes, align 4, !dbg !474, !tbaa !300
  %18 = load i32* @nodes, align 4, !dbg !475, !tbaa !300
  %inc32 = add nsw i32 %18, 1, !dbg !475
  store i32 %inc32, i32* @nodes, align 4, !dbg !475, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !74), !dbg !476
  %call33 = call i32 @QProbeTT(i32* %bound, i32* %best) #6, !dbg !477
  switch i32 %call33, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb38
    i32 4, label %sw.bb42
  ], !dbg !477

sw.bb:                                            ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{i32* %bound}, i64 0, metadata !73), !dbg !478
  %19 = load i32* %bound, align 4, !dbg !478, !tbaa !300
  br label %cleanup, !dbg !478

sw.bb34:                                          ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{i32* %bound}, i64 0, metadata !73), !dbg !480
  %20 = load i32* %bound, align 4, !dbg !480, !tbaa !300
  %cmp35 = icmp sgt i32 %20, %alpha, !dbg !480
  br i1 %cmp35, label %sw.epilog, label %cleanup, !dbg !480

sw.bb38:                                          ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{i32* %bound}, i64 0, metadata !73), !dbg !481
  %21 = load i32* %bound, align 4, !dbg !481, !tbaa !300
  %cmp39 = icmp slt i32 %21, %beta, !dbg !481
  br i1 %cmp39, label %sw.epilog, label %cleanup, !dbg !481

sw.bb42:                                          ; preds = %if.end31
  call void @llvm.dbg.value(metadata !482, i64 0, metadata !71), !dbg !483
  store i32 -1, i32* %best, align 4, !dbg !483, !tbaa !300
  br label %sw.epilog, !dbg !484

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb38, %if.end31, %sw.bb42
  %call43 = call i32 @eval(i32 %alpha, i32 %beta) #6, !dbg !485
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !62), !dbg !485
  %cmp44 = icmp slt i32 %call43, %beta, !dbg !486
  br i1 %cmp44, label %if.else46, label %if.then45, !dbg !486

if.then45:                                        ; preds = %sw.epilog
  call void @QStoreTT(i32 %call43, i32 %alpha, i32 %beta, i32 500) #6, !dbg !487
  br label %cleanup, !dbg !489

if.else46:                                        ; preds = %sw.epilog
  %cmp47 = icmp sgt i32 %call43, %alpha, !dbg !490
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !54), !dbg !491
  %call43.alpha = select i1 %cmp47, i32 %call43, i32 %alpha, !dbg !490
  call void @llvm.dbg.value(metadata !482, i64 0, metadata !69), !dbg !493
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !70), !dbg !494
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !58), !dbg !495
  %arrayidx51 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !496
  call void @gen(%struct.move_s* %arrayidx51) #6, !dbg !496
  %22 = load i32* @numb_moves, align 4, !dbg !497, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !58), !dbg !497
  %23 = load i32* @kingcap, align 4, !dbg !498, !tbaa !300
  %tobool52 = icmp eq i32 %23, 0, !dbg !498
  br i1 %tobool52, label %if.end54, label %cleanup, !dbg !498

if.end54:                                         ; preds = %if.else46
  %sub = sub i32 -150, %call43, !dbg !499
  %sub55 = add i32 %sub, %call43.alpha, !dbg !499
  call void @llvm.dbg.value(metadata !{i32 %sub55}, i64 0, metadata !72), !dbg !499
  %arrayidx57 = getelementptr inbounds [512 x i32]* %move_ordering, i64 0, i64 0, !dbg !500
  %arrayidx58 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 0, !dbg !500
  call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !71), !dbg !500
  %24 = load i32* %best, align 4, !dbg !500, !tbaa !300
  call void @order_moves(%struct.move_s* %arrayidx51, i32* %arrayidx57, i32* %arrayidx58, i32 %22, i32 %24) #7, !dbg !500
  %sub75 = sub nsw i32 0, %beta, !dbg !501
  %sub77 = add nsw i32 %depth, -1, !dbg !501
  br label %while.cond.outer.outer, !dbg !503

while.cond.outer.outer:                           ; preds = %for.end, %if.end54
  %alpha.addr.1.ph.ph = phi i32 [ %call43.alpha, %if.end54 ], [ %sub79, %for.end ]
  %sub76 = sub nsw i32 0, %alpha.addr.1.ph.ph, !dbg !501
  br label %while.cond

while.cond:                                       ; preds = %if.end73, %while.cond.outer.outer, %if.then65
  %call60 = call i32 @remove_one(i32* %i, i32* %arrayidx57, i32 %22) #7, !dbg !503
  %tobool61 = icmp eq i32 %call60, 0, !dbg !503
  br i1 %tobool61, label %while.end, label %while.body, !dbg !503

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !66), !dbg !504
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !59), !dbg !505
  %25 = load i32* %i, align 4, !dbg !505, !tbaa !300
  %idxprom62 = sext i32 %25 to i64, !dbg !505
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom62, i32 3, !dbg !505
  %26 = load i32* %promoted, align 4, !dbg !505, !tbaa !300
  %tobool64 = icmp eq i32 %26, 0, !dbg !505
  br i1 %tobool64, label %if.then65, label %if.end73, !dbg !505

if.then65:                                        ; preds = %while.body
  %arrayidx67 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 %idxprom62, !dbg !506
  %27 = load i32* %arrayidx67, align 4, !dbg !506, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !76), !dbg !506
  %cmp68 = icmp slt i32 %27, %sub55, !dbg !508
  %cmp70 = icmp slt i32 %27, 0, !dbg !508
  %or.cond130 = or i1 %cmp68, %cmp70, !dbg !508
  br i1 %or.cond130, label %while.cond, label %if.end73, !dbg !508

if.end73:                                         ; preds = %while.body, %if.then65
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !59), !dbg !509
  call void @make(%struct.move_s* %arrayidx51, i32 %25) #6, !dbg !509
  %call78 = call i32 @qsearch(i32 %sub75, i32 %sub76, i32 %sub77) #7, !dbg !501
  %sub79 = sub nsw i32 0, %call78, !dbg !501
  call void @llvm.dbg.value(metadata !{i32 %sub79}, i64 0, metadata !61), !dbg !501
  %cmp80 = icmp eq i32 %sub79, -50000, !dbg !510
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !66), !dbg !511
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !68), !dbg !513
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !59), !dbg !514
  call void @unmake(%struct.move_s* %arrayidx51, i32 %25) #6, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %sub79}, i64 0, metadata !70), !dbg !515
  %cmp89 = icmp sge i32 %alpha.addr.1.ph.ph, %sub79, !dbg !517
  %or.cond169 = or i1 %cmp89, %cmp80, !dbg !517
  br i1 %or.cond169, label %while.cond, label %if.then92, !dbg !517

if.then92:                                        ; preds = %if.end73
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !59), !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !71), !dbg !518
  store i32 %25, i32* %best, align 4, !dbg !518, !tbaa !300
  %cmp93 = icmp slt i32 %sub79, %beta, !dbg !520
  br i1 %cmp93, label %if.end95, label %if.then94, !dbg !520

if.then94:                                        ; preds = %if.then92
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !59), !dbg !521
  call void @QStoreTT(i32 %sub79, i32 %alpha, i32 %beta, i32 %25) #6, !dbg !521
  br label %cleanup, !dbg !523

if.end95:                                         ; preds = %if.then92
  call void @llvm.dbg.value(metadata !{i32 %sub79}, i64 0, metadata !54), !dbg !524
  %28 = load i32* @ply, align 4, !dbg !525, !tbaa !300
  %idxprom96 = sext i32 %28 to i64, !dbg !525
  %arrayidx99 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom96, i64 %idxprom96, !dbg !525
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !59), !dbg !525
  %arrayidx101 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom62, !dbg !525
  %29 = bitcast %struct.move_s* %arrayidx99 to i8*, !dbg !525
  %30 = bitcast %struct.move_s* %arrayidx101 to i8*, !dbg !525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 24, i32 4, i1 false), !dbg !525, !tbaa.struct !526
  %j.0171 = add i32 %28, 1, !dbg !527
  %idxprom104173 = sext i32 %j.0171 to i64, !dbg !527
  %arrayidx105174 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom104173, !dbg !527
  %31 = load i32* %arrayidx105174, align 4, !dbg !527, !tbaa !300
  %cmp106175 = icmp slt i32 %j.0171, %31, !dbg !527
  br i1 %cmp106175, label %for.body, label %for.end, !dbg !527

for.body:                                         ; preds = %if.end95, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom104173, %if.end95 ]
  %j.0176 = phi i32 [ %j.0, %for.body ], [ %j.0171, %if.end95 ]
  %arrayidx110 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom96, i64 %indvars.iv, !dbg !529
  %arrayidx115 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom104173, i64 %indvars.iv, !dbg !529
  %32 = bitcast %struct.move_s* %arrayidx110 to i8*, !dbg !529
  %33 = bitcast %struct.move_s* %arrayidx115 to i8*, !dbg !529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 4, i1 false), !dbg !529, !tbaa.struct !526
  %j.0 = add nsw i32 %j.0176, 1, !dbg !527
  %cmp106 = icmp slt i32 %j.0, %31, !dbg !527
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !527
  br i1 %cmp106, label %for.body, label %for.end, !dbg !527

for.end:                                          ; preds = %for.body, %if.end95
  %arrayidx121 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom96, !dbg !530
  store i32 %31, i32* %arrayidx121, align 4, !dbg !530, !tbaa !300
  br label %while.cond.outer.outer, !dbg !531

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !71), !dbg !532
  %34 = load i32* %best, align 4, !dbg !532, !tbaa !300
  call void @QStoreTT(i32 %alpha.addr.1.ph.ph, i32 %alpha, i32 %beta, i32 %34) #6, !dbg !532
  br label %cleanup, !dbg !533

cleanup:                                          ; preds = %if.else46, %sw.bb38, %sw.bb34, %while.end, %if.then94, %if.then45, %sw.bb, %if.then29, %if.else23, %if.then2
  %retval.0 = phi i32 [ %call30, %if.then29 ], [ %call43, %if.then45 ], [ %sub79, %if.then94 ], [ %alpha.addr.1.ph.ph, %while.end ], [ %19, %sw.bb ], [ 0, %if.then2 ], [ 0, %if.else23 ], [ %20, %sw.bb34 ], [ %21, %sw.bb38 ], [ 50000, %if.else46 ]
  call void @llvm.lifetime.end(i64 2048, i8* %2) #3, !dbg !534
  call void @llvm.lifetime.end(i64 2048, i8* %1) #3, !dbg !534
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !534
  ret i32 %retval.0, !dbg !534
}

; Function Attrs: optsize
declare i32 @interrupt() #2

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #2

; Function Attrs: optsize
declare i64 @rtime() #2

; Function Attrs: optsize
declare i32 @allocate_time() #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @eval(i32, i32) #2

; Function Attrs: optsize
declare i32 @QProbeTT(i32*, i32*) #2

; Function Attrs: optsize
declare void @QStoreTT(i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @remove_one(i32* nocapture %marker, i32* nocapture %move_ordering, i32 %num_moves) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %marker}, i64 0, metadata !81), !dbg !535
  tail call void @llvm.dbg.value(metadata !{i32* %move_ordering}, i64 0, metadata !82), !dbg !535
  tail call void @llvm.dbg.value(metadata !{i32 %num_moves}, i64 0, metadata !83), !dbg !535
  tail call void @llvm.dbg.value(metadata !444, i64 0, metadata !85), !dbg !536
  store i32 -1000000, i32* %marker, align 4, !dbg !537, !tbaa !300
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !538
  %cmp17 = icmp sgt i32 %num_moves, 0, !dbg !538
  br i1 %cmp17, label %for.body, label %return, !dbg !538

for.body:                                         ; preds = %entry, %for.inc
  %0 = phi i32 [ %4, %for.inc ], [ -1000000, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %best.019 = phi i32 [ %best.1, %for.inc ], [ -1000000, %entry ]
  %arrayidx = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv, !dbg !540
  %1 = load i32* %arrayidx, align 4, !dbg !540, !tbaa !300
  %cmp1 = icmp sgt i32 %1, %best.019, !dbg !540
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !540

if.then:                                          ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32, !dbg !542
  store i32 %2, i32* %marker, align 4, !dbg !542, !tbaa !300
  %3 = load i32* %arrayidx, align 4, !dbg !544, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !85), !dbg !544
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %for.body, %if.then
  %4 = phi i32 [ %2, %if.then ], [ %0, %for.body ]
  %best.1 = phi i32 [ %3, %if.then ], [ %best.019, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !538
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !538
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves, !dbg !538
  br i1 %exitcond, label %for.end, label %for.body, !dbg !538

for.end:                                          ; preds = %for.inc
  %cmp4 = icmp sgt i32 %4, -1000000, !dbg !546
  br i1 %cmp4, label %if.then5, label %return, !dbg !546

if.then5:                                         ; preds = %for.end
  %idxprom6 = sext i32 %4 to i64, !dbg !547
  %arrayidx7 = getelementptr inbounds i32* %move_ordering, i64 %idxprom6, !dbg !547
  store i32 -1000000, i32* %arrayidx7, align 4, !dbg !547, !tbaa !300
  br label %return, !dbg !549

return:                                           ; preds = %entry, %for.end, %if.then5
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %for.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !550
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define i32 @search(i32 %alpha, i32 %beta, i32 %depth, i32 %is_null) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %i = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %bound = alloca i32, align 4
  %threat = alloca i32, align 4
  %donull = alloca i32, align 4
  %best = alloca i32, align 4
  %kswap = alloca %struct.move_s, align 4
  call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !90), !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !91), !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !92), !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %is_null}, i64 0, metadata !93), !dbg !551
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !552
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !552
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !94), !dbg !552
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !96), !dbg !553
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !98), !dbg !554
  %1 = bitcast [512 x i32]* %move_ordering to i8*, !dbg !554
  call void @llvm.lifetime.start(i64 2048, i8* %1) #3, !dbg !554
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %move_ordering}, metadata !99), !dbg !554
  %2 = bitcast [512 x i32]* %see_values to i8*, !dbg !554
  call void @llvm.lifetime.start(i64 2048, i8* %2) #3, !dbg !554
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %see_values}, metadata !100), !dbg !554
  call void @llvm.dbg.declare(metadata !{i32* %bound}, metadata !103), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32* %threat}, metadata !104), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32* %donull}, metadata !105), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32* %best}, metadata !106), !dbg !555
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %kswap}, metadata !116), !dbg !556
  %3 = load i32* @nodes, align 4, !dbg !557, !tbaa !300
  %inc = add nsw i32 %3, 1, !dbg !557
  store i32 %inc, i32* @nodes, align 4, !dbg !557, !tbaa !300
  %and = and i32 %inc, 65535, !dbg !558
  %tobool = icmp eq i32 %and, 0, !dbg !558
  br i1 %tobool, label %if.then, label %if.end26, !dbg !558

if.then:                                          ; preds = %entry
  %call = call i32 @interrupt() #6, !dbg !559
  %tobool1 = icmp eq i32 %call, 0, !dbg !559
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !559

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @time_exit, align 4, !dbg !561, !tbaa !284
  br label %cleanup, !dbg !563

if.else:                                          ; preds = %if.then
  %call3 = call i64 @rtime() #6, !dbg !564
  %4 = load i64* @start_time, align 8, !dbg !564, !tbaa !458
  %call4 = call i32 @rdifftime(i64 %call3, i64 %4) #6, !dbg !564
  %5 = load i32* @time_for_move, align 4, !dbg !564, !tbaa !300
  %cmp = icmp sge i32 %call4, %5, !dbg !564
  %6 = load i32* @i_depth, align 4, !dbg !564, !tbaa !300
  %cmp5 = icmp sgt i32 %6, 1, !dbg !564
  %or.cond = and i1 %cmp, %cmp5, !dbg !564
  br i1 %or.cond, label %if.then6, label %if.end26, !dbg !564

if.then6:                                         ; preds = %if.else
  %7 = load i32* @failed, align 4, !dbg !565, !tbaa !300
  %cmp7 = icmp ne i32 %7, 1, !dbg !565
  %8 = load i32* @extendedtime, align 4, !dbg !565, !tbaa !300
  %tobool9 = icmp ne i32 %8, 0, !dbg !565
  %or.cond835 = or i1 %cmp7, %tobool9, !dbg !565
  %9 = load i32* @fixed_time, align 4, !dbg !565, !tbaa !300
  %tobool11 = icmp ne i32 %9, 0, !dbg !565
  %or.cond836 = or i1 %or.cond835, %tobool11, !dbg !565
  %10 = load i32* @go_fast, align 4, !dbg !565, !tbaa !284
  %tobool13 = icmp ne i32 %10, 0, !dbg !565
  %or.cond837 = or i1 %or.cond836, %tobool13, !dbg !565
  %or.cond837.not = xor i1 %or.cond837, true, !dbg !565
  %11 = load i32* @Variant, align 4, !dbg !565, !tbaa !300
  %cmp15 = icmp ne i32 %11, 1, !dbg !565
  %or.cond838 = and i1 %cmp15, %or.cond837.not, !dbg !565
  br i1 %or.cond838, label %land.lhs.true16, label %if.else23, !dbg !565

land.lhs.true16:                                  ; preds = %if.then6
  %12 = load i32* @time_left, align 4, !dbg !565, !tbaa !300
  %mul = shl nsw i32 %5, 2, !dbg !565
  %cmp17 = icmp sgt i32 %mul, 1000, !dbg !565
  %mul. = select i1 %cmp17, i32 %mul, i32 1000, !dbg !565
  %cmp19 = icmp sgt i32 %12, %mul., !dbg !565
  br i1 %cmp19, label %if.then20, label %if.else23, !dbg !565

if.then20:                                        ; preds = %land.lhs.true16
  store i32 1, i32* @extendedtime, align 4, !dbg !567, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !122), !dbg !569
  %call21 = call i32 @allocate_time() #6, !dbg !570
  %13 = load i32* @time_for_move, align 4, !dbg !570, !tbaa !300
  %add = add nsw i32 %13, %call21, !dbg !570
  store i32 %add, i32* @time_for_move, align 4, !dbg !570, !tbaa !300
  %14 = load i32* @time_left, align 4, !dbg !571, !tbaa !300
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %add, i32 %14) #6, !dbg !571
  br label %if.end26, !dbg !572

if.else23:                                        ; preds = %if.then6, %land.lhs.true16
  store i32 1, i32* @time_exit, align 4, !dbg !573, !tbaa !284
  br label %cleanup, !dbg !575

if.end26:                                         ; preds = %entry, %if.then20, %if.else
  call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !118), !dbg !576
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !114), !dbg !577
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !104), !dbg !578
  store i32 0, i32* %threat, align 4, !dbg !578, !tbaa !300
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !112), !dbg !579
  %15 = load i32* @ply, align 4, !dbg !580, !tbaa !300
  %idxprom = sext i32 %15 to i64, !dbg !580
  %arrayidx = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom, !dbg !580
  store i32 %15, i32* %arrayidx, align 4, !dbg !580, !tbaa !300
  %call27 = call i32 @is_draw() #6, !dbg !581
  %tobool28 = icmp eq i32 %call27, 0, !dbg !581
  br i1 %tobool28, label %if.end30, label %cleanup, !dbg !581

if.end30:                                         ; preds = %if.end26
  %16 = load i32* @ply, align 4, !dbg !582, !tbaa !300
  %idxprom31 = sext i32 %16 to i64, !dbg !582
  %arrayidx32 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom31, !dbg !582
  %17 = load i32* %arrayidx32, align 4, !dbg !582, !tbaa !284
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !110), !dbg !582
  %arrayidx34 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom31, !dbg !583
  store i32 0, i32* %arrayidx34, align 4, !dbg !583, !tbaa !284
  %arrayidx36 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom31, !dbg !584
  store i32 0, i32* %arrayidx36, align 4, !dbg !584, !tbaa !284
  %cmp37 = icmp sgt i32 %16, 299, !dbg !585
  %tobool39 = icmp eq i32 %17, 0, !dbg !585
  %or.cond1004 = or i1 %cmp37, %tobool39, !dbg !585
  br i1 %or.cond1004, label %if.else48, label %land.lhs.true40, !dbg !585

land.lhs.true40:                                  ; preds = %if.end30
  %18 = load i32* @i_depth, align 4, !dbg !585, !tbaa !300
  %mul41 = shl nsw i32 %18, 1, !dbg !585
  %cmp42 = icmp sle i32 %16, %mul41, !dbg !585
  %cmp43 = icmp eq i32 %depth, 0, !dbg !585
  %or.cond1005 = or i1 %cmp42, %cmp43, !dbg !585
  br i1 %or.cond1005, label %if.then44, label %if.else48, !dbg !585

if.then44:                                        ; preds = %land.lhs.true40
  %inc45 = add nsw i32 %depth, 1, !dbg !586
  call void @llvm.dbg.value(metadata !{i32 %inc45}, i64 0, metadata !92), !dbg !586
  %19 = load i32* @ext_check, align 4, !dbg !588, !tbaa !300
  %inc46 = add i32 %19, 1, !dbg !588
  store i32 %inc46, i32* @ext_check, align 4, !dbg !588, !tbaa !300
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !112), !dbg !589
  br label %if.end87, !dbg !590

if.else48:                                        ; preds = %land.lhs.true40, %if.end30
  %.off = add i32 %16, -3, !dbg !591
  %20 = icmp ult i32 %.off, 297, !dbg !591
  br i1 %20, label %land.lhs.true52, label %if.end87, !dbg !591

land.lhs.true52:                                  ; preds = %if.else48
  %21 = load i32* @i_depth, align 4, !dbg !591, !tbaa !300
  %mul53 = shl nsw i32 %21, 1, !dbg !591
  %cmp54 = icmp sgt i32 %16, %mul53, !dbg !591
  br i1 %cmp54, label %if.end87, label %land.lhs.true55, !dbg !591

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %sub = add nsw i32 %16, -2, !dbg !591
  %idxprom56 = sext i32 %sub to i64, !dbg !591
  %arrayidx57 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom56, !dbg !591
  %22 = load i32* %arrayidx57, align 4, !dbg !591, !tbaa !284
  %tobool58 = icmp eq i32 %22, 0, !dbg !591
  %23 = load i32* @cfg_recap, align 4, !dbg !591, !tbaa !300
  %tobool60 = icmp ne i32 %23, 0, !dbg !591
  %or.cond840 = and i1 %tobool58, %tobool60, !dbg !591
  br i1 %or.cond840, label %land.lhs.true61, label %if.end87, !dbg !591

land.lhs.true61:                                  ; preds = %land.lhs.true55
  %sub62 = add nsw i32 %16, -1, !dbg !591
  %idxprom63 = sext i32 %sub62 to i64, !dbg !591
  %captured = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom63, i32 2, !dbg !591
  %24 = load i32* %captured, align 4, !dbg !591, !tbaa !300
  %cmp65 = icmp eq i32 %24, 13, !dbg !591
  br i1 %cmp65, label %if.end87, label %land.lhs.true66, !dbg !591

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %idxprom71 = sext i32 %24 to i64, !dbg !591
  %arrayidx72 = getelementptr inbounds [14 x i32]* @search.rc_index, i64 0, i64 %idxprom71, !dbg !591
  %25 = load i32* %arrayidx72, align 4, !dbg !591, !tbaa !300
  %captured76 = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom56, i32 2, !dbg !591
  %26 = load i32* %captured76, align 4, !dbg !591, !tbaa !300
  %idxprom77 = sext i32 %26 to i64, !dbg !591
  %arrayidx78 = getelementptr inbounds [14 x i32]* @search.rc_index, i64 0, i64 %idxprom77, !dbg !591
  %27 = load i32* %arrayidx78, align 4, !dbg !591, !tbaa !300
  %cmp79 = icmp eq i32 %25, %27, !dbg !591
  br i1 %cmp79, label %if.then80, label %if.end87, !dbg !591

if.then80:                                        ; preds = %land.lhs.true66
  %inc81 = add nsw i32 %depth, 1, !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %inc81}, i64 0, metadata !92), !dbg !592
  %28 = load i32* @ext_recap, align 4, !dbg !594, !tbaa !300
  %inc82 = add i32 %28, 1, !dbg !594
  store i32 %inc82, i32* @ext_recap, align 4, !dbg !594, !tbaa !300
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !112), !dbg !595
  store i32 1, i32* %arrayidx36, align 4, !dbg !596, !tbaa !284
  br label %if.end87, !dbg !597

if.end87:                                         ; preds = %land.lhs.true61, %land.lhs.true52, %if.else48, %land.lhs.true66, %if.then80, %land.lhs.true55, %if.then44
  %extend.0 = phi i32 [ 1, %if.then44 ], [ 1, %if.then80 ], [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true61 ], [ 0, %land.lhs.true55 ], [ 0, %land.lhs.true52 ], [ 0, %if.else48 ]
  %depth.addr.0 = phi i32 [ %inc45, %if.then44 ], [ %inc81, %if.then80 ], [ %depth, %land.lhs.true66 ], [ %depth, %land.lhs.true61 ], [ %depth, %land.lhs.true55 ], [ %depth, %land.lhs.true52 ], [ %depth, %if.else48 ]
  %cmp88 = icmp slt i32 %depth.addr.0, 1, !dbg !598
  %or.cond841 = or i1 %cmp88, %cmp37, !dbg !598
  br i1 %or.cond841, label %if.then91, label %if.end120, !dbg !598

if.then91:                                        ; preds = %if.end87
  %29 = load i32* @Variant, align 4, !dbg !599, !tbaa !300
  %.off1001 = add i32 %29, -3, !dbg !599
  %30 = icmp ugt i32 %.off1001, 1, !dbg !599
  br i1 %30, label %if.then95, label %if.else98, !dbg !599

if.then95:                                        ; preds = %if.then91
  store i32 1, i32* @captures, align 4, !dbg !601, !tbaa !284
  %sub96 = sub nsw i32 300, %16, !dbg !603
  %call97 = call i32 @qsearch(i32 %alpha, i32 %beta, i32 %sub96) #7, !dbg !603
  call void @llvm.dbg.value(metadata !{i32 %call97}, i64 0, metadata !98), !dbg !603
  store i32 0, i32* @captures, align 4, !dbg !604, !tbaa !284
  br label %cleanup, !dbg !605

if.else98:                                        ; preds = %if.then91
  switch i32 %29, label %if.end120 [
    i32 3, label %if.then100
    i32 4, label %if.then104
  ], !dbg !606

if.then100:                                       ; preds = %if.else98
  %call101 = call i32 @suicide_eval() #6, !dbg !608
  br label %cleanup, !dbg !608

if.then104:                                       ; preds = %if.else98
  %call105 = call i32 @losers_eval() #6, !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %call105}, i64 0, metadata !96), !dbg !610
  store i32 %call105, i32* %i, align 4, !dbg !610, !tbaa !300
  %ispos1002 = icmp sgt i32 %call105, -1, !dbg !612
  %neg1003 = sub i32 0, %call105, !dbg !612
  %31 = select i1 %ispos1002, i32 %call105, i32 %neg1003, !dbg !612
  %cmp107 = icmp eq i32 %31, 1000000, !dbg !612
  br i1 %cmp107, label %if.then108, label %cleanup, !dbg !612

if.then108:                                       ; preds = %if.then104
  %cmp109 = icmp sgt i32 %call105, 0, !dbg !613
  %32 = load i32* @ply, align 4, !dbg !613, !tbaa !300
  %sub111 = sub nsw i32 1000000, %32, !dbg !613
  %add113 = add nsw i32 %32, -1000000, !dbg !613
  %cond115 = select i1 %cmp109, i32 %sub111, i32 %add113, !dbg !613
  br label %cleanup, !dbg !613

if.end120:                                        ; preds = %if.else98, %if.end87
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !95), !dbg !615
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !101), !dbg !616
  %call121 = call i32 @ProbeTT(i32* %bound, i32 %beta, i32* %best, i32* %threat, i32* %donull, i32 %depth.addr.0) #6, !dbg !617
  switch i32 %call121, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb122
    i32 2, label %sw.bb126
    i32 4, label %sw.epilog.thread
  ], !dbg !617

sw.bb:                                            ; preds = %if.end120
  call void @llvm.dbg.value(metadata !{i32* %bound}, i64 0, metadata !103), !dbg !618
  %33 = load i32* %bound, align 4, !dbg !618, !tbaa !300
  br label %cleanup, !dbg !618

sw.bb122:                                         ; preds = %if.end120
  call void @llvm.dbg.value(metadata !{i32* %bound}, i64 0, metadata !103), !dbg !620
  %34 = load i32* %bound, align 4, !dbg !620, !tbaa !300
  %cmp123 = icmp sgt i32 %34, %alpha, !dbg !620
  br i1 %cmp123, label %sw.epilog, label %cleanup, !dbg !620

sw.bb126:                                         ; preds = %if.end120
  call void @llvm.dbg.value(metadata !{i32* %bound}, i64 0, metadata !103), !dbg !621
  %35 = load i32* %bound, align 4, !dbg !621, !tbaa !300
  %cmp127 = icmp slt i32 %35, %beta, !dbg !621
  br i1 %cmp127, label %sw.epilog, label %cleanup, !dbg !621

sw.epilog.thread:                                 ; preds = %if.end120
  call void @llvm.dbg.value(metadata !482, i64 0, metadata !106), !dbg !622
  store i32 -1, i32* %best, align 4, !dbg !622, !tbaa !300
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !104), !dbg !623
  store i32 0, i32* %threat, align 4, !dbg !623, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !106), !dbg !624
  br label %if.end133, !dbg !624

sw.epilog:                                        ; preds = %sw.bb122, %sw.bb126, %if.end120
  call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !106), !dbg !624
  %.pr = load i32* %best, align 4, !dbg !624, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !106), !dbg !624
  %cmp131 = icmp eq i32 %.pr, 500, !dbg !624
  br i1 %cmp131, label %if.then132, label %if.end133, !dbg !624

if.then132:                                       ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !482, i64 0, metadata !106), !dbg !624
  store i32 -1, i32* %best, align 4, !dbg !624, !tbaa !300
  br label %if.end133, !dbg !624

if.end133:                                        ; preds = %sw.epilog.thread, %if.then132, %sw.epilog
  call void @llvm.dbg.value(metadata !482, i64 0, metadata !107), !dbg !625
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !108), !dbg !626
  %36 = load i32* @ep_square, align 4, !dbg !627, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !109), !dbg !627
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !120), !dbg !628
  %37 = load i32* @Variant, align 4, !dbg !629, !tbaa !300
  %cmp134 = icmp eq i32 %37, 4, !dbg !629
  br i1 %cmp134, label %if.then135, label %if.end166, !dbg !629

if.then135:                                       ; preds = %if.end133
  %call136 = call i32 @losers_eval() #6, !dbg !630
  call void @llvm.dbg.value(metadata !{i32 %call136}, i64 0, metadata !96), !dbg !630
  store i32 %call136, i32* %i, align 4, !dbg !630, !tbaa !300
  %ispos998 = icmp sgt i32 %call136, -1, !dbg !632
  %neg999 = sub i32 0, %call136, !dbg !632
  %38 = select i1 %ispos998, i32 %call136, i32 %neg999, !dbg !632
  %cmp138 = icmp eq i32 %38, 1000000, !dbg !632
  br i1 %cmp138, label %if.then139, label %if.end147, !dbg !632

if.then139:                                       ; preds = %if.then135
  %cmp140 = icmp sgt i32 %call136, 0, !dbg !633
  %39 = load i32* @ply, align 4, !dbg !633, !tbaa !300
  %40 = sub i32 0, %39, !dbg !633
  %cond146.p = select i1 %cmp140, i32 %40, i32 %39, !dbg !633
  %cond146 = add i32 %cond146.p, %call136, !dbg !633
  br label %cleanup, !dbg !633

if.end147:                                        ; preds = %if.then135
  store i32 1, i32* @captures, align 4, !dbg !635, !tbaa !284
  %arrayidx148 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !636
  call void @gen(%struct.move_s* %arrayidx148) #6, !dbg !636
  %41 = load i32* @numb_moves, align 4, !dbg !637, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !95), !dbg !637
  store i32 0, i32* @captures, align 4, !dbg !638, !tbaa !284
  %tobool149 = icmp eq i32 %41, 0, !dbg !639
  br i1 %tobool149, label %if.then163, label %for.cond.preheader, !dbg !639

for.cond.preheader:                               ; preds = %if.end147
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !96), !dbg !640
  store i32 0, i32* %i, align 4, !dbg !640, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !640
  %cmp1511068 = icmp sgt i32 %41, 0, !dbg !640
  br i1 %cmp1511068, label %for.body, label %if.then163, !dbg !640

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %legalmoves.01070 = phi i32 [ %legalmoves.0.inc157, %for.body ], [ 0, %for.cond.preheader ]
  %storemerge10001069 = phi i32 [ %inc160, %for.body ], [ 0, %for.cond.preheader ]
  call void @make(%struct.move_s* %arrayidx148, i32 %storemerge10001069) #6, !dbg !643
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !645
  %42 = load i32* %i, align 4, !dbg !645, !tbaa !300
  %call154 = call i32 @check_legal(%struct.move_s* %arrayidx148, i32 %42, i32 %17) #6, !dbg !645
  %not.tobool155 = icmp ne i32 %call154, 0, !dbg !645
  %inc157 = zext i1 %not.tobool155 to i32, !dbg !645
  %legalmoves.0.inc157 = add nsw i32 %inc157, %legalmoves.01070, !dbg !645
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !646
  %43 = load i32* %i, align 4, !dbg !646, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx148, i32 %43) #6, !dbg !646
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !640
  %44 = load i32* %i, align 4, !dbg !640, !tbaa !300
  %inc160 = add nsw i32 %44, 1, !dbg !640
  call void @llvm.dbg.value(metadata !{i32 %inc160}, i64 0, metadata !96), !dbg !640
  call void @llvm.dbg.value(metadata !{i32 %storemerge10001069}, i64 0, metadata !96), !dbg !640
  call void @llvm.dbg.value(metadata !{i32 %inc160}, i64 0, metadata !96), !dbg !640
  store i32 %inc160, i32* %i, align 4, !dbg !640, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !640
  %cmp151 = icmp slt i32 %inc160, %41, !dbg !640
  br i1 %cmp151, label %for.body, label %if.end161, !dbg !640

if.end161:                                        ; preds = %for.body
  %phitmp1072 = icmp eq i32 %legalmoves.0.inc157, 0, !dbg !640
  br i1 %phitmp1072, label %if.then163, label %if.end166, !dbg !647

if.then163:                                       ; preds = %for.cond.preheader, %if.end147, %if.end161
  store i32 0, i32* @captures, align 4, !dbg !648, !tbaa !284
  call void @gen(%struct.move_s* %arrayidx148) #6, !dbg !650
  %45 = load i32* @numb_moves, align 4, !dbg !651, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !95), !dbg !651
  br label %if.end166, !dbg !652

if.end166:                                        ; preds = %if.then163, %if.end161, %if.end133
  %num_moves.1 = phi i32 [ 0, %if.end133 ], [ %41, %if.end161 ], [ %45, %if.then163 ]
  %cmp167 = icmp eq i32 %is_null, 0, !dbg !653
  br i1 %cmp167, label %land.lhs.true168, label %if.else242thread-pre-split, !dbg !653

land.lhs.true168:                                 ; preds = %if.end166
  %46 = load i32* @phase, align 4, !dbg !653, !tbaa !300
  %cmp169 = icmp ne i32 %46, 2, !dbg !653
  %cmp173 = icmp slt i32 %depth.addr.0, 7, !dbg !653
  %or.cond1006 = or i1 %cmp169, %cmp173, !dbg !653
  %or.cond1007 = and i1 %or.cond1006, %tobool39, !dbg !653
  br i1 %or.cond1007, label %land.lhs.true176, label %if.else242thread-pre-split, !dbg !653

land.lhs.true176:                                 ; preds = %land.lhs.true168
  call void @llvm.dbg.value(metadata !{i32* %donull}, i64 0, metadata !105), !dbg !653
  %47 = load i32* %donull, align 4, !dbg !653, !tbaa !300
  %tobool177 = icmp eq i32 %47, 0, !dbg !653
  %48 = load i32* @searching_pv, align 4, !dbg !653, !tbaa !284
  %tobool179 = icmp ne i32 %48, 0, !dbg !653
  %or.cond843 = or i1 %tobool177, %tobool179, !dbg !653
  br i1 %or.cond843, label %if.else242thread-pre-split, label %land.lhs.true180, !dbg !653

land.lhs.true180:                                 ; preds = %land.lhs.true176
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !653
  %49 = load i32* %threat, align 4, !dbg !653, !tbaa !300
  %cmp181 = icmp eq i32 %49, 0, !dbg !653
  br i1 %cmp181, label %land.lhs.true182, label %if.else242, !dbg !653

land.lhs.true182:                                 ; preds = %land.lhs.true180
  %50 = load i32* @Variant, align 4, !dbg !653, !tbaa !300
  %.off997 = add i32 %50, -3, !dbg !653
  %51 = icmp ugt i32 %.off997, 1, !dbg !653
  br i1 %51, label %if.then192, label %lor.lhs.false186, !dbg !653

lor.lhs.false186:                                 ; preds = %land.lhs.true182
  %cmp187 = icmp eq i32 %50, 4, !dbg !653
  br i1 %cmp187, label %land.lhs.true188, label %if.else242thread-pre-split, !dbg !653

land.lhs.true188:                                 ; preds = %lor.lhs.false186
  %captured190 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, i32 2, !dbg !653
  %52 = load i32* %captured190, align 8, !dbg !653, !tbaa !300
  %cmp191 = icmp eq i32 %52, 13, !dbg !653
  br i1 %cmp191, label %if.then192, label %if.else242thread-pre-split, !dbg !653

if.then192:                                       ; preds = %land.lhs.true182, %land.lhs.true188
  store i32 0, i32* @ep_square, align 4, !dbg !654, !tbaa !300
  %53 = load i32* @white_to_move, align 4, !dbg !656, !tbaa !300
  %xor = xor i32 %53, 1, !dbg !656
  store i32 %xor, i32* @white_to_move, align 4, !dbg !656, !tbaa !300
  %54 = load i32* @ply, align 4, !dbg !657, !tbaa !300
  %inc193 = add nsw i32 %54, 1, !dbg !657
  store i32 %inc193, i32* @ply, align 4, !dbg !657, !tbaa !300
  %55 = load i32* @fifty, align 4, !dbg !658, !tbaa !300
  %inc194 = add nsw i32 %55, 1, !dbg !658
  store i32 %inc194, i32* @fifty, align 4, !dbg !658, !tbaa !300
  %56 = load i32* @hash, align 4, !dbg !659, !tbaa !300
  %xor195 = xor i32 %56, -559038737, !dbg !659
  store i32 %xor195, i32* @hash, align 4, !dbg !659, !tbaa !300
  %sub200 = sub nsw i32 0, %beta, !dbg !660
  %add202 = sub i32 1, %beta, !dbg !660
  switch i32 %50, label %if.then199 [
    i32 4, label %if.else214
    i32 2, label %if.else214
  ], !dbg !661

if.then199:                                       ; preds = %if.then192
  %cmp203 = icmp sgt i32 %depth.addr.0, 3, !dbg !660
  %sub205.sink.v = select i1 %cmp203, i32 -2, i32 -1, !dbg !660
  %sub205.sink = add i32 %depth.addr.0, -1, !dbg !660
  %sub206 = add i32 %sub205.sink, %sub205.sink.v, !dbg !660
  %call212 = call i32 @search(i32 %sub200, i32 %add202, i32 %sub206, i32 1) #7, !dbg !660
  br label %if.end222, !dbg !660

if.else214:                                       ; preds = %if.then192, %if.then192
  %sub219 = add nsw i32 %depth.addr.0, -4, !dbg !662
  %call220 = call i32 @search(i32 %sub200, i32 %add202, i32 %sub219, i32 1) #7, !dbg !662
  br label %if.end222

if.end222:                                        ; preds = %if.else214, %if.then199
  %call212.pn = phi i32 [ %call212, %if.then199 ], [ %call220, %if.else214 ]
  %score.0 = sub nsw i32 0, %call212.pn, !dbg !660
  %57 = load i32* @hash, align 4, !dbg !663, !tbaa !300
  %xor223 = xor i32 %57, -559038737, !dbg !663
  store i32 %xor223, i32* @hash, align 4, !dbg !663, !tbaa !300
  %58 = load i32* @fifty, align 4, !dbg !664, !tbaa !300
  %dec = add nsw i32 %58, -1, !dbg !664
  store i32 %dec, i32* @fifty, align 4, !dbg !664, !tbaa !300
  %59 = load i32* @ply, align 4, !dbg !665, !tbaa !300
  %dec224 = add nsw i32 %59, -1, !dbg !665
  store i32 %dec224, i32* @ply, align 4, !dbg !665, !tbaa !300
  %60 = load i32* @white_to_move, align 4, !dbg !666, !tbaa !300
  %xor225 = xor i32 %60, 1, !dbg !666
  store i32 %xor225, i32* @white_to_move, align 4, !dbg !666, !tbaa !300
  store i32 %36, i32* @ep_square, align 4, !dbg !667, !tbaa !300
  %61 = load i32* @time_exit, align 4, !dbg !668, !tbaa !284
  %tobool226 = icmp eq i32 %61, 0, !dbg !668
  br i1 %tobool226, label %if.end228, label %cleanup, !dbg !668

if.end228:                                        ; preds = %if.end222
  %62 = load i32* @NTries, align 4, !dbg !669, !tbaa !300
  %inc229 = add i32 %62, 1, !dbg !669
  store i32 %inc229, i32* @NTries, align 4, !dbg !669, !tbaa !300
  %cmp230 = icmp slt i32 %score.0, %beta, !dbg !670
  br i1 %cmp230, label %if.else233, label %if.then231, !dbg !670

if.then231:                                       ; preds = %if.end228
  %63 = load i32* @NCuts, align 4, !dbg !671, !tbaa !300
  %inc232 = add i32 %63, 1, !dbg !671
  store i32 %inc232, i32* @NCuts, align 4, !dbg !671, !tbaa !300
  call void @StoreTT(i32 %score.0, i32 %alpha, i32 %beta, i32 500, i32 0, i32 %depth.addr.0) #6, !dbg !673
  br label %cleanup, !dbg !674

if.else233:                                       ; preds = %if.end228
  %cmp234 = icmp slt i32 %score.0, -999900, !dbg !675
  br i1 %cmp234, label %if.then235, label %if.end250, !dbg !675

if.then235:                                       ; preds = %if.else233
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !104), !dbg !676
  store i32 1, i32* %threat, align 4, !dbg !676, !tbaa !300
  %64 = load i32* @TExt, align 4, !dbg !678, !tbaa !300
  %inc236 = add i32 %64, 1, !dbg !678
  store i32 %inc236, i32* @TExt, align 4, !dbg !678, !tbaa !300
  %inc237 = add nsw i32 %depth.addr.0, 1, !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %inc237}, i64 0, metadata !92), !dbg !679
  %inc238 = add nsw i32 %extend.0, 1, !dbg !680
  call void @llvm.dbg.value(metadata !{i32 %inc238}, i64 0, metadata !112), !dbg !680
  %65 = load i32* @ext_onerep, align 4, !dbg !681, !tbaa !300
  %inc239 = add i32 %65, 1, !dbg !681
  store i32 %inc239, i32* @ext_onerep, align 4, !dbg !681, !tbaa !300
  br label %if.end250, !dbg !682

if.else242thread-pre-split:                       ; preds = %land.lhs.true176, %land.lhs.true168, %if.end166, %lor.lhs.false186, %land.lhs.true188
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !683
  %.pr1029 = load i32* %threat, align 4, !dbg !683, !tbaa !300
  br label %if.else242

if.else242:                                       ; preds = %if.else242thread-pre-split, %land.lhs.true180
  %66 = phi i32 [ %.pr1029, %if.else242thread-pre-split ], [ %49, %land.lhs.true180 ], !dbg !683
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !683
  %cmp243 = icmp eq i32 %66, 1, !dbg !683
  br i1 %cmp243, label %if.then244, label %if.end250, !dbg !683

if.then244:                                       ; preds = %if.else242
  %67 = load i32* @TExt, align 4, !dbg !684, !tbaa !300
  %inc245 = add i32 %67, 1, !dbg !684
  store i32 %inc245, i32* @TExt, align 4, !dbg !684, !tbaa !300
  %inc246 = add nsw i32 %depth.addr.0, 1, !dbg !686
  call void @llvm.dbg.value(metadata !{i32 %inc246}, i64 0, metadata !92), !dbg !686
  %inc247 = add nsw i32 %extend.0, 1, !dbg !687
  call void @llvm.dbg.value(metadata !{i32 %inc247}, i64 0, metadata !112), !dbg !687
  %68 = load i32* @ext_onerep, align 4, !dbg !688, !tbaa !300
  %inc248 = add i32 %68, 1, !dbg !688
  store i32 %inc248, i32* @ext_onerep, align 4, !dbg !688, !tbaa !300
  br label %if.end250, !dbg !689

if.end250:                                        ; preds = %if.else242, %if.else233, %if.then244, %if.then235
  %extend.1 = phi i32 [ %inc247, %if.then244 ], [ %inc238, %if.then235 ], [ %extend.0, %if.else233 ], [ %extend.0, %if.else242 ]
  %depth.addr.1 = phi i32 [ %inc246, %if.then244 ], [ %inc237, %if.then235 ], [ %depth.addr.0, %if.else233 ], [ %depth.addr.0, %if.else242 ]
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !98), !dbg !690
  %69 = load i32* @Variant, align 4, !dbg !691, !tbaa !300
  %cmp251 = icmp eq i32 %69, 4, !dbg !691
  br i1 %cmp251, label %if.end254, label %if.then252, !dbg !691

if.then252:                                       ; preds = %if.end250
  %arrayidx253 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !692
  call void @gen(%struct.move_s* %arrayidx253) #6, !dbg !692
  %70 = load i32* @numb_moves, align 4, !dbg !694, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !95), !dbg !694
  br label %if.end254, !dbg !695

if.end254:                                        ; preds = %if.end250, %if.then252
  %num_moves.2 = phi i32 [ %70, %if.then252 ], [ %num_moves.1, %if.end250 ]
  %71 = load i32* @cfg_onerep, align 4, !dbg !696, !tbaa !300
  %tobool255 = icmp eq i32 %71, 0, !dbg !696
  %or.cond1008 = or i1 %tobool255, %tobool39, !dbg !696
  %tobool259 = icmp eq i32 %num_moves.2, 0, !dbg !697
  %or.cond1009 = or i1 %or.cond1008, %tobool259, !dbg !696
  br i1 %or.cond1009, label %if.end277, label %for.cond261.preheader, !dbg !696

for.cond261.preheader:                            ; preds = %if.end254
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !96), !dbg !699
  store i32 0, i32* %i, align 4, !dbg !699, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !699
  %cmp2621064 = icmp sgt i32 %num_moves.2, 0, !dbg !699
  br i1 %cmp2621064, label %for.body264.lr.ph, label %if.end277, !dbg !699

for.body264.lr.ph:                                ; preds = %for.cond261.preheader
  %arrayidx265 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !702
  br label %for.body264, !dbg !699

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %legalmoves.41066 = phi i32 [ 0, %for.body264.lr.ph ], [ %legalmoves.4.inc270, %for.body264 ]
  %storemerge1065 = phi i32 [ 0, %for.body264.lr.ph ], [ %inc274, %for.body264 ]
  call void @make(%struct.move_s* %arrayidx265, i32 %storemerge1065) #6, !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !704
  %72 = load i32* %i, align 4, !dbg !704, !tbaa !300
  %call267 = call i32 @check_legal(%struct.move_s* %arrayidx265, i32 %72, i32 %17) #6, !dbg !704
  %not.tobool268 = icmp ne i32 %call267, 0, !dbg !704
  %inc270 = zext i1 %not.tobool268 to i32, !dbg !704
  %legalmoves.4.inc270 = add nsw i32 %inc270, %legalmoves.41066, !dbg !704
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !705
  %73 = load i32* %i, align 4, !dbg !705, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx265, i32 %73) #6, !dbg !705
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !699
  %74 = load i32* %i, align 4, !dbg !699, !tbaa !300
  %inc274 = add nsw i32 %74, 1, !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %inc274}, i64 0, metadata !96), !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %storemerge1065}, i64 0, metadata !96), !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %inc274}, i64 0, metadata !96), !dbg !699
  store i32 %inc274, i32* %i, align 4, !dbg !699, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !699
  %cmp262 = icmp slt i32 %inc274, %num_moves.2, !dbg !699
  %cmp263 = icmp slt i32 %legalmoves.4.inc270, 2, !dbg !699
  %or.cond1010 = and i1 %cmp262, %cmp263, !dbg !699
  br i1 %or.cond1010, label %for.body264, label %if.end277, !dbg !699

if.end277:                                        ; preds = %for.cond261.preheader, %for.body264, %if.end254
  %legalmoves.6 = phi i32 [ 0, %if.end254 ], [ 0, %for.cond261.preheader ], [ %legalmoves.4.inc270, %for.body264 ]
  %75 = load i32* @ply, align 4, !dbg !706, !tbaa !300
  %cmp278 = icmp slt i32 %75, 300, !dbg !706
  %76 = load i32* @Variant, align 4, !dbg !707, !tbaa !300
  br i1 %cmp278, label %if.then279, label %if.end302, !dbg !706

if.then279:                                       ; preds = %if.end277
  %cmp280 = icmp eq i32 %76, 3, !dbg !707
  %cmp282 = icmp eq i32 %num_moves.2, 1, !dbg !707
  %or.cond1011 = and i1 %cmp280, %cmp282, !dbg !707
  br i1 %or.cond1011, label %if.then283, label %if.else288, !dbg !707

if.then283:                                       ; preds = %if.then279
  %inc284 = add nsw i32 %depth.addr.1, 1, !dbg !709
  call void @llvm.dbg.value(metadata !{i32 %inc284}, i64 0, metadata !92), !dbg !709
  %77 = load i32* @ext_onerep, align 4, !dbg !711, !tbaa !300
  %inc285 = add i32 %77, 1, !dbg !711
  store i32 %inc285, i32* @ext_onerep, align 4, !dbg !711, !tbaa !300
  %idxprom286 = sext i32 %75 to i64, !dbg !712
  %arrayidx287 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom286, !dbg !712
  store i32 1, i32* %arrayidx287, align 4, !dbg !712, !tbaa !284
  br label %if.end302, !dbg !713

if.else288:                                       ; preds = %if.then279
  %cmp289 = icmp eq i32 %legalmoves.6, 1, !dbg !714
  br i1 %cmp289, label %land.lhs.true290, label %if.end302, !dbg !714

land.lhs.true290:                                 ; preds = %if.else288
  %sub291 = add nsw i32 %75, -2, !dbg !714
  %idxprom292 = sext i32 %sub291 to i64, !dbg !714
  %arrayidx293 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom292, !dbg !714
  %78 = load i32* %arrayidx293, align 4, !dbg !714, !tbaa !284
  %tobool294 = icmp eq i32 %78, 0, !dbg !714
  br i1 %tobool294, label %if.then295, label %if.end302, !dbg !714

if.then295:                                       ; preds = %land.lhs.true290
  %inc296 = add nsw i32 %depth.addr.1, 1, !dbg !715
  call void @llvm.dbg.value(metadata !{i32 %inc296}, i64 0, metadata !92), !dbg !715
  %79 = load i32* @ext_onerep, align 4, !dbg !717, !tbaa !300
  %inc297 = add i32 %79, 1, !dbg !717
  store i32 %inc297, i32* @ext_onerep, align 4, !dbg !717, !tbaa !300
  %idxprom298 = sext i32 %75 to i64, !dbg !718
  %arrayidx299 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom298, !dbg !718
  store i32 1, i32* %arrayidx299, align 4, !dbg !718, !tbaa !284
  br label %if.end302, !dbg !719

if.end302:                                        ; preds = %if.end277, %land.lhs.true290, %if.else288, %if.then283, %if.then295
  %80 = phi i32 [ 3, %if.then283 ], [ %76, %if.then295 ], [ %76, %if.else288 ], [ %76, %land.lhs.true290 ], [ %76, %if.end277 ]
  %depth.addr.2 = phi i32 [ %inc284, %if.then283 ], [ %inc296, %if.then295 ], [ %depth.addr.1, %if.else288 ], [ %depth.addr.1, %land.lhs.true290 ], [ %depth.addr.1, %if.end277 ]
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !111), !dbg !720
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !115), !dbg !721
  %81 = load i32* @phase, align 4, !dbg !722, !tbaa !300
  %cmp303 = icmp ne i32 %81, 2, !dbg !722
  %cmp305 = icmp ne i32 %80, 3, !dbg !722
  %or.cond846 = and i1 %cmp303, %cmp305, !dbg !722
  %82 = load i32* @cfg_futprune, align 4, !dbg !722, !tbaa !300
  %tobool307 = icmp ne i32 %82, 0, !dbg !722
  %or.cond847 = and i1 %or.cond846, %tobool307, !dbg !722
  br i1 %or.cond847, label %if.then308, label %if.end353, !dbg !722

if.then308:                                       ; preds = %if.end302
  %83 = load i32* @white_to_move, align 4, !dbg !723, !tbaa !300
  %tobool309 = icmp ne i32 %83, 0, !dbg !723
  %84 = load i32* @Material, align 4, !dbg !723, !tbaa !300
  %sub312 = sub nsw i32 0, %84, !dbg !723
  %cond314 = select i1 %tobool309, i32 %84, i32 %sub312, !dbg !723
  %add315 = add nsw i32 %cond314, 900, !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %add315}, i64 0, metadata !113), !dbg !723
  %tobool316.not = icmp eq i32 %extend.1, 0, !dbg !725
  %cmp318 = icmp eq i32 %depth.addr.2, 3, !dbg !725
  %or.cond1012 = and i1 %tobool316.not, %cmp318, !dbg !725
  %or.cond1012.not = xor i1 %or.cond1012, true, !dbg !725
  %cmp320 = icmp sgt i32 %add315, %alpha, !dbg !725
  %or.cond1013 = or i1 %cmp320, %or.cond1012.not, !dbg !725
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !92), !dbg !727
  %depth.addr.3 = select i1 %or.cond1013, i32 %depth.addr.2, i32 2, !dbg !725
  %add329 = add nsw i32 %cond314, 500, !dbg !728
  call void @llvm.dbg.value(metadata !{i32 %add329}, i64 0, metadata !113), !dbg !728
  %cmp332 = icmp eq i32 %depth.addr.3, 2, !dbg !729
  %or.cond1015 = and i1 %tobool316.not, %cmp332, !dbg !729
  %or.cond1015.not = xor i1 %or.cond1015, true, !dbg !729
  %cmp334 = icmp sgt i32 %add329, %alpha, !dbg !729
  %or.cond1016 = or i1 %cmp334, %or.cond1015.not, !dbg !729
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !115), !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %add329}, i64 0, metadata !114), !dbg !732
  call void @llvm.dbg.value(metadata !{i32 %add329}, i64 0, metadata !108), !dbg !732
  %best_score.0 = select i1 %or.cond1016, i32 -1000000, i32 %add329, !dbg !729
  %85 = zext i1 %or.cond1016 to i32, !dbg !729
  %selective.0 = xor i32 %85, 1, !dbg !729
  %cmp343 = icmp eq i32 %80, 2, !dbg !733
  %cond344 = select i1 %cmp343, i32 150, i32 200, !dbg !733
  %add345 = add nsw i32 %cond314, %cond344, !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %add345}, i64 0, metadata !113), !dbg !733
  %cmp348 = icmp eq i32 %depth.addr.3, 1, !dbg !734
  %or.cond1018 = and i1 %tobool316.not, %cmp348, !dbg !734
  %or.cond1018.not = xor i1 %or.cond1018, true, !dbg !734
  %cmp350 = icmp sgt i32 %add345, %alpha, !dbg !734
  %or.cond1019 = or i1 %cmp350, %or.cond1018.not, !dbg !734
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !115), !dbg !735
  call void @llvm.dbg.value(metadata !{i32 %add345}, i64 0, metadata !114), !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %add345}, i64 0, metadata !108), !dbg !737
  %best_score.0.add345 = select i1 %or.cond1019, i32 %best_score.0, i32 %add345, !dbg !734
  %selective.0. = select i1 %or.cond1019, i32 %selective.0, i32 1, !dbg !734
  br label %if.end353, !dbg !734

if.end353:                                        ; preds = %if.then308, %if.end302
  %best_score.1 = phi i32 [ -1000000, %if.end302 ], [ %best_score.0.add345, %if.then308 ]
  %selective.1 = phi i32 [ 0, %if.end302 ], [ %selective.0., %if.then308 ]
  %depth.addr.4 = phi i32 [ %depth.addr.2, %if.end302 ], [ %depth.addr.3, %if.then308 ]
  %cmp354 = icmp sgt i32 %num_moves.2, 0, !dbg !738
  br i1 %cmp354, label %if.then355, label %if.else790, !dbg !738

if.then355:                                       ; preds = %if.end353
  %arrayidx356 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !739
  %arrayidx357 = getelementptr inbounds [512 x i32]* %move_ordering, i64 0, i64 0, !dbg !739
  %arrayidx358 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 0, !dbg !739
  call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !106), !dbg !739
  %86 = load i32* %best, align 4, !dbg !739, !tbaa !300
  call void @order_moves(%struct.move_s* %arrayidx356, i32* %arrayidx357, i32* %arrayidx358, i32 %num_moves.2, i32 %86) #7, !dbg !739
  %call3601051 = call i32 @remove_one(i32* %i, i32* %arrayidx357, i32 %num_moves.2) #7, !dbg !741
  %tobool3611052 = icmp eq i32 %call3601051, 0, !dbg !741
  br i1 %tobool3611052, label %if.then795, label %while.body.lr.ph, !dbg !741

while.body.lr.ph:                                 ; preds = %if.then355
  %cmp423 = icmp sgt i32 %depth.addr.4, 1, !dbg !742
  %tobool484 = icmp eq i32 %selective.1, 0, !dbg !745
  %sub512 = sub nsw i32 0, %beta, !dbg !746
  %add514 = add i32 %depth.addr.4, -1, !dbg !746
  %cmp441 = icmp eq i32 %depth.addr.4, 1, !dbg !749
  %cmp388 = icmp slt i32 %depth.addr.4, 3, !dbg !751
  br label %while.body, !dbg !741

while.body:                                       ; preds = %while.body.lr.ph, %if.end786
  %alpha.addr.01059 = phi i32 [ %alpha, %while.body.lr.ph ], [ %alpha.addr.1, %if.end786 ]
  %first.01058 = phi i32 [ 1, %while.body.lr.ph ], [ %first.0., %if.end786 ]
  %best_score.21056 = phi i32 [ %best_score.1, %while.body.lr.ph ], [ %best_score.6, %if.end786 ]
  %sbest.01055 = phi i32 [ -1, %while.body.lr.ph ], [ %sbest.1, %if.end786 ]
  %no_moves.01054 = phi i32 [ 1, %while.body.lr.ph ], [ %no_moves.1, %if.end786 ]
  %score.11053 = phi i32 [ -1000000, %while.body.lr.ph ], [ %score.4, %if.end786 ]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !752
  %87 = load i32* %i, align 4, !dbg !752, !tbaa !300
  call void @make(%struct.move_s* %arrayidx356, i32 %87) #6, !dbg !752
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !102), !dbg !753
  %88 = load i32* @hash, align 4, !dbg !754, !tbaa !300
  %89 = load i32* @move_number, align 4, !dbg !754, !tbaa !300
  %90 = load i32* @ply, align 4, !dbg !754, !tbaa !300
  %add363 = add i32 %89, -1, !dbg !754
  %sub364 = add i32 %add363, %90, !dbg !754
  %idxprom365 = sext i32 %sub364 to i64, !dbg !754
  %arrayidx366 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom365, !dbg !754
  store i32 %88, i32* %arrayidx366, align 4, !dbg !754, !tbaa !300
  %sub367 = add nsw i32 %90, -1, !dbg !755
  %idxprom368 = sext i32 %sub367 to i64, !dbg !755
  %arrayidx369 = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom368, !dbg !755
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !755
  %91 = load i32* %i, align 4, !dbg !755, !tbaa !300
  %idxprom370 = sext i32 %91 to i64, !dbg !755
  %arrayidx371 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom370, !dbg !755
  %92 = bitcast %struct.move_s* %arrayidx369 to i8*, !dbg !755
  %93 = bitcast %struct.move_s* %arrayidx371 to i8*, !dbg !755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 24, i32 4, i1 false), !dbg !755, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !112), !dbg !756
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !757
  %call373 = call i32 @check_legal(%struct.move_s* %arrayidx356, i32 %91, i32 %17) #6, !dbg !757
  %tobool374 = icmp eq i32 %call373, 0, !dbg !757
  br i1 %tobool374, label %if.end561, label %if.then375, !dbg !757

if.then375:                                       ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !758
  %94 = load i32* %i, align 4, !dbg !758, !tbaa !300
  %call377 = call i32 @f_in_check(%struct.move_s* %arrayidx356, i32 %94) #6, !dbg !758
  call void @llvm.dbg.value(metadata !{i32 %call377}, i64 0, metadata !119), !dbg !758
  %95 = load i32* @ply, align 4, !dbg !759, !tbaa !300
  %idxprom378 = sext i32 %95 to i64, !dbg !759
  %arrayidx379 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom378, !dbg !759
  store i32 %call377, i32* %arrayidx379, align 4, !dbg !759, !tbaa !284
  %tobool380 = icmp ne i32 %call377, 0, !dbg !751
  br i1 %tobool380, label %if.end418, label %land.lhs.true381, !dbg !751

land.lhs.true381:                                 ; preds = %if.then375
  %96 = load i32* @Variant, align 4, !dbg !751, !tbaa !300
  %97 = and i32 %96, -2, !dbg !751
  %98 = icmp eq i32 %97, 2, !dbg !751
  %cmp386 = icmp eq i32 %96, 4, !dbg !751
  %or.cond849 = or i1 %98, %cmp386, !dbg !751
  %or.cond1020 = and i1 %or.cond849, %cmp388, !dbg !751
  br i1 %or.cond1020, label %land.lhs.true389, label %if.end418, !dbg !751

land.lhs.true389:                                 ; preds = %land.lhs.true381
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !751
  %99 = load i32* %i, align 4, !dbg !751, !tbaa !300
  %idxprom390 = sext i32 %99 to i64, !dbg !751
  %target = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom390, i32 1, !dbg !751
  %100 = load i32* %target, align 4, !dbg !751, !tbaa !300
  %idxprom392 = sext i32 %100 to i64, !dbg !751
  %arrayidx393 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom392, !dbg !751
  %101 = load i32* %arrayidx393, align 4, !dbg !751, !tbaa !300
  switch i32 %101, label %if.end418 [
    i32 1, label %land.lhs.true395
    i32 2, label %land.lhs.true409
  ], !dbg !751

land.lhs.true395:                                 ; preds = %land.lhs.true389
  %arrayidx400 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom392, !dbg !751
  %102 = load i32* %arrayidx400, align 4, !dbg !751, !tbaa !300
  %cmp401 = icmp sgt i32 %102, 5, !dbg !751
  br i1 %cmp401, label %if.then416, label %if.end418, !dbg !751

land.lhs.true409:                                 ; preds = %land.lhs.true389
  %arrayidx414 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom392, !dbg !751
  %103 = load i32* %arrayidx414, align 4, !dbg !751, !tbaa !300
  %cmp415 = icmp slt i32 %103, 4, !dbg !751
  br i1 %cmp415, label %if.then416, label %if.end418, !dbg !751

if.then416:                                       ; preds = %land.lhs.true409, %land.lhs.true395
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !112), !dbg !760
  br label %if.end418, !dbg !762

if.end418:                                        ; preds = %land.lhs.true389, %land.lhs.true395, %land.lhs.true381, %if.then375, %if.then416, %land.lhs.true409
  %extend.2 = phi i32 [ 1, %if.then416 ], [ 0, %land.lhs.true409 ], [ 0, %if.then375 ], [ 0, %land.lhs.true381 ], [ 0, %land.lhs.true395 ], [ 0, %land.lhs.true389 ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !121), !dbg !763
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !742
  %104 = load i32* %i, align 4, !dbg !742, !tbaa !300
  %idxprom419 = sext i32 %104 to i64, !dbg !742
  %from = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom419, i32 0, !dbg !742
  %105 = load i32* %from, align 8, !dbg !742, !tbaa !300
  %cmp421 = icmp eq i32 %105, 0, !dbg !742
  %or.cond1021 = and i1 %cmp421, %cmp423, !dbg !742
  %cmp425 = icmp eq i32 %call377, 0, !dbg !742
  %or.cond1022 = and i1 %or.cond1021, %cmp425, !dbg !742
  br i1 %or.cond1022, label %land.lhs.true426, label %if.else435, !dbg !742

land.lhs.true426:                                 ; preds = %if.end418
  %106 = load i32* @searching_pv, align 4, !dbg !742, !tbaa !284
  %107 = or i32 %106, %17, !dbg !742
  %or.cond850.not = icmp eq i32 %107, 0, !dbg !742
  %108 = load i32* @cfg_razordrop, align 4, !dbg !742, !tbaa !300
  %tobool431 = icmp ne i32 %108, 0, !dbg !742
  %or.cond851 = and i1 %or.cond850.not, %tobool431, !dbg !742
  br i1 %or.cond851, label %if.then432, label %if.else435, !dbg !742

if.then432:                                       ; preds = %land.lhs.true426
  %109 = load i32* @razor_drop, align 4, !dbg !764, !tbaa !300
  %inc433 = add i32 %109, 1, !dbg !764
  store i32 %inc433, i32* @razor_drop, align 4, !dbg !764, !tbaa !300
  %dec434 = add nsw i32 %extend.2, -1, !dbg !764
  call void @llvm.dbg.value(metadata !{i32 %dec434}, i64 0, metadata !112), !dbg !764
  br label %land.lhs.true483, !dbg !764

if.else435:                                       ; preds = %land.lhs.true426, %if.end418
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !749
  %or.cond1023 = and i1 %cmp421, %cmp441, !dbg !749
  br i1 %or.cond1023, label %land.lhs.true442, label %land.lhs.true483, !dbg !749

land.lhs.true442:                                 ; preds = %if.else435
  %110 = load i32* @cfg_cutdrop, align 4, !dbg !749, !tbaa !300
  %tobool445 = icmp ne i32 %110, 0, !dbg !749
  %or.cond852 = and i1 %tobool39, %tobool445, !dbg !749
  br i1 %or.cond852, label %if.then446, label %land.lhs.true483, !dbg !749

if.then446:                                       ; preds = %land.lhs.true442
  %111 = load i32* @white_to_move, align 4, !dbg !766, !tbaa !300
  %tobool447 = icmp eq i32 %111, 0, !dbg !766
  %target451 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom419, i32 1, !dbg !768
  %112 = load i32* %target451, align 4, !dbg !768, !tbaa !300
  br i1 %tobool447, label %if.else463, label %if.then448, !dbg !766

if.then448:                                       ; preds = %if.then446
  %call452 = call i32 @calc_attackers(i32 %112, i32 1) #6, !dbg !768
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !770
  %113 = load i32* %i, align 4, !dbg !770, !tbaa !300
  %idxprom453 = sext i32 %113 to i64, !dbg !770
  %target455 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom453, i32 1, !dbg !770
  %114 = load i32* %target455, align 4, !dbg !770, !tbaa !300
  %call456 = call i32 @calc_attackers(i32 %114, i32 0) #6, !dbg !770
  %sub457 = sub nsw i32 %call452, %call456, !dbg !770
  %cmp458 = icmp sgt i32 %sub457, 0, !dbg !770
  %conv = zext i1 %cmp458 to i32, !dbg !770
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !121), !dbg !770
  br i1 %cmp458, label %if.then460, label %if.end481, !dbg !771

if.then460:                                       ; preds = %if.then448
  %115 = load i32* @drop_cuts, align 4, !dbg !771, !tbaa !300
  %inc461 = add i32 %115, 1, !dbg !771
  store i32 %inc461, i32* @drop_cuts, align 4, !dbg !771, !tbaa !300
  br label %if.end481, !dbg !771

if.else463:                                       ; preds = %if.then446
  %call467 = call i32 @calc_attackers(i32 %112, i32 0) #6, !dbg !772
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !774
  %116 = load i32* %i, align 4, !dbg !774, !tbaa !300
  %idxprom468 = sext i32 %116 to i64, !dbg !774
  %target470 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom468, i32 1, !dbg !774
  %117 = load i32* %target470, align 4, !dbg !774, !tbaa !300
  %call471 = call i32 @calc_attackers(i32 %117, i32 1) #6, !dbg !774
  %sub472 = sub nsw i32 %call467, %call471, !dbg !774
  %cmp473 = icmp sgt i32 %sub472, 0, !dbg !774
  %conv474 = zext i1 %cmp473 to i32, !dbg !774
  call void @llvm.dbg.value(metadata !{i32 %conv474}, i64 0, metadata !121), !dbg !774
  br i1 %cmp473, label %if.then476, label %if.end481, !dbg !775

if.then476:                                       ; preds = %if.else463
  %118 = load i32* @drop_cuts, align 4, !dbg !775, !tbaa !300
  %inc477 = add i32 %118, 1, !dbg !775
  store i32 %inc477, i32* @drop_cuts, align 4, !dbg !775, !tbaa !300
  br label %if.end481, !dbg !775

if.end481:                                        ; preds = %if.else463, %if.then476, %if.then448, %if.then460
  %dropcut.0 = phi i32 [ %conv, %if.then460 ], [ %conv, %if.then448 ], [ %conv474, %if.then476 ], [ %conv474, %if.else463 ]
  %tobool482 = icmp eq i32 %dropcut.0, 0, !dbg !745
  br i1 %tobool482, label %land.lhs.true483, label %if.else557, !dbg !745

land.lhs.true483:                                 ; preds = %if.else435, %land.lhs.true442, %if.then432, %if.end481
  %extend.31031 = phi i32 [ %extend.2, %if.end481 ], [ %dec434, %if.then432 ], [ %extend.2, %land.lhs.true442 ], [ %extend.2, %if.else435 ]
  %brmerge = or i1 %tobool484, %tobool380, !dbg !745
  br i1 %brmerge, label %if.then508, label %lor.lhs.false488, !dbg !745

lor.lhs.false488:                                 ; preds = %land.lhs.true483
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !776
  %119 = load i32* %i, align 4, !dbg !776, !tbaa !300
  %idxprom489 = sext i32 %119 to i64, !dbg !776
  %captured491 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom489, i32 2, !dbg !776
  %120 = load i32* %captured491, align 8, !dbg !776, !tbaa !300
  %idxprom492 = sext i32 %120 to i64, !dbg !776
  %arrayidx493 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom492, !dbg !776
  %121 = load i32* %arrayidx493, align 4, !dbg !776, !tbaa !300
  %ispos = icmp sgt i32 %121, -1, !dbg !776
  %neg = sub i32 0, %121, !dbg !776
  %122 = select i1 %ispos, i32 %121, i32 %neg, !dbg !776
  %123 = load i32* @Variant, align 4, !dbg !776, !tbaa !300
  %cmp495 = icmp eq i32 %123, 2, !dbg !776
  br i1 %cmp495, label %lor.end, label %lor.rhs, !dbg !776

lor.rhs:                                          ; preds = %lor.lhs.false488
  %cmp497 = icmp eq i32 %123, 4, !dbg !776
  %phitmp = select i1 %cmp497, i32 1, i32 2, !dbg !776
  br label %lor.end, !dbg !776

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false488
  %124 = phi i32 [ 1, %lor.lhs.false488 ], [ %phitmp, %lor.rhs ]
  %mul500 = mul nsw i32 %124, %122, !dbg !776
  %add501 = add nsw i32 %mul500, %best_score.1, !dbg !776
  %cmp502 = icmp sgt i32 %add501, %alpha.addr.01059, !dbg !776
  br i1 %cmp502, label %if.then508, label %lor.lhs.false504, !dbg !776

lor.lhs.false504:                                 ; preds = %lor.end
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !776
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom489, i32 3, !dbg !776
  %125 = load i32* %promoted, align 4, !dbg !776, !tbaa !300
  %tobool507 = icmp eq i32 %125, 0, !dbg !776
  br i1 %tobool507, label %if.else557, label %if.then508, !dbg !776

if.then508:                                       ; preds = %land.lhs.true483, %lor.lhs.false504, %lor.end
  %cmp509 = icmp eq i32 %first.01058, 1, !dbg !777
  %sub513 = sub nsw i32 0, %alpha.addr.01059, !dbg !746
  br i1 %cmp509, label %if.then511, label %if.else519, !dbg !777

if.then511:                                       ; preds = %if.then508
  %sub515 = add i32 %add514, %extend.31031, !dbg !746
  %call516 = call i32 @search(i32 %sub512, i32 %sub513, i32 %sub515, i32 0) #7, !dbg !746
  %sub517 = sub nsw i32 0, %call516, !dbg !746
  call void @llvm.dbg.value(metadata !{i32 %sub517}, i64 0, metadata !98), !dbg !746
  %126 = load i32* @FULL, align 4, !dbg !778, !tbaa !300
  %inc518 = add i32 %126, 1, !dbg !778
  store i32 %inc518, i32* @FULL, align 4, !dbg !778, !tbaa !300
  br label %if.end561, !dbg !779

if.else519:                                       ; preds = %if.then508
  %sub521 = xor i32 %alpha.addr.01059, -1, !dbg !780
  %sub524 = add i32 %add514, %extend.31031, !dbg !780
  %call525 = call i32 @search(i32 %sub521, i32 %sub513, i32 %sub524, i32 0) #7, !dbg !780
  %sub526 = sub nsw i32 0, %call525, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %sub526}, i64 0, metadata !98), !dbg !780
  %127 = load i32* @PVS, align 4, !dbg !782, !tbaa !300
  %inc527 = add i32 %127, 1, !dbg !782
  store i32 %inc527, i32* @PVS, align 4, !dbg !782, !tbaa !300
  %128 = load i32* @time_exit, align 4, !dbg !783, !tbaa !284
  %notlhs = icmp slt i32 %best_score.21056, %sub526, !dbg !783
  %notrhs = icmp eq i32 %128, 0, !dbg !783
  %or.cond853.not = and i1 %notrhs, %notlhs, !dbg !783
  %cmp533 = icmp ne i32 %sub526, -50000, !dbg !783
  %or.cond854 = and i1 %or.cond853.not, %cmp533, !dbg !783
  br i1 %or.cond854, label %if.then535, label %if.end561, !dbg !783

if.then535:                                       ; preds = %if.else519
  %cmp536 = icmp slt i32 %alpha.addr.01059, %sub526, !dbg !784
  %cmp539 = icmp slt i32 %sub526, %beta, !dbg !784
  %or.cond1024 = and i1 %cmp536, %cmp539, !dbg !784
  br i1 %or.cond1024, label %if.then541, label %if.end561, !dbg !784

if.then541:                                       ; preds = %if.then535
  %call546 = call i32 @search(i32 %sub512, i32 %sub513, i32 %sub524, i32 0) #7, !dbg !786
  %sub547 = sub nsw i32 0, %call546, !dbg !786
  call void @llvm.dbg.value(metadata !{i32 %sub547}, i64 0, metadata !98), !dbg !786
  %129 = load i32* @PVSF, align 4, !dbg !788, !tbaa !300
  %inc548 = add i32 %129, 1, !dbg !788
  store i32 %inc548, i32* @PVSF, align 4, !dbg !788, !tbaa !300
  %cmp549 = icmp slt i32 %best_score.21056, %sub547, !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %sub547}, i64 0, metadata !108), !dbg !789
  %sub547.best_score.2 = select i1 %cmp549, i32 %sub547, i32 %best_score.21056, !dbg !789
  br label %if.end561, !dbg !789

if.else557:                                       ; preds = %lor.lhs.false504, %if.end481
  %130 = load i32* @razor_material, align 4, !dbg !790, !tbaa !300
  %inc558 = add i32 %130, 1, !dbg !790
  store i32 %inc558, i32* @razor_material, align 4, !dbg !790, !tbaa !300
  br label %if.end561

if.end561:                                        ; preds = %if.else557, %if.then535, %if.else519, %if.then511, %if.then541, %while.body
  %score.4 = phi i32 [ %score.11053, %while.body ], [ %score.11053, %if.else557 ], [ %sub517, %if.then511 ], [ %sub526, %if.else519 ], [ %sub547, %if.then541 ], [ %sub526, %if.then535 ]
  %no_moves.1 = phi i32 [ %no_moves.01054, %while.body ], [ 0, %if.else557 ], [ 0, %if.then511 ], [ 0, %if.else519 ], [ 0, %if.then541 ], [ 0, %if.then535 ]
  %legal_move.1 = phi i1 [ true, %while.body ], [ true, %if.else557 ], [ false, %if.then511 ], [ false, %if.else519 ], [ false, %if.then541 ], [ false, %if.then535 ]
  %best_score.5 = phi i32 [ %best_score.21056, %while.body ], [ %best_score.21056, %if.else557 ], [ %best_score.21056, %if.then511 ], [ %best_score.21056, %if.else519 ], [ %sub547.best_score.2, %if.then541 ], [ %sub526, %if.then535 ]
  %cmp562 = icmp sle i32 %score.4, %best_score.5, !dbg !791
  %or.cond1025 = or i1 %cmp562, %legal_move.1, !dbg !791
  call void @llvm.dbg.value(metadata !{i32 %score.4}, i64 0, metadata !108), !dbg !792
  %best_score.6 = select i1 %or.cond1025, i32 %best_score.5, i32 %score.4, !dbg !791
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !794
  %131 = load i32* %i, align 4, !dbg !794, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx356, i32 %131) #6, !dbg !794
  %132 = load i32* @time_exit, align 4, !dbg !795, !tbaa !284
  %tobool569 = icmp eq i32 %132, 0, !dbg !795
  br i1 %tobool569, label %if.end571, label %cleanup, !dbg !795

if.end571:                                        ; preds = %if.end561
  %cmp572 = icmp sle i32 %score.4, %alpha.addr.01059, !dbg !796
  %or.cond1026 = or i1 %cmp572, %legal_move.1, !dbg !796
  br i1 %or.cond1026, label %if.end786, label %if.then576, !dbg !796

if.then576:                                       ; preds = %if.end571
  %cmp577 = icmp slt i32 %score.4, %beta, !dbg !797
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !799
  %133 = load i32* %i, align 4, !dbg !799, !tbaa !300
  br i1 %cmp577, label %if.end754, label %if.then579, !dbg !797

if.then579:                                       ; preds = %if.then576
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !800
  %idxprom580 = sext i32 %133 to i64, !dbg !800
  %target582 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 1, !dbg !800
  %134 = load i32* %target582, align 4, !dbg !800, !tbaa !300
  %idxprom583 = sext i32 %134 to i64, !dbg !800
  %from586 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 0, !dbg !800
  %135 = load i32* %from586, align 8, !dbg !800, !tbaa !300
  %idxprom587 = sext i32 %135 to i64, !dbg !800
  %arrayidx589 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom587, i64 %idxprom583, !dbg !800
  %136 = load i32* %arrayidx589, align 4, !dbg !800, !tbaa !300
  %inc590 = add i32 %136, 1, !dbg !800
  store i32 %inc590, i32* %arrayidx589, align 4, !dbg !800, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !802
  %captured593 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 2, !dbg !802
  %137 = load i32* %captured593, align 8, !dbg !802, !tbaa !300
  %cmp594 = icmp eq i32 %137, 13, !dbg !802
  br i1 %cmp594, label %if.then596, label %if.end747, !dbg !802

if.then596:                                       ; preds = %if.then579
  %138 = load i32* @ply, align 4, !dbg !803, !tbaa !300
  %idxprom600 = sext i32 %138 to i64, !dbg !803
  %from602 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, i32 0, !dbg !803
  %139 = load i32* %from602, align 4, !dbg !803, !tbaa !300
  %cmp603 = icmp eq i32 %135, %139, !dbg !803
  br i1 %cmp603, label %land.lhs.true605, label %if.else627, !dbg !803

land.lhs.true605:                                 ; preds = %if.then596
  %target611 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, i32 1, !dbg !803
  %140 = load i32* %target611, align 4, !dbg !803, !tbaa !300
  %cmp612 = icmp eq i32 %134, %140, !dbg !803
  br i1 %cmp612, label %land.lhs.true614, label %if.else627, !dbg !803

land.lhs.true614:                                 ; preds = %land.lhs.true605
  %promoted617 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 3, !dbg !803
  %141 = load i32* %promoted617, align 4, !dbg !803, !tbaa !300
  %promoted620 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, i32 3, !dbg !803
  %142 = load i32* %promoted620, align 4, !dbg !803, !tbaa !300
  %cmp621 = icmp eq i32 %141, %142, !dbg !803
  br i1 %cmp621, label %if.then623, label %if.else627, !dbg !803

if.then623:                                       ; preds = %land.lhs.true614
  %arrayidx625 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom600, !dbg !805
  %143 = load i32* %arrayidx625, align 4, !dbg !805, !tbaa !300
  %inc626 = add nsw i32 %143, 1, !dbg !805
  store i32 %inc626, i32* %arrayidx625, align 4, !dbg !805, !tbaa !300
  br label %if.end747, !dbg !807

if.else627:                                       ; preds = %land.lhs.true614, %land.lhs.true605, %if.then596
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !808
  %from633 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, i32 0, !dbg !808
  %144 = load i32* %from633, align 4, !dbg !808, !tbaa !300
  %cmp634 = icmp eq i32 %135, %144, !dbg !808
  br i1 %cmp634, label %land.lhs.true636, label %if.else682, !dbg !808

land.lhs.true636:                                 ; preds = %if.else627
  %target642 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, i32 1, !dbg !808
  %145 = load i32* %target642, align 4, !dbg !808, !tbaa !300
  %cmp643 = icmp eq i32 %134, %145, !dbg !808
  br i1 %cmp643, label %land.lhs.true645, label %if.else682, !dbg !808

land.lhs.true645:                                 ; preds = %land.lhs.true636
  %promoted648 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 3, !dbg !808
  %146 = load i32* %promoted648, align 4, !dbg !808, !tbaa !300
  %promoted651 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, i32 3, !dbg !808
  %147 = load i32* %promoted651, align 4, !dbg !808, !tbaa !300
  %cmp652 = icmp eq i32 %146, %147, !dbg !808
  br i1 %cmp652, label %if.then654, label %if.else682, !dbg !808

if.then654:                                       ; preds = %land.lhs.true645
  %arrayidx656 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom600, !dbg !809
  %148 = load i32* %arrayidx656, align 4, !dbg !809, !tbaa !300
  %inc657 = add nsw i32 %148, 1, !dbg !809
  store i32 %inc657, i32* %arrayidx656, align 4, !dbg !809, !tbaa !300
  %arrayidx661 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom600, !dbg !811
  %149 = load i32* %arrayidx661, align 4, !dbg !811, !tbaa !300
  %cmp662 = icmp slt i32 %148, %149, !dbg !811
  br i1 %cmp662, label %if.end747, label %if.then664, !dbg !811

if.then664:                                       ; preds = %if.then654
  %arrayidx666 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, !dbg !812
  %150 = bitcast %struct.move_s* %kswap to i8*, !dbg !812
  %151 = bitcast %struct.move_s* %arrayidx666 to i8*, !dbg !812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* %151, i64 24, i32 4, i1 false), !dbg !812, !tbaa.struct !526
  %arrayidx670 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, !dbg !814
  %152 = bitcast %struct.move_s* %arrayidx670 to i8*, !dbg !814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 24, i32 4, i1 false), !dbg !814, !tbaa.struct !526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %150, i64 24, i32 4, i1 false), !dbg !815, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %149}, i64 0, metadata !117), !dbg !816
  store i32 %inc657, i32* %arrayidx661, align 4, !dbg !817, !tbaa !300
  store i32 %149, i32* %arrayidx656, align 4, !dbg !818, !tbaa !300
  br label %if.end747, !dbg !819

if.else682:                                       ; preds = %land.lhs.true645, %land.lhs.true636, %if.else627
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !820
  %from688 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, i32 0, !dbg !820
  %153 = load i32* %from688, align 4, !dbg !820, !tbaa !300
  %cmp689 = icmp eq i32 %135, %153, !dbg !820
  br i1 %cmp689, label %land.lhs.true691, label %if.else737, !dbg !820

land.lhs.true691:                                 ; preds = %if.else682
  %target697 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, i32 1, !dbg !820
  %154 = load i32* %target697, align 4, !dbg !820, !tbaa !300
  %cmp698 = icmp eq i32 %134, %154, !dbg !820
  br i1 %cmp698, label %land.lhs.true700, label %if.else737, !dbg !820

land.lhs.true700:                                 ; preds = %land.lhs.true691
  %promoted703 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 3, !dbg !820
  %155 = load i32* %promoted703, align 4, !dbg !820, !tbaa !300
  %promoted706 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, i32 3, !dbg !820
  %156 = load i32* %promoted706, align 4, !dbg !820, !tbaa !300
  %cmp707 = icmp eq i32 %155, %156, !dbg !820
  br i1 %cmp707, label %if.then709, label %if.else737, !dbg !820

if.then709:                                       ; preds = %land.lhs.true700
  %arrayidx711 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom600, !dbg !821
  %157 = load i32* %arrayidx711, align 4, !dbg !821, !tbaa !300
  %inc712 = add nsw i32 %157, 1, !dbg !821
  store i32 %inc712, i32* %arrayidx711, align 4, !dbg !821, !tbaa !300
  %arrayidx716 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom600, !dbg !823
  %158 = load i32* %arrayidx716, align 4, !dbg !823, !tbaa !300
  %cmp717 = icmp slt i32 %157, %158, !dbg !823
  br i1 %cmp717, label %if.end747, label %if.then719, !dbg !823

if.then719:                                       ; preds = %if.then709
  %arrayidx721 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, !dbg !824
  %159 = bitcast %struct.move_s* %kswap to i8*, !dbg !824
  %160 = bitcast %struct.move_s* %arrayidx721 to i8*, !dbg !824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 24, i32 4, i1 false), !dbg !824, !tbaa.struct !526
  %arrayidx725 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, !dbg !826
  %161 = bitcast %struct.move_s* %arrayidx725 to i8*, !dbg !826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 24, i32 4, i1 false), !dbg !826, !tbaa.struct !526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %159, i64 24, i32 4, i1 false), !dbg !827, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %158}, i64 0, metadata !117), !dbg !828
  store i32 %inc712, i32* %arrayidx716, align 4, !dbg !829, !tbaa !300
  store i32 %158, i32* %arrayidx711, align 4, !dbg !830, !tbaa !300
  br label %if.end747, !dbg !831

if.else737:                                       ; preds = %land.lhs.true700, %land.lhs.true691, %if.else682
  %arrayidx739 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom600, !dbg !832
  store i32 1, i32* %arrayidx739, align 4, !dbg !832, !tbaa !300
  %arrayidx741 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, !dbg !834
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !834
  %arrayidx743 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, !dbg !834
  %162 = bitcast %struct.move_s* %arrayidx741 to i8*, !dbg !834
  %163 = bitcast %struct.move_s* %arrayidx743 to i8*, !dbg !834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 24, i32 4, i1 false), !dbg !834, !tbaa.struct !526
  br label %if.end747

if.end747:                                        ; preds = %if.then654, %if.then709, %if.then623, %if.else737, %if.then719, %if.then664, %if.then579
  %cmp748 = icmp eq i32 %first.01058, 1, !dbg !835
  br i1 %cmp748, label %if.then750, label %if.end752, !dbg !835

if.then750:                                       ; preds = %if.end747
  %164 = load i32* @FHF, align 4, !dbg !835, !tbaa !300
  %inc751 = add i32 %164, 1, !dbg !835
  store i32 %inc751, i32* @FHF, align 4, !dbg !835, !tbaa !300
  br label %if.end752, !dbg !835

if.end752:                                        ; preds = %if.then750, %if.end747
  %165 = load i32* @FH, align 4, !dbg !836, !tbaa !300
  %inc753 = add i32 %165, 1, !dbg !836
  store i32 %inc753, i32* @FH, align 4, !dbg !836, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !837
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !837
  %166 = load i32* %threat, align 4, !dbg !837, !tbaa !300
  call void @StoreTT(i32 %score.4, i32 %alpha, i32 %beta, i32 %133, i32 %166, i32 %depth.addr.4) #6, !dbg !837
  br label %cleanup, !dbg !838

if.end754:                                        ; preds = %if.then576
  call void @llvm.dbg.value(metadata !{i32 %score.4}, i64 0, metadata !90), !dbg !839
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !96), !dbg !799
  call void @llvm.dbg.value(metadata !{i32 %133}, i64 0, metadata !107), !dbg !799
  %167 = load i32* @ply, align 4, !dbg !840, !tbaa !300
  %idxprom755 = sext i32 %167 to i64, !dbg !840
  %arrayidx758 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom755, i64 %idxprom755, !dbg !840
  %idxprom759 = sext i32 %133 to i64, !dbg !840
  %arrayidx760 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom759, !dbg !840
  %168 = bitcast %struct.move_s* %arrayidx758 to i8*, !dbg !840
  %169 = bitcast %struct.move_s* %arrayidx760 to i8*, !dbg !840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 24, i32 4, i1 false), !dbg !840, !tbaa.struct !526
  %j.01033 = add i32 %167, 1, !dbg !841
  %idxprom7641035 = sext i32 %j.01033 to i64, !dbg !841
  %arrayidx7651036 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom7641035, !dbg !841
  %170 = load i32* %arrayidx7651036, align 4, !dbg !841, !tbaa !300
  %cmp7661037 = icmp slt i32 %j.01033, %170, !dbg !841
  br i1 %cmp7661037, label %for.body768, label %for.end780, !dbg !841

for.body768:                                      ; preds = %if.end754, %for.body768
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body768 ], [ %idxprom7641035, %if.end754 ]
  %j.01038 = phi i32 [ %j.0, %for.body768 ], [ %j.01033, %if.end754 ]
  %arrayidx772 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom755, i64 %indvars.iv, !dbg !843
  %arrayidx777 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom7641035, i64 %indvars.iv, !dbg !843
  %171 = bitcast %struct.move_s* %arrayidx772 to i8*, !dbg !843
  %172 = bitcast %struct.move_s* %arrayidx777 to i8*, !dbg !843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %172, i64 24, i32 4, i1 false), !dbg !843, !tbaa.struct !526
  %j.0 = add nsw i32 %j.01038, 1, !dbg !841
  %cmp766 = icmp slt i32 %j.0, %170, !dbg !841
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !841
  br i1 %cmp766, label %for.body768, label %for.end780, !dbg !841

for.end780:                                       ; preds = %for.body768, %if.end754
  %arrayidx785 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom755, !dbg !844
  store i32 %170, i32* %arrayidx785, align 4, !dbg !844, !tbaa !300
  br label %if.end786, !dbg !845

if.end786:                                        ; preds = %if.end571, %for.end780
  %sbest.1 = phi i32 [ %133, %for.end780 ], [ %sbest.01055, %if.end571 ]
  %alpha.addr.1 = phi i32 [ %score.4, %for.end780 ], [ %alpha.addr.01059, %if.end571 ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !111), !dbg !846
  %first.0. = select i1 %legal_move.1, i32 %first.01058, i32 0, !dbg !847
  %call360 = call i32 @remove_one(i32* %i, i32* %arrayidx357, i32 %num_moves.2) #7, !dbg !741
  %tobool361 = icmp eq i32 %call360, 0, !dbg !741
  br i1 %tobool361, label %if.end793, label %while.body, !dbg !741

if.else790:                                       ; preds = %if.end353
  %sub791 = sub nsw i32 1000000, %75, !dbg !848
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !848
  %173 = load i32* %threat, align 4, !dbg !848, !tbaa !300
  call void @StoreTT(i32 %sub791, i32 %alpha, i32 %beta, i32 0, i32 %173, i32 %depth.addr.4) #6, !dbg !848
  %174 = load i32* @ply, align 4, !dbg !850, !tbaa !300
  %sub792 = sub nsw i32 1000000, %174, !dbg !850
  br label %cleanup, !dbg !850

if.end793:                                        ; preds = %if.end786
  %tobool794 = icmp eq i32 %no_moves.1, 0, !dbg !851
  br i1 %tobool794, label %if.else811, label %if.then795, !dbg !851

if.then795:                                       ; preds = %if.then355, %if.end793
  %175 = load i32* @Variant, align 4, !dbg !852, !tbaa !300
  %.off996 = add i32 %175, -3, !dbg !852
  %176 = icmp ugt i32 %.off996, 1, !dbg !852
  br i1 %176, label %if.then801, label %if.else808, !dbg !852

if.then801:                                       ; preds = %if.then795
  %call802 = call i32 @in_check() #6, !dbg !854
  %tobool803 = icmp eq i32 %call802, 0, !dbg !854
  br i1 %tobool803, label %if.else807, label %if.then804, !dbg !854

if.then804:                                       ; preds = %if.then801
  %177 = load i32* @ply, align 4, !dbg !856, !tbaa !300
  %add805 = add nsw i32 %177, -1000000, !dbg !856
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !856
  %178 = load i32* %threat, align 4, !dbg !856, !tbaa !300
  call void @StoreTT(i32 %add805, i32 %alpha, i32 %beta, i32 0, i32 %178, i32 %depth.addr.4) #6, !dbg !856
  %179 = load i32* @ply, align 4, !dbg !858, !tbaa !300
  %add806 = add nsw i32 %179, -1000000, !dbg !858
  br label %cleanup, !dbg !858

if.else807:                                       ; preds = %if.then801
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !859
  %180 = load i32* %threat, align 4, !dbg !859, !tbaa !300
  call void @StoreTT(i32 0, i32 %alpha, i32 %beta, i32 0, i32 %180, i32 %depth.addr.4) #6, !dbg !859
  br label %cleanup, !dbg !861

if.else808:                                       ; preds = %if.then795
  %181 = load i32* @ply, align 4, !dbg !862, !tbaa !300
  %sub809 = sub nsw i32 1000000, %181, !dbg !862
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !862
  %182 = load i32* %threat, align 4, !dbg !862, !tbaa !300
  call void @StoreTT(i32 %sub809, i32 %alpha, i32 %beta, i32 0, i32 %182, i32 %depth.addr.4) #6, !dbg !862
  %183 = load i32* @ply, align 4, !dbg !864, !tbaa !300
  %sub810 = sub nsw i32 1000000, %183, !dbg !864
  br label %cleanup, !dbg !864

if.else811:                                       ; preds = %if.end793
  %184 = load i32* @fifty, align 4, !dbg !865, !tbaa !300
  %cmp812 = icmp sgt i32 %184, 100, !dbg !865
  br i1 %cmp812, label %cleanup, label %if.end816, !dbg !865

if.end816:                                        ; preds = %if.else811
  %cmp817 = icmp eq i32 %sbest.1, -1, !dbg !867
  call void @llvm.dbg.value(metadata !868, i64 0, metadata !107), !dbg !867
  %.sbest.0 = select i1 %cmp817, i32 500, i32 %sbest.1, !dbg !867
  %cmp821 = icmp sgt i32 %best_score.6, %alpha, !dbg !869
  %tobool824 = icmp ne i32 %selective.1, 0, !dbg !870
  br i1 %cmp821, label %if.else827, label %if.then823, !dbg !869

if.then823:                                       ; preds = %if.end816
  br i1 %tobool824, label %cleanup, label %if.then825, !dbg !870

if.then825:                                       ; preds = %if.then823
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !872
  %185 = load i32* %threat, align 4, !dbg !872, !tbaa !300
  call void @StoreTT(i32 %best_score.6, i32 %alpha, i32 %beta, i32 %.sbest.0, i32 %185, i32 %depth.addr.4) #6, !dbg !872
  br label %cleanup, !dbg !872

if.else827:                                       ; preds = %if.end816
  call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !104), !dbg !873
  %186 = load i32* %threat, align 4, !dbg !873, !tbaa !300
  br i1 %tobool824, label %if.else830, label %if.then829, !dbg !875

if.then829:                                       ; preds = %if.else827
  call void @StoreTT(i32 %best_score.6, i32 %alpha, i32 %beta, i32 %.sbest.0, i32 %186, i32 %depth.addr.4) #6, !dbg !876
  br label %cleanup, !dbg !876

if.else830:                                       ; preds = %if.else827
  call void @StoreTT(i32 %best_score.6, i32 -1000000, i32 -1000000, i32 %.sbest.0, i32 %186, i32 %depth.addr.4) #6, !dbg !873
  br label %cleanup

cleanup:                                          ; preds = %if.end561, %if.then825, %if.then823, %if.else830, %if.then829, %if.else811, %if.end222, %sw.bb126, %sw.bb122, %if.then104, %if.end26, %if.else808, %if.else807, %if.then804, %if.else790, %if.end752, %if.then231, %if.then139, %sw.bb, %if.then108, %if.then100, %if.then95, %if.else23, %if.then2
  %retval.0 = phi i32 [ %call97, %if.then95 ], [ %call101, %if.then100 ], [ %cond115, %if.then108 ], [ %cond146, %if.then139 ], [ %score.4, %if.end752 ], [ %add806, %if.then804 ], [ 0, %if.else807 ], [ %sub810, %if.else808 ], [ %sub792, %if.else790 ], [ %score.0, %if.then231 ], [ %33, %sw.bb ], [ 0, %if.then2 ], [ 0, %if.else23 ], [ 0, %if.end26 ], [ %call105, %if.then104 ], [ %34, %sw.bb122 ], [ %35, %sw.bb126 ], [ 0, %if.end222 ], [ 0, %if.else811 ], [ %best_score.6, %if.then829 ], [ %best_score.6, %if.else830 ], [ %best_score.6, %if.then823 ], [ %best_score.6, %if.then825 ], [ 0, %if.end561 ]
  call void @llvm.lifetime.end(i64 2048, i8* %2) #3, !dbg !877
  call void @llvm.lifetime.end(i64 2048, i8* %1) #3, !dbg !877
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !877
  ret i32 %retval.0, !dbg !877
}

; Function Attrs: optsize
declare i32 @is_draw() #2

; Function Attrs: optsize
declare i32 @suicide_eval() #2

; Function Attrs: optsize
declare i32 @losers_eval() #2

; Function Attrs: optsize
declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #2

; Function Attrs: optsize
declare void @StoreTT(i32, i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @f_in_check(%struct.move_s*, i32) #2

; Function Attrs: optsize
declare i32 @calc_attackers(i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @search_root(%struct.move_s* noalias nocapture sret %agg.result, i32 %originalalpha, i32 %originalbeta, i32 %depth) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %best_move = alloca %struct.move_s, align 4
  %i = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %kswap = alloca %struct.move_s, align 4
  call void @llvm.dbg.value(metadata !{i32 %originalalpha}, i64 0, metadata !127), !dbg !878
  call void @llvm.dbg.value(metadata !{i32 %originalbeta}, i64 0, metadata !128), !dbg !878
  call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !129), !dbg !878
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !879
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !130), !dbg !879
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %best_move}, metadata !131), !dbg !879
  %1 = bitcast %struct.move_s* %best_move to i8*, !dbg !879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !879, !tbaa.struct !526
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !133), !dbg !880
  call void @llvm.dbg.value(metadata !444, i64 0, metadata !135), !dbg !881
  %2 = bitcast [512 x i32]* %move_ordering to i8*, !dbg !881
  call void @llvm.lifetime.start(i64 2048, i8* %2) #3, !dbg !881
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %move_ordering}, metadata !136), !dbg !881
  %3 = bitcast [512 x i32]* %see_values to i8*, !dbg !881
  call void @llvm.lifetime.start(i64 2048, i8* %3) #3, !dbg !881
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %see_values}, metadata !137), !dbg !881
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %kswap}, metadata !143), !dbg !882
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !146), !dbg !883
  call void @llvm.dbg.value(metadata !{i32 %originalalpha}, i64 0, metadata !141), !dbg !884
  call void @llvm.dbg.value(metadata !{i32 %originalbeta}, i64 0, metadata !142), !dbg !885
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !132), !dbg !886
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !138), !dbg !887
  store i32 1, i32* @ply, align 4, !dbg !888, !tbaa !300
  store i32 1, i32* @searching_pv, align 4, !dbg !889, !tbaa !284
  store i32 0, i32* @time_exit, align 4, !dbg !890, !tbaa !284
  store i32 0, i32* @time_failure, align 4, !dbg !891, !tbaa !284
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !140), !dbg !892
  store i32 -1000000, i32* @cur_score, align 4, !dbg !893, !tbaa !300
  %4 = load i32* @nodes, align 4, !dbg !894, !tbaa !300
  %inc = add nsw i32 %4, 1, !dbg !894
  store i32 %inc, i32* @nodes, align 4, !dbg !894, !tbaa !300
  %call = call i32 @is_draw() #6, !dbg !895
  %tobool = icmp eq i32 %call, 0, !dbg !895
  br i1 %tobool, label %if.end, label %if.then, !dbg !895

if.then:                                          ; preds = %entry
  store i32 5, i32* @result, align 4, !dbg !896, !tbaa !300
  store i32 0, i32* @cur_score, align 4, !dbg !898, !tbaa !300
  %5 = load i32* @ply, align 4, !dbg !899, !tbaa !300
  %idxprom = sext i32 %5 to i64, !dbg !899
  %arrayidx = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom, !dbg !899
  store i32 0, i32* %arrayidx, align 4, !dbg !899, !tbaa !300
  %6 = bitcast %struct.move_s* %agg.result to i8*, !dbg !900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !900, !tbaa.struct !526
  br label %cleanup, !dbg !900

if.end:                                           ; preds = %entry
  %7 = load i32* @ply, align 4, !dbg !901, !tbaa !300
  %idxprom1 = sext i32 %7 to i64, !dbg !901
  %arrayidx2 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom1, !dbg !901
  store i32 %7, i32* %arrayidx2, align 4, !dbg !901, !tbaa !300
  %8 = load i32* @hash, align 4, !dbg !902, !tbaa !300
  %9 = load i32* @move_number, align 4, !dbg !902, !tbaa !300
  %add = add i32 %9, -1, !dbg !902
  %sub = add i32 %add, %7, !dbg !902
  %idxprom3 = sext i32 %sub to i64, !dbg !902
  %arrayidx4 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom3, !dbg !902
  store i32 %8, i32* %arrayidx4, align 4, !dbg !902, !tbaa !300
  %call5 = call i32 @in_check() #6, !dbg !903
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !145), !dbg !903
  %tobool6 = icmp eq i32 %call5, 0, !dbg !904
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !904

if.then7:                                         ; preds = %if.end
  %10 = load i32* @ext_check, align 4, !dbg !905, !tbaa !300
  %inc8 = add i32 %10, 1, !dbg !905
  store i32 %inc8, i32* @ext_check, align 4, !dbg !905, !tbaa !300
  %inc9 = add nsw i32 %depth, 1, !dbg !907
  call void @llvm.dbg.value(metadata !{i32 %inc9}, i64 0, metadata !129), !dbg !907
  br label %if.end10, !dbg !908

if.end10:                                         ; preds = %if.end, %if.then7
  %depth.addr.0 = phi i32 [ %inc9, %if.then7 ], [ %depth, %if.end ]
  %11 = load i32* @ply, align 4, !dbg !909, !tbaa !300
  %idxprom11 = sext i32 %11 to i64, !dbg !909
  %arrayidx12 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom11, !dbg !909
  store i32 %call5, i32* %arrayidx12, align 4, !dbg !909, !tbaa !284
  %arrayidx14 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom11, !dbg !910
  store i32 0, i32* %arrayidx14, align 4, !dbg !910, !tbaa !284
  %arrayidx16 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom11, !dbg !911
  store i32 0, i32* %arrayidx16, align 4, !dbg !911, !tbaa !284
  %12 = load i32* @Variant, align 4, !dbg !912, !tbaa !300
  %cmp = icmp eq i32 %12, 4, !dbg !912
  br i1 %cmp, label %if.then17, label %if.else, !dbg !912

if.then17:                                        ; preds = %if.end10
  store i32 0, i32* @legals, align 4, !dbg !913, !tbaa !300
  store i32 1, i32* @captures, align 4, !dbg !915, !tbaa !284
  %arrayidx18 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !916
  call void @gen(%struct.move_s* %arrayidx18) #6, !dbg !916
  %13 = load i32* @numb_moves, align 4, !dbg !917, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !132), !dbg !917
  store i32 0, i32* @captures, align 4, !dbg !918, !tbaa !284
  %tobool19 = icmp eq i32 %13, 0, !dbg !919
  br i1 %tobool19, label %if.end31, label %for.cond.preheader, !dbg !919

for.cond.preheader:                               ; preds = %if.then17
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !133), !dbg !920
  store i32 0, i32* %i, align 4, !dbg !920, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !920
  %cmp21592 = icmp sgt i32 %13, 0, !dbg !920
  br i1 %cmp21592, label %for.body, label %if.end31, !dbg !920

for.body:                                         ; preds = %for.cond.preheader, %if.end28
  %storemerge559593 = phi i32 [ %inc30, %if.end28 ], [ 0, %for.cond.preheader ]
  call void @make(%struct.move_s* %arrayidx18, i32 %storemerge559593) #6, !dbg !923
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !925
  %14 = load i32* %i, align 4, !dbg !925, !tbaa !300
  %call24 = call i32 @check_legal(%struct.move_s* %arrayidx18, i32 %14, i32 %call5) #6, !dbg !925
  %tobool25 = icmp eq i32 %call24, 0, !dbg !925
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !925

if.then26:                                        ; preds = %for.body
  %15 = load i32* @legals, align 4, !dbg !926, !tbaa !300
  %inc27 = add nsw i32 %15, 1, !dbg !926
  store i32 %inc27, i32* @legals, align 4, !dbg !926, !tbaa !300
  br label %if.end28, !dbg !928

if.end28:                                         ; preds = %for.body, %if.then26
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !929
  %16 = load i32* %i, align 4, !dbg !929, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx18, i32 %16) #6, !dbg !929
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !920
  %17 = load i32* %i, align 4, !dbg !920, !tbaa !300
  %inc30 = add nsw i32 %17, 1, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %inc30}, i64 0, metadata !133), !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %storemerge559593}, i64 0, metadata !133), !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %inc30}, i64 0, metadata !133), !dbg !920
  store i32 %inc30, i32* %i, align 4, !dbg !920, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !920
  %cmp21 = icmp slt i32 %inc30, %13, !dbg !920
  br i1 %cmp21, label %for.body, label %if.end31, !dbg !920

if.end31:                                         ; preds = %for.cond.preheader, %if.end28, %if.then17
  %18 = load i32* @legals, align 4, !dbg !930, !tbaa !300
  %tobool32 = icmp eq i32 %18, 0, !dbg !930
  br i1 %tobool32, label %if.then33, label %if.end51, !dbg !930

if.then33:                                        ; preds = %if.end31
  store i32 0, i32* @captures, align 4, !dbg !931, !tbaa !284
  call void @gen(%struct.move_s* %arrayidx18) #6, !dbg !933
  %19 = load i32* @numb_moves, align 4, !dbg !934, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !132), !dbg !934
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !133), !dbg !935
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !133), !dbg !935
  store i32 0, i32* %i, align 4, !dbg !935, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !935
  %cmp36590 = icmp sgt i32 %19, 0, !dbg !935
  br i1 %cmp36590, label %for.body37, label %if.end51, !dbg !935

for.body37:                                       ; preds = %if.then33, %if.end44
  %storemerge591 = phi i32 [ %inc47, %if.end44 ], [ 0, %if.then33 ]
  call void @make(%struct.move_s* %arrayidx18, i32 %storemerge591) #6, !dbg !937
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !939
  %20 = load i32* %i, align 4, !dbg !939, !tbaa !300
  %call40 = call i32 @check_legal(%struct.move_s* %arrayidx18, i32 %20, i32 %call5) #6, !dbg !939
  %tobool41 = icmp eq i32 %call40, 0, !dbg !939
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !939

if.then42:                                        ; preds = %for.body37
  %21 = load i32* @legals, align 4, !dbg !940, !tbaa !300
  %inc43 = add nsw i32 %21, 1, !dbg !940
  store i32 %inc43, i32* @legals, align 4, !dbg !940, !tbaa !300
  br label %if.end44, !dbg !942

if.end44:                                         ; preds = %for.body37, %if.then42
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !943
  %22 = load i32* %i, align 4, !dbg !943, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx18, i32 %22) #6, !dbg !943
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !935
  %23 = load i32* %i, align 4, !dbg !935, !tbaa !300
  %inc47 = add nsw i32 %23, 1, !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !133), !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %storemerge591}, i64 0, metadata !133), !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !133), !dbg !935
  store i32 %inc47, i32* %i, align 4, !dbg !935, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !935
  %cmp36 = icmp slt i32 %inc47, %19, !dbg !935
  br i1 %cmp36, label %for.body37, label %if.end51, !dbg !935

if.else:                                          ; preds = %if.end10
  %arrayidx50 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !944
  call void @gen(%struct.move_s* %arrayidx50) #6, !dbg !944
  %24 = load i32* @numb_moves, align 4, !dbg !946, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !132), !dbg !946
  br label %if.end51

if.end51:                                         ; preds = %if.then33, %if.end44, %if.end31, %if.else
  %num_moves.0 = phi i32 [ %13, %if.end31 ], [ %24, %if.else ], [ %19, %if.end44 ], [ %19, %if.then33 ]
  %25 = load i32* @legals, align 4, !dbg !947, !tbaa !300
  store i32 %25, i32* @movetotal, align 4, !dbg !947, !tbaa !300
  %arrayidx52 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !948
  %arrayidx53 = getelementptr inbounds [512 x i32]* %move_ordering, i64 0, i64 0, !dbg !948
  %arrayidx54 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 0, !dbg !948
  call void @order_moves(%struct.move_s* %arrayidx52, i32* %arrayidx53, i32* %arrayidx54, i32 %num_moves.0, i32 -1) #7, !dbg !948
  %26 = bitcast %struct.move_s* %kswap to i8*, !dbg !949
  %sub99 = sub nsw i32 0, %originalbeta, !dbg !954
  %sub101 = add nsw i32 %depth.addr.0, -1, !dbg !954
  br label %while.cond.outer, !dbg !957

while.cond.outer:                                 ; preds = %if.end444, %if.end51
  %root_score.0.ph = phi i32 [ -1000000, %if.end51 ], [ %85, %if.end444 ]
  %no_moves.0.ph = phi i32 [ 1, %if.end51 ], [ %no_moves.1, %if.end444 ]
  %first.0.ph = phi i32 [ 1, %if.end51 ], [ %first.0., %if.end444 ]
  %alpha.0.ph = phi i32 [ %originalalpha, %if.end51 ], [ %alpha.1, %if.end444 ]
  %mc.0.ph = phi i32 [ 0, %if.end51 ], [ %mc.1, %if.end444 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %land.lhs.true62
  %call56 = call i32 @remove_one(i32* %i, i32* %arrayidx53, i32 %num_moves.0) #7, !dbg !957
  %tobool57 = icmp eq i32 %call56, 0, !dbg !957
  br i1 %tobool57, label %while.end, label %while.body, !dbg !957

while.body:                                       ; preds = %while.cond
  %27 = load i32* @alllosers, align 4, !dbg !958, !tbaa !300
  %tobool58 = icmp eq i32 %27, 0, !dbg !958
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !958
  %28 = load i32* %i, align 4, !dbg !958, !tbaa !300
  br i1 %tobool58, label %land.lhs.true, label %if.end66, !dbg !958

land.lhs.true:                                    ; preds = %while.body
  %idxprom59 = sext i32 %28 to i64, !dbg !958
  %arrayidx60 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %idxprom59, !dbg !958
  %29 = load i32* %arrayidx60, align 4, !dbg !958, !tbaa !300
  %tobool61 = icmp eq i32 %29, 0, !dbg !958
  br i1 %tobool61, label %if.end66, label %land.lhs.true62, !dbg !958

land.lhs.true62:                                  ; preds = %land.lhs.true
  %30 = load i32* @Variant, align 4, !dbg !958, !tbaa !300
  %.off558 = add i32 %30, -3, !dbg !958
  %31 = icmp ult i32 %.off558, 2, !dbg !958
  br i1 %31, label %while.cond, label %if.end66, !dbg !958

if.end66:                                         ; preds = %while.body, %land.lhs.true, %land.lhs.true62
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !959
  call void @make(%struct.move_s* %arrayidx52, i32 %28) #6, !dbg !959
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !139), !dbg !960
  %32 = load i32* @hash, align 4, !dbg !961, !tbaa !300
  %33 = load i32* @move_number, align 4, !dbg !961, !tbaa !300
  %34 = load i32* @ply, align 4, !dbg !961, !tbaa !300
  %add68 = add i32 %33, -1, !dbg !961
  %sub69 = add i32 %add68, %34, !dbg !961
  %idxprom70 = sext i32 %sub69 to i64, !dbg !961
  %arrayidx71 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom70, !dbg !961
  store i32 %32, i32* %arrayidx71, align 4, !dbg !961, !tbaa !300
  %sub72 = add nsw i32 %34, -1, !dbg !962
  %idxprom73 = sext i32 %sub72 to i64, !dbg !962
  %arrayidx74 = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom73, !dbg !962
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !962
  %35 = load i32* %i, align 4, !dbg !962, !tbaa !300
  %idxprom75 = sext i32 %35 to i64, !dbg !962
  %arrayidx76 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom75, !dbg !962
  %36 = bitcast %struct.move_s* %arrayidx74 to i8*, !dbg !962
  %37 = bitcast %struct.move_s* %arrayidx76 to i8*, !dbg !962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 4, i1 false), !dbg !962, !tbaa.struct !526
  %38 = load i32* @nodes, align 4, !dbg !963, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !147), !dbg !963
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !964
  %call78 = call i32 @check_legal(%struct.move_s* %arrayidx52, i32 %35, i32 %call5) #6, !dbg !964
  %tobool79 = icmp eq i32 %call78, 0, !dbg !964
  br i1 %tobool79, label %if.end248, label %if.then80, !dbg !964

if.then80:                                        ; preds = %if.end66
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !965
  %39 = load i32* %i, align 4, !dbg !965, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx52, i32 %39) #6, !dbg !965
  %inc82 = add nsw i32 %mc.0.ph, 1, !dbg !966
  call void @llvm.dbg.value(metadata !{i32 %inc82}, i64 0, metadata !146), !dbg !966
  %40 = load i32* @movetotal, align 4, !dbg !967, !tbaa !300
  %sub83 = sub nsw i32 %40, %inc82, !dbg !967
  store i32 %sub83, i32* @moveleft, align 4, !dbg !967, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !968
  %41 = load i32* %i, align 4, !dbg !968, !tbaa !300
  %idxprom84 = sext i32 %41 to i64, !dbg !968
  %arrayidx85 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom84, !dbg !968
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx85, i8* getelementptr inbounds ([20 x i8]* @searching_move, i64 0, i64 0)) #6, !dbg !968
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !969
  %42 = load i32* %i, align 4, !dbg !969, !tbaa !300
  call void @make(%struct.move_s* %arrayidx52, i32 %42) #6, !dbg !969
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !970
  %43 = load i32* %i, align 4, !dbg !970, !tbaa !300
  %call88 = call i32 @f_in_check(%struct.move_s* %arrayidx52, i32 %43) #6, !dbg !970
  %44 = load i32* @ply, align 4, !dbg !970, !tbaa !300
  %idxprom89 = sext i32 %44 to i64, !dbg !970
  %arrayidx90 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom89, !dbg !970
  store i32 %call88, i32* %arrayidx90, align 4, !dbg !970, !tbaa !284
  %arrayidx92 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom89, !dbg !971
  store i32 0, i32* %arrayidx92, align 4, !dbg !971, !tbaa !284
  %arrayidx94 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom89, !dbg !972
  store i32 0, i32* %arrayidx94, align 4, !dbg !972, !tbaa !284
  %cmp95 = icmp eq i32 %first.0.ph, 1, !dbg !973
  %45 = load i32* @i_depth, align 4, !dbg !973, !tbaa !300
  %cmp97 = icmp slt i32 %45, 2, !dbg !973
  %or.cond486 = or i1 %cmp95, %cmp97, !dbg !973
  %sub100 = sub nsw i32 0, %alpha.0.ph, !dbg !954
  br i1 %or.cond486, label %if.then98, label %if.else162, !dbg !973

if.then98:                                        ; preds = %if.then80
  %call102 = call i32 @search(i32 %sub99, i32 %sub100, i32 %sub101, i32 0) #7, !dbg !954
  %sub103 = sub nsw i32 0, %call102, !dbg !954
  call void @llvm.dbg.value(metadata !{i32 %sub103}, i64 0, metadata !135), !dbg !954
  %46 = load i32* @time_exit, align 4, !dbg !974, !tbaa !284
  %tobool104 = icmp eq i32 %46, 0, !dbg !974
  br i1 %tobool104, label %land.lhs.true105, label %if.end232.thread, !dbg !974

if.end232.thread:                                 ; preds = %if.then98
  %47 = load i32* @cur_score, align 4, !dbg !975, !tbaa !300
  br label %if.end239, !dbg !975

land.lhs.true105:                                 ; preds = %if.then98
  %48 = load i32* @post, align 4, !dbg !974, !tbaa !284
  %49 = load i32* @xb_mode, align 4, !dbg !974, !tbaa !300
  %notlhs = icmp ne i32 %48, 0, !dbg !974
  %notrhs = icmp eq i32 %49, 0, !dbg !974
  %or.cond487.not = or i1 %notrhs, %notlhs, !dbg !974
  %50 = load i32* @i_depth, align 4, !dbg !974, !tbaa !300
  %cmp110 = icmp sgt i32 %50, 1, !dbg !974
  %or.cond488 = and i1 %or.cond487.not, %cmp110, !dbg !974
  br i1 %or.cond488, label %if.then111, label %if.end232, !dbg !974

if.then111:                                       ; preds = %land.lhs.true105
  %cmp112 = icmp slt i32 %sub103, %originalbeta, !dbg !976
  br i1 %cmp112, label %if.else116, label %if.then113, !dbg !976

if.then113:                                       ; preds = %if.then111
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !978
  %51 = load i32* %i, align 4, !dbg !978, !tbaa !300
  %idxprom114 = sext i32 %51 to i64, !dbg !978
  %arrayidx115 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom114, !dbg !978
  call void @post_fh_thinking(i32 %sub103, %struct.move_s* %arrayidx115) #6, !dbg !978
  br label %if.end153, !dbg !980

if.else116:                                       ; preds = %if.then111
  %cmp117 = icmp slt i32 %alpha.0.ph, %sub103, !dbg !981
  br i1 %cmp117, label %if.else121, label %if.then118, !dbg !981

if.then118:                                       ; preds = %if.else116
  store i32 1, i32* @failed, align 4, !dbg !982, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !984
  %52 = load i32* %i, align 4, !dbg !984, !tbaa !300
  %idxprom119 = sext i32 %52 to i64, !dbg !984
  %arrayidx120 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom119, !dbg !984
  call void @post_fl_thinking(i32 %sub103, %struct.move_s* %arrayidx120) #6, !dbg !984
  br label %if.end153, !dbg !985

if.else121:                                       ; preds = %if.else116
  %53 = load i32* @ply, align 4, !dbg !986, !tbaa !300
  %sub122 = add nsw i32 %53, -1, !dbg !986
  %idxprom123 = sext i32 %sub122 to i64, !dbg !986
  %arrayidx127 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom123, i64 %idxprom123, !dbg !986
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !986
  %54 = load i32* %i, align 4, !dbg !986, !tbaa !300
  %idxprom128 = sext i32 %54 to i64, !dbg !986
  %arrayidx129 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom128, !dbg !986
  %55 = bitcast %struct.move_s* %arrayidx127 to i8*, !dbg !986
  %56 = bitcast %struct.move_s* %arrayidx129 to i8*, !dbg !986
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 24, i32 4, i1 false), !dbg !986, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !134), !dbg !988
  %idxprom131572 = sext i32 %53 to i64, !dbg !988
  %arrayidx132573 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom131572, !dbg !988
  %57 = load i32* %arrayidx132573, align 4, !dbg !988, !tbaa !300
  %cmp133574 = icmp slt i32 %53, %57, !dbg !988
  br i1 %cmp133574, label %for.body134, label %for.end146, !dbg !988

for.body134:                                      ; preds = %if.else121, %for.body134
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %for.body134 ], [ %idxprom131572, %if.else121 ]
  %arrayidx139 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom123, i64 %indvars.iv596, !dbg !990
  %arrayidx143 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom131572, i64 %indvars.iv596, !dbg !990
  %58 = bitcast %struct.move_s* %arrayidx139 to i8*, !dbg !990
  %59 = bitcast %struct.move_s* %arrayidx143 to i8*, !dbg !990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 24, i32 4, i1 false), !dbg !990, !tbaa.struct !526
  %indvars.iv.next597 = add i64 %indvars.iv596, 1, !dbg !988
  %60 = trunc i64 %indvars.iv.next597 to i32, !dbg !988
  %cmp133 = icmp slt i32 %60, %57, !dbg !988
  br i1 %cmp133, label %for.body134, label %for.end146, !dbg !988

for.end146:                                       ; preds = %for.body134, %if.else121
  %arrayidx151 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom123, !dbg !991
  store i32 %57, i32* %arrayidx151, align 4, !dbg !991, !tbaa !300
  call void @post_thinking(i32 %sub103) #6, !dbg !992
  br label %if.end153

if.end153:                                        ; preds = %if.then118, %for.end146, %if.then113
  %61 = load i32* @cur_score, align 4, !dbg !993, !tbaa !300
  %cmp154 = icmp sge i32 %61, %sub103, !dbg !993
  %62 = load i32* @time_exit, align 4, !dbg !993, !tbaa !284
  %tobool156 = icmp ne i32 %62, 0, !dbg !993
  %or.cond489 = or i1 %cmp154, %tobool156, !dbg !993
  br i1 %or.cond489, label %if.end232, label %if.then157, !dbg !993

if.then157:                                       ; preds = %if.end153
  store i32 %sub103, i32* @cur_score, align 4, !dbg !994, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !996
  %63 = load i32* %i, align 4, !dbg !996, !tbaa !300
  store i32 %63, i32* @bestmovenum, align 4, !dbg !996, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !997
  %idxprom158 = sext i32 %63 to i64, !dbg !997
  %arrayidx159 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom158, !dbg !997
  %64 = bitcast %struct.move_s* %arrayidx159 to i8*, !dbg !997
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %64, i64 24, i32 4, i1 false), !dbg !997, !tbaa.struct !526
  br label %if.end232, !dbg !998

if.else162:                                       ; preds = %if.then80
  %sub164 = xor i32 %alpha.0.ph, -1, !dbg !999
  %call167 = call i32 @search(i32 %sub164, i32 %sub100, i32 %sub101, i32 0) #7, !dbg !999
  %sub168 = sub nsw i32 0, %call167, !dbg !999
  call void @llvm.dbg.value(metadata !{i32 %sub168}, i64 0, metadata !135), !dbg !999
  %cmp169 = icmp slt i32 %alpha.0.ph, %sub168, !dbg !1001
  br i1 %cmp169, label %land.lhs.true170, label %if.else162.if.end224_crit_edge, !dbg !1001

if.else162.if.end224_crit_edge:                   ; preds = %if.else162
  %.pre607 = load i32* @time_exit, align 4, !dbg !1002, !tbaa !284
  br label %if.end224, !dbg !1001

land.lhs.true170:                                 ; preds = %if.else162
  %cmp171 = icmp sge i32 %sub168, %originalbeta, !dbg !1001
  %65 = load i32* @time_exit, align 4, !dbg !1001, !tbaa !284
  %tobool173 = icmp ne i32 %65, 0, !dbg !1001
  %or.cond490 = or i1 %cmp171, %tobool173, !dbg !1001
  br i1 %or.cond490, label %if.end224, label %if.then174, !dbg !1001

if.then174:                                       ; preds = %land.lhs.true170
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1003
  %66 = load i32* %i, align 4, !dbg !1003, !tbaa !300
  %idxprom175 = sext i32 %66 to i64, !dbg !1003
  %arrayidx176 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom175, !dbg !1003
  call void @post_fail_thinking(i32 %sub168, %struct.move_s* %arrayidx176) #6, !dbg !1003
  %call180 = call i32 @search(i32 %sub99, i32 %sub100, i32 %sub101, i32 0) #7, !dbg !1005
  %sub181 = sub nsw i32 0, %call180, !dbg !1005
  call void @llvm.dbg.value(metadata !{i32 %sub181}, i64 0, metadata !135), !dbg !1005
  %cmp182 = icmp sge i32 %alpha.0.ph, %sub181, !dbg !1006
  %67 = load i32* @time_exit, align 4, !dbg !1006, !tbaa !284
  %tobool184 = icmp ne i32 %67, 0, !dbg !1006
  %or.cond491 = or i1 %cmp182, %tobool184, !dbg !1006
  br i1 %or.cond491, label %if.end224, label %if.then185, !dbg !1006

if.then185:                                       ; preds = %if.then174
  store i32 0, i32* @failed, align 4, !dbg !1007, !tbaa !300
  store i32 %sub181, i32* @cur_score, align 4, !dbg !1009, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1010
  %68 = load i32* %i, align 4, !dbg !1010, !tbaa !300
  store i32 %68, i32* @bestmovenum, align 4, !dbg !1010, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1011
  %idxprom186 = sext i32 %68 to i64, !dbg !1011
  %arrayidx187 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom186, !dbg !1011
  %69 = bitcast %struct.move_s* %arrayidx187 to i8*, !dbg !1011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %69, i64 24, i32 4, i1 false), !dbg !1011, !tbaa.struct !526
  %cmp188 = icmp slt i32 %sub181, %originalbeta, !dbg !1012
  %70 = load i32* @i_depth, align 4, !dbg !1012, !tbaa !300
  %cmp190 = icmp sgt i32 %70, 1, !dbg !1012
  %or.cond492 = and i1 %cmp188, %cmp190, !dbg !1012
  br i1 %or.cond492, label %if.then191, label %if.end224, !dbg !1012

if.then191:                                       ; preds = %if.then185
  %71 = load i32* @ply, align 4, !dbg !1013, !tbaa !300
  %sub192 = add nsw i32 %71, -1, !dbg !1013
  %idxprom193 = sext i32 %sub192 to i64, !dbg !1013
  %arrayidx197 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom193, i64 %idxprom193, !dbg !1013
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1013
  %72 = bitcast %struct.move_s* %arrayidx197 to i8*, !dbg !1013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %69, i64 24, i32 4, i1 false), !dbg !1013, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %71}, i64 0, metadata !134), !dbg !1015
  %idxprom201564 = sext i32 %71 to i64, !dbg !1015
  %arrayidx202565 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom201564, !dbg !1015
  %73 = load i32* %arrayidx202565, align 4, !dbg !1015, !tbaa !300
  %cmp203566 = icmp slt i32 %71, %73, !dbg !1015
  br i1 %cmp203566, label %for.body204, label %for.end216, !dbg !1015

for.body204:                                      ; preds = %if.then191, %for.body204
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body204 ], [ %idxprom201564, %if.then191 ]
  %arrayidx209 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom193, i64 %indvars.iv, !dbg !1017
  %arrayidx213 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom201564, i64 %indvars.iv, !dbg !1017
  %74 = bitcast %struct.move_s* %arrayidx209 to i8*, !dbg !1017
  %75 = bitcast %struct.move_s* %arrayidx213 to i8*, !dbg !1017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 24, i32 4, i1 false), !dbg !1017, !tbaa.struct !526
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1015
  %76 = trunc i64 %indvars.iv.next to i32, !dbg !1015
  %cmp203 = icmp slt i32 %76, %73, !dbg !1015
  br i1 %cmp203, label %for.body204, label %for.end216, !dbg !1015

for.end216:                                       ; preds = %for.body204, %if.then191
  %arrayidx221 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom193, !dbg !1018
  store i32 %73, i32* %arrayidx221, align 4, !dbg !1018, !tbaa !300
  br label %if.end224, !dbg !1019

if.end224:                                        ; preds = %if.else162.if.end224_crit_edge, %if.then174, %for.end216, %if.then185, %land.lhs.true170
  %77 = phi i32 [ %65, %land.lhs.true170 ], [ %67, %if.then174 ], [ 0, %for.end216 ], [ 0, %if.then185 ], [ %.pre607, %if.else162.if.end224_crit_edge ]
  %root_score.1 = phi i32 [ %sub168, %land.lhs.true170 ], [ %sub181, %if.then174 ], [ %sub181, %for.end216 ], [ %sub181, %if.then185 ], [ %sub168, %if.else162.if.end224_crit_edge ]
  %cmp225 = icmp slt i32 %root_score.1, %originalbeta, !dbg !1002
  %tobool227 = icmp ne i32 %77, 0, !dbg !1002
  %or.cond493 = or i1 %cmp225, %tobool227, !dbg !1002
  br i1 %or.cond493, label %if.end232, label %if.then228, !dbg !1002

if.then228:                                       ; preds = %if.end224
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1020
  %78 = load i32* %i, align 4, !dbg !1020, !tbaa !300
  %idxprom229 = sext i32 %78 to i64, !dbg !1020
  %arrayidx230 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom229, !dbg !1020
  call void @post_fh_thinking(i32 %root_score.1, %struct.move_s* %arrayidx230) #6, !dbg !1020
  %.pre604 = load i32* @time_exit, align 4, !dbg !975, !tbaa !284
  br label %if.end232, !dbg !1020

if.end232:                                        ; preds = %if.end224, %land.lhs.true105, %if.then228, %if.end153, %if.then157
  %79 = phi i32 [ %62, %if.end153 ], [ 0, %if.then157 ], [ %.pre604, %if.then228 ], [ 0, %land.lhs.true105 ], [ %77, %if.end224 ]
  %root_score.2 = phi i32 [ %sub103, %if.end153 ], [ %sub103, %if.then157 ], [ %root_score.1, %if.then228 ], [ %sub103, %land.lhs.true105 ], [ %root_score.1, %if.end224 ]
  %80 = load i32* @cur_score, align 4, !dbg !975, !tbaa !300
  %cmp233 = icmp sle i32 %root_score.2, %80, !dbg !975
  %tobool235 = icmp ne i32 %79, 0, !dbg !975
  %or.cond494 = or i1 %cmp233, %tobool235, !dbg !975
  br i1 %or.cond494, label %if.end239, label %if.then236, !dbg !975

if.then236:                                       ; preds = %if.end232
  store i32 %root_score.2, i32* @cur_score, align 4, !dbg !1021, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1023
  %81 = load i32* %i, align 4, !dbg !1023, !tbaa !300
  store i32 %81, i32* @bestmovenum, align 4, !dbg !1023, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1024
  %idxprom237 = sext i32 %81 to i64, !dbg !1024
  %arrayidx238 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom237, !dbg !1024
  %82 = bitcast %struct.move_s* %arrayidx238 to i8*, !dbg !1024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %82, i64 24, i32 4, i1 false), !dbg !1024, !tbaa.struct !526
  br label %if.end239, !dbg !1025

if.end239:                                        ; preds = %if.end232.thread, %if.end232, %if.then236
  %root_score.2611 = phi i32 [ %root_score.2, %if.end232 ], [ %root_score.2, %if.then236 ], [ %sub103, %if.end232.thread ]
  %83 = phi i32 [ %79, %if.end232 ], [ %79, %if.then236 ], [ %46, %if.end232.thread ]
  %84 = phi i32 [ %80, %if.end232 ], [ %root_score.2, %if.then236 ], [ %47, %if.end232.thread ]
  %notlhs561 = icmp eq i32 %83, 0, !dbg !1026
  %notrhs562 = icmp ne i32 %84, -1000000, !dbg !1026
  %or.cond495.not = or i1 %notrhs562, %notlhs561, !dbg !1026
  %tobool244 = icmp eq i32 %no_moves.0.ph, 0, !dbg !1027
  %or.cond = or i1 %or.cond495.not, %tobool244, !dbg !1026
  br i1 %or.cond, label %if.end248, label %if.then245, !dbg !1026

if.then245:                                       ; preds = %if.end239
  store i32 1, i32* @time_failure, align 4, !dbg !1029, !tbaa !284
  br label %if.end248, !dbg !1029

if.end248:                                        ; preds = %if.end239, %if.end66, %if.then245
  %85 = phi i32 [ %root_score.2611, %if.then245 ], [ %root_score.0.ph, %if.end66 ], [ %root_score.2611, %if.end239 ]
  %no_moves.1 = phi i32 [ 0, %if.then245 ], [ %no_moves.0.ph, %if.end66 ], [ 0, %if.end239 ]
  %legal_move.0 = phi i32 [ 1, %if.then245 ], [ 0, %if.end66 ], [ 1, %if.end239 ]
  %mc.1 = phi i32 [ %inc82, %if.then245 ], [ %mc.0.ph, %if.end66 ], [ %inc82, %if.end239 ]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1030
  %86 = load i32* %i, align 4, !dbg !1030, !tbaa !300
  call void @unmake(%struct.move_s* %arrayidx52, i32 %86) #6, !dbg !1030
  %87 = load i32* @time_exit, align 4, !dbg !1031, !tbaa !284
  %tobool250 = icmp eq i32 %87, 0, !dbg !1031
  br i1 %tobool250, label %if.end252, label %if.then251, !dbg !1031

if.then251:                                       ; preds = %if.end248
  %88 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %1, i64 24, i32 4, i1 false), !dbg !1032, !tbaa.struct !526
  br label %cleanup, !dbg !1032

if.end252:                                        ; preds = %if.end248
  %cmp253 = icmp sle i32 %85, %alpha.0.ph, !dbg !1033
  %tobool255 = icmp eq i32 %legal_move.0, 0, !dbg !1033
  %or.cond560 = or i1 %cmp253, %tobool255, !dbg !1033
  br i1 %or.cond560, label %if.end444, label %if.then256, !dbg !1033

if.then256:                                       ; preds = %if.end252
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1034
  %89 = load i32* %i, align 4, !dbg !1034, !tbaa !300
  %idxprom257 = sext i32 %89 to i64, !dbg !1034
  %from = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 0, !dbg !1034
  %90 = load i32* %from, align 8, !dbg !1034, !tbaa !300
  %91 = load i32* @ply, align 4, !dbg !1034, !tbaa !300
  %idxprom259 = sext i32 %91 to i64, !dbg !1034
  %from261 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, i32 0, !dbg !1034
  %92 = load i32* %from261, align 4, !dbg !1034, !tbaa !300
  %cmp262 = icmp eq i32 %90, %92, !dbg !1034
  br i1 %cmp262, label %land.lhs.true263, label %if.else281, !dbg !1034

land.lhs.true263:                                 ; preds = %if.then256
  %target = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 1, !dbg !1034
  %93 = load i32* %target, align 4, !dbg !1034, !tbaa !300
  %target268 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, i32 1, !dbg !1034
  %94 = load i32* %target268, align 4, !dbg !1034, !tbaa !300
  %cmp269 = icmp eq i32 %93, %94, !dbg !1034
  br i1 %cmp269, label %land.lhs.true270, label %if.else281, !dbg !1034

land.lhs.true270:                                 ; preds = %land.lhs.true263
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 3, !dbg !1034
  %95 = load i32* %promoted, align 4, !dbg !1034, !tbaa !300
  %promoted275 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, i32 3, !dbg !1034
  %96 = load i32* %promoted275, align 4, !dbg !1034, !tbaa !300
  %cmp276 = icmp eq i32 %95, %96, !dbg !1034
  br i1 %cmp276, label %if.then277, label %if.else281, !dbg !1034

if.then277:                                       ; preds = %land.lhs.true270
  %arrayidx279 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom259, !dbg !1035
  %97 = load i32* %arrayidx279, align 4, !dbg !1035, !tbaa !300
  %inc280 = add nsw i32 %97, 1, !dbg !1035
  store i32 %inc280, i32* %arrayidx279, align 4, !dbg !1035, !tbaa !300
  br label %if.end392, !dbg !1037

if.else281:                                       ; preds = %land.lhs.true270, %land.lhs.true263, %if.then256
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1038
  %from287 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, i32 0, !dbg !1038
  %98 = load i32* %from287, align 4, !dbg !1038, !tbaa !300
  %cmp288 = icmp eq i32 %90, %98, !dbg !1038
  br i1 %cmp288, label %land.lhs.true289, label %if.else332, !dbg !1038

land.lhs.true289:                                 ; preds = %if.else281
  %target292 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 1, !dbg !1038
  %99 = load i32* %target292, align 4, !dbg !1038, !tbaa !300
  %target295 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, i32 1, !dbg !1038
  %100 = load i32* %target295, align 4, !dbg !1038, !tbaa !300
  %cmp296 = icmp eq i32 %99, %100, !dbg !1038
  br i1 %cmp296, label %land.lhs.true297, label %if.else332, !dbg !1038

land.lhs.true297:                                 ; preds = %land.lhs.true289
  %promoted300 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 3, !dbg !1038
  %101 = load i32* %promoted300, align 4, !dbg !1038, !tbaa !300
  %promoted303 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, i32 3, !dbg !1038
  %102 = load i32* %promoted303, align 4, !dbg !1038, !tbaa !300
  %cmp304 = icmp eq i32 %101, %102, !dbg !1038
  br i1 %cmp304, label %if.then305, label %if.else332, !dbg !1038

if.then305:                                       ; preds = %land.lhs.true297
  %arrayidx307 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom259, !dbg !1039
  %103 = load i32* %arrayidx307, align 4, !dbg !1039, !tbaa !300
  %inc308 = add nsw i32 %103, 1, !dbg !1039
  store i32 %inc308, i32* %arrayidx307, align 4, !dbg !1039, !tbaa !300
  %arrayidx312 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom259, !dbg !1040
  %104 = load i32* %arrayidx312, align 4, !dbg !1040, !tbaa !300
  %cmp313 = icmp slt i32 %103, %104, !dbg !1040
  br i1 %cmp313, label %if.end392, label %if.then314, !dbg !1040

if.then314:                                       ; preds = %if.then305
  %arrayidx316 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, !dbg !949
  %105 = bitcast %struct.move_s* %arrayidx316 to i8*, !dbg !949
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %105, i64 24, i32 4, i1 false), !dbg !949, !tbaa.struct !526
  %arrayidx320 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, !dbg !1041
  %106 = bitcast %struct.move_s* %arrayidx320 to i8*, !dbg !1041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 24, i32 4, i1 false), !dbg !1041, !tbaa.struct !526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %26, i64 24, i32 4, i1 false), !dbg !1042, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !144), !dbg !1043
  store i32 %inc308, i32* %arrayidx312, align 4, !dbg !1044, !tbaa !300
  store i32 %104, i32* %arrayidx307, align 4, !dbg !1045, !tbaa !300
  br label %if.end392, !dbg !1046

if.else332:                                       ; preds = %land.lhs.true297, %land.lhs.true289, %if.else281
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1047
  %from338 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, i32 0, !dbg !1047
  %107 = load i32* %from338, align 4, !dbg !1047, !tbaa !300
  %cmp339 = icmp eq i32 %90, %107, !dbg !1047
  %target343 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 1, !dbg !1047
  %108 = load i32* %target343, align 4, !dbg !1047, !tbaa !300
  br i1 %cmp339, label %land.lhs.true340, label %if.else383, !dbg !1047

land.lhs.true340:                                 ; preds = %if.else332
  %target346 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, i32 1, !dbg !1047
  %109 = load i32* %target346, align 4, !dbg !1047, !tbaa !300
  %cmp347 = icmp eq i32 %108, %109, !dbg !1047
  br i1 %cmp347, label %land.lhs.true348, label %if.else383, !dbg !1047

land.lhs.true348:                                 ; preds = %land.lhs.true340
  %promoted351 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 3, !dbg !1047
  %110 = load i32* %promoted351, align 4, !dbg !1047, !tbaa !300
  %promoted354 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, i32 3, !dbg !1047
  %111 = load i32* %promoted354, align 4, !dbg !1047, !tbaa !300
  %cmp355 = icmp eq i32 %110, %111, !dbg !1047
  br i1 %cmp355, label %if.then356, label %if.else383, !dbg !1047

if.then356:                                       ; preds = %land.lhs.true348
  %arrayidx358 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom259, !dbg !1048
  %112 = load i32* %arrayidx358, align 4, !dbg !1048, !tbaa !300
  %inc359 = add nsw i32 %112, 1, !dbg !1048
  store i32 %inc359, i32* %arrayidx358, align 4, !dbg !1048, !tbaa !300
  %arrayidx363 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom259, !dbg !1050
  %113 = load i32* %arrayidx363, align 4, !dbg !1050, !tbaa !300
  %cmp364 = icmp slt i32 %112, %113, !dbg !1050
  br i1 %cmp364, label %if.end392, label %if.then365, !dbg !1050

if.then365:                                       ; preds = %if.then356
  %arrayidx367 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, !dbg !1051
  %114 = bitcast %struct.move_s* %arrayidx367 to i8*, !dbg !1051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %114, i64 24, i32 4, i1 false), !dbg !1051, !tbaa.struct !526
  %arrayidx371 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, !dbg !1053
  %115 = bitcast %struct.move_s* %arrayidx371 to i8*, !dbg !1053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 24, i32 4, i1 false), !dbg !1053, !tbaa.struct !526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %26, i64 24, i32 4, i1 false), !dbg !1054, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %113}, i64 0, metadata !144), !dbg !1055
  store i32 %inc359, i32* %arrayidx363, align 4, !dbg !1056, !tbaa !300
  store i32 %113, i32* %arrayidx358, align 4, !dbg !1057, !tbaa !300
  br label %if.end392, !dbg !1058

if.else383:                                       ; preds = %if.else332, %land.lhs.true348, %land.lhs.true340
  %arrayidx385 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom259, !dbg !1059
  store i32 1, i32* %arrayidx385, align 4, !dbg !1059, !tbaa !300
  %arrayidx387 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, !dbg !1061
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1061
  %arrayidx389 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, !dbg !1061
  %116 = bitcast %struct.move_s* %arrayidx387 to i8*, !dbg !1061
  %117 = bitcast %struct.move_s* %arrayidx389 to i8*, !dbg !1061
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 24, i32 4, i1 false), !dbg !1061, !tbaa.struct !526
  br label %if.end392

if.end392:                                        ; preds = %if.then305, %if.then356, %if.then314, %if.then365, %if.else383, %if.then277
  %118 = phi i32 [ %99, %if.then314 ], [ %99, %if.then305 ], [ %108, %if.then356 ], [ %108, %if.then365 ], [ %108, %if.else383 ], [ %93, %if.then277 ]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1062
  %idxprom396 = sext i32 %118 to i64, !dbg !1062
  %idxprom400 = sext i32 %90 to i64, !dbg !1062
  %arrayidx402 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom400, i64 %idxprom396, !dbg !1062
  %119 = load i32* %arrayidx402, align 4, !dbg !1062, !tbaa !300
  %inc403 = add i32 %119, 1, !dbg !1062
  store i32 %inc403, i32* %arrayidx402, align 4, !dbg !1062, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %85}, i64 0, metadata !141), !dbg !1063
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1064
  %arrayidx405 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, !dbg !1064
  %120 = bitcast %struct.move_s* %arrayidx405 to i8*, !dbg !1064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %120, i64 24, i32 4, i1 false), !dbg !1064, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1065
  store i32 %89, i32* @bestmovenum, align 4, !dbg !1065, !tbaa !300
  store i32 %85, i32* @cur_score, align 4, !dbg !1066, !tbaa !300
  %arrayidx409 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom259, i64 %idxprom259, !dbg !1067
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1067
  %121 = bitcast %struct.move_s* %arrayidx409 to i8*, !dbg !1067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %120, i64 24, i32 4, i1 false), !dbg !1067, !tbaa.struct !526
  %j.2581 = add i32 %91, 1, !dbg !1068
  %idxprom415583 = sext i32 %j.2581 to i64, !dbg !1068
  %arrayidx416584 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom415583, !dbg !1068
  %122 = load i32* %arrayidx416584, align 4, !dbg !1068, !tbaa !300
  %cmp417585 = icmp slt i32 %j.2581, %122, !dbg !1068
  br i1 %cmp417585, label %for.body418, label %for.end430, !dbg !1068

for.body418:                                      ; preds = %if.end392, %for.body418
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %for.body418 ], [ %idxprom415583, %if.end392 ]
  %j.2586 = phi i32 [ %j.2, %for.body418 ], [ %j.2581, %if.end392 ]
  %arrayidx422 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom259, i64 %indvars.iv598, !dbg !1070
  %arrayidx427 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom415583, i64 %indvars.iv598, !dbg !1070
  %123 = bitcast %struct.move_s* %arrayidx422 to i8*, !dbg !1070
  %124 = bitcast %struct.move_s* %arrayidx427 to i8*, !dbg !1070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 24, i32 4, i1 false), !dbg !1070, !tbaa.struct !526
  %j.2 = add nsw i32 %j.2586, 1, !dbg !1068
  %cmp417 = icmp slt i32 %j.2, %122, !dbg !1068
  %indvars.iv.next599 = add i64 %indvars.iv598, 1, !dbg !1068
  br i1 %cmp417, label %for.body418, label %for.end430, !dbg !1068

for.end430:                                       ; preds = %for.body418, %if.end392
  %arrayidx435 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom259, !dbg !1071
  store i32 %122, i32* %arrayidx435, align 4, !dbg !1071, !tbaa !300
  %cmp436 = icmp slt i32 %85, %originalbeta, !dbg !1072
  br i1 %cmp436, label %if.end438, label %if.then437, !dbg !1072

if.then437:                                       ; preds = %for.end430
  %125 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1072
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %1, i64 24, i32 4, i1 false), !dbg !1072, !tbaa.struct !526
  br label %cleanup, !dbg !1072

if.end438:                                        ; preds = %for.end430
  %126 = load i32* @post, align 4, !dbg !1073, !tbaa !284
  %tobool439 = icmp ne i32 %126, 0, !dbg !1073
  %127 = load i32* @i_depth, align 4, !dbg !1073, !tbaa !300
  %cmp441 = icmp sgt i32 %127, 1, !dbg !1073
  %or.cond496 = and i1 %tobool439, %cmp441, !dbg !1073
  br i1 %or.cond496, label %if.then442, label %if.end444, !dbg !1073

if.then442:                                       ; preds = %if.end438
  call void @post_thinking(i32 %85) #6, !dbg !1074
  br label %if.end444, !dbg !1076

if.end444:                                        ; preds = %if.end252, %if.end438, %if.then442
  %alpha.1 = phi i32 [ %85, %if.then442 ], [ %85, %if.end438 ], [ %alpha.0.ph, %if.end252 ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !140), !dbg !1077
  %first.0. = select i1 %tobool255, i32 %first.0.ph, i32 0, !dbg !1078
  %128 = load i32* @nodes, align 4, !dbg !1079, !tbaa !300
  %sub448 = sub nsw i32 %128, %38, !dbg !1079
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !133), !dbg !1079
  %129 = load i32* %i, align 4, !dbg !1079, !tbaa !300
  %idxprom449 = sext i32 %129 to i64, !dbg !1079
  %arrayidx450 = getelementptr inbounds [512 x i32]* @rootnodecount, i64 0, i64 %idxprom449, !dbg !1079
  store i32 %sub448, i32* %arrayidx450, align 4, !dbg !1079, !tbaa !300
  br label %while.cond.outer, !dbg !1080

while.end:                                        ; preds = %while.cond
  %tobool451 = icmp eq i32 %no_moves.0.ph, 0, !dbg !1081
  %130 = load i32* @is_pondering, align 4, !dbg !1081, !tbaa !284
  %tobool453 = icmp ne i32 %130, 0, !dbg !1081
  %or.cond497 = or i1 %tobool451, %tobool453, !dbg !1081
  br i1 %or.cond497, label %if.else474, label %if.then454, !dbg !1081

if.then454:                                       ; preds = %while.end
  %131 = load i32* @Variant, align 4, !dbg !1082, !tbaa !300
  %.off = add i32 %131, -3, !dbg !1082
  %132 = icmp ugt i32 %.off, 1, !dbg !1082
  br i1 %132, label %if.then458, label %if.else468, !dbg !1082

if.then458:                                       ; preds = %if.then454
  %call459 = call i32 @in_check() #6, !dbg !1084
  %tobool460 = icmp eq i32 %call459, 0, !dbg !1084
  br i1 %tobool460, label %if.else466, label %if.then461, !dbg !1084

if.then461:                                       ; preds = %if.then458
  %133 = load i32* @white_to_move, align 4, !dbg !1086, !tbaa !300
  %cmp462 = icmp eq i32 %133, 1, !dbg !1086
  br i1 %cmp462, label %if.then463, label %if.else464, !dbg !1086

if.then463:                                       ; preds = %if.then461
  store i32 2, i32* @result, align 4, !dbg !1088, !tbaa !300
  br label %if.end483, !dbg !1090

if.else464:                                       ; preds = %if.then461
  store i32 3, i32* @result, align 4, !dbg !1091, !tbaa !300
  br label %if.end483

if.else466:                                       ; preds = %if.then458
  store i32 1, i32* @result, align 4, !dbg !1093, !tbaa !300
  br label %if.end483

if.else468:                                       ; preds = %if.then454
  %134 = load i32* @white_to_move, align 4, !dbg !1095, !tbaa !300
  %cmp469 = icmp eq i32 %134, 1, !dbg !1095
  br i1 %cmp469, label %if.then470, label %if.else471, !dbg !1095

if.then470:                                       ; preds = %if.else468
  store i32 3, i32* @result, align 4, !dbg !1097, !tbaa !300
  br label %if.end483, !dbg !1099

if.else471:                                       ; preds = %if.else468
  store i32 2, i32* @result, align 4, !dbg !1100, !tbaa !300
  br label %if.end483

if.else474:                                       ; preds = %while.end
  %tobool475 = icmp eq i32 %130, 0, !dbg !1102
  %135 = load i32* @fifty, align 4, !dbg !1103, !tbaa !300
  %cmp477 = icmp sgt i32 %135, 100, !dbg !1103
  %or.cond499 = and i1 %tobool475, %cmp477, !dbg !1102
  br i1 %or.cond499, label %if.then478, label %if.end483, !dbg !1102

if.then478:                                       ; preds = %if.else474
  store i32 4, i32* @result, align 4, !dbg !1105, !tbaa !300
  store i32 0, i32* @cur_score, align 4, !dbg !1107, !tbaa !300
  %136 = load i32* @ply, align 4, !dbg !1108, !tbaa !300
  %idxprom479 = sext i32 %136 to i64, !dbg !1108
  %arrayidx480 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom479, !dbg !1108
  store i32 0, i32* %arrayidx480, align 4, !dbg !1108, !tbaa !300
  %137 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1109, !tbaa.struct !526
  br label %cleanup, !dbg !1109

if.end483:                                        ; preds = %if.else474, %if.then463, %if.else464, %if.else466, %if.else471, %if.then470
  %138 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %1, i64 24, i32 4, i1 false), !dbg !1110, !tbaa.struct !526
  br label %cleanup, !dbg !1110

cleanup:                                          ; preds = %if.end483, %if.then478, %if.then437, %if.then251, %if.then
  call void @llvm.lifetime.end(i64 2048, i8* %3) #3, !dbg !1111
  call void @llvm.lifetime.end(i64 2048, i8* %2) #3, !dbg !1111
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !1111
  ret void, !dbg !1111
}

; Function Attrs: optsize
declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #2

; Function Attrs: optsize
declare void @post_fh_thinking(i32, %struct.move_s*) #2

; Function Attrs: optsize
declare void @post_fl_thinking(i32, %struct.move_s*) #2

; Function Attrs: optsize
declare void @post_thinking(i32) #2

; Function Attrs: optsize
declare void @post_fail_thinking(i32, %struct.move_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @think(%struct.move_s* noalias nocapture sret %agg.result) #0 {
entry:
  %comp_move = alloca %struct.move_s, align 8
  %temp_move = alloca %struct.move_s, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %output = alloca [8 x i8], align 1
  %tmp287 = alloca %struct.move_s, align 4
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %comp_move}, metadata !152), !dbg !1112
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %temp_move}, metadata !153), !dbg !1112
  call void @llvm.dbg.declare(metadata !1113, metadata !154), !dbg !1112
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !157), !dbg !1114
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !159), !dbg !1115
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !1116
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !1116
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !165), !dbg !1116
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !167), !dbg !1117
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %output}, metadata !171), !dbg !1118
  store i32 0, i32* @userealholdings, align 4, !dbg !1119, !tbaa !300
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !169), !dbg !1120
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !1121
  %old_move.sroa.0.0.idx = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 0, !dbg !1122
  %old_move.sroa.1.4.idx628 = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 1, !dbg !1122
  %old_move.sroa.2.8.idx631 = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 2, !dbg !1122
  %old_move.sroa.3.12.idx634 = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 3, !dbg !1122
  %old_move.sroa.4.16.idx = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 4, !dbg !1122
  %1 = bitcast i32* %old_move.sroa.4.16.idx to i64*, !dbg !1122
  %2 = bitcast %struct.move_s* %comp_move to i8*, !dbg !1124
  %3 = bitcast %struct.move_s* %tmp287 to i8*, !dbg !1124
  %arraydecay = getelementptr inbounds [8 x i8]* %output, i64 0, i64 0, !dbg !1126
  %4 = bitcast %struct.move_s* %temp_move to i8*, !dbg !1128
  br label %restart.outer, !dbg !1120

restart.outer:                                    ; preds = %for.end334, %if.then337, %entry
  %old_move.sroa.4.0.load663.ph = phi i64 [ undef, %entry ], [ %92, %if.then337 ], [ %92, %for.end334 ]
  %k.0.ph = phi i32 [ 0, %entry ], [ %k.1.lcssa, %if.then337 ], [ %k.1.lcssa, %for.end334 ]
  %temp_score.0.ph = phi i32 [ 0, %entry ], [ %temp_score.5, %if.then337 ], [ %temp_score.5, %for.end334 ]
  %old_move.sroa.0.0.ph = phi i32 [ undef, %entry ], [ %85, %if.then337 ], [ %85, %for.end334 ]
  %old_move.sroa.1.0.ph = phi i32 [ undef, %entry ], [ %87, %if.then337 ], [ %87, %for.end334 ]
  %old_move.sroa.2.0.ph = phi i32 [ undef, %entry ], [ %89, %if.then337 ], [ %89, %for.end334 ]
  %lastlegal.0.ph = phi i32 [ 0, %entry ], [ %lastlegal.5, %if.then337 ], [ %lastlegal.5, %for.end334 ]
  %old_move.sroa.3.0.ph = phi i32 [ undef, %entry ], [ %91, %if.then337 ], [ %91, %for.end334 ]
  %pn_restart.0.ph = phi i32 [ 0, %entry ], [ %inc293, %if.then337 ], [ %inc293, %for.end334 ]
  %tobool68 = icmp ne i32 %pn_restart.0.ph, 0, !dbg !1132
  %conv72 = sitofp i32 %pn_restart.0.ph to float, !dbg !1132
  %conv73 = fpext float %conv72 to double, !dbg !1132
  %add74 = fadd double %conv73, 1.000000e+00, !dbg !1132
  %cmp288 = icmp slt i32 %pn_restart.0.ph, 10, !dbg !1133
  br label %restart

restart:                                          ; preds = %restart.outer, %if.else483
  %old_move.sroa.4.0.load663 = phi i64 [ %old_move.sroa.4.0.load664, %if.else483 ], [ %old_move.sroa.4.0.load663.ph, %restart.outer ]
  %temp_score.0 = phi i32 [ %temp_score.5, %if.else483 ], [ %temp_score.0.ph, %restart.outer ]
  %old_move.sroa.0.0 = phi i32 [ %old_move.sroa.0.1, %if.else483 ], [ %old_move.sroa.0.0.ph, %restart.outer ]
  %old_move.sroa.1.0 = phi i32 [ %old_move.sroa.1.1, %if.else483 ], [ %old_move.sroa.1.0.ph, %restart.outer ]
  %old_move.sroa.2.0 = phi i32 [ %old_move.sroa.2.1, %if.else483 ], [ %old_move.sroa.2.0.ph, %restart.outer ]
  %lastlegal.0 = phi i32 [ %lastlegal.5, %if.else483 ], [ %lastlegal.0.ph, %restart.outer ]
  %old_move.sroa.3.0 = phi i32 [ %old_move.sroa.3.1, %if.else483 ], [ %old_move.sroa.3.0.ph, %restart.outer ]
  store i32 0, i32* @nodes, align 4, !dbg !1134, !tbaa !300
  store i32 0, i32* @qnodes, align 4, !dbg !1135, !tbaa !300
  store i32 1, i32* @ply, align 4, !dbg !1136, !tbaa !300
  store i32 0, i32* @ECacheProbes, align 4, !dbg !1137, !tbaa !300
  store i32 0, i32* @ECacheHits, align 4, !dbg !1138, !tbaa !300
  store i32 0, i32* @TTProbes, align 4, !dbg !1139, !tbaa !300
  store i32 0, i32* @TTHits, align 4, !dbg !1140, !tbaa !300
  store i32 0, i32* @TTStores, align 4, !dbg !1141, !tbaa !300
  store i32 0, i32* @NCuts, align 4, !dbg !1142, !tbaa !300
  store i32 0, i32* @NTries, align 4, !dbg !1143, !tbaa !300
  store i32 0, i32* @TExt, align 4, !dbg !1144, !tbaa !300
  store i32 0, i32* @FH, align 4, !dbg !1145, !tbaa !300
  store i32 0, i32* @FHF, align 4, !dbg !1146, !tbaa !300
  store i32 0, i32* @PVS, align 4, !dbg !1147, !tbaa !300
  store i32 0, i32* @FULL, align 4, !dbg !1148, !tbaa !300
  store i32 0, i32* @PVSF, align 4, !dbg !1149, !tbaa !300
  store i32 0, i32* @ext_check, align 4, !dbg !1150, !tbaa !300
  store i32 0, i32* @ext_recap, align 4, !dbg !1151, !tbaa !300
  store i32 0, i32* @ext_onerep, align 4, !dbg !1152, !tbaa !300
  store i32 0, i32* @razor_drop, align 4, !dbg !1153, !tbaa !300
  store i32 0, i32* @razor_material, align 4, !dbg !1154, !tbaa !300
  store i32 0, i32* @drop_cuts, align 4, !dbg !1155, !tbaa !300
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !164), !dbg !1156
  store i32 0, i32* @extendedtime, align 4, !dbg !1157, !tbaa !300
  store i32 0, i32* @forcedwin, align 4, !dbg !1158, !tbaa !300
  store i32 200, i32* @maxposdiff, align 4, !dbg !1159, !tbaa !300
  store i8 0, i8* @true_i_depth, align 1, !dbg !1160, !tbaa !284
  store i32 -1, i32* @bestmovenum, align 4, !dbg !1161, !tbaa !300
  %call = call i32 @interrupt() #6, !dbg !1162
  %tobool = icmp eq i32 %call, 0, !dbg !1162
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1162

land.lhs.true:                                    ; preds = %restart
  %5 = load i32* @is_analyzing, align 4, !dbg !1162, !tbaa !284
  %6 = load i32* @is_pondering, align 4, !dbg !1162, !tbaa !284
  %7 = or i32 %6, %5, !dbg !1162
  %8 = icmp eq i32 %7, 0, !dbg !1162
  br i1 %8, label %if.end, label %if.then, !dbg !1162

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1162, !tbaa.struct !526
  br label %cleanup, !dbg !1162

if.end:                                           ; preds = %land.lhs.true, %restart
  %call3 = call i64 @rtime() #6, !dbg !1163
  store i64 %call3, i64* @start_time, align 8, !dbg !1163, !tbaa !458
  store i32 0, i32* @legals, align 4, !dbg !1164, !tbaa !300
  %10 = load i32* @Variant, align 4, !dbg !1165, !tbaa !300
  %cmp = icmp eq i32 %10, 4, !dbg !1165
  %. = zext i1 %cmp to i32, !dbg !1165
  store i32 %., i32* @captures, align 4, !dbg !1165, !tbaa !284
  call void @gen(%struct.move_s* %arrayidx) #6, !dbg !1121
  %11 = load i32* @numb_moves, align 4, !dbg !1166, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !170), !dbg !1166
  %call6 = call i32 @in_check() #6, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !168), !dbg !1167
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !166), !dbg !1168
  %12 = load i32* @numb_moves, align 4, !dbg !1168, !tbaa !300
  %cmp7665 = icmp sgt i32 %12, 0, !dbg !1168
  br i1 %cmp7665, label %for.body, label %for.end, !dbg !1168

for.body:                                         ; preds = %if.end, %if.end13
  %lastlegal.1667 = phi i32 [ %lastlegal.2, %if.end13 ], [ %lastlegal.0, %if.end ]
  %l.0666 = phi i32 [ %inc15, %if.end13 ], [ 0, %if.end ]
  call void @make(%struct.move_s* %arrayidx, i32 %l.0666) #6, !dbg !1170
  %call10 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %l.0666, i32 %call6) #6, !dbg !1172
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1172
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1172

if.then12:                                        ; preds = %for.body
  %13 = load i32* @legals, align 4, !dbg !1173, !tbaa !300
  %inc = add nsw i32 %13, 1, !dbg !1173
  store i32 %inc, i32* @legals, align 4, !dbg !1173, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %l.0666}, i64 0, metadata !167), !dbg !1175
  br label %if.end13, !dbg !1176

if.end13:                                         ; preds = %for.body, %if.then12
  %lastlegal.2 = phi i32 [ %l.0666, %if.then12 ], [ %lastlegal.1667, %for.body ]
  call void @unmake(%struct.move_s* %arrayidx, i32 %l.0666) #6, !dbg !1177
  %inc15 = add nsw i32 %l.0666, 1, !dbg !1168
  call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !166), !dbg !1168
  %14 = load i32* @numb_moves, align 4, !dbg !1168, !tbaa !300
  %cmp7 = icmp slt i32 %inc15, %14, !dbg !1168
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1168

for.end:                                          ; preds = %if.end13, %if.end
  %lastlegal.1.lcssa = phi i32 [ %lastlegal.0, %if.end ], [ %lastlegal.2, %if.end13 ]
  %15 = load i32* @Variant, align 4, !dbg !1178, !tbaa !300
  %cmp16 = icmp eq i32 %15, 4, !dbg !1178
  %16 = load i32* @legals, align 4, !dbg !1178, !tbaa !300
  %cmp18 = icmp eq i32 %16, 0, !dbg !1178
  %or.cond516 = and i1 %cmp16, %cmp18, !dbg !1178
  br i1 %or.cond516, label %if.then19, label %if.end35, !dbg !1178

if.then19:                                        ; preds = %for.end
  store i32 0, i32* @captures, align 4, !dbg !1179, !tbaa !284
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !170), !dbg !1181
  call void @gen(%struct.move_s* %arrayidx) #6, !dbg !1182
  %17 = load i32* @numb_moves, align 4, !dbg !1183, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !170), !dbg !1183
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !166), !dbg !1184
  %cmp22668 = icmp sgt i32 %17, 0, !dbg !1184
  br i1 %cmp22668, label %for.body23, label %if.end35.loopexit, !dbg !1184

for.body23:                                       ; preds = %if.then19, %if.end30
  %lastlegal.3670 = phi i32 [ %lastlegal.4, %if.end30 ], [ %lastlegal.1.lcssa, %if.then19 ]
  %l.1669 = phi i32 [ %inc33, %if.end30 ], [ 0, %if.then19 ]
  call void @make(%struct.move_s* %arrayidx, i32 %l.1669) #6, !dbg !1186
  %call26 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %l.1669, i32 %call6) #6, !dbg !1188
  %tobool27 = icmp eq i32 %call26, 0, !dbg !1188
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !1188

if.then28:                                        ; preds = %for.body23
  %18 = load i32* @legals, align 4, !dbg !1189, !tbaa !300
  %inc29 = add nsw i32 %18, 1, !dbg !1189
  store i32 %inc29, i32* @legals, align 4, !dbg !1189, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %l.1669}, i64 0, metadata !167), !dbg !1191
  br label %if.end30, !dbg !1192

if.end30:                                         ; preds = %for.body23, %if.then28
  %lastlegal.4 = phi i32 [ %l.1669, %if.then28 ], [ %lastlegal.3670, %for.body23 ]
  call void @unmake(%struct.move_s* %arrayidx, i32 %l.1669) #6, !dbg !1193
  %inc33 = add nsw i32 %l.1669, 1, !dbg !1184
  call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !166), !dbg !1184
  %19 = load i32* @numb_moves, align 4, !dbg !1184, !tbaa !300
  %cmp22 = icmp slt i32 %inc33, %19, !dbg !1184
  br i1 %cmp22, label %for.body23, label %if.end35.loopexit, !dbg !1184

if.end35.loopexit:                                ; preds = %if.end30, %if.then19
  %lastlegal.3.lcssa = phi i32 [ %lastlegal.1.lcssa, %if.then19 ], [ %lastlegal.4, %if.end30 ]
  %.pre = load i32* @Variant, align 4, !dbg !1194, !tbaa !300
  %.pre751 = load i32* @legals, align 4, !dbg !1195, !tbaa !300
  br label %if.end35

if.end35:                                         ; preds = %if.end35.loopexit, %for.end
  %20 = phi i32 [ %16, %for.end ], [ %.pre751, %if.end35.loopexit ]
  %21 = phi i32 [ %15, %for.end ], [ %.pre, %if.end35.loopexit ]
  %lastlegal.5 = phi i32 [ %lastlegal.1.lcssa, %for.end ], [ %lastlegal.3.lcssa, %if.end35.loopexit ]
  %num_moves.0 = phi i32 [ %11, %for.end ], [ %17, %if.end35.loopexit ]
  %22 = load i32* @is_pondering, align 4, !dbg !1194, !tbaa !284
  %notlhs = icmp ne i32 %21, 1, !dbg !1194
  %notrhs = icmp eq i32 %22, 0, !dbg !1194
  %or.cond517.not = and i1 %notrhs, %notlhs, !dbg !1194
  %cmp40 = icmp eq i32 %20, 1, !dbg !1195
  %or.cond556 = and i1 %or.cond517.not, %cmp40, !dbg !1194
  br i1 %or.cond556, label %if.then41, label %if.end44, !dbg !1194

if.then41:                                        ; preds = %if.end35
  %23 = load i32* @inc, align 4, !dbg !1197, !tbaa !300
  %mul = mul nsw i32 %23, 100, !dbg !1197
  %24 = load i32* @time_cushion, align 4, !dbg !1197, !tbaa !300
  %add = add nsw i32 %24, %mul, !dbg !1197
  store i32 %add, i32* @time_cushion, align 4, !dbg !1197, !tbaa !300
  %idxprom = sext i32 %lastlegal.5 to i64, !dbg !1199
  %arrayidx42 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom, !dbg !1199
  %25 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1199
  %26 = bitcast %struct.move_s* %arrayidx42 to i8*, !dbg !1199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !dbg !1199, !tbaa.struct !526
  br label %cleanup, !dbg !1199

if.end44:                                         ; preds = %if.end35
  call void @check_phase() #6, !dbg !1200
  %27 = load i32* @phase, align 4, !dbg !1201, !tbaa !300
  switch i32 %27, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
    i32 2, label %sw.bb48
  ], !dbg !1201

sw.bb:                                            ; preds = %if.end44
  %puts658 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str22, i64 0, i64 0)), !dbg !1202
  br label %sw.epilog, !dbg !1204

sw.bb46:                                          ; preds = %if.end44
  %puts657 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str21, i64 0, i64 0)), !dbg !1205
  br label %sw.epilog, !dbg !1206

sw.bb48:                                          ; preds = %if.end44
  %puts = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0)), !dbg !1207
  br label %sw.epilog, !dbg !1208

sw.epilog:                                        ; preds = %if.end44, %sw.bb48, %sw.bb46, %sw.bb
  %28 = load i32* @is_pondering, align 4, !dbg !1209, !tbaa !284
  %tobool50 = icmp eq i32 %28, 0, !dbg !1209
  br i1 %tobool50, label %if.then51, label %if.else66, !dbg !1209

if.then51:                                        ; preds = %sw.epilog
  %29 = load i32* @fixed_time, align 4, !dbg !1210, !tbaa !300
  %tobool52 = icmp eq i32 %29, 0, !dbg !1210
  br i1 %tobool52, label %if.then53, label %if.else64, !dbg !1210

if.then53:                                        ; preds = %if.then51
  %30 = load i32* @go_fast, align 4, !dbg !1212, !tbaa !284
  %tobool54 = icmp eq i32 %30, 0, !dbg !1212
  %call56 = call i32 @allocate_time() #6, !dbg !1214
  br i1 %tobool54, label %if.else61, label %if.then55, !dbg !1212

if.then55:                                        ; preds = %if.then53
  call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !163), !dbg !1214
  %cmp57 = icmp sgt i32 %call56, 40, !dbg !1216
  br i1 %cmp57, label %if.then58, label %if.else59, !dbg !1216

if.then58:                                        ; preds = %if.then55
  store i32 40, i32* @time_for_move, align 4, !dbg !1217, !tbaa !300
  br label %if.end67, !dbg !1219

if.else59:                                        ; preds = %if.then55
  store i32 %call56, i32* @time_for_move, align 4, !dbg !1220, !tbaa !300
  br label %if.end67

if.else61:                                        ; preds = %if.then53
  store i32 %call56, i32* @time_for_move, align 4, !dbg !1222, !tbaa !300
  br label %if.end67

if.else64:                                        ; preds = %if.then51
  store i32 %29, i32* @time_for_move, align 4, !dbg !1224, !tbaa !300
  br label %if.end67

if.else66:                                        ; preds = %sw.epilog
  store i32 999999, i32* @time_for_move, align 4, !dbg !1226, !tbaa !300
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %if.then58, %if.else59, %if.else61, %if.else66
  %31 = phi i32 [ %29, %if.else64 ], [ 40, %if.then58 ], [ %call56, %if.else59 ], [ %call56, %if.else61 ], [ 999999, %if.else66 ]
  br i1 %tobool68, label %if.then69, label %if.then79.critedge, !dbg !1132

if.then69:                                        ; preds = %if.end67
  %conv = sitofp i32 %31 to float, !dbg !1132
  %mul70 = fmul float %conv, 2.000000e+00, !dbg !1132
  %conv71 = fpext float %mul70 to double, !dbg !1132
  %div = fdiv double %conv71, %add74, !dbg !1132
  %conv75 = fptosi double %div to i32, !dbg !1132
  store i32 %conv75, i32* @time_for_move, align 4, !dbg !1132, !tbaa !300
  %call77 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str4, i64 0, i64 0), i32 %conv75) #6, !dbg !1228
  br label %if.end80, !dbg !1229

if.then79.critedge:                               ; preds = %if.end67
  %call77.c = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str4, i64 0, i64 0), i32 %31) #6, !dbg !1228
  call void @clear_tt() #6, !dbg !1230
  call void @reset_ecache() #6, !dbg !1232
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false), !dbg !1233
  br label %if.end80, !dbg !1234

if.end80:                                         ; preds = %if.then69, %if.then79.critedge
  %32 = load i32* @is_pondering, align 4, !dbg !1235, !tbaa !284
  %33 = or i32 %32, %pn_restart.0.ph, !dbg !1235
  %34 = icmp eq i32 %33, 0, !dbg !1235
  br i1 %34, label %land.lhs.true84, label %if.else102, !dbg !1235

land.lhs.true84:                                  ; preds = %if.end80
  %35 = load i32* @Variant, align 4, !dbg !1235, !tbaa !300
  %.off = add i32 %35, -3, !dbg !1235
  %36 = icmp ult i32 %.off, 2, !dbg !1235
  br i1 %36, label %land.lhs.true90, label %if.else102, !dbg !1235

land.lhs.true90:                                  ; preds = %land.lhs.true84
  %37 = load i32* @piece_count, align 4, !dbg !1235, !tbaa !300
  %cmp91 = icmp sgt i32 %37, 3, !dbg !1235
  %cmp94 = icmp ne i32 %35, 3, !dbg !1235
  %or.cond520 = or i1 %cmp91, %cmp94, !dbg !1235
  br i1 %or.cond520, label %if.then96, label %if.else102, !dbg !1235

if.then96:                                        ; preds = %land.lhs.true90
  %38 = load i32* @time_for_move, align 4, !dbg !1236, !tbaa !300
  %conv97 = sitofp i32 %38 to float, !dbg !1236
  %conv98 = fpext float %conv97 to double, !dbg !1236
  %div100 = fdiv double %conv98, 3.000000e+00, !dbg !1236
  %conv101 = fptosi double %div100 to i32, !dbg !1236
  store i32 %conv101, i32* @pn_time, align 4, !dbg !1236, !tbaa !300
  call void @proofnumberscan() #6, !dbg !1238
  br label %if.end106, !dbg !1239

if.else102:                                       ; preds = %if.end80, %land.lhs.true90, %land.lhs.true84
  br i1 %tobool68, label %if.end106, label %if.then104, !dbg !1240

if.then104:                                       ; preds = %if.else102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1241, !tbaa.struct !526
  br label %if.end106, !dbg !1241

if.end106:                                        ; preds = %if.else102, %if.then104, %if.then96
  %39 = load i32* @result, align 4, !dbg !1242, !tbaa !300
  %tobool107 = icmp eq i32 %39, 0, !dbg !1242
  br i1 %tobool107, label %if.end112, label %land.lhs.true108, !dbg !1242

land.lhs.true108:                                 ; preds = %if.end106
  %40 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !dbg !1242, !tbaa !300
  %41 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !dbg !1242, !tbaa !300
  %cmp109 = icmp eq i32 %40, %41, !dbg !1242
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !1242

if.then111:                                       ; preds = %land.lhs.true108
  %42 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !dbg !1243, !tbaa.struct !526
  br label %cleanup, !dbg !1243

if.end112:                                        ; preds = %if.end106, %land.lhs.true108
  %43 = load i32* @forcedwin, align 4, !dbg !1244, !tbaa !300
  %44 = or i32 %39, %43, !dbg !1244
  %45 = icmp eq i32 %44, 0, !dbg !1244
  br i1 %45, label %for.cond127.preheader, label %land.lhs.true116, !dbg !1244

land.lhs.true116:                                 ; preds = %if.end112
  %46 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !dbg !1244, !tbaa !300
  %47 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !dbg !1244, !tbaa !300
  %cmp117 = icmp eq i32 %46, %47, !dbg !1244
  %48 = load i32* @is_analyzing, align 4, !dbg !1244, !tbaa !284
  %tobool120 = icmp ne i32 %48, 0, !dbg !1244
  %or.cond522 = or i1 %cmp117, %tobool120, !dbg !1244
  br i1 %or.cond522, label %for.cond127.preheader, label %if.then121, !dbg !1244

if.then121:                                       ; preds = %land.lhs.true116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !dbg !1245, !tbaa.struct !526
  br label %if.end272, !dbg !1247

for.cond127.preheader:                            ; preds = %land.lhs.true116, %if.end112, %for.inc138
  %indvars.iv706 = phi i64 [ %indvars.iv.next707, %for.inc138 ], [ 0, %if.end112 ], [ 0, %land.lhs.true116 ]
  br label %for.body130, !dbg !1248

for.body130:                                      ; preds = %for.body130, %for.cond127.preheader
  %indvars.iv = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next, %for.body130 ]
  %arrayidx134 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %indvars.iv706, i64 %indvars.iv, !dbg !1251
  %49 = bitcast %struct.move_s* %arrayidx134 to i8*, !dbg !1251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1251, !tbaa.struct !526
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1248
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1248
  %exitcond = icmp eq i32 %lftr.wideiv, 300, !dbg !1248
  br i1 %exitcond, label %for.inc138, label %for.body130, !dbg !1248

for.inc138:                                       ; preds = %for.body130
  %indvars.iv.next707 = add i64 %indvars.iv706, 1, !dbg !1252
  %lftr.wideiv708 = trunc i64 %indvars.iv.next707 to i32, !dbg !1252
  %exitcond709 = icmp eq i32 %lftr.wideiv708, 300, !dbg !1252
  br i1 %exitcond709, label %for.end140, label %for.cond127.preheader, !dbg !1252

for.end140:                                       ; preds = %for.inc138
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x [144 x i32]]* @history_h to i8*), i8 0, i64 82944, i32 16, i1 false), !dbg !1253
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !155), !dbg !1254
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores to i8*), i8 0, i64 1200, i32 4, i1 false), !dbg !1256
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores2 to i8*), i8 0, i64 1200, i32 4, i1 false), !dbg !1258
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores3 to i8*), i8 0, i64 1200, i32 4, i1 false), !dbg !1259
  br label %for.body144, !dbg !1254

for.body144:                                      ; preds = %for.body144, %for.end140
  %indvars.iv710 = phi i64 [ 0, %for.end140 ], [ %indvars.iv.next711, %for.body144 ]
  %arrayidx152 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %indvars.iv710, !dbg !1260
  %50 = bitcast %struct.move_s* %arrayidx152 to i8*, !dbg !1260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1260, !tbaa.struct !526
  %arrayidx154 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %indvars.iv710, !dbg !1261
  %51 = bitcast %struct.move_s* %arrayidx154 to i8*, !dbg !1261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1261, !tbaa.struct !526
  %arrayidx156 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %indvars.iv710, !dbg !1262
  %52 = bitcast %struct.move_s* %arrayidx156 to i8*, !dbg !1262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1262, !tbaa.struct !526
  %indvars.iv.next711 = add i64 %indvars.iv710, 1, !dbg !1254
  %lftr.wideiv712 = trunc i64 %indvars.iv.next711 to i32, !dbg !1254
  %exitcond713 = icmp eq i32 %lftr.wideiv712, 300, !dbg !1254
  br i1 %exitcond713, label %for.end159, label %for.body144, !dbg !1254

for.end159:                                       ; preds = %for.body144
  call void @llvm.memset.p0i8.i64(i8* bitcast ([512 x i32]* @rootnodecount to i8*), i8 0, i64 2048, i32 16, i1 false), !dbg !1263
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !159), !dbg !1264
  store i32 0, i32* @cur_score, align 4, !dbg !1265, !tbaa !300
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !160), !dbg !1266
  store i32 1, i32* @i_depth, align 4, !dbg !1267, !tbaa !300
  %53 = load i32* @maxdepth, align 4, !dbg !1267, !tbaa !300
  %cmp161676 = icmp slt i32 %53, 1, !dbg !1267
  br i1 %cmp161676, label %if.end272.loopexit, label %for.body163, !dbg !1267

for.body163:                                      ; preds = %for.end159, %if.end255
  %temp_score.1677 = phi i32 [ %temp_score.4, %if.end255 ], [ 0, %for.end159 ]
  %call164 = call i64 @rtime() #6, !dbg !1268
  %54 = load i64* @start_time, align 8, !dbg !1268, !tbaa !458
  %call165 = call i32 @rdifftime(i64 %call164, i64 %54) #6, !dbg !1268
  call void @llvm.dbg.value(metadata !{i32 %call165}, i64 0, metadata !158), !dbg !1268
  %conv166 = sitofp i32 %call165 to double, !dbg !1269
  %55 = load i32* @time_for_move, align 4, !dbg !1269, !tbaa !300
  %conv167 = sitofp i32 %55 to double, !dbg !1269
  %mul168 = fmul double %conv167, 2.100000e+00, !dbg !1269
  %div169 = fdiv double %mul168, 3.000000e+00, !dbg !1269
  %cmp170 = fcmp ogt double %conv166, %div169, !dbg !1269
  %56 = load i32* @i_depth, align 4, !dbg !1269, !tbaa !300
  %cmp173 = icmp sgt i32 %56, 2, !dbg !1269
  %or.cond523 = and i1 %cmp170, %cmp173, !dbg !1269
  br i1 %or.cond523, label %if.end272.loopexit, label %if.end176, !dbg !1269

if.end176:                                        ; preds = %for.body163
  store i32 0, i32* @failed, align 4, !dbg !1270, !tbaa !300
  %57 = load i32* @Variant, align 4, !dbg !1271, !tbaa !300
  %cmp177 = icmp eq i32 %57, 2, !dbg !1271
  %cond = select i1 %cmp177, i32 35, i32 100, !dbg !1271
  %sub = sub nsw i32 %temp_score.1677, %cond, !dbg !1271
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !161), !dbg !1271
  %add182 = add nsw i32 %cond, %temp_score.1677, !dbg !1272
  call void @llvm.dbg.value(metadata !{i32 %add182}, i64 0, metadata !162), !dbg !1272
  call void @search_root(%struct.move_s* sret %temp_move, i32 %sub, i32 %add182, i32 %56) #7, !dbg !1128
  %58 = load i32* @result, align 4, !dbg !1273, !tbaa !300
  %tobool183 = icmp eq i32 %58, 0, !dbg !1273
  br i1 %tobool183, label %if.end185, label %if.end272.loopexit, !dbg !1273

if.end185:                                        ; preds = %if.end176
  %59 = load i32* @cur_score, align 4, !dbg !1274, !tbaa !300
  %not.cmp186 = icmp sle i32 %59, %sub
  %.659 = zext i1 %not.cmp186 to i32
  store i32 %.659, i32* @failed, align 4, !dbg !1274, !tbaa !300
  %cmp191 = icmp sgt i32 %59, %sub, !dbg !1275
  %60 = load i32* @time_exit, align 4, !dbg !1275, !tbaa !284
  %tobool194 = icmp ne i32 %60, 0, !dbg !1275
  %or.cond524 = or i1 %cmp191, %tobool194, !dbg !1275
  br i1 %or.cond524, label %if.else201, label %if.then195, !dbg !1275

if.then195:                                       ; preds = %if.end185
  %61 = load i32* @i_depth, align 4, !dbg !1276, !tbaa !300
  call void @search_root(%struct.move_s* sret %temp_move, i32 -1000000, i32 1000000, i32 %61) #7, !dbg !1276
  %62 = load i32* @time_exit, align 4, !dbg !1278, !tbaa !284
  %tobool198 = icmp eq i32 %62, 0, !dbg !1278
  br i1 %tobool198, label %if.then199, label %if.end213, !dbg !1278

if.then199:                                       ; preds = %if.then195
  store i32 0, i32* @failed, align 4, !dbg !1278, !tbaa !300
  br label %if.end213, !dbg !1278

if.else201:                                       ; preds = %if.end185
  %cmp202 = icmp slt i32 %59, %add182, !dbg !1279
  %or.cond525 = or i1 %cmp202, %tobool194, !dbg !1279
  br i1 %or.cond525, label %if.end213, label %if.then206, !dbg !1279

if.then206:                                       ; preds = %if.else201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 24, i32 4, i1 false), !dbg !1280, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !159), !dbg !1282
  %63 = load i32* @i_depth, align 4, !dbg !1283, !tbaa !300
  call void @search_root(%struct.move_s* sret %temp_move, i32 -1000000, i32 1000000, i32 %63) #7, !dbg !1283
  %64 = load i32* @time_exit, align 4, !dbg !1284, !tbaa !284
  %tobool209 = icmp eq i32 %64, 0, !dbg !1284
  br i1 %tobool209, label %if.then210, label %if.end213, !dbg !1284

if.then210:                                       ; preds = %if.then206
  store i32 0, i32* @failed, align 4, !dbg !1284, !tbaa !300
  br label %if.end213, !dbg !1284

if.end213:                                        ; preds = %if.then206, %if.then195, %if.else201, %if.then210, %if.then199
  %temp_score.2 = phi i32 [ %temp_score.1677, %if.else201 ], [ %59, %if.then206 ], [ %59, %if.then210 ], [ %temp_score.1677, %if.then195 ], [ %temp_score.1677, %if.then199 ]
  %call214 = call i32 @interrupt() #6, !dbg !1285
  %tobool215 = icmp ne i32 %call214, 0, !dbg !1285
  %65 = load i32* @i_depth, align 4, !dbg !1285, !tbaa !300
  %cmp217 = icmp sgt i32 %65, 1, !dbg !1285
  %or.cond526 = and i1 %tobool215, %cmp217, !dbg !1285
  br i1 %or.cond526, label %if.then219, label %if.end227, !dbg !1285

if.then219:                                       ; preds = %if.end213
  %66 = load i32* @is_pondering, align 4, !dbg !1286, !tbaa !284
  %tobool220 = icmp eq i32 %66, 0, !dbg !1286
  br i1 %tobool220, label %if.else222, label %if.then221, !dbg !1286

if.then221:                                       ; preds = %if.then219
  %67 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1288, !tbaa.struct !526
  br label %cleanup, !dbg !1288

if.else222:                                       ; preds = %if.then219
  %68 = load i32* @go_fast, align 4, !dbg !1289, !tbaa !284
  %tobool223 = icmp eq i32 %68, 0, !dbg !1289
  br i1 %tobool223, label %if.end272.loopexit, label %if.end227, !dbg !1289

if.end227:                                        ; preds = %if.else222, %if.end213
  %69 = load i32* @time_failure, align 4, !dbg !1290, !tbaa !284
  %70 = load i32* @failed, align 4, !dbg !1290, !tbaa !300
  %71 = or i32 %70, %69, !dbg !1290
  %72 = icmp eq i32 %71, 0, !dbg !1290
  br i1 %72, label %if.then231, label %if.end252, !dbg !1290

if.then231:                                       ; preds = %if.end227
  %73 = load i32* @cur_score, align 4, !dbg !1291, !tbaa !300
  %cmp232 = icmp eq i32 %73, -1000000, !dbg !1291
  br i1 %cmp232, label %if.then234, label %if.end235, !dbg !1291

if.then234:                                       ; preds = %if.then231
  %74 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !1291, !tbaa.struct !526
  br label %cleanup, !dbg !1291

if.end235:                                        ; preds = %if.then231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 24, i32 4, i1 false), !dbg !1293, !tbaa.struct !526
  call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !159), !dbg !1294
  call void @stringize_pv(i8* getelementptr inbounds ([256 x i8]* @postpv, i64 0, i64 0)) #6, !dbg !1295
  %75 = load i32* @time_exit, align 4, !dbg !1296, !tbaa !284
  %tobool236 = icmp eq i32 %75, 0, !dbg !1296
  %76 = load i32* @i_depth, align 4, !dbg !1297, !tbaa !300
  br i1 %tobool236, label %if.then237, label %if.end239, !dbg !1296

if.then237:                                       ; preds = %if.end235
  %conv238 = trunc i32 %76 to i8, !dbg !1297
  store i8 %conv238, i8* @true_i_depth, align 1, !dbg !1297, !tbaa !284
  br label %if.end239, !dbg !1299

if.end239:                                        ; preds = %if.end235, %if.then237
  %cmp240 = icmp sgt i32 %76, 1, !dbg !1300
  br i1 %cmp240, label %if.then242, label %if.end243, !dbg !1300

if.then242:                                       ; preds = %if.end239
  %77 = load i32* @cur_score, align 4, !dbg !1301, !tbaa !300
  call void @post_thinking(i32 %77) #6, !dbg !1301
  br label %if.end243, !dbg !1301

if.end243:                                        ; preds = %if.then242, %if.end239
  %cmp244 = icmp sgt i32 %73, 900000, !dbg !1302
  br i1 %cmp244, label %land.lhs.true246, label %if.end252, !dbg !1302

land.lhs.true246:                                 ; preds = %if.end243
  %78 = load i32* @cur_score, align 4, !dbg !1302, !tbaa !300
  %sub247 = sub nsw i32 1000000, %78, !dbg !1302
  %79 = load i32* @i_depth, align 4, !dbg !1302, !tbaa !300
  %cmp248 = icmp slt i32 %sub247, %79, !dbg !1302
  %80 = load i32* @time_exit, align 4, !dbg !1303, !tbaa !284
  %tobool253 = icmp ne i32 %80, 0, !dbg !1303
  %or.cond557 = or i1 %cmp248, %tobool253, !dbg !1302
  br i1 %or.cond557, label %if.end272.loopexit, label %if.end255, !dbg !1302

if.end252:                                        ; preds = %if.end243, %if.end227
  %temp_score.3 = phi i32 [ %temp_score.2, %if.end227 ], [ %73, %if.end243 ]
  %.old = load i32* @time_exit, align 4, !dbg !1303, !tbaa !284
  %tobool253.old = icmp eq i32 %.old, 0, !dbg !1303
  br i1 %tobool253.old, label %if.end252.if.end255_crit_edge, label %if.end272.loopexit, !dbg !1303

if.end252.if.end255_crit_edge:                    ; preds = %if.end252
  %.pre755 = load i32* @i_depth, align 4, !dbg !1267, !tbaa !300
  br label %if.end255, !dbg !1303

if.end255:                                        ; preds = %if.end252.if.end255_crit_edge, %land.lhs.true246
  %81 = phi i32 [ %.pre755, %if.end252.if.end255_crit_edge ], [ %79, %land.lhs.true246 ]
  %temp_score.4 = phi i32 [ %temp_score.3, %if.end252.if.end255_crit_edge ], [ %73, %land.lhs.true246 ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !156), !dbg !1304
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores to i8*), i8 0, i64 1200, i32 4, i1 false), !dbg !1306
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores2 to i8*), i8 0, i64 1200, i32 4, i1 false), !dbg !1308
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores3 to i8*), i8 0, i64 1200, i32 4, i1 false), !dbg !1309
  %inc270 = add nsw i32 %81, 1, !dbg !1267
  store i32 %inc270, i32* @i_depth, align 4, !dbg !1267, !tbaa !300
  %82 = load i32* @maxdepth, align 4, !dbg !1267, !tbaa !300
  %cmp161 = icmp slt i32 %81, %82, !dbg !1267
  br i1 %cmp161, label %for.body163, label %if.end272.loopexit, !dbg !1267

if.end272.loopexit:                               ; preds = %if.end255, %land.lhs.true246, %for.body163, %if.end176, %if.end252, %if.else222, %for.end159
  %temp_score.5.ph = phi i32 [ 0, %for.end159 ], [ %73, %land.lhs.true246 ], [ %temp_score.1677, %for.body163 ], [ %temp_score.1677, %if.end176 ], [ %temp_score.3, %if.end252 ], [ %temp_score.2, %if.else222 ], [ %temp_score.4, %if.end255 ]
  %.pre752 = load i32* @forcedwin, align 4, !dbg !1310, !tbaa !300
  br label %if.end272

if.end272:                                        ; preds = %if.end272.loopexit, %if.then121
  %83 = phi i32 [ %43, %if.then121 ], [ %.pre752, %if.end272.loopexit ]
  %temp_score.5 = phi i32 [ %temp_score.0, %if.then121 ], [ %temp_score.5.ph, %if.end272.loopexit ]
  %tobool273 = icmp eq i32 %83, 0, !dbg !1310
  br i1 %tobool273, label %if.then274, label %if.end341, !dbg !1310

if.then274:                                       ; preds = %if.end272
  %84 = bitcast %struct.move_s* %comp_move to i64*, !dbg !1122
  %old_move.sroa.0.0.copyload = load i64* %84, align 8, !dbg !1122
  %85 = trunc i64 %old_move.sroa.0.0.copyload to i32, !dbg !1122
  %86 = lshr i64 %old_move.sroa.0.0.copyload, 32
  %87 = trunc i64 %86 to i32
  %88 = bitcast i32* %old_move.sroa.2.8.idx631 to i64*, !dbg !1122
  %old_move.sroa.2.8.copyload = load i64* %88, align 8, !dbg !1122
  %89 = trunc i64 %old_move.sroa.2.8.copyload to i32, !dbg !1122
  %90 = lshr i64 %old_move.sroa.2.8.copyload, 32
  %91 = trunc i64 %90 to i32
  %92 = load i64* %1, align 8, !dbg !1122
  %93 = load i32* @Variant, align 4, !dbg !1311, !tbaa !300
  %.off642 = add i32 %93, -3, !dbg !1311
  %or.cond528.not = icmp ugt i32 %.off642, 1, !dbg !1311
  %94 = load i32* @result, align 4, !dbg !1311, !tbaa !300
  %tobool281 = icmp ne i32 %94, 0, !dbg !1311
  %or.cond529 = or i1 %or.cond528.not, %tobool281, !dbg !1311
  %95 = load i32* @alllosers, align 4, !dbg !1311, !tbaa !300
  %tobool283 = icmp ne i32 %95, 0, !dbg !1311
  %or.cond530 = or i1 %or.cond529, %tobool283, !dbg !1311
  %96 = load i32* @is_pondering, align 4, !dbg !1311, !tbaa !284
  %tobool285 = icmp ne i32 %96, 0, !dbg !1311
  %or.cond531 = or i1 %or.cond530, %tobool285, !dbg !1311
  br i1 %or.cond531, label %if.end341, label %if.then286, !dbg !1311

if.then286:                                       ; preds = %if.then274
  store i32 0, i32* @s_threat, align 4, !dbg !1312, !tbaa !300
  call void @proofnumbercheck(%struct.move_s* sret %tmp287, %struct.move_s* byval align 8 %comp_move) #6, !dbg !1124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false), !dbg !1124, !tbaa.struct !526
  %97 = load i32* @s_threat, align 4, !dbg !1133, !tbaa !300
  %tobool291 = icmp ne i32 %97, 0, !dbg !1133
  %or.cond532 = and i1 %cmp288, %tobool291, !dbg !1133
  br i1 %or.cond532, label %if.then292, label %if.end341, !dbg !1133

if.then292:                                       ; preds = %if.then286
  %inc293 = add nsw i32 %pn_restart.0.ph, 1, !dbg !1313
  call void @llvm.dbg.value(metadata !{i32 %inc293}, i64 0, metadata !169), !dbg !1313
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !155), !dbg !1315
  %cmp295680 = icmp sgt i32 %num_moves.0, 0, !dbg !1315
  br i1 %cmp295680, label %for.body297, label %for.end334, !dbg !1315

for.body297:                                      ; preds = %if.then292, %for.inc319
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %for.inc319 ], [ 0, %if.then292 ]
  %from = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv745, i32 0, !dbg !1317
  %98 = load i32* %from, align 8, !dbg !1317, !tbaa !300
  %cmp301 = icmp eq i32 %98, %85, !dbg !1317
  br i1 %cmp301, label %land.lhs.true303, label %for.inc319, !dbg !1317

land.lhs.true303:                                 ; preds = %for.body297
  %target = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv745, i32 1, !dbg !1317
  %99 = load i32* %target, align 4, !dbg !1317, !tbaa !300
  %cmp307 = icmp eq i32 %99, %87, !dbg !1317
  br i1 %cmp307, label %land.lhs.true309, label %for.inc319, !dbg !1317

land.lhs.true309:                                 ; preds = %land.lhs.true303
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv745, i32 3, !dbg !1317
  %100 = load i32* %promoted, align 4, !dbg !1317, !tbaa !300
  %cmp313 = icmp eq i32 %100, %91, !dbg !1317
  br i1 %cmp313, label %if.then315, label %for.inc319, !dbg !1317

if.then315:                                       ; preds = %land.lhs.true309
  %arrayidx317 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv745, !dbg !1319
  store i32 1, i32* %arrayidx317, align 4, !dbg !1319, !tbaa !300
  br label %for.cond322.preheader, !dbg !1321

for.inc319:                                       ; preds = %for.body297, %land.lhs.true303, %land.lhs.true309
  %indvars.iv.next746 = add i64 %indvars.iv745, 1, !dbg !1315
  %101 = trunc i64 %indvars.iv.next746 to i32, !dbg !1315
  %cmp295 = icmp slt i32 %101, %num_moves.0, !dbg !1315
  br i1 %cmp295, label %for.body297, label %for.cond322.preheader, !dbg !1315

for.cond322.preheader:                            ; preds = %for.inc319, %if.then315
  br i1 %cmp295680, label %for.body325, label %for.end334, !dbg !1322

for.body325:                                      ; preds = %for.cond322.preheader, %for.body325
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %for.body325 ], [ 0, %for.cond322.preheader ]
  %k.1684 = phi i32 [ %k.1.inc330, %for.body325 ], [ %k.0.ph, %for.cond322.preheader ]
  %arrayidx327 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv747, !dbg !1324
  %102 = load i32* %arrayidx327, align 4, !dbg !1324, !tbaa !300
  %not.tobool328 = icmp ne i32 %102, 0, !dbg !1324
  %inc330 = zext i1 %not.tobool328 to i32, !dbg !1324
  %k.1.inc330 = add nsw i32 %inc330, %k.1684, !dbg !1324
  %indvars.iv.next748 = add i64 %indvars.iv747, 1, !dbg !1322
  %lftr.wideiv749 = trunc i64 %indvars.iv.next748 to i32, !dbg !1322
  %exitcond750 = icmp eq i32 %lftr.wideiv749, %num_moves.0, !dbg !1322
  br i1 %exitcond750, label %for.end334, label %for.body325, !dbg !1322

for.end334:                                       ; preds = %if.then292, %for.body325, %for.cond322.preheader
  %k.1.lcssa = phi i32 [ %k.0.ph, %for.cond322.preheader ], [ %k.1.inc330, %for.body325 ], [ %k.0.ph, %if.then292 ]
  %103 = load i32* @legals, align 4, !dbg !1326, !tbaa !300
  %cmp335 = icmp eq i32 %k.1.lcssa, %103, !dbg !1326
  br i1 %cmp335, label %if.then337, label %restart.outer, !dbg !1326

if.then337:                                       ; preds = %for.end334
  store i32 1, i32* @alllosers, align 4, !dbg !1326, !tbaa !300
  br label %restart.outer, !dbg !1326

if.end341:                                        ; preds = %if.then286, %if.end272, %if.then274
  %old_move.sroa.4.0.load664 = phi i64 [ %92, %if.then274 ], [ %old_move.sroa.4.0.load663, %if.end272 ], [ %92, %if.then286 ]
  %old_move.sroa.0.1 = phi i32 [ %85, %if.then274 ], [ %old_move.sroa.0.0, %if.end272 ], [ %85, %if.then286 ]
  %old_move.sroa.1.1 = phi i32 [ %87, %if.then274 ], [ %old_move.sroa.1.0, %if.end272 ], [ %87, %if.then286 ]
  %old_move.sroa.2.1 = phi i32 [ %89, %if.then274 ], [ %old_move.sroa.2.0, %if.end272 ], [ %89, %if.then286 ]
  %old_move.sroa.3.1 = phi i32 [ %91, %if.then274 ], [ %old_move.sroa.3.0, %if.end272 ], [ %91, %if.then286 ]
  %104 = load i32* @alllosers, align 4, !dbg !1327, !tbaa !300
  %tobool342 = icmp eq i32 %104, 0, !dbg !1327
  br i1 %tobool342, label %if.end344, label %if.then343, !dbg !1327

if.then343:                                       ; preds = %if.end341
  store i32 %old_move.sroa.0.1, i32* %old_move.sroa.0.0.idx, align 8, !dbg !1327
  store i32 %old_move.sroa.1.1, i32* %old_move.sroa.1.4.idx628, align 4, !dbg !1327
  store i32 %old_move.sroa.2.1, i32* %old_move.sroa.2.8.idx631, align 8, !dbg !1327
  store i32 %old_move.sroa.3.1, i32* %old_move.sroa.3.12.idx634, align 4, !dbg !1327
  store i64 %old_move.sroa.4.0.load664, i64* %1, align 8, !dbg !1327
  br label %if.end344, !dbg !1327

if.end344:                                        ; preds = %if.end341, %if.then343
  %105 = load i32* @xb_mode, align 4, !dbg !1328, !tbaa !300
  %tobool348 = icmp ne i32 %105, 0, !dbg !1328
  %or.cond533 = and i1 %tobool68, %tobool348, !dbg !1328
  br i1 %or.cond533, label %if.then349, label %if.end352, !dbg !1328

if.then349:                                       ; preds = %if.end344
  call void @comp_to_san(%struct.move_s* byval align 8 %comp_move, i8* %arraydecay) #6, !dbg !1126
  %call351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i32 %pn_restart.0.ph, i8* %arraydecay) #6, !dbg !1329
  store i32 0, i32* @result, align 4, !dbg !1330, !tbaa !300
  br label %if.end352, !dbg !1331

if.end352:                                        ; preds = %if.then349, %if.end344
  %call353 = call i64 @rtime() #6, !dbg !1332
  %106 = load i64* @start_time, align 8, !dbg !1332, !tbaa !458
  %call354 = call i32 @rdifftime(i64 %call353, i64 %106) #6, !dbg !1332
  call void @llvm.dbg.value(metadata !{i32 %call354}, i64 0, metadata !158), !dbg !1332
  %107 = load i32* @time_left, align 4, !dbg !1333, !tbaa !300
  %sub355 = sub nsw i32 %107, %call354, !dbg !1333
  store i32 %sub355, i32* @time_left, align 4, !dbg !1333, !tbaa !300
  %108 = load i32* @moves_to_tc, align 4, !dbg !1334, !tbaa !300
  %tobool356 = icmp eq i32 %108, 0, !dbg !1334
  %109 = load i32* @is_pondering, align 4, !dbg !1334, !tbaa !284
  %tobool358 = icmp ne i32 %109, 0, !dbg !1334
  %or.cond534 = or i1 %tobool356, %tobool358, !dbg !1334
  br i1 %or.cond534, label %if.end363, label %if.then359, !dbg !1334

if.then359:                                       ; preds = %if.end352
  %110 = load i32* @time_for_move, align 4, !dbg !1335, !tbaa !300
  %sub360 = sub i32 %110, %call354, !dbg !1335
  %111 = load i32* @inc, align 4, !dbg !1335, !tbaa !300
  %add361 = add nsw i32 %sub360, %111, !dbg !1335
  %112 = load i32* @time_cushion, align 4, !dbg !1335, !tbaa !300
  %add362 = add nsw i32 %add361, %112, !dbg !1335
  store i32 %add362, i32* @time_cushion, align 4, !dbg !1335, !tbaa !300
  br label %if.end363, !dbg !1337

if.end363:                                        ; preds = %if.end352, %if.then359
  %cmp364 = icmp ne i32 %temp_score.5, 999998, !dbg !1338
  %or.cond535 = or i1 %cmp364, %tobool358, !dbg !1338
  br i1 %or.cond535, label %if.else374, label %if.then368, !dbg !1338

if.then368:                                       ; preds = %if.end363
  %113 = load i32* @white_to_move, align 4, !dbg !1339, !tbaa !300
  %cmp369 = icmp eq i32 %113, 1, !dbg !1339
  br i1 %cmp369, label %if.then371, label %if.else372, !dbg !1339

if.then371:                                       ; preds = %if.then368
  store i32 3, i32* @result, align 4, !dbg !1341, !tbaa !300
  br label %if.end386, !dbg !1343

if.else372:                                       ; preds = %if.then368
  store i32 2, i32* @result, align 4, !dbg !1344, !tbaa !300
  br label %if.end386

if.else374:                                       ; preds = %if.end363
  %cmp375 = icmp ne i32 %temp_score.5, -999998, !dbg !1346
  %or.cond536 = or i1 %cmp375, %tobool358, !dbg !1346
  br i1 %or.cond536, label %if.else374.if.end386_crit_edge, label %if.then379, !dbg !1346

if.else374.if.end386_crit_edge:                   ; preds = %if.else374
  %.pre753 = load i32* @result, align 4, !dbg !1347, !tbaa !300
  br label %if.end386, !dbg !1346

if.then379:                                       ; preds = %if.else374
  %114 = load i32* @white_to_move, align 4, !dbg !1348, !tbaa !300
  %cmp380 = icmp eq i32 %114, 1, !dbg !1348
  br i1 %cmp380, label %if.then382, label %if.else383, !dbg !1348

if.then382:                                       ; preds = %if.then379
  store i32 2, i32* @result, align 4, !dbg !1350, !tbaa !300
  br label %if.end386, !dbg !1352

if.else383:                                       ; preds = %if.then379
  store i32 3, i32* @result, align 4, !dbg !1353, !tbaa !300
  br label %if.end386

if.end386:                                        ; preds = %if.else374.if.end386_crit_edge, %if.else383, %if.then382, %if.then371, %if.else372
  %115 = phi i32 [ %.pre753, %if.else374.if.end386_crit_edge ], [ 3, %if.else383 ], [ 2, %if.then382 ], [ 3, %if.then371 ], [ 2, %if.else372 ]
  %116 = load i32* @post, align 4, !dbg !1347, !tbaa !284
  %117 = load i32* @xb_mode, align 4, !dbg !1347, !tbaa !300
  %notlhs643 = icmp eq i32 %116, 0, !dbg !1347
  %notrhs644 = icmp eq i32 %117, 0, !dbg !1347
  %or.cond537.not = or i1 %notrhs644, %notlhs643, !dbg !1347
  %or.cond538 = or i1 %or.cond537.not, %tobool358, !dbg !1347
  %or.cond538.not = xor i1 %or.cond538, true, !dbg !1347
  %cmp393 = icmp ne i32 %115, 3, !dbg !1347
  %or.cond539 = and i1 %cmp393, %or.cond538.not, !dbg !1347
  %cmp396 = icmp ne i32 %115, 2, !dbg !1347
  %or.cond540 = and i1 %or.cond539, %cmp396, !dbg !1347
  %cmp399 = icmp ne i32 %115, 4, !dbg !1347
  %or.cond541 = and i1 %or.cond540, %cmp399, !dbg !1347
  %cmp402 = icmp ne i32 %115, 5, !dbg !1347
  %or.cond542 = and i1 %or.cond541, %cmp402, !dbg !1347
  %cmp405 = icmp ne i32 %115, 1, !dbg !1347
  %or.cond543 = and i1 %or.cond542, %cmp405, !dbg !1347
  %118 = load i32* @forcedwin, align 4, !dbg !1347, !tbaa !300
  %tobool408.not = icmp eq i32 %118, 0, !dbg !1347
  %or.cond544.not = and i1 %or.cond543, %tobool408.not, !dbg !1347
  %cmp410 = icmp sgt i32 %temp_score.5, 999600, !dbg !1355
  %or.cond = and i1 %or.cond544.not, %cmp410, !dbg !1347
  br i1 %or.cond, label %if.then412, label %if.end425, !dbg !1347

if.then412:                                       ; preds = %if.end386
  %119 = load i32* @Variant, align 4, !dbg !1357, !tbaa !300
  %cmp413 = icmp eq i32 %119, 1, !dbg !1357
  %sub416 = sub nsw i32 1000000, %temp_score.5, !dbg !1359
  %div417 = sdiv i32 %sub416, 2, !dbg !1359
  br i1 %cmp413, label %if.else419, label %if.then415, !dbg !1357

if.then415:                                       ; preds = %if.then412
  %call418 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i32 %div417) #6, !dbg !1359
  br label %if.end425, !dbg !1361

if.else419:                                       ; preds = %if.then412
  %call422 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %div417) #6, !dbg !1362
  br label %if.end425

if.end425:                                        ; preds = %if.end386, %if.else419, %if.then415
  %120 = load i32* @result, align 4, !dbg !1364, !tbaa !300
  %.off645 = add i32 %120, -2, !dbg !1364
  %121 = icmp ugt i32 %.off645, 1, !dbg !1364
  %cmp432 = icmp ne i32 %120, 1, !dbg !1364
  %or.cond546 = and i1 %121, %cmp432, !dbg !1364
  %cmp435 = icmp ne i32 %120, 4, !dbg !1364
  %or.cond547 = and i1 %or.cond546, %cmp435, !dbg !1364
  %cmp438 = icmp ne i32 %120, 5, !dbg !1364
  %or.cond548 = and i1 %or.cond547, %cmp438, !dbg !1364
  %122 = load i8* @true_i_depth, align 1, !dbg !1364, !tbaa !284
  %cmp442 = icmp sgt i8 %122, 2, !dbg !1364
  %or.cond661 = and i1 %or.cond548, %cmp442, !dbg !1364
  br i1 %or.cond661, label %land.lhs.true444, label %if.end425.if.end457_crit_edge, !dbg !1364

if.end425.if.end457_crit_edge:                    ; preds = %if.end425
  %.pre754 = load i32* @Variant, align 4, !dbg !1365, !tbaa !300
  br label %if.end457, !dbg !1364

land.lhs.true444:                                 ; preds = %if.end425
  %123 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !dbg !1364, !tbaa !300
  %124 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !dbg !1364, !tbaa !300
  %125 = load i32* @is_pondering, align 4, !dbg !1364, !tbaa !284
  %notlhs654 = icmp eq i32 %123, %124, !dbg !1364
  %notrhs655 = icmp eq i32 %125, 0, !dbg !1364
  %or.cond549.not = and i1 %notrhs655, %notlhs654, !dbg !1364
  %126 = load i32* @Variant, align 4, !dbg !1364, !tbaa !300
  %cmp450 = icmp ne i32 %126, 1, !dbg !1364
  %or.cond550 = and i1 %or.cond549.not, %cmp450, !dbg !1364
  %127 = load i32* @bestmovenum, align 4, !dbg !1366, !tbaa !300
  %cmp453 = icmp eq i32 %127, -1, !dbg !1366
  %or.cond559 = and i1 %or.cond550, %cmp453, !dbg !1364
  br i1 %or.cond559, label %if.then455, label %if.end457, !dbg !1364

if.then455:                                       ; preds = %land.lhs.true444
  call void @llvm.trap(), !dbg !1366
  unreachable

if.end457:                                        ; preds = %if.end425.if.end457_crit_edge, %land.lhs.true444
  %128 = phi i32 [ %.pre754, %if.end425.if.end457_crit_edge ], [ %126, %land.lhs.true444 ]
  %cmp458 = icmp eq i32 %128, 1, !dbg !1365
  %cmp461 = icmp sgt i32 %temp_score.5, -999900, !dbg !1365
  %or.cond662 = and i1 %cmp458, %cmp461, !dbg !1365
  br i1 %or.cond662, label %if.then463, label %if.else471, !dbg !1365

if.then463:                                       ; preds = %if.end457
  %129 = load i32* @tradefreely, align 4, !dbg !1368, !tbaa !300
  %130 = load i32* @userealholdings, align 4, !dbg !1368, !tbaa !300
  %131 = or i32 %130, %129, !dbg !1368
  %132 = icmp eq i32 %131, 0, !dbg !1368
  br i1 %132, label %if.then468, label %if.end515, !dbg !1368

if.then468:                                       ; preds = %if.then463
  store i32 1, i32* @tradefreely, align 4, !dbg !1370, !tbaa !300
  %puts653 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str20, i64 0, i64 0)), !dbg !1372
  br label %if.end515, !dbg !1373

if.else471:                                       ; preds = %if.end457
  %cmp472 = icmp slt i32 %temp_score.5, -999900, !dbg !1374
  %or.cond552 = and i1 %cmp472, %cmp458, !dbg !1374
  br i1 %or.cond552, label %land.lhs.true477, label %if.else497, !dbg !1374

land.lhs.true477:                                 ; preds = %if.else471
  %133 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !dbg !1374, !tbaa !300
  %134 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !dbg !1374, !tbaa !300
  %cmp478 = icmp eq i32 %133, %134, !dbg !1374
  br i1 %cmp478, label %if.then480, label %if.else497, !dbg !1374

if.then480:                                       ; preds = %land.lhs.true477
  %135 = load i32* @userealholdings, align 4, !dbg !1375, !tbaa !300
  %tobool481 = icmp eq i32 %135, 0, !dbg !1375
  br i1 %tobool481, label %if.else483, label %if.then482, !dbg !1375

if.then482:                                       ; preds = %if.then480
  store i32 1, i32* @must_sit, align 4, !dbg !1377, !tbaa !284
  %cmp486 = icmp sgt i32 %temp_score.5, -1000000, !dbg !1379
  br i1 %cmp486, label %if.then488, label %if.end515, !dbg !1379

if.else483:                                       ; preds = %if.then480
  store i32 1, i32* @userealholdings, align 4, !dbg !1380, !tbaa !300
  call void @ProcessHoldings(i8* getelementptr inbounds ([255 x i8]* @realholdings, i64 0, i64 0)) #6, !dbg !1382
  store i32 0, i32* @tradefreely, align 4, !dbg !1383, !tbaa !300
  %puts649 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str16, i64 0, i64 0)), !dbg !1384
  br label %restart, !dbg !1385

if.then488:                                       ; preds = %if.then482
  %136 = load i32* @partnerdead, align 4, !dbg !1386, !tbaa !284
  %tobool489 = icmp eq i32 %136, 0, !dbg !1386
  br i1 %tobool489, label %if.else493, label %if.then490, !dbg !1386

if.then490:                                       ; preds = %if.then488
  %puts651 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str18, i64 0, i64 0)), !dbg !1388
  %puts652 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str19, i64 0, i64 0)), !dbg !1390
  br label %if.end515, !dbg !1391

if.else493:                                       ; preds = %if.then488
  %puts650 = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str17, i64 0, i64 0)), !dbg !1392
  br label %if.end515

if.else497:                                       ; preds = %land.lhs.true477, %if.else471
  %temp_score.5.off = add i32 %temp_score.5, 59999, !dbg !1394
  %notlhs646 = icmp ugt i32 %temp_score.5.off, 19998, !dbg !1394
  %notrhs647 = icmp ne i32 %128, 1, !dbg !1394
  %or.cond554.not = or i1 %notrhs647, %notlhs646, !dbg !1394
  %137 = load i32* @partnerdead, align 4, !dbg !1394, !tbaa !284
  %tobool507 = icmp ne i32 %137, 0, !dbg !1394
  %or.cond555 = or i1 %or.cond554.not, %tobool507, !dbg !1394
  br i1 %or.cond555, label %if.end515, label %land.lhs.true508, !dbg !1394

land.lhs.true508:                                 ; preds = %if.else497
  %138 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !dbg !1394, !tbaa !300
  %139 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !dbg !1394, !tbaa !300
  %cmp509 = icmp eq i32 %138, %139, !dbg !1394
  br i1 %cmp509, label %if.then511, label %if.end515, !dbg !1394

if.then511:                                       ; preds = %land.lhs.true508
  store i32 1, i32* @must_sit, align 4, !dbg !1395, !tbaa !284
  %puts648 = call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str15, i64 0, i64 0)), !dbg !1397
  br label %if.end515, !dbg !1398

if.end515:                                        ; preds = %if.then463, %if.then490, %if.else493, %if.then482, %if.else497, %if.then511, %land.lhs.true508, %if.then468
  %140 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %2, i64 24, i32 4, i1 false), !dbg !1399, !tbaa.struct !526
  br label %cleanup, !dbg !1399

cleanup:                                          ; preds = %if.end515, %if.then234, %if.then221, %if.then111, %if.then41, %if.then
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !1400
  ret void, !dbg !1400
}

; Function Attrs: optsize
declare void @check_phase() #2

; Function Attrs: optsize
declare void @clear_tt() #2

; Function Attrs: optsize
declare void @reset_ecache() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: optsize
declare void @proofnumberscan() #2

; Function Attrs: optsize
declare void @stringize_pv(i8*) #2

; Function Attrs: optsize
declare void @proofnumbercheck(%struct.move_s* sret, %struct.move_s* byval align 8) #2

; Function Attrs: optsize
declare void @ProcessHoldings(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @tree(i32 %depth, i32 %indent, %struct._IO_FILE* %output, i8* nocapture %disp_b) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !236), !dbg !1401
  call void @llvm.dbg.value(metadata !{i32 %indent}, i64 0, metadata !237), !dbg !1401
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %output}, i64 0, metadata !238), !dbg !1401
  call void @llvm.dbg.value(metadata !{i8* %disp_b}, i64 0, metadata !239), !dbg !1401
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !1402
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !1402
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !240), !dbg !1402
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !241), !dbg !1403
  %tobool = icmp eq i32 %depth, 0, !dbg !1404
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1404

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !1405
  call void @gen(%struct.move_s* %arrayidx) #6, !dbg !1405
  %1 = load i32* @numb_moves, align 4, !dbg !1406, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !241), !dbg !1406
  %call = call i32 @in_check() #6, !dbg !1407
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !244), !dbg !1407
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !242), !dbg !1408
  %cmp37 = icmp sgt i32 %1, 0, !dbg !1408
  br i1 %cmp37, label %for.body.lr.ph, label %cleanup, !dbg !1408

for.body.lr.ph:                                   ; preds = %if.end
  %cmp735 = icmp sgt i32 %indent, 0, !dbg !1410
  %sub = add nsw i32 %depth, -1, !dbg !1414
  %add = add nsw i32 %indent, 2, !dbg !1414
  br label %for.body, !dbg !1408

for.body:                                         ; preds = %if.end17, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %if.end17 ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.038) #6, !dbg !1415
  %call3 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.038, i32 %call) #6, !dbg !1416
  %tobool4 = icmp eq i32 %call3, 0, !dbg !1416
  br i1 %tobool4, label %if.end17, label %for.cond6.preheader, !dbg !1416

for.cond6.preheader:                              ; preds = %for.body
  br i1 %cmp735, label %for.body8, label %for.end, !dbg !1410

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %j.036 = phi i32 [ %inc, %for.body8 ], [ 0, %for.cond6.preheader ]
  %call9 = call i32 @fputc(i32 32, %struct._IO_FILE* %output) #6, !dbg !1417
  %inc = add nsw i32 %j.036, 1, !dbg !1410
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !243), !dbg !1410
  %exitcond = icmp eq i32 %inc, %indent, !dbg !1410
  br i1 %exitcond, label %for.end, label %for.body8, !dbg !1410

for.end:                                          ; preds = %for.body8, %for.cond6.preheader
  call void @print_move(%struct.move_s* %arrayidx, i32 %i.038, %struct._IO_FILE* %output) #6, !dbg !1419
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %output) #3, !dbg !1420
  %2 = load i8* %disp_b, align 1, !dbg !1421, !tbaa !284
  %cmp13 = icmp eq i8 %2, 121, !dbg !1421
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1421

if.then15:                                        ; preds = %for.end
  call void @display_board(%struct._IO_FILE* %output, i32 1) #6, !dbg !1422
  br label %if.end16, !dbg !1422

if.end16:                                         ; preds = %if.then15, %for.end
  call void @tree(i32 %sub, i32 %add, %struct._IO_FILE* %output, i8* %disp_b) #7, !dbg !1414
  br label %if.end17, !dbg !1423

if.end17:                                         ; preds = %for.body, %if.end16
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.038) #6, !dbg !1424
  %inc20 = add nsw i32 %i.038, 1, !dbg !1408
  call void @llvm.dbg.value(metadata !{i32 %inc20}, i64 0, metadata !242), !dbg !1408
  %exitcond39 = icmp eq i32 %inc20, %1, !dbg !1408
  br i1 %exitcond39, label %cleanup, label %for.body, !dbg !1408

cleanup:                                          ; preds = %if.end, %if.end17, %entry
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !1425
  ret void, !dbg !1426
}

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare void @print_move(%struct.move_s*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @display_board(%struct._IO_FILE*, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !245, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !38, metadata !50, metadata !77, metadata !86, metadata !123, metadata !148, metadata !176}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"order_moves", metadata !"order_moves", metadata !"", i32 55, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i32*, i32*, i32, i32)* @order_moves, null, null, metadata !26, i32 55} ; [ DW_TAG_subprogram ] [line 55] [def] [order_moves]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14, metadata !25, metadata !25, metadata !19, metadata !19}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from move_s]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!18 = metadata !{i32 786445, metadata !4, metadata !16, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{i32 786445, metadata !4, metadata !16, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!21 = metadata !{i32 786445, metadata !4, metadata !16, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!22 = metadata !{i32 786445, metadata !4, metadata !16, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!23 = metadata !{i32 786445, metadata !4, metadata !16, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!24 = metadata !{i32 786445, metadata !4, metadata !16, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !19} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!27 = metadata !{i32 786689, metadata !10, metadata !"moves", metadata !11, i32 16777271, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 55]
!28 = metadata !{i32 786689, metadata !10, metadata !"move_ordering", metadata !11, i32 33554487, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [move_ordering] [line 55]
!29 = metadata !{i32 786689, metadata !10, metadata !"see_values", metadata !11, i32 50331703, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [see_values] [line 55]
!30 = metadata !{i32 786689, metadata !10, metadata !"num_moves", metadata !11, i32 67108919, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_moves] [line 55]
!31 = metadata !{i32 786689, metadata !10, metadata !"best", metadata !11, i32 83886135, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 55]
!32 = metadata !{i32 786688, metadata !10, metadata !"promoted", metadata !11, i32 57, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [promoted] [line 57]
!33 = metadata !{i32 786688, metadata !10, metadata !"captured", metadata !11, i32 57, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [captured] [line 57]
!34 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 58, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 58]
!35 = metadata !{i32 786688, metadata !10, metadata !"from", metadata !11, i32 58, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 58]
!36 = metadata !{i32 786688, metadata !10, metadata !"target", metadata !11, i32 58, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 58]
!37 = metadata !{i32 786688, metadata !10, metadata !"seev", metadata !11, i32 58, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seev] [line 58]
!38 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"perft", metadata !"perft", metadata !"", i32 294, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @perft, null, null, metadata !41, i32 294} ; [ DW_TAG_subprogram ] [line 294] [def] [perft]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !19}
!41 = metadata !{metadata !42, metadata !43, metadata !47, metadata !48, metadata !49}
!42 = metadata !{i32 786689, metadata !38, metadata !"depth", metadata !11, i32 16777510, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 294]
!43 = metadata !{i32 786688, metadata !38, metadata !"moves", metadata !11, i32 296, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 296]
!44 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 98304, i64 32, i32 0, i32 0, metadata !15, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 98304, align 32, offset 0] [from move_s]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 512}      ; [ DW_TAG_subrange_type ] [0, 511]
!47 = metadata !{i32 786688, metadata !38, metadata !"num_moves", metadata !11, i32 297, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 297]
!48 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !11, i32 297, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 297]
!49 = metadata !{i32 786688, metadata !38, metadata !"ic", metadata !11, i32 298, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 298]
!50 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"qsearch", metadata !"qsearch", metadata !"", i32 333, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @qsearch, null, null, metadata !53, i32 333} ; [ DW_TAG_subprogram ] [line 333] [def] [qsearch]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !19, metadata !19, metadata !19, metadata !19}
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !65, metadata !66, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76}
!54 = metadata !{i32 786689, metadata !50, metadata !"alpha", metadata !11, i32 16777549, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 333]
!55 = metadata !{i32 786689, metadata !50, metadata !"beta", metadata !11, i32 33554765, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 333]
!56 = metadata !{i32 786689, metadata !50, metadata !"depth", metadata !11, i32 50331981, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 333]
!57 = metadata !{i32 786688, metadata !50, metadata !"moves", metadata !11, i32 338, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 338]
!58 = metadata !{i32 786688, metadata !50, metadata !"num_moves", metadata !11, i32 339, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 339]
!59 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !11, i32 339, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 339]
!60 = metadata !{i32 786688, metadata !50, metadata !"j", metadata !11, i32 339, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 339]
!61 = metadata !{i32 786688, metadata !50, metadata !"score", metadata !11, i32 340, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 340]
!62 = metadata !{i32 786688, metadata !50, metadata !"standpat", metadata !11, i32 340, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [standpat] [line 340]
!63 = metadata !{i32 786688, metadata !50, metadata !"move_ordering", metadata !11, i32 341, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move_ordering] [line 341]
!64 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16384, i64 32, i32 0, i32 0, metadata !19, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16384, align 32, offset 0] [from int]
!65 = metadata !{i32 786688, metadata !50, metadata !"see_values", metadata !11, i32 342, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [see_values] [line 342]
!66 = metadata !{i32 786688, metadata !50, metadata !"legal_move", metadata !11, i32 343, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [legal_move] [line 343]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786688, metadata !50, metadata !"no_moves", metadata !11, i32 343, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_moves] [line 343]
!69 = metadata !{i32 786688, metadata !50, metadata !"sbest", metadata !11, i32 344, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sbest] [line 344]
!70 = metadata !{i32 786688, metadata !50, metadata !"best_score", metadata !11, i32 344, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_score] [line 344]
!71 = metadata !{i32 786688, metadata !50, metadata !"best", metadata !11, i32 344, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 344]
!72 = metadata !{i32 786688, metadata !50, metadata !"delta", metadata !11, i32 344, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 344]
!73 = metadata !{i32 786688, metadata !50, metadata !"bound", metadata !11, i32 344, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bound] [line 344]
!74 = metadata !{i32 786688, metadata !50, metadata !"originalalpha", metadata !11, i32 345, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [originalalpha] [line 345]
!75 = metadata !{i32 786688, metadata !50, metadata !"oldtime", metadata !11, i32 346, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldtime] [line 346]
!76 = metadata !{i32 786688, metadata !50, metadata !"seev", metadata !11, i32 347, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seev] [line 347]
!77 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"remove_one", metadata !"remove_one", metadata !"", i32 504, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i32)* @remove_one, null, null, metadata !80, i32 504} ; [ DW_TAG_subprogram ] [line 504] [def] [remove_one]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !67, metadata !25, metadata !25, metadata !19}
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!81 = metadata !{i32 786689, metadata !77, metadata !"marker", metadata !11, i32 16777720, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [marker] [line 504]
!82 = metadata !{i32 786689, metadata !77, metadata !"move_ordering", metadata !11, i32 33554936, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [move_ordering] [line 504]
!83 = metadata !{i32 786689, metadata !77, metadata !"num_moves", metadata !11, i32 50332152, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_moves] [line 504]
!84 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !11, i32 510, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 510]
!85 = metadata !{i32 786688, metadata !77, metadata !"best", metadata !11, i32 510, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 510]
!86 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"search", metadata !"search", metadata !"", i32 531, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i32)* @search, null, null, metadata !89, i32 531} ; [ DW_TAG_subprogram ] [line 531] [def] [search]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !19, metadata !19, metadata !19, metadata !19, metadata !19}
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122}
!90 = metadata !{i32 786689, metadata !86, metadata !"alpha", metadata !11, i32 16777747, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 531]
!91 = metadata !{i32 786689, metadata !86, metadata !"beta", metadata !11, i32 33554963, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 531]
!92 = metadata !{i32 786689, metadata !86, metadata !"depth", metadata !11, i32 50332179, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 531]
!93 = metadata !{i32 786689, metadata !86, metadata !"is_null", metadata !11, i32 67109395, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is_null] [line 531]
!94 = metadata !{i32 786688, metadata !86, metadata !"moves", metadata !11, i32 535, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 535]
!95 = metadata !{i32 786688, metadata !86, metadata !"num_moves", metadata !11, i32 536, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 536]
!96 = metadata !{i32 786688, metadata !86, metadata !"i", metadata !11, i32 536, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 536]
!97 = metadata !{i32 786688, metadata !86, metadata !"j", metadata !11, i32 536, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 536]
!98 = metadata !{i32 786688, metadata !86, metadata !"score", metadata !11, i32 537, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 537]
!99 = metadata !{i32 786688, metadata !86, metadata !"move_ordering", metadata !11, i32 537, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move_ordering] [line 537]
!100 = metadata !{i32 786688, metadata !86, metadata !"see_values", metadata !11, i32 537, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [see_values] [line 537]
!101 = metadata !{i32 786688, metadata !86, metadata !"no_moves", metadata !11, i32 538, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_moves] [line 538]
!102 = metadata !{i32 786688, metadata !86, metadata !"legal_move", metadata !11, i32 538, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [legal_move] [line 538]
!103 = metadata !{i32 786688, metadata !86, metadata !"bound", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bound] [line 539]
!104 = metadata !{i32 786688, metadata !86, metadata !"threat", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threat] [line 539]
!105 = metadata !{i32 786688, metadata !86, metadata !"donull", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [donull] [line 539]
!106 = metadata !{i32 786688, metadata !86, metadata !"best", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 539]
!107 = metadata !{i32 786688, metadata !86, metadata !"sbest", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sbest] [line 539]
!108 = metadata !{i32 786688, metadata !86, metadata !"best_score", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_score] [line 539]
!109 = metadata !{i32 786688, metadata !86, metadata !"old_ep", metadata !11, i32 539, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_ep] [line 539]
!110 = metadata !{i32 786688, metadata !86, metadata !"incheck", metadata !11, i32 540, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [incheck] [line 540]
!111 = metadata !{i32 786688, metadata !86, metadata !"first", metadata !11, i32 540, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 540]
!112 = metadata !{i32 786688, metadata !86, metadata !"extend", metadata !11, i32 541, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extend] [line 541]
!113 = metadata !{i32 786688, metadata !86, metadata !"fscore", metadata !11, i32 541, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fscore] [line 541]
!114 = metadata !{i32 786688, metadata !86, metadata !"fmax", metadata !11, i32 541, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax] [line 541]
!115 = metadata !{i32 786688, metadata !86, metadata !"selective", metadata !11, i32 541, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [selective] [line 541]
!116 = metadata !{i32 786688, metadata !86, metadata !"kswap", metadata !11, i32 542, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kswap] [line 542]
!117 = metadata !{i32 786688, metadata !86, metadata !"ksswap", metadata !11, i32 543, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ksswap] [line 543]
!118 = metadata !{i32 786688, metadata !86, metadata !"originalalpha", metadata !11, i32 544, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [originalalpha] [line 544]
!119 = metadata !{i32 786688, metadata !86, metadata !"afterincheck", metadata !11, i32 545, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [afterincheck] [line 545]
!120 = metadata !{i32 786688, metadata !86, metadata !"legalmoves", metadata !11, i32 546, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [legalmoves] [line 546]
!121 = metadata !{i32 786688, metadata !86, metadata !"dropcut", metadata !11, i32 547, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dropcut] [line 547]
!122 = metadata !{i32 786688, metadata !86, metadata !"oldtime", metadata !11, i32 548, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldtime] [line 548]
!123 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"search_root", metadata !"search_root", metadata !"", i32 1099, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i32, i32, i32)* @search_root, null, null, metadata !126, i32 1099} ; [ DW_TAG_subprogram ] [line 1099] [def] [search_root]
!124 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !15, metadata !19, metadata !19, metadata !19}
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!127 = metadata !{i32 786689, metadata !123, metadata !"originalalpha", metadata !11, i32 16778315, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [originalalpha] [line 1099]
!128 = metadata !{i32 786689, metadata !123, metadata !"originalbeta", metadata !11, i32 33555531, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [originalbeta] [line 1099]
!129 = metadata !{i32 786689, metadata !123, metadata !"depth", metadata !11, i32 50332747, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 1099]
!130 = metadata !{i32 786688, metadata !123, metadata !"moves", metadata !11, i32 1103, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 1103]
!131 = metadata !{i32 786688, metadata !123, metadata !"best_move", metadata !11, i32 1103, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_move] [line 1103]
!132 = metadata !{i32 786688, metadata !123, metadata !"num_moves", metadata !11, i32 1104, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 1104]
!133 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !11, i32 1104, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1104]
!134 = metadata !{i32 786688, metadata !123, metadata !"j", metadata !11, i32 1104, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1104]
!135 = metadata !{i32 786688, metadata !123, metadata !"root_score", metadata !11, i32 1105, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root_score] [line 1105]
!136 = metadata !{i32 786688, metadata !123, metadata !"move_ordering", metadata !11, i32 1105, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move_ordering] [line 1105]
!137 = metadata !{i32 786688, metadata !123, metadata !"see_values", metadata !11, i32 1105, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [see_values] [line 1105]
!138 = metadata !{i32 786688, metadata !123, metadata !"no_moves", metadata !11, i32 1106, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_moves] [line 1106]
!139 = metadata !{i32 786688, metadata !123, metadata !"legal_move", metadata !11, i32 1106, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [legal_move] [line 1106]
!140 = metadata !{i32 786688, metadata !123, metadata !"first", metadata !11, i32 1106, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1106]
!141 = metadata !{i32 786688, metadata !123, metadata !"alpha", metadata !11, i32 1107, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alpha] [line 1107]
!142 = metadata !{i32 786688, metadata !123, metadata !"beta", metadata !11, i32 1107, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beta] [line 1107]
!143 = metadata !{i32 786688, metadata !123, metadata !"kswap", metadata !11, i32 1108, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kswap] [line 1108]
!144 = metadata !{i32 786688, metadata !123, metadata !"ksswap", metadata !11, i32 1109, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ksswap] [line 1109]
!145 = metadata !{i32 786688, metadata !123, metadata !"incheck", metadata !11, i32 1110, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [incheck] [line 1110]
!146 = metadata !{i32 786688, metadata !123, metadata !"mc", metadata !11, i32 1111, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mc] [line 1111]
!147 = metadata !{i32 786688, metadata !123, metadata !"oldnodecount", metadata !11, i32 1112, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldnodecount] [line 1112]
!148 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"think", metadata !"think", metadata !"", i32 1444, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*)* @think, null, null, metadata !151, i32 1444} ; [ DW_TAG_subprogram ] [line 1444] [def] [think]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{metadata !15}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!152 = metadata !{i32 786688, metadata !148, metadata !"comp_move", metadata !11, i32 1448, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp_move] [line 1448]
!153 = metadata !{i32 786688, metadata !148, metadata !"temp_move", metadata !11, i32 1448, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp_move] [line 1448]
!154 = metadata !{i32 786688, metadata !148, metadata !"old_move", metadata !11, i32 1448, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_move] [line 1448]
!155 = metadata !{i32 786688, metadata !148, metadata !"i", metadata !11, i32 1449, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1449]
!156 = metadata !{i32 786688, metadata !148, metadata !"j", metadata !11, i32 1449, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1449]
!157 = metadata !{i32 786688, metadata !148, metadata !"k", metadata !11, i32 1449, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1449]
!158 = metadata !{i32 786688, metadata !148, metadata !"elapsed", metadata !11, i32 1450, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elapsed] [line 1450]
!159 = metadata !{i32 786688, metadata !148, metadata !"temp_score", metadata !11, i32 1450, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp_score] [line 1450]
!160 = metadata !{i32 786688, metadata !148, metadata !"true_score", metadata !11, i32 1450, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [true_score] [line 1450]
!161 = metadata !{i32 786688, metadata !148, metadata !"alpha", metadata !11, i32 1451, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alpha] [line 1451]
!162 = metadata !{i32 786688, metadata !148, metadata !"beta", metadata !11, i32 1451, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beta] [line 1451]
!163 = metadata !{i32 786688, metadata !148, metadata !"tmptmp", metadata !11, i32 1452, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmptmp] [line 1452]
!164 = metadata !{i32 786688, metadata !148, metadata !"rs", metadata !11, i32 1453, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rs] [line 1453]
!165 = metadata !{i32 786688, metadata !148, metadata !"moves", metadata !11, i32 1454, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 1454]
!166 = metadata !{i32 786688, metadata !148, metadata !"l", metadata !11, i32 1455, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1455]
!167 = metadata !{i32 786688, metadata !148, metadata !"lastlegal", metadata !11, i32 1455, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastlegal] [line 1455]
!168 = metadata !{i32 786688, metadata !148, metadata !"ic", metadata !11, i32 1455, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 1455]
!169 = metadata !{i32 786688, metadata !148, metadata !"pn_restart", metadata !11, i32 1456, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pn_restart] [line 1456]
!170 = metadata !{i32 786688, metadata !148, metadata !"num_moves", metadata !11, i32 1457, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 1457]
!171 = metadata !{i32 786688, metadata !148, metadata !"output", metadata !11, i32 1458, metadata !172, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 1458]
!172 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !173, metadata !174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!173 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!174 = metadata !{metadata !175}
!175 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!176 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"tree", metadata !"tree", metadata !"", i32 1910, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, %struct._IO_FILE*, i8*)* @tree, null, null, metadata !235, i32 1910} ; [ DW_TAG_subprogram ] [line 1910] [def] [tree]
!177 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{null, metadata !19, metadata !19, metadata !179, metadata !186}
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!180 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!181 = metadata !{i32 786451, metadata !182, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!182 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!183 = metadata !{metadata !184, metadata !185, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !205, metadata !206, metadata !207, metadata !208, metadata !211, metadata !213, metadata !215, metadata !219, metadata !221, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !230, metadata !231}
!184 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!185 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!187 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!188 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!189 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!190 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!191 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!192 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!193 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!194 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!195 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!196 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !186} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!197 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !198} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!199 = metadata !{i32 786451, metadata !182, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !204}
!201 = metadata !{i32 786445, metadata !182, metadata !199, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!202 = metadata !{i32 786445, metadata !182, metadata !199, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !203} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!204 = metadata !{i32 786445, metadata !182, metadata !199, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!205 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !203} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!206 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!207 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!208 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !209} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!209 = metadata !{i32 786454, metadata !182, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!210 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!211 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !212} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!212 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!213 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !214} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!214 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!215 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !216} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !173, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!219 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !220} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!220 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!221 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !222} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!222 = metadata !{i32 786454, metadata !182, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!223 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !220} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!224 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !220} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!225 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !220} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!226 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !220} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!227 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !228} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!228 = metadata !{i32 786454, metadata !182, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!229 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!230 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !19} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!231 = metadata !{i32 786445, metadata !182, metadata !181, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !232} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!232 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !173, metadata !233, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!233 = metadata !{metadata !234}
!234 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244}
!236 = metadata !{i32 786689, metadata !176, metadata !"depth", metadata !11, i32 16779126, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 1910]
!237 = metadata !{i32 786689, metadata !176, metadata !"indent", metadata !11, i32 33556342, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indent] [line 1910]
!238 = metadata !{i32 786689, metadata !176, metadata !"output", metadata !11, i32 50333558, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output] [line 1910]
!239 = metadata !{i32 786689, metadata !176, metadata !"disp_b", metadata !11, i32 67110774, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [disp_b] [line 1910]
!240 = metadata !{i32 786688, metadata !176, metadata !"moves", metadata !11, i32 1912, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 1912]
!241 = metadata !{i32 786688, metadata !176, metadata !"num_moves", metadata !11, i32 1913, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 1913]
!242 = metadata !{i32 786688, metadata !176, metadata !"i", metadata !11, i32 1913, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1913]
!243 = metadata !{i32 786688, metadata !176, metadata !"j", metadata !11, i32 1913, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1913]
!244 = metadata !{i32 786688, metadata !176, metadata !"ic", metadata !11, i32 1914, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 1914]
!245 = metadata !{metadata !246, metadata !251, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !276, metadata !280, metadata !281}
!246 = metadata !{i32 786484, i32 0, metadata !86, metadata !"rc_index", metadata !"rc_index", metadata !"", metadata !11, i32 549, metadata !247, i32 1, i32 1, [14 x i32]* @search.rc_index, null} ; [ DW_TAG_variable ] [rc_index] [line 549] [local] [def]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !248, metadata !249, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from ]
!248 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!249 = metadata !{metadata !250}
!250 = metadata !{i32 786465, i64 0, i64 14}      ; [ DW_TAG_subrange_type ] [0, 13]
!251 = metadata !{i32 786484, i32 0, null, metadata !"FH", metadata !"FH", metadata !"", metadata !11, i32 15, metadata !252, i32 0, i32 1, i32* @FH, null} ; [ DW_TAG_variable ] [FH] [line 15] [def]
!252 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!253 = metadata !{i32 786484, i32 0, null, metadata !"FHF", metadata !"FHF", metadata !"", metadata !11, i32 15, metadata !252, i32 0, i32 1, i32* @FHF, null} ; [ DW_TAG_variable ] [FHF] [line 15] [def]
!254 = metadata !{i32 786484, i32 0, null, metadata !"razor_drop", metadata !"razor_drop", metadata !"", metadata !11, i32 16, metadata !252, i32 0, i32 1, i32* @razor_drop, null} ; [ DW_TAG_variable ] [razor_drop] [line 16] [def]
!255 = metadata !{i32 786484, i32 0, null, metadata !"razor_material", metadata !"razor_material", metadata !"", metadata !11, i32 16, metadata !252, i32 0, i32 1, i32* @razor_material, null} ; [ DW_TAG_variable ] [razor_material] [line 16] [def]
!256 = metadata !{i32 786484, i32 0, null, metadata !"drop_cuts", metadata !"drop_cuts", metadata !"", metadata !11, i32 16, metadata !252, i32 0, i32 1, i32* @drop_cuts, null} ; [ DW_TAG_variable ] [drop_cuts] [line 16] [def]
!257 = metadata !{i32 786484, i32 0, null, metadata !"ext_recap", metadata !"ext_recap", metadata !"", metadata !11, i32 16, metadata !252, i32 0, i32 1, i32* @ext_recap, null} ; [ DW_TAG_variable ] [ext_recap] [line 16] [def]
!258 = metadata !{i32 786484, i32 0, null, metadata !"ext_onerep", metadata !"ext_onerep", metadata !"", metadata !11, i32 16, metadata !252, i32 0, i32 1, i32* @ext_onerep, null} ; [ DW_TAG_variable ] [ext_onerep] [line 16] [def]
!259 = metadata !{i32 786484, i32 0, null, metadata !"true_i_depth", metadata !"true_i_depth", metadata !"", metadata !11, i32 18, metadata !173, i32 0, i32 1, i8* @true_i_depth, null} ; [ DW_TAG_variable ] [true_i_depth] [line 18] [def]
!260 = metadata !{i32 786484, i32 0, null, metadata !"bestmovenum", metadata !"bestmovenum", metadata !"", metadata !11, i32 20, metadata !19, i32 0, i32 1, i32* @bestmovenum, null} ; [ DW_TAG_variable ] [bestmovenum] [line 20] [def]
!261 = metadata !{i32 786484, i32 0, null, metadata !"ugly_ep_hack", metadata !"ugly_ep_hack", metadata !"", metadata !11, i32 22, metadata !19, i32 0, i32 1, i32* @ugly_ep_hack, null} ; [ DW_TAG_variable ] [ugly_ep_hack] [line 22] [def]
!262 = metadata !{i32 786484, i32 0, null, metadata !"postpv", metadata !"postpv", metadata !"", metadata !11, i32 24, metadata !263, i32 0, i32 1, [256 x i8]* @postpv, null} ; [ DW_TAG_variable ] [postpv] [line 24] [def]
!263 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !173, metadata !264, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!264 = metadata !{metadata !265}
!265 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!266 = metadata !{i32 786484, i32 0, null, metadata !"searching_move", metadata !"searching_move", metadata !"", metadata !11, i32 26, metadata !232, i32 0, i32 1, [20 x i8]* @searching_move, null} ; [ DW_TAG_variable ] [searching_move] [line 26] [def]
!267 = metadata !{i32 786484, i32 0, null, metadata !"moveleft", metadata !"moveleft", metadata !"", metadata !11, i32 27, metadata !19, i32 0, i32 1, i32* @moveleft, null} ; [ DW_TAG_variable ] [moveleft] [line 27] [def]
!268 = metadata !{i32 786484, i32 0, null, metadata !"movetotal", metadata !"movetotal", metadata !"", metadata !11, i32 28, metadata !19, i32 0, i32 1, i32* @movetotal, null} ; [ DW_TAG_variable ] [movetotal] [line 28] [def]
!269 = metadata !{i32 786484, i32 0, null, metadata !"legals", metadata !"legals", metadata !"", metadata !11, i32 30, metadata !19, i32 0, i32 1, i32* @legals, null} ; [ DW_TAG_variable ] [legals] [line 30] [def]
!270 = metadata !{i32 786484, i32 0, null, metadata !"failed", metadata !"failed", metadata !"", metadata !11, i32 32, metadata !19, i32 0, i32 1, i32* @failed, null} ; [ DW_TAG_variable ] [failed] [line 32] [def]
!271 = metadata !{i32 786484, i32 0, null, metadata !"extendedtime", metadata !"extendedtime", metadata !"", metadata !11, i32 33, metadata !19, i32 0, i32 1, i32* @extendedtime, null} ; [ DW_TAG_variable ] [extendedtime] [line 33] [def]
!272 = metadata !{i32 786484, i32 0, null, metadata !"tradefreely", metadata !"tradefreely", metadata !"", metadata !11, i32 35, metadata !19, i32 0, i32 1, i32* @tradefreely, null} ; [ DW_TAG_variable ] [tradefreely] [line 35] [def]
!273 = metadata !{i32 786484, i32 0, null, metadata !"s_threat", metadata !"s_threat", metadata !"", metadata !11, i32 37, metadata !19, i32 0, i32 1, i32* @s_threat, null} ; [ DW_TAG_variable ] [s_threat] [line 37] [def]
!274 = metadata !{i32 786484, i32 0, null, metadata !"rootnodecount", metadata !"rootnodecount", metadata !"", metadata !11, i32 39, metadata !275, i32 0, i32 1, [512 x i32]* @rootnodecount, null} ; [ DW_TAG_variable ] [rootnodecount] [line 39] [def]
!275 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16384, i64 32, i32 0, i32 0, metadata !252, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16384, align 32, offset 0] [from unsigned int]
!276 = metadata !{i32 786484, i32 0, null, metadata !"checks", metadata !"checks", metadata !"", metadata !11, i32 41, metadata !277, i32 0, i32 1, [300 x i32]* @checks, null} ; [ DW_TAG_variable ] [checks] [line 41] [def]
!277 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9600, i64 32, i32 0, i32 0, metadata !67, metadata !278, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9600, align 32, offset 0] [from xbool]
!278 = metadata !{metadata !279}
!279 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!280 = metadata !{i32 786484, i32 0, null, metadata !"recaps", metadata !"recaps", metadata !"", metadata !11, i32 42, metadata !277, i32 0, i32 1, [300 x i32]* @recaps, null} ; [ DW_TAG_variable ] [recaps] [line 42] [def]
!281 = metadata !{i32 786484, i32 0, null, metadata !"singular", metadata !"singular", metadata !"", metadata !11, i32 43, metadata !277, i32 0, i32 1, [300 x i32]* @singular, null} ; [ DW_TAG_variable ] [singular] [line 43] [def]
!282 = metadata !{i32 55, i32 0, metadata !10, null}
!283 = metadata !{i32 63, i32 0, metadata !10, null}
!284 = metadata !{metadata !"omnipotent char", metadata !285}
!285 = metadata !{metadata !"Simple C/C++ TBAA"}
!286 = metadata !{i32 199, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !288, i32 199, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!288 = metadata !{i32 786443, metadata !1, metadata !10, i32 198, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!289 = metadata !{i32 207, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !287, i32 199, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!291 = metadata !{i32 227, i32 0, metadata !290, null}
!292 = metadata !{i32 64, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !10, i32 63, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!294 = metadata !{i32 65, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !293, i32 65, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!296 = metadata !{i32 118, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !295, i32 65, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!298 = metadata !{i32 136, i32 0, metadata !297, null}
!299 = metadata !{i32 66, i32 0, metadata !297, null}
!300 = metadata !{metadata !"int", metadata !284}
!301 = metadata !{i32 67, i32 0, metadata !297, null}
!302 = metadata !{i32 68, i32 0, metadata !297, null}
!303 = metadata !{i32 69, i32 0, metadata !297, null}
!304 = metadata !{i32 73, i32 0, metadata !297, null}
!305 = metadata !{i32 76, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !297, i32 74, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!307 = metadata !{i32 78, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !306, i32 77, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!309 = metadata !{i32 79, i32 0, metadata !308, null}
!310 = metadata !{i32 80, i32 0, metadata !308, null}
!311 = metadata !{i32 83, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !306, i32 82, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!313 = metadata !{i32 85, i32 0, metadata !312, null}
!314 = metadata !{i32 86, i32 0, metadata !312, null}
!315 = metadata !{i32 88, i32 0, metadata !312, null}
!316 = metadata !{i32 90, i32 0, metadata !312, null}
!317 = metadata !{i32 94, i32 0, metadata !297, null}
!318 = metadata !{i32 97, i32 0, metadata !297, null}
!319 = metadata !{i32 101, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !297, i32 99, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!321 = metadata !{i32 102, i32 0, metadata !320, null}
!322 = metadata !{i32 104, i32 0, metadata !320, null}
!323 = metadata !{i32 107, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !320, i32 105, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!325 = metadata !{i32 109, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !324, i32 108, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!327 = metadata !{i32 110, i32 0, metadata !326, null}
!328 = metadata !{i32 113, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !324, i32 112, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!330 = metadata !{i32 114, i32 0, metadata !329, null}
!331 = metadata !{i32 120, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !297, i32 119, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!333 = metadata !{i32 122, i32 0, metadata !332, null}
!334 = metadata !{i32 125, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !332, i32 123, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!336 = metadata !{i32 127, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !335, i32 126, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!338 = metadata !{i32 128, i32 0, metadata !337, null}
!339 = metadata !{i32 131, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !335, i32 130, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!341 = metadata !{i32 132, i32 0, metadata !340, null}
!342 = metadata !{i32 139, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !297, i32 137, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!344 = metadata !{i32 143, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !343, i32 142, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!346 = metadata !{i32 145, i32 0, metadata !345, null}
!347 = metadata !{i32 148, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !345, i32 146, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!349 = metadata !{i32 150, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !348, i32 149, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!351 = metadata !{i32 151, i32 0, metadata !350, null}
!352 = metadata !{i32 154, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !348, i32 153, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!354 = metadata !{i32 155, i32 0, metadata !353, null}
!355 = metadata !{i32 166, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !297, i32 164, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!357 = metadata !{i32 169, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 167, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!359 = metadata !{i32 172, i32 0, metadata !358, null}
!360 = metadata !{i32 174, i32 0, metadata !358, null}
!361 = metadata !{i32 175, i32 0, metadata !358, null}
!362 = metadata !{i32 177, i32 0, metadata !358, null}
!363 = metadata !{i32 178, i32 0, metadata !358, null}
!364 = metadata !{i32 180, i32 0, metadata !358, null}
!365 = metadata !{i32 186, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !367, i32 185, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!367 = metadata !{i32 786443, metadata !1, metadata !356, i32 183, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!368 = metadata !{i32 190, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !367, i32 189, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!370 = metadata !{i32 200, i32 0, metadata !290, null}
!371 = metadata !{i32 201, i32 0, metadata !290, null}
!372 = metadata !{i32 202, i32 0, metadata !290, null}
!373 = metadata !{i32 203, i32 0, metadata !290, null}
!374 = metadata !{i32 209, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !290, i32 208, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!376 = metadata !{i32 212, i32 0, metadata !375, null}
!377 = metadata !{i32 215, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !375, i32 213, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!379 = metadata !{i32 217, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !378, i32 216, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!381 = metadata !{i32 218, i32 0, metadata !380, null}
!382 = metadata !{i32 221, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !378, i32 220, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!384 = metadata !{i32 222, i32 0, metadata !383, null}
!385 = metadata !{i32 230, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !290, i32 228, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!387 = metadata !{i32 234, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !386, i32 233, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!389 = metadata !{i32 236, i32 0, metadata !388, null}
!390 = metadata !{i32 239, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !388, i32 237, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!392 = metadata !{i32 241, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !391, i32 240, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!394 = metadata !{i32 242, i32 0, metadata !393, null}
!395 = metadata !{i32 245, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !391, i32 244, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!397 = metadata !{i32 246, i32 0, metadata !396, null}
!398 = metadata !{i32 251, i32 0, metadata !290, null}
!399 = metadata !{i32 254, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !290, i32 252, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!401 = metadata !{i32 256, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !400, i32 255, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!403 = metadata !{i32 257, i32 0, metadata !402, null}
!404 = metadata !{i32 258, i32 0, metadata !402, null}
!405 = metadata !{i32 261, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !400, i32 260, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!407 = metadata !{i32 263, i32 0, metadata !406, null}
!408 = metadata !{i32 264, i32 0, metadata !406, null}
!409 = metadata !{i32 266, i32 0, metadata !406, null}
!410 = metadata !{i32 268, i32 0, metadata !406, null}
!411 = metadata !{i32 272, i32 0, metadata !290, null}
!412 = metadata !{i32 277, i32 0, metadata !290, null}
!413 = metadata !{i32 280, i32 0, metadata !290, null}
!414 = metadata !{i32 282, i32 0, metadata !290, null}
!415 = metadata !{i32 283, i32 0, metadata !290, null}
!416 = metadata !{i32 285, i32 0, metadata !290, null}
!417 = metadata !{i32 286, i32 0, metadata !290, null}
!418 = metadata !{i32 288, i32 0, metadata !290, null}
!419 = metadata !{i32 292, i32 0, metadata !10, null}
!420 = metadata !{i32 294, i32 0, metadata !38, null}
!421 = metadata !{i32 296, i32 0, metadata !38, null}
!422 = metadata !{i32 300, i32 0, metadata !38, null}
!423 = metadata !{i32 303, i32 0, metadata !38, null}
!424 = metadata !{i32 304, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !38, i32 303, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!426 = metadata !{i32 305, i32 0, metadata !425, null}
!427 = metadata !{i32 309, i32 0, metadata !38, null}
!428 = metadata !{i32 310, i32 0, metadata !38, null}
!429 = metadata !{i32 312, i32 0, metadata !38, null}
!430 = metadata !{i32 315, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !38, i32 315, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!432 = metadata !{i32 322, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !434, i32 319, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!434 = metadata !{i32 786443, metadata !1, metadata !431, i32 315, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!435 = metadata !{i32 316, i32 0, metadata !434, null}
!436 = metadata !{i32 319, i32 0, metadata !434, null}
!437 = metadata !{i32 323, i32 0, metadata !433, null}
!438 = metadata !{i32 326, i32 0, metadata !434, null}
!439 = metadata !{i32 315, i32 0, metadata !38, null}
!440 = metadata !{i32 330, i32 0, metadata !38, null}
!441 = metadata !{i32 333, i32 0, metadata !50, null}
!442 = metadata !{i32 338, i32 0, metadata !50, null}
!443 = metadata !{i32 339, i32 0, metadata !50, null}
!444 = metadata !{i32 -1000000}
!445 = metadata !{i32 342, i32 0, metadata !50, null}
!446 = metadata !{i32 341, i32 0, metadata !50, null}
!447 = metadata !{i32 1}
!448 = metadata !{i32 343, i32 0, metadata !50, null}
!449 = metadata !{i32 344, i32 0, metadata !50, null}
!450 = metadata !{i32 349, i32 0, metadata !50, null}
!451 = metadata !{i32 352, i32 0, metadata !50, null}
!452 = metadata !{i32 354, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !50, i32 353, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!454 = metadata !{i32 356, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !453, i32 355, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!456 = metadata !{i32 357, i32 0, metadata !455, null}
!457 = metadata !{i32 359, i32 0, metadata !453, null}
!458 = metadata !{metadata !"long", metadata !284}
!459 = metadata !{i32 361, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !453, i32 360, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!461 = metadata !{i32 367, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !460, i32 366, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!463 = metadata !{i32 368, i32 0, metadata !462, null}
!464 = metadata !{i32 369, i32 0, metadata !462, null}
!465 = metadata !{i32 370, i32 0, metadata !462, null}
!466 = metadata !{i32 379, i32 0, metadata !460, null}
!467 = metadata !{i32 376, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !460, i32 375, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!469 = metadata !{i32 377, i32 0, metadata !468, null}
!470 = metadata !{i32 383, i32 0, metadata !50, null}
!471 = metadata !{i32 385, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !50, i32 384, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!473 = metadata !{i32 386, i32 0, metadata !472, null}
!474 = metadata !{i32 389, i32 0, metadata !50, null}
!475 = metadata !{i32 390, i32 0, metadata !50, null}
!476 = metadata !{i32 392, i32 0, metadata !50, null}
!477 = metadata !{i32 394, i32 0, metadata !50, null}
!478 = metadata !{i32 397, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !50, i32 395, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!480 = metadata !{i32 400, i32 0, metadata !479, null}
!481 = metadata !{i32 404, i32 0, metadata !479, null}
!482 = metadata !{i32 -1}
!483 = metadata !{i32 410, i32 0, metadata !479, null}
!484 = metadata !{i32 411, i32 0, metadata !479, null}
!485 = metadata !{i32 414, i32 0, metadata !50, null}
!486 = metadata !{i32 416, i32 0, metadata !50, null}
!487 = metadata !{i32 418, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !50, i32 416, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!489 = metadata !{i32 419, i32 0, metadata !488, null}
!490 = metadata !{i32 421, i32 0, metadata !50, null}
!491 = metadata !{i32 422, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !50, i32 421, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!493 = metadata !{i32 425, i32 0, metadata !50, null}
!494 = metadata !{i32 426, i32 0, metadata !50, null}
!495 = metadata !{i32 427, i32 0, metadata !50, null}
!496 = metadata !{i32 430, i32 0, metadata !50, null}
!497 = metadata !{i32 431, i32 0, metadata !50, null}
!498 = metadata !{i32 433, i32 0, metadata !50, null}
!499 = metadata !{i32 435, i32 0, metadata !50, null}
!500 = metadata !{i32 437, i32 0, metadata !50, null}
!501 = metadata !{i32 454, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !50, i32 440, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!503 = metadata !{i32 440, i32 0, metadata !50, null}
!504 = metadata !{i32 442, i32 0, metadata !502, null}
!505 = metadata !{i32 444, i32 0, metadata !502, null}
!506 = metadata !{i32 446, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !502, i32 445, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!508 = metadata !{i32 448, i32 0, metadata !507, null}
!509 = metadata !{i32 452, i32 0, metadata !502, null}
!510 = metadata !{i32 456, i32 0, metadata !502, null}
!511 = metadata !{i32 458, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !502, i32 457, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!513 = metadata !{i32 459, i32 0, metadata !512, null}
!514 = metadata !{i32 462, i32 0, metadata !502, null}
!515 = metadata !{i32 466, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !502, i32 465, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!517 = metadata !{i32 470, i32 0, metadata !502, null}
!518 = metadata !{i32 475, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !502, i32 471, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!520 = metadata !{i32 478, i32 0, metadata !519, null}
!521 = metadata !{i32 480, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !519, i32 479, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!523 = metadata !{i32 481, i32 0, metadata !522, null}
!524 = metadata !{i32 484, i32 0, metadata !519, null}
!525 = metadata !{i32 487, i32 0, metadata !519, null}
!526 = metadata !{i64 0, i64 4, metadata !300, i64 4, i64 4, metadata !300, i64 8, i64 4, metadata !300, i64 12, i64 4, metadata !300, i64 16, i64 4, metadata !300, i64 20, i64 4, metadata !300}
!527 = metadata !{i32 488, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !519, i32 488, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!529 = metadata !{i32 489, i32 0, metadata !528, null}
!530 = metadata !{i32 490, i32 0, metadata !519, null}
!531 = metadata !{i32 491, i32 0, metadata !519, null}
!532 = metadata !{i32 499, i32 0, metadata !50, null}
!533 = metadata !{i32 500, i32 0, metadata !50, null}
!534 = metadata !{i32 502, i32 0, metadata !50, null}
!535 = metadata !{i32 504, i32 0, metadata !77, null}
!536 = metadata !{i32 510, i32 0, metadata !77, null}
!537 = metadata !{i32 512, i32 0, metadata !77, null}
!538 = metadata !{i32 514, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !77, i32 514, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!540 = metadata !{i32 515, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !539, i32 514, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!542 = metadata !{i32 516, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !541, i32 515, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!544 = metadata !{i32 517, i32 0, metadata !543, null}
!545 = metadata !{i32 518, i32 0, metadata !543, null}
!546 = metadata !{i32 521, i32 0, metadata !77, null}
!547 = metadata !{i32 522, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !77, i32 521, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!549 = metadata !{i32 523, i32 0, metadata !548, null}
!550 = metadata !{i32 526, i32 0, metadata !77, null}
!551 = metadata !{i32 531, i32 0, metadata !86, null}
!552 = metadata !{i32 535, i32 0, metadata !86, null}
!553 = metadata !{i32 536, i32 0, metadata !86, null}
!554 = metadata !{i32 537, i32 0, metadata !86, null}
!555 = metadata !{i32 539, i32 0, metadata !86, null}
!556 = metadata !{i32 542, i32 0, metadata !86, null}
!557 = metadata !{i32 551, i32 0, metadata !86, null}
!558 = metadata !{i32 554, i32 0, metadata !86, null}
!559 = metadata !{i32 555, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !86, i32 554, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!561 = metadata !{i32 557, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !560, i32 556, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!563 = metadata !{i32 558, i32 0, metadata !562, null}
!564 = metadata !{i32 560, i32 0, metadata !560, null}
!565 = metadata !{i32 562, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !560, i32 561, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!567 = metadata !{i32 568, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !566, i32 567, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!569 = metadata !{i32 569, i32 0, metadata !568, null}
!570 = metadata !{i32 570, i32 0, metadata !568, null}
!571 = metadata !{i32 571, i32 0, metadata !568, null}
!572 = metadata !{i32 580, i32 0, metadata !566, null}
!573 = metadata !{i32 577, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !566, i32 576, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!575 = metadata !{i32 578, i32 0, metadata !574, null}
!576 = metadata !{i32 583, i32 0, metadata !86, null}
!577 = metadata !{i32 584, i32 0, metadata !86, null}
!578 = metadata !{i32 586, i32 0, metadata !86, null}
!579 = metadata !{i32 587, i32 0, metadata !86, null}
!580 = metadata !{i32 589, i32 0, metadata !86, null}
!581 = metadata !{i32 591, i32 0, metadata !86, null}
!582 = metadata !{i32 596, i32 0, metadata !86, null}
!583 = metadata !{i32 597, i32 0, metadata !86, null}
!584 = metadata !{i32 598, i32 0, metadata !86, null}
!585 = metadata !{i32 601, i32 0, metadata !86, null}
!586 = metadata !{i32 603, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !86, i32 602, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!588 = metadata !{i32 604, i32 0, metadata !587, null}
!589 = metadata !{i32 605, i32 0, metadata !587, null}
!590 = metadata !{i32 606, i32 0, metadata !587, null}
!591 = metadata !{i32 607, i32 0, metadata !86, null}
!592 = metadata !{i32 613, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !86, i32 612, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!594 = metadata !{i32 614, i32 0, metadata !593, null}
!595 = metadata !{i32 615, i32 0, metadata !593, null}
!596 = metadata !{i32 616, i32 0, metadata !593, null}
!597 = metadata !{i32 617, i32 0, metadata !593, null}
!598 = metadata !{i32 620, i32 0, metadata !86, null}
!599 = metadata !{i32 622, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !86, i32 621, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!601 = metadata !{i32 624, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !600, i32 623, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!603 = metadata !{i32 625, i32 0, metadata !602, null}
!604 = metadata !{i32 626, i32 0, metadata !602, null}
!605 = metadata !{i32 627, i32 0, metadata !602, null}
!606 = metadata !{i32 631, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !600, i32 630, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!608 = metadata !{i32 633, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !607, i32 632, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!610 = metadata !{i32 638, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !607, i32 637, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!612 = metadata !{i32 640, i32 0, metadata !611, null}
!613 = metadata !{i32 642, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !611, i32 641, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!615 = metadata !{i32 652, i32 0, metadata !86, null}
!616 = metadata !{i32 653, i32 0, metadata !86, null}
!617 = metadata !{i32 655, i32 0, metadata !86, null}
!618 = metadata !{i32 658, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !86, i32 656, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!620 = metadata !{i32 661, i32 0, metadata !619, null}
!621 = metadata !{i32 665, i32 0, metadata !619, null}
!622 = metadata !{i32 671, i32 0, metadata !619, null}
!623 = metadata !{i32 672, i32 0, metadata !619, null}
!624 = metadata !{i32 676, i32 0, metadata !86, null}
!625 = metadata !{i32 678, i32 0, metadata !86, null}
!626 = metadata !{i32 679, i32 0, metadata !86, null}
!627 = metadata !{i32 681, i32 0, metadata !86, null}
!628 = metadata !{i32 683, i32 0, metadata !86, null}
!629 = metadata !{i32 685, i32 0, metadata !86, null}
!630 = metadata !{i32 687, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !86, i32 686, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!632 = metadata !{i32 689, i32 0, metadata !631, null}
!633 = metadata !{i32 691, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !631, i32 690, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!635 = metadata !{i32 694, i32 0, metadata !631, null}
!636 = metadata !{i32 695, i32 0, metadata !631, null}
!637 = metadata !{i32 696, i32 0, metadata !631, null}
!638 = metadata !{i32 697, i32 0, metadata !631, null}
!639 = metadata !{i32 699, i32 0, metadata !631, null}
!640 = metadata !{i32 701, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !642, i32 701, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!642 = metadata !{i32 786443, metadata !1, metadata !631, i32 700, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!643 = metadata !{i32 703, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !641, i32 702, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!645 = metadata !{i32 704, i32 0, metadata !644, null}
!646 = metadata !{i32 708, i32 0, metadata !644, null}
!647 = metadata !{i32 711, i32 0, metadata !631, null}
!648 = metadata !{i32 713, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !631, i32 712, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!650 = metadata !{i32 714, i32 0, metadata !649, null}
!651 = metadata !{i32 715, i32 0, metadata !649, null}
!652 = metadata !{i32 716, i32 0, metadata !649, null}
!653 = metadata !{i32 721, i32 0, metadata !86, null}
!654 = metadata !{i32 729, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !86, i32 727, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!656 = metadata !{i32 730, i32 0, metadata !655, null}
!657 = metadata !{i32 731, i32 0, metadata !655, null}
!658 = metadata !{i32 732, i32 0, metadata !655, null}
!659 = metadata !{i32 733, i32 0, metadata !655, null}
!660 = metadata !{i32 737, i32 0, metadata !655, null}
!661 = metadata !{i32 736, i32 0, metadata !655, null}
!662 = metadata !{i32 739, i32 0, metadata !655, null}
!663 = metadata !{i32 741, i32 0, metadata !655, null}
!664 = metadata !{i32 742, i32 0, metadata !655, null}
!665 = metadata !{i32 743, i32 0, metadata !655, null}
!666 = metadata !{i32 744, i32 0, metadata !655, null}
!667 = metadata !{i32 745, i32 0, metadata !655, null}
!668 = metadata !{i32 747, i32 0, metadata !655, null}
!669 = metadata !{i32 749, i32 0, metadata !655, null}
!670 = metadata !{i32 751, i32 0, metadata !655, null}
!671 = metadata !{i32 754, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !655, i32 752, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!673 = metadata !{i32 756, i32 0, metadata !672, null}
!674 = metadata !{i32 758, i32 0, metadata !672, null}
!675 = metadata !{i32 760, i32 0, metadata !655, null}
!676 = metadata !{i32 762, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !655, i32 761, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!678 = metadata !{i32 763, i32 0, metadata !677, null}
!679 = metadata !{i32 764, i32 0, metadata !677, null}
!680 = metadata !{i32 765, i32 0, metadata !677, null}
!681 = metadata !{i32 766, i32 0, metadata !677, null}
!682 = metadata !{i32 767, i32 0, metadata !677, null}
!683 = metadata !{i32 769, i32 0, metadata !86, null}
!684 = metadata !{i32 771, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !86, i32 770, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!686 = metadata !{i32 772, i32 0, metadata !685, null}
!687 = metadata !{i32 773, i32 0, metadata !685, null}
!688 = metadata !{i32 774, i32 0, metadata !685, null}
!689 = metadata !{i32 775, i32 0, metadata !685, null}
!690 = metadata !{i32 777, i32 0, metadata !86, null}
!691 = metadata !{i32 779, i32 0, metadata !86, null}
!692 = metadata !{i32 782, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !86, i32 780, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!694 = metadata !{i32 783, i32 0, metadata !693, null}
!695 = metadata !{i32 784, i32 0, metadata !693, null}
!696 = metadata !{i32 787, i32 0, metadata !86, null}
!697 = metadata !{i32 789, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !86, i32 788, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!699 = metadata !{i32 791, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !701, i32 791, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!701 = metadata !{i32 786443, metadata !1, metadata !698, i32 790, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!702 = metadata !{i32 793, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !700, i32 792, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!704 = metadata !{i32 794, i32 0, metadata !703, null}
!705 = metadata !{i32 798, i32 0, metadata !703, null}
!706 = metadata !{i32 803, i32 0, metadata !86, null}
!707 = metadata !{i32 805, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !86, i32 804, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!709 = metadata !{i32 806, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !708, i32 805, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!711 = metadata !{i32 807, i32 0, metadata !710, null}
!712 = metadata !{i32 808, i32 0, metadata !710, null}
!713 = metadata !{i32 809, i32 0, metadata !710, null}
!714 = metadata !{i32 810, i32 0, metadata !708, null}
!715 = metadata !{i32 811, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !708, i32 810, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!717 = metadata !{i32 812, i32 0, metadata !716, null}
!718 = metadata !{i32 813, i32 0, metadata !716, null}
!719 = metadata !{i32 814, i32 0, metadata !716, null}
!720 = metadata !{i32 817, i32 0, metadata !86, null}
!721 = metadata !{i32 818, i32 0, metadata !86, null}
!722 = metadata !{i32 820, i32 0, metadata !86, null}
!723 = metadata !{i32 823, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !86, i32 821, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!725 = metadata !{i32 825, i32 0, metadata !724, null}
!726 = metadata !{i32 2}
!727 = metadata !{i32 826, i32 0, metadata !724, null}
!728 = metadata !{i32 828, i32 0, metadata !724, null}
!729 = metadata !{i32 830, i32 0, metadata !724, null}
!730 = metadata !{i32 832, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !724, i32 831, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!732 = metadata !{i32 833, i32 0, metadata !731, null}
!733 = metadata !{i32 836, i32 0, metadata !724, null}
!734 = metadata !{i32 838, i32 0, metadata !724, null}
!735 = metadata !{i32 840, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !724, i32 839, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!737 = metadata !{i32 841, i32 0, metadata !736, null}
!738 = metadata !{i32 845, i32 0, metadata !86, null}
!739 = metadata !{i32 847, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !86, i32 846, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!741 = metadata !{i32 850, i32 0, metadata !740, null}
!742 = metadata !{i32 880, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 863, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!744 = metadata !{i32 786443, metadata !1, metadata !740, i32 850, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!745 = metadata !{i32 908, i32 0, metadata !743, null}
!746 = metadata !{i32 916, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !748, i32 915, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!748 = metadata !{i32 786443, metadata !1, metadata !743, i32 913, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!749 = metadata !{i32 890, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !743, i32 889, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!751 = metadata !{i32 868, i32 0, metadata !743, null}
!752 = metadata !{i32 852, i32 0, metadata !744, null}
!753 = metadata !{i32 854, i32 0, metadata !744, null}
!754 = metadata !{i32 856, i32 0, metadata !744, null}
!755 = metadata !{i32 857, i32 0, metadata !744, null}
!756 = metadata !{i32 859, i32 0, metadata !744, null}
!757 = metadata !{i32 863, i32 0, metadata !744, null}
!758 = metadata !{i32 865, i32 0, metadata !743, null}
!759 = metadata !{i32 866, i32 0, metadata !743, null}
!760 = metadata !{i32 874, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !743, i32 873, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!762 = metadata !{i32 875, i32 0, metadata !761, null}
!763 = metadata !{i32 877, i32 0, metadata !743, null}
!764 = metadata !{i32 887, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !743, i32 887, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!766 = metadata !{i32 892, i32 0, metadata !767, null}
!767 = metadata !{i32 786443, metadata !1, metadata !750, i32 891, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!768 = metadata !{i32 894, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !767, i32 893, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!770 = metadata !{i32 895, i32 0, metadata !769, null}
!771 = metadata !{i32 896, i32 0, metadata !769, null}
!772 = metadata !{i32 900, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !767, i32 899, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!774 = metadata !{i32 901, i32 0, metadata !773, null}
!775 = metadata !{i32 902, i32 0, metadata !773, null}
!776 = metadata !{i32 909, i32 0, metadata !743, null}
!777 = metadata !{i32 914, i32 0, metadata !748, null}
!778 = metadata !{i32 917, i32 0, metadata !747, null}
!779 = metadata !{i32 918, i32 0, metadata !747, null}
!780 = metadata !{i32 921, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !748, i32 920, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!782 = metadata !{i32 922, i32 0, metadata !781, null}
!783 = metadata !{i32 924, i32 0, metadata !781, null}
!784 = metadata !{i32 926, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !781, i32 925, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!786 = metadata !{i32 928, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !785, i32 927, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!788 = metadata !{i32 929, i32 0, metadata !787, null}
!789 = metadata !{i32 931, i32 0, metadata !787, null}
!790 = metadata !{i32 942, i32 0, metadata !743, null}
!791 = metadata !{i32 949, i32 0, metadata !744, null}
!792 = metadata !{i32 951, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !744, i32 950, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!794 = metadata !{i32 954, i32 0, metadata !744, null}
!795 = metadata !{i32 957, i32 0, metadata !744, null}
!796 = metadata !{i32 960, i32 0, metadata !744, null}
!797 = metadata !{i32 963, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !744, i32 960, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!799 = metadata !{i32 1028, i32 0, metadata !798, null}
!800 = metadata !{i32 966, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !798, i32 963, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!802 = metadata !{i32 968, i32 0, metadata !801, null}
!803 = metadata !{i32 972, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !801, i32 969, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!805 = metadata !{i32 975, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !804, i32 974, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!807 = metadata !{i32 976, i32 0, metadata !806, null}
!808 = metadata !{i32 977, i32 0, metadata !804, null}
!809 = metadata !{i32 980, i32 0, metadata !810, null}
!810 = metadata !{i32 786443, metadata !1, metadata !804, i32 979, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!811 = metadata !{i32 982, i32 0, metadata !810, null}
!812 = metadata !{i32 984, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !810, i32 983, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!814 = metadata !{i32 985, i32 0, metadata !813, null}
!815 = metadata !{i32 986, i32 0, metadata !813, null}
!816 = metadata !{i32 987, i32 0, metadata !813, null}
!817 = metadata !{i32 988, i32 0, metadata !813, null}
!818 = metadata !{i32 989, i32 0, metadata !813, null}
!819 = metadata !{i32 990, i32 0, metadata !813, null}
!820 = metadata !{i32 993, i32 0, metadata !804, null}
!821 = metadata !{i32 997, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !804, i32 995, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!823 = metadata !{i32 999, i32 0, metadata !822, null}
!824 = metadata !{i32 1001, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !822, i32 1000, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!826 = metadata !{i32 1002, i32 0, metadata !825, null}
!827 = metadata !{i32 1003, i32 0, metadata !825, null}
!828 = metadata !{i32 1004, i32 0, metadata !825, null}
!829 = metadata !{i32 1005, i32 0, metadata !825, null}
!830 = metadata !{i32 1006, i32 0, metadata !825, null}
!831 = metadata !{i32 1007, i32 0, metadata !825, null}
!832 = metadata !{i32 1012, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !804, i32 1011, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!834 = metadata !{i32 1013, i32 0, metadata !833, null}
!835 = metadata !{i32 1017, i32 0, metadata !801, null}
!836 = metadata !{i32 1019, i32 0, metadata !801, null}
!837 = metadata !{i32 1021, i32 0, metadata !801, null}
!838 = metadata !{i32 1023, i32 0, metadata !801, null}
!839 = metadata !{i32 1026, i32 0, metadata !798, null}
!840 = metadata !{i32 1031, i32 0, metadata !798, null}
!841 = metadata !{i32 1032, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !798, i32 1032, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!843 = metadata !{i32 1033, i32 0, metadata !842, null}
!844 = metadata !{i32 1034, i32 0, metadata !798, null}
!845 = metadata !{i32 1035, i32 0, metadata !798, null}
!846 = metadata !{i32 1038, i32 0, metadata !744, null}
!847 = metadata !{i32 1037, i32 0, metadata !744, null}
!848 = metadata !{i32 1045, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !86, i32 1043, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!850 = metadata !{i32 1046, i32 0, metadata !849, null}
!851 = metadata !{i32 1050, i32 0, metadata !86, null}
!852 = metadata !{i32 1052, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !86, i32 1051, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!854 = metadata !{i32 1054, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !853, i32 1053, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!856 = metadata !{i32 1056, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !855, i32 1055, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!858 = metadata !{i32 1057, i32 0, metadata !857, null}
!859 = metadata !{i32 1061, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !855, i32 1060, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!861 = metadata !{i32 1062, i32 0, metadata !860, null}
!862 = metadata !{i32 1067, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !853, i32 1066, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!864 = metadata !{i32 1068, i32 0, metadata !863, null}
!865 = metadata !{i32 1073, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !86, i32 1072, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!867 = metadata !{i32 1079, i32 0, metadata !86, null}
!868 = metadata !{i32 500}
!869 = metadata !{i32 1081, i32 0, metadata !86, null}
!870 = metadata !{i32 1083, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !86, i32 1082, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!872 = metadata !{i32 1084, i32 0, metadata !871, null}
!873 = metadata !{i32 1091, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !86, i32 1087, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!875 = metadata !{i32 1088, i32 0, metadata !874, null}
!876 = metadata !{i32 1089, i32 0, metadata !874, null}
!877 = metadata !{i32 1096, i32 0, metadata !86, null}
!878 = metadata !{i32 1099, i32 0, metadata !123, null}
!879 = metadata !{i32 1103, i32 0, metadata !123, null}
!880 = metadata !{i32 1104, i32 0, metadata !123, null}
!881 = metadata !{i32 1105, i32 0, metadata !123, null}
!882 = metadata !{i32 1108, i32 0, metadata !123, null}
!883 = metadata !{i32 1111, i32 0, metadata !123, null}
!884 = metadata !{i32 1114, i32 0, metadata !123, null}
!885 = metadata !{i32 1115, i32 0, metadata !123, null}
!886 = metadata !{i32 1117, i32 0, metadata !123, null}
!887 = metadata !{i32 1118, i32 0, metadata !123, null}
!888 = metadata !{i32 1119, i32 0, metadata !123, null}
!889 = metadata !{i32 1120, i32 0, metadata !123, null}
!890 = metadata !{i32 1121, i32 0, metadata !123, null}
!891 = metadata !{i32 1122, i32 0, metadata !123, null}
!892 = metadata !{i32 1123, i32 0, metadata !123, null}
!893 = metadata !{i32 1124, i32 0, metadata !123, null}
!894 = metadata !{i32 1125, i32 0, metadata !123, null}
!895 = metadata !{i32 1128, i32 0, metadata !123, null}
!896 = metadata !{i32 1130, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !123, i32 1129, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!898 = metadata !{i32 1131, i32 0, metadata !897, null}
!899 = metadata !{i32 1132, i32 0, metadata !897, null}
!900 = metadata !{i32 1133, i32 0, metadata !897, null}
!901 = metadata !{i32 1136, i32 0, metadata !123, null}
!902 = metadata !{i32 1137, i32 0, metadata !123, null}
!903 = metadata !{i32 1141, i32 0, metadata !123, null}
!904 = metadata !{i32 1143, i32 0, metadata !123, null}
!905 = metadata !{i32 1145, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !123, i32 1144, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!907 = metadata !{i32 1146, i32 0, metadata !906, null}
!908 = metadata !{i32 1147, i32 0, metadata !906, null}
!909 = metadata !{i32 1149, i32 0, metadata !123, null}
!910 = metadata !{i32 1150, i32 0, metadata !123, null}
!911 = metadata !{i32 1151, i32 0, metadata !123, null}
!912 = metadata !{i32 1153, i32 0, metadata !123, null}
!913 = metadata !{i32 1155, i32 0, metadata !914, null}
!914 = metadata !{i32 786443, metadata !1, metadata !123, i32 1154, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!915 = metadata !{i32 1156, i32 0, metadata !914, null}
!916 = metadata !{i32 1157, i32 0, metadata !914, null}
!917 = metadata !{i32 1158, i32 0, metadata !914, null}
!918 = metadata !{i32 1159, i32 0, metadata !914, null}
!919 = metadata !{i32 1161, i32 0, metadata !914, null}
!920 = metadata !{i32 1163, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !922, i32 1163, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!922 = metadata !{i32 786443, metadata !1, metadata !914, i32 1162, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!923 = metadata !{i32 1165, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !921, i32 1164, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!925 = metadata !{i32 1166, i32 0, metadata !924, null}
!926 = metadata !{i32 1168, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !924, i32 1167, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!928 = metadata !{i32 1169, i32 0, metadata !927, null}
!929 = metadata !{i32 1170, i32 0, metadata !924, null}
!930 = metadata !{i32 1174, i32 0, metadata !914, null}
!931 = metadata !{i32 1176, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !914, i32 1175, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!933 = metadata !{i32 1177, i32 0, metadata !932, null}
!934 = metadata !{i32 1178, i32 0, metadata !932, null}
!935 = metadata !{i32 1180, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !932, i32 1180, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!937 = metadata !{i32 1182, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !936, i32 1181, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!939 = metadata !{i32 1183, i32 0, metadata !938, null}
!940 = metadata !{i32 1185, i32 0, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !938, i32 1184, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!942 = metadata !{i32 1186, i32 0, metadata !941, null}
!943 = metadata !{i32 1187, i32 0, metadata !938, null}
!944 = metadata !{i32 1195, i32 0, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !123, i32 1192, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!946 = metadata !{i32 1196, i32 0, metadata !945, null}
!947 = metadata !{i32 1199, i32 0, metadata !123, null}
!948 = metadata !{i32 1201, i32 0, metadata !123, null}
!949 = metadata !{i32 1343, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !951, i32 1342, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!951 = metadata !{i32 786443, metadata !1, metadata !952, i32 1338, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!952 = metadata !{i32 786443, metadata !1, metadata !953, i32 1327, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!953 = metadata !{i32 786443, metadata !1, metadata !123, i32 1204, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!954 = metadata !{i32 1231, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !1, metadata !956, i32 1230, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!956 = metadata !{i32 786443, metadata !1, metadata !953, i32 1217, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!957 = metadata !{i32 1204, i32 0, metadata !123, null}
!958 = metadata !{i32 1206, i32 0, metadata !953, null}
!959 = metadata !{i32 1208, i32 0, metadata !953, null}
!960 = metadata !{i32 1209, i32 0, metadata !953, null}
!961 = metadata !{i32 1211, i32 0, metadata !953, null}
!962 = metadata !{i32 1212, i32 0, metadata !953, null}
!963 = metadata !{i32 1214, i32 0, metadata !953, null}
!964 = metadata !{i32 1217, i32 0, metadata !953, null}
!965 = metadata !{i32 1219, i32 0, metadata !956, null}
!966 = metadata !{i32 1220, i32 0, metadata !956, null}
!967 = metadata !{i32 1221, i32 0, metadata !956, null}
!968 = metadata !{i32 1222, i32 0, metadata !956, null}
!969 = metadata !{i32 1223, i32 0, metadata !956, null}
!970 = metadata !{i32 1225, i32 0, metadata !956, null}
!971 = metadata !{i32 1226, i32 0, metadata !956, null}
!972 = metadata !{i32 1227, i32 0, metadata !956, null}
!973 = metadata !{i32 1229, i32 0, metadata !956, null}
!974 = metadata !{i32 1233, i32 0, metadata !955, null}
!975 = metadata !{i32 1298, i32 0, metadata !956, null}
!976 = metadata !{i32 1235, i32 0, metadata !977, null}
!977 = metadata !{i32 786443, metadata !1, metadata !955, i32 1234, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!978 = metadata !{i32 1237, i32 0, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !977, i32 1236, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!980 = metadata !{i32 1238, i32 0, metadata !979, null}
!981 = metadata !{i32 1239, i32 0, metadata !977, null}
!982 = metadata !{i32 1241, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !977, i32 1240, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!984 = metadata !{i32 1243, i32 0, metadata !983, null}
!985 = metadata !{i32 1244, i32 0, metadata !983, null}
!986 = metadata !{i32 1248, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !977, i32 1246, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!988 = metadata !{i32 1249, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !987, i32 1249, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!990 = metadata !{i32 1250, i32 0, metadata !989, null}
!991 = metadata !{i32 1251, i32 0, metadata !987, null}
!992 = metadata !{i32 1253, i32 0, metadata !987, null}
!993 = metadata !{i32 1256, i32 0, metadata !977, null}
!994 = metadata !{i32 1258, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !977, i32 1257, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!996 = metadata !{i32 1259, i32 0, metadata !995, null}
!997 = metadata !{i32 1260, i32 0, metadata !995, null}
!998 = metadata !{i32 1261, i32 0, metadata !995, null}
!999 = metadata !{i32 1267, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !956, i32 1266, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1001 = metadata !{i32 1269, i32 0, metadata !1000, null}
!1002 = metadata !{i32 1294, i32 0, metadata !1000, null}
!1003 = metadata !{i32 1271, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !1000, i32 1270, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1005 = metadata !{i32 1273, i32 0, metadata !1004, null}
!1006 = metadata !{i32 1275, i32 0, metadata !1004, null}
!1007 = metadata !{i32 1277, i32 0, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !1, metadata !1004, i32 1276, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1009 = metadata !{i32 1279, i32 0, metadata !1008, null}
!1010 = metadata !{i32 1280, i32 0, metadata !1008, null}
!1011 = metadata !{i32 1281, i32 0, metadata !1008, null}
!1012 = metadata !{i32 1283, i32 0, metadata !1008, null}
!1013 = metadata !{i32 1286, i32 0, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !1, metadata !1008, i32 1284, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1015 = metadata !{i32 1287, i32 0, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !1, metadata !1014, i32 1287, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1017 = metadata !{i32 1288, i32 0, metadata !1016, null}
!1018 = metadata !{i32 1289, i32 0, metadata !1014, null}
!1019 = metadata !{i32 1290, i32 0, metadata !1014, null}
!1020 = metadata !{i32 1295, i32 0, metadata !1000, null}
!1021 = metadata !{i32 1300, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1, metadata !956, i32 1299, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1023 = metadata !{i32 1301, i32 0, metadata !1022, null}
!1024 = metadata !{i32 1302, i32 0, metadata !1022, null}
!1025 = metadata !{i32 1303, i32 0, metadata !1022, null}
!1026 = metadata !{i32 1309, i32 0, metadata !956, null}
!1027 = metadata !{i32 1311, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !956, i32 1310, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1029 = metadata !{i32 1312, i32 0, metadata !1028, null}
!1030 = metadata !{i32 1320, i32 0, metadata !953, null}
!1031 = metadata !{i32 1323, i32 0, metadata !953, null}
!1032 = metadata !{i32 1324, i32 0, metadata !953, null}
!1033 = metadata !{i32 1327, i32 0, metadata !953, null}
!1034 = metadata !{i32 1331, i32 0, metadata !952, null}
!1035 = metadata !{i32 1334, i32 0, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !1, metadata !952, i32 1333, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1037 = metadata !{i32 1335, i32 0, metadata !1036, null}
!1038 = metadata !{i32 1336, i32 0, metadata !952, null}
!1039 = metadata !{i32 1339, i32 0, metadata !951, null}
!1040 = metadata !{i32 1341, i32 0, metadata !951, null}
!1041 = metadata !{i32 1344, i32 0, metadata !950, null}
!1042 = metadata !{i32 1345, i32 0, metadata !950, null}
!1043 = metadata !{i32 1346, i32 0, metadata !950, null}
!1044 = metadata !{i32 1347, i32 0, metadata !950, null}
!1045 = metadata !{i32 1348, i32 0, metadata !950, null}
!1046 = metadata !{i32 1349, i32 0, metadata !950, null}
!1047 = metadata !{i32 1351, i32 0, metadata !952, null}
!1048 = metadata !{i32 1354, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !952, i32 1353, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1050 = metadata !{i32 1356, i32 0, metadata !1049, null}
!1051 = metadata !{i32 1358, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1357, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1053 = metadata !{i32 1359, i32 0, metadata !1052, null}
!1054 = metadata !{i32 1360, i32 0, metadata !1052, null}
!1055 = metadata !{i32 1361, i32 0, metadata !1052, null}
!1056 = metadata !{i32 1362, i32 0, metadata !1052, null}
!1057 = metadata !{i32 1363, i32 0, metadata !1052, null}
!1058 = metadata !{i32 1364, i32 0, metadata !1052, null}
!1059 = metadata !{i32 1369, i32 0, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1, metadata !952, i32 1368, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1061 = metadata !{i32 1370, i32 0, metadata !1060, null}
!1062 = metadata !{i32 1374, i32 0, metadata !952, null}
!1063 = metadata !{i32 1376, i32 0, metadata !952, null}
!1064 = metadata !{i32 1377, i32 0, metadata !952, null}
!1065 = metadata !{i32 1378, i32 0, metadata !952, null}
!1066 = metadata !{i32 1379, i32 0, metadata !952, null}
!1067 = metadata !{i32 1382, i32 0, metadata !952, null}
!1068 = metadata !{i32 1383, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !952, i32 1383, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1070 = metadata !{i32 1384, i32 0, metadata !1069, null}
!1071 = metadata !{i32 1385, i32 0, metadata !952, null}
!1072 = metadata !{i32 1387, i32 0, metadata !952, null}
!1073 = metadata !{i32 1390, i32 0, metadata !952, null}
!1074 = metadata !{i32 1391, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !952, i32 1390, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1076 = metadata !{i32 1392, i32 0, metadata !1075, null}
!1077 = metadata !{i32 1395, i32 0, metadata !953, null}
!1078 = metadata !{i32 1394, i32 0, metadata !953, null}
!1079 = metadata !{i32 1397, i32 0, metadata !953, null}
!1080 = metadata !{i32 1398, i32 0, metadata !953, null}
!1081 = metadata !{i32 1401, i32 0, metadata !123, null}
!1082 = metadata !{i32 1403, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !123, i32 1402, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1084 = metadata !{i32 1405, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !1083, i32 1404, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1086 = metadata !{i32 1406, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1085, i32 1405, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1088 = metadata !{i32 1407, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1087, i32 1406, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1090 = metadata !{i32 1408, i32 0, metadata !1089, null}
!1091 = metadata !{i32 1410, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !1087, i32 1409, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1093 = metadata !{i32 1414, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !1085, i32 1413, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1095 = metadata !{i32 1419, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1083, i32 1418, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1097 = metadata !{i32 1420, i32 0, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !1096, i32 1419, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1099 = metadata !{i32 1421, i32 0, metadata !1098, null}
!1100 = metadata !{i32 1423, i32 0, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !1, metadata !1096, i32 1422, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1102 = metadata !{i32 1427, i32 0, metadata !123, null}
!1103 = metadata !{i32 1430, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !123, i32 1428, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1105 = metadata !{i32 1432, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1, metadata !1104, i32 1431, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1107 = metadata !{i32 1433, i32 0, metadata !1106, null}
!1108 = metadata !{i32 1434, i32 0, metadata !1106, null}
!1109 = metadata !{i32 1435, i32 0, metadata !1106, null}
!1110 = metadata !{i32 1439, i32 0, metadata !123, null}
!1111 = metadata !{i32 1441, i32 0, metadata !123, null}
!1112 = metadata !{i32 1448, i32 0, metadata !148, null}
!1113 = metadata !{%struct.move_s* undef}
!1114 = metadata !{i32 1449, i32 0, metadata !148, null}
!1115 = metadata !{i32 1450, i32 0, metadata !148, null}
!1116 = metadata !{i32 1454, i32 0, metadata !148, null}
!1117 = metadata !{i32 1455, i32 0, metadata !148, null}
!1118 = metadata !{i32 1458, i32 0, metadata !148, null}
!1119 = metadata !{i32 1460, i32 0, metadata !148, null}
!1120 = metadata !{i32 1461, i32 0, metadata !148, null}
!1121 = metadata !{i32 1506, i32 0, metadata !148, null}
!1122 = metadata !{i32 1751, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !1, metadata !148, i32 1749, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1124 = metadata !{i32 1757, i32 0, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !1123, i32 1754, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1126 = metadata !{i32 1790, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !148, i32 1789, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1128 = metadata !{i32 1669, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !1, metadata !1130, i32 1656, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1130 = metadata !{i32 786443, metadata !1, metadata !1131, i32 1656, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1131 = metadata !{i32 786443, metadata !1, metadata !148, i32 1631, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1132 = metadata !{i32 1600, i32 0, metadata !148, null}
!1133 = metadata !{i32 1759, i32 0, metadata !1125, null}
!1134 = metadata !{i32 1463, i32 0, metadata !148, null}
!1135 = metadata !{i32 1464, i32 0, metadata !148, null}
!1136 = metadata !{i32 1465, i32 0, metadata !148, null}
!1137 = metadata !{i32 1467, i32 0, metadata !148, null}
!1138 = metadata !{i32 1468, i32 0, metadata !148, null}
!1139 = metadata !{i32 1469, i32 0, metadata !148, null}
!1140 = metadata !{i32 1470, i32 0, metadata !148, null}
!1141 = metadata !{i32 1471, i32 0, metadata !148, null}
!1142 = metadata !{i32 1472, i32 0, metadata !148, null}
!1143 = metadata !{i32 1473, i32 0, metadata !148, null}
!1144 = metadata !{i32 1474, i32 0, metadata !148, null}
!1145 = metadata !{i32 1475, i32 0, metadata !148, null}
!1146 = metadata !{i32 1476, i32 0, metadata !148, null}
!1147 = metadata !{i32 1477, i32 0, metadata !148, null}
!1148 = metadata !{i32 1478, i32 0, metadata !148, null}
!1149 = metadata !{i32 1479, i32 0, metadata !148, null}
!1150 = metadata !{i32 1480, i32 0, metadata !148, null}
!1151 = metadata !{i32 1481, i32 0, metadata !148, null}
!1152 = metadata !{i32 1482, i32 0, metadata !148, null}
!1153 = metadata !{i32 1483, i32 0, metadata !148, null}
!1154 = metadata !{i32 1484, i32 0, metadata !148, null}
!1155 = metadata !{i32 1485, i32 0, metadata !148, null}
!1156 = metadata !{i32 1486, i32 0, metadata !148, null}
!1157 = metadata !{i32 1487, i32 0, metadata !148, null}
!1158 = metadata !{i32 1488, i32 0, metadata !148, null}
!1159 = metadata !{i32 1489, i32 0, metadata !148, null}
!1160 = metadata !{i32 1491, i32 0, metadata !148, null}
!1161 = metadata !{i32 1492, i32 0, metadata !148, null}
!1162 = metadata !{i32 1496, i32 0, metadata !148, null}
!1163 = metadata !{i32 1499, i32 0, metadata !148, null}
!1164 = metadata !{i32 1502, i32 0, metadata !148, null}
!1165 = metadata !{i32 1504, i32 0, metadata !148, null}
!1166 = metadata !{i32 1507, i32 0, metadata !148, null}
!1167 = metadata !{i32 1509, i32 0, metadata !148, null}
!1168 = metadata !{i32 1511, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !148, i32 1511, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1170 = metadata !{i32 1513, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !1169, i32 1512, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1172 = metadata !{i32 1514, i32 0, metadata !1171, null}
!1173 = metadata !{i32 1516, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !1171, i32 1515, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1175 = metadata !{i32 1517, i32 0, metadata !1174, null}
!1176 = metadata !{i32 1518, i32 0, metadata !1174, null}
!1177 = metadata !{i32 1519, i32 0, metadata !1171, null}
!1178 = metadata !{i32 1522, i32 0, metadata !148, null}
!1179 = metadata !{i32 1524, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1, metadata !148, i32 1523, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1181 = metadata !{i32 1525, i32 0, metadata !1180, null}
!1182 = metadata !{i32 1526, i32 0, metadata !1180, null}
!1183 = metadata !{i32 1527, i32 0, metadata !1180, null}
!1184 = metadata !{i32 1529, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1180, i32 1529, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1186 = metadata !{i32 1531, i32 0, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !1, metadata !1185, i32 1530, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1188 = metadata !{i32 1532, i32 0, metadata !1187, null}
!1189 = metadata !{i32 1534, i32 0, metadata !1190, null}
!1190 = metadata !{i32 786443, metadata !1, metadata !1187, i32 1533, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1191 = metadata !{i32 1535, i32 0, metadata !1190, null}
!1192 = metadata !{i32 1536, i32 0, metadata !1190, null}
!1193 = metadata !{i32 1537, i32 0, metadata !1187, null}
!1194 = metadata !{i32 1541, i32 0, metadata !148, null}
!1195 = metadata !{i32 1543, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !148, i32 1542, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1197 = metadata !{i32 1545, i32 0, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !1, metadata !1196, i32 1544, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1199 = metadata !{i32 1546, i32 0, metadata !1198, null}
!1200 = metadata !{i32 1551, i32 0, metadata !148, null}
!1201 = metadata !{i32 1553, i32 0, metadata !148, null}
!1202 = metadata !{i32 1556, i32 0, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !1, metadata !148, i32 1554, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1204 = metadata !{i32 1557, i32 0, metadata !1203, null}
!1205 = metadata !{i32 1559, i32 0, metadata !1203, null}
!1206 = metadata !{i32 1560, i32 0, metadata !1203, null}
!1207 = metadata !{i32 1562, i32 0, metadata !1203, null}
!1208 = metadata !{i32 1563, i32 0, metadata !1203, null}
!1209 = metadata !{i32 1568, i32 0, metadata !148, null}
!1210 = metadata !{i32 1570, i32 0, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !1, metadata !148, i32 1569, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1212 = metadata !{i32 1572, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !1211, i32 1571, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1214 = metadata !{i32 1574, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1, metadata !1213, i32 1573, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1216 = metadata !{i32 1576, i32 0, metadata !1215, null}
!1217 = metadata !{i32 1578, i32 0, metadata !1218, null}
!1218 = metadata !{i32 786443, metadata !1, metadata !1215, i32 1577, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1219 = metadata !{i32 1579, i32 0, metadata !1218, null}
!1220 = metadata !{i32 1582, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !1215, i32 1581, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1222 = metadata !{i32 1587, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !1213, i32 1586, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1224 = metadata !{i32 1592, i32 0, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1, metadata !1211, i32 1591, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1226 = metadata !{i32 1597, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !1, metadata !148, i32 1596, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1228 = metadata !{i32 1603, i32 0, metadata !148, null}
!1229 = metadata !{i32 1605, i32 0, metadata !148, null}
!1230 = metadata !{i32 1608, i32 0, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !1, metadata !148, i32 1606, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1232 = metadata !{i32 1609, i32 0, metadata !1231, null}
!1233 = metadata !{i32 1610, i32 0, metadata !1231, null}
!1234 = metadata !{i32 1611, i32 0, metadata !1231, null}
!1235 = metadata !{i32 1613, i32 0, metadata !148, null}
!1236 = metadata !{i32 1616, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !148, i32 1615, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1238 = metadata !{i32 1617, i32 0, metadata !1237, null}
!1239 = metadata !{i32 1618, i32 0, metadata !1237, null}
!1240 = metadata !{i32 1619, i32 0, metadata !148, null}
!1241 = metadata !{i32 1620, i32 0, metadata !148, null}
!1242 = metadata !{i32 1622, i32 0, metadata !148, null}
!1243 = metadata !{i32 1623, i32 0, metadata !148, null}
!1244 = metadata !{i32 1625, i32 0, metadata !148, null}
!1245 = metadata !{i32 1628, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !148, i32 1627, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1247 = metadata !{i32 1629, i32 0, metadata !1246, null}
!1248 = metadata !{i32 1634, i32 0, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1, metadata !1250, i32 1634, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1250 = metadata !{i32 786443, metadata !1, metadata !1131, i32 1633, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1251 = metadata !{i32 1635, i32 0, metadata !1249, null}
!1252 = metadata !{i32 1633, i32 0, metadata !1250, null}
!1253 = metadata !{i32 1638, i32 0, metadata !1131, null}
!1254 = metadata !{i32 1641, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !1131, i32 1641, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1256 = metadata !{i32 1642, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !1255, i32 1641, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1258 = metadata !{i32 1643, i32 0, metadata !1257, null}
!1259 = metadata !{i32 1644, i32 0, metadata !1257, null}
!1260 = metadata !{i32 1645, i32 0, metadata !1257, null}
!1261 = metadata !{i32 1646, i32 0, metadata !1257, null}
!1262 = metadata !{i32 1647, i32 0, metadata !1257, null}
!1263 = metadata !{i32 1650, i32 0, metadata !1131, null}
!1264 = metadata !{i32 1652, i32 0, metadata !1131, null}
!1265 = metadata !{i32 1653, i32 0, metadata !1131, null}
!1266 = metadata !{i32 1654, i32 0, metadata !1131, null}
!1267 = metadata !{i32 1656, i32 0, metadata !1130, null}
!1268 = metadata !{i32 1660, i32 0, metadata !1129, null}
!1269 = metadata !{i32 1661, i32 0, metadata !1129, null}
!1270 = metadata !{i32 1664, i32 0, metadata !1129, null}
!1271 = metadata !{i32 1666, i32 0, metadata !1129, null}
!1272 = metadata !{i32 1667, i32 0, metadata !1129, null}
!1273 = metadata !{i32 1671, i32 0, metadata !1129, null}
!1274 = metadata !{i32 1673, i32 0, metadata !1129, null}
!1275 = metadata !{i32 1676, i32 0, metadata !1129, null}
!1276 = metadata !{i32 1680, i32 0, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !1, metadata !1129, i32 1677, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1278 = metadata !{i32 1681, i32 0, metadata !1277, null}
!1279 = metadata !{i32 1684, i32 0, metadata !1129, null}
!1280 = metadata !{i32 1686, i32 0, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !1, metadata !1129, i32 1685, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1282 = metadata !{i32 1687, i32 0, metadata !1281, null}
!1283 = metadata !{i32 1691, i32 0, metadata !1281, null}
!1284 = metadata !{i32 1692, i32 0, metadata !1281, null}
!1285 = metadata !{i32 1697, i32 0, metadata !1129, null}
!1286 = metadata !{i32 1699, i32 0, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !1, metadata !1129, i32 1698, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1288 = metadata !{i32 1700, i32 0, metadata !1287, null}
!1289 = metadata !{i32 1701, i32 0, metadata !1287, null}
!1290 = metadata !{i32 1707, i32 0, metadata !1129, null}
!1291 = metadata !{i32 1712, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !1129, i32 1707, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1293 = metadata !{i32 1714, i32 0, metadata !1292, null}
!1294 = metadata !{i32 1715, i32 0, metadata !1292, null}
!1295 = metadata !{i32 1717, i32 0, metadata !1292, null}
!1296 = metadata !{i32 1719, i32 0, metadata !1292, null}
!1297 = metadata !{i32 1721, i32 0, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !1, metadata !1292, i32 1720, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1299 = metadata !{i32 1722, i32 0, metadata !1298, null}
!1300 = metadata !{i32 1724, i32 0, metadata !1292, null}
!1301 = metadata !{i32 1725, i32 0, metadata !1292, null}
!1302 = metadata !{i32 1727, i32 0, metadata !1292, null}
!1303 = metadata !{i32 1733, i32 0, metadata !1129, null}
!1304 = metadata !{i32 1738, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1129, i32 1738, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1306 = metadata !{i32 1739, i32 0, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !1, metadata !1305, i32 1738, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1308 = metadata !{i32 1740, i32 0, metadata !1307, null}
!1309 = metadata !{i32 1741, i32 0, metadata !1307, null}
!1310 = metadata !{i32 1748, i32 0, metadata !148, null}
!1311 = metadata !{i32 1753, i32 0, metadata !1123, null}
!1312 = metadata !{i32 1755, i32 0, metadata !1125, null}
!1313 = metadata !{i32 1762, i32 0, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !1, metadata !1125, i32 1760, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1315 = metadata !{i32 1765, i32 0, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1765, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1317 = metadata !{i32 1767, i32 0, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !1, metadata !1316, i32 1766, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1319 = metadata !{i32 1770, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1, metadata !1318, i32 1769, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1321 = metadata !{i32 1771, i32 0, metadata !1320, null}
!1322 = metadata !{i32 1774, i32 0, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1774, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1324 = metadata !{i32 1776, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1323, i32 1775, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1326 = metadata !{i32 1779, i32 0, metadata !1314, null}
!1327 = metadata !{i32 1786, i32 0, metadata !148, null}
!1328 = metadata !{i32 1788, i32 0, metadata !148, null}
!1329 = metadata !{i32 1791, i32 0, metadata !1127, null}
!1330 = metadata !{i32 1792, i32 0, metadata !1127, null}
!1331 = metadata !{i32 1793, i32 0, metadata !1127, null}
!1332 = metadata !{i32 1794, i32 0, metadata !148, null}
!1333 = metadata !{i32 1797, i32 0, metadata !148, null}
!1334 = metadata !{i32 1800, i32 0, metadata !148, null}
!1335 = metadata !{i32 1801, i32 0, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !1, metadata !148, i32 1800, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1337 = metadata !{i32 1802, i32 0, metadata !1336, null}
!1338 = metadata !{i32 1805, i32 0, metadata !148, null}
!1339 = metadata !{i32 1807, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !148, i32 1806, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1341 = metadata !{i32 1809, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1, metadata !1340, i32 1808, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1343 = metadata !{i32 1810, i32 0, metadata !1342, null}
!1344 = metadata !{i32 1813, i32 0, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !1, metadata !1340, i32 1812, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1346 = metadata !{i32 1816, i32 0, metadata !148, null}
!1347 = metadata !{i32 1829, i32 0, metadata !148, null}
!1348 = metadata !{i32 1818, i32 0, metadata !1349, null}
!1349 = metadata !{i32 786443, metadata !1, metadata !148, i32 1817, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1350 = metadata !{i32 1820, i32 0, metadata !1351, null}
!1351 = metadata !{i32 786443, metadata !1, metadata !1349, i32 1819, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1352 = metadata !{i32 1821, i32 0, metadata !1351, null}
!1353 = metadata !{i32 1824, i32 0, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !1, metadata !1349, i32 1823, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1355 = metadata !{i32 1835, i32 0, metadata !1356, null}
!1356 = metadata !{i32 786443, metadata !1, metadata !148, i32 1834, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1357 = metadata !{i32 1837, i32 0, metadata !1358, null}
!1358 = metadata !{i32 786443, metadata !1, metadata !1356, i32 1836, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1359 = metadata !{i32 1839, i32 0, metadata !1360, null}
!1360 = metadata !{i32 786443, metadata !1, metadata !1358, i32 1838, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1361 = metadata !{i32 1840, i32 0, metadata !1360, null}
!1362 = metadata !{i32 1843, i32 0, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !1, metadata !1358, i32 1842, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1364 = metadata !{i32 1849, i32 0, metadata !148, null}
!1365 = metadata !{i32 1861, i32 0, metadata !148, null}
!1366 = metadata !{i32 1858, i32 0, metadata !1367, null}
!1367 = metadata !{i32 786443, metadata !1, metadata !148, i32 1857, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1368 = metadata !{i32 1863, i32 0, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !1, metadata !148, i32 1862, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1370 = metadata !{i32 1865, i32 0, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !1, metadata !1369, i32 1864, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1372 = metadata !{i32 1866, i32 0, metadata !1371, null}
!1373 = metadata !{i32 1867, i32 0, metadata !1371, null}
!1374 = metadata !{i32 1869, i32 0, metadata !148, null}
!1375 = metadata !{i32 1871, i32 0, metadata !1376, null}
!1376 = metadata !{i32 786443, metadata !1, metadata !148, i32 1870, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1377 = metadata !{i32 1873, i32 0, metadata !1378, null}
!1378 = metadata !{i32 786443, metadata !1, metadata !1376, i32 1872, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1379 = metadata !{i32 1886, i32 0, metadata !1376, null}
!1380 = metadata !{i32 1877, i32 0, metadata !1381, null}
!1381 = metadata !{i32 786443, metadata !1, metadata !1376, i32 1876, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1382 = metadata !{i32 1878, i32 0, metadata !1381, null}
!1383 = metadata !{i32 1879, i32 0, metadata !1381, null}
!1384 = metadata !{i32 1880, i32 0, metadata !1381, null}
!1385 = metadata !{i32 1881, i32 0, metadata !1381, null}
!1386 = metadata !{i32 1888, i32 0, metadata !1387, null}
!1387 = metadata !{i32 786443, metadata !1, metadata !1376, i32 1887, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1388 = metadata !{i32 1890, i32 0, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !1, metadata !1387, i32 1889, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1390 = metadata !{i32 1891, i32 0, metadata !1389, null}
!1391 = metadata !{i32 1892, i32 0, metadata !1389, null}
!1392 = metadata !{i32 1895, i32 0, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !1, metadata !1387, i32 1894, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1394 = metadata !{i32 1899, i32 0, metadata !148, null}
!1395 = metadata !{i32 1901, i32 0, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !1, metadata !148, i32 1900, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1397 = metadata !{i32 1902, i32 0, metadata !1396, null}
!1398 = metadata !{i32 1903, i32 0, metadata !1396, null}
!1399 = metadata !{i32 1905, i32 0, metadata !148, null}
!1400 = metadata !{i32 1907, i32 0, metadata !148, null}
!1401 = metadata !{i32 1910, i32 0, metadata !176, null}
!1402 = metadata !{i32 1912, i32 0, metadata !176, null}
!1403 = metadata !{i32 1916, i32 0, metadata !176, null}
!1404 = metadata !{i32 1919, i32 0, metadata !176, null}
!1405 = metadata !{i32 1924, i32 0, metadata !176, null}
!1406 = metadata !{i32 1925, i32 0, metadata !176, null}
!1407 = metadata !{i32 1927, i32 0, metadata !176, null}
!1408 = metadata !{i32 1930, i32 0, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !1, metadata !176, i32 1930, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1410 = metadata !{i32 1936, i32 0, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !1, metadata !1412, i32 1936, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1412 = metadata !{i32 786443, metadata !1, metadata !1413, i32 1934, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1413 = metadata !{i32 786443, metadata !1, metadata !1409, i32 1930, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1414 = metadata !{i32 1948, i32 0, metadata !1412, null}
!1415 = metadata !{i32 1931, i32 0, metadata !1413, null}
!1416 = metadata !{i32 1934, i32 0, metadata !1413, null}
!1417 = metadata !{i32 1937, i32 0, metadata !1418, null}
!1418 = metadata !{i32 786443, metadata !1, metadata !1411, i32 1936, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/search.c]
!1419 = metadata !{i32 1939, i32 0, metadata !1412, null}
!1420 = metadata !{i32 1940, i32 0, metadata !1412, null}
!1421 = metadata !{i32 1943, i32 0, metadata !1412, null}
!1422 = metadata !{i32 1944, i32 0, metadata !1412, null}
!1423 = metadata !{i32 1949, i32 0, metadata !1412, null}
!1424 = metadata !{i32 1952, i32 0, metadata !1413, null}
!1425 = metadata !{i32 1930, i32 0, metadata !176, null}
!1426 = metadata !{i32 1954, i32 0, metadata !176, null}
