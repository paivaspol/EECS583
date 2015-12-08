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
  %0 = load i32* @searching_pv, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.cond301.preheader, label %if.then

for.cond301.preheader:                            ; preds = %entry
  %cmp302762 = icmp sgt i32 %num_moves, 0
  br i1 %cmp302762, label %for.body303.lr.ph, label %if.end543

for.body303.lr.ph:                                ; preds = %for.cond301.preheader
  %cmp316 = icmp ne i32 %best, -1
  %cmp356 = icmp eq i32 %best, -2
  br label %for.body303

if.then:                                          ; preds = %entry
  store i32 0, i32* @searching_pv, align 4, !tbaa !0
  %cmp765 = icmp sgt i32 %num_moves, 0
  br i1 %cmp765, label %for.body.lr.ph, label %if.end543

for.body.lr.ph:                                   ; preds = %if.then
  %1 = icmp ult i32 %best, -2
  %cmp146 = icmp eq i32 %best, -2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv768 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next769, %for.inc ]
  %from1 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 0
  %2 = load i32* %from1, align 4, !tbaa !2
  %target4 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 1
  %3 = load i32* %target4, align 4, !tbaa !2
  %promoted7 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 3
  %4 = load i32* %promoted7, align 4, !tbaa !2
  %captured10 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv768, i32 2
  %5 = load i32* %captured10, align 4, !tbaa !2
  %cmp11 = icmp ne i32 %5, 13
  br i1 %cmp11, label %if.then12, label %if.else50

if.then12:                                        ; preds = %for.body
  %idxprom13 = sext i32 %5 to i64
  %arrayidx14 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom13
  %6 = load i32* %arrayidx14, align 4, !tbaa !2
  %ispos757 = icmp sgt i32 %6, -1
  %neg758 = sub i32 0, %6
  %7 = select i1 %ispos757, i32 %6, i32 %neg758
  %add = add nsw i32 %7, 15
  %idxprom15 = sext i32 %2 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15
  %8 = load i32* %arrayidx16, align 4, !tbaa !2
  %idxprom17 = sext i32 %8 to i64
  %arrayidx18 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom17
  %9 = load i32* %arrayidx18, align 4, !tbaa !2
  %ispos759 = icmp sgt i32 %9, -1
  %neg760 = sub i32 0, %9
  %10 = select i1 %ispos759, i32 %9, i32 %neg760
  %cmp20 = icmp slt i32 %add, %10
  br i1 %cmp20, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then12
  %shr = ashr i32 %10, 4
  %sub = sub nsw i32 %7, %shr
  %arrayidx31 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %sub, i32* %arrayidx31, align 4, !tbaa !2
  %add34 = add nsw i32 %sub, 50000000
  %arrayidx36 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 %add34, i32* %arrayidx36, align 4, !tbaa !2
  br label %if.end53

if.else:                                          ; preds = %if.then12
  %11 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool37 = icmp eq i32 %11, 0
  %cond = zext i1 %not.tobool37 to i32
  %call38 = tail call i32 @see(i32 %cond, i32 %3, i32 %2) #5
  %cmp39 = icmp sgt i32 %call38, -51
  br i1 %cmp39, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.else
  %add41 = add nsw i32 %call38, 50000000
  %arrayidx43 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 %add41, i32* %arrayidx43, align 4, !tbaa !2
  br label %if.end

if.else44:                                        ; preds = %if.else
  %arrayidx46 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 %call38, i32* %arrayidx46, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else44, %if.then40
  %arrayidx48 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %call38, i32* %arrayidx48, align 4, !tbaa !2
  br label %if.end53

if.else50:                                        ; preds = %for.body
  %arrayidx52 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 0, i32* %arrayidx52, align 4, !tbaa !2
  br label %if.end53

if.end53:                                         ; preds = %if.then21, %if.end, %if.else50
  %12 = load i32* @ply, align 4, !tbaa !2
  %idxprom54 = sext i32 %12 to i64
  %from56 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %idxprom54, i32 0
  %13 = load i32* %from56, align 4, !tbaa !2
  %cmp57 = icmp eq i32 %2, %13
  br i1 %cmp57, label %land.lhs.true, label %if.else103

land.lhs.true:                                    ; preds = %if.end53
  %target60 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %idxprom54, i32 1
  %14 = load i32* %target60, align 4, !tbaa !2
  %cmp61 = icmp eq i32 %3, %14
  br i1 %cmp61, label %land.lhs.true62, label %if.else103

land.lhs.true62:                                  ; preds = %land.lhs.true
  %promoted65 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %idxprom54, i32 3
  %15 = load i32* %promoted65, align 4, !tbaa !2
  %cmp66 = icmp eq i32 %4, %15
  br i1 %cmp66, label %if.then67, label %if.else103

if.then67:                                        ; preds = %land.lhs.true62
  store i32 1, i32* @searching_pv, align 4, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 100000000, i32* %arrayidx69, align 4, !tbaa !2
  br i1 %cmp11, label %if.then71, label %for.inc

if.then71:                                        ; preds = %if.then67
  %idxprom72 = sext i32 %5 to i64
  %arrayidx73 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom72
  %16 = load i32* %arrayidx73, align 4, !tbaa !2
  %ispos753 = icmp sgt i32 %16, -1
  %neg754 = sub i32 0, %16
  %17 = select i1 %ispos753, i32 %16, i32 %neg754
  %add75 = add nsw i32 %17, 15
  %idxprom76 = sext i32 %2 to i64
  %arrayidx77 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom76
  %18 = load i32* %arrayidx77, align 4, !tbaa !2
  %idxprom78 = sext i32 %18 to i64
  %arrayidx79 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom78
  %19 = load i32* %arrayidx79, align 4, !tbaa !2
  %ispos755 = icmp sgt i32 %19, -1
  %neg756 = sub i32 0, %19
  %20 = select i1 %ispos755, i32 %19, i32 %neg756
  %cmp81 = icmp slt i32 %add75, %20
  br i1 %cmp81, label %if.else95, label %if.then82

if.then82:                                        ; preds = %if.then71
  %shr91 = ashr i32 %20, 4
  %sub92 = sub nsw i32 %17, %shr91
  %arrayidx94 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %sub92, i32* %arrayidx94, align 4, !tbaa !2
  br label %for.inc

if.else95:                                        ; preds = %if.then71
  %21 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool96 = icmp eq i32 %21, 0
  %cond97 = zext i1 %not.tobool96 to i32
  %call98 = tail call i32 @see(i32 %cond97, i32 %3, i32 %2) #5
  %arrayidx100 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %call98, i32* %arrayidx100, align 4, !tbaa !2
  br label %for.inc

if.else103:                                       ; preds = %land.lhs.true62, %land.lhs.true, %if.end53
  %22 = trunc i64 %indvars.iv768 to i32
  %cmp108 = icmp eq i32 %22, %best
  %or.cond = and i1 %1, %cmp108
  br i1 %or.cond, label %if.then109, label %if.else145

if.then109:                                       ; preds = %if.else103
  %arrayidx111 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 100000000, i32* %arrayidx111, align 4, !tbaa !2
  br i1 %cmp11, label %if.then113, label %for.inc

if.then113:                                       ; preds = %if.then109
  %idxprom114 = sext i32 %5 to i64
  %arrayidx115 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom114
  %23 = load i32* %arrayidx115, align 4, !tbaa !2
  %ispos749 = icmp sgt i32 %23, -1
  %neg750 = sub i32 0, %23
  %24 = select i1 %ispos749, i32 %23, i32 %neg750
  %add117 = add nsw i32 %24, 15
  %idxprom118 = sext i32 %2 to i64
  %arrayidx119 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom118
  %25 = load i32* %arrayidx119, align 4, !tbaa !2
  %idxprom120 = sext i32 %25 to i64
  %arrayidx121 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom120
  %26 = load i32* %arrayidx121, align 4, !tbaa !2
  %ispos751 = icmp sgt i32 %26, -1
  %neg752 = sub i32 0, %26
  %27 = select i1 %ispos751, i32 %26, i32 %neg752
  %cmp123 = icmp slt i32 %add117, %27
  br i1 %cmp123, label %if.else137, label %if.then124

if.then124:                                       ; preds = %if.then113
  %shr133 = ashr i32 %27, 4
  %sub134 = sub nsw i32 %24, %shr133
  %arrayidx136 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %sub134, i32* %arrayidx136, align 4, !tbaa !2
  br label %for.inc

if.else137:                                       ; preds = %if.then113
  %28 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool138 = icmp eq i32 %28, 0
  %cond139 = zext i1 %not.tobool138 to i32
  %call140 = tail call i32 @see(i32 %cond139, i32 %3, i32 %2) #5
  %arrayidx142 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %call140, i32* %arrayidx142, align 4, !tbaa !2
  br label %for.inc

if.else145:                                       ; preds = %if.else103
  br i1 %cmp146, label %if.then147, label %if.else211

if.then147:                                       ; preds = %if.else145
  %add148 = add nsw i32 %12, 1
  %idxprom149 = sext i32 %add148 to i64
  %from154 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom149, i64 %idxprom149, i32 0
  %29 = load i32* %from154, align 4, !tbaa !2
  %cmp155 = icmp eq i32 %2, %29
  br i1 %cmp155, label %land.lhs.true156, label %for.inc

land.lhs.true156:                                 ; preds = %if.then147
  %target163 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom149, i64 %idxprom149, i32 1
  %30 = load i32* %target163, align 4, !tbaa !2
  %cmp164 = icmp eq i32 %3, %30
  br i1 %cmp164, label %land.lhs.true165, label %for.inc

land.lhs.true165:                                 ; preds = %land.lhs.true156
  %promoted172 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom149, i64 %idxprom149, i32 3
  %31 = load i32* %promoted172, align 4, !tbaa !2
  %cmp173 = icmp eq i32 %4, %31
  br i1 %cmp173, label %if.then174, label %for.inc

if.then174:                                       ; preds = %land.lhs.true165
  %arrayidx176 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 100000000, i32* %arrayidx176, align 4, !tbaa !2
  br i1 %cmp11, label %if.then178, label %for.inc

if.then178:                                       ; preds = %if.then174
  %idxprom179 = sext i32 %5 to i64
  %arrayidx180 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom179
  %32 = load i32* %arrayidx180, align 4, !tbaa !2
  %ispos745 = icmp sgt i32 %32, -1
  %neg746 = sub i32 0, %32
  %33 = select i1 %ispos745, i32 %32, i32 %neg746
  %add182 = add nsw i32 %33, 15
  %idxprom183 = sext i32 %2 to i64
  %arrayidx184 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom183
  %34 = load i32* %arrayidx184, align 4, !tbaa !2
  %idxprom185 = sext i32 %34 to i64
  %arrayidx186 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom185
  %35 = load i32* %arrayidx186, align 4, !tbaa !2
  %ispos747 = icmp sgt i32 %35, -1
  %neg748 = sub i32 0, %35
  %36 = select i1 %ispos747, i32 %35, i32 %neg748
  %cmp188 = icmp slt i32 %add182, %36
  br i1 %cmp188, label %if.else202, label %if.then189

if.then189:                                       ; preds = %if.then178
  %shr198 = ashr i32 %36, 4
  %sub199 = sub nsw i32 %33, %shr198
  %arrayidx201 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %sub199, i32* %arrayidx201, align 4, !tbaa !2
  br label %for.inc

if.else202:                                       ; preds = %if.then178
  %37 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool203 = icmp eq i32 %37, 0
  %cond204 = zext i1 %not.tobool203 to i32
  %call205 = tail call i32 @see(i32 %cond204, i32 %3, i32 %2) #5
  %arrayidx207 = getelementptr inbounds i32* %see_values, i64 %indvars.iv768
  store i32 %call205, i32* %arrayidx207, align 4, !tbaa !2
  br label %for.inc

if.else211:                                       ; preds = %if.else145
  %cmp212 = icmp ne i32 %12, 1
  %38 = load i32* @i_depth, align 4, !tbaa !2
  %cmp213 = icmp slt i32 %38, 2
  %or.cond544 = or i1 %cmp212, %cmp213
  br i1 %or.cond544, label %if.then214, label %if.else289

if.then214:                                       ; preds = %if.else211
  %idxprom215 = sext i32 %3 to i64
  %idxprom216 = sext i32 %2 to i64
  %arrayidx218 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom216, i64 %idxprom215
  %39 = load i32* %arrayidx218, align 4, !tbaa !2
  %arrayidx220 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  %40 = load i32* %arrayidx220, align 4, !tbaa !2
  %add221 = add i32 %40, %39
  store i32 %add221, i32* %arrayidx220, align 4, !tbaa !2
  %41 = load i32* @ply, align 4, !tbaa !2
  %idxprom222 = sext i32 %41 to i64
  %from224 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom222, i32 0
  %42 = load i32* %from224, align 4, !tbaa !2
  %cmp225 = icmp eq i32 %2, %42
  br i1 %cmp225, label %land.lhs.true226, label %if.else240

land.lhs.true226:                                 ; preds = %if.then214
  %target229 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom222, i32 1
  %43 = load i32* %target229, align 4, !tbaa !2
  %cmp230 = icmp eq i32 %3, %43
  br i1 %cmp230, label %land.lhs.true231, label %if.else240

land.lhs.true231:                                 ; preds = %land.lhs.true226
  %promoted234 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom222, i32 3
  %44 = load i32* %promoted234, align 4, !tbaa !2
  %cmp235 = icmp eq i32 %4, %44
  br i1 %cmp235, label %if.then236, label %if.else240

if.then236:                                       ; preds = %land.lhs.true231
  %add239 = add nsw i32 %add221, 25000000
  store i32 %add239, i32* %arrayidx220, align 4, !tbaa !2
  br label %for.inc

if.else240:                                       ; preds = %land.lhs.true231, %land.lhs.true226, %if.then214
  %from243 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom222, i32 0
  %45 = load i32* %from243, align 4, !tbaa !2
  %cmp244 = icmp eq i32 %2, %45
  br i1 %cmp244, label %land.lhs.true245, label %if.else259

land.lhs.true245:                                 ; preds = %if.else240
  %target248 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom222, i32 1
  %46 = load i32* %target248, align 4, !tbaa !2
  %cmp249 = icmp eq i32 %3, %46
  br i1 %cmp249, label %land.lhs.true250, label %if.else259

land.lhs.true250:                                 ; preds = %land.lhs.true245
  %promoted253 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom222, i32 3
  %47 = load i32* %promoted253, align 4, !tbaa !2
  %cmp254 = icmp eq i32 %4, %47
  br i1 %cmp254, label %if.then255, label %if.else259

if.then255:                                       ; preds = %land.lhs.true250
  %add258 = add nsw i32 %add221, 20000000
  store i32 %add258, i32* %arrayidx220, align 4, !tbaa !2
  br label %for.inc

if.else259:                                       ; preds = %land.lhs.true250, %land.lhs.true245, %if.else240
  %from262 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom222, i32 0
  %48 = load i32* %from262, align 4, !tbaa !2
  %cmp263 = icmp eq i32 %2, %48
  br i1 %cmp263, label %land.lhs.true264, label %for.inc

land.lhs.true264:                                 ; preds = %if.else259
  %target267 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom222, i32 1
  %49 = load i32* %target267, align 4, !tbaa !2
  %cmp268 = icmp eq i32 %3, %49
  br i1 %cmp268, label %land.lhs.true269, label %for.inc

land.lhs.true269:                                 ; preds = %land.lhs.true264
  %promoted272 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom222, i32 3
  %50 = load i32* %promoted272, align 4, !tbaa !2
  %cmp273 = icmp eq i32 %4, %50
  br i1 %cmp273, label %if.then274, label %for.inc

if.then274:                                       ; preds = %land.lhs.true269
  %add277 = add nsw i32 %add221, 15000000
  store i32 %add277, i32* %arrayidx220, align 4, !tbaa !2
  br label %for.inc

if.else289:                                       ; preds = %if.else211
  %arrayidx285 = getelementptr inbounds [512 x i32]* @rootnodecount, i64 0, i64 %indvars.iv768
  %51 = load i32* %arrayidx285, align 4, !tbaa !2
  %div292 = udiv i32 %51, 100
  %arrayidx294 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv768
  store i32 %div292, i32* %arrayidx294, align 4, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.then82, %if.else95, %if.then67, %if.then174, %if.else202, %if.then189, %land.lhs.true165, %land.lhs.true156, %if.then147, %if.else289, %if.then236, %if.else259, %land.lhs.true264, %land.lhs.true269, %if.then274, %if.then255, %if.then109, %if.else137, %if.then124
  %indvars.iv.next769 = add i64 %indvars.iv768, 1
  %lftr.wideiv770 = trunc i64 %indvars.iv.next769 to i32
  %exitcond771 = icmp eq i32 %lftr.wideiv770, %num_moves
  br i1 %exitcond771, label %if.end543, label %for.body

for.body303:                                      ; preds = %for.inc540, %for.body303.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body303.lr.ph ], [ %indvars.iv.next, %for.inc540 ]
  %from306 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 0
  %52 = load i32* %from306, align 4, !tbaa !2
  %target309 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 1
  %53 = load i32* %target309, align 4, !tbaa !2
  %promoted312 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 3
  %54 = load i32* %promoted312, align 4, !tbaa !2
  %captured315 = getelementptr inbounds %struct.move_s* %moves, i64 %indvars.iv, i32 2
  %55 = load i32* %captured315, align 4, !tbaa !2
  %56 = trunc i64 %indvars.iv to i32
  %cmp318 = icmp eq i32 %56, %best
  %or.cond761 = and i1 %cmp316, %cmp318
  br i1 %or.cond761, label %if.then319, label %if.else355

if.then319:                                       ; preds = %for.body303
  %arrayidx321 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  store i32 100000000, i32* %arrayidx321, align 4, !tbaa !2
  %cmp322 = icmp eq i32 %55, 13
  br i1 %cmp322, label %if.end473, label %if.then323

if.then323:                                       ; preds = %if.then319
  %idxprom324 = sext i32 %55 to i64
  %arrayidx325 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom324
  %57 = load i32* %arrayidx325, align 4, !tbaa !2
  %ispos741 = icmp sgt i32 %57, -1
  %neg742 = sub i32 0, %57
  %58 = select i1 %ispos741, i32 %57, i32 %neg742
  %add327 = add nsw i32 %58, 15
  %idxprom328 = sext i32 %52 to i64
  %arrayidx329 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom328
  %59 = load i32* %arrayidx329, align 4, !tbaa !2
  %idxprom330 = sext i32 %59 to i64
  %arrayidx331 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom330
  %60 = load i32* %arrayidx331, align 4, !tbaa !2
  %ispos743 = icmp sgt i32 %60, -1
  %neg744 = sub i32 0, %60
  %61 = select i1 %ispos743, i32 %60, i32 %neg744
  %cmp333 = icmp slt i32 %add327, %61
  br i1 %cmp333, label %if.else347, label %if.then334

if.then334:                                       ; preds = %if.then323
  %shr343 = ashr i32 %61, 4
  %sub344 = sub nsw i32 %58, %shr343
  %arrayidx346 = getelementptr inbounds i32* %see_values, i64 %indvars.iv
  store i32 %sub344, i32* %arrayidx346, align 4, !tbaa !2
  br label %if.end473

if.else347:                                       ; preds = %if.then323
  %62 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool348 = icmp eq i32 %62, 0
  %cond349 = zext i1 %not.tobool348 to i32
  %call350 = tail call i32 @see(i32 %cond349, i32 %53, i32 %52) #5
  %arrayidx352 = getelementptr inbounds i32* %see_values, i64 %indvars.iv
  store i32 %call350, i32* %arrayidx352, align 4, !tbaa !2
  br label %if.end473

if.else355:                                       ; preds = %for.body303
  br i1 %cmp356, label %if.then357, label %if.else421

if.then357:                                       ; preds = %if.else355
  %63 = load i32* @ply, align 4, !tbaa !2
  %add358 = add nsw i32 %63, 1
  %idxprom359 = sext i32 %add358 to i64
  %from364 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom359, i64 %idxprom359, i32 0
  %64 = load i32* %from364, align 4, !tbaa !2
  %cmp365 = icmp eq i32 %52, %64
  br i1 %cmp365, label %land.lhs.true366, label %if.end473

land.lhs.true366:                                 ; preds = %if.then357
  %target373 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom359, i64 %idxprom359, i32 1
  %65 = load i32* %target373, align 4, !tbaa !2
  %cmp374 = icmp eq i32 %53, %65
  br i1 %cmp374, label %land.lhs.true375, label %if.end473

land.lhs.true375:                                 ; preds = %land.lhs.true366
  %promoted382 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom359, i64 %idxprom359, i32 3
  %66 = load i32* %promoted382, align 4, !tbaa !2
  %cmp383 = icmp eq i32 %54, %66
  br i1 %cmp383, label %if.then384, label %if.end473

if.then384:                                       ; preds = %land.lhs.true375
  %arrayidx386 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  store i32 100000000, i32* %arrayidx386, align 4, !tbaa !2
  %cmp387 = icmp eq i32 %55, 13
  br i1 %cmp387, label %if.end473, label %if.then388

if.then388:                                       ; preds = %if.then384
  %idxprom389 = sext i32 %55 to i64
  %arrayidx390 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom389
  %67 = load i32* %arrayidx390, align 4, !tbaa !2
  %ispos737 = icmp sgt i32 %67, -1
  %neg738 = sub i32 0, %67
  %68 = select i1 %ispos737, i32 %67, i32 %neg738
  %add392 = add nsw i32 %68, 15
  %idxprom393 = sext i32 %52 to i64
  %arrayidx394 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom393
  %69 = load i32* %arrayidx394, align 4, !tbaa !2
  %idxprom395 = sext i32 %69 to i64
  %arrayidx396 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom395
  %70 = load i32* %arrayidx396, align 4, !tbaa !2
  %ispos739 = icmp sgt i32 %70, -1
  %neg740 = sub i32 0, %70
  %71 = select i1 %ispos739, i32 %70, i32 %neg740
  %cmp398 = icmp slt i32 %add392, %71
  br i1 %cmp398, label %if.else412, label %if.then399

if.then399:                                       ; preds = %if.then388
  %shr408 = ashr i32 %71, 4
  %sub409 = sub nsw i32 %68, %shr408
  %arrayidx411 = getelementptr inbounds i32* %see_values, i64 %indvars.iv
  store i32 %sub409, i32* %arrayidx411, align 4, !tbaa !2
  br label %if.end473

if.else412:                                       ; preds = %if.then388
  %72 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool413 = icmp eq i32 %72, 0
  %cond414 = zext i1 %not.tobool413 to i32
  %call415 = tail call i32 @see(i32 %cond414, i32 %53, i32 %52) #5
  %arrayidx417 = getelementptr inbounds i32* %see_values, i64 %indvars.iv
  store i32 %call415, i32* %arrayidx417, align 4, !tbaa !2
  br label %if.end473

if.else421:                                       ; preds = %if.else355
  %cmp422 = icmp eq i32 %55, 13
  br i1 %cmp422, label %if.else468, label %if.then423

if.then423:                                       ; preds = %if.else421
  %idxprom424 = sext i32 %55 to i64
  %arrayidx425 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom424
  %73 = load i32* %arrayidx425, align 4, !tbaa !2
  %ispos = icmp sgt i32 %73, -1
  %neg = sub i32 0, %73
  %74 = select i1 %ispos, i32 %73, i32 %neg
  %add427 = add nsw i32 %74, 15
  %idxprom428 = sext i32 %52 to i64
  %arrayidx429 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom428
  %75 = load i32* %arrayidx429, align 4, !tbaa !2
  %idxprom430 = sext i32 %75 to i64
  %arrayidx431 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom430
  %76 = load i32* %arrayidx431, align 4, !tbaa !2
  %ispos735 = icmp sgt i32 %76, -1
  %neg736 = sub i32 0, %76
  %77 = select i1 %ispos735, i32 %76, i32 %neg736
  %cmp433 = icmp slt i32 %add427, %77
  br i1 %cmp433, label %if.else452, label %if.then434

if.then434:                                       ; preds = %if.then423
  %shr443 = ashr i32 %77, 4
  %sub444 = sub nsw i32 %74, %shr443
  %arrayidx446 = getelementptr inbounds i32* %see_values, i64 %indvars.iv
  store i32 %sub444, i32* %arrayidx446, align 4, !tbaa !2
  %add449 = add nsw i32 %sub444, 50000000
  %arrayidx451 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  store i32 %add449, i32* %arrayidx451, align 4, !tbaa !2
  br label %if.end473

if.else452:                                       ; preds = %if.then423
  %78 = load i32* @white_to_move, align 4, !tbaa !2
  %not.tobool453 = icmp eq i32 %78, 0
  %cond454 = zext i1 %not.tobool453 to i32
  %call455 = tail call i32 @see(i32 %cond454, i32 %53, i32 %52) #5
  %cmp456 = icmp sgt i32 %call455, -51
  br i1 %cmp456, label %if.then457, label %if.else461

if.then457:                                       ; preds = %if.else452
  %add458 = add nsw i32 %call455, 50000000
  %arrayidx460 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  store i32 %add458, i32* %arrayidx460, align 4, !tbaa !2
  br label %if.end464

if.else461:                                       ; preds = %if.else452
  %arrayidx463 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  store i32 %call455, i32* %arrayidx463, align 4, !tbaa !2
  br label %if.end464

if.end464:                                        ; preds = %if.else461, %if.then457
  %arrayidx466 = getelementptr inbounds i32* %see_values, i64 %indvars.iv
  store i32 %call455, i32* %arrayidx466, align 4, !tbaa !2
  br label %if.end473

if.else468:                                       ; preds = %if.else421
  %arrayidx470 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  store i32 0, i32* %arrayidx470, align 4, !tbaa !2
  br label %if.end473

if.end473:                                        ; preds = %land.lhs.true375, %land.lhs.true366, %if.then357, %if.then319, %if.then384, %if.else412, %if.then399, %if.then434, %if.end464, %if.else468, %if.else347, %if.then334
  %idxprom474 = sext i32 %53 to i64
  %idxprom475 = sext i32 %52 to i64
  %arrayidx477 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom475, i64 %idxprom474
  %79 = load i32* %arrayidx477, align 4, !tbaa !2
  %arrayidx479 = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  %80 = load i32* %arrayidx479, align 4, !tbaa !2
  %add480 = add i32 %80, %79
  store i32 %add480, i32* %arrayidx479, align 4, !tbaa !2
  %81 = load i32* @ply, align 4, !tbaa !2
  %idxprom481 = sext i32 %81 to i64
  %from483 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom481, i32 0
  %82 = load i32* %from483, align 4, !tbaa !2
  %cmp484 = icmp eq i32 %52, %82
  br i1 %cmp484, label %land.lhs.true485, label %if.else499

land.lhs.true485:                                 ; preds = %if.end473
  %target488 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom481, i32 1
  %83 = load i32* %target488, align 4, !tbaa !2
  %cmp489 = icmp eq i32 %53, %83
  br i1 %cmp489, label %land.lhs.true490, label %if.else499

land.lhs.true490:                                 ; preds = %land.lhs.true485
  %promoted493 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom481, i32 3
  %84 = load i32* %promoted493, align 4, !tbaa !2
  %cmp494 = icmp eq i32 %54, %84
  br i1 %cmp494, label %if.then495, label %if.else499

if.then495:                                       ; preds = %land.lhs.true490
  %add498 = add nsw i32 %add480, 25000000
  store i32 %add498, i32* %arrayidx479, align 4, !tbaa !2
  br label %for.inc540

if.else499:                                       ; preds = %land.lhs.true490, %land.lhs.true485, %if.end473
  %from502 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom481, i32 0
  %85 = load i32* %from502, align 4, !tbaa !2
  %cmp503 = icmp eq i32 %52, %85
  br i1 %cmp503, label %land.lhs.true504, label %if.else518

land.lhs.true504:                                 ; preds = %if.else499
  %target507 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom481, i32 1
  %86 = load i32* %target507, align 4, !tbaa !2
  %cmp508 = icmp eq i32 %53, %86
  br i1 %cmp508, label %land.lhs.true509, label %if.else518

land.lhs.true509:                                 ; preds = %land.lhs.true504
  %promoted512 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom481, i32 3
  %87 = load i32* %promoted512, align 4, !tbaa !2
  %cmp513 = icmp eq i32 %54, %87
  br i1 %cmp513, label %if.then514, label %if.else518

if.then514:                                       ; preds = %land.lhs.true509
  %add517 = add nsw i32 %add480, 20000000
  store i32 %add517, i32* %arrayidx479, align 4, !tbaa !2
  br label %for.inc540

if.else518:                                       ; preds = %land.lhs.true509, %land.lhs.true504, %if.else499
  %from521 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom481, i32 0
  %88 = load i32* %from521, align 4, !tbaa !2
  %cmp522 = icmp eq i32 %52, %88
  br i1 %cmp522, label %land.lhs.true523, label %for.inc540

land.lhs.true523:                                 ; preds = %if.else518
  %target526 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom481, i32 1
  %89 = load i32* %target526, align 4, !tbaa !2
  %cmp527 = icmp eq i32 %53, %89
  br i1 %cmp527, label %land.lhs.true528, label %for.inc540

land.lhs.true528:                                 ; preds = %land.lhs.true523
  %promoted531 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom481, i32 3
  %90 = load i32* %promoted531, align 4, !tbaa !2
  %cmp532 = icmp eq i32 %54, %90
  br i1 %cmp532, label %if.then533, label %for.inc540

if.then533:                                       ; preds = %land.lhs.true528
  %add536 = add nsw i32 %add480, 15000000
  store i32 %add536, i32* %arrayidx479, align 4, !tbaa !2
  br label %for.inc540

for.inc540:                                       ; preds = %if.then495, %if.else518, %land.lhs.true523, %land.lhs.true528, %if.then533, %if.then514
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves
  br i1 %exitcond, label %if.end543, label %for.body303

if.end543:                                        ; preds = %if.then, %for.inc, %for.cond301.preheader, %for.inc540
  ret void
}

; Function Attrs: optsize
declare i32 @see(i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @perft(i32 %depth) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %tobool = icmp eq i32 %depth, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* @raw_nodes, align 4, !tbaa !2
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @raw_nodes, align 4, !tbaa !2
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #5
  %2 = load i32* @numb_moves, align 4, !tbaa !2
  %call = call i32 @in_check() #5
  %cmp14 = icmp sgt i32 %2, 0
  br i1 %cmp14, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %depth, -1
  br label %for.body

for.body:                                         ; preds = %if.end6, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %if.end6 ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.015) #5
  %call3 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.015, i32 %call) #5
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @perft(i32 %sub) #6
  br label %if.end6

if.end6:                                          ; preds = %for.body, %if.then5
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.015) #5
  %inc8 = add nsw i32 %i.015, 1
  %exitcond = icmp eq i32 %inc8, %2
  br i1 %exitcond, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %if.end6, %if.then
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #1

; Function Attrs: optsize
declare i32 @in_check() #1

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #1

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #1

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @qsearch(i32 %alpha, i32 %beta, i32 %depth) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %i = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %best = alloca i32, align 4
  %bound = alloca i32, align 4
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %1 = bitcast [512 x i32]* %move_ordering to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %1) #2
  %2 = bitcast [512 x i32]* %see_values to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #2
  %3 = load i32* @ply, align 4, !tbaa !2
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4, !tbaa !2
  %4 = load i32* @nodes, align 4, !tbaa !2
  %and = and i32 %4, 65535
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %call = call i32 @interrupt() #5
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @time_exit, align 4, !tbaa !0
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call3 = call i64 @rtime() #5
  %5 = load i64* @start_time, align 8, !tbaa !3
  %call4 = call i32 @rdifftime(i64 %call3, i64 %5) #5
  %6 = load i32* @time_for_move, align 4, !tbaa !2
  %cmp = icmp sge i32 %call4, %6
  %7 = load i32* @i_depth, align 4, !tbaa !2
  %cmp5 = icmp sgt i32 %7, 1
  %or.cond = and i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then6, label %if.end26

if.then6:                                         ; preds = %if.else
  %8 = load i32* @failed, align 4, !tbaa !2
  %cmp7 = icmp ne i32 %8, 1
  %9 = load i32* @extendedtime, align 4, !tbaa !2
  %tobool9 = icmp ne i32 %9, 0
  %or.cond125 = or i1 %cmp7, %tobool9
  %10 = load i32* @fixed_time, align 4, !tbaa !2
  %tobool11 = icmp ne i32 %10, 0
  %or.cond126 = or i1 %or.cond125, %tobool11
  %11 = load i32* @go_fast, align 4, !tbaa !0
  %tobool13 = icmp ne i32 %11, 0
  %or.cond127 = or i1 %or.cond126, %tobool13
  %or.cond127.not = xor i1 %or.cond127, true
  %12 = load i32* @Variant, align 4, !tbaa !2
  %cmp15 = icmp ne i32 %12, 1
  %or.cond128 = and i1 %cmp15, %or.cond127.not
  br i1 %or.cond128, label %land.lhs.true16, label %if.else23

land.lhs.true16:                                  ; preds = %if.then6
  %13 = load i32* @time_left, align 4, !tbaa !2
  %mul = shl nsw i32 %6, 2
  %cmp17 = icmp sgt i32 %mul, 1000
  %mul. = select i1 %cmp17, i32 %mul, i32 1000
  %cmp19 = icmp sgt i32 %13, %mul.
  br i1 %cmp19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %land.lhs.true16
  store i32 1, i32* @extendedtime, align 4, !tbaa !2
  %call21 = call i32 @allocate_time() #5
  %14 = load i32* @time_for_move, align 4, !tbaa !2
  %add = add nsw i32 %14, %call21
  store i32 %add, i32* @time_for_move, align 4, !tbaa !2
  %15 = load i32* @time_left, align 4, !tbaa !2
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %add, i32 %15) #5
  br label %if.end26

if.else23:                                        ; preds = %if.then6, %land.lhs.true16
  store i32 1, i32* @time_exit, align 4, !tbaa !0
  br label %cleanup

if.end26:                                         ; preds = %if.else, %entry, %if.then20
  %cmp27 = icmp slt i32 %depth, 1
  %16 = load i32* @ply, align 4, !tbaa !2
  %cmp28 = icmp sgt i32 %16, 299
  %or.cond129 = or i1 %cmp27, %cmp28
  br i1 %or.cond129, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 @eval(i32 %alpha, i32 %beta) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %17 = load i32* @qnodes, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* @qnodes, align 4, !tbaa !2
  %18 = load i32* @nodes, align 4, !tbaa !2
  %inc32 = add nsw i32 %18, 1
  store i32 %inc32, i32* @nodes, align 4, !tbaa !2
  %call33 = call i32 @QProbeTT(i32* %bound, i32* %best) #5
  switch i32 %call33, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb38
    i32 4, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end31
  %19 = load i32* %bound, align 4, !tbaa !2
  br label %cleanup

sw.bb34:                                          ; preds = %if.end31
  %20 = load i32* %bound, align 4, !tbaa !2
  %cmp35 = icmp sgt i32 %20, %alpha
  br i1 %cmp35, label %sw.epilog, label %cleanup

sw.bb38:                                          ; preds = %if.end31
  %21 = load i32* %bound, align 4, !tbaa !2
  %cmp39 = icmp slt i32 %21, %beta
  br i1 %cmp39, label %sw.epilog, label %cleanup

sw.bb42:                                          ; preds = %if.end31
  store i32 -1, i32* %best, align 4, !tbaa !2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb38, %if.end31, %sw.bb42
  %call43 = call i32 @eval(i32 %alpha, i32 %beta) #5
  %cmp44 = icmp slt i32 %call43, %beta
  br i1 %cmp44, label %if.else46, label %if.then45

if.then45:                                        ; preds = %sw.epilog
  call void @QStoreTT(i32 %call43, i32 %alpha, i32 %beta, i32 500) #5
  br label %cleanup

if.else46:                                        ; preds = %sw.epilog
  %cmp47 = icmp sgt i32 %call43, %alpha
  %call43.alpha = select i1 %cmp47, i32 %call43, i32 %alpha
  %arrayidx51 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx51) #5
  %22 = load i32* @numb_moves, align 4, !tbaa !2
  %23 = load i32* @kingcap, align 4, !tbaa !2
  %tobool52 = icmp eq i32 %23, 0
  br i1 %tobool52, label %if.end54, label %cleanup

if.end54:                                         ; preds = %if.else46
  %sub = sub i32 -150, %call43
  %sub55 = add i32 %sub, %call43.alpha
  %arrayidx57 = getelementptr inbounds [512 x i32]* %move_ordering, i64 0, i64 0
  %arrayidx58 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 0
  %24 = load i32* %best, align 4, !tbaa !2
  call void @order_moves(%struct.move_s* %arrayidx51, i32* %arrayidx57, i32* %arrayidx58, i32 %22, i32 %24) #6
  %sub75 = sub nsw i32 0, %beta
  %sub77 = add nsw i32 %depth, -1
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %for.end, %if.end54
  %alpha.addr.1.ph.ph = phi i32 [ %call43.alpha, %if.end54 ], [ %sub79, %for.end ]
  %sub76 = sub nsw i32 0, %alpha.addr.1.ph.ph
  br label %while.cond

while.cond:                                       ; preds = %if.end73, %while.cond.outer.outer, %if.then65
  %call60 = call i32 @remove_one(i32* %i, i32* %arrayidx57, i32 %22) #6
  %tobool61 = icmp eq i32 %call60, 0
  br i1 %tobool61, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %25 = load i32* %i, align 4, !tbaa !2
  %idxprom62 = sext i32 %25 to i64
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom62, i32 3
  %26 = load i32* %promoted, align 4, !tbaa !2
  %tobool64 = icmp eq i32 %26, 0
  br i1 %tobool64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %while.body
  %arrayidx67 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 %idxprom62
  %27 = load i32* %arrayidx67, align 4, !tbaa !2
  %cmp68 = icmp slt i32 %27, %sub55
  %cmp70 = icmp slt i32 %27, 0
  %or.cond130 = or i1 %cmp68, %cmp70
  br i1 %or.cond130, label %while.cond, label %if.end73

if.end73:                                         ; preds = %while.body, %if.then65
  call void @make(%struct.move_s* %arrayidx51, i32 %25) #5
  %call78 = call i32 @qsearch(i32 %sub75, i32 %sub76, i32 %sub77) #6
  %sub79 = sub nsw i32 0, %call78
  %cmp80 = icmp eq i32 %sub79, -50000
  call void @unmake(%struct.move_s* %arrayidx51, i32 %25) #5
  %cmp89 = icmp sge i32 %alpha.addr.1.ph.ph, %sub79
  %or.cond169 = or i1 %cmp89, %cmp80
  br i1 %or.cond169, label %while.cond, label %if.then92

if.then92:                                        ; preds = %if.end73
  store i32 %25, i32* %best, align 4, !tbaa !2
  %cmp93 = icmp slt i32 %sub79, %beta
  br i1 %cmp93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.then92
  call void @QStoreTT(i32 %sub79, i32 %alpha, i32 %beta, i32 %25) #5
  br label %cleanup

if.end95:                                         ; preds = %if.then92
  %28 = load i32* @ply, align 4, !tbaa !2
  %idxprom96 = sext i32 %28 to i64
  %arrayidx99 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom96, i64 %idxprom96
  %arrayidx101 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom62
  %29 = bitcast %struct.move_s* %arrayidx99 to i8*
  %30 = bitcast %struct.move_s* %arrayidx101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 24, i32 4, i1 false), !tbaa.struct !4
  %j.0171 = add i32 %28, 1
  %idxprom104173 = sext i32 %j.0171 to i64
  %arrayidx105174 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom104173
  %31 = load i32* %arrayidx105174, align 4, !tbaa !2
  %cmp106175 = icmp slt i32 %j.0171, %31
  br i1 %cmp106175, label %for.body, label %for.end

for.body:                                         ; preds = %if.end95, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom104173, %if.end95 ]
  %j.0176 = phi i32 [ %j.0, %for.body ], [ %j.0171, %if.end95 ]
  %arrayidx110 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom96, i64 %indvars.iv
  %arrayidx115 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom104173, i64 %indvars.iv
  %32 = bitcast %struct.move_s* %arrayidx110 to i8*
  %33 = bitcast %struct.move_s* %arrayidx115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 4, i1 false), !tbaa.struct !4
  %j.0 = add nsw i32 %j.0176, 1
  %cmp106 = icmp slt i32 %j.0, %31
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp106, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end95
  %arrayidx121 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom96
  store i32 %31, i32* %arrayidx121, align 4, !tbaa !2
  br label %while.cond.outer.outer

while.end:                                        ; preds = %while.cond
  %34 = load i32* %best, align 4, !tbaa !2
  call void @QStoreTT(i32 %alpha.addr.1.ph.ph, i32 %alpha, i32 %beta, i32 %34) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else46, %sw.bb38, %sw.bb34, %while.end, %if.then94, %if.then45, %sw.bb, %if.then29, %if.else23, %if.then2
  %retval.0 = phi i32 [ %call30, %if.then29 ], [ %call43, %if.then45 ], [ %sub79, %if.then94 ], [ %alpha.addr.1.ph.ph, %while.end ], [ %19, %sw.bb ], [ 0, %if.then2 ], [ 0, %if.else23 ], [ %20, %sw.bb34 ], [ %21, %sw.bb38 ], [ 50000, %if.else46 ]
  call void @llvm.lifetime.end(i64 2048, i8* %2) #2
  call void @llvm.lifetime.end(i64 2048, i8* %1) #2
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @interrupt() #1

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #1

; Function Attrs: optsize
declare i64 @rtime() #1

; Function Attrs: optsize
declare i32 @allocate_time() #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare i32 @eval(i32, i32) #1

; Function Attrs: optsize
declare i32 @QProbeTT(i32*, i32*) #1

; Function Attrs: optsize
declare void @QStoreTT(i32, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @remove_one(i32* nocapture %marker, i32* nocapture %move_ordering, i32 %num_moves) #0 {
entry:
  store i32 -1000000, i32* %marker, align 4, !tbaa !2
  %cmp17 = icmp sgt i32 %num_moves, 0
  br i1 %cmp17, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.inc
  %0 = phi i32 [ %4, %for.inc ], [ -1000000, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %best.019 = phi i32 [ %best.1, %for.inc ], [ -1000000, %entry ]
  %arrayidx = getelementptr inbounds i32* %move_ordering, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !2
  %cmp1 = icmp sgt i32 %1, %best.019
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  store i32 %2, i32* %marker, align 4, !tbaa !2
  %3 = load i32* %arrayidx, align 4, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %4 = phi i32 [ %2, %if.then ], [ %0, %for.body ]
  %best.1 = phi i32 [ %3, %if.then ], [ %best.019, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp4 = icmp sgt i32 %4, -1000000
  br i1 %cmp4, label %if.then5, label %return

if.then5:                                         ; preds = %for.end
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds i32* %move_ordering, i64 %idxprom6
  store i32 -1000000, i32* %arrayidx7, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %entry, %for.end, %if.then5
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

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
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %1 = bitcast [512 x i32]* %move_ordering to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %1) #2
  %2 = bitcast [512 x i32]* %see_values to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #2
  %3 = load i32* @nodes, align 4, !tbaa !2
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @nodes, align 4, !tbaa !2
  %and = and i32 %inc, 65535
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %call = call i32 @interrupt() #5
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @time_exit, align 4, !tbaa !0
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call3 = call i64 @rtime() #5
  %4 = load i64* @start_time, align 8, !tbaa !3
  %call4 = call i32 @rdifftime(i64 %call3, i64 %4) #5
  %5 = load i32* @time_for_move, align 4, !tbaa !2
  %cmp = icmp sge i32 %call4, %5
  %6 = load i32* @i_depth, align 4, !tbaa !2
  %cmp5 = icmp sgt i32 %6, 1
  %or.cond = and i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then6, label %if.end26

if.then6:                                         ; preds = %if.else
  %7 = load i32* @failed, align 4, !tbaa !2
  %cmp7 = icmp ne i32 %7, 1
  %8 = load i32* @extendedtime, align 4, !tbaa !2
  %tobool9 = icmp ne i32 %8, 0
  %or.cond835 = or i1 %cmp7, %tobool9
  %9 = load i32* @fixed_time, align 4, !tbaa !2
  %tobool11 = icmp ne i32 %9, 0
  %or.cond836 = or i1 %or.cond835, %tobool11
  %10 = load i32* @go_fast, align 4, !tbaa !0
  %tobool13 = icmp ne i32 %10, 0
  %or.cond837 = or i1 %or.cond836, %tobool13
  %or.cond837.not = xor i1 %or.cond837, true
  %11 = load i32* @Variant, align 4, !tbaa !2
  %cmp15 = icmp ne i32 %11, 1
  %or.cond838 = and i1 %cmp15, %or.cond837.not
  br i1 %or.cond838, label %land.lhs.true16, label %if.else23

land.lhs.true16:                                  ; preds = %if.then6
  %12 = load i32* @time_left, align 4, !tbaa !2
  %mul = shl nsw i32 %5, 2
  %cmp17 = icmp sgt i32 %mul, 1000
  %mul. = select i1 %cmp17, i32 %mul, i32 1000
  %cmp19 = icmp sgt i32 %12, %mul.
  br i1 %cmp19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %land.lhs.true16
  store i32 1, i32* @extendedtime, align 4, !tbaa !2
  %call21 = call i32 @allocate_time() #5
  %13 = load i32* @time_for_move, align 4, !tbaa !2
  %add = add nsw i32 %13, %call21
  store i32 %add, i32* @time_for_move, align 4, !tbaa !2
  %14 = load i32* @time_left, align 4, !tbaa !2
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %add, i32 %14) #5
  br label %if.end26

if.else23:                                        ; preds = %if.then6, %land.lhs.true16
  store i32 1, i32* @time_exit, align 4, !tbaa !0
  br label %cleanup

if.end26:                                         ; preds = %entry, %if.then20, %if.else
  store i32 0, i32* %threat, align 4, !tbaa !2
  %15 = load i32* @ply, align 4, !tbaa !2
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom
  store i32 %15, i32* %arrayidx, align 4, !tbaa !2
  %call27 = call i32 @is_draw() #5
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.end26
  %16 = load i32* @ply, align 4, !tbaa !2
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom31
  %17 = load i32* %arrayidx32, align 4, !tbaa !0
  %arrayidx34 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom31
  store i32 0, i32* %arrayidx34, align 4, !tbaa !0
  %arrayidx36 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom31
  store i32 0, i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp sgt i32 %16, 299
  %tobool39 = icmp eq i32 %17, 0
  %or.cond1004 = or i1 %cmp37, %tobool39
  br i1 %or.cond1004, label %if.else48, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end30
  %18 = load i32* @i_depth, align 4, !tbaa !2
  %mul41 = shl nsw i32 %18, 1
  %cmp42 = icmp sle i32 %16, %mul41
  %cmp43 = icmp eq i32 %depth, 0
  %or.cond1005 = or i1 %cmp42, %cmp43
  br i1 %or.cond1005, label %if.then44, label %if.else48

if.then44:                                        ; preds = %land.lhs.true40
  %inc45 = add nsw i32 %depth, 1
  %19 = load i32* @ext_check, align 4, !tbaa !2
  %inc46 = add i32 %19, 1
  store i32 %inc46, i32* @ext_check, align 4, !tbaa !2
  br label %if.end87

if.else48:                                        ; preds = %land.lhs.true40, %if.end30
  %.off = add i32 %16, -3
  %20 = icmp ult i32 %.off, 297
  br i1 %20, label %land.lhs.true52, label %if.end87

land.lhs.true52:                                  ; preds = %if.else48
  %21 = load i32* @i_depth, align 4, !tbaa !2
  %mul53 = shl nsw i32 %21, 1
  %cmp54 = icmp sgt i32 %16, %mul53
  br i1 %cmp54, label %if.end87, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %sub = add nsw i32 %16, -2
  %idxprom56 = sext i32 %sub to i64
  %arrayidx57 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom56
  %22 = load i32* %arrayidx57, align 4, !tbaa !0
  %tobool58 = icmp eq i32 %22, 0
  %23 = load i32* @cfg_recap, align 4, !tbaa !2
  %tobool60 = icmp ne i32 %23, 0
  %or.cond840 = and i1 %tobool58, %tobool60
  br i1 %or.cond840, label %land.lhs.true61, label %if.end87

land.lhs.true61:                                  ; preds = %land.lhs.true55
  %sub62 = add nsw i32 %16, -1
  %idxprom63 = sext i32 %sub62 to i64
  %captured = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom63, i32 2
  %24 = load i32* %captured, align 4, !tbaa !2
  %cmp65 = icmp eq i32 %24, 13
  br i1 %cmp65, label %if.end87, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %idxprom71 = sext i32 %24 to i64
  %arrayidx72 = getelementptr inbounds [14 x i32]* @search.rc_index, i64 0, i64 %idxprom71
  %25 = load i32* %arrayidx72, align 4, !tbaa !2
  %captured76 = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom56, i32 2
  %26 = load i32* %captured76, align 4, !tbaa !2
  %idxprom77 = sext i32 %26 to i64
  %arrayidx78 = getelementptr inbounds [14 x i32]* @search.rc_index, i64 0, i64 %idxprom77
  %27 = load i32* %arrayidx78, align 4, !tbaa !2
  %cmp79 = icmp eq i32 %25, %27
  br i1 %cmp79, label %if.then80, label %if.end87

if.then80:                                        ; preds = %land.lhs.true66
  %inc81 = add nsw i32 %depth, 1
  %28 = load i32* @ext_recap, align 4, !tbaa !2
  %inc82 = add i32 %28, 1
  store i32 %inc82, i32* @ext_recap, align 4, !tbaa !2
  store i32 1, i32* %arrayidx36, align 4, !tbaa !0
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true61, %land.lhs.true52, %if.else48, %land.lhs.true66, %if.then80, %land.lhs.true55, %if.then44
  %extend.0 = phi i32 [ 1, %if.then44 ], [ 1, %if.then80 ], [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true61 ], [ 0, %land.lhs.true55 ], [ 0, %land.lhs.true52 ], [ 0, %if.else48 ]
  %depth.addr.0 = phi i32 [ %inc45, %if.then44 ], [ %inc81, %if.then80 ], [ %depth, %land.lhs.true66 ], [ %depth, %land.lhs.true61 ], [ %depth, %land.lhs.true55 ], [ %depth, %land.lhs.true52 ], [ %depth, %if.else48 ]
  %cmp88 = icmp slt i32 %depth.addr.0, 1
  %or.cond841 = or i1 %cmp88, %cmp37
  br i1 %or.cond841, label %if.then91, label %if.end120

if.then91:                                        ; preds = %if.end87
  %29 = load i32* @Variant, align 4, !tbaa !2
  %.off1001 = add i32 %29, -3
  %30 = icmp ugt i32 %.off1001, 1
  br i1 %30, label %if.then95, label %if.else98

if.then95:                                        ; preds = %if.then91
  store i32 1, i32* @captures, align 4, !tbaa !0
  %sub96 = sub nsw i32 300, %16
  %call97 = call i32 @qsearch(i32 %alpha, i32 %beta, i32 %sub96) #6
  store i32 0, i32* @captures, align 4, !tbaa !0
  br label %cleanup

if.else98:                                        ; preds = %if.then91
  switch i32 %29, label %if.end120 [
    i32 3, label %if.then100
    i32 4, label %if.then104
  ]

if.then100:                                       ; preds = %if.else98
  %call101 = call i32 @suicide_eval() #5
  br label %cleanup

if.then104:                                       ; preds = %if.else98
  %call105 = call i32 @losers_eval() #5
  store i32 %call105, i32* %i, align 4, !tbaa !2
  %ispos1002 = icmp sgt i32 %call105, -1
  %neg1003 = sub i32 0, %call105
  %31 = select i1 %ispos1002, i32 %call105, i32 %neg1003
  %cmp107 = icmp eq i32 %31, 1000000
  br i1 %cmp107, label %if.then108, label %cleanup

if.then108:                                       ; preds = %if.then104
  %cmp109 = icmp sgt i32 %call105, 0
  %32 = load i32* @ply, align 4, !tbaa !2
  %sub111 = sub nsw i32 1000000, %32
  %add113 = add nsw i32 %32, -1000000
  %cond115 = select i1 %cmp109, i32 %sub111, i32 %add113
  br label %cleanup

if.end120:                                        ; preds = %if.else98, %if.end87
  %call121 = call i32 @ProbeTT(i32* %bound, i32 %beta, i32* %best, i32* %threat, i32* %donull, i32 %depth.addr.0) #5
  switch i32 %call121, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb122
    i32 2, label %sw.bb126
    i32 4, label %sw.epilog.thread
  ]

sw.bb:                                            ; preds = %if.end120
  %33 = load i32* %bound, align 4, !tbaa !2
  br label %cleanup

sw.bb122:                                         ; preds = %if.end120
  %34 = load i32* %bound, align 4, !tbaa !2
  %cmp123 = icmp sgt i32 %34, %alpha
  br i1 %cmp123, label %sw.epilog, label %cleanup

sw.bb126:                                         ; preds = %if.end120
  %35 = load i32* %bound, align 4, !tbaa !2
  %cmp127 = icmp slt i32 %35, %beta
  br i1 %cmp127, label %sw.epilog, label %cleanup

sw.epilog.thread:                                 ; preds = %if.end120
  store i32 -1, i32* %best, align 4, !tbaa !2
  store i32 0, i32* %threat, align 4, !tbaa !2
  br label %if.end133

sw.epilog:                                        ; preds = %sw.bb122, %sw.bb126, %if.end120
  %.pr = load i32* %best, align 4, !tbaa !2
  %cmp131 = icmp eq i32 %.pr, 500
  br i1 %cmp131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %sw.epilog
  store i32 -1, i32* %best, align 4, !tbaa !2
  br label %if.end133

if.end133:                                        ; preds = %sw.epilog.thread, %if.then132, %sw.epilog
  %36 = load i32* @ep_square, align 4, !tbaa !2
  %37 = load i32* @Variant, align 4, !tbaa !2
  %cmp134 = icmp eq i32 %37, 4
  br i1 %cmp134, label %if.then135, label %if.end166

if.then135:                                       ; preds = %if.end133
  %call136 = call i32 @losers_eval() #5
  store i32 %call136, i32* %i, align 4, !tbaa !2
  %ispos998 = icmp sgt i32 %call136, -1
  %neg999 = sub i32 0, %call136
  %38 = select i1 %ispos998, i32 %call136, i32 %neg999
  %cmp138 = icmp eq i32 %38, 1000000
  br i1 %cmp138, label %if.then139, label %if.end147

if.then139:                                       ; preds = %if.then135
  %cmp140 = icmp sgt i32 %call136, 0
  %39 = load i32* @ply, align 4, !tbaa !2
  %40 = sub i32 0, %39
  %cond146.p = select i1 %cmp140, i32 %40, i32 %39
  %cond146 = add i32 %cond146.p, %call136
  br label %cleanup

if.end147:                                        ; preds = %if.then135
  store i32 1, i32* @captures, align 4, !tbaa !0
  %arrayidx148 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx148) #5
  %41 = load i32* @numb_moves, align 4, !tbaa !2
  store i32 0, i32* @captures, align 4, !tbaa !0
  %tobool149 = icmp eq i32 %41, 0
  br i1 %tobool149, label %if.then163, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end147
  store i32 0, i32* %i, align 4, !tbaa !2
  %cmp1511068 = icmp sgt i32 %41, 0
  br i1 %cmp1511068, label %for.body, label %if.then163

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %legalmoves.01070 = phi i32 [ %legalmoves.0.inc157, %for.body ], [ 0, %for.cond.preheader ]
  %storemerge10001069 = phi i32 [ %inc160, %for.body ], [ 0, %for.cond.preheader ]
  call void @make(%struct.move_s* %arrayidx148, i32 %storemerge10001069) #5
  %42 = load i32* %i, align 4, !tbaa !2
  %call154 = call i32 @check_legal(%struct.move_s* %arrayidx148, i32 %42, i32 %17) #5
  %not.tobool155 = icmp ne i32 %call154, 0
  %inc157 = zext i1 %not.tobool155 to i32
  %legalmoves.0.inc157 = add nsw i32 %inc157, %legalmoves.01070
  %43 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx148, i32 %43) #5
  %44 = load i32* %i, align 4, !tbaa !2
  %inc160 = add nsw i32 %44, 1
  store i32 %inc160, i32* %i, align 4, !tbaa !2
  %cmp151 = icmp slt i32 %inc160, %41
  br i1 %cmp151, label %for.body, label %if.end161

if.end161:                                        ; preds = %for.body
  %phitmp1072 = icmp eq i32 %legalmoves.0.inc157, 0
  br i1 %phitmp1072, label %if.then163, label %if.end166

if.then163:                                       ; preds = %for.cond.preheader, %if.end147, %if.end161
  store i32 0, i32* @captures, align 4, !tbaa !0
  call void @gen(%struct.move_s* %arrayidx148) #5
  %45 = load i32* @numb_moves, align 4, !tbaa !2
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end161, %if.end133
  %num_moves.1 = phi i32 [ 0, %if.end133 ], [ %41, %if.end161 ], [ %45, %if.then163 ]
  %cmp167 = icmp eq i32 %is_null, 0
  br i1 %cmp167, label %land.lhs.true168, label %if.else242thread-pre-split

land.lhs.true168:                                 ; preds = %if.end166
  %46 = load i32* @phase, align 4, !tbaa !2
  %cmp169 = icmp ne i32 %46, 2
  %cmp173 = icmp slt i32 %depth.addr.0, 7
  %or.cond1006 = or i1 %cmp169, %cmp173
  %or.cond1007 = and i1 %or.cond1006, %tobool39
  br i1 %or.cond1007, label %land.lhs.true176, label %if.else242thread-pre-split

land.lhs.true176:                                 ; preds = %land.lhs.true168
  %47 = load i32* %donull, align 4, !tbaa !2
  %tobool177 = icmp eq i32 %47, 0
  %48 = load i32* @searching_pv, align 4, !tbaa !0
  %tobool179 = icmp ne i32 %48, 0
  %or.cond843 = or i1 %tobool177, %tobool179
  br i1 %or.cond843, label %if.else242thread-pre-split, label %land.lhs.true180

land.lhs.true180:                                 ; preds = %land.lhs.true176
  %49 = load i32* %threat, align 4, !tbaa !2
  %cmp181 = icmp eq i32 %49, 0
  br i1 %cmp181, label %land.lhs.true182, label %if.else242

land.lhs.true182:                                 ; preds = %land.lhs.true180
  %50 = load i32* @Variant, align 4, !tbaa !2
  %.off997 = add i32 %50, -3
  %51 = icmp ugt i32 %.off997, 1
  br i1 %51, label %if.then192, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %land.lhs.true182
  %cmp187 = icmp eq i32 %50, 4
  br i1 %cmp187, label %land.lhs.true188, label %if.else242thread-pre-split

land.lhs.true188:                                 ; preds = %lor.lhs.false186
  %captured190 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, i32 2
  %52 = load i32* %captured190, align 8, !tbaa !2
  %cmp191 = icmp eq i32 %52, 13
  br i1 %cmp191, label %if.then192, label %if.else242thread-pre-split

if.then192:                                       ; preds = %land.lhs.true182, %land.lhs.true188
  store i32 0, i32* @ep_square, align 4, !tbaa !2
  %53 = load i32* @white_to_move, align 4, !tbaa !2
  %xor = xor i32 %53, 1
  store i32 %xor, i32* @white_to_move, align 4, !tbaa !2
  %54 = load i32* @ply, align 4, !tbaa !2
  %inc193 = add nsw i32 %54, 1
  store i32 %inc193, i32* @ply, align 4, !tbaa !2
  %55 = load i32* @fifty, align 4, !tbaa !2
  %inc194 = add nsw i32 %55, 1
  store i32 %inc194, i32* @fifty, align 4, !tbaa !2
  %56 = load i32* @hash, align 4, !tbaa !2
  %xor195 = xor i32 %56, -559038737
  store i32 %xor195, i32* @hash, align 4, !tbaa !2
  %sub200 = sub nsw i32 0, %beta
  %add202 = sub i32 1, %beta
  switch i32 %50, label %if.then199 [
    i32 4, label %if.else214
    i32 2, label %if.else214
  ]

if.then199:                                       ; preds = %if.then192
  %cmp203 = icmp sgt i32 %depth.addr.0, 3
  %sub205.sink.v = select i1 %cmp203, i32 -2, i32 -1
  %sub205.sink = add i32 %depth.addr.0, -1
  %sub206 = add i32 %sub205.sink, %sub205.sink.v
  %call212 = call i32 @search(i32 %sub200, i32 %add202, i32 %sub206, i32 1) #6
  br label %if.end222

if.else214:                                       ; preds = %if.then192, %if.then192
  %sub219 = add nsw i32 %depth.addr.0, -4
  %call220 = call i32 @search(i32 %sub200, i32 %add202, i32 %sub219, i32 1) #6
  br label %if.end222

if.end222:                                        ; preds = %if.else214, %if.then199
  %call212.pn = phi i32 [ %call212, %if.then199 ], [ %call220, %if.else214 ]
  %score.0 = sub nsw i32 0, %call212.pn
  %57 = load i32* @hash, align 4, !tbaa !2
  %xor223 = xor i32 %57, -559038737
  store i32 %xor223, i32* @hash, align 4, !tbaa !2
  %58 = load i32* @fifty, align 4, !tbaa !2
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* @fifty, align 4, !tbaa !2
  %59 = load i32* @ply, align 4, !tbaa !2
  %dec224 = add nsw i32 %59, -1
  store i32 %dec224, i32* @ply, align 4, !tbaa !2
  %60 = load i32* @white_to_move, align 4, !tbaa !2
  %xor225 = xor i32 %60, 1
  store i32 %xor225, i32* @white_to_move, align 4, !tbaa !2
  store i32 %36, i32* @ep_square, align 4, !tbaa !2
  %61 = load i32* @time_exit, align 4, !tbaa !0
  %tobool226 = icmp eq i32 %61, 0
  br i1 %tobool226, label %if.end228, label %cleanup

if.end228:                                        ; preds = %if.end222
  %62 = load i32* @NTries, align 4, !tbaa !2
  %inc229 = add i32 %62, 1
  store i32 %inc229, i32* @NTries, align 4, !tbaa !2
  %cmp230 = icmp slt i32 %score.0, %beta
  br i1 %cmp230, label %if.else233, label %if.then231

if.then231:                                       ; preds = %if.end228
  %63 = load i32* @NCuts, align 4, !tbaa !2
  %inc232 = add i32 %63, 1
  store i32 %inc232, i32* @NCuts, align 4, !tbaa !2
  call void @StoreTT(i32 %score.0, i32 %alpha, i32 %beta, i32 500, i32 0, i32 %depth.addr.0) #5
  br label %cleanup

if.else233:                                       ; preds = %if.end228
  %cmp234 = icmp slt i32 %score.0, -999900
  br i1 %cmp234, label %if.then235, label %if.end250

if.then235:                                       ; preds = %if.else233
  store i32 1, i32* %threat, align 4, !tbaa !2
  %64 = load i32* @TExt, align 4, !tbaa !2
  %inc236 = add i32 %64, 1
  store i32 %inc236, i32* @TExt, align 4, !tbaa !2
  %inc237 = add nsw i32 %depth.addr.0, 1
  %inc238 = add nsw i32 %extend.0, 1
  %65 = load i32* @ext_onerep, align 4, !tbaa !2
  %inc239 = add i32 %65, 1
  store i32 %inc239, i32* @ext_onerep, align 4, !tbaa !2
  br label %if.end250

if.else242thread-pre-split:                       ; preds = %land.lhs.true176, %land.lhs.true168, %if.end166, %lor.lhs.false186, %land.lhs.true188
  %.pr1029 = load i32* %threat, align 4, !tbaa !2
  br label %if.else242

if.else242:                                       ; preds = %if.else242thread-pre-split, %land.lhs.true180
  %66 = phi i32 [ %.pr1029, %if.else242thread-pre-split ], [ %49, %land.lhs.true180 ]
  %cmp243 = icmp eq i32 %66, 1
  br i1 %cmp243, label %if.then244, label %if.end250

if.then244:                                       ; preds = %if.else242
  %67 = load i32* @TExt, align 4, !tbaa !2
  %inc245 = add i32 %67, 1
  store i32 %inc245, i32* @TExt, align 4, !tbaa !2
  %inc246 = add nsw i32 %depth.addr.0, 1
  %inc247 = add nsw i32 %extend.0, 1
  %68 = load i32* @ext_onerep, align 4, !tbaa !2
  %inc248 = add i32 %68, 1
  store i32 %inc248, i32* @ext_onerep, align 4, !tbaa !2
  br label %if.end250

if.end250:                                        ; preds = %if.else242, %if.else233, %if.then244, %if.then235
  %extend.1 = phi i32 [ %inc247, %if.then244 ], [ %inc238, %if.then235 ], [ %extend.0, %if.else233 ], [ %extend.0, %if.else242 ]
  %depth.addr.1 = phi i32 [ %inc246, %if.then244 ], [ %inc237, %if.then235 ], [ %depth.addr.0, %if.else233 ], [ %depth.addr.0, %if.else242 ]
  %69 = load i32* @Variant, align 4, !tbaa !2
  %cmp251 = icmp eq i32 %69, 4
  br i1 %cmp251, label %if.end254, label %if.then252

if.then252:                                       ; preds = %if.end250
  %arrayidx253 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx253) #5
  %70 = load i32* @numb_moves, align 4, !tbaa !2
  br label %if.end254

if.end254:                                        ; preds = %if.end250, %if.then252
  %num_moves.2 = phi i32 [ %70, %if.then252 ], [ %num_moves.1, %if.end250 ]
  %71 = load i32* @cfg_onerep, align 4, !tbaa !2
  %tobool255 = icmp eq i32 %71, 0
  %or.cond1008 = or i1 %tobool255, %tobool39
  %tobool259 = icmp eq i32 %num_moves.2, 0
  %or.cond1009 = or i1 %or.cond1008, %tobool259
  br i1 %or.cond1009, label %if.end277, label %for.cond261.preheader

for.cond261.preheader:                            ; preds = %if.end254
  store i32 0, i32* %i, align 4, !tbaa !2
  %cmp2621064 = icmp sgt i32 %num_moves.2, 0
  br i1 %cmp2621064, label %for.body264.lr.ph, label %if.end277

for.body264.lr.ph:                                ; preds = %for.cond261.preheader
  %arrayidx265 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  br label %for.body264

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %legalmoves.41066 = phi i32 [ 0, %for.body264.lr.ph ], [ %legalmoves.4.inc270, %for.body264 ]
  %storemerge1065 = phi i32 [ 0, %for.body264.lr.ph ], [ %inc274, %for.body264 ]
  call void @make(%struct.move_s* %arrayidx265, i32 %storemerge1065) #5
  %72 = load i32* %i, align 4, !tbaa !2
  %call267 = call i32 @check_legal(%struct.move_s* %arrayidx265, i32 %72, i32 %17) #5
  %not.tobool268 = icmp ne i32 %call267, 0
  %inc270 = zext i1 %not.tobool268 to i32
  %legalmoves.4.inc270 = add nsw i32 %inc270, %legalmoves.41066
  %73 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx265, i32 %73) #5
  %74 = load i32* %i, align 4, !tbaa !2
  %inc274 = add nsw i32 %74, 1
  store i32 %inc274, i32* %i, align 4, !tbaa !2
  %cmp262 = icmp slt i32 %inc274, %num_moves.2
  %cmp263 = icmp slt i32 %legalmoves.4.inc270, 2
  %or.cond1010 = and i1 %cmp262, %cmp263
  br i1 %or.cond1010, label %for.body264, label %if.end277

if.end277:                                        ; preds = %for.cond261.preheader, %for.body264, %if.end254
  %legalmoves.6 = phi i32 [ 0, %if.end254 ], [ 0, %for.cond261.preheader ], [ %legalmoves.4.inc270, %for.body264 ]
  %75 = load i32* @ply, align 4, !tbaa !2
  %cmp278 = icmp slt i32 %75, 300
  %76 = load i32* @Variant, align 4, !tbaa !2
  br i1 %cmp278, label %if.then279, label %if.end302

if.then279:                                       ; preds = %if.end277
  %cmp280 = icmp eq i32 %76, 3
  %cmp282 = icmp eq i32 %num_moves.2, 1
  %or.cond1011 = and i1 %cmp280, %cmp282
  br i1 %or.cond1011, label %if.then283, label %if.else288

if.then283:                                       ; preds = %if.then279
  %inc284 = add nsw i32 %depth.addr.1, 1
  %77 = load i32* @ext_onerep, align 4, !tbaa !2
  %inc285 = add i32 %77, 1
  store i32 %inc285, i32* @ext_onerep, align 4, !tbaa !2
  %idxprom286 = sext i32 %75 to i64
  %arrayidx287 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom286
  store i32 1, i32* %arrayidx287, align 4, !tbaa !0
  br label %if.end302

if.else288:                                       ; preds = %if.then279
  %cmp289 = icmp eq i32 %legalmoves.6, 1
  br i1 %cmp289, label %land.lhs.true290, label %if.end302

land.lhs.true290:                                 ; preds = %if.else288
  %sub291 = add nsw i32 %75, -2
  %idxprom292 = sext i32 %sub291 to i64
  %arrayidx293 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom292
  %78 = load i32* %arrayidx293, align 4, !tbaa !0
  %tobool294 = icmp eq i32 %78, 0
  br i1 %tobool294, label %if.then295, label %if.end302

if.then295:                                       ; preds = %land.lhs.true290
  %inc296 = add nsw i32 %depth.addr.1, 1
  %79 = load i32* @ext_onerep, align 4, !tbaa !2
  %inc297 = add i32 %79, 1
  store i32 %inc297, i32* @ext_onerep, align 4, !tbaa !2
  %idxprom298 = sext i32 %75 to i64
  %arrayidx299 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom298
  store i32 1, i32* %arrayidx299, align 4, !tbaa !0
  br label %if.end302

if.end302:                                        ; preds = %if.end277, %land.lhs.true290, %if.else288, %if.then283, %if.then295
  %80 = phi i32 [ 3, %if.then283 ], [ %76, %if.then295 ], [ %76, %if.else288 ], [ %76, %land.lhs.true290 ], [ %76, %if.end277 ]
  %depth.addr.2 = phi i32 [ %inc284, %if.then283 ], [ %inc296, %if.then295 ], [ %depth.addr.1, %if.else288 ], [ %depth.addr.1, %land.lhs.true290 ], [ %depth.addr.1, %if.end277 ]
  %81 = load i32* @phase, align 4, !tbaa !2
  %cmp303 = icmp ne i32 %81, 2
  %cmp305 = icmp ne i32 %80, 3
  %or.cond846 = and i1 %cmp303, %cmp305
  %82 = load i32* @cfg_futprune, align 4, !tbaa !2
  %tobool307 = icmp ne i32 %82, 0
  %or.cond847 = and i1 %or.cond846, %tobool307
  br i1 %or.cond847, label %if.then308, label %if.end353

if.then308:                                       ; preds = %if.end302
  %83 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool309 = icmp ne i32 %83, 0
  %84 = load i32* @Material, align 4, !tbaa !2
  %sub312 = sub nsw i32 0, %84
  %cond314 = select i1 %tobool309, i32 %84, i32 %sub312
  %add315 = add nsw i32 %cond314, 900
  %tobool316.not = icmp eq i32 %extend.1, 0
  %cmp318 = icmp eq i32 %depth.addr.2, 3
  %or.cond1012 = and i1 %tobool316.not, %cmp318
  %or.cond1012.not = xor i1 %or.cond1012, true
  %cmp320 = icmp sgt i32 %add315, %alpha
  %or.cond1013 = or i1 %cmp320, %or.cond1012.not
  %depth.addr.3 = select i1 %or.cond1013, i32 %depth.addr.2, i32 2
  %add329 = add nsw i32 %cond314, 500
  %cmp332 = icmp eq i32 %depth.addr.3, 2
  %or.cond1015 = and i1 %tobool316.not, %cmp332
  %or.cond1015.not = xor i1 %or.cond1015, true
  %cmp334 = icmp sgt i32 %add329, %alpha
  %or.cond1016 = or i1 %cmp334, %or.cond1015.not
  %best_score.0 = select i1 %or.cond1016, i32 -1000000, i32 %add329
  %85 = zext i1 %or.cond1016 to i32
  %selective.0 = xor i32 %85, 1
  %cmp343 = icmp eq i32 %80, 2
  %cond344 = select i1 %cmp343, i32 150, i32 200
  %add345 = add nsw i32 %cond314, %cond344
  %cmp348 = icmp eq i32 %depth.addr.3, 1
  %or.cond1018 = and i1 %tobool316.not, %cmp348
  %or.cond1018.not = xor i1 %or.cond1018, true
  %cmp350 = icmp sgt i32 %add345, %alpha
  %or.cond1019 = or i1 %cmp350, %or.cond1018.not
  %best_score.0.add345 = select i1 %or.cond1019, i32 %best_score.0, i32 %add345
  %selective.0. = select i1 %or.cond1019, i32 %selective.0, i32 1
  br label %if.end353

if.end353:                                        ; preds = %if.then308, %if.end302
  %best_score.1 = phi i32 [ -1000000, %if.end302 ], [ %best_score.0.add345, %if.then308 ]
  %selective.1 = phi i32 [ 0, %if.end302 ], [ %selective.0., %if.then308 ]
  %depth.addr.4 = phi i32 [ %depth.addr.2, %if.end302 ], [ %depth.addr.3, %if.then308 ]
  %cmp354 = icmp sgt i32 %num_moves.2, 0
  br i1 %cmp354, label %if.then355, label %if.else790

if.then355:                                       ; preds = %if.end353
  %arrayidx356 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  %arrayidx357 = getelementptr inbounds [512 x i32]* %move_ordering, i64 0, i64 0
  %arrayidx358 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 0
  %86 = load i32* %best, align 4, !tbaa !2
  call void @order_moves(%struct.move_s* %arrayidx356, i32* %arrayidx357, i32* %arrayidx358, i32 %num_moves.2, i32 %86) #6
  %call3601051 = call i32 @remove_one(i32* %i, i32* %arrayidx357, i32 %num_moves.2) #6
  %tobool3611052 = icmp eq i32 %call3601051, 0
  br i1 %tobool3611052, label %if.then795, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then355
  %cmp423 = icmp sgt i32 %depth.addr.4, 1
  %tobool484 = icmp eq i32 %selective.1, 0
  %sub512 = sub nsw i32 0, %beta
  %add514 = add i32 %depth.addr.4, -1
  %cmp441 = icmp eq i32 %depth.addr.4, 1
  %cmp388 = icmp slt i32 %depth.addr.4, 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end786
  %alpha.addr.01059 = phi i32 [ %alpha, %while.body.lr.ph ], [ %alpha.addr.1, %if.end786 ]
  %first.01058 = phi i32 [ 1, %while.body.lr.ph ], [ %first.0., %if.end786 ]
  %best_score.21056 = phi i32 [ %best_score.1, %while.body.lr.ph ], [ %best_score.6, %if.end786 ]
  %sbest.01055 = phi i32 [ -1, %while.body.lr.ph ], [ %sbest.1, %if.end786 ]
  %no_moves.01054 = phi i32 [ 1, %while.body.lr.ph ], [ %no_moves.1, %if.end786 ]
  %score.11053 = phi i32 [ -1000000, %while.body.lr.ph ], [ %score.4, %if.end786 ]
  %87 = load i32* %i, align 4, !tbaa !2
  call void @make(%struct.move_s* %arrayidx356, i32 %87) #5
  %88 = load i32* @hash, align 4, !tbaa !2
  %89 = load i32* @move_number, align 4, !tbaa !2
  %90 = load i32* @ply, align 4, !tbaa !2
  %add363 = add i32 %89, -1
  %sub364 = add i32 %add363, %90
  %idxprom365 = sext i32 %sub364 to i64
  %arrayidx366 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom365
  store i32 %88, i32* %arrayidx366, align 4, !tbaa !2
  %sub367 = add nsw i32 %90, -1
  %idxprom368 = sext i32 %sub367 to i64
  %arrayidx369 = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom368
  %91 = load i32* %i, align 4, !tbaa !2
  %idxprom370 = sext i32 %91 to i64
  %arrayidx371 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom370
  %92 = bitcast %struct.move_s* %arrayidx369 to i8*
  %93 = bitcast %struct.move_s* %arrayidx371 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 24, i32 4, i1 false), !tbaa.struct !4
  %call373 = call i32 @check_legal(%struct.move_s* %arrayidx356, i32 %91, i32 %17) #5
  %tobool374 = icmp eq i32 %call373, 0
  br i1 %tobool374, label %if.end561, label %if.then375

if.then375:                                       ; preds = %while.body
  %94 = load i32* %i, align 4, !tbaa !2
  %call377 = call i32 @f_in_check(%struct.move_s* %arrayidx356, i32 %94) #5
  %95 = load i32* @ply, align 4, !tbaa !2
  %idxprom378 = sext i32 %95 to i64
  %arrayidx379 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom378
  store i32 %call377, i32* %arrayidx379, align 4, !tbaa !0
  %tobool380 = icmp ne i32 %call377, 0
  br i1 %tobool380, label %if.end418, label %land.lhs.true381

land.lhs.true381:                                 ; preds = %if.then375
  %96 = load i32* @Variant, align 4, !tbaa !2
  %97 = and i32 %96, -2
  %98 = icmp eq i32 %97, 2
  %cmp386 = icmp eq i32 %96, 4
  %or.cond849 = or i1 %98, %cmp386
  %or.cond1020 = and i1 %or.cond849, %cmp388
  br i1 %or.cond1020, label %land.lhs.true389, label %if.end418

land.lhs.true389:                                 ; preds = %land.lhs.true381
  %99 = load i32* %i, align 4, !tbaa !2
  %idxprom390 = sext i32 %99 to i64
  %target = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom390, i32 1
  %100 = load i32* %target, align 4, !tbaa !2
  %idxprom392 = sext i32 %100 to i64
  %arrayidx393 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom392
  %101 = load i32* %arrayidx393, align 4, !tbaa !2
  switch i32 %101, label %if.end418 [
    i32 1, label %land.lhs.true395
    i32 2, label %land.lhs.true409
  ]

land.lhs.true395:                                 ; preds = %land.lhs.true389
  %arrayidx400 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom392
  %102 = load i32* %arrayidx400, align 4, !tbaa !2
  %cmp401 = icmp sgt i32 %102, 5
  br i1 %cmp401, label %if.then416, label %if.end418

land.lhs.true409:                                 ; preds = %land.lhs.true389
  %arrayidx414 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom392
  %103 = load i32* %arrayidx414, align 4, !tbaa !2
  %cmp415 = icmp slt i32 %103, 4
  br i1 %cmp415, label %if.then416, label %if.end418

if.then416:                                       ; preds = %land.lhs.true409, %land.lhs.true395
  br label %if.end418

if.end418:                                        ; preds = %land.lhs.true389, %land.lhs.true395, %land.lhs.true381, %if.then375, %if.then416, %land.lhs.true409
  %extend.2 = phi i32 [ 1, %if.then416 ], [ 0, %land.lhs.true409 ], [ 0, %if.then375 ], [ 0, %land.lhs.true381 ], [ 0, %land.lhs.true395 ], [ 0, %land.lhs.true389 ]
  %104 = load i32* %i, align 4, !tbaa !2
  %idxprom419 = sext i32 %104 to i64
  %from = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom419, i32 0
  %105 = load i32* %from, align 8, !tbaa !2
  %cmp421 = icmp eq i32 %105, 0
  %or.cond1021 = and i1 %cmp421, %cmp423
  %cmp425 = icmp eq i32 %call377, 0
  %or.cond1022 = and i1 %or.cond1021, %cmp425
  br i1 %or.cond1022, label %land.lhs.true426, label %if.else435

land.lhs.true426:                                 ; preds = %if.end418
  %106 = load i32* @searching_pv, align 4, !tbaa !0
  %107 = or i32 %106, %17
  %or.cond850.not = icmp eq i32 %107, 0
  %108 = load i32* @cfg_razordrop, align 4, !tbaa !2
  %tobool431 = icmp ne i32 %108, 0
  %or.cond851 = and i1 %or.cond850.not, %tobool431
  br i1 %or.cond851, label %if.then432, label %if.else435

if.then432:                                       ; preds = %land.lhs.true426
  %109 = load i32* @razor_drop, align 4, !tbaa !2
  %inc433 = add i32 %109, 1
  store i32 %inc433, i32* @razor_drop, align 4, !tbaa !2
  %dec434 = add nsw i32 %extend.2, -1
  br label %land.lhs.true483

if.else435:                                       ; preds = %land.lhs.true426, %if.end418
  %or.cond1023 = and i1 %cmp421, %cmp441
  br i1 %or.cond1023, label %land.lhs.true442, label %land.lhs.true483

land.lhs.true442:                                 ; preds = %if.else435
  %110 = load i32* @cfg_cutdrop, align 4, !tbaa !2
  %tobool445 = icmp ne i32 %110, 0
  %or.cond852 = and i1 %tobool39, %tobool445
  br i1 %or.cond852, label %if.then446, label %land.lhs.true483

if.then446:                                       ; preds = %land.lhs.true442
  %111 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool447 = icmp eq i32 %111, 0
  %target451 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom419, i32 1
  %112 = load i32* %target451, align 4, !tbaa !2
  br i1 %tobool447, label %if.else463, label %if.then448

if.then448:                                       ; preds = %if.then446
  %call452 = call i32 @calc_attackers(i32 %112, i32 1) #5
  %113 = load i32* %i, align 4, !tbaa !2
  %idxprom453 = sext i32 %113 to i64
  %target455 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom453, i32 1
  %114 = load i32* %target455, align 4, !tbaa !2
  %call456 = call i32 @calc_attackers(i32 %114, i32 0) #5
  %sub457 = sub nsw i32 %call452, %call456
  %cmp458 = icmp sgt i32 %sub457, 0
  %conv = zext i1 %cmp458 to i32
  br i1 %cmp458, label %if.then460, label %if.end481

if.then460:                                       ; preds = %if.then448
  %115 = load i32* @drop_cuts, align 4, !tbaa !2
  %inc461 = add i32 %115, 1
  store i32 %inc461, i32* @drop_cuts, align 4, !tbaa !2
  br label %if.end481

if.else463:                                       ; preds = %if.then446
  %call467 = call i32 @calc_attackers(i32 %112, i32 0) #5
  %116 = load i32* %i, align 4, !tbaa !2
  %idxprom468 = sext i32 %116 to i64
  %target470 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom468, i32 1
  %117 = load i32* %target470, align 4, !tbaa !2
  %call471 = call i32 @calc_attackers(i32 %117, i32 1) #5
  %sub472 = sub nsw i32 %call467, %call471
  %cmp473 = icmp sgt i32 %sub472, 0
  %conv474 = zext i1 %cmp473 to i32
  br i1 %cmp473, label %if.then476, label %if.end481

if.then476:                                       ; preds = %if.else463
  %118 = load i32* @drop_cuts, align 4, !tbaa !2
  %inc477 = add i32 %118, 1
  store i32 %inc477, i32* @drop_cuts, align 4, !tbaa !2
  br label %if.end481

if.end481:                                        ; preds = %if.else463, %if.then476, %if.then448, %if.then460
  %dropcut.0 = phi i32 [ %conv, %if.then460 ], [ %conv, %if.then448 ], [ %conv474, %if.then476 ], [ %conv474, %if.else463 ]
  %tobool482 = icmp eq i32 %dropcut.0, 0
  br i1 %tobool482, label %land.lhs.true483, label %if.else557

land.lhs.true483:                                 ; preds = %if.else435, %land.lhs.true442, %if.then432, %if.end481
  %extend.31031 = phi i32 [ %extend.2, %if.end481 ], [ %dec434, %if.then432 ], [ %extend.2, %land.lhs.true442 ], [ %extend.2, %if.else435 ]
  %brmerge = or i1 %tobool484, %tobool380
  br i1 %brmerge, label %if.then508, label %lor.lhs.false488

lor.lhs.false488:                                 ; preds = %land.lhs.true483
  %119 = load i32* %i, align 4, !tbaa !2
  %idxprom489 = sext i32 %119 to i64
  %captured491 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom489, i32 2
  %120 = load i32* %captured491, align 8, !tbaa !2
  %idxprom492 = sext i32 %120 to i64
  %arrayidx493 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom492
  %121 = load i32* %arrayidx493, align 4, !tbaa !2
  %ispos = icmp sgt i32 %121, -1
  %neg = sub i32 0, %121
  %122 = select i1 %ispos, i32 %121, i32 %neg
  %123 = load i32* @Variant, align 4, !tbaa !2
  %cmp495 = icmp eq i32 %123, 2
  br i1 %cmp495, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false488
  %cmp497 = icmp eq i32 %123, 4
  %phitmp = select i1 %cmp497, i32 1, i32 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false488
  %124 = phi i32 [ 1, %lor.lhs.false488 ], [ %phitmp, %lor.rhs ]
  %mul500 = mul nsw i32 %124, %122
  %add501 = add nsw i32 %mul500, %best_score.1
  %cmp502 = icmp sgt i32 %add501, %alpha.addr.01059
  br i1 %cmp502, label %if.then508, label %lor.lhs.false504

lor.lhs.false504:                                 ; preds = %lor.end
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom489, i32 3
  %125 = load i32* %promoted, align 4, !tbaa !2
  %tobool507 = icmp eq i32 %125, 0
  br i1 %tobool507, label %if.else557, label %if.then508

if.then508:                                       ; preds = %land.lhs.true483, %lor.lhs.false504, %lor.end
  %cmp509 = icmp eq i32 %first.01058, 1
  %sub513 = sub nsw i32 0, %alpha.addr.01059
  br i1 %cmp509, label %if.then511, label %if.else519

if.then511:                                       ; preds = %if.then508
  %sub515 = add i32 %add514, %extend.31031
  %call516 = call i32 @search(i32 %sub512, i32 %sub513, i32 %sub515, i32 0) #6
  %sub517 = sub nsw i32 0, %call516
  %126 = load i32* @FULL, align 4, !tbaa !2
  %inc518 = add i32 %126, 1
  store i32 %inc518, i32* @FULL, align 4, !tbaa !2
  br label %if.end561

if.else519:                                       ; preds = %if.then508
  %sub521 = xor i32 %alpha.addr.01059, -1
  %sub524 = add i32 %add514, %extend.31031
  %call525 = call i32 @search(i32 %sub521, i32 %sub513, i32 %sub524, i32 0) #6
  %sub526 = sub nsw i32 0, %call525
  %127 = load i32* @PVS, align 4, !tbaa !2
  %inc527 = add i32 %127, 1
  store i32 %inc527, i32* @PVS, align 4, !tbaa !2
  %128 = load i32* @time_exit, align 4, !tbaa !0
  %notlhs = icmp slt i32 %best_score.21056, %sub526
  %notrhs = icmp eq i32 %128, 0
  %or.cond853.not = and i1 %notrhs, %notlhs
  %cmp533 = icmp ne i32 %sub526, -50000
  %or.cond854 = and i1 %or.cond853.not, %cmp533
  br i1 %or.cond854, label %if.then535, label %if.end561

if.then535:                                       ; preds = %if.else519
  %cmp536 = icmp slt i32 %alpha.addr.01059, %sub526
  %cmp539 = icmp slt i32 %sub526, %beta
  %or.cond1024 = and i1 %cmp536, %cmp539
  br i1 %or.cond1024, label %if.then541, label %if.end561

if.then541:                                       ; preds = %if.then535
  %call546 = call i32 @search(i32 %sub512, i32 %sub513, i32 %sub524, i32 0) #6
  %sub547 = sub nsw i32 0, %call546
  %129 = load i32* @PVSF, align 4, !tbaa !2
  %inc548 = add i32 %129, 1
  store i32 %inc548, i32* @PVSF, align 4, !tbaa !2
  %cmp549 = icmp slt i32 %best_score.21056, %sub547
  %sub547.best_score.2 = select i1 %cmp549, i32 %sub547, i32 %best_score.21056
  br label %if.end561

if.else557:                                       ; preds = %lor.lhs.false504, %if.end481
  %130 = load i32* @razor_material, align 4, !tbaa !2
  %inc558 = add i32 %130, 1
  store i32 %inc558, i32* @razor_material, align 4, !tbaa !2
  br label %if.end561

if.end561:                                        ; preds = %if.else557, %if.then535, %if.else519, %if.then511, %if.then541, %while.body
  %score.4 = phi i32 [ %score.11053, %while.body ], [ %score.11053, %if.else557 ], [ %sub517, %if.then511 ], [ %sub526, %if.else519 ], [ %sub547, %if.then541 ], [ %sub526, %if.then535 ]
  %no_moves.1 = phi i32 [ %no_moves.01054, %while.body ], [ 0, %if.else557 ], [ 0, %if.then511 ], [ 0, %if.else519 ], [ 0, %if.then541 ], [ 0, %if.then535 ]
  %legal_move.1 = phi i1 [ true, %while.body ], [ true, %if.else557 ], [ false, %if.then511 ], [ false, %if.else519 ], [ false, %if.then541 ], [ false, %if.then535 ]
  %best_score.5 = phi i32 [ %best_score.21056, %while.body ], [ %best_score.21056, %if.else557 ], [ %best_score.21056, %if.then511 ], [ %best_score.21056, %if.else519 ], [ %sub547.best_score.2, %if.then541 ], [ %sub526, %if.then535 ]
  %cmp562 = icmp sle i32 %score.4, %best_score.5
  %or.cond1025 = or i1 %cmp562, %legal_move.1
  %best_score.6 = select i1 %or.cond1025, i32 %best_score.5, i32 %score.4
  %131 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx356, i32 %131) #5
  %132 = load i32* @time_exit, align 4, !tbaa !0
  %tobool569 = icmp eq i32 %132, 0
  br i1 %tobool569, label %if.end571, label %cleanup

if.end571:                                        ; preds = %if.end561
  %cmp572 = icmp sle i32 %score.4, %alpha.addr.01059
  %or.cond1026 = or i1 %cmp572, %legal_move.1
  br i1 %or.cond1026, label %if.end786, label %if.then576

if.then576:                                       ; preds = %if.end571
  %cmp577 = icmp slt i32 %score.4, %beta
  %133 = load i32* %i, align 4, !tbaa !2
  br i1 %cmp577, label %if.end754, label %if.then579

if.then579:                                       ; preds = %if.then576
  %idxprom580 = sext i32 %133 to i64
  %target582 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 1
  %134 = load i32* %target582, align 4, !tbaa !2
  %idxprom583 = sext i32 %134 to i64
  %from586 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 0
  %135 = load i32* %from586, align 8, !tbaa !2
  %idxprom587 = sext i32 %135 to i64
  %arrayidx589 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom587, i64 %idxprom583
  %136 = load i32* %arrayidx589, align 4, !tbaa !2
  %inc590 = add i32 %136, 1
  store i32 %inc590, i32* %arrayidx589, align 4, !tbaa !2
  %captured593 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 2
  %137 = load i32* %captured593, align 8, !tbaa !2
  %cmp594 = icmp eq i32 %137, 13
  br i1 %cmp594, label %if.then596, label %if.end747

if.then596:                                       ; preds = %if.then579
  %138 = load i32* @ply, align 4, !tbaa !2
  %idxprom600 = sext i32 %138 to i64
  %from602 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, i32 0
  %139 = load i32* %from602, align 4, !tbaa !2
  %cmp603 = icmp eq i32 %135, %139
  br i1 %cmp603, label %land.lhs.true605, label %if.else627

land.lhs.true605:                                 ; preds = %if.then596
  %target611 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, i32 1
  %140 = load i32* %target611, align 4, !tbaa !2
  %cmp612 = icmp eq i32 %134, %140
  br i1 %cmp612, label %land.lhs.true614, label %if.else627

land.lhs.true614:                                 ; preds = %land.lhs.true605
  %promoted617 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 3
  %141 = load i32* %promoted617, align 4, !tbaa !2
  %promoted620 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600, i32 3
  %142 = load i32* %promoted620, align 4, !tbaa !2
  %cmp621 = icmp eq i32 %141, %142
  br i1 %cmp621, label %if.then623, label %if.else627

if.then623:                                       ; preds = %land.lhs.true614
  %arrayidx625 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom600
  %143 = load i32* %arrayidx625, align 4, !tbaa !2
  %inc626 = add nsw i32 %143, 1
  store i32 %inc626, i32* %arrayidx625, align 4, !tbaa !2
  br label %if.end747

if.else627:                                       ; preds = %land.lhs.true614, %land.lhs.true605, %if.then596
  %from633 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, i32 0
  %144 = load i32* %from633, align 4, !tbaa !2
  %cmp634 = icmp eq i32 %135, %144
  br i1 %cmp634, label %land.lhs.true636, label %if.else682

land.lhs.true636:                                 ; preds = %if.else627
  %target642 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, i32 1
  %145 = load i32* %target642, align 4, !tbaa !2
  %cmp643 = icmp eq i32 %134, %145
  br i1 %cmp643, label %land.lhs.true645, label %if.else682

land.lhs.true645:                                 ; preds = %land.lhs.true636
  %promoted648 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 3
  %146 = load i32* %promoted648, align 4, !tbaa !2
  %promoted651 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600, i32 3
  %147 = load i32* %promoted651, align 4, !tbaa !2
  %cmp652 = icmp eq i32 %146, %147
  br i1 %cmp652, label %if.then654, label %if.else682

if.then654:                                       ; preds = %land.lhs.true645
  %arrayidx656 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom600
  %148 = load i32* %arrayidx656, align 4, !tbaa !2
  %inc657 = add nsw i32 %148, 1
  store i32 %inc657, i32* %arrayidx656, align 4, !tbaa !2
  %arrayidx661 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom600
  %149 = load i32* %arrayidx661, align 4, !tbaa !2
  %cmp662 = icmp slt i32 %148, %149
  br i1 %cmp662, label %if.end747, label %if.then664

if.then664:                                       ; preds = %if.then654
  %arrayidx666 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom600
  %150 = bitcast %struct.move_s* %kswap to i8*
  %151 = bitcast %struct.move_s* %arrayidx666 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* %151, i64 24, i32 4, i1 false), !tbaa.struct !4
  %arrayidx670 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600
  %152 = bitcast %struct.move_s* %arrayidx670 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %150, i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 %inc657, i32* %arrayidx661, align 4, !tbaa !2
  store i32 %149, i32* %arrayidx656, align 4, !tbaa !2
  br label %if.end747

if.else682:                                       ; preds = %land.lhs.true645, %land.lhs.true636, %if.else627
  %from688 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, i32 0
  %153 = load i32* %from688, align 4, !tbaa !2
  %cmp689 = icmp eq i32 %135, %153
  br i1 %cmp689, label %land.lhs.true691, label %if.else737

land.lhs.true691:                                 ; preds = %if.else682
  %target697 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, i32 1
  %154 = load i32* %target697, align 4, !tbaa !2
  %cmp698 = icmp eq i32 %134, %154
  br i1 %cmp698, label %land.lhs.true700, label %if.else737

land.lhs.true700:                                 ; preds = %land.lhs.true691
  %promoted703 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580, i32 3
  %155 = load i32* %promoted703, align 4, !tbaa !2
  %promoted706 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600, i32 3
  %156 = load i32* %promoted706, align 4, !tbaa !2
  %cmp707 = icmp eq i32 %155, %156
  br i1 %cmp707, label %if.then709, label %if.else737

if.then709:                                       ; preds = %land.lhs.true700
  %arrayidx711 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom600
  %157 = load i32* %arrayidx711, align 4, !tbaa !2
  %inc712 = add nsw i32 %157, 1
  store i32 %inc712, i32* %arrayidx711, align 4, !tbaa !2
  %arrayidx716 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom600
  %158 = load i32* %arrayidx716, align 4, !tbaa !2
  %cmp717 = icmp slt i32 %157, %158
  br i1 %cmp717, label %if.end747, label %if.then719

if.then719:                                       ; preds = %if.then709
  %arrayidx721 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom600
  %159 = bitcast %struct.move_s* %kswap to i8*
  %160 = bitcast %struct.move_s* %arrayidx721 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 24, i32 4, i1 false), !tbaa.struct !4
  %arrayidx725 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600
  %161 = bitcast %struct.move_s* %arrayidx725 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %159, i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 %inc712, i32* %arrayidx716, align 4, !tbaa !2
  store i32 %158, i32* %arrayidx711, align 4, !tbaa !2
  br label %if.end747

if.else737:                                       ; preds = %land.lhs.true700, %land.lhs.true691, %if.else682
  %arrayidx739 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom600
  store i32 1, i32* %arrayidx739, align 4, !tbaa !2
  %arrayidx741 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom600
  %arrayidx743 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom580
  %162 = bitcast %struct.move_s* %arrayidx741 to i8*
  %163 = bitcast %struct.move_s* %arrayidx743 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end747

if.end747:                                        ; preds = %if.then654, %if.then709, %if.then623, %if.else737, %if.then719, %if.then664, %if.then579
  %cmp748 = icmp eq i32 %first.01058, 1
  br i1 %cmp748, label %if.then750, label %if.end752

if.then750:                                       ; preds = %if.end747
  %164 = load i32* @FHF, align 4, !tbaa !2
  %inc751 = add i32 %164, 1
  store i32 %inc751, i32* @FHF, align 4, !tbaa !2
  br label %if.end752

if.end752:                                        ; preds = %if.then750, %if.end747
  %165 = load i32* @FH, align 4, !tbaa !2
  %inc753 = add i32 %165, 1
  store i32 %inc753, i32* @FH, align 4, !tbaa !2
  %166 = load i32* %threat, align 4, !tbaa !2
  call void @StoreTT(i32 %score.4, i32 %alpha, i32 %beta, i32 %133, i32 %166, i32 %depth.addr.4) #5
  br label %cleanup

if.end754:                                        ; preds = %if.then576
  %167 = load i32* @ply, align 4, !tbaa !2
  %idxprom755 = sext i32 %167 to i64
  %arrayidx758 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom755, i64 %idxprom755
  %idxprom759 = sext i32 %133 to i64
  %arrayidx760 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom759
  %168 = bitcast %struct.move_s* %arrayidx758 to i8*
  %169 = bitcast %struct.move_s* %arrayidx760 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 24, i32 4, i1 false), !tbaa.struct !4
  %j.01033 = add i32 %167, 1
  %idxprom7641035 = sext i32 %j.01033 to i64
  %arrayidx7651036 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom7641035
  %170 = load i32* %arrayidx7651036, align 4, !tbaa !2
  %cmp7661037 = icmp slt i32 %j.01033, %170
  br i1 %cmp7661037, label %for.body768, label %for.end780

for.body768:                                      ; preds = %if.end754, %for.body768
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body768 ], [ %idxprom7641035, %if.end754 ]
  %j.01038 = phi i32 [ %j.0, %for.body768 ], [ %j.01033, %if.end754 ]
  %arrayidx772 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom755, i64 %indvars.iv
  %arrayidx777 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom7641035, i64 %indvars.iv
  %171 = bitcast %struct.move_s* %arrayidx772 to i8*
  %172 = bitcast %struct.move_s* %arrayidx777 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %172, i64 24, i32 4, i1 false), !tbaa.struct !4
  %j.0 = add nsw i32 %j.01038, 1
  %cmp766 = icmp slt i32 %j.0, %170
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp766, label %for.body768, label %for.end780

for.end780:                                       ; preds = %for.body768, %if.end754
  %arrayidx785 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom755
  store i32 %170, i32* %arrayidx785, align 4, !tbaa !2
  br label %if.end786

if.end786:                                        ; preds = %if.end571, %for.end780
  %sbest.1 = phi i32 [ %133, %for.end780 ], [ %sbest.01055, %if.end571 ]
  %alpha.addr.1 = phi i32 [ %score.4, %for.end780 ], [ %alpha.addr.01059, %if.end571 ]
  %first.0. = select i1 %legal_move.1, i32 %first.01058, i32 0
  %call360 = call i32 @remove_one(i32* %i, i32* %arrayidx357, i32 %num_moves.2) #6
  %tobool361 = icmp eq i32 %call360, 0
  br i1 %tobool361, label %if.end793, label %while.body

if.else790:                                       ; preds = %if.end353
  %sub791 = sub nsw i32 1000000, %75
  %173 = load i32* %threat, align 4, !tbaa !2
  call void @StoreTT(i32 %sub791, i32 %alpha, i32 %beta, i32 0, i32 %173, i32 %depth.addr.4) #5
  %174 = load i32* @ply, align 4, !tbaa !2
  %sub792 = sub nsw i32 1000000, %174
  br label %cleanup

if.end793:                                        ; preds = %if.end786
  %tobool794 = icmp eq i32 %no_moves.1, 0
  br i1 %tobool794, label %if.else811, label %if.then795

if.then795:                                       ; preds = %if.then355, %if.end793
  %175 = load i32* @Variant, align 4, !tbaa !2
  %.off996 = add i32 %175, -3
  %176 = icmp ugt i32 %.off996, 1
  br i1 %176, label %if.then801, label %if.else808

if.then801:                                       ; preds = %if.then795
  %call802 = call i32 @in_check() #5
  %tobool803 = icmp eq i32 %call802, 0
  br i1 %tobool803, label %if.else807, label %if.then804

if.then804:                                       ; preds = %if.then801
  %177 = load i32* @ply, align 4, !tbaa !2
  %add805 = add nsw i32 %177, -1000000
  %178 = load i32* %threat, align 4, !tbaa !2
  call void @StoreTT(i32 %add805, i32 %alpha, i32 %beta, i32 0, i32 %178, i32 %depth.addr.4) #5
  %179 = load i32* @ply, align 4, !tbaa !2
  %add806 = add nsw i32 %179, -1000000
  br label %cleanup

if.else807:                                       ; preds = %if.then801
  %180 = load i32* %threat, align 4, !tbaa !2
  call void @StoreTT(i32 0, i32 %alpha, i32 %beta, i32 0, i32 %180, i32 %depth.addr.4) #5
  br label %cleanup

if.else808:                                       ; preds = %if.then795
  %181 = load i32* @ply, align 4, !tbaa !2
  %sub809 = sub nsw i32 1000000, %181
  %182 = load i32* %threat, align 4, !tbaa !2
  call void @StoreTT(i32 %sub809, i32 %alpha, i32 %beta, i32 0, i32 %182, i32 %depth.addr.4) #5
  %183 = load i32* @ply, align 4, !tbaa !2
  %sub810 = sub nsw i32 1000000, %183
  br label %cleanup

if.else811:                                       ; preds = %if.end793
  %184 = load i32* @fifty, align 4, !tbaa !2
  %cmp812 = icmp sgt i32 %184, 100
  br i1 %cmp812, label %cleanup, label %if.end816

if.end816:                                        ; preds = %if.else811
  %cmp817 = icmp eq i32 %sbest.1, -1
  %.sbest.0 = select i1 %cmp817, i32 500, i32 %sbest.1
  %cmp821 = icmp sgt i32 %best_score.6, %alpha
  %tobool824 = icmp ne i32 %selective.1, 0
  br i1 %cmp821, label %if.else827, label %if.then823

if.then823:                                       ; preds = %if.end816
  br i1 %tobool824, label %cleanup, label %if.then825

if.then825:                                       ; preds = %if.then823
  %185 = load i32* %threat, align 4, !tbaa !2
  call void @StoreTT(i32 %best_score.6, i32 %alpha, i32 %beta, i32 %.sbest.0, i32 %185, i32 %depth.addr.4) #5
  br label %cleanup

if.else827:                                       ; preds = %if.end816
  %186 = load i32* %threat, align 4, !tbaa !2
  br i1 %tobool824, label %if.else830, label %if.then829

if.then829:                                       ; preds = %if.else827
  call void @StoreTT(i32 %best_score.6, i32 %alpha, i32 %beta, i32 %.sbest.0, i32 %186, i32 %depth.addr.4) #5
  br label %cleanup

if.else830:                                       ; preds = %if.else827
  call void @StoreTT(i32 %best_score.6, i32 -1000000, i32 -1000000, i32 %.sbest.0, i32 %186, i32 %depth.addr.4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end561, %if.then825, %if.then823, %if.else830, %if.then829, %if.else811, %if.end222, %sw.bb126, %sw.bb122, %if.then104, %if.end26, %if.else808, %if.else807, %if.then804, %if.else790, %if.end752, %if.then231, %if.then139, %sw.bb, %if.then108, %if.then100, %if.then95, %if.else23, %if.then2
  %retval.0 = phi i32 [ %call97, %if.then95 ], [ %call101, %if.then100 ], [ %cond115, %if.then108 ], [ %cond146, %if.then139 ], [ %score.4, %if.end752 ], [ %add806, %if.then804 ], [ 0, %if.else807 ], [ %sub810, %if.else808 ], [ %sub792, %if.else790 ], [ %score.0, %if.then231 ], [ %33, %sw.bb ], [ 0, %if.then2 ], [ 0, %if.else23 ], [ 0, %if.end26 ], [ %call105, %if.then104 ], [ %34, %sw.bb122 ], [ %35, %sw.bb126 ], [ 0, %if.end222 ], [ 0, %if.else811 ], [ %best_score.6, %if.then829 ], [ %best_score.6, %if.else830 ], [ %best_score.6, %if.then823 ], [ %best_score.6, %if.then825 ], [ 0, %if.end561 ]
  call void @llvm.lifetime.end(i64 2048, i8* %2) #2
  call void @llvm.lifetime.end(i64 2048, i8* %1) #2
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @is_draw() #1

; Function Attrs: optsize
declare i32 @suicide_eval() #1

; Function Attrs: optsize
declare i32 @losers_eval() #1

; Function Attrs: optsize
declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #1

; Function Attrs: optsize
declare void @StoreTT(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @f_in_check(%struct.move_s*, i32) #1

; Function Attrs: optsize
declare i32 @calc_attackers(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @search_root(%struct.move_s* noalias nocapture sret %agg.result, i32 %originalalpha, i32 %originalbeta, i32 %depth) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %best_move = alloca %struct.move_s, align 4
  %i = alloca i32, align 4
  %move_ordering = alloca [512 x i32], align 16
  %see_values = alloca [512 x i32], align 16
  %kswap = alloca %struct.move_s, align 4
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %1 = bitcast %struct.move_s* %best_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %2 = bitcast [512 x i32]* %move_ordering to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #2
  %3 = bitcast [512 x i32]* %see_values to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %3) #2
  store i32 1, i32* @ply, align 4, !tbaa !2
  store i32 1, i32* @searching_pv, align 4, !tbaa !0
  store i32 0, i32* @time_exit, align 4, !tbaa !0
  store i32 0, i32* @time_failure, align 4, !tbaa !0
  store i32 -1000000, i32* @cur_score, align 4, !tbaa !2
  %4 = load i32* @nodes, align 4, !tbaa !2
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @nodes, align 4, !tbaa !2
  %call = call i32 @is_draw() #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 5, i32* @result, align 4, !tbaa !2
  store i32 0, i32* @cur_score, align 4, !tbaa !2
  %5 = load i32* @ply, align 4, !tbaa !2
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !2
  %6 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32* @ply, align 4, !tbaa !2
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom1
  store i32 %7, i32* %arrayidx2, align 4, !tbaa !2
  %8 = load i32* @hash, align 4, !tbaa !2
  %9 = load i32* @move_number, align 4, !tbaa !2
  %add = add i32 %9, -1
  %sub = add i32 %add, %7
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4, !tbaa !2
  %call5 = call i32 @in_check() #5
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %10 = load i32* @ext_check, align 4, !tbaa !2
  %inc8 = add i32 %10, 1
  store i32 %inc8, i32* @ext_check, align 4, !tbaa !2
  %inc9 = add nsw i32 %depth, 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then7
  %depth.addr.0 = phi i32 [ %inc9, %if.then7 ], [ %depth, %if.end ]
  %11 = load i32* @ply, align 4, !tbaa !2
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom11
  store i32 %call5, i32* %arrayidx12, align 4, !tbaa !0
  %arrayidx14 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom11
  store i32 0, i32* %arrayidx14, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom11
  store i32 0, i32* %arrayidx16, align 4, !tbaa !0
  %12 = load i32* @Variant, align 4, !tbaa !2
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end10
  store i32 0, i32* @legals, align 4, !tbaa !2
  store i32 1, i32* @captures, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx18) #5
  %13 = load i32* @numb_moves, align 4, !tbaa !2
  store i32 0, i32* @captures, align 4, !tbaa !0
  %tobool19 = icmp eq i32 %13, 0
  br i1 %tobool19, label %if.end31, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then17
  store i32 0, i32* %i, align 4, !tbaa !2
  %cmp21592 = icmp sgt i32 %13, 0
  br i1 %cmp21592, label %for.body, label %if.end31

for.body:                                         ; preds = %for.cond.preheader, %if.end28
  %storemerge559593 = phi i32 [ %inc30, %if.end28 ], [ 0, %for.cond.preheader ]
  call void @make(%struct.move_s* %arrayidx18, i32 %storemerge559593) #5
  %14 = load i32* %i, align 4, !tbaa !2
  %call24 = call i32 @check_legal(%struct.move_s* %arrayidx18, i32 %14, i32 %call5) #5
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %for.body
  %15 = load i32* @legals, align 4, !tbaa !2
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, i32* @legals, align 4, !tbaa !2
  br label %if.end28

if.end28:                                         ; preds = %for.body, %if.then26
  %16 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx18, i32 %16) #5
  %17 = load i32* %i, align 4, !tbaa !2
  %inc30 = add nsw i32 %17, 1
  store i32 %inc30, i32* %i, align 4, !tbaa !2
  %cmp21 = icmp slt i32 %inc30, %13
  br i1 %cmp21, label %for.body, label %if.end31

if.end31:                                         ; preds = %for.cond.preheader, %if.end28, %if.then17
  %18 = load i32* @legals, align 4, !tbaa !2
  %tobool32 = icmp eq i32 %18, 0
  br i1 %tobool32, label %if.then33, label %if.end51

if.then33:                                        ; preds = %if.end31
  store i32 0, i32* @captures, align 4, !tbaa !0
  call void @gen(%struct.move_s* %arrayidx18) #5
  %19 = load i32* @numb_moves, align 4, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !2
  %cmp36590 = icmp sgt i32 %19, 0
  br i1 %cmp36590, label %for.body37, label %if.end51

for.body37:                                       ; preds = %if.then33, %if.end44
  %storemerge591 = phi i32 [ %inc47, %if.end44 ], [ 0, %if.then33 ]
  call void @make(%struct.move_s* %arrayidx18, i32 %storemerge591) #5
  %20 = load i32* %i, align 4, !tbaa !2
  %call40 = call i32 @check_legal(%struct.move_s* %arrayidx18, i32 %20, i32 %call5) #5
  %tobool41 = icmp eq i32 %call40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %for.body37
  %21 = load i32* @legals, align 4, !tbaa !2
  %inc43 = add nsw i32 %21, 1
  store i32 %inc43, i32* @legals, align 4, !tbaa !2
  br label %if.end44

if.end44:                                         ; preds = %for.body37, %if.then42
  %22 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx18, i32 %22) #5
  %23 = load i32* %i, align 4, !tbaa !2
  %inc47 = add nsw i32 %23, 1
  store i32 %inc47, i32* %i, align 4, !tbaa !2
  %cmp36 = icmp slt i32 %inc47, %19
  br i1 %cmp36, label %for.body37, label %if.end51

if.else:                                          ; preds = %if.end10
  %arrayidx50 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx50) #5
  %24 = load i32* @numb_moves, align 4, !tbaa !2
  br label %if.end51

if.end51:                                         ; preds = %if.then33, %if.end44, %if.end31, %if.else
  %num_moves.0 = phi i32 [ %13, %if.end31 ], [ %24, %if.else ], [ %19, %if.end44 ], [ %19, %if.then33 ]
  %25 = load i32* @legals, align 4, !tbaa !2
  store i32 %25, i32* @movetotal, align 4, !tbaa !2
  %arrayidx52 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  %arrayidx53 = getelementptr inbounds [512 x i32]* %move_ordering, i64 0, i64 0
  %arrayidx54 = getelementptr inbounds [512 x i32]* %see_values, i64 0, i64 0
  call void @order_moves(%struct.move_s* %arrayidx52, i32* %arrayidx53, i32* %arrayidx54, i32 %num_moves.0, i32 -1) #6
  %26 = bitcast %struct.move_s* %kswap to i8*
  %sub99 = sub nsw i32 0, %originalbeta
  %sub101 = add nsw i32 %depth.addr.0, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end444, %if.end51
  %root_score.0.ph = phi i32 [ -1000000, %if.end51 ], [ %85, %if.end444 ]
  %no_moves.0.ph = phi i32 [ 1, %if.end51 ], [ %no_moves.1, %if.end444 ]
  %first.0.ph = phi i32 [ 1, %if.end51 ], [ %first.0., %if.end444 ]
  %alpha.0.ph = phi i32 [ %originalalpha, %if.end51 ], [ %alpha.1, %if.end444 ]
  %mc.0.ph = phi i32 [ 0, %if.end51 ], [ %mc.1, %if.end444 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %land.lhs.true62
  %call56 = call i32 @remove_one(i32* %i, i32* %arrayidx53, i32 %num_moves.0) #6
  %tobool57 = icmp eq i32 %call56, 0
  br i1 %tobool57, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %27 = load i32* @alllosers, align 4, !tbaa !2
  %tobool58 = icmp eq i32 %27, 0
  %28 = load i32* %i, align 4, !tbaa !2
  br i1 %tobool58, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %while.body
  %idxprom59 = sext i32 %28 to i64
  %arrayidx60 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %idxprom59
  %29 = load i32* %arrayidx60, align 4, !tbaa !2
  %tobool61 = icmp eq i32 %29, 0
  br i1 %tobool61, label %if.end66, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %30 = load i32* @Variant, align 4, !tbaa !2
  %.off558 = add i32 %30, -3
  %31 = icmp ult i32 %.off558, 2
  br i1 %31, label %while.cond, label %if.end66

if.end66:                                         ; preds = %while.body, %land.lhs.true, %land.lhs.true62
  call void @make(%struct.move_s* %arrayidx52, i32 %28) #5
  %32 = load i32* @hash, align 4, !tbaa !2
  %33 = load i32* @move_number, align 4, !tbaa !2
  %34 = load i32* @ply, align 4, !tbaa !2
  %add68 = add i32 %33, -1
  %sub69 = add i32 %add68, %34
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom70
  store i32 %32, i32* %arrayidx71, align 4, !tbaa !2
  %sub72 = add nsw i32 %34, -1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [300 x %struct.move_s]* @path, i64 0, i64 %idxprom73
  %35 = load i32* %i, align 4, !tbaa !2
  %idxprom75 = sext i32 %35 to i64
  %arrayidx76 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom75
  %36 = bitcast %struct.move_s* %arrayidx74 to i8*
  %37 = bitcast %struct.move_s* %arrayidx76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 4, i1 false), !tbaa.struct !4
  %38 = load i32* @nodes, align 4, !tbaa !2
  %call78 = call i32 @check_legal(%struct.move_s* %arrayidx52, i32 %35, i32 %call5) #5
  %tobool79 = icmp eq i32 %call78, 0
  br i1 %tobool79, label %if.end248, label %if.then80

if.then80:                                        ; preds = %if.end66
  %39 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx52, i32 %39) #5
  %inc82 = add nsw i32 %mc.0.ph, 1
  %40 = load i32* @movetotal, align 4, !tbaa !2
  %sub83 = sub nsw i32 %40, %inc82
  store i32 %sub83, i32* @moveleft, align 4, !tbaa !2
  %41 = load i32* %i, align 4, !tbaa !2
  %idxprom84 = sext i32 %41 to i64
  %arrayidx85 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom84
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx85, i8* getelementptr inbounds ([20 x i8]* @searching_move, i64 0, i64 0)) #5
  %42 = load i32* %i, align 4, !tbaa !2
  call void @make(%struct.move_s* %arrayidx52, i32 %42) #5
  %43 = load i32* %i, align 4, !tbaa !2
  %call88 = call i32 @f_in_check(%struct.move_s* %arrayidx52, i32 %43) #5
  %44 = load i32* @ply, align 4, !tbaa !2
  %idxprom89 = sext i32 %44 to i64
  %arrayidx90 = getelementptr inbounds [300 x i32]* @checks, i64 0, i64 %idxprom89
  store i32 %call88, i32* %arrayidx90, align 4, !tbaa !0
  %arrayidx92 = getelementptr inbounds [300 x i32]* @recaps, i64 0, i64 %idxprom89
  store i32 0, i32* %arrayidx92, align 4, !tbaa !0
  %arrayidx94 = getelementptr inbounds [300 x i32]* @singular, i64 0, i64 %idxprom89
  store i32 0, i32* %arrayidx94, align 4, !tbaa !0
  %cmp95 = icmp eq i32 %first.0.ph, 1
  %45 = load i32* @i_depth, align 4, !tbaa !2
  %cmp97 = icmp slt i32 %45, 2
  %or.cond486 = or i1 %cmp95, %cmp97
  %sub100 = sub nsw i32 0, %alpha.0.ph
  br i1 %or.cond486, label %if.then98, label %if.else162

if.then98:                                        ; preds = %if.then80
  %call102 = call i32 @search(i32 %sub99, i32 %sub100, i32 %sub101, i32 0) #6
  %sub103 = sub nsw i32 0, %call102
  %46 = load i32* @time_exit, align 4, !tbaa !0
  %tobool104 = icmp eq i32 %46, 0
  br i1 %tobool104, label %land.lhs.true105, label %if.end232.thread

if.end232.thread:                                 ; preds = %if.then98
  %47 = load i32* @cur_score, align 4, !tbaa !2
  br label %if.end239

land.lhs.true105:                                 ; preds = %if.then98
  %48 = load i32* @post, align 4, !tbaa !0
  %49 = load i32* @xb_mode, align 4, !tbaa !2
  %notlhs = icmp ne i32 %48, 0
  %notrhs = icmp eq i32 %49, 0
  %or.cond487.not = or i1 %notrhs, %notlhs
  %50 = load i32* @i_depth, align 4, !tbaa !2
  %cmp110 = icmp sgt i32 %50, 1
  %or.cond488 = and i1 %or.cond487.not, %cmp110
  br i1 %or.cond488, label %if.then111, label %if.end232

if.then111:                                       ; preds = %land.lhs.true105
  %cmp112 = icmp slt i32 %sub103, %originalbeta
  br i1 %cmp112, label %if.else116, label %if.then113

if.then113:                                       ; preds = %if.then111
  %51 = load i32* %i, align 4, !tbaa !2
  %idxprom114 = sext i32 %51 to i64
  %arrayidx115 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom114
  call void @post_fh_thinking(i32 %sub103, %struct.move_s* %arrayidx115) #5
  br label %if.end153

if.else116:                                       ; preds = %if.then111
  %cmp117 = icmp slt i32 %alpha.0.ph, %sub103
  br i1 %cmp117, label %if.else121, label %if.then118

if.then118:                                       ; preds = %if.else116
  store i32 1, i32* @failed, align 4, !tbaa !2
  %52 = load i32* %i, align 4, !tbaa !2
  %idxprom119 = sext i32 %52 to i64
  %arrayidx120 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom119
  call void @post_fl_thinking(i32 %sub103, %struct.move_s* %arrayidx120) #5
  br label %if.end153

if.else121:                                       ; preds = %if.else116
  %53 = load i32* @ply, align 4, !tbaa !2
  %sub122 = add nsw i32 %53, -1
  %idxprom123 = sext i32 %sub122 to i64
  %arrayidx127 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom123, i64 %idxprom123
  %54 = load i32* %i, align 4, !tbaa !2
  %idxprom128 = sext i32 %54 to i64
  %arrayidx129 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom128
  %55 = bitcast %struct.move_s* %arrayidx127 to i8*
  %56 = bitcast %struct.move_s* %arrayidx129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 24, i32 4, i1 false), !tbaa.struct !4
  %idxprom131572 = sext i32 %53 to i64
  %arrayidx132573 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom131572
  %57 = load i32* %arrayidx132573, align 4, !tbaa !2
  %cmp133574 = icmp slt i32 %53, %57
  br i1 %cmp133574, label %for.body134, label %for.end146

for.body134:                                      ; preds = %if.else121, %for.body134
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %for.body134 ], [ %idxprom131572, %if.else121 ]
  %arrayidx139 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom123, i64 %indvars.iv596
  %arrayidx143 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom131572, i64 %indvars.iv596
  %58 = bitcast %struct.move_s* %arrayidx139 to i8*
  %59 = bitcast %struct.move_s* %arrayidx143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 24, i32 4, i1 false), !tbaa.struct !4
  %indvars.iv.next597 = add i64 %indvars.iv596, 1
  %60 = trunc i64 %indvars.iv.next597 to i32
  %cmp133 = icmp slt i32 %60, %57
  br i1 %cmp133, label %for.body134, label %for.end146

for.end146:                                       ; preds = %for.body134, %if.else121
  %arrayidx151 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom123
  store i32 %57, i32* %arrayidx151, align 4, !tbaa !2
  call void @post_thinking(i32 %sub103) #5
  br label %if.end153

if.end153:                                        ; preds = %if.then118, %for.end146, %if.then113
  %61 = load i32* @cur_score, align 4, !tbaa !2
  %cmp154 = icmp sge i32 %61, %sub103
  %62 = load i32* @time_exit, align 4, !tbaa !0
  %tobool156 = icmp ne i32 %62, 0
  %or.cond489 = or i1 %cmp154, %tobool156
  br i1 %or.cond489, label %if.end232, label %if.then157

if.then157:                                       ; preds = %if.end153
  store i32 %sub103, i32* @cur_score, align 4, !tbaa !2
  %63 = load i32* %i, align 4, !tbaa !2
  store i32 %63, i32* @bestmovenum, align 4, !tbaa !2
  %idxprom158 = sext i32 %63 to i64
  %arrayidx159 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom158
  %64 = bitcast %struct.move_s* %arrayidx159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %64, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end232

if.else162:                                       ; preds = %if.then80
  %sub164 = xor i32 %alpha.0.ph, -1
  %call167 = call i32 @search(i32 %sub164, i32 %sub100, i32 %sub101, i32 0) #6
  %sub168 = sub nsw i32 0, %call167
  %cmp169 = icmp slt i32 %alpha.0.ph, %sub168
  br i1 %cmp169, label %land.lhs.true170, label %if.else162.if.end224_crit_edge

if.else162.if.end224_crit_edge:                   ; preds = %if.else162
  %.pre607 = load i32* @time_exit, align 4, !tbaa !0
  br label %if.end224

land.lhs.true170:                                 ; preds = %if.else162
  %cmp171 = icmp sge i32 %sub168, %originalbeta
  %65 = load i32* @time_exit, align 4, !tbaa !0
  %tobool173 = icmp ne i32 %65, 0
  %or.cond490 = or i1 %cmp171, %tobool173
  br i1 %or.cond490, label %if.end224, label %if.then174

if.then174:                                       ; preds = %land.lhs.true170
  %66 = load i32* %i, align 4, !tbaa !2
  %idxprom175 = sext i32 %66 to i64
  %arrayidx176 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom175
  call void @post_fail_thinking(i32 %sub168, %struct.move_s* %arrayidx176) #5
  %call180 = call i32 @search(i32 %sub99, i32 %sub100, i32 %sub101, i32 0) #6
  %sub181 = sub nsw i32 0, %call180
  %cmp182 = icmp sge i32 %alpha.0.ph, %sub181
  %67 = load i32* @time_exit, align 4, !tbaa !0
  %tobool184 = icmp ne i32 %67, 0
  %or.cond491 = or i1 %cmp182, %tobool184
  br i1 %or.cond491, label %if.end224, label %if.then185

if.then185:                                       ; preds = %if.then174
  store i32 0, i32* @failed, align 4, !tbaa !2
  store i32 %sub181, i32* @cur_score, align 4, !tbaa !2
  %68 = load i32* %i, align 4, !tbaa !2
  store i32 %68, i32* @bestmovenum, align 4, !tbaa !2
  %idxprom186 = sext i32 %68 to i64
  %arrayidx187 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom186
  %69 = bitcast %struct.move_s* %arrayidx187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %69, i64 24, i32 4, i1 false), !tbaa.struct !4
  %cmp188 = icmp slt i32 %sub181, %originalbeta
  %70 = load i32* @i_depth, align 4, !tbaa !2
  %cmp190 = icmp sgt i32 %70, 1
  %or.cond492 = and i1 %cmp188, %cmp190
  br i1 %or.cond492, label %if.then191, label %if.end224

if.then191:                                       ; preds = %if.then185
  %71 = load i32* @ply, align 4, !tbaa !2
  %sub192 = add nsw i32 %71, -1
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx197 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom193, i64 %idxprom193
  %72 = bitcast %struct.move_s* %arrayidx197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %69, i64 24, i32 4, i1 false), !tbaa.struct !4
  %idxprom201564 = sext i32 %71 to i64
  %arrayidx202565 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom201564
  %73 = load i32* %arrayidx202565, align 4, !tbaa !2
  %cmp203566 = icmp slt i32 %71, %73
  br i1 %cmp203566, label %for.body204, label %for.end216

for.body204:                                      ; preds = %if.then191, %for.body204
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body204 ], [ %idxprom201564, %if.then191 ]
  %arrayidx209 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom193, i64 %indvars.iv
  %arrayidx213 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom201564, i64 %indvars.iv
  %74 = bitcast %struct.move_s* %arrayidx209 to i8*
  %75 = bitcast %struct.move_s* %arrayidx213 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 24, i32 4, i1 false), !tbaa.struct !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %76 = trunc i64 %indvars.iv.next to i32
  %cmp203 = icmp slt i32 %76, %73
  br i1 %cmp203, label %for.body204, label %for.end216

for.end216:                                       ; preds = %for.body204, %if.then191
  %arrayidx221 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom193
  store i32 %73, i32* %arrayidx221, align 4, !tbaa !2
  br label %if.end224

if.end224:                                        ; preds = %if.else162.if.end224_crit_edge, %if.then174, %for.end216, %if.then185, %land.lhs.true170
  %77 = phi i32 [ %65, %land.lhs.true170 ], [ %67, %if.then174 ], [ 0, %for.end216 ], [ 0, %if.then185 ], [ %.pre607, %if.else162.if.end224_crit_edge ]
  %root_score.1 = phi i32 [ %sub168, %land.lhs.true170 ], [ %sub181, %if.then174 ], [ %sub181, %for.end216 ], [ %sub181, %if.then185 ], [ %sub168, %if.else162.if.end224_crit_edge ]
  %cmp225 = icmp slt i32 %root_score.1, %originalbeta
  %tobool227 = icmp ne i32 %77, 0
  %or.cond493 = or i1 %cmp225, %tobool227
  br i1 %or.cond493, label %if.end232, label %if.then228

if.then228:                                       ; preds = %if.end224
  %78 = load i32* %i, align 4, !tbaa !2
  %idxprom229 = sext i32 %78 to i64
  %arrayidx230 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom229
  call void @post_fh_thinking(i32 %root_score.1, %struct.move_s* %arrayidx230) #5
  %.pre604 = load i32* @time_exit, align 4, !tbaa !0
  br label %if.end232

if.end232:                                        ; preds = %if.end224, %land.lhs.true105, %if.then228, %if.end153, %if.then157
  %79 = phi i32 [ %62, %if.end153 ], [ 0, %if.then157 ], [ %.pre604, %if.then228 ], [ 0, %land.lhs.true105 ], [ %77, %if.end224 ]
  %root_score.2 = phi i32 [ %sub103, %if.end153 ], [ %sub103, %if.then157 ], [ %root_score.1, %if.then228 ], [ %sub103, %land.lhs.true105 ], [ %root_score.1, %if.end224 ]
  %80 = load i32* @cur_score, align 4, !tbaa !2
  %cmp233 = icmp sle i32 %root_score.2, %80
  %tobool235 = icmp ne i32 %79, 0
  %or.cond494 = or i1 %cmp233, %tobool235
  br i1 %or.cond494, label %if.end239, label %if.then236

if.then236:                                       ; preds = %if.end232
  store i32 %root_score.2, i32* @cur_score, align 4, !tbaa !2
  %81 = load i32* %i, align 4, !tbaa !2
  store i32 %81, i32* @bestmovenum, align 4, !tbaa !2
  %idxprom237 = sext i32 %81 to i64
  %arrayidx238 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom237
  %82 = bitcast %struct.move_s* %arrayidx238 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %82, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end239

if.end239:                                        ; preds = %if.end232.thread, %if.end232, %if.then236
  %root_score.2611 = phi i32 [ %root_score.2, %if.end232 ], [ %root_score.2, %if.then236 ], [ %sub103, %if.end232.thread ]
  %83 = phi i32 [ %79, %if.end232 ], [ %79, %if.then236 ], [ %46, %if.end232.thread ]
  %84 = phi i32 [ %80, %if.end232 ], [ %root_score.2, %if.then236 ], [ %47, %if.end232.thread ]
  %notlhs561 = icmp eq i32 %83, 0
  %notrhs562 = icmp ne i32 %84, -1000000
  %or.cond495.not = or i1 %notrhs562, %notlhs561
  %tobool244 = icmp eq i32 %no_moves.0.ph, 0
  %or.cond = or i1 %or.cond495.not, %tobool244
  br i1 %or.cond, label %if.end248, label %if.then245

if.then245:                                       ; preds = %if.end239
  store i32 1, i32* @time_failure, align 4, !tbaa !0
  br label %if.end248

if.end248:                                        ; preds = %if.end239, %if.end66, %if.then245
  %85 = phi i32 [ %root_score.2611, %if.then245 ], [ %root_score.0.ph, %if.end66 ], [ %root_score.2611, %if.end239 ]
  %no_moves.1 = phi i32 [ 0, %if.then245 ], [ %no_moves.0.ph, %if.end66 ], [ 0, %if.end239 ]
  %legal_move.0 = phi i32 [ 1, %if.then245 ], [ 0, %if.end66 ], [ 1, %if.end239 ]
  %mc.1 = phi i32 [ %inc82, %if.then245 ], [ %mc.0.ph, %if.end66 ], [ %inc82, %if.end239 ]
  %86 = load i32* %i, align 4, !tbaa !2
  call void @unmake(%struct.move_s* %arrayidx52, i32 %86) #5
  %87 = load i32* @time_exit, align 4, !tbaa !0
  %tobool250 = icmp eq i32 %87, 0
  br i1 %tobool250, label %if.end252, label %if.then251

if.then251:                                       ; preds = %if.end248
  %88 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %1, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end252:                                        ; preds = %if.end248
  %cmp253 = icmp sle i32 %85, %alpha.0.ph
  %tobool255 = icmp eq i32 %legal_move.0, 0
  %or.cond560 = or i1 %cmp253, %tobool255
  br i1 %or.cond560, label %if.end444, label %if.then256

if.then256:                                       ; preds = %if.end252
  %89 = load i32* %i, align 4, !tbaa !2
  %idxprom257 = sext i32 %89 to i64
  %from = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 0
  %90 = load i32* %from, align 8, !tbaa !2
  %91 = load i32* @ply, align 4, !tbaa !2
  %idxprom259 = sext i32 %91 to i64
  %from261 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, i32 0
  %92 = load i32* %from261, align 4, !tbaa !2
  %cmp262 = icmp eq i32 %90, %92
  br i1 %cmp262, label %land.lhs.true263, label %if.else281

land.lhs.true263:                                 ; preds = %if.then256
  %target = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 1
  %93 = load i32* %target, align 4, !tbaa !2
  %target268 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, i32 1
  %94 = load i32* %target268, align 4, !tbaa !2
  %cmp269 = icmp eq i32 %93, %94
  br i1 %cmp269, label %land.lhs.true270, label %if.else281

land.lhs.true270:                                 ; preds = %land.lhs.true263
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 3
  %95 = load i32* %promoted, align 4, !tbaa !2
  %promoted275 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259, i32 3
  %96 = load i32* %promoted275, align 4, !tbaa !2
  %cmp276 = icmp eq i32 %95, %96
  br i1 %cmp276, label %if.then277, label %if.else281

if.then277:                                       ; preds = %land.lhs.true270
  %arrayidx279 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom259
  %97 = load i32* %arrayidx279, align 4, !tbaa !2
  %inc280 = add nsw i32 %97, 1
  store i32 %inc280, i32* %arrayidx279, align 4, !tbaa !2
  br label %if.end392

if.else281:                                       ; preds = %land.lhs.true270, %land.lhs.true263, %if.then256
  %from287 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, i32 0
  %98 = load i32* %from287, align 4, !tbaa !2
  %cmp288 = icmp eq i32 %90, %98
  br i1 %cmp288, label %land.lhs.true289, label %if.else332

land.lhs.true289:                                 ; preds = %if.else281
  %target292 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 1
  %99 = load i32* %target292, align 4, !tbaa !2
  %target295 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, i32 1
  %100 = load i32* %target295, align 4, !tbaa !2
  %cmp296 = icmp eq i32 %99, %100
  br i1 %cmp296, label %land.lhs.true297, label %if.else332

land.lhs.true297:                                 ; preds = %land.lhs.true289
  %promoted300 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 3
  %101 = load i32* %promoted300, align 4, !tbaa !2
  %promoted303 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259, i32 3
  %102 = load i32* %promoted303, align 4, !tbaa !2
  %cmp304 = icmp eq i32 %101, %102
  br i1 %cmp304, label %if.then305, label %if.else332

if.then305:                                       ; preds = %land.lhs.true297
  %arrayidx307 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom259
  %103 = load i32* %arrayidx307, align 4, !tbaa !2
  %inc308 = add nsw i32 %103, 1
  store i32 %inc308, i32* %arrayidx307, align 4, !tbaa !2
  %arrayidx312 = getelementptr inbounds [300 x i32]* @killer_scores, i64 0, i64 %idxprom259
  %104 = load i32* %arrayidx312, align 4, !tbaa !2
  %cmp313 = icmp slt i32 %103, %104
  br i1 %cmp313, label %if.end392, label %if.then314

if.then314:                                       ; preds = %if.then305
  %arrayidx316 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %idxprom259
  %105 = bitcast %struct.move_s* %arrayidx316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %105, i64 24, i32 4, i1 false), !tbaa.struct !4
  %arrayidx320 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259
  %106 = bitcast %struct.move_s* %arrayidx320 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %26, i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 %inc308, i32* %arrayidx312, align 4, !tbaa !2
  store i32 %104, i32* %arrayidx307, align 4, !tbaa !2
  br label %if.end392

if.else332:                                       ; preds = %land.lhs.true297, %land.lhs.true289, %if.else281
  %from338 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, i32 0
  %107 = load i32* %from338, align 4, !tbaa !2
  %cmp339 = icmp eq i32 %90, %107
  %target343 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 1
  %108 = load i32* %target343, align 4, !tbaa !2
  br i1 %cmp339, label %land.lhs.true340, label %if.else383

land.lhs.true340:                                 ; preds = %if.else332
  %target346 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, i32 1
  %109 = load i32* %target346, align 4, !tbaa !2
  %cmp347 = icmp eq i32 %108, %109
  br i1 %cmp347, label %land.lhs.true348, label %if.else383

land.lhs.true348:                                 ; preds = %land.lhs.true340
  %promoted351 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257, i32 3
  %110 = load i32* %promoted351, align 4, !tbaa !2
  %promoted354 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259, i32 3
  %111 = load i32* %promoted354, align 4, !tbaa !2
  %cmp355 = icmp eq i32 %110, %111
  br i1 %cmp355, label %if.then356, label %if.else383

if.then356:                                       ; preds = %land.lhs.true348
  %arrayidx358 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom259
  %112 = load i32* %arrayidx358, align 4, !tbaa !2
  %inc359 = add nsw i32 %112, 1
  store i32 %inc359, i32* %arrayidx358, align 4, !tbaa !2
  %arrayidx363 = getelementptr inbounds [300 x i32]* @killer_scores2, i64 0, i64 %idxprom259
  %113 = load i32* %arrayidx363, align 4, !tbaa !2
  %cmp364 = icmp slt i32 %112, %113
  br i1 %cmp364, label %if.end392, label %if.then365

if.then365:                                       ; preds = %if.then356
  %arrayidx367 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %idxprom259
  %114 = bitcast %struct.move_s* %arrayidx367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %114, i64 24, i32 4, i1 false), !tbaa.struct !4
  %arrayidx371 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259
  %115 = bitcast %struct.move_s* %arrayidx371 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %26, i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 %inc359, i32* %arrayidx363, align 4, !tbaa !2
  store i32 %113, i32* %arrayidx358, align 4, !tbaa !2
  br label %if.end392

if.else383:                                       ; preds = %if.else332, %land.lhs.true348, %land.lhs.true340
  %arrayidx385 = getelementptr inbounds [300 x i32]* @killer_scores3, i64 0, i64 %idxprom259
  store i32 1, i32* %arrayidx385, align 4, !tbaa !2
  %arrayidx387 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %idxprom259
  %arrayidx389 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257
  %116 = bitcast %struct.move_s* %arrayidx387 to i8*
  %117 = bitcast %struct.move_s* %arrayidx389 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end392

if.end392:                                        ; preds = %if.then305, %if.then356, %if.then314, %if.then365, %if.else383, %if.then277
  %118 = phi i32 [ %99, %if.then314 ], [ %99, %if.then305 ], [ %108, %if.then356 ], [ %108, %if.then365 ], [ %108, %if.else383 ], [ %93, %if.then277 ]
  %idxprom396 = sext i32 %118 to i64
  %idxprom400 = sext i32 %90 to i64
  %arrayidx402 = getelementptr inbounds [144 x [144 x i32]]* @history_h, i64 0, i64 %idxprom400, i64 %idxprom396
  %119 = load i32* %arrayidx402, align 4, !tbaa !2
  %inc403 = add i32 %119, 1
  store i32 %inc403, i32* %arrayidx402, align 4, !tbaa !2
  %arrayidx405 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom257
  %120 = bitcast %struct.move_s* %arrayidx405 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %120, i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 %89, i32* @bestmovenum, align 4, !tbaa !2
  store i32 %85, i32* @cur_score, align 4, !tbaa !2
  %arrayidx409 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom259, i64 %idxprom259
  %121 = bitcast %struct.move_s* %arrayidx409 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %120, i64 24, i32 4, i1 false), !tbaa.struct !4
  %j.2581 = add i32 %91, 1
  %idxprom415583 = sext i32 %j.2581 to i64
  %arrayidx416584 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom415583
  %122 = load i32* %arrayidx416584, align 4, !tbaa !2
  %cmp417585 = icmp slt i32 %j.2581, %122
  br i1 %cmp417585, label %for.body418, label %for.end430

for.body418:                                      ; preds = %if.end392, %for.body418
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %for.body418 ], [ %idxprom415583, %if.end392 ]
  %j.2586 = phi i32 [ %j.2, %for.body418 ], [ %j.2581, %if.end392 ]
  %arrayidx422 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom259, i64 %indvars.iv598
  %arrayidx427 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %idxprom415583, i64 %indvars.iv598
  %123 = bitcast %struct.move_s* %arrayidx422 to i8*
  %124 = bitcast %struct.move_s* %arrayidx427 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 24, i32 4, i1 false), !tbaa.struct !4
  %j.2 = add nsw i32 %j.2586, 1
  %cmp417 = icmp slt i32 %j.2, %122
  %indvars.iv.next599 = add i64 %indvars.iv598, 1
  br i1 %cmp417, label %for.body418, label %for.end430

for.end430:                                       ; preds = %for.body418, %if.end392
  %arrayidx435 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom259
  store i32 %122, i32* %arrayidx435, align 4, !tbaa !2
  %cmp436 = icmp slt i32 %85, %originalbeta
  br i1 %cmp436, label %if.end438, label %if.then437

if.then437:                                       ; preds = %for.end430
  %125 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %1, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end438:                                        ; preds = %for.end430
  %126 = load i32* @post, align 4, !tbaa !0
  %tobool439 = icmp ne i32 %126, 0
  %127 = load i32* @i_depth, align 4, !tbaa !2
  %cmp441 = icmp sgt i32 %127, 1
  %or.cond496 = and i1 %tobool439, %cmp441
  br i1 %or.cond496, label %if.then442, label %if.end444

if.then442:                                       ; preds = %if.end438
  call void @post_thinking(i32 %85) #5
  br label %if.end444

if.end444:                                        ; preds = %if.end252, %if.end438, %if.then442
  %alpha.1 = phi i32 [ %85, %if.then442 ], [ %85, %if.end438 ], [ %alpha.0.ph, %if.end252 ]
  %first.0. = select i1 %tobool255, i32 %first.0.ph, i32 0
  %128 = load i32* @nodes, align 4, !tbaa !2
  %sub448 = sub nsw i32 %128, %38
  %129 = load i32* %i, align 4, !tbaa !2
  %idxprom449 = sext i32 %129 to i64
  %arrayidx450 = getelementptr inbounds [512 x i32]* @rootnodecount, i64 0, i64 %idxprom449
  store i32 %sub448, i32* %arrayidx450, align 4, !tbaa !2
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %tobool451 = icmp eq i32 %no_moves.0.ph, 0
  %130 = load i32* @is_pondering, align 4, !tbaa !0
  %tobool453 = icmp ne i32 %130, 0
  %or.cond497 = or i1 %tobool451, %tobool453
  br i1 %or.cond497, label %if.else474, label %if.then454

if.then454:                                       ; preds = %while.end
  %131 = load i32* @Variant, align 4, !tbaa !2
  %.off = add i32 %131, -3
  %132 = icmp ugt i32 %.off, 1
  br i1 %132, label %if.then458, label %if.else468

if.then458:                                       ; preds = %if.then454
  %call459 = call i32 @in_check() #5
  %tobool460 = icmp eq i32 %call459, 0
  br i1 %tobool460, label %if.else466, label %if.then461

if.then461:                                       ; preds = %if.then458
  %133 = load i32* @white_to_move, align 4, !tbaa !2
  %cmp462 = icmp eq i32 %133, 1
  br i1 %cmp462, label %if.then463, label %if.else464

if.then463:                                       ; preds = %if.then461
  store i32 2, i32* @result, align 4, !tbaa !2
  br label %if.end483

if.else464:                                       ; preds = %if.then461
  store i32 3, i32* @result, align 4, !tbaa !2
  br label %if.end483

if.else466:                                       ; preds = %if.then458
  store i32 1, i32* @result, align 4, !tbaa !2
  br label %if.end483

if.else468:                                       ; preds = %if.then454
  %134 = load i32* @white_to_move, align 4, !tbaa !2
  %cmp469 = icmp eq i32 %134, 1
  br i1 %cmp469, label %if.then470, label %if.else471

if.then470:                                       ; preds = %if.else468
  store i32 3, i32* @result, align 4, !tbaa !2
  br label %if.end483

if.else471:                                       ; preds = %if.else468
  store i32 2, i32* @result, align 4, !tbaa !2
  br label %if.end483

if.else474:                                       ; preds = %while.end
  %tobool475 = icmp eq i32 %130, 0
  %135 = load i32* @fifty, align 4, !tbaa !2
  %cmp477 = icmp sgt i32 %135, 100
  %or.cond499 = and i1 %tobool475, %cmp477
  br i1 %or.cond499, label %if.then478, label %if.end483

if.then478:                                       ; preds = %if.else474
  store i32 4, i32* @result, align 4, !tbaa !2
  store i32 0, i32* @cur_score, align 4, !tbaa !2
  %136 = load i32* @ply, align 4, !tbaa !2
  %idxprom479 = sext i32 %136 to i64
  %arrayidx480 = getelementptr inbounds [300 x i32]* @pv_length, i64 0, i64 %idxprom479
  store i32 0, i32* %arrayidx480, align 4, !tbaa !2
  %137 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end483:                                        ; preds = %if.else474, %if.then463, %if.else464, %if.else466, %if.else471, %if.then470
  %138 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %1, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

cleanup:                                          ; preds = %if.end483, %if.then478, %if.then437, %if.then251, %if.then
  call void @llvm.lifetime.end(i64 2048, i8* %3) #2
  call void @llvm.lifetime.end(i64 2048, i8* %2) #2
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #1

; Function Attrs: optsize
declare void @post_fh_thinking(i32, %struct.move_s*) #1

; Function Attrs: optsize
declare void @post_fl_thinking(i32, %struct.move_s*) #1

; Function Attrs: optsize
declare void @post_thinking(i32) #1

; Function Attrs: optsize
declare void @post_fail_thinking(i32, %struct.move_s*) #1

; Function Attrs: nounwind optsize uwtable
define void @think(%struct.move_s* noalias nocapture sret %agg.result) #0 {
entry:
  %comp_move = alloca %struct.move_s, align 8
  %temp_move = alloca %struct.move_s, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %output = alloca [8 x i8], align 1
  %tmp287 = alloca %struct.move_s, align 4
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  store i32 0, i32* @userealholdings, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  %old_move.sroa.0.0.idx = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 0
  %old_move.sroa.1.4.idx628 = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 1
  %old_move.sroa.2.8.idx631 = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 2
  %old_move.sroa.3.12.idx634 = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 3
  %old_move.sroa.4.16.idx = getelementptr inbounds %struct.move_s* %comp_move, i64 0, i32 4
  %1 = bitcast i32* %old_move.sroa.4.16.idx to i64*
  %2 = bitcast %struct.move_s* %comp_move to i8*
  %3 = bitcast %struct.move_s* %tmp287 to i8*
  %arraydecay = getelementptr inbounds [8 x i8]* %output, i64 0, i64 0
  %4 = bitcast %struct.move_s* %temp_move to i8*
  br label %restart.outer

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
  %tobool68 = icmp ne i32 %pn_restart.0.ph, 0
  %conv72 = sitofp i32 %pn_restart.0.ph to float
  %conv73 = fpext float %conv72 to double
  %add74 = fadd double %conv73, 1.000000e+00
  %cmp288 = icmp slt i32 %pn_restart.0.ph, 10
  br label %restart

restart:                                          ; preds = %restart.outer, %if.else483
  %old_move.sroa.4.0.load663 = phi i64 [ %old_move.sroa.4.0.load664, %if.else483 ], [ %old_move.sroa.4.0.load663.ph, %restart.outer ]
  %temp_score.0 = phi i32 [ %temp_score.5, %if.else483 ], [ %temp_score.0.ph, %restart.outer ]
  %old_move.sroa.0.0 = phi i32 [ %old_move.sroa.0.1, %if.else483 ], [ %old_move.sroa.0.0.ph, %restart.outer ]
  %old_move.sroa.1.0 = phi i32 [ %old_move.sroa.1.1, %if.else483 ], [ %old_move.sroa.1.0.ph, %restart.outer ]
  %old_move.sroa.2.0 = phi i32 [ %old_move.sroa.2.1, %if.else483 ], [ %old_move.sroa.2.0.ph, %restart.outer ]
  %lastlegal.0 = phi i32 [ %lastlegal.5, %if.else483 ], [ %lastlegal.0.ph, %restart.outer ]
  %old_move.sroa.3.0 = phi i32 [ %old_move.sroa.3.1, %if.else483 ], [ %old_move.sroa.3.0.ph, %restart.outer ]
  store i32 0, i32* @nodes, align 4, !tbaa !2
  store i32 0, i32* @qnodes, align 4, !tbaa !2
  store i32 1, i32* @ply, align 4, !tbaa !2
  store i32 0, i32* @ECacheProbes, align 4, !tbaa !2
  store i32 0, i32* @ECacheHits, align 4, !tbaa !2
  store i32 0, i32* @TTProbes, align 4, !tbaa !2
  store i32 0, i32* @TTHits, align 4, !tbaa !2
  store i32 0, i32* @TTStores, align 4, !tbaa !2
  store i32 0, i32* @NCuts, align 4, !tbaa !2
  store i32 0, i32* @NTries, align 4, !tbaa !2
  store i32 0, i32* @TExt, align 4, !tbaa !2
  store i32 0, i32* @FH, align 4, !tbaa !2
  store i32 0, i32* @FHF, align 4, !tbaa !2
  store i32 0, i32* @PVS, align 4, !tbaa !2
  store i32 0, i32* @FULL, align 4, !tbaa !2
  store i32 0, i32* @PVSF, align 4, !tbaa !2
  store i32 0, i32* @ext_check, align 4, !tbaa !2
  store i32 0, i32* @ext_recap, align 4, !tbaa !2
  store i32 0, i32* @ext_onerep, align 4, !tbaa !2
  store i32 0, i32* @razor_drop, align 4, !tbaa !2
  store i32 0, i32* @razor_material, align 4, !tbaa !2
  store i32 0, i32* @drop_cuts, align 4, !tbaa !2
  store i32 0, i32* @extendedtime, align 4, !tbaa !2
  store i32 0, i32* @forcedwin, align 4, !tbaa !2
  store i32 200, i32* @maxposdiff, align 4, !tbaa !2
  store i8 0, i8* @true_i_depth, align 1, !tbaa !0
  store i32 -1, i32* @bestmovenum, align 4, !tbaa !2
  %call = call i32 @interrupt() #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %restart
  %5 = load i32* @is_analyzing, align 4, !tbaa !0
  %6 = load i32* @is_pondering, align 4, !tbaa !0
  %7 = or i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %restart
  %call3 = call i64 @rtime() #5
  store i64 %call3, i64* @start_time, align 8, !tbaa !3
  store i32 0, i32* @legals, align 4, !tbaa !2
  %10 = load i32* @Variant, align 4, !tbaa !2
  %cmp = icmp eq i32 %10, 4
  %. = zext i1 %cmp to i32
  store i32 %., i32* @captures, align 4, !tbaa !0
  call void @gen(%struct.move_s* %arrayidx) #5
  %11 = load i32* @numb_moves, align 4, !tbaa !2
  %call6 = call i32 @in_check() #5
  %12 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp7665 = icmp sgt i32 %12, 0
  br i1 %cmp7665, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %if.end13
  %lastlegal.1667 = phi i32 [ %lastlegal.2, %if.end13 ], [ %lastlegal.0, %if.end ]
  %l.0666 = phi i32 [ %inc15, %if.end13 ], [ 0, %if.end ]
  call void @make(%struct.move_s* %arrayidx, i32 %l.0666) #5
  %call10 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %l.0666, i32 %call6) #5
  %tobool11 = icmp eq i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.body
  %13 = load i32* @legals, align 4, !tbaa !2
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @legals, align 4, !tbaa !2
  br label %if.end13

if.end13:                                         ; preds = %for.body, %if.then12
  %lastlegal.2 = phi i32 [ %l.0666, %if.then12 ], [ %lastlegal.1667, %for.body ]
  call void @unmake(%struct.move_s* %arrayidx, i32 %l.0666) #5
  %inc15 = add nsw i32 %l.0666, 1
  %14 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %inc15, %14
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %if.end13, %if.end
  %lastlegal.1.lcssa = phi i32 [ %lastlegal.0, %if.end ], [ %lastlegal.2, %if.end13 ]
  %15 = load i32* @Variant, align 4, !tbaa !2
  %cmp16 = icmp eq i32 %15, 4
  %16 = load i32* @legals, align 4, !tbaa !2
  %cmp18 = icmp eq i32 %16, 0
  %or.cond516 = and i1 %cmp16, %cmp18
  br i1 %or.cond516, label %if.then19, label %if.end35

if.then19:                                        ; preds = %for.end
  store i32 0, i32* @captures, align 4, !tbaa !0
  call void @gen(%struct.move_s* %arrayidx) #5
  %17 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp22668 = icmp sgt i32 %17, 0
  br i1 %cmp22668, label %for.body23, label %if.end35.loopexit

for.body23:                                       ; preds = %if.then19, %if.end30
  %lastlegal.3670 = phi i32 [ %lastlegal.4, %if.end30 ], [ %lastlegal.1.lcssa, %if.then19 ]
  %l.1669 = phi i32 [ %inc33, %if.end30 ], [ 0, %if.then19 ]
  call void @make(%struct.move_s* %arrayidx, i32 %l.1669) #5
  %call26 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %l.1669, i32 %call6) #5
  %tobool27 = icmp eq i32 %call26, 0
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %for.body23
  %18 = load i32* @legals, align 4, !tbaa !2
  %inc29 = add nsw i32 %18, 1
  store i32 %inc29, i32* @legals, align 4, !tbaa !2
  br label %if.end30

if.end30:                                         ; preds = %for.body23, %if.then28
  %lastlegal.4 = phi i32 [ %l.1669, %if.then28 ], [ %lastlegal.3670, %for.body23 ]
  call void @unmake(%struct.move_s* %arrayidx, i32 %l.1669) #5
  %inc33 = add nsw i32 %l.1669, 1
  %19 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp22 = icmp slt i32 %inc33, %19
  br i1 %cmp22, label %for.body23, label %if.end35.loopexit

if.end35.loopexit:                                ; preds = %if.end30, %if.then19
  %lastlegal.3.lcssa = phi i32 [ %lastlegal.1.lcssa, %if.then19 ], [ %lastlegal.4, %if.end30 ]
  %.pre = load i32* @Variant, align 4, !tbaa !2
  %.pre751 = load i32* @legals, align 4, !tbaa !2
  br label %if.end35

if.end35:                                         ; preds = %if.end35.loopexit, %for.end
  %20 = phi i32 [ %16, %for.end ], [ %.pre751, %if.end35.loopexit ]
  %21 = phi i32 [ %15, %for.end ], [ %.pre, %if.end35.loopexit ]
  %lastlegal.5 = phi i32 [ %lastlegal.1.lcssa, %for.end ], [ %lastlegal.3.lcssa, %if.end35.loopexit ]
  %num_moves.0 = phi i32 [ %11, %for.end ], [ %17, %if.end35.loopexit ]
  %22 = load i32* @is_pondering, align 4, !tbaa !0
  %notlhs = icmp ne i32 %21, 1
  %notrhs = icmp eq i32 %22, 0
  %or.cond517.not = and i1 %notrhs, %notlhs
  %cmp40 = icmp eq i32 %20, 1
  %or.cond556 = and i1 %or.cond517.not, %cmp40
  br i1 %or.cond556, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end35
  %23 = load i32* @inc, align 4, !tbaa !2
  %mul = mul nsw i32 %23, 100
  %24 = load i32* @time_cushion, align 4, !tbaa !2
  %add = add nsw i32 %24, %mul
  store i32 %add, i32* @time_cushion, align 4, !tbaa !2
  %idxprom = sext i32 %lastlegal.5 to i64
  %arrayidx42 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom
  %25 = bitcast %struct.move_s* %agg.result to i8*
  %26 = bitcast %struct.move_s* %arrayidx42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  call void @check_phase() #5
  %27 = load i32* @phase, align 4, !tbaa !2
  switch i32 %27, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
    i32 2, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end44
  %puts658 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str22, i64 0, i64 0))
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end44
  %puts657 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str21, i64 0, i64 0))
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end44
  %puts = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end44, %sw.bb48, %sw.bb46, %sw.bb
  %28 = load i32* @is_pondering, align 4, !tbaa !0
  %tobool50 = icmp eq i32 %28, 0
  br i1 %tobool50, label %if.then51, label %if.else66

if.then51:                                        ; preds = %sw.epilog
  %29 = load i32* @fixed_time, align 4, !tbaa !2
  %tobool52 = icmp eq i32 %29, 0
  br i1 %tobool52, label %if.then53, label %if.else64

if.then53:                                        ; preds = %if.then51
  %30 = load i32* @go_fast, align 4, !tbaa !0
  %tobool54 = icmp eq i32 %30, 0
  %call56 = call i32 @allocate_time() #5
  br i1 %tobool54, label %if.else61, label %if.then55

if.then55:                                        ; preds = %if.then53
  %cmp57 = icmp sgt i32 %call56, 40
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.then55
  store i32 40, i32* @time_for_move, align 4, !tbaa !2
  br label %if.end67

if.else59:                                        ; preds = %if.then55
  store i32 %call56, i32* @time_for_move, align 4, !tbaa !2
  br label %if.end67

if.else61:                                        ; preds = %if.then53
  store i32 %call56, i32* @time_for_move, align 4, !tbaa !2
  br label %if.end67

if.else64:                                        ; preds = %if.then51
  store i32 %29, i32* @time_for_move, align 4, !tbaa !2
  br label %if.end67

if.else66:                                        ; preds = %sw.epilog
  store i32 999999, i32* @time_for_move, align 4, !tbaa !2
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %if.then58, %if.else59, %if.else61, %if.else66
  %31 = phi i32 [ %29, %if.else64 ], [ 40, %if.then58 ], [ %call56, %if.else59 ], [ %call56, %if.else61 ], [ 999999, %if.else66 ]
  br i1 %tobool68, label %if.then69, label %if.then79.critedge

if.then69:                                        ; preds = %if.end67
  %conv = sitofp i32 %31 to float
  %mul70 = fmul float %conv, 2.000000e+00
  %conv71 = fpext float %mul70 to double
  %div = fdiv double %conv71, %add74
  %conv75 = fptosi double %div to i32
  store i32 %conv75, i32* @time_for_move, align 4, !tbaa !2
  %call77 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str4, i64 0, i64 0), i32 %conv75) #5
  br label %if.end80

if.then79.critedge:                               ; preds = %if.end67
  %call77.c = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str4, i64 0, i64 0), i32 %31) #5
  call void @clear_tt() #5
  call void @reset_ecache() #5
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false)
  br label %if.end80

if.end80:                                         ; preds = %if.then69, %if.then79.critedge
  %32 = load i32* @is_pondering, align 4, !tbaa !0
  %33 = or i32 %32, %pn_restart.0.ph
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %land.lhs.true84, label %if.else102

land.lhs.true84:                                  ; preds = %if.end80
  %35 = load i32* @Variant, align 4, !tbaa !2
  %.off = add i32 %35, -3
  %36 = icmp ult i32 %.off, 2
  br i1 %36, label %land.lhs.true90, label %if.else102

land.lhs.true90:                                  ; preds = %land.lhs.true84
  %37 = load i32* @piece_count, align 4, !tbaa !2
  %cmp91 = icmp sgt i32 %37, 3
  %cmp94 = icmp ne i32 %35, 3
  %or.cond520 = or i1 %cmp91, %cmp94
  br i1 %or.cond520, label %if.then96, label %if.else102

if.then96:                                        ; preds = %land.lhs.true90
  %38 = load i32* @time_for_move, align 4, !tbaa !2
  %conv97 = sitofp i32 %38 to float
  %conv98 = fpext float %conv97 to double
  %div100 = fdiv double %conv98, 3.000000e+00
  %conv101 = fptosi double %div100 to i32
  store i32 %conv101, i32* @pn_time, align 4, !tbaa !2
  call void @proofnumberscan() #5
  br label %if.end106

if.else102:                                       ; preds = %if.end80, %land.lhs.true90, %land.lhs.true84
  br i1 %tobool68, label %if.end106, label %if.then104

if.then104:                                       ; preds = %if.else102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end106

if.end106:                                        ; preds = %if.else102, %if.then104, %if.then96
  %39 = load i32* @result, align 4, !tbaa !2
  %tobool107 = icmp eq i32 %39, 0
  br i1 %tobool107, label %if.end112, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %if.end106
  %40 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !tbaa !2
  %41 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !tbaa !2
  %cmp109 = icmp eq i32 %40, %41
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %land.lhs.true108
  %42 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end112:                                        ; preds = %if.end106, %land.lhs.true108
  %43 = load i32* @forcedwin, align 4, !tbaa !2
  %44 = or i32 %39, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %for.cond127.preheader, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end112
  %46 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !tbaa !2
  %47 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !tbaa !2
  %cmp117 = icmp eq i32 %46, %47
  %48 = load i32* @is_analyzing, align 4, !tbaa !0
  %tobool120 = icmp ne i32 %48, 0
  %or.cond522 = or i1 %cmp117, %tobool120
  br i1 %or.cond522, label %for.cond127.preheader, label %if.then121

if.then121:                                       ; preds = %land.lhs.true116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end272

for.cond127.preheader:                            ; preds = %land.lhs.true116, %if.end112, %for.inc138
  %indvars.iv706 = phi i64 [ %indvars.iv.next707, %for.inc138 ], [ 0, %if.end112 ], [ 0, %land.lhs.true116 ]
  br label %for.body130

for.body130:                                      ; preds = %for.body130, %for.cond127.preheader
  %indvars.iv = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next, %for.body130 ]
  %arrayidx134 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 %indvars.iv706, i64 %indvars.iv
  %49 = bitcast %struct.move_s* %arrayidx134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 300
  br i1 %exitcond, label %for.inc138, label %for.body130

for.inc138:                                       ; preds = %for.body130
  %indvars.iv.next707 = add i64 %indvars.iv706, 1
  %lftr.wideiv708 = trunc i64 %indvars.iv.next707 to i32
  %exitcond709 = icmp eq i32 %lftr.wideiv708, 300
  br i1 %exitcond709, label %for.end140, label %for.cond127.preheader

for.end140:                                       ; preds = %for.inc138
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x [144 x i32]]* @history_h to i8*), i8 0, i64 82944, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores to i8*), i8 0, i64 1200, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores2 to i8*), i8 0, i64 1200, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores3 to i8*), i8 0, i64 1200, i32 4, i1 false)
  br label %for.body144

for.body144:                                      ; preds = %for.body144, %for.end140
  %indvars.iv710 = phi i64 [ 0, %for.end140 ], [ %indvars.iv.next711, %for.body144 ]
  %arrayidx152 = getelementptr inbounds [300 x %struct.move_s]* @killer1, i64 0, i64 %indvars.iv710
  %50 = bitcast %struct.move_s* %arrayidx152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %arrayidx154 = getelementptr inbounds [300 x %struct.move_s]* @killer2, i64 0, i64 %indvars.iv710
  %51 = bitcast %struct.move_s* %arrayidx154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %arrayidx156 = getelementptr inbounds [300 x %struct.move_s]* @killer3, i64 0, i64 %indvars.iv710
  %52 = bitcast %struct.move_s* %arrayidx156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %indvars.iv.next711 = add i64 %indvars.iv710, 1
  %lftr.wideiv712 = trunc i64 %indvars.iv.next711 to i32
  %exitcond713 = icmp eq i32 %lftr.wideiv712, 300
  br i1 %exitcond713, label %for.end159, label %for.body144

for.end159:                                       ; preds = %for.body144
  call void @llvm.memset.p0i8.i64(i8* bitcast ([512 x i32]* @rootnodecount to i8*), i8 0, i64 2048, i32 16, i1 false)
  store i32 0, i32* @cur_score, align 4, !tbaa !2
  store i32 1, i32* @i_depth, align 4, !tbaa !2
  %53 = load i32* @maxdepth, align 4, !tbaa !2
  %cmp161676 = icmp slt i32 %53, 1
  br i1 %cmp161676, label %if.end272.loopexit, label %for.body163

for.body163:                                      ; preds = %for.end159, %if.end255
  %temp_score.1677 = phi i32 [ %temp_score.4, %if.end255 ], [ 0, %for.end159 ]
  %call164 = call i64 @rtime() #5
  %54 = load i64* @start_time, align 8, !tbaa !3
  %call165 = call i32 @rdifftime(i64 %call164, i64 %54) #5
  %conv166 = sitofp i32 %call165 to double
  %55 = load i32* @time_for_move, align 4, !tbaa !2
  %conv167 = sitofp i32 %55 to double
  %mul168 = fmul double %conv167, 2.100000e+00
  %div169 = fdiv double %mul168, 3.000000e+00
  %cmp170 = fcmp ogt double %conv166, %div169
  %56 = load i32* @i_depth, align 4, !tbaa !2
  %cmp173 = icmp sgt i32 %56, 2
  %or.cond523 = and i1 %cmp170, %cmp173
  br i1 %or.cond523, label %if.end272.loopexit, label %if.end176

if.end176:                                        ; preds = %for.body163
  store i32 0, i32* @failed, align 4, !tbaa !2
  %57 = load i32* @Variant, align 4, !tbaa !2
  %cmp177 = icmp eq i32 %57, 2
  %cond = select i1 %cmp177, i32 35, i32 100
  %sub = sub nsw i32 %temp_score.1677, %cond
  %add182 = add nsw i32 %cond, %temp_score.1677
  call void @search_root(%struct.move_s* sret %temp_move, i32 %sub, i32 %add182, i32 %56) #6
  %58 = load i32* @result, align 4, !tbaa !2
  %tobool183 = icmp eq i32 %58, 0
  br i1 %tobool183, label %if.end185, label %if.end272.loopexit

if.end185:                                        ; preds = %if.end176
  %59 = load i32* @cur_score, align 4, !tbaa !2
  %not.cmp186 = icmp sle i32 %59, %sub
  %.659 = zext i1 %not.cmp186 to i32
  store i32 %.659, i32* @failed, align 4, !tbaa !2
  %cmp191 = icmp sgt i32 %59, %sub
  %60 = load i32* @time_exit, align 4, !tbaa !0
  %tobool194 = icmp ne i32 %60, 0
  %or.cond524 = or i1 %cmp191, %tobool194
  br i1 %or.cond524, label %if.else201, label %if.then195

if.then195:                                       ; preds = %if.end185
  %61 = load i32* @i_depth, align 4, !tbaa !2
  call void @search_root(%struct.move_s* sret %temp_move, i32 -1000000, i32 1000000, i32 %61) #6
  %62 = load i32* @time_exit, align 4, !tbaa !0
  %tobool198 = icmp eq i32 %62, 0
  br i1 %tobool198, label %if.then199, label %if.end213

if.then199:                                       ; preds = %if.then195
  store i32 0, i32* @failed, align 4, !tbaa !2
  br label %if.end213

if.else201:                                       ; preds = %if.end185
  %cmp202 = icmp slt i32 %59, %add182
  %or.cond525 = or i1 %cmp202, %tobool194
  br i1 %or.cond525, label %if.end213, label %if.then206

if.then206:                                       ; preds = %if.else201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 24, i32 4, i1 false), !tbaa.struct !4
  %63 = load i32* @i_depth, align 4, !tbaa !2
  call void @search_root(%struct.move_s* sret %temp_move, i32 -1000000, i32 1000000, i32 %63) #6
  %64 = load i32* @time_exit, align 4, !tbaa !0
  %tobool209 = icmp eq i32 %64, 0
  br i1 %tobool209, label %if.then210, label %if.end213

if.then210:                                       ; preds = %if.then206
  store i32 0, i32* @failed, align 4, !tbaa !2
  br label %if.end213

if.end213:                                        ; preds = %if.then206, %if.then195, %if.else201, %if.then210, %if.then199
  %temp_score.2 = phi i32 [ %temp_score.1677, %if.else201 ], [ %59, %if.then206 ], [ %59, %if.then210 ], [ %temp_score.1677, %if.then195 ], [ %temp_score.1677, %if.then199 ]
  %call214 = call i32 @interrupt() #5
  %tobool215 = icmp ne i32 %call214, 0
  %65 = load i32* @i_depth, align 4, !tbaa !2
  %cmp217 = icmp sgt i32 %65, 1
  %or.cond526 = and i1 %tobool215, %cmp217
  br i1 %or.cond526, label %if.then219, label %if.end227

if.then219:                                       ; preds = %if.end213
  %66 = load i32* @is_pondering, align 4, !tbaa !0
  %tobool220 = icmp eq i32 %66, 0
  br i1 %tobool220, label %if.else222, label %if.then221

if.then221:                                       ; preds = %if.then219
  %67 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.else222:                                       ; preds = %if.then219
  %68 = load i32* @go_fast, align 4, !tbaa !0
  %tobool223 = icmp eq i32 %68, 0
  br i1 %tobool223, label %if.end272.loopexit, label %if.end227

if.end227:                                        ; preds = %if.else222, %if.end213
  %69 = load i32* @time_failure, align 4, !tbaa !0
  %70 = load i32* @failed, align 4, !tbaa !2
  %71 = or i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %if.then231, label %if.end252

if.then231:                                       ; preds = %if.end227
  %73 = load i32* @cur_score, align 4, !tbaa !2
  %cmp232 = icmp eq i32 %73, -1000000
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.then231
  %74 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end235:                                        ; preds = %if.then231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @stringize_pv(i8* getelementptr inbounds ([256 x i8]* @postpv, i64 0, i64 0)) #5
  %75 = load i32* @time_exit, align 4, !tbaa !0
  %tobool236 = icmp eq i32 %75, 0
  %76 = load i32* @i_depth, align 4, !tbaa !2
  br i1 %tobool236, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.end235
  %conv238 = trunc i32 %76 to i8
  store i8 %conv238, i8* @true_i_depth, align 1, !tbaa !0
  br label %if.end239

if.end239:                                        ; preds = %if.end235, %if.then237
  %cmp240 = icmp sgt i32 %76, 1
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.end239
  %77 = load i32* @cur_score, align 4, !tbaa !2
  call void @post_thinking(i32 %77) #5
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %if.end239
  %cmp244 = icmp sgt i32 %73, 900000
  br i1 %cmp244, label %land.lhs.true246, label %if.end252

land.lhs.true246:                                 ; preds = %if.end243
  %78 = load i32* @cur_score, align 4, !tbaa !2
  %sub247 = sub nsw i32 1000000, %78
  %79 = load i32* @i_depth, align 4, !tbaa !2
  %cmp248 = icmp slt i32 %sub247, %79
  %80 = load i32* @time_exit, align 4, !tbaa !0
  %tobool253 = icmp ne i32 %80, 0
  %or.cond557 = or i1 %cmp248, %tobool253
  br i1 %or.cond557, label %if.end272.loopexit, label %if.end255

if.end252:                                        ; preds = %if.end243, %if.end227
  %temp_score.3 = phi i32 [ %temp_score.2, %if.end227 ], [ %73, %if.end243 ]
  %.old = load i32* @time_exit, align 4, !tbaa !0
  %tobool253.old = icmp eq i32 %.old, 0
  br i1 %tobool253.old, label %if.end252.if.end255_crit_edge, label %if.end272.loopexit

if.end252.if.end255_crit_edge:                    ; preds = %if.end252
  %.pre755 = load i32* @i_depth, align 4, !tbaa !2
  br label %if.end255

if.end255:                                        ; preds = %if.end252.if.end255_crit_edge, %land.lhs.true246
  %81 = phi i32 [ %.pre755, %if.end252.if.end255_crit_edge ], [ %79, %land.lhs.true246 ]
  %temp_score.4 = phi i32 [ %temp_score.3, %if.end252.if.end255_crit_edge ], [ %73, %land.lhs.true246 ]
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores to i8*), i8 0, i64 1200, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores2 to i8*), i8 0, i64 1200, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @killer_scores3 to i8*), i8 0, i64 1200, i32 4, i1 false)
  %inc270 = add nsw i32 %81, 1
  store i32 %inc270, i32* @i_depth, align 4, !tbaa !2
  %82 = load i32* @maxdepth, align 4, !tbaa !2
  %cmp161 = icmp slt i32 %81, %82
  br i1 %cmp161, label %for.body163, label %if.end272.loopexit

if.end272.loopexit:                               ; preds = %if.end255, %land.lhs.true246, %for.body163, %if.end176, %if.end252, %if.else222, %for.end159
  %temp_score.5.ph = phi i32 [ 0, %for.end159 ], [ %73, %land.lhs.true246 ], [ %temp_score.1677, %for.body163 ], [ %temp_score.1677, %if.end176 ], [ %temp_score.3, %if.end252 ], [ %temp_score.2, %if.else222 ], [ %temp_score.4, %if.end255 ]
  %.pre752 = load i32* @forcedwin, align 4, !tbaa !2
  br label %if.end272

if.end272:                                        ; preds = %if.end272.loopexit, %if.then121
  %83 = phi i32 [ %43, %if.then121 ], [ %.pre752, %if.end272.loopexit ]
  %temp_score.5 = phi i32 [ %temp_score.0, %if.then121 ], [ %temp_score.5.ph, %if.end272.loopexit ]
  %tobool273 = icmp eq i32 %83, 0
  br i1 %tobool273, label %if.then274, label %if.end341

if.then274:                                       ; preds = %if.end272
  %84 = bitcast %struct.move_s* %comp_move to i64*
  %old_move.sroa.0.0.copyload = load i64* %84, align 8
  %85 = trunc i64 %old_move.sroa.0.0.copyload to i32
  %86 = lshr i64 %old_move.sroa.0.0.copyload, 32
  %87 = trunc i64 %86 to i32
  %88 = bitcast i32* %old_move.sroa.2.8.idx631 to i64*
  %old_move.sroa.2.8.copyload = load i64* %88, align 8
  %89 = trunc i64 %old_move.sroa.2.8.copyload to i32
  %90 = lshr i64 %old_move.sroa.2.8.copyload, 32
  %91 = trunc i64 %90 to i32
  %92 = load i64* %1, align 8
  %93 = load i32* @Variant, align 4, !tbaa !2
  %.off642 = add i32 %93, -3
  %or.cond528.not = icmp ugt i32 %.off642, 1
  %94 = load i32* @result, align 4, !tbaa !2
  %tobool281 = icmp ne i32 %94, 0
  %or.cond529 = or i1 %or.cond528.not, %tobool281
  %95 = load i32* @alllosers, align 4, !tbaa !2
  %tobool283 = icmp ne i32 %95, 0
  %or.cond530 = or i1 %or.cond529, %tobool283
  %96 = load i32* @is_pondering, align 4, !tbaa !0
  %tobool285 = icmp ne i32 %96, 0
  %or.cond531 = or i1 %or.cond530, %tobool285
  br i1 %or.cond531, label %if.end341, label %if.then286

if.then286:                                       ; preds = %if.then274
  store i32 0, i32* @s_threat, align 4, !tbaa !2
  call void @proofnumbercheck(%struct.move_s* sret %tmp287, %struct.move_s* byval align 8 %comp_move) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false), !tbaa.struct !4
  %97 = load i32* @s_threat, align 4, !tbaa !2
  %tobool291 = icmp ne i32 %97, 0
  %or.cond532 = and i1 %cmp288, %tobool291
  br i1 %or.cond532, label %if.then292, label %if.end341

if.then292:                                       ; preds = %if.then286
  %inc293 = add nsw i32 %pn_restart.0.ph, 1
  %cmp295680 = icmp sgt i32 %num_moves.0, 0
  br i1 %cmp295680, label %for.body297, label %for.end334

for.body297:                                      ; preds = %if.then292, %for.inc319
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %for.inc319 ], [ 0, %if.then292 ]
  %from = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv745, i32 0
  %98 = load i32* %from, align 8, !tbaa !2
  %cmp301 = icmp eq i32 %98, %85
  br i1 %cmp301, label %land.lhs.true303, label %for.inc319

land.lhs.true303:                                 ; preds = %for.body297
  %target = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv745, i32 1
  %99 = load i32* %target, align 4, !tbaa !2
  %cmp307 = icmp eq i32 %99, %87
  br i1 %cmp307, label %land.lhs.true309, label %for.inc319

land.lhs.true309:                                 ; preds = %land.lhs.true303
  %promoted = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv745, i32 3
  %100 = load i32* %promoted, align 4, !tbaa !2
  %cmp313 = icmp eq i32 %100, %91
  br i1 %cmp313, label %if.then315, label %for.inc319

if.then315:                                       ; preds = %land.lhs.true309
  %arrayidx317 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv745
  store i32 1, i32* %arrayidx317, align 4, !tbaa !2
  br label %for.cond322.preheader

for.inc319:                                       ; preds = %for.body297, %land.lhs.true303, %land.lhs.true309
  %indvars.iv.next746 = add i64 %indvars.iv745, 1
  %101 = trunc i64 %indvars.iv.next746 to i32
  %cmp295 = icmp slt i32 %101, %num_moves.0
  br i1 %cmp295, label %for.body297, label %for.cond322.preheader

for.cond322.preheader:                            ; preds = %for.inc319, %if.then315
  br i1 %cmp295680, label %for.body325, label %for.end334

for.body325:                                      ; preds = %for.cond322.preheader, %for.body325
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %for.body325 ], [ 0, %for.cond322.preheader ]
  %k.1684 = phi i32 [ %k.1.inc330, %for.body325 ], [ %k.0.ph, %for.cond322.preheader ]
  %arrayidx327 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv747
  %102 = load i32* %arrayidx327, align 4, !tbaa !2
  %not.tobool328 = icmp ne i32 %102, 0
  %inc330 = zext i1 %not.tobool328 to i32
  %k.1.inc330 = add nsw i32 %inc330, %k.1684
  %indvars.iv.next748 = add i64 %indvars.iv747, 1
  %lftr.wideiv749 = trunc i64 %indvars.iv.next748 to i32
  %exitcond750 = icmp eq i32 %lftr.wideiv749, %num_moves.0
  br i1 %exitcond750, label %for.end334, label %for.body325

for.end334:                                       ; preds = %if.then292, %for.body325, %for.cond322.preheader
  %k.1.lcssa = phi i32 [ %k.0.ph, %for.cond322.preheader ], [ %k.1.inc330, %for.body325 ], [ %k.0.ph, %if.then292 ]
  %103 = load i32* @legals, align 4, !tbaa !2
  %cmp335 = icmp eq i32 %k.1.lcssa, %103
  br i1 %cmp335, label %if.then337, label %restart.outer

if.then337:                                       ; preds = %for.end334
  store i32 1, i32* @alllosers, align 4, !tbaa !2
  br label %restart.outer

if.end341:                                        ; preds = %if.then286, %if.end272, %if.then274
  %old_move.sroa.4.0.load664 = phi i64 [ %92, %if.then274 ], [ %old_move.sroa.4.0.load663, %if.end272 ], [ %92, %if.then286 ]
  %old_move.sroa.0.1 = phi i32 [ %85, %if.then274 ], [ %old_move.sroa.0.0, %if.end272 ], [ %85, %if.then286 ]
  %old_move.sroa.1.1 = phi i32 [ %87, %if.then274 ], [ %old_move.sroa.1.0, %if.end272 ], [ %87, %if.then286 ]
  %old_move.sroa.2.1 = phi i32 [ %89, %if.then274 ], [ %old_move.sroa.2.0, %if.end272 ], [ %89, %if.then286 ]
  %old_move.sroa.3.1 = phi i32 [ %91, %if.then274 ], [ %old_move.sroa.3.0, %if.end272 ], [ %91, %if.then286 ]
  %104 = load i32* @alllosers, align 4, !tbaa !2
  %tobool342 = icmp eq i32 %104, 0
  br i1 %tobool342, label %if.end344, label %if.then343

if.then343:                                       ; preds = %if.end341
  store i32 %old_move.sroa.0.1, i32* %old_move.sroa.0.0.idx, align 8
  store i32 %old_move.sroa.1.1, i32* %old_move.sroa.1.4.idx628, align 4
  store i32 %old_move.sroa.2.1, i32* %old_move.sroa.2.8.idx631, align 8
  store i32 %old_move.sroa.3.1, i32* %old_move.sroa.3.12.idx634, align 4
  store i64 %old_move.sroa.4.0.load664, i64* %1, align 8
  br label %if.end344

if.end344:                                        ; preds = %if.end341, %if.then343
  %105 = load i32* @xb_mode, align 4, !tbaa !2
  %tobool348 = icmp ne i32 %105, 0
  %or.cond533 = and i1 %tobool68, %tobool348
  br i1 %or.cond533, label %if.then349, label %if.end352

if.then349:                                       ; preds = %if.end344
  call void @comp_to_san(%struct.move_s* byval align 8 %comp_move, i8* %arraydecay) #5
  %call351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i32 %pn_restart.0.ph, i8* %arraydecay) #5
  store i32 0, i32* @result, align 4, !tbaa !2
  br label %if.end352

if.end352:                                        ; preds = %if.then349, %if.end344
  %call353 = call i64 @rtime() #5
  %106 = load i64* @start_time, align 8, !tbaa !3
  %call354 = call i32 @rdifftime(i64 %call353, i64 %106) #5
  %107 = load i32* @time_left, align 4, !tbaa !2
  %sub355 = sub nsw i32 %107, %call354
  store i32 %sub355, i32* @time_left, align 4, !tbaa !2
  %108 = load i32* @moves_to_tc, align 4, !tbaa !2
  %tobool356 = icmp eq i32 %108, 0
  %109 = load i32* @is_pondering, align 4, !tbaa !0
  %tobool358 = icmp ne i32 %109, 0
  %or.cond534 = or i1 %tobool356, %tobool358
  br i1 %or.cond534, label %if.end363, label %if.then359

if.then359:                                       ; preds = %if.end352
  %110 = load i32* @time_for_move, align 4, !tbaa !2
  %sub360 = sub i32 %110, %call354
  %111 = load i32* @inc, align 4, !tbaa !2
  %add361 = add nsw i32 %sub360, %111
  %112 = load i32* @time_cushion, align 4, !tbaa !2
  %add362 = add nsw i32 %add361, %112
  store i32 %add362, i32* @time_cushion, align 4, !tbaa !2
  br label %if.end363

if.end363:                                        ; preds = %if.end352, %if.then359
  %cmp364 = icmp ne i32 %temp_score.5, 999998
  %or.cond535 = or i1 %cmp364, %tobool358
  br i1 %or.cond535, label %if.else374, label %if.then368

if.then368:                                       ; preds = %if.end363
  %113 = load i32* @white_to_move, align 4, !tbaa !2
  %cmp369 = icmp eq i32 %113, 1
  br i1 %cmp369, label %if.then371, label %if.else372

if.then371:                                       ; preds = %if.then368
  store i32 3, i32* @result, align 4, !tbaa !2
  br label %if.end386

if.else372:                                       ; preds = %if.then368
  store i32 2, i32* @result, align 4, !tbaa !2
  br label %if.end386

if.else374:                                       ; preds = %if.end363
  %cmp375 = icmp ne i32 %temp_score.5, -999998
  %or.cond536 = or i1 %cmp375, %tobool358
  br i1 %or.cond536, label %if.else374.if.end386_crit_edge, label %if.then379

if.else374.if.end386_crit_edge:                   ; preds = %if.else374
  %.pre753 = load i32* @result, align 4, !tbaa !2
  br label %if.end386

if.then379:                                       ; preds = %if.else374
  %114 = load i32* @white_to_move, align 4, !tbaa !2
  %cmp380 = icmp eq i32 %114, 1
  br i1 %cmp380, label %if.then382, label %if.else383

if.then382:                                       ; preds = %if.then379
  store i32 2, i32* @result, align 4, !tbaa !2
  br label %if.end386

if.else383:                                       ; preds = %if.then379
  store i32 3, i32* @result, align 4, !tbaa !2
  br label %if.end386

if.end386:                                        ; preds = %if.else374.if.end386_crit_edge, %if.else383, %if.then382, %if.then371, %if.else372
  %115 = phi i32 [ %.pre753, %if.else374.if.end386_crit_edge ], [ 3, %if.else383 ], [ 2, %if.then382 ], [ 3, %if.then371 ], [ 2, %if.else372 ]
  %116 = load i32* @post, align 4, !tbaa !0
  %117 = load i32* @xb_mode, align 4, !tbaa !2
  %notlhs643 = icmp eq i32 %116, 0
  %notrhs644 = icmp eq i32 %117, 0
  %or.cond537.not = or i1 %notrhs644, %notlhs643
  %or.cond538 = or i1 %or.cond537.not, %tobool358
  %or.cond538.not = xor i1 %or.cond538, true
  %cmp393 = icmp ne i32 %115, 3
  %or.cond539 = and i1 %cmp393, %or.cond538.not
  %cmp396 = icmp ne i32 %115, 2
  %or.cond540 = and i1 %or.cond539, %cmp396
  %cmp399 = icmp ne i32 %115, 4
  %or.cond541 = and i1 %or.cond540, %cmp399
  %cmp402 = icmp ne i32 %115, 5
  %or.cond542 = and i1 %or.cond541, %cmp402
  %cmp405 = icmp ne i32 %115, 1
  %or.cond543 = and i1 %or.cond542, %cmp405
  %118 = load i32* @forcedwin, align 4, !tbaa !2
  %tobool408.not = icmp eq i32 %118, 0
  %or.cond544.not = and i1 %or.cond543, %tobool408.not
  %cmp410 = icmp sgt i32 %temp_score.5, 999600
  %or.cond = and i1 %or.cond544.not, %cmp410
  br i1 %or.cond, label %if.then412, label %if.end425

if.then412:                                       ; preds = %if.end386
  %119 = load i32* @Variant, align 4, !tbaa !2
  %cmp413 = icmp eq i32 %119, 1
  %sub416 = sub nsw i32 1000000, %temp_score.5
  %div417 = sdiv i32 %sub416, 2
  br i1 %cmp413, label %if.else419, label %if.then415

if.then415:                                       ; preds = %if.then412
  %call418 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i32 %div417) #5
  br label %if.end425

if.else419:                                       ; preds = %if.then412
  %call422 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %div417) #5
  br label %if.end425

if.end425:                                        ; preds = %if.end386, %if.else419, %if.then415
  %120 = load i32* @result, align 4, !tbaa !2
  %.off645 = add i32 %120, -2
  %121 = icmp ugt i32 %.off645, 1
  %cmp432 = icmp ne i32 %120, 1
  %or.cond546 = and i1 %121, %cmp432
  %cmp435 = icmp ne i32 %120, 4
  %or.cond547 = and i1 %or.cond546, %cmp435
  %cmp438 = icmp ne i32 %120, 5
  %or.cond548 = and i1 %or.cond547, %cmp438
  %122 = load i8* @true_i_depth, align 1, !tbaa !0
  %cmp442 = icmp sgt i8 %122, 2
  %or.cond661 = and i1 %or.cond548, %cmp442
  br i1 %or.cond661, label %land.lhs.true444, label %if.end425.if.end457_crit_edge

if.end425.if.end457_crit_edge:                    ; preds = %if.end425
  %.pre754 = load i32* @Variant, align 4, !tbaa !2
  br label %if.end457

land.lhs.true444:                                 ; preds = %if.end425
  %123 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !tbaa !2
  %124 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !tbaa !2
  %125 = load i32* @is_pondering, align 4, !tbaa !0
  %notlhs654 = icmp eq i32 %123, %124
  %notrhs655 = icmp eq i32 %125, 0
  %or.cond549.not = and i1 %notrhs655, %notlhs654
  %126 = load i32* @Variant, align 4, !tbaa !2
  %cmp450 = icmp ne i32 %126, 1
  %or.cond550 = and i1 %or.cond549.not, %cmp450
  %127 = load i32* @bestmovenum, align 4, !tbaa !2
  %cmp453 = icmp eq i32 %127, -1
  %or.cond559 = and i1 %or.cond550, %cmp453
  br i1 %or.cond559, label %if.then455, label %if.end457

if.then455:                                       ; preds = %land.lhs.true444
  call void @llvm.trap()
  unreachable

if.end457:                                        ; preds = %if.end425.if.end457_crit_edge, %land.lhs.true444
  %128 = phi i32 [ %.pre754, %if.end425.if.end457_crit_edge ], [ %126, %land.lhs.true444 ]
  %cmp458 = icmp eq i32 %128, 1
  %cmp461 = icmp sgt i32 %temp_score.5, -999900
  %or.cond662 = and i1 %cmp458, %cmp461
  br i1 %or.cond662, label %if.then463, label %if.else471

if.then463:                                       ; preds = %if.end457
  %129 = load i32* @tradefreely, align 4, !tbaa !2
  %130 = load i32* @userealholdings, align 4, !tbaa !2
  %131 = or i32 %130, %129
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %if.then468, label %if.end515

if.then468:                                       ; preds = %if.then463
  store i32 1, i32* @tradefreely, align 4, !tbaa !2
  %puts653 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str20, i64 0, i64 0))
  br label %if.end515

if.else471:                                       ; preds = %if.end457
  %cmp472 = icmp slt i32 %temp_score.5, -999900
  %or.cond552 = and i1 %cmp472, %cmp458
  br i1 %or.cond552, label %land.lhs.true477, label %if.else497

land.lhs.true477:                                 ; preds = %if.else471
  %133 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !tbaa !2
  %134 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !tbaa !2
  %cmp478 = icmp eq i32 %133, %134
  br i1 %cmp478, label %if.then480, label %if.else497

if.then480:                                       ; preds = %land.lhs.true477
  %135 = load i32* @userealholdings, align 4, !tbaa !2
  %tobool481 = icmp eq i32 %135, 0
  br i1 %tobool481, label %if.else483, label %if.then482

if.then482:                                       ; preds = %if.then480
  store i32 1, i32* @must_sit, align 4, !tbaa !0
  %cmp486 = icmp sgt i32 %temp_score.5, -1000000
  br i1 %cmp486, label %if.then488, label %if.end515

if.else483:                                       ; preds = %if.then480
  store i32 1, i32* @userealholdings, align 4, !tbaa !2
  call void @ProcessHoldings(i8* getelementptr inbounds ([255 x i8]* @realholdings, i64 0, i64 0)) #5
  store i32 0, i32* @tradefreely, align 4, !tbaa !2
  %puts649 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str16, i64 0, i64 0))
  br label %restart

if.then488:                                       ; preds = %if.then482
  %136 = load i32* @partnerdead, align 4, !tbaa !0
  %tobool489 = icmp eq i32 %136, 0
  br i1 %tobool489, label %if.else493, label %if.then490

if.then490:                                       ; preds = %if.then488
  %puts651 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str18, i64 0, i64 0))
  %puts652 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str19, i64 0, i64 0))
  br label %if.end515

if.else493:                                       ; preds = %if.then488
  %puts650 = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str17, i64 0, i64 0))
  br label %if.end515

if.else497:                                       ; preds = %land.lhs.true477, %if.else471
  %temp_score.5.off = add i32 %temp_score.5, 59999
  %notlhs646 = icmp ugt i32 %temp_score.5.off, 19998
  %notrhs647 = icmp ne i32 %128, 1
  %or.cond554.not = or i1 %notrhs647, %notlhs646
  %137 = load i32* @partnerdead, align 4, !tbaa !0
  %tobool507 = icmp ne i32 %137, 0
  %or.cond555 = or i1 %or.cond554.not, %tobool507
  br i1 %or.cond555, label %if.end515, label %land.lhs.true508

land.lhs.true508:                                 ; preds = %if.else497
  %138 = load i32* getelementptr inbounds (%struct.move_s* @pn_move, i64 0, i32 1), align 4, !tbaa !2
  %139 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !tbaa !2
  %cmp509 = icmp eq i32 %138, %139
  br i1 %cmp509, label %if.then511, label %if.end515

if.then511:                                       ; preds = %land.lhs.true508
  store i32 1, i32* @must_sit, align 4, !tbaa !0
  %puts648 = call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str15, i64 0, i64 0))
  br label %if.end515

if.end515:                                        ; preds = %if.then463, %if.then490, %if.else493, %if.then482, %if.else497, %if.then511, %land.lhs.true508, %if.then468
  %140 = bitcast %struct.move_s* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %2, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

cleanup:                                          ; preds = %if.end515, %if.then234, %if.then221, %if.then111, %if.then41, %if.then
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare void @check_phase() #1

; Function Attrs: optsize
declare void @clear_tt() #1

; Function Attrs: optsize
declare void @reset_ecache() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare void @proofnumberscan() #1

; Function Attrs: optsize
declare void @stringize_pv(i8*) #1

; Function Attrs: optsize
declare void @proofnumbercheck(%struct.move_s* sret, %struct.move_s* byval align 8) #1

; Function Attrs: optsize
declare void @ProcessHoldings(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @tree(i32 %depth, i32 %indent, %struct._IO_FILE* %output, i8* nocapture %disp_b) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %tobool = icmp eq i32 %depth, 0
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #5
  %1 = load i32* @numb_moves, align 4, !tbaa !2
  %call = call i32 @in_check() #5
  %cmp37 = icmp sgt i32 %1, 0
  br i1 %cmp37, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %cmp735 = icmp sgt i32 %indent, 0
  %sub = add nsw i32 %depth, -1
  %add = add nsw i32 %indent, 2
  br label %for.body

for.body:                                         ; preds = %if.end17, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %if.end17 ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.038) #5
  %call3 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.038, i32 %call) #5
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.end17, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.body
  br i1 %cmp735, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %j.036 = phi i32 [ %inc, %for.body8 ], [ 0, %for.cond6.preheader ]
  %call9 = call i32 @fputc(i32 32, %struct._IO_FILE* %output) #5
  %inc = add nsw i32 %j.036, 1
  %exitcond = icmp eq i32 %inc, %indent
  br i1 %exitcond, label %for.end, label %for.body8

for.end:                                          ; preds = %for.body8, %for.cond6.preheader
  call void @print_move(%struct.move_s* %arrayidx, i32 %i.038, %struct._IO_FILE* %output) #5
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %output) #2
  %2 = load i8* %disp_b, align 1, !tbaa !0
  %cmp13 = icmp eq i8 %2, 121
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  call void @display_board(%struct._IO_FILE* %output, i32 1) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end
  call void @tree(i32 %sub, i32 %add, %struct._IO_FILE* %output, i8* %disp_b) #6
  br label %if.end17

if.end17:                                         ; preds = %for.body, %if.end16
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.038) #5
  %inc20 = add nsw i32 %i.038, 1
  %exitcond39 = icmp eq i32 %inc20, %1
  br i1 %exitcond39, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %if.end17, %entry
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @print_move(%struct.move_s*, i32, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @display_board(%struct._IO_FILE*, i32) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"long", metadata !0}
!4 = metadata !{i64 0, i64 4, metadata !2, i64 4, i64 4, metadata !2, i64 8, i64 4, metadata !2, i64 12, i64 4, metadata !2, i64 16, i64 4, metadata !2, i64 20, i64 4, metadata !2}
