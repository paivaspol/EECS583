; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_x = type { i32, i32, i32, i32 }

@divider = global [50 x i8] c"-------------------------------------------------\00", align 16
@dummy = global %struct.move_s zeroinitializer, align 4
@Variant = common global i32 0, align 4
@material = external global [14 x i32]
@std_material = external global [14 x i32]
@ECacheProbes = external global i32
@ECacheHits = external global i32
@TTProbes = external global i32
@TTStores = external global i32
@TTHits = external global i32
@bookidx = common global i32 0, align 4
@total_moves = external global i32
@ply = common global i32 0, align 4
@moves_to_tc = common global i32 0, align 4
@min_per_game = common global i32 0, align 4
@time_left = common global i32 0, align 4
@opp_rating = common global i32 0, align 4
@my_rating = common global i32 0, align 4
@maxdepth = common global i32 0, align 4
@maxposdiff = external global i32
@must_go = external global i32
@tradefreely = external global i32
@xb_mode = common global i32 0, align 4
@comp_color = common global i32 0, align 4
@is_pondering = common global i32 0, align 4
@allow_pondering = common global i32 0, align 4
@is_analyzing = common global i32 0, align 4
@have_partner = common global i32 0, align 4
@must_sit = common global i32 0, align 4
@go_fast = common global i32 0, align 4
@fixed_time = common global i32 0, align 4
@phase = common global i32 0, align 4
@root_to_move = common global i32 0, align 4
@kibitzed = external global i32
@move_number = common global i32 0, align 4
@hash = external global i32
@hash_history = common global [600 x i32] zeroinitializer, align 16
@stdout = external global %struct._IO_FILE*
@stdin = external global %struct._IO_FILE*
@white_to_move = common global i32 0, align 4
@result = common global i32 0, align 4
@path_x = common global [300 x %struct.move_x] zeroinitializer, align 16
@userealholdings = external global i32
@fifty = common global i32 0, align 4
@book_ply = common global i32 0, align 4
@opening_history = common global [256 x i8] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [29 x i8] c"\0ANodes: %i (%0.2f%% qnodes)\0A\00", align 1
@nodes = common global i32 0, align 4
@qnodes = common global i32 0, align 4
@.str2 = private unnamed_addr constant [54 x i8] c"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\0A\00", align 1
@.str3 = private unnamed_addr constant [60 x i8] c"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\0A\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\0A\00", align 1
@NTries = common global i32 0, align 4
@NCuts = common global i32 0, align 4
@TExt = common global i32 0, align 4
@.str5 = private unnamed_addr constant [61 x i8] c"Check extensions: %u  Razor drops : %u  Razor Material : %u\0A\00", align 1
@ext_check = common global i32 0, align 4
@razor_drop = external global i32
@razor_material = external global i32
@.str6 = private unnamed_addr constant [22 x i8] c"Move ordering : %f%%\0A\00", align 1
@FHF = external global i32
@FH = external global i32
@.str7 = private unnamed_addr constant [81 x i8] c"Material score: %d   Eval : %d  MaxPosDiff: %d  White hand: %d  Black hand : %d\0A\00", align 1
@Material = external global i32
@white_hand_eval = external global i32
@black_hand_eval = external global i32
@.str8 = private unnamed_addr constant [26 x i8] c"Hash : %X  HoldHash : %X\0A\00", align 1
@hold_hash = external global i32
@.str9 = private unnamed_addr constant [9 x i8] c"move %s\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"Sjeng: \00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"Illegal move: %s\0A\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"setboard\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@time_for_move = common global i32 0, align 4
@.str22 = private unnamed_addr constant [8 x i8] c"diagram\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"perft\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@raw_nodes = common global i32 0, align 4
@.str26 = private unnamed_addr constant [28 x i8] c"Raw nodes for depth %d: %i\0A\00", align 1
@.str27 = private unnamed_addr constant [13 x i8] c"Time : %.2f\0A\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str29 = private unnamed_addr constant [40 x i8] c"tellics set 1 Sjeng SPEC 1.0 (SPEC/%s)\0A\00", align 1
@setcode = common global [30 x i8] zeroinitializer, align 16
@piecedead = external global i32
@partnerdead = external global i32
@.str30 = private unnamed_addr constant [7 x i8] c"xboard\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str33 = private unnamed_addr constant [38 x i8] c"Number of nodes: %i (%0.2f%% qnodes)\0A\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@post = common global i32 0, align 4
@.str35 = private unnamed_addr constant [7 x i8] c"nopost\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str39 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str44 = private unnamed_addr constant [10 x i8] c"Eval: %d\0A\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"otim\00", align 1
@opp_time = common global i32 0, align 4
@.str49 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str51 = private unnamed_addr constant [12 x i8] c"%i %i:%i %i\00", align 1
@sec_per_game = common global i32 0, align 4
@inc = common global i32 0, align 4
@.str52 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@time_cushion = common global i32 0, align 4
@.str53 = private unnamed_addr constant [7 x i8] c"rating\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@.str55 = private unnamed_addr constant [8 x i8] c"holding\00", align 1
@.str56 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str57 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str58 = private unnamed_addr constant [11 x i8] c"crazyhouse\00", align 1
@zh_material = external global [14 x i32]
@.str59 = private unnamed_addr constant [9 x i8] c"bughouse\00", align 1
@.str60 = private unnamed_addr constant [8 x i8] c"suicide\00", align 1
@Giveaway = common global i32 0, align 4
@suicide_material = external global [14 x i32]
@.str61 = private unnamed_addr constant [9 x i8] c"giveaway\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"losers\00", align 1
@losers_material = external global [14 x i32]
@.str63 = private unnamed_addr constant [8 x i8] c"analyze\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str65 = private unnamed_addr constant [18 x i8] c"Move number : %d\0A\00", align 1
@.str66 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str67 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@wking_loc = common global i32 0, align 4
@white_castled = common global i32 0, align 4
@bking_loc = common global i32 0, align 4
@black_castled = common global i32 0, align 4
@ep_square = common global i32 0, align 4
@.str71 = private unnamed_addr constant [8 x i8] c"partner\00", align 1
@.str72 = private unnamed_addr constant [9 x i8] c"$partner\00", align 1
@.str73 = private unnamed_addr constant [6 x i8] c"ptell\00", align 1
@.str74 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str75 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str76 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str77 = private unnamed_addr constant [6 x i8] c"prove\00", align 1
@.str78 = private unnamed_addr constant [26 x i8] c"\0AMax time to search (s): \00", align 1
@start_time = common global i64 0, align 8
@pn_time = external global i32
@.str79 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str80 = private unnamed_addr constant [9 x i8] c"pong %d\0A\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"fritz\00", align 1
@.str82 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str83 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str84 = private unnamed_addr constant [26 x i8] c"New max depth set to: %d\0A\00", align 1
@.str85 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str86 = private unnamed_addr constant [9 x i8] c"protover\00", align 1
@.str92 = private unnamed_addr constant [9 x i8] c"accepted\00", align 1
@.str93 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1
@.str95 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str96 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@board = common global [144 x i32] zeroinitializer, align 16
@moved = common global [144 x i32] zeroinitializer, align 16
@pv_length = common global [300 x i32] zeroinitializer, align 16
@pieces = common global [62 x i32] zeroinitializer, align 16
@squares = common global [144 x i32] zeroinitializer, align 16
@num_pieces = common global i32 0, align 4
@i_depth = common global i32 0, align 4
@piece_count = common global i32 0, align 4
@killer_scores = common global [300 x i32] zeroinitializer, align 16
@killer_scores2 = common global [300 x i32] zeroinitializer, align 16
@killer_scores3 = common global [300 x i32] zeroinitializer, align 16
@cur_score = common global i32 0, align 4
@history_h = common global [144 x [144 x i32]] zeroinitializer, align 16
@captures = common global i32 0, align 4
@searching_pv = common global i32 0, align 4
@time_exit = common global i32 0, align 4
@time_failure = common global i32 0, align 4
@pv = common global [300 x [300 x %struct.move_s]] zeroinitializer, align 16
@killer1 = common global [300 x %struct.move_s] zeroinitializer, align 16
@killer2 = common global [300 x %struct.move_s] zeroinitializer, align 16
@killer3 = common global [300 x %struct.move_s] zeroinitializer, align 16
@path = common global [300 x %struct.move_s] zeroinitializer, align 16
@is_promoted = common global [62 x i32] zeroinitializer, align 16
@PVS = common global i32 0, align 4
@FULL = common global i32 0, align 4
@PVSF = common global i32 0, align 4
@my_partner = common global [256 x i8] zeroinitializer, align 16
@use_book = common global i32 0, align 4
@str = private unnamed_addr constant [19 x i8] c"tellics set f5 1=1\00"
@str120 = private unnamed_addr constant [62 x i8] c"feature ping=0 setboard=1 playother=0 san=0 usermove=0 time=1\00"
@str121 = private unnamed_addr constant [52 x i8] c"feature draw=0 sigint=0 sigterm=0 reuse=1 analyze=0\00"
@str122 = private unnamed_addr constant [32 x i8] c"feature myname=\22Sjeng SPEC 1.0\22\00"
@str123 = private unnamed_addr constant [70 x i8] c"feature variants=\22normal,bughouse,crazyhouse,suicide,giveaway,losers\22\00"
@str124 = private unnamed_addr constant [45 x i8] c"feature colors=1 ics=0 name=0 pause=0 done=1\00"
@str125 = private unnamed_addr constant [64 x i8] c"Interface does not support a required feature...expect trouble.\00"
@str126 = private unnamed_addr constant [40 x i8] c"diagram/d:       toggle diagram display\00"
@str127 = private unnamed_addr constant [33 x i8] c"exit/quit:       terminate Sjeng\00"
@str128 = private unnamed_addr constant [50 x i8] c"go:              make Sjeng play the side to move\00"
@str129 = private unnamed_addr constant [34 x i8] c"new:             start a new game\00"
@str130 = private unnamed_addr constant [54 x i8] c"level <x>:       the xboard style command to set time\00"
@str131 = private unnamed_addr constant [48 x i8] c"  <x> should be in the form: <a> <b> <c> where:\00"
@str132 = private unnamed_addr constant [48 x i8] c"  a -> moves to TC (0 if using an ICS style TC)\00"
@str133 = private unnamed_addr constant [24 x i8] c"  b -> minutes per game\00"
@str134 = private unnamed_addr constant [28 x i8] c"  c -> increment in seconds\00"
@str135 = private unnamed_addr constant [54 x i8] c"nodes:           outputs the number of nodes searched\00"
@str136 = private unnamed_addr constant [46 x i8] c"perft <x>:       compute raw nodes to depth x\00"
@str137 = private unnamed_addr constant [41 x i8] c"post:            toggles thinking output\00"
@str138 = private unnamed_addr constant [44 x i8] c"xboard:          put Sjeng into xboard mode\00"
@str139 = private unnamed_addr constant [38 x i8] c"test:            run an EPD testsuite\00"
@str140 = private unnamed_addr constant [51 x i8] c"speed:           test movegen and evaluation speed\00"
@str141 = private unnamed_addr constant [58 x i8] c"proof:           try to prove or disprove the current pos\00"
@str142 = private unnamed_addr constant [43 x i8] c"sd <x>:          limit thinking to depth x\00"
@str143 = private unnamed_addr constant [50 x i8] c"st <x>:          limit thinking to x centiseconds\00"
@str144 = private unnamed_addr constant [53 x i8] c"setboard <FEN>:  set board to a specified FEN string\00"
@str145 = private unnamed_addr constant [37 x i8] c"undo:            back up a half move\00"
@str146 = private unnamed_addr constant [37 x i8] c"remove:          back up a full move\00"
@str147 = private unnamed_addr constant [41 x i8] c"force:           disable computer moving\00"
@str148 = private unnamed_addr constant [43 x i8] c"auto:            computer plays both sides\00"
@str154 = private unnamed_addr constant [15 x i8] c"1/2-1/2 {Draw}\00"
@str155 = private unnamed_addr constant [28 x i8] c"1/2-1/2 {3 fold repetition}\00"
@str156 = private unnamed_addr constant [26 x i8] c"1/2-1/2 {Fifty move rule}\00"
@str157 = private unnamed_addr constant [18 x i8] c"1-0 {White Mates}\00"
@str158 = private unnamed_addr constant [18 x i8] c"0-1 {Black Mates}\00"
@str159 = private unnamed_addr constant [14 x i8] c"SPEC Workload\00"

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %input = alloca [256 x i8], align 16
  %output = alloca [256 x i8], align 16
  %readbuff = alloca [256 x i8], align 16
  %move = alloca %struct.move_s, align 4
  %comp_move = alloca %struct.move_s, align 8
  %depth = alloca i32, align 4
  %show_board = alloca i32, align 4
  %game_history = alloca [600 x %struct.move_s], align 16
  %game_history_x = alloca [600 x %struct.move_x], align 16
  %pingnum = alloca i32, align 4
  %tmp = alloca %struct.move_s, align 4
  %tmp245 = alloca %struct.move_s, align 4
  %tmp547 = alloca %struct.move_s, align 4
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !34), !dbg !189
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !35), !dbg !189
  %0 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0, !dbg !190
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !190
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %input}, metadata !36), !dbg !190
  %1 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !190
  call void @llvm.lifetime.start(i64 256, i8* %1) #2, !dbg !190
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !41), !dbg !190
  %2 = getelementptr inbounds [256 x i8]* %readbuff, i64 0, i64 0, !dbg !191
  call void @llvm.lifetime.start(i64 256, i8* %2) #2, !dbg !191
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %readbuff}, metadata !42), !dbg !191
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %move}, metadata !43), !dbg !192
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %comp_move}, metadata !53), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %depth}, metadata !54), !dbg !193
  call void @llvm.dbg.value(metadata !194, i64 0, metadata !54), !dbg !193
  store i32 4, i32* %depth, align 4, !dbg !193, !tbaa !195
  call void @llvm.dbg.declare(metadata !{i32* %show_board}, metadata !57), !dbg !198
  %3 = bitcast [600 x %struct.move_s]* %game_history to i8*, !dbg !199
  call void @llvm.lifetime.start(i64 14400, i8* %3) #2, !dbg !199
  call void @llvm.dbg.declare(metadata !{[600 x %struct.move_s]* %game_history}, metadata !58), !dbg !199
  %4 = bitcast [600 x %struct.move_x]* %game_history_x to i8*, !dbg !200
  call void @llvm.lifetime.start(i64 9600, i8* %4) #2, !dbg !200
  call void @llvm.dbg.declare(metadata !{[600 x %struct.move_x]* %game_history_x}, metadata !62), !dbg !200
  call void @llvm.dbg.declare(metadata !{i32* %pingnum}, metadata !73), !dbg !201
  call void @read_rcfile() #9, !dbg !202
  call void @initialize_zobrist() #9, !dbg !203
  store i32 2, i32* @Variant, align 4, !dbg !204, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !205
  call void @init_game() #9, !dbg !206
  call void @initialize_hash() #9, !dbg !207
  call void @clear_tt() #9, !dbg !208
  call void @reset_ecache() #9, !dbg !209
  store i32 0, i32* @ECacheProbes, align 4, !dbg !210, !tbaa !195
  store i32 0, i32* @ECacheHits, align 4, !dbg !211, !tbaa !195
  store i32 0, i32* @TTProbes, align 4, !dbg !212, !tbaa !195
  store i32 0, i32* @TTStores, align 4, !dbg !213, !tbaa !195
  store i32 0, i32* @TTHits, align 4, !dbg !214, !tbaa !195
  store i32 0, i32* @bookidx, align 4, !dbg !215, !tbaa !195
  store i32 0, i32* @total_moves, align 4, !dbg !216, !tbaa !195
  store i32 0, i32* @ply, align 4, !dbg !217, !tbaa !195
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !74), !dbg !218
  store i32 40, i32* @moves_to_tc, align 4, !dbg !219, !tbaa !195
  store i32 5, i32* @min_per_game, align 4, !dbg !220, !tbaa !195
  store i32 30000, i32* @time_left, align 4, !dbg !221, !tbaa !195
  store i32 2000, i32* @opp_rating, align 4, !dbg !222, !tbaa !195
  store i32 2000, i32* @my_rating, align 4, !dbg !222, !tbaa !195
  store i32 40, i32* @maxdepth, align 4, !dbg !223, !tbaa !195
  store i32 200, i32* @maxposdiff, align 4, !dbg !224, !tbaa !195
  store i32 1, i32* @must_go, align 4, !dbg !225, !tbaa !195
  store i32 1, i32* @tradefreely, align 4, !dbg !226, !tbaa !195
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !75), !dbg !227
  store i32 0, i32* @xb_mode, align 4, !dbg !228, !tbaa !195
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !55), !dbg !229
  store i32 0, i32* @comp_color, align 4, !dbg !230, !tbaa !195
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !72), !dbg !231
  call void @llvm.dbg.value(metadata !232, i64 0, metadata !57), !dbg !233
  store i32 1, i32* %show_board, align 4, !dbg !233, !tbaa !196
  store i32 0, i32* @is_pondering, align 4, !dbg !234, !tbaa !196
  store i32 1, i32* @allow_pondering, align 4, !dbg !235, !tbaa !196
  store i32 0, i32* @is_analyzing, align 4, !dbg !236, !tbaa !196
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !71), !dbg !237
  store i32 0, i32* @have_partner, align 4, !dbg !238, !tbaa !196
  store i32 0, i32* @must_sit, align 4, !dbg !239, !tbaa !196
  store i32 0, i32* @go_fast, align 4, !dbg !240, !tbaa !196
  store i32 0, i32* @fixed_time, align 4, !dbg !241, !tbaa !195
  store i32 0, i32* @phase, align 4, !dbg !242, !tbaa !195
  store i32 0, i32* @root_to_move, align 4, !dbg !243, !tbaa !195
  store i32 0, i32* @kibitzed, align 4, !dbg !244, !tbaa !196
  store i32 0, i32* @move_number, align 4, !dbg !245, !tbaa !195
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 14400, i32 16, i1 false), !dbg !246
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 9600, i32 16, i1 false), !dbg !247
  %5 = load i32* @hash, align 4, !dbg !248, !tbaa !195
  store i32 %5, i32* getelementptr inbounds ([600 x i32]* @hash_history, i64 0, i64 0), align 16, !dbg !248, !tbaa !195
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !249, !tbaa !250
  call void @setbuf(%struct._IO_FILE* %6, i8* null) #9, !dbg !249
  %7 = load %struct._IO_FILE** @stdin, align 8, !dbg !251, !tbaa !250
  call void @setbuf(%struct._IO_FILE* %7, i8* null) #9, !dbg !251
  call void @start_up() #9, !dbg !252
  %cmp = icmp eq i32 %argc, 2, !dbg !253
  br i1 %cmp, label %if.then, label %while.body.preheader, !dbg !253

if.then:                                          ; preds = %entry
  %puts946 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str159, i64 0, i64 0)), !dbg !254
  %arrayidx1 = getelementptr inbounds i8** %argv, i64 1, !dbg !256
  %8 = load i8** %arrayidx1, align 8, !dbg !256, !tbaa !250
  call void @run_autotest(i8* %8) #9, !dbg !256
  br label %while.body.preheader, !dbg !257

while.body.preheader:                             ; preds = %entry, %if.then
  %add.ptr = getelementptr inbounds [256 x i8]* %input, i64 0, i64 6, !dbg !258
  %add.ptr448 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 5, !dbg !260
  %add.ptr486 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 7, !dbg !262
  %add.ptr668 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 8, !dbg !264
  %add.ptr686 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 3, !dbg !266
  %add.ptr732 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 9, !dbg !268
  %9 = bitcast %struct.move_s* %move to i8*, !dbg !270
  %10 = bitcast %struct.move_s* %comp_move to i8*, !dbg !273
  %11 = bitcast %struct.move_s* %tmp to i8*, !dbg !273
  br label %while.body, !dbg !275

while.body:                                       ; preds = %if.else747, %if.else716, %if.then609, %if.else583, %if.else425, %if.end281, %if.else803, %if.else762, %if.else733, %if.else689, %if.else410, %if.else395, %if.then386, %if.then284, %if.else288, %if.then316, %if.then332, %if.then365, %if.then388, %if.then419, %if.then441, %if.then454, %if.then494, %if.end491, %if.end541, %if.then556, %if.then552, %if.then650, %if.then666, %if.then679, %if.then711, %if.then725, %if.then777, %if.then805, %if.then771, %if.then756, %if.then730, %if.then698, %if.then684, %if.then673, %if.then659, %if.then621, %if.end602, %if.then568, %if.then571, %if.then546, %if.then500, %if.end479, %if.then446, %if.then434, %if.then424, %if.then394, %if.then373, %if.end356, %if.else359, %if.then327, %if.then404, %if.then409, %if.then742, %while.body.preheader
  %is_edit_mode.0 = phi i32 [ 0, %while.body.preheader ], [ %is_edit_mode.0, %if.then650 ], [ %is_edit_mode.0, %if.else803 ], [ %is_edit_mode.0, %if.then805 ], [ %is_edit_mode.0, %if.then777 ], [ %is_edit_mode.0, %if.then771 ], [ %is_edit_mode.0, %if.else762 ], [ %is_edit_mode.0, %if.then756 ], [ %is_edit_mode.0, %if.then742 ], [ %is_edit_mode.0, %if.else733 ], [ %is_edit_mode.0, %if.then730 ], [ %is_edit_mode.0, %if.then725 ], [ %is_edit_mode.0, %if.then711 ], [ %is_edit_mode.0, %if.then698 ], [ %is_edit_mode.0, %if.else689 ], [ %is_edit_mode.0, %if.then684 ], [ %is_edit_mode.0, %if.then679 ], [ %is_edit_mode.0, %if.then673 ], [ %is_edit_mode.0, %if.then666 ], [ %is_edit_mode.0, %if.then659 ], [ %is_edit_mode.0, %if.then621 ], [ 0, %if.end602 ], [ %is_edit_mode.0, %if.then571 ], [ %is_edit_mode.0, %if.then568 ], [ %is_edit_mode.0, %if.then556 ], [ %is_edit_mode.0, %if.then552 ], [ %is_edit_mode.0, %if.then546 ], [ %is_edit_mode.0, %if.end541 ], [ %is_edit_mode.0, %if.then500 ], [ %is_edit_mode.0, %if.then494 ], [ %is_edit_mode.0, %if.end491 ], [ %is_edit_mode.0, %if.end479 ], [ %is_edit_mode.0, %if.then454 ], [ %is_edit_mode.0, %if.then446 ], [ %is_edit_mode.0, %if.then441 ], [ %is_edit_mode.0, %if.then434 ], [ %is_edit_mode.0, %if.then424 ], [ %is_edit_mode.0, %if.then419 ], [ %is_edit_mode.0, %if.else410 ], [ %is_edit_mode.0, %if.then409 ], [ %is_edit_mode.0, %if.then404 ], [ %is_edit_mode.0, %if.else395 ], [ %is_edit_mode.0, %if.then394 ], [ %is_edit_mode.0, %if.then388 ], [ %is_edit_mode.0, %if.then386 ], [ %is_edit_mode.0, %if.then373 ], [ %is_edit_mode.0, %if.then365 ], [ %is_edit_mode.0, %if.else359 ], [ %is_edit_mode.0, %if.end356 ], [ %is_edit_mode.0, %if.then332 ], [ %is_edit_mode.0, %if.then327 ], [ %is_edit_mode.0, %if.then316 ], [ 0, %if.then284 ], [ 0, %if.end281 ], [ 0, %if.else288 ], [ %is_edit_mode.0, %if.else425 ], [ 1, %if.else583 ], [ %is_edit_mode.0, %if.then609 ], [ %is_edit_mode.0, %if.else716 ], [ %is_edit_mode.0, %if.else747 ]
  %edit_color.0 = phi i32 [ 0, %while.body.preheader ], [ %edit_color.0, %if.then650 ], [ %edit_color.0, %if.else803 ], [ %edit_color.0, %if.then805 ], [ %edit_color.0, %if.then777 ], [ %edit_color.0, %if.then771 ], [ %edit_color.0, %if.else762 ], [ %edit_color.0, %if.then756 ], [ %edit_color.0, %if.then742 ], [ %edit_color.0, %if.else733 ], [ %edit_color.0, %if.then730 ], [ %edit_color.0, %if.then725 ], [ %edit_color.0, %if.then711 ], [ %edit_color.0, %if.then698 ], [ %edit_color.0, %if.else689 ], [ %edit_color.0, %if.then684 ], [ %edit_color.0, %if.then679 ], [ %edit_color.0, %if.then673 ], [ %edit_color.0, %if.then666 ], [ %edit_color.0, %if.then659 ], [ %edit_color.0, %if.then621 ], [ %edit_color.0, %if.end602 ], [ %edit_color.0, %if.then571 ], [ %edit_color.0, %if.then568 ], [ %edit_color.0, %if.then556 ], [ %edit_color.0, %if.then552 ], [ %edit_color.0, %if.then546 ], [ %edit_color.0, %if.end541 ], [ %edit_color.0, %if.then500 ], [ %edit_color.0, %if.then494 ], [ %edit_color.0, %if.end491 ], [ %edit_color.0, %if.end479 ], [ %edit_color.0, %if.then454 ], [ %edit_color.0, %if.then446 ], [ %edit_color.0, %if.then441 ], [ %edit_color.0, %if.then434 ], [ %edit_color.0, %if.then424 ], [ %edit_color.0, %if.then419 ], [ %edit_color.0, %if.else410 ], [ %edit_color.0, %if.then409 ], [ %edit_color.0, %if.then404 ], [ %edit_color.0, %if.else395 ], [ %edit_color.0, %if.then394 ], [ %edit_color.0, %if.then388 ], [ %edit_color.0, %if.then386 ], [ %edit_color.0, %if.then373 ], [ %edit_color.0, %if.then365 ], [ %edit_color.0, %if.else359 ], [ %edit_color.0, %if.end356 ], [ %edit_color.0, %if.then332 ], [ %edit_color.0, %if.then327 ], [ %edit_color.0, %if.then316 ], [ %edit_color.0, %if.then284 ], [ %edit_color.0, %if.end281 ], [ %edit_color.0, %if.else288 ], [ %edit_color.0, %if.else425 ], [ 0, %if.else583 ], [ %131, %if.then609 ], [ %edit_color.0, %if.else716 ], [ %edit_color.0, %if.else747 ]
  %braindeadinterface.0 = phi i32 [ 0, %while.body.preheader ], [ %braindeadinterface.0, %if.then650 ], [ %braindeadinterface.0, %if.else803 ], [ %braindeadinterface.0, %if.then805 ], [ %braindeadinterface.0, %if.then777 ], [ %braindeadinterface.0, %if.then771 ], [ %braindeadinterface.0, %if.else762 ], [ %braindeadinterface.0, %if.then756 ], [ %braindeadinterface.0, %if.then742 ], [ %braindeadinterface.0, %if.else733 ], [ %braindeadinterface.0, %if.then730 ], [ %braindeadinterface.0, %if.then725 ], [ %braindeadinterface.0, %if.then711 ], [ %braindeadinterface.0, %if.then698 ], [ %braindeadinterface.0, %if.else689 ], [ %braindeadinterface.0, %if.then684 ], [ %braindeadinterface.0, %if.then679 ], [ %braindeadinterface.0, %if.then673 ], [ %braindeadinterface.0, %if.then666 ], [ %braindeadinterface.0, %if.then659 ], [ %braindeadinterface.0, %if.then621 ], [ %braindeadinterface.0, %if.end602 ], [ %braindeadinterface.0, %if.then571 ], [ %braindeadinterface.0, %if.then568 ], [ %braindeadinterface.0, %if.then556 ], [ %braindeadinterface.0, %if.then552 ], [ %braindeadinterface.0, %if.then546 ], [ %braindeadinterface.0, %if.end541 ], [ %braindeadinterface.0, %if.then500 ], [ %braindeadinterface.0, %if.then494 ], [ %braindeadinterface.0, %if.end491 ], [ %braindeadinterface.0, %if.end479 ], [ %braindeadinterface.0, %if.then454 ], [ %braindeadinterface.0, %if.then446 ], [ %braindeadinterface.0, %if.then441 ], [ %braindeadinterface.0, %if.then434 ], [ %braindeadinterface.0, %if.then424 ], [ %braindeadinterface.0, %if.then419 ], [ %braindeadinterface.0, %if.else410 ], [ %braindeadinterface.0, %if.then409 ], [ %braindeadinterface.0, %if.then404 ], [ %braindeadinterface.0, %if.else395 ], [ %braindeadinterface.0, %if.then394 ], [ %braindeadinterface.0, %if.then388 ], [ %braindeadinterface.0, %if.then386 ], [ %braindeadinterface.0, %if.then373 ], [ %braindeadinterface.0, %if.then365 ], [ %braindeadinterface.0, %if.else359 ], [ %braindeadinterface.0, %if.end356 ], [ %braindeadinterface.0, %if.then332 ], [ %braindeadinterface.0, %if.then327 ], [ %braindeadinterface.0, %if.then316 ], [ %braindeadinterface.0, %if.then284 ], [ %braindeadinterface.0, %if.end281 ], [ %braindeadinterface.0, %if.else288 ], [ %braindeadinterface.0, %if.else425 ], [ %braindeadinterface.0, %if.else583 ], [ %braindeadinterface.0, %if.then609 ], [ 1, %if.else716 ], [ %braindeadinterface.0, %if.else747 ]
  %automode.0 = phi i32 [ 0, %while.body.preheader ], [ %automode.1, %if.then650 ], [ %automode.1, %if.else803 ], [ %automode.1, %if.then805 ], [ %automode.1, %if.then777 ], [ %automode.1, %if.then771 ], [ %automode.1, %if.else762 ], [ %automode.1, %if.then756 ], [ %automode.1, %if.then742 ], [ %automode.1, %if.else733 ], [ %automode.1, %if.then730 ], [ %automode.1, %if.then725 ], [ %automode.1, %if.then711 ], [ %automode.1, %if.then698 ], [ %automode.1, %if.else689 ], [ %automode.1, %if.then684 ], [ %automode.1, %if.then679 ], [ %automode.1, %if.then673 ], [ %automode.1, %if.then666 ], [ %automode.1, %if.then659 ], [ %automode.1, %if.then621 ], [ %automode.1, %if.end602 ], [ %automode.1, %if.then571 ], [ %automode.1, %if.then568 ], [ %automode.1, %if.then556 ], [ %automode.1, %if.then552 ], [ %automode.1, %if.then546 ], [ %automode.1, %if.end541 ], [ %automode.1, %if.then500 ], [ %automode.1, %if.then494 ], [ %automode.1, %if.end491 ], [ %automode.1, %if.end479 ], [ %automode.1, %if.then454 ], [ %automode.1, %if.then446 ], [ %automode.1, %if.then441 ], [ %automode.1, %if.then434 ], [ %automode.1, %if.then424 ], [ %automode.1, %if.then419 ], [ %automode.1, %if.else410 ], [ %automode.1, %if.then409 ], [ %automode.1, %if.then404 ], [ %automode.1, %if.else395 ], [ %automode.1, %if.then394 ], [ %automode.1, %if.then388 ], [ %automode.1, %if.then386 ], [ %automode.1, %if.then373 ], [ %automode.1, %if.then365 ], [ %automode.1, %if.else359 ], [ 0, %if.end356 ], [ %automode.1, %if.then332 ], [ %automode.1, %if.then327 ], [ %automode.1, %if.then316 ], [ %automode.1, %if.then284 ], [ %automode.1, %if.end281 ], [ %automode.1, %if.else288 ], [ %automode.1, %if.else425 ], [ %automode.1, %if.else583 ], [ %automode.1, %if.then609 ], [ %automode.1, %if.else716 ], [ 1, %if.else747 ]
  %force_mode.0 = phi i32 [ 0, %while.body.preheader ], [ %force_mode.0, %if.then650 ], [ %force_mode.0, %if.else803 ], [ %force_mode.0, %if.then805 ], [ %force_mode.0, %if.then777 ], [ %force_mode.0, %if.then771 ], [ %force_mode.0, %if.else762 ], [ %force_mode.0, %if.then756 ], [ %force_mode.0, %if.then742 ], [ %force_mode.0, %if.else733 ], [ %force_mode.0, %if.then730 ], [ 0, %if.then725 ], [ %force_mode.0, %if.then711 ], [ %force_mode.0, %if.then698 ], [ %force_mode.0, %if.else689 ], [ %force_mode.0, %if.then684 ], [ %force_mode.0, %if.then679 ], [ %force_mode.0, %if.then673 ], [ %force_mode.0, %if.then666 ], [ %force_mode.0, %if.then659 ], [ %force_mode.0, %if.then621 ], [ %force_mode.0, %if.end602 ], [ %force_mode.0, %if.then571 ], [ %force_mode.0, %if.then568 ], [ %force_mode.0, %if.then556 ], [ %force_mode.0, %if.then552 ], [ %force_mode.0, %if.then546 ], [ %force_mode.0, %if.end541 ], [ %force_mode.0, %if.then500 ], [ %force_mode.0, %if.then494 ], [ %force_mode.0, %if.end491 ], [ %force_mode.0, %if.end479 ], [ %force_mode.0, %if.then454 ], [ %force_mode.0, %if.then446 ], [ 0, %if.then441 ], [ %force_mode.0, %if.then434 ], [ %force_mode.0, %if.then424 ], [ %force_mode.0, %if.then419 ], [ %force_mode.0, %if.else410 ], [ %force_mode.0, %if.then409 ], [ %force_mode.0, %if.then404 ], [ %force_mode.0, %if.else395 ], [ %force_mode.0, %if.then394 ], [ %force_mode.0, %if.then388 ], [ %force_mode.0, %if.then386 ], [ %force_mode.0, %if.then373 ], [ %force_mode.0, %if.then365 ], [ %force_mode.0, %if.else359 ], [ 0, %if.end356 ], [ %force_mode.0, %if.then332 ], [ %force_mode.0, %if.then327 ], [ %force_mode.0, %if.then316 ], [ %force_mode.0, %if.then284 ], [ %force_mode.0, %if.end281 ], [ %force_mode.0, %if.else288 ], [ 1, %if.else425 ], [ %force_mode.0, %if.else583 ], [ %force_mode.0, %if.then609 ], [ %force_mode.0, %if.else716 ], [ %force_mode.0, %if.else747 ]
  %tobool = icmp ne i32 %is_edit_mode.0, 0, !dbg !275
  br i1 %tobool, label %if.end215, label %land.lhs.true, !dbg !275

land.lhs.true:                                    ; preds = %while.body
  %12 = load i32* @comp_color, align 4, !dbg !275, !tbaa !195
  %13 = load i32* @white_to_move, align 4, !dbg !275, !tbaa !195
  %cmp2 = icmp ne i32 %12, %13, !dbg !275
  %tobool3 = icmp eq i32 %automode.0, 0, !dbg !275
  %or.cond = and i1 %cmp2, %tobool3, !dbg !275
  br i1 %or.cond, label %if.end215, label %land.lhs.true4, !dbg !275

land.lhs.true4:                                   ; preds = %land.lhs.true
  %14 = load i32* @must_sit, align 4, !dbg !275, !tbaa !196
  %15 = or i32 %14, %force_mode.0, !dbg !275
  %16 = load i32* @result, align 4, !dbg !275, !tbaa !195
  %17 = or i32 %15, %16, !dbg !275
  %18 = icmp eq i32 %17, 0, !dbg !275
  br i1 %18, label %if.then10, label %if.end215, !dbg !275

if.then10:                                        ; preds = %land.lhs.true4
  store i32 0, i32* @is_pondering, align 4, !dbg !276, !tbaa !196
  call void @think(%struct.move_s* sret %tmp) #9, !dbg !273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 4, i1 false), !dbg !273, !tbaa.struct !277
  store i32 0, i32* @ply, align 4, !dbg !278, !tbaa !195
  %19 = load i32* @must_sit, align 4, !dbg !279, !tbaa !196
  %tobool11 = icmp eq i32 %19, 0, !dbg !279
  %20 = load i32* @must_go, align 4, !dbg !279, !tbaa !195
  %cmp13 = icmp ne i32 %20, 0, !dbg !279
  %or.cond861 = or i1 %tobool11, %cmp13, !dbg !279
  br i1 %or.cond861, label %if.then14, label %if.end215, !dbg !279

if.then14:                                        ; preds = %if.then10
  %21 = load i32* @Variant, align 4, !dbg !280, !tbaa !195
  %.off = add i32 %21, -3, !dbg !280
  %22 = icmp ult i32 %.off, 2, !dbg !280
  %23 = load i32* @result, align 4, !dbg !280, !tbaa !195
  %cmp19 = icmp ne i32 %23, 2, !dbg !280
  br i1 %22, label %switch.early.test, label %lor.lhs.false22

switch.early.test:                                ; preds = %if.then14
  %.off956 = add i32 %23, -2, !dbg !280
  %switch = icmp ult i32 %.off956, 2, !dbg !280
  br i1 %switch, label %lor.lhs.false22, label %land.lhs.true36, !dbg !280

lor.lhs.false22:                                  ; preds = %switch.early.test, %if.then14
  %24 = and i32 %21, -3, !dbg !280
  %25 = icmp eq i32 %24, 0, !dbg !280
  %cmp27 = icmp eq i32 %21, 1, !dbg !280
  %or.cond866 = or i1 %25, %cmp27, !dbg !280
  br i1 %or.cond866, label %land.lhs.true28, label %if.else187, !dbg !280

land.lhs.true28:                                  ; preds = %lor.lhs.false22
  %26 = load i32* @comp_color, align 4, !dbg !280, !tbaa !195
  %cmp29 = icmp eq i32 %26, 1, !dbg !280
  %or.cond867 = and i1 %cmp29, %cmp19, !dbg !280
  br i1 %or.cond867, label %land.lhs.true36, label %lor.lhs.false32, !dbg !280

lor.lhs.false32:                                  ; preds = %land.lhs.true28
  %cmp33 = icmp eq i32 %26, 0, !dbg !280
  br i1 %cmp33, label %switch.early.test950, label %if.else187

switch.early.test950:                             ; preds = %lor.lhs.false32
  switch i32 %23, label %if.then42 [
    i32 3, label %if.then195
    i32 4, label %if.then200
    i32 5, label %if.then205
    i32 1, label %if.else207
  ], !dbg !280

land.lhs.true36:                                  ; preds = %switch.early.test, %land.lhs.true28
  switch i32 %23, label %if.then42 [
    i32 4, label %if.then200
    i32 5, label %if.then205
    i32 1, label %if.else207
  ], !dbg !280

if.then42:                                        ; preds = %switch.early.test950, %land.lhs.true36
  call void @comp_to_coord(%struct.move_s* byval align 8 %comp_move, i8* %1) #9, !dbg !282
  %27 = load i32* @hash, align 4, !dbg !284, !tbaa !195
  %28 = load i32* @move_number, align 4, !dbg !284, !tbaa !195
  %idxprom43 = sext i32 %28 to i64, !dbg !284
  %arrayidx44 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom43, !dbg !284
  store i32 %27, i32* %arrayidx44, align 4, !dbg !284, !tbaa !195
  %arrayidx46 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom43, !dbg !285
  %29 = bitcast %struct.move_s* %arrayidx46 to i8*, !dbg !285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %10, i64 24, i32 8, i1 false), !dbg !285, !tbaa.struct !277
  call void @make(%struct.move_s* %comp_move, i32 0) #9, !dbg !286
  %30 = load i32* @move_number, align 4, !dbg !287, !tbaa !195
  %inc = add nsw i32 %30, 1, !dbg !287
  store i32 %inc, i32* @move_number, align 4, !dbg !287, !tbaa !195
  %idxprom47 = sext i32 %30 to i64, !dbg !287
  %arrayidx48 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom47, !dbg !287
  %31 = bitcast %struct.move_x* %arrayidx48 to i8*, !dbg !287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false), !dbg !287, !tbaa.struct !288
  store i32 0, i32* @userealholdings, align 4, !dbg !289, !tbaa !195
  %32 = load i32* @must_go, align 4, !dbg !290, !tbaa !195
  %dec = add nsw i32 %32, -1, !dbg !290
  store i32 %dec, i32* @must_go, align 4, !dbg !290, !tbaa !195
  %call49 = call i32 @is_draw() #9, !dbg !291
  %tobool50 = icmp eq i32 %call49, 0, !dbg !291
  br i1 %tobool50, label %if.else, label %if.then51, !dbg !291

if.then51:                                        ; preds = %if.then42
  store i32 5, i32* @result, align 4, !dbg !292, !tbaa !195
  br label %if.end55, !dbg !294

if.else:                                          ; preds = %if.then42
  %33 = load i32* @fifty, align 4, !dbg !295, !tbaa !195
  %cmp52 = icmp sgt i32 %33, 100, !dbg !295
  br i1 %cmp52, label %if.then53, label %if.end55, !dbg !295

if.then53:                                        ; preds = %if.else
  store i32 4, i32* @result, align 4, !dbg !296, !tbaa !195
  br label %if.end55, !dbg !298

if.end55:                                         ; preds = %if.else, %if.then53, %if.then51
  %34 = load i32* @root_to_move, align 4, !dbg !299, !tbaa !195
  %xor = xor i32 %34, 1, !dbg !299
  store i32 %xor, i32* @root_to_move, align 4, !dbg !299, !tbaa !195
  call void @reset_piece_square() #9, !dbg !300
  %35 = load i32* @book_ply, align 4, !dbg !301, !tbaa !195
  %cmp56 = icmp slt i32 %35, 40, !dbg !301
  br i1 %cmp56, label %if.then57, label %if.end66, !dbg !301

if.then57:                                        ; preds = %if.end55
  %tobool58 = icmp eq i32 %35, 0, !dbg !302
  br i1 %tobool58, label %if.then59, label %if.else62, !dbg !302

if.then59:                                        ; preds = %if.then57
  %call61 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %1) #9, !dbg !304
  br label %if.end66, !dbg !306

if.else62:                                        ; preds = %if.then57
  %call64 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %1) #9, !dbg !307
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.else62, %if.end55
  %36 = load i32* @book_ply, align 4, !dbg !309, !tbaa !195
  %inc67 = add nsw i32 %36, 1, !dbg !309
  store i32 %inc67, i32* @book_ply, align 4, !dbg !309, !tbaa !195
  %37 = load i32* @nodes, align 4, !dbg !310, !tbaa !195
  %38 = load i32* @qnodes, align 4, !dbg !310, !tbaa !195
  %conv = sitofp i32 %38 to float, !dbg !310
  %conv68 = sitofp i32 %37 to float, !dbg !310
  %div = fdiv float %conv, %conv68, !dbg !310
  %conv70 = fmul float %div, 1.000000e+02, !dbg !310
  %conv71 = fpext float %conv70 to double, !dbg !310
  %call72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %37, double %conv71) #9, !dbg !310
  %39 = load i32* @ECacheProbes, align 4, !dbg !311, !tbaa !195
  %40 = load i32* @ECacheHits, align 4, !dbg !311, !tbaa !195
  %conv73 = uitofp i32 %40 to float, !dbg !311
  %conv74 = uitofp i32 %39 to float, !dbg !311
  %add = fadd float %conv74, 1.000000e+00, !dbg !311
  %div75 = fdiv float %conv73, %add, !dbg !311
  %mul76 = fmul float %div75, 1.000000e+02, !dbg !311
  %conv77 = fpext float %mul76 to double, !dbg !311
  %call78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 %39, i32 %40, double %conv77) #9, !dbg !311
  %41 = load i32* @TTStores, align 4, !dbg !312, !tbaa !195
  %42 = load i32* @TTProbes, align 4, !dbg !312, !tbaa !195
  %43 = load i32* @TTHits, align 4, !dbg !312, !tbaa !195
  %conv79 = uitofp i32 %43 to float, !dbg !312
  %conv80 = uitofp i32 %42 to float, !dbg !312
  %add81 = fadd float %conv80, 1.000000e+00, !dbg !312
  %div82 = fdiv float %conv79, %add81, !dbg !312
  %mul83 = fmul float %div82, 1.000000e+02, !dbg !312
  %conv84 = fpext float %mul83 to double, !dbg !312
  %call85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i32 %41, i32 %42, i32 %43, double %conv84) #9, !dbg !312
  %44 = load i32* @NTries, align 4, !dbg !313, !tbaa !195
  %45 = load i32* @NCuts, align 4, !dbg !313, !tbaa !195
  %conv86 = uitofp i32 %45 to float, !dbg !313
  %mul87 = fmul float %conv86, 1.000000e+02, !dbg !313
  %conv88 = uitofp i32 %44 to float, !dbg !313
  %add89 = fadd float %conv88, 1.000000e+00, !dbg !313
  %div90 = fdiv float %mul87, %add89, !dbg !313
  %conv91 = fpext float %div90 to double, !dbg !313
  %46 = load i32* @TExt, align 4, !dbg !313, !tbaa !195
  %call92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 %44, i32 %45, double %conv91, i32 %46) #9, !dbg !313
  %47 = load i32* @ext_check, align 4, !dbg !314, !tbaa !195
  %48 = load i32* @razor_drop, align 4, !dbg !314, !tbaa !195
  %49 = load i32* @razor_material, align 4, !dbg !314, !tbaa !195
  %call93 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %47, i32 %48, i32 %49) #9, !dbg !314
  %50 = load i32* @FHF, align 4, !dbg !315, !tbaa !195
  %conv94 = uitofp i32 %50 to float, !dbg !315
  %mul95 = fmul float %conv94, 1.000000e+02, !dbg !315
  %51 = load i32* @FH, align 4, !dbg !315, !tbaa !195
  %add96 = add i32 %51, 1, !dbg !315
  %conv97 = uitofp i32 %add96 to float, !dbg !315
  %div98 = fdiv float %mul95, %conv97, !dbg !315
  %conv99 = fpext float %div98 to double, !dbg !315
  %call100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), double %conv99) #9, !dbg !315
  %52 = load i32* @Material, align 4, !dbg !316, !tbaa !195
  %call101 = call i32 @eval(i32 -1000000, i32 1000000) #9, !dbg !317
  %53 = load i32* @maxposdiff, align 4, !dbg !317, !tbaa !195
  %54 = load i32* @white_hand_eval, align 4, !dbg !317, !tbaa !195
  %55 = load i32* @black_hand_eval, align 4, !dbg !317, !tbaa !195
  %call102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %52, i32 %call101, i32 %53, i32 %54, i32 %55) #9, !dbg !317
  %56 = load i32* @hash, align 4, !dbg !318, !tbaa !195
  %57 = load i32* @hold_hash, align 4, !dbg !318, !tbaa !195
  %call103 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i32 %56, i32 %57) #9, !dbg !318
  %58 = load i32* @result, align 4, !dbg !319, !tbaa !195
  %tobool104 = icmp eq i32 %58, 0, !dbg !319
  %59 = load i32* @xb_mode, align 4, !dbg !320, !tbaa !195
  %tobool135 = icmp ne i32 %59, 0, !dbg !320
  %60 = bitcast %struct.move_s* %comp_move to i64*, !dbg !322
  %61 = load i64* %60, align 8, !dbg !322
  %62 = trunc i64 %61 to i32, !dbg !322
  %63 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 0), align 4, !dbg !322, !tbaa !195
  %64 = lshr i64 %61, 32
  %65 = trunc i64 %64 to i32
  %cmp138.not = icmp eq i32 %62, %63, !dbg !324
  %66 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !dbg !324, !tbaa !195
  %cmp111 = icmp eq i32 %65, %66, !dbg !324
  %or.cond960 = and i1 %cmp138.not, %cmp111, !dbg !324
  br i1 %tobool104, label %if.then105, label %if.else134, !dbg !319

if.then105:                                       ; preds = %if.end66
  br i1 %tobool135, label %if.then107, label %if.else121, !dbg !327

if.then107:                                       ; preds = %if.then105
  br i1 %or.cond960, label %if.end116, label %if.then113, !dbg !324

if.then113:                                       ; preds = %if.then107
  %call115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* %1) #9, !dbg !328
  br label %if.end116, !dbg !328

if.end116:                                        ; preds = %if.then107, %if.then113
  %67 = load i32* @Variant, align 4, !dbg !329, !tbaa !195
  %cmp117 = icmp eq i32 %67, 1, !dbg !329
  br i1 %cmp117, label %if.then119, label %if.end215, !dbg !329

if.then119:                                       ; preds = %if.end116
  call void @CheckBadFlow(i32 0) #9, !dbg !330
  br label %if.end215, !dbg !332

if.else121:                                       ; preds = %if.then105
  br i1 %or.cond960, label %if.end215, label %if.then129, !dbg !333

if.then129:                                       ; preds = %if.else121
  %call131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %1) #9, !dbg !335
  br label %if.end215, !dbg !335

if.else134:                                       ; preds = %if.end66
  br i1 %tobool135, label %if.then136, label %if.else148, !dbg !320

if.then136:                                       ; preds = %if.else134
  br i1 %or.cond960, label %if.end160, label %if.then144, !dbg !322

if.then144:                                       ; preds = %if.then136
  %call146 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* %1) #9, !dbg !336
  br label %if.end160, !dbg !336

if.else148:                                       ; preds = %if.else134
  br i1 %or.cond960, label %if.end160, label %if.then156, !dbg !337

if.then156:                                       ; preds = %if.else148
  %call158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %1) #9, !dbg !339
  br label %if.end160, !dbg !339

if.end160:                                        ; preds = %if.else148, %if.then136, %if.then156, %if.then144
  %68 = load i32* @result, align 4, !dbg !340, !tbaa !195
  switch i32 %68, label %if.else180 [
    i32 2, label %if.then163
    i32 3, label %if.then168
    i32 4, label %if.then173
    i32 5, label %if.then178
  ], !dbg !340

if.then163:                                       ; preds = %if.end160
  %puts945 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str158, i64 0, i64 0)), !dbg !341
  br label %if.end215, !dbg !343

if.then168:                                       ; preds = %if.end160
  %puts944 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str157, i64 0, i64 0)), !dbg !344
  br label %if.end215, !dbg !346

if.then173:                                       ; preds = %if.end160
  %puts943 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str156, i64 0, i64 0)), !dbg !347
  br label %if.end215, !dbg !349

if.then178:                                       ; preds = %if.end160
  %puts942 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str155, i64 0, i64 0)), !dbg !350
  br label %if.end215, !dbg !352

if.else180:                                       ; preds = %if.end160
  %puts941 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str154, i64 0, i64 0)), !dbg !353
  br label %if.end215

if.else187:                                       ; preds = %lor.lhs.false32, %lor.lhs.false22
  switch i32 %23, label %if.else207 [
    i32 2, label %if.then190
    i32 3, label %if.then195
    i32 4, label %if.then200
    i32 5, label %if.then205
  ], !dbg !355

if.then190:                                       ; preds = %if.else187
  %puts940 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str158, i64 0, i64 0)), !dbg !357
  br label %if.end215, !dbg !359

if.then195:                                       ; preds = %switch.early.test950, %if.else187
  %puts939 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str157, i64 0, i64 0)), !dbg !360
  br label %if.end215, !dbg !362

if.then200:                                       ; preds = %switch.early.test950, %land.lhs.true36, %if.else187
  %puts938 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str156, i64 0, i64 0)), !dbg !363
  br label %if.end215, !dbg !365

if.then205:                                       ; preds = %switch.early.test950, %land.lhs.true36, %if.else187
  %puts937 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str155, i64 0, i64 0)), !dbg !366
  br label %if.end215, !dbg !368

if.else207:                                       ; preds = %switch.early.test950, %land.lhs.true36, %if.else187
  %puts936 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str154, i64 0, i64 0)), !dbg !369
  br label %if.end215

if.end215:                                        ; preds = %if.else121, %if.end116, %if.then10, %land.lhs.true4, %land.lhs.true, %while.body, %if.then190, %if.then200, %if.else207, %if.then205, %if.then195, %if.then163, %if.then173, %if.else180, %if.then178, %if.then168, %if.then129, %if.then119
  %automode.1 = phi i32 [ %automode.0, %if.then119 ], [ %automode.0, %if.then129 ], [ 0, %if.then168 ], [ 0, %if.then178 ], [ 0, %if.else180 ], [ 0, %if.then173 ], [ 0, %if.then163 ], [ 0, %if.then195 ], [ 0, %if.then205 ], [ 0, %if.else207 ], [ 0, %if.then200 ], [ 0, %if.then190 ], [ %automode.0, %while.body ], [ 0, %land.lhs.true ], [ %automode.0, %land.lhs.true4 ], [ %automode.0, %if.then10 ], [ %automode.0, %if.end116 ], [ %automode.0, %if.else121 ]
  %69 = load i32* @xb_mode, align 4, !dbg !371, !tbaa !195
  %tobool216 = icmp eq i32 %69, 0, !dbg !371
  br i1 %tobool216, label %if.then217, label %if.else227, !dbg !371

if.then217:                                       ; preds = %if.end215
  call void @llvm.dbg.value(metadata !{i32* %show_board}, i64 0, metadata !57), !dbg !372
  %70 = load i32* %show_board, align 4, !dbg !372, !tbaa !196
  %tobool218 = icmp eq i32 %70, 0, !dbg !372
  br i1 %tobool218, label %if.end221, label %if.then219, !dbg !372

if.then219:                                       ; preds = %if.then217
  %putchar935 = call i32 @putchar(i32 10) #2, !dbg !374
  %71 = load %struct._IO_FILE** @stdout, align 8, !dbg !376, !tbaa !250
  %72 = load i32* @comp_color, align 4, !dbg !376, !tbaa !195
  %sub = sub nsw i32 1, %72, !dbg !376
  call void @display_board(%struct._IO_FILE* %71, i32 %sub) #9, !dbg !376
  br label %if.end221, !dbg !377

if.end221:                                        ; preds = %if.then217, %if.then219
  %tobool222 = icmp eq i32 %automode.1, 0, !dbg !378
  br i1 %tobool222, label %if.then223, label %if.end251, !dbg !378

if.then223:                                       ; preds = %if.end221
  %call224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)) #9, !dbg !379
  %73 = load %struct._IO_FILE** @stdin, align 8, !dbg !381, !tbaa !250
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %73) #9, !dbg !381
  br label %if.end251, !dbg !382

if.else227:                                       ; preds = %if.end215
  %74 = load i32* @must_sit, align 4, !dbg !383, !tbaa !196
  %tobool228 = icmp eq i32 %74, 0, !dbg !383
  br i1 %tobool228, label %lor.lhs.false229, label %land.lhs.true240, !dbg !383

lor.lhs.false229:                                 ; preds = %if.else227
  %75 = load i32* @allow_pondering, align 4, !dbg !383, !tbaa !196
  %tobool230 = icmp eq i32 %75, 0, !dbg !383
  %brmerge = or i1 %tobool230, %tobool, !dbg !383
  br i1 %brmerge, label %lor.lhs.false238, label %land.lhs.true233, !dbg !383

land.lhs.true233:                                 ; preds = %lor.lhs.false229
  %tobool234 = icmp eq i32 %force_mode.0, 0, !dbg !383
  %76 = load i32* @move_number, align 4, !dbg !383, !tbaa !195
  %cmp236 = icmp ne i32 %76, 0, !dbg !383
  %or.cond879 = and i1 %tobool234, %cmp236, !dbg !383
  %77 = load i32* @is_analyzing, align 4, !dbg !383, !tbaa !196
  %tobool239 = icmp ne i32 %77, 0, !dbg !383
  %or.cond881 = or i1 %or.cond879, %tobool239, !dbg !383
  %78 = load i32* @result, align 4, !dbg !383, !tbaa !195
  %tobool241.not = icmp eq i32 %78, 0, !dbg !383
  %or.cond883.not = and i1 %or.cond881, %tobool241.not, !dbg !383
  %tobool243.old.old = icmp eq i32 %automode.1, 0, !dbg !383
  %or.cond953 = and i1 %or.cond883.not, %tobool243.old.old, !dbg !383
  br i1 %or.cond953, label %if.then244, label %if.end246, !dbg !383

lor.lhs.false238:                                 ; preds = %lor.lhs.false229
  %.old880 = load i32* @is_analyzing, align 4, !dbg !383, !tbaa !196
  %.old882 = load i32* @result, align 4, !dbg !383, !tbaa !195
  %notlhs = icmp ne i32 %.old880, 0, !dbg !383
  %notrhs = icmp eq i32 %.old882, 0, !dbg !383
  %or.cond885.not = and i1 %notrhs, %notlhs, !dbg !383
  %tobool243.old = icmp eq i32 %automode.1, 0, !dbg !383
  %or.cond952 = and i1 %or.cond885.not, %tobool243.old, !dbg !383
  br i1 %or.cond952, label %if.then244, label %if.end246, !dbg !383

land.lhs.true240:                                 ; preds = %if.else227
  %.old884 = load i32* @result, align 4, !dbg !383, !tbaa !195
  %79 = or i32 %.old884, %automode.1, !dbg !383
  %80 = icmp eq i32 %79, 0, !dbg !383
  br i1 %80, label %if.then244, label %if.end246, !dbg !383

if.then244:                                       ; preds = %land.lhs.true233, %lor.lhs.false238, %land.lhs.true240
  store i32 1, i32* @is_pondering, align 4, !dbg !385, !tbaa !196
  call void @think(%struct.move_s* sret %tmp245) #9, !dbg !387
  store i32 0, i32* @is_pondering, align 4, !dbg !388, !tbaa !196
  store i32 0, i32* @ply, align 4, !dbg !389, !tbaa !195
  br label %if.end246, !dbg !390

if.end246:                                        ; preds = %land.lhs.true233, %lor.lhs.false238, %land.lhs.true240, %if.then244
  %tobool247 = icmp eq i32 %automode.1, 0, !dbg !391
  br i1 %tobool247, label %if.then248, label %if.end251, !dbg !391

if.then248:                                       ; preds = %if.end246
  %81 = load %struct._IO_FILE** @stdin, align 8, !dbg !392, !tbaa !250
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %81) #9, !dbg !392
  br label %if.end251, !dbg !394

if.end251:                                        ; preds = %if.end246, %if.end221, %if.then248, %if.then223
  br i1 %tobool, label %if.else292, label %land.lhs.true253, !dbg !395

land.lhs.true253:                                 ; preds = %if.end251
  %call255 = call i32 @is_move(i8* %0) #9, !dbg !395
  %tobool256 = icmp eq i32 %call255, 0, !dbg !395
  br i1 %tobool256, label %if.else292, label %if.then257, !dbg !395

if.then257:                                       ; preds = %land.lhs.true253
  %call259 = call i32 @verify_coord(i8* %0, %struct.move_s* %move) #9, !dbg !396
  %tobool260 = icmp eq i32 %call259, 0, !dbg !396
  br i1 %tobool260, label %if.else288, label %if.then261, !dbg !396

if.then261:                                       ; preds = %if.then257
  %82 = load i32* @move_number, align 4, !dbg !270, !tbaa !195
  %idxprom262 = sext i32 %82 to i64, !dbg !270
  %arrayidx263 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom262, !dbg !270
  %83 = bitcast %struct.move_s* %arrayidx263 to i8*, !dbg !270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %9, i64 24, i32 4, i1 false), !dbg !270, !tbaa.struct !277
  %84 = load i32* @hash, align 4, !dbg !397, !tbaa !195
  %arrayidx265 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom262, !dbg !397
  store i32 %84, i32* %arrayidx265, align 4, !dbg !397, !tbaa !195
  call void @make(%struct.move_s* %move, i32 0) #9, !dbg !398
  %85 = load i32* @move_number, align 4, !dbg !399, !tbaa !195
  %inc266 = add nsw i32 %85, 1, !dbg !399
  store i32 %inc266, i32* @move_number, align 4, !dbg !399, !tbaa !195
  %idxprom267 = sext i32 %85 to i64, !dbg !399
  %arrayidx268 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom267, !dbg !399
  %86 = bitcast %struct.move_x* %arrayidx268 to i8*, !dbg !399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false), !dbg !399, !tbaa.struct !288
  call void @reset_piece_square() #9, !dbg !400
  %87 = load i32* @root_to_move, align 4, !dbg !401, !tbaa !195
  %xor269 = xor i32 %87, 1, !dbg !401
  store i32 %xor269, i32* @root_to_move, align 4, !dbg !401, !tbaa !195
  %88 = load i32* @book_ply, align 4, !dbg !402, !tbaa !195
  %cmp270 = icmp slt i32 %88, 40, !dbg !402
  br i1 %cmp270, label %if.then272, label %if.end281, !dbg !402

if.then272:                                       ; preds = %if.then261
  %tobool273 = icmp eq i32 %88, 0, !dbg !403
  br i1 %tobool273, label %if.then274, label %if.else277, !dbg !403

if.then274:                                       ; preds = %if.then272
  %call276 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %0) #9, !dbg !405
  br label %if.end281, !dbg !407

if.else277:                                       ; preds = %if.then272
  %call279 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %0) #9, !dbg !408
  br label %if.end281

if.end281:                                        ; preds = %if.then274, %if.else277, %if.then261
  %89 = load i32* @book_ply, align 4, !dbg !410, !tbaa !195
  %inc282 = add nsw i32 %89, 1, !dbg !410
  store i32 %inc282, i32* @book_ply, align 4, !dbg !410, !tbaa !195
  call void @llvm.dbg.value(metadata !{i32* %show_board}, i64 0, metadata !57), !dbg !411
  %90 = load i32* %show_board, align 4, !dbg !411, !tbaa !196
  %tobool283 = icmp eq i32 %90, 0, !dbg !411
  br i1 %tobool283, label %while.body, label %if.then284, !dbg !411

if.then284:                                       ; preds = %if.end281
  %putchar934 = call i32 @putchar(i32 10) #2, !dbg !412
  %91 = load %struct._IO_FILE** @stdout, align 8, !dbg !414, !tbaa !250
  %92 = load i32* @comp_color, align 4, !dbg !414, !tbaa !195
  %sub286 = sub nsw i32 1, %92, !dbg !414
  call void @display_board(%struct._IO_FILE* %91, i32 %sub286) #9, !dbg !414
  br label %while.body, !dbg !415

if.else288:                                       ; preds = %if.then257
  %call290 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %0) #9, !dbg !416
  br label %while.body

if.else292:                                       ; preds = %land.lhs.true253, %if.end251
  %call294 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0)) #10, !dbg !418
  %tobool295 = icmp eq i8* %call294, null, !dbg !418
  br i1 %tobool295, label %for.cond.preheader, label %if.end305, !dbg !418

for.cond.preheader:                               ; preds = %if.else292
  %93 = load i8* %0, align 16, !dbg !419, !tbaa !196
  %tobool298957 = icmp eq i8 %93, 0, !dbg !419
  br i1 %tobool298957, label %if.end305, label %for.body.lr.ph, !dbg !419

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %call302 = call i32** @__ctype_tolower_loc() #11, !dbg !420
  br label %for.body, !dbg !419

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %94 = phi i8 [ %93, %for.body.lr.ph ], [ %97, %for.body ]
  %p.0958 = phi i8* [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %idxprom301 = sext i8 %94 to i64, !dbg !420
  %95 = load i32** %call302, align 8, !dbg !420, !tbaa !250
  %arrayidx303 = getelementptr inbounds i32* %95, i64 %idxprom301, !dbg !420
  %96 = load i32* %arrayidx303, align 4, !dbg !420, !tbaa !195
  call void @llvm.dbg.value(metadata !{i32 %96}, i64 0, metadata !81), !dbg !420
  %conv304 = trunc i32 %96 to i8, !dbg !420
  store i8 %conv304, i8* %p.0958, align 1, !dbg !420, !tbaa !196
  %incdec.ptr = getelementptr inbounds i8* %p.0958, i64 1, !dbg !419
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !40), !dbg !419
  %97 = load i8* %incdec.ptr, align 1, !dbg !419, !tbaa !196
  %tobool298 = icmp eq i8 %97, 0, !dbg !419
  br i1 %tobool298, label %if.end305, label %for.body, !dbg !419

if.end305:                                        ; preds = %for.cond.preheader, %for.body, %if.else292
  %call307 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #10, !dbg !421
  %tobool308 = icmp eq i32 %call307, 0, !dbg !421
  br i1 %tobool308, label %if.then309, label %if.else310, !dbg !421

if.then309:                                       ; preds = %if.end305
  call void @free_hash() #9, !dbg !422
  call void @free_ecache() #9, !dbg !424
  call void @exit(i32 0) #12, !dbg !425
  unreachable, !dbg !425

if.else310:                                       ; preds = %if.end305
  %call312 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !426
  %tobool313 = icmp eq i32 %call312, 0, !dbg !426
  br i1 %tobool313, label %if.then314, label %if.else319, !dbg !426

if.then314:                                       ; preds = %if.else310
  %98 = load i32* @is_analyzing, align 4, !dbg !427, !tbaa !196
  %tobool315 = icmp eq i32 %98, 0, !dbg !427
  br i1 %tobool315, label %if.else317, label %if.then316, !dbg !427

if.then316:                                       ; preds = %if.then314
  store i32 0, i32* @is_analyzing, align 4, !dbg !429, !tbaa !196
  store i32 0, i32* @is_pondering, align 4, !dbg !431, !tbaa !196
  store i32 0, i32* @time_for_move, align 4, !dbg !432, !tbaa !195
  br label %while.body, !dbg !433

if.else317:                                       ; preds = %if.then314
  call void @free_hash() #9, !dbg !434
  call void @free_ecache() #9, !dbg !436
  call void @exit(i32 0) #12, !dbg !437
  unreachable, !dbg !437

if.else319:                                       ; preds = %if.else310
  %call321 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0)) #10, !dbg !438
  %tobool322 = icmp eq i32 %call321, 0, !dbg !438
  br i1 %tobool322, label %if.then327, label %lor.lhs.false323, !dbg !438

lor.lhs.false323:                                 ; preds = %if.else319
  %call325 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #10, !dbg !438
  %tobool326 = icmp eq i32 %call325, 0, !dbg !438
  br i1 %tobool326, label %if.then327, label %if.else328, !dbg !438

if.then327:                                       ; preds = %lor.lhs.false323, %if.else319
  call void @toggle_bool(i32* %show_board) #9, !dbg !439
  br label %while.body, !dbg !441

if.else328:                                       ; preds = %lor.lhs.false323
  %call330 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i64 5) #10, !dbg !442
  %tobool331 = icmp eq i32 %call330, 0, !dbg !442
  br i1 %tobool331, label %if.then332, label %if.else343, !dbg !442

if.then332:                                       ; preds = %if.else328
  %call334 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* %depth) #9, !dbg !258
  store i32 0, i32* @raw_nodes, align 4, !dbg !443, !tbaa !195
  %call335 = call i64 @rtime() #9, !dbg !444
  call void @llvm.dbg.value(metadata !{i64 %call335}, i64 0, metadata !76), !dbg !444
  call void @llvm.dbg.value(metadata !{i32* %depth}, i64 0, metadata !54), !dbg !445
  %99 = load i32* %depth, align 4, !dbg !445, !tbaa !195
  call void @perft(i32 %99) #9, !dbg !445
  call void @llvm.dbg.value(metadata !{i32* %depth}, i64 0, metadata !54), !dbg !446
  %100 = load i32* %depth, align 4, !dbg !446, !tbaa !195
  %101 = load i32* @raw_nodes, align 4, !dbg !446, !tbaa !195
  %call336 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str26, i64 0, i64 0), i32 %100, i32 %101) #9, !dbg !446
  %call337 = call i64 @rtime() #9, !dbg !447
  %call338 = call i32 @rdifftime(i64 %call337, i64 %call335) #9, !dbg !447
  %conv339 = sitofp i32 %call338 to float, !dbg !447
  %conv340 = fpext float %conv339 to double, !dbg !447
  %div341 = fdiv double %conv340, 1.000000e+02, !dbg !447
  %call342 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), double %div341) #9, !dbg !447
  br label %while.body, !dbg !448

if.else343:                                       ; preds = %if.else328
  %call345 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #10, !dbg !449
  %tobool346 = icmp eq i32 %call345, 0, !dbg !449
  br i1 %tobool346, label %if.then347, label %if.else361, !dbg !449

if.then347:                                       ; preds = %if.else343
  %102 = load i32* @xb_mode, align 4, !dbg !450, !tbaa !195
  %tobool348 = icmp eq i32 %102, 0, !dbg !450
  br i1 %tobool348, label %if.end351, label %if.then349, !dbg !450

if.then349:                                       ; preds = %if.then347
  %call350 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @setcode, i64 0, i64 0)) #9, !dbg !452
  br label %if.end351, !dbg !454

if.end351:                                        ; preds = %if.then347, %if.then349
  %103 = load i32* @is_analyzing, align 4, !dbg !455, !tbaa !196
  %tobool352 = icmp eq i32 %103, 0, !dbg !455
  br i1 %tobool352, label %if.then353, label %if.else359, !dbg !455

if.then353:                                       ; preds = %if.end351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !456
  store i32 2, i32* @Variant, align 4, !dbg !458, !tbaa !195
  call void @init_game() #9, !dbg !459
  call void @initialize_hash() #9, !dbg !460
  %tobool354 = icmp eq i32 %braindeadinterface.0, 0, !dbg !461
  br i1 %tobool354, label %if.then355, label %if.end356, !dbg !461

if.then355:                                       ; preds = %if.then353
  call void @clear_tt() #9, !dbg !462
  call void @reset_ecache() #9, !dbg !464
  br label %if.end356, !dbg !465

if.end356:                                        ; preds = %if.then353, %if.then355
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !55), !dbg !466
  store i32 0, i32* @must_sit, align 4, !dbg !467, !tbaa !196
  store i32 0, i32* @go_fast, align 4, !dbg !468, !tbaa !196
  store i32 0, i32* @piecedead, align 4, !dbg !469, !tbaa !196
  store i32 0, i32* @partnerdead, align 4, !dbg !470, !tbaa !196
  store i32 0, i32* @kibitzed, align 4, !dbg !471, !tbaa !196
  store i32 0, i32* @fixed_time, align 4, !dbg !472, !tbaa !195
  store i32 0, i32* @root_to_move, align 4, !dbg !473, !tbaa !195
  store i32 0, i32* @comp_color, align 4, !dbg !474, !tbaa !195
  store i32 0, i32* @move_number, align 4, !dbg !475, !tbaa !195
  store i32 0, i32* getelementptr inbounds ([600 x i32]* @hash_history, i64 0, i64 0), align 16, !dbg !476, !tbaa !195
  store i32 0, i32* @bookidx, align 4, !dbg !477, !tbaa !195
  store i32 2000, i32* @opp_rating, align 4, !dbg !478, !tbaa !195
  store i32 2000, i32* @my_rating, align 4, !dbg !478, !tbaa !195
  store i32 0, i32* @must_go, align 4, !dbg !479, !tbaa !195
  store i32 1, i32* @tradefreely, align 4, !dbg !480, !tbaa !195
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !75), !dbg !481
  call void @CheckBadFlow(i32 1) #9, !dbg !482
  call void @ResetHandValue() #9, !dbg !483
  br label %while.body, !dbg !484

if.else359:                                       ; preds = %if.end351
  call void @init_game() #9, !dbg !485
  store i32 0, i32* @move_number, align 4, !dbg !487, !tbaa !195
  br label %while.body

if.else361:                                       ; preds = %if.else343
  %call363 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0)) #10, !dbg !488
  %tobool364 = icmp eq i32 %call363, 0, !dbg !488
  br i1 %tobool364, label %if.then365, label %if.else369, !dbg !488

if.then365:                                       ; preds = %if.else361
  store i32 1, i32* @xb_mode, align 4, !dbg !489, !tbaa !195
  call void @toggle_bool(i32* %show_board) #9, !dbg !491
  %call366 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #9, !dbg !492
  %putchar = call i32 @putchar(i32 10) #2, !dbg !493
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str, i64 0, i64 0)), !dbg !494
  call void @BegForPartner() #9, !dbg !495
  br label %while.body, !dbg !496

if.else369:                                       ; preds = %if.else361
  %call371 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0)) #10, !dbg !497
  %tobool372 = icmp eq i32 %call371, 0, !dbg !497
  br i1 %tobool372, label %if.then373, label %if.else382, !dbg !497

if.then373:                                       ; preds = %if.else369
  %104 = load i32* @nodes, align 4, !dbg !498, !tbaa !195
  %105 = load i32* @qnodes, align 4, !dbg !498, !tbaa !195
  %conv374 = sitofp i32 %105 to float, !dbg !498
  %conv375 = sitofp i32 %104 to float, !dbg !498
  %div376 = fdiv float %conv374, %conv375, !dbg !498
  %conv379 = fmul float %div376, 1.000000e+02, !dbg !498
  %conv380 = fpext float %conv379 to double, !dbg !498
  %call381 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str33, i64 0, i64 0), i32 %104, double %conv380) #9, !dbg !498
  br label %while.body, !dbg !500

if.else382:                                       ; preds = %if.else369
  %call384 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #10, !dbg !501
  %tobool385 = icmp eq i32 %call384, 0, !dbg !501
  br i1 %tobool385, label %if.then386, label %if.else390, !dbg !501

if.then386:                                       ; preds = %if.else382
  call void @toggle_bool(i32* @post) #9, !dbg !502
  %106 = load i32* @xb_mode, align 4, !dbg !504, !tbaa !195
  %tobool387 = icmp eq i32 %106, 0, !dbg !504
  br i1 %tobool387, label %while.body, label %if.then388, !dbg !504

if.then388:                                       ; preds = %if.then386
  store i32 1, i32* @post, align 4, !dbg !505, !tbaa !196
  br label %while.body, !dbg !505

if.else390:                                       ; preds = %if.else382
  %call392 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #10, !dbg !506
  %tobool393 = icmp eq i32 %call392, 0, !dbg !506
  br i1 %tobool393, label %if.then394, label %if.else395, !dbg !506

if.then394:                                       ; preds = %if.else390
  store i32 0, i32* @post, align 4, !dbg !507, !tbaa !196
  br label %while.body, !dbg !509

if.else395:                                       ; preds = %if.else390
  %call397 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #10, !dbg !510
  %tobool398 = icmp eq i32 %call397, 0, !dbg !510
  br i1 %tobool398, label %while.body, label %if.else400, !dbg !510

if.else400:                                       ; preds = %if.else395
  %call402 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0)) #10, !dbg !511
  %tobool403 = icmp eq i32 %call402, 0, !dbg !511
  br i1 %tobool403, label %if.then404, label %if.else405, !dbg !511

if.then404:                                       ; preds = %if.else400
  store i32 1, i32* @allow_pondering, align 4, !dbg !512, !tbaa !196
  br label %while.body, !dbg !514

if.else405:                                       ; preds = %if.else400
  %call407 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0)) #10, !dbg !515
  %tobool408 = icmp eq i32 %call407, 0, !dbg !515
  br i1 %tobool408, label %if.then409, label %if.else410, !dbg !515

if.then409:                                       ; preds = %if.else405
  store i32 0, i32* @allow_pondering, align 4, !dbg !516, !tbaa !196
  br label %while.body, !dbg !518

if.else410:                                       ; preds = %if.else405
  %call412 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str39, i64 0, i64 0)) #10, !dbg !519
  %tobool413 = icmp eq i32 %call412, 0, !dbg !519
  br i1 %tobool413, label %while.body, label %if.else415, !dbg !519

if.else415:                                       ; preds = %if.else410
  %call417 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0)) #10, !dbg !520
  %tobool418 = icmp eq i32 %call417, 0, !dbg !520
  br i1 %tobool418, label %if.then419, label %if.else420, !dbg !520

if.then419:                                       ; preds = %if.else415
  store i32 1, i32* @white_to_move, align 4, !dbg !521, !tbaa !195
  store i32 0, i32* @root_to_move, align 4, !dbg !523, !tbaa !195
  store i32 0, i32* @comp_color, align 4, !dbg !524, !tbaa !195
  br label %while.body, !dbg !525

if.else420:                                       ; preds = %if.else415
  %call422 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0)) #10, !dbg !526
  %tobool423 = icmp eq i32 %call422, 0, !dbg !526
  br i1 %tobool423, label %if.then424, label %if.else425, !dbg !526

if.then424:                                       ; preds = %if.else420
  store i32 0, i32* @white_to_move, align 4, !dbg !527, !tbaa !195
  store i32 1, i32* @root_to_move, align 4, !dbg !529, !tbaa !195
  store i32 1, i32* @comp_color, align 4, !dbg !530, !tbaa !195
  br label %while.body, !dbg !531

if.else425:                                       ; preds = %if.else420
  %call427 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #10, !dbg !532
  %tobool428 = icmp eq i32 %call427, 0, !dbg !532
  br i1 %tobool428, label %while.body, label %if.else430, !dbg !532

if.else430:                                       ; preds = %if.else425
  %call432 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !533
  %tobool433 = icmp eq i32 %call432, 0, !dbg !533
  br i1 %tobool433, label %if.then434, label %if.else437, !dbg !533

if.then434:                                       ; preds = %if.else430
  call void @check_phase() #9, !dbg !534
  %call435 = call i32 @eval(i32 -1000000, i32 1000000) #9, !dbg !536
  %call436 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i32 %call435) #9, !dbg !536
  br label %while.body, !dbg !537

if.else437:                                       ; preds = %if.else430
  %call439 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0)) #10, !dbg !538
  %tobool440 = icmp eq i32 %call439, 0, !dbg !538
  br i1 %tobool440, label %if.then441, label %if.else442, !dbg !538

if.then441:                                       ; preds = %if.else437
  %107 = load i32* @white_to_move, align 4, !dbg !539, !tbaa !195
  store i32 %107, i32* @comp_color, align 4, !dbg !539, !tbaa !195
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !55), !dbg !541
  br label %while.body, !dbg !542

if.else442:                                       ; preds = %if.else437
  %call444 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i64 4) #10, !dbg !543
  %tobool445 = icmp eq i32 %call444, 0, !dbg !543
  br i1 %tobool445, label %if.then446, label %if.else450, !dbg !543

if.then446:                                       ; preds = %if.else442
  %call449 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr448, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i32* @time_left) #9, !dbg !260
  br label %while.body, !dbg !544

if.else450:                                       ; preds = %if.else442
  %call452 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i64 4) #10, !dbg !545
  %tobool453 = icmp eq i32 %call452, 0, !dbg !545
  br i1 %tobool453, label %if.then454, label %if.else458, !dbg !545

if.then454:                                       ; preds = %if.else450
  %call457 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr448, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i32* @opp_time) #9, !dbg !546
  br label %while.body, !dbg !548

if.else458:                                       ; preds = %if.else450
  %call460 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), i64 5) #10, !dbg !549
  %tobool461 = icmp eq i32 %call460, 0, !dbg !549
  br i1 %tobool461, label %if.then462, label %if.else480, !dbg !549

if.then462:                                       ; preds = %if.else458
  %strchr = call i8* @strchr(i8* %add.ptr, i32 58), !dbg !550
  %tobool466 = icmp eq i8* %strchr, null, !dbg !550
  br i1 %tobool466, label %if.else474, label %if.then467, !dbg !550

if.then467:                                       ; preds = %if.then462
  %call470 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([12 x i8]* @.str51, i64 0, i64 0), i32* @moves_to_tc, i32* @min_per_game, i32* @sec_per_game, i32* @inc) #9, !dbg !552
  %108 = load i32* @min_per_game, align 4, !dbg !554, !tbaa !195
  %mul471 = mul nsw i32 %108, 6000, !dbg !554
  %109 = load i32* @sec_per_game, align 4, !dbg !554, !tbaa !195
  %mul472 = mul nsw i32 %109, 100, !dbg !554
  %add473 = add nsw i32 %mul472, %mul471, !dbg !554
  br label %if.end479, !dbg !555

if.else474:                                       ; preds = %if.then462
  %call477 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8]* @.str52, i64 0, i64 0), i32* @moves_to_tc, i32* @min_per_game, i32* @inc) #9, !dbg !556
  %110 = load i32* @min_per_game, align 4, !dbg !558, !tbaa !195
  %mul478 = mul nsw i32 %110, 6000, !dbg !558
  br label %if.end479

if.end479:                                        ; preds = %if.else474, %if.then467
  %storemerge900 = phi i32 [ %add473, %if.then467 ], [ %mul478, %if.else474 ]
  store i32 %storemerge900, i32* @time_left, align 4, !dbg !558, !tbaa !195
  store i32 %storemerge900, i32* @opp_time, align 4, !dbg !559, !tbaa !195
  store i32 0, i32* @fixed_time, align 4, !dbg !560, !tbaa !195
  store i32 0, i32* @time_cushion, align 4, !dbg !561, !tbaa !195
  br label %while.body, !dbg !562

if.else480:                                       ; preds = %if.else458
  %call482 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i64 6) #10, !dbg !563
  %tobool483 = icmp eq i32 %call482, 0, !dbg !563
  br i1 %tobool483, label %if.then484, label %if.else496, !dbg !563

if.then484:                                       ; preds = %if.else480
  %call487 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr486, i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0), i32* @my_rating, i32* @opp_rating) #9, !dbg !262
  %111 = load i32* @my_rating, align 4, !dbg !564, !tbaa !195
  %cmp488 = icmp eq i32 %111, 0, !dbg !564
  br i1 %cmp488, label %if.then490, label %if.end491, !dbg !564

if.then490:                                       ; preds = %if.then484
  store i32 2000, i32* @my_rating, align 4, !dbg !564, !tbaa !195
  br label %if.end491, !dbg !564

if.end491:                                        ; preds = %if.then490, %if.then484
  %112 = load i32* @opp_rating, align 4, !dbg !565, !tbaa !195
  %cmp492 = icmp eq i32 %112, 0, !dbg !565
  br i1 %cmp492, label %if.then494, label %while.body, !dbg !565

if.then494:                                       ; preds = %if.end491
  store i32 2000, i32* @opp_rating, align 4, !dbg !565, !tbaa !195
  br label %while.body, !dbg !565

if.else496:                                       ; preds = %if.else480
  %call498 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str55, i64 0, i64 0), i64 7) #10, !dbg !566
  %tobool499 = icmp eq i32 %call498, 0, !dbg !566
  br i1 %tobool499, label %if.then500, label %if.else502, !dbg !566

if.then500:                                       ; preds = %if.else496
  call void @ProcessHoldings(i8* %0) #9, !dbg !567
  br label %while.body, !dbg !569

if.else502:                                       ; preds = %if.else496
  %call504 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str56, i64 0, i64 0), i64 7) #10, !dbg !570
  %tobool505 = icmp eq i32 %call504, 0, !dbg !570
  br i1 %tobool505, label %if.then506, label %if.else542, !dbg !570

if.then506:                                       ; preds = %if.else502
  %call508 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str57, i64 0, i64 0)) #10, !dbg !571
  %tobool509 = icmp eq i8* %call508, null, !dbg !571
  br i1 %tobool509, label %if.else511, label %if.then510, !dbg !571

if.then510:                                       ; preds = %if.then506
  store i32 2, i32* @Variant, align 4, !dbg !573, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !575
  br label %if.end541, !dbg !576

if.else511:                                       ; preds = %if.then506
  %call513 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0)) #10, !dbg !577
  %tobool514 = icmp eq i8* %call513, null, !dbg !577
  br i1 %tobool514, label %if.else516, label %if.then515, !dbg !577

if.then515:                                       ; preds = %if.else511
  store i32 0, i32* @Variant, align 4, !dbg !578, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false), !dbg !580
  br label %if.end541, !dbg !581

if.else516:                                       ; preds = %if.else511
  %call518 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0)) #10, !dbg !582
  %tobool519 = icmp eq i8* %call518, null, !dbg !582
  br i1 %tobool519, label %if.else521, label %if.then520, !dbg !582

if.then520:                                       ; preds = %if.else516
  store i32 1, i32* @Variant, align 4, !dbg !583, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false), !dbg !585
  br label %if.end541, !dbg !586

if.else521:                                       ; preds = %if.else516
  %call523 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0)) #10, !dbg !587
  %tobool524 = icmp eq i8* %call523, null, !dbg !587
  br i1 %tobool524, label %if.else526, label %if.then525, !dbg !587

if.then525:                                       ; preds = %if.else521
  store i32 3, i32* @Variant, align 4, !dbg !588, !tbaa !195
  store i32 0, i32* @Giveaway, align 4, !dbg !590, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false), !dbg !591
  br label %if.end541, !dbg !592

if.else526:                                       ; preds = %if.else521
  %call528 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str61, i64 0, i64 0)) #10, !dbg !593
  %tobool529 = icmp eq i8* %call528, null, !dbg !593
  br i1 %tobool529, label %if.else531, label %if.then530, !dbg !593

if.then530:                                       ; preds = %if.else526
  store i32 3, i32* @Variant, align 4, !dbg !594, !tbaa !195
  store i32 1, i32* @Giveaway, align 4, !dbg !596, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false), !dbg !597
  br label %if.end541, !dbg !598

if.else531:                                       ; preds = %if.else526
  %call533 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0)) #10, !dbg !599
  %tobool534 = icmp eq i8* %call533, null, !dbg !599
  br i1 %tobool534, label %if.end541, label %if.then535, !dbg !599

if.then535:                                       ; preds = %if.else531
  store i32 4, i32* @Variant, align 4, !dbg !600, !tbaa !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @losers_material to i8*), i64 56, i32 16, i1 false), !dbg !602
  br label %if.end541, !dbg !603

if.end541:                                        ; preds = %if.else531, %if.then515, %if.then525, %if.then535, %if.then530, %if.then520, %if.then510
  call void @initialize_hash() #9, !dbg !604
  call void @clear_tt() #9, !dbg !605
  call void @reset_ecache() #9, !dbg !606
  br label %while.body, !dbg !607

if.else542:                                       ; preds = %if.else502
  %call544 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i64 7) #10, !dbg !608
  %tobool545 = icmp eq i32 %call544, 0, !dbg !608
  br i1 %tobool545, label %if.then546, label %if.else548, !dbg !608

if.then546:                                       ; preds = %if.else542
  store i32 1, i32* @is_analyzing, align 4, !dbg !609, !tbaa !196
  store i32 1, i32* @is_pondering, align 4, !dbg !611, !tbaa !196
  call void @think(%struct.move_s* sret %tmp547) #9, !dbg !612
  store i32 0, i32* @ply, align 4, !dbg !613, !tbaa !195
  br label %while.body, !dbg !614

if.else548:                                       ; preds = %if.else542
  %call550 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i64 4) #10, !dbg !615
  %tobool551 = icmp eq i32 %call550, 0, !dbg !615
  br i1 %tobool551, label %if.then552, label %if.else564, !dbg !615

if.then552:                                       ; preds = %if.else548
  %113 = load i32* @move_number, align 4, !dbg !616, !tbaa !195
  %call553 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0), i32 %113) #9, !dbg !616
  %114 = load i32* @move_number, align 4, !dbg !618, !tbaa !195
  %cmp554 = icmp sgt i32 %114, 0, !dbg !618
  br i1 %cmp554, label %if.then556, label %while.body, !dbg !618

if.then556:                                       ; preds = %if.then552
  %dec557 = add nsw i32 %114, -1, !dbg !619
  store i32 %dec557, i32* @move_number, align 4, !dbg !619, !tbaa !195
  %idxprom558 = sext i32 %dec557 to i64, !dbg !619
  %arrayidx559 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom558, !dbg !619
  %115 = bitcast %struct.move_x* %arrayidx559 to i8*, !dbg !619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %115, i64 16, i32 16, i1 false), !dbg !619, !tbaa.struct !288
  %arrayidx561 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom558, !dbg !621
  call void @unmake(%struct.move_s* %arrayidx561, i32 0) #9, !dbg !621
  call void @reset_piece_square() #9, !dbg !622
  %116 = load i32* @root_to_move, align 4, !dbg !623, !tbaa !195
  %xor562 = xor i32 %116, 1, !dbg !623
  store i32 %xor562, i32* @root_to_move, align 4, !dbg !623, !tbaa !195
  br label %while.body, !dbg !624

if.else564:                                       ; preds = %if.else548
  %call566 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str66, i64 0, i64 0), i64 5) #10, !dbg !625
  %tobool567 = icmp eq i32 %call566, 0, !dbg !625
  br i1 %tobool567, label %if.then568, label %if.else583, !dbg !625

if.then568:                                       ; preds = %if.else564
  %117 = load i32* @move_number, align 4, !dbg !626, !tbaa !195
  %cmp569 = icmp sgt i32 %117, 1, !dbg !626
  br i1 %cmp569, label %if.then571, label %while.body, !dbg !626

if.then571:                                       ; preds = %if.then568
  %dec572 = add nsw i32 %117, -1, !dbg !628
  store i32 %dec572, i32* @move_number, align 4, !dbg !628, !tbaa !195
  %idxprom573 = sext i32 %dec572 to i64, !dbg !628
  %arrayidx574 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom573, !dbg !628
  %118 = bitcast %struct.move_x* %arrayidx574 to i8*, !dbg !628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %118, i64 16, i32 16, i1 false), !dbg !628, !tbaa.struct !288
  %arrayidx576 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom573, !dbg !630
  call void @unmake(%struct.move_s* %arrayidx576, i32 0) #9, !dbg !630
  call void @reset_piece_square() #9, !dbg !631
  %119 = load i32* @move_number, align 4, !dbg !632, !tbaa !195
  %dec577 = add nsw i32 %119, -1, !dbg !632
  store i32 %dec577, i32* @move_number, align 4, !dbg !632, !tbaa !195
  %idxprom578 = sext i32 %dec577 to i64, !dbg !632
  %arrayidx579 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom578, !dbg !632
  %120 = bitcast %struct.move_x* %arrayidx579 to i8*, !dbg !632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %120, i64 16, i32 16, i1 false), !dbg !632, !tbaa.struct !288
  %arrayidx581 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom578, !dbg !633
  call void @unmake(%struct.move_s* %arrayidx581, i32 0) #9, !dbg !633
  call void @reset_piece_square() #9, !dbg !634
  br label %while.body, !dbg !635

if.else583:                                       ; preds = %if.else564
  %call585 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str67, i64 0, i64 0), i64 4) #10, !dbg !636
  %tobool586 = icmp eq i32 %call585, 0, !dbg !636
  br i1 %tobool586, label %while.body, label %if.else588, !dbg !636

if.else588:                                       ; preds = %if.else583
  %121 = load i8* %0, align 16, !dbg !637
  %122 = bitcast [256 x i8]* %input to i32*, !dbg !637
  %lhsc = load i32* %122, align 16, !dbg !637
  %123 = trunc i32 %lhsc to i16, !dbg !637
  %124 = trunc i32 %lhsc to i8, !dbg !637
  %tobool591.not = icmp ne i8 %124, 46, !dbg !637
  %tobool.not = xor i1 %tobool, true, !dbg !637
  %brmerge954 = or i1 %tobool591.not, %tobool.not, !dbg !637
  %125 = lshr i16 %123, 8
  %126 = trunc i16 %125 to i8
  %127 = lshr i32 %lhsc, 16
  %128 = zext i32 %127 to i64
  br i1 %brmerge954, label %if.else603, label %if.then594, !dbg !637

if.then594:                                       ; preds = %if.else588
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !71), !dbg !638
  %129 = load i32* @wking_loc, align 4, !dbg !640, !tbaa !195
  %cmp595 = icmp eq i32 %129, 30, !dbg !640
  br i1 %cmp595, label %if.then597, label %if.end598, !dbg !640

if.then597:                                       ; preds = %if.then594
  store i32 0, i32* @white_castled, align 4, !dbg !640, !tbaa !195
  br label %if.end598, !dbg !640

if.end598:                                        ; preds = %if.then597, %if.then594
  %130 = load i32* @bking_loc, align 4, !dbg !641, !tbaa !195
  %cmp599 = icmp eq i32 %130, 114, !dbg !641
  br i1 %cmp599, label %if.then601, label %if.end602, !dbg !641

if.then601:                                       ; preds = %if.end598
  store i32 0, i32* @black_castled, align 4, !dbg !641, !tbaa !195
  br label %if.end602, !dbg !641

if.end602:                                        ; preds = %if.then601, %if.end598
  store i32 50, i32* @book_ply, align 4, !dbg !642, !tbaa !195
  store i32 0, i32* @ep_square, align 4, !dbg !643, !tbaa !195
  store i32 0, i32* @move_number, align 4, !dbg !644, !tbaa !195
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false), !dbg !645
  call void @clear_tt() #9, !dbg !646
  call void @initialize_hash() #9, !dbg !647
  call void @reset_piece_square() #9, !dbg !648
  br label %while.body, !dbg !649

if.else603:                                       ; preds = %if.else588
  br i1 %tobool, label %land.lhs.true605, label %if.else655, !dbg !650

land.lhs.true605:                                 ; preds = %if.else603
  switch i8 %124, label %land.lhs.true624 [
    i8 99, label %if.then609
    i8 35, label %if.then621
  ], !dbg !650

if.then609:                                       ; preds = %land.lhs.true605
  %131 = xor i32 %edit_color.0, 1, !dbg !651
  br label %while.body, !dbg !651

if.then621:                                       ; preds = %land.lhs.true605
  call void @reset_board() #9, !dbg !653
  store i32 0, i32* @move_number, align 4, !dbg !655, !tbaa !195
  br label %while.body, !dbg !656

land.lhs.true624:                                 ; preds = %land.lhs.true605
  %idxprom627 = sext i8 %124 to i64, !dbg !657
  %call628 = call i16** @__ctype_b_loc() #11, !dbg !658
  %132 = load i16** %call628, align 8, !dbg !658, !tbaa !250
  %arrayidx629 = getelementptr inbounds i16* %132, i64 %idxprom627, !dbg !658
  %133 = load i16* %arrayidx629, align 2, !dbg !658, !tbaa !659
  %and = and i16 %133, 1024, !dbg !658
  %tobool631 = icmp eq i16 %and, 0, !dbg !658
  br i1 %tobool631, label %if.else655, label %land.lhs.true632, !dbg !658

land.lhs.true632:                                 ; preds = %land.lhs.true624
  %idxprom635 = sext i8 %126 to i64, !dbg !658
  %arrayidx637 = getelementptr inbounds i16* %132, i64 %idxprom635, !dbg !660
  %134 = load i16* %arrayidx637, align 2, !dbg !660, !tbaa !659
  %and639 = and i16 %134, 1024, !dbg !660
  %tobool640 = icmp eq i16 %and639, 0, !dbg !660
  br i1 %tobool640, label %if.else655, label %land.lhs.true641, !dbg !660

land.lhs.true641:                                 ; preds = %land.lhs.true632
  %sext959 = shl i64 %128, 56, !dbg !660
  %idxprom644 = ashr exact i64 %sext959, 56, !dbg !660
  %arrayidx646 = getelementptr inbounds i16* %132, i64 %idxprom644, !dbg !661
  %135 = load i16* %arrayidx646, align 2, !dbg !661, !tbaa !659
  %and648 = and i16 %135, 2048, !dbg !661
  %tobool649 = icmp eq i16 %and648, 0, !dbg !661
  br i1 %tobool649, label %if.else655, label %if.then650, !dbg !661

if.then650:                                       ; preds = %land.lhs.true641
  %sext = shl i32 %127, 24, !dbg !660
  %conv643 = ashr exact i32 %sext, 24, !dbg !660
  call void @PutPiece(i32 %edit_color.0, i8 signext %124, i8 signext %126, i32 %conv643) #9, !dbg !662
  br label %while.body, !dbg !664

if.else655:                                       ; preds = %if.else603, %land.lhs.true641, %land.lhs.true632, %land.lhs.true624
  %call657 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str71, i64 0, i64 0), i64 7) #10, !dbg !665
  %tobool658 = icmp eq i32 %call657, 0, !dbg !665
  br i1 %tobool658, label %if.then659, label %if.else662, !dbg !665

if.then659:                                       ; preds = %if.else655
  call void @HandlePartner(i8* %add.ptr486) #9, !dbg !666
  br label %while.body, !dbg !668

if.else662:                                       ; preds = %if.else655
  %call664 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i64 8) #10, !dbg !669
  %tobool665 = icmp eq i32 %call664, 0, !dbg !669
  br i1 %tobool665, label %if.then666, label %if.else669, !dbg !669

if.then666:                                       ; preds = %if.else662
  call void @HandlePartner(i8* %add.ptr668) #9, !dbg !264
  br label %while.body, !dbg !670

if.else669:                                       ; preds = %if.else662
  %call671 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str73, i64 0, i64 0), i64 5) #10, !dbg !671
  %tobool672 = icmp eq i32 %call671, 0, !dbg !671
  br i1 %tobool672, label %if.then673, label %if.else675, !dbg !671

if.then673:                                       ; preds = %if.else669
  call void @HandlePtell(i8* %0) #9, !dbg !672
  br label %while.body, !dbg !674

if.else675:                                       ; preds = %if.else669
  %call677 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str74, i64 0, i64 0), i64 4) #10, !dbg !675
  %tobool678 = icmp eq i32 %call677, 0, !dbg !675
  br i1 %tobool678, label %if.then679, label %if.else680, !dbg !675

if.then679:                                       ; preds = %if.else675
  call void @run_epd_testsuite() #9, !dbg !676
  br label %while.body, !dbg !678

if.else680:                                       ; preds = %if.else675
  %call682 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2) #10, !dbg !679
  %tobool683 = icmp eq i32 %call682, 0, !dbg !679
  br i1 %tobool683, label %if.then684, label %if.else689, !dbg !679

if.then684:                                       ; preds = %if.else680
  %call687 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr686, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* @fixed_time) #9, !dbg !266
  %136 = load i32* @fixed_time, align 4, !dbg !680, !tbaa !195
  %mul688 = mul nsw i32 %136, 100, !dbg !680
  store i32 %mul688, i32* @fixed_time, align 4, !dbg !680, !tbaa !195
  br label %while.body, !dbg !681

if.else689:                                       ; preds = %if.else680
  %call691 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i64 6) #10, !dbg !682
  %tobool692 = icmp eq i32 %call691, 0, !dbg !682
  br i1 %tobool692, label %while.body, label %if.else694, !dbg !682

if.else694:                                       ; preds = %if.else689
  %call696 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i64 5) #10, !dbg !683
  %tobool697 = icmp eq i32 %call696, 0, !dbg !683
  br i1 %tobool697, label %if.then698, label %if.else707, !dbg !683

if.then698:                                       ; preds = %if.else694
  %call699 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str78, i64 0, i64 0)) #9, !dbg !684
  %call700 = call i64 @rtime() #9, !dbg !686
  store i64 %call700, i64* @start_time, align 8, !dbg !686, !tbaa !687
  %137 = load %struct._IO_FILE** @stdin, align 8, !dbg !688, !tbaa !250
  call void @rinput(i8* %2, i32 256, %struct._IO_FILE* %137) #9, !dbg !688
  %call703 = call i64 @atol(i8* %2) #10, !dbg !689
  %mul704 = mul nsw i64 %call703, 100, !dbg !689
  %conv705 = trunc i64 %mul704 to i32, !dbg !689
  store i32 %conv705, i32* @pn_time, align 4, !dbg !689, !tbaa !195
  %putchar901 = call i32 @putchar(i32 10) #2, !dbg !690
  call void @proofnumbersearch() #9, !dbg !691
  br label %while.body, !dbg !692

if.else707:                                       ; preds = %if.else694
  %call709 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i64 4) #10, !dbg !693
  %tobool710 = icmp eq i32 %call709, 0, !dbg !693
  br i1 %tobool710, label %if.then711, label %if.else716, !dbg !693

if.then711:                                       ; preds = %if.else707
  %call714 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr448, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* %pingnum) #9, !dbg !694
  call void @llvm.dbg.value(metadata !{i32* %pingnum}, i64 0, metadata !73), !dbg !696
  %138 = load i32* %pingnum, align 4, !dbg !696, !tbaa !195
  %call715 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str80, i64 0, i64 0), i32 %138) #9, !dbg !696
  br label %while.body, !dbg !697

if.else716:                                       ; preds = %if.else707
  %call718 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5) #10, !dbg !698
  %tobool719 = icmp eq i32 %call718, 0, !dbg !698
  br i1 %tobool719, label %while.body, label %if.else721, !dbg !698

if.else721:                                       ; preds = %if.else716
  %call723 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str82, i64 0, i64 0), i64 5) #10, !dbg !699
  %tobool724 = icmp eq i32 %call723, 0, !dbg !699
  br i1 %tobool724, label %if.then725, label %if.else726, !dbg !699

if.then725:                                       ; preds = %if.else721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !700
  store i32 2, i32* @Variant, align 4, !dbg !702, !tbaa !195
  call void @init_game() #9, !dbg !703
  call void @initialize_hash() #9, !dbg !704
  call void @clear_tt() #9, !dbg !705
  call void @reset_ecache() #9, !dbg !706
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !55), !dbg !707
  store i32 0, i32* @fixed_time, align 4, !dbg !708, !tbaa !195
  store i32 0, i32* @root_to_move, align 4, !dbg !709, !tbaa !195
  store i32 0, i32* @comp_color, align 4, !dbg !710, !tbaa !195
  store i32 0, i32* @move_number, align 4, !dbg !711, !tbaa !195
  store i32 0, i32* @bookidx, align 4, !dbg !712, !tbaa !195
  store i32 2000, i32* @opp_rating, align 4, !dbg !713, !tbaa !195
  store i32 2000, i32* @my_rating, align 4, !dbg !713, !tbaa !195
  br label %while.body, !dbg !714

if.else726:                                       ; preds = %if.else721
  %call728 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i64 8) #10, !dbg !715
  %tobool729 = icmp eq i32 %call728, 0, !dbg !715
  br i1 %tobool729, label %if.then730, label %if.else733, !dbg !715

if.then730:                                       ; preds = %if.else726
  call void @setup_epd_line(i8* %add.ptr732) #9, !dbg !268
  br label %while.body, !dbg !716

if.else733:                                       ; preds = %if.else726
  %tobool736 = icmp eq i8 %121, 46, !dbg !717
  br i1 %tobool736, label %while.body, label %if.else738, !dbg !717

if.else738:                                       ; preds = %if.else733
  %call740 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i64 2) #10, !dbg !718
  %tobool741 = icmp eq i32 %call740, 0, !dbg !718
  br i1 %tobool741, label %if.then742, label %if.else747, !dbg !718

if.then742:                                       ; preds = %if.else738
  %call745 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr686, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* @maxdepth) #9, !dbg !719
  %139 = load i32* @maxdepth, align 4, !dbg !721, !tbaa !195
  %call746 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str84, i64 0, i64 0), i32 %139) #9, !dbg !721
  br label %while.body, !dbg !722

if.else747:                                       ; preds = %if.else738
  %call749 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str85, i64 0, i64 0), i64 4) #10, !dbg !723
  %tobool750 = icmp eq i32 %call749, 0, !dbg !723
  br i1 %tobool750, label %while.body, label %if.else752, !dbg !723

if.else752:                                       ; preds = %if.else747
  %call754 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str86, i64 0, i64 0), i64 8) #10, !dbg !724
  %tobool755 = icmp eq i32 %call754, 0, !dbg !724
  br i1 %tobool755, label %if.then756, label %if.else762, !dbg !724

if.then756:                                       ; preds = %if.else752
  %puts903 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str120, i64 0, i64 0)), !dbg !725
  %puts904 = call i32 @puts(i8* getelementptr inbounds ([52 x i8]* @str121, i64 0, i64 0)), !dbg !727
  %puts905 = call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str122, i64 0, i64 0)), !dbg !728
  %puts906 = call i32 @puts(i8* getelementptr inbounds ([70 x i8]* @str123, i64 0, i64 0)), !dbg !729
  %puts907 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str124, i64 0, i64 0)), !dbg !730
  store i32 2, i32* @xb_mode, align 4, !dbg !731, !tbaa !195
  br label %while.body, !dbg !732

if.else762:                                       ; preds = %if.else752
  %call764 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i64 8) #10, !dbg !733
  %tobool765 = icmp eq i32 %call764, 0, !dbg !733
  br i1 %tobool765, label %while.body, label %if.else767, !dbg !733

if.else767:                                       ; preds = %if.else762
  %call769 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str93, i64 0, i64 0), i64 8) #10, !dbg !734
  %tobool770 = icmp eq i32 %call769, 0, !dbg !734
  br i1 %tobool770, label %if.then771, label %if.else773, !dbg !734

if.then771:                                       ; preds = %if.else767
  %puts908 = call i32 @puts(i8* getelementptr inbounds ([64 x i8]* @str125, i64 0, i64 0)), !dbg !735
  br label %while.body, !dbg !737

if.else773:                                       ; preds = %if.else767
  %call775 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str95, i64 0, i64 0)) #10, !dbg !738
  %tobool776 = icmp eq i32 %call775, 0, !dbg !738
  br i1 %tobool776, label %if.then777, label %if.else803, !dbg !738

if.then777:                                       ; preds = %if.else773
  %call778 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #9, !dbg !739
  %puts909 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str126, i64 0, i64 0)), !dbg !741
  %puts910 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str127, i64 0, i64 0)), !dbg !742
  %puts911 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str128, i64 0, i64 0)), !dbg !743
  %puts912 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str129, i64 0, i64 0)), !dbg !744
  %puts913 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str130, i64 0, i64 0)), !dbg !745
  %puts914 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str131, i64 0, i64 0)), !dbg !746
  %puts915 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str132, i64 0, i64 0)), !dbg !747
  %puts916 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str133, i64 0, i64 0)), !dbg !748
  %puts917 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str134, i64 0, i64 0)), !dbg !749
  %puts918 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str135, i64 0, i64 0)), !dbg !750
  %puts919 = call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str136, i64 0, i64 0)), !dbg !751
  %puts920 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str137, i64 0, i64 0)), !dbg !752
  %puts921 = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str138, i64 0, i64 0)), !dbg !753
  %puts922 = call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str139, i64 0, i64 0)), !dbg !754
  %puts923 = call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str140, i64 0, i64 0)), !dbg !755
  %puts924 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str141, i64 0, i64 0)), !dbg !756
  %puts925 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str142, i64 0, i64 0)), !dbg !757
  %puts926 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str143, i64 0, i64 0)), !dbg !758
  %puts927 = call i32 @puts(i8* getelementptr inbounds ([53 x i8]* @str144, i64 0, i64 0)), !dbg !759
  %puts928 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str145, i64 0, i64 0)), !dbg !760
  %puts929 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str146, i64 0, i64 0)), !dbg !761
  %puts930 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str147, i64 0, i64 0)), !dbg !762
  %puts931 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str148, i64 0, i64 0)), !dbg !763
  %call802 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #9, !dbg !764
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !57), !dbg !765
  store i32 0, i32* %show_board, align 4, !dbg !765, !tbaa !196
  br label %while.body, !dbg !766

if.else803:                                       ; preds = %if.else773
  %140 = load i32* @xb_mode, align 4, !dbg !767, !tbaa !195
  %tobool804 = icmp eq i32 %140, 0, !dbg !767
  br i1 %tobool804, label %if.then805, label %while.body, !dbg !767

if.then805:                                       ; preds = %if.else803
  %call807 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %0) #9, !dbg !768
  br label %while.body, !dbg !770
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @read_rcfile() #3

; Function Attrs: optsize
declare void @initialize_zobrist() #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare void @init_game() #3

; Function Attrs: optsize
declare void @initialize_hash() #3

; Function Attrs: optsize
declare void @clear_tt() #3

; Function Attrs: optsize
declare void @reset_ecache() #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize
declare void @setbuf(%struct._IO_FILE* nocapture, i8*) #4

; Function Attrs: optsize
declare void @start_up() #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @run_autotest(i8*) #3

; Function Attrs: optsize
declare void @think(%struct.move_s* sret) #3

; Function Attrs: optsize
declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #3

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #3

; Function Attrs: optsize
declare i32 @is_draw() #3

; Function Attrs: optsize
declare void @reset_piece_square() #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @eval(i32, i32) #3

; Function Attrs: optsize
declare void @CheckBadFlow(i32) #3

; Function Attrs: optsize
declare void @display_board(%struct._IO_FILE*, i32) #3

; Function Attrs: optsize
declare void @rinput(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @is_move(i8*) #3

; Function Attrs: optsize
declare i32 @verify_coord(i8*, %struct.move_s*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare void @free_hash() #3

; Function Attrs: optsize
declare void @free_ecache() #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #7

; Function Attrs: optsize
declare void @toggle_bool(i32*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i64 @rtime() #3

; Function Attrs: optsize
declare void @perft(i32) #3

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #3

; Function Attrs: optsize
declare void @ResetHandValue() #3

; Function Attrs: nounwind optsize
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: optsize
declare void @BegForPartner() #3

; Function Attrs: optsize
declare void @check_phase() #3

; Function Attrs: optsize
declare void @ProcessHoldings(i8*) #3

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #3

; Function Attrs: optsize
declare void @reset_board() #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: optsize
declare void @PutPiece(i32, i8 signext, i8 signext, i32) #3

; Function Attrs: optsize
declare void @HandlePartner(i8*) #3

; Function Attrs: optsize
declare void @HandlePtell(i8*) #3

; Function Attrs: optsize
declare void @run_epd_testsuite() #3

; Function Attrs: nounwind optsize readonly
declare i64 @atol(i8* nocapture) #5

; Function Attrs: optsize
declare void @proofnumbersearch() #3

; Function Attrs: optsize
declare void @setup_epd_line(i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !86, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!11 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!12 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!13 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!14 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!15 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!16 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!17 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!18 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!19 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!20 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!21 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!22 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!23 = metadata !{i32 0}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"main", metadata !"main", metadata !"", i32 75, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !33, i32 75} ; [ DW_TAG_subprogram ] [line 75] [def] [main]
!26 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !29, metadata !30}
!29 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !40, metadata !41, metadata !42, metadata !43, metadata !53, metadata !54, metadata !55, metadata !57, metadata !58, metadata !62, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !81}
!34 = metadata !{i32 786689, metadata !25, metadata !"argc", metadata !26, i32 16777291, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 75]
!35 = metadata !{i32 786689, metadata !25, metadata !"argv", metadata !26, i32 33554507, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 75]
!36 = metadata !{i32 786688, metadata !25, metadata !"input", metadata !26, i32 77, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input] [line 77]
!37 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !32, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!40 = metadata !{i32 786688, metadata !25, metadata !"p", metadata !26, i32 77, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 77]
!41 = metadata !{i32 786688, metadata !25, metadata !"output", metadata !26, i32 77, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 77]
!42 = metadata !{i32 786688, metadata !25, metadata !"readbuff", metadata !26, i32 78, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [readbuff] [line 78]
!43 = metadata !{i32 786688, metadata !25, metadata !"move", metadata !26, i32 79, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move] [line 79]
!44 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!45 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!47 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!49 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!50 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!51 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!52 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!53 = metadata !{i32 786688, metadata !25, metadata !"comp_move", metadata !26, i32 79, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp_move] [line 79]
!54 = metadata !{i32 786688, metadata !25, metadata !"depth", metadata !26, i32 80, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depth] [line 80]
!55 = metadata !{i32 786688, metadata !25, metadata !"force_mode", metadata !26, i32 81, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [force_mode] [line 81]
!56 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786688, metadata !25, metadata !"show_board", metadata !26, i32 81, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [show_board] [line 81]
!58 = metadata !{i32 786688, metadata !25, metadata !"game_history", metadata !26, i32 82, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [game_history] [line 82]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 115200, i64 32, i32 0, i32 0, metadata !44, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 115200, align 32, offset 0] [from move_s]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 600}      ; [ DW_TAG_subrange_type ] [0, 599]
!62 = metadata !{i32 786688, metadata !25, metadata !"game_history_x", metadata !26, i32 83, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [game_history_x] [line 83]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 76800, i64 32, i32 0, i32 0, metadata !64, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 76800, align 32, offset 0] [from move_x]
!64 = metadata !{i32 786454, metadata !1, null, metadata !"move_x", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [move_x] [line 109, size 0, align 0, offset 0] [from ]
!65 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 104, i64 128, i64 32, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 104, size 128, align 32, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70}
!67 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"cap_num", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [cap_num] [line 105, size 32, align 32, offset 0] [from int]
!68 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"was_promoted", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [was_promoted] [line 106, size 32, align 32, offset 32] [from int]
!69 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"epsq", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [epsq] [line 107, size 32, align 32, offset 64] [from int]
!70 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"fifty", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [fifty] [line 108, size 32, align 32, offset 96] [from int]
!71 = metadata !{i32 786688, metadata !25, metadata !"is_edit_mode", metadata !26, i32 84, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_edit_mode] [line 84]
!72 = metadata !{i32 786688, metadata !25, metadata !"edit_color", metadata !26, i32 84, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edit_color] [line 84]
!73 = metadata !{i32 786688, metadata !25, metadata !"pingnum", metadata !26, i32 85, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pingnum] [line 85]
!74 = metadata !{i32 786688, metadata !25, metadata !"braindeadinterface", metadata !26, i32 86, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [braindeadinterface] [line 86]
!75 = metadata !{i32 786688, metadata !25, metadata !"automode", metadata !26, i32 87, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [automode] [line 87]
!76 = metadata !{i32 786688, metadata !25, metadata !"xstart_time", metadata !26, i32 88, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xstart_time] [line 88]
!77 = metadata !{i32 786454, metadata !1, null, metadata !"rtime_t", i32 161, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [rtime_t] [line 161, size 0, align 0, offset 0] [from time_t]
!78 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!79 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!80 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!81 = metadata !{i32 786688, metadata !82, metadata !"__res", metadata !26, i32 386, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 386]
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 386, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!83 = metadata !{i32 786443, metadata !1, metadata !84, i32 386, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 381, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!85 = metadata !{i32 786443, metadata !1, metadata !25, i32 159, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!86 = metadata !{metadata !87, metadata !91, metadata !92, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !110, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !138, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !156, metadata !159, metadata !161, metadata !162, metadata !163, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!87 = metadata !{i32 786484, i32 0, null, metadata !"divider", metadata !"divider", metadata !"", metadata !26, i32 16, metadata !88, i32 0, i32 1, [50 x i8]* @divider, null} ; [ DW_TAG_variable ] [divider] [line 16] [def]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 400, i64 8, i32 0, i32 0, metadata !32, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 400, align 8, offset 0] [from char]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 50}       ; [ DW_TAG_subrange_type ] [0, 49]
!91 = metadata !{i32 786484, i32 0, null, metadata !"dummy", metadata !"dummy", metadata !"", metadata !26, i32 17, metadata !44, i32 0, i32 1, %struct.move_s* @dummy, null} ; [ DW_TAG_variable ] [dummy] [line 17] [def]
!92 = metadata !{i32 786484, i32 0, null, metadata !"board", metadata !"board", metadata !"", metadata !26, i32 19, metadata !93, i32 0, i32 1, [144 x i32]* @board, null} ; [ DW_TAG_variable ] [board] [line 19] [def]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !29, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4608, align 32, offset 0] [from int]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 144}      ; [ DW_TAG_subrange_type ] [0, 143]
!96 = metadata !{i32 786484, i32 0, null, metadata !"moved", metadata !"moved", metadata !"", metadata !26, i32 19, metadata !93, i32 0, i32 1, [144 x i32]* @moved, null} ; [ DW_TAG_variable ] [moved] [line 19] [def]
!97 = metadata !{i32 786484, i32 0, null, metadata !"ep_square", metadata !"ep_square", metadata !"", metadata !26, i32 19, metadata !29, i32 0, i32 1, i32* @ep_square, null} ; [ DW_TAG_variable ] [ep_square] [line 19] [def]
!98 = metadata !{i32 786484, i32 0, null, metadata !"white_to_move", metadata !"white_to_move", metadata !"", metadata !26, i32 19, metadata !29, i32 0, i32 1, i32* @white_to_move, null} ; [ DW_TAG_variable ] [white_to_move] [line 19] [def]
!99 = metadata !{i32 786484, i32 0, null, metadata !"comp_color", metadata !"comp_color", metadata !"", metadata !26, i32 19, metadata !29, i32 0, i32 1, i32* @comp_color, null} ; [ DW_TAG_variable ] [comp_color] [line 19] [def]
!100 = metadata !{i32 786484, i32 0, null, metadata !"wking_loc", metadata !"wking_loc", metadata !"", metadata !26, i32 19, metadata !29, i32 0, i32 1, i32* @wking_loc, null} ; [ DW_TAG_variable ] [wking_loc] [line 19] [def]
!101 = metadata !{i32 786484, i32 0, null, metadata !"bking_loc", metadata !"bking_loc", metadata !"", metadata !26, i32 20, metadata !29, i32 0, i32 1, i32* @bking_loc, null} ; [ DW_TAG_variable ] [bking_loc] [line 20] [def]
!102 = metadata !{i32 786484, i32 0, null, metadata !"white_castled", metadata !"white_castled", metadata !"", metadata !26, i32 20, metadata !29, i32 0, i32 1, i32* @white_castled, null} ; [ DW_TAG_variable ] [white_castled] [line 20] [def]
!103 = metadata !{i32 786484, i32 0, null, metadata !"black_castled", metadata !"black_castled", metadata !"", metadata !26, i32 20, metadata !29, i32 0, i32 1, i32* @black_castled, null} ; [ DW_TAG_variable ] [black_castled] [line 20] [def]
!104 = metadata !{i32 786484, i32 0, null, metadata !"result", metadata !"result", metadata !"", metadata !26, i32 20, metadata !29, i32 0, i32 1, i32* @result, null} ; [ DW_TAG_variable ] [result] [line 20] [def]
!105 = metadata !{i32 786484, i32 0, null, metadata !"ply", metadata !"ply", metadata !"", metadata !26, i32 20, metadata !29, i32 0, i32 1, i32* @ply, null} ; [ DW_TAG_variable ] [ply] [line 20] [def]
!106 = metadata !{i32 786484, i32 0, null, metadata !"pv_length", metadata !"pv_length", metadata !"", metadata !26, i32 20, metadata !107, i32 0, i32 1, [300 x i32]* @pv_length, null} ; [ DW_TAG_variable ] [pv_length] [line 20] [def]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9600, i64 32, i32 0, i32 0, metadata !29, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9600, align 32, offset 0] [from int]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!110 = metadata !{i32 786484, i32 0, null, metadata !"pieces", metadata !"pieces", metadata !"", metadata !26, i32 21, metadata !111, i32 0, i32 1, [62 x i32]* @pieces, null} ; [ DW_TAG_variable ] [pieces] [line 21] [def]
!111 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1984, i64 32, i32 0, i32 0, metadata !29, metadata !112, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1984, align 32, offset 0] [from int]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 786465, i64 0, i64 62}      ; [ DW_TAG_subrange_type ] [0, 61]
!114 = metadata !{i32 786484, i32 0, null, metadata !"squares", metadata !"squares", metadata !"", metadata !26, i32 21, metadata !93, i32 0, i32 1, [144 x i32]* @squares, null} ; [ DW_TAG_variable ] [squares] [line 21] [def]
!115 = metadata !{i32 786484, i32 0, null, metadata !"num_pieces", metadata !"num_pieces", metadata !"", metadata !26, i32 21, metadata !29, i32 0, i32 1, i32* @num_pieces, null} ; [ DW_TAG_variable ] [num_pieces] [line 21] [def]
!116 = metadata !{i32 786484, i32 0, null, metadata !"i_depth", metadata !"i_depth", metadata !"", metadata !26, i32 21, metadata !29, i32 0, i32 1, i32* @i_depth, null} ; [ DW_TAG_variable ] [i_depth] [line 21] [def]
!117 = metadata !{i32 786484, i32 0, null, metadata !"fifty", metadata !"fifty", metadata !"", metadata !26, i32 21, metadata !29, i32 0, i32 1, i32* @fifty, null} ; [ DW_TAG_variable ] [fifty] [line 21] [def]
!118 = metadata !{i32 786484, i32 0, null, metadata !"piece_count", metadata !"piece_count", metadata !"", metadata !26, i32 21, metadata !29, i32 0, i32 1, i32* @piece_count, null} ; [ DW_TAG_variable ] [piece_count] [line 21] [def]
!119 = metadata !{i32 786484, i32 0, null, metadata !"nodes", metadata !"nodes", metadata !"", metadata !26, i32 23, metadata !29, i32 0, i32 1, i32* @nodes, null} ; [ DW_TAG_variable ] [nodes] [line 23] [def]
!120 = metadata !{i32 786484, i32 0, null, metadata !"raw_nodes", metadata !"raw_nodes", metadata !"", metadata !26, i32 23, metadata !29, i32 0, i32 1, i32* @raw_nodes, null} ; [ DW_TAG_variable ] [raw_nodes] [line 23] [def]
!121 = metadata !{i32 786484, i32 0, null, metadata !"qnodes", metadata !"qnodes", metadata !"", metadata !26, i32 23, metadata !29, i32 0, i32 1, i32* @qnodes, null} ; [ DW_TAG_variable ] [qnodes] [line 23] [def]
!122 = metadata !{i32 786484, i32 0, null, metadata !"killer_scores", metadata !"killer_scores", metadata !"", metadata !26, i32 23, metadata !107, i32 0, i32 1, [300 x i32]* @killer_scores, null} ; [ DW_TAG_variable ] [killer_scores] [line 23] [def]
!123 = metadata !{i32 786484, i32 0, null, metadata !"killer_scores2", metadata !"killer_scores2", metadata !"", metadata !26, i32 24, metadata !107, i32 0, i32 1, [300 x i32]* @killer_scores2, null} ; [ DW_TAG_variable ] [killer_scores2] [line 24] [def]
!124 = metadata !{i32 786484, i32 0, null, metadata !"killer_scores3", metadata !"killer_scores3", metadata !"", metadata !26, i32 24, metadata !107, i32 0, i32 1, [300 x i32]* @killer_scores3, null} ; [ DW_TAG_variable ] [killer_scores3] [line 24] [def]
!125 = metadata !{i32 786484, i32 0, null, metadata !"moves_to_tc", metadata !"moves_to_tc", metadata !"", metadata !26, i32 24, metadata !29, i32 0, i32 1, i32* @moves_to_tc, null} ; [ DW_TAG_variable ] [moves_to_tc] [line 24] [def]
!126 = metadata !{i32 786484, i32 0, null, metadata !"min_per_game", metadata !"min_per_game", metadata !"", metadata !26, i32 24, metadata !29, i32 0, i32 1, i32* @min_per_game, null} ; [ DW_TAG_variable ] [min_per_game] [line 24] [def]
!127 = metadata !{i32 786484, i32 0, null, metadata !"sec_per_game", metadata !"sec_per_game", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @sec_per_game, null} ; [ DW_TAG_variable ] [sec_per_game] [line 25] [def]
!128 = metadata !{i32 786484, i32 0, null, metadata !"inc", metadata !"inc", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @inc, null} ; [ DW_TAG_variable ] [inc] [line 25] [def]
!129 = metadata !{i32 786484, i32 0, null, metadata !"time_left", metadata !"time_left", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @time_left, null} ; [ DW_TAG_variable ] [time_left] [line 25] [def]
!130 = metadata !{i32 786484, i32 0, null, metadata !"opp_time", metadata !"opp_time", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @opp_time, null} ; [ DW_TAG_variable ] [opp_time] [line 25] [def]
!131 = metadata !{i32 786484, i32 0, null, metadata !"time_cushion", metadata !"time_cushion", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @time_cushion, null} ; [ DW_TAG_variable ] [time_cushion] [line 25] [def]
!132 = metadata !{i32 786484, i32 0, null, metadata !"time_for_move", metadata !"time_for_move", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @time_for_move, null} ; [ DW_TAG_variable ] [time_for_move] [line 25] [def]
!133 = metadata !{i32 786484, i32 0, null, metadata !"cur_score", metadata !"cur_score", metadata !"", metadata !26, i32 25, metadata !29, i32 0, i32 1, i32* @cur_score, null} ; [ DW_TAG_variable ] [cur_score] [line 25] [def]
!134 = metadata !{i32 786484, i32 0, null, metadata !"history_h", metadata !"history_h", metadata !"", metadata !26, i32 27, metadata !135, i32 0, i32 1, [144 x [144 x i32]]* @history_h, null} ; [ DW_TAG_variable ] [history_h] [line 27] [def]
!135 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 663552, i64 32, i32 0, i32 0, metadata !136, metadata !137, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 663552, align 32, offset 0] [from unsigned int]
!136 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!137 = metadata !{metadata !95, metadata !95}
!138 = metadata !{i32 786484, i32 0, null, metadata !"hash_history", metadata !"hash_history", metadata !"", metadata !26, i32 29, metadata !139, i32 0, i32 1, [600 x i32]* @hash_history, null} ; [ DW_TAG_variable ] [hash_history] [line 29] [def]
!139 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 32, i32 0, i32 0, metadata !136, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 32, offset 0] [from unsigned int]
!140 = metadata !{i32 786484, i32 0, null, metadata !"move_number", metadata !"move_number", metadata !"", metadata !26, i32 30, metadata !29, i32 0, i32 1, i32* @move_number, null} ; [ DW_TAG_variable ] [move_number] [line 30] [def]
!141 = metadata !{i32 786484, i32 0, null, metadata !"captures", metadata !"captures", metadata !"", metadata !26, i32 32, metadata !56, i32 0, i32 1, i32* @captures, null} ; [ DW_TAG_variable ] [captures] [line 32] [def]
!142 = metadata !{i32 786484, i32 0, null, metadata !"searching_pv", metadata !"searching_pv", metadata !"", metadata !26, i32 32, metadata !56, i32 0, i32 1, i32* @searching_pv, null} ; [ DW_TAG_variable ] [searching_pv] [line 32] [def]
!143 = metadata !{i32 786484, i32 0, null, metadata !"post", metadata !"post", metadata !"", metadata !26, i32 32, metadata !56, i32 0, i32 1, i32* @post, null} ; [ DW_TAG_variable ] [post] [line 32] [def]
!144 = metadata !{i32 786484, i32 0, null, metadata !"time_exit", metadata !"time_exit", metadata !"", metadata !26, i32 32, metadata !56, i32 0, i32 1, i32* @time_exit, null} ; [ DW_TAG_variable ] [time_exit] [line 32] [def]
!145 = metadata !{i32 786484, i32 0, null, metadata !"time_failure", metadata !"time_failure", metadata !"", metadata !26, i32 32, metadata !56, i32 0, i32 1, i32* @time_failure, null} ; [ DW_TAG_variable ] [time_failure] [line 32] [def]
!146 = metadata !{i32 786484, i32 0, null, metadata !"xb_mode", metadata !"xb_mode", metadata !"", metadata !26, i32 34, metadata !29, i32 0, i32 1, i32* @xb_mode, null} ; [ DW_TAG_variable ] [xb_mode] [line 34] [def]
!147 = metadata !{i32 786484, i32 0, null, metadata !"maxdepth", metadata !"maxdepth", metadata !"", metadata !26, i32 34, metadata !29, i32 0, i32 1, i32* @maxdepth, null} ; [ DW_TAG_variable ] [maxdepth] [line 34] [def]
!148 = metadata !{i32 786484, i32 0, null, metadata !"phase", metadata !"phase", metadata !"", metadata !26, i32 36, metadata !29, i32 0, i32 1, i32* @phase, null} ; [ DW_TAG_variable ] [phase] [line 36] [def]
!149 = metadata !{i32 786484, i32 0, null, metadata !"root_to_move", metadata !"root_to_move", metadata !"", metadata !26, i32 37, metadata !29, i32 0, i32 1, i32* @root_to_move, null} ; [ DW_TAG_variable ] [root_to_move] [line 37] [def]
!150 = metadata !{i32 786484, i32 0, null, metadata !"my_rating", metadata !"my_rating", metadata !"", metadata !26, i32 39, metadata !29, i32 0, i32 1, i32* @my_rating, null} ; [ DW_TAG_variable ] [my_rating] [line 39] [def]
!151 = metadata !{i32 786484, i32 0, null, metadata !"opp_rating", metadata !"opp_rating", metadata !"", metadata !26, i32 39, metadata !29, i32 0, i32 1, i32* @opp_rating, null} ; [ DW_TAG_variable ] [opp_rating] [line 39] [def]
!152 = metadata !{i32 786484, i32 0, null, metadata !"setcode", metadata !"setcode", metadata !"", metadata !26, i32 41, metadata !153, i32 0, i32 1, [30 x i8]* @setcode, null} ; [ DW_TAG_variable ] [setcode] [line 41] [def]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 240, i64 8, i32 0, i32 0, metadata !32, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 240, align 8, offset 0] [from char]
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786465, i64 0, i64 30}      ; [ DW_TAG_subrange_type ] [0, 29]
!156 = metadata !{i32 786484, i32 0, null, metadata !"pv", metadata !"pv", metadata !"", metadata !26, i32 43, metadata !157, i32 0, i32 1, [300 x [300 x %struct.move_s]]* @pv, null} ; [ DW_TAG_variable ] [pv] [line 43] [def]
!157 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 17280000, i64 32, i32 0, i32 0, metadata !44, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 17280000, align 32, offset 0] [from move_s]
!158 = metadata !{metadata !109, metadata !109}
!159 = metadata !{i32 786484, i32 0, null, metadata !"killer1", metadata !"killer1", metadata !"", metadata !26, i32 43, metadata !160, i32 0, i32 1, [300 x %struct.move_s]* @killer1, null} ; [ DW_TAG_variable ] [killer1] [line 43] [def]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 57600, i64 32, i32 0, i32 0, metadata !44, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 57600, align 32, offset 0] [from move_s]
!161 = metadata !{i32 786484, i32 0, null, metadata !"killer2", metadata !"killer2", metadata !"", metadata !26, i32 43, metadata !160, i32 0, i32 1, [300 x %struct.move_s]* @killer2, null} ; [ DW_TAG_variable ] [killer2] [line 43] [def]
!162 = metadata !{i32 786484, i32 0, null, metadata !"killer3", metadata !"killer3", metadata !"", metadata !26, i32 44, metadata !160, i32 0, i32 1, [300 x %struct.move_s]* @killer3, null} ; [ DW_TAG_variable ] [killer3] [line 44] [def]
!163 = metadata !{i32 786484, i32 0, null, metadata !"path_x", metadata !"path_x", metadata !"", metadata !26, i32 46, metadata !164, i32 0, i32 1, [300 x %struct.move_x]* @path_x, null} ; [ DW_TAG_variable ] [path_x] [line 46] [def]
!164 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 38400, i64 32, i32 0, i32 0, metadata !64, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 38400, align 32, offset 0] [from move_x]
!165 = metadata !{i32 786484, i32 0, null, metadata !"path", metadata !"path", metadata !"", metadata !26, i32 47, metadata !160, i32 0, i32 1, [300 x %struct.move_s]* @path, null} ; [ DW_TAG_variable ] [path] [line 47] [def]
!166 = metadata !{i32 786484, i32 0, null, metadata !"start_time", metadata !"start_time", metadata !"", metadata !26, i32 49, metadata !77, i32 0, i32 1, i64* @start_time, null} ; [ DW_TAG_variable ] [start_time] [line 49] [def]
!167 = metadata !{i32 786484, i32 0, null, metadata !"is_promoted", metadata !"is_promoted", metadata !"", metadata !26, i32 51, metadata !111, i32 0, i32 1, [62 x i32]* @is_promoted, null} ; [ DW_TAG_variable ] [is_promoted] [line 51] [def]
!168 = metadata !{i32 786484, i32 0, null, metadata !"NTries", metadata !"NTries", metadata !"", metadata !26, i32 53, metadata !136, i32 0, i32 1, i32* @NTries, null} ; [ DW_TAG_variable ] [NTries] [line 53] [def]
!169 = metadata !{i32 786484, i32 0, null, metadata !"NCuts", metadata !"NCuts", metadata !"", metadata !26, i32 53, metadata !136, i32 0, i32 1, i32* @NCuts, null} ; [ DW_TAG_variable ] [NCuts] [line 53] [def]
!170 = metadata !{i32 786484, i32 0, null, metadata !"TExt", metadata !"TExt", metadata !"", metadata !26, i32 53, metadata !136, i32 0, i32 1, i32* @TExt, null} ; [ DW_TAG_variable ] [TExt] [line 53] [def]
!171 = metadata !{i32 786484, i32 0, null, metadata !"PVS", metadata !"PVS", metadata !"", metadata !26, i32 54, metadata !136, i32 0, i32 1, i32* @PVS, null} ; [ DW_TAG_variable ] [PVS] [line 54] [def]
!172 = metadata !{i32 786484, i32 0, null, metadata !"FULL", metadata !"FULL", metadata !"", metadata !26, i32 54, metadata !136, i32 0, i32 1, i32* @FULL, null} ; [ DW_TAG_variable ] [FULL] [line 54] [def]
!173 = metadata !{i32 786484, i32 0, null, metadata !"PVSF", metadata !"PVSF", metadata !"", metadata !26, i32 54, metadata !136, i32 0, i32 1, i32* @PVSF, null} ; [ DW_TAG_variable ] [PVSF] [line 54] [def]
!174 = metadata !{i32 786484, i32 0, null, metadata !"ext_check", metadata !"ext_check", metadata !"", metadata !26, i32 55, metadata !136, i32 0, i32 1, i32* @ext_check, null} ; [ DW_TAG_variable ] [ext_check] [line 55] [def]
!175 = metadata !{i32 786484, i32 0, null, metadata !"is_pondering", metadata !"is_pondering", metadata !"", metadata !26, i32 57, metadata !56, i32 0, i32 1, i32* @is_pondering, null} ; [ DW_TAG_variable ] [is_pondering] [line 57] [def]
!176 = metadata !{i32 786484, i32 0, null, metadata !"allow_pondering", metadata !"allow_pondering", metadata !"", metadata !26, i32 57, metadata !56, i32 0, i32 1, i32* @allow_pondering, null} ; [ DW_TAG_variable ] [allow_pondering] [line 57] [def]
!177 = metadata !{i32 786484, i32 0, null, metadata !"is_analyzing", metadata !"is_analyzing", metadata !"", metadata !26, i32 57, metadata !56, i32 0, i32 1, i32* @is_analyzing, null} ; [ DW_TAG_variable ] [is_analyzing] [line 57] [def]
!178 = metadata !{i32 786484, i32 0, null, metadata !"bookidx", metadata !"bookidx", metadata !"", metadata !26, i32 59, metadata !136, i32 0, i32 1, i32* @bookidx, null} ; [ DW_TAG_variable ] [bookidx] [line 59] [def]
!179 = metadata !{i32 786484, i32 0, null, metadata !"Variant", metadata !"Variant", metadata !"", metadata !26, i32 61, metadata !29, i32 0, i32 1, i32* @Variant, null} ; [ DW_TAG_variable ] [Variant] [line 61] [def]
!180 = metadata !{i32 786484, i32 0, null, metadata !"Giveaway", metadata !"Giveaway", metadata !"", metadata !26, i32 62, metadata !29, i32 0, i32 1, i32* @Giveaway, null} ; [ DW_TAG_variable ] [Giveaway] [line 62] [def]
!181 = metadata !{i32 786484, i32 0, null, metadata !"my_partner", metadata !"my_partner", metadata !"", metadata !26, i32 64, metadata !37, i32 0, i32 1, [256 x i8]* @my_partner, null} ; [ DW_TAG_variable ] [my_partner] [line 64] [def]
!182 = metadata !{i32 786484, i32 0, null, metadata !"have_partner", metadata !"have_partner", metadata !"", metadata !26, i32 65, metadata !56, i32 0, i32 1, i32* @have_partner, null} ; [ DW_TAG_variable ] [have_partner] [line 65] [def]
!183 = metadata !{i32 786484, i32 0, null, metadata !"must_sit", metadata !"must_sit", metadata !"", metadata !26, i32 66, metadata !56, i32 0, i32 1, i32* @must_sit, null} ; [ DW_TAG_variable ] [must_sit] [line 66] [def]
!184 = metadata !{i32 786484, i32 0, null, metadata !"go_fast", metadata !"go_fast", metadata !"", metadata !26, i32 67, metadata !56, i32 0, i32 1, i32* @go_fast, null} ; [ DW_TAG_variable ] [go_fast] [line 67] [def]
!185 = metadata !{i32 786484, i32 0, null, metadata !"fixed_time", metadata !"fixed_time", metadata !"", metadata !26, i32 69, metadata !29, i32 0, i32 1, i32* @fixed_time, null} ; [ DW_TAG_variable ] [fixed_time] [line 69] [def]
!186 = metadata !{i32 786484, i32 0, null, metadata !"book_ply", metadata !"book_ply", metadata !"", metadata !26, i32 71, metadata !29, i32 0, i32 1, i32* @book_ply, null} ; [ DW_TAG_variable ] [book_ply] [line 71] [def]
!187 = metadata !{i32 786484, i32 0, null, metadata !"use_book", metadata !"use_book", metadata !"", metadata !26, i32 72, metadata !29, i32 0, i32 1, i32* @use_book, null} ; [ DW_TAG_variable ] [use_book] [line 72] [def]
!188 = metadata !{i32 786484, i32 0, null, metadata !"opening_history", metadata !"opening_history", metadata !"", metadata !26, i32 73, metadata !37, i32 0, i32 1, [256 x i8]* @opening_history, null} ; [ DW_TAG_variable ] [opening_history] [line 73] [def]
!189 = metadata !{i32 75, i32 0, metadata !25, null}
!190 = metadata !{i32 77, i32 0, metadata !25, null}
!191 = metadata !{i32 78, i32 0, metadata !25, null}
!192 = metadata !{i32 79, i32 0, metadata !25, null}
!193 = metadata !{i32 80, i32 0, metadata !25, null}
!194 = metadata !{i32 4}
!195 = metadata !{metadata !"int", metadata !196}
!196 = metadata !{metadata !"omnipotent char", metadata !197}
!197 = metadata !{metadata !"Simple C/C++ TBAA"}
!198 = metadata !{i32 81, i32 0, metadata !25, null}
!199 = metadata !{i32 82, i32 0, metadata !25, null}
!200 = metadata !{i32 83, i32 0, metadata !25, null}
!201 = metadata !{i32 85, i32 0, metadata !25, null}
!202 = metadata !{i32 90, i32 0, metadata !25, null}
!203 = metadata !{i32 91, i32 0, metadata !25, null}
!204 = metadata !{i32 93, i32 0, metadata !25, null}
!205 = metadata !{i32 96, i32 0, metadata !25, null}
!206 = metadata !{i32 99, i32 0, metadata !25, null}
!207 = metadata !{i32 101, i32 0, metadata !25, null}
!208 = metadata !{i32 102, i32 0, metadata !25, null}
!209 = metadata !{i32 103, i32 0, metadata !25, null}
!210 = metadata !{i32 105, i32 0, metadata !25, null}
!211 = metadata !{i32 106, i32 0, metadata !25, null}
!212 = metadata !{i32 107, i32 0, metadata !25, null}
!213 = metadata !{i32 108, i32 0, metadata !25, null}
!214 = metadata !{i32 109, i32 0, metadata !25, null}
!215 = metadata !{i32 110, i32 0, metadata !25, null}
!216 = metadata !{i32 111, i32 0, metadata !25, null}
!217 = metadata !{i32 112, i32 0, metadata !25, null}
!218 = metadata !{i32 113, i32 0, metadata !25, null}
!219 = metadata !{i32 114, i32 0, metadata !25, null}
!220 = metadata !{i32 115, i32 0, metadata !25, null}
!221 = metadata !{i32 116, i32 0, metadata !25, null}
!222 = metadata !{i32 117, i32 0, metadata !25, null}
!223 = metadata !{i32 118, i32 0, metadata !25, null}
!224 = metadata !{i32 119, i32 0, metadata !25, null}
!225 = metadata !{i32 120, i32 0, metadata !25, null}
!226 = metadata !{i32 121, i32 0, metadata !25, null}
!227 = metadata !{i32 122, i32 0, metadata !25, null}
!228 = metadata !{i32 124, i32 0, metadata !25, null}
!229 = metadata !{i32 125, i32 0, metadata !25, null}
!230 = metadata !{i32 126, i32 0, metadata !25, null}
!231 = metadata !{i32 127, i32 0, metadata !25, null}
!232 = metadata !{i32 1}
!233 = metadata !{i32 128, i32 0, metadata !25, null}
!234 = metadata !{i32 129, i32 0, metadata !25, null}
!235 = metadata !{i32 130, i32 0, metadata !25, null}
!236 = metadata !{i32 131, i32 0, metadata !25, null}
!237 = metadata !{i32 132, i32 0, metadata !25, null}
!238 = metadata !{i32 133, i32 0, metadata !25, null}
!239 = metadata !{i32 134, i32 0, metadata !25, null}
!240 = metadata !{i32 135, i32 0, metadata !25, null}
!241 = metadata !{i32 136, i32 0, metadata !25, null}
!242 = metadata !{i32 137, i32 0, metadata !25, null}
!243 = metadata !{i32 138, i32 0, metadata !25, null}
!244 = metadata !{i32 139, i32 0, metadata !25, null}
!245 = metadata !{i32 141, i32 0, metadata !25, null}
!246 = metadata !{i32 142, i32 0, metadata !25, null}
!247 = metadata !{i32 143, i32 0, metadata !25, null}
!248 = metadata !{i32 145, i32 0, metadata !25, null}
!249 = metadata !{i32 147, i32 0, metadata !25, null}
!250 = metadata !{metadata !"any pointer", metadata !196}
!251 = metadata !{i32 148, i32 0, metadata !25, null}
!252 = metadata !{i32 149, i32 0, metadata !25, null}
!253 = metadata !{i32 152, i32 0, metadata !25, null}
!254 = metadata !{i32 154, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !25, i32 153, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!256 = metadata !{i32 155, i32 0, metadata !255, null}
!257 = metadata !{i32 156, i32 0, metadata !255, null}
!258 = metadata !{i32 413, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !84, i32 412, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!260 = metadata !{i32 536, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !84, i32 535, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!262 = metadata !{i32 561, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !84, i32 560, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!264 = metadata !{i32 668, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !84, i32 667, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!266 = metadata !{i32 677, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !84, i32 676, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!268 = metadata !{i32 719, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !84, i32 718, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!270 = metadata !{i32 351, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !272, i32 349, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!272 = metadata !{i32 786443, metadata !1, metadata !85, i32 348, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!273 = metadata !{i32 168, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !85, i32 163, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!275 = metadata !{i32 162, i32 0, metadata !85, null}
!276 = metadata !{i32 166, i32 0, metadata !274, null}
!277 = metadata !{i64 0, i64 4, metadata !195, i64 4, i64 4, metadata !195, i64 8, i64 4, metadata !195, i64 12, i64 4, metadata !195, i64 16, i64 4, metadata !195, i64 20, i64 4, metadata !195}
!278 = metadata !{i32 170, i32 0, metadata !274, null}
!279 = metadata !{i32 173, i32 0, metadata !274, null}
!280 = metadata !{i32 176, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !274, i32 174, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!282 = metadata !{i32 191, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 189, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!284 = metadata !{i32 193, i32 0, metadata !283, null}
!285 = metadata !{i32 195, i32 0, metadata !283, null}
!286 = metadata !{i32 196, i32 0, metadata !283, null}
!287 = metadata !{i32 199, i32 0, metadata !283, null}
!288 = metadata !{i64 0, i64 4, metadata !195, i64 4, i64 4, metadata !195, i64 8, i64 4, metadata !195, i64 12, i64 4, metadata !195}
!289 = metadata !{i32 201, i32 0, metadata !283, null}
!290 = metadata !{i32 202, i32 0, metadata !283, null}
!291 = metadata !{i32 205, i32 0, metadata !283, null}
!292 = metadata !{i32 206, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !283, i32 205, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!294 = metadata !{i32 207, i32 0, metadata !293, null}
!295 = metadata !{i32 208, i32 0, metadata !283, null}
!296 = metadata !{i32 209, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !283, i32 208, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!298 = metadata !{i32 210, i32 0, metadata !297, null}
!299 = metadata !{i32 212, i32 0, metadata !283, null}
!300 = metadata !{i32 214, i32 0, metadata !283, null}
!301 = metadata !{i32 216, i32 0, metadata !283, null}
!302 = metadata !{i32 217, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !283, i32 216, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!304 = metadata !{i32 218, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !303, i32 217, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!306 = metadata !{i32 219, i32 0, metadata !305, null}
!307 = metadata !{i32 221, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !303, i32 220, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!309 = metadata !{i32 225, i32 0, metadata !283, null}
!310 = metadata !{i32 227, i32 0, metadata !283, null}
!311 = metadata !{i32 230, i32 0, metadata !283, null}
!312 = metadata !{i32 234, i32 0, metadata !283, null}
!313 = metadata !{i32 238, i32 0, metadata !283, null}
!314 = metadata !{i32 241, i32 0, metadata !283, null}
!315 = metadata !{i32 243, i32 0, metadata !283, null}
!316 = metadata !{i32 245, i32 0, metadata !283, null}
!317 = metadata !{i32 246, i32 0, metadata !283, null}
!318 = metadata !{i32 248, i32 0, metadata !283, null}
!319 = metadata !{i32 251, i32 0, metadata !283, null}
!320 = metadata !{i32 269, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !283, i32 268, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!322 = metadata !{i32 270, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !321, i32 269, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!324 = metadata !{i32 255, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !326, i32 252, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!326 = metadata !{i32 786443, metadata !1, metadata !283, i32 251, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!327 = metadata !{i32 252, i32 0, metadata !326, null}
!328 = metadata !{i32 256, i32 0, metadata !325, null}
!329 = metadata !{i32 258, i32 0, metadata !325, null}
!330 = metadata !{i32 260, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !325, i32 259, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!332 = metadata !{i32 261, i32 0, metadata !331, null}
!333 = metadata !{i32 264, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !326, i32 263, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!335 = metadata !{i32 265, i32 0, metadata !334, null}
!336 = metadata !{i32 271, i32 0, metadata !323, null}
!337 = metadata !{i32 274, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !321, i32 273, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!339 = metadata !{i32 275, i32 0, metadata !338, null}
!340 = metadata !{i32 277, i32 0, metadata !321, null}
!341 = metadata !{i32 278, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !321, i32 277, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!343 = metadata !{i32 279, i32 0, metadata !342, null}
!344 = metadata !{i32 281, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !321, i32 280, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!346 = metadata !{i32 282, i32 0, metadata !345, null}
!347 = metadata !{i32 284, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !321, i32 283, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!349 = metadata !{i32 285, i32 0, metadata !348, null}
!350 = metadata !{i32 287, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !321, i32 286, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!352 = metadata !{i32 288, i32 0, metadata !351, null}
!353 = metadata !{i32 290, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !321, i32 289, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!355 = metadata !{i32 297, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !281, i32 296, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!357 = metadata !{i32 298, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 297, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!359 = metadata !{i32 299, i32 0, metadata !358, null}
!360 = metadata !{i32 301, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !356, i32 300, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!362 = metadata !{i32 302, i32 0, metadata !361, null}
!363 = metadata !{i32 304, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !356, i32 303, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!365 = metadata !{i32 305, i32 0, metadata !364, null}
!366 = metadata !{i32 307, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !356, i32 306, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!368 = metadata !{i32 308, i32 0, metadata !367, null}
!369 = metadata !{i32 310, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !356, i32 309, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!371 = metadata !{i32 318, i32 0, metadata !85, null}
!372 = metadata !{i32 319, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !85, i32 318, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!374 = metadata !{i32 320, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !373, i32 319, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!376 = metadata !{i32 321, i32 0, metadata !375, null}
!377 = metadata !{i32 322, i32 0, metadata !375, null}
!378 = metadata !{i32 323, i32 0, metadata !373, null}
!379 = metadata !{i32 325, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !373, i32 324, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!381 = metadata !{i32 326, i32 0, metadata !380, null}
!382 = metadata !{i32 327, i32 0, metadata !380, null}
!383 = metadata !{i32 332, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !85, i32 329, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!385 = metadata !{i32 335, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !384, i32 334, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!387 = metadata !{i32 336, i32 0, metadata !386, null}
!388 = metadata !{i32 337, i32 0, metadata !386, null}
!389 = metadata !{i32 339, i32 0, metadata !386, null}
!390 = metadata !{i32 340, i32 0, metadata !386, null}
!391 = metadata !{i32 341, i32 0, metadata !384, null}
!392 = metadata !{i32 343, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !384, i32 342, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!394 = metadata !{i32 344, i32 0, metadata !393, null}
!395 = metadata !{i32 348, i32 0, metadata !85, null}
!396 = metadata !{i32 349, i32 0, metadata !272, null}
!397 = metadata !{i32 352, i32 0, metadata !271, null}
!398 = metadata !{i32 354, i32 0, metadata !271, null}
!399 = metadata !{i32 355, i32 0, metadata !271, null}
!400 = metadata !{i32 357, i32 0, metadata !271, null}
!401 = metadata !{i32 359, i32 0, metadata !271, null}
!402 = metadata !{i32 361, i32 0, metadata !271, null}
!403 = metadata !{i32 362, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !271, i32 361, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!405 = metadata !{i32 363, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 362, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!407 = metadata !{i32 364, i32 0, metadata !406, null}
!408 = metadata !{i32 366, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !404, i32 365, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!410 = metadata !{i32 370, i32 0, metadata !271, null}
!411 = metadata !{i32 372, i32 0, metadata !271, null}
!412 = metadata !{i32 373, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !271, i32 372, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!414 = metadata !{i32 374, i32 0, metadata !413, null}
!415 = metadata !{i32 375, i32 0, metadata !413, null}
!416 = metadata !{i32 378, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !272, i32 377, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!418 = metadata !{i32 385, i32 0, metadata !84, null}
!419 = metadata !{i32 386, i32 0, metadata !83, null}
!420 = metadata !{i32 386, i32 0, metadata !82, null}
!421 = metadata !{i32 389, i32 0, metadata !84, null}
!422 = metadata !{i32 390, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !84, i32 389, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!424 = metadata !{i32 391, i32 0, metadata !423, null}
!425 = metadata !{i32 392, i32 0, metadata !423, null}
!426 = metadata !{i32 394, i32 0, metadata !84, null}
!427 = metadata !{i32 396, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !84, i32 395, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!429 = metadata !{i32 398, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 397, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!431 = metadata !{i32 399, i32 0, metadata !430, null}
!432 = metadata !{i32 400, i32 0, metadata !430, null}
!433 = metadata !{i32 408, i32 0, metadata !428, null}
!434 = metadata !{i32 404, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !428, i32 403, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!436 = metadata !{i32 405, i32 0, metadata !435, null}
!437 = metadata !{i32 406, i32 0, metadata !435, null}
!438 = metadata !{i32 409, i32 0, metadata !84, null}
!439 = metadata !{i32 410, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !84, i32 409, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!441 = metadata !{i32 411, i32 0, metadata !440, null}
!442 = metadata !{i32 412, i32 0, metadata !84, null}
!443 = metadata !{i32 414, i32 0, metadata !259, null}
!444 = metadata !{i32 415, i32 0, metadata !259, null}
!445 = metadata !{i32 416, i32 0, metadata !259, null}
!446 = metadata !{i32 417, i32 0, metadata !259, null}
!447 = metadata !{i32 418, i32 0, metadata !259, null}
!448 = metadata !{i32 419, i32 0, metadata !259, null}
!449 = metadata !{i32 420, i32 0, metadata !84, null}
!450 = metadata !{i32 422, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !84, i32 420, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!452 = metadata !{i32 424, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !451, i32 423, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!454 = metadata !{i32 425, i32 0, metadata !453, null}
!455 = metadata !{i32 427, i32 0, metadata !451, null}
!456 = metadata !{i32 429, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !451, i32 428, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!458 = metadata !{i32 430, i32 0, metadata !457, null}
!459 = metadata !{i32 435, i32 0, metadata !457, null}
!460 = metadata !{i32 436, i32 0, metadata !457, null}
!461 = metadata !{i32 438, i32 0, metadata !457, null}
!462 = metadata !{i32 440, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !457, i32 439, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!464 = metadata !{i32 441, i32 0, metadata !463, null}
!465 = metadata !{i32 442, i32 0, metadata !463, null}
!466 = metadata !{i32 444, i32 0, metadata !457, null}
!467 = metadata !{i32 445, i32 0, metadata !457, null}
!468 = metadata !{i32 446, i32 0, metadata !457, null}
!469 = metadata !{i32 447, i32 0, metadata !457, null}
!470 = metadata !{i32 448, i32 0, metadata !457, null}
!471 = metadata !{i32 449, i32 0, metadata !457, null}
!472 = metadata !{i32 450, i32 0, metadata !457, null}
!473 = metadata !{i32 452, i32 0, metadata !457, null}
!474 = metadata !{i32 454, i32 0, metadata !457, null}
!475 = metadata !{i32 455, i32 0, metadata !457, null}
!476 = metadata !{i32 456, i32 0, metadata !457, null}
!477 = metadata !{i32 457, i32 0, metadata !457, null}
!478 = metadata !{i32 458, i32 0, metadata !457, null}
!479 = metadata !{i32 459, i32 0, metadata !457, null}
!480 = metadata !{i32 460, i32 0, metadata !457, null}
!481 = metadata !{i32 461, i32 0, metadata !457, null}
!482 = metadata !{i32 463, i32 0, metadata !457, null}
!483 = metadata !{i32 464, i32 0, metadata !457, null}
!484 = metadata !{i32 465, i32 0, metadata !457, null}
!485 = metadata !{i32 468, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !451, i32 467, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!487 = metadata !{i32 469, i32 0, metadata !486, null}
!488 = metadata !{i32 473, i32 0, metadata !84, null}
!489 = metadata !{i32 474, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !84, i32 473, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!491 = metadata !{i32 475, i32 0, metadata !490, null}
!492 = metadata !{i32 476, i32 0, metadata !490, null}
!493 = metadata !{i32 477, i32 0, metadata !490, null}
!494 = metadata !{i32 480, i32 0, metadata !490, null}
!495 = metadata !{i32 482, i32 0, metadata !490, null}
!496 = metadata !{i32 483, i32 0, metadata !490, null}
!497 = metadata !{i32 484, i32 0, metadata !84, null}
!498 = metadata !{i32 485, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !84, i32 484, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!500 = metadata !{i32 487, i32 0, metadata !499, null}
!501 = metadata !{i32 488, i32 0, metadata !84, null}
!502 = metadata !{i32 489, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !84, i32 488, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!504 = metadata !{i32 490, i32 0, metadata !503, null}
!505 = metadata !{i32 491, i32 0, metadata !503, null}
!506 = metadata !{i32 493, i32 0, metadata !84, null}
!507 = metadata !{i32 494, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !84, i32 493, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!509 = metadata !{i32 495, i32 0, metadata !508, null}
!510 = metadata !{i32 496, i32 0, metadata !84, null}
!511 = metadata !{i32 499, i32 0, metadata !84, null}
!512 = metadata !{i32 501, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !84, i32 499, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!514 = metadata !{i32 503, i32 0, metadata !513, null}
!515 = metadata !{i32 505, i32 0, metadata !84, null}
!516 = metadata !{i32 507, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !84, i32 505, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!518 = metadata !{i32 509, i32 0, metadata !517, null}
!519 = metadata !{i32 511, i32 0, metadata !84, null}
!520 = metadata !{i32 514, i32 0, metadata !84, null}
!521 = metadata !{i32 515, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !84, i32 514, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!523 = metadata !{i32 516, i32 0, metadata !522, null}
!524 = metadata !{i32 517, i32 0, metadata !522, null}
!525 = metadata !{i32 518, i32 0, metadata !522, null}
!526 = metadata !{i32 519, i32 0, metadata !84, null}
!527 = metadata !{i32 520, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !84, i32 519, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!529 = metadata !{i32 521, i32 0, metadata !528, null}
!530 = metadata !{i32 522, i32 0, metadata !528, null}
!531 = metadata !{i32 523, i32 0, metadata !528, null}
!532 = metadata !{i32 524, i32 0, metadata !84, null}
!533 = metadata !{i32 527, i32 0, metadata !84, null}
!534 = metadata !{i32 528, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !84, i32 527, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!536 = metadata !{i32 529, i32 0, metadata !535, null}
!537 = metadata !{i32 530, i32 0, metadata !535, null}
!538 = metadata !{i32 531, i32 0, metadata !84, null}
!539 = metadata !{i32 532, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !84, i32 531, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!541 = metadata !{i32 533, i32 0, metadata !540, null}
!542 = metadata !{i32 534, i32 0, metadata !540, null}
!543 = metadata !{i32 535, i32 0, metadata !84, null}
!544 = metadata !{i32 537, i32 0, metadata !261, null}
!545 = metadata !{i32 538, i32 0, metadata !84, null}
!546 = metadata !{i32 539, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !84, i32 538, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!548 = metadata !{i32 540, i32 0, metadata !547, null}
!549 = metadata !{i32 541, i32 0, metadata !84, null}
!550 = metadata !{i32 542, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !84, i32 541, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!552 = metadata !{i32 545, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !551, i32 543, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!554 = metadata !{i32 547, i32 0, metadata !553, null}
!555 = metadata !{i32 549, i32 0, metadata !553, null}
!556 = metadata !{i32 553, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !551, i32 551, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!558 = metadata !{i32 554, i32 0, metadata !557, null}
!559 = metadata !{i32 548, i32 0, metadata !553, null}
!560 = metadata !{i32 557, i32 0, metadata !551, null}
!561 = metadata !{i32 558, i32 0, metadata !551, null}
!562 = metadata !{i32 559, i32 0, metadata !551, null}
!563 = metadata !{i32 560, i32 0, metadata !84, null}
!564 = metadata !{i32 562, i32 0, metadata !263, null}
!565 = metadata !{i32 563, i32 0, metadata !263, null}
!566 = metadata !{i32 565, i32 0, metadata !84, null}
!567 = metadata !{i32 566, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !84, i32 565, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!569 = metadata !{i32 567, i32 0, metadata !568, null}
!570 = metadata !{i32 568, i32 0, metadata !84, null}
!571 = metadata !{i32 569, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !84, i32 568, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!573 = metadata !{i32 571, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !572, i32 570, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!575 = metadata !{i32 572, i32 0, metadata !574, null}
!576 = metadata !{i32 573, i32 0, metadata !574, null}
!577 = metadata !{i32 574, i32 0, metadata !572, null}
!578 = metadata !{i32 576, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !572, i32 575, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!580 = metadata !{i32 577, i32 0, metadata !579, null}
!581 = metadata !{i32 578, i32 0, metadata !579, null}
!582 = metadata !{i32 579, i32 0, metadata !572, null}
!583 = metadata !{i32 581, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !572, i32 580, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!585 = metadata !{i32 582, i32 0, metadata !584, null}
!586 = metadata !{i32 583, i32 0, metadata !584, null}
!587 = metadata !{i32 584, i32 0, metadata !572, null}
!588 = metadata !{i32 586, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !572, i32 585, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!590 = metadata !{i32 587, i32 0, metadata !589, null}
!591 = metadata !{i32 588, i32 0, metadata !589, null}
!592 = metadata !{i32 589, i32 0, metadata !589, null}
!593 = metadata !{i32 590, i32 0, metadata !572, null}
!594 = metadata !{i32 592, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !572, i32 591, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!596 = metadata !{i32 593, i32 0, metadata !595, null}
!597 = metadata !{i32 594, i32 0, metadata !595, null}
!598 = metadata !{i32 595, i32 0, metadata !595, null}
!599 = metadata !{i32 596, i32 0, metadata !572, null}
!600 = metadata !{i32 598, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !572, i32 597, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!602 = metadata !{i32 599, i32 0, metadata !601, null}
!603 = metadata !{i32 600, i32 0, metadata !601, null}
!604 = metadata !{i32 602, i32 0, metadata !572, null}
!605 = metadata !{i32 603, i32 0, metadata !572, null}
!606 = metadata !{i32 604, i32 0, metadata !572, null}
!607 = metadata !{i32 606, i32 0, metadata !572, null}
!608 = metadata !{i32 607, i32 0, metadata !84, null}
!609 = metadata !{i32 608, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !84, i32 607, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!611 = metadata !{i32 609, i32 0, metadata !610, null}
!612 = metadata !{i32 610, i32 0, metadata !610, null}
!613 = metadata !{i32 611, i32 0, metadata !610, null}
!614 = metadata !{i32 612, i32 0, metadata !610, null}
!615 = metadata !{i32 613, i32 0, metadata !84, null}
!616 = metadata !{i32 614, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !1, metadata !84, i32 613, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!618 = metadata !{i32 615, i32 0, metadata !617, null}
!619 = metadata !{i32 617, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !617, i32 616, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!621 = metadata !{i32 618, i32 0, metadata !620, null}
!622 = metadata !{i32 619, i32 0, metadata !620, null}
!623 = metadata !{i32 620, i32 0, metadata !620, null}
!624 = metadata !{i32 621, i32 0, metadata !620, null}
!625 = metadata !{i32 623, i32 0, metadata !84, null}
!626 = metadata !{i32 624, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !84, i32 623, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!628 = metadata !{i32 626, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !627, i32 625, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!630 = metadata !{i32 627, i32 0, metadata !629, null}
!631 = metadata !{i32 628, i32 0, metadata !629, null}
!632 = metadata !{i32 630, i32 0, metadata !629, null}
!633 = metadata !{i32 631, i32 0, metadata !629, null}
!634 = metadata !{i32 632, i32 0, metadata !629, null}
!635 = metadata !{i32 633, i32 0, metadata !629, null}
!636 = metadata !{i32 635, i32 0, metadata !84, null}
!637 = metadata !{i32 639, i32 0, metadata !84, null}
!638 = metadata !{i32 640, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !84, i32 639, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!640 = metadata !{i32 641, i32 0, metadata !639, null}
!641 = metadata !{i32 642, i32 0, metadata !639, null}
!642 = metadata !{i32 643, i32 0, metadata !639, null}
!643 = metadata !{i32 644, i32 0, metadata !639, null}
!644 = metadata !{i32 645, i32 0, metadata !639, null}
!645 = metadata !{i32 646, i32 0, metadata !639, null}
!646 = metadata !{i32 647, i32 0, metadata !639, null}
!647 = metadata !{i32 648, i32 0, metadata !639, null}
!648 = metadata !{i32 649, i32 0, metadata !639, null}
!649 = metadata !{i32 650, i32 0, metadata !639, null}
!650 = metadata !{i32 651, i32 0, metadata !84, null}
!651 = metadata !{i32 652, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !84, i32 651, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!653 = metadata !{i32 655, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !84, i32 654, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!655 = metadata !{i32 656, i32 0, metadata !654, null}
!656 = metadata !{i32 657, i32 0, metadata !654, null}
!657 = metadata !{i32 658, i32 0, metadata !84, null}
!658 = metadata !{i32 659, i32 0, metadata !84, null}
!659 = metadata !{metadata !"short", metadata !196}
!660 = metadata !{i32 660, i32 0, metadata !84, null}
!661 = metadata !{i32 661, i32 0, metadata !84, null}
!662 = metadata !{i32 662, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !84, i32 661, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!664 = metadata !{i32 663, i32 0, metadata !663, null}
!665 = metadata !{i32 664, i32 0, metadata !84, null}
!666 = metadata !{i32 665, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !84, i32 664, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!668 = metadata !{i32 666, i32 0, metadata !667, null}
!669 = metadata !{i32 667, i32 0, metadata !84, null}
!670 = metadata !{i32 669, i32 0, metadata !265, null}
!671 = metadata !{i32 670, i32 0, metadata !84, null}
!672 = metadata !{i32 671, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !84, i32 670, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!674 = metadata !{i32 672, i32 0, metadata !673, null}
!675 = metadata !{i32 673, i32 0, metadata !84, null}
!676 = metadata !{i32 674, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !84, i32 673, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!678 = metadata !{i32 675, i32 0, metadata !677, null}
!679 = metadata !{i32 676, i32 0, metadata !84, null}
!680 = metadata !{i32 678, i32 0, metadata !267, null}
!681 = metadata !{i32 679, i32 0, metadata !267, null}
!682 = metadata !{i32 680, i32 0, metadata !84, null}
!683 = metadata !{i32 682, i32 0, metadata !84, null}
!684 = metadata !{i32 683, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !84, i32 682, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!686 = metadata !{i32 684, i32 0, metadata !685, null}
!687 = metadata !{metadata !"long", metadata !196}
!688 = metadata !{i32 685, i32 0, metadata !685, null}
!689 = metadata !{i32 686, i32 0, metadata !685, null}
!690 = metadata !{i32 687, i32 0, metadata !685, null}
!691 = metadata !{i32 688, i32 0, metadata !685, null}
!692 = metadata !{i32 689, i32 0, metadata !685, null}
!693 = metadata !{i32 690, i32 0, metadata !84, null}
!694 = metadata !{i32 691, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !84, i32 690, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!696 = metadata !{i32 692, i32 0, metadata !695, null}
!697 = metadata !{i32 693, i32 0, metadata !695, null}
!698 = metadata !{i32 694, i32 0, metadata !84, null}
!699 = metadata !{i32 697, i32 0, metadata !84, null}
!700 = metadata !{i32 699, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !84, i32 697, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!702 = metadata !{i32 700, i32 0, metadata !701, null}
!703 = metadata !{i32 702, i32 0, metadata !701, null}
!704 = metadata !{i32 703, i32 0, metadata !701, null}
!705 = metadata !{i32 705, i32 0, metadata !701, null}
!706 = metadata !{i32 706, i32 0, metadata !701, null}
!707 = metadata !{i32 708, i32 0, metadata !701, null}
!708 = metadata !{i32 709, i32 0, metadata !701, null}
!709 = metadata !{i32 711, i32 0, metadata !701, null}
!710 = metadata !{i32 713, i32 0, metadata !701, null}
!711 = metadata !{i32 714, i32 0, metadata !701, null}
!712 = metadata !{i32 715, i32 0, metadata !701, null}
!713 = metadata !{i32 716, i32 0, metadata !701, null}
!714 = metadata !{i32 717, i32 0, metadata !701, null}
!715 = metadata !{i32 718, i32 0, metadata !84, null}
!716 = metadata !{i32 720, i32 0, metadata !269, null}
!717 = metadata !{i32 721, i32 0, metadata !84, null}
!718 = metadata !{i32 726, i32 0, metadata !84, null}
!719 = metadata !{i32 727, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !84, i32 726, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!721 = metadata !{i32 728, i32 0, metadata !720, null}
!722 = metadata !{i32 729, i32 0, metadata !720, null}
!723 = metadata !{i32 731, i32 0, metadata !84, null}
!724 = metadata !{i32 735, i32 0, metadata !84, null}
!725 = metadata !{i32 736, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !84, i32 735, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!727 = metadata !{i32 737, i32 0, metadata !726, null}
!728 = metadata !{i32 738, i32 0, metadata !726, null}
!729 = metadata !{i32 739, i32 0, metadata !726, null}
!730 = metadata !{i32 740, i32 0, metadata !726, null}
!731 = metadata !{i32 741, i32 0, metadata !726, null}
!732 = metadata !{i32 742, i32 0, metadata !726, null}
!733 = metadata !{i32 743, i32 0, metadata !84, null}
!734 = metadata !{i32 746, i32 0, metadata !84, null}
!735 = metadata !{i32 747, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !84, i32 746, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!737 = metadata !{i32 748, i32 0, metadata !736, null}
!738 = metadata !{i32 749, i32 0, metadata !84, null}
!739 = metadata !{i32 750, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !84, i32 749, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!741 = metadata !{i32 751, i32 0, metadata !740, null}
!742 = metadata !{i32 752, i32 0, metadata !740, null}
!743 = metadata !{i32 753, i32 0, metadata !740, null}
!744 = metadata !{i32 754, i32 0, metadata !740, null}
!745 = metadata !{i32 755, i32 0, metadata !740, null}
!746 = metadata !{i32 756, i32 0, metadata !740, null}
!747 = metadata !{i32 757, i32 0, metadata !740, null}
!748 = metadata !{i32 758, i32 0, metadata !740, null}
!749 = metadata !{i32 759, i32 0, metadata !740, null}
!750 = metadata !{i32 760, i32 0, metadata !740, null}
!751 = metadata !{i32 761, i32 0, metadata !740, null}
!752 = metadata !{i32 762, i32 0, metadata !740, null}
!753 = metadata !{i32 763, i32 0, metadata !740, null}
!754 = metadata !{i32 764, i32 0, metadata !740, null}
!755 = metadata !{i32 765, i32 0, metadata !740, null}
!756 = metadata !{i32 766, i32 0, metadata !740, null}
!757 = metadata !{i32 767, i32 0, metadata !740, null}
!758 = metadata !{i32 768, i32 0, metadata !740, null}
!759 = metadata !{i32 769, i32 0, metadata !740, null}
!760 = metadata !{i32 770, i32 0, metadata !740, null}
!761 = metadata !{i32 771, i32 0, metadata !740, null}
!762 = metadata !{i32 772, i32 0, metadata !740, null}
!763 = metadata !{i32 773, i32 0, metadata !740, null}
!764 = metadata !{i32 774, i32 0, metadata !740, null}
!765 = metadata !{i32 776, i32 0, metadata !740, null}
!766 = metadata !{i32 777, i32 0, metadata !740, null}
!767 = metadata !{i32 778, i32 0, metadata !84, null}
!768 = metadata !{i32 779, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !84, i32 778, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.c]
!770 = metadata !{i32 780, i32 0, metadata !769, null}
