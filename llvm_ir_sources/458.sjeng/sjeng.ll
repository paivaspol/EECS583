; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.move_x = type { i32, i32, i32, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

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
@__stdoutp = external global %struct.__sFILE*
@__stdinp = external global %struct.__sFILE*
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
@_DefaultRuneLocale = external global %struct._RuneLocale
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

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
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
  %1 = alloca %struct.move_s, align 4
  %2 = alloca %struct.move_s, align 4
  %3 = alloca %struct.move_s, align 4
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !22, metadata !208), !dbg !209
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !23, metadata !208), !dbg !210
  %4 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0, !dbg !211
  call void @llvm.lifetime.start(i64 256, i8* %4) #2, !dbg !211
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %input, metadata !24, metadata !208), !dbg !212
  %5 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !211
  call void @llvm.lifetime.start(i64 256, i8* %5) #2, !dbg !211
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %output, metadata !29, metadata !208), !dbg !213
  %6 = getelementptr inbounds [256 x i8]* %readbuff, i64 0, i64 0, !dbg !214
  call void @llvm.lifetime.start(i64 256, i8* %6) #2, !dbg !214
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %readbuff, metadata !30, metadata !208), !dbg !215
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !42, metadata !208), !dbg !216
  store i32 4, i32* %depth, align 4, !dbg !216, !tbaa !217
  %7 = bitcast [600 x %struct.move_s]* %game_history to i8*, !dbg !221
  call void @llvm.lifetime.start(i64 14400, i8* %7) #2, !dbg !221
  tail call void @llvm.dbg.declare(metadata [600 x %struct.move_s]* %game_history, metadata !46, metadata !208), !dbg !222
  %8 = bitcast [600 x %struct.move_x]* %game_history_x to i8*, !dbg !223
  call void @llvm.lifetime.start(i64 9600, i8* %8) #2, !dbg !223
  tail call void @llvm.dbg.declare(metadata [600 x %struct.move_x]* %game_history_x, metadata !50, metadata !208), !dbg !224
  tail call void @read_rcfile() #8, !dbg !225
  tail call void @initialize_zobrist() #8, !dbg !226
  store i32 2, i32* @Variant, align 4, !dbg !227, !tbaa !217
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !228
  tail call void @init_game() #8, !dbg !229
  tail call void @initialize_hash() #8, !dbg !230
  tail call void @clear_tt() #8, !dbg !231
  tail call void @reset_ecache() #8, !dbg !232
  store i32 0, i32* @ECacheProbes, align 4, !dbg !233, !tbaa !217
  store i32 0, i32* @ECacheHits, align 4, !dbg !234, !tbaa !217
  store i32 0, i32* @TTProbes, align 4, !dbg !235, !tbaa !217
  store i32 0, i32* @TTStores, align 4, !dbg !236, !tbaa !217
  store i32 0, i32* @TTHits, align 4, !dbg !237, !tbaa !217
  store i32 0, i32* @bookidx, align 4, !dbg !238, !tbaa !217
  store i32 0, i32* @total_moves, align 4, !dbg !239, !tbaa !217
  store i32 0, i32* @ply, align 4, !dbg !240, !tbaa !217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !208), !dbg !241
  store i32 40, i32* @moves_to_tc, align 4, !dbg !242, !tbaa !217
  store i32 5, i32* @min_per_game, align 4, !dbg !243, !tbaa !217
  store i32 30000, i32* @time_left, align 4, !dbg !244, !tbaa !217
  store i32 2000, i32* @opp_rating, align 4, !dbg !245, !tbaa !217
  store i32 2000, i32* @my_rating, align 4, !dbg !246, !tbaa !217
  store i32 40, i32* @maxdepth, align 4, !dbg !247, !tbaa !217
  store i32 200, i32* @maxposdiff, align 4, !dbg !248, !tbaa !217
  store i32 1, i32* @must_go, align 4, !dbg !249, !tbaa !217
  store i32 1, i32* @tradefreely, align 4, !dbg !250, !tbaa !217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !208), !dbg !251
  store i32 0, i32* @xb_mode, align 4, !dbg !252, !tbaa !217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !208), !dbg !253
  store i32 0, i32* @comp_color, align 4, !dbg !254, !tbaa !217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !208), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !45, metadata !208), !dbg !256
  store i32 1, i32* %show_board, align 4, !dbg !257, !tbaa !258
  store i32 0, i32* @is_pondering, align 4, !dbg !259, !tbaa !258
  store i32 1, i32* @allow_pondering, align 4, !dbg !260, !tbaa !258
  store i32 0, i32* @is_analyzing, align 4, !dbg !261, !tbaa !258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !208), !dbg !262
  store i32 0, i32* @have_partner, align 4, !dbg !263, !tbaa !258
  store i32 0, i32* @must_sit, align 4, !dbg !264, !tbaa !258
  store i32 0, i32* @go_fast, align 4, !dbg !265, !tbaa !258
  store i32 0, i32* @fixed_time, align 4, !dbg !266, !tbaa !217
  store i32 0, i32* @phase, align 4, !dbg !267, !tbaa !217
  store i32 0, i32* @root_to_move, align 4, !dbg !268, !tbaa !217
  store i32 0, i32* @kibitzed, align 4, !dbg !269, !tbaa !258
  store i32 0, i32* @move_number, align 4, !dbg !270, !tbaa !217
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 14400, i32 16, i1 false), !dbg !271
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 9600, i32 16, i1 false), !dbg !272
  %9 = load i32* @hash, align 4, !dbg !273, !tbaa !217
  store i32 %9, i32* getelementptr inbounds ([600 x i32]* @hash_history, i64 0, i64 0), align 16, !dbg !274, !tbaa !217
  %10 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !275, !tbaa !276
  tail call void @setbuf(%struct.__sFILE* %10, i8* null) #8, !dbg !278
  %11 = load %struct.__sFILE** @__stdinp, align 8, !dbg !279, !tbaa !276
  tail call void @setbuf(%struct.__sFILE* %11, i8* null) #8, !dbg !280
  tail call void @start_up() #8, !dbg !281
  %12 = icmp eq i32 %argc, 2, !dbg !282
  br i1 %12, label %13, label %.preheader125, !dbg !284

; <label>:13                                      ; preds = %0
  %puts110 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str159, i64 0, i64 0)), !dbg !285
  %14 = getelementptr inbounds i8** %argv, i64 1, !dbg !287
  %15 = load i8** %14, align 8, !dbg !287, !tbaa !276
  tail call void @run_autotest(i8* %15) #8, !dbg !288
  br label %.preheader125, !dbg !289

.preheader125:                                    ; preds = %0, %13
  %16 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 6, !dbg !290
  %17 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 5, !dbg !299
  %18 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 7, !dbg !316
  %19 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 1, !dbg !321
  %20 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 2, !dbg !332
  %21 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 8, !dbg !333
  %22 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 3, !dbg !337
  %23 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 9, !dbg !342
  %24 = bitcast %struct.move_s* %move to i8*, !dbg !350
  %25 = bitcast %struct.move_s* %comp_move to i8*, !dbg !354
  %26 = bitcast %struct.move_s* %1 to i8*, !dbg !354
  br label %.backedge, !dbg !357

.backedge:                                        ; preds = %617, %597, %520, %504, %381, %258, %637, %624, %608, %577, %370, %359, %351, %263, %267, %290, %302, %334, %354, %376, %393, %403, %433, %430, %465, %478, %473, %548, %561, %569, %593, %603, %634, %640, %630, %623, %607, %583, %573, %565, %557, %524, %517, %489, %492, %469, %437, %421, %398, %387, %380, %358, %339, %329, %330, %298, %365, %369, %613, %.preheader125
  %force_mode.0 = phi i32 [ 0, %.preheader125 ], [ %force_mode.0, %517 ], [ %force_mode.0, %548 ], [ %force_mode.0, %637 ], [ %force_mode.0, %640 ], [ %force_mode.0, %634 ], [ %force_mode.0, %630 ], [ %force_mode.0, %624 ], [ %force_mode.0, %623 ], [ %force_mode.0, %613 ], [ %force_mode.0, %608 ], [ %force_mode.0, %607 ], [ 0, %603 ], [ %force_mode.0, %593 ], [ %force_mode.0, %583 ], [ %force_mode.0, %577 ], [ %force_mode.0, %573 ], [ %force_mode.0, %569 ], [ %force_mode.0, %565 ], [ %force_mode.0, %561 ], [ %force_mode.0, %557 ], [ %force_mode.0, %524 ], [ %force_mode.0, %492 ], [ %force_mode.0, %489 ], [ %force_mode.0, %478 ], [ %force_mode.0, %473 ], [ %force_mode.0, %469 ], [ %force_mode.0, %465 ], [ %force_mode.0, %437 ], [ %force_mode.0, %433 ], [ %force_mode.0, %430 ], [ %force_mode.0, %421 ], [ %force_mode.0, %403 ], [ %force_mode.0, %398 ], [ 0, %393 ], [ %force_mode.0, %387 ], [ %force_mode.0, %380 ], [ %force_mode.0, %376 ], [ %force_mode.0, %370 ], [ %force_mode.0, %369 ], [ %force_mode.0, %365 ], [ %force_mode.0, %359 ], [ %force_mode.0, %358 ], [ %force_mode.0, %354 ], [ %force_mode.0, %351 ], [ %force_mode.0, %339 ], [ %force_mode.0, %334 ], [ %force_mode.0, %330 ], [ 0, %329 ], [ %force_mode.0, %302 ], [ %force_mode.0, %298 ], [ %force_mode.0, %290 ], [ %force_mode.0, %263 ], [ %force_mode.0, %258 ], [ %force_mode.0, %267 ], [ 1, %381 ], [ %force_mode.0, %504 ], [ %force_mode.0, %520 ], [ %force_mode.0, %597 ], [ %force_mode.0, %617 ]
  %is_edit_mode.0 = phi i32 [ 0, %.preheader125 ], [ 0, %517 ], [ %is_edit_mode.0, %548 ], [ %is_edit_mode.0, %637 ], [ %is_edit_mode.0, %640 ], [ %is_edit_mode.0, %634 ], [ %is_edit_mode.0, %630 ], [ %is_edit_mode.0, %624 ], [ %is_edit_mode.0, %623 ], [ %is_edit_mode.0, %613 ], [ %is_edit_mode.0, %608 ], [ %is_edit_mode.0, %607 ], [ %is_edit_mode.0, %603 ], [ %is_edit_mode.0, %593 ], [ %is_edit_mode.0, %583 ], [ %is_edit_mode.0, %577 ], [ %is_edit_mode.0, %573 ], [ %is_edit_mode.0, %569 ], [ %is_edit_mode.0, %565 ], [ %is_edit_mode.0, %561 ], [ %is_edit_mode.0, %557 ], [ %is_edit_mode.0, %524 ], [ %is_edit_mode.0, %492 ], [ %is_edit_mode.0, %489 ], [ %is_edit_mode.0, %478 ], [ %is_edit_mode.0, %473 ], [ %is_edit_mode.0, %469 ], [ %is_edit_mode.0, %465 ], [ %is_edit_mode.0, %437 ], [ %is_edit_mode.0, %433 ], [ %is_edit_mode.0, %430 ], [ %is_edit_mode.0, %421 ], [ %is_edit_mode.0, %403 ], [ %is_edit_mode.0, %398 ], [ %is_edit_mode.0, %393 ], [ %is_edit_mode.0, %387 ], [ %is_edit_mode.0, %380 ], [ %is_edit_mode.0, %376 ], [ %is_edit_mode.0, %370 ], [ %is_edit_mode.0, %369 ], [ %is_edit_mode.0, %365 ], [ %is_edit_mode.0, %359 ], [ %is_edit_mode.0, %358 ], [ %is_edit_mode.0, %354 ], [ %is_edit_mode.0, %351 ], [ %is_edit_mode.0, %339 ], [ %is_edit_mode.0, %334 ], [ %is_edit_mode.0, %330 ], [ %is_edit_mode.0, %329 ], [ %is_edit_mode.0, %302 ], [ %is_edit_mode.0, %298 ], [ %is_edit_mode.0, %290 ], [ 0, %263 ], [ 0, %258 ], [ 0, %267 ], [ %is_edit_mode.0, %381 ], [ 1, %504 ], [ %is_edit_mode.0, %520 ], [ %is_edit_mode.0, %597 ], [ %is_edit_mode.0, %617 ]
  %edit_color.0 = phi i32 [ 0, %.preheader125 ], [ %edit_color.0, %517 ], [ %edit_color.0, %548 ], [ %edit_color.0, %637 ], [ %edit_color.0, %640 ], [ %edit_color.0, %634 ], [ %edit_color.0, %630 ], [ %edit_color.0, %624 ], [ %edit_color.0, %623 ], [ %edit_color.0, %613 ], [ %edit_color.0, %608 ], [ %edit_color.0, %607 ], [ %edit_color.0, %603 ], [ %edit_color.0, %593 ], [ %edit_color.0, %583 ], [ %edit_color.0, %577 ], [ %edit_color.0, %573 ], [ %edit_color.0, %569 ], [ %edit_color.0, %565 ], [ %edit_color.0, %561 ], [ %edit_color.0, %557 ], [ %edit_color.0, %524 ], [ %edit_color.0, %492 ], [ %edit_color.0, %489 ], [ %edit_color.0, %478 ], [ %edit_color.0, %473 ], [ %edit_color.0, %469 ], [ %edit_color.0, %465 ], [ %edit_color.0, %437 ], [ %edit_color.0, %433 ], [ %edit_color.0, %430 ], [ %edit_color.0, %421 ], [ %edit_color.0, %403 ], [ %edit_color.0, %398 ], [ %edit_color.0, %393 ], [ %edit_color.0, %387 ], [ %edit_color.0, %380 ], [ %edit_color.0, %376 ], [ %edit_color.0, %370 ], [ %edit_color.0, %369 ], [ %edit_color.0, %365 ], [ %edit_color.0, %359 ], [ %edit_color.0, %358 ], [ %edit_color.0, %354 ], [ %edit_color.0, %351 ], [ %edit_color.0, %339 ], [ %edit_color.0, %334 ], [ %edit_color.0, %330 ], [ %edit_color.0, %329 ], [ %edit_color.0, %302 ], [ %edit_color.0, %298 ], [ %edit_color.0, %290 ], [ %edit_color.0, %263 ], [ %edit_color.0, %258 ], [ %edit_color.0, %267 ], [ %edit_color.0, %381 ], [ 0, %504 ], [ %521, %520 ], [ %edit_color.0, %597 ], [ %edit_color.0, %617 ]
  %braindeadinterface.0 = phi i32 [ 0, %.preheader125 ], [ %braindeadinterface.0, %517 ], [ %braindeadinterface.0, %548 ], [ %braindeadinterface.0, %637 ], [ %braindeadinterface.0, %640 ], [ %braindeadinterface.0, %634 ], [ %braindeadinterface.0, %630 ], [ %braindeadinterface.0, %624 ], [ %braindeadinterface.0, %623 ], [ %braindeadinterface.0, %613 ], [ %braindeadinterface.0, %608 ], [ %braindeadinterface.0, %607 ], [ %braindeadinterface.0, %603 ], [ %braindeadinterface.0, %593 ], [ %braindeadinterface.0, %583 ], [ %braindeadinterface.0, %577 ], [ %braindeadinterface.0, %573 ], [ %braindeadinterface.0, %569 ], [ %braindeadinterface.0, %565 ], [ %braindeadinterface.0, %561 ], [ %braindeadinterface.0, %557 ], [ %braindeadinterface.0, %524 ], [ %braindeadinterface.0, %492 ], [ %braindeadinterface.0, %489 ], [ %braindeadinterface.0, %478 ], [ %braindeadinterface.0, %473 ], [ %braindeadinterface.0, %469 ], [ %braindeadinterface.0, %465 ], [ %braindeadinterface.0, %437 ], [ %braindeadinterface.0, %433 ], [ %braindeadinterface.0, %430 ], [ %braindeadinterface.0, %421 ], [ %braindeadinterface.0, %403 ], [ %braindeadinterface.0, %398 ], [ %braindeadinterface.0, %393 ], [ %braindeadinterface.0, %387 ], [ %braindeadinterface.0, %380 ], [ %braindeadinterface.0, %376 ], [ %braindeadinterface.0, %370 ], [ %braindeadinterface.0, %369 ], [ %braindeadinterface.0, %365 ], [ %braindeadinterface.0, %359 ], [ %braindeadinterface.0, %358 ], [ %braindeadinterface.0, %354 ], [ %braindeadinterface.0, %351 ], [ %braindeadinterface.0, %339 ], [ %braindeadinterface.0, %334 ], [ %braindeadinterface.0, %330 ], [ %braindeadinterface.0, %329 ], [ %braindeadinterface.0, %302 ], [ %braindeadinterface.0, %298 ], [ %braindeadinterface.0, %290 ], [ %braindeadinterface.0, %263 ], [ %braindeadinterface.0, %258 ], [ %braindeadinterface.0, %267 ], [ %braindeadinterface.0, %381 ], [ %braindeadinterface.0, %504 ], [ %braindeadinterface.0, %520 ], [ 1, %597 ], [ %braindeadinterface.0, %617 ]
  %automode.0 = phi i32 [ 0, %.preheader125 ], [ %automode.1, %517 ], [ %automode.1, %548 ], [ %automode.1, %637 ], [ %automode.1, %640 ], [ %automode.1, %634 ], [ %automode.1, %630 ], [ %automode.1, %624 ], [ %automode.1, %623 ], [ %automode.1, %613 ], [ %automode.1, %608 ], [ %automode.1, %607 ], [ %automode.1, %603 ], [ %automode.1, %593 ], [ %automode.1, %583 ], [ %automode.1, %577 ], [ %automode.1, %573 ], [ %automode.1, %569 ], [ %automode.1, %565 ], [ %automode.1, %561 ], [ %automode.1, %557 ], [ %automode.1, %524 ], [ %automode.1, %492 ], [ %automode.1, %489 ], [ %automode.1, %478 ], [ %automode.1, %473 ], [ %automode.1, %469 ], [ %automode.1, %465 ], [ %automode.1, %437 ], [ %automode.1, %433 ], [ %automode.1, %430 ], [ %automode.1, %421 ], [ %automode.1, %403 ], [ %automode.1, %398 ], [ %automode.1, %393 ], [ %automode.1, %387 ], [ %automode.1, %380 ], [ %automode.1, %376 ], [ %automode.1, %370 ], [ %automode.1, %369 ], [ %automode.1, %365 ], [ %automode.1, %359 ], [ %automode.1, %358 ], [ %automode.1, %354 ], [ %automode.1, %351 ], [ %automode.1, %339 ], [ %automode.1, %334 ], [ %automode.1, %330 ], [ 0, %329 ], [ %automode.1, %302 ], [ %automode.1, %298 ], [ %automode.1, %290 ], [ %automode.1, %263 ], [ %automode.1, %258 ], [ %automode.1, %267 ], [ %automode.1, %381 ], [ %automode.1, %504 ], [ %automode.1, %520 ], [ %automode.1, %597 ], [ 1, %617 ]
  %27 = icmp ne i32 %is_edit_mode.0, 0, !dbg !357
  br i1 %27, label %192, label %28, !dbg !358

; <label>:28                                      ; preds = %.backedge
  %29 = load i32* @comp_color, align 4, !dbg !359, !tbaa !217
  %30 = load i32* @white_to_move, align 4, !dbg !360, !tbaa !217
  %notlhs = icmp ne i32 %29, %30, !dbg !361
  %notrhs = icmp eq i32 %automode.0, 0, !dbg !361
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !361
  %31 = load i32* @must_sit, align 4
  %32 = or i32 %31, %force_mode.0, !dbg !361
  %33 = load i32* @result, align 4
  %34 = or i32 %32, %33, !dbg !361
  %35 = icmp ne i32 %34, 0, !dbg !361
  %36 = or i1 %or.cond.not, %35, !dbg !361
  br i1 %36, label %192, label %37, !dbg !361

; <label>:37                                      ; preds = %28
  store i32 0, i32* @is_pondering, align 4, !dbg !362, !tbaa !258
  call void @think(%struct.move_s* sret %1) #8, !dbg !354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !dbg !354, !tbaa.struct !363
  store i32 0, i32* @ply, align 4, !dbg !364, !tbaa !217
  %38 = load i32* @must_sit, align 4, !dbg !365, !tbaa !258
  %39 = icmp eq i32 %38, 0, !dbg !365
  %40 = load i32* @must_go, align 4
  %41 = icmp ne i32 %40, 0, !dbg !367
  %or.cond9 = or i1 %39, %41, !dbg !368
  br i1 %or.cond9, label %42, label %192, !dbg !368

; <label>:42                                      ; preds = %37
  %43 = load i32* @Variant, align 4, !dbg !369, !tbaa !217
  %.off = add i32 %43, -3, !dbg !372
  %44 = icmp ult i32 %.off, 2, !dbg !372
  %45 = load i32* @result, align 4
  %46 = icmp ne i32 %45, 2, !dbg !373
  %47 = and i32 %45, -2, !dbg !372
  %.cmp = icmp ne i32 %47, 2, !dbg !372
  %48 = and i1 %44, %.cmp, !dbg !372
  br i1 %48, label %thread-pre-split, label %49, !dbg !372

; <label>:49                                      ; preds = %42
  %switch = icmp ult i32 %43, 3, !dbg !374
  br i1 %switch, label %50, label %186, !dbg !374

; <label>:50                                      ; preds = %49
  %51 = load i32* @comp_color, align 4, !dbg !375, !tbaa !217
  %52 = icmp eq i32 %51, 1, !dbg !376
  %or.cond21 = and i1 %46, %52, !dbg !377
  br i1 %or.cond21, label %thread-pre-split, label %53, !dbg !377

; <label>:53                                      ; preds = %50
  %54 = icmp eq i32 %51, 0, !dbg !378
  br i1 %54, label %switch.early.test, label %186

switch.early.test:                                ; preds = %53
  switch i32 %45, label %55 [
    i32 3, label %188
    i32 4, label %189
    i32 5, label %190
    i32 1, label %191
  ], !dbg !379

thread-pre-split:                                 ; preds = %50, %42
  switch i32 %45, label %55 [
    i32 4, label %189
    i32 5, label %190
    i32 1, label %191
  ], !dbg !380

; <label>:55                                      ; preds = %thread-pre-split, %switch.early.test
  call void @llvm.dbg.value(metadata %struct.move_s* %comp_move, i64 0, metadata !41, metadata !208), !dbg !381
  call void @comp_to_coord(%struct.move_s* byval align 8 %comp_move, i8* %5) #8, !dbg !382
  %56 = load i32* @hash, align 4, !dbg !384, !tbaa !217
  %57 = load i32* @move_number, align 4, !dbg !385, !tbaa !217
  %58 = sext i32 %57 to i64, !dbg !386
  %59 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %58, !dbg !386
  store i32 %56, i32* %59, align 4, !dbg !387, !tbaa !217
  %60 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %58, !dbg !388
  %61 = bitcast %struct.move_s* %60 to i8*, !dbg !389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %25, i64 24, i32 8, i1 false), !dbg !389, !tbaa.struct !363
  call void @llvm.dbg.value(metadata %struct.move_s* %comp_move, i64 0, metadata !41, metadata !208), !dbg !381
  call void @make(%struct.move_s* %comp_move, i32 0) #8, !dbg !390
  %62 = load i32* @move_number, align 4, !dbg !391, !tbaa !217
  %63 = add nsw i32 %62, 1, !dbg !391
  store i32 %63, i32* @move_number, align 4, !dbg !391, !tbaa !217
  %64 = sext i32 %62 to i64, !dbg !392
  %65 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %64, !dbg !392
  %66 = bitcast %struct.move_x* %65 to i8*, !dbg !393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false), !dbg !393, !tbaa.struct !394
  store i32 0, i32* @userealholdings, align 4, !dbg !395, !tbaa !217
  %67 = load i32* @must_go, align 4, !dbg !396, !tbaa !217
  %68 = add nsw i32 %67, -1, !dbg !396
  store i32 %68, i32* @must_go, align 4, !dbg !396, !tbaa !217
  %69 = call i32 @is_draw() #8, !dbg !397
  %70 = icmp eq i32 %69, 0, !dbg !397
  br i1 %70, label %72, label %71, !dbg !399

; <label>:71                                      ; preds = %55
  store i32 5, i32* @result, align 4, !dbg !400, !tbaa !217
  br label %76, !dbg !402

; <label>:72                                      ; preds = %55
  %73 = load i32* @fifty, align 4, !dbg !403, !tbaa !217
  %74 = icmp sgt i32 %73, 100, !dbg !405
  br i1 %74, label %75, label %76, !dbg !406

; <label>:75                                      ; preds = %72
  store i32 4, i32* @result, align 4, !dbg !407, !tbaa !217
  br label %76, !dbg !409

; <label>:76                                      ; preds = %72, %75, %71
  %77 = load i32* @root_to_move, align 4, !dbg !410, !tbaa !217
  %78 = xor i32 %77, 1, !dbg !410
  store i32 %78, i32* @root_to_move, align 4, !dbg !410, !tbaa !217
  call void @reset_piece_square() #8, !dbg !411
  %79 = load i32* @book_ply, align 4, !dbg !412, !tbaa !217
  %80 = icmp slt i32 %79, 40, !dbg !414
  br i1 %80, label %81, label %87, !dbg !415

; <label>:81                                      ; preds = %76
  %82 = icmp eq i32 %79, 0, !dbg !416
  br i1 %82, label %83, label %85, !dbg !419

; <label>:83                                      ; preds = %81
  %84 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %5, i64 256) #8, !dbg !420
  br label %87, !dbg !422

; <label>:85                                      ; preds = %81
  %86 = call i8* @__strcat_chk(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %5, i64 256) #8, !dbg !423
  br label %87

; <label>:87                                      ; preds = %83, %85, %76
  %88 = load i32* @book_ply, align 4, !dbg !425, !tbaa !217
  %89 = add nsw i32 %88, 1, !dbg !425
  store i32 %89, i32* @book_ply, align 4, !dbg !425, !tbaa !217
  %90 = load i32* @nodes, align 4, !dbg !426, !tbaa !217
  %91 = load i32* @qnodes, align 4, !dbg !427, !tbaa !217
  %92 = sitofp i32 %91 to float, !dbg !428
  %93 = sitofp i32 %90 to float, !dbg !429
  %94 = fdiv float %92, %93, !dbg !430
  %95 = fmul float %94, 1.000000e+02, !dbg !431
  %96 = fpext float %95 to double, !dbg !431
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %90, double %96) #8, !dbg !432
  %98 = load i32* @ECacheProbes, align 4, !dbg !433, !tbaa !217
  %99 = load i32* @ECacheHits, align 4, !dbg !434, !tbaa !217
  %100 = uitofp i32 %99 to float, !dbg !435
  %101 = uitofp i32 %98 to float, !dbg !436
  %102 = fadd float %101, 1.000000e+00, !dbg !437
  %103 = fdiv float %100, %102, !dbg !438
  %104 = fmul float %103, 1.000000e+02, !dbg !439
  %105 = fpext float %104 to double, !dbg !440
  %106 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 %98, i32 %99, double %105) #8, !dbg !441
  %107 = load i32* @TTStores, align 4, !dbg !442, !tbaa !217
  %108 = load i32* @TTProbes, align 4, !dbg !443, !tbaa !217
  %109 = load i32* @TTHits, align 4, !dbg !444, !tbaa !217
  %110 = uitofp i32 %109 to float, !dbg !445
  %111 = uitofp i32 %108 to float, !dbg !446
  %112 = fadd float %111, 1.000000e+00, !dbg !447
  %113 = fdiv float %110, %112, !dbg !448
  %114 = fmul float %113, 1.000000e+02, !dbg !449
  %115 = fpext float %114 to double, !dbg !450
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i32 %107, i32 %108, i32 %109, double %115) #8, !dbg !451
  %117 = load i32* @NTries, align 4, !dbg !452, !tbaa !217
  %118 = load i32* @NCuts, align 4, !dbg !453, !tbaa !217
  %119 = uitofp i32 %118 to float, !dbg !454
  %120 = fmul float %119, 1.000000e+02, !dbg !455
  %121 = uitofp i32 %117 to float, !dbg !456
  %122 = fadd float %121, 1.000000e+00, !dbg !457
  %123 = fdiv float %120, %122, !dbg !458
  %124 = fpext float %123 to double, !dbg !459
  %125 = load i32* @TExt, align 4, !dbg !460, !tbaa !217
  %126 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 %117, i32 %118, double %124, i32 %125) #8, !dbg !461
  %127 = load i32* @ext_check, align 4, !dbg !462, !tbaa !217
  %128 = load i32* @razor_drop, align 4, !dbg !463, !tbaa !217
  %129 = load i32* @razor_material, align 4, !dbg !464, !tbaa !217
  %130 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %127, i32 %128, i32 %129) #8, !dbg !465
  %131 = load i32* @FHF, align 4, !dbg !466, !tbaa !217
  %132 = uitofp i32 %131 to float, !dbg !467
  %133 = fmul float %132, 1.000000e+02, !dbg !468
  %134 = load i32* @FH, align 4, !dbg !469, !tbaa !217
  %135 = add i32 %134, 1, !dbg !470
  %136 = uitofp i32 %135 to float, !dbg !471
  %137 = fdiv float %133, %136, !dbg !472
  %138 = fpext float %137 to double, !dbg !473
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), double %138) #8, !dbg !474
  %140 = load i32* @Material, align 4, !dbg !475, !tbaa !217
  %141 = call i32 @eval(i32 -1000000, i32 1000000) #8, !dbg !476
  %142 = load i32* @maxposdiff, align 4, !dbg !477, !tbaa !217
  %143 = load i32* @white_hand_eval, align 4, !dbg !478, !tbaa !217
  %144 = load i32* @black_hand_eval, align 4, !dbg !479, !tbaa !217
  %145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i32 %143, i32 %144) #8, !dbg !480
  %146 = load i32* @hash, align 4, !dbg !481, !tbaa !217
  %147 = load i32* @hold_hash, align 4, !dbg !482, !tbaa !217
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i32 %146, i32 %147) #8, !dbg !483
  %149 = load i32* @result, align 4, !dbg !484, !tbaa !217
  %150 = icmp eq i32 %149, 0, !dbg !484
  %151 = load i32* @xb_mode, align 4, !dbg !486, !tbaa !217
  %152 = icmp ne i32 %151, 0, !dbg !486
  %153 = bitcast %struct.move_s* %comp_move to i64*, !dbg !489
  %154 = load i64* %153, align 8, !dbg !489
  %155 = trunc i64 %154 to i32, !dbg !489
  %156 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 0), align 4, !dbg !492, !tbaa !493
  %157 = lshr i64 %154, 32
  %158 = trunc i64 %157 to i32
  %.not = icmp eq i32 %155, %156, !dbg !495
  %159 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4
  %160 = icmp eq i32 %158, %159, !dbg !500
  %or.cond128 = and i1 %.not, %160, !dbg !495
  br i1 %150, label %161, label %172, !dbg !501

; <label>:161                                     ; preds = %87
  br i1 %152, label %162, label %169, !dbg !502

; <label>:162                                     ; preds = %161
  br i1 %or.cond128, label %165, label %163, !dbg !495

; <label>:163                                     ; preds = %162
  %164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* %5) #8, !dbg !503
  br label %165, !dbg !503

; <label>:165                                     ; preds = %162, %163
  %166 = load i32* @Variant, align 4, !dbg !504, !tbaa !217
  %167 = icmp eq i32 %166, 1, !dbg !506
  br i1 %167, label %168, label %192, !dbg !507

; <label>:168                                     ; preds = %165
  call void @CheckBadFlow(i32 0) #8, !dbg !508
  br label %192, !dbg !510

; <label>:169                                     ; preds = %161
  br i1 %or.cond128, label %192, label %170, !dbg !511

; <label>:170                                     ; preds = %169
  %171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %5) #8, !dbg !514
  br label %192, !dbg !514

; <label>:172                                     ; preds = %87
  br i1 %152, label %173, label %176, !dbg !515

; <label>:173                                     ; preds = %172
  br i1 %or.cond128, label %179, label %174, !dbg !516

; <label>:174                                     ; preds = %173
  %175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* %5) #8, !dbg !517
  br label %179, !dbg !517

; <label>:176                                     ; preds = %172
  br i1 %or.cond128, label %179, label %177, !dbg !518

; <label>:177                                     ; preds = %176
  %178 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %5) #8, !dbg !521
  br label %179, !dbg !521

; <label>:179                                     ; preds = %176, %173, %177, %174
  %180 = load i32* @result, align 4, !dbg !522, !tbaa !217
  switch i32 %180, label %185 [
    i32 2, label %181
    i32 3, label %182
    i32 4, label %183
    i32 5, label %184
  ], !dbg !524

; <label>:181                                     ; preds = %179
  %puts109 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str158, i64 0, i64 0)), !dbg !525
  br label %192, !dbg !527

; <label>:182                                     ; preds = %179
  %puts108 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str157, i64 0, i64 0)), !dbg !528
  br label %192, !dbg !531

; <label>:183                                     ; preds = %179
  %puts107 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str156, i64 0, i64 0)), !dbg !532
  br label %192, !dbg !535

; <label>:184                                     ; preds = %179
  %puts106 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str155, i64 0, i64 0)), !dbg !536
  br label %192, !dbg !539

; <label>:185                                     ; preds = %179
  %puts105 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str154, i64 0, i64 0)), !dbg !540
  br label %192

; <label>:186                                     ; preds = %49, %53
  switch i32 %45, label %191 [
    i32 2, label %187
    i32 3, label %188
    i32 4, label %189
    i32 5, label %190
  ], !dbg !542

; <label>:187                                     ; preds = %186
  %puts102 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str158, i64 0, i64 0)), !dbg !544
  br label %192, !dbg !547

; <label>:188                                     ; preds = %switch.early.test, %186
  %puts101 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str157, i64 0, i64 0)), !dbg !548
  br label %192, !dbg !551

; <label>:189                                     ; preds = %thread-pre-split, %switch.early.test, %186
  %puts100 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str156, i64 0, i64 0)), !dbg !552
  br label %192, !dbg !555

; <label>:190                                     ; preds = %thread-pre-split, %switch.early.test, %186
  %puts99 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str155, i64 0, i64 0)), !dbg !556
  br label %192, !dbg !559

; <label>:191                                     ; preds = %thread-pre-split, %switch.early.test, %186
  %puts98 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str154, i64 0, i64 0)), !dbg !560
  br label %192

; <label>:192                                     ; preds = %169, %187, %189, %191, %190, %188, %181, %183, %185, %184, %182, %37, %170, %165, %168, %28, %.backedge
  %automode.1 = phi i32 [ %automode.0, %.backedge ], [ %automode.0, %28 ], [ %automode.0, %168 ], [ %automode.0, %165 ], [ %automode.0, %170 ], [ %automode.0, %37 ], [ 0, %182 ], [ 0, %184 ], [ 0, %185 ], [ 0, %183 ], [ 0, %181 ], [ 0, %188 ], [ 0, %190 ], [ 0, %191 ], [ 0, %189 ], [ 0, %187 ], [ %automode.0, %169 ]
  %193 = load i32* @xb_mode, align 4, !dbg !562, !tbaa !217
  %194 = icmp eq i32 %193, 0, !dbg !562
  br i1 %194, label %195, label %207, !dbg !564

; <label>:195                                     ; preds = %192
  call void @llvm.dbg.value(metadata i32* %show_board, i64 0, metadata !45, metadata !208), !dbg !256
  %196 = load i32* %show_board, align 4, !dbg !565, !tbaa !258
  %197 = icmp eq i32 %196, 0, !dbg !565
  br i1 %197, label %202, label %198, !dbg !568

; <label>:198                                     ; preds = %195
  %putchar94 = call i32 @putchar(i32 10) #2, !dbg !569
  %199 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !571, !tbaa !276
  %200 = load i32* @comp_color, align 4, !dbg !572, !tbaa !217
  %201 = sub nsw i32 1, %200, !dbg !573
  call void @display_board(%struct.__sFILE* %199, i32 %201) #8, !dbg !574
  br label %202, !dbg !575

; <label>:202                                     ; preds = %195, %198
  %203 = icmp eq i32 %automode.1, 0, !dbg !576
  br i1 %203, label %204, label %229, !dbg !578

; <label>:204                                     ; preds = %202
  %205 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)) #8, !dbg !579
  %206 = load %struct.__sFILE** @__stdinp, align 8, !dbg !581, !tbaa !276
  call void @rinput(i8* %4, i32 256, %struct.__sFILE* %206) #8, !dbg !582
  br label %229, !dbg !583

; <label>:207                                     ; preds = %192
  %208 = load i32* @must_sit, align 4, !dbg !584, !tbaa !258
  %209 = icmp eq i32 %208, 0, !dbg !584
  br i1 %209, label %210, label %221, !dbg !587

; <label>:210                                     ; preds = %207
  %211 = load i32* @allow_pondering, align 4, !dbg !588, !tbaa !258
  %212 = or i32 %is_edit_mode.0, %force_mode.0, !dbg !589
  %notlhs95 = icmp eq i32 %212, 0, !dbg !589
  %notrhs96 = icmp ne i32 %211, 0, !dbg !589
  %or.cond41.not = and i1 %notlhs95, %notrhs96, !dbg !589
  %213 = load i32* @move_number, align 4
  %214 = icmp ne i32 %213, 0, !dbg !590
  %or.cond44 = and i1 %or.cond41.not, %214, !dbg !589
  %215 = load i32* @is_analyzing, align 4
  %216 = icmp ne i32 %215, 0, !dbg !591
  %or.cond47 = or i1 %or.cond44, %216, !dbg !589
  %or.cond47.not = xor i1 %or.cond47, true, !dbg !589
  %217 = load i32* @result, align 4
  %218 = or i32 %217, %automode.1, !dbg !589
  %219 = icmp ne i32 %218, 0, !dbg !589
  %220 = or i1 %219, %or.cond47.not, !dbg !589
  br i1 %220, label %225, label %224, !dbg !589

; <label>:221                                     ; preds = %207
  %.old48 = load i32* @result, align 4, !dbg !592, !tbaa !217
  %222 = or i32 %.old48, %automode.1, !dbg !593
  %223 = icmp eq i32 %222, 0, !dbg !593
  br i1 %223, label %224, label %225, !dbg !593

; <label>:224                                     ; preds = %221, %210
  store i32 1, i32* @is_pondering, align 4, !dbg !594, !tbaa !258
  call void @think(%struct.move_s* sret %2) #8, !dbg !596
  store i32 0, i32* @is_pondering, align 4, !dbg !597, !tbaa !258
  store i32 0, i32* @ply, align 4, !dbg !598, !tbaa !217
  br label %225, !dbg !599

; <label>:225                                     ; preds = %221, %210, %224
  %226 = icmp eq i32 %automode.1, 0, !dbg !600
  br i1 %226, label %227, label %229, !dbg !602

; <label>:227                                     ; preds = %225
  %228 = load %struct.__sFILE** @__stdinp, align 8, !dbg !603, !tbaa !276
  call void @rinput(i8* %4, i32 256, %struct.__sFILE* %228) #8, !dbg !605
  br label %229, !dbg !606

; <label>:229                                     ; preds = %225, %202, %227, %204
  br i1 %27, label %269, label %230, !dbg !607

; <label>:230                                     ; preds = %229
  %231 = call i32 @is_move(i8* %4) #8, !dbg !608
  %232 = icmp eq i32 %231, 0, !dbg !608
  br i1 %232, label %269, label %233, !dbg !609

; <label>:233                                     ; preds = %230
  call void @llvm.dbg.value(metadata %struct.move_s* %move, i64 0, metadata !31, metadata !208), !dbg !610
  %234 = call i32 @verify_coord(i8* %4, %struct.move_s* %move) #8, !dbg !611
  %235 = icmp eq i32 %234, 0, !dbg !611
  br i1 %235, label %267, label %236, !dbg !612

; <label>:236                                     ; preds = %233
  %237 = load i32* @move_number, align 4, !dbg !613, !tbaa !217
  %238 = sext i32 %237 to i64, !dbg !614
  %239 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %238, !dbg !614
  %240 = bitcast %struct.move_s* %239 to i8*, !dbg !350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %240, i8* %24, i64 24, i32 4, i1 false), !dbg !350, !tbaa.struct !363
  %241 = load i32* @hash, align 4, !dbg !615, !tbaa !217
  %242 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %238, !dbg !616
  store i32 %241, i32* %242, align 4, !dbg !617, !tbaa !217
  call void @llvm.dbg.value(metadata %struct.move_s* %move, i64 0, metadata !31, metadata !208), !dbg !610
  call void @make(%struct.move_s* %move, i32 0) #8, !dbg !618
  %243 = load i32* @move_number, align 4, !dbg !619, !tbaa !217
  %244 = add nsw i32 %243, 1, !dbg !619
  store i32 %244, i32* @move_number, align 4, !dbg !619, !tbaa !217
  %245 = sext i32 %243 to i64, !dbg !620
  %246 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %245, !dbg !620
  %247 = bitcast %struct.move_x* %246 to i8*, !dbg !621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %247, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false), !dbg !621, !tbaa.struct !394
  call void @reset_piece_square() #8, !dbg !622
  %248 = load i32* @root_to_move, align 4, !dbg !623, !tbaa !217
  %249 = xor i32 %248, 1, !dbg !623
  store i32 %249, i32* @root_to_move, align 4, !dbg !623, !tbaa !217
  %250 = load i32* @book_ply, align 4, !dbg !624, !tbaa !217
  %251 = icmp slt i32 %250, 40, !dbg !626
  br i1 %251, label %252, label %258, !dbg !627

; <label>:252                                     ; preds = %236
  %253 = icmp eq i32 %250, 0, !dbg !628
  br i1 %253, label %254, label %256, !dbg !631

; <label>:254                                     ; preds = %252
  %255 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %4, i64 256) #8, !dbg !632
  br label %258, !dbg !634

; <label>:256                                     ; preds = %252
  %257 = call i8* @__strcat_chk(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %4, i64 256) #8, !dbg !635
  br label %258

; <label>:258                                     ; preds = %254, %256, %236
  %259 = load i32* @book_ply, align 4, !dbg !637, !tbaa !217
  %260 = add nsw i32 %259, 1, !dbg !637
  store i32 %260, i32* @book_ply, align 4, !dbg !637, !tbaa !217
  call void @llvm.dbg.value(metadata i32* %show_board, i64 0, metadata !45, metadata !208), !dbg !256
  %261 = load i32* %show_board, align 4, !dbg !638, !tbaa !258
  %262 = icmp eq i32 %261, 0, !dbg !638
  br i1 %262, label %.backedge, label %263, !dbg !640

; <label>:263                                     ; preds = %258
  %putchar93 = call i32 @putchar(i32 10) #2, !dbg !641
  %264 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !643, !tbaa !276
  %265 = load i32* @comp_color, align 4, !dbg !644, !tbaa !217
  %266 = sub nsw i32 1, %265, !dbg !645
  call void @display_board(%struct.__sFILE* %264, i32 %266) #8, !dbg !646
  br label %.backedge, !dbg !647

; <label>:267                                     ; preds = %233
  %268 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %4) #8, !dbg !648
  br label %.backedge

; <label>:269                                     ; preds = %230, %229
  %270 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0)) #8, !dbg !650
  %271 = icmp eq i8* %270, null, !dbg !650
  br i1 %271, label %.preheader, label %.loopexit, !dbg !652

.preheader:                                       ; preds = %269
  %272 = load i8* %4, align 16, !dbg !653, !tbaa !258
  %273 = icmp eq i8 %272, 0, !dbg !656
  br i1 %273, label %.loopexit, label %.lr.ph, !dbg !656

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %274 = phi i8 [ %279, %.lr.ph ], [ %272, %.preheader ]
  %p.0126 = phi i8* [ %278, %.lr.ph ], [ %4, %.preheader ]
  %275 = sext i8 %274 to i32, !dbg !657
  call void @llvm.dbg.value(metadata i32 %275, i64 0, metadata !76, metadata !208) #2, !dbg !658
  %276 = call i32 @__tolower(i32 %275) #8, !dbg !660
  %277 = trunc i32 %276 to i8, !dbg !661
  store i8 %277, i8* %p.0126, align 1, !dbg !662, !tbaa !258
  %278 = getelementptr inbounds i8* %p.0126, i64 1, !dbg !663
  call void @llvm.dbg.value(metadata i8* %278, i64 0, metadata !28, metadata !208), !dbg !664
  %279 = load i8* %278, align 1, !dbg !653, !tbaa !258
  %280 = icmp eq i8 %279, 0, !dbg !656
  br i1 %280, label %.loopexit, label %.lr.ph, !dbg !656

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %269
  %281 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #8, !dbg !665
  %282 = icmp eq i32 %281, 0, !dbg !665
  br i1 %282, label %283, label %284, !dbg !666

; <label>:283                                     ; preds = %.loopexit
  call void @free_hash() #8, !dbg !667
  call void @free_ecache() #8, !dbg !669
  call void @exit(i32 0) #9, !dbg !670
  unreachable, !dbg !670

; <label>:284                                     ; preds = %.loopexit
  %285 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #8, !dbg !671
  %286 = icmp eq i32 %285, 0, !dbg !671
  br i1 %286, label %287, label %292, !dbg !672

; <label>:287                                     ; preds = %284
  %288 = load i32* @is_analyzing, align 4, !dbg !673, !tbaa !258
  %289 = icmp eq i32 %288, 0, !dbg !673
  br i1 %289, label %291, label %290, !dbg !676

; <label>:290                                     ; preds = %287
  store i32 0, i32* @is_analyzing, align 4, !dbg !677, !tbaa !258
  store i32 0, i32* @is_pondering, align 4, !dbg !679, !tbaa !258
  store i32 0, i32* @time_for_move, align 4, !dbg !680, !tbaa !217
  br label %.backedge, !dbg !681

; <label>:291                                     ; preds = %287
  call void @free_hash() #8, !dbg !682
  call void @free_ecache() #8, !dbg !684
  call void @exit(i32 0) #9, !dbg !685
  unreachable, !dbg !685

; <label>:292                                     ; preds = %284
  %293 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0)) #8, !dbg !686
  %294 = icmp eq i32 %293, 0, !dbg !686
  br i1 %294, label %298, label %295, !dbg !687

; <label>:295                                     ; preds = %292
  %296 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #8, !dbg !688
  %297 = icmp eq i32 %296, 0, !dbg !688
  br i1 %297, label %298, label %299, !dbg !689

; <label>:298                                     ; preds = %295, %292
  call void @llvm.dbg.value(metadata i32* %show_board, i64 0, metadata !45, metadata !208), !dbg !256
  call void @toggle_bool(i32* %show_board) #8, !dbg !690
  br label %.backedge, !dbg !692

; <label>:299                                     ; preds = %295
  %300 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i64 5) #8, !dbg !693
  %301 = icmp eq i32 %300, 0, !dbg !693
  br i1 %301, label %302, label %315, !dbg !694

; <label>:302                                     ; preds = %299
  call void @llvm.dbg.value(metadata i32* %depth, i64 0, metadata !42, metadata !208), !dbg !216
  %303 = call i32 (i8*, i8*, ...)* @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* %depth) #8, !dbg !695
  store i32 0, i32* @raw_nodes, align 4, !dbg !696, !tbaa !217
  %304 = call i64 @rtime() #8, !dbg !697
  call void @llvm.dbg.value(metadata i64 %304, i64 0, metadata !64, metadata !208), !dbg !698
  call void @llvm.dbg.value(metadata i32* %depth, i64 0, metadata !42, metadata !208), !dbg !216
  %305 = load i32* %depth, align 4, !dbg !699, !tbaa !217
  call void @perft(i32 %305) #8, !dbg !700
  call void @llvm.dbg.value(metadata i32* %depth, i64 0, metadata !42, metadata !208), !dbg !216
  %306 = load i32* %depth, align 4, !dbg !701, !tbaa !217
  %307 = load i32* @raw_nodes, align 4, !dbg !702, !tbaa !217
  %308 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str26, i64 0, i64 0), i32 %306, i32 %307) #8, !dbg !703
  %309 = call i64 @rtime() #8, !dbg !704
  %310 = call i32 @rdifftime(i64 %309, i64 %304) #8, !dbg !705
  %311 = sitofp i32 %310 to float, !dbg !706
  %312 = fpext float %311 to double, !dbg !706
  %313 = fdiv double %312, 1.000000e+02, !dbg !707
  %314 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), double %313) #8, !dbg !708
  br label %.backedge, !dbg !709

; <label>:315                                     ; preds = %299
  %316 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !710
  %317 = icmp eq i32 %316, 0, !dbg !710
  br i1 %317, label %318, label %331, !dbg !711

; <label>:318                                     ; preds = %315
  %319 = load i32* @xb_mode, align 4, !dbg !712, !tbaa !217
  %320 = icmp eq i32 %319, 0, !dbg !712
  br i1 %320, label %323, label %321, !dbg !715

; <label>:321                                     ; preds = %318
  %322 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @setcode, i64 0, i64 0)) #8, !dbg !716
  br label %323, !dbg !718

; <label>:323                                     ; preds = %318, %321
  %324 = load i32* @is_analyzing, align 4, !dbg !719, !tbaa !258
  %325 = icmp eq i32 %324, 0, !dbg !719
  br i1 %325, label %326, label %330, !dbg !721

; <label>:326                                     ; preds = %323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !722
  store i32 2, i32* @Variant, align 4, !dbg !724, !tbaa !217
  call void @init_game() #8, !dbg !725
  call void @initialize_hash() #8, !dbg !726
  %327 = icmp eq i32 %braindeadinterface.0, 0, !dbg !727
  br i1 %327, label %328, label %329, !dbg !729

; <label>:328                                     ; preds = %326
  call void @clear_tt() #8, !dbg !730
  call void @reset_ecache() #8, !dbg !732
  br label %329, !dbg !733

; <label>:329                                     ; preds = %326, %328
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !208), !dbg !253
  store i32 0, i32* @must_sit, align 4, !dbg !734, !tbaa !258
  store i32 0, i32* @go_fast, align 4, !dbg !735, !tbaa !258
  store i32 0, i32* @piecedead, align 4, !dbg !736, !tbaa !258
  store i32 0, i32* @partnerdead, align 4, !dbg !737, !tbaa !258
  store i32 0, i32* @kibitzed, align 4, !dbg !738, !tbaa !258
  store i32 0, i32* @fixed_time, align 4, !dbg !739, !tbaa !217
  store i32 0, i32* @root_to_move, align 4, !dbg !740, !tbaa !217
  store i32 0, i32* @comp_color, align 4, !dbg !741, !tbaa !217
  store i32 0, i32* @move_number, align 4, !dbg !742, !tbaa !217
  store i32 0, i32* getelementptr inbounds ([600 x i32]* @hash_history, i64 0, i64 0), align 16, !dbg !743, !tbaa !217
  store i32 0, i32* @bookidx, align 4, !dbg !744, !tbaa !217
  store i32 2000, i32* @opp_rating, align 4, !dbg !745, !tbaa !217
  store i32 2000, i32* @my_rating, align 4, !dbg !746, !tbaa !217
  store i32 0, i32* @must_go, align 4, !dbg !747, !tbaa !217
  store i32 1, i32* @tradefreely, align 4, !dbg !748, !tbaa !217
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !208), !dbg !251
  call void @CheckBadFlow(i32 1) #8, !dbg !749
  call void @ResetHandValue() #8, !dbg !750
  br label %.backedge, !dbg !751

; <label>:330                                     ; preds = %323
  call void @init_game() #8, !dbg !752
  store i32 0, i32* @move_number, align 4, !dbg !754, !tbaa !217
  br label %.backedge

; <label>:331                                     ; preds = %315
  %332 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0)) #8, !dbg !755
  %333 = icmp eq i32 %332, 0, !dbg !755
  br i1 %333, label %334, label %336, !dbg !756

; <label>:334                                     ; preds = %331
  store i32 1, i32* @xb_mode, align 4, !dbg !757, !tbaa !217
  call void @llvm.dbg.value(metadata i32* %show_board, i64 0, metadata !45, metadata !208), !dbg !256
  call void @toggle_bool(i32* %show_board) #8, !dbg !759
  %335 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #8, !dbg !760
  %putchar = call i32 @putchar(i32 10) #2, !dbg !761
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str, i64 0, i64 0)), !dbg !762
  call void @BegForPartner() #8, !dbg !763
  br label %.backedge, !dbg !764

; <label>:336                                     ; preds = %331
  %337 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0)) #8, !dbg !765
  %338 = icmp eq i32 %337, 0, !dbg !765
  br i1 %338, label %339, label %348, !dbg !766

; <label>:339                                     ; preds = %336
  %340 = load i32* @nodes, align 4, !dbg !767, !tbaa !217
  %341 = load i32* @qnodes, align 4, !dbg !769, !tbaa !217
  %342 = sitofp i32 %341 to float, !dbg !770
  %343 = sitofp i32 %340 to float, !dbg !771
  %344 = fdiv float %342, %343, !dbg !772
  %345 = fmul float %344, 1.000000e+02, !dbg !773
  %346 = fpext float %345 to double, !dbg !773
  %347 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str33, i64 0, i64 0), i32 %340, double %346) #8, !dbg !774
  br label %.backedge, !dbg !775

; <label>:348                                     ; preds = %336
  %349 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #8, !dbg !776
  %350 = icmp eq i32 %349, 0, !dbg !776
  br i1 %350, label %351, label %355, !dbg !777

; <label>:351                                     ; preds = %348
  call void @toggle_bool(i32* @post) #8, !dbg !778
  %352 = load i32* @xb_mode, align 4, !dbg !780, !tbaa !217
  %353 = icmp eq i32 %352, 0, !dbg !780
  br i1 %353, label %.backedge, label %354, !dbg !782

; <label>:354                                     ; preds = %351
  store i32 1, i32* @post, align 4, !dbg !783, !tbaa !258
  br label %.backedge, !dbg !784

; <label>:355                                     ; preds = %348
  %356 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #8, !dbg !785
  %357 = icmp eq i32 %356, 0, !dbg !785
  br i1 %357, label %358, label %359, !dbg !786

; <label>:358                                     ; preds = %355
  store i32 0, i32* @post, align 4, !dbg !787, !tbaa !258
  br label %.backedge, !dbg !789

; <label>:359                                     ; preds = %355
  %360 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #8, !dbg !790
  %361 = icmp eq i32 %360, 0, !dbg !790
  br i1 %361, label %.backedge, label %362, !dbg !791

; <label>:362                                     ; preds = %359
  %363 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0)) #8, !dbg !792
  %364 = icmp eq i32 %363, 0, !dbg !792
  br i1 %364, label %365, label %366, !dbg !793

; <label>:365                                     ; preds = %362
  store i32 1, i32* @allow_pondering, align 4, !dbg !794, !tbaa !258
  br label %.backedge, !dbg !796

; <label>:366                                     ; preds = %362
  %367 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0)) #8, !dbg !797
  %368 = icmp eq i32 %367, 0, !dbg !797
  br i1 %368, label %369, label %370, !dbg !798

; <label>:369                                     ; preds = %366
  store i32 0, i32* @allow_pondering, align 4, !dbg !799, !tbaa !258
  br label %.backedge, !dbg !801

; <label>:370                                     ; preds = %366
  %371 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str39, i64 0, i64 0)) #8, !dbg !802
  %372 = icmp eq i32 %371, 0, !dbg !802
  br i1 %372, label %.backedge, label %373, !dbg !803

; <label>:373                                     ; preds = %370
  %374 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0)) #8, !dbg !804
  %375 = icmp eq i32 %374, 0, !dbg !804
  br i1 %375, label %376, label %377, !dbg !805

; <label>:376                                     ; preds = %373
  store i32 1, i32* @white_to_move, align 4, !dbg !806, !tbaa !217
  store i32 0, i32* @root_to_move, align 4, !dbg !808, !tbaa !217
  store i32 0, i32* @comp_color, align 4, !dbg !809, !tbaa !217
  br label %.backedge, !dbg !810

; <label>:377                                     ; preds = %373
  %378 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0)) #8, !dbg !811
  %379 = icmp eq i32 %378, 0, !dbg !811
  br i1 %379, label %380, label %381, !dbg !812

; <label>:380                                     ; preds = %377
  store i32 0, i32* @white_to_move, align 4, !dbg !813, !tbaa !217
  store i32 1, i32* @root_to_move, align 4, !dbg !815, !tbaa !217
  store i32 1, i32* @comp_color, align 4, !dbg !816, !tbaa !217
  br label %.backedge, !dbg !817

; <label>:381                                     ; preds = %377
  %382 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #8, !dbg !818
  %383 = icmp eq i32 %382, 0, !dbg !818
  br i1 %383, label %.backedge, label %384, !dbg !819

; <label>:384                                     ; preds = %381
  %385 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0)) #8, !dbg !820
  %386 = icmp eq i32 %385, 0, !dbg !820
  br i1 %386, label %387, label %390, !dbg !821

; <label>:387                                     ; preds = %384
  call void @check_phase() #8, !dbg !822
  %388 = call i32 @eval(i32 -1000000, i32 1000000) #8, !dbg !824
  %389 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i32 %388) #8, !dbg !825
  br label %.backedge, !dbg !826

; <label>:390                                     ; preds = %384
  %391 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0)) #8, !dbg !827
  %392 = icmp eq i32 %391, 0, !dbg !827
  br i1 %392, label %393, label %395, !dbg !828

; <label>:393                                     ; preds = %390
  %394 = load i32* @white_to_move, align 4, !dbg !829, !tbaa !217
  store i32 %394, i32* @comp_color, align 4, !dbg !831, !tbaa !217
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !208), !dbg !253
  br label %.backedge, !dbg !832

; <label>:395                                     ; preds = %390
  %396 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i64 4) #8, !dbg !833
  %397 = icmp eq i32 %396, 0, !dbg !833
  br i1 %397, label %398, label %400, !dbg !834

; <label>:398                                     ; preds = %395
  %399 = call i32 (i8*, i8*, ...)* @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i32* @time_left) #8, !dbg !835
  br label %.backedge, !dbg !836

; <label>:400                                     ; preds = %395
  %401 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i64 4) #8, !dbg !837
  %402 = icmp eq i32 %401, 0, !dbg !837
  br i1 %402, label %403, label %405, !dbg !838

; <label>:403                                     ; preds = %400
  %404 = call i32 (i8*, i8*, ...)* @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i32* @opp_time) #8, !dbg !839
  br label %.backedge, !dbg !841

; <label>:405                                     ; preds = %400
  %406 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), i64 5) #8, !dbg !842
  %407 = icmp eq i32 %406, 0, !dbg !842
  br i1 %407, label %408, label %422, !dbg !843

; <label>:408                                     ; preds = %405
  %strchr = call i8* @strchr(i8* %16, i32 58), !dbg !844
  %409 = icmp eq i8* %strchr, null, !dbg !844
  br i1 %409, label %417, label %410, !dbg !847

; <label>:410                                     ; preds = %408
  %411 = call i32 (i8*, i8*, ...)* @sscanf(i8* %16, i8* getelementptr inbounds ([12 x i8]* @.str51, i64 0, i64 0), i32* @moves_to_tc, i32* @min_per_game, i32* @sec_per_game, i32* @inc) #8, !dbg !848
  %412 = load i32* @min_per_game, align 4, !dbg !850, !tbaa !217
  %413 = mul nsw i32 %412, 6000, !dbg !851
  %414 = load i32* @sec_per_game, align 4, !dbg !852, !tbaa !217
  %415 = mul nsw i32 %414, 100, !dbg !853
  %416 = add nsw i32 %415, %413, !dbg !854
  br label %421, !dbg !855

; <label>:417                                     ; preds = %408
  %418 = call i32 (i8*, i8*, ...)* @sscanf(i8* %16, i8* getelementptr inbounds ([9 x i8]* @.str52, i64 0, i64 0), i32* @moves_to_tc, i32* @min_per_game, i32* @inc) #8, !dbg !856
  %419 = load i32* @min_per_game, align 4, !dbg !858, !tbaa !217
  %420 = mul nsw i32 %419, 6000, !dbg !859
  br label %421

; <label>:421                                     ; preds = %417, %410
  %storemerge59 = phi i32 [ %416, %410 ], [ %420, %417 ]
  store i32 %storemerge59, i32* @time_left, align 4, !dbg !860, !tbaa !217
  store i32 %storemerge59, i32* @opp_time, align 4, !dbg !861, !tbaa !217
  store i32 0, i32* @fixed_time, align 4, !dbg !862, !tbaa !217
  store i32 0, i32* @time_cushion, align 4, !dbg !863, !tbaa !217
  br label %.backedge, !dbg !864

; <label>:422                                     ; preds = %405
  %423 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i64 6) #8, !dbg !865
  %424 = icmp eq i32 %423, 0, !dbg !865
  br i1 %424, label %425, label %434, !dbg !866

; <label>:425                                     ; preds = %422
  %426 = call i32 (i8*, i8*, ...)* @sscanf(i8* %18, i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0), i32* @my_rating, i32* @opp_rating) #8, !dbg !867
  %427 = load i32* @my_rating, align 4, !dbg !868, !tbaa !217
  %428 = icmp eq i32 %427, 0, !dbg !870
  br i1 %428, label %429, label %430, !dbg !871

; <label>:429                                     ; preds = %425
  store i32 2000, i32* @my_rating, align 4, !dbg !872, !tbaa !217
  br label %430, !dbg !873

; <label>:430                                     ; preds = %429, %425
  %431 = load i32* @opp_rating, align 4, !dbg !874, !tbaa !217
  %432 = icmp eq i32 %431, 0, !dbg !876
  br i1 %432, label %433, label %.backedge, !dbg !877

; <label>:433                                     ; preds = %430
  store i32 2000, i32* @opp_rating, align 4, !dbg !878, !tbaa !217
  br label %.backedge, !dbg !879

; <label>:434                                     ; preds = %422
  %435 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str55, i64 0, i64 0), i64 7) #8, !dbg !880
  %436 = icmp eq i32 %435, 0, !dbg !880
  br i1 %436, label %437, label %438, !dbg !881

; <label>:437                                     ; preds = %434
  call void @ProcessHoldings(i8* %4) #8, !dbg !882
  br label %.backedge, !dbg !884

; <label>:438                                     ; preds = %434
  %439 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str56, i64 0, i64 0), i64 7) #8, !dbg !885
  %440 = icmp eq i32 %439, 0, !dbg !885
  br i1 %440, label %441, label %466, !dbg !886

; <label>:441                                     ; preds = %438
  %442 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str57, i64 0, i64 0)) #8, !dbg !887
  %443 = icmp eq i8* %442, null, !dbg !887
  br i1 %443, label %445, label %444, !dbg !890

; <label>:444                                     ; preds = %441
  store i32 2, i32* @Variant, align 4, !dbg !891, !tbaa !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !893
  br label %465, !dbg !894

; <label>:445                                     ; preds = %441
  %446 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0)) #8, !dbg !895
  %447 = icmp eq i8* %446, null, !dbg !895
  br i1 %447, label %449, label %448, !dbg !897

; <label>:448                                     ; preds = %445
  store i32 0, i32* @Variant, align 4, !dbg !898, !tbaa !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false), !dbg !900
  br label %465, !dbg !901

; <label>:449                                     ; preds = %445
  %450 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0)) #8, !dbg !902
  %451 = icmp eq i8* %450, null, !dbg !902
  br i1 %451, label %453, label %452, !dbg !904

; <label>:452                                     ; preds = %449
  store i32 1, i32* @Variant, align 4, !dbg !905, !tbaa !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false), !dbg !907
  br label %465, !dbg !908

; <label>:453                                     ; preds = %449
  %454 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0)) #8, !dbg !909
  %455 = icmp eq i8* %454, null, !dbg !909
  br i1 %455, label %457, label %456, !dbg !911

; <label>:456                                     ; preds = %453
  store i32 3, i32* @Variant, align 4, !dbg !912, !tbaa !217
  store i32 0, i32* @Giveaway, align 4, !dbg !914, !tbaa !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false), !dbg !915
  br label %465, !dbg !916

; <label>:457                                     ; preds = %453
  %458 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str61, i64 0, i64 0)) #8, !dbg !917
  %459 = icmp eq i8* %458, null, !dbg !917
  br i1 %459, label %461, label %460, !dbg !919

; <label>:460                                     ; preds = %457
  store i32 3, i32* @Variant, align 4, !dbg !920, !tbaa !217
  store i32 1, i32* @Giveaway, align 4, !dbg !922, !tbaa !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false), !dbg !923
  br label %465, !dbg !924

; <label>:461                                     ; preds = %457
  %462 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0)) #8, !dbg !925
  %463 = icmp eq i8* %462, null, !dbg !925
  br i1 %463, label %465, label %464, !dbg !927

; <label>:464                                     ; preds = %461
  store i32 4, i32* @Variant, align 4, !dbg !928, !tbaa !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @losers_material to i8*), i64 56, i32 16, i1 false), !dbg !930
  br label %465, !dbg !931

; <label>:465                                     ; preds = %461, %448, %456, %464, %460, %452, %444
  call void @initialize_hash() #8, !dbg !932
  call void @clear_tt() #8, !dbg !933
  call void @reset_ecache() #8, !dbg !934
  br label %.backedge, !dbg !935

; <label>:466                                     ; preds = %438
  %467 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i64 7) #8, !dbg !936
  %468 = icmp eq i32 %467, 0, !dbg !936
  br i1 %468, label %469, label %470, !dbg !937

; <label>:469                                     ; preds = %466
  store i32 1, i32* @is_analyzing, align 4, !dbg !938, !tbaa !258
  store i32 1, i32* @is_pondering, align 4, !dbg !940, !tbaa !258
  call void @think(%struct.move_s* sret %3) #8, !dbg !941
  store i32 0, i32* @ply, align 4, !dbg !942, !tbaa !217
  br label %.backedge, !dbg !943

; <label>:470                                     ; preds = %466
  %471 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i64 4) #8, !dbg !944
  %472 = icmp eq i32 %471, 0, !dbg !944
  br i1 %472, label %473, label %486, !dbg !945

; <label>:473                                     ; preds = %470
  %474 = load i32* @move_number, align 4, !dbg !946, !tbaa !217
  %475 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0), i32 %474) #8, !dbg !948
  %476 = load i32* @move_number, align 4, !dbg !949, !tbaa !217
  %477 = icmp sgt i32 %476, 0, !dbg !951
  br i1 %477, label %478, label %.backedge, !dbg !952

; <label>:478                                     ; preds = %473
  %479 = add nsw i32 %476, -1, !dbg !953
  store i32 %479, i32* @move_number, align 4, !dbg !953, !tbaa !217
  %480 = sext i32 %479 to i64, !dbg !955
  %481 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %480, !dbg !955
  %482 = bitcast %struct.move_x* %481 to i8*, !dbg !955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %482, i64 16, i32 16, i1 false), !dbg !955, !tbaa.struct !394
  %483 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %480, !dbg !956
  call void @unmake(%struct.move_s* %483, i32 0) #8, !dbg !957
  call void @reset_piece_square() #8, !dbg !958
  %484 = load i32* @root_to_move, align 4, !dbg !959, !tbaa !217
  %485 = xor i32 %484, 1, !dbg !959
  store i32 %485, i32* @root_to_move, align 4, !dbg !959, !tbaa !217
  br label %.backedge, !dbg !960

; <label>:486                                     ; preds = %470
  %487 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str66, i64 0, i64 0), i64 5) #8, !dbg !961
  %488 = icmp eq i32 %487, 0, !dbg !961
  br i1 %488, label %489, label %504, !dbg !962

; <label>:489                                     ; preds = %486
  %490 = load i32* @move_number, align 4, !dbg !963, !tbaa !217
  %491 = icmp sgt i32 %490, 1, !dbg !966
  br i1 %491, label %492, label %.backedge, !dbg !967

; <label>:492                                     ; preds = %489
  %493 = add nsw i32 %490, -1, !dbg !968
  store i32 %493, i32* @move_number, align 4, !dbg !968, !tbaa !217
  %494 = sext i32 %493 to i64, !dbg !970
  %495 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %494, !dbg !970
  %496 = bitcast %struct.move_x* %495 to i8*, !dbg !970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %496, i64 16, i32 16, i1 false), !dbg !970, !tbaa.struct !394
  %497 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %494, !dbg !971
  call void @unmake(%struct.move_s* %497, i32 0) #8, !dbg !972
  call void @reset_piece_square() #8, !dbg !973
  %498 = load i32* @move_number, align 4, !dbg !974, !tbaa !217
  %499 = add nsw i32 %498, -1, !dbg !974
  store i32 %499, i32* @move_number, align 4, !dbg !974, !tbaa !217
  %500 = sext i32 %499 to i64, !dbg !975
  %501 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %500, !dbg !975
  %502 = bitcast %struct.move_x* %501 to i8*, !dbg !975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %502, i64 16, i32 16, i1 false), !dbg !975, !tbaa.struct !394
  %503 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %500, !dbg !976
  call void @unmake(%struct.move_s* %503, i32 0) #8, !dbg !977
  call void @reset_piece_square() #8, !dbg !978
  br label %.backedge, !dbg !979

; <label>:504                                     ; preds = %486
  %505 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str67, i64 0, i64 0), i64 4) #8, !dbg !980
  %506 = icmp eq i32 %505, 0, !dbg !980
  br i1 %506, label %.backedge, label %507, !dbg !981

; <label>:507                                     ; preds = %504
  %lhsc = load i8* %4, align 16, !dbg !982
  %508 = icmp eq i8 %lhsc, 46, !dbg !982
  %or.cond58 = and i1 %27, %508, !dbg !983
  br i1 %or.cond58, label %509, label %518, !dbg !983

; <label>:509                                     ; preds = %507
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !208), !dbg !262
  %510 = load i32* @wking_loc, align 4, !dbg !984, !tbaa !217
  %511 = icmp eq i32 %510, 30, !dbg !987
  br i1 %511, label %512, label %513, !dbg !988

; <label>:512                                     ; preds = %509
  store i32 0, i32* @white_castled, align 4, !dbg !989, !tbaa !217
  br label %513, !dbg !990

; <label>:513                                     ; preds = %512, %509
  %514 = load i32* @bking_loc, align 4, !dbg !991, !tbaa !217
  %515 = icmp eq i32 %514, 114, !dbg !993
  br i1 %515, label %516, label %517, !dbg !994

; <label>:516                                     ; preds = %513
  store i32 0, i32* @black_castled, align 4, !dbg !995, !tbaa !217
  br label %517, !dbg !996

; <label>:517                                     ; preds = %516, %513
  store i32 50, i32* @book_ply, align 4, !dbg !997, !tbaa !217
  store i32 0, i32* @ep_square, align 4, !dbg !998, !tbaa !217
  store i32 0, i32* @move_number, align 4, !dbg !999, !tbaa !217
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false), !dbg !1000
  call void @clear_tt() #8, !dbg !1001
  call void @initialize_hash() #8, !dbg !1002
  call void @reset_piece_square() #8, !dbg !1003
  br label %.backedge, !dbg !1004

; <label>:518                                     ; preds = %507
  %519 = icmp eq i8 %lhsc, 99, !dbg !1005
  %or.cond = and i1 %27, %519, !dbg !1006
  br i1 %or.cond, label %520, label %522, !dbg !1006

; <label>:520                                     ; preds = %518
  %521 = xor i32 %edit_color.0, 1, !dbg !1007
  br label %.backedge, !dbg !1007

; <label>:522                                     ; preds = %518
  %523 = icmp eq i8 %lhsc, 35, !dbg !1010
  %or.cond118 = and i1 %27, %523, !dbg !1011
  br i1 %or.cond118, label %524, label %525, !dbg !1011

; <label>:524                                     ; preds = %522
  call void @reset_board() #8, !dbg !1012
  store i32 0, i32* @move_number, align 4, !dbg !1014, !tbaa !217
  br label %.backedge, !dbg !1015

; <label>:525                                     ; preds = %522
  br i1 %27, label %526, label %554, !dbg !1016

; <label>:526                                     ; preds = %525
  call void @llvm.dbg.value(metadata i32 %533, i64 0, metadata !79, metadata !208) #2, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %533, i64 0, metadata !86, metadata !208) #2, !dbg !1019
  call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !87, metadata !208) #2, !dbg !1021
  %isascii.i.i123 = icmp sgt i8 %lhsc, -1, !dbg !1022
  br i1 %isascii.i.i123, label %527, label %532, !dbg !1022

; <label>:527                                     ; preds = %526
  %528 = sext i8 %lhsc to i64, !dbg !1023
  %529 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %528, !dbg !1023
  %530 = load i32* %529, align 4, !dbg !1023, !tbaa !217
  %531 = and i32 %530, 256, !dbg !1024
  br label %isalpha.exit, !dbg !1022

; <label>:532                                     ; preds = %526
  %533 = sext i8 %lhsc to i32, !dbg !1025
  %534 = call i32 @__maskrune(i32 %533, i64 256) #8, !dbg !1026
  br label %isalpha.exit, !dbg !1022

isalpha.exit:                                     ; preds = %527, %532
  %.sink.i.in.i = phi i32 [ %531, %527 ], [ %534, %532 ], !dbg !1027
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !1028
  br i1 %.sink.i.i, label %554, label %535, !dbg !1029

; <label>:535                                     ; preds = %isalpha.exit
  %536 = load i8* %19, align 1, !dbg !321, !tbaa !258
  call void @llvm.dbg.value(metadata i32 %543, i64 0, metadata !79, metadata !208) #2, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %543, i64 0, metadata !86, metadata !208) #2, !dbg !1032
  call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !87, metadata !208) #2, !dbg !1034
  %isascii.i.i119124 = icmp sgt i8 %536, -1, !dbg !1035
  br i1 %isascii.i.i119124, label %537, label %542, !dbg !1035

; <label>:537                                     ; preds = %535
  %538 = sext i8 %536 to i64, !dbg !1036
  %539 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %538, !dbg !1036
  %540 = load i32* %539, align 4, !dbg !1036, !tbaa !217
  %541 = and i32 %540, 256, !dbg !1037
  br label %isalpha.exit122, !dbg !1035

; <label>:542                                     ; preds = %535
  %543 = sext i8 %536 to i32, !dbg !321
  %544 = call i32 @__maskrune(i32 %543, i64 256) #8, !dbg !1038
  br label %isalpha.exit122, !dbg !1035

isalpha.exit122:                                  ; preds = %537, %542
  %.sink.i.in.i120 = phi i32 [ %541, %537 ], [ %544, %542 ], !dbg !1039
  %.sink.i.i121 = icmp eq i32 %.sink.i.in.i120, 0, !dbg !1040
  br i1 %.sink.i.i121, label %554, label %545, !dbg !1041

; <label>:545                                     ; preds = %isalpha.exit122
  %546 = load i8* %20, align 2, !dbg !332, !tbaa !258
  %547 = sext i8 %546 to i32, !dbg !332
  %isdigittmp = add nsw i32 %547, -48, !dbg !1042
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !1042
  br i1 %isdigit, label %548, label %554, !dbg !1043

; <label>:548                                     ; preds = %545
  %549 = bitcast [256 x i8]* %input to i16*, !dbg !1044
  %550 = load i16* %549, align 16, !dbg !1044
  %551 = trunc i16 %550 to i8, !dbg !1044
  %552 = lshr i16 %550, 8
  %553 = trunc i16 %552 to i8
  call void @PutPiece(i32 %edit_color.0, i8 signext %551, i8 signext %553, i32 %547) #8, !dbg !1046
  br label %.backedge, !dbg !1047

; <label>:554                                     ; preds = %isalpha.exit122, %isalpha.exit, %545, %525
  %555 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str71, i64 0, i64 0), i64 7) #8, !dbg !1048
  %556 = icmp eq i32 %555, 0, !dbg !1048
  br i1 %556, label %557, label %558, !dbg !1049

; <label>:557                                     ; preds = %554
  call void @HandlePartner(i8* %18) #8, !dbg !1050
  br label %.backedge, !dbg !1052

; <label>:558                                     ; preds = %554
  %559 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i64 8) #8, !dbg !1053
  %560 = icmp eq i32 %559, 0, !dbg !1053
  br i1 %560, label %561, label %562, !dbg !1054

; <label>:561                                     ; preds = %558
  call void @HandlePartner(i8* %21) #8, !dbg !1055
  br label %.backedge, !dbg !1056

; <label>:562                                     ; preds = %558
  %563 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str73, i64 0, i64 0), i64 5) #8, !dbg !1057
  %564 = icmp eq i32 %563, 0, !dbg !1057
  br i1 %564, label %565, label %566, !dbg !1058

; <label>:565                                     ; preds = %562
  call void @HandlePtell(i8* %4) #8, !dbg !1059
  br label %.backedge, !dbg !1061

; <label>:566                                     ; preds = %562
  %567 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str74, i64 0, i64 0), i64 4) #8, !dbg !1062
  %568 = icmp eq i32 %567, 0, !dbg !1062
  br i1 %568, label %569, label %570, !dbg !1063

; <label>:569                                     ; preds = %566
  call void @run_epd_testsuite() #8, !dbg !1064
  br label %.backedge, !dbg !1066

; <label>:570                                     ; preds = %566
  %571 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2) #8, !dbg !1067
  %572 = icmp eq i32 %571, 0, !dbg !1067
  br i1 %572, label %573, label %577, !dbg !1068

; <label>:573                                     ; preds = %570
  %574 = call i32 (i8*, i8*, ...)* @sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* @fixed_time) #8, !dbg !1069
  %575 = load i32* @fixed_time, align 4, !dbg !1070, !tbaa !217
  %576 = mul nsw i32 %575, 100, !dbg !1071
  store i32 %576, i32* @fixed_time, align 4, !dbg !1072, !tbaa !217
  br label %.backedge, !dbg !1073

; <label>:577                                     ; preds = %570
  %578 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i64 6) #8, !dbg !1074
  %579 = icmp eq i32 %578, 0, !dbg !1074
  br i1 %579, label %.backedge, label %580, !dbg !1075

; <label>:580                                     ; preds = %577
  %581 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i64 5) #8, !dbg !1076
  %582 = icmp eq i32 %581, 0, !dbg !1076
  br i1 %582, label %583, label %590, !dbg !1077

; <label>:583                                     ; preds = %580
  %584 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str78, i64 0, i64 0)) #8, !dbg !1078
  %585 = call i64 @rtime() #8, !dbg !1080
  store i64 %585, i64* @start_time, align 8, !dbg !1081, !tbaa !1082
  %586 = load %struct.__sFILE** @__stdinp, align 8, !dbg !1084, !tbaa !276
  call void @rinput(i8* %6, i32 256, %struct.__sFILE* %586) #8, !dbg !1085
  %587 = call i64 @atol(i8* %6) #8, !dbg !1086
  %588 = mul nsw i64 %587, 100, !dbg !1087
  %589 = trunc i64 %588 to i32, !dbg !1086
  store i32 %589, i32* @pn_time, align 4, !dbg !1088, !tbaa !217
  %putchar60 = call i32 @putchar(i32 10) #2, !dbg !1089
  call void @proofnumbersearch() #8, !dbg !1090
  br label %.backedge, !dbg !1091

; <label>:590                                     ; preds = %580
  %591 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i64 4) #8, !dbg !1092
  %592 = icmp eq i32 %591, 0, !dbg !1092
  br i1 %592, label %593, label %597, !dbg !1093

; <label>:593                                     ; preds = %590
  call void @llvm.dbg.value(metadata i32* %pingnum, i64 0, metadata !61, metadata !208), !dbg !1094
  %594 = call i32 (i8*, i8*, ...)* @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* %pingnum) #8, !dbg !1095
  call void @llvm.dbg.value(metadata i32* %pingnum, i64 0, metadata !61, metadata !208), !dbg !1094
  %595 = load i32* %pingnum, align 4, !dbg !1097, !tbaa !217
  %596 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str80, i64 0, i64 0), i32 %595) #8, !dbg !1098
  br label %.backedge, !dbg !1099

; <label>:597                                     ; preds = %590
  %598 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5) #8, !dbg !1100
  %599 = icmp eq i32 %598, 0, !dbg !1100
  br i1 %599, label %.backedge, label %600, !dbg !1101

; <label>:600                                     ; preds = %597
  %601 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str82, i64 0, i64 0), i64 5) #8, !dbg !1102
  %602 = icmp eq i32 %601, 0, !dbg !1102
  br i1 %602, label %603, label %604, !dbg !1103

; <label>:603                                     ; preds = %600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false), !dbg !1104
  store i32 2, i32* @Variant, align 4, !dbg !1106, !tbaa !217
  call void @init_game() #8, !dbg !1107
  call void @initialize_hash() #8, !dbg !1108
  call void @clear_tt() #8, !dbg !1109
  call void @reset_ecache() #8, !dbg !1110
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !208), !dbg !253
  store i32 0, i32* @fixed_time, align 4, !dbg !1111, !tbaa !217
  store i32 0, i32* @root_to_move, align 4, !dbg !1112, !tbaa !217
  store i32 0, i32* @comp_color, align 4, !dbg !1113, !tbaa !217
  store i32 0, i32* @move_number, align 4, !dbg !1114, !tbaa !217
  store i32 0, i32* @bookidx, align 4, !dbg !1115, !tbaa !217
  store i32 2000, i32* @opp_rating, align 4, !dbg !1116, !tbaa !217
  store i32 2000, i32* @my_rating, align 4, !dbg !1117, !tbaa !217
  br label %.backedge, !dbg !1118

; <label>:604                                     ; preds = %600
  %605 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i64 8) #8, !dbg !1119
  %606 = icmp eq i32 %605, 0, !dbg !1119
  br i1 %606, label %607, label %608, !dbg !1120

; <label>:607                                     ; preds = %604
  call void @setup_epd_line(i8* %23) #8, !dbg !1121
  br label %.backedge, !dbg !1122

; <label>:608                                     ; preds = %604
  %lhsc111 = load i8* %4, align 16, !dbg !1123
  %609 = icmp eq i8 %lhsc111, 46, !dbg !1123
  br i1 %609, label %.backedge, label %610, !dbg !1125

; <label>:610                                     ; preds = %608
  %611 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i64 2) #8, !dbg !1126
  %612 = icmp eq i32 %611, 0, !dbg !1126
  br i1 %612, label %613, label %617, !dbg !1128

; <label>:613                                     ; preds = %610
  %614 = call i32 (i8*, i8*, ...)* @sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* @maxdepth) #8, !dbg !1129
  %615 = load i32* @maxdepth, align 4, !dbg !1131, !tbaa !217
  %616 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str84, i64 0, i64 0), i32 %615) #8, !dbg !1132
  br label %.backedge, !dbg !1133

; <label>:617                                     ; preds = %610
  %618 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str85, i64 0, i64 0), i64 4) #8, !dbg !1134
  %619 = icmp eq i32 %618, 0, !dbg !1134
  br i1 %619, label %.backedge, label %620, !dbg !1136

; <label>:620                                     ; preds = %617
  %621 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str86, i64 0, i64 0), i64 8) #8, !dbg !1137
  %622 = icmp eq i32 %621, 0, !dbg !1137
  br i1 %622, label %623, label %624, !dbg !1139

; <label>:623                                     ; preds = %620
  %puts62 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str120, i64 0, i64 0)), !dbg !1140
  %puts63 = call i32 @puts(i8* getelementptr inbounds ([52 x i8]* @str121, i64 0, i64 0)), !dbg !1142
  %puts64 = call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str122, i64 0, i64 0)), !dbg !1143
  %puts65 = call i32 @puts(i8* getelementptr inbounds ([70 x i8]* @str123, i64 0, i64 0)), !dbg !1144
  %puts66 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str124, i64 0, i64 0)), !dbg !1145
  store i32 2, i32* @xb_mode, align 4, !dbg !1146, !tbaa !217
  br label %.backedge, !dbg !1147

; <label>:624                                     ; preds = %620
  %625 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i64 8) #8, !dbg !1148
  %626 = icmp eq i32 %625, 0, !dbg !1148
  br i1 %626, label %.backedge, label %627, !dbg !1150

; <label>:627                                     ; preds = %624
  %628 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str93, i64 0, i64 0), i64 8) #8, !dbg !1151
  %629 = icmp eq i32 %628, 0, !dbg !1151
  br i1 %629, label %630, label %631, !dbg !1153

; <label>:630                                     ; preds = %627
  %puts67 = call i32 @puts(i8* getelementptr inbounds ([64 x i8]* @str125, i64 0, i64 0)), !dbg !1154
  br label %.backedge, !dbg !1156

; <label>:631                                     ; preds = %627
  %632 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str95, i64 0, i64 0)) #8, !dbg !1157
  %633 = icmp eq i32 %632, 0, !dbg !1157
  br i1 %633, label %634, label %637, !dbg !1159

; <label>:634                                     ; preds = %631
  %635 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #8, !dbg !1160
  %puts68 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str126, i64 0, i64 0)), !dbg !1162
  %puts69 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str127, i64 0, i64 0)), !dbg !1163
  %puts70 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str128, i64 0, i64 0)), !dbg !1164
  %puts71 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str129, i64 0, i64 0)), !dbg !1165
  %puts72 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str130, i64 0, i64 0)), !dbg !1166
  %puts73 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str131, i64 0, i64 0)), !dbg !1167
  %puts74 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str132, i64 0, i64 0)), !dbg !1168
  %puts75 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str133, i64 0, i64 0)), !dbg !1169
  %puts76 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str134, i64 0, i64 0)), !dbg !1170
  %puts77 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str135, i64 0, i64 0)), !dbg !1171
  %puts78 = call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str136, i64 0, i64 0)), !dbg !1172
  %puts79 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str137, i64 0, i64 0)), !dbg !1173
  %puts80 = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str138, i64 0, i64 0)), !dbg !1174
  %puts81 = call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str139, i64 0, i64 0)), !dbg !1175
  %puts82 = call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str140, i64 0, i64 0)), !dbg !1176
  %puts83 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str141, i64 0, i64 0)), !dbg !1177
  %puts84 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str142, i64 0, i64 0)), !dbg !1178
  %puts85 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str143, i64 0, i64 0)), !dbg !1179
  %puts86 = call i32 @puts(i8* getelementptr inbounds ([53 x i8]* @str144, i64 0, i64 0)), !dbg !1180
  %puts87 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str145, i64 0, i64 0)), !dbg !1181
  %puts88 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str146, i64 0, i64 0)), !dbg !1182
  %puts89 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str147, i64 0, i64 0)), !dbg !1183
  %puts90 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str148, i64 0, i64 0)), !dbg !1184
  %636 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #8, !dbg !1185
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !208), !dbg !256
  store i32 0, i32* %show_board, align 4, !dbg !1186, !tbaa !258
  br label %.backedge, !dbg !1187

; <label>:637                                     ; preds = %631
  %638 = load i32* @xb_mode, align 4, !dbg !1188, !tbaa !217
  %639 = icmp eq i32 %638, 0, !dbg !1188
  br i1 %639, label %640, label %.backedge, !dbg !1190

; <label>:640                                     ; preds = %637
  %641 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %4) #8, !dbg !1191
  br label %.backedge, !dbg !1193
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @read_rcfile() #3

; Function Attrs: optsize
declare void @initialize_zobrist() #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

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
declare void @setbuf(%struct.__sFILE* nocapture, i8*) #4

; Function Attrs: optsize
declare void @start_up() #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #4

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
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #4

; Function Attrs: optsize
declare i32 @eval(i32, i32) #3

; Function Attrs: optsize
declare void @CheckBadFlow(i32) #3

; Function Attrs: optsize
declare void @display_board(%struct.__sFILE*, i32) #3

; Function Attrs: optsize
declare void @rinput(i8*, i32, %struct.__sFILE*) #3

; Function Attrs: optsize
declare i32 @is_move(i8*) #3

; Function Attrs: optsize
declare i32 @verify_coord(i8*, %struct.move_s*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare void @free_hash() #3

; Function Attrs: optsize
declare void @free_ecache() #3

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare void @toggle_bool(i32*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare i64 @rtime() #3

; Function Attrs: optsize
declare void @perft(i32) #3

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #3

; Function Attrs: optsize
declare void @ResetHandValue() #3

; Function Attrs: optsize
declare void (i32)* @signal(i32, void (i32)*) #3

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

; Function Attrs: optsize
declare i32 @__tolower(i32) #3

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

attributes #0 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!204, !205, !206}
!llvm.ident = !{!207}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !14, globals: !100, imports: !203)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15, !71, !77, !80, !88, !91, !94}
!15 = !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !16, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !21)
!16 = !DISubroutineType(types: !17)
!17 = !{!13, !13, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23, !24, !28, !29, !30, !31, !41, !42, !43, !45, !46, !50, !59, !60, !61, !62, !63, !64}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !15, file: !1, line: 75, type: !13)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !15, file: !1, line: 75, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "input", scope: !15, file: !1, line: 77, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, align: 8, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 256)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !15, file: !1, line: 77, type: !19)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !15, file: !1, line: 77, type: !25)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "readbuff", scope: !15, file: !1, line: 78, type: !25)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "move", scope: !15, file: !1, line: 79, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_s", file: !4, line: 102, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 95, size: 192, align: 32, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !33, file: !4, line: 96, baseType: !13, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !33, file: !4, line: 97, baseType: !13, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "captured", scope: !33, file: !4, line: 98, baseType: !13, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "promoted", scope: !33, file: !4, line: 99, baseType: !13, size: 32, align: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "castled", scope: !33, file: !4, line: 100, baseType: !13, size: 32, align: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !33, file: !4, line: 101, baseType: !13, size: 32, align: 32, offset: 160)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "comp_move", scope: !15, file: !1, line: 79, type: !32)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depth", scope: !15, file: !1, line: 80, type: !13)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "force_mode", scope: !15, file: !1, line: 81, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xbool", file: !4, line: 14, baseType: !3)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "show_board", scope: !15, file: !1, line: 81, type: !44)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "game_history", scope: !15, file: !1, line: 82, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 115200, align: 32, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 600)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "game_history_x", scope: !15, file: !1, line: 83, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 76800, align: 32, elements: !48)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_x", file: !4, line: 109, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 104, size: 128, align: 32, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cap_num", scope: !53, file: !4, line: 105, baseType: !13, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "was_promoted", scope: !53, file: !4, line: 106, baseType: !13, size: 32, align: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "epsq", scope: !53, file: !4, line: 107, baseType: !13, size: 32, align: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "fifty", scope: !53, file: !4, line: 108, baseType: !13, size: 32, align: 32, offset: 96)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_edit_mode", scope: !15, file: !1, line: 84, type: !13)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "edit_color", scope: !15, file: !1, line: 84, type: !13)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pingnum", scope: !15, file: !1, line: 85, type: !13)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "braindeadinterface", scope: !15, file: !1, line: 86, type: !13)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "automode", scope: !15, file: !1, line: 87, type: !13)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xstart_time", scope: !15, file: !1, line: 88, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtime_t", file: !4, line: 161, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !67, line: 30, baseType: !68)
!67 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !69, line: 120, baseType: !70)
!69 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!70 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!71 = !DISubprogram(name: "tolower", scope: !72, file: !72, line: 292, type: !73, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, variables: !75)
!72 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!73 = !DISubroutineType(types: !74)
!74 = !{!13, !13}
!75 = !{!76}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !71, file: !72, line: 292, type: !13)
!77 = !DISubprogram(name: "isalpha", scope: !72, file: !72, line: 218, type: !73, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, variables: !78)
!78 = !{!79}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !77, file: !72, line: 218, type: !13)
!80 = !DISubprogram(name: "__istype", scope: !72, file: !72, line: 153, type: !81, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !85)
!81 = !DISubroutineType(types: !82)
!82 = !{!13, !83, !84}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !69, line: 70, baseType: !13)
!84 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!85 = !{!86, !87}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !80, file: !72, line: 153, type: !83)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !80, file: !72, line: 153, type: !84)
!88 = !DISubprogram(name: "isascii", scope: !72, file: !72, line: 135, type: !73, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !89)
!89 = !{!90}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !88, file: !72, line: 135, type: !13)
!91 = !DISubprogram(name: "isdigit", scope: !72, file: !72, line: 237, type: !73, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !92)
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !91, file: !72, line: 237, type: !13)
!94 = !DISubprogram(name: "__isctype", scope: !72, file: !72, line: 164, type: !95, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!83, !83, !84}
!97 = !{!98, !99}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !94, file: !72, line: 164, type: !83)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !94, file: !72, line: 164, type: !84)
!100 = !{!101, !105, !106, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !124, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !152, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !170, !173, !175, !176, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!101 = !DIGlobalVariable(name: "divider", scope: !0, file: !1, line: 16, type: !102, isLocal: false, isDefinition: true, variable: [50 x i8]* @divider)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 400, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 50)
!105 = !DIGlobalVariable(name: "dummy", scope: !0, file: !1, line: 17, type: !32, isLocal: false, isDefinition: true, variable: %struct.move_s* @dummy)
!106 = !DIGlobalVariable(name: "board", scope: !0, file: !1, line: 19, type: !107, isLocal: false, isDefinition: true, variable: [144 x i32]* @board)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 4608, align: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 144)
!110 = !DIGlobalVariable(name: "moved", scope: !0, file: !1, line: 19, type: !107, isLocal: false, isDefinition: true, variable: [144 x i32]* @moved)
!111 = !DIGlobalVariable(name: "ep_square", scope: !0, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, variable: i32* @ep_square)
!112 = !DIGlobalVariable(name: "white_to_move", scope: !0, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, variable: i32* @white_to_move)
!113 = !DIGlobalVariable(name: "comp_color", scope: !0, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, variable: i32* @comp_color)
!114 = !DIGlobalVariable(name: "wking_loc", scope: !0, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, variable: i32* @wking_loc)
!115 = !DIGlobalVariable(name: "bking_loc", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @bking_loc)
!116 = !DIGlobalVariable(name: "white_castled", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @white_castled)
!117 = !DIGlobalVariable(name: "black_castled", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @black_castled)
!118 = !DIGlobalVariable(name: "result", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @result)
!119 = !DIGlobalVariable(name: "ply", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @ply)
!120 = !DIGlobalVariable(name: "pv_length", scope: !0, file: !1, line: 20, type: !121, isLocal: false, isDefinition: true, variable: [300 x i32]* @pv_length)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 9600, align: 32, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 300)
!124 = !DIGlobalVariable(name: "pieces", scope: !0, file: !1, line: 21, type: !125, isLocal: false, isDefinition: true, variable: [62 x i32]* @pieces)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1984, align: 32, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 62)
!128 = !DIGlobalVariable(name: "squares", scope: !0, file: !1, line: 21, type: !107, isLocal: false, isDefinition: true, variable: [144 x i32]* @squares)
!129 = !DIGlobalVariable(name: "num_pieces", scope: !0, file: !1, line: 21, type: !13, isLocal: false, isDefinition: true, variable: i32* @num_pieces)
!130 = !DIGlobalVariable(name: "i_depth", scope: !0, file: !1, line: 21, type: !13, isLocal: false, isDefinition: true, variable: i32* @i_depth)
!131 = !DIGlobalVariable(name: "fifty", scope: !0, file: !1, line: 21, type: !13, isLocal: false, isDefinition: true, variable: i32* @fifty)
!132 = !DIGlobalVariable(name: "piece_count", scope: !0, file: !1, line: 21, type: !13, isLocal: false, isDefinition: true, variable: i32* @piece_count)
!133 = !DIGlobalVariable(name: "nodes", scope: !0, file: !1, line: 23, type: !13, isLocal: false, isDefinition: true, variable: i32* @nodes)
!134 = !DIGlobalVariable(name: "raw_nodes", scope: !0, file: !1, line: 23, type: !13, isLocal: false, isDefinition: true, variable: i32* @raw_nodes)
!135 = !DIGlobalVariable(name: "qnodes", scope: !0, file: !1, line: 23, type: !13, isLocal: false, isDefinition: true, variable: i32* @qnodes)
!136 = !DIGlobalVariable(name: "killer_scores", scope: !0, file: !1, line: 23, type: !121, isLocal: false, isDefinition: true, variable: [300 x i32]* @killer_scores)
!137 = !DIGlobalVariable(name: "killer_scores2", scope: !0, file: !1, line: 24, type: !121, isLocal: false, isDefinition: true, variable: [300 x i32]* @killer_scores2)
!138 = !DIGlobalVariable(name: "killer_scores3", scope: !0, file: !1, line: 24, type: !121, isLocal: false, isDefinition: true, variable: [300 x i32]* @killer_scores3)
!139 = !DIGlobalVariable(name: "moves_to_tc", scope: !0, file: !1, line: 24, type: !13, isLocal: false, isDefinition: true, variable: i32* @moves_to_tc)
!140 = !DIGlobalVariable(name: "min_per_game", scope: !0, file: !1, line: 24, type: !13, isLocal: false, isDefinition: true, variable: i32* @min_per_game)
!141 = !DIGlobalVariable(name: "sec_per_game", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @sec_per_game)
!142 = !DIGlobalVariable(name: "inc", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @inc)
!143 = !DIGlobalVariable(name: "time_left", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @time_left)
!144 = !DIGlobalVariable(name: "opp_time", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @opp_time)
!145 = !DIGlobalVariable(name: "time_cushion", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @time_cushion)
!146 = !DIGlobalVariable(name: "time_for_move", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @time_for_move)
!147 = !DIGlobalVariable(name: "cur_score", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @cur_score)
!148 = !DIGlobalVariable(name: "history_h", scope: !0, file: !1, line: 27, type: !149, isLocal: false, isDefinition: true, variable: [144 x [144 x i32]]* @history_h)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 663552, align: 32, elements: !151)
!150 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!151 = !{!109, !109}
!152 = !DIGlobalVariable(name: "hash_history", scope: !0, file: !1, line: 29, type: !153, isLocal: false, isDefinition: true, variable: [600 x i32]* @hash_history)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 19200, align: 32, elements: !48)
!154 = !DIGlobalVariable(name: "move_number", scope: !0, file: !1, line: 30, type: !13, isLocal: false, isDefinition: true, variable: i32* @move_number)
!155 = !DIGlobalVariable(name: "captures", scope: !0, file: !1, line: 32, type: !44, isLocal: false, isDefinition: true, variable: i32* @captures)
!156 = !DIGlobalVariable(name: "searching_pv", scope: !0, file: !1, line: 32, type: !44, isLocal: false, isDefinition: true, variable: i32* @searching_pv)
!157 = !DIGlobalVariable(name: "post", scope: !0, file: !1, line: 32, type: !44, isLocal: false, isDefinition: true, variable: i32* @post)
!158 = !DIGlobalVariable(name: "time_exit", scope: !0, file: !1, line: 32, type: !44, isLocal: false, isDefinition: true, variable: i32* @time_exit)
!159 = !DIGlobalVariable(name: "time_failure", scope: !0, file: !1, line: 32, type: !44, isLocal: false, isDefinition: true, variable: i32* @time_failure)
!160 = !DIGlobalVariable(name: "xb_mode", scope: !0, file: !1, line: 34, type: !13, isLocal: false, isDefinition: true, variable: i32* @xb_mode)
!161 = !DIGlobalVariable(name: "maxdepth", scope: !0, file: !1, line: 34, type: !13, isLocal: false, isDefinition: true, variable: i32* @maxdepth)
!162 = !DIGlobalVariable(name: "phase", scope: !0, file: !1, line: 36, type: !13, isLocal: false, isDefinition: true, variable: i32* @phase)
!163 = !DIGlobalVariable(name: "root_to_move", scope: !0, file: !1, line: 37, type: !13, isLocal: false, isDefinition: true, variable: i32* @root_to_move)
!164 = !DIGlobalVariable(name: "my_rating", scope: !0, file: !1, line: 39, type: !13, isLocal: false, isDefinition: true, variable: i32* @my_rating)
!165 = !DIGlobalVariable(name: "opp_rating", scope: !0, file: !1, line: 39, type: !13, isLocal: false, isDefinition: true, variable: i32* @opp_rating)
!166 = !DIGlobalVariable(name: "setcode", scope: !0, file: !1, line: 41, type: !167, isLocal: false, isDefinition: true, variable: [30 x i8]* @setcode)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 240, align: 8, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 30)
!170 = !DIGlobalVariable(name: "pv", scope: !0, file: !1, line: 43, type: !171, isLocal: false, isDefinition: true, variable: [300 x [300 x %struct.move_s]]* @pv)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 17280000, align: 32, elements: !172)
!172 = !{!123, !123}
!173 = !DIGlobalVariable(name: "killer1", scope: !0, file: !1, line: 43, type: !174, isLocal: false, isDefinition: true, variable: [300 x %struct.move_s]* @killer1)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 57600, align: 32, elements: !122)
!175 = !DIGlobalVariable(name: "killer2", scope: !0, file: !1, line: 43, type: !174, isLocal: false, isDefinition: true, variable: [300 x %struct.move_s]* @killer2)
!176 = !DIGlobalVariable(name: "killer3", scope: !0, file: !1, line: 44, type: !174, isLocal: false, isDefinition: true, variable: [300 x %struct.move_s]* @killer3)
!177 = !DIGlobalVariable(name: "path_x", scope: !0, file: !1, line: 46, type: !178, isLocal: false, isDefinition: true, variable: [300 x %struct.move_x]* @path_x)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 38400, align: 32, elements: !122)
!179 = !DIGlobalVariable(name: "path", scope: !0, file: !1, line: 47, type: !174, isLocal: false, isDefinition: true, variable: [300 x %struct.move_s]* @path)
!180 = !DIGlobalVariable(name: "start_time", scope: !0, file: !1, line: 49, type: !65, isLocal: false, isDefinition: true, variable: i64* @start_time)
!181 = !DIGlobalVariable(name: "is_promoted", scope: !0, file: !1, line: 51, type: !125, isLocal: false, isDefinition: true, variable: [62 x i32]* @is_promoted)
!182 = !DIGlobalVariable(name: "NTries", scope: !0, file: !1, line: 53, type: !150, isLocal: false, isDefinition: true, variable: i32* @NTries)
!183 = !DIGlobalVariable(name: "NCuts", scope: !0, file: !1, line: 53, type: !150, isLocal: false, isDefinition: true, variable: i32* @NCuts)
!184 = !DIGlobalVariable(name: "TExt", scope: !0, file: !1, line: 53, type: !150, isLocal: false, isDefinition: true, variable: i32* @TExt)
!185 = !DIGlobalVariable(name: "PVS", scope: !0, file: !1, line: 54, type: !150, isLocal: false, isDefinition: true, variable: i32* @PVS)
!186 = !DIGlobalVariable(name: "FULL", scope: !0, file: !1, line: 54, type: !150, isLocal: false, isDefinition: true, variable: i32* @FULL)
!187 = !DIGlobalVariable(name: "PVSF", scope: !0, file: !1, line: 54, type: !150, isLocal: false, isDefinition: true, variable: i32* @PVSF)
!188 = !DIGlobalVariable(name: "ext_check", scope: !0, file: !1, line: 55, type: !150, isLocal: false, isDefinition: true, variable: i32* @ext_check)
!189 = !DIGlobalVariable(name: "is_pondering", scope: !0, file: !1, line: 57, type: !44, isLocal: false, isDefinition: true, variable: i32* @is_pondering)
!190 = !DIGlobalVariable(name: "allow_pondering", scope: !0, file: !1, line: 57, type: !44, isLocal: false, isDefinition: true, variable: i32* @allow_pondering)
!191 = !DIGlobalVariable(name: "is_analyzing", scope: !0, file: !1, line: 57, type: !44, isLocal: false, isDefinition: true, variable: i32* @is_analyzing)
!192 = !DIGlobalVariable(name: "bookidx", scope: !0, file: !1, line: 59, type: !150, isLocal: false, isDefinition: true, variable: i32* @bookidx)
!193 = !DIGlobalVariable(name: "Variant", scope: !0, file: !1, line: 61, type: !13, isLocal: false, isDefinition: true, variable: i32* @Variant)
!194 = !DIGlobalVariable(name: "Giveaway", scope: !0, file: !1, line: 62, type: !13, isLocal: false, isDefinition: true, variable: i32* @Giveaway)
!195 = !DIGlobalVariable(name: "my_partner", scope: !0, file: !1, line: 64, type: !25, isLocal: false, isDefinition: true, variable: [256 x i8]* @my_partner)
!196 = !DIGlobalVariable(name: "have_partner", scope: !0, file: !1, line: 65, type: !44, isLocal: false, isDefinition: true, variable: i32* @have_partner)
!197 = !DIGlobalVariable(name: "must_sit", scope: !0, file: !1, line: 66, type: !44, isLocal: false, isDefinition: true, variable: i32* @must_sit)
!198 = !DIGlobalVariable(name: "go_fast", scope: !0, file: !1, line: 67, type: !44, isLocal: false, isDefinition: true, variable: i32* @go_fast)
!199 = !DIGlobalVariable(name: "fixed_time", scope: !0, file: !1, line: 69, type: !13, isLocal: false, isDefinition: true, variable: i32* @fixed_time)
!200 = !DIGlobalVariable(name: "book_ply", scope: !0, file: !1, line: 71, type: !13, isLocal: false, isDefinition: true, variable: i32* @book_ply)
!201 = !DIGlobalVariable(name: "use_book", scope: !0, file: !1, line: 72, type: !13, isLocal: false, isDefinition: true, variable: i32* @use_book)
!202 = !DIGlobalVariable(name: "opening_history", scope: !0, file: !1, line: 73, type: !25, isLocal: false, isDefinition: true, variable: [256 x i8]* @opening_history)
!203 = !{}
!204 = !{i32 2, !"Dwarf Version", i32 2}
!205 = !{i32 2, !"Debug Info Version", i32 700000003}
!206 = !{i32 1, !"PIC Level", i32 2}
!207 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!208 = !DIExpression()
!209 = !DILocation(line: 75, column: 15, scope: !15)
!210 = !DILocation(line: 75, column: 27, scope: !15)
!211 = !DILocation(line: 77, column: 3, scope: !15)
!212 = !DILocation(line: 77, column: 8, scope: !15)
!213 = !DILocation(line: 77, column: 29, scope: !15)
!214 = !DILocation(line: 78, column: 3, scope: !15)
!215 = !DILocation(line: 78, column: 8, scope: !15)
!216 = !DILocation(line: 80, column: 7, scope: !15)
!217 = !{!218, !218, i64 0}
!218 = !{!"int", !219, i64 0}
!219 = !{!"omnipotent char", !220, i64 0}
!220 = !{!"Simple C/C++ TBAA"}
!221 = !DILocation(line: 82, column: 3, scope: !15)
!222 = !DILocation(line: 82, column: 10, scope: !15)
!223 = !DILocation(line: 83, column: 3, scope: !15)
!224 = !DILocation(line: 83, column: 10, scope: !15)
!225 = !DILocation(line: 90, column: 3, scope: !15)
!226 = !DILocation(line: 91, column: 3, scope: !15)
!227 = !DILocation(line: 93, column: 11, scope: !15)
!228 = !DILocation(line: 96, column: 3, scope: !15)
!229 = !DILocation(line: 99, column: 3, scope: !15)
!230 = !DILocation(line: 101, column: 3, scope: !15)
!231 = !DILocation(line: 102, column: 3, scope: !15)
!232 = !DILocation(line: 103, column: 3, scope: !15)
!233 = !DILocation(line: 105, column: 16, scope: !15)
!234 = !DILocation(line: 106, column: 14, scope: !15)
!235 = !DILocation(line: 107, column: 12, scope: !15)
!236 = !DILocation(line: 108, column: 12, scope: !15)
!237 = !DILocation(line: 109, column: 10, scope: !15)
!238 = !DILocation(line: 110, column: 11, scope: !15)
!239 = !DILocation(line: 111, column: 15, scope: !15)
!240 = !DILocation(line: 112, column: 7, scope: !15)
!241 = !DILocation(line: 86, column: 7, scope: !15)
!242 = !DILocation(line: 114, column: 15, scope: !15)
!243 = !DILocation(line: 115, column: 16, scope: !15)
!244 = !DILocation(line: 116, column: 13, scope: !15)
!245 = !DILocation(line: 117, column: 26, scope: !15)
!246 = !DILocation(line: 117, column: 13, scope: !15)
!247 = !DILocation(line: 118, column: 12, scope: !15)
!248 = !DILocation(line: 119, column: 14, scope: !15)
!249 = !DILocation(line: 120, column: 11, scope: !15)
!250 = !DILocation(line: 121, column: 15, scope: !15)
!251 = !DILocation(line: 87, column: 7, scope: !15)
!252 = !DILocation(line: 124, column: 11, scope: !15)
!253 = !DILocation(line: 81, column: 9, scope: !15)
!254 = !DILocation(line: 126, column: 14, scope: !15)
!255 = !DILocation(line: 84, column: 21, scope: !15)
!256 = !DILocation(line: 81, column: 21, scope: !15)
!257 = !DILocation(line: 128, column: 14, scope: !15)
!258 = !{!219, !219, i64 0}
!259 = !DILocation(line: 129, column: 16, scope: !15)
!260 = !DILocation(line: 130, column: 19, scope: !15)
!261 = !DILocation(line: 131, column: 16, scope: !15)
!262 = !DILocation(line: 84, column: 7, scope: !15)
!263 = !DILocation(line: 133, column: 16, scope: !15)
!264 = !DILocation(line: 134, column: 12, scope: !15)
!265 = !DILocation(line: 135, column: 11, scope: !15)
!266 = !DILocation(line: 136, column: 14, scope: !15)
!267 = !DILocation(line: 137, column: 9, scope: !15)
!268 = !DILocation(line: 138, column: 16, scope: !15)
!269 = !DILocation(line: 139, column: 12, scope: !15)
!270 = !DILocation(line: 141, column: 15, scope: !15)
!271 = !DILocation(line: 142, column: 3, scope: !15)
!272 = !DILocation(line: 143, column: 3, scope: !15)
!273 = !DILocation(line: 145, column: 31, scope: !15)
!274 = !DILocation(line: 145, column: 29, scope: !15)
!275 = !DILocation(line: 147, column: 11, scope: !15)
!276 = !{!277, !277, i64 0}
!277 = !{!"any pointer", !219, i64 0}
!278 = !DILocation(line: 147, column: 3, scope: !15)
!279 = !DILocation(line: 148, column: 11, scope: !15)
!280 = !DILocation(line: 148, column: 3, scope: !15)
!281 = !DILocation(line: 149, column: 3, scope: !15)
!282 = !DILocation(line: 152, column: 12, scope: !283)
!283 = distinct !DILexicalBlock(scope: !15, file: !1, line: 152, column: 7)
!284 = !DILocation(line: 152, column: 7, scope: !15)
!285 = !DILocation(line: 154, column: 4, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !1, line: 153, column: 3)
!287 = !DILocation(line: 155, column: 22, scope: !286)
!288 = !DILocation(line: 155, column: 9, scope: !286)
!289 = !DILocation(line: 156, column: 2, scope: !286)
!290 = !DILocation(line: 413, column: 15, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 412, column: 46)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 412, column: 16)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 409, column: 16)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 394, column: 16)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 389, column: 11)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 381, column: 10)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 348, column: 9)
!298 = distinct !DILexicalBlock(scope: !15, file: !1, line: 159, column: 16)
!299 = !DILocation(line: 536, column: 15, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 535, column: 45)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 535, column: 16)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 531, column: 16)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 527, column: 16)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 524, column: 16)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 519, column: 16)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 514, column: 16)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 511, column: 16)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 505, column: 16)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 499, column: 16)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 496, column: 16)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 493, column: 16)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 488, column: 16)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 484, column: 16)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 473, column: 16)
!315 = distinct !DILexicalBlock(scope: !292, file: !1, line: 420, column: 16)
!316 = !DILocation(line: 561, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 560, column: 47)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 560, column: 16)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 541, column: 16)
!320 = distinct !DILexicalBlock(scope: !301, file: !1, line: 538, column: 16)
!321 = !DILocation(line: 660, column: 20, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 658, column: 16)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 654, column: 16)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 651, column: 16)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 639, column: 16)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 635, column: 16)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 623, column: 16)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 613, column: 16)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 607, column: 16)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 568, column: 16)
!331 = distinct !DILexicalBlock(scope: !318, file: !1, line: 565, column: 16)
!332 = !DILocation(line: 661, column: 20, scope: !322)
!333 = !DILocation(line: 668, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 667, column: 49)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 667, column: 16)
!336 = distinct !DILexicalBlock(scope: !322, file: !1, line: 664, column: 16)
!337 = !DILocation(line: 677, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 676, column: 43)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 676, column: 16)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 673, column: 16)
!341 = distinct !DILexicalBlock(scope: !335, file: !1, line: 670, column: 16)
!342 = !DILocation(line: 719, column: 22, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 718, column: 49)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 718, column: 16)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 697, column: 16)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 694, column: 16)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 690, column: 16)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 682, column: 16)
!349 = distinct !DILexicalBlock(scope: !339, file: !1, line: 680, column: 16)
!350 = !DILocation(line: 351, column: 30, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 349, column: 40)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 349, column: 11)
!353 = distinct !DILexicalBlock(scope: !297, file: !1, line: 348, column: 47)
!354 = !DILocation(line: 168, column: 19, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 163, column: 42)
!356 = distinct !DILexicalBlock(scope: !298, file: !1, line: 162, column: 9)
!357 = !DILocation(line: 162, column: 10, scope: !356)
!358 = !DILocation(line: 162, column: 23, scope: !356)
!359 = !DILocation(line: 162, column: 27, scope: !356)
!360 = !DILocation(line: 162, column: 41, scope: !356)
!361 = !DILocation(line: 162, column: 55, scope: !356)
!362 = !DILocation(line: 166, column: 20, scope: !355)
!363 = !{i64 0, i64 4, !217, i64 4, i64 4, !217, i64 8, i64 4, !217, i64 12, i64 4, !217, i64 16, i64 4, !217, i64 20, i64 4, !217}
!364 = !DILocation(line: 170, column: 11, scope: !355)
!365 = !DILocation(line: 173, column: 12, scope: !366)
!366 = distinct !DILexicalBlock(scope: !355, file: !1, line: 173, column: 11)
!367 = !DILocation(line: 173, column: 32, scope: !366)
!368 = !DILocation(line: 173, column: 21, scope: !366)
!369 = !DILocation(line: 177, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 176, column: 8)
!371 = distinct !DILexicalBlock(scope: !366, file: !1, line: 174, column: 2)
!372 = !DILocation(line: 177, column: 28, scope: !370)
!373 = !DILocation(line: 179, column: 17, scope: !370)
!374 = !DILocation(line: 181, column: 28, scope: !370)
!375 = !DILocation(line: 182, column: 13, scope: !370)
!376 = !DILocation(line: 182, column: 24, scope: !370)
!377 = !DILocation(line: 182, column: 29, scope: !370)
!378 = !DILocation(line: 184, column: 23, scope: !370)
!379 = !DILocation(line: 184, column: 28, scope: !370)
!380 = !DILocation(line: 187, column: 8, scope: !370)
!381 = !DILocation(line: 79, column: 16, scope: !15)
!382 = !DILocation(line: 191, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !370, file: !1, line: 189, column: 4)
!384 = !DILocation(line: 193, column: 34, scope: !383)
!385 = !DILocation(line: 193, column: 19, scope: !383)
!386 = !DILocation(line: 193, column: 6, scope: !383)
!387 = !DILocation(line: 193, column: 32, scope: !383)
!388 = !DILocation(line: 195, column: 6, scope: !383)
!389 = !DILocation(line: 195, column: 34, scope: !383)
!390 = !DILocation(line: 196, column: 6, scope: !383)
!391 = !DILocation(line: 199, column: 32, scope: !383)
!392 = !DILocation(line: 199, column: 6, scope: !383)
!393 = !DILocation(line: 199, column: 38, scope: !383)
!394 = !{i64 0, i64 4, !217, i64 4, i64 4, !217, i64 8, i64 4, !217, i64 12, i64 4, !217}
!395 = !DILocation(line: 201, column: 22, scope: !383)
!396 = !DILocation(line: 202, column: 13, scope: !383)
!397 = !DILocation(line: 205, column: 10, scope: !398)
!398 = distinct !DILexicalBlock(scope: !383, file: !1, line: 205, column: 10)
!399 = !DILocation(line: 205, column: 10, scope: !383)
!400 = !DILocation(line: 206, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 205, column: 22)
!402 = !DILocation(line: 207, column: 6, scope: !401)
!403 = !DILocation(line: 208, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !1, line: 208, column: 15)
!405 = !DILocation(line: 208, column: 21, scope: !404)
!406 = !DILocation(line: 208, column: 15, scope: !398)
!407 = !DILocation(line: 209, column: 17, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 208, column: 28)
!409 = !DILocation(line: 210, column: 6, scope: !408)
!410 = !DILocation(line: 212, column: 19, scope: !383)
!411 = !DILocation(line: 214, column: 6, scope: !383)
!412 = !DILocation(line: 216, column: 10, scope: !413)
!413 = distinct !DILexicalBlock(scope: !383, file: !1, line: 216, column: 10)
!414 = !DILocation(line: 216, column: 19, scope: !413)
!415 = !DILocation(line: 216, column: 10, scope: !383)
!416 = !DILocation(line: 217, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 217, column: 12)
!418 = distinct !DILexicalBlock(scope: !413, file: !1, line: 216, column: 25)
!419 = !DILocation(line: 217, column: 12, scope: !418)
!420 = !DILocation(line: 218, column: 3, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !1, line: 217, column: 23)
!422 = !DILocation(line: 219, column: 8, scope: !421)
!423 = !DILocation(line: 221, column: 3, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !1, line: 220, column: 13)
!425 = !DILocation(line: 225, column: 14, scope: !383)
!426 = !DILocation(line: 227, column: 48, scope: !383)
!427 = !DILocation(line: 228, column: 24, scope: !383)
!428 = !DILocation(line: 228, column: 16, scope: !383)
!429 = !DILocation(line: 228, column: 33, scope: !383)
!430 = !DILocation(line: 228, column: 31, scope: !383)
!431 = !DILocation(line: 228, column: 7, scope: !383)
!432 = !DILocation(line: 227, column: 6, scope: !383)
!433 = !DILocation(line: 231, column: 6, scope: !383)
!434 = !DILocation(line: 231, column: 20, scope: !383)
!435 = !DILocation(line: 232, column: 7, scope: !383)
!436 = !DILocation(line: 232, column: 26, scope: !383)
!437 = !DILocation(line: 232, column: 45, scope: !383)
!438 = !DILocation(line: 232, column: 24, scope: !383)
!439 = !DILocation(line: 232, column: 50, scope: !383)
!440 = !DILocation(line: 232, column: 6, scope: !383)
!441 = !DILocation(line: 230, column: 6, scope: !383)
!442 = !DILocation(line: 235, column: 6, scope: !383)
!443 = !DILocation(line: 235, column: 16, scope: !383)
!444 = !DILocation(line: 235, column: 26, scope: !383)
!445 = !DILocation(line: 236, column: 7, scope: !383)
!446 = !DILocation(line: 236, column: 22, scope: !383)
!447 = !DILocation(line: 236, column: 37, scope: !383)
!448 = !DILocation(line: 236, column: 20, scope: !383)
!449 = !DILocation(line: 236, column: 42, scope: !383)
!450 = !DILocation(line: 236, column: 6, scope: !383)
!451 = !DILocation(line: 234, column: 6, scope: !383)
!452 = !DILocation(line: 239, column: 6, scope: !383)
!453 = !DILocation(line: 239, column: 14, scope: !383)
!454 = !DILocation(line: 239, column: 23, scope: !383)
!455 = !DILocation(line: 239, column: 35, scope: !383)
!456 = !DILocation(line: 239, column: 42, scope: !383)
!457 = !DILocation(line: 239, column: 55, scope: !383)
!458 = !DILocation(line: 239, column: 40, scope: !383)
!459 = !DILocation(line: 239, column: 21, scope: !383)
!460 = !DILocation(line: 239, column: 61, scope: !383)
!461 = !DILocation(line: 238, column: 6, scope: !383)
!462 = !DILocation(line: 241, column: 78, scope: !383)
!463 = !DILocation(line: 241, column: 89, scope: !383)
!464 = !DILocation(line: 241, column: 101, scope: !383)
!465 = !DILocation(line: 241, column: 6, scope: !383)
!466 = !DILocation(line: 243, column: 48, scope: !383)
!467 = !DILocation(line: 243, column: 41, scope: !383)
!468 = !DILocation(line: 243, column: 51, scope: !383)
!469 = !DILocation(line: 243, column: 65, scope: !383)
!470 = !DILocation(line: 243, column: 67, scope: !383)
!471 = !DILocation(line: 243, column: 57, scope: !383)
!472 = !DILocation(line: 243, column: 56, scope: !383)
!473 = !DILocation(line: 243, column: 39, scope: !383)
!474 = !DILocation(line: 243, column: 6, scope: !383)
!475 = !DILocation(line: 246, column: 3, scope: !383)
!476 = !DILocation(line: 246, column: 13, scope: !383)
!477 = !DILocation(line: 246, column: 29, scope: !383)
!478 = !DILocation(line: 246, column: 41, scope: !383)
!479 = !DILocation(line: 246, column: 58, scope: !383)
!480 = !DILocation(line: 245, column: 6, scope: !383)
!481 = !DILocation(line: 248, column: 43, scope: !383)
!482 = !DILocation(line: 248, column: 49, scope: !383)
!483 = !DILocation(line: 248, column: 6, scope: !383)
!484 = !DILocation(line: 251, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !383, file: !1, line: 251, column: 10)
!486 = !DILocation(line: 269, column: 12, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 269, column: 12)
!488 = distinct !DILexicalBlock(scope: !485, file: !1, line: 268, column: 11)
!489 = !DILocation(line: 270, column: 17, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 270, column: 7)
!491 = distinct !DILexicalBlock(scope: !487, file: !1, line: 269, column: 21)
!492 = !DILocation(line: 270, column: 31, scope: !490)
!493 = !{!494, !218, i64 0}
!494 = !{!"", !218, i64 0, !218, i64 4, !218, i64 8, !218, i64 12, !218, i64 16, !218, i64 20}
!495 = !DILocation(line: 255, column: 36, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 255, column: 7)
!497 = distinct !DILexicalBlock(scope: !498, file: !1, line: 252, column: 21)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 252, column: 12)
!499 = distinct !DILexicalBlock(scope: !485, file: !1, line: 251, column: 19)
!500 = !DILocation(line: 255, column: 56, scope: !496)
!501 = !DILocation(line: 251, column: 10, scope: !383)
!502 = !DILocation(line: 252, column: 12, scope: !499)
!503 = !DILocation(line: 256, column: 7, scope: !496)
!504 = !DILocation(line: 258, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !497, file: !1, line: 258, column: 7)
!506 = !DILocation(line: 258, column: 15, scope: !505)
!507 = !DILocation(line: 258, column: 7, scope: !497)
!508 = !DILocation(line: 260, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !1, line: 259, column: 5)
!510 = !DILocation(line: 261, column: 5, scope: !509)
!511 = !DILocation(line: 264, column: 36, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 264, column: 7)
!513 = distinct !DILexicalBlock(scope: !498, file: !1, line: 263, column: 13)
!514 = !DILocation(line: 265, column: 3, scope: !512)
!515 = !DILocation(line: 269, column: 12, scope: !488)
!516 = !DILocation(line: 270, column: 36, scope: !490)
!517 = !DILocation(line: 271, column: 7, scope: !490)
!518 = !DILocation(line: 274, column: 36, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 274, column: 7)
!520 = distinct !DILexicalBlock(scope: !487, file: !1, line: 273, column: 13)
!521 = !DILocation(line: 275, column: 3, scope: !519)
!522 = !DILocation(line: 277, column: 12, scope: !523)
!523 = distinct !DILexicalBlock(scope: !488, file: !1, line: 277, column: 12)
!524 = !DILocation(line: 277, column: 12, scope: !488)
!525 = !DILocation(line: 278, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 277, column: 38)
!527 = !DILocation(line: 279, column: 8, scope: !526)
!528 = !DILocation(line: 281, column: 3, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 280, column: 43)
!530 = distinct !DILexicalBlock(scope: !523, file: !1, line: 280, column: 17)
!531 = !DILocation(line: 282, column: 8, scope: !529)
!532 = !DILocation(line: 284, column: 10, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 283, column: 42)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 283, column: 17)
!535 = !DILocation(line: 285, column: 8, scope: !533)
!536 = !DILocation(line: 287, column: 10, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 286, column: 40)
!538 = distinct !DILexicalBlock(scope: !534, file: !1, line: 286, column: 17)
!539 = !DILocation(line: 288, column: 8, scope: !537)
!540 = !DILocation(line: 290, column: 3, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !1, line: 289, column: 13)
!542 = !DILocation(line: 297, column: 10, scope: !543)
!543 = distinct !DILexicalBlock(scope: !370, file: !1, line: 296, column: 9)
!544 = !DILocation(line: 298, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 297, column: 36)
!546 = distinct !DILexicalBlock(scope: !543, file: !1, line: 297, column: 10)
!547 = !DILocation(line: 299, column: 6, scope: !545)
!548 = !DILocation(line: 301, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 300, column: 41)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 300, column: 15)
!551 = !DILocation(line: 302, column: 6, scope: !549)
!552 = !DILocation(line: 304, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 303, column: 47)
!554 = distinct !DILexicalBlock(scope: !550, file: !1, line: 303, column: 22)
!555 = !DILocation(line: 305, column: 6, scope: !553)
!556 = !DILocation(line: 307, column: 8, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 306, column: 38)
!558 = distinct !DILexicalBlock(scope: !554, file: !1, line: 306, column: 15)
!559 = !DILocation(line: 308, column: 6, scope: !557)
!560 = !DILocation(line: 310, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !1, line: 309, column: 11)
!562 = !DILocation(line: 318, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !298, file: !1, line: 318, column: 9)
!564 = !DILocation(line: 318, column: 9, scope: !298)
!565 = !DILocation(line: 319, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !1, line: 319, column: 11)
!567 = distinct !DILexicalBlock(scope: !563, file: !1, line: 318, column: 19)
!568 = !DILocation(line: 319, column: 11, scope: !567)
!569 = !DILocation(line: 320, column: 2, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !1, line: 319, column: 23)
!571 = !DILocation(line: 321, column: 17, scope: !570)
!572 = !DILocation(line: 321, column: 27, scope: !570)
!573 = !DILocation(line: 321, column: 26, scope: !570)
!574 = !DILocation(line: 321, column: 2, scope: !570)
!575 = !DILocation(line: 322, column: 7, scope: !570)
!576 = !DILocation(line: 323, column: 12, scope: !577)
!577 = distinct !DILexicalBlock(scope: !567, file: !1, line: 323, column: 11)
!578 = !DILocation(line: 323, column: 11, scope: !567)
!579 = !DILocation(line: 325, column: 8, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !1, line: 324, column: 7)
!581 = !DILocation(line: 326, column: 33, scope: !580)
!582 = !DILocation(line: 326, column: 8, scope: !580)
!583 = !DILocation(line: 327, column: 7, scope: !580)
!584 = !DILocation(line: 332, column: 12, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 332, column: 11)
!586 = distinct !DILexicalBlock(scope: !563, file: !1, line: 329, column: 10)
!587 = !DILocation(line: 332, column: 21, scope: !585)
!588 = !DILocation(line: 332, column: 25, scope: !585)
!589 = !DILocation(line: 332, column: 41, scope: !585)
!590 = !DILocation(line: 333, column: 20, scope: !585)
!591 = !DILocation(line: 333, column: 29, scope: !585)
!592 = !DILocation(line: 333, column: 47, scope: !585)
!593 = !DILocation(line: 333, column: 54, scope: !585)
!594 = !DILocation(line: 335, column: 17, scope: !595)
!595 = distinct !DILexicalBlock(scope: !585, file: !1, line: 334, column: 2)
!596 = !DILocation(line: 336, column: 4, scope: !595)
!597 = !DILocation(line: 337, column: 17, scope: !595)
!598 = !DILocation(line: 339, column: 8, scope: !595)
!599 = !DILocation(line: 340, column: 2, scope: !595)
!600 = !DILocation(line: 341, column: 12, scope: !601)
!601 = distinct !DILexicalBlock(scope: !586, file: !1, line: 341, column: 11)
!602 = !DILocation(line: 341, column: 11, scope: !586)
!603 = !DILocation(line: 343, column: 33, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !1, line: 342, column: 7)
!605 = !DILocation(line: 343, column: 8, scope: !604)
!606 = !DILocation(line: 344, column: 7, scope: !604)
!607 = !DILocation(line: 348, column: 23, scope: !297)
!608 = !DILocation(line: 348, column: 26, scope: !297)
!609 = !DILocation(line: 348, column: 9, scope: !298)
!610 = !DILocation(line: 79, column: 10, scope: !15)
!611 = !DILocation(line: 349, column: 11, scope: !352)
!612 = !DILocation(line: 349, column: 11, scope: !353)
!613 = !DILocation(line: 351, column: 15, scope: !351)
!614 = !DILocation(line: 351, column: 2, scope: !351)
!615 = !DILocation(line: 352, column: 30, scope: !351)
!616 = !DILocation(line: 352, column: 2, scope: !351)
!617 = !DILocation(line: 352, column: 28, scope: !351)
!618 = !DILocation(line: 354, column: 9, scope: !351)
!619 = !DILocation(line: 355, column: 28, scope: !351)
!620 = !DILocation(line: 355, column: 2, scope: !351)
!621 = !DILocation(line: 355, column: 34, scope: !351)
!622 = !DILocation(line: 357, column: 2, scope: !351)
!623 = !DILocation(line: 359, column: 15, scope: !351)
!624 = !DILocation(line: 361, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !351, file: !1, line: 361, column: 6)
!626 = !DILocation(line: 361, column: 15, scope: !625)
!627 = !DILocation(line: 361, column: 6, scope: !351)
!628 = !DILocation(line: 362, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 362, column: 8)
!630 = distinct !DILexicalBlock(scope: !625, file: !1, line: 361, column: 21)
!631 = !DILocation(line: 362, column: 8, scope: !630)
!632 = !DILocation(line: 363, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !1, line: 362, column: 19)
!634 = !DILocation(line: 364, column: 4, scope: !633)
!635 = !DILocation(line: 366, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !629, file: !1, line: 365, column: 9)
!637 = !DILocation(line: 370, column: 10, scope: !351)
!638 = !DILocation(line: 372, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !351, file: !1, line: 372, column: 6)
!640 = !DILocation(line: 372, column: 6, scope: !351)
!641 = !DILocation(line: 373, column: 4, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !1, line: 372, column: 18)
!643 = !DILocation(line: 374, column: 19, scope: !642)
!644 = !DILocation(line: 374, column: 29, scope: !642)
!645 = !DILocation(line: 374, column: 28, scope: !642)
!646 = !DILocation(line: 374, column: 4, scope: !642)
!647 = !DILocation(line: 375, column: 2, scope: !642)
!648 = !DILocation(line: 378, column: 2, scope: !649)
!649 = distinct !DILexicalBlock(scope: !352, file: !1, line: 377, column: 12)
!650 = !DILocation(line: 385, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !296, file: !1, line: 385, column: 11)
!652 = !DILocation(line: 385, column: 11, scope: !296)
!653 = !DILocation(line: 386, column: 24, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 386, column: 8)
!655 = distinct !DILexicalBlock(scope: !651, file: !1, line: 386, column: 8)
!656 = !DILocation(line: 386, column: 8, scope: !655)
!657 = !DILocation(line: 386, column: 47, scope: !654)
!658 = !DILocation(line: 292, column: 13, scope: !71, inlinedAt: !659)
!659 = distinct !DILocation(line: 386, column: 38, scope: !654)
!660 = !DILocation(line: 294, column: 17, scope: !71, inlinedAt: !659)
!661 = !DILocation(line: 386, column: 38, scope: !654)
!662 = !DILocation(line: 386, column: 36, scope: !654)
!663 = !DILocation(line: 386, column: 29, scope: !654)
!664 = !DILocation(line: 77, column: 26, scope: !15)
!665 = !DILocation(line: 389, column: 12, scope: !295)
!666 = !DILocation(line: 389, column: 11, scope: !296)
!667 = !DILocation(line: 390, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !295, file: !1, line: 389, column: 36)
!669 = !DILocation(line: 391, column: 2, scope: !668)
!670 = !DILocation(line: 392, column: 2, scope: !668)
!671 = !DILocation(line: 394, column: 17, scope: !294)
!672 = !DILocation(line: 394, column: 16, scope: !295)
!673 = !DILocation(line: 396, column: 8, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 396, column: 8)
!675 = distinct !DILexicalBlock(scope: !294, file: !1, line: 395, column: 2)
!676 = !DILocation(line: 396, column: 8, scope: !675)
!677 = !DILocation(line: 398, column: 21, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !1, line: 397, column: 6)
!679 = !DILocation(line: 399, column: 21, scope: !678)
!680 = !DILocation(line: 400, column: 22, scope: !678)
!681 = !DILocation(line: 408, column: 2, scope: !675)
!682 = !DILocation(line: 404, column: 8, scope: !683)
!683 = distinct !DILexicalBlock(scope: !674, file: !1, line: 403, column: 6)
!684 = !DILocation(line: 405, column: 8, scope: !683)
!685 = !DILocation(line: 406, column: 8, scope: !683)
!686 = !DILocation(line: 409, column: 17, scope: !293)
!687 = !DILocation(line: 409, column: 43, scope: !293)
!688 = !DILocation(line: 409, column: 47, scope: !293)
!689 = !DILocation(line: 409, column: 16, scope: !294)
!690 = !DILocation(line: 410, column: 2, scope: !691)
!691 = distinct !DILexicalBlock(scope: !293, file: !1, line: 409, column: 68)
!692 = !DILocation(line: 411, column: 7, scope: !691)
!693 = !DILocation(line: 412, column: 17, scope: !292)
!694 = !DILocation(line: 412, column: 16, scope: !293)
!695 = !DILocation(line: 413, column: 2, scope: !291)
!696 = !DILocation(line: 414, column: 12, scope: !291)
!697 = !DILocation(line: 415, column: 16, scope: !291)
!698 = !DILocation(line: 88, column: 11, scope: !15)
!699 = !DILocation(line: 416, column: 9, scope: !291)
!700 = !DILocation(line: 416, column: 2, scope: !291)
!701 = !DILocation(line: 417, column: 42, scope: !291)
!702 = !DILocation(line: 417, column: 49, scope: !291)
!703 = !DILocation(line: 417, column: 2, scope: !291)
!704 = !DILocation(line: 418, column: 43, scope: !291)
!705 = !DILocation(line: 418, column: 33, scope: !291)
!706 = !DILocation(line: 418, column: 26, scope: !291)
!707 = !DILocation(line: 418, column: 64, scope: !291)
!708 = !DILocation(line: 418, column: 2, scope: !291)
!709 = !DILocation(line: 419, column: 7, scope: !291)
!710 = !DILocation(line: 420, column: 17, scope: !315)
!711 = !DILocation(line: 420, column: 16, scope: !292)
!712 = !DILocation(line: 422, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 422, column: 6)
!714 = distinct !DILexicalBlock(scope: !315, file: !1, line: 420, column: 40)
!715 = !DILocation(line: 422, column: 6, scope: !714)
!716 = !DILocation(line: 424, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !1, line: 423, column: 4)
!718 = !DILocation(line: 425, column: 4, scope: !717)
!719 = !DILocation(line: 427, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !714, file: !1, line: 427, column: 6)
!721 = !DILocation(line: 427, column: 6, scope: !714)
!722 = !DILocation(line: 429, column: 4, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !1, line: 428, column: 2)
!724 = !DILocation(line: 430, column: 12, scope: !723)
!725 = !DILocation(line: 435, column: 4, scope: !723)
!726 = !DILocation(line: 436, column: 4, scope: !723)
!727 = !DILocation(line: 438, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !1, line: 438, column: 8)
!729 = !DILocation(line: 438, column: 8, scope: !723)
!730 = !DILocation(line: 440, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !728, file: !1, line: 439, column: 4)
!732 = !DILocation(line: 441, column: 6, scope: !731)
!733 = !DILocation(line: 442, column: 4, scope: !731)
!734 = !DILocation(line: 445, column: 13, scope: !723)
!735 = !DILocation(line: 446, column: 12, scope: !723)
!736 = !DILocation(line: 447, column: 14, scope: !723)
!737 = !DILocation(line: 448, column: 16, scope: !723)
!738 = !DILocation(line: 449, column: 13, scope: !723)
!739 = !DILocation(line: 450, column: 15, scope: !723)
!740 = !DILocation(line: 452, column: 17, scope: !723)
!741 = !DILocation(line: 454, column: 15, scope: !723)
!742 = !DILocation(line: 455, column: 16, scope: !723)
!743 = !DILocation(line: 456, column: 30, scope: !723)
!744 = !DILocation(line: 457, column: 12, scope: !723)
!745 = !DILocation(line: 458, column: 27, scope: !723)
!746 = !DILocation(line: 458, column: 14, scope: !723)
!747 = !DILocation(line: 459, column: 19, scope: !723)
!748 = !DILocation(line: 460, column: 16, scope: !723)
!749 = !DILocation(line: 463, column: 4, scope: !723)
!750 = !DILocation(line: 464, column: 4, scope: !723)
!751 = !DILocation(line: 465, column: 2, scope: !723)
!752 = !DILocation(line: 468, column: 4, scope: !753)
!753 = distinct !DILexicalBlock(scope: !720, file: !1, line: 467, column: 2)
!754 = !DILocation(line: 469, column: 16, scope: !753)
!755 = !DILocation(line: 473, column: 17, scope: !314)
!756 = !DILocation(line: 473, column: 16, scope: !315)
!757 = !DILocation(line: 474, column: 10, scope: !758)
!758 = distinct !DILexicalBlock(scope: !314, file: !1, line: 473, column: 43)
!759 = !DILocation(line: 475, column: 2, scope: !758)
!760 = !DILocation(line: 476, column: 2, scope: !758)
!761 = !DILocation(line: 477, column: 2, scope: !758)
!762 = !DILocation(line: 480, column: 2, scope: !758)
!763 = !DILocation(line: 482, column: 2, scope: !758)
!764 = !DILocation(line: 483, column: 7, scope: !758)
!765 = !DILocation(line: 484, column: 17, scope: !313)
!766 = !DILocation(line: 484, column: 16, scope: !314)
!767 = !DILocation(line: 485, column: 52, scope: !768)
!768 = distinct !DILexicalBlock(scope: !313, file: !1, line: 484, column: 42)
!769 = !DILocation(line: 486, column: 20, scope: !768)
!770 = !DILocation(line: 486, column: 12, scope: !768)
!771 = !DILocation(line: 486, column: 29, scope: !768)
!772 = !DILocation(line: 486, column: 27, scope: !768)
!773 = !DILocation(line: 486, column: 3, scope: !768)
!774 = !DILocation(line: 485, column: 2, scope: !768)
!775 = !DILocation(line: 487, column: 7, scope: !768)
!776 = !DILocation(line: 488, column: 17, scope: !312)
!777 = !DILocation(line: 488, column: 16, scope: !313)
!778 = !DILocation(line: 489, column: 2, scope: !779)
!779 = distinct !DILexicalBlock(scope: !312, file: !1, line: 488, column: 41)
!780 = !DILocation(line: 490, column: 6, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !1, line: 490, column: 6)
!782 = !DILocation(line: 490, column: 6, scope: !779)
!783 = !DILocation(line: 491, column: 9, scope: !781)
!784 = !DILocation(line: 491, column: 4, scope: !781)
!785 = !DILocation(line: 493, column: 17, scope: !311)
!786 = !DILocation(line: 493, column: 16, scope: !312)
!787 = !DILocation(line: 494, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !311, file: !1, line: 493, column: 43)
!789 = !DILocation(line: 495, column: 7, scope: !788)
!790 = !DILocation(line: 496, column: 17, scope: !310)
!791 = !DILocation(line: 496, column: 16, scope: !311)
!792 = !DILocation(line: 499, column: 17, scope: !309)
!793 = !DILocation(line: 499, column: 16, scope: !310)
!794 = !DILocation(line: 501, column: 18, scope: !795)
!795 = distinct !DILexicalBlock(scope: !309, file: !1, line: 499, column: 41)
!796 = !DILocation(line: 503, column: 2, scope: !795)
!797 = !DILocation(line: 505, column: 17, scope: !308)
!798 = !DILocation(line: 505, column: 16, scope: !309)
!799 = !DILocation(line: 507, column: 18, scope: !800)
!800 = distinct !DILexicalBlock(scope: !308, file: !1, line: 505, column: 41)
!801 = !DILocation(line: 509, column: 2, scope: !800)
!802 = !DILocation(line: 511, column: 17, scope: !307)
!803 = !DILocation(line: 511, column: 16, scope: !308)
!804 = !DILocation(line: 514, column: 17, scope: !306)
!805 = !DILocation(line: 514, column: 16, scope: !307)
!806 = !DILocation(line: 515, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !306, file: !1, line: 514, column: 42)
!808 = !DILocation(line: 516, column: 15, scope: !807)
!809 = !DILocation(line: 517, column: 13, scope: !807)
!810 = !DILocation(line: 518, column: 7, scope: !807)
!811 = !DILocation(line: 519, column: 17, scope: !305)
!812 = !DILocation(line: 519, column: 16, scope: !306)
!813 = !DILocation(line: 520, column: 16, scope: !814)
!814 = distinct !DILexicalBlock(scope: !305, file: !1, line: 519, column: 42)
!815 = !DILocation(line: 521, column: 15, scope: !814)
!816 = !DILocation(line: 522, column: 13, scope: !814)
!817 = !DILocation(line: 523, column: 7, scope: !814)
!818 = !DILocation(line: 524, column: 17, scope: !304)
!819 = !DILocation(line: 524, column: 16, scope: !305)
!820 = !DILocation(line: 527, column: 17, scope: !303)
!821 = !DILocation(line: 527, column: 16, scope: !304)
!822 = !DILocation(line: 528, column: 2, scope: !823)
!823 = distinct !DILexicalBlock(scope: !303, file: !1, line: 527, column: 41)
!824 = !DILocation(line: 529, column: 23, scope: !823)
!825 = !DILocation(line: 529, column: 2, scope: !823)
!826 = !DILocation(line: 530, column: 7, scope: !823)
!827 = !DILocation(line: 531, column: 17, scope: !302)
!828 = !DILocation(line: 531, column: 16, scope: !303)
!829 = !DILocation(line: 532, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !302, file: !1, line: 531, column: 39)
!831 = !DILocation(line: 532, column: 13, scope: !830)
!832 = !DILocation(line: 534, column: 7, scope: !830)
!833 = !DILocation(line: 535, column: 17, scope: !301)
!834 = !DILocation(line: 535, column: 16, scope: !302)
!835 = !DILocation(line: 536, column: 2, scope: !300)
!836 = !DILocation(line: 537, column: 7, scope: !300)
!837 = !DILocation(line: 538, column: 17, scope: !320)
!838 = !DILocation(line: 538, column: 16, scope: !301)
!839 = !DILocation(line: 539, column: 2, scope: !840)
!840 = distinct !DILexicalBlock(scope: !320, file: !1, line: 538, column: 45)
!841 = !DILocation(line: 540, column: 7, scope: !840)
!842 = !DILocation(line: 541, column: 17, scope: !319)
!843 = !DILocation(line: 541, column: 16, scope: !320)
!844 = !DILocation(line: 542, column: 14, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 542, column: 14)
!846 = distinct !DILexicalBlock(scope: !319, file: !1, line: 541, column: 46)
!847 = !DILocation(line: 542, column: 14, scope: !846)
!848 = !DILocation(line: 545, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !1, line: 543, column: 3)
!850 = !DILocation(line: 547, column: 18, scope: !849)
!851 = !DILocation(line: 547, column: 30, scope: !849)
!852 = !DILocation(line: 547, column: 40, scope: !849)
!853 = !DILocation(line: 547, column: 53, scope: !849)
!854 = !DILocation(line: 547, column: 37, scope: !849)
!855 = !DILocation(line: 549, column: 3, scope: !849)
!856 = !DILocation(line: 553, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !845, file: !1, line: 551, column: 5)
!858 = !DILocation(line: 554, column: 19, scope: !857)
!859 = !DILocation(line: 554, column: 31, scope: !857)
!860 = !DILocation(line: 554, column: 17, scope: !857)
!861 = !DILocation(line: 548, column: 14, scope: !849)
!862 = !DILocation(line: 557, column: 14, scope: !846)
!863 = !DILocation(line: 558, column: 16, scope: !846)
!864 = !DILocation(line: 559, column: 7, scope: !846)
!865 = !DILocation(line: 560, column: 17, scope: !318)
!866 = !DILocation(line: 560, column: 16, scope: !319)
!867 = !DILocation(line: 561, column: 2, scope: !317)
!868 = !DILocation(line: 562, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !317, file: !1, line: 562, column: 6)
!870 = !DILocation(line: 562, column: 16, scope: !869)
!871 = !DILocation(line: 562, column: 6, scope: !317)
!872 = !DILocation(line: 562, column: 32, scope: !869)
!873 = !DILocation(line: 562, column: 22, scope: !869)
!874 = !DILocation(line: 563, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !317, file: !1, line: 563, column: 6)
!876 = !DILocation(line: 563, column: 17, scope: !875)
!877 = !DILocation(line: 563, column: 6, scope: !317)
!878 = !DILocation(line: 563, column: 34, scope: !875)
!879 = !DILocation(line: 563, column: 23, scope: !875)
!880 = !DILocation(line: 565, column: 17, scope: !331)
!881 = !DILocation(line: 565, column: 16, scope: !318)
!882 = !DILocation(line: 566, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !331, file: !1, line: 565, column: 48)
!884 = !DILocation(line: 567, column: 7, scope: !883)
!885 = !DILocation(line: 568, column: 17, scope: !330)
!886 = !DILocation(line: 568, column: 16, scope: !331)
!887 = !DILocation(line: 569, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 569, column: 6)
!889 = distinct !DILexicalBlock(scope: !330, file: !1, line: 568, column: 48)
!890 = !DILocation(line: 569, column: 6, scope: !889)
!891 = !DILocation(line: 571, column: 14, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !1, line: 570, column: 4)
!893 = !DILocation(line: 572, column: 6, scope: !892)
!894 = !DILocation(line: 573, column: 4, scope: !892)
!895 = !DILocation(line: 574, column: 11, scope: !896)
!896 = distinct !DILexicalBlock(scope: !888, file: !1, line: 574, column: 11)
!897 = !DILocation(line: 574, column: 11, scope: !888)
!898 = !DILocation(line: 576, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !1, line: 575, column: 4)
!900 = !DILocation(line: 577, column: 6, scope: !899)
!901 = !DILocation(line: 578, column: 4, scope: !899)
!902 = !DILocation(line: 579, column: 11, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !1, line: 579, column: 11)
!904 = !DILocation(line: 579, column: 11, scope: !896)
!905 = !DILocation(line: 581, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !1, line: 580, column: 4)
!907 = !DILocation(line: 582, column: 6, scope: !906)
!908 = !DILocation(line: 583, column: 4, scope: !906)
!909 = !DILocation(line: 584, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !1, line: 584, column: 11)
!911 = !DILocation(line: 584, column: 11, scope: !903)
!912 = !DILocation(line: 586, column: 14, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !1, line: 585, column: 4)
!914 = !DILocation(line: 587, column: 15, scope: !913)
!915 = !DILocation(line: 588, column: 6, scope: !913)
!916 = !DILocation(line: 589, column: 4, scope: !913)
!917 = !DILocation(line: 590, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !1, line: 590, column: 11)
!919 = !DILocation(line: 590, column: 11, scope: !910)
!920 = !DILocation(line: 592, column: 14, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !1, line: 591, column: 4)
!922 = !DILocation(line: 593, column: 15, scope: !921)
!923 = !DILocation(line: 594, column: 6, scope: !921)
!924 = !DILocation(line: 595, column: 4, scope: !921)
!925 = !DILocation(line: 596, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !918, file: !1, line: 596, column: 11)
!927 = !DILocation(line: 596, column: 11, scope: !918)
!928 = !DILocation(line: 598, column: 14, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !1, line: 597, column: 4)
!930 = !DILocation(line: 599, column: 6, scope: !929)
!931 = !DILocation(line: 600, column: 4, scope: !929)
!932 = !DILocation(line: 602, column: 2, scope: !889)
!933 = !DILocation(line: 603, column: 2, scope: !889)
!934 = !DILocation(line: 604, column: 2, scope: !889)
!935 = !DILocation(line: 606, column: 7, scope: !889)
!936 = !DILocation(line: 607, column: 17, scope: !329)
!937 = !DILocation(line: 607, column: 16, scope: !330)
!938 = !DILocation(line: 608, column: 15, scope: !939)
!939 = distinct !DILexicalBlock(scope: !329, file: !1, line: 607, column: 48)
!940 = !DILocation(line: 609, column: 15, scope: !939)
!941 = !DILocation(line: 610, column: 2, scope: !939)
!942 = !DILocation(line: 611, column: 6, scope: !939)
!943 = !DILocation(line: 612, column: 7, scope: !939)
!944 = !DILocation(line: 613, column: 17, scope: !328)
!945 = !DILocation(line: 613, column: 16, scope: !329)
!946 = !DILocation(line: 614, column: 35, scope: !947)
!947 = distinct !DILexicalBlock(scope: !328, file: !1, line: 613, column: 45)
!948 = !DILocation(line: 614, column: 6, scope: !947)
!949 = !DILocation(line: 615, column: 6, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !1, line: 615, column: 6)
!951 = !DILocation(line: 615, column: 18, scope: !950)
!952 = !DILocation(line: 615, column: 6, scope: !947)
!953 = !DILocation(line: 617, column: 33, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !1, line: 616, column: 4)
!955 = !DILocation(line: 617, column: 18, scope: !954)
!956 = !DILocation(line: 618, column: 14, scope: !954)
!957 = !DILocation(line: 618, column: 6, scope: !954)
!958 = !DILocation(line: 619, column: 6, scope: !954)
!959 = !DILocation(line: 620, column: 19, scope: !954)
!960 = !DILocation(line: 621, column: 4, scope: !954)
!961 = !DILocation(line: 623, column: 17, scope: !327)
!962 = !DILocation(line: 623, column: 16, scope: !328)
!963 = !DILocation(line: 624, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !1, line: 624, column: 6)
!965 = distinct !DILexicalBlock(scope: !327, file: !1, line: 623, column: 47)
!966 = !DILocation(line: 624, column: 18, scope: !964)
!967 = !DILocation(line: 624, column: 6, scope: !965)
!968 = !DILocation(line: 626, column: 33, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !1, line: 625, column: 4)
!970 = !DILocation(line: 626, column: 18, scope: !969)
!971 = !DILocation(line: 627, column: 14, scope: !969)
!972 = !DILocation(line: 627, column: 6, scope: !969)
!973 = !DILocation(line: 628, column: 6, scope: !969)
!974 = !DILocation(line: 630, column: 33, scope: !969)
!975 = !DILocation(line: 630, column: 18, scope: !969)
!976 = !DILocation(line: 631, column: 14, scope: !969)
!977 = !DILocation(line: 631, column: 6, scope: !969)
!978 = !DILocation(line: 632, column: 6, scope: !969)
!979 = !DILocation(line: 633, column: 4, scope: !969)
!980 = !DILocation(line: 635, column: 17, scope: !326)
!981 = !DILocation(line: 635, column: 16, scope: !327)
!982 = !DILocation(line: 639, column: 17, scope: !325)
!983 = !DILocation(line: 639, column: 41, scope: !325)
!984 = !DILocation(line: 641, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 641, column: 6)
!986 = distinct !DILexicalBlock(scope: !325, file: !1, line: 639, column: 58)
!987 = !DILocation(line: 641, column: 16, scope: !985)
!988 = !DILocation(line: 641, column: 6, scope: !986)
!989 = !DILocation(line: 641, column: 37, scope: !985)
!990 = !DILocation(line: 641, column: 23, scope: !985)
!991 = !DILocation(line: 642, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !1, line: 642, column: 6)
!993 = !DILocation(line: 642, column: 16, scope: !992)
!994 = !DILocation(line: 642, column: 6, scope: !986)
!995 = !DILocation(line: 642, column: 38, scope: !992)
!996 = !DILocation(line: 642, column: 24, scope: !992)
!997 = !DILocation(line: 643, column: 11, scope: !986)
!998 = !DILocation(line: 644, column: 12, scope: !986)
!999 = !DILocation(line: 645, column: 14, scope: !986)
!1000 = !DILocation(line: 646, column: 2, scope: !986)
!1001 = !DILocation(line: 647, column: 2, scope: !986)
!1002 = !DILocation(line: 648, column: 2, scope: !986)
!1003 = !DILocation(line: 649, column: 2, scope: !986)
!1004 = !DILocation(line: 650, column: 7, scope: !986)
!1005 = !DILocation(line: 651, column: 33, scope: !324)
!1006 = !DILocation(line: 651, column: 29, scope: !324)
!1007 = !DILocation(line: 652, column: 27, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 652, column: 6)
!1009 = distinct !DILexicalBlock(scope: !324, file: !1, line: 651, column: 58)
!1010 = !DILocation(line: 654, column: 33, scope: !323)
!1011 = !DILocation(line: 654, column: 29, scope: !323)
!1012 = !DILocation(line: 655, column: 2, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !323, file: !1, line: 654, column: 58)
!1014 = !DILocation(line: 656, column: 14, scope: !1013)
!1015 = !DILocation(line: 657, column: 7, scope: !1013)
!1016 = !DILocation(line: 659, column: 9, scope: !322)
!1017 = !DILocation(line: 218, column: 13, scope: !77, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 659, column: 12, scope: !322)
!1019 = !DILocation(line: 153, column: 29, scope: !80, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 220, column: 10, scope: !77, inlinedAt: !1018)
!1021 = !DILocation(line: 153, column: 47, scope: !80, inlinedAt: !1020)
!1022 = !DILocation(line: 158, column: 10, scope: !80, inlinedAt: !1020)
!1023 = !DILocation(line: 158, column: 27, scope: !80, inlinedAt: !1020)
!1024 = !DILocation(line: 158, column: 25, scope: !80, inlinedAt: !1020)
!1025 = !DILocation(line: 659, column: 20, scope: !322)
!1026 = !DILocation(line: 159, column: 7, scope: !80, inlinedAt: !1020)
!1027 = !DILocation(line: 659, column: 12, scope: !322)
!1028 = !DILocation(line: 220, column: 10, scope: !77, inlinedAt: !1018)
!1029 = !DILocation(line: 660, column: 9, scope: !322)
!1030 = !DILocation(line: 218, column: 13, scope: !77, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 660, column: 12, scope: !322)
!1032 = !DILocation(line: 153, column: 29, scope: !80, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 220, column: 10, scope: !77, inlinedAt: !1031)
!1034 = !DILocation(line: 153, column: 47, scope: !80, inlinedAt: !1033)
!1035 = !DILocation(line: 158, column: 10, scope: !80, inlinedAt: !1033)
!1036 = !DILocation(line: 158, column: 27, scope: !80, inlinedAt: !1033)
!1037 = !DILocation(line: 158, column: 25, scope: !80, inlinedAt: !1033)
!1038 = !DILocation(line: 159, column: 7, scope: !80, inlinedAt: !1033)
!1039 = !DILocation(line: 660, column: 12, scope: !322)
!1040 = !DILocation(line: 220, column: 10, scope: !77, inlinedAt: !1031)
!1041 = !DILocation(line: 661, column: 9, scope: !322)
!1042 = !DILocation(line: 661, column: 12, scope: !322)
!1043 = !DILocation(line: 658, column: 16, scope: !323)
!1044 = !DILocation(line: 662, column: 23, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !322, file: !1, line: 661, column: 31)
!1046 = !DILocation(line: 662, column: 2, scope: !1045)
!1047 = !DILocation(line: 663, column: 7, scope: !1045)
!1048 = !DILocation(line: 664, column: 17, scope: !336)
!1049 = !DILocation(line: 664, column: 16, scope: !322)
!1050 = !DILocation(line: 665, column: 2, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !336, file: !1, line: 664, column: 48)
!1052 = !DILocation(line: 666, column: 2, scope: !1051)
!1053 = !DILocation(line: 667, column: 17, scope: !335)
!1054 = !DILocation(line: 667, column: 16, scope: !336)
!1055 = !DILocation(line: 668, column: 2, scope: !334)
!1056 = !DILocation(line: 669, column: 7, scope: !334)
!1057 = !DILocation(line: 670, column: 17, scope: !341)
!1058 = !DILocation(line: 670, column: 16, scope: !335)
!1059 = !DILocation(line: 671, column: 2, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !341, file: !1, line: 670, column: 46)
!1061 = !DILocation(line: 672, column: 7, scope: !1060)
!1062 = !DILocation(line: 673, column: 17, scope: !340)
!1063 = !DILocation(line: 673, column: 16, scope: !341)
!1064 = !DILocation(line: 674, column: 2, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !340, file: !1, line: 673, column: 45)
!1066 = !DILocation(line: 675, column: 7, scope: !1065)
!1067 = !DILocation(line: 676, column: 17, scope: !339)
!1068 = !DILocation(line: 676, column: 16, scope: !340)
!1069 = !DILocation(line: 677, column: 2, scope: !338)
!1070 = !DILocation(line: 678, column: 15, scope: !338)
!1071 = !DILocation(line: 678, column: 26, scope: !338)
!1072 = !DILocation(line: 678, column: 13, scope: !338)
!1073 = !DILocation(line: 679, column: 7, scope: !338)
!1074 = !DILocation(line: 680, column: 17, scope: !349)
!1075 = !DILocation(line: 680, column: 16, scope: !339)
!1076 = !DILocation(line: 682, column: 17, scope: !348)
!1077 = !DILocation(line: 682, column: 16, scope: !349)
!1078 = !DILocation(line: 683, column: 2, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !348, file: !1, line: 682, column: 46)
!1080 = !DILocation(line: 684, column: 15, scope: !1079)
!1081 = !DILocation(line: 684, column: 13, scope: !1079)
!1082 = !{!1083, !1083, i64 0}
!1083 = !{!"long", !219, i64 0}
!1084 = !DILocation(line: 685, column: 29, scope: !1079)
!1085 = !DILocation(line: 685, column: 2, scope: !1079)
!1086 = !DILocation(line: 686, column: 12, scope: !1079)
!1087 = !DILocation(line: 686, column: 27, scope: !1079)
!1088 = !DILocation(line: 686, column: 10, scope: !1079)
!1089 = !DILocation(line: 687, column: 2, scope: !1079)
!1090 = !DILocation(line: 688, column: 2, scope: !1079)
!1091 = !DILocation(line: 689, column: 8, scope: !1079)
!1092 = !DILocation(line: 690, column: 17, scope: !347)
!1093 = !DILocation(line: 690, column: 16, scope: !348)
!1094 = !DILocation(line: 85, column: 7, scope: !15)
!1095 = !DILocation(line: 691, column: 2, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !347, file: !1, line: 690, column: 45)
!1097 = !DILocation(line: 692, column: 22, scope: !1096)
!1098 = !DILocation(line: 692, column: 2, scope: !1096)
!1099 = !DILocation(line: 693, column: 7, scope: !1096)
!1100 = !DILocation(line: 694, column: 17, scope: !346)
!1101 = !DILocation(line: 694, column: 16, scope: !347)
!1102 = !DILocation(line: 697, column: 17, scope: !345)
!1103 = !DILocation(line: 697, column: 16, scope: !346)
!1104 = !DILocation(line: 699, column: 2, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !345, file: !1, line: 697, column: 46)
!1106 = !DILocation(line: 700, column: 10, scope: !1105)
!1107 = !DILocation(line: 702, column: 2, scope: !1105)
!1108 = !DILocation(line: 703, column: 2, scope: !1105)
!1109 = !DILocation(line: 705, column: 2, scope: !1105)
!1110 = !DILocation(line: 706, column: 2, scope: !1105)
!1111 = !DILocation(line: 709, column: 13, scope: !1105)
!1112 = !DILocation(line: 711, column: 15, scope: !1105)
!1113 = !DILocation(line: 713, column: 13, scope: !1105)
!1114 = !DILocation(line: 714, column: 14, scope: !1105)
!1115 = !DILocation(line: 715, column: 10, scope: !1105)
!1116 = !DILocation(line: 716, column: 25, scope: !1105)
!1117 = !DILocation(line: 716, column: 12, scope: !1105)
!1118 = !DILocation(line: 717, column: 7, scope: !1105)
!1119 = !DILocation(line: 718, column: 17, scope: !344)
!1120 = !DILocation(line: 718, column: 16, scope: !345)
!1121 = !DILocation(line: 719, column: 2, scope: !343)
!1122 = !DILocation(line: 720, column: 7, scope: !343)
!1123 = !DILocation(line: 721, column: 17, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !344, file: !1, line: 721, column: 16)
!1125 = !DILocation(line: 721, column: 16, scope: !344)
!1126 = !DILocation(line: 726, column: 17, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 726, column: 16)
!1128 = !DILocation(line: 726, column: 16, scope: !1124)
!1129 = !DILocation(line: 727, column: 2, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 726, column: 43)
!1131 = !DILocation(line: 728, column: 39, scope: !1130)
!1132 = !DILocation(line: 728, column: 2, scope: !1130)
!1133 = !DILocation(line: 729, column: 2, scope: !1130)
!1134 = !DILocation(line: 731, column: 17, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 731, column: 16)
!1136 = !DILocation(line: 731, column: 16, scope: !1127)
!1137 = !DILocation(line: 735, column: 17, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 735, column: 16)
!1139 = !DILocation(line: 735, column: 16, scope: !1135)
!1140 = !DILocation(line: 736, column: 2, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 735, column: 49)
!1142 = !DILocation(line: 737, column: 2, scope: !1141)
!1143 = !DILocation(line: 738, column: 2, scope: !1141)
!1144 = !DILocation(line: 739, column: 2, scope: !1141)
!1145 = !DILocation(line: 740, column: 2, scope: !1141)
!1146 = !DILocation(line: 741, column: 10, scope: !1141)
!1147 = !DILocation(line: 742, column: 7, scope: !1141)
!1148 = !DILocation(line: 743, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 743, column: 16)
!1150 = !DILocation(line: 743, column: 16, scope: !1138)
!1151 = !DILocation(line: 746, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 746, column: 16)
!1153 = !DILocation(line: 746, column: 16, scope: !1149)
!1154 = !DILocation(line: 747, column: 2, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 746, column: 49)
!1156 = !DILocation(line: 748, column: 7, scope: !1155)
!1157 = !DILocation(line: 749, column: 17, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 749, column: 16)
!1159 = !DILocation(line: 749, column: 16, scope: !1152)
!1160 = !DILocation(line: 750, column: 2, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 749, column: 41)
!1162 = !DILocation(line: 751, column: 2, scope: !1161)
!1163 = !DILocation(line: 752, column: 2, scope: !1161)
!1164 = !DILocation(line: 753, column: 2, scope: !1161)
!1165 = !DILocation(line: 754, column: 2, scope: !1161)
!1166 = !DILocation(line: 755, column: 2, scope: !1161)
!1167 = !DILocation(line: 756, column: 2, scope: !1161)
!1168 = !DILocation(line: 757, column: 2, scope: !1161)
!1169 = !DILocation(line: 758, column: 2, scope: !1161)
!1170 = !DILocation(line: 759, column: 2, scope: !1161)
!1171 = !DILocation(line: 760, column: 2, scope: !1161)
!1172 = !DILocation(line: 761, column: 2, scope: !1161)
!1173 = !DILocation(line: 762, column: 2, scope: !1161)
!1174 = !DILocation(line: 763, column: 2, scope: !1161)
!1175 = !DILocation(line: 764, column: 2, scope: !1161)
!1176 = !DILocation(line: 765, column: 2, scope: !1161)
!1177 = !DILocation(line: 766, column: 2, scope: !1161)
!1178 = !DILocation(line: 767, column: 2, scope: !1161)
!1179 = !DILocation(line: 768, column: 2, scope: !1161)
!1180 = !DILocation(line: 769, column: 2, scope: !1161)
!1181 = !DILocation(line: 770, column: 2, scope: !1161)
!1182 = !DILocation(line: 771, column: 2, scope: !1161)
!1183 = !DILocation(line: 772, column: 2, scope: !1161)
!1184 = !DILocation(line: 773, column: 2, scope: !1161)
!1185 = !DILocation(line: 774, column: 2, scope: !1161)
!1186 = !DILocation(line: 776, column: 20, scope: !1161)
!1187 = !DILocation(line: 777, column: 7, scope: !1161)
!1188 = !DILocation(line: 778, column: 17, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 778, column: 16)
!1190 = !DILocation(line: 778, column: 16, scope: !1158)
!1191 = !DILocation(line: 779, column: 2, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 778, column: 26)
!1193 = !DILocation(line: 780, column: 7, scope: !1192)
