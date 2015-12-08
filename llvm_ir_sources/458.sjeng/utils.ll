; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@left = global i32 -1, align 4
@moves_to_tc = external global i32
@min_per_game = external global i32
@inc = external global i32
@time_left = external global i32
@sec_per_game = external global i32
@opp_time = external global i32
@xb_mode = external global i32
@Variant = external global i32
@time_cushion = external global i32
@comp_to_san.type_to_char = internal unnamed_addr constant [14 x i32] [i32 70, i32 80, i32 80, i32 78, i32 78, i32 75, i32 75, i32 82, i32 82, i32 81, i32 81, i32 66, i32 66, i32 69], align 16
@Xrank = external constant [144 x i32]
@Xfile = external constant [144 x i32]
@.str = private unnamed_addr constant [8 x i8] c"%c@%c%d\00", align 1
@board = external global [144 x i32]
@.str1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"%c%d=%c\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"%cx%c%d\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"%cx%c%d=%c\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"O-O-O\00", align 1
@numb_moves = external global i32
@.str7 = private unnamed_addr constant [9 x i8] c"%c%c%c%d\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"%c%d%c%d\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"%c%cx%c%d\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"%c%dx%c%d\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"%c%c%d\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"illg\00", align 1
@comp_to_coord.type_to_char = internal unnamed_addr constant [14 x i32] [i32 70, i32 80, i32 112, i32 78, i32 110, i32 75, i32 107, i32 82, i32 114, i32 81, i32 113, i32 66, i32 98, i32 69], align 16
@.str15 = private unnamed_addr constant [10 x i8] c"%c%d%c%dn\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"%c%d%c%dr\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"%c%d%c%db\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"%c%d%c%dk\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"%c%d%c%dq\00", align 1
@.str20 = private unnamed_addr constant [42 x i8] c"+----+----+----+----+----+----+----+----+\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c" P\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"*P\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c" N\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"*N\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c" K\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"*K\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c" R\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"*R\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c" Q\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"*Q\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c" B\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"*B\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@display_board.piece_rep = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0)], align 16
@.str35 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"%d |\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@.str38 = private unnamed_addr constant [7 x i8] c"\0A  %s\0A\00", align 1
@.str39 = private unnamed_addr constant [45 x i8] c"\0A     a    b    c    d    e    f    g    h\0A\0A\00", align 1
@.str40 = private unnamed_addr constant [45 x i8] c"\0A     h    g    f    e    d    c    b    a\0A\0A\00", align 1
@init_game.init_board = private unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 3, i32 11, i32 9, i32 5, i32 11, i32 3, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 8, i32 4, i32 12, i32 10, i32 6, i32 12, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@moved = external global [144 x i32]
@white_to_move = external global i32
@ep_square = external global i32
@wking_loc = external global i32
@bking_loc = external global i32
@white_castled = external global i32
@black_castled = external global i32
@result = external global i32
@captures = external global i32
@piece_count = external global i32
@Material = external global i32
@is_promoted = external global [62 x i32]
@holding = external global [2 x [16 x i32]]
@white_hand_eval = external global i32
@black_hand_eval = external global i32
@bookidx = external global i32
@book_ply = external global i32
@fifty = external global i32
@ply = external global i32
@phase = external global i32
@stdin = external global %struct._IO_FILE*
@raw_nodes = external global i32
@.str42 = private unnamed_addr constant [31 x i8] c"\0A\0ARaw nodes for depth %d: %i\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str44 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@pv_length = external global [300 x i32]
@pv = external global [300 x [300 x %struct.move_s]]
@start_time = external global i64
@nodes = external global i32
@.str50 = private unnamed_addr constant [18 x i8] c"%2i %7i %5i %8i  \00", align 1
@i_depth = external global i32
@.str51 = private unnamed_addr constant [20 x i8] c"%2i %c%1i.%02i %9i \00", align 1
@.str52 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"%s !\00", align 1
@.str56 = private unnamed_addr constant [6 x i8] c"%s !!\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"%s ??\00", align 1
@.str58 = private unnamed_addr constant [24 x i8] c"stat01: %i %i %i %i %i\0A\00", align 1
@moveleft = external global i32
@movetotal = external global i32
@.str59 = private unnamed_addr constant [27 x i8] c"stat01: %i %i %i %i %i %s\0A\00", align 1
@searching_move = external global [20 x i8]
@pieces = external global [62 x i32]
@squares = external global [144 x i32]
@.str64 = private unnamed_addr constant [39 x i8] c"Filled square %d has no piece pointer\0A\00", align 1
@material = external global [14 x i32]
@.str70 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*
@.str71 = private unnamed_addr constant [23 x i8] c"Couldn't open file %s\0A\00", align 1
@.str73 = private unnamed_addr constant [37 x i8] c"\0A\0A%s\0ARaw nodes for depth %d: %i\0A%s\0A\0A\00", align 1
@divider = external global [50 x i8]
@reset_board.init_board = private unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@state = internal global [625 x i32] zeroinitializer, align 16
@next = internal unnamed_addr global i32* null, align 8
@str = private unnamed_addr constant [46 x i8] c"\0A\0APlease enter the desired depth for perft():\00"
@str74 = private unnamed_addr constant [30 x i8] c"\0APlease input a move/command:\00"
@str75 = private unnamed_addr constant [57 x i8] c"\0AIllegal move/command!  Please input a new move/command:\00"
@str76 = private unnamed_addr constant [36 x i8] c"Square->piece->square inconsistency\00"
@str77 = private unnamed_addr constant [31 x i8] c"Empty square has piece pointer\00"
@str78 = private unnamed_addr constant [28 x i8] c"Zero-ed piece inconsistency\00"
@str79 = private unnamed_addr constant [34 x i8] c"Board/Piece->square inconsistency\00"
@str80 = private unnamed_addr constant [35 x i8] c"Piece->square->piece inconsistency\00"
@str81 = private unnamed_addr constant [70 x i8] c"\0ASjeng version SPEC 1.0, Copyright (C) 2000-2005 Gian-Carlo Pascutto\0A\00"
@str82 = private unnamed_addr constant [33 x i8] c"\0APlease enter the desired depth:\00"
@str83 = private unnamed_addr constant [36 x i8] c"\0ADo you want tree () output?  (y/n)\00"
@str84 = private unnamed_addr constant [55 x i8] c"\0APlease enter the name of the output file for tree ():\00"
@str85 = private unnamed_addr constant [39 x i8] c"\0ADo you want to output diagrams? (y/n)\00"

; Function Attrs: nounwind optsize uwtable
define i32 @allocate_time() #0 {
entry:
  %0 = load i32* @moves_to_tc, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  %1 = load i32* @min_per_game, align 4, !tbaa !0
  br i1 %tobool, label %if.then, label %if.else110

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %1, 5
  %2 = load i32* @inc, align 4, !tbaa !0
  %tobool1 = icmp ne i32 %2, 0
  %or.cond = or i1 %cmp, %tobool1
  %3 = load i32* @time_left, align 4, !tbaa !0
  br i1 %or.cond, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.then
  %conv = sitofp i32 %3 to double
  %mul = mul nsw i32 %1, 6000
  %4 = load i32* @sec_per_game, align 4, !tbaa !0
  %mul2 = mul nsw i32 %4, 100
  %add = add nsw i32 %mul2, %mul
  %conv3 = sitofp i32 %add to double
  %mul4 = fmul double %conv3, 4.000000e+00
  %div = fdiv double %mul4, 5.000000e+00
  %cmp5 = fcmp olt double %conv, %div
  br i1 %cmp5, label %if.then7, label %if.end37

if.then7:                                         ; preds = %if.then, %lor.lhs.false
  %5 = load i32* @opp_time, align 4, !tbaa !0
  %sub = sub nsw i32 %5, %3
  %conv8 = sitofp i32 %sub to double
  %conv9 = sitofp i32 %5 to double
  %div10 = fdiv double %conv9, 5.000000e+00
  %cmp11 = fcmp ogt double %conv8, %div10
  %6 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool14 = icmp ne i32 %6, 0
  %or.cond149 = and i1 %cmp11, %tobool14
  br i1 %or.cond149, label %if.end37, label %if.else

if.else:                                          ; preds = %if.then7
  %div19 = fdiv double %conv9, 1.000000e+01
  %cmp20 = fcmp ogt double %conv8, %div19
  %or.cond150 = and i1 %cmp20, %tobool14
  br i1 %or.cond150, label %if.end37, label %if.else25

if.else25:                                        ; preds = %if.else
  %div29 = fdiv double %conv9, 2.000000e+01
  %cmp30 = fcmp ogt double %conv8, %div29
  %or.cond151 = and i1 %cmp30, %tobool14
  %. = select i1 %or.cond151, double 2.500000e+01, double 2.000000e+01
  br label %if.end37

if.end37:                                         ; preds = %if.else25, %if.else, %if.then7, %lor.lhs.false
  %move_speed.0 = phi double [ 2.000000e+01, %lor.lhs.false ], [ 4.000000e+01, %if.then7 ], [ 3.000000e+01, %if.else ], [ %., %if.else25 ]
  %7 = load i32* @Variant, align 4, !tbaa !0
  %.off = add i32 %7, -3
  %8 = icmp ugt i32 %.off, 1
  br i1 %8, label %if.then43, label %if.else67

if.then43:                                        ; preds = %if.end37
  %9 = load i32* @opp_time, align 4, !tbaa !0
  %sub44 = sub nsw i32 %3, %9
  %conv45 = sitofp i32 %sub44 to double
  %conv46 = sitofp i32 %3 to double
  %div47 = fdiv double %conv46, 5.000000e+00
  %cmp48 = fcmp ogt double %conv45, %div47
  %10 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool51 = icmp ne i32 %10, 0
  %or.cond153 = and i1 %cmp48, %tobool51
  br i1 %or.cond153, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.then43
  %sub53 = fadd double %move_speed.0, -1.000000e+01
  br label %if.end79

if.else54:                                        ; preds = %if.then43
  %div58 = fdiv double %conv46, 1.000000e+01
  %cmp59 = fcmp ogt double %conv45, %div58
  %or.cond154 = and i1 %cmp59, %tobool51
  br i1 %or.cond154, label %if.then63, label %if.end79

if.then63:                                        ; preds = %if.else54
  %sub64 = fadd double %move_speed.0, -5.000000e+00
  br label %if.end79

if.else67:                                        ; preds = %if.end37
  switch i32 %7, label %if.end79 [
    i32 3, label %if.then70
    i32 4, label %if.then75
  ]

if.then70:                                        ; preds = %if.else67
  %sub71 = fadd double %move_speed.0, -1.000000e+01
  br label %if.end79

if.then75:                                        ; preds = %if.else67
  %sub76 = fadd double %move_speed.0, -5.000000e+00
  br label %if.end79

if.end79:                                         ; preds = %if.else67, %if.then70, %if.then75, %if.then52, %if.then63, %if.else54
  %move_speed.1 = phi double [ %sub53, %if.then52 ], [ %sub64, %if.then63 ], [ %move_speed.0, %if.else54 ], [ %sub71, %if.then70 ], [ %sub76, %if.then75 ], [ %move_speed.0, %if.else67 ]
  %conv80 = sitofp i32 %3 to double
  %div81 = fdiv double %conv80, %move_speed.1
  %tobool82 = icmp eq i32 %2, 0
  br i1 %tobool82, label %if.end134, label %if.then83

if.then83:                                        ; preds = %if.end79
  %sub85 = fsub double %conv80, %div81
  %conv86 = sitofp i32 %2 to double
  %sub87 = fsub double %sub85, %conv86
  %cmp88 = fcmp ogt double %sub87, 5.000000e+02
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.then83
  %add92 = fadd double %div81, %conv86
  br label %if.end134

if.else93:                                        ; preds = %if.then83
  %mul97 = fmul double %conv86, 2.000000e+00
  %div98 = fdiv double %mul97, 3.000000e+00
  %sub99 = fsub double %sub85, %div98
  %cmp100 = fcmp ogt double %sub99, 1.000000e+02
  br i1 %cmp100, label %if.then102, label %if.end134

if.then102:                                       ; preds = %if.else93
  %add106 = fadd double %div81, %div98
  br label %if.end134

if.else110:                                       ; preds = %entry
  %conv111 = sitofp i32 %1 to float
  %conv112 = fpext float %conv111 to double
  %mul113 = fmul double %conv112, 6.000000e+03
  %11 = load i32* @sec_per_game, align 4, !tbaa !0
  %conv114 = sitofp i32 %11 to float
  %conv115 = fpext float %conv114 to double
  %mul116 = fmul double %conv115, 1.000000e+02
  %add117 = fadd double %mul113, %mul116
  %conv118 = sitofp i32 %0 to float
  %conv119 = fpext float %conv118 to double
  %div120 = fdiv double %add117, %conv119
  %sub121 = fadd double %div120, -1.000000e+02
  %12 = load i32* @time_cushion, align 4, !tbaa !0
  %tobool122 = icmp eq i32 %12, 0
  br i1 %tobool122, label %if.end134, label %if.then123

if.then123:                                       ; preds = %if.else110
  %conv124 = sitofp i32 %12 to double
  %mul125 = fmul double %conv124, 2.100000e+00
  %div126 = fdiv double %mul125, 3.000000e+00
  %add127 = fadd double %sub121, %div126
  %conv131 = fptosi double %div126 to i32
  %sub132 = sub nsw i32 %12, %conv131
  store i32 %sub132, i32* @time_cushion, align 4, !tbaa !0
  br label %if.end134

if.end134:                                        ; preds = %if.else110, %if.end79, %if.then123, %if.else93, %if.then102, %if.then90
  %allocated_time.0 = phi double [ %add127, %if.then123 ], [ %add92, %if.then90 ], [ %add106, %if.then102 ], [ %div81, %if.else93 ], [ %div81, %if.end79 ], [ %sub121, %if.else110 ]
  %13 = load i32* @Variant, align 4, !tbaa !0
  %cmp135 = icmp eq i32 %13, 1
  br i1 %cmp135, label %if.then137, label %if.end147

if.then137:                                       ; preds = %if.end134
  %mul138 = fmul double %allocated_time.0, 2.500000e-01
  %14 = load i32* @opp_time, align 4, !tbaa !0
  %15 = load i32* @time_left, align 4, !tbaa !0
  %cmp139 = icmp sgt i32 %14, %15
  %cmp142 = icmp slt i32 %14, 1500
  %or.cond155 = or i1 %cmp139, %cmp142
  br i1 %or.cond155, label %if.then144, label %if.end147

if.then144:                                       ; preds = %if.then137
  %mul145 = fmul double %mul138, 5.000000e-01
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.then137, %if.end134
  %allocated_time.1 = phi double [ %mul145, %if.then144 ], [ %mul138, %if.then137 ], [ %allocated_time.0, %if.end134 ]
  %conv148 = fptosi double %allocated_time.1 to i32
  ret i32 %conv148
}

; Function Attrs: nounwind optsize uwtable
define void @comp_to_san(%struct.move_s* byval align 8 %move, i8* nocapture %str) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %evade_moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #1
  %1 = bitcast [512 x %struct.move_s]* %evade_moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %1) #1
  %from = getelementptr inbounds %struct.move_s* %move, i64 0, i32 0
  %2 = bitcast %struct.move_s* %move to i64*
  %3 = load i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %sext309 = shl i64 %3, 32
  %idxprom = ashr exact i64 %sext309, 32
  %arrayidx = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %target = getelementptr inbounds %struct.move_s* %move, i64 0, i32 1
  %idxprom1 = ashr i64 %3, 32
  %arrayidx2 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom1
  %6 = load i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom
  %7 = load i32* %arrayidx5, align 4, !tbaa !0
  %sub = add nsw i32 %7, 96
  %arrayidx8 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom1
  %8 = load i32* %arrayidx8, align 4, !tbaa !0
  %sub10 = add nsw i32 %8, 96
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %promoted = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3
  %9 = load i32* %promoted, align 4, !tbaa !0
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom14
  %10 = load i32* %arrayidx15, align 4, !tbaa !0
  %sext295 = shl i32 %sub10, 24
  %conv16 = ashr exact i32 %sext295, 24
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %conv16, i32 %6) #12
  br label %if.end209

if.else:                                          ; preds = %entry
  %arrayidx19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %11 = load i32* %arrayidx19, align 4, !tbaa !0
  %.off = add i32 %11, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then27, label %if.else61

if.then27:                                        ; preds = %if.else
  %arrayidx30 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %12 = load i32* %arrayidx30, align 4, !tbaa !0
  %cmp31 = icmp eq i32 %12, 13
  br i1 %cmp31, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %if.then27
  %ep = getelementptr inbounds %struct.move_s* %move, i64 0, i32 5
  %13 = load i32* %ep, align 4, !tbaa !0
  %tobool = icmp eq i32 %13, 0
  br i1 %tobool, label %if.then33, label %if.else45

if.then33:                                        ; preds = %land.lhs.true
  %promoted34 = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3
  %14 = load i32* %promoted34, align 4, !tbaa !0
  %tobool35 = icmp eq i32 %14, 0
  %sext294 = shl i32 %sub10, 24
  %conv40 = ashr exact i32 %sext294, 24
  br i1 %tobool35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then33
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 %conv40, i32 %6) #12
  br label %if.end209

if.else39:                                        ; preds = %if.then33
  %idxprom42 = sext i32 %14 to i64
  %arrayidx43 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom42
  %15 = load i32* %arrayidx43, align 4, !tbaa !0
  %call44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 %conv40, i32 %6, i32 %15) #12
  br label %if.end209

if.else45:                                        ; preds = %land.lhs.true, %if.then27
  %promoted46 = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3
  %16 = load i32* %promoted46, align 4, !tbaa !0
  %tobool47 = icmp eq i32 %16, 0
  %sext292 = shl i32 %sub, 24
  %conv53 = ashr exact i32 %sext292, 24
  %sext293 = shl i32 %sub10, 24
  %conv54 = ashr exact i32 %sext293, 24
  br i1 %tobool47, label %if.then48, label %if.else52

if.then48:                                        ; preds = %if.else45
  %call51 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %conv53, i32 %conv54, i32 %6) #12
  br label %if.end209

if.else52:                                        ; preds = %if.else45
  %idxprom56 = sext i32 %16 to i64
  %arrayidx57 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom56
  %17 = load i32* %arrayidx57, align 4, !tbaa !0
  %call58 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %conv53, i32 %conv54, i32 %6, i32 %17) #12
  br label %if.end209

if.else61:                                        ; preds = %if.else
  %castled = getelementptr inbounds %struct.move_s* %move, i64 0, i32 4
  %18 = load i32* %castled, align 8, !tbaa !0
  switch i32 %18, label %if.else74 [
    i32 0, label %if.else77
    i32 1, label %if.then72
    i32 3, label %if.then72
  ]

if.then72:                                        ; preds = %if.else61, %if.else61
  %19 = bitcast i8* %str to i32*
  store i32 5188943, i32* %19, align 1
  br label %if.end209

if.else74:                                        ; preds = %if.else61
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %str, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %if.end209

if.else77:                                        ; preds = %if.else61
  %arrayidx78 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx78) #12
  %20 = load i32* @numb_moves, align 4, !tbaa !0
  %call79 = call i32 @in_check() #12
  %cmp80306 = icmp sgt i32 %20, 0
  br i1 %cmp80306, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %for.inc, %if.else77
  %21 = load i32* %target, align 4, !tbaa !0
  %idxprom120297 = sext i32 %21 to i64
  %arrayidx121298 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom120297
  %22 = load i32* %arrayidx121298, align 4, !tbaa !0
  %cmp122299 = icmp eq i32 %22, 13
  br label %if.else183

for.body:                                         ; preds = %if.else77, %for.inc.for.body_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.else77 ]
  %i.0307 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.else77 ]
  %target84 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, i32 1
  %23 = load i32* %target84, align 4, !tbaa !0
  %24 = load i32* %target, align 4, !tbaa !0
  %cmp86 = icmp eq i32 %23, %24
  br i1 %cmp86, label %land.lhs.true88, label %for.inc

land.lhs.true88:                                  ; preds = %for.body
  %from91 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, i32 0
  %25 = load i32* %from91, align 8, !tbaa !0
  %idxprom92 = sext i32 %25 to i64
  %arrayidx93 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom92
  %26 = load i32* %arrayidx93, align 4, !tbaa !0
  %27 = load i32* %from, align 8, !tbaa !0
  %idxprom95 = sext i32 %27 to i64
  %arrayidx96 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom95
  %28 = load i32* %arrayidx96, align 4, !tbaa !0
  %cmp97 = icmp ne i32 %26, %28
  %cmp104 = icmp eq i32 %25, %27
  %or.cond = or i1 %cmp97, %cmp104
  br i1 %or.cond, label %for.inc, label %if.then106

if.then106:                                       ; preds = %land.lhs.true88
  %29 = trunc i64 %indvars.iv to i32
  call void @make(%struct.move_s* %arrayidx78, i32 %29) #12
  %call109 = call i32 @check_legal(%struct.move_s* %arrayidx78, i32 %29, i32 %call79) #12
  %tobool110 = icmp eq i32 %call109, 0
  call void @unmake(%struct.move_s* %arrayidx78, i32 %29) #12
  br i1 %tobool110, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.lhs.true88, %if.then106, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %30 = trunc i64 %indvars.iv.next to i32
  %cmp80 = icmp slt i32 %30, %20
  br i1 %cmp80, label %for.inc.for.body_crit_edge, label %for.end.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %inc = add nsw i32 %i.0307, 1
  br label %for.body

for.end:                                          ; preds = %if.then106
  %cmp116 = icmp eq i32 %i.0307, -1
  %31 = load i32* %target, align 4, !tbaa !0
  %idxprom120 = sext i32 %31 to i64
  %arrayidx121 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom120
  %32 = load i32* %arrayidx121, align 4, !tbaa !0
  %cmp122 = icmp eq i32 %32, 13
  br i1 %cmp116, label %if.else183, label %if.then118

if.then118:                                       ; preds = %for.end
  %idxprom125 = sext i32 %i.0307 to i64
  %from127 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom125, i32 0
  %33 = load i32* %from127, align 8, !tbaa !0
  %idxprom128 = sext i32 %33 to i64
  %arrayidx129 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom128
  %34 = load i32* %arrayidx129, align 4, !tbaa !0
  %35 = load i32* %from, align 8, !tbaa !0
  %idxprom131 = sext i32 %35 to i64
  %arrayidx132 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom131
  %36 = load i32* %arrayidx132, align 4, !tbaa !0
  %cmp133 = icmp ne i32 %34, %36
  %arrayidx138 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom131
  %37 = load i32* %arrayidx138, align 4, !tbaa !0
  %idxprom139 = sext i32 %37 to i64
  %arrayidx140 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom139
  %38 = load i32* %arrayidx140, align 4, !tbaa !0
  br i1 %cmp122, label %if.then124, label %if.else153

if.then124:                                       ; preds = %if.then118
  br i1 %cmp133, label %if.then135, label %if.else144

if.then135:                                       ; preds = %if.then124
  %sext290 = shl i32 %sub, 24
  %conv141 = ashr exact i32 %sext290, 24
  %sext291 = shl i32 %sub10, 24
  %conv142 = ashr exact i32 %sext291, 24
  %call143 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i32 %38, i32 %conv141, i32 %conv142, i32 %6) #12
  br label %if.end209

if.else144:                                       ; preds = %if.then124
  %sext289 = shl i32 %sub10, 24
  %conv150 = ashr exact i32 %sext289, 24
  %call151 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 %38, i32 %5, i32 %conv150, i32 %6) #12
  br label %if.end209

if.else153:                                       ; preds = %if.then118
  br i1 %cmp133, label %if.then164, label %if.else173

if.then164:                                       ; preds = %if.else153
  %sext287 = shl i32 %sub, 24
  %conv170 = ashr exact i32 %sext287, 24
  %sext288 = shl i32 %sub10, 24
  %conv171 = ashr exact i32 %sext288, 24
  %call172 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 %38, i32 %conv170, i32 %conv171, i32 %6) #12
  br label %if.end209

if.else173:                                       ; preds = %if.else153
  %sext286 = shl i32 %sub10, 24
  %conv179 = ashr exact i32 %sext286, 24
  %call180 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i32 %38, i32 %5, i32 %conv179, i32 %6) #12
  br label %if.end209

if.else183:                                       ; preds = %for.end, %for.end.thread
  %cmp122300 = phi i1 [ %cmp122299, %for.end.thread ], [ %cmp122, %for.end ]
  %39 = load i32* %from, align 8, !tbaa !0
  %idxprom191 = sext i32 %39 to i64
  %arrayidx192 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom191
  %40 = load i32* %arrayidx192, align 4, !tbaa !0
  %idxprom193 = sext i32 %40 to i64
  %arrayidx194 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom193
  %41 = load i32* %arrayidx194, align 4, !tbaa !0
  %sext = shl i32 %sub10, 24
  %conv195 = ashr exact i32 %sext, 24
  br i1 %cmp122300, label %if.then189, label %if.else197

if.then189:                                       ; preds = %if.else183
  %call196 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32 %41, i32 %conv195, i32 %6) #12
  br label %if.end209

if.else197:                                       ; preds = %if.else183
  %call204 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %41, i32 %conv195, i32 %6) #12
  br label %if.end209

if.end209:                                        ; preds = %if.then48, %if.else52, %if.then36, %if.else39, %if.then164, %if.else173, %if.then135, %if.else144, %if.else197, %if.then189, %if.then72, %if.else74, %if.then
  call void @make(%struct.move_s* %move, i32 0) #12
  %call210 = call i32 @check_legal(%struct.move_s* %move, i32 0, i32 1) #12
  %tobool211 = icmp eq i32 %call210, 0
  br i1 %tobool211, label %if.then212, label %if.end214

if.then212:                                       ; preds = %if.end209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %str, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i64 5, i32 1, i1 false)
  call void @unmake(%struct.move_s* %move, i32 0) #12
  br label %cleanup

if.end214:                                        ; preds = %if.end209
  %call215 = call i32 @in_check() #12
  %tobool216 = icmp eq i32 %call215, 0
  br i1 %tobool216, label %if.end241, label %if.then217

if.then217:                                       ; preds = %if.end214
  %arrayidx218 = getelementptr inbounds [512 x %struct.move_s]* %evade_moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx218) #12
  %42 = load i32* @numb_moves, align 4, !tbaa !0
  %cmp220303 = icmp sgt i32 %42, 0
  br i1 %cmp220303, label %for.body222, label %if.then236

for.cond219:                                      ; preds = %for.body222
  %cmp220 = icmp slt i32 %inc232, %42
  br i1 %cmp220, label %for.body222, label %if.then236

for.body222:                                      ; preds = %if.then217, %for.cond219
  %i.1304 = phi i32 [ %inc232, %for.cond219 ], [ 0, %if.then217 ]
  call void @make(%struct.move_s* %arrayidx218, i32 %i.1304) #12
  %call225 = call i32 @check_legal(%struct.move_s* %arrayidx218, i32 %i.1304, i32 1) #12
  %tobool226 = icmp eq i32 %call225, 0
  call void @unmake(%struct.move_s* %arrayidx218, i32 %i.1304) #12
  %inc232 = add nsw i32 %i.1304, 1
  br i1 %tobool226, label %for.cond219, label %if.else238

if.then236:                                       ; preds = %for.cond219, %if.then217
  %strlen284301 = call i64 @strlen(i8* %str)
  %endptr285302 = getelementptr i8* %str, i64 %strlen284301
  %43 = bitcast i8* %endptr285302 to i16*
  store i16 35, i16* %43, align 1
  br label %if.end241

if.else238:                                       ; preds = %for.body222
  %strlen284 = call i64 @strlen(i8* %str)
  %endptr285 = getelementptr i8* %str, i64 %strlen284
  %44 = bitcast i8* %endptr285 to i16*
  store i16 43, i16* %44, align 1
  br label %if.end241

if.end241:                                        ; preds = %if.end214, %if.then236, %if.else238
  call void @unmake(%struct.move_s* %move, i32 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %if.then212
  call void @llvm.lifetime.end(i64 12288, i8* %1) #1
  call void @llvm.lifetime.end(i64 12288, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #3

; Function Attrs: optsize
declare i32 @in_check() #3

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #3

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #3

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #3

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @comp_to_coord(%struct.move_s* byval nocapture align 8 %move, i8* nocapture %str) #0 {
entry:
  %promoted = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3
  %0 = load i32* %promoted, align 4, !tbaa !0
  %1 = bitcast %struct.move_s* %move to i64*
  %2 = load i64* %1, align 8
  %3 = trunc i64 %2 to i32
  %sext120 = shl i64 %2, 32
  %idxprom = ashr exact i64 %sext120, 32
  %arrayidx = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom3 = ashr i64 %2, 32
  %arrayidx4 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom3
  %5 = load i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom
  %6 = load i32* %arrayidx6, align 4, !tbaa !0
  %sub = add nsw i32 %6, 96
  %arrayidx8 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom3
  %7 = load i32* %arrayidx8, align 4, !tbaa !0
  %sub10 = add nsw i32 %7, 96
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom13 = sext i32 %0 to i64
  %arrayidx14 = getelementptr inbounds [14 x i32]* @comp_to_coord.type_to_char, i64 0, i64 %idxprom13
  %8 = load i32* %arrayidx14, align 4, !tbaa !0
  %sext119 = shl i32 %sub10, 24
  %conv15 = ashr exact i32 %sext119, 24
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %conv15, i32 %5) #12
  br label %if.end67

if.else:                                          ; preds = %entry
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.else
  %sext = shl i32 %sub, 24
  %conv17 = ashr exact i32 %sext, 24
  %sext107 = shl i32 %sub10, 24
  %conv18 = ashr exact i32 %sext107, 24
  %call19 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 %conv17, i32 %4, i32 %conv18, i32 %5) #12
  br label %if.end67

if.else20:                                        ; preds = %if.else
  %.off = add i32 %0, -3
  %9 = icmp ult i32 %.off, 2
  br i1 %9, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.else20
  %sext117 = shl i32 %sub, 24
  %conv26 = ashr exact i32 %sext117, 24
  %sext118 = shl i32 %sub10, 24
  %conv27 = ashr exact i32 %sext118, 24
  %call28 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i32 %conv26, i32 %4, i32 %conv27, i32 %5) #12
  br label %if.end67

if.else29:                                        ; preds = %if.else20
  %.off108 = add i32 %0, -7
  %10 = icmp ult i32 %.off108, 2
  br i1 %10, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else29
  %sext115 = shl i32 %sub, 24
  %conv36 = ashr exact i32 %sext115, 24
  %sext116 = shl i32 %sub10, 24
  %conv37 = ashr exact i32 %sext116, 24
  %call38 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32 %conv36, i32 %4, i32 %conv37, i32 %5) #12
  br label %if.end67

if.else39:                                        ; preds = %if.else29
  %.off109 = add i32 %0, -11
  %11 = icmp ult i32 %.off109, 2
  br i1 %11, label %if.then45, label %if.else49

if.then45:                                        ; preds = %if.else39
  %sext113 = shl i32 %sub, 24
  %conv46 = ashr exact i32 %sext113, 24
  %sext114 = shl i32 %sub10, 24
  %conv47 = ashr exact i32 %sext114, 24
  %call48 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i32 %conv46, i32 %4, i32 %conv47, i32 %5) #12
  br label %if.end67

if.else49:                                        ; preds = %if.else39
  %.off110 = add i32 %0, -5
  %12 = icmp ult i32 %.off110, 2
  %sext111 = shl i32 %sub, 24
  %conv56 = ashr exact i32 %sext111, 24
  %sext112 = shl i32 %sub10, 24
  %conv57 = ashr exact i32 %sext112, 24
  br i1 %12, label %if.then55, label %if.else59

if.then55:                                        ; preds = %if.else49
  %call58 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i32 %conv56, i32 %4, i32 %conv57, i32 %5) #12
  br label %if.end67

if.else59:                                        ; preds = %if.else49
  %call62 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i32 %conv56, i32 %4, i32 %conv57, i32 %5) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then16, %if.then35, %if.then55, %if.else59, %if.then45, %if.then25, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @display_board(%struct._IO_FILE* nocapture %stream, i32 %color) #0 {
entry:
  %rem71 = and i32 %color, 1
  %tobool = icmp eq i32 %rem71, 0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0)) #12
  br i1 %tobool, label %for.body21, label %for.body

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.end ], [ 1, %entry ]
  %0 = sub nsw i64 9, %indvars.iv88
  %1 = trunc i64 %0 to i32
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i32 %1) #12
  %2 = mul i64 %indvars.iv88, -12
  %3 = add i64 %2, 120
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body
  %indvars.iv83 = phi i64 [ 0, %for.body ], [ %indvars.iv.next84, %for.inc ]
  %4 = add nsw i64 %3, %indvars.iv83
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %4
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body4
  %idxprom10 = sext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds [14 x i8*]* @display_board.piece_rep, i64 0, i64 %idxprom10
  %6 = load i8** %arrayidx11, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* %6) #12
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then7
  %indvars.iv.next84 = add i64 %indvars.iv83, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv.next84 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, 12
  br i1 %exitcond87, label %for.end, label %for.body4

for.end:                                          ; preds = %for.inc
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([7 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0)) #12
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %lftr.wideiv92 = trunc i64 %indvars.iv.next89 to i32
  %exitcond93 = icmp eq i32 %lftr.wideiv92, 9
  br i1 %exitcond93, label %for.end16, label %for.body

for.end16:                                        ; preds = %for.end
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str39, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %stream)
  br label %if.end47

for.body21:                                       ; preds = %entry, %for.end41
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.end41 ], [ 1, %entry ]
  %8 = trunc i64 %indvars.iv77 to i32
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i32 %8) #12
  %9 = mul nsw i64 %indvars.iv77, 12
  %10 = add nsw i64 %9, 24
  br label %for.body25

for.body25:                                       ; preds = %for.inc39, %for.body21
  %indvars.iv = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next, %for.inc39 ]
  %11 = sub i64 %10, %indvars.iv
  %arrayidx30 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %11
  %12 = load i32* %arrayidx30, align 4, !tbaa !0
  %cmp31 = icmp eq i32 %12, 0
  br i1 %cmp31, label %for.inc39, label %if.then32

if.then32:                                        ; preds = %for.body25
  %idxprom35 = sext i32 %12 to i64
  %arrayidx36 = getelementptr inbounds [14 x i8*]* @display_board.piece_rep, i64 0, i64 %idxprom35
  %13 = load i8** %arrayidx36, align 8, !tbaa !3
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* %13) #12
  br label %for.inc39

for.inc39:                                        ; preds = %for.body25, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 12
  br i1 %exitcond, label %for.end41, label %for.body25

for.end41:                                        ; preds = %for.inc39
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([7 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0)) #12
  %indvars.iv.next78 = add i64 %indvars.iv77, 1
  %lftr.wideiv81 = trunc i64 %indvars.iv.next78 to i32
  %exitcond82 = icmp eq i32 %lftr.wideiv81, 9
  br i1 %exitcond82, label %for.end45, label %for.body21

for.end45:                                        ; preds = %for.end41
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str40, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %stream)
  br label %if.end47

if.end47:                                         ; preds = %for.end45, %for.end16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @init_game() #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* bitcast ([144 x i32]* @init_game.init_board to i8*), i64 576, i32 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @moved to i8*), i8 0, i64 576, i32 16, i1 false)
  store i32 1, i32* @white_to_move, align 4, !tbaa !0
  store i32 0, i32* @ep_square, align 4, !tbaa !0
  store i32 30, i32* @wking_loc, align 4, !tbaa !0
  store i32 114, i32* @bking_loc, align 4, !tbaa !0
  store i32 0, i32* @white_castled, align 4, !tbaa !0
  store i32 0, i32* @black_castled, align 4, !tbaa !0
  store i32 0, i32* @result, align 4, !tbaa !0
  store i32 0, i32* @captures, align 4, !tbaa !1
  store i32 32, i32* @piece_count, align 4, !tbaa !0
  store i32 0, i32* @Material, align 4, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* @white_hand_eval, align 4, !tbaa !0
  store i32 0, i32* @black_hand_eval, align 4, !tbaa !0
  tail call void @reset_piece_square() #13
  store i32 0, i32* @bookidx, align 4, !tbaa !0
  store i32 0, i32* @book_ply, align 4, !tbaa !0
  store i32 0, i32* @fifty, align 4, !tbaa !0
  store i32 0, i32* @ply, align 4, !tbaa !0
  store i32 0, i32* @phase, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @reset_piece_square() #0 {
entry:
  %promoted_board = alloca [144 x i32], align 16
  %0 = bitcast [144 x i32]* %promoted_board to i8*
  call void @llvm.lifetime.start(i64 576, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 576, i32 16, i1 false)
  %1 = load i32* @piece_count, align 4, !tbaa !0
  %cmp50 = icmp slt i32 %1, 1
  br i1 %cmp50, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %indvars.iv52
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv52
  %3 = load i32* %arrayidx2, align 4, !tbaa !0
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [144 x i32]* %promoted_board, i64 0, i64 %idxprom3
  store i32 1, i32* %arrayidx4, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %4 = trunc i64 %indvars.iv52 to i32
  %cmp = icmp slt i32 %4, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  store i32 0, i32* @Material, align 4, !tbaa !0
  store i32 0, i32* @piece_count, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @pieces to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  store i32 0, i32* getelementptr inbounds ([62 x i32]* @pieces, i64 0, i64 0), align 4, !tbaa !0
  br label %for.body7

for.body7:                                        ; preds = %for.inc34, %for.end
  %5 = phi i32 [ 0, %for.end ], [ %11, %for.inc34 ]
  %6 = phi i32 [ 0, %for.end ], [ %12, %for.inc34 ]
  %indvars.iv = phi i64 [ 26, %for.end ], [ %indvars.iv.next, %for.inc34 ]
  %arrayidx9 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv
  %7 = load i32* %arrayidx9, align 4, !tbaa !0
  %tobool10 = icmp ne i32 %7, 0
  %cmp13 = icmp slt i32 %7, 13
  %or.cond = and i1 %tobool10, %cmp13
  br i1 %or.cond, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body7
  %idxprom17 = sext i32 %7 to i64
  %arrayidx18 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom17
  %8 = load i32* %arrayidx18, align 4, !tbaa !0
  %add = add nsw i32 %6, %8
  store i32 %add, i32* @Material, align 4, !tbaa !0
  %add19 = add nsw i32 %5, 1
  store i32 %add19, i32* @piece_count, align 4, !tbaa !0
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom20
  %9 = trunc i64 %indvars.iv to i32
  store i32 %9, i32* %arrayidx21, align 4, !tbaa !0
  %arrayidx23 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv
  store i32 %add19, i32* %arrayidx23, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds [144 x i32]* %promoted_board, i64 0, i64 %indvars.iv
  %10 = load i32* %arrayidx25, align 4, !tbaa !0
  %tobool26 = icmp eq i32 %10, 0
  br i1 %tobool26, label %for.inc34, label %if.then27

if.then27:                                        ; preds = %if.then14
  %arrayidx29 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom20
  store i32 1, i32* %arrayidx29, align 4, !tbaa !0
  br label %for.inc34

if.else:                                          ; preds = %for.body7
  %arrayidx32 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv
  store i32 0, i32* %arrayidx32, align 4, !tbaa !0
  br label %for.inc34

for.inc34:                                        ; preds = %if.then14, %if.else, %if.then27
  %11 = phi i32 [ %add19, %if.then14 ], [ %5, %if.else ], [ %add19, %if.then27 ]
  %12 = phi i32 [ %add, %if.then14 ], [ %6, %if.else ], [ %add, %if.then27 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 118
  br i1 %exitcond, label %for.end36, label %for.body7

for.end36:                                        ; preds = %for.inc34
  call void @llvm.lifetime.end(i64 576, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_move(i8* nocapture %str) #4 {
entry:
  %0 = load i8* %str, align 1, !tbaa !1
  %idxprom = sext i8 %0 to i64
  %call = tail call i16** @__ctype_b_loc() #14
  %1 = load i16** %call, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds i16* %1, i64 %idxprom
  %2 = load i16* %arrayidx1, align 2, !tbaa !4
  %and = and i16 %2, 1024
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.else60, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8* %str, i64 1
  %3 = load i8* %arrayidx3, align 1, !tbaa !1
  %idxprom5 = sext i8 %3 to i64
  %arrayidx7 = getelementptr inbounds i16* %1, i64 %idxprom5
  %4 = load i16* %arrayidx7, align 2, !tbaa !4
  %and9 = and i16 %4, 2048
  %tobool10 = icmp eq i16 %and9, 0
  br i1 %tobool10, label %land.lhs.true37, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds i8* %str, i64 2
  %5 = load i8* %arrayidx12, align 1, !tbaa !1
  %idxprom14 = sext i8 %5 to i64
  %arrayidx16 = getelementptr inbounds i16* %1, i64 %idxprom14
  %6 = load i16* %arrayidx16, align 2, !tbaa !4
  %and18 = and i16 %6, 1024
  %tobool19 = icmp eq i16 %and18, 0
  br i1 %tobool19, label %if.else, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true11
  %arrayidx21 = getelementptr inbounds i8* %str, i64 3
  %7 = load i8* %arrayidx21, align 1, !tbaa !1
  %idxprom23 = sext i8 %7 to i64
  %arrayidx25 = getelementptr inbounds i16* %1, i64 %idxprom23
  %8 = load i16* %arrayidx25, align 2, !tbaa !4
  %and27 = and i16 %8, 2048
  %tobool28 = icmp eq i16 %and27, 0
  br i1 %tobool28, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true20, %land.lhs.true11
  br i1 %tobool, label %if.else60, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true, %if.else
  %arrayidx38 = getelementptr inbounds i8* %str, i64 1
  %9 = load i8* %arrayidx38, align 1, !tbaa !1
  %cmp = icmp eq i8 %9, 64
  br i1 %cmp, label %land.lhs.true41, label %if.else60

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %arrayidx42 = getelementptr inbounds i8* %str, i64 2
  %10 = load i8* %arrayidx42, align 1, !tbaa !1
  %idxprom44 = sext i8 %10 to i64
  %arrayidx46 = getelementptr inbounds i16* %1, i64 %idxprom44
  %11 = load i16* %arrayidx46, align 2, !tbaa !4
  %and48 = and i16 %11, 1024
  %tobool49 = icmp eq i16 %and48, 0
  br i1 %tobool49, label %if.else60, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true41
  %arrayidx51 = getelementptr inbounds i8* %str, i64 3
  %12 = load i8* %arrayidx51, align 1, !tbaa !1
  %idxprom53 = sext i8 %12 to i64
  %arrayidx55 = getelementptr inbounds i16* %1, i64 %idxprom53
  %13 = load i16* %arrayidx55, align 2, !tbaa !4
  %and57 = and i16 %13, 2048
  %tobool58 = icmp eq i16 %and57, 0
  br i1 %tobool58, label %if.else60, label %return

if.else60:                                        ; preds = %entry, %land.lhs.true50, %land.lhs.true41, %if.else, %land.lhs.true37
  br label %return

return:                                           ; preds = %land.lhs.true50, %land.lhs.true20, %if.else60
  %retval.0 = phi i32 [ 0, %if.else60 ], [ 1, %land.lhs.true20 ], [ 1, %land.lhs.true50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: noreturn nounwind optsize uwtable
define void @perft_debug() #6 {
entry:
  %input = alloca [256 x i8], align 16
  %move = alloca %struct.move_s, align 4
  %0 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  call void @init_game() #13
  br label %while.body

while.body:                                       ; preds = %entry, %if.end46
  %puts = call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str, i64 0, i64 0))
  %1 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %1) #13
  %call2 = call i32 @atoi(i8* %0) #15
  store i32 0, i32* @raw_nodes, align 4, !tbaa !0
  call void @perft(i32 %call2) #12
  %2 = load i32* @raw_nodes, align 4, !tbaa !0
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str42, i64 0, i64 0), i32 %call2, i32 %2) #12
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  call void @display_board(%struct._IO_FILE* %3, i32 1) #13
  %puts55 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str74, i64 0, i64 0))
  %4 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %4) #13
  %5 = load i8* %0, align 16, !tbaa !1
  %tobool57 = icmp eq i8 %5, 0
  br i1 %tobool57, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %while.body
  %call7 = call i32** @__ctype_tolower_loc() #14
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %6 = phi i8 [ %5, %for.body.lr.ph ], [ %9, %for.body ]
  %p.058 = phi i8* [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %idxprom = sext i8 %6 to i64
  %7 = load i32** %call7, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %conv8 = trunc i32 %8 to i8
  store i8 %conv8, i8* %p.058, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %p.058, i64 1
  %9 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %9, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %while.body
  %call10 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0)) #15
  %tobool11 = icmp eq i32 %call10, 0
  br i1 %tobool11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call13 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #15
  %tobool14 = icmp eq i32 %call13, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  call void @exit(i32 0) #16
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call16 = call i32 @verify_coord(i8* %0, %struct.move_s* %move) #13
  %tobool17 = icmp eq i32 %call16, 0
  br i1 %tobool17, label %do.body, label %if.end46

do.body:                                          ; preds = %if.end, %do.cond
  %puts56 = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str75, i64 0, i64 0))
  %10 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %10) #13
  %11 = load i8* %0, align 16, !tbaa !1
  %tobool2359 = icmp eq i8 %11, 0
  br i1 %tobool2359, label %for.end33, label %for.body24.lr.ph

for.body24.lr.ph:                                 ; preds = %do.body
  %call28 = call i32** @__ctype_tolower_loc() #14
  br label %for.body24

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %12 = phi i8 [ %11, %for.body24.lr.ph ], [ %15, %for.body24 ]
  %p.160 = phi i8* [ %0, %for.body24.lr.ph ], [ %incdec.ptr32, %for.body24 ]
  %idxprom27 = sext i8 %12 to i64
  %13 = load i32** %call28, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %13, i64 %idxprom27
  %14 = load i32* %arrayidx29, align 4, !tbaa !0
  %conv30 = trunc i32 %14 to i8
  store i8 %conv30, i8* %p.160, align 1, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8* %p.160, i64 1
  %15 = load i8* %incdec.ptr32, align 1, !tbaa !1
  %tobool23 = icmp eq i8 %15, 0
  br i1 %tobool23, label %for.end33, label %for.body24

for.end33:                                        ; preds = %for.body24, %do.body
  %call35 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0)) #15
  %tobool36 = icmp eq i32 %call35, 0
  br i1 %tobool36, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %for.end33
  %call39 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #15
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %do.cond

if.then41:                                        ; preds = %lor.lhs.false37, %for.end33
  call void @exit(i32 0) #16
  unreachable

do.cond:                                          ; preds = %lor.lhs.false37
  %call44 = call i32 @verify_coord(i8* %0, %struct.move_s* %move) #13
  %lnot = icmp eq i32 %call44, 0
  br i1 %lnot, label %do.body, label %if.end46

if.end46:                                         ; preds = %do.cond, %if.end
  call void @make(%struct.move_s* %move, i32 0) #12
  br label %while.body
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @rinput(i8* nocapture %str, i32 %n, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  %sub = add nsw i32 %n, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then ], [ 0, %entry ]
  %i.0.ph = phi i32 [ %inc, %if.then ], [ 0, %entry ]
  %0 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp slt i32 %0, %sub
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call = tail call i32 @_IO_getc(%struct._IO_FILE* %stream) #12
  switch i32 %call, label %while.body [
    i32 -1, label %while.end
    i32 10, label %while.end
  ]

while.body:                                       ; preds = %while.cond
  br i1 %cmp2, label %if.then, label %while.cond

if.then:                                          ; preds = %while.body
  %conv = trunc i32 %call to i8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.0.ph, 1
  %arrayidx = getelementptr inbounds i8* %str, i64 %indvars.iv
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !1
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond, %while.cond
  %idxprom3 = sext i32 %i.0.ph to i64
  %arrayidx4 = getelementptr inbounds i8* %str, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #7

; Function Attrs: optsize
declare void @perft(i32) #3

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #8

; Function Attrs: nounwind optsize uwtable
define i32 @verify_coord(i8* nocapture %input, %struct.move_s* nocapture %move) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %comp_move = alloca [6 x i8], align 1
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #1
  %1 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @captures, align 4, !tbaa !1
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #12
  %2 = load i32* @numb_moves, align 4, !tbaa !0
  store i32 0, i32* @captures, align 4, !tbaa !1
  %cmp151 = icmp sgt i32 %2, 0
  br i1 %cmp151, label %for.body, label %if.then8.critedge

for.cond:                                         ; preds = %for.body
  %cmp1 = icmp slt i32 %inc, %2
  br i1 %cmp1, label %for.body, label %if.then8.critedge

for.body:                                         ; preds = %if.then, %for.cond
  %i.052 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.052) #12
  %call = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.052, i32 1) #12
  %tobool = icmp eq i32 %call, 0
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.052) #12
  %inc = add nsw i32 %i.052, 1
  br i1 %tobool, label %for.cond, label %if.end12

if.then8.critedge:                                ; preds = %for.cond, %if.then
  store i32 0, i32* @captures, align 4, !tbaa !1
  call void @gen(%struct.move_s* %arrayidx) #12
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  br label %if.end12

if.else:                                          ; preds = %entry
  %arrayidx11 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx11) #12
  %4 = load i32* @numb_moves, align 4, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %for.body, %if.then8.critedge, %if.else
  %num_moves.0 = phi i32 [ %3, %if.then8.critedge ], [ %4, %if.else ], [ %2, %for.body ]
  %cmp1447 = icmp sgt i32 %num_moves.0, 0
  br i1 %cmp1447, label %for.body15.lr.ph, label %for.end33

for.body15.lr.ph:                                 ; preds = %if.end12
  %arraydecay = getelementptr inbounds [6 x i8]* %comp_move, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  %5 = bitcast %struct.move_s* %move to i8*
  br label %for.body15

for.body15:                                       ; preds = %for.inc31, %for.body15.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next, %for.inc31 ]
  %legal.050 = phi i32 [ 0, %for.body15.lr.ph ], [ %legal.2, %for.inc31 ]
  %arrayidx16 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv
  call void @comp_to_coord(%struct.move_s* byval align 8 %arrayidx16, i8* %arraydecay) #13
  %call18 = call i32 @strcmp(i8* %input, i8* %arraydecay) #15
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %for.inc31

if.then20:                                        ; preds = %for.body15
  %6 = trunc i64 %indvars.iv to i32
  call void @make(%struct.move_s* %arrayidx21, i32 %6) #12
  %call23 = call i32 @check_legal(%struct.move_s* %arrayidx21, i32 %6, i32 1) #12
  %tobool24 = icmp eq i32 %call23, 0
  br i1 %tobool24, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.then20
  %7 = bitcast %struct.move_s* %arrayidx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 24, i32 4, i1 false), !tbaa.struct !5
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.then25
  %legal.1 = phi i32 [ 1, %if.then25 ], [ %legal.050, %if.then20 ]
  call void @unmake(%struct.move_s* %arrayidx21, i32 %6) #12
  br label %for.inc31

for.inc31:                                        ; preds = %for.body15, %if.end28
  %legal.2 = phi i32 [ %legal.050, %for.body15 ], [ %legal.1, %if.end28 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves.0
  br i1 %exitcond, label %for.end33, label %for.body15

for.end33:                                        ; preds = %for.inc31, %if.end12
  %legal.0.lcssa = phi i32 [ 0, %if.end12 ], [ %legal.2, %for.inc31 ]
  call void @llvm.lifetime.end(i64 12288, i8* %0) #1
  ret i32 %legal.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @hash_extract_pv(i32 %level, i8* %str) #0 {
entry:
  %xdummy = alloca i32, align 4
  %bm = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %output = alloca [256 x i8], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #1
  %1 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %dec = add nsw i32 %level, -1
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @ProbeTT(i32* %xdummy, i32 0, i32* %bm, i32* %xdummy, i32* %xdummy, i32 0) #12
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #12
  %2 = load i32* %bm, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, -1
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %2, %3
  %or.cond = and i1 %cmp2, %cmp3
  br i1 %or.cond, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.then1
  %idxprom = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx5, i8* %1) #13
  %4 = load i32* %bm, align 4, !tbaa !0
  call void @make(%struct.move_s* %arrayidx, i32 %4) #12
  %5 = load i32* %bm, align 4, !tbaa !0
  %call8 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %5, i32 1) #12
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.then4
  %strlen = call i64 @strlen(i8* %str)
  %endptr = getelementptr i8* %str, i64 %strlen
  %6 = bitcast i8* %endptr to i16*
  store i16 60, i16* %6, align 1
  %call13 = call i8* @strcat(i8* %str, i8* %1) #12
  %strlen25 = call i64 @strlen(i8* %str)
  %endptr26 = getelementptr i8* %str, i64 %strlen25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr26, i8* getelementptr inbounds ([3 x i8]* @.str48, i64 0, i64 0), i64 3, i32 1, i1 false)
  call void @hash_extract_pv(i32 %dec, i8* %str) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.then10
  %7 = load i32* %bm, align 4, !tbaa !0
  call void @unmake(%struct.move_s* %arrayidx, i32 %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then1, %if.end, %entry
  call void @llvm.lifetime.end(i64 256, i8* %1) #1
  call void @llvm.lifetime.end(i64 12288, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @stringize_pv(i8* %str) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %str, i8 0, i64 256, i32 1, i1 false)
  %1 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !tbaa !0
  %cmp24 = icmp sgt i32 %1, 1
  br i1 %cmp24, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.move_s* %tmp to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv27 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next28, %for.body ]
  %arrayidx = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv27
  %3 = bitcast %struct.move_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false), !tbaa.struct !5
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #13
  call void @make(%struct.move_s* %arrayidx, i32 0) #12
  %call = call i8* @strcat(i8* %str, i8* %0) #12
  %strlen = call i64 @strlen(i8* %str)
  %endptr = getelementptr i8* %str, i64 %strlen
  %4 = bitcast i8* %endptr to i16*
  store i16 32, i16* %4, align 1
  %indvars.iv.next28 = add i64 %indvars.iv27, 1
  %5 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !tbaa !0
  %6 = trunc i64 %indvars.iv.next28 to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @hash_extract_pv(i32 7, i8* %str) #13
  %7 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !tbaa !0
  %i.121 = add i32 %7, -1
  %cmp622 = icmp sgt i32 %i.121, 0
  br i1 %cmp622, label %for.body7.lr.ph, label %for.end11

for.body7.lr.ph:                                  ; preds = %for.end
  %8 = sext i32 %i.121 to i64
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %indvars.iv = phi i64 [ %8, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  %i.123 = phi i32 [ %i.121, %for.body7.lr.ph ], [ %i.1, %for.body7 ]
  %arrayidx9 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv
  call void @unmake(%struct.move_s* %arrayidx9, i32 0) #12
  %i.1 = add nsw i32 %i.123, -1
  %cmp6 = icmp sgt i32 %i.1, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp6, label %for.body7, label %for.end11

for.end11:                                        ; preds = %for.body7, %for.end
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @post_thinking(i32 %score) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %hashpv = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = getelementptr inbounds [256 x i8]* %hashpv, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %2 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  %3 = load i32* @i_depth, align 4, !tbaa !0
  br i1 %tobool, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  %4 = load i64* @start_time, align 8, !tbaa !6
  %call.i = call double @difftime(i64 0, i64 %4) #14
  %conv.i = fptosi double %call.i to i32
  %mul.i = mul nsw i32 %conv.i, 100
  %5 = load i32* @nodes, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %3, i32 %score, i32 %mul.i, i32 %5) #12
  br label %if.end13

if.else6:                                         ; preds = %entry
  %6 = ashr i32 %score, 31
  %7 = and i32 %6, 13
  %8 = or i32 %7, 32
  %div9 = sdiv i32 %score, 100
  %ispos = icmp sgt i32 %score, -100
  %neg = sub i32 0, %div9
  %9 = select i1 %ispos, i32 %div9, i32 %neg
  %rem = srem i32 %score, 100
  %ispos60 = icmp sgt i32 %rem, -1
  %neg61 = sub i32 0, %rem
  %10 = select i1 %ispos60, i32 %rem, i32 %neg61
  %11 = load i32* @nodes, align 4, !tbaa !0
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %3, i32 %8, i32 %9, i32 %10, i32 %11) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  %12 = load i32* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 0), align 4, !tbaa !0
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %land.lhs.true20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %13 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %13, 13
  br i1 %cmp16, label %if.then25, label %if.end26

land.lhs.true20:                                  ; preds = %if.end13
  %14 = load i32* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 1), align 4, !tbaa !0
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21
  %15 = load i32* %arrayidx22, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %15, 13
  br i1 %cmp23, label %if.end26, label %if.then25

if.then25:                                        ; preds = %land.lhs.true20, %land.lhs.true
  call void @unmake(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1), i32 0) #12
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %land.lhs.true20, %if.then25
  %remake.0 = phi i32 [ 1, %if.then25 ], [ 0, %land.lhs.true20 ], [ 0, %land.lhs.true ]
  %16 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !tbaa !0
  %cmp2766 = icmp sgt i32 %16, 1
  br i1 %cmp2766, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %17 = bitcast %struct.move_s* %tmp to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv69 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next70, %for.body ]
  %arrayidx30 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv69
  %18 = bitcast %struct.move_s* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 4, i1 false), !tbaa.struct !5
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #13
  call void @make(%struct.move_s* %arrayidx30, i32 0) #12
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str52, i64 0, i64 0), i8* %0) #12
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %19 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !tbaa !0
  %20 = trunc i64 %indvars.iv.next70 to i32
  %cmp27 = icmp slt i32 %20, %19
  br i1 %cmp27, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end26
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 256, i32 16, i1 false)
  call void @hash_extract_pv(i32 7, i8* %1) #13
  %call37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str53, i64 0, i64 0), i8* %1) #12
  %21 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !tbaa !0
  %i.163 = add i32 %21, -1
  %cmp3964 = icmp sgt i32 %i.163, 0
  br i1 %cmp3964, label %for.body41.lr.ph, label %for.end45

for.body41.lr.ph:                                 ; preds = %for.end
  %22 = sext i32 %i.163 to i64
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %indvars.iv = phi i64 [ %22, %for.body41.lr.ph ], [ %indvars.iv.next, %for.body41 ]
  %i.165 = phi i32 [ %i.163, %for.body41.lr.ph ], [ %i.1, %for.body41 ]
  %arrayidx43 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv
  call void @unmake(%struct.move_s* %arrayidx43, i32 0) #12
  %i.1 = add nsw i32 %i.165, -1
  %cmp39 = icmp sgt i32 %i.1, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp39, label %for.body41, label %for.end45

for.end45:                                        ; preds = %for.body41, %for.end
  %tobool46 = icmp eq i32 %remake.0, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %for.end45
  call void @make(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1), i32 0) #12
  br label %if.end48

if.end48:                                         ; preds = %for.end45, %if.then47
  %putchar = call i32 @putchar(i32 10) #1
  call void @llvm.lifetime.end(i64 256, i8* %1) #1
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @rdifftime(i64 %end, i64 %start) #9 {
entry:
  %call = tail call double @difftime(i64 %end, i64 %start) #14
  %conv = fptosi double %call to i32
  %mul = mul nsw i32 %conv, 100
  ret i32 %mul
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @rtime() #9 {
entry:
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define void @post_fail_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load i32* @i_depth, align 4, !tbaa !0
  br i1 %tobool, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  %3 = load i64* @start_time, align 8, !tbaa !6
  %call.i = call double @difftime(i64 0, i64 %3) #14
  %conv.i = fptosi double %call.i to i32
  %mul.i = mul nsw i32 %conv.i, 100
  %4 = load i32* @nodes, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %2, i32 %score, i32 %mul.i, i32 %4) #12
  br label %if.end13

if.else6:                                         ; preds = %entry
  %5 = ashr i32 %score, 31
  %6 = and i32 %5, 13
  %7 = or i32 %6, 32
  %div9 = sdiv i32 %score, 100
  %ispos = icmp sgt i32 %score, -100
  %neg = sub i32 0, %div9
  %8 = select i1 %ispos, i32 %div9, i32 %neg
  %rem = srem i32 %score, 100
  %ispos23 = icmp sgt i32 %rem, -1
  %neg24 = sub i32 0, %rem
  %9 = select i1 %ispos23, i32 %rem, i32 %neg24
  %10 = load i32* @nodes, align 4, !tbaa !0
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %2, i32 %7, i32 %8, i32 %9, i32 %10) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  call void @unmake(%struct.move_s* %failmove, i32 0) #12
  %11 = bitcast %struct.move_s* %tmp to i8*
  %12 = bitcast %struct.move_s* %failmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !tbaa.struct !5
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #13
  call void @make(%struct.move_s* %failmove, i32 0) #12
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0), i8* %0) #12
  %putchar = call i32 @putchar(i32 10) #1
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @post_fh_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load i32* @i_depth, align 4, !tbaa !0
  br i1 %tobool, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  %3 = load i64* @start_time, align 8, !tbaa !6
  %call.i = call double @difftime(i64 0, i64 %3) #14
  %conv.i = fptosi double %call.i to i32
  %mul.i = mul nsw i32 %conv.i, 100
  %4 = load i32* @nodes, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %2, i32 %score, i32 %mul.i, i32 %4) #12
  br label %if.end13

if.else6:                                         ; preds = %entry
  %5 = ashr i32 %score, 31
  %6 = and i32 %5, 13
  %7 = or i32 %6, 32
  %div9 = sdiv i32 %score, 100
  %ispos = icmp sgt i32 %score, -100
  %neg = sub i32 0, %div9
  %8 = select i1 %ispos, i32 %div9, i32 %neg
  %rem = srem i32 %score, 100
  %ispos23 = icmp sgt i32 %rem, -1
  %neg24 = sub i32 0, %rem
  %9 = select i1 %ispos23, i32 %rem, i32 %neg24
  %10 = load i32* @nodes, align 4, !tbaa !0
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %2, i32 %7, i32 %8, i32 %9, i32 %10) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  call void @unmake(%struct.move_s* %failmove, i32 0) #12
  %11 = bitcast %struct.move_s* %tmp to i8*
  %12 = bitcast %struct.move_s* %failmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !tbaa.struct !5
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #13
  call void @make(%struct.move_s* %failmove, i32 0) #12
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str56, i64 0, i64 0), i8* %0) #12
  %putchar = call i32 @putchar(i32 10) #1
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @post_fl_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load i32* @i_depth, align 4, !tbaa !0
  br i1 %tobool, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  %3 = load i64* @start_time, align 8, !tbaa !6
  %call.i = call double @difftime(i64 0, i64 %3) #14
  %conv.i = fptosi double %call.i to i32
  %mul.i = mul nsw i32 %conv.i, 100
  %4 = load i32* @nodes, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %2, i32 %score, i32 %mul.i, i32 %4) #12
  br label %if.end13

if.else6:                                         ; preds = %entry
  %5 = ashr i32 %score, 31
  %6 = and i32 %5, 13
  %7 = or i32 %6, 32
  %div9 = sdiv i32 %score, 100
  %ispos = icmp sgt i32 %score, -100
  %neg = sub i32 0, %div9
  %8 = select i1 %ispos, i32 %div9, i32 %neg
  %rem = srem i32 %score, 100
  %ispos23 = icmp sgt i32 %rem, -1
  %neg24 = sub i32 0, %rem
  %9 = select i1 %ispos23, i32 %rem, i32 %neg24
  %10 = load i32* @nodes, align 4, !tbaa !0
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %2, i32 %7, i32 %8, i32 %9, i32 %10) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  call void @unmake(%struct.move_s* %failmove, i32 0) #12
  %11 = bitcast %struct.move_s* %tmp to i8*
  %12 = bitcast %struct.move_s* %failmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !tbaa.struct !5
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #13
  call void @make(%struct.move_s* %failmove, i32 0) #12
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i8* %0) #12
  %putchar = call i32 @putchar(i32 10) #1
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @post_stat_thinking() #0 {
entry:
  %0 = load i64* @start_time, align 8, !tbaa !6
  %call.i = tail call double @difftime(i64 0, i64 %0) #14
  %conv.i = fptosi double %call.i to i32
  %mul.i = mul nsw i32 %conv.i, 100
  %1 = load i32* @xb_mode, align 4, !tbaa !0
  switch i32 %1, label %if.end6 [
    i32 1, label %if.then
    i32 2, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %2 = load i32* @nodes, align 4, !tbaa !0
  %3 = load i32* @i_depth, align 4, !tbaa !0
  %4 = load i32* @moveleft, align 4, !tbaa !0
  %5 = load i32* @movetotal, align 4, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str58, i64 0, i64 0), i32 %mul.i, i32 %2, i32 %3, i32 %4, i32 %5) #12
  br label %if.end6

if.then4:                                         ; preds = %entry
  %6 = load i32* @nodes, align 4, !tbaa !0
  %7 = load i32* @i_depth, align 4, !tbaa !0
  %8 = load i32* @moveleft, align 4, !tbaa !0
  %9 = load i32* @movetotal, align 4, !tbaa !0
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i32 %mul.i, i32 %6, i32 %7, i32 %8, i32 %9, i8* getelementptr inbounds ([20 x i8]* @searching_move, i64 0, i64 0)) #12
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_move(%struct.move_s* nocapture %moves, i32 %m, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  %move = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [256 x i8]* %move, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %idxprom = sext i32 %m to i64
  %arrayidx = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom
  %1 = bitcast %struct.move_s* %tmp to i8*
  %2 = bitcast %struct.move_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 4, i1 false), !tbaa.struct !5
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #13
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %stream)
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @rdelay(i32 %time_in_s) #9 {
entry:
  %cmp3 = icmp sgt i32 %time_in_s, 0
  br i1 %cmp3, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %call.i = tail call double @difftime(i64 0, i64 0) #14
  %conv.i = fptosi double %call.i to i32
  %cmp = icmp slt i32 %conv.i, %time_in_s
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  br label %while.body

while.end:                                        ; preds = %while.body.lr.ph, %entry
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @difftime(i64, i64) #5

; Function Attrs: nounwind optsize uwtable
define void @check_piece_square() #0 {
entry:
  %0 = load i32* @piece_count, align 4, !tbaa !0
  %cmp107 = icmp slt i32 %0, 1
  br i1 %cmp107, label %for.body33, label %for.body

for.cond:                                         ; preds = %if.end18
  %indvars.iv.next113 = add i64 %indvars.iv112, 1
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.body33

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.cond ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv112
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom1
  %2 = load i32* %arrayidx2, align 4, !tbaa !0
  %3 = trunc i64 %indvars.iv112 to i32
  %cmp3 = icmp eq i32 %2, %3
  %cmp6 = icmp eq i32 %1, 0
  %or.cond = or i1 %cmp3, %cmp6
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %puts99 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str80, i64 0, i64 0))
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  tail call void @display_board(%struct._IO_FILE* %4, i32 0) #13
  tail call void @llvm.trap()
  unreachable

if.end:                                           ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %5 = load i32* %arrayidx10, align 4, !tbaa !0
  %cmp11 = icmp ne i32 %5, 13
  %or.cond100 = or i1 %cmp11, %cmp6
  br i1 %or.cond100, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end
  %puts98 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str79, i64 0, i64 0))
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  tail call void @display_board(%struct._IO_FILE* %6, i32 0) #13
  tail call void @llvm.trap()
  unreachable

if.end18:                                         ; preds = %if.end
  %cmp6.not = xor i1 %cmp6, true
  %cmp27 = icmp eq i32 %2, 0
  %or.cond102 = or i1 %cmp27, %cmp6.not
  br i1 %or.cond102, label %for.cond, label %if.then28

if.then28:                                        ; preds = %if.end18
  %puts97 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str78, i64 0, i64 0))
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  tail call void @display_board(%struct._IO_FILE* %7, i32 0) #13
  tail call void @llvm.trap()
  unreachable

for.cond31:                                       ; preds = %if.end60
  %inc74 = add nsw i32 %i.1106, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp32 = icmp slt i32 %8, 144
  br i1 %cmp32, label %for.body33, label %for.end75

for.body33:                                       ; preds = %entry, %for.cond, %for.cond31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond31 ], [ 0, %for.cond ], [ 0, %entry ]
  %i.1106 = phi i32 [ %inc74, %for.cond31 ], [ 0, %for.cond ], [ 0, %entry ]
  %arrayidx35 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv
  %9 = load i32* %arrayidx35, align 4, !tbaa !0
  switch i32 %9, label %land.lhs.true54 [
    i32 13, label %land.lhs.true40
    i32 0, label %land.lhs.true40
  ]

land.lhs.true40:                                  ; preds = %for.body33, %for.body33
  %arrayidx42 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv
  %10 = load i32* %arrayidx42, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %10, 0
  br i1 %cmp43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %land.lhs.true40
  %puts96 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str77, i64 0, i64 0))
  %11 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  tail call void @display_board(%struct._IO_FILE* %11, i32 0) #13
  tail call void @llvm.trap()
  unreachable

if.end46:                                         ; preds = %land.lhs.true40
  switch i32 %9, label %land.lhs.true54 [
    i32 13, label %if.end60
    i32 0, label %if.end60
  ]

land.lhs.true54:                                  ; preds = %for.body33, %if.end46
  %arrayidx56 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv
  %12 = load i32* %arrayidx56, align 4, !tbaa !0
  %cmp57 = icmp eq i32 %12, 0
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %land.lhs.true54
  %call59 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0), i32 %i.1106) #12
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  tail call void @display_board(%struct._IO_FILE* %13, i32 0) #13
  tail call void @llvm.trap()
  unreachable

if.end60:                                         ; preds = %land.lhs.true54, %if.end46, %if.end46
  %arrayidx62 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv
  %14 = load i32* %arrayidx62, align 4, !tbaa !0
  %idxprom63 = sext i32 %14 to i64
  %arrayidx64 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom63
  %15 = load i32* %arrayidx64, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv to i32
  %cmp65 = icmp eq i32 %15, %16
  %cmp69 = icmp eq i32 %14, 0
  %or.cond101 = or i1 %cmp65, %cmp69
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %or.cond101, label %for.cond31, label %if.then70

if.then70:                                        ; preds = %if.end60
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str76, i64 0, i64 0))
  %17 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  tail call void @display_board(%struct._IO_FILE* %17, i32 0) #13
  tail call void @llvm.trap()
  unreachable

for.end75:                                        ; preds = %for.cond31
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @start_up() #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([70 x i8]* @str81, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @toggle_bool(i32* nocapture %var) #0 {
entry:
  %0 = load i32* %var, align 4, !tbaa !1
  %tobool = icmp eq i32 %0, 0
  %. = zext i1 %tobool to i32
  store i32 %., i32* %var, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @tree_debug() #0 {
entry:
  %input = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  call void @init_game() #13
  %puts = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str82, i64 0, i64 0))
  %1 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %1) #13
  %call2 = call i32 @atoi(i8* %0) #15
  %puts22 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str83, i64 0, i64 0))
  %2 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %2) #13
  %3 = load i8* %0, align 16, !tbaa !1
  %cmp = icmp eq i8 %3, 121
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %puts23 = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str84, i64 0, i64 0))
  %4 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %4) #13
  %call9 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str70, i64 0, i64 0)) #12
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str71, i64 0, i64 0), i8* %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  %puts24 = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str85, i64 0, i64 0))
  %6 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %6) #13
  call void @tree(i32 %call2, i32 0, %struct._IO_FILE* %call9, i8* %0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry
  store i32 0, i32* @raw_nodes, align 4, !tbaa !0
  call void @perft(i32 %call2) #12
  %7 = load i32* @raw_nodes, align 4, !tbaa !0
  %call19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0), i32 %call2, i32 %7, i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #12
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @tree(i32, i32, %struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @interrupt() #9 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @PutPiece(i32 %color, i8 signext %piece, i8 signext %pfile, i32 %prank) #0 {
entry:
  %conv = sext i8 %pfile to i32
  %0 = mul i32 %prank, 12
  %sub = add i32 %conv, -659
  %add2 = add i32 %sub, %0
  switch i32 %color, label %if.end49 [
    i32 0, label %if.then
    i32 1, label %if.then25
  ]

if.then:                                          ; preds = %entry
  %conv4 = sext i8 %piece to i32
  switch i32 %conv4, label %if.end49 [
    i32 112, label %sw.bb
    i32 110, label %sw.bb5
    i32 98, label %sw.bb8
    i32 114, label %sw.bb11
    i32 113, label %sw.bb14
    i32 107, label %sw.bb17
    i32 120, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4, !tbaa !0
  br label %if.end49

sw.bb5:                                           ; preds = %if.then
  %idxprom6 = sext i32 %add2 to i64
  %arrayidx7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom6
  store i32 3, i32* %arrayidx7, align 4, !tbaa !0
  br label %if.end49

sw.bb8:                                           ; preds = %if.then
  %idxprom9 = sext i32 %add2 to i64
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom9
  store i32 11, i32* %arrayidx10, align 4, !tbaa !0
  br label %if.end49

sw.bb11:                                          ; preds = %if.then
  %idxprom12 = sext i32 %add2 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom12
  store i32 7, i32* %arrayidx13, align 4, !tbaa !0
  br label %if.end49

sw.bb14:                                          ; preds = %if.then
  %idxprom15 = sext i32 %add2 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15
  store i32 9, i32* %arrayidx16, align 4, !tbaa !0
  br label %if.end49

sw.bb17:                                          ; preds = %if.then
  %idxprom18 = sext i32 %add2 to i64
  %arrayidx19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom18
  store i32 5, i32* %arrayidx19, align 4, !tbaa !0
  br label %if.end49

sw.bb20:                                          ; preds = %if.then
  %idxprom21 = sext i32 %add2 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  br label %if.end49

if.then25:                                        ; preds = %entry
  %conv26 = sext i8 %piece to i32
  switch i32 %conv26, label %if.end49 [
    i32 112, label %sw.bb27
    i32 110, label %sw.bb30
    i32 98, label %sw.bb33
    i32 114, label %sw.bb36
    i32 113, label %sw.bb39
    i32 107, label %sw.bb42
    i32 120, label %sw.bb45
  ]

sw.bb27:                                          ; preds = %if.then25
  %idxprom28 = sext i32 %add2 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28
  store i32 2, i32* %arrayidx29, align 4, !tbaa !0
  br label %if.end49

sw.bb30:                                          ; preds = %if.then25
  %idxprom31 = sext i32 %add2 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom31
  store i32 4, i32* %arrayidx32, align 4, !tbaa !0
  br label %if.end49

sw.bb33:                                          ; preds = %if.then25
  %idxprom34 = sext i32 %add2 to i64
  %arrayidx35 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom34
  store i32 12, i32* %arrayidx35, align 4, !tbaa !0
  br label %if.end49

sw.bb36:                                          ; preds = %if.then25
  %idxprom37 = sext i32 %add2 to i64
  %arrayidx38 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom37
  store i32 8, i32* %arrayidx38, align 4, !tbaa !0
  br label %if.end49

sw.bb39:                                          ; preds = %if.then25
  %idxprom40 = sext i32 %add2 to i64
  %arrayidx41 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom40
  store i32 10, i32* %arrayidx41, align 4, !tbaa !0
  br label %if.end49

sw.bb42:                                          ; preds = %if.then25
  %idxprom43 = sext i32 %add2 to i64
  %arrayidx44 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom43
  store i32 6, i32* %arrayidx44, align 4, !tbaa !0
  br label %if.end49

sw.bb45:                                          ; preds = %if.then25
  %idxprom46 = sext i32 %add2 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom46
  store i32 13, i32* %arrayidx47, align 4, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %entry, %if.then25, %sw.bb45, %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb, %sw.bb5, %sw.bb8, %sw.bb11, %sw.bb14, %sw.bb17, %sw.bb20, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @reset_board() #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* bitcast ([144 x i32]* @reset_board.init_board to i8*), i64 576, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @moved to i8*), i8 0, i64 576, i32 4, i1 false)
  store i32 0, i32* @ep_square, align 4, !tbaa !0
  store i32 0, i32* @piece_count, align 4, !tbaa !0
  store i32 0, i32* @Material, align 4, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* @white_hand_eval, align 4, !tbaa !0
  store i32 0, i32* @black_hand_eval, align 4, !tbaa !0
  store i32 0, i32* @bookidx, align 4, !tbaa !0
  store i32 0, i32* @fifty, align 4, !tbaa !0
  tail call void @reset_piece_square() #13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @seedMT(i32 %seed) #0 {
entry:
  %or = or i32 %seed, 1
  store i32 0, i32* @left, align 4, !tbaa !0
  store i32 %or, i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), align 16, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %entry, %for.inc
  %j.06 = phi i32 [ 623, %entry ], [ %phitmp, %for.inc ]
  %s.05 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 1), %entry ], [ %incdec.ptr1, %for.inc ]
  %x.04 = phi i32 [ %or, %entry ], [ %mul, %for.inc ]
  %mul = mul i32 %x.04, 69069
  %incdec.ptr1 = getelementptr inbounds i32* %s.05, i64 1
  store i32 %mul, i32* %s.05, align 4, !tbaa !0
  %phitmp = add i32 %j.06, -1
  %tobool = icmp eq i32 %phitmp, 0
  br i1 %tobool, label %for.end, label %for.inc

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @reloadMT() #0 {
entry:
  %0 = load i32* @left, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @left, align 4, !tbaa !0
  store i32 4357, i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), align 16, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i, %if.then
  %j.06.i = phi i32 [ 623, %if.then ], [ %phitmp.i, %for.inc.i ]
  %s.05.i = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 1), %if.then ], [ %incdec.ptr1.i, %for.inc.i ]
  %x.04.i = phi i32 [ 4357, %if.then ], [ %mul.i, %for.inc.i ]
  %mul.i = mul i32 %x.04.i, 69069
  %incdec.ptr1.i = getelementptr inbounds i32* %s.05.i, i64 1
  store i32 %mul.i, i32* %s.05.i, align 4, !tbaa !0
  %phitmp.i = add i32 %j.06.i, -1
  %tobool.i = icmp eq i32 %phitmp.i, 0
  br i1 %tobool.i, label %if.end, label %for.inc.i

if.end:                                           ; preds = %for.inc.i, %entry
  store i32 623, i32* @left, align 4, !tbaa !0
  store i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 1), i32** @next, align 8, !tbaa !3
  %1 = load i64* bitcast ([625 x i32]* @state to i64*), align 16
  %2 = trunc i64 %1 to i32
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %s1.079 = phi i32 [ %4, %if.end ], [ %s1.0, %for.body ]
  %j.078 = phi i32 [ 227, %if.end ], [ %phitmp, %for.body ]
  %s0.077 = phi i32 [ %2, %if.end ], [ %s1.079, %for.body ]
  %pM.076 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 397), %if.end ], [ %incdec.ptr, %for.body ]
  %p2.075 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 2), %if.end ], [ %incdec.ptr6, %for.body ]
  %p0.074 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), %if.end ], [ %incdec.ptr5, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %pM.076, i64 1
  %5 = load i32* %pM.076, align 4, !tbaa !0
  %and = and i32 %s0.077, -2147483648
  %and1 = and i32 %s1.079, 2147483646
  %or = or i32 %and1, %and
  %shr = lshr exact i32 %or, 1
  %and2 = and i32 %s1.079, 1
  %tobool3 = icmp ne i32 %and2, 0
  %cond = select i1 %tobool3, i32 -1727483681, i32 0
  %xor = xor i32 %cond, %shr
  %xor4 = xor i32 %xor, %5
  %incdec.ptr5 = getelementptr inbounds i32* %p0.074, i64 1
  store i32 %xor4, i32* %p0.074, align 4, !tbaa !0
  %incdec.ptr6 = getelementptr inbounds i32* %p2.075, i64 1
  %phitmp = add i32 %j.078, -1
  %s1.0 = load i32* %p2.075, align 4
  %tobool = icmp eq i32 %phitmp, 0
  br i1 %tobool, label %for.body10, label %for.body

for.body10:                                       ; preds = %for.body, %for.body10
  %j.172 = phi i32 [ %phitmp66, %for.body10 ], [ 396, %for.body ]
  %s1.171 = phi i32 [ %7, %for.body10 ], [ %s1.0, %for.body ]
  %s0.170 = phi i32 [ %s1.171, %for.body10 ], [ %s1.079, %for.body ]
  %pM.169 = phi i32* [ %incdec.ptr11, %for.body10 ], [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), %for.body ]
  %p2.168 = phi i32* [ %incdec.ptr23, %for.body10 ], [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 229), %for.body ]
  %p0.167 = phi i32* [ %incdec.ptr21, %for.body10 ], [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 227), %for.body ]
  %incdec.ptr11 = getelementptr inbounds i32* %pM.169, i64 1
  %6 = load i32* %pM.169, align 4, !tbaa !0
  %and12 = and i32 %s0.170, -2147483648
  %and13 = and i32 %s1.171, 2147483646
  %or14 = or i32 %and13, %and12
  %shr15 = lshr exact i32 %or14, 1
  %and17 = and i32 %s1.171, 1
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i32 -1727483681, i32 0
  %xor16 = xor i32 %cond19, %shr15
  %xor20 = xor i32 %xor16, %6
  %incdec.ptr21 = getelementptr inbounds i32* %p0.167, i64 1
  store i32 %xor20, i32* %p0.167, align 4, !tbaa !0
  %incdec.ptr23 = getelementptr inbounds i32* %p2.168, i64 1
  %7 = load i32* %p2.168, align 4, !tbaa !0
  %phitmp66 = add i32 %j.172, -1
  %tobool9 = icmp eq i32 %phitmp66, 0
  br i1 %tobool9, label %for.end24, label %for.body10

for.end24:                                        ; preds = %for.body10
  %8 = load i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), align 16, !tbaa !0
  %9 = load i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 396), align 16, !tbaa !0
  %and25 = and i32 %s1.171, -2147483648
  %and26 = and i32 %8, 2147483646
  %or27 = or i32 %and26, %and25
  %shr28 = lshr exact i32 %or27, 1
  %xor29 = xor i32 %shr28, %9
  %and30 = and i32 %8, 1
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 -1727483681, i32 0
  %xor33 = xor i32 %xor29, %cond32
  store i32 %xor33, i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 623), align 4, !tbaa !0
  %shr34 = lshr i32 %8, 11
  %xor35 = xor i32 %shr34, %8
  %shl = shl i32 %xor35, 7
  %and36 = and i32 %shl, -1658038656
  %xor37 = xor i32 %and36, %xor35
  %shl38 = shl i32 %xor37, 15
  %and39 = and i32 %shl38, -272236544
  %xor40 = xor i32 %and39, %xor37
  %shr41 = lshr i32 %xor40, 18
  %xor42 = xor i32 %shr41, %xor40
  ret i32 %xor42
}

; Function Attrs: nounwind optsize uwtable
define i32 @randomMT() #0 {
entry:
  %0 = load i32* @left, align 4, !tbaa !0
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @left, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @reloadMT() #13
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32** @next, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %1, i64 1
  store i32* %incdec.ptr, i32** @next, align 8, !tbaa !3
  %2 = load i32* %1, align 4, !tbaa !0
  %shr = lshr i32 %2, 11
  %xor = xor i32 %shr, %2
  %shl = shl i32 %xor, 7
  %and = and i32 %shl, -1658038656
  %xor1 = xor i32 %and, %xor
  %shl2 = shl i32 %xor1, 15
  %and3 = and i32 %shl2, -272236544
  %xor4 = xor i32 %and3, %xor1
  %shr5 = lshr i32 %xor4, 18
  %xor6 = xor i32 %shr5, %xor4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %xor6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #10

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #11

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize readnone }
attributes #15 = { nounwind optsize readonly }
attributes #16 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !0, i64 16, i64 4, metadata !0, i64 20, i64 4, metadata !0}
!6 = metadata !{metadata !"long", metadata !1}
