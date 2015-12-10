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
  tail call void @llvm.dbg.value(metadata !367, i64 0, metadata !31), !dbg !368
  tail call void @llvm.dbg.value(metadata !369, i64 0, metadata !33), !dbg !368
  %0 = load i32* @moves_to_tc, align 4, !dbg !370, !tbaa !371
  %tobool = icmp eq i32 %0, 0, !dbg !370
  %1 = load i32* @min_per_game, align 4, !dbg !374, !tbaa !371
  br i1 %tobool, label %if.then, label %if.else110, !dbg !370

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %1, 5, !dbg !376
  %2 = load i32* @inc, align 4, !dbg !376, !tbaa !371
  %tobool1 = icmp ne i32 %2, 0, !dbg !376
  %or.cond = or i1 %cmp, %tobool1, !dbg !376
  %3 = load i32* @time_left, align 4, !dbg !376, !tbaa !371
  br i1 %or.cond, label %lor.lhs.false, label %if.then7, !dbg !376

lor.lhs.false:                                    ; preds = %if.then
  %conv = sitofp i32 %3 to double, !dbg !376
  %mul = mul nsw i32 %1, 6000, !dbg !376
  %4 = load i32* @sec_per_game, align 4, !dbg !376, !tbaa !371
  %mul2 = mul nsw i32 %4, 100, !dbg !376
  %add = add nsw i32 %mul2, %mul, !dbg !376
  %conv3 = sitofp i32 %add to double, !dbg !376
  %mul4 = fmul double %conv3, 4.000000e+00, !dbg !376
  %div = fdiv double %mul4, 5.000000e+00, !dbg !376
  %cmp5 = fcmp olt double %conv, %div, !dbg !376
  br i1 %cmp5, label %if.then7, label %if.end37, !dbg !376

if.then7:                                         ; preds = %if.then, %lor.lhs.false
  %5 = load i32* @opp_time, align 4, !dbg !378, !tbaa !371
  %sub = sub nsw i32 %5, %3, !dbg !378
  %conv8 = sitofp i32 %sub to double, !dbg !378
  %conv9 = sitofp i32 %5 to double, !dbg !378
  %div10 = fdiv double %conv9, 5.000000e+00, !dbg !378
  %cmp11 = fcmp ogt double %conv8, %div10, !dbg !378
  %6 = load i32* @xb_mode, align 4, !dbg !378, !tbaa !371
  %tobool14 = icmp ne i32 %6, 0, !dbg !378
  %or.cond149 = and i1 %cmp11, %tobool14, !dbg !378
  br i1 %or.cond149, label %if.end37, label %if.else, !dbg !378

if.else:                                          ; preds = %if.then7
  %div19 = fdiv double %conv9, 1.000000e+01, !dbg !380
  %cmp20 = fcmp ogt double %conv8, %div19, !dbg !380
  %or.cond150 = and i1 %cmp20, %tobool14, !dbg !380
  br i1 %or.cond150, label %if.end37, label %if.else25, !dbg !380

if.else25:                                        ; preds = %if.else
  %div29 = fdiv double %conv9, 2.000000e+01, !dbg !381
  %cmp30 = fcmp ogt double %conv8, %div29, !dbg !381
  %or.cond151 = and i1 %cmp30, %tobool14, !dbg !381
  tail call void @llvm.dbg.value(metadata !382, i64 0, metadata !33), !dbg !383
  %. = select i1 %or.cond151, double 2.500000e+01, double 2.000000e+01, !dbg !381
  br label %if.end37, !dbg !381

if.end37:                                         ; preds = %if.else25, %if.else, %if.then7, %lor.lhs.false
  %move_speed.0 = phi double [ 2.000000e+01, %lor.lhs.false ], [ 4.000000e+01, %if.then7 ], [ 3.000000e+01, %if.else ], [ %., %if.else25 ]
  %7 = load i32* @Variant, align 4, !dbg !384, !tbaa !371
  %.off = add i32 %7, -3, !dbg !384
  %8 = icmp ugt i32 %.off, 1, !dbg !384
  br i1 %8, label %if.then43, label %if.else67, !dbg !384

if.then43:                                        ; preds = %if.end37
  %9 = load i32* @opp_time, align 4, !dbg !385, !tbaa !371
  %sub44 = sub nsw i32 %3, %9, !dbg !385
  %conv45 = sitofp i32 %sub44 to double, !dbg !385
  %conv46 = sitofp i32 %3 to double, !dbg !385
  %div47 = fdiv double %conv46, 5.000000e+00, !dbg !385
  %cmp48 = fcmp ogt double %conv45, %div47, !dbg !385
  %10 = load i32* @xb_mode, align 4, !dbg !385, !tbaa !371
  %tobool51 = icmp ne i32 %10, 0, !dbg !385
  %or.cond153 = and i1 %cmp48, %tobool51, !dbg !385
  br i1 %or.cond153, label %if.then52, label %if.else54, !dbg !385

if.then52:                                        ; preds = %if.then43
  %sub53 = fadd double %move_speed.0, -1.000000e+01, !dbg !387
  tail call void @llvm.dbg.value(metadata !{double %sub53}, i64 0, metadata !33), !dbg !387
  br label %if.end79, !dbg !387

if.else54:                                        ; preds = %if.then43
  %div58 = fdiv double %conv46, 1.000000e+01, !dbg !388
  %cmp59 = fcmp ogt double %conv45, %div58, !dbg !388
  %or.cond154 = and i1 %cmp59, %tobool51, !dbg !388
  br i1 %or.cond154, label %if.then63, label %if.end79, !dbg !388

if.then63:                                        ; preds = %if.else54
  %sub64 = fadd double %move_speed.0, -5.000000e+00, !dbg !389
  tail call void @llvm.dbg.value(metadata !{double %sub64}, i64 0, metadata !33), !dbg !389
  br label %if.end79, !dbg !389

if.else67:                                        ; preds = %if.end37
  switch i32 %7, label %if.end79 [
    i32 3, label %if.then70
    i32 4, label %if.then75
  ], !dbg !390

if.then70:                                        ; preds = %if.else67
  %sub71 = fadd double %move_speed.0, -1.000000e+01, !dbg !391
  tail call void @llvm.dbg.value(metadata !{double %sub71}, i64 0, metadata !33), !dbg !391
  br label %if.end79, !dbg !393

if.then75:                                        ; preds = %if.else67
  %sub76 = fadd double %move_speed.0, -5.000000e+00, !dbg !394
  tail call void @llvm.dbg.value(metadata !{double %sub76}, i64 0, metadata !33), !dbg !394
  br label %if.end79, !dbg !396

if.end79:                                         ; preds = %if.else67, %if.then70, %if.then75, %if.then52, %if.then63, %if.else54
  %move_speed.1 = phi double [ %sub53, %if.then52 ], [ %sub64, %if.then63 ], [ %move_speed.0, %if.else54 ], [ %sub71, %if.then70 ], [ %sub76, %if.then75 ], [ %move_speed.0, %if.else67 ]
  %conv80 = sitofp i32 %3 to double, !dbg !397
  %div81 = fdiv double %conv80, %move_speed.1, !dbg !397
  tail call void @llvm.dbg.value(metadata !{double %div81}, i64 0, metadata !31), !dbg !397
  %tobool82 = icmp eq i32 %2, 0, !dbg !398
  br i1 %tobool82, label %if.end134, label %if.then83, !dbg !398

if.then83:                                        ; preds = %if.end79
  %sub85 = fsub double %conv80, %div81, !dbg !399
  %conv86 = sitofp i32 %2 to double, !dbg !399
  %sub87 = fsub double %sub85, %conv86, !dbg !399
  %cmp88 = fcmp ogt double %sub87, 5.000000e+02, !dbg !399
  br i1 %cmp88, label %if.then90, label %if.else93, !dbg !399

if.then90:                                        ; preds = %if.then83
  %add92 = fadd double %div81, %conv86, !dbg !401
  tail call void @llvm.dbg.value(metadata !{double %add92}, i64 0, metadata !31), !dbg !401
  br label %if.end134, !dbg !403

if.else93:                                        ; preds = %if.then83
  %mul97 = fmul double %conv86, 2.000000e+00, !dbg !404
  %div98 = fdiv double %mul97, 3.000000e+00, !dbg !404
  %sub99 = fsub double %sub85, %div98, !dbg !404
  %cmp100 = fcmp ogt double %sub99, 1.000000e+02, !dbg !404
  br i1 %cmp100, label %if.then102, label %if.end134, !dbg !404

if.then102:                                       ; preds = %if.else93
  %add106 = fadd double %div81, %div98, !dbg !405
  tail call void @llvm.dbg.value(metadata !{double %add106}, i64 0, metadata !31), !dbg !405
  br label %if.end134, !dbg !407

if.else110:                                       ; preds = %entry
  %conv111 = sitofp i32 %1 to float, !dbg !374
  %conv112 = fpext float %conv111 to double, !dbg !374
  %mul113 = fmul double %conv112, 6.000000e+03, !dbg !374
  %11 = load i32* @sec_per_game, align 4, !dbg !374, !tbaa !371
  %conv114 = sitofp i32 %11 to float, !dbg !374
  %conv115 = fpext float %conv114 to double, !dbg !374
  %mul116 = fmul double %conv115, 1.000000e+02, !dbg !374
  %add117 = fadd double %mul113, %mul116, !dbg !374
  %conv118 = sitofp i32 %0 to float, !dbg !374
  %conv119 = fpext float %conv118 to double, !dbg !374
  %div120 = fdiv double %add117, %conv119, !dbg !374
  %sub121 = fadd double %div120, -1.000000e+02, !dbg !374
  tail call void @llvm.dbg.value(metadata !{double %sub121}, i64 0, metadata !31), !dbg !374
  %12 = load i32* @time_cushion, align 4, !dbg !408, !tbaa !371
  %tobool122 = icmp eq i32 %12, 0, !dbg !408
  br i1 %tobool122, label %if.end134, label %if.then123, !dbg !408

if.then123:                                       ; preds = %if.else110
  %conv124 = sitofp i32 %12 to double, !dbg !409
  %mul125 = fmul double %conv124, 2.100000e+00, !dbg !409
  %div126 = fdiv double %mul125, 3.000000e+00, !dbg !409
  %add127 = fadd double %sub121, %div126, !dbg !409
  tail call void @llvm.dbg.value(metadata !{double %add127}, i64 0, metadata !31), !dbg !409
  %conv131 = fptosi double %div126 to i32, !dbg !411
  %sub132 = sub nsw i32 %12, %conv131, !dbg !411
  store i32 %sub132, i32* @time_cushion, align 4, !dbg !411, !tbaa !371
  br label %if.end134, !dbg !412

if.end134:                                        ; preds = %if.else110, %if.end79, %if.then123, %if.else93, %if.then102, %if.then90
  %allocated_time.0 = phi double [ %add127, %if.then123 ], [ %add92, %if.then90 ], [ %add106, %if.then102 ], [ %div81, %if.else93 ], [ %div81, %if.end79 ], [ %sub121, %if.else110 ]
  %13 = load i32* @Variant, align 4, !dbg !413, !tbaa !371
  %cmp135 = icmp eq i32 %13, 1, !dbg !413
  br i1 %cmp135, label %if.then137, label %if.end147, !dbg !413

if.then137:                                       ; preds = %if.end134
  %mul138 = fmul double %allocated_time.0, 2.500000e-01, !dbg !414
  tail call void @llvm.dbg.value(metadata !{double %mul138}, i64 0, metadata !31), !dbg !414
  %14 = load i32* @opp_time, align 4, !dbg !416, !tbaa !371
  %15 = load i32* @time_left, align 4, !dbg !416, !tbaa !371
  %cmp139 = icmp sgt i32 %14, %15, !dbg !416
  %cmp142 = icmp slt i32 %14, 1500, !dbg !416
  %or.cond155 = or i1 %cmp139, %cmp142, !dbg !416
  br i1 %or.cond155, label %if.then144, label %if.end147, !dbg !416

if.then144:                                       ; preds = %if.then137
  %mul145 = fmul double %mul138, 5.000000e-01, !dbg !417
  tail call void @llvm.dbg.value(metadata !{double %mul145}, i64 0, metadata !31), !dbg !417
  br label %if.end147, !dbg !419

if.end147:                                        ; preds = %if.then144, %if.then137, %if.end134
  %allocated_time.1 = phi double [ %mul145, %if.then144 ], [ %mul138, %if.then137 ], [ %allocated_time.0, %if.end134 ]
  %conv148 = fptosi double %allocated_time.1 to i32, !dbg !420
  ret i32 %conv148, !dbg !420
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @comp_to_san(%struct.move_s* byval align 8 %move, i8* nocapture %str) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %evade_moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %move}, metadata !49), !dbg !421
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !50), !dbg !421
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !422
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2, !dbg !422
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !51), !dbg !422
  %1 = bitcast [512 x %struct.move_s]* %evade_moves to i8*, !dbg !423
  call void @llvm.lifetime.start(i64 12288, i8* %1) #2, !dbg !423
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %evade_moves}, metadata !55), !dbg !423
  %from = getelementptr inbounds %struct.move_s* %move, i64 0, i32 0, !dbg !424
  %2 = bitcast %struct.move_s* %move to i64*, !dbg !424
  %3 = load i64* %2, align 8, !dbg !424
  %4 = trunc i64 %3 to i32, !dbg !424
  %sext309 = shl i64 %3, 32, !dbg !424
  %idxprom = ashr exact i64 %sext309, 32, !dbg !424
  %arrayidx = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom, !dbg !424
  %5 = load i32* %arrayidx, align 4, !dbg !424, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !61), !dbg !424
  %target = getelementptr inbounds %struct.move_s* %move, i64 0, i32 1, !dbg !425
  %idxprom1 = ashr i64 %3, 32, !dbg !425
  %arrayidx2 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom1, !dbg !425
  %6 = load i32* %arrayidx2, align 4, !dbg !425, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !62), !dbg !425
  call void @llvm.dbg.value(metadata !426, i64 0, metadata !63), !dbg !427
  %arrayidx5 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom, !dbg !428
  %7 = load i32* %arrayidx5, align 4, !dbg !428, !tbaa !371
  %sub = add nsw i32 %7, 96, !dbg !428
  %arrayidx8 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom1, !dbg !429
  %8 = load i32* %arrayidx8, align 4, !dbg !429, !tbaa !371
  %sub10 = add nsw i32 %8, 96, !dbg !429
  %cmp = icmp eq i32 %4, 0, !dbg !430
  br i1 %cmp, label %if.then, label %if.else, !dbg !430

if.then:                                          ; preds = %entry
  %promoted = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3, !dbg !431
  %9 = load i32* %promoted, align 4, !dbg !431, !tbaa !371
  %idxprom14 = sext i32 %9 to i64, !dbg !431
  %arrayidx15 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom14, !dbg !431
  %10 = load i32* %arrayidx15, align 4, !dbg !431, !tbaa !371
  %sext295 = shl i32 %sub10, 24, !dbg !431
  %conv16 = ashr exact i32 %sext295, 24, !dbg !431
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %conv16, i32 %6) #13, !dbg !431
  br label %if.end209, !dbg !433

if.else:                                          ; preds = %entry
  %arrayidx19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !434
  %11 = load i32* %arrayidx19, align 4, !dbg !434, !tbaa !371
  %.off = add i32 %11, -1, !dbg !434
  %switch = icmp ult i32 %.off, 2, !dbg !434
  br i1 %switch, label %if.then27, label %if.else61, !dbg !434

if.then27:                                        ; preds = %if.else
  %arrayidx30 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !435
  %12 = load i32* %arrayidx30, align 4, !dbg !435, !tbaa !371
  %cmp31 = icmp eq i32 %12, 13, !dbg !435
  br i1 %cmp31, label %land.lhs.true, label %if.else45, !dbg !435

land.lhs.true:                                    ; preds = %if.then27
  %ep = getelementptr inbounds %struct.move_s* %move, i64 0, i32 5, !dbg !435
  %13 = load i32* %ep, align 4, !dbg !435, !tbaa !371
  %tobool = icmp eq i32 %13, 0, !dbg !435
  br i1 %tobool, label %if.then33, label %if.else45, !dbg !435

if.then33:                                        ; preds = %land.lhs.true
  %promoted34 = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3, !dbg !437
  %14 = load i32* %promoted34, align 4, !dbg !437, !tbaa !371
  %tobool35 = icmp eq i32 %14, 0, !dbg !437
  %sext294 = shl i32 %sub10, 24, !dbg !439
  %conv40 = ashr exact i32 %sext294, 24, !dbg !439
  br i1 %tobool35, label %if.then36, label %if.else39, !dbg !437

if.then36:                                        ; preds = %if.then33
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 %conv40, i32 %6) #13, !dbg !441
  br label %if.end209, !dbg !443

if.else39:                                        ; preds = %if.then33
  %idxprom42 = sext i32 %14 to i64, !dbg !439
  %arrayidx43 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom42, !dbg !439
  %15 = load i32* %arrayidx43, align 4, !dbg !439, !tbaa !371
  %call44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 %conv40, i32 %6, i32 %15) #13, !dbg !439
  br label %if.end209

if.else45:                                        ; preds = %land.lhs.true, %if.then27
  %promoted46 = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3, !dbg !444
  %16 = load i32* %promoted46, align 4, !dbg !444, !tbaa !371
  %tobool47 = icmp eq i32 %16, 0, !dbg !444
  %sext292 = shl i32 %sub, 24, !dbg !446
  %conv53 = ashr exact i32 %sext292, 24, !dbg !446
  %sext293 = shl i32 %sub10, 24, !dbg !446
  %conv54 = ashr exact i32 %sext293, 24, !dbg !446
  br i1 %tobool47, label %if.then48, label %if.else52, !dbg !444

if.then48:                                        ; preds = %if.else45
  %call51 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %conv53, i32 %conv54, i32 %6) #13, !dbg !448
  br label %if.end209, !dbg !450

if.else52:                                        ; preds = %if.else45
  %idxprom56 = sext i32 %16 to i64, !dbg !446
  %arrayidx57 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom56, !dbg !446
  %17 = load i32* %arrayidx57, align 4, !dbg !446, !tbaa !371
  %call58 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %conv53, i32 %conv54, i32 %6, i32 %17) #13, !dbg !446
  br label %if.end209

if.else61:                                        ; preds = %if.else
  %castled = getelementptr inbounds %struct.move_s* %move, i64 0, i32 4, !dbg !451
  %18 = load i32* %castled, align 8, !dbg !451, !tbaa !371
  switch i32 %18, label %if.else74 [
    i32 0, label %if.else77
    i32 1, label %if.then72
    i32 3, label %if.then72
  ], !dbg !451

if.then72:                                        ; preds = %if.else61, %if.else61
  %19 = bitcast i8* %str to i32*, !dbg !452
  store i32 5188943, i32* %19, align 1, !dbg !452
  br label %if.end209, !dbg !455

if.else74:                                        ; preds = %if.else61
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %str, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !456
  br label %if.end209

if.else77:                                        ; preds = %if.else61
  call void @llvm.dbg.value(metadata !458, i64 0, metadata !59), !dbg !459
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !57), !dbg !461
  %arrayidx78 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !462
  call void @gen(%struct.move_s* %arrayidx78) #13, !dbg !462
  %20 = load i32* @numb_moves, align 4, !dbg !463, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !57), !dbg !463
  %call79 = call i32 @in_check() #13, !dbg !464
  call void @llvm.dbg.value(metadata !{i32 %call79}, i64 0, metadata !66), !dbg !464
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !56), !dbg !465
  %cmp80306 = icmp sgt i32 %20, 0, !dbg !465
  br i1 %cmp80306, label %for.body, label %for.end.thread, !dbg !465

for.end.thread:                                   ; preds = %for.inc, %if.else77
  %21 = load i32* %target, align 4, !dbg !467, !tbaa !371
  %idxprom120297 = sext i32 %21 to i64, !dbg !467
  %arrayidx121298 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom120297, !dbg !467
  %22 = load i32* %arrayidx121298, align 4, !dbg !467, !tbaa !371
  %cmp122299 = icmp eq i32 %22, 13, !dbg !467
  br label %if.else183, !dbg !469

for.body:                                         ; preds = %if.else77, %for.inc.for.body_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.else77 ]
  %i.0307 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.else77 ]
  %target84 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, i32 1, !dbg !470
  %23 = load i32* %target84, align 4, !dbg !470, !tbaa !371
  %24 = load i32* %target, align 4, !dbg !470, !tbaa !371
  %cmp86 = icmp eq i32 %23, %24, !dbg !470
  br i1 %cmp86, label %land.lhs.true88, label %for.inc, !dbg !470

land.lhs.true88:                                  ; preds = %for.body
  %from91 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, i32 0, !dbg !470
  %25 = load i32* %from91, align 8, !dbg !470, !tbaa !371
  %idxprom92 = sext i32 %25 to i64, !dbg !470
  %arrayidx93 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom92, !dbg !470
  %26 = load i32* %arrayidx93, align 4, !dbg !470, !tbaa !371
  %27 = load i32* %from, align 8, !dbg !470, !tbaa !371
  %idxprom95 = sext i32 %27 to i64, !dbg !470
  %arrayidx96 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom95, !dbg !470
  %28 = load i32* %arrayidx96, align 4, !dbg !470, !tbaa !371
  %cmp97 = icmp ne i32 %26, %28, !dbg !470
  %cmp104 = icmp eq i32 %25, %27, !dbg !470
  %or.cond = or i1 %cmp97, %cmp104, !dbg !470
  br i1 %or.cond, label %for.inc, label %if.then106, !dbg !470

if.then106:                                       ; preds = %land.lhs.true88
  %29 = trunc i64 %indvars.iv to i32, !dbg !472
  call void @make(%struct.move_s* %arrayidx78, i32 %29) #13, !dbg !472
  %call109 = call i32 @check_legal(%struct.move_s* %arrayidx78, i32 %29, i32 %call79) #13, !dbg !474
  %tobool110 = icmp eq i32 %call109, 0, !dbg !474
  call void @unmake(%struct.move_s* %arrayidx78, i32 %29) #13, !dbg !475
  br i1 %tobool110, label %for.inc, label %for.end, !dbg !474

for.inc:                                          ; preds = %land.lhs.true88, %if.then106, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !465
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !56), !dbg !465
  %30 = trunc i64 %indvars.iv.next to i32, !dbg !465
  %cmp80 = icmp slt i32 %30, %20, !dbg !465
  br i1 %cmp80, label %for.inc.for.body_crit_edge, label %for.end.thread, !dbg !465

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %inc = add nsw i32 %i.0307, 1, !dbg !465
  br label %for.body, !dbg !465

for.end:                                          ; preds = %if.then106
  %cmp116 = icmp eq i32 %i.0307, -1, !dbg !469
  %31 = load i32* %target, align 4, !dbg !467, !tbaa !371
  %idxprom120 = sext i32 %31 to i64, !dbg !467
  %arrayidx121 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom120, !dbg !467
  %32 = load i32* %arrayidx121, align 4, !dbg !467, !tbaa !371
  %cmp122 = icmp eq i32 %32, 13, !dbg !467
  br i1 %cmp116, label %if.else183, label %if.then118, !dbg !469

if.then118:                                       ; preds = %for.end
  %idxprom125 = sext i32 %i.0307 to i64, !dbg !477
  %from127 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom125, i32 0, !dbg !477
  %33 = load i32* %from127, align 8, !dbg !477, !tbaa !371
  %idxprom128 = sext i32 %33 to i64, !dbg !477
  %arrayidx129 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom128, !dbg !477
  %34 = load i32* %arrayidx129, align 4, !dbg !477, !tbaa !371
  %35 = load i32* %from, align 8, !dbg !477, !tbaa !371
  %idxprom131 = sext i32 %35 to i64, !dbg !477
  %arrayidx132 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom131, !dbg !477
  %36 = load i32* %arrayidx132, align 4, !dbg !477, !tbaa !371
  %cmp133 = icmp ne i32 %34, %36, !dbg !477
  %arrayidx138 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom131, !dbg !479
  %37 = load i32* %arrayidx138, align 4, !dbg !479, !tbaa !371
  %idxprom139 = sext i32 %37 to i64, !dbg !479
  %arrayidx140 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom139, !dbg !479
  %38 = load i32* %arrayidx140, align 4, !dbg !479, !tbaa !371
  br i1 %cmp122, label %if.then124, label %if.else153, !dbg !467

if.then124:                                       ; preds = %if.then118
  br i1 %cmp133, label %if.then135, label %if.else144, !dbg !477

if.then135:                                       ; preds = %if.then124
  %sext290 = shl i32 %sub, 24, !dbg !479
  %conv141 = ashr exact i32 %sext290, 24, !dbg !479
  %sext291 = shl i32 %sub10, 24, !dbg !479
  %conv142 = ashr exact i32 %sext291, 24, !dbg !479
  %call143 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i32 %38, i32 %conv141, i32 %conv142, i32 %6) #13, !dbg !479
  br label %if.end209, !dbg !479

if.else144:                                       ; preds = %if.then124
  %sext289 = shl i32 %sub10, 24, !dbg !480
  %conv150 = ashr exact i32 %sext289, 24, !dbg !480
  %call151 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 %38, i32 %5, i32 %conv150, i32 %6) #13, !dbg !480
  br label %if.end209

if.else153:                                       ; preds = %if.then118
  br i1 %cmp133, label %if.then164, label %if.else173, !dbg !481

if.then164:                                       ; preds = %if.else153
  %sext287 = shl i32 %sub, 24, !dbg !483
  %conv170 = ashr exact i32 %sext287, 24, !dbg !483
  %sext288 = shl i32 %sub10, 24, !dbg !483
  %conv171 = ashr exact i32 %sext288, 24, !dbg !483
  %call172 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 %38, i32 %conv170, i32 %conv171, i32 %6) #13, !dbg !483
  br label %if.end209, !dbg !483

if.else173:                                       ; preds = %if.else153
  %sext286 = shl i32 %sub10, 24, !dbg !484
  %conv179 = ashr exact i32 %sext286, 24, !dbg !484
  %call180 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i32 %38, i32 %5, i32 %conv179, i32 %6) #13, !dbg !484
  br label %if.end209

if.else183:                                       ; preds = %for.end, %for.end.thread
  %cmp122300 = phi i1 [ %cmp122299, %for.end.thread ], [ %cmp122, %for.end ]
  %39 = load i32* %from, align 8, !dbg !485, !tbaa !371
  %idxprom191 = sext i32 %39 to i64, !dbg !485
  %arrayidx192 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom191, !dbg !485
  %40 = load i32* %arrayidx192, align 4, !dbg !485, !tbaa !371
  %idxprom193 = sext i32 %40 to i64, !dbg !485
  %arrayidx194 = getelementptr inbounds [14 x i32]* @comp_to_san.type_to_char, i64 0, i64 %idxprom193, !dbg !485
  %41 = load i32* %arrayidx194, align 4, !dbg !485, !tbaa !371
  %sext = shl i32 %sub10, 24, !dbg !485
  %conv195 = ashr exact i32 %sext, 24, !dbg !485
  br i1 %cmp122300, label %if.then189, label %if.else197, !dbg !488

if.then189:                                       ; preds = %if.else183
  %call196 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32 %41, i32 %conv195, i32 %6) #13, !dbg !485
  br label %if.end209, !dbg !489

if.else197:                                       ; preds = %if.else183
  %call204 = call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %41, i32 %conv195, i32 %6) #13, !dbg !490
  br label %if.end209

if.end209:                                        ; preds = %if.then48, %if.else52, %if.then36, %if.else39, %if.then164, %if.else173, %if.then135, %if.else144, %if.else197, %if.then189, %if.then72, %if.else74, %if.then
  call void @make(%struct.move_s* %move, i32 0) #13, !dbg !492
  %call210 = call i32 @check_legal(%struct.move_s* %move, i32 0, i32 1) #13, !dbg !493
  %tobool211 = icmp eq i32 %call210, 0, !dbg !493
  br i1 %tobool211, label %if.then212, label %if.end214, !dbg !493

if.then212:                                       ; preds = %if.end209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %str, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i64 5, i32 1, i1 false), !dbg !494
  call void @unmake(%struct.move_s* %move, i32 0) #13, !dbg !496
  br label %cleanup, !dbg !497

if.end214:                                        ; preds = %if.end209
  %call215 = call i32 @in_check() #13, !dbg !498
  %tobool216 = icmp eq i32 %call215, 0, !dbg !498
  br i1 %tobool216, label %if.end241, label %if.then217, !dbg !498

if.then217:                                       ; preds = %if.end214
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !60), !dbg !500
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !58), !dbg !502
  %arrayidx218 = getelementptr inbounds [512 x %struct.move_s]* %evade_moves, i64 0, i64 0, !dbg !503
  call void @gen(%struct.move_s* %arrayidx218) #13, !dbg !503
  %42 = load i32* @numb_moves, align 4, !dbg !504, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !58), !dbg !504
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !56), !dbg !505
  %cmp220303 = icmp sgt i32 %42, 0, !dbg !505
  br i1 %cmp220303, label %for.body222, label %if.then236, !dbg !505

for.cond219:                                      ; preds = %for.body222
  %cmp220 = icmp slt i32 %inc232, %42, !dbg !505
  br i1 %cmp220, label %for.body222, label %if.then236, !dbg !505

for.body222:                                      ; preds = %if.then217, %for.cond219
  %i.1304 = phi i32 [ %inc232, %for.cond219 ], [ 0, %if.then217 ]
  call void @make(%struct.move_s* %arrayidx218, i32 %i.1304) #13, !dbg !507
  %call225 = call i32 @check_legal(%struct.move_s* %arrayidx218, i32 %i.1304, i32 1) #13, !dbg !509
  %tobool226 = icmp eq i32 %call225, 0, !dbg !509
  call void @unmake(%struct.move_s* %arrayidx218, i32 %i.1304) #13, !dbg !510
  %inc232 = add nsw i32 %i.1304, 1, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %inc232}, i64 0, metadata !56), !dbg !505
  br i1 %tobool226, label %for.cond219, label %if.else238, !dbg !509

if.then236:                                       ; preds = %for.cond219, %if.then217
  %strlen284301 = call i64 @strlen(i8* %str), !dbg !511
  %endptr285302 = getelementptr i8* %str, i64 %strlen284301, !dbg !511
  %43 = bitcast i8* %endptr285302 to i16*, !dbg !511
  store i16 35, i16* %43, align 1, !dbg !511
  br label %if.end241, !dbg !511

if.else238:                                       ; preds = %for.body222
  %strlen284 = call i64 @strlen(i8* %str), !dbg !511
  %endptr285 = getelementptr i8* %str, i64 %strlen284, !dbg !511
  %44 = bitcast i8* %endptr285 to i16*, !dbg !511
  store i16 43, i16* %44, align 1, !dbg !512
  br label %if.end241

if.end241:                                        ; preds = %if.end214, %if.then236, %if.else238
  call void @unmake(%struct.move_s* %move, i32 0) #13, !dbg !513
  br label %cleanup, !dbg !513

cleanup:                                          ; preds = %if.end241, %if.then212
  call void @llvm.lifetime.end(i64 12288, i8* %1) #2, !dbg !513
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2, !dbg !513
  ret void, !dbg !514
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #4

; Function Attrs: optsize
declare i32 @in_check() #4

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #4

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #4

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #4

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @comp_to_coord(%struct.move_s* byval nocapture align 8 %move, i8* nocapture %str) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !{%struct.move_s* %move}, metadata !69), !dbg !515
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !70), !dbg !515
  %promoted = getelementptr inbounds %struct.move_s* %move, i64 0, i32 3, !dbg !516
  %0 = load i32* %promoted, align 4, !dbg !516, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !71), !dbg !516
  %1 = bitcast %struct.move_s* %move to i64*, !dbg !517
  %2 = load i64* %1, align 8, !dbg !517
  %3 = trunc i64 %2 to i32, !dbg !517
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !72), !dbg !517
  %sext120 = shl i64 %2, 32, !dbg !518
  %idxprom = ashr exact i64 %sext120, 32, !dbg !518
  %arrayidx = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom, !dbg !518
  %4 = load i32* %arrayidx, align 4, !dbg !518, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !74), !dbg !518
  %idxprom3 = ashr i64 %2, 32, !dbg !519
  %arrayidx4 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom3, !dbg !519
  %5 = load i32* %arrayidx4, align 4, !dbg !519, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !75), !dbg !519
  tail call void @llvm.dbg.value(metadata !426, i64 0, metadata !76), !dbg !520
  %arrayidx6 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom, !dbg !521
  %6 = load i32* %arrayidx6, align 4, !dbg !521, !tbaa !371
  %sub = add nsw i32 %6, 96, !dbg !521
  %arrayidx8 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom3, !dbg !522
  %7 = load i32* %arrayidx8, align 4, !dbg !522, !tbaa !371
  %sub10 = add nsw i32 %7, 96, !dbg !522
  %cmp = icmp eq i32 %3, 0, !dbg !523
  br i1 %cmp, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %entry
  %idxprom13 = sext i32 %0 to i64, !dbg !524
  %arrayidx14 = getelementptr inbounds [14 x i32]* @comp_to_coord.type_to_char, i64 0, i64 %idxprom13, !dbg !524
  %8 = load i32* %arrayidx14, align 4, !dbg !524, !tbaa !371
  %sext119 = shl i32 %sub10, 24, !dbg !524
  %conv15 = ashr exact i32 %sext119, 24, !dbg !524
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %conv15, i32 %5) #13, !dbg !524
  br label %if.end67, !dbg !526

if.else:                                          ; preds = %entry
  %tobool = icmp eq i32 %0, 0, !dbg !527
  br i1 %tobool, label %if.then16, label %if.else20, !dbg !527

if.then16:                                        ; preds = %if.else
  %sext = shl i32 %sub, 24, !dbg !529
  %conv17 = ashr exact i32 %sext, 24, !dbg !529
  %sext107 = shl i32 %sub10, 24, !dbg !529
  %conv18 = ashr exact i32 %sext107, 24, !dbg !529
  %call19 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 %conv17, i32 %4, i32 %conv18, i32 %5) #13, !dbg !529
  br label %if.end67, !dbg !531

if.else20:                                        ; preds = %if.else
  %.off = add i32 %0, -3, !dbg !532
  %9 = icmp ult i32 %.off, 2, !dbg !532
  br i1 %9, label %if.then25, label %if.else29, !dbg !532

if.then25:                                        ; preds = %if.else20
  %sext117 = shl i32 %sub, 24, !dbg !534
  %conv26 = ashr exact i32 %sext117, 24, !dbg !534
  %sext118 = shl i32 %sub10, 24, !dbg !534
  %conv27 = ashr exact i32 %sext118, 24, !dbg !534
  %call28 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i32 %conv26, i32 %4, i32 %conv27, i32 %5) #13, !dbg !534
  br label %if.end67, !dbg !536

if.else29:                                        ; preds = %if.else20
  %.off108 = add i32 %0, -7, !dbg !537
  %10 = icmp ult i32 %.off108, 2, !dbg !537
  br i1 %10, label %if.then35, label %if.else39, !dbg !537

if.then35:                                        ; preds = %if.else29
  %sext115 = shl i32 %sub, 24, !dbg !538
  %conv36 = ashr exact i32 %sext115, 24, !dbg !538
  %sext116 = shl i32 %sub10, 24, !dbg !538
  %conv37 = ashr exact i32 %sext116, 24, !dbg !538
  %call38 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32 %conv36, i32 %4, i32 %conv37, i32 %5) #13, !dbg !538
  br label %if.end67, !dbg !540

if.else39:                                        ; preds = %if.else29
  %.off109 = add i32 %0, -11, !dbg !541
  %11 = icmp ult i32 %.off109, 2, !dbg !541
  br i1 %11, label %if.then45, label %if.else49, !dbg !541

if.then45:                                        ; preds = %if.else39
  %sext113 = shl i32 %sub, 24, !dbg !542
  %conv46 = ashr exact i32 %sext113, 24, !dbg !542
  %sext114 = shl i32 %sub10, 24, !dbg !542
  %conv47 = ashr exact i32 %sext114, 24, !dbg !542
  %call48 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i32 %conv46, i32 %4, i32 %conv47, i32 %5) #13, !dbg !542
  br label %if.end67, !dbg !544

if.else49:                                        ; preds = %if.else39
  %.off110 = add i32 %0, -5, !dbg !545
  %12 = icmp ult i32 %.off110, 2, !dbg !545
  %sext111 = shl i32 %sub, 24, !dbg !546
  %conv56 = ashr exact i32 %sext111, 24, !dbg !546
  %sext112 = shl i32 %sub10, 24, !dbg !546
  %conv57 = ashr exact i32 %sext112, 24, !dbg !546
  br i1 %12, label %if.then55, label %if.else59, !dbg !545

if.then55:                                        ; preds = %if.else49
  %call58 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i32 %conv56, i32 %4, i32 %conv57, i32 %5) #13, !dbg !546
  br label %if.end67, !dbg !548

if.else59:                                        ; preds = %if.else49
  %call62 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %str, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i32 %conv56, i32 %4, i32 %conv57, i32 %5) #13, !dbg !549
  br label %if.end67

if.end67:                                         ; preds = %if.then16, %if.then35, %if.then55, %if.else59, %if.then45, %if.then25, %if.then
  ret void, !dbg !551
}

; Function Attrs: nounwind optsize uwtable
define void @display_board(%struct._IO_FILE* nocapture %stream, i32 %color) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %stream}, i64 0, metadata !138), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !139), !dbg !552
  tail call void @llvm.dbg.value(metadata !553, i64 0, metadata !140), !dbg !554
  tail call void @llvm.dbg.declare(metadata !555, metadata !143), !dbg !556
  %rem71 = and i32 %color, 1, !dbg !557
  %tobool = icmp eq i32 %rem71, 0, !dbg !557
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0)) #13, !dbg !558
  tail call void @llvm.dbg.value(metadata !499, i64 0, metadata !147), !dbg !560
  br i1 %tobool, label %for.body21, label %for.body, !dbg !557

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.end ], [ 1, %entry ]
  %0 = sub nsw i64 9, %indvars.iv88, !dbg !562
  %1 = trunc i64 %0 to i32, !dbg !562
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i32 %1) #13, !dbg !562
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !148), !dbg !564
  %2 = mul i64 %indvars.iv88, -12, !dbg !566
  %3 = add i64 %2, 120, !dbg !566
  br label %for.body4, !dbg !564

for.body4:                                        ; preds = %for.inc, %for.body
  %indvars.iv83 = phi i64 [ 0, %for.body ], [ %indvars.iv.next84, %for.inc ]
  %4 = add nsw i64 %3, %indvars.iv83, !dbg !566
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %4, !dbg !568
  %5 = load i32* %arrayidx, align 4, !dbg !568, !tbaa !371
  %cmp6 = icmp eq i32 %5, 0, !dbg !568
  br i1 %cmp6, label %for.inc, label %if.then7, !dbg !568

if.then7:                                         ; preds = %for.body4
  %idxprom10 = sext i32 %5 to i64, !dbg !569
  %arrayidx11 = getelementptr inbounds [14 x i8*]* @display_board.piece_rep, i64 0, i64 %idxprom10, !dbg !569
  %6 = load i8** %arrayidx11, align 8, !dbg !569, !tbaa !570
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* %6) #13, !dbg !569
  br label %for.inc, !dbg !569

for.inc:                                          ; preds = %for.body4, %if.then7
  %indvars.iv.next84 = add i64 %indvars.iv83, 1, !dbg !564
  %lftr.wideiv86 = trunc i64 %indvars.iv.next84 to i32, !dbg !564
  %exitcond87 = icmp eq i32 %lftr.wideiv86, 12, !dbg !564
  br i1 %exitcond87, label %for.end, label %for.body4, !dbg !564

for.end:                                          ; preds = %for.inc
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([7 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0)) #13, !dbg !571
  %indvars.iv.next89 = add i64 %indvars.iv88, 1, !dbg !560
  %lftr.wideiv92 = trunc i64 %indvars.iv.next89 to i32, !dbg !560
  %exitcond93 = icmp eq i32 %lftr.wideiv92, 9, !dbg !560
  br i1 %exitcond93, label %for.end16, label %for.body, !dbg !560

for.end16:                                        ; preds = %for.end
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str39, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %stream), !dbg !572
  br label %if.end47, !dbg !573

for.body21:                                       ; preds = %entry, %for.end41
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.end41 ], [ 1, %entry ]
  %8 = trunc i64 %indvars.iv77 to i32, !dbg !574
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i32 %8) #13, !dbg !574
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !148), !dbg !578
  %9 = mul nsw i64 %indvars.iv77, 12, !dbg !580
  %10 = add nsw i64 %9, 24, !dbg !580
  br label %for.body25, !dbg !578

for.body25:                                       ; preds = %for.inc39, %for.body21
  %indvars.iv = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next, %for.inc39 ]
  %11 = sub i64 %10, %indvars.iv, !dbg !580
  %arrayidx30 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %11, !dbg !582
  %12 = load i32* %arrayidx30, align 4, !dbg !582, !tbaa !371
  %cmp31 = icmp eq i32 %12, 0, !dbg !582
  br i1 %cmp31, label %for.inc39, label %if.then32, !dbg !582

if.then32:                                        ; preds = %for.body25
  %idxprom35 = sext i32 %12 to i64, !dbg !583
  %arrayidx36 = getelementptr inbounds [14 x i8*]* @display_board.piece_rep, i64 0, i64 %idxprom35, !dbg !583
  %13 = load i8** %arrayidx36, align 8, !dbg !583, !tbaa !570
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* %13) #13, !dbg !583
  br label %for.inc39, !dbg !583

for.inc39:                                        ; preds = %for.body25, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !578
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !578
  %exitcond = icmp eq i32 %lftr.wideiv, 12, !dbg !578
  br i1 %exitcond, label %for.end41, label %for.body25, !dbg !578

for.end41:                                        ; preds = %for.inc39
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([7 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0)) #13, !dbg !584
  %indvars.iv.next78 = add i64 %indvars.iv77, 1, !dbg !585
  %lftr.wideiv81 = trunc i64 %indvars.iv.next78 to i32, !dbg !585
  %exitcond82 = icmp eq i32 %lftr.wideiv81, 9, !dbg !585
  br i1 %exitcond82, label %for.end45, label %for.body21, !dbg !585

for.end45:                                        ; preds = %for.end41
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str40, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %stream), !dbg !586
  br label %if.end47

if.end47:                                         ; preds = %for.end45, %for.end16
  ret void, !dbg !587
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @init_game() #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !588, metadata !154), !dbg !589
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* bitcast ([144 x i32]* @init_game.init_board to i8*), i64 576, i32 16, i1 false), !dbg !590
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @moved to i8*), i8 0, i64 576, i32 16, i1 false), !dbg !591
  store i32 1, i32* @white_to_move, align 4, !dbg !592, !tbaa !371
  store i32 0, i32* @ep_square, align 4, !dbg !593, !tbaa !371
  store i32 30, i32* @wking_loc, align 4, !dbg !594, !tbaa !371
  store i32 114, i32* @bking_loc, align 4, !dbg !595, !tbaa !371
  store i32 0, i32* @white_castled, align 4, !dbg !596, !tbaa !371
  store i32 0, i32* @black_castled, align 4, !dbg !597, !tbaa !371
  store i32 0, i32* @result, align 4, !dbg !598, !tbaa !371
  store i32 0, i32* @captures, align 4, !dbg !599, !tbaa !372
  store i32 32, i32* @piece_count, align 4, !dbg !600, !tbaa !371
  store i32 0, i32* @Material, align 4, !dbg !601, !tbaa !371
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false), !dbg !602
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false), !dbg !603
  store i32 0, i32* @white_hand_eval, align 4, !dbg !604, !tbaa !371
  store i32 0, i32* @black_hand_eval, align 4, !dbg !605, !tbaa !371
  tail call void @reset_piece_square() #14, !dbg !606
  store i32 0, i32* @bookidx, align 4, !dbg !607, !tbaa !371
  store i32 0, i32* @book_ply, align 4, !dbg !608, !tbaa !371
  store i32 0, i32* @fifty, align 4, !dbg !609, !tbaa !371
  store i32 0, i32* @ply, align 4, !dbg !610, !tbaa !371
  store i32 0, i32* @phase, align 4, !dbg !611, !tbaa !371
  ret void, !dbg !612
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @reset_piece_square() #0 {
entry:
  %promoted_board = alloca [144 x i32], align 16
  %0 = bitcast [144 x i32]* %promoted_board to i8*, !dbg !613
  call void @llvm.lifetime.start(i64 576, i8* %0) #2, !dbg !613
  call void @llvm.dbg.declare(metadata !{[144 x i32]* %promoted_board}, metadata !275), !dbg !613
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 576, i32 16, i1 false), !dbg !614
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !274), !dbg !615
  %1 = load i32* @piece_count, align 4, !dbg !615, !tbaa !371
  %cmp50 = icmp slt i32 %1, 1, !dbg !615
  br i1 %cmp50, label %for.end, label %for.body, !dbg !615

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %indvars.iv52, !dbg !617
  %2 = load i32* %arrayidx, align 4, !dbg !617, !tbaa !371
  %tobool = icmp eq i32 %2, 0, !dbg !617
  br i1 %tobool, label %for.inc, label %if.then, !dbg !617

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv52, !dbg !618
  %3 = load i32* %arrayidx2, align 4, !dbg !618, !tbaa !371
  %idxprom3 = sext i32 %3 to i64, !dbg !618
  %arrayidx4 = getelementptr inbounds [144 x i32]* %promoted_board, i64 0, i64 %idxprom3, !dbg !618
  store i32 1, i32* %arrayidx4, align 4, !dbg !618, !tbaa !371
  br label %for.inc, !dbg !618

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !615
  %4 = trunc i64 %indvars.iv52 to i32, !dbg !615
  %cmp = icmp slt i32 %4, %1, !dbg !615
  br i1 %cmp, label %for.body, label %for.end, !dbg !615

for.end:                                          ; preds = %for.inc, %entry
  store i32 0, i32* @Material, align 4, !dbg !619, !tbaa !371
  store i32 0, i32* @piece_count, align 4, !dbg !620, !tbaa !371
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @pieces to i8*), i8 0, i64 248, i32 16, i1 false), !dbg !621
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false), !dbg !622
  store i32 0, i32* getelementptr inbounds ([62 x i32]* @pieces, i64 0, i64 0), align 4, !dbg !623, !tbaa !371
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !274), !dbg !625
  br label %for.body7, !dbg !625

for.body7:                                        ; preds = %for.inc34, %for.end
  %5 = phi i32 [ 0, %for.end ], [ %11, %for.inc34 ]
  %6 = phi i32 [ 0, %for.end ], [ %12, %for.inc34 ]
  %indvars.iv = phi i64 [ 26, %for.end ], [ %indvars.iv.next, %for.inc34 ]
  %arrayidx9 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv, !dbg !627
  %7 = load i32* %arrayidx9, align 4, !dbg !627, !tbaa !371
  %tobool10 = icmp ne i32 %7, 0, !dbg !627
  %cmp13 = icmp slt i32 %7, 13, !dbg !627
  %or.cond = and i1 %tobool10, %cmp13, !dbg !627
  br i1 %or.cond, label %if.then14, label %if.else, !dbg !627

if.then14:                                        ; preds = %for.body7
  %idxprom17 = sext i32 %7 to i64, !dbg !628
  %arrayidx18 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom17, !dbg !628
  %8 = load i32* %arrayidx18, align 4, !dbg !628, !tbaa !371
  %add = add nsw i32 %6, %8, !dbg !628
  store i32 %add, i32* @Material, align 4, !dbg !628, !tbaa !371
  %add19 = add nsw i32 %5, 1, !dbg !630
  store i32 %add19, i32* @piece_count, align 4, !dbg !630, !tbaa !371
  %idxprom20 = sext i32 %add19 to i64, !dbg !631
  %arrayidx21 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom20, !dbg !631
  %9 = trunc i64 %indvars.iv to i32, !dbg !631
  store i32 %9, i32* %arrayidx21, align 4, !dbg !631, !tbaa !371
  %arrayidx23 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv, !dbg !632
  store i32 %add19, i32* %arrayidx23, align 4, !dbg !632, !tbaa !371
  %arrayidx25 = getelementptr inbounds [144 x i32]* %promoted_board, i64 0, i64 %indvars.iv, !dbg !633
  %10 = load i32* %arrayidx25, align 4, !dbg !633, !tbaa !371
  %tobool26 = icmp eq i32 %10, 0, !dbg !633
  br i1 %tobool26, label %for.inc34, label %if.then27, !dbg !633

if.then27:                                        ; preds = %if.then14
  %arrayidx29 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom20, !dbg !634
  store i32 1, i32* %arrayidx29, align 4, !dbg !634, !tbaa !371
  br label %for.inc34, !dbg !634

if.else:                                          ; preds = %for.body7
  %arrayidx32 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv, !dbg !635
  store i32 0, i32* %arrayidx32, align 4, !dbg !635, !tbaa !371
  br label %for.inc34

for.inc34:                                        ; preds = %if.then14, %if.else, %if.then27
  %11 = phi i32 [ %add19, %if.then14 ], [ %5, %if.else ], [ %add19, %if.then27 ]
  %12 = phi i32 [ %add, %if.then14 ], [ %6, %if.else ], [ %add, %if.then27 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !625
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !625
  %exitcond = icmp eq i32 %lftr.wideiv, 118, !dbg !625
  br i1 %exitcond, label %for.end36, label %for.body7, !dbg !625

for.end36:                                        ; preds = %for.inc34
  call void @llvm.lifetime.end(i64 576, i8* %0) #2, !dbg !636
  ret void, !dbg !636
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_move(i8* nocapture %str) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !163), !dbg !637
  %0 = load i8* %str, align 1, !dbg !638, !tbaa !372
  %idxprom = sext i8 %0 to i64, !dbg !638
  %call = tail call i16** @__ctype_b_loc() #15, !dbg !638
  %1 = load i16** %call, align 8, !dbg !638, !tbaa !570
  %arrayidx1 = getelementptr inbounds i16* %1, i64 %idxprom, !dbg !638
  %2 = load i16* %arrayidx1, align 2, !dbg !638, !tbaa !639
  %and = and i16 %2, 1024, !dbg !638
  %tobool = icmp eq i16 %and, 0, !dbg !638
  br i1 %tobool, label %if.else60, label %land.lhs.true, !dbg !638

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8* %str, i64 1, !dbg !638
  %3 = load i8* %arrayidx3, align 1, !dbg !638, !tbaa !372
  %idxprom5 = sext i8 %3 to i64, !dbg !638
  %arrayidx7 = getelementptr inbounds i16* %1, i64 %idxprom5, !dbg !638
  %4 = load i16* %arrayidx7, align 2, !dbg !638, !tbaa !639
  %and9 = and i16 %4, 2048, !dbg !638
  %tobool10 = icmp eq i16 %and9, 0, !dbg !638
  br i1 %tobool10, label %land.lhs.true37, label %land.lhs.true11, !dbg !638

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds i8* %str, i64 2, !dbg !638
  %5 = load i8* %arrayidx12, align 1, !dbg !638, !tbaa !372
  %idxprom14 = sext i8 %5 to i64, !dbg !638
  %arrayidx16 = getelementptr inbounds i16* %1, i64 %idxprom14, !dbg !638
  %6 = load i16* %arrayidx16, align 2, !dbg !638, !tbaa !639
  %and18 = and i16 %6, 1024, !dbg !638
  %tobool19 = icmp eq i16 %and18, 0, !dbg !638
  br i1 %tobool19, label %if.else, label %land.lhs.true20, !dbg !638

land.lhs.true20:                                  ; preds = %land.lhs.true11
  %arrayidx21 = getelementptr inbounds i8* %str, i64 3, !dbg !638
  %7 = load i8* %arrayidx21, align 1, !dbg !638, !tbaa !372
  %idxprom23 = sext i8 %7 to i64, !dbg !638
  %arrayidx25 = getelementptr inbounds i16* %1, i64 %idxprom23, !dbg !640
  %8 = load i16* %arrayidx25, align 2, !dbg !640, !tbaa !639
  %and27 = and i16 %8, 2048, !dbg !640
  %tobool28 = icmp eq i16 %and27, 0, !dbg !640
  br i1 %tobool28, label %if.else, label %return, !dbg !640

if.else:                                          ; preds = %land.lhs.true20, %land.lhs.true11
  br i1 %tobool, label %if.else60, label %land.lhs.true37, !dbg !641

land.lhs.true37:                                  ; preds = %land.lhs.true, %if.else
  %arrayidx38 = getelementptr inbounds i8* %str, i64 1, !dbg !641
  %9 = load i8* %arrayidx38, align 1, !dbg !641, !tbaa !372
  %cmp = icmp eq i8 %9, 64, !dbg !641
  br i1 %cmp, label %land.lhs.true41, label %if.else60, !dbg !641

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %arrayidx42 = getelementptr inbounds i8* %str, i64 2, !dbg !641
  %10 = load i8* %arrayidx42, align 1, !dbg !641, !tbaa !372
  %idxprom44 = sext i8 %10 to i64, !dbg !641
  %arrayidx46 = getelementptr inbounds i16* %1, i64 %idxprom44, !dbg !641
  %11 = load i16* %arrayidx46, align 2, !dbg !641, !tbaa !639
  %and48 = and i16 %11, 1024, !dbg !641
  %tobool49 = icmp eq i16 %and48, 0, !dbg !641
  br i1 %tobool49, label %if.else60, label %land.lhs.true50, !dbg !641

land.lhs.true50:                                  ; preds = %land.lhs.true41
  %arrayidx51 = getelementptr inbounds i8* %str, i64 3, !dbg !641
  %12 = load i8* %arrayidx51, align 1, !dbg !641, !tbaa !372
  %idxprom53 = sext i8 %12 to i64, !dbg !641
  %arrayidx55 = getelementptr inbounds i16* %1, i64 %idxprom53, !dbg !641
  %13 = load i16* %arrayidx55, align 2, !dbg !641, !tbaa !639
  %and57 = and i16 %13, 2048, !dbg !641
  %tobool58 = icmp eq i16 %and57, 0, !dbg !641
  br i1 %tobool58, label %if.else60, label %return, !dbg !641

if.else60:                                        ; preds = %entry, %land.lhs.true50, %land.lhs.true41, %if.else, %land.lhs.true37
  br label %return, !dbg !642

return:                                           ; preds = %land.lhs.true50, %land.lhs.true20, %if.else60
  %retval.0 = phi i32 [ 0, %if.else60 ], [ 1, %land.lhs.true20 ], [ 1, %land.lhs.true50 ]
  ret i32 %retval.0, !dbg !644
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: noreturn nounwind optsize uwtable
define void @perft_debug() #7 {
entry:
  %input = alloca [256 x i8], align 16
  %move = alloca %struct.move_s, align 4
  %0 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0, !dbg !645
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !645
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %input}, metadata !166), !dbg !645
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %move}, metadata !171), !dbg !646
  call void @init_game() #14, !dbg !647
  br label %while.body, !dbg !648

while.body:                                       ; preds = %entry, %if.end46
  %puts = call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str, i64 0, i64 0)), !dbg !649
  %1 = load %struct._IO_FILE** @stdin, align 8, !dbg !650, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %1) #14, !dbg !650
  %call2 = call i32 @atoi(i8* %0) #16, !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !172), !dbg !651
  store i32 0, i32* @raw_nodes, align 4, !dbg !652, !tbaa !371
  call void @perft(i32 %call2) #13, !dbg !653
  %2 = load i32* @raw_nodes, align 4, !dbg !654, !tbaa !371
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str42, i64 0, i64 0), i32 %call2, i32 %2) #13, !dbg !654
  %3 = load %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !570
  call void @display_board(%struct._IO_FILE* %3, i32 1) #14, !dbg !655
  %puts55 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str74, i64 0, i64 0)), !dbg !656
  %4 = load %struct._IO_FILE** @stdin, align 8, !dbg !657, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %4) #14, !dbg !657
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !170), !dbg !658
  %5 = load i8* %0, align 16, !dbg !658, !tbaa !372
  %tobool57 = icmp eq i8 %5, 0, !dbg !658
  br i1 %tobool57, label %for.end, label %for.body.lr.ph, !dbg !658

for.body.lr.ph:                                   ; preds = %while.body
  %call7 = call i32** @__ctype_tolower_loc() #15, !dbg !659
  br label %for.body, !dbg !658

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %6 = phi i8 [ %5, %for.body.lr.ph ], [ %9, %for.body ]
  %p.058 = phi i8* [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %idxprom = sext i8 %6 to i64, !dbg !659
  %7 = load i32** %call7, align 8, !dbg !659, !tbaa !570
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom, !dbg !659
  %8 = load i32* %arrayidx, align 4, !dbg !659, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !173), !dbg !659
  %conv8 = trunc i32 %8 to i8, !dbg !659
  store i8 %conv8, i8* %p.058, align 1, !dbg !659, !tbaa !372
  %incdec.ptr = getelementptr inbounds i8* %p.058, i64 1, !dbg !658
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !170), !dbg !658
  %9 = load i8* %incdec.ptr, align 1, !dbg !658, !tbaa !372
  %tobool = icmp eq i8 %9, 0, !dbg !658
  br i1 %tobool, label %for.end, label %for.body, !dbg !658

for.end:                                          ; preds = %for.body, %while.body
  %call10 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0)) #16, !dbg !660
  %tobool11 = icmp eq i32 %call10, 0, !dbg !660
  br i1 %tobool11, label %if.then, label %lor.lhs.false, !dbg !660

lor.lhs.false:                                    ; preds = %for.end
  %call13 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #16, !dbg !660
  %tobool14 = icmp eq i32 %call13, 0, !dbg !660
  br i1 %tobool14, label %if.then, label %if.end, !dbg !660

if.then:                                          ; preds = %lor.lhs.false, %for.end
  call void @exit(i32 0) #17, !dbg !661
  unreachable, !dbg !661

if.end:                                           ; preds = %lor.lhs.false
  %call16 = call i32 @verify_coord(i8* %0, %struct.move_s* %move) #14, !dbg !663
  %tobool17 = icmp eq i32 %call16, 0, !dbg !663
  br i1 %tobool17, label %do.body, label %if.end46, !dbg !663

do.body:                                          ; preds = %if.end, %do.cond
  %puts56 = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str75, i64 0, i64 0)), !dbg !664
  %10 = load %struct._IO_FILE** @stdin, align 8, !dbg !665, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %10) #14, !dbg !665
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !170), !dbg !666
  %11 = load i8* %0, align 16, !dbg !666, !tbaa !372
  %tobool2359 = icmp eq i8 %11, 0, !dbg !666
  br i1 %tobool2359, label %for.end33, label %for.body24.lr.ph, !dbg !666

for.body24.lr.ph:                                 ; preds = %do.body
  %call28 = call i32** @__ctype_tolower_loc() #15, !dbg !667
  br label %for.body24, !dbg !666

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %12 = phi i8 [ %11, %for.body24.lr.ph ], [ %15, %for.body24 ]
  %p.160 = phi i8* [ %0, %for.body24.lr.ph ], [ %incdec.ptr32, %for.body24 ]
  %idxprom27 = sext i8 %12 to i64, !dbg !667
  %13 = load i32** %call28, align 8, !dbg !667, !tbaa !570
  %arrayidx29 = getelementptr inbounds i32* %13, i64 %idxprom27, !dbg !667
  %14 = load i32* %arrayidx29, align 4, !dbg !667, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !177), !dbg !667
  %conv30 = trunc i32 %14 to i8, !dbg !667
  store i8 %conv30, i8* %p.160, align 1, !dbg !667, !tbaa !372
  %incdec.ptr32 = getelementptr inbounds i8* %p.160, i64 1, !dbg !666
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr32}, i64 0, metadata !170), !dbg !666
  %15 = load i8* %incdec.ptr32, align 1, !dbg !666, !tbaa !372
  %tobool23 = icmp eq i8 %15, 0, !dbg !666
  br i1 %tobool23, label %for.end33, label %for.body24, !dbg !666

for.end33:                                        ; preds = %for.body24, %do.body
  %call35 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0)) #16, !dbg !668
  %tobool36 = icmp eq i32 %call35, 0, !dbg !668
  br i1 %tobool36, label %if.then41, label %lor.lhs.false37, !dbg !668

lor.lhs.false37:                                  ; preds = %for.end33
  %call39 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #16, !dbg !668
  %tobool40 = icmp eq i32 %call39, 0, !dbg !668
  br i1 %tobool40, label %if.then41, label %do.cond, !dbg !668

if.then41:                                        ; preds = %lor.lhs.false37, %for.end33
  call void @exit(i32 0) #17, !dbg !669
  unreachable, !dbg !669

do.cond:                                          ; preds = %lor.lhs.false37
  %call44 = call i32 @verify_coord(i8* %0, %struct.move_s* %move) #14, !dbg !671
  %lnot = icmp eq i32 %call44, 0, !dbg !671
  br i1 %lnot, label %do.body, label %if.end46, !dbg !671

if.end46:                                         ; preds = %do.cond, %if.end
  call void @make(%struct.move_s* %move, i32 0) #13, !dbg !672
  br label %while.body, !dbg !673
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @rinput(i8* nocapture %str, i32 %n, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !280), !dbg !674
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !281), !dbg !674
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %stream}, i64 0, metadata !282), !dbg !674
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !284), !dbg !675
  %sub = add nsw i32 %n, -1, !dbg !676
  br label %while.cond.outer, !dbg !678

while.cond.outer:                                 ; preds = %if.then, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then ], [ 0, %entry ]
  %i.0.ph = phi i32 [ %inc, %if.then ], [ 0, %entry ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !676
  %cmp2 = icmp slt i32 %0, %sub, !dbg !676
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call = tail call i32 @_IO_getc(%struct._IO_FILE* %stream) #13, !dbg !678
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !283), !dbg !678
  switch i32 %call, label %while.body [
    i32 -1, label %while.end
    i32 10, label %while.end
  ]

while.body:                                       ; preds = %while.cond
  br i1 %cmp2, label %if.then, label %while.cond, !dbg !676

if.then:                                          ; preds = %while.body
  %conv = trunc i32 %call to i8, !dbg !679
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !681
  %inc = add nsw i32 %i.0.ph, 1, !dbg !679
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !284), !dbg !679
  %arrayidx = getelementptr inbounds i8* %str, i64 %indvars.iv, !dbg !679
  store i8 %conv, i8* %arrayidx, align 1, !dbg !679, !tbaa !372
  br label %while.cond.outer, !dbg !681

while.end:                                        ; preds = %while.cond, %while.cond
  %idxprom3 = sext i32 %i.0.ph to i64, !dbg !682
  %arrayidx4 = getelementptr inbounds i8* %str, i64 %idxprom3, !dbg !682
  store i8 0, i8* %arrayidx4, align 1, !dbg !682, !tbaa !372
  ret void, !dbg !683
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #8

; Function Attrs: optsize
declare void @perft(i32) #4

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #9

; Function Attrs: nounwind optsize uwtable
define i32 @verify_coord(i8* nocapture %input, %struct.move_s* nocapture %move) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %comp_move = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !304), !dbg !684
  call void @llvm.dbg.value(metadata !{%struct.move_s* %move}, i64 0, metadata !305), !dbg !684
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !685
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2, !dbg !685
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !306), !dbg !685
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %comp_move}, metadata !309), !dbg !686
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !313), !dbg !687
  %1 = load i32* @Variant, align 4, !dbg !688, !tbaa !371
  %cmp = icmp eq i32 %1, 4, !dbg !688
  br i1 %cmp, label %if.then, label %if.else, !dbg !688

if.then:                                          ; preds = %entry
  store i32 1, i32* @captures, align 4, !dbg !689, !tbaa !372
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !307), !dbg !691
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !692
  call void @gen(%struct.move_s* %arrayidx) #13, !dbg !692
  %2 = load i32* @numb_moves, align 4, !dbg !693, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !307), !dbg !693
  store i32 0, i32* @captures, align 4, !dbg !694, !tbaa !372
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !314), !dbg !695
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !308), !dbg !696
  %cmp151 = icmp sgt i32 %2, 0, !dbg !696
  br i1 %cmp151, label %for.body, label %if.then8.critedge, !dbg !696

for.cond:                                         ; preds = %for.body
  %cmp1 = icmp slt i32 %inc, %2, !dbg !696
  br i1 %cmp1, label %for.body, label %if.then8.critedge, !dbg !696

for.body:                                         ; preds = %if.then, %for.cond
  %i.052 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.052) #13, !dbg !698
  %call = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.052, i32 1) #13, !dbg !700
  %tobool = icmp eq i32 %call, 0, !dbg !700
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.052) #13, !dbg !701
  %inc = add nsw i32 %i.052, 1, !dbg !696
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !308), !dbg !696
  br i1 %tobool, label %for.cond, label %if.end12, !dbg !700

if.then8.critedge:                                ; preds = %for.cond, %if.then
  store i32 0, i32* @captures, align 4, !dbg !702, !tbaa !372
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !307), !dbg !704
  call void @gen(%struct.move_s* %arrayidx) #13, !dbg !705
  %3 = load i32* @numb_moves, align 4, !dbg !706, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !307), !dbg !706
  br label %if.end12, !dbg !707

if.else:                                          ; preds = %entry
  %arrayidx11 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !708
  call void @gen(%struct.move_s* %arrayidx11) #13, !dbg !708
  %4 = load i32* @numb_moves, align 4, !dbg !710, !tbaa !371
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !307), !dbg !710
  br label %if.end12

if.end12:                                         ; preds = %for.body, %if.then8.critedge, %if.else
  %num_moves.0 = phi i32 [ %3, %if.then8.critedge ], [ %4, %if.else ], [ %2, %for.body ]
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !308), !dbg !711
  %cmp1447 = icmp sgt i32 %num_moves.0, 0, !dbg !711
  br i1 %cmp1447, label %for.body15.lr.ph, label %for.end33, !dbg !711

for.body15.lr.ph:                                 ; preds = %if.end12
  %arraydecay = getelementptr inbounds [6 x i8]* %comp_move, i64 0, i64 0, !dbg !713
  %arrayidx21 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !715
  %5 = bitcast %struct.move_s* %move to i8*, !dbg !717
  br label %for.body15, !dbg !711

for.body15:                                       ; preds = %for.inc31, %for.body15.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next, %for.inc31 ]
  %legal.050 = phi i32 [ 0, %for.body15.lr.ph ], [ %legal.2, %for.inc31 ]
  %arrayidx16 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, !dbg !713
  call void @comp_to_coord(%struct.move_s* byval align 8 %arrayidx16, i8* %arraydecay) #14, !dbg !713
  %call18 = call i32 @strcmp(i8* %input, i8* %arraydecay) #16, !dbg !719
  %tobool19 = icmp eq i32 %call18, 0, !dbg !719
  br i1 %tobool19, label %if.then20, label %for.inc31, !dbg !719

if.then20:                                        ; preds = %for.body15
  %6 = trunc i64 %indvars.iv to i32, !dbg !715
  call void @make(%struct.move_s* %arrayidx21, i32 %6) #13, !dbg !715
  %call23 = call i32 @check_legal(%struct.move_s* %arrayidx21, i32 %6, i32 1) #13, !dbg !720
  %tobool24 = icmp eq i32 %call23, 0, !dbg !720
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !720

if.then25:                                        ; preds = %if.then20
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !313), !dbg !721
  %7 = bitcast %struct.move_s* %arrayidx16 to i8*, !dbg !717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 24, i32 4, i1 false), !dbg !717, !tbaa.struct !722
  br label %if.end28, !dbg !723

if.end28:                                         ; preds = %if.then20, %if.then25
  %legal.1 = phi i32 [ 1, %if.then25 ], [ %legal.050, %if.then20 ]
  call void @unmake(%struct.move_s* %arrayidx21, i32 %6) #13, !dbg !724
  br label %for.inc31, !dbg !725

for.inc31:                                        ; preds = %for.body15, %if.end28
  %legal.2 = phi i32 [ %legal.050, %for.body15 ], [ %legal.1, %if.end28 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !711
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !711
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves.0, !dbg !711
  br i1 %exitcond, label %for.end33, label %for.body15, !dbg !711

for.end33:                                        ; preds = %for.inc31, %if.end12
  %legal.0.lcssa = phi i32 [ 0, %if.end12 ], [ %legal.2, %for.inc31 ]
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2, !dbg !726
  ret i32 %legal.0.lcssa, !dbg !726
}

; Function Attrs: nounwind optsize uwtable
define void @hash_extract_pv(i32 %level, i8* %str) #0 {
entry:
  %xdummy = alloca i32, align 4
  %bm = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %output = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !186), !dbg !727
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !187), !dbg !727
  call void @llvm.dbg.declare(metadata !{i32* %xdummy}, metadata !188), !dbg !728
  call void @llvm.dbg.declare(metadata !{i32* %bm}, metadata !189), !dbg !728
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !729
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2, !dbg !729
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !190), !dbg !729
  %1 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !730
  call void @llvm.lifetime.start(i64 256, i8* %1) #2, !dbg !730
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !192), !dbg !730
  %dec = add nsw i32 %level, -1, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !186), !dbg !731
  %tobool = icmp eq i32 %dec, 0, !dbg !732
  br i1 %tobool, label %cleanup, label %if.end, !dbg !732

if.end:                                           ; preds = %entry
  %call = call i32 @ProbeTT(i32* %xdummy, i32 0, i32* %bm, i32* %xdummy, i32* %xdummy, i32 0) #13, !dbg !733
  %cmp = icmp eq i32 %call, 4, !dbg !733
  br i1 %cmp, label %cleanup, label %if.then1, !dbg !733

if.then1:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !734
  call void @gen(%struct.move_s* %arrayidx) #13, !dbg !734
  call void @llvm.dbg.value(metadata !{i32* %bm}, i64 0, metadata !189), !dbg !736
  %2 = load i32* %bm, align 4, !dbg !736, !tbaa !371
  %cmp2 = icmp sgt i32 %2, -1, !dbg !736
  %3 = load i32* @numb_moves, align 4, !dbg !737, !tbaa !371
  %cmp3 = icmp slt i32 %2, %3, !dbg !736
  %or.cond = and i1 %cmp2, %cmp3, !dbg !736
  br i1 %or.cond, label %if.then4, label %cleanup, !dbg !736

if.then4:                                         ; preds = %if.then1
  %idxprom = sext i32 %2 to i64, !dbg !738
  %arrayidx5 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %idxprom, !dbg !738
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx5, i8* %1) #14, !dbg !738
  call void @llvm.dbg.value(metadata !{i32* %bm}, i64 0, metadata !189), !dbg !740
  %4 = load i32* %bm, align 4, !dbg !740, !tbaa !371
  call void @make(%struct.move_s* %arrayidx, i32 %4) #13, !dbg !740
  call void @llvm.dbg.value(metadata !{i32* %bm}, i64 0, metadata !189), !dbg !741
  %5 = load i32* %bm, align 4, !dbg !741, !tbaa !371
  %call8 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %5, i32 1) #13, !dbg !741
  %tobool9 = icmp eq i32 %call8, 0, !dbg !741
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !741

if.then10:                                        ; preds = %if.then4
  %strlen = call i64 @strlen(i8* %str), !dbg !742
  %endptr = getelementptr i8* %str, i64 %strlen, !dbg !742
  %6 = bitcast i8* %endptr to i16*, !dbg !742
  store i16 60, i16* %6, align 1, !dbg !742
  %call13 = call i8* @strcat(i8* %str, i8* %1) #13, !dbg !744
  %strlen25 = call i64 @strlen(i8* %str), !dbg !745
  %endptr26 = getelementptr i8* %str, i64 %strlen25, !dbg !745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr26, i8* getelementptr inbounds ([3 x i8]* @.str48, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !745
  call void @hash_extract_pv(i32 %dec, i8* %str) #14, !dbg !746
  br label %if.end15, !dbg !747

if.end15:                                         ; preds = %if.then4, %if.then10
  call void @llvm.dbg.value(metadata !{i32* %bm}, i64 0, metadata !189), !dbg !748
  %7 = load i32* %bm, align 4, !dbg !748, !tbaa !371
  call void @unmake(%struct.move_s* %arrayidx, i32 %7) #13, !dbg !748
  br label %cleanup, !dbg !749

cleanup:                                          ; preds = %if.end15, %if.then1, %if.end, %entry
  call void @llvm.lifetime.end(i64 256, i8* %1) #2, !dbg !750
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2, !dbg !750
  ret void, !dbg !751
}

; Function Attrs: optsize
declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @stringize_pv(i8* %str) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !197), !dbg !752
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !753
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !753
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !198), !dbg !753
  call void @llvm.memset.p0i8.i64(i8* %str, i8 0, i64 256, i32 1, i1 false), !dbg !754
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !199), !dbg !755
  %1 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !dbg !755, !tbaa !371
  %cmp24 = icmp sgt i32 %1, 1, !dbg !755
  br i1 %cmp24, label %for.body.lr.ph, label %for.end, !dbg !755

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.move_s* %tmp to i8*, !dbg !757
  br label %for.body, !dbg !755

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv27 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next28, %for.body ]
  %arrayidx = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv27, !dbg !757
  %3 = bitcast %struct.move_s* %arrayidx to i8*, !dbg !757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false), !dbg !757, !tbaa.struct !722
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #14, !dbg !757
  call void @make(%struct.move_s* %arrayidx, i32 0) #13, !dbg !759
  %call = call i8* @strcat(i8* %str, i8* %0) #13, !dbg !760
  %strlen = call i64 @strlen(i8* %str), !dbg !761
  %endptr = getelementptr i8* %str, i64 %strlen, !dbg !761
  %4 = bitcast i8* %endptr to i16*, !dbg !761
  store i16 32, i16* %4, align 1, !dbg !761
  %indvars.iv.next28 = add i64 %indvars.iv27, 1, !dbg !755
  %5 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !dbg !755, !tbaa !371
  %6 = trunc i64 %indvars.iv.next28 to i32, !dbg !755
  %cmp = icmp slt i32 %6, %5, !dbg !755
  br i1 %cmp, label %for.body, label %for.end, !dbg !755

for.end:                                          ; preds = %for.body, %entry
  call void @hash_extract_pv(i32 7, i8* %str) #14, !dbg !762
  %7 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !dbg !763, !tbaa !371
  %i.121 = add i32 %7, -1, !dbg !763
  %cmp622 = icmp sgt i32 %i.121, 0, !dbg !763
  br i1 %cmp622, label %for.body7.lr.ph, label %for.end11, !dbg !763

for.body7.lr.ph:                                  ; preds = %for.end
  %8 = sext i32 %i.121 to i64
  br label %for.body7, !dbg !763

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %indvars.iv = phi i64 [ %8, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  %i.123 = phi i32 [ %i.121, %for.body7.lr.ph ], [ %i.1, %for.body7 ]
  %arrayidx9 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv, !dbg !765
  call void @unmake(%struct.move_s* %arrayidx9, i32 0) #13, !dbg !765
  %i.1 = add nsw i32 %i.123, -1, !dbg !763
  %cmp6 = icmp sgt i32 %i.1, 0, !dbg !763
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !763
  br i1 %cmp6, label %for.body7, label %for.end11, !dbg !763

for.end11:                                        ; preds = %for.body7, %for.end
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !767
  ret void, !dbg !767
}

; Function Attrs: nounwind optsize uwtable
define void @post_thinking(i32 %score) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %hashpv = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !204), !dbg !768
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !206), !dbg !769
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !770
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !770
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !209), !dbg !770
  %1 = getelementptr inbounds [256 x i8]* %hashpv, i64 0, i64 0, !dbg !771
  call void @llvm.lifetime.start(i64 256, i8* %1) #2, !dbg !771
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %hashpv}, metadata !210), !dbg !771
  call void @llvm.dbg.value(metadata !772, i64 0, metadata !773) #2, !dbg !775
  call void @llvm.dbg.value(metadata !{i64 %4}, i64 0, metadata !776) #2, !dbg !775
  call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !208), !dbg !774
  %2 = load i32* @xb_mode, align 4, !dbg !777, !tbaa !371
  %tobool = icmp eq i32 %2, 0, !dbg !777
  %3 = load i32* @i_depth, align 4, !dbg !778, !tbaa !371
  br i1 %tobool, label %if.else6, label %if.then4, !dbg !777

if.then4:                                         ; preds = %entry
  %4 = load i64* @start_time, align 8, !dbg !774, !tbaa !779
  %call.i = call double @difftime(i64 0, i64 %4) #15, !dbg !780
  %conv.i = fptosi double %call.i to i32, !dbg !780
  %mul.i = mul nsw i32 %conv.i, 100, !dbg !780
  %5 = load i32* @nodes, align 4, !dbg !778, !tbaa !371
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %3, i32 %score, i32 %mul.i, i32 %5) #13, !dbg !778
  br label %if.end13, !dbg !778

if.else6:                                         ; preds = %entry
  %6 = ashr i32 %score, 31, !dbg !781
  %7 = and i32 %6, 13, !dbg !781
  %8 = or i32 %7, 32, !dbg !781
  %div9 = sdiv i32 %score, 100, !dbg !782
  %ispos = icmp sgt i32 %score, -100, !dbg !782
  %neg = sub i32 0, %div9, !dbg !782
  %9 = select i1 %ispos, i32 %div9, i32 %neg, !dbg !782
  %rem = srem i32 %score, 100, !dbg !782
  %ispos60 = icmp sgt i32 %rem, -1, !dbg !782
  %neg61 = sub i32 0, %rem, !dbg !782
  %10 = select i1 %ispos60, i32 %rem, i32 %neg61, !dbg !782
  %11 = load i32* @nodes, align 4, !dbg !782, !tbaa !371
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %3, i32 %8, i32 %9, i32 %10, i32 %11) #13, !dbg !782
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  %12 = load i32* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 0), align 4, !dbg !783, !tbaa !371
  %cmp14 = icmp eq i32 %12, 0, !dbg !783
  br i1 %cmp14, label %land.lhs.true20, label %land.lhs.true, !dbg !783

land.lhs.true:                                    ; preds = %if.end13
  %idxprom = sext i32 %12 to i64, !dbg !783
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !783
  %13 = load i32* %arrayidx, align 4, !dbg !783, !tbaa !371
  %cmp16 = icmp eq i32 %13, 13, !dbg !783
  br i1 %cmp16, label %if.then25, label %if.end26, !dbg !783

land.lhs.true20:                                  ; preds = %if.end13
  %14 = load i32* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1, i32 1), align 4, !dbg !783, !tbaa !371
  %idxprom21 = sext i32 %14 to i64, !dbg !783
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21, !dbg !783
  %15 = load i32* %arrayidx22, align 4, !dbg !783, !tbaa !371
  %cmp23 = icmp eq i32 %15, 13, !dbg !783
  br i1 %cmp23, label %if.end26, label %if.then25, !dbg !783

if.then25:                                        ; preds = %land.lhs.true20, %land.lhs.true
  call void @unmake(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1), i32 0) #13, !dbg !784
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !206), !dbg !786
  br label %if.end26, !dbg !787

if.end26:                                         ; preds = %land.lhs.true, %land.lhs.true20, %if.then25
  %remake.0 = phi i32 [ 1, %if.then25 ], [ 0, %land.lhs.true20 ], [ 0, %land.lhs.true ]
  call void @llvm.dbg.value(metadata !499, i64 0, metadata !205), !dbg !788
  %16 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !dbg !788, !tbaa !371
  %cmp2766 = icmp sgt i32 %16, 1, !dbg !788
  br i1 %cmp2766, label %for.body.lr.ph, label %for.end, !dbg !788

for.body.lr.ph:                                   ; preds = %if.end26
  %17 = bitcast %struct.move_s* %tmp to i8*, !dbg !790
  br label %for.body, !dbg !788

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv69 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next70, %for.body ]
  %arrayidx30 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv69, !dbg !790
  %18 = bitcast %struct.move_s* %arrayidx30 to i8*, !dbg !790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 4, i1 false), !dbg !790, !tbaa.struct !722
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #14, !dbg !790
  call void @make(%struct.move_s* %arrayidx30, i32 0) #13, !dbg !792
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str52, i64 0, i64 0), i8* %0) #13, !dbg !793
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !788
  %19 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !dbg !788, !tbaa !371
  %20 = trunc i64 %indvars.iv.next70 to i32, !dbg !788
  %cmp27 = icmp slt i32 %20, %19, !dbg !788
  br i1 %cmp27, label %for.body, label %for.end, !dbg !788

for.end:                                          ; preds = %for.body, %if.end26
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 256, i32 16, i1 false), !dbg !794
  call void @hash_extract_pv(i32 7, i8* %1) #14, !dbg !795
  %call37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str53, i64 0, i64 0), i8* %1) #13, !dbg !796
  %21 = load i32* getelementptr inbounds ([300 x i32]* @pv_length, i64 0, i64 1), align 4, !dbg !797, !tbaa !371
  %i.163 = add i32 %21, -1, !dbg !797
  %cmp3964 = icmp sgt i32 %i.163, 0, !dbg !797
  br i1 %cmp3964, label %for.body41.lr.ph, label %for.end45, !dbg !797

for.body41.lr.ph:                                 ; preds = %for.end
  %22 = sext i32 %i.163 to i64
  br label %for.body41, !dbg !797

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %indvars.iv = phi i64 [ %22, %for.body41.lr.ph ], [ %indvars.iv.next, %for.body41 ]
  %i.165 = phi i32 [ %i.163, %for.body41.lr.ph ], [ %i.1, %for.body41 ]
  %arrayidx43 = getelementptr inbounds [300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 %indvars.iv, !dbg !799
  call void @unmake(%struct.move_s* %arrayidx43, i32 0) #13, !dbg !799
  %i.1 = add nsw i32 %i.165, -1, !dbg !797
  %cmp39 = icmp sgt i32 %i.1, 0, !dbg !797
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !797
  br i1 %cmp39, label %for.body41, label %for.end45, !dbg !797

for.end45:                                        ; preds = %for.body41, %for.end
  %tobool46 = icmp eq i32 %remake.0, 0, !dbg !801
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !801

if.then47:                                        ; preds = %for.end45
  call void @make(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]]* @pv, i64 0, i64 1, i64 1), i32 0) #13, !dbg !802
  br label %if.end48, !dbg !802

if.end48:                                         ; preds = %for.end45, %if.then47
  %putchar = call i32 @putchar(i32 10) #2, !dbg !803
  call void @llvm.lifetime.end(i64 256, i8* %1) #2, !dbg !804
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !804
  ret void, !dbg !804
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @rdifftime(i64 %end, i64 %start) #10 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !267), !dbg !805
  tail call void @llvm.dbg.value(metadata !{i64 %start}, i64 0, metadata !268), !dbg !805
  %call = tail call double @difftime(i64 %end, i64 %start) #15, !dbg !806
  %conv = fptosi double %call to i32, !dbg !806
  %mul = mul nsw i32 %conv, 100, !dbg !806
  ret i32 %mul, !dbg !806
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @rtime() #10 {
entry:
  ret i64 0, !dbg !807
}

; Function Attrs: nounwind optsize uwtable
define void @post_fail_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !218), !dbg !808
  call void @llvm.dbg.value(metadata !{%struct.move_s* %failmove}, i64 0, metadata !219), !dbg !808
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !809
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !809
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !222), !dbg !809
  call void @llvm.dbg.value(metadata !772, i64 0, metadata !810) #2, !dbg !812
  call void @llvm.dbg.value(metadata !{i64 %3}, i64 0, metadata !813) #2, !dbg !812
  call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !220), !dbg !811
  %1 = load i32* @xb_mode, align 4, !dbg !814, !tbaa !371
  %tobool = icmp eq i32 %1, 0, !dbg !814
  %2 = load i32* @i_depth, align 4, !dbg !815, !tbaa !371
  br i1 %tobool, label %if.else6, label %if.then4, !dbg !814

if.then4:                                         ; preds = %entry
  %3 = load i64* @start_time, align 8, !dbg !811, !tbaa !779
  %call.i = call double @difftime(i64 0, i64 %3) #15, !dbg !816
  %conv.i = fptosi double %call.i to i32, !dbg !816
  %mul.i = mul nsw i32 %conv.i, 100, !dbg !816
  %4 = load i32* @nodes, align 4, !dbg !815, !tbaa !371
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %2, i32 %score, i32 %mul.i, i32 %4) #13, !dbg !815
  br label %if.end13, !dbg !815

if.else6:                                         ; preds = %entry
  %5 = ashr i32 %score, 31, !dbg !817
  %6 = and i32 %5, 13, !dbg !817
  %7 = or i32 %6, 32, !dbg !817
  %div9 = sdiv i32 %score, 100, !dbg !818
  %ispos = icmp sgt i32 %score, -100, !dbg !818
  %neg = sub i32 0, %div9, !dbg !818
  %8 = select i1 %ispos, i32 %div9, i32 %neg, !dbg !818
  %rem = srem i32 %score, 100, !dbg !818
  %ispos23 = icmp sgt i32 %rem, -1, !dbg !818
  %neg24 = sub i32 0, %rem, !dbg !818
  %9 = select i1 %ispos23, i32 %rem, i32 %neg24, !dbg !818
  %10 = load i32* @nodes, align 4, !dbg !818, !tbaa !371
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %2, i32 %7, i32 %8, i32 %9, i32 %10) #13, !dbg !818
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  call void @unmake(%struct.move_s* %failmove, i32 0) #13, !dbg !819
  %11 = bitcast %struct.move_s* %tmp to i8*, !dbg !820
  %12 = bitcast %struct.move_s* %failmove to i8*, !dbg !820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !dbg !820, !tbaa.struct !722
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #14, !dbg !820
  call void @make(%struct.move_s* %failmove, i32 0) #13, !dbg !821
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0), i8* %0) #13, !dbg !822
  %putchar = call i32 @putchar(i32 10) #2, !dbg !823
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !824
  ret void, !dbg !824
}

; Function Attrs: nounwind optsize uwtable
define void @post_fh_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !227), !dbg !825
  call void @llvm.dbg.value(metadata !{%struct.move_s* %failmove}, i64 0, metadata !228), !dbg !825
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !826
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !826
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !231), !dbg !826
  call void @llvm.dbg.value(metadata !772, i64 0, metadata !827) #2, !dbg !829
  call void @llvm.dbg.value(metadata !{i64 %3}, i64 0, metadata !830) #2, !dbg !829
  call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !229), !dbg !828
  %1 = load i32* @xb_mode, align 4, !dbg !831, !tbaa !371
  %tobool = icmp eq i32 %1, 0, !dbg !831
  %2 = load i32* @i_depth, align 4, !dbg !832, !tbaa !371
  br i1 %tobool, label %if.else6, label %if.then4, !dbg !831

if.then4:                                         ; preds = %entry
  %3 = load i64* @start_time, align 8, !dbg !828, !tbaa !779
  %call.i = call double @difftime(i64 0, i64 %3) #15, !dbg !833
  %conv.i = fptosi double %call.i to i32, !dbg !833
  %mul.i = mul nsw i32 %conv.i, 100, !dbg !833
  %4 = load i32* @nodes, align 4, !dbg !832, !tbaa !371
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %2, i32 %score, i32 %mul.i, i32 %4) #13, !dbg !832
  br label %if.end13, !dbg !832

if.else6:                                         ; preds = %entry
  %5 = ashr i32 %score, 31, !dbg !834
  %6 = and i32 %5, 13, !dbg !834
  %7 = or i32 %6, 32, !dbg !834
  %div9 = sdiv i32 %score, 100, !dbg !835
  %ispos = icmp sgt i32 %score, -100, !dbg !835
  %neg = sub i32 0, %div9, !dbg !835
  %8 = select i1 %ispos, i32 %div9, i32 %neg, !dbg !835
  %rem = srem i32 %score, 100, !dbg !835
  %ispos23 = icmp sgt i32 %rem, -1, !dbg !835
  %neg24 = sub i32 0, %rem, !dbg !835
  %9 = select i1 %ispos23, i32 %rem, i32 %neg24, !dbg !835
  %10 = load i32* @nodes, align 4, !dbg !835, !tbaa !371
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %2, i32 %7, i32 %8, i32 %9, i32 %10) #13, !dbg !835
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  call void @unmake(%struct.move_s* %failmove, i32 0) #13, !dbg !836
  %11 = bitcast %struct.move_s* %tmp to i8*, !dbg !837
  %12 = bitcast %struct.move_s* %failmove to i8*, !dbg !837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !dbg !837, !tbaa.struct !722
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #14, !dbg !837
  call void @make(%struct.move_s* %failmove, i32 0) #13, !dbg !838
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str56, i64 0, i64 0), i8* %0) #13, !dbg !839
  %putchar = call i32 @putchar(i32 10) #2, !dbg !840
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !841
  ret void, !dbg !841
}

; Function Attrs: nounwind optsize uwtable
define void @post_fl_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %output = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !236), !dbg !842
  call void @llvm.dbg.value(metadata !{%struct.move_s* %failmove}, i64 0, metadata !237), !dbg !842
  %0 = getelementptr inbounds [256 x i8]* %output, i64 0, i64 0, !dbg !843
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !843
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %output}, metadata !240), !dbg !843
  call void @llvm.dbg.value(metadata !772, i64 0, metadata !844) #2, !dbg !846
  call void @llvm.dbg.value(metadata !{i64 %3}, i64 0, metadata !847) #2, !dbg !846
  call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !238), !dbg !845
  %1 = load i32* @xb_mode, align 4, !dbg !848, !tbaa !371
  %tobool = icmp eq i32 %1, 0, !dbg !848
  %2 = load i32* @i_depth, align 4, !dbg !849, !tbaa !371
  br i1 %tobool, label %if.else6, label %if.then4, !dbg !848

if.then4:                                         ; preds = %entry
  %3 = load i64* @start_time, align 8, !dbg !845, !tbaa !779
  %call.i = call double @difftime(i64 0, i64 %3) #15, !dbg !850
  %conv.i = fptosi double %call.i to i32, !dbg !850
  %mul.i = mul nsw i32 %conv.i, 100, !dbg !850
  %4 = load i32* @nodes, align 4, !dbg !849, !tbaa !371
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str50, i64 0, i64 0), i32 %2, i32 %score, i32 %mul.i, i32 %4) #13, !dbg !849
  br label %if.end13, !dbg !849

if.else6:                                         ; preds = %entry
  %5 = ashr i32 %score, 31, !dbg !851
  %6 = and i32 %5, 13, !dbg !851
  %7 = or i32 %6, 32, !dbg !851
  %div9 = sdiv i32 %score, 100, !dbg !852
  %ispos = icmp sgt i32 %score, -100, !dbg !852
  %neg = sub i32 0, %div9, !dbg !852
  %8 = select i1 %ispos, i32 %div9, i32 %neg, !dbg !852
  %rem = srem i32 %score, 100, !dbg !852
  %ispos23 = icmp sgt i32 %rem, -1, !dbg !852
  %neg24 = sub i32 0, %rem, !dbg !852
  %9 = select i1 %ispos23, i32 %rem, i32 %neg24, !dbg !852
  %10 = load i32* @nodes, align 4, !dbg !852, !tbaa !371
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str51, i64 0, i64 0), i32 %2, i32 %7, i32 %8, i32 %9, i32 %10) #13, !dbg !852
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then4
  call void @unmake(%struct.move_s* %failmove, i32 0) #13, !dbg !853
  %11 = bitcast %struct.move_s* %tmp to i8*, !dbg !854
  %12 = bitcast %struct.move_s* %failmove to i8*, !dbg !854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !dbg !854, !tbaa.struct !722
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #14, !dbg !854
  call void @make(%struct.move_s* %failmove, i32 0) #13, !dbg !855
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i8* %0) #13, !dbg !856
  %putchar = call i32 @putchar(i32 10) #2, !dbg !857
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !858
  ret void, !dbg !858
}

; Function Attrs: nounwind optsize uwtable
define void @post_stat_thinking() #0 {
entry:
  %0 = load i64* @start_time, align 8, !dbg !859, !tbaa !779
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !860) #2, !dbg !861
  tail call void @llvm.dbg.value(metadata !{i64 %0}, i64 0, metadata !862) #2, !dbg !861
  %call.i = tail call double @difftime(i64 0, i64 %0) #15, !dbg !863
  %conv.i = fptosi double %call.i to i32, !dbg !863
  %mul.i = mul nsw i32 %conv.i, 100, !dbg !863
  tail call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !245), !dbg !859
  %1 = load i32* @xb_mode, align 4, !dbg !864, !tbaa !371
  switch i32 %1, label %if.end6 [
    i32 1, label %if.then
    i32 2, label %if.then4
  ], !dbg !864

if.then:                                          ; preds = %entry
  %2 = load i32* @nodes, align 4, !dbg !865, !tbaa !371
  %3 = load i32* @i_depth, align 4, !dbg !865, !tbaa !371
  %4 = load i32* @moveleft, align 4, !dbg !865, !tbaa !371
  %5 = load i32* @movetotal, align 4, !dbg !865, !tbaa !371
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str58, i64 0, i64 0), i32 %mul.i, i32 %2, i32 %3, i32 %4, i32 %5) #13, !dbg !865
  br label %if.end6, !dbg !867

if.then4:                                         ; preds = %entry
  %6 = load i32* @nodes, align 4, !dbg !868, !tbaa !371
  %7 = load i32* @i_depth, align 4, !dbg !868, !tbaa !371
  %8 = load i32* @moveleft, align 4, !dbg !868, !tbaa !371
  %9 = load i32* @movetotal, align 4, !dbg !868, !tbaa !371
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i32 %mul.i, i32 %6, i32 %7, i32 %8, i32 %9, i8* getelementptr inbounds ([20 x i8]* @searching_move, i64 0, i64 0)) #13, !dbg !868
  br label %if.end6, !dbg !870

if.end6:                                          ; preds = %entry, %if.then4, %if.then
  ret void, !dbg !871
}

; Function Attrs: nounwind optsize uwtable
define void @print_move(%struct.move_s* nocapture %moves, i32 %m, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  %move = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !250), !dbg !872
  call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !251), !dbg !872
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %stream}, i64 0, metadata !252), !dbg !872
  %0 = getelementptr inbounds [256 x i8]* %move, i64 0, i64 0, !dbg !873
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !873
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %move}, metadata !253), !dbg !873
  %idxprom = sext i32 %m to i64, !dbg !874
  %arrayidx = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, !dbg !874
  %1 = bitcast %struct.move_s* %tmp to i8*, !dbg !874
  %2 = bitcast %struct.move_s* %arrayidx to i8*, !dbg !874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 4, i1 false), !dbg !874, !tbaa.struct !722
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %0) #14, !dbg !874
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %stream), !dbg !875
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !876
  ret void, !dbg !876
}

; Function Attrs: nounwind optsize readnone uwtable
define void @rdelay(i32 %time_in_s) #10 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %time_in_s}, i64 0, metadata !256), !dbg !877
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !262), !dbg !878
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !257), !dbg !879
  %cmp3 = icmp sgt i32 %time_in_s, 0, !dbg !880
  br i1 %cmp3, label %while.body.lr.ph, label %while.end, !dbg !880

while.body.lr.ph:                                 ; preds = %entry
  %call.i = tail call double @difftime(i64 0, i64 0) #15, !dbg !881
  %conv.i = fptosi double %call.i to i32, !dbg !881
  %cmp = icmp slt i32 %conv.i, %time_in_s, !dbg !880
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !261), !dbg !884
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !885) #2, !dbg !886
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !887) #2, !dbg !886
  br label %while.body, !dbg !880

while.end:                                        ; preds = %while.body.lr.ph, %entry
  ret void, !dbg !888
}

; Function Attrs: nounwind optsize readnone
declare double @difftime(i64, i64) #6

; Function Attrs: nounwind optsize uwtable
define void @check_piece_square() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !499, i64 0, metadata !271), !dbg !889
  %0 = load i32* @piece_count, align 4, !dbg !889, !tbaa !371
  %cmp107 = icmp slt i32 %0, 1, !dbg !889
  br i1 %cmp107, label %for.body33, label %for.body, !dbg !889

for.cond:                                         ; preds = %if.end18
  %indvars.iv.next113 = add i64 %indvars.iv112, 1, !dbg !889
  %cmp = icmp slt i32 %3, %0, !dbg !889
  br i1 %cmp, label %for.body, label %for.body33, !dbg !889

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.cond ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv112, !dbg !891
  %1 = load i32* %arrayidx, align 4, !dbg !891, !tbaa !371
  %idxprom1 = sext i32 %1 to i64, !dbg !891
  %arrayidx2 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom1, !dbg !891
  %2 = load i32* %arrayidx2, align 4, !dbg !891, !tbaa !371
  %3 = trunc i64 %indvars.iv112 to i32, !dbg !891
  %cmp3 = icmp eq i32 %2, %3, !dbg !891
  %cmp6 = icmp eq i32 %1, 0, !dbg !891
  %or.cond = or i1 %cmp3, %cmp6, !dbg !891
  br i1 %or.cond, label %if.end, label %if.then, !dbg !891

if.then:                                          ; preds = %for.body
  %puts99 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str80, i64 0, i64 0)), !dbg !893
  %4 = load %struct._IO_FILE** @stdout, align 8, !dbg !895, !tbaa !570
  tail call void @display_board(%struct._IO_FILE* %4, i32 0) #14, !dbg !895
  tail call void @llvm.trap(), !dbg !896
  unreachable

if.end:                                           ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !897
  %5 = load i32* %arrayidx10, align 4, !dbg !897, !tbaa !371
  %cmp11 = icmp ne i32 %5, 13, !dbg !897
  %or.cond100 = or i1 %cmp11, %cmp6, !dbg !897
  br i1 %or.cond100, label %if.end18, label %if.then16, !dbg !897

if.then16:                                        ; preds = %if.end
  %puts98 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str79, i64 0, i64 0)), !dbg !898
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !900, !tbaa !570
  tail call void @display_board(%struct._IO_FILE* %6, i32 0) #14, !dbg !900
  tail call void @llvm.trap(), !dbg !901
  unreachable

if.end18:                                         ; preds = %if.end
  %cmp6.not = xor i1 %cmp6, true, !dbg !902
  %cmp27 = icmp eq i32 %2, 0, !dbg !902
  %or.cond102 = or i1 %cmp27, %cmp6.not, !dbg !902
  br i1 %or.cond102, label %for.cond, label %if.then28, !dbg !902

if.then28:                                        ; preds = %if.end18
  %puts97 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str78, i64 0, i64 0)), !dbg !903
  %7 = load %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !570
  tail call void @display_board(%struct._IO_FILE* %7, i32 0) #14, !dbg !905
  tail call void @llvm.trap(), !dbg !906
  unreachable

for.cond31:                                       ; preds = %if.end60
  %inc74 = add nsw i32 %i.1106, 1, !dbg !907
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !907
  %cmp32 = icmp slt i32 %8, 144, !dbg !907
  br i1 %cmp32, label %for.body33, label %for.end75, !dbg !907

for.body33:                                       ; preds = %entry, %for.cond, %for.cond31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond31 ], [ 0, %for.cond ], [ 0, %entry ]
  %i.1106 = phi i32 [ %inc74, %for.cond31 ], [ 0, %for.cond ], [ 0, %entry ]
  %arrayidx35 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv, !dbg !909
  %9 = load i32* %arrayidx35, align 4, !dbg !909, !tbaa !371
  switch i32 %9, label %land.lhs.true54 [
    i32 13, label %land.lhs.true40
    i32 0, label %land.lhs.true40
  ], !dbg !909

land.lhs.true40:                                  ; preds = %for.body33, %for.body33
  %arrayidx42 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv, !dbg !909
  %10 = load i32* %arrayidx42, align 4, !dbg !909, !tbaa !371
  %cmp43 = icmp eq i32 %10, 0, !dbg !909
  br i1 %cmp43, label %if.end46, label %if.then44, !dbg !909

if.then44:                                        ; preds = %land.lhs.true40
  %puts96 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str77, i64 0, i64 0)), !dbg !911
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !913, !tbaa !570
  tail call void @display_board(%struct._IO_FILE* %11, i32 0) #14, !dbg !913
  tail call void @llvm.trap(), !dbg !914
  unreachable

if.end46:                                         ; preds = %land.lhs.true40
  switch i32 %9, label %land.lhs.true54 [
    i32 13, label %if.end60
    i32 0, label %if.end60
  ], !dbg !915

land.lhs.true54:                                  ; preds = %for.body33, %if.end46
  %arrayidx56 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv, !dbg !915
  %12 = load i32* %arrayidx56, align 4, !dbg !915, !tbaa !371
  %cmp57 = icmp eq i32 %12, 0, !dbg !915
  br i1 %cmp57, label %if.then58, label %if.end60, !dbg !915

if.then58:                                        ; preds = %land.lhs.true54
  %call59 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0), i32 %i.1106) #13, !dbg !916
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !918, !tbaa !570
  tail call void @display_board(%struct._IO_FILE* %13, i32 0) #14, !dbg !918
  tail call void @llvm.trap(), !dbg !919
  unreachable

if.end60:                                         ; preds = %land.lhs.true54, %if.end46, %if.end46
  %arrayidx62 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %indvars.iv, !dbg !920
  %14 = load i32* %arrayidx62, align 4, !dbg !920, !tbaa !371
  %idxprom63 = sext i32 %14 to i64, !dbg !920
  %arrayidx64 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom63, !dbg !920
  %15 = load i32* %arrayidx64, align 4, !dbg !920, !tbaa !371
  %16 = trunc i64 %indvars.iv to i32, !dbg !920
  %cmp65 = icmp eq i32 %15, %16, !dbg !920
  %cmp69 = icmp eq i32 %14, 0, !dbg !920
  %or.cond101 = or i1 %cmp65, %cmp69, !dbg !920
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !907
  tail call void @llvm.dbg.value(metadata !{i32 %inc74}, i64 0, metadata !271), !dbg !907
  br i1 %or.cond101, label %for.cond31, label %if.then70, !dbg !920

if.then70:                                        ; preds = %if.end60
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str76, i64 0, i64 0)), !dbg !921
  %17 = load %struct._IO_FILE** @stdout, align 8, !dbg !923, !tbaa !570
  tail call void @display_board(%struct._IO_FILE* %17, i32 0) #14, !dbg !923
  tail call void @llvm.trap(), !dbg !924
  unreachable

for.end75:                                        ; preds = %for.cond31
  ret void, !dbg !925
}

; Function Attrs: nounwind optsize
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @start_up() #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([70 x i8]* @str81, i64 0, i64 0)), !dbg !926
  ret void, !dbg !927
}

; Function Attrs: nounwind optsize uwtable
define void @toggle_bool(i32* nocapture %var) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !294), !dbg !928
  %0 = load i32* %var, align 4, !dbg !929, !tbaa !372
  %tobool = icmp eq i32 %0, 0, !dbg !929
  %. = zext i1 %tobool to i32
  store i32 %., i32* %var, align 4, !dbg !930, !tbaa !372
  ret void, !dbg !932
}

; Function Attrs: nounwind optsize uwtable
define void @tree_debug() #0 {
entry:
  %input = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %input, i64 0, i64 0, !dbg !933
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !933
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %input}, metadata !297), !dbg !933
  call void @init_game() #14, !dbg !934
  %puts = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str82, i64 0, i64 0)), !dbg !935
  %1 = load %struct._IO_FILE** @stdin, align 8, !dbg !936, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %1) #14, !dbg !936
  %call2 = call i32 @atoi(i8* %0) #16, !dbg !937
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !299), !dbg !937
  %puts22 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str83, i64 0, i64 0)), !dbg !938
  %2 = load %struct._IO_FILE** @stdin, align 8, !dbg !939, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %2) #14, !dbg !939
  %3 = load i8* %0, align 16, !dbg !940, !tbaa !372
  %cmp = icmp eq i8 %3, 121, !dbg !940
  br i1 %cmp, label %if.then, label %if.end18, !dbg !940

if.then:                                          ; preds = %entry
  %puts23 = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str84, i64 0, i64 0)), !dbg !941
  %4 = load %struct._IO_FILE** @stdin, align 8, !dbg !943, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %4) #14, !dbg !943
  %call9 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str70, i64 0, i64 0)) #13, !dbg !944
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call9}, i64 0, metadata !298), !dbg !944
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null, !dbg !944
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !944

if.then12:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !945, !tbaa !570
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str71, i64 0, i64 0), i8* %0) #13, !dbg !945
  br label %if.end, !dbg !947

if.end:                                           ; preds = %if.then12, %if.then
  %puts24 = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str85, i64 0, i64 0)), !dbg !948
  %6 = load %struct._IO_FILE** @stdin, align 8, !dbg !949, !tbaa !570
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %6) #14, !dbg !949
  call void @tree(i32 %call2, i32 0, %struct._IO_FILE* %call9, i8* %0) #13, !dbg !950
  br label %if.end18, !dbg !951

if.end18:                                         ; preds = %if.end, %entry
  store i32 0, i32* @raw_nodes, align 4, !dbg !952, !tbaa !371
  call void @perft(i32 %call2) #13, !dbg !953
  %7 = load i32* @raw_nodes, align 4, !dbg !954, !tbaa !371
  %call19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0), i32 %call2, i32 %7, i8* getelementptr inbounds ([50 x i8]* @divider, i64 0, i64 0)) #13, !dbg !954
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !955
  ret void, !dbg !955
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare void @tree(i32, i32, %struct._IO_FILE*, i8*) #4

; Function Attrs: nounwind optsize readnone uwtable
define i32 @interrupt() #10 {
entry:
  ret i32 0, !dbg !956
}

; Function Attrs: nounwind optsize uwtable
define void @PutPiece(i32 %color, i8 signext %piece, i8 signext %pfile, i32 %prank) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !320), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i8 %piece}, i64 0, metadata !321), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i8 %pfile}, i64 0, metadata !322), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i32 %prank}, i64 0, metadata !323), !dbg !957
  tail call void @llvm.dbg.value(metadata !426, i64 0, metadata !324), !dbg !958
  tail call void @llvm.dbg.value(metadata !959, i64 0, metadata !325), !dbg !960
  %conv = sext i8 %pfile to i32, !dbg !961
  %0 = mul i32 %prank, 12, !dbg !962
  %sub = add i32 %conv, -659, !dbg !962
  %add2 = add i32 %sub, %0, !dbg !962
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !328), !dbg !962
  switch i32 %color, label %if.end49 [
    i32 0, label %if.then
    i32 1, label %if.then25
  ], !dbg !963

if.then:                                          ; preds = %entry
  %conv4 = sext i8 %piece to i32, !dbg !964
  switch i32 %conv4, label %if.end49 [
    i32 112, label %sw.bb
    i32 110, label %sw.bb5
    i32 98, label %sw.bb8
    i32 114, label %sw.bb11
    i32 113, label %sw.bb14
    i32 107, label %sw.bb17
    i32 120, label %sw.bb20
  ], !dbg !964

sw.bb:                                            ; preds = %if.then
  %idxprom = sext i32 %add2 to i64, !dbg !966
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !966
  store i32 1, i32* %arrayidx, align 4, !dbg !966, !tbaa !371
  br label %if.end49, !dbg !968

sw.bb5:                                           ; preds = %if.then
  %idxprom6 = sext i32 %add2 to i64, !dbg !969
  %arrayidx7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom6, !dbg !969
  store i32 3, i32* %arrayidx7, align 4, !dbg !969, !tbaa !371
  br label %if.end49, !dbg !970

sw.bb8:                                           ; preds = %if.then
  %idxprom9 = sext i32 %add2 to i64, !dbg !971
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom9, !dbg !971
  store i32 11, i32* %arrayidx10, align 4, !dbg !971, !tbaa !371
  br label %if.end49, !dbg !972

sw.bb11:                                          ; preds = %if.then
  %idxprom12 = sext i32 %add2 to i64, !dbg !973
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom12, !dbg !973
  store i32 7, i32* %arrayidx13, align 4, !dbg !973, !tbaa !371
  br label %if.end49, !dbg !974

sw.bb14:                                          ; preds = %if.then
  %idxprom15 = sext i32 %add2 to i64, !dbg !975
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15, !dbg !975
  store i32 9, i32* %arrayidx16, align 4, !dbg !975, !tbaa !371
  br label %if.end49, !dbg !976

sw.bb17:                                          ; preds = %if.then
  %idxprom18 = sext i32 %add2 to i64, !dbg !977
  %arrayidx19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom18, !dbg !977
  store i32 5, i32* %arrayidx19, align 4, !dbg !977, !tbaa !371
  br label %if.end49, !dbg !978

sw.bb20:                                          ; preds = %if.then
  %idxprom21 = sext i32 %add2 to i64, !dbg !979
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21, !dbg !979
  store i32 13, i32* %arrayidx22, align 4, !dbg !979, !tbaa !371
  br label %if.end49, !dbg !980

if.then25:                                        ; preds = %entry
  %conv26 = sext i8 %piece to i32, !dbg !981
  switch i32 %conv26, label %if.end49 [
    i32 112, label %sw.bb27
    i32 110, label %sw.bb30
    i32 98, label %sw.bb33
    i32 114, label %sw.bb36
    i32 113, label %sw.bb39
    i32 107, label %sw.bb42
    i32 120, label %sw.bb45
  ], !dbg !981

sw.bb27:                                          ; preds = %if.then25
  %idxprom28 = sext i32 %add2 to i64, !dbg !983
  %arrayidx29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28, !dbg !983
  store i32 2, i32* %arrayidx29, align 4, !dbg !983, !tbaa !371
  br label %if.end49, !dbg !985

sw.bb30:                                          ; preds = %if.then25
  %idxprom31 = sext i32 %add2 to i64, !dbg !986
  %arrayidx32 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom31, !dbg !986
  store i32 4, i32* %arrayidx32, align 4, !dbg !986, !tbaa !371
  br label %if.end49, !dbg !987

sw.bb33:                                          ; preds = %if.then25
  %idxprom34 = sext i32 %add2 to i64, !dbg !988
  %arrayidx35 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom34, !dbg !988
  store i32 12, i32* %arrayidx35, align 4, !dbg !988, !tbaa !371
  br label %if.end49, !dbg !989

sw.bb36:                                          ; preds = %if.then25
  %idxprom37 = sext i32 %add2 to i64, !dbg !990
  %arrayidx38 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom37, !dbg !990
  store i32 8, i32* %arrayidx38, align 4, !dbg !990, !tbaa !371
  br label %if.end49, !dbg !991

sw.bb39:                                          ; preds = %if.then25
  %idxprom40 = sext i32 %add2 to i64, !dbg !992
  %arrayidx41 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom40, !dbg !992
  store i32 10, i32* %arrayidx41, align 4, !dbg !992, !tbaa !371
  br label %if.end49, !dbg !993

sw.bb42:                                          ; preds = %if.then25
  %idxprom43 = sext i32 %add2 to i64, !dbg !994
  %arrayidx44 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom43, !dbg !994
  store i32 6, i32* %arrayidx44, align 4, !dbg !994, !tbaa !371
  br label %if.end49, !dbg !995

sw.bb45:                                          ; preds = %if.then25
  %idxprom46 = sext i32 %add2 to i64, !dbg !996
  %arrayidx47 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom46, !dbg !996
  store i32 13, i32* %arrayidx47, align 4, !dbg !996, !tbaa !371
  br label %if.end49, !dbg !997

if.end49:                                         ; preds = %entry, %if.then25, %sw.bb45, %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb, %sw.bb5, %sw.bb8, %sw.bb11, %sw.bb14, %sw.bb17, %sw.bb20, %if.then
  ret void, !dbg !998
}

; Function Attrs: nounwind optsize uwtable
define void @reset_board() #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !999, metadata !332), !dbg !1000
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* bitcast ([144 x i32]* @reset_board.init_board to i8*), i64 576, i32 16, i1 false), !dbg !1001
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !331), !dbg !1002
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @moved to i8*), i8 0, i64 576, i32 4, i1 false), !dbg !1004
  store i32 0, i32* @ep_square, align 4, !dbg !1005, !tbaa !371
  store i32 0, i32* @piece_count, align 4, !dbg !1006, !tbaa !371
  store i32 0, i32* @Material, align 4, !dbg !1007, !tbaa !371
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false), !dbg !1008
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false), !dbg !1009
  store i32 0, i32* @white_hand_eval, align 4, !dbg !1010, !tbaa !371
  store i32 0, i32* @black_hand_eval, align 4, !dbg !1011, !tbaa !371
  store i32 0, i32* @bookidx, align 4, !dbg !1012, !tbaa !371
  store i32 0, i32* @fifty, align 4, !dbg !1013, !tbaa !371
  tail call void @reset_piece_square() #14, !dbg !1014
  ret void, !dbg !1015
}

; Function Attrs: nounwind optsize uwtable
define void @seedMT(i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !338), !dbg !1016
  %or = or i32 %seed, 1, !dbg !1017
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !339), !dbg !1017
  tail call void @llvm.dbg.value(metadata !1018, i64 0, metadata !340), !dbg !1017
  store i32 0, i32* @left, align 4, !dbg !1019, !tbaa !371
  tail call void @llvm.dbg.value(metadata !1021, i64 0, metadata !340), !dbg !1019
  store i32 %or, i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), align 16, !dbg !1019, !tbaa !371
  tail call void @llvm.dbg.value(metadata !1022, i64 0, metadata !342), !dbg !1019
  tail call void @llvm.dbg.value(metadata !1023, i64 0, metadata !342), !dbg !1019
  br label %for.inc, !dbg !1019

for.inc:                                          ; preds = %entry, %for.inc
  %j.06 = phi i32 [ 623, %entry ], [ %phitmp, %for.inc ]
  %s.05 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 1), %entry ], [ %incdec.ptr1, %for.inc ]
  %x.04 = phi i32 [ %or, %entry ], [ %mul, %for.inc ]
  %mul = mul i32 %x.04, 69069, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !339), !dbg !1024
  %incdec.ptr1 = getelementptr inbounds i32* %s.05, i64 1, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr1}, i64 0, metadata !340), !dbg !1024
  store i32 %mul, i32* %s.05, align 4, !dbg !1024, !tbaa !371
  %phitmp = add i32 %j.06, -1, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i32 %j.06}, i64 0, metadata !342), !dbg !1019
  %tobool = icmp eq i32 %phitmp, 0, !dbg !1019
  br i1 %tobool, label %for.end, label %for.inc, !dbg !1019

for.end:                                          ; preds = %for.inc
  ret void, !dbg !1025
}

; Function Attrs: nounwind optsize uwtable
define i32 @reloadMT() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !1018, i64 0, metadata !347), !dbg !1026
  tail call void @llvm.dbg.value(metadata !1027, i64 0, metadata !348), !dbg !1026
  tail call void @llvm.dbg.value(metadata !1028, i64 0, metadata !349), !dbg !1026
  %0 = load i32* @left, align 4, !dbg !1029, !tbaa !371
  %cmp = icmp slt i32 %0, -1, !dbg !1029
  br i1 %cmp, label %if.then, label %if.end, !dbg !1029

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !1030, i64 0, metadata !1031), !dbg !1033
  tail call void @llvm.dbg.value(metadata !1030, i64 0, metadata !1034), !dbg !1035
  tail call void @llvm.dbg.value(metadata !1018, i64 0, metadata !1036), !dbg !1035
  store i32 0, i32* @left, align 4, !dbg !1037, !tbaa !371
  tail call void @llvm.dbg.value(metadata !1021, i64 0, metadata !1036), !dbg !1037
  store i32 4357, i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), align 16, !dbg !1037, !tbaa !371
  tail call void @llvm.dbg.value(metadata !1022, i64 0, metadata !1038), !dbg !1037
  tail call void @llvm.dbg.value(metadata !1023, i64 0, metadata !1038), !dbg !1037
  br label %for.inc.i, !dbg !1037

for.inc.i:                                        ; preds = %for.inc.i, %if.then
  %j.06.i = phi i32 [ 623, %if.then ], [ %phitmp.i, %for.inc.i ]
  %s.05.i = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 1), %if.then ], [ %incdec.ptr1.i, %for.inc.i ]
  %x.04.i = phi i32 [ 4357, %if.then ], [ %mul.i, %for.inc.i ]
  %mul.i = mul i32 %x.04.i, 69069, !dbg !1039
  tail call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !1034), !dbg !1039
  %incdec.ptr1.i = getelementptr inbounds i32* %s.05.i, i64 1, !dbg !1039
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr1.i}, i64 0, metadata !1036), !dbg !1039
  store i32 %mul.i, i32* %s.05.i, align 4, !dbg !1039, !tbaa !371
  %phitmp.i = add i32 %j.06.i, -1, !dbg !1039
  tail call void @llvm.dbg.value(metadata !{i32 %j.06.i}, i64 0, metadata !1038), !dbg !1037
  %tobool.i = icmp eq i32 %phitmp.i, 0, !dbg !1037
  br i1 %tobool.i, label %if.end, label %for.inc.i, !dbg !1037

if.end:                                           ; preds = %for.inc.i, %entry
  store i32 623, i32* @left, align 4, !dbg !1040, !tbaa !371
  store i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 1), i32** @next, align 8, !dbg !1040, !tbaa !570
  %1 = load i64* bitcast ([625 x i32]* @state to i64*), align 16, !dbg !1041
  %2 = trunc i64 %1 to i32, !dbg !1041
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !350), !dbg !1041
  tail call void @llvm.dbg.value(metadata !1043, i64 0, metadata !352), !dbg !1041
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  tail call void @llvm.dbg.value(metadata !1044, i64 0, metadata !352), !dbg !1041
  br label %for.body, !dbg !1041

for.body:                                         ; preds = %if.end, %for.body
  %s1.079 = phi i32 [ %4, %if.end ], [ %s1.0, %for.body ]
  %j.078 = phi i32 [ 227, %if.end ], [ %phitmp, %for.body ]
  %s0.077 = phi i32 [ %2, %if.end ], [ %s1.079, %for.body ]
  %pM.076 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 397), %if.end ], [ %incdec.ptr, %for.body ]
  %p2.075 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 2), %if.end ], [ %incdec.ptr6, %for.body ]
  %p0.074 = phi i32* [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), %if.end ], [ %incdec.ptr5, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %pM.076, i64 1, !dbg !1045
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !349), !dbg !1045
  %5 = load i32* %pM.076, align 4, !dbg !1045, !tbaa !371
  %and = and i32 %s0.077, -2147483648, !dbg !1045
  %and1 = and i32 %s1.079, 2147483646, !dbg !1045
  %or = or i32 %and1, %and, !dbg !1045
  %shr = lshr exact i32 %or, 1, !dbg !1045
  %and2 = and i32 %s1.079, 1, !dbg !1045
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1045
  %cond = select i1 %tobool3, i32 -1727483681, i32 0, !dbg !1045
  %xor = xor i32 %cond, %shr, !dbg !1045
  %xor4 = xor i32 %xor, %5, !dbg !1045
  %incdec.ptr5 = getelementptr inbounds i32* %p0.074, i64 1, !dbg !1045
  tail call void @llvm.dbg.value(metadata !1046, i64 0, metadata !347), !dbg !1045
  store i32 %xor4, i32* %p0.074, align 4, !dbg !1045, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %s1.0}, i64 0, metadata !350), !dbg !1041
  %incdec.ptr6 = getelementptr inbounds i32* %p2.075, i64 1, !dbg !1041
  tail call void @llvm.dbg.value(metadata !1047, i64 0, metadata !348), !dbg !1041
  %phitmp = add i32 %j.078, -1, !dbg !1041
  %s1.0 = load i32* %p2.075, align 4, !dbg !1041
  tail call void @llvm.dbg.value(metadata !{i32 %j.078}, i64 0, metadata !352), !dbg !1041
  %tobool = icmp eq i32 %phitmp, 0, !dbg !1041
  br i1 %tobool, label %for.body10, label %for.body, !dbg !1041

for.body10:                                       ; preds = %for.body, %for.body10
  %j.172 = phi i32 [ %phitmp66, %for.body10 ], [ 396, %for.body ]
  %s1.171 = phi i32 [ %7, %for.body10 ], [ %s1.0, %for.body ]
  %s0.170 = phi i32 [ %s1.171, %for.body10 ], [ %s1.079, %for.body ]
  %pM.169 = phi i32* [ %incdec.ptr11, %for.body10 ], [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), %for.body ]
  %p2.168 = phi i32* [ %incdec.ptr23, %for.body10 ], [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 229), %for.body ]
  %p0.167 = phi i32* [ %incdec.ptr21, %for.body10 ], [ getelementptr inbounds ([625 x i32]* @state, i64 0, i64 227), %for.body ]
  %incdec.ptr11 = getelementptr inbounds i32* %pM.169, i64 1, !dbg !1048
  tail call void @llvm.dbg.value(metadata !1050, i64 0, metadata !349), !dbg !1048
  %6 = load i32* %pM.169, align 4, !dbg !1048, !tbaa !371
  %and12 = and i32 %s0.170, -2147483648, !dbg !1048
  %and13 = and i32 %s1.171, 2147483646, !dbg !1048
  %or14 = or i32 %and13, %and12, !dbg !1048
  %shr15 = lshr exact i32 %or14, 1, !dbg !1048
  %and17 = and i32 %s1.171, 1, !dbg !1048
  %tobool18 = icmp ne i32 %and17, 0, !dbg !1048
  %cond19 = select i1 %tobool18, i32 -1727483681, i32 0, !dbg !1048
  %xor16 = xor i32 %cond19, %shr15, !dbg !1048
  %xor20 = xor i32 %xor16, %6, !dbg !1048
  %incdec.ptr21 = getelementptr inbounds i32* %p0.167, i64 1, !dbg !1048
  tail call void @llvm.dbg.value(metadata !1051, i64 0, metadata !347), !dbg !1048
  store i32 %xor20, i32* %p0.167, align 4, !dbg !1048, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %s1.171}, i64 0, metadata !350), !dbg !1052
  %incdec.ptr23 = getelementptr inbounds i32* %p2.168, i64 1, !dbg !1052
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr23}, i64 0, metadata !348), !dbg !1052
  %7 = load i32* %p2.168, align 4, !dbg !1052, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !351), !dbg !1052
  %phitmp66 = add i32 %j.172, -1, !dbg !1052
  tail call void @llvm.dbg.value(metadata !{i32 %j.172}, i64 0, metadata !352), !dbg !1052
  %tobool9 = icmp eq i32 %phitmp66, 0, !dbg !1052
  br i1 %tobool9, label %for.end24, label %for.body10, !dbg !1052

for.end24:                                        ; preds = %for.body10
  %8 = load i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 0), align 16, !dbg !1053, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !351), !dbg !1053
  %9 = load i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 396), align 16, !dbg !1053, !tbaa !371
  %and25 = and i32 %s1.171, -2147483648, !dbg !1053
  %and26 = and i32 %8, 2147483646, !dbg !1053
  %or27 = or i32 %and26, %and25, !dbg !1053
  %shr28 = lshr exact i32 %or27, 1, !dbg !1053
  %xor29 = xor i32 %shr28, %9, !dbg !1053
  %and30 = and i32 %8, 1, !dbg !1053
  %tobool31 = icmp ne i32 %and30, 0, !dbg !1053
  %cond32 = select i1 %tobool31, i32 -1727483681, i32 0, !dbg !1053
  %xor33 = xor i32 %xor29, %cond32, !dbg !1053
  store i32 %xor33, i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 623), align 4, !dbg !1053, !tbaa !371
  %shr34 = lshr i32 %8, 11, !dbg !1054
  %xor35 = xor i32 %shr34, %8, !dbg !1054
  tail call void @llvm.dbg.value(metadata !{i32 %xor35}, i64 0, metadata !351), !dbg !1054
  %shl = shl i32 %xor35, 7, !dbg !1055
  %and36 = and i32 %shl, -1658038656, !dbg !1055
  %xor37 = xor i32 %and36, %xor35, !dbg !1055
  tail call void @llvm.dbg.value(metadata !{i32 %xor37}, i64 0, metadata !351), !dbg !1055
  %shl38 = shl i32 %xor37, 15, !dbg !1056
  %and39 = and i32 %shl38, -272236544, !dbg !1056
  %xor40 = xor i32 %and39, %xor37, !dbg !1056
  tail call void @llvm.dbg.value(metadata !{i32 %xor40}, i64 0, metadata !351), !dbg !1056
  %shr41 = lshr i32 %xor40, 18, !dbg !1057
  %xor42 = xor i32 %shr41, %xor40, !dbg !1057
  ret i32 %xor42, !dbg !1057
}

; Function Attrs: nounwind optsize uwtable
define i32 @randomMT() #0 {
entry:
  %0 = load i32* @left, align 4, !dbg !1058, !tbaa !371
  %dec = add nsw i32 %0, -1, !dbg !1058
  store i32 %dec, i32* @left, align 4, !dbg !1058, !tbaa !371
  %cmp = icmp slt i32 %0, 1, !dbg !1058
  br i1 %cmp, label %if.then, label %if.end, !dbg !1058

if.then:                                          ; preds = %entry
  %call = tail call i32 @reloadMT() #14, !dbg !1059
  br label %return, !dbg !1059

if.end:                                           ; preds = %entry
  %1 = load i32** @next, align 8, !dbg !1060, !tbaa !570
  %incdec.ptr = getelementptr inbounds i32* %1, i64 1, !dbg !1060
  store i32* %incdec.ptr, i32** @next, align 8, !dbg !1060, !tbaa !570
  %2 = load i32* %1, align 4, !dbg !1060, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !355), !dbg !1060
  %shr = lshr i32 %2, 11, !dbg !1061
  %xor = xor i32 %shr, %2, !dbg !1061
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !355), !dbg !1061
  %shl = shl i32 %xor, 7, !dbg !1062
  %and = and i32 %shl, -1658038656, !dbg !1062
  %xor1 = xor i32 %and, %xor, !dbg !1062
  tail call void @llvm.dbg.value(metadata !{i32 %xor1}, i64 0, metadata !355), !dbg !1062
  %shl2 = shl i32 %xor1, 15, !dbg !1063
  %and3 = and i32 %shl2, -272236544, !dbg !1063
  %xor4 = xor i32 %and3, %xor1, !dbg !1063
  tail call void @llvm.dbg.value(metadata !{i32 %xor4}, i64 0, metadata !355), !dbg !1063
  %shr5 = lshr i32 %xor4, 18, !dbg !1064
  %xor6 = xor i32 %shr5, %xor4, !dbg !1064
  br label %return, !dbg !1064

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %xor6, %if.end ]
  ret i32 %retval.0, !dbg !1065
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #11

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #12

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize readnone }
attributes #16 = { nounwind optsize readonly }
attributes #17 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !356, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!24 = metadata !{metadata !25, metadata !34, metadata !67, metadata !79, metadata !150, metadata !158, metadata !164, metadata !182, metadata !193, metadata !200, metadata !213, metadata !225, metadata !234, metadata !243, metadata !246, metadata !254, metadata !263, metadata !269, metadata !272, metadata !276, metadata !285, metadata !288, metadata !289, metadata !295, metadata !300, metadata !315, metadata !316, metadata !329, metadata !333, metadata !343, metadata !353}
!25 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"allocate_time", metadata !"allocate_time", metadata !"", i32 30, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @allocate_time, null, null, metadata !30, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [allocate_time]
!26 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!30 = metadata !{metadata !31, metadata !33}
!31 = metadata !{i32 786688, metadata !25, metadata !"allocated_time", metadata !26, i32 36, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocated_time] [line 36]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786688, metadata !25, metadata !"move_speed", metadata !26, i32 36, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move_speed] [line 36]
!34 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"comp_to_san", metadata !"comp_to_san", metadata !"", i32 116, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i8*)* @comp_to_san, null, null, metadata !48, i32 117} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 117] [comp_to_san]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !37, metadata !46}
!37 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!38 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45}
!40 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!43 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!44 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!45 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!47 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!49 = metadata !{i32 786689, metadata !34, metadata !"move", metadata !26, i32 16777332, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [move] [line 116]
!50 = metadata !{i32 786689, metadata !34, metadata !"str", metadata !26, i32 33554548, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 116]
!51 = metadata !{i32 786688, metadata !34, metadata !"moves", metadata !26, i32 118, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 118]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 98304, i64 32, i32 0, i32 0, metadata !37, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 98304, align 32, offset 0] [from move_s]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 512}      ; [ DW_TAG_subrange_type ] [0, 511]
!55 = metadata !{i32 786688, metadata !34, metadata !"evade_moves", metadata !26, i32 119, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evade_moves] [line 119]
!56 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !26, i32 121, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 121]
!57 = metadata !{i32 786688, metadata !34, metadata !"num_moves", metadata !26, i32 121, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 121]
!58 = metadata !{i32 786688, metadata !34, metadata !"evasions", metadata !26, i32 121, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evasions] [line 121]
!59 = metadata !{i32 786688, metadata !34, metadata !"ambig", metadata !26, i32 121, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ambig] [line 121]
!60 = metadata !{i32 786688, metadata !34, metadata !"mate", metadata !26, i32 121, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mate] [line 121]
!61 = metadata !{i32 786688, metadata !34, metadata !"f_rank", metadata !26, i32 122, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f_rank] [line 122]
!62 = metadata !{i32 786688, metadata !34, metadata !"t_rank", metadata !26, i32 122, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t_rank] [line 122]
!63 = metadata !{i32 786688, metadata !34, metadata !"converter", metadata !26, i32 122, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [converter] [line 122]
!64 = metadata !{i32 786688, metadata !34, metadata !"f_file", metadata !26, i32 123, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f_file] [line 123]
!65 = metadata !{i32 786688, metadata !34, metadata !"t_file", metadata !26, i32 123, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t_file] [line 123]
!66 = metadata !{i32 786688, metadata !34, metadata !"ic", metadata !26, i32 124, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 124]
!67 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"comp_to_coord", metadata !"comp_to_coord", metadata !"", i32 276, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i8*)* @comp_to_coord, null, null, metadata !68, i32 276} ; [ DW_TAG_subprogram ] [line 276] [def] [comp_to_coord]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!69 = metadata !{i32 786689, metadata !67, metadata !"move", metadata !26, i32 16777492, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [move] [line 276]
!70 = metadata !{i32 786689, metadata !67, metadata !"str", metadata !26, i32 33554708, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 276]
!71 = metadata !{i32 786688, metadata !67, metadata !"prom", metadata !26, i32 280, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prom] [line 280]
!72 = metadata !{i32 786688, metadata !67, metadata !"from", metadata !26, i32 280, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 280]
!73 = metadata !{i32 786688, metadata !67, metadata !"target", metadata !26, i32 280, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 280]
!74 = metadata !{i32 786688, metadata !67, metadata !"f_rank", metadata !26, i32 280, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f_rank] [line 280]
!75 = metadata !{i32 786688, metadata !67, metadata !"t_rank", metadata !26, i32 280, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t_rank] [line 280]
!76 = metadata !{i32 786688, metadata !67, metadata !"converter", metadata !26, i32 280, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [converter] [line 280]
!77 = metadata !{i32 786688, metadata !67, metadata !"f_file", metadata !26, i32 281, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f_file] [line 281]
!78 = metadata !{i32 786688, metadata !67, metadata !"t_file", metadata !26, i32 281, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t_file] [line 281]
!79 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"display_board", metadata !"display_board", metadata !"", i32 331, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32)* @display_board, null, null, metadata !137, i32 331} ; [ DW_TAG_subprogram ] [line 331] [def] [display_board]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !82, metadata !29}
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!83 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!84 = metadata !{i32 786451, metadata !85, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!85 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !107, metadata !108, metadata !109, metadata !110, metadata !113, metadata !115, metadata !117, metadata !121, metadata !123, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !132, metadata !133}
!87 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!88 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!89 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!90 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!91 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!92 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!93 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!94 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!95 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!96 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!97 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!98 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!99 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !100} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!101 = metadata !{i32 786451, metadata !85, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !106}
!103 = metadata !{i32 786445, metadata !85, metadata !101, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786445, metadata !85, metadata !101, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !105} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!106 = metadata !{i32 786445, metadata !85, metadata !101, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!107 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !105} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!108 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !29} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!109 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !29} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!110 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !111} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!111 = metadata !{i32 786454, metadata !85, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!112 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!113 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !114} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!114 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!115 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !116} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!116 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!117 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !118} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!118 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !47, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!121 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !122} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !124} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!124 = metadata !{i32 786454, metadata !85, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!125 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!126 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!127 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!128 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!129 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!130 = metadata !{i32 786454, metadata !85, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!131 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!132 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !29} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!133 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !134} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!134 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !47, metadata !135, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !143, metadata !147, metadata !148, metadata !149}
!138 = metadata !{i32 786689, metadata !79, metadata !"stream", metadata !26, i32 16777547, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 331]
!139 = metadata !{i32 786689, metadata !79, metadata !"color", metadata !26, i32 33554763, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 331]
!140 = metadata !{i32 786688, metadata !79, metadata !"line_sep", metadata !26, i32 335, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line_sep] [line 335]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!142 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!143 = metadata !{i32 786688, metadata !79, metadata !"piece_rep", metadata !26, i32 336, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [piece_rep] [line 336]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 896, i64 64, i32 0, i32 0, metadata !141, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 896, align 64, offset 0] [from ]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 14}      ; [ DW_TAG_subrange_type ] [0, 13]
!147 = metadata !{i32 786688, metadata !79, metadata !"a", metadata !26, i32 338, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 338]
!148 = metadata !{i32 786688, metadata !79, metadata !"b", metadata !26, i32 338, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 338]
!149 = metadata !{i32 786688, metadata !79, metadata !"c", metadata !26, i32 338, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 338]
!150 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_game", metadata !"init_game", metadata !"", i32 370, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @init_game, null, null, metadata !153, i32 370} ; [ DW_TAG_subprogram ] [line 370] [def] [init_game]
!151 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!152 = metadata !{null}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786688, metadata !150, metadata !"init_board", metadata !26, i32 374, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init_board] [line 374]
!155 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !29, metadata !156, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4608, align 32, offset 0] [from int]
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786465, i64 0, i64 144}     ; [ DW_TAG_subrange_type ] [0, 143]
!158 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"is_move", metadata !"is_move", metadata !"", i32 423, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @is_move, null, null, metadata !162, i32 423} ; [ DW_TAG_subprogram ] [line 423] [def] [is_move]
!159 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !46}
!161 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!162 = metadata !{metadata !163}
!163 = metadata !{i32 786689, metadata !158, metadata !"str", metadata !26, i32 16777639, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 423]
!164 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"perft_debug", metadata !"perft_debug", metadata !"", i32 443, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @perft_debug, null, null, metadata !165, i32 443} ; [ DW_TAG_subprogram ] [line 443] [def] [perft_debug]
!165 = metadata !{metadata !166, metadata !170, metadata !171, metadata !172, metadata !173, metadata !177}
!166 = metadata !{i32 786688, metadata !164, metadata !"input", metadata !26, i32 448, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input] [line 448]
!167 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !47, metadata !168, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!170 = metadata !{i32 786688, metadata !164, metadata !"p", metadata !26, i32 448, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 448]
!171 = metadata !{i32 786688, metadata !164, metadata !"move", metadata !26, i32 449, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move] [line 449]
!172 = metadata !{i32 786688, metadata !164, metadata !"depth", metadata !26, i32 450, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depth] [line 450]
!173 = metadata !{i32 786688, metadata !174, metadata !"__res", metadata !26, i32 474, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 474]
!174 = metadata !{i32 786443, metadata !1, metadata !175, i32 474, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 474, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!176 = metadata !{i32 786443, metadata !1, metadata !164, i32 456, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!177 = metadata !{i32 786688, metadata !178, metadata !"__res", metadata !26, i32 486, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 486]
!178 = metadata !{i32 786443, metadata !1, metadata !179, i32 486, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!179 = metadata !{i32 786443, metadata !1, metadata !180, i32 486, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!180 = metadata !{i32 786443, metadata !1, metadata !181, i32 481, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!181 = metadata !{i32 786443, metadata !1, metadata !176, i32 479, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!182 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"hash_extract_pv", metadata !"hash_extract_pv", metadata !"", i32 497, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*)* @hash_extract_pv, null, null, metadata !185, i32 498} ; [ DW_TAG_subprogram ] [line 497] [def] [scope 498] [hash_extract_pv]
!183 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{null, metadata !29, metadata !46}
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!186 = metadata !{i32 786689, metadata !182, metadata !"level", metadata !26, i32 16777713, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 497]
!187 = metadata !{i32 786689, metadata !182, metadata !"str", metadata !26, i32 33554929, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 497]
!188 = metadata !{i32 786688, metadata !182, metadata !"xdummy", metadata !26, i32 499, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdummy] [line 499]
!189 = metadata !{i32 786688, metadata !182, metadata !"bm", metadata !26, i32 499, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bm] [line 499]
!190 = metadata !{i32 786688, metadata !182, metadata !"moves", metadata !26, i32 500, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 500]
!191 = metadata !{i32 786688, metadata !182, metadata !"num_moves", metadata !26, i32 501, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 501]
!192 = metadata !{i32 786688, metadata !182, metadata !"output", metadata !26, i32 502, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 502]
!193 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"stringize_pv", metadata !"stringize_pv", metadata !"", i32 529, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @stringize_pv, null, null, metadata !196, i32 530} ; [ DW_TAG_subprogram ] [line 529] [def] [scope 530] [stringize_pv]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{null, metadata !46}
!196 = metadata !{metadata !197, metadata !198, metadata !199}
!197 = metadata !{i32 786689, metadata !193, metadata !"str", metadata !26, i32 16777745, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 529]
!198 = metadata !{i32 786688, metadata !193, metadata !"output", metadata !26, i32 531, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 531]
!199 = metadata !{i32 786688, metadata !193, metadata !"i", metadata !26, i32 532, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 532]
!200 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"post_thinking", metadata !"post_thinking", metadata !"", i32 553, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @post_thinking, null, null, metadata !203, i32 553} ; [ DW_TAG_subprogram ] [line 553] [def] [post_thinking]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{null, metadata !29}
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211}
!204 = metadata !{i32 786689, metadata !200, metadata !"score", metadata !26, i32 16777769, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 553]
!205 = metadata !{i32 786688, metadata !200, metadata !"i", metadata !26, i32 557, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 557]
!206 = metadata !{i32 786688, metadata !200, metadata !"remake", metadata !26, i32 557, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [remake] [line 557]
!207 = metadata !{i32 786688, metadata !200, metadata !"nps", metadata !26, i32 557, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nps] [line 557]
!208 = metadata !{i32 786688, metadata !200, metadata !"elapsed", metadata !26, i32 558, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elapsed] [line 558]
!209 = metadata !{i32 786688, metadata !200, metadata !"output", metadata !26, i32 559, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 559]
!210 = metadata !{i32 786688, metadata !200, metadata !"hashpv", metadata !26, i32 560, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hashpv] [line 560]
!211 = metadata !{i32 786688, metadata !212, metadata !"dnps", metadata !26, i32 568, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dnps] [line 568]
!212 = metadata !{i32 786443, metadata !1, metadata !200, i32 567, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!213 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"post_fail_thinking", metadata !"post_fail_thinking", metadata !"", i32 613, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.move_s*)* @post_fail_thinking, null, null, metadata !217, i32 614} ; [ DW_TAG_subprogram ] [line 613] [def] [scope 614] [post_fail_thinking]
!214 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{null, metadata !29, metadata !216}
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from move_s]
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223}
!218 = metadata !{i32 786689, metadata !213, metadata !"score", metadata !26, i32 16777829, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 613]
!219 = metadata !{i32 786689, metadata !213, metadata !"failmove", metadata !26, i32 33555045, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [failmove] [line 613]
!220 = metadata !{i32 786688, metadata !213, metadata !"elapsed", metadata !26, i32 618, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elapsed] [line 618]
!221 = metadata !{i32 786688, metadata !213, metadata !"nps", metadata !26, i32 618, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nps] [line 618]
!222 = metadata !{i32 786688, metadata !213, metadata !"output", metadata !26, i32 619, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 619]
!223 = metadata !{i32 786688, metadata !224, metadata !"dnps", metadata !26, i32 625, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dnps] [line 625]
!224 = metadata !{i32 786443, metadata !1, metadata !213, i32 624, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!225 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"post_fh_thinking", metadata !"post_fh_thinking", metadata !"", i32 643, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.move_s*)* @post_fh_thinking, null, null, metadata !226, i32 644} ; [ DW_TAG_subprogram ] [line 643] [def] [scope 644] [post_fh_thinking]
!226 = metadata !{metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!227 = metadata !{i32 786689, metadata !225, metadata !"score", metadata !26, i32 16777859, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 643]
!228 = metadata !{i32 786689, metadata !225, metadata !"failmove", metadata !26, i32 33555075, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [failmove] [line 643]
!229 = metadata !{i32 786688, metadata !225, metadata !"elapsed", metadata !26, i32 647, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elapsed] [line 647]
!230 = metadata !{i32 786688, metadata !225, metadata !"nps", metadata !26, i32 647, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nps] [line 647]
!231 = metadata !{i32 786688, metadata !225, metadata !"output", metadata !26, i32 648, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 648]
!232 = metadata !{i32 786688, metadata !233, metadata !"dnps", metadata !26, i32 655, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dnps] [line 655]
!233 = metadata !{i32 786443, metadata !1, metadata !225, i32 654, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!234 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"post_fl_thinking", metadata !"post_fl_thinking", metadata !"", i32 672, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.move_s*)* @post_fl_thinking, null, null, metadata !235, i32 673} ; [ DW_TAG_subprogram ] [line 672] [def] [scope 673] [post_fl_thinking]
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241}
!236 = metadata !{i32 786689, metadata !234, metadata !"score", metadata !26, i32 16777888, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 672]
!237 = metadata !{i32 786689, metadata !234, metadata !"failmove", metadata !26, i32 33555104, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [failmove] [line 672]
!238 = metadata !{i32 786688, metadata !234, metadata !"elapsed", metadata !26, i32 676, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elapsed] [line 676]
!239 = metadata !{i32 786688, metadata !234, metadata !"nps", metadata !26, i32 676, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nps] [line 676]
!240 = metadata !{i32 786688, metadata !234, metadata !"output", metadata !26, i32 677, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 677]
!241 = metadata !{i32 786688, metadata !242, metadata !"dnps", metadata !26, i32 684, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dnps] [line 684]
!242 = metadata !{i32 786443, metadata !1, metadata !234, i32 683, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!243 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"post_stat_thinking", metadata !"post_stat_thinking", metadata !"", i32 701, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @post_stat_thinking, null, null, metadata !244, i32 702} ; [ DW_TAG_subprogram ] [line 701] [def] [scope 702] [post_stat_thinking]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786688, metadata !243, metadata !"elapsed", metadata !26, i32 705, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elapsed] [line 705]
!246 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"print_move", metadata !"print_move", metadata !"", i32 720, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i32, %struct._IO_FILE*)* @print_move, null, null, metadata !249, i32 720} ; [ DW_TAG_subprogram ] [line 720] [def] [print_move]
!247 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!248 = metadata !{null, metadata !216, metadata !29, metadata !82}
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253}
!250 = metadata !{i32 786689, metadata !246, metadata !"moves", metadata !26, i32 16777936, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 720]
!251 = metadata !{i32 786689, metadata !246, metadata !"m", metadata !26, i32 33555152, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 720]
!252 = metadata !{i32 786689, metadata !246, metadata !"stream", metadata !26, i32 50332368, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 720]
!253 = metadata !{i32 786688, metadata !246, metadata !"move", metadata !26, i32 724, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [move] [line 724]
!254 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"rdelay", metadata !"rdelay", metadata !"", i32 733, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @rdelay, null, null, metadata !255, i32 733} ; [ DW_TAG_subprogram ] [line 733] [def] [rdelay]
!255 = metadata !{metadata !256, metadata !257, metadata !261, metadata !262}
!256 = metadata !{i32 786689, metadata !254, metadata !"time_in_s", metadata !26, i32 16777949, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time_in_s] [line 733]
!257 = metadata !{i32 786688, metadata !254, metadata !"time1", metadata !26, i32 737, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time1] [line 737]
!258 = metadata !{i32 786454, metadata !1, null, metadata !"rtime_t", i32 161, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_typedef ] [rtime_t] [line 161, size 0, align 0, offset 0] [from time_t]
!259 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!260 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!261 = metadata !{i32 786688, metadata !254, metadata !"time2", metadata !26, i32 737, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time2] [line 737]
!262 = metadata !{i32 786688, metadata !254, metadata !"timer", metadata !26, i32 738, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 738]
!263 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"rdifftime", metadata !"rdifftime", metadata !"", i32 749, metadata !264, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64, i64)* @rdifftime, null, null, metadata !266, i32 749} ; [ DW_TAG_subprogram ] [line 749] [def] [rdifftime]
!264 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!265 = metadata !{metadata !29, metadata !258, metadata !258}
!266 = metadata !{metadata !267, metadata !268}
!267 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 749]
!268 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 749]
!269 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"check_piece_square", metadata !"check_piece_square", metadata !"", i32 763, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @check_piece_square, null, null, metadata !270, i32 764} ; [ DW_TAG_subprogram ] [line 763] [def] [scope 764] [check_piece_square]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786688, metadata !269, metadata !"i", metadata !26, i32 765, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 765]
!272 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"reset_piece_square", metadata !"reset_piece_square", metadata !"", i32 811, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @reset_piece_square, null, null, metadata !273, i32 811} ; [ DW_TAG_subprogram ] [line 811] [def] [reset_piece_square]
!273 = metadata !{metadata !274, metadata !275}
!274 = metadata !{i32 786688, metadata !272, metadata !"i", metadata !26, i32 818, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 818]
!275 = metadata !{i32 786688, metadata !272, metadata !"promoted_board", metadata !26, i32 818, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [promoted_board] [line 818]
!276 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"rinput", metadata !"rinput", metadata !"", i32 856, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, %struct._IO_FILE*)* @rinput, null, null, metadata !279, i32 856} ; [ DW_TAG_subprogram ] [line 856] [def] [rinput]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{null, metadata !46, metadata !29, metadata !82}
!279 = metadata !{metadata !280, metadata !281, metadata !282, metadata !283, metadata !284}
!280 = metadata !{i32 786689, metadata !276, metadata !"str", metadata !26, i32 16778072, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 856]
!281 = metadata !{i32 786689, metadata !276, metadata !"n", metadata !26, i32 33555288, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 856]
!282 = metadata !{i32 786689, metadata !276, metadata !"stream", metadata !26, i32 50332504, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 856]
!283 = metadata !{i32 786688, metadata !276, metadata !"ch", metadata !26, i32 862, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 862]
!284 = metadata !{i32 786688, metadata !276, metadata !"i", metadata !26, i32 862, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 862]
!285 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"rtime", metadata !"rtime", metadata !"", i32 874, metadata !286, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 ()* @rtime, null, null, metadata !23, i32 874} ; [ DW_TAG_subprogram ] [line 874] [def] [rtime]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{metadata !258}
!288 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"start_up", metadata !"start_up", metadata !"", i32 902, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @start_up, null, null, metadata !23, i32 902} ; [ DW_TAG_subprogram ] [line 902] [def] [start_up]
!289 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"toggle_bool", metadata !"toggle_bool", metadata !"", i32 910, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @toggle_bool, null, null, metadata !293, i32 910} ; [ DW_TAG_subprogram ] [line 910] [def] [toggle_bool]
!290 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{null, metadata !292}
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xbool]
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786689, metadata !289, metadata !"var", metadata !26, i32 16778126, metadata !292, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 910]
!295 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"tree_debug", metadata !"tree_debug", metadata !"", i32 924, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @tree_debug, null, null, metadata !296, i32 924} ; [ DW_TAG_subprogram ] [line 924] [def] [tree_debug]
!296 = metadata !{metadata !297, metadata !298, metadata !299}
!297 = metadata !{i32 786688, metadata !295, metadata !"input", metadata !26, i32 929, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input] [line 929]
!298 = metadata !{i32 786688, metadata !295, metadata !"stream", metadata !26, i32 930, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stream] [line 930]
!299 = metadata !{i32 786688, metadata !295, metadata !"depth", metadata !26, i32 931, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depth] [line 931]
!300 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"verify_coord", metadata !"verify_coord", metadata !"", i32 967, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.move_s*)* @verify_coord, null, null, metadata !303, i32 967} ; [ DW_TAG_subprogram ] [line 967] [def] [verify_coord]
!301 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{metadata !161, metadata !46, metadata !216}
!303 = metadata !{metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !313, metadata !314}
!304 = metadata !{i32 786689, metadata !300, metadata !"input", metadata !26, i32 16778183, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [input] [line 967]
!305 = metadata !{i32 786689, metadata !300, metadata !"move", metadata !26, i32 33555399, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [move] [line 967]
!306 = metadata !{i32 786688, metadata !300, metadata !"moves", metadata !26, i32 972, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 972]
!307 = metadata !{i32 786688, metadata !300, metadata !"num_moves", metadata !26, i32 973, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 973]
!308 = metadata !{i32 786688, metadata !300, metadata !"i", metadata !26, i32 973, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 973]
!309 = metadata !{i32 786688, metadata !300, metadata !"comp_move", metadata !26, i32 974, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp_move] [line 974]
!310 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !47, metadata !311, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!311 = metadata !{metadata !312}
!312 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!313 = metadata !{i32 786688, metadata !300, metadata !"legal", metadata !26, i32 975, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [legal] [line 975]
!314 = metadata !{i32 786688, metadata !300, metadata !"mate", metadata !26, i32 976, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mate] [line 976]
!315 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"interrupt", metadata !"interrupt", metadata !"", i32 1035, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @interrupt, null, null, metadata !23, i32 1036} ; [ DW_TAG_subprogram ] [line 1035] [def] [scope 1036] [interrupt]
!316 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"PutPiece", metadata !"PutPiece", metadata !"", i32 1042, metadata !317, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8, i8, i32)* @PutPiece, null, null, metadata !319, i32 1043} ; [ DW_TAG_subprogram ] [line 1042] [def] [scope 1043] [PutPiece]
!317 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{null, metadata !29, metadata !47, metadata !47, metadata !29}
!319 = metadata !{metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328}
!320 = metadata !{i32 786689, metadata !316, metadata !"color", metadata !26, i32 16778258, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 1042]
!321 = metadata !{i32 786689, metadata !316, metadata !"piece", metadata !26, i32 33555474, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [piece] [line 1042]
!322 = metadata !{i32 786689, metadata !316, metadata !"pfile", metadata !26, i32 50332690, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pfile] [line 1042]
!323 = metadata !{i32 786689, metadata !316, metadata !"prank", metadata !26, i32 67109906, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prank] [line 1042]
!324 = metadata !{i32 786688, metadata !316, metadata !"converterf", metadata !26, i32 1044, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [converterf] [line 1044]
!325 = metadata !{i32 786688, metadata !316, metadata !"converterr", metadata !26, i32 1045, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [converterr] [line 1045]
!326 = metadata !{i32 786688, metadata !316, metadata !"norm_file", metadata !26, i32 1046, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_file] [line 1046]
!327 = metadata !{i32 786688, metadata !316, metadata !"norm_rank", metadata !26, i32 1046, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_rank] [line 1046]
!328 = metadata !{i32 786688, metadata !316, metadata !"norm_square", metadata !26, i32 1046, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_square] [line 1046]
!329 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"reset_board", metadata !"reset_board", metadata !"", i32 1111, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @reset_board, null, null, metadata !330, i32 1111} ; [ DW_TAG_subprogram ] [line 1111] [def] [reset_board]
!330 = metadata !{metadata !331, metadata !332}
!331 = metadata !{i32 786688, metadata !329, metadata !"i", metadata !26, i32 1115, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1115]
!332 = metadata !{i32 786688, metadata !329, metadata !"init_board", metadata !26, i32 1117, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init_board] [line 1117]
!333 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"seedMT", metadata !"seedMT", metadata !"", i32 1157, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @seedMT, null, null, metadata !337, i32 1158} ; [ DW_TAG_subprogram ] [line 1157] [def] [scope 1158] [seedMT]
!334 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{null, metadata !336}
!336 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !342}
!338 = metadata !{i32 786689, metadata !333, metadata !"seed", metadata !26, i32 16778373, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 1157]
!339 = metadata !{i32 786688, metadata !333, metadata !"x", metadata !26, i32 1159, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 1159]
!340 = metadata !{i32 786688, metadata !333, metadata !"s", metadata !26, i32 1159, metadata !341, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1159]
!341 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!342 = metadata !{i32 786688, metadata !333, metadata !"j", metadata !26, i32 1160, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1160]
!343 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"reloadMT", metadata !"reloadMT", metadata !"", i32 1166, metadata !344, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @reloadMT, null, null, metadata !346, i32 1167} ; [ DW_TAG_subprogram ] [line 1166] [def] [scope 1167] [reloadMT]
!344 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!345 = metadata !{metadata !336}
!346 = metadata !{metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352}
!347 = metadata !{i32 786688, metadata !343, metadata !"p0", metadata !26, i32 1168, metadata !341, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p0] [line 1168]
!348 = metadata !{i32 786688, metadata !343, metadata !"p2", metadata !26, i32 1168, metadata !341, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2] [line 1168]
!349 = metadata !{i32 786688, metadata !343, metadata !"pM", metadata !26, i32 1168, metadata !341, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pM] [line 1168]
!350 = metadata !{i32 786688, metadata !343, metadata !"s0", metadata !26, i32 1168, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s0] [line 1168]
!351 = metadata !{i32 786688, metadata !343, metadata !"s1", metadata !26, i32 1168, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 1168]
!352 = metadata !{i32 786688, metadata !343, metadata !"j", metadata !26, i32 1169, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1169]
!353 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"randomMT", metadata !"randomMT", metadata !"", i32 1189, metadata !344, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @randomMT, null, null, metadata !354, i32 1190} ; [ DW_TAG_subprogram ] [line 1189] [def] [scope 1190] [randomMT]
!354 = metadata !{metadata !355}
!355 = metadata !{i32 786688, metadata !353, metadata !"y", metadata !26, i32 1191, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 1191]
!356 = metadata !{metadata !357, metadata !358, metadata !361, metadata !362, metadata !366}
!357 = metadata !{i32 786484, i32 0, null, metadata !"left", metadata !"left", metadata !"", metadata !26, i32 28, metadata !29, i32 0, i32 1, i32* @left, null} ; [ DW_TAG_variable ] [left] [line 28] [def]
!358 = metadata !{i32 786484, i32 0, metadata !34, metadata !"type_to_char", metadata !"type_to_char", metadata !"", metadata !26, i32 120, metadata !359, i32 1, i32 1, [14 x i32]* @comp_to_san.type_to_char, null} ; [ DW_TAG_variable ] [type_to_char] [line 120] [local] [def]
!359 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !360, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from ]
!360 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!361 = metadata !{i32 786484, i32 0, metadata !67, metadata !"type_to_char", metadata !"type_to_char", metadata !"", metadata !26, i32 283, metadata !359, i32 1, i32 1, [14 x i32]* @comp_to_coord.type_to_char, null} ; [ DW_TAG_variable ] [type_to_char] [line 283] [local] [def]
!362 = metadata !{i32 786484, i32 0, null, metadata !"state", metadata !"state", metadata !"", metadata !26, i32 26, metadata !363, i32 1, i32 1, [625 x i32]* @state, null} ; [ DW_TAG_variable ] [state] [line 26] [local] [def]
!363 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 20000, i64 32, i32 0, i32 0, metadata !336, metadata !364, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 20000, align 32, offset 0] [from unsigned int]
!364 = metadata !{metadata !365}
!365 = metadata !{i32 786465, i64 0, i64 625}     ; [ DW_TAG_subrange_type ] [0, 624]
!366 = metadata !{i32 786484, i32 0, null, metadata !"next", metadata !"next", metadata !"", metadata !26, i32 27, metadata !341, i32 1, i32 1, i32** @next, null} ; [ DW_TAG_variable ] [next] [line 27] [local] [def]
!367 = metadata !{double 0.000000e+00}
!368 = metadata !{i32 36, i32 0, metadata !25, null}
!369 = metadata !{double 2.000000e+01}
!370 = metadata !{i32 39, i32 0, metadata !25, null}
!371 = metadata !{metadata !"int", metadata !372}
!372 = metadata !{metadata !"omnipotent char", metadata !373}
!373 = metadata !{metadata !"Simple C/C++ TBAA"}
!374 = metadata !{i32 91, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !25, i32 90, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!376 = metadata !{i32 48, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !25, i32 39, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!378 = metadata !{i32 51, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !377, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!380 = metadata !{i32 53, i32 0, metadata !379, null}
!381 = metadata !{i32 55, i32 0, metadata !379, null}
!382 = metadata !{double 2.500000e+01}
!383 = metadata !{i32 56, i32 0, metadata !379, null}
!384 = metadata !{i32 59, i32 0, metadata !377, null}
!385 = metadata !{i32 61, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !377, i32 60, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!387 = metadata !{i32 62, i32 0, metadata !386, null}
!388 = metadata !{i32 63, i32 0, metadata !386, null}
!389 = metadata !{i32 64, i32 0, metadata !386, null}
!390 = metadata !{i32 66, i32 0, metadata !377, null}
!391 = metadata !{i32 68, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !377, i32 67, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!393 = metadata !{i32 69, i32 0, metadata !392, null}
!394 = metadata !{i32 72, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !377, i32 71, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!396 = metadata !{i32 73, i32 0, metadata !395, null}
!397 = metadata !{i32 76, i32 0, metadata !377, null}
!398 = metadata !{i32 79, i32 0, metadata !377, null}
!399 = metadata !{i32 80, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !377, i32 79, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!401 = metadata !{i32 81, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !400, i32 80, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!403 = metadata !{i32 82, i32 0, metadata !402, null}
!404 = metadata !{i32 83, i32 0, metadata !400, null}
!405 = metadata !{i32 84, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !400, i32 83, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!407 = metadata !{i32 85, i32 0, metadata !406, null}
!408 = metadata !{i32 95, i32 0, metadata !375, null}
!409 = metadata !{i32 96, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !375, i32 95, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!411 = metadata !{i32 97, i32 0, metadata !410, null}
!412 = metadata !{i32 98, i32 0, metadata !410, null}
!413 = metadata !{i32 101, i32 0, metadata !25, null}
!414 = metadata !{i32 103, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !25, i32 102, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!416 = metadata !{i32 105, i32 0, metadata !415, null}
!417 = metadata !{i32 108, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !415, i32 106, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!419 = metadata !{i32 109, i32 0, metadata !418, null}
!420 = metadata !{i32 112, i32 0, metadata !25, null}
!421 = metadata !{i32 116, i32 0, metadata !34, null}
!422 = metadata !{i32 118, i32 0, metadata !34, null}
!423 = metadata !{i32 119, i32 0, metadata !34, null}
!424 = metadata !{i32 126, i32 0, metadata !34, null}
!425 = metadata !{i32 127, i32 0, metadata !34, null}
!426 = metadata !{i32 97}
!427 = metadata !{i32 128, i32 0, metadata !34, null}
!428 = metadata !{i32 129, i32 0, metadata !34, null}
!429 = metadata !{i32 130, i32 0, metadata !34, null}
!430 = metadata !{i32 132, i32 0, metadata !34, null}
!431 = metadata !{i32 134, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !34, i32 133, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!433 = metadata !{i32 135, i32 0, metadata !432, null}
!434 = metadata !{i32 136, i32 0, metadata !34, null}
!435 = metadata !{i32 138, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !34, i32 137, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!437 = metadata !{i32 140, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 139, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!439 = metadata !{i32 146, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !438, i32 145, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!441 = metadata !{i32 142, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !438, i32 141, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!443 = metadata !{i32 143, i32 0, metadata !442, null}
!444 = metadata !{i32 151, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !436, i32 150, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!446 = metadata !{i32 157, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !445, i32 156, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!448 = metadata !{i32 153, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !445, i32 152, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!450 = metadata !{i32 154, i32 0, metadata !449, null}
!451 = metadata !{i32 162, i32 0, metadata !34, null}
!452 = metadata !{i32 166, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !454, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!454 = metadata !{i32 786443, metadata !1, metadata !34, i32 163, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!455 = metadata !{i32 167, i32 0, metadata !453, null}
!456 = metadata !{i32 170, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !454, i32 169, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!458 = metadata !{i32 -1}
!459 = metadata !{i32 175, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !34, i32 174, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!461 = metadata !{i32 176, i32 0, metadata !460, null}
!462 = metadata !{i32 178, i32 0, metadata !460, null}
!463 = metadata !{i32 179, i32 0, metadata !460, null}
!464 = metadata !{i32 181, i32 0, metadata !460, null}
!465 = metadata !{i32 185, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !460, i32 185, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!467 = metadata !{i32 206, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !460, i32 204, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!469 = metadata !{i32 203, i32 0, metadata !460, null}
!470 = metadata !{i32 187, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !466, i32 186, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!472 = metadata !{i32 192, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !471, i32 190, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!474 = metadata !{i32 193, i32 0, metadata !473, null}
!475 = metadata !{i32 195, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !473, i32 194, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!477 = metadata !{i32 208, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !468, i32 207, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!479 = metadata !{i32 209, i32 0, metadata !478, null}
!480 = metadata !{i32 212, i32 0, metadata !478, null}
!481 = metadata !{i32 217, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !468, i32 216, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!483 = metadata !{i32 218, i32 0, metadata !482, null}
!484 = metadata !{i32 221, i32 0, metadata !482, null}
!485 = metadata !{i32 229, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !487, i32 228, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!487 = metadata !{i32 786443, metadata !1, metadata !460, i32 226, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!488 = metadata !{i32 227, i32 0, metadata !487, null}
!489 = metadata !{i32 231, i32 0, metadata !486, null}
!490 = metadata !{i32 234, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !487, i32 233, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!492 = metadata !{i32 240, i32 0, metadata !34, null}
!493 = metadata !{i32 242, i32 0, metadata !34, null}
!494 = metadata !{i32 244, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !34, i32 243, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!496 = metadata !{i32 245, i32 0, metadata !495, null}
!497 = metadata !{i32 246, i32 0, metadata !495, null}
!498 = metadata !{i32 249, i32 0, metadata !34, null}
!499 = metadata !{i32 1}
!500 = metadata !{i32 251, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !34, i32 250, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!502 = metadata !{i32 252, i32 0, metadata !501, null}
!503 = metadata !{i32 253, i32 0, metadata !501, null}
!504 = metadata !{i32 254, i32 0, metadata !501, null}
!505 = metadata !{i32 256, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !501, i32 256, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!507 = metadata !{i32 258, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !506, i32 257, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!509 = metadata !{i32 259, i32 0, metadata !508, null}
!510 = metadata !{i32 265, i32 0, metadata !508, null}
!511 = metadata !{i32 268, i32 0, metadata !501, null}
!512 = metadata !{i32 270, i32 0, metadata !501, null}
!513 = metadata !{i32 272, i32 0, metadata !34, null}
!514 = metadata !{i32 274, i32 0, metadata !34, null}
!515 = metadata !{i32 276, i32 0, metadata !67, null}
!516 = metadata !{i32 285, i32 0, metadata !67, null}
!517 = metadata !{i32 286, i32 0, metadata !67, null}
!518 = metadata !{i32 289, i32 0, metadata !67, null}
!519 = metadata !{i32 290, i32 0, metadata !67, null}
!520 = metadata !{i32 291, i32 0, metadata !67, null}
!521 = metadata !{i32 292, i32 0, metadata !67, null}
!522 = metadata !{i32 293, i32 0, metadata !67, null}
!523 = metadata !{i32 296, i32 0, metadata !67, null}
!524 = metadata !{i32 298, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !67, i32 297, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!526 = metadata !{i32 299, i32 0, metadata !525, null}
!527 = metadata !{i32 303, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !67, i32 301, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!529 = metadata !{i32 304, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 303, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!531 = metadata !{i32 305, i32 0, metadata !530, null}
!532 = metadata !{i32 309, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !528, i32 308, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!534 = metadata !{i32 310, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !533, i32 309, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!536 = metadata !{i32 311, i32 0, metadata !535, null}
!537 = metadata !{i32 312, i32 0, metadata !533, null}
!538 = metadata !{i32 313, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !533, i32 312, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!540 = metadata !{i32 314, i32 0, metadata !539, null}
!541 = metadata !{i32 315, i32 0, metadata !533, null}
!542 = metadata !{i32 316, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !533, i32 315, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!544 = metadata !{i32 317, i32 0, metadata !543, null}
!545 = metadata !{i32 318, i32 0, metadata !533, null}
!546 = metadata !{i32 320, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !533, i32 319, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!548 = metadata !{i32 321, i32 0, metadata !547, null}
!549 = metadata !{i32 324, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !533, i32 323, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!551 = metadata !{i32 328, i32 0, metadata !67, null}
!552 = metadata !{i32 331, i32 0, metadata !79, null}
!553 = metadata !{null}
!554 = metadata !{i32 335, i32 0, metadata !79, null}
!555 = metadata !{[14 x i8*]* @display_board.piece_rep}
!556 = metadata !{i32 336, i32 0, metadata !79, null}
!557 = metadata !{i32 340, i32 0, metadata !79, null}
!558 = metadata !{i32 341, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !79, i32 340, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!560 = metadata !{i32 342, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !559, i32 342, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!562 = metadata !{i32 343, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !561, i32 342, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!564 = metadata !{i32 344, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !563, i32 344, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!566 = metadata !{i32 345, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !565, i32 344, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!568 = metadata !{i32 346, i32 0, metadata !567, null}
!569 = metadata !{i32 347, i32 0, metadata !567, null}
!570 = metadata !{metadata !"any pointer", metadata !372}
!571 = metadata !{i32 349, i32 0, metadata !563, null}
!572 = metadata !{i32 351, i32 0, metadata !559, null}
!573 = metadata !{i32 352, i32 0, metadata !559, null}
!574 = metadata !{i32 357, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !576, i32 356, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!576 = metadata !{i32 786443, metadata !1, metadata !577, i32 356, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!577 = metadata !{i32 786443, metadata !1, metadata !79, i32 354, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!578 = metadata !{i32 358, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !575, i32 358, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!580 = metadata !{i32 359, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !579, i32 358, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!582 = metadata !{i32 360, i32 0, metadata !581, null}
!583 = metadata !{i32 361, i32 0, metadata !581, null}
!584 = metadata !{i32 363, i32 0, metadata !575, null}
!585 = metadata !{i32 356, i32 0, metadata !576, null}
!586 = metadata !{i32 365, i32 0, metadata !577, null}
!587 = metadata !{i32 368, i32 0, metadata !79, null}
!588 = metadata !{[144 x i32]* @init_game.init_board}
!589 = metadata !{i32 374, i32 0, metadata !150, null}
!590 = metadata !{i32 389, i32 0, metadata !150, null}
!591 = metadata !{i32 390, i32 0, metadata !150, null}
!592 = metadata !{i32 392, i32 0, metadata !150, null}
!593 = metadata !{i32 393, i32 0, metadata !150, null}
!594 = metadata !{i32 394, i32 0, metadata !150, null}
!595 = metadata !{i32 395, i32 0, metadata !150, null}
!596 = metadata !{i32 396, i32 0, metadata !150, null}
!597 = metadata !{i32 397, i32 0, metadata !150, null}
!598 = metadata !{i32 399, i32 0, metadata !150, null}
!599 = metadata !{i32 400, i32 0, metadata !150, null}
!600 = metadata !{i32 402, i32 0, metadata !150, null}
!601 = metadata !{i32 404, i32 0, metadata !150, null}
!602 = metadata !{i32 406, i32 0, metadata !150, null}
!603 = metadata !{i32 407, i32 0, metadata !150, null}
!604 = metadata !{i32 409, i32 0, metadata !150, null}
!605 = metadata !{i32 410, i32 0, metadata !150, null}
!606 = metadata !{i32 412, i32 0, metadata !150, null}
!607 = metadata !{i32 414, i32 0, metadata !150, null}
!608 = metadata !{i32 415, i32 0, metadata !150, null}
!609 = metadata !{i32 416, i32 0, metadata !150, null}
!610 = metadata !{i32 417, i32 0, metadata !150, null}
!611 = metadata !{i32 419, i32 0, metadata !150, null}
!612 = metadata !{i32 420, i32 0, metadata !150, null}
!613 = metadata !{i32 818, i32 0, metadata !272, null}
!614 = metadata !{i32 820, i32 0, metadata !272, null}
!615 = metadata !{i32 824, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !272, i32 824, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!617 = metadata !{i32 825, i32 0, metadata !616, null}
!618 = metadata !{i32 826, i32 0, metadata !616, null}
!619 = metadata !{i32 828, i32 0, metadata !272, null}
!620 = metadata !{i32 830, i32 0, metadata !272, null}
!621 = metadata !{i32 832, i32 0, metadata !272, null}
!622 = metadata !{i32 833, i32 0, metadata !272, null}
!623 = metadata !{i32 835, i32 0, metadata !272, null}
!624 = metadata !{i32 26}
!625 = metadata !{i32 837, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !1, metadata !272, i32 837, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!627 = metadata !{i32 838, i32 0, metadata !626, null}
!628 = metadata !{i32 840, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !626, i32 838, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!630 = metadata !{i32 842, i32 0, metadata !629, null}
!631 = metadata !{i32 844, i32 0, metadata !629, null}
!632 = metadata !{i32 845, i32 0, metadata !629, null}
!633 = metadata !{i32 848, i32 0, metadata !629, null}
!634 = metadata !{i32 849, i32 0, metadata !629, null}
!635 = metadata !{i32 852, i32 0, metadata !626, null}
!636 = metadata !{i32 853, i32 0, metadata !272, null}
!637 = metadata !{i32 423, i32 0, metadata !158, null}
!638 = metadata !{i32 428, i32 0, metadata !158, null}
!639 = metadata !{metadata !"short", metadata !372}
!640 = metadata !{i32 429, i32 0, metadata !158, null}
!641 = metadata !{i32 432, i32 0, metadata !158, null}
!642 = metadata !{i32 437, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !158, i32 436, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!644 = metadata !{i32 437, i32 0, metadata !158, null}
!645 = metadata !{i32 448, i32 0, metadata !164, null}
!646 = metadata !{i32 449, i32 0, metadata !164, null}
!647 = metadata !{i32 452, i32 0, metadata !164, null}
!648 = metadata !{i32 456, i32 0, metadata !164, null}
!649 = metadata !{i32 458, i32 0, metadata !176, null}
!650 = metadata !{i32 459, i32 0, metadata !176, null}
!651 = metadata !{i32 460, i32 0, metadata !176, null}
!652 = metadata !{i32 463, i32 0, metadata !176, null}
!653 = metadata !{i32 464, i32 0, metadata !176, null}
!654 = metadata !{i32 465, i32 0, metadata !176, null}
!655 = metadata !{i32 468, i32 0, metadata !176, null}
!656 = metadata !{i32 470, i32 0, metadata !176, null}
!657 = metadata !{i32 471, i32 0, metadata !176, null}
!658 = metadata !{i32 474, i32 0, metadata !175, null}
!659 = metadata !{i32 474, i32 0, metadata !174, null}
!660 = metadata !{i32 475, i32 0, metadata !176, null}
!661 = metadata !{i32 476, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !176, i32 475, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!663 = metadata !{i32 479, i32 0, metadata !176, null}
!664 = metadata !{i32 482, i32 0, metadata !180, null}
!665 = metadata !{i32 483, i32 0, metadata !180, null}
!666 = metadata !{i32 486, i32 0, metadata !179, null}
!667 = metadata !{i32 486, i32 0, metadata !178, null}
!668 = metadata !{i32 487, i32 0, metadata !180, null}
!669 = metadata !{i32 488, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !180, i32 487, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!671 = metadata !{i32 490, i32 0, metadata !181, null}
!672 = metadata !{i32 493, i32 0, metadata !176, null}
!673 = metadata !{i32 494, i32 0, metadata !176, null}
!674 = metadata !{i32 856, i32 0, metadata !276, null}
!675 = metadata !{i32 862, i32 0, metadata !276, null}
!676 = metadata !{i32 865, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !276, i32 864, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!678 = metadata !{i32 864, i32 0, metadata !276, null}
!679 = metadata !{i32 866, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !677, i32 865, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!681 = metadata !{i32 867, i32 0, metadata !680, null}
!682 = metadata !{i32 870, i32 0, metadata !276, null}
!683 = metadata !{i32 872, i32 0, metadata !276, null}
!684 = metadata !{i32 967, i32 0, metadata !300, null}
!685 = metadata !{i32 972, i32 0, metadata !300, null}
!686 = metadata !{i32 974, i32 0, metadata !300, null}
!687 = metadata !{i32 975, i32 0, metadata !300, null}
!688 = metadata !{i32 978, i32 0, metadata !300, null}
!689 = metadata !{i32 980, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !300, i32 979, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!691 = metadata !{i32 981, i32 0, metadata !690, null}
!692 = metadata !{i32 982, i32 0, metadata !690, null}
!693 = metadata !{i32 983, i32 0, metadata !690, null}
!694 = metadata !{i32 984, i32 0, metadata !690, null}
!695 = metadata !{i32 986, i32 0, metadata !690, null}
!696 = metadata !{i32 988, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !690, i32 988, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!698 = metadata !{i32 990, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !697, i32 989, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!700 = metadata !{i32 993, i32 0, metadata !699, null}
!701 = metadata !{i32 1000, i32 0, metadata !699, null}
!702 = metadata !{i32 1006, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !690, i32 1004, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!704 = metadata !{i32 1007, i32 0, metadata !703, null}
!705 = metadata !{i32 1008, i32 0, metadata !703, null}
!706 = metadata !{i32 1009, i32 0, metadata !703, null}
!707 = metadata !{i32 1010, i32 0, metadata !703, null}
!708 = metadata !{i32 1014, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !300, i32 1013, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!710 = metadata !{i32 1015, i32 0, metadata !709, null}
!711 = metadata !{i32 1019, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !300, i32 1019, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!713 = metadata !{i32 1020, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !712, i32 1019, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!715 = metadata !{i32 1022, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !714, i32 1021, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!717 = metadata !{i32 1025, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !716, i32 1023, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!719 = metadata !{i32 1021, i32 0, metadata !714, null}
!720 = metadata !{i32 1023, i32 0, metadata !716, null}
!721 = metadata !{i32 1024, i32 0, metadata !718, null}
!722 = metadata !{i64 0, i64 4, metadata !371, i64 4, i64 4, metadata !371, i64 8, i64 4, metadata !371, i64 12, i64 4, metadata !371, i64 16, i64 4, metadata !371, i64 20, i64 4, metadata !371}
!723 = metadata !{i32 1026, i32 0, metadata !718, null}
!724 = metadata !{i32 1027, i32 0, metadata !716, null}
!725 = metadata !{i32 1028, i32 0, metadata !716, null}
!726 = metadata !{i32 1033, i32 0, metadata !300, null}
!727 = metadata !{i32 497, i32 0, metadata !182, null}
!728 = metadata !{i32 499, i32 0, metadata !182, null}
!729 = metadata !{i32 500, i32 0, metadata !182, null}
!730 = metadata !{i32 502, i32 0, metadata !182, null}
!731 = metadata !{i32 505, i32 0, metadata !182, null}
!732 = metadata !{i32 506, i32 0, metadata !182, null}
!733 = metadata !{i32 508, i32 0, metadata !182, null}
!734 = metadata !{i32 510, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !182, i32 509, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!736 = metadata !{i32 512, i32 0, metadata !735, null}
!737 = metadata !{i32 511, i32 0, metadata !735, null}
!738 = metadata !{i32 514, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !735, i32 513, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!740 = metadata !{i32 515, i32 0, metadata !739, null}
!741 = metadata !{i32 516, i32 0, metadata !739, null}
!742 = metadata !{i32 519, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !739, i32 517, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!744 = metadata !{i32 520, i32 0, metadata !743, null}
!745 = metadata !{i32 521, i32 0, metadata !743, null}
!746 = metadata !{i32 522, i32 0, metadata !743, null}
!747 = metadata !{i32 523, i32 0, metadata !743, null}
!748 = metadata !{i32 524, i32 0, metadata !739, null}
!749 = metadata !{i32 525, i32 0, metadata !739, null}
!750 = metadata !{i32 524, i32 0, metadata !182, null}
!751 = metadata !{i32 527, i32 0, metadata !182, null}
!752 = metadata !{i32 529, i32 0, metadata !193, null}
!753 = metadata !{i32 531, i32 0, metadata !193, null}
!754 = metadata !{i32 534, i32 0, metadata !193, null}
!755 = metadata !{i32 536, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !193, i32 536, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!757 = metadata !{i32 538, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !756, i32 537, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!759 = metadata !{i32 539, i32 0, metadata !758, null}
!760 = metadata !{i32 540, i32 0, metadata !758, null}
!761 = metadata !{i32 541, i32 0, metadata !758, null}
!762 = metadata !{i32 544, i32 0, metadata !193, null}
!763 = metadata !{i32 546, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !193, i32 546, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!765 = metadata !{i32 548, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !764, i32 547, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!767 = metadata !{i32 551, i32 0, metadata !193, null}
!768 = metadata !{i32 553, i32 0, metadata !200, null}
!769 = metadata !{i32 557, i32 0, metadata !200, null}
!770 = metadata !{i32 559, i32 0, metadata !200, null}
!771 = metadata !{i32 560, i32 0, metadata !200, null}
!772 = metadata !{i64 0}
!773 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, metadata !774} ; [ DW_TAG_arg_variable ] [end] [line 749]
!774 = metadata !{i32 565, i32 0, metadata !200, null}
!775 = metadata !{i32 749, i32 0, metadata !263, metadata !774}
!776 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, metadata !774} ; [ DW_TAG_arg_variable ] [start] [line 749]
!777 = metadata !{i32 573, i32 0, metadata !200, null}
!778 = metadata !{i32 574, i32 0, metadata !200, null}
!779 = metadata !{metadata !"long", metadata !372}
!780 = metadata !{i32 758, i32 0, metadata !263, metadata !774}
!781 = metadata !{i32 576, i32 0, metadata !200, null}
!782 = metadata !{i32 578, i32 0, metadata !200, null}
!783 = metadata !{i32 584, i32 0, metadata !200, null}
!784 = metadata !{i32 587, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !200, i32 586, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!786 = metadata !{i32 588, i32 0, metadata !785, null}
!787 = metadata !{i32 589, i32 0, metadata !785, null}
!788 = metadata !{i32 591, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !200, i32 591, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!790 = metadata !{i32 592, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !789, i32 591, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!792 = metadata !{i32 593, i32 0, metadata !791, null}
!793 = metadata !{i32 594, i32 0, metadata !791, null}
!794 = metadata !{i32 597, i32 0, metadata !200, null}
!795 = metadata !{i32 599, i32 0, metadata !200, null}
!796 = metadata !{i32 601, i32 0, metadata !200, null}
!797 = metadata !{i32 603, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !200, i32 603, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!799 = metadata !{i32 605, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !1, metadata !798, i32 604, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!801 = metadata !{i32 607, i32 0, metadata !200, null}
!802 = metadata !{i32 608, i32 0, metadata !200, null}
!803 = metadata !{i32 610, i32 0, metadata !200, null}
!804 = metadata !{i32 611, i32 0, metadata !200, null}
!805 = metadata !{i32 749, i32 0, metadata !263, null}
!806 = metadata !{i32 758, i32 0, metadata !263, null}
!807 = metadata !{i32 895, i32 0, metadata !285, null}
!808 = metadata !{i32 613, i32 0, metadata !213, null}
!809 = metadata !{i32 619, i32 0, metadata !213, null}
!810 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, metadata !811} ; [ DW_TAG_arg_variable ] [end] [line 749]
!811 = metadata !{i32 623, i32 0, metadata !213, null}
!812 = metadata !{i32 749, i32 0, metadata !263, metadata !811}
!813 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, metadata !811} ; [ DW_TAG_arg_variable ] [start] [line 749]
!814 = metadata !{i32 630, i32 0, metadata !213, null}
!815 = metadata !{i32 631, i32 0, metadata !213, null}
!816 = metadata !{i32 758, i32 0, metadata !263, metadata !811}
!817 = metadata !{i32 633, i32 0, metadata !213, null}
!818 = metadata !{i32 634, i32 0, metadata !213, null}
!819 = metadata !{i32 636, i32 0, metadata !213, null}
!820 = metadata !{i32 637, i32 0, metadata !213, null}
!821 = metadata !{i32 638, i32 0, metadata !213, null}
!822 = metadata !{i32 639, i32 0, metadata !213, null}
!823 = metadata !{i32 640, i32 0, metadata !213, null}
!824 = metadata !{i32 641, i32 0, metadata !213, null}
!825 = metadata !{i32 643, i32 0, metadata !225, null}
!826 = metadata !{i32 648, i32 0, metadata !225, null}
!827 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, metadata !828} ; [ DW_TAG_arg_variable ] [end] [line 749]
!828 = metadata !{i32 652, i32 0, metadata !225, null}
!829 = metadata !{i32 749, i32 0, metadata !263, metadata !828}
!830 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, metadata !828} ; [ DW_TAG_arg_variable ] [start] [line 749]
!831 = metadata !{i32 660, i32 0, metadata !225, null}
!832 = metadata !{i32 661, i32 0, metadata !225, null}
!833 = metadata !{i32 758, i32 0, metadata !263, metadata !828}
!834 = metadata !{i32 663, i32 0, metadata !225, null}
!835 = metadata !{i32 664, i32 0, metadata !225, null}
!836 = metadata !{i32 665, i32 0, metadata !225, null}
!837 = metadata !{i32 666, i32 0, metadata !225, null}
!838 = metadata !{i32 667, i32 0, metadata !225, null}
!839 = metadata !{i32 668, i32 0, metadata !225, null}
!840 = metadata !{i32 669, i32 0, metadata !225, null}
!841 = metadata !{i32 670, i32 0, metadata !225, null}
!842 = metadata !{i32 672, i32 0, metadata !234, null}
!843 = metadata !{i32 677, i32 0, metadata !234, null}
!844 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, metadata !845} ; [ DW_TAG_arg_variable ] [end] [line 749]
!845 = metadata !{i32 681, i32 0, metadata !234, null}
!846 = metadata !{i32 749, i32 0, metadata !263, metadata !845}
!847 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, metadata !845} ; [ DW_TAG_arg_variable ] [start] [line 749]
!848 = metadata !{i32 689, i32 0, metadata !234, null}
!849 = metadata !{i32 690, i32 0, metadata !234, null}
!850 = metadata !{i32 758, i32 0, metadata !263, metadata !845}
!851 = metadata !{i32 692, i32 0, metadata !234, null}
!852 = metadata !{i32 693, i32 0, metadata !234, null}
!853 = metadata !{i32 694, i32 0, metadata !234, null}
!854 = metadata !{i32 695, i32 0, metadata !234, null}
!855 = metadata !{i32 696, i32 0, metadata !234, null}
!856 = metadata !{i32 697, i32 0, metadata !234, null}
!857 = metadata !{i32 698, i32 0, metadata !234, null}
!858 = metadata !{i32 699, i32 0, metadata !234, null}
!859 = metadata !{i32 707, i32 0, metadata !243, null}
!860 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, metadata !859} ; [ DW_TAG_arg_variable ] [end] [line 749]
!861 = metadata !{i32 749, i32 0, metadata !263, metadata !859}
!862 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, metadata !859} ; [ DW_TAG_arg_variable ] [start] [line 749]
!863 = metadata !{i32 758, i32 0, metadata !263, metadata !859}
!864 = metadata !{i32 709, i32 0, metadata !243, null}
!865 = metadata !{i32 711, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !243, i32 710, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!867 = metadata !{i32 712, i32 0, metadata !866, null}
!868 = metadata !{i32 715, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !243, i32 714, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!870 = metadata !{i32 716, i32 0, metadata !869, null}
!871 = metadata !{i32 717, i32 0, metadata !243, null}
!872 = metadata !{i32 720, i32 0, metadata !246, null}
!873 = metadata !{i32 724, i32 0, metadata !246, null}
!874 = metadata !{i32 726, i32 0, metadata !246, null}
!875 = metadata !{i32 728, i32 0, metadata !246, null}
!876 = metadata !{i32 730, i32 0, metadata !246, null}
!877 = metadata !{i32 733, i32 0, metadata !254, null}
!878 = metadata !{i32 738, i32 0, metadata !254, null}
!879 = metadata !{i32 740, i32 0, metadata !254, null}
!880 = metadata !{i32 741, i32 0, metadata !254, null}
!881 = metadata !{i32 758, i32 0, metadata !263, metadata !882}
!882 = metadata !{i32 743, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !254, i32 741, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!884 = metadata !{i32 742, i32 0, metadata !883, null}
!885 = metadata !{i32 786689, metadata !263, metadata !"end", metadata !26, i32 16777965, metadata !258, i32 0, metadata !882} ; [ DW_TAG_arg_variable ] [end] [line 749]
!886 = metadata !{i32 749, i32 0, metadata !263, metadata !882}
!887 = metadata !{i32 786689, metadata !263, metadata !"start", metadata !26, i32 33555181, metadata !258, i32 0, metadata !882} ; [ DW_TAG_arg_variable ] [start] [line 749]
!888 = metadata !{i32 746, i32 0, metadata !254, null}
!889 = metadata !{i32 767, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !269, i32 767, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!891 = metadata !{i32 769, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !890, i32 768, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!893 = metadata !{i32 771, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !892, i32 770, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!895 = metadata !{i32 772, i32 0, metadata !894, null}
!896 = metadata !{i32 773, i32 0, metadata !894, null}
!897 = metadata !{i32 775, i32 0, metadata !892, null}
!898 = metadata !{i32 777, i32 0, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !892, i32 776, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!900 = metadata !{i32 778, i32 0, metadata !899, null}
!901 = metadata !{i32 779, i32 0, metadata !899, null}
!902 = metadata !{i32 781, i32 0, metadata !892, null}
!903 = metadata !{i32 783, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !892, i32 782, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!905 = metadata !{i32 784, i32 0, metadata !904, null}
!906 = metadata !{i32 785, i32 0, metadata !904, null}
!907 = metadata !{i32 788, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !269, i32 788, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!909 = metadata !{i32 790, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !908, i32 789, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!911 = metadata !{i32 792, i32 0, metadata !912, null}
!912 = metadata !{i32 786443, metadata !1, metadata !910, i32 791, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!913 = metadata !{i32 793, i32 0, metadata !912, null}
!914 = metadata !{i32 794, i32 0, metadata !912, null}
!915 = metadata !{i32 796, i32 0, metadata !910, null}
!916 = metadata !{i32 798, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !910, i32 797, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!918 = metadata !{i32 799, i32 0, metadata !917, null}
!919 = metadata !{i32 800, i32 0, metadata !917, null}
!920 = metadata !{i32 802, i32 0, metadata !910, null}
!921 = metadata !{i32 804, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !910, i32 803, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!923 = metadata !{i32 805, i32 0, metadata !922, null}
!924 = metadata !{i32 806, i32 0, metadata !922, null}
!925 = metadata !{i32 809, i32 0, metadata !269, null}
!926 = metadata !{i32 906, i32 0, metadata !288, null}
!927 = metadata !{i32 907, i32 0, metadata !288, null}
!928 = metadata !{i32 910, i32 0, metadata !289, null}
!929 = metadata !{i32 914, i32 0, metadata !289, null}
!930 = metadata !{i32 915, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !289, i32 914, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!932 = metadata !{i32 921, i32 0, metadata !289, null}
!933 = metadata !{i32 929, i32 0, metadata !295, null}
!934 = metadata !{i32 933, i32 0, metadata !295, null}
!935 = metadata !{i32 936, i32 0, metadata !295, null}
!936 = metadata !{i32 937, i32 0, metadata !295, null}
!937 = metadata !{i32 938, i32 0, metadata !295, null}
!938 = metadata !{i32 941, i32 0, metadata !295, null}
!939 = metadata !{i32 942, i32 0, metadata !295, null}
!940 = metadata !{i32 943, i32 0, metadata !295, null}
!941 = metadata !{i32 945, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !295, i32 943, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!943 = metadata !{i32 946, i32 0, metadata !942, null}
!944 = metadata !{i32 947, i32 0, metadata !942, null}
!945 = metadata !{i32 948, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !942, i32 947, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!947 = metadata !{i32 949, i32 0, metadata !946, null}
!948 = metadata !{i32 952, i32 0, metadata !942, null}
!949 = metadata !{i32 953, i32 0, metadata !942, null}
!950 = metadata !{i32 955, i32 0, metadata !942, null}
!951 = metadata !{i32 956, i32 0, metadata !942, null}
!952 = metadata !{i32 959, i32 0, metadata !295, null}
!953 = metadata !{i32 960, i32 0, metadata !295, null}
!954 = metadata !{i32 961, i32 0, metadata !295, null}
!955 = metadata !{i32 964, i32 0, metadata !295, null}
!956 = metadata !{i32 1039, i32 0, metadata !315, null}
!957 = metadata !{i32 1042, i32 0, metadata !316, null}
!958 = metadata !{i32 1044, i32 0, metadata !316, null}
!959 = metadata !{i32 49}
!960 = metadata !{i32 1045, i32 0, metadata !316, null}
!961 = metadata !{i32 1048, i32 0, metadata !316, null}
!962 = metadata !{i32 1051, i32 0, metadata !316, null}
!963 = metadata !{i32 1053, i32 0, metadata !316, null}
!964 = metadata !{i32 1055, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !316, i32 1054, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!966 = metadata !{i32 1058, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !965, i32 1056, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!968 = metadata !{i32 1059, i32 0, metadata !967, null}
!969 = metadata !{i32 1061, i32 0, metadata !967, null}
!970 = metadata !{i32 1062, i32 0, metadata !967, null}
!971 = metadata !{i32 1064, i32 0, metadata !967, null}
!972 = metadata !{i32 1065, i32 0, metadata !967, null}
!973 = metadata !{i32 1067, i32 0, metadata !967, null}
!974 = metadata !{i32 1068, i32 0, metadata !967, null}
!975 = metadata !{i32 1070, i32 0, metadata !967, null}
!976 = metadata !{i32 1071, i32 0, metadata !967, null}
!977 = metadata !{i32 1073, i32 0, metadata !967, null}
!978 = metadata !{i32 1074, i32 0, metadata !967, null}
!979 = metadata !{i32 1076, i32 0, metadata !967, null}
!980 = metadata !{i32 1077, i32 0, metadata !967, null}
!981 = metadata !{i32 1082, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !316, i32 1081, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!983 = metadata !{i32 1085, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !982, i32 1083, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!985 = metadata !{i32 1086, i32 0, metadata !984, null}
!986 = metadata !{i32 1088, i32 0, metadata !984, null}
!987 = metadata !{i32 1089, i32 0, metadata !984, null}
!988 = metadata !{i32 1091, i32 0, metadata !984, null}
!989 = metadata !{i32 1092, i32 0, metadata !984, null}
!990 = metadata !{i32 1094, i32 0, metadata !984, null}
!991 = metadata !{i32 1095, i32 0, metadata !984, null}
!992 = metadata !{i32 1097, i32 0, metadata !984, null}
!993 = metadata !{i32 1098, i32 0, metadata !984, null}
!994 = metadata !{i32 1100, i32 0, metadata !984, null}
!995 = metadata !{i32 1101, i32 0, metadata !984, null}
!996 = metadata !{i32 1103, i32 0, metadata !984, null}
!997 = metadata !{i32 1104, i32 0, metadata !984, null}
!998 = metadata !{i32 1108, i32 0, metadata !316, null}
!999 = metadata !{[144 x i32]* @reset_board.init_board}
!1000 = metadata !{i32 1117, i32 0, metadata !329, null}
!1001 = metadata !{i32 1132, i32 0, metadata !329, null}
!1002 = metadata !{i32 1133, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !329, i32 1133, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!1004 = metadata !{i32 1134, i32 0, metadata !1003, null}
!1005 = metadata !{i32 1136, i32 0, metadata !329, null}
!1006 = metadata !{i32 1138, i32 0, metadata !329, null}
!1007 = metadata !{i32 1140, i32 0, metadata !329, null}
!1008 = metadata !{i32 1142, i32 0, metadata !329, null}
!1009 = metadata !{i32 1143, i32 0, metadata !329, null}
!1010 = metadata !{i32 1145, i32 0, metadata !329, null}
!1011 = metadata !{i32 1146, i32 0, metadata !329, null}
!1012 = metadata !{i32 1148, i32 0, metadata !329, null}
!1013 = metadata !{i32 1149, i32 0, metadata !329, null}
!1014 = metadata !{i32 1151, i32 0, metadata !329, null}
!1015 = metadata !{i32 1153, i32 0, metadata !329, null}
!1016 = metadata !{i32 1157, i32 0, metadata !333, null}
!1017 = metadata !{i32 1159, i32 0, metadata !333, null}
!1018 = metadata !{null}
!1019 = metadata !{i32 1162, i32 0, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !1, metadata !333, i32 1162, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!1021 = metadata !{null}
!1022 = metadata !{i32 624}
!1023 = metadata !{i32 623}
!1024 = metadata !{i32 1163, i32 0, metadata !1020, null}
!1025 = metadata !{i32 1164, i32 0, metadata !333, null}
!1026 = metadata !{i32 1168, i32 0, metadata !343, null}
!1027 = metadata !{null}
!1028 = metadata !{null}
!1029 = metadata !{i32 1171, i32 0, metadata !343, null}
!1030 = metadata !{i32 4357}
!1031 = metadata !{i32 786689, metadata !333, metadata !"seed", metadata !26, i32 16778373, metadata !336, i32 0, metadata !1032} ; [ DW_TAG_arg_variable ] [seed] [line 1157]
!1032 = metadata !{i32 1172, i32 0, metadata !343, null}
!1033 = metadata !{i32 1157, i32 0, metadata !333, metadata !1032}
!1034 = metadata !{i32 786688, metadata !333, metadata !"x", metadata !26, i32 1159, metadata !336, i32 0, metadata !1032} ; [ DW_TAG_auto_variable ] [x] [line 1159]
!1035 = metadata !{i32 1159, i32 0, metadata !333, metadata !1032}
!1036 = metadata !{i32 786688, metadata !333, metadata !"s", metadata !26, i32 1159, metadata !341, i32 0, metadata !1032} ; [ DW_TAG_auto_variable ] [s] [line 1159]
!1037 = metadata !{i32 1162, i32 0, metadata !1020, metadata !1032}
!1038 = metadata !{i32 786688, metadata !333, metadata !"j", metadata !26, i32 1160, metadata !29, i32 0, metadata !1032} ; [ DW_TAG_auto_variable ] [j] [line 1160]
!1039 = metadata !{i32 1163, i32 0, metadata !1020, metadata !1032}
!1040 = metadata !{i32 1174, i32 0, metadata !343, null}
!1041 = metadata !{i32 1176, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !343, i32 1176, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!1043 = metadata !{i32 228}
!1044 = metadata !{i32 227}
!1045 = metadata !{i32 1177, i32 0, metadata !1042, null}
!1046 = metadata !{i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 227)}
!1047 = metadata !{i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 229)}
!1048 = metadata !{i32 1180, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !343, i32 1179, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/utils.c]
!1050 = metadata !{i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 396)}
!1051 = metadata !{i32* getelementptr inbounds ([625 x i32]* @state, i64 0, i64 623)}
!1052 = metadata !{i32 1179, i32 0, metadata !1049, null}
!1053 = metadata !{i32 1182, i32 0, metadata !343, null}
!1054 = metadata !{i32 1183, i32 0, metadata !343, null}
!1055 = metadata !{i32 1184, i32 0, metadata !343, null}
!1056 = metadata !{i32 1185, i32 0, metadata !343, null}
!1057 = metadata !{i32 1186, i32 0, metadata !343, null}
!1058 = metadata !{i32 1193, i32 0, metadata !353, null}
!1059 = metadata !{i32 1194, i32 0, metadata !353, null}
!1060 = metadata !{i32 1196, i32 0, metadata !353, null}
!1061 = metadata !{i32 1197, i32 0, metadata !353, null}
!1062 = metadata !{i32 1198, i32 0, metadata !353, null}
!1063 = metadata !{i32 1199, i32 0, metadata !353, null}
!1064 = metadata !{i32 1200, i32 0, metadata !353, null}
!1065 = metadata !{i32 1201, i32 0, metadata !353, null}
