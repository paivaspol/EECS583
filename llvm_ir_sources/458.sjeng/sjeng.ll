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
  %0 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %2 = getelementptr inbounds [256 x i8]* %readbuff, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %2) #1
  store i32 4, i32* %depth, align 4, !tbaa !0
  %3 = bitcast [600 x %struct.move_s]* %game_history to i8*
  call void @llvm.lifetime.start(i64 14400, i8* %3) #1
  %4 = bitcast [600 x %struct.move_x]* %game_history_x to i8*
  call void @llvm.lifetime.start(i64 9600, i8* %4) #1
  call void @read_rcfile() #8
  call void @initialize_zobrist() #8
  store i32 2, i32* @Variant, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  call void @init_game() #8
  call void @initialize_hash() #8
  call void @clear_tt() #8
  call void @reset_ecache() #8
  store i32 0, i32* @ECacheProbes, align 4, !tbaa !0
  store i32 0, i32* @ECacheHits, align 4, !tbaa !0
  store i32 0, i32* @TTProbes, align 4, !tbaa !0
  store i32 0, i32* @TTStores, align 4, !tbaa !0
  store i32 0, i32* @TTHits, align 4, !tbaa !0
  store i32 0, i32* @bookidx, align 4, !tbaa !0
  store i32 0, i32* @total_moves, align 4, !tbaa !0
  store i32 0, i32* @ply, align 4, !tbaa !0
  store i32 40, i32* @moves_to_tc, align 4, !tbaa !0
  store i32 5, i32* @min_per_game, align 4, !tbaa !0
  store i32 30000, i32* @time_left, align 4, !tbaa !0
  store i32 2000, i32* @opp_rating, align 4, !tbaa !0
  store i32 2000, i32* @my_rating, align 4, !tbaa !0
  store i32 40, i32* @maxdepth, align 4, !tbaa !0
  store i32 200, i32* @maxposdiff, align 4, !tbaa !0
  store i32 1, i32* @must_go, align 4, !tbaa !0
  store i32 1, i32* @tradefreely, align 4, !tbaa !0
  store i32 0, i32* @xb_mode, align 4, !tbaa !0
  store i32 0, i32* @comp_color, align 4, !tbaa !0
  store i32 1, i32* %show_board, align 4, !tbaa !1
  store i32 0, i32* @is_pondering, align 4, !tbaa !1
  store i32 1, i32* @allow_pondering, align 4, !tbaa !1
  store i32 0, i32* @is_analyzing, align 4, !tbaa !1
  store i32 0, i32* @have_partner, align 4, !tbaa !1
  store i32 0, i32* @must_sit, align 4, !tbaa !1
  store i32 0, i32* @go_fast, align 4, !tbaa !1
  store i32 0, i32* @fixed_time, align 4, !tbaa !0
  store i32 0, i32* @phase, align 4, !tbaa !0
  store i32 0, i32* @root_to_move, align 4, !tbaa !0
  store i32 0, i32* @kibitzed, align 4, !tbaa !1
  store i32 0, i32* @move_number, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 14400, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 9600, i32 16, i1 false)
  %5 = load i32* @hash, align 4, !tbaa !0
  store i32 %5, i32* getelementptr inbounds ([600 x i32]* @hash_history, i64 0, i64 0), align 16, !tbaa !0
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  call void @setbuf(%struct._IO_FILE* %6, i8* null) #8
  %7 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @setbuf(%struct._IO_FILE* %7, i8* null) #8
  call void @start_up() #8
  %cmp = icmp eq i32 %argc, 2
  br i1 %cmp, label %if.then, label %while.body.preheader

if.then:                                          ; preds = %entry
  %puts946 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str159, i64 0, i64 0))
  %arrayidx1 = getelementptr inbounds i8** %argv, i64 1
  %8 = load i8** %arrayidx1, align 8, !tbaa !3
  call void @run_autotest(i8* %8) #8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %entry, %if.then
  %add.ptr = getelementptr inbounds [256 x i8]* %input, i64 0, i64 6
  %add.ptr448 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 5
  %add.ptr486 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 7
  %add.ptr668 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 8
  %add.ptr686 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 3
  %add.ptr732 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 9
  %9 = bitcast %struct.move_s* %move to i8*
  %10 = bitcast %struct.move_s* %comp_move to i8*
  %11 = bitcast %struct.move_s* %tmp to i8*
  br label %while.body

while.body:                                       ; preds = %if.else747, %if.else716, %if.then609, %if.else583, %if.else425, %if.end281, %if.else803, %if.else762, %if.else733, %if.else689, %if.else410, %if.else395, %if.then386, %if.then284, %if.else288, %if.then316, %if.then332, %if.then365, %if.then388, %if.then419, %if.then441, %if.then454, %if.then494, %if.end491, %if.end541, %if.then556, %if.then552, %if.then650, %if.then666, %if.then679, %if.then711, %if.then725, %if.then777, %if.then805, %if.then771, %if.then756, %if.then730, %if.then698, %if.then684, %if.then673, %if.then659, %if.then621, %if.end602, %if.then568, %if.then571, %if.then546, %if.then500, %if.end479, %if.then446, %if.then434, %if.then424, %if.then394, %if.then373, %if.end356, %if.else359, %if.then327, %if.then404, %if.then409, %if.then742, %while.body.preheader
  %is_edit_mode.0 = phi i32 [ 0, %while.body.preheader ], [ %is_edit_mode.0, %if.then650 ], [ %is_edit_mode.0, %if.else803 ], [ %is_edit_mode.0, %if.then805 ], [ %is_edit_mode.0, %if.then777 ], [ %is_edit_mode.0, %if.then771 ], [ %is_edit_mode.0, %if.else762 ], [ %is_edit_mode.0, %if.then756 ], [ %is_edit_mode.0, %if.then742 ], [ %is_edit_mode.0, %if.else733 ], [ %is_edit_mode.0, %if.then730 ], [ %is_edit_mode.0, %if.then725 ], [ %is_edit_mode.0, %if.then711 ], [ %is_edit_mode.0, %if.then698 ], [ %is_edit_mode.0, %if.else689 ], [ %is_edit_mode.0, %if.then684 ], [ %is_edit_mode.0, %if.then679 ], [ %is_edit_mode.0, %if.then673 ], [ %is_edit_mode.0, %if.then666 ], [ %is_edit_mode.0, %if.then659 ], [ %is_edit_mode.0, %if.then621 ], [ 0, %if.end602 ], [ %is_edit_mode.0, %if.then571 ], [ %is_edit_mode.0, %if.then568 ], [ %is_edit_mode.0, %if.then556 ], [ %is_edit_mode.0, %if.then552 ], [ %is_edit_mode.0, %if.then546 ], [ %is_edit_mode.0, %if.end541 ], [ %is_edit_mode.0, %if.then500 ], [ %is_edit_mode.0, %if.then494 ], [ %is_edit_mode.0, %if.end491 ], [ %is_edit_mode.0, %if.end479 ], [ %is_edit_mode.0, %if.then454 ], [ %is_edit_mode.0, %if.then446 ], [ %is_edit_mode.0, %if.then441 ], [ %is_edit_mode.0, %if.then434 ], [ %is_edit_mode.0, %if.then424 ], [ %is_edit_mode.0, %if.then419 ], [ %is_edit_mode.0, %if.else410 ], [ %is_edit_mode.0, %if.then409 ], [ %is_edit_mode.0, %if.then404 ], [ %is_edit_mode.0, %if.else395 ], [ %is_edit_mode.0, %if.then394 ], [ %is_edit_mode.0, %if.then388 ], [ %is_edit_mode.0, %if.then386 ], [ %is_edit_mode.0, %if.then373 ], [ %is_edit_mode.0, %if.then365 ], [ %is_edit_mode.0, %if.else359 ], [ %is_edit_mode.0, %if.end356 ], [ %is_edit_mode.0, %if.then332 ], [ %is_edit_mode.0, %if.then327 ], [ %is_edit_mode.0, %if.then316 ], [ 0, %if.then284 ], [ 0, %if.end281 ], [ 0, %if.else288 ], [ %is_edit_mode.0, %if.else425 ], [ 1, %if.else583 ], [ %is_edit_mode.0, %if.then609 ], [ %is_edit_mode.0, %if.else716 ], [ %is_edit_mode.0, %if.else747 ]
  %edit_color.0 = phi i32 [ 0, %while.body.preheader ], [ %edit_color.0, %if.then650 ], [ %edit_color.0, %if.else803 ], [ %edit_color.0, %if.then805 ], [ %edit_color.0, %if.then777 ], [ %edit_color.0, %if.then771 ], [ %edit_color.0, %if.else762 ], [ %edit_color.0, %if.then756 ], [ %edit_color.0, %if.then742 ], [ %edit_color.0, %if.else733 ], [ %edit_color.0, %if.then730 ], [ %edit_color.0, %if.then725 ], [ %edit_color.0, %if.then711 ], [ %edit_color.0, %if.then698 ], [ %edit_color.0, %if.else689 ], [ %edit_color.0, %if.then684 ], [ %edit_color.0, %if.then679 ], [ %edit_color.0, %if.then673 ], [ %edit_color.0, %if.then666 ], [ %edit_color.0, %if.then659 ], [ %edit_color.0, %if.then621 ], [ %edit_color.0, %if.end602 ], [ %edit_color.0, %if.then571 ], [ %edit_color.0, %if.then568 ], [ %edit_color.0, %if.then556 ], [ %edit_color.0, %if.then552 ], [ %edit_color.0, %if.then546 ], [ %edit_color.0, %if.end541 ], [ %edit_color.0, %if.then500 ], [ %edit_color.0, %if.then494 ], [ %edit_color.0, %if.end491 ], [ %edit_color.0, %if.end479 ], [ %edit_color.0, %if.then454 ], [ %edit_color.0, %if.then446 ], [ %edit_color.0, %if.then441 ], [ %edit_color.0, %if.then434 ], [ %edit_color.0, %if.then424 ], [ %edit_color.0, %if.then419 ], [ %edit_color.0, %if.else410 ], [ %edit_color.0, %if.then409 ], [ %edit_color.0, %if.then404 ], [ %edit_color.0, %if.else395 ], [ %edit_color.0, %if.then394 ], [ %edit_color.0, %if.then388 ], [ %edit_color.0, %if.then386 ], [ %edit_color.0, %if.then373 ], [ %edit_color.0, %if.then365 ], [ %edit_color.0, %if.else359 ], [ %edit_color.0, %if.end356 ], [ %edit_color.0, %if.then332 ], [ %edit_color.0, %if.then327 ], [ %edit_color.0, %if.then316 ], [ %edit_color.0, %if.then284 ], [ %edit_color.0, %if.end281 ], [ %edit_color.0, %if.else288 ], [ %edit_color.0, %if.else425 ], [ 0, %if.else583 ], [ %131, %if.then609 ], [ %edit_color.0, %if.else716 ], [ %edit_color.0, %if.else747 ]
  %braindeadinterface.0 = phi i32 [ 0, %while.body.preheader ], [ %braindeadinterface.0, %if.then650 ], [ %braindeadinterface.0, %if.else803 ], [ %braindeadinterface.0, %if.then805 ], [ %braindeadinterface.0, %if.then777 ], [ %braindeadinterface.0, %if.then771 ], [ %braindeadinterface.0, %if.else762 ], [ %braindeadinterface.0, %if.then756 ], [ %braindeadinterface.0, %if.then742 ], [ %braindeadinterface.0, %if.else733 ], [ %braindeadinterface.0, %if.then730 ], [ %braindeadinterface.0, %if.then725 ], [ %braindeadinterface.0, %if.then711 ], [ %braindeadinterface.0, %if.then698 ], [ %braindeadinterface.0, %if.else689 ], [ %braindeadinterface.0, %if.then684 ], [ %braindeadinterface.0, %if.then679 ], [ %braindeadinterface.0, %if.then673 ], [ %braindeadinterface.0, %if.then666 ], [ %braindeadinterface.0, %if.then659 ], [ %braindeadinterface.0, %if.then621 ], [ %braindeadinterface.0, %if.end602 ], [ %braindeadinterface.0, %if.then571 ], [ %braindeadinterface.0, %if.then568 ], [ %braindeadinterface.0, %if.then556 ], [ %braindeadinterface.0, %if.then552 ], [ %braindeadinterface.0, %if.then546 ], [ %braindeadinterface.0, %if.end541 ], [ %braindeadinterface.0, %if.then500 ], [ %braindeadinterface.0, %if.then494 ], [ %braindeadinterface.0, %if.end491 ], [ %braindeadinterface.0, %if.end479 ], [ %braindeadinterface.0, %if.then454 ], [ %braindeadinterface.0, %if.then446 ], [ %braindeadinterface.0, %if.then441 ], [ %braindeadinterface.0, %if.then434 ], [ %braindeadinterface.0, %if.then424 ], [ %braindeadinterface.0, %if.then419 ], [ %braindeadinterface.0, %if.else410 ], [ %braindeadinterface.0, %if.then409 ], [ %braindeadinterface.0, %if.then404 ], [ %braindeadinterface.0, %if.else395 ], [ %braindeadinterface.0, %if.then394 ], [ %braindeadinterface.0, %if.then388 ], [ %braindeadinterface.0, %if.then386 ], [ %braindeadinterface.0, %if.then373 ], [ %braindeadinterface.0, %if.then365 ], [ %braindeadinterface.0, %if.else359 ], [ %braindeadinterface.0, %if.end356 ], [ %braindeadinterface.0, %if.then332 ], [ %braindeadinterface.0, %if.then327 ], [ %braindeadinterface.0, %if.then316 ], [ %braindeadinterface.0, %if.then284 ], [ %braindeadinterface.0, %if.end281 ], [ %braindeadinterface.0, %if.else288 ], [ %braindeadinterface.0, %if.else425 ], [ %braindeadinterface.0, %if.else583 ], [ %braindeadinterface.0, %if.then609 ], [ 1, %if.else716 ], [ %braindeadinterface.0, %if.else747 ]
  %automode.0 = phi i32 [ 0, %while.body.preheader ], [ %automode.1, %if.then650 ], [ %automode.1, %if.else803 ], [ %automode.1, %if.then805 ], [ %automode.1, %if.then777 ], [ %automode.1, %if.then771 ], [ %automode.1, %if.else762 ], [ %automode.1, %if.then756 ], [ %automode.1, %if.then742 ], [ %automode.1, %if.else733 ], [ %automode.1, %if.then730 ], [ %automode.1, %if.then725 ], [ %automode.1, %if.then711 ], [ %automode.1, %if.then698 ], [ %automode.1, %if.else689 ], [ %automode.1, %if.then684 ], [ %automode.1, %if.then679 ], [ %automode.1, %if.then673 ], [ %automode.1, %if.then666 ], [ %automode.1, %if.then659 ], [ %automode.1, %if.then621 ], [ %automode.1, %if.end602 ], [ %automode.1, %if.then571 ], [ %automode.1, %if.then568 ], [ %automode.1, %if.then556 ], [ %automode.1, %if.then552 ], [ %automode.1, %if.then546 ], [ %automode.1, %if.end541 ], [ %automode.1, %if.then500 ], [ %automode.1, %if.then494 ], [ %automode.1, %if.end491 ], [ %automode.1, %if.end479 ], [ %automode.1, %if.then454 ], [ %automode.1, %if.then446 ], [ %automode.1, %if.then441 ], [ %automode.1, %if.then434 ], [ %automode.1, %if.then424 ], [ %automode.1, %if.then419 ], [ %automode.1, %if.else410 ], [ %automode.1, %if.then409 ], [ %automode.1, %if.then404 ], [ %automode.1, %if.else395 ], [ %automode.1, %if.then394 ], [ %automode.1, %if.then388 ], [ %automode.1, %if.then386 ], [ %automode.1, %if.then373 ], [ %automode.1, %if.then365 ], [ %automode.1, %if.else359 ], [ 0, %if.end356 ], [ %automode.1, %if.then332 ], [ %automode.1, %if.then327 ], [ %automode.1, %if.then316 ], [ %automode.1, %if.then284 ], [ %automode.1, %if.end281 ], [ %automode.1, %if.else288 ], [ %automode.1, %if.else425 ], [ %automode.1, %if.else583 ], [ %automode.1, %if.then609 ], [ %automode.1, %if.else716 ], [ 1, %if.else747 ]
  %force_mode.0 = phi i32 [ 0, %while.body.preheader ], [ %force_mode.0, %if.then650 ], [ %force_mode.0, %if.else803 ], [ %force_mode.0, %if.then805 ], [ %force_mode.0, %if.then777 ], [ %force_mode.0, %if.then771 ], [ %force_mode.0, %if.else762 ], [ %force_mode.0, %if.then756 ], [ %force_mode.0, %if.then742 ], [ %force_mode.0, %if.else733 ], [ %force_mode.0, %if.then730 ], [ 0, %if.then725 ], [ %force_mode.0, %if.then711 ], [ %force_mode.0, %if.then698 ], [ %force_mode.0, %if.else689 ], [ %force_mode.0, %if.then684 ], [ %force_mode.0, %if.then679 ], [ %force_mode.0, %if.then673 ], [ %force_mode.0, %if.then666 ], [ %force_mode.0, %if.then659 ], [ %force_mode.0, %if.then621 ], [ %force_mode.0, %if.end602 ], [ %force_mode.0, %if.then571 ], [ %force_mode.0, %if.then568 ], [ %force_mode.0, %if.then556 ], [ %force_mode.0, %if.then552 ], [ %force_mode.0, %if.then546 ], [ %force_mode.0, %if.end541 ], [ %force_mode.0, %if.then500 ], [ %force_mode.0, %if.then494 ], [ %force_mode.0, %if.end491 ], [ %force_mode.0, %if.end479 ], [ %force_mode.0, %if.then454 ], [ %force_mode.0, %if.then446 ], [ 0, %if.then441 ], [ %force_mode.0, %if.then434 ], [ %force_mode.0, %if.then424 ], [ %force_mode.0, %if.then419 ], [ %force_mode.0, %if.else410 ], [ %force_mode.0, %if.then409 ], [ %force_mode.0, %if.then404 ], [ %force_mode.0, %if.else395 ], [ %force_mode.0, %if.then394 ], [ %force_mode.0, %if.then388 ], [ %force_mode.0, %if.then386 ], [ %force_mode.0, %if.then373 ], [ %force_mode.0, %if.then365 ], [ %force_mode.0, %if.else359 ], [ 0, %if.end356 ], [ %force_mode.0, %if.then332 ], [ %force_mode.0, %if.then327 ], [ %force_mode.0, %if.then316 ], [ %force_mode.0, %if.then284 ], [ %force_mode.0, %if.end281 ], [ %force_mode.0, %if.else288 ], [ 1, %if.else425 ], [ %force_mode.0, %if.else583 ], [ %force_mode.0, %if.then609 ], [ %force_mode.0, %if.else716 ], [ %force_mode.0, %if.else747 ]
  %tobool = icmp ne i32 %is_edit_mode.0, 0
  br i1 %tobool, label %if.end215, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %12 = load i32* @comp_color, align 4, !tbaa !0
  %13 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp2 = icmp ne i32 %12, %13
  %tobool3 = icmp eq i32 %automode.0, 0
  %or.cond = and i1 %cmp2, %tobool3
  br i1 %or.cond, label %if.end215, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %14 = load i32* @must_sit, align 4, !tbaa !1
  %15 = or i32 %14, %force_mode.0
  %16 = load i32* @result, align 4, !tbaa !0
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.then10, label %if.end215

if.then10:                                        ; preds = %land.lhs.true4
  store i32 0, i32* @is_pondering, align 4, !tbaa !1
  call void @think(%struct.move_s* sret %tmp) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 0, i32* @ply, align 4, !tbaa !0
  %19 = load i32* @must_sit, align 4, !tbaa !1
  %tobool11 = icmp eq i32 %19, 0
  %20 = load i32* @must_go, align 4, !tbaa !0
  %cmp13 = icmp ne i32 %20, 0
  %or.cond861 = or i1 %tobool11, %cmp13
  br i1 %or.cond861, label %if.then14, label %if.end215

if.then14:                                        ; preds = %if.then10
  %21 = load i32* @Variant, align 4, !tbaa !0
  %.off = add i32 %21, -3
  %22 = icmp ult i32 %.off, 2
  %23 = load i32* @result, align 4, !tbaa !0
  %cmp19 = icmp ne i32 %23, 2
  br i1 %22, label %switch.early.test, label %lor.lhs.false22

switch.early.test:                                ; preds = %if.then14
  %.off956 = add i32 %23, -2
  %switch = icmp ult i32 %.off956, 2
  br i1 %switch, label %lor.lhs.false22, label %land.lhs.true36

lor.lhs.false22:                                  ; preds = %switch.early.test, %if.then14
  %24 = and i32 %21, -3
  %25 = icmp eq i32 %24, 0
  %cmp27 = icmp eq i32 %21, 1
  %or.cond866 = or i1 %25, %cmp27
  br i1 %or.cond866, label %land.lhs.true28, label %if.else187

land.lhs.true28:                                  ; preds = %lor.lhs.false22
  %26 = load i32* @comp_color, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %26, 1
  %or.cond867 = and i1 %cmp29, %cmp19
  br i1 %or.cond867, label %land.lhs.true36, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true28
  %cmp33 = icmp eq i32 %26, 0
  br i1 %cmp33, label %switch.early.test950, label %if.else187

switch.early.test950:                             ; preds = %lor.lhs.false32
  switch i32 %23, label %if.then42 [
    i32 3, label %if.then195
    i32 4, label %if.then200
    i32 5, label %if.then205
    i32 1, label %if.else207
  ]

land.lhs.true36:                                  ; preds = %switch.early.test, %land.lhs.true28
  switch i32 %23, label %if.then42 [
    i32 4, label %if.then200
    i32 5, label %if.then205
    i32 1, label %if.else207
  ]

if.then42:                                        ; preds = %switch.early.test950, %land.lhs.true36
  call void @comp_to_coord(%struct.move_s* byval align 8 %comp_move, i8* %1) #8
  %27 = load i32* @hash, align 4, !tbaa !0
  %28 = load i32* @move_number, align 4, !tbaa !0
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom43
  store i32 %27, i32* %arrayidx44, align 4, !tbaa !0
  %arrayidx46 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom43
  %29 = bitcast %struct.move_s* %arrayidx46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %10, i64 24, i32 8, i1 false), !tbaa.struct !4
  call void @make(%struct.move_s* %comp_move, i32 0) #8
  %30 = load i32* @move_number, align 4, !tbaa !0
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* @move_number, align 4, !tbaa !0
  %idxprom47 = sext i32 %30 to i64
  %arrayidx48 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom47
  %31 = bitcast %struct.move_x* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false), !tbaa.struct !5
  store i32 0, i32* @userealholdings, align 4, !tbaa !0
  %32 = load i32* @must_go, align 4, !tbaa !0
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* @must_go, align 4, !tbaa !0
  %call49 = call i32 @is_draw() #8
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.then42
  store i32 5, i32* @result, align 4, !tbaa !0
  br label %if.end55

if.else:                                          ; preds = %if.then42
  %33 = load i32* @fifty, align 4, !tbaa !0
  %cmp52 = icmp sgt i32 %33, 100
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.else
  store i32 4, i32* @result, align 4, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then53, %if.then51
  %34 = load i32* @root_to_move, align 4, !tbaa !0
  %xor = xor i32 %34, 1
  store i32 %xor, i32* @root_to_move, align 4, !tbaa !0
  call void @reset_piece_square() #8
  %35 = load i32* @book_ply, align 4, !tbaa !0
  %cmp56 = icmp slt i32 %35, 40
  br i1 %cmp56, label %if.then57, label %if.end66

if.then57:                                        ; preds = %if.end55
  %tobool58 = icmp eq i32 %35, 0
  br i1 %tobool58, label %if.then59, label %if.else62

if.then59:                                        ; preds = %if.then57
  %call61 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %1) #8
  br label %if.end66

if.else62:                                        ; preds = %if.then57
  %call64 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %1) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.else62, %if.end55
  %36 = load i32* @book_ply, align 4, !tbaa !0
  %inc67 = add nsw i32 %36, 1
  store i32 %inc67, i32* @book_ply, align 4, !tbaa !0
  %37 = load i32* @nodes, align 4, !tbaa !0
  %38 = load i32* @qnodes, align 4, !tbaa !0
  %conv = sitofp i32 %38 to float
  %conv68 = sitofp i32 %37 to float
  %div = fdiv float %conv, %conv68
  %conv70 = fmul float %div, 1.000000e+02
  %conv71 = fpext float %conv70 to double
  %call72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %37, double %conv71) #8
  %39 = load i32* @ECacheProbes, align 4, !tbaa !0
  %40 = load i32* @ECacheHits, align 4, !tbaa !0
  %conv73 = uitofp i32 %40 to float
  %conv74 = uitofp i32 %39 to float
  %add = fadd float %conv74, 1.000000e+00
  %div75 = fdiv float %conv73, %add
  %mul76 = fmul float %div75, 1.000000e+02
  %conv77 = fpext float %mul76 to double
  %call78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 %39, i32 %40, double %conv77) #8
  %41 = load i32* @TTStores, align 4, !tbaa !0
  %42 = load i32* @TTProbes, align 4, !tbaa !0
  %43 = load i32* @TTHits, align 4, !tbaa !0
  %conv79 = uitofp i32 %43 to float
  %conv80 = uitofp i32 %42 to float
  %add81 = fadd float %conv80, 1.000000e+00
  %div82 = fdiv float %conv79, %add81
  %mul83 = fmul float %div82, 1.000000e+02
  %conv84 = fpext float %mul83 to double
  %call85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i32 %41, i32 %42, i32 %43, double %conv84) #8
  %44 = load i32* @NTries, align 4, !tbaa !0
  %45 = load i32* @NCuts, align 4, !tbaa !0
  %conv86 = uitofp i32 %45 to float
  %mul87 = fmul float %conv86, 1.000000e+02
  %conv88 = uitofp i32 %44 to float
  %add89 = fadd float %conv88, 1.000000e+00
  %div90 = fdiv float %mul87, %add89
  %conv91 = fpext float %div90 to double
  %46 = load i32* @TExt, align 4, !tbaa !0
  %call92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 %44, i32 %45, double %conv91, i32 %46) #8
  %47 = load i32* @ext_check, align 4, !tbaa !0
  %48 = load i32* @razor_drop, align 4, !tbaa !0
  %49 = load i32* @razor_material, align 4, !tbaa !0
  %call93 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %47, i32 %48, i32 %49) #8
  %50 = load i32* @FHF, align 4, !tbaa !0
  %conv94 = uitofp i32 %50 to float
  %mul95 = fmul float %conv94, 1.000000e+02
  %51 = load i32* @FH, align 4, !tbaa !0
  %add96 = add i32 %51, 1
  %conv97 = uitofp i32 %add96 to float
  %div98 = fdiv float %mul95, %conv97
  %conv99 = fpext float %div98 to double
  %call100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), double %conv99) #8
  %52 = load i32* @Material, align 4, !tbaa !0
  %call101 = call i32 @eval(i32 -1000000, i32 1000000) #8
  %53 = load i32* @maxposdiff, align 4, !tbaa !0
  %54 = load i32* @white_hand_eval, align 4, !tbaa !0
  %55 = load i32* @black_hand_eval, align 4, !tbaa !0
  %call102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %52, i32 %call101, i32 %53, i32 %54, i32 %55) #8
  %56 = load i32* @hash, align 4, !tbaa !0
  %57 = load i32* @hold_hash, align 4, !tbaa !0
  %call103 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i32 %56, i32 %57) #8
  %58 = load i32* @result, align 4, !tbaa !0
  %tobool104 = icmp eq i32 %58, 0
  %59 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool135 = icmp ne i32 %59, 0
  %60 = bitcast %struct.move_s* %comp_move to i64*
  %61 = load i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 0), align 4, !tbaa !0
  %64 = lshr i64 %61, 32
  %65 = trunc i64 %64 to i32
  %cmp138.not = icmp eq i32 %62, %63
  %66 = load i32* getelementptr inbounds (%struct.move_s* @dummy, i64 0, i32 1), align 4, !tbaa !0
  %cmp111 = icmp eq i32 %65, %66
  %or.cond960 = and i1 %cmp138.not, %cmp111
  br i1 %tobool104, label %if.then105, label %if.else134

if.then105:                                       ; preds = %if.end66
  br i1 %tobool135, label %if.then107, label %if.else121

if.then107:                                       ; preds = %if.then105
  br i1 %or.cond960, label %if.end116, label %if.then113

if.then113:                                       ; preds = %if.then107
  %call115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* %1) #8
  br label %if.end116

if.end116:                                        ; preds = %if.then107, %if.then113
  %67 = load i32* @Variant, align 4, !tbaa !0
  %cmp117 = icmp eq i32 %67, 1
  br i1 %cmp117, label %if.then119, label %if.end215

if.then119:                                       ; preds = %if.end116
  call void @CheckBadFlow(i32 0) #8
  br label %if.end215

if.else121:                                       ; preds = %if.then105
  br i1 %or.cond960, label %if.end215, label %if.then129

if.then129:                                       ; preds = %if.else121
  %call131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %1) #8
  br label %if.end215

if.else134:                                       ; preds = %if.end66
  br i1 %tobool135, label %if.then136, label %if.else148

if.then136:                                       ; preds = %if.else134
  br i1 %or.cond960, label %if.end160, label %if.then144

if.then144:                                       ; preds = %if.then136
  %call146 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* %1) #8
  br label %if.end160

if.else148:                                       ; preds = %if.else134
  br i1 %or.cond960, label %if.end160, label %if.then156

if.then156:                                       ; preds = %if.else148
  %call158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %1) #8
  br label %if.end160

if.end160:                                        ; preds = %if.else148, %if.then136, %if.then156, %if.then144
  %68 = load i32* @result, align 4, !tbaa !0
  switch i32 %68, label %if.else180 [
    i32 2, label %if.then163
    i32 3, label %if.then168
    i32 4, label %if.then173
    i32 5, label %if.then178
  ]

if.then163:                                       ; preds = %if.end160
  %puts945 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str158, i64 0, i64 0))
  br label %if.end215

if.then168:                                       ; preds = %if.end160
  %puts944 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str157, i64 0, i64 0))
  br label %if.end215

if.then173:                                       ; preds = %if.end160
  %puts943 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str156, i64 0, i64 0))
  br label %if.end215

if.then178:                                       ; preds = %if.end160
  %puts942 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str155, i64 0, i64 0))
  br label %if.end215

if.else180:                                       ; preds = %if.end160
  %puts941 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str154, i64 0, i64 0))
  br label %if.end215

if.else187:                                       ; preds = %lor.lhs.false32, %lor.lhs.false22
  switch i32 %23, label %if.else207 [
    i32 2, label %if.then190
    i32 3, label %if.then195
    i32 4, label %if.then200
    i32 5, label %if.then205
  ]

if.then190:                                       ; preds = %if.else187
  %puts940 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str158, i64 0, i64 0))
  br label %if.end215

if.then195:                                       ; preds = %switch.early.test950, %if.else187
  %puts939 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str157, i64 0, i64 0))
  br label %if.end215

if.then200:                                       ; preds = %switch.early.test950, %land.lhs.true36, %if.else187
  %puts938 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str156, i64 0, i64 0))
  br label %if.end215

if.then205:                                       ; preds = %switch.early.test950, %land.lhs.true36, %if.else187
  %puts937 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str155, i64 0, i64 0))
  br label %if.end215

if.else207:                                       ; preds = %switch.early.test950, %land.lhs.true36, %if.else187
  %puts936 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str154, i64 0, i64 0))
  br label %if.end215

if.end215:                                        ; preds = %if.else121, %if.end116, %if.then10, %land.lhs.true4, %land.lhs.true, %while.body, %if.then190, %if.then200, %if.else207, %if.then205, %if.then195, %if.then163, %if.then173, %if.else180, %if.then178, %if.then168, %if.then129, %if.then119
  %automode.1 = phi i32 [ %automode.0, %if.then119 ], [ %automode.0, %if.then129 ], [ 0, %if.then168 ], [ 0, %if.then178 ], [ 0, %if.else180 ], [ 0, %if.then173 ], [ 0, %if.then163 ], [ 0, %if.then195 ], [ 0, %if.then205 ], [ 0, %if.else207 ], [ 0, %if.then200 ], [ 0, %if.then190 ], [ %automode.0, %while.body ], [ 0, %land.lhs.true ], [ %automode.0, %land.lhs.true4 ], [ %automode.0, %if.then10 ], [ %automode.0, %if.end116 ], [ %automode.0, %if.else121 ]
  %69 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool216 = icmp eq i32 %69, 0
  br i1 %tobool216, label %if.then217, label %if.else227

if.then217:                                       ; preds = %if.end215
  %70 = load i32* %show_board, align 4, !tbaa !1
  %tobool218 = icmp eq i32 %70, 0
  br i1 %tobool218, label %if.end221, label %if.then219

if.then219:                                       ; preds = %if.then217
  %putchar935 = call i32 @putchar(i32 10) #1
  %71 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %72 = load i32* @comp_color, align 4, !tbaa !0
  %sub = sub nsw i32 1, %72
  call void @display_board(%struct._IO_FILE* %71, i32 %sub) #8
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.then219
  %tobool222 = icmp eq i32 %automode.1, 0
  br i1 %tobool222, label %if.then223, label %if.end251

if.then223:                                       ; preds = %if.end221
  %call224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)) #8
  %73 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %73) #8
  br label %if.end251

if.else227:                                       ; preds = %if.end215
  %74 = load i32* @must_sit, align 4, !tbaa !1
  %tobool228 = icmp eq i32 %74, 0
  br i1 %tobool228, label %lor.lhs.false229, label %land.lhs.true240

lor.lhs.false229:                                 ; preds = %if.else227
  %75 = load i32* @allow_pondering, align 4, !tbaa !1
  %tobool230 = icmp eq i32 %75, 0
  %brmerge = or i1 %tobool230, %tobool
  br i1 %brmerge, label %lor.lhs.false238, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %lor.lhs.false229
  %tobool234 = icmp eq i32 %force_mode.0, 0
  %76 = load i32* @move_number, align 4, !tbaa !0
  %cmp236 = icmp ne i32 %76, 0
  %or.cond879 = and i1 %tobool234, %cmp236
  %77 = load i32* @is_analyzing, align 4, !tbaa !1
  %tobool239 = icmp ne i32 %77, 0
  %or.cond881 = or i1 %or.cond879, %tobool239
  %78 = load i32* @result, align 4, !tbaa !0
  %tobool241.not = icmp eq i32 %78, 0
  %or.cond883.not = and i1 %or.cond881, %tobool241.not
  %tobool243.old.old = icmp eq i32 %automode.1, 0
  %or.cond953 = and i1 %or.cond883.not, %tobool243.old.old
  br i1 %or.cond953, label %if.then244, label %if.end246

lor.lhs.false238:                                 ; preds = %lor.lhs.false229
  %.old880 = load i32* @is_analyzing, align 4, !tbaa !1
  %.old882 = load i32* @result, align 4, !tbaa !0
  %notlhs = icmp ne i32 %.old880, 0
  %notrhs = icmp eq i32 %.old882, 0
  %or.cond885.not = and i1 %notrhs, %notlhs
  %tobool243.old = icmp eq i32 %automode.1, 0
  %or.cond952 = and i1 %or.cond885.not, %tobool243.old
  br i1 %or.cond952, label %if.then244, label %if.end246

land.lhs.true240:                                 ; preds = %if.else227
  %.old884 = load i32* @result, align 4, !tbaa !0
  %79 = or i32 %.old884, %automode.1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %if.then244, label %if.end246

if.then244:                                       ; preds = %land.lhs.true233, %lor.lhs.false238, %land.lhs.true240
  store i32 1, i32* @is_pondering, align 4, !tbaa !1
  call void @think(%struct.move_s* sret %tmp245) #8
  store i32 0, i32* @is_pondering, align 4, !tbaa !1
  store i32 0, i32* @ply, align 4, !tbaa !0
  br label %if.end246

if.end246:                                        ; preds = %land.lhs.true233, %lor.lhs.false238, %land.lhs.true240, %if.then244
  %tobool247 = icmp eq i32 %automode.1, 0
  br i1 %tobool247, label %if.then248, label %if.end251

if.then248:                                       ; preds = %if.end246
  %81 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %81) #8
  br label %if.end251

if.end251:                                        ; preds = %if.end246, %if.end221, %if.then248, %if.then223
  br i1 %tobool, label %if.else292, label %land.lhs.true253

land.lhs.true253:                                 ; preds = %if.end251
  %call255 = call i32 @is_move(i8* %0) #8
  %tobool256 = icmp eq i32 %call255, 0
  br i1 %tobool256, label %if.else292, label %if.then257

if.then257:                                       ; preds = %land.lhs.true253
  %call259 = call i32 @verify_coord(i8* %0, %struct.move_s* %move) #8
  %tobool260 = icmp eq i32 %call259, 0
  br i1 %tobool260, label %if.else288, label %if.then261

if.then261:                                       ; preds = %if.then257
  %82 = load i32* @move_number, align 4, !tbaa !0
  %idxprom262 = sext i32 %82 to i64
  %arrayidx263 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom262
  %83 = bitcast %struct.move_s* %arrayidx263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %9, i64 24, i32 4, i1 false), !tbaa.struct !4
  %84 = load i32* @hash, align 4, !tbaa !0
  %arrayidx265 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom262
  store i32 %84, i32* %arrayidx265, align 4, !tbaa !0
  call void @make(%struct.move_s* %move, i32 0) #8
  %85 = load i32* @move_number, align 4, !tbaa !0
  %inc266 = add nsw i32 %85, 1
  store i32 %inc266, i32* @move_number, align 4, !tbaa !0
  %idxprom267 = sext i32 %85 to i64
  %arrayidx268 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom267
  %86 = bitcast %struct.move_x* %arrayidx268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 16, i1 false), !tbaa.struct !5
  call void @reset_piece_square() #8
  %87 = load i32* @root_to_move, align 4, !tbaa !0
  %xor269 = xor i32 %87, 1
  store i32 %xor269, i32* @root_to_move, align 4, !tbaa !0
  %88 = load i32* @book_ply, align 4, !tbaa !0
  %cmp270 = icmp slt i32 %88, 40
  br i1 %cmp270, label %if.then272, label %if.end281

if.then272:                                       ; preds = %if.then261
  %tobool273 = icmp eq i32 %88, 0
  br i1 %tobool273, label %if.then274, label %if.else277

if.then274:                                       ; preds = %if.then272
  %call276 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %0) #8
  br label %if.end281

if.else277:                                       ; preds = %if.then272
  %call279 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8* %0) #8
  br label %if.end281

if.end281:                                        ; preds = %if.then274, %if.else277, %if.then261
  %89 = load i32* @book_ply, align 4, !tbaa !0
  %inc282 = add nsw i32 %89, 1
  store i32 %inc282, i32* @book_ply, align 4, !tbaa !0
  %90 = load i32* %show_board, align 4, !tbaa !1
  %tobool283 = icmp eq i32 %90, 0
  br i1 %tobool283, label %while.body, label %if.then284

if.then284:                                       ; preds = %if.end281
  %putchar934 = call i32 @putchar(i32 10) #1
  %91 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %92 = load i32* @comp_color, align 4, !tbaa !0
  %sub286 = sub nsw i32 1, %92
  call void @display_board(%struct._IO_FILE* %91, i32 %sub286) #8
  br label %while.body

if.else288:                                       ; preds = %if.then257
  %call290 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %0) #8
  br label %while.body

if.else292:                                       ; preds = %land.lhs.true253, %if.end251
  %call294 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0)) #9
  %tobool295 = icmp eq i8* %call294, null
  br i1 %tobool295, label %for.cond.preheader, label %if.end305

for.cond.preheader:                               ; preds = %if.else292
  %93 = load i8* %0, align 16, !tbaa !1
  %tobool298957 = icmp eq i8 %93, 0
  br i1 %tobool298957, label %if.end305, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %call302 = call i32** @__ctype_tolower_loc() #10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %94 = phi i8 [ %93, %for.body.lr.ph ], [ %97, %for.body ]
  %p.0958 = phi i8* [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %idxprom301 = sext i8 %94 to i64
  %95 = load i32** %call302, align 8, !tbaa !3
  %arrayidx303 = getelementptr inbounds i32* %95, i64 %idxprom301
  %96 = load i32* %arrayidx303, align 4, !tbaa !0
  %conv304 = trunc i32 %96 to i8
  store i8 %conv304, i8* %p.0958, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %p.0958, i64 1
  %97 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool298 = icmp eq i8 %97, 0
  br i1 %tobool298, label %if.end305, label %for.body

if.end305:                                        ; preds = %for.cond.preheader, %for.body, %if.else292
  %call307 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #9
  %tobool308 = icmp eq i32 %call307, 0
  br i1 %tobool308, label %if.then309, label %if.else310

if.then309:                                       ; preds = %if.end305
  call void @free_hash() #8
  call void @free_ecache() #8
  call void @exit(i32 0) #11
  unreachable

if.else310:                                       ; preds = %if.end305
  %call312 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #9
  %tobool313 = icmp eq i32 %call312, 0
  br i1 %tobool313, label %if.then314, label %if.else319

if.then314:                                       ; preds = %if.else310
  %98 = load i32* @is_analyzing, align 4, !tbaa !1
  %tobool315 = icmp eq i32 %98, 0
  br i1 %tobool315, label %if.else317, label %if.then316

if.then316:                                       ; preds = %if.then314
  store i32 0, i32* @is_analyzing, align 4, !tbaa !1
  store i32 0, i32* @is_pondering, align 4, !tbaa !1
  store i32 0, i32* @time_for_move, align 4, !tbaa !0
  br label %while.body

if.else317:                                       ; preds = %if.then314
  call void @free_hash() #8
  call void @free_ecache() #8
  call void @exit(i32 0) #11
  unreachable

if.else319:                                       ; preds = %if.else310
  %call321 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0)) #9
  %tobool322 = icmp eq i32 %call321, 0
  br i1 %tobool322, label %if.then327, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %if.else319
  %call325 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #9
  %tobool326 = icmp eq i32 %call325, 0
  br i1 %tobool326, label %if.then327, label %if.else328

if.then327:                                       ; preds = %lor.lhs.false323, %if.else319
  call void @toggle_bool(i32* %show_board) #8
  br label %while.body

if.else328:                                       ; preds = %lor.lhs.false323
  %call330 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i64 5) #9
  %tobool331 = icmp eq i32 %call330, 0
  br i1 %tobool331, label %if.then332, label %if.else343

if.then332:                                       ; preds = %if.else328
  %call334 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* %depth) #8
  store i32 0, i32* @raw_nodes, align 4, !tbaa !0
  %call335 = call i64 @rtime() #8
  %99 = load i32* %depth, align 4, !tbaa !0
  call void @perft(i32 %99) #8
  %100 = load i32* %depth, align 4, !tbaa !0
  %101 = load i32* @raw_nodes, align 4, !tbaa !0
  %call336 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str26, i64 0, i64 0), i32 %100, i32 %101) #8
  %call337 = call i64 @rtime() #8
  %call338 = call i32 @rdifftime(i64 %call337, i64 %call335) #8
  %conv339 = sitofp i32 %call338 to float
  %conv340 = fpext float %conv339 to double
  %div341 = fdiv double %conv340, 1.000000e+02
  %call342 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), double %div341) #8
  br label %while.body

if.else343:                                       ; preds = %if.else328
  %call345 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #9
  %tobool346 = icmp eq i32 %call345, 0
  br i1 %tobool346, label %if.then347, label %if.else361

if.then347:                                       ; preds = %if.else343
  %102 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool348 = icmp eq i32 %102, 0
  br i1 %tobool348, label %if.end351, label %if.then349

if.then349:                                       ; preds = %if.then347
  %call350 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @setcode, i64 0, i64 0)) #8
  br label %if.end351

if.end351:                                        ; preds = %if.then347, %if.then349
  %103 = load i32* @is_analyzing, align 4, !tbaa !1
  %tobool352 = icmp eq i32 %103, 0
  br i1 %tobool352, label %if.then353, label %if.else359

if.then353:                                       ; preds = %if.end351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  store i32 2, i32* @Variant, align 4, !tbaa !0
  call void @init_game() #8
  call void @initialize_hash() #8
  %tobool354 = icmp eq i32 %braindeadinterface.0, 0
  br i1 %tobool354, label %if.then355, label %if.end356

if.then355:                                       ; preds = %if.then353
  call void @clear_tt() #8
  call void @reset_ecache() #8
  br label %if.end356

if.end356:                                        ; preds = %if.then353, %if.then355
  store i32 0, i32* @must_sit, align 4, !tbaa !1
  store i32 0, i32* @go_fast, align 4, !tbaa !1
  store i32 0, i32* @piecedead, align 4, !tbaa !1
  store i32 0, i32* @partnerdead, align 4, !tbaa !1
  store i32 0, i32* @kibitzed, align 4, !tbaa !1
  store i32 0, i32* @fixed_time, align 4, !tbaa !0
  store i32 0, i32* @root_to_move, align 4, !tbaa !0
  store i32 0, i32* @comp_color, align 4, !tbaa !0
  store i32 0, i32* @move_number, align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([600 x i32]* @hash_history, i64 0, i64 0), align 16, !tbaa !0
  store i32 0, i32* @bookidx, align 4, !tbaa !0
  store i32 2000, i32* @opp_rating, align 4, !tbaa !0
  store i32 2000, i32* @my_rating, align 4, !tbaa !0
  store i32 0, i32* @must_go, align 4, !tbaa !0
  store i32 1, i32* @tradefreely, align 4, !tbaa !0
  call void @CheckBadFlow(i32 1) #8
  call void @ResetHandValue() #8
  br label %while.body

if.else359:                                       ; preds = %if.end351
  call void @init_game() #8
  store i32 0, i32* @move_number, align 4, !tbaa !0
  br label %while.body

if.else361:                                       ; preds = %if.else343
  %call363 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0)) #9
  %tobool364 = icmp eq i32 %call363, 0
  br i1 %tobool364, label %if.then365, label %if.else369

if.then365:                                       ; preds = %if.else361
  store i32 1, i32* @xb_mode, align 4, !tbaa !0
  call void @toggle_bool(i32* %show_board) #8
  %call366 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %putchar = call i32 @putchar(i32 10) #1
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str, i64 0, i64 0))
  call void @BegForPartner() #8
  br label %while.body

if.else369:                                       ; preds = %if.else361
  %call371 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0)) #9
  %tobool372 = icmp eq i32 %call371, 0
  br i1 %tobool372, label %if.then373, label %if.else382

if.then373:                                       ; preds = %if.else369
  %104 = load i32* @nodes, align 4, !tbaa !0
  %105 = load i32* @qnodes, align 4, !tbaa !0
  %conv374 = sitofp i32 %105 to float
  %conv375 = sitofp i32 %104 to float
  %div376 = fdiv float %conv374, %conv375
  %conv379 = fmul float %div376, 1.000000e+02
  %conv380 = fpext float %conv379 to double
  %call381 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str33, i64 0, i64 0), i32 %104, double %conv380) #8
  br label %while.body

if.else382:                                       ; preds = %if.else369
  %call384 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #9
  %tobool385 = icmp eq i32 %call384, 0
  br i1 %tobool385, label %if.then386, label %if.else390

if.then386:                                       ; preds = %if.else382
  call void @toggle_bool(i32* @post) #8
  %106 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool387 = icmp eq i32 %106, 0
  br i1 %tobool387, label %while.body, label %if.then388

if.then388:                                       ; preds = %if.then386
  store i32 1, i32* @post, align 4, !tbaa !1
  br label %while.body

if.else390:                                       ; preds = %if.else382
  %call392 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #9
  %tobool393 = icmp eq i32 %call392, 0
  br i1 %tobool393, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.else390
  store i32 0, i32* @post, align 4, !tbaa !1
  br label %while.body

if.else395:                                       ; preds = %if.else390
  %call397 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #9
  %tobool398 = icmp eq i32 %call397, 0
  br i1 %tobool398, label %while.body, label %if.else400

if.else400:                                       ; preds = %if.else395
  %call402 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0)) #9
  %tobool403 = icmp eq i32 %call402, 0
  br i1 %tobool403, label %if.then404, label %if.else405

if.then404:                                       ; preds = %if.else400
  store i32 1, i32* @allow_pondering, align 4, !tbaa !1
  br label %while.body

if.else405:                                       ; preds = %if.else400
  %call407 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0)) #9
  %tobool408 = icmp eq i32 %call407, 0
  br i1 %tobool408, label %if.then409, label %if.else410

if.then409:                                       ; preds = %if.else405
  store i32 0, i32* @allow_pondering, align 4, !tbaa !1
  br label %while.body

if.else410:                                       ; preds = %if.else405
  %call412 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str39, i64 0, i64 0)) #9
  %tobool413 = icmp eq i32 %call412, 0
  br i1 %tobool413, label %while.body, label %if.else415

if.else415:                                       ; preds = %if.else410
  %call417 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0)) #9
  %tobool418 = icmp eq i32 %call417, 0
  br i1 %tobool418, label %if.then419, label %if.else420

if.then419:                                       ; preds = %if.else415
  store i32 1, i32* @white_to_move, align 4, !tbaa !0
  store i32 0, i32* @root_to_move, align 4, !tbaa !0
  store i32 0, i32* @comp_color, align 4, !tbaa !0
  br label %while.body

if.else420:                                       ; preds = %if.else415
  %call422 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0)) #9
  %tobool423 = icmp eq i32 %call422, 0
  br i1 %tobool423, label %if.then424, label %if.else425

if.then424:                                       ; preds = %if.else420
  store i32 0, i32* @white_to_move, align 4, !tbaa !0
  store i32 1, i32* @root_to_move, align 4, !tbaa !0
  store i32 1, i32* @comp_color, align 4, !tbaa !0
  br label %while.body

if.else425:                                       ; preds = %if.else420
  %call427 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0)) #9
  %tobool428 = icmp eq i32 %call427, 0
  br i1 %tobool428, label %while.body, label %if.else430

if.else430:                                       ; preds = %if.else425
  %call432 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0)) #9
  %tobool433 = icmp eq i32 %call432, 0
  br i1 %tobool433, label %if.then434, label %if.else437

if.then434:                                       ; preds = %if.else430
  call void @check_phase() #8
  %call435 = call i32 @eval(i32 -1000000, i32 1000000) #8
  %call436 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i32 %call435) #8
  br label %while.body

if.else437:                                       ; preds = %if.else430
  %call439 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0)) #9
  %tobool440 = icmp eq i32 %call439, 0
  br i1 %tobool440, label %if.then441, label %if.else442

if.then441:                                       ; preds = %if.else437
  %107 = load i32* @white_to_move, align 4, !tbaa !0
  store i32 %107, i32* @comp_color, align 4, !tbaa !0
  br label %while.body

if.else442:                                       ; preds = %if.else437
  %call444 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i64 4) #9
  %tobool445 = icmp eq i32 %call444, 0
  br i1 %tobool445, label %if.then446, label %if.else450

if.then446:                                       ; preds = %if.else442
  %call449 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr448, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i32* @time_left) #8
  br label %while.body

if.else450:                                       ; preds = %if.else442
  %call452 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i64 4) #9
  %tobool453 = icmp eq i32 %call452, 0
  br i1 %tobool453, label %if.then454, label %if.else458

if.then454:                                       ; preds = %if.else450
  %call457 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr448, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i32* @opp_time) #8
  br label %while.body

if.else458:                                       ; preds = %if.else450
  %call460 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), i64 5) #9
  %tobool461 = icmp eq i32 %call460, 0
  br i1 %tobool461, label %if.then462, label %if.else480

if.then462:                                       ; preds = %if.else458
  %strchr = call i8* @strchr(i8* %add.ptr, i32 58)
  %tobool466 = icmp eq i8* %strchr, null
  br i1 %tobool466, label %if.else474, label %if.then467

if.then467:                                       ; preds = %if.then462
  %call470 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([12 x i8]* @.str51, i64 0, i64 0), i32* @moves_to_tc, i32* @min_per_game, i32* @sec_per_game, i32* @inc) #8
  %108 = load i32* @min_per_game, align 4, !tbaa !0
  %mul471 = mul nsw i32 %108, 6000
  %109 = load i32* @sec_per_game, align 4, !tbaa !0
  %mul472 = mul nsw i32 %109, 100
  %add473 = add nsw i32 %mul472, %mul471
  br label %if.end479

if.else474:                                       ; preds = %if.then462
  %call477 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8]* @.str52, i64 0, i64 0), i32* @moves_to_tc, i32* @min_per_game, i32* @inc) #8
  %110 = load i32* @min_per_game, align 4, !tbaa !0
  %mul478 = mul nsw i32 %110, 6000
  br label %if.end479

if.end479:                                        ; preds = %if.else474, %if.then467
  %storemerge900 = phi i32 [ %add473, %if.then467 ], [ %mul478, %if.else474 ]
  store i32 %storemerge900, i32* @time_left, align 4, !tbaa !0
  store i32 %storemerge900, i32* @opp_time, align 4, !tbaa !0
  store i32 0, i32* @fixed_time, align 4, !tbaa !0
  store i32 0, i32* @time_cushion, align 4, !tbaa !0
  br label %while.body

if.else480:                                       ; preds = %if.else458
  %call482 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i64 6) #9
  %tobool483 = icmp eq i32 %call482, 0
  br i1 %tobool483, label %if.then484, label %if.else496

if.then484:                                       ; preds = %if.else480
  %call487 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr486, i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0), i32* @my_rating, i32* @opp_rating) #8
  %111 = load i32* @my_rating, align 4, !tbaa !0
  %cmp488 = icmp eq i32 %111, 0
  br i1 %cmp488, label %if.then490, label %if.end491

if.then490:                                       ; preds = %if.then484
  store i32 2000, i32* @my_rating, align 4, !tbaa !0
  br label %if.end491

if.end491:                                        ; preds = %if.then490, %if.then484
  %112 = load i32* @opp_rating, align 4, !tbaa !0
  %cmp492 = icmp eq i32 %112, 0
  br i1 %cmp492, label %if.then494, label %while.body

if.then494:                                       ; preds = %if.end491
  store i32 2000, i32* @opp_rating, align 4, !tbaa !0
  br label %while.body

if.else496:                                       ; preds = %if.else480
  %call498 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str55, i64 0, i64 0), i64 7) #9
  %tobool499 = icmp eq i32 %call498, 0
  br i1 %tobool499, label %if.then500, label %if.else502

if.then500:                                       ; preds = %if.else496
  call void @ProcessHoldings(i8* %0) #8
  br label %while.body

if.else502:                                       ; preds = %if.else496
  %call504 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str56, i64 0, i64 0), i64 7) #9
  %tobool505 = icmp eq i32 %call504, 0
  br i1 %tobool505, label %if.then506, label %if.else542

if.then506:                                       ; preds = %if.else502
  %call508 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str57, i64 0, i64 0)) #9
  %tobool509 = icmp eq i8* %call508, null
  br i1 %tobool509, label %if.else511, label %if.then510

if.then510:                                       ; preds = %if.then506
  store i32 2, i32* @Variant, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end541

if.else511:                                       ; preds = %if.then506
  %call513 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0)) #9
  %tobool514 = icmp eq i8* %call513, null
  br i1 %tobool514, label %if.else516, label %if.then515

if.then515:                                       ; preds = %if.else511
  store i32 0, i32* @Variant, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end541

if.else516:                                       ; preds = %if.else511
  %call518 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0)) #9
  %tobool519 = icmp eq i8* %call518, null
  br i1 %tobool519, label %if.else521, label %if.then520

if.then520:                                       ; preds = %if.else516
  store i32 1, i32* @Variant, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end541

if.else521:                                       ; preds = %if.else516
  %call523 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0)) #9
  %tobool524 = icmp eq i8* %call523, null
  br i1 %tobool524, label %if.else526, label %if.then525

if.then525:                                       ; preds = %if.else521
  store i32 3, i32* @Variant, align 4, !tbaa !0
  store i32 0, i32* @Giveaway, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end541

if.else526:                                       ; preds = %if.else521
  %call528 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str61, i64 0, i64 0)) #9
  %tobool529 = icmp eq i8* %call528, null
  br i1 %tobool529, label %if.else531, label %if.then530

if.then530:                                       ; preds = %if.else526
  store i32 3, i32* @Variant, align 4, !tbaa !0
  store i32 1, i32* @Giveaway, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end541

if.else531:                                       ; preds = %if.else526
  %call533 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0)) #9
  %tobool534 = icmp eq i8* %call533, null
  br i1 %tobool534, label %if.end541, label %if.then535

if.then535:                                       ; preds = %if.else531
  store i32 4, i32* @Variant, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @losers_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end541

if.end541:                                        ; preds = %if.else531, %if.then515, %if.then525, %if.then535, %if.then530, %if.then520, %if.then510
  call void @initialize_hash() #8
  call void @clear_tt() #8
  call void @reset_ecache() #8
  br label %while.body

if.else542:                                       ; preds = %if.else502
  %call544 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i64 7) #9
  %tobool545 = icmp eq i32 %call544, 0
  br i1 %tobool545, label %if.then546, label %if.else548

if.then546:                                       ; preds = %if.else542
  store i32 1, i32* @is_analyzing, align 4, !tbaa !1
  store i32 1, i32* @is_pondering, align 4, !tbaa !1
  call void @think(%struct.move_s* sret %tmp547) #8
  store i32 0, i32* @ply, align 4, !tbaa !0
  br label %while.body

if.else548:                                       ; preds = %if.else542
  %call550 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i64 4) #9
  %tobool551 = icmp eq i32 %call550, 0
  br i1 %tobool551, label %if.then552, label %if.else564

if.then552:                                       ; preds = %if.else548
  %113 = load i32* @move_number, align 4, !tbaa !0
  %call553 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0), i32 %113) #8
  %114 = load i32* @move_number, align 4, !tbaa !0
  %cmp554 = icmp sgt i32 %114, 0
  br i1 %cmp554, label %if.then556, label %while.body

if.then556:                                       ; preds = %if.then552
  %dec557 = add nsw i32 %114, -1
  store i32 %dec557, i32* @move_number, align 4, !tbaa !0
  %idxprom558 = sext i32 %dec557 to i64
  %arrayidx559 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom558
  %115 = bitcast %struct.move_x* %arrayidx559 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %115, i64 16, i32 16, i1 false), !tbaa.struct !5
  %arrayidx561 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom558
  call void @unmake(%struct.move_s* %arrayidx561, i32 0) #8
  call void @reset_piece_square() #8
  %116 = load i32* @root_to_move, align 4, !tbaa !0
  %xor562 = xor i32 %116, 1
  store i32 %xor562, i32* @root_to_move, align 4, !tbaa !0
  br label %while.body

if.else564:                                       ; preds = %if.else548
  %call566 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str66, i64 0, i64 0), i64 5) #9
  %tobool567 = icmp eq i32 %call566, 0
  br i1 %tobool567, label %if.then568, label %if.else583

if.then568:                                       ; preds = %if.else564
  %117 = load i32* @move_number, align 4, !tbaa !0
  %cmp569 = icmp sgt i32 %117, 1
  br i1 %cmp569, label %if.then571, label %while.body

if.then571:                                       ; preds = %if.then568
  %dec572 = add nsw i32 %117, -1
  store i32 %dec572, i32* @move_number, align 4, !tbaa !0
  %idxprom573 = sext i32 %dec572 to i64
  %arrayidx574 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom573
  %118 = bitcast %struct.move_x* %arrayidx574 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %118, i64 16, i32 16, i1 false), !tbaa.struct !5
  %arrayidx576 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom573
  call void @unmake(%struct.move_s* %arrayidx576, i32 0) #8
  call void @reset_piece_square() #8
  %119 = load i32* @move_number, align 4, !tbaa !0
  %dec577 = add nsw i32 %119, -1
  store i32 %dec577, i32* @move_number, align 4, !tbaa !0
  %idxprom578 = sext i32 %dec577 to i64
  %arrayidx579 = getelementptr inbounds [600 x %struct.move_x]* %game_history_x, i64 0, i64 %idxprom578
  %120 = bitcast %struct.move_x* %arrayidx579 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %120, i64 16, i32 16, i1 false), !tbaa.struct !5
  %arrayidx581 = getelementptr inbounds [600 x %struct.move_s]* %game_history, i64 0, i64 %idxprom578
  call void @unmake(%struct.move_s* %arrayidx581, i32 0) #8
  call void @reset_piece_square() #8
  br label %while.body

if.else583:                                       ; preds = %if.else564
  %call585 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str67, i64 0, i64 0), i64 4) #9
  %tobool586 = icmp eq i32 %call585, 0
  br i1 %tobool586, label %while.body, label %if.else588

if.else588:                                       ; preds = %if.else583
  %121 = load i8* %0, align 16
  %122 = bitcast [256 x i8]* %input to i32*
  %lhsc = load i32* %122, align 16
  %123 = trunc i32 %lhsc to i16
  %124 = trunc i32 %lhsc to i8
  %tobool591.not = icmp ne i8 %124, 46
  %tobool.not = xor i1 %tobool, true
  %brmerge954 = or i1 %tobool591.not, %tobool.not
  %125 = lshr i16 %123, 8
  %126 = trunc i16 %125 to i8
  %127 = lshr i32 %lhsc, 16
  %128 = zext i32 %127 to i64
  br i1 %brmerge954, label %if.else603, label %if.then594

if.then594:                                       ; preds = %if.else588
  %129 = load i32* @wking_loc, align 4, !tbaa !0
  %cmp595 = icmp eq i32 %129, 30
  br i1 %cmp595, label %if.then597, label %if.end598

if.then597:                                       ; preds = %if.then594
  store i32 0, i32* @white_castled, align 4, !tbaa !0
  br label %if.end598

if.end598:                                        ; preds = %if.then597, %if.then594
  %130 = load i32* @bking_loc, align 4, !tbaa !0
  %cmp599 = icmp eq i32 %130, 114
  br i1 %cmp599, label %if.then601, label %if.end602

if.then601:                                       ; preds = %if.end598
  store i32 0, i32* @black_castled, align 4, !tbaa !0
  br label %if.end602

if.end602:                                        ; preds = %if.then601, %if.end598
  store i32 50, i32* @book_ply, align 4, !tbaa !0
  store i32 0, i32* @ep_square, align 4, !tbaa !0
  store i32 0, i32* @move_number, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @opening_history, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false)
  call void @clear_tt() #8
  call void @initialize_hash() #8
  call void @reset_piece_square() #8
  br label %while.body

if.else603:                                       ; preds = %if.else588
  br i1 %tobool, label %land.lhs.true605, label %if.else655

land.lhs.true605:                                 ; preds = %if.else603
  switch i8 %124, label %land.lhs.true624 [
    i8 99, label %if.then609
    i8 35, label %if.then621
  ]

if.then609:                                       ; preds = %land.lhs.true605
  %131 = xor i32 %edit_color.0, 1
  br label %while.body

if.then621:                                       ; preds = %land.lhs.true605
  call void @reset_board() #8
  store i32 0, i32* @move_number, align 4, !tbaa !0
  br label %while.body

land.lhs.true624:                                 ; preds = %land.lhs.true605
  %idxprom627 = sext i8 %124 to i64
  %call628 = call i16** @__ctype_b_loc() #10
  %132 = load i16** %call628, align 8, !tbaa !3
  %arrayidx629 = getelementptr inbounds i16* %132, i64 %idxprom627
  %133 = load i16* %arrayidx629, align 2, !tbaa !6
  %and = and i16 %133, 1024
  %tobool631 = icmp eq i16 %and, 0
  br i1 %tobool631, label %if.else655, label %land.lhs.true632

land.lhs.true632:                                 ; preds = %land.lhs.true624
  %idxprom635 = sext i8 %126 to i64
  %arrayidx637 = getelementptr inbounds i16* %132, i64 %idxprom635
  %134 = load i16* %arrayidx637, align 2, !tbaa !6
  %and639 = and i16 %134, 1024
  %tobool640 = icmp eq i16 %and639, 0
  br i1 %tobool640, label %if.else655, label %land.lhs.true641

land.lhs.true641:                                 ; preds = %land.lhs.true632
  %sext959 = shl i64 %128, 56
  %idxprom644 = ashr exact i64 %sext959, 56
  %arrayidx646 = getelementptr inbounds i16* %132, i64 %idxprom644
  %135 = load i16* %arrayidx646, align 2, !tbaa !6
  %and648 = and i16 %135, 2048
  %tobool649 = icmp eq i16 %and648, 0
  br i1 %tobool649, label %if.else655, label %if.then650

if.then650:                                       ; preds = %land.lhs.true641
  %sext = shl i32 %127, 24
  %conv643 = ashr exact i32 %sext, 24
  call void @PutPiece(i32 %edit_color.0, i8 signext %124, i8 signext %126, i32 %conv643) #8
  br label %while.body

if.else655:                                       ; preds = %if.else603, %land.lhs.true641, %land.lhs.true632, %land.lhs.true624
  %call657 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str71, i64 0, i64 0), i64 7) #9
  %tobool658 = icmp eq i32 %call657, 0
  br i1 %tobool658, label %if.then659, label %if.else662

if.then659:                                       ; preds = %if.else655
  call void @HandlePartner(i8* %add.ptr486) #8
  br label %while.body

if.else662:                                       ; preds = %if.else655
  %call664 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0), i64 8) #9
  %tobool665 = icmp eq i32 %call664, 0
  br i1 %tobool665, label %if.then666, label %if.else669

if.then666:                                       ; preds = %if.else662
  call void @HandlePartner(i8* %add.ptr668) #8
  br label %while.body

if.else669:                                       ; preds = %if.else662
  %call671 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str73, i64 0, i64 0), i64 5) #9
  %tobool672 = icmp eq i32 %call671, 0
  br i1 %tobool672, label %if.then673, label %if.else675

if.then673:                                       ; preds = %if.else669
  call void @HandlePtell(i8* %0) #8
  br label %while.body

if.else675:                                       ; preds = %if.else669
  %call677 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str74, i64 0, i64 0), i64 4) #9
  %tobool678 = icmp eq i32 %call677, 0
  br i1 %tobool678, label %if.then679, label %if.else680

if.then679:                                       ; preds = %if.else675
  call void @run_epd_testsuite() #8
  br label %while.body

if.else680:                                       ; preds = %if.else675
  %call682 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2) #9
  %tobool683 = icmp eq i32 %call682, 0
  br i1 %tobool683, label %if.then684, label %if.else689

if.then684:                                       ; preds = %if.else680
  %call687 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr686, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* @fixed_time) #8
  %136 = load i32* @fixed_time, align 4, !tbaa !0
  %mul688 = mul nsw i32 %136, 100
  store i32 %mul688, i32* @fixed_time, align 4, !tbaa !0
  br label %while.body

if.else689:                                       ; preds = %if.else680
  %call691 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i64 6) #9
  %tobool692 = icmp eq i32 %call691, 0
  br i1 %tobool692, label %while.body, label %if.else694

if.else694:                                       ; preds = %if.else689
  %call696 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i64 5) #9
  %tobool697 = icmp eq i32 %call696, 0
  br i1 %tobool697, label %if.then698, label %if.else707

if.then698:                                       ; preds = %if.else694
  %call699 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str78, i64 0, i64 0)) #8
  %call700 = call i64 @rtime() #8
  store i64 %call700, i64* @start_time, align 8, !tbaa !7
  %137 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %2, i32 256, %struct._IO_FILE* %137) #8
  %call703 = call i64 @atol(i8* %2) #9
  %mul704 = mul nsw i64 %call703, 100
  %conv705 = trunc i64 %mul704 to i32
  store i32 %conv705, i32* @pn_time, align 4, !tbaa !0
  %putchar901 = call i32 @putchar(i32 10) #1
  call void @proofnumbersearch() #8
  br label %while.body

if.else707:                                       ; preds = %if.else694
  %call709 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i64 4) #9
  %tobool710 = icmp eq i32 %call709, 0
  br i1 %tobool710, label %if.then711, label %if.else716

if.then711:                                       ; preds = %if.else707
  %call714 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr448, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* %pingnum) #8
  %138 = load i32* %pingnum, align 4, !tbaa !0
  %call715 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str80, i64 0, i64 0), i32 %138) #8
  br label %while.body

if.else716:                                       ; preds = %if.else707
  %call718 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5) #9
  %tobool719 = icmp eq i32 %call718, 0
  br i1 %tobool719, label %while.body, label %if.else721

if.else721:                                       ; preds = %if.else716
  %call723 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str82, i64 0, i64 0), i64 5) #9
  %tobool724 = icmp eq i32 %call723, 0
  br i1 %tobool724, label %if.then725, label %if.else726

if.then725:                                       ; preds = %if.else721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  store i32 2, i32* @Variant, align 4, !tbaa !0
  call void @init_game() #8
  call void @initialize_hash() #8
  call void @clear_tt() #8
  call void @reset_ecache() #8
  store i32 0, i32* @fixed_time, align 4, !tbaa !0
  store i32 0, i32* @root_to_move, align 4, !tbaa !0
  store i32 0, i32* @comp_color, align 4, !tbaa !0
  store i32 0, i32* @move_number, align 4, !tbaa !0
  store i32 0, i32* @bookidx, align 4, !tbaa !0
  store i32 2000, i32* @opp_rating, align 4, !tbaa !0
  store i32 2000, i32* @my_rating, align 4, !tbaa !0
  br label %while.body

if.else726:                                       ; preds = %if.else721
  %call728 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i64 8) #9
  %tobool729 = icmp eq i32 %call728, 0
  br i1 %tobool729, label %if.then730, label %if.else733

if.then730:                                       ; preds = %if.else726
  call void @setup_epd_line(i8* %add.ptr732) #8
  br label %while.body

if.else733:                                       ; preds = %if.else726
  %tobool736 = icmp eq i8 %121, 46
  br i1 %tobool736, label %while.body, label %if.else738

if.else738:                                       ; preds = %if.else733
  %call740 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i64 2) #9
  %tobool741 = icmp eq i32 %call740, 0
  br i1 %tobool741, label %if.then742, label %if.else747

if.then742:                                       ; preds = %if.else738
  %call745 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr686, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i32* @maxdepth) #8
  %139 = load i32* @maxdepth, align 4, !tbaa !0
  %call746 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str84, i64 0, i64 0), i32 %139) #8
  br label %while.body

if.else747:                                       ; preds = %if.else738
  %call749 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str85, i64 0, i64 0), i64 4) #9
  %tobool750 = icmp eq i32 %call749, 0
  br i1 %tobool750, label %while.body, label %if.else752

if.else752:                                       ; preds = %if.else747
  %call754 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str86, i64 0, i64 0), i64 8) #9
  %tobool755 = icmp eq i32 %call754, 0
  br i1 %tobool755, label %if.then756, label %if.else762

if.then756:                                       ; preds = %if.else752
  %puts903 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str120, i64 0, i64 0))
  %puts904 = call i32 @puts(i8* getelementptr inbounds ([52 x i8]* @str121, i64 0, i64 0))
  %puts905 = call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str122, i64 0, i64 0))
  %puts906 = call i32 @puts(i8* getelementptr inbounds ([70 x i8]* @str123, i64 0, i64 0))
  %puts907 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str124, i64 0, i64 0))
  store i32 2, i32* @xb_mode, align 4, !tbaa !0
  br label %while.body

if.else762:                                       ; preds = %if.else752
  %call764 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str92, i64 0, i64 0), i64 8) #9
  %tobool765 = icmp eq i32 %call764, 0
  br i1 %tobool765, label %while.body, label %if.else767

if.else767:                                       ; preds = %if.else762
  %call769 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str93, i64 0, i64 0), i64 8) #9
  %tobool770 = icmp eq i32 %call769, 0
  br i1 %tobool770, label %if.then771, label %if.else773

if.then771:                                       ; preds = %if.else767
  %puts908 = call i32 @puts(i8* getelementptr inbounds ([64 x i8]* @str125, i64 0, i64 0))
  br label %while.body

if.else773:                                       ; preds = %if.else767
  %call775 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str95, i64 0, i64 0)) #9
  %tobool776 = icmp eq i32 %call775, 0
  br i1 %tobool776, label %if.then777, label %if.else803

if.then777:                                       ; preds = %if.else773
  %call778 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #8
  %puts909 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str126, i64 0, i64 0))
  %puts910 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str127, i64 0, i64 0))
  %puts911 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str128, i64 0, i64 0))
  %puts912 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str129, i64 0, i64 0))
  %puts913 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str130, i64 0, i64 0))
  %puts914 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str131, i64 0, i64 0))
  %puts915 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str132, i64 0, i64 0))
  %puts916 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str133, i64 0, i64 0))
  %puts917 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str134, i64 0, i64 0))
  %puts918 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str135, i64 0, i64 0))
  %puts919 = call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str136, i64 0, i64 0))
  %puts920 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str137, i64 0, i64 0))
  %puts921 = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str138, i64 0, i64 0))
  %puts922 = call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str139, i64 0, i64 0))
  %puts923 = call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str140, i64 0, i64 0))
  %puts924 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str141, i64 0, i64 0))
  %puts925 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str142, i64 0, i64 0))
  %puts926 = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str143, i64 0, i64 0))
  %puts927 = call i32 @puts(i8* getelementptr inbounds ([53 x i8]* @str144, i64 0, i64 0))
  %puts928 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str145, i64 0, i64 0))
  %puts929 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str146, i64 0, i64 0))
  %puts930 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str147, i64 0, i64 0))
  %puts931 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str148, i64 0, i64 0))
  %call802 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #8
  store i32 0, i32* %show_board, align 4, !tbaa !1
  br label %while.body

if.else803:                                       ; preds = %if.else773
  %140 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool804 = icmp eq i32 %140, 0
  br i1 %tobool804, label %if.then805, label %while.body

if.then805:                                       ; preds = %if.else803
  %call807 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* %0) #8
  br label %while.body
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @read_rcfile() #2

; Function Attrs: optsize
declare void @initialize_zobrist() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare void @init_game() #2

; Function Attrs: optsize
declare void @initialize_hash() #2

; Function Attrs: optsize
declare void @clear_tt() #2

; Function Attrs: optsize
declare void @reset_ecache() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize
declare void @setbuf(%struct._IO_FILE* nocapture, i8*) #3

; Function Attrs: optsize
declare void @start_up() #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @run_autotest(i8*) #2

; Function Attrs: optsize
declare void @think(%struct.move_s* sret) #2

; Function Attrs: optsize
declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #2

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #2

; Function Attrs: optsize
declare i32 @is_draw() #2

; Function Attrs: optsize
declare void @reset_piece_square() #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @eval(i32, i32) #2

; Function Attrs: optsize
declare void @CheckBadFlow(i32) #2

; Function Attrs: optsize
declare void @display_board(%struct._IO_FILE*, i32) #2

; Function Attrs: optsize
declare void @rinput(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i32 @is_move(i8*) #2

; Function Attrs: optsize
declare i32 @verify_coord(i8*, %struct.move_s*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare void @free_hash() #2

; Function Attrs: optsize
declare void @free_ecache() #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare void @toggle_bool(i32*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i64 @rtime() #2

; Function Attrs: optsize
declare void @perft(i32) #2

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #2

; Function Attrs: optsize
declare void @ResetHandValue() #2

; Function Attrs: nounwind optsize
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: optsize
declare void @BegForPartner() #2

; Function Attrs: optsize
declare void @check_phase() #2

; Function Attrs: optsize
declare void @ProcessHoldings(i8*) #2

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: optsize
declare void @reset_board() #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare void @PutPiece(i32, i8 signext, i8 signext, i32) #2

; Function Attrs: optsize
declare void @HandlePartner(i8*) #2

; Function Attrs: optsize
declare void @HandlePtell(i8*) #2

; Function Attrs: optsize
declare void @run_epd_testsuite() #2

; Function Attrs: nounwind optsize readonly
declare i64 @atol(i8* nocapture) #4

; Function Attrs: optsize
declare void @proofnumbersearch() #2

; Function Attrs: optsize
declare void @setup_epd_line(i8*) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !0, i64 16, i64 4, metadata !0, i64 20, i64 4, metadata !0}
!5 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !0}
!6 = metadata !{metadata !"short", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}
