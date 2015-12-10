; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/neval.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@std_p_tropism = constant [8 x i32] [i32 9999, i32 15, i32 10, i32 7, i32 2, i32 0, i32 0, i32 0], align 16
@std_own_p_tropism = constant [8 x i32] [i32 9999, i32 30, i32 10, i32 2, i32 0, i32 0, i32 0, i32 0], align 16
@std_r_tropism = constant [16 x i32] [i32 9999, i32 0, i32 15, i32 5, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@std_n_tropism = constant [8 x i32] [i32 9999, i32 14, i32 9, i32 6, i32 1, i32 0, i32 0, i32 0], align 16
@std_q_tropism = constant [8 x i32] [i32 9999, i32 200, i32 50, i32 15, i32 3, i32 2, i32 1, i32 0], align 16
@std_b_tropism = constant [8 x i32] [i32 9999, i32 12, i32 7, i32 5, i32 0, i32 0, i32 0, i32 0], align 16
@piece_count = external global i32
@pieces = external global [62 x i32]
@board = external global [144 x i32]
@white_castled = external global i32
@black_castled = external global i32
@phase = external global i32
@Xfile = external constant [144 x i32]
@king_locs = common global [2 x i32] zeroinitializer, align 4
@distance = common global [144 x [144 x i32]] zeroinitializer, align 16
@Rook.square_d1 = internal unnamed_addr constant [2 x i32] [i32 29, i32 113], align 4
@rookdistance = common global [144 x [144 x i32]] zeroinitializer, align 16
@wmat = common global i32 0, align 4
@bmat = common global i32 0, align 4
@sbishop = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 8, i32 5, i32 5, i32 5, i32 5, i32 8, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 3, i32 3, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 2, i32 5, i32 4, i32 4, i32 5, i32 2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 2, i32 5, i32 4, i32 4, i32 5, i32 2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 3, i32 3, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 8, i32 5, i32 5, i32 5, i32 5, i32 8, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sknight = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 10, i32 10, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 10, i32 10, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [35 x i8] c"Illegal piece detected sq=%i c=%i\0A\00", align 1
@white_to_move = external global i32
@Material = external global i32
@maxposdiff = common global i32 0, align 4
@wking_loc = external global i32
@bking_loc = external global i32
@__func__.std_eval = private unnamed_addr constant [9 x i8] c"std_eval\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/neval.c\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"(i > 0) && (i < 145)\00", align 1
@material = external global [14 x i32]
@Xrank = external constant [144 x i32]
@evalRoutines = internal unnamed_addr constant [7 x i32 (i32, i32)*] [i32 (i32, i32)* @ErrorIt, i32 (i32, i32)* @Pawn, i32 (i32, i32)* @Knight, i32 (i32, i32)* @King, i32 (i32, i32)* @Rook, i32 (i32, i32)* @Queen, i32 (i32, i32)* @Bishop], align 16
@swhite_pawn = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 10, i32 10, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 12, i32 12, i32 6, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 14, i32 14, i32 9, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 14, i32 16, i32 16, i32 14, i32 12, i32 10, i32 0, i32 0, i32 0, i32 0, i32 20, i32 22, i32 24, i32 26, i32 26, i32 24, i32 22, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sblack_pawn = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 22, i32 24, i32 26, i32 26, i32 24, i32 22, i32 20, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 14, i32 16, i32 16, i32 14, i32 12, i32 10, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 14, i32 14, i32 9, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 12, i32 12, i32 6, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 10, i32 10, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@swhite_king = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 14, i32 0, i32 0, i32 0, i32 9, i32 14, i32 2, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -5, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -8, i32 -8, i32 -8, i32 -8, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -8, i32 -8, i32 -13, i32 -13, i32 -13, i32 -13, i32 -8, i32 -8, i32 0, i32 0, i32 0, i32 0, i32 -13, i32 -13, i32 -21, i32 -21, i32 -21, i32 -21, i32 -13, i32 -13, i32 0, i32 0, i32 0, i32 0, i32 -21, i32 -21, i32 -34, i32 -34, i32 -34, i32 -34, i32 -21, i32 -21, i32 0, i32 0, i32 0, i32 0, i32 -34, i32 -34, i32 -55, i32 -55, i32 -55, i32 -55, i32 -34, i32 -34, i32 0, i32 0, i32 0, i32 0, i32 -55, i32 -55, i32 -89, i32 -89, i32 -89, i32 -89, i32 -55, i32 -55, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@moved = external global [144 x i32]
@send_king = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -3, i32 -1, i32 0, i32 0, i32 -1, i32 -3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 10, i32 25, i32 25, i32 25, i32 25, i32 10, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 25, i32 50, i32 50, i32 25, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 25, i32 50, i32 50, i32 25, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 10, i32 25, i32 25, i32 25, i32 25, i32 10, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -3, i32 -1, i32 0, i32 0, i32 -1, i32 -3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sblack_king = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -55, i32 -55, i32 -89, i32 -89, i32 -89, i32 -89, i32 -55, i32 -55, i32 0, i32 0, i32 0, i32 0, i32 -34, i32 -34, i32 -55, i32 -55, i32 -55, i32 -55, i32 -34, i32 -34, i32 0, i32 0, i32 0, i32 0, i32 -21, i32 -21, i32 -34, i32 -34, i32 -34, i32 -34, i32 -21, i32 -21, i32 0, i32 0, i32 0, i32 0, i32 -13, i32 -13, i32 -21, i32 -21, i32 -21, i32 -21, i32 -13, i32 -13, i32 0, i32 0, i32 0, i32 0, i32 -8, i32 -8, i32 -13, i32 -13, i32 -13, i32 -13, i32 -8, i32 -8, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -8, i32 -8, i32 -8, i32 -8, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -5, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 14, i32 0, i32 0, i32 0, i32 9, i32 14, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@srev_rank = internal unnamed_addr constant [9 x i32] [i32 0, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@rook_mobility.dir = internal unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 12, i32 -12], align 16
@bishop_mobility.dir = internal unnamed_addr constant [4 x i32] [i32 -13, i32 -11, i32 11, i32 13], align 16
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 7, i32 7, i32 7, i32 7], align 16
@.memset_pattern3 = internal unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 2], align 16

; Function Attrs: nounwind optsize ssp uwtable
define void @check_phase() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !14, metadata !176), !dbg !177
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !16, metadata !176), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !17, metadata !176), !dbg !179
  %1 = load i32* @piece_count, align 4, !dbg !180, !tbaa !183
  %2 = icmp slt i32 %1, 1, !dbg !187
  br i1 %2, label %.thread8, label %.lr.ph, !dbg !188

.lr.ph:                                           ; preds = %0, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 1, %0 ]
  %xnum_pieces.06 = phi i32 [ %xnum_pieces.1, %13 ], [ 0, %0 ]
  %a.05 = phi i32 [ %a.1, %13 ], [ 1, %0 ]
  %3 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !189
  %4 = load i32* %3, align 4, !dbg !189, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !18, metadata !176), !dbg !191
  %5 = icmp eq i32 %4, 0, !dbg !192
  br i1 %5, label %13, label %6, !dbg !194

; <label>:6                                       ; preds = %.lr.ph
  %7 = add nsw i32 %a.05, 1, !dbg !195
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !17, metadata !176), !dbg !179
  %8 = sext i32 %4 to i64, !dbg !196
  %9 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %8, !dbg !196
  %10 = load i32* %9, align 4, !dbg !196, !tbaa !183
  switch i32 %10, label %11 [
    i32 1, label %13
    i32 2, label %13
    i32 13, label %13
    i32 0, label %13
  ], !dbg !198

; <label>:11                                      ; preds = %6
  %12 = add nsw i32 %xnum_pieces.06, 1, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !14, metadata !176), !dbg !177
  br label %13, !dbg !201

; <label>:13                                      ; preds = %6, %6, %6, %6, %.lr.ph, %11
  %a.1 = phi i32 [ %7, %11 ], [ %7, %6 ], [ %a.05, %.lr.ph ], [ %7, %6 ], [ %7, %6 ], [ %7, %6 ]
  %xnum_pieces.1 = phi i32 [ %12, %11 ], [ %xnum_pieces.06, %6 ], [ %xnum_pieces.06, %.lr.ph ], [ %xnum_pieces.06, %6 ], [ %xnum_pieces.06, %6 ], [ %xnum_pieces.06, %6 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !188
  %14 = icmp sgt i32 %a.1, %1, !dbg !187
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !188

._crit_edge:                                      ; preds = %13
  %15 = icmp sgt i32 %xnum_pieces.1, 11, !dbg !202
  br i1 %15, label %16, label %27, !dbg !204

; <label>:16                                      ; preds = %._crit_edge
  %17 = load i32* @white_castled, align 4, !dbg !205, !tbaa !183
  %18 = icmp ne i32 %17, 0, !dbg !205
  %19 = load i32* @black_castled, align 4
  %20 = icmp ne i32 %19, 0, !dbg !206
  %or.cond = and i1 %18, %20, !dbg !207
  br i1 %or.cond, label %.thread, label %21, !dbg !207

; <label>:21                                      ; preds = %16
  %22 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 30), align 4, !dbg !208, !tbaa !183
  %23 = icmp eq i32 %22, 5, !dbg !209
  %24 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 114), align 4
  %25 = icmp eq i32 %24, 6, !dbg !210
  %or.cond3 = or i1 %23, %25, !dbg !211
  br i1 %or.cond3, label %26, label %.thread, !dbg !211

; <label>:26                                      ; preds = %21
  store i32 0, i32* @phase, align 4, !dbg !212, !tbaa !183
  br label %29, !dbg !214

; <label>:27                                      ; preds = %._crit_edge
  %28 = icmp slt i32 %xnum_pieces.1, 7, !dbg !215
  br i1 %28, label %.thread8, label %.thread, !dbg !217

.thread8:                                         ; preds = %0, %27
  store i32 2, i32* @phase, align 4, !dbg !218, !tbaa !183
  br label %29, !dbg !220

.thread:                                          ; preds = %16, %21, %27
  store i32 1, i32* @phase, align 4, !dbg !221, !tbaa !183
  br label %29

; <label>:29                                      ; preds = %.thread8, %.thread, %26
  ret void, !dbg !222
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @King(i32 %sq, i32 %c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !23, metadata !176), !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !24, metadata !176), !dbg !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !176), !dbg !225
  %1 = sext i32 %sq to i64, !dbg !226
  %2 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %1, !dbg !226
  %3 = load i32* %2, align 4, !dbg !226, !tbaa !183
  %4 = icmp sgt i32 %3, 5, !dbg !228
  br i1 %4, label %5, label %.thread, !dbg !229

; <label>:5                                       ; preds = %0
  %6 = add nsw i32 %sq, -1, !dbg !230
  %7 = sext i32 %6 to i64, !dbg !230
  %8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %7, !dbg !230
  %9 = load i32* %8, align 4, !dbg !230, !tbaa !183
  %10 = add nsw i32 %9, 1, !dbg !230
  %.mask1 = and i32 %10, -2, !dbg !231
  %11 = icmp eq i32 %.mask1, 8, !dbg !231
  %12 = and i32 %10, 1
  %13 = icmp eq i32 %12, %c, !dbg !232
  %or.cond = and i1 %11, %13, !dbg !233
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !25, metadata !176), !dbg !225
  %. = select i1 %or.cond, i32 2, i32 0, !dbg !233
  %14 = add nsw i32 %sq, 1, !dbg !234
  %15 = sext i32 %14 to i64, !dbg !234
  %16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %15, !dbg !234
  %17 = load i32* %16, align 4, !dbg !234, !tbaa !183
  %18 = add nsw i32 %17, 1, !dbg !234
  %.mask = and i32 %18, -2, !dbg !236
  %19 = icmp eq i32 %.mask, 8, !dbg !236
  %20 = and i32 %18, 1
  %21 = icmp eq i32 %20, %c, !dbg !237
  %or.cond4 = and i1 %19, %21, !dbg !238
  %22 = add nuw nsw i32 %., 2, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !25, metadata !176), !dbg !225
  %.s.0 = select i1 %or.cond4, i32 %22, i32 %., !dbg !238
  br label %.thread, !dbg !238

.thread:                                          ; preds = %0, %5
  %s.1 = phi i32 [ %.s.0, %5 ], [ 0, %0 ]
  %23 = icmp eq i32 %c, 1, !dbg !241
  %24 = sub nsw i32 0, %s.1, !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !25, metadata !176), !dbg !225
  %.s.1 = select i1 %23, i32 %24, i32 %s.1, !dbg !244
  ret i32 %.s.1, !dbg !245
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Queen(i32 %sq, i32 %c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !28, metadata !176), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !29, metadata !176), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !176), !dbg !248
  %1 = xor i32 %c, 1, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !32, metadata !176), !dbg !250
  tail call void @llvm.dbg.value(metadata i32 900, i64 0, metadata !30, metadata !176), !dbg !248
  %2 = sext i32 %1 to i64, !dbg !251
  %3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %2, !dbg !251
  %4 = load i32* %3, align 4, !dbg !251, !tbaa !183
  %5 = sext i32 %4 to i64, !dbg !252
  %6 = sext i32 %sq to i64, !dbg !252
  %7 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %6, i64 %5, !dbg !252
  %8 = load i32* %7, align 4, !dbg !252, !tbaa !183
  %9 = sext i32 %8 to i64, !dbg !253
  %10 = getelementptr inbounds [8 x i32]* @std_q_tropism, i64 0, i64 %9, !dbg !253
  %11 = load i32* %10, align 4, !dbg !253, !tbaa !183
  %12 = add nsw i32 %11, 900, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !30, metadata !176), !dbg !248
  %13 = tail call fastcc i32 @rook_mobility(i32 %sq) #7, !dbg !255
  %14 = tail call fastcc i32 @bishop_mobility(i32 %sq) #7, !dbg !256
  %15 = add i32 %14, %13, !dbg !257
  %16 = shl i32 %15, 1, !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !31, metadata !176), !dbg !258
  %17 = icmp slt i32 %16, 5, !dbg !259
  br i1 %17, label %18, label %22, !dbg !261

; <label>:18                                      ; preds = %0
  switch i32 %16, label %20 [
    i32 0, label %22
    i32 2, label %19
  ], !dbg !262

; <label>:19                                      ; preds = %18
  br label %22, !dbg !264

; <label>:20                                      ; preds = %18
  %21 = add nsw i32 %16, -5, !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !31, metadata !176), !dbg !258
  br label %22

; <label>:22                                      ; preds = %18, %20, %19, %0
  %mob.0 = phi i32 [ -8, %19 ], [ %21, %20 ], [ %16, %0 ], [ -15, %18 ]
  %23 = add nsw i32 %12, %mob.0, !dbg !268
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !30, metadata !176), !dbg !248
  %24 = icmp eq i32 %c, 1, !dbg !269
  %25 = sub nsw i32 0, %23, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !30, metadata !176), !dbg !248
  %. = select i1 %24, i32 %25, i32 %23, !dbg !272
  ret i32 %., !dbg !273
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @rook_mobility(i32 %square) #2 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !111, metadata !176), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !176), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !114, metadata !176), !dbg !276
  br label %1, !dbg !277

; <label>:1                                       ; preds = %._crit_edge, %0
  %indvars.iv5 = phi i64 [ 0, %0 ], [ %indvars.iv.next6, %._crit_edge ]
  %m.03 = phi i32 [ 0, %0 ], [ %m.1.lcssa, %._crit_edge ]
  %2 = getelementptr inbounds [4 x i32]* @rook_mobility.dir, i64 0, i64 %indvars.iv5, !dbg !279
  %3 = load i32* %2, align 4, !dbg !279, !tbaa !183
  %4 = add i32 %3, %square, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !112, metadata !176), !dbg !284
  %5 = sext i32 %4 to i64, !dbg !285
  %6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %5, !dbg !285
  %7 = load i32* %6, align 4, !dbg !285, !tbaa !183
  %8 = icmp eq i32 %7, 13, !dbg !287
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !288

.lr.ph:                                           ; preds = %1
  %9 = sext i32 %3 to i64
  br label %10, !dbg !288

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %m.12 = phi i32 [ %m.03, %.lr.ph ], [ %11, %10 ]
  %11 = add nsw i32 %m.12, 1, !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !113, metadata !176), !dbg !275
  %indvars.iv.next = add nsw i64 %indvars.iv, %9, !dbg !288
  %12 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !285
  %13 = load i32* %12, align 4, !dbg !285, !tbaa !183
  %14 = icmp eq i32 %13, 13, !dbg !287
  br i1 %14, label %10, label %._crit_edge, !dbg !288

._crit_edge:                                      ; preds = %10, %1
  %m.1.lcssa = phi i32 [ %m.03, %1 ], [ %11, %10 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !277
  %exitcond = icmp eq i64 %indvars.iv.next6, 4, !dbg !277
  br i1 %exitcond, label %15, label %1, !dbg !277

; <label>:15                                      ; preds = %._crit_edge
  ret i32 %m.1.lcssa, !dbg !290
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @bishop_mobility(i32 %square) #2 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !117, metadata !176), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !176), !dbg !292
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !120, metadata !176), !dbg !293
  br label %1, !dbg !294

; <label>:1                                       ; preds = %._crit_edge, %0
  %indvars.iv5 = phi i64 [ 0, %0 ], [ %indvars.iv.next6, %._crit_edge ]
  %m.03 = phi i32 [ 0, %0 ], [ %m.1.lcssa, %._crit_edge ]
  %2 = getelementptr inbounds [4 x i32]* @bishop_mobility.dir, i64 0, i64 %indvars.iv5, !dbg !296
  %3 = load i32* %2, align 4, !dbg !296, !tbaa !183
  %4 = add i32 %3, %square, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !118, metadata !176), !dbg !301
  %5 = sext i32 %4 to i64, !dbg !302
  %6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %5, !dbg !302
  %7 = load i32* %6, align 4, !dbg !302, !tbaa !183
  %8 = icmp eq i32 %7, 13, !dbg !304
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !305

.lr.ph:                                           ; preds = %1
  %9 = sext i32 %3 to i64
  br label %10, !dbg !305

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %m.12 = phi i32 [ %m.03, %.lr.ph ], [ %11, %10 ]
  %11 = add nsw i32 %m.12, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !119, metadata !176), !dbg !292
  %indvars.iv.next = add nsw i64 %indvars.iv, %9, !dbg !305
  %12 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !302
  %13 = load i32* %12, align 4, !dbg !302, !tbaa !183
  %14 = icmp eq i32 %13, 13, !dbg !304
  br i1 %14, label %10, label %._crit_edge, !dbg !305

._crit_edge:                                      ; preds = %10, %1
  %m.1.lcssa = phi i32 [ %m.03, %1 ], [ %11, %10 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !294
  %exitcond = icmp eq i64 %indvars.iv.next6, 4, !dbg !294
  br i1 %exitcond, label %15, label %1, !dbg !294

; <label>:15                                      ; preds = %._crit_edge
  ret i32 %m.1.lcssa, !dbg !307
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Rook(i32 %sq, i32 %c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !35, metadata !176), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !36, metadata !176), !dbg !309
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !176), !dbg !310
  %1 = xor i32 %c, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !39, metadata !176), !dbg !312
  tail call void @llvm.dbg.value(metadata i32 500, i64 0, metadata !37, metadata !176), !dbg !310
  %2 = sext i32 %1 to i64, !dbg !313
  %3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %2, !dbg !313
  %4 = load i32* %3, align 4, !dbg !313, !tbaa !183
  %5 = sext i32 %4 to i64, !dbg !314
  %6 = sext i32 %sq to i64, !dbg !314
  %7 = getelementptr inbounds [144 x [144 x i32]]* @rookdistance, i64 0, i64 %6, i64 %5, !dbg !314
  %8 = load i32* %7, align 4, !dbg !314, !tbaa !183
  %9 = sext i32 %8 to i64, !dbg !315
  %10 = getelementptr inbounds [16 x i32]* @std_r_tropism, i64 0, i64 %9, !dbg !315
  %11 = load i32* %10, align 4, !dbg !315, !tbaa !183
  %12 = add nsw i32 %11, 500, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !37, metadata !176), !dbg !310
  %13 = tail call fastcc i32 @rook_mobility(i32 %sq) #7, !dbg !317
  %14 = shl i32 %13, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !38, metadata !176), !dbg !319
  %15 = icmp slt i32 %14, 3, !dbg !320
  %16 = add nsw i32 %14, -5, !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !38, metadata !176), !dbg !319
  %. = select i1 %15, i32 %16, i32 %14, !dbg !323
  %17 = add nsw i32 %12, %., !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !37, metadata !176), !dbg !310
  %18 = add nsw i32 %sq, -1, !dbg !325
  %19 = sext i32 %18 to i64, !dbg !327
  %20 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %19, !dbg !327
  %21 = load i32* %20, align 4, !dbg !327, !tbaa !183
  %22 = icmp eq i32 %21, 13, !dbg !328
  br i1 %22, label %30, label %23, !dbg !329

; <label>:23                                      ; preds = %0
  %24 = add nsw i32 %sq, 1, !dbg !330
  %25 = sext i32 %24 to i64, !dbg !331
  %26 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %25, !dbg !331
  %27 = load i32* %26, align 4, !dbg !331, !tbaa !183
  %28 = icmp eq i32 %27, 13, !dbg !332
  %29 = add nsw i32 %17, -5, !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !37, metadata !176), !dbg !310
  %.2 = select i1 %28, i32 %17, i32 %29, !dbg !335
  br label %30, !dbg !335

; <label>:30                                      ; preds = %23, %0
  %s.0 = phi i32 [ %17, %0 ], [ %.2, %23 ]
  %31 = load i32* @wmat, align 4, !dbg !336, !tbaa !183
  %32 = icmp ne i32 %31, 1300, !dbg !338
  %33 = load i32* @bmat, align 4
  %34 = icmp ne i32 %33, 1300, !dbg !339
  %or.cond = or i1 %32, %34, !dbg !340
  br i1 %or.cond, label %35, label %53, !dbg !340

; <label>:35                                      ; preds = %30
  %36 = sext i32 %c to i64, !dbg !341
  %37 = getelementptr inbounds [2 x i32]* @Rook.square_d1, i64 0, i64 %36, !dbg !341
  %38 = load i32* %37, align 4, !dbg !341, !tbaa !183
  %39 = icmp eq i32 %38, %sq, !dbg !344
  br i1 %39, label %40, label %49, !dbg !345

; <label>:40                                      ; preds = %35
  %41 = add nsw i32 %sq, 1, !dbg !346
  %42 = sext i32 %41 to i64, !dbg !346
  %43 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %42, !dbg !346
  %44 = load i32* %43, align 4, !dbg !346, !tbaa !183
  %45 = add nsw i32 %44, 1, !dbg !346
  %.mask = and i32 %45, -2, !dbg !349
  %46 = icmp eq i32 %.mask, 8, !dbg !349
  %47 = and i32 %45, 1
  %48 = icmp eq i32 %47, %c, !dbg !350
  %or.cond4 = and i1 %46, %48, !dbg !351
  %.5.v = select i1 %or.cond4, i32 15, i32 10, !dbg !351
  %.5 = add i32 %.5.v, %s.0, !dbg !351
  br label %49, !dbg !351

; <label>:49                                      ; preds = %40, %35
  %s.1 = phi i32 [ %s.0, %35 ], [ %.5, %40 ]
  %50 = add nsw i32 %38, 1, !dbg !352
  %51 = icmp eq i32 %50, %sq, !dbg !354
  %52 = add nsw i32 %s.1, 10, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !37, metadata !176), !dbg !310
  %.s.1 = select i1 %51, i32 %52, i32 %s.1, !dbg !357
  br label %53, !dbg !357

; <label>:53                                      ; preds = %49, %30
  %s.2 = phi i32 [ %s.0, %30 ], [ %.s.1, %49 ]
  %54 = icmp eq i32 %c, 1, !dbg !358
  %55 = sub nsw i32 0, %s.2, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !37, metadata !176), !dbg !310
  %.s.2 = select i1 %54, i32 %55, i32 %s.2, !dbg !361
  ret i32 %.s.2, !dbg !362
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Bishop(i32 %sq, i32 %c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !42, metadata !176), !dbg !363
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !43, metadata !176), !dbg !364
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !44, metadata !176), !dbg !365
  %1 = xor i32 %c, 1, !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !46, metadata !176), !dbg !367
  tail call void @llvm.dbg.value(metadata i32 325, i64 0, metadata !44, metadata !176), !dbg !365
  %2 = sext i32 %sq to i64, !dbg !368
  %3 = getelementptr inbounds [144 x i32]* @sbishop, i64 0, i64 %2, !dbg !368
  %4 = load i32* %3, align 4, !dbg !368, !tbaa !183
  %5 = add nsw i32 %4, 325, !dbg !369
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !44, metadata !176), !dbg !365
  %6 = sext i32 %1 to i64, !dbg !370
  %7 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %6, !dbg !370
  %8 = load i32* %7, align 4, !dbg !370, !tbaa !183
  %9 = sext i32 %8 to i64, !dbg !371
  %10 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %2, i64 %9, !dbg !371
  %11 = load i32* %10, align 4, !dbg !371, !tbaa !183
  %12 = sext i32 %11 to i64, !dbg !372
  %13 = getelementptr inbounds [8 x i32]* @std_b_tropism, i64 0, i64 %12, !dbg !372
  %14 = load i32* %13, align 4, !dbg !372, !tbaa !183
  %15 = add nsw i32 %5, %14, !dbg !373
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !44, metadata !176), !dbg !365
  %16 = tail call fastcc i32 @bishop_mobility(i32 %sq) #7, !dbg !374
  %17 = shl i32 %16, 1, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !45, metadata !176), !dbg !376
  %18 = icmp slt i32 %17, 3, !dbg !377
  %19 = add nsw i32 %17, -5, !dbg !379
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !45, metadata !176), !dbg !376
  %. = select i1 %18, i32 %19, i32 %17, !dbg !380
  %20 = add nsw i32 %15, %., !dbg !381
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !44, metadata !176), !dbg !365
  %21 = icmp eq i32 %c, 0, !dbg !382
  %22 = icmp eq i32 %sq, 39, !dbg !384
  %or.cond = and i1 %22, %21, !dbg !385
  %23 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 52), align 4
  %24 = icmp eq i32 %23, 1, !dbg !386
  %or.cond3 = and i1 %or.cond, %24, !dbg !385
  br i1 %or.cond3, label %30, label %25, !dbg !385

; <label>:25                                      ; preds = %0
  %26 = icmp eq i32 %c, 1, !dbg !387
  %27 = icmp eq i32 %sq, 99, !dbg !388
  %or.cond5 = and i1 %27, %26, !dbg !389
  %28 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 88), align 4
  %29 = icmp eq i32 %28, 2, !dbg !390
  %or.cond7 = and i1 %or.cond5, %29, !dbg !389
  br i1 %or.cond7, label %30, label %32, !dbg !389

; <label>:30                                      ; preds = %25, %0
  %31 = add nsw i32 %20, -5, !dbg !391
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !44, metadata !176), !dbg !365
  br label %32, !dbg !392

; <label>:32                                      ; preds = %30, %25
  %s.0 = phi i32 [ %31, %30 ], [ %20, %25 ]
  %33 = icmp eq i32 %c, 1, !dbg !393
  %34 = sub nsw i32 0, %s.0, !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !44, metadata !176), !dbg !365
  %.s.0 = select i1 %33, i32 %34, i32 %s.0, !dbg !396
  ret i32 %.s.0, !dbg !397
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Knight(i32 %sq, i32 %c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !49, metadata !176), !dbg !398
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !50, metadata !176), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !51, metadata !176), !dbg !400
  %1 = xor i32 %c, 1, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !52, metadata !176), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 310, i64 0, metadata !51, metadata !176), !dbg !400
  %2 = sext i32 %sq to i64, !dbg !403
  %3 = getelementptr inbounds [144 x i32]* @sknight, i64 0, i64 %2, !dbg !403
  %4 = load i32* %3, align 4, !dbg !403, !tbaa !183
  %5 = add nsw i32 %4, 310, !dbg !404
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !51, metadata !176), !dbg !400
  %6 = sext i32 %1 to i64, !dbg !405
  %7 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %6, !dbg !405
  %8 = load i32* %7, align 4, !dbg !405, !tbaa !183
  %9 = sext i32 %8 to i64, !dbg !406
  %10 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %2, i64 %9, !dbg !406
  %11 = load i32* %10, align 4, !dbg !406, !tbaa !183
  %12 = sext i32 %11 to i64, !dbg !407
  %13 = getelementptr inbounds [8 x i32]* @std_n_tropism, i64 0, i64 %12, !dbg !407
  %14 = load i32* %13, align 4, !dbg !407, !tbaa !183
  %15 = add nsw i32 %5, %14, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !51, metadata !176), !dbg !400
  %16 = icmp eq i32 %c, 1, !dbg !409
  %17 = sub nsw i32 0, %15, !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !51, metadata !176), !dbg !400
  %. = select i1 %16, i32 %17, i32 %15, !dbg !412
  ret i32 %., !dbg !413
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Pawn(i32 %sq, i32 %c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !55, metadata !176), !dbg !414
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !56, metadata !176), !dbg !415
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !176), !dbg !416
  %1 = xor i32 %c, 1, !dbg !417
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !58, metadata !176), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 100, i64 0, metadata !57, metadata !176), !dbg !416
  %2 = sext i32 %1 to i64, !dbg !419
  %3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %2, !dbg !419
  %4 = load i32* %3, align 4, !dbg !419, !tbaa !183
  %5 = sext i32 %4 to i64, !dbg !420
  %6 = sext i32 %sq to i64, !dbg !420
  %7 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %6, i64 %5, !dbg !420
  %8 = load i32* %7, align 4, !dbg !420, !tbaa !183
  %9 = sext i32 %8 to i64, !dbg !421
  %10 = getelementptr inbounds [8 x i32]* @std_p_tropism, i64 0, i64 %9, !dbg !421
  %11 = load i32* %10, align 4, !dbg !421, !tbaa !183
  %12 = add nsw i32 %11, 100, !dbg !422
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !57, metadata !176), !dbg !416
  %13 = sext i32 %c to i64, !dbg !423
  %14 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %13, !dbg !423
  %15 = load i32* %14, align 4, !dbg !423, !tbaa !183
  %16 = sext i32 %15 to i64, !dbg !424
  %17 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %6, i64 %16, !dbg !424
  %18 = load i32* %17, align 4, !dbg !424, !tbaa !183
  %19 = sext i32 %18 to i64, !dbg !425
  %20 = getelementptr inbounds [8 x i32]* @std_own_p_tropism, i64 0, i64 %19, !dbg !425
  %21 = load i32* %20, align 4, !dbg !425, !tbaa !183
  %22 = add nsw i32 %12, %21, !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !57, metadata !176), !dbg !416
  %23 = add nsw i32 %sq, 1, !dbg !427
  %24 = sext i32 %23 to i64, !dbg !427
  %25 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %24, !dbg !427
  %26 = load i32* %25, align 4, !dbg !427, !tbaa !183
  %27 = add nsw i32 %26, 1, !dbg !427
  %.mask = and i32 %27, -2, !dbg !429
  %28 = icmp eq i32 %.mask, 2, !dbg !429
  %29 = and i32 %27, 1
  %30 = icmp eq i32 %29, %c, !dbg !430
  %or.cond = and i1 %28, %30, !dbg !431
  %31 = add nsw i32 %22, 5, !dbg !432
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !57, metadata !176), !dbg !416
  %s.0 = select i1 %or.cond, i32 %31, i32 %22, !dbg !431
  %32 = add nsw i32 %sq, 11, !dbg !433
  %33 = sext i32 %32 to i64, !dbg !433
  %34 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %33, !dbg !433
  %35 = load i32* %34, align 4, !dbg !433, !tbaa !183
  %36 = add nsw i32 %35, 1, !dbg !433
  %.mask1 = and i32 %36, -2, !dbg !435
  %37 = icmp eq i32 %.mask1, 2, !dbg !435
  %38 = and i32 %36, 1
  %39 = icmp eq i32 %38, %c, !dbg !436
  %or.cond5 = and i1 %37, %39, !dbg !437
  br i1 %or.cond5, label %40, label %42, !dbg !437

; <label>:40                                      ; preds = %0
  %41 = add nsw i32 %s.0, 1, !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !57, metadata !176), !dbg !416
  br label %52, !dbg !439

; <label>:42                                      ; preds = %0
  %43 = add nsw i32 %sq, 13, !dbg !440
  %44 = sext i32 %43 to i64, !dbg !440
  %45 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %44, !dbg !440
  %46 = load i32* %45, align 4, !dbg !440, !tbaa !183
  %47 = add nsw i32 %46, 1, !dbg !440
  %.mask2 = and i32 %47, -2, !dbg !442
  %48 = icmp eq i32 %.mask2, 2, !dbg !442
  %49 = and i32 %47, 1
  %50 = icmp eq i32 %49, %c, !dbg !443
  %or.cond7 = and i1 %48, %50, !dbg !444
  %51 = zext i1 %or.cond7 to i32, !dbg !444
  %.s.0 = add nsw i32 %51, %s.0, !dbg !444
  br label %52, !dbg !444

; <label>:52                                      ; preds = %42, %40
  %s.1 = phi i32 [ %41, %40 ], [ %.s.0, %42 ]
  %53 = icmp eq i32 %c, 1, !dbg !445
  %54 = sub nsw i32 0, %s.1, !dbg !447
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !57, metadata !176), !dbg !416
  %.s.1 = select i1 %53, i32 %54, i32 %s.1, !dbg !448
  ret i32 %.s.1, !dbg !449
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ErrorIt(i32 %sq, i32 %c) #0 {
  tail call void @llvm.dbg.value(metadata i32 %sq, i64 0, metadata !61, metadata !176), !dbg !450
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !62, metadata !176), !dbg !451
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str, i64 0, i64 0), i32 %sq, i32 %c) #8, !dbg !452
  ret i32 0, !dbg !453
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @std_eval(i32 %alpha, i32 %beta) #0 {
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*
  %black_back_pawn = alloca [11 x i32], align 16
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %alpha, i64 0, metadata !65, metadata !176), !dbg !454
  tail call void @llvm.dbg.value(metadata i32 %beta, i64 0, metadata !66, metadata !176), !dbg !455
  %3 = bitcast [2 x [11 x i32]]* %pawns to i8*, !dbg !456
  call void @llvm.lifetime.start(i64 88, i8* %3) #4, !dbg !456
  tail call void @llvm.dbg.declare(metadata [2 x [11 x i32]]* %pawns, metadata !70, metadata !176), !dbg !457
  call void @llvm.lifetime.start(i64 44, i8* %1) #4, !dbg !456
  tail call void @llvm.dbg.declare(metadata [11 x i32]* %white_back_pawn, metadata !75, metadata !176), !dbg !458
  call void @llvm.lifetime.start(i64 44, i8* %2) #4, !dbg !456
  tail call void @llvm.dbg.declare(metadata [11 x i32]* %black_back_pawn, metadata !78, metadata !176), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !460, !tbaa !183
  %4 = load i32* @white_to_move, align 4, !dbg !461, !tbaa !183
  %5 = icmp ne i32 %4, 0, !dbg !461
  %6 = load i32* @Material, align 4, !dbg !463, !tbaa !183
  %7 = sub nsw i32 0, %6, !dbg !464
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !461
  %9 = load i32* @maxposdiff, align 4, !dbg !465, !tbaa !183
  %10 = sub nsw i32 %8, %9, !dbg !466
  %11 = icmp slt i32 %10, %beta, !dbg !467
  br i1 %11, label %12, label %932, !dbg !468

; <label>:12                                      ; preds = %0
  %13 = add nsw i32 %8, %9, !dbg !469
  %14 = icmp sgt i32 %13, %alpha, !dbg !471
  br i1 %14, label %15, label %932, !dbg !472

; <label>:15                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !87, metadata !176), !dbg !473
  store i32 0, i32* %in_cache, align 4, !dbg !474, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  tail call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !87, metadata !176), !dbg !473
  call void @checkECache(i32* %score, i32* %in_cache) #8, !dbg !475
  call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !87, metadata !176), !dbg !473
  %16 = load i32* %in_cache, align 4, !dbg !476, !tbaa !183
  %17 = icmp eq i32 %16, 0, !dbg !476
  br i1 %17, label %23, label %18, !dbg !478

; <label>:18                                      ; preds = %15
  %19 = load i32* @white_to_move, align 4, !dbg !479, !tbaa !183
  %20 = icmp eq i32 %19, 1, !dbg !482
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %21 = load i32* %score, align 4, !dbg !483, !tbaa !183
  %22 = sub nsw i32 0, %21, !dbg !484
  %.116 = select i1 %20, i32 %21, i32 %22, !dbg !485
  br label %932, !dbg !485

; <label>:23                                      ; preds = %15
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 88, i32 16, i1 false), !dbg !486
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !176), !dbg !487
  call void @memset_pattern16(i8* %1, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 44) #4, !dbg !488
  call void @memset_pattern16(i8* %2, i8* bitcast ([4 x i32]* @.memset_pattern3 to i8*), i64 44) #4, !dbg !492
  store i32 0, i32* @wmat, align 4, !dbg !493, !tbaa !183
  store i32 0, i32* @bmat, align 4, !dbg !494, !tbaa !183
  %24 = load i32* @wking_loc, align 4, !dbg !495, !tbaa !183
  store i32 %24, i32* getelementptr inbounds ([2 x i32]* @king_locs, i64 0, i64 0), align 4, !dbg !496, !tbaa !183
  %25 = load i32* @bking_loc, align 4, !dbg !497, !tbaa !183
  store i32 %25, i32* getelementptr inbounds ([2 x i32]* @king_locs, i64 0, i64 1), align 4, !dbg !498, !tbaa !183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !82, metadata !176), !dbg !499
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !68, metadata !176), !dbg !500
  %26 = load i32* @piece_count, align 4, !dbg !501, !tbaa !183
  %27 = icmp slt i32 %26, 1, !dbg !504
  br i1 %27, label %.preheader.thread, label %.lr.ph173, !dbg !505

.preheader:                                       ; preds = %83
  br i1 %27, label %.preheader.thread, label %.lr.ph, !dbg !506

.lr.ph173:                                        ; preds = %23, %83
  %28 = phi i32 [ %84, %83 ], [ 0, %23 ]
  %29 = phi i32 [ %85, %83 ], [ 0, %23 ]
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %83 ], [ 1, %23 ]
  %a.0170 = phi i32 [ %a.1, %83 ], [ 1, %23 ]
  %30 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv175, !dbg !508
  %31 = load i32* %30, align 4, !dbg !508, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !67, metadata !176), !dbg !487
  %32 = icmp eq i32 %31, 0, !dbg !510
  br i1 %32, label %83, label %33, !dbg !512

; <label>:33                                      ; preds = %.lr.ph173
  %34 = add nsw i32 %a.0170, 1, !dbg !513
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !68, metadata !176), !dbg !500
  %.off126 = add i32 %31, -1, !dbg !514
  %35 = icmp ult i32 %.off126, 144, !dbg !514
  br i1 %35, label %37, label %36, !dbg !514, !prof !515

; <label>:36                                      ; preds = %33
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8]* @__func__.std_eval, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([21 x i8]* @.str2, i64 0, i64 0)) #9, !dbg !514
  unreachable, !dbg !514

; <label>:37                                      ; preds = %33
  %38 = sext i32 %31 to i64, !dbg !516
  %39 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %38, !dbg !516
  %40 = load i32* %39, align 4, !dbg !516, !tbaa !183
  %41 = add nsw i32 %40, 1, !dbg !516
  %42 = ashr i32 %41, 1, !dbg !516
  switch i32 %42, label %43 [
    i32 1, label %54
    i32 3, label %54
  ], !dbg !518

; <label>:43                                      ; preds = %37
  %44 = and i32 %41, 1, !dbg !519
  %45 = icmp eq i32 %44, 0, !dbg !522
  %46 = sext i32 %40 to i64, !dbg !523
  %47 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %46, !dbg !523
  %48 = load i32* %47, align 4, !dbg !523, !tbaa !183
  br i1 %45, label %49, label %51, !dbg !524

; <label>:49                                      ; preds = %43
  %50 = add nsw i32 %28, %48, !dbg !525
  store i32 %50, i32* @wmat, align 4, !dbg !525, !tbaa !183
  br label %54, !dbg !526

; <label>:51                                      ; preds = %43
  %ispos102 = icmp sgt i32 %48, -1, !dbg !527
  %neg103 = sub i32 0, %48, !dbg !527
  %52 = select i1 %ispos102, i32 %48, i32 %neg103, !dbg !527
  %53 = add nsw i32 %29, %52, !dbg !528
  store i32 %53, i32* @bmat, align 4, !dbg !528, !tbaa !183
  br label %54

; <label>:54                                      ; preds = %37, %37, %49, %51
  %55 = phi i32 [ %28, %37 ], [ %28, %37 ], [ %50, %49 ], [ %28, %51 ]
  %56 = phi i32 [ %29, %37 ], [ %29, %37 ], [ %29, %49 ], [ %53, %51 ]
  %.mask = and i32 %41, -2, !dbg !529
  %57 = icmp eq i32 %.mask, 2, !dbg !529
  br i1 %57, label %58, label %83, !dbg !531

; <label>:58                                      ; preds = %54
  %59 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %38, !dbg !532
  %60 = load i32* %59, align 4, !dbg !532, !tbaa !183
  %61 = add nsw i32 %60, 1, !dbg !534
  call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !69, metadata !176), !dbg !535
  %62 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %38, !dbg !536
  %63 = load i32* %62, align 4, !dbg !536, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !79, metadata !176), !dbg !537
  %64 = and i32 %41, 1, !dbg !538
  %65 = icmp eq i32 %64, 0, !dbg !540
  %66 = sext i32 %61 to i64, !dbg !541
  br i1 %65, label %67, label %75, !dbg !543

; <label>:67                                      ; preds = %58
  %68 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %66, !dbg !541
  %69 = load i32* %68, align 4, !dbg !544, !tbaa !183
  %70 = add nsw i32 %69, 1, !dbg !544
  store i32 %70, i32* %68, align 4, !dbg !544, !tbaa !183
  %71 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %66, !dbg !545
  %72 = load i32* %71, align 4, !dbg !545, !tbaa !183
  %73 = icmp slt i32 %63, %72, !dbg !547
  br i1 %73, label %74, label %83, !dbg !548

; <label>:74                                      ; preds = %67
  store i32 %63, i32* %71, align 4, !dbg !549, !tbaa !183
  br label %83, !dbg !551

; <label>:75                                      ; preds = %58
  %76 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %66, !dbg !552
  %77 = load i32* %76, align 4, !dbg !554, !tbaa !183
  %78 = add nsw i32 %77, 1, !dbg !554
  store i32 %78, i32* %76, align 4, !dbg !554, !tbaa !183
  %79 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %66, !dbg !555
  %80 = load i32* %79, align 4, !dbg !555, !tbaa !183
  %81 = icmp sgt i32 %63, %80, !dbg !557
  br i1 %81, label %82, label %83, !dbg !558

; <label>:82                                      ; preds = %75
  store i32 %63, i32* %79, align 4, !dbg !559, !tbaa !183
  br label %83, !dbg !561

; <label>:83                                      ; preds = %.lr.ph173, %54, %75, %82, %67, %74
  %84 = phi i32 [ %55, %74 ], [ %55, %67 ], [ %55, %82 ], [ %55, %75 ], [ %55, %54 ], [ %28, %.lr.ph173 ]
  %85 = phi i32 [ %56, %74 ], [ %56, %67 ], [ %56, %82 ], [ %56, %75 ], [ %56, %54 ], [ %29, %.lr.ph173 ]
  %a.1 = phi i32 [ %34, %74 ], [ %34, %67 ], [ %34, %82 ], [ %34, %75 ], [ %34, %54 ], [ %a.0170, %.lr.ph173 ]
  %indvars.iv.next176 = add nuw i64 %indvars.iv175, 1, !dbg !505
  %86 = icmp sgt i32 %a.1, %26, !dbg !504
  br i1 %86, label %.preheader, label %.lr.ph173, !dbg !505

.lr.ph:                                           ; preds = %.preheader, %666
  %indvars.iv = phi i64 [ %indvars.iv.next, %666 ], [ 1, %.preheader ]
  %bpotential.0158 = phi i32 [ %bpotential.3, %666 ], [ 0, %.preheader ]
  %wpotential.0157 = phi i32 [ %wpotential.3, %666 ], [ 0, %.preheader ]
  %fwrook.0156 = phi i32 [ %fwrook.2, %666 ], [ 0, %.preheader ]
  %rwrook.0155 = phi i32 [ %rwrook.2, %666 ], [ 0, %.preheader ]
  %fbrook.0154 = phi i32 [ %fbrook.2, %666 ], [ 0, %.preheader ]
  %rbrook.0153 = phi i32 [ %rbrook.2, %666 ], [ 0, %.preheader ]
  %br.0152 = phi i32 [ %br.1, %666 ], [ 0, %.preheader ]
  %wr.0151 = phi i32 [ %wr.1, %666 ], [ 0, %.preheader ]
  %bq.0150 = phi i32 [ %bq.1, %666 ], [ 0, %.preheader ]
  %wq.0149 = phi i32 [ %wq.1, %666 ], [ 0, %.preheader ]
  %bb.0148 = phi i32 [ %bb.1, %666 ], [ 0, %.preheader ]
  %wb.0147 = phi i32 [ %wb.1, %666 ], [ 0, %.preheader ]
  %bn.0146 = phi i32 [ %bn.1, %666 ], [ 0, %.preheader ]
  %wn.0145 = phi i32 [ %wn.1, %666 ], [ 0, %.preheader ]
  %bp.0144 = phi i32 [ %bp.1, %666 ], [ 0, %.preheader ]
  %wp.0143 = phi i32 [ %wp.1, %666 ], [ 0, %.preheader ]
  %a.2141 = phi i32 [ %a.3, %666 ], [ 1, %.preheader ]
  %87 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !562
  %88 = load i32* %87, align 4, !dbg !562, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !67, metadata !176), !dbg !487
  %89 = icmp eq i32 %88, 0, !dbg !565
  br i1 %89, label %666, label %90, !dbg !567

; <label>:90                                      ; preds = %.lr.ph
  %91 = add nsw i32 %a.2141, 1, !dbg !568
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !68, metadata !176), !dbg !500
  %92 = sext i32 %88 to i64, !dbg !569
  %93 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %92, !dbg !569
  %94 = load i32* %93, align 4, !dbg !569, !tbaa !183
  %95 = add nsw i32 %94, 1, !dbg !569
  %96 = ashr i32 %95, 1, !dbg !569
  %97 = sext i32 %96 to i64, !dbg !570
  %98 = getelementptr inbounds [7 x i32 (i32, i32)*]* @evalRoutines, i64 0, i64 %97, !dbg !570
  %99 = load i32 (i32, i32)** %98, align 8, !dbg !570, !tbaa !571
  %100 = and i32 %95, 1, !dbg !573
  %101 = call i32 %99(i32 %88, i32 %100) #8, !dbg !574
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %102 = load i32* %score, align 4, !dbg !575, !tbaa !183
  %103 = add nsw i32 %102, %101, !dbg !575
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %103, i32* %score, align 4, !dbg !575, !tbaa !183
  %104 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %92, !dbg !576
  %105 = load i32* %104, align 4, !dbg !576, !tbaa !183
  %106 = add nsw i32 %105, 1, !dbg !577
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !69, metadata !176), !dbg !535
  %107 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %92, !dbg !578
  %108 = load i32* %107, align 4, !dbg !578, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !79, metadata !176), !dbg !537
  %109 = load i32* %93, align 4, !dbg !579, !tbaa !183
  switch i32 %109, label %666 [
    i32 1, label %110
    i32 2, label %266
    i32 7, label %422
    i32 8, label %448
    i32 11, label %474
    i32 12, label %476
    i32 3, label %478
    i32 4, label %480
    i32 9, label %482
    i32 10, label %484
    i32 5, label %486
    i32 6, label %570
  ], !dbg !580

; <label>:110                                     ; preds = %90
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !176), !dbg !581
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !86, metadata !176), !dbg !582
  %111 = getelementptr inbounds [144 x i32]* @swhite_pawn, i64 0, i64 %92, !dbg !583
  %112 = load i32* %111, align 4, !dbg !583, !tbaa !183
  %113 = add nsw i32 %112, %103, !dbg !585
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %113, i32* %score, align 4, !dbg !585, !tbaa !183
  %114 = add nsw i32 %wp.0143, 1, !dbg !586
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !88, metadata !176), !dbg !587
  %115 = add nsw i32 %105, 2, !dbg !588
  %116 = sext i32 %115 to i64, !dbg !590
  %117 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %116, !dbg !590
  %118 = load i32* %117, align 4, !dbg !590, !tbaa !183
  %119 = icmp sgt i32 %118, %108, !dbg !591
  br i1 %119, label %120, label %136, !dbg !592

; <label>:120                                     ; preds = %110
  %121 = sext i32 %105 to i64, !dbg !593
  %122 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %121, !dbg !593
  %123 = load i32* %122, align 4, !dbg !593, !tbaa !183
  %124 = icmp sgt i32 %123, %108, !dbg !594
  br i1 %124, label %125, label %136, !dbg !595

; <label>:125                                     ; preds = %120
  %126 = add nsw i32 %113, -8, !dbg !596
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %126, i32* %score, align 4, !dbg !596, !tbaa !183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !86, metadata !176), !dbg !582
  %127 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %116, !dbg !598
  %128 = load i32* %127, align 4, !dbg !598, !tbaa !183
  %129 = icmp eq i32 %128, 0, !dbg !598
  br i1 %129, label %130, label %136, !dbg !600

; <label>:130                                     ; preds = %125
  %131 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %121, !dbg !601
  %132 = load i32* %131, align 4, !dbg !601, !tbaa !183
  %133 = icmp eq i32 %132, 0, !dbg !601
  br i1 %133, label %134, label %136, !dbg !602

; <label>:134                                     ; preds = %130
  %135 = add nsw i32 %113, -13, !dbg !603
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %135, i32* %score, align 4, !dbg !603, !tbaa !183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !84, metadata !176), !dbg !581
  br label %136, !dbg !605

; <label>:136                                     ; preds = %130, %125, %134, %120, %110
  %137 = phi i32 [ %126, %125 ], [ %126, %130 ], [ %135, %134 ], [ %113, %120 ], [ %113, %110 ]
  %isolated.0 = phi i32 [ 0, %125 ], [ 0, %130 ], [ 1, %134 ], [ 0, %120 ], [ 0, %110 ]
  %backwards.0 = phi i32 [ 1, %125 ], [ 1, %130 ], [ 1, %134 ], [ 0, %120 ], [ 0, %110 ]
  %138 = sext i32 %106 to i64, !dbg !606
  %139 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %138, !dbg !606
  %140 = load i32* %139, align 4, !dbg !606, !tbaa !183
  %141 = icmp eq i32 %140, 0, !dbg !606
  br i1 %141, label %142, label %151, !dbg !608

; <label>:142                                     ; preds = %136
  %143 = icmp eq i32 %backwards.0, 0, !dbg !609
  br i1 %143, label %146, label %144, !dbg !612

; <label>:144                                     ; preds = %142
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %145 = add nsw i32 %137, -3, !dbg !613
  call void @llvm.dbg.value(metadata i32 %145, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %145, i32* %score, align 4, !dbg !613, !tbaa !183
  br label %146, !dbg !614

; <label>:146                                     ; preds = %142, %144
  %147 = phi i32 [ %137, %142 ], [ %145, %144 ]
  %148 = icmp eq i32 %isolated.0, 0, !dbg !615
  br i1 %148, label %151, label %149, !dbg !617

; <label>:149                                     ; preds = %146
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %150 = add nsw i32 %147, -5, !dbg !618
  call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %150, i32* %score, align 4, !dbg !618, !tbaa !183
  br label %151, !dbg !619

; <label>:151                                     ; preds = %146, %136, %149
  %152 = phi i32 [ %147, %146 ], [ %137, %136 ], [ %150, %149 ]
  %153 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %138, !dbg !620
  %154 = load i32* %153, align 4, !dbg !620, !tbaa !183
  %155 = icmp sgt i32 %154, 1, !dbg !622
  br i1 %155, label %156, label %159, !dbg !623

; <label>:156                                     ; preds = %151
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %157 = mul i32 %154, -3
  %.neg127 = add i32 %157, 3, !dbg !624
  %158 = add i32 %.neg127, %152, !dbg !625
  call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %158, i32* %score, align 4, !dbg !625, !tbaa !183
  br label %159, !dbg !626

; <label>:159                                     ; preds = %156, %151
  %160 = phi i32 [ %158, %156 ], [ %152, %151 ]
  %161 = sext i32 %105 to i64, !dbg !627
  br i1 %141, label %162, label %._crit_edge181, !dbg !629

; <label>:162                                     ; preds = %159
  %163 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %161, !dbg !627
  %164 = load i32* %163, align 4, !dbg !627, !tbaa !183
  %165 = icmp slt i32 %108, %164, !dbg !630
  br i1 %165, label %._crit_edge181, label %166, !dbg !631

; <label>:166                                     ; preds = %162
  %167 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %116, !dbg !632
  %168 = load i32* %167, align 4, !dbg !632, !tbaa !183
  %169 = icmp slt i32 %108, %168, !dbg !633
  br i1 %169, label %._crit_edge181, label %170, !dbg !634

; <label>:170                                     ; preds = %166
  %171 = mul nsw i32 %112, 3, !dbg !635
  %172 = add nsw i32 %171, 30, !dbg !637
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %173 = add nsw i32 %172, %160, !dbg !638
  call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %173, i32* %score, align 4, !dbg !638, !tbaa !183
  %174 = load i32* @white_to_move, align 4, !dbg !639, !tbaa !183
  %175 = icmp eq i32 %174, 0, !dbg !639
  %176 = add nsw i32 %105, 109, !dbg !641
  call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !104, metadata !176), !dbg !643
  %177 = load i32* @bking_loc, align 4, !dbg !644, !tbaa !183
  %178 = sext i32 %177 to i64, !dbg !644
  %179 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %178, !dbg !644
  %180 = load i32* %179, align 4, !dbg !644, !tbaa !183
  %181 = sext i32 %176 to i64, !dbg !644
  %182 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %181, !dbg !644
  %183 = load i32* %182, align 4, !dbg !644, !tbaa !183
  %184 = sub nsw i32 %180, %183, !dbg !644
  %ispos90 = icmp sgt i32 %184, -1, !dbg !644
  %neg91 = sub i32 0, %184, !dbg !644
  %185 = select i1 %ispos90, i32 %184, i32 %neg91, !dbg !644
  %186 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %178, !dbg !644
  %187 = load i32* %186, align 4, !dbg !644, !tbaa !183
  %188 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %181, !dbg !644
  %189 = load i32* %188, align 4, !dbg !644, !tbaa !183
  %190 = sub nsw i32 %187, %189, !dbg !644
  %ispos92 = icmp sgt i32 %190, -1, !dbg !644
  %neg93 = sub i32 0, %190, !dbg !644
  %191 = select i1 %ispos92, i32 %190, i32 %neg93, !dbg !644
  %192 = icmp sgt i32 %185, %191, !dbg !644
  %.105 = select i1 %192, i32 %184, i32 %190, !dbg !646
  %ispos94 = icmp sgt i32 %.105, -1, !dbg !646
  %neg95 = sub i32 0, %.105, !dbg !646
  %193 = select i1 %ispos94, i32 %.105, i32 %neg95, !dbg !646
  br i1 %175, label %199, label %194, !dbg !649

; <label>:194                                     ; preds = %170
  %195 = sub nsw i32 %189, %108, !dbg !650
  %ispos100 = icmp sgt i32 %195, -1, !dbg !651
  %neg101 = sub i32 0, %195, !dbg !651
  %196 = select i1 %ispos100, i32 %195, i32 %neg101, !dbg !651
  %197 = icmp sgt i32 %193, %196, !dbg !652
  %198 = add nsw i32 %wpotential.0157, 800, !dbg !653
  call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !102, metadata !176), !dbg !655
  %.wpotential.0 = select i1 %197, i32 %198, i32 %wpotential.0157, !dbg !656
  br label %205, !dbg !656

; <label>:199                                     ; preds = %170
  %200 = add nsw i32 %193, -1, !dbg !657
  %201 = sub nsw i32 %189, %108, !dbg !658
  %ispos96 = icmp sgt i32 %201, -1, !dbg !659
  %neg97 = sub i32 0, %201, !dbg !659
  %202 = select i1 %ispos96, i32 %201, i32 %neg97, !dbg !659
  %203 = icmp sgt i32 %200, %202, !dbg !660
  %204 = add nsw i32 %wpotential.0157, 800, !dbg !661
  call void @llvm.dbg.value(metadata i32 %204, i64 0, metadata !102, metadata !176), !dbg !655
  %.wpotential.0117 = select i1 %203, i32 %204, i32 %wpotential.0157, !dbg !663
  br label %205, !dbg !663

; <label>:205                                     ; preds = %199, %194
  %wpotential.1 = phi i32 [ %.wpotential.0, %194 ], [ %.wpotential.0117, %199 ]
  switch i32 %105, label %210 [
    i32 1, label %206
    i32 8, label %206
  ], !dbg !664

; <label>:206                                     ; preds = %205, %205
  %207 = shl i32 %112, 1, !dbg !666
  %208 = add nsw i32 %207, 12, !dbg !667
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %209 = add nsw i32 %208, %173, !dbg !668
  call void @llvm.dbg.value(metadata i32 %209, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %209, i32* %score, align 4, !dbg !668, !tbaa !183
  br label %210, !dbg !669

; <label>:210                                     ; preds = %205, %206
  %211 = phi i32 [ %173, %205 ], [ %209, %206 ]
  %212 = icmp eq i32 %isolated.0, 0, !dbg !670
  br i1 %212, label %213, label %._crit_edge181, !dbg !672

; <label>:213                                     ; preds = %210
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %214 = add nsw i32 %211, 12, !dbg !673
  call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %214, i32* %score, align 4, !dbg !673, !tbaa !183
  %215 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %116, !dbg !675
  %216 = load i32* %215, align 4, !dbg !675, !tbaa !183
  %217 = icmp eq i32 %216, 0, !dbg !675
  br i1 %217, label %235, label %218, !dbg !677

; <label>:218                                     ; preds = %213
  %219 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %116, !dbg !678
  %220 = load i32* %219, align 4, !dbg !678, !tbaa !183
  %221 = icmp eq i32 %220, 0, !dbg !678
  br i1 %221, label %222, label %235, !dbg !681

; <label>:222                                     ; preds = %218
  %223 = add nsw i32 %105, 3, !dbg !682
  %224 = sext i32 %223 to i64, !dbg !683
  %225 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %224, !dbg !683
  %226 = load i32* %225, align 4, !dbg !683, !tbaa !183
  %227 = icmp slt i32 %118, %226, !dbg !684
  br i1 %227, label %235, label %228, !dbg !685

; <label>:228                                     ; preds = %222
  %229 = mul nsw i32 %108, 7, !dbg !686
  %230 = add nsw i32 %229, %214, !dbg !688
  call void @llvm.dbg.value(metadata i32 %230, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %230, i32* %score, align 4, !dbg !688, !tbaa !183
  %231 = icmp eq i32 %108, 7, !dbg !689
  %232 = icmp sgt i32 %118, 5, !dbg !691
  %or.cond185 = and i1 %231, %232, !dbg !692
  br i1 %or.cond185, label %233, label %235, !dbg !692

; <label>:233                                     ; preds = %228
  %234 = add nsw i32 %230, 50, !dbg !693
  call void @llvm.dbg.value(metadata i32 %234, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %234, i32* %score, align 4, !dbg !693, !tbaa !183
  br label %235, !dbg !695

; <label>:235                                     ; preds = %222, %218, %213, %233, %228
  %236 = phi i32 [ %214, %222 ], [ %214, %218 ], [ %214, %213 ], [ %234, %233 ], [ %230, %228 ]
  %237 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %161, !dbg !696
  %238 = load i32* %237, align 4, !dbg !696, !tbaa !183
  %239 = icmp eq i32 %238, 0, !dbg !696
  br i1 %239, label %._crit_edge181, label %240, !dbg !698

; <label>:240                                     ; preds = %235
  %241 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %161, !dbg !699
  %242 = load i32* %241, align 4, !dbg !699, !tbaa !183
  %243 = icmp eq i32 %242, 0, !dbg !699
  br i1 %243, label %244, label %._crit_edge181, !dbg !702

; <label>:244                                     ; preds = %240
  %245 = add nsw i32 %105, -1, !dbg !703
  %246 = sext i32 %245 to i64, !dbg !704
  %247 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %246, !dbg !704
  %248 = load i32* %247, align 4, !dbg !704, !tbaa !183
  %249 = icmp slt i32 %118, %248, !dbg !705
  br i1 %249, label %._crit_edge181, label %250, !dbg !706

; <label>:250                                     ; preds = %244
  %251 = mul nsw i32 %108, 7, !dbg !707
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %252 = add nsw i32 %236, %251, !dbg !709
  call void @llvm.dbg.value(metadata i32 %252, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %252, i32* %score, align 4, !dbg !709, !tbaa !183
  %253 = icmp eq i32 %108, 7, !dbg !710
  br i1 %253, label %254, label %._crit_edge181, !dbg !712

; <label>:254                                     ; preds = %250
  %255 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %161, !dbg !713
  %256 = load i32* %255, align 4, !dbg !713, !tbaa !183
  %257 = icmp sgt i32 %256, 5, !dbg !714
  br i1 %257, label %258, label %._crit_edge181, !dbg !715

; <label>:258                                     ; preds = %254
  %259 = add nsw i32 %252, 50, !dbg !716
  call void @llvm.dbg.value(metadata i32 %259, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %259, i32* %score, align 4, !dbg !716, !tbaa !183
  br label %._crit_edge181, !dbg !718

._crit_edge181:                                   ; preds = %159, %244, %240, %235, %210, %166, %162, %258, %254, %250
  %260 = phi i32 [ %236, %244 ], [ %236, %240 ], [ %236, %235 ], [ %211, %210 ], [ %160, %166 ], [ %160, %162 ], [ %259, %258 ], [ %252, %254 ], [ %252, %250 ], [ %160, %159 ]
  %wpotential.2 = phi i32 [ %wpotential.1, %244 ], [ %wpotential.1, %240 ], [ %wpotential.1, %235 ], [ %wpotential.1, %210 ], [ %wpotential.0157, %166 ], [ %wpotential.0157, %162 ], [ %wpotential.1, %258 ], [ %wpotential.1, %254 ], [ %wpotential.1, %250 ], [ %wpotential.0157, %159 ]
  %261 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %161, !dbg !719
  %262 = load i32* %261, align 4, !dbg !719, !tbaa !183
  %263 = icmp eq i32 %262, 0, !dbg !719
  br i1 %263, label %264, label %666, !dbg !721

; <label>:264                                     ; preds = %._crit_edge181
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %265 = add nsw i32 %260, -7, !dbg !722
  call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %265, i32* %score, align 4, !dbg !722, !tbaa !183
  br label %666, !dbg !723

; <label>:266                                     ; preds = %90
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !176), !dbg !581
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !86, metadata !176), !dbg !582
  %267 = getelementptr inbounds [144 x i32]* @sblack_pawn, i64 0, i64 %92, !dbg !724
  %268 = load i32* %267, align 4, !dbg !724, !tbaa !183
  %269 = sub nsw i32 %103, %268, !dbg !725
  call void @llvm.dbg.value(metadata i32 %269, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %269, i32* %score, align 4, !dbg !725, !tbaa !183
  %270 = add nsw i32 %bp.0144, 1, !dbg !726
  call void @llvm.dbg.value(metadata i32 %270, i64 0, metadata !89, metadata !176), !dbg !727
  %271 = add nsw i32 %105, 2, !dbg !728
  %272 = sext i32 %271 to i64, !dbg !730
  %273 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %272, !dbg !730
  %274 = load i32* %273, align 4, !dbg !730, !tbaa !183
  %275 = icmp slt i32 %274, %108, !dbg !731
  br i1 %275, label %276, label %292, !dbg !732

; <label>:276                                     ; preds = %266
  %277 = sext i32 %105 to i64, !dbg !733
  %278 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %277, !dbg !733
  %279 = load i32* %278, align 4, !dbg !733, !tbaa !183
  %280 = icmp slt i32 %279, %108, !dbg !734
  br i1 %280, label %281, label %292, !dbg !735

; <label>:281                                     ; preds = %276
  %282 = add nsw i32 %269, 8, !dbg !736
  call void @llvm.dbg.value(metadata i32 %282, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %282, i32* %score, align 4, !dbg !736, !tbaa !183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !86, metadata !176), !dbg !582
  %283 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %272, !dbg !738
  %284 = load i32* %283, align 4, !dbg !738, !tbaa !183
  %285 = icmp eq i32 %284, 0, !dbg !738
  br i1 %285, label %286, label %292, !dbg !740

; <label>:286                                     ; preds = %281
  %287 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %277, !dbg !741
  %288 = load i32* %287, align 4, !dbg !741, !tbaa !183
  %289 = icmp eq i32 %288, 0, !dbg !741
  br i1 %289, label %290, label %292, !dbg !742

; <label>:290                                     ; preds = %286
  %291 = add nsw i32 %269, 13, !dbg !743
  call void @llvm.dbg.value(metadata i32 %291, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %291, i32* %score, align 4, !dbg !743, !tbaa !183
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !84, metadata !176), !dbg !581
  br label %292, !dbg !745

; <label>:292                                     ; preds = %286, %281, %290, %276, %266
  %293 = phi i32 [ %282, %281 ], [ %282, %286 ], [ %291, %290 ], [ %269, %276 ], [ %269, %266 ]
  %isolated.1 = phi i32 [ 0, %281 ], [ 0, %286 ], [ 1, %290 ], [ 0, %276 ], [ 0, %266 ]
  %backwards.1 = phi i32 [ 1, %281 ], [ 1, %286 ], [ 1, %290 ], [ 0, %276 ], [ 0, %266 ]
  %294 = sext i32 %106 to i64, !dbg !746
  %295 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %294, !dbg !746
  %296 = load i32* %295, align 4, !dbg !746, !tbaa !183
  %297 = icmp eq i32 %296, 0, !dbg !746
  br i1 %297, label %298, label %307, !dbg !748

; <label>:298                                     ; preds = %292
  %299 = icmp eq i32 %backwards.1, 0, !dbg !749
  br i1 %299, label %302, label %300, !dbg !752

; <label>:300                                     ; preds = %298
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %301 = add nsw i32 %293, 3, !dbg !753
  call void @llvm.dbg.value(metadata i32 %301, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %301, i32* %score, align 4, !dbg !753, !tbaa !183
  br label %302, !dbg !754

; <label>:302                                     ; preds = %298, %300
  %303 = phi i32 [ %293, %298 ], [ %301, %300 ]
  %304 = icmp eq i32 %isolated.1, 0, !dbg !755
  br i1 %304, label %307, label %305, !dbg !757

; <label>:305                                     ; preds = %302
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %306 = add nsw i32 %303, 5, !dbg !758
  call void @llvm.dbg.value(metadata i32 %306, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %306, i32* %score, align 4, !dbg !758, !tbaa !183
  br label %307, !dbg !759

; <label>:307                                     ; preds = %302, %292, %305
  %308 = phi i32 [ %303, %302 ], [ %293, %292 ], [ %306, %305 ]
  %309 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %294, !dbg !760
  %310 = load i32* %309, align 4, !dbg !760, !tbaa !183
  %311 = icmp sgt i32 %310, 1, !dbg !762
  br i1 %311, label %312, label %316, !dbg !763

; <label>:312                                     ; preds = %307
  %313 = mul i32 %310, 3, !dbg !764
  %314 = add i32 %313, -3, !dbg !764
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %315 = add nsw i32 %314, %308, !dbg !765
  call void @llvm.dbg.value(metadata i32 %315, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %315, i32* %score, align 4, !dbg !765, !tbaa !183
  br label %316, !dbg !766

; <label>:316                                     ; preds = %312, %307
  %317 = phi i32 [ %315, %312 ], [ %308, %307 ]
  %318 = sext i32 %105 to i64, !dbg !767
  br i1 %297, label %319, label %._crit_edge180, !dbg !769

; <label>:319                                     ; preds = %316
  %320 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %318, !dbg !767
  %321 = load i32* %320, align 4, !dbg !767, !tbaa !183
  %322 = icmp sgt i32 %108, %321, !dbg !770
  br i1 %322, label %._crit_edge180, label %323, !dbg !771

; <label>:323                                     ; preds = %319
  %324 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %272, !dbg !772
  %325 = load i32* %324, align 4, !dbg !772, !tbaa !183
  %326 = icmp sgt i32 %108, %325, !dbg !773
  br i1 %326, label %._crit_edge180, label %327, !dbg !774

; <label>:327                                     ; preds = %323
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %328 = mul i32 %268, -3
  %.neg129 = add nsw i32 %328, -30, !dbg !775
  %329 = add i32 %.neg129, %317, !dbg !777
  call void @llvm.dbg.value(metadata i32 %329, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %329, i32* %score, align 4, !dbg !777, !tbaa !183
  %330 = load i32* @white_to_move, align 4, !dbg !778, !tbaa !183
  %331 = icmp eq i32 %330, 0, !dbg !778
  %332 = add nsw i32 %105, 25, !dbg !780
  call void @llvm.dbg.value(metadata i32 %332, i64 0, metadata !104, metadata !176), !dbg !643
  %333 = load i32* @wking_loc, align 4, !dbg !782, !tbaa !183
  %334 = sext i32 %333 to i64, !dbg !782
  %335 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %334, !dbg !782
  %336 = load i32* %335, align 4, !dbg !782, !tbaa !183
  %337 = sext i32 %332 to i64, !dbg !782
  %338 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %337, !dbg !782
  %339 = load i32* %338, align 4, !dbg !782, !tbaa !183
  %340 = sub nsw i32 %336, %339, !dbg !782
  %ispos78 = icmp sgt i32 %340, -1, !dbg !782
  %neg79 = sub i32 0, %340, !dbg !782
  %341 = select i1 %ispos78, i32 %340, i32 %neg79, !dbg !782
  %342 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %334, !dbg !782
  %343 = load i32* %342, align 4, !dbg !782, !tbaa !183
  %344 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %337, !dbg !782
  %345 = load i32* %344, align 4, !dbg !782, !tbaa !183
  %346 = sub nsw i32 %343, %345, !dbg !782
  %ispos80 = icmp sgt i32 %346, -1, !dbg !782
  %neg81 = sub i32 0, %346, !dbg !782
  %347 = select i1 %ispos80, i32 %346, i32 %neg81, !dbg !782
  %348 = icmp sgt i32 %341, %347, !dbg !782
  %.106 = select i1 %348, i32 %340, i32 %346, !dbg !784
  %ispos82 = icmp sgt i32 %.106, -1, !dbg !784
  %neg83 = sub i32 0, %.106, !dbg !784
  %349 = select i1 %ispos82, i32 %.106, i32 %neg83, !dbg !784
  br i1 %331, label %350, label %355, !dbg !787

; <label>:350                                     ; preds = %327
  %351 = sub nsw i32 %345, %108, !dbg !788
  %ispos84 = icmp sgt i32 %351, -1, !dbg !789
  %neg85 = sub i32 0, %351, !dbg !789
  %352 = select i1 %ispos84, i32 %351, i32 %neg85, !dbg !789
  %353 = icmp sgt i32 %349, %352, !dbg !790
  %354 = add nsw i32 %bpotential.0158, -800, !dbg !791
  call void @llvm.dbg.value(metadata i32 %354, i64 0, metadata !103, metadata !176), !dbg !793
  %.bpotential.0 = select i1 %353, i32 %354, i32 %bpotential.0158, !dbg !794
  br label %361, !dbg !794

; <label>:355                                     ; preds = %327
  %356 = add nsw i32 %349, -1, !dbg !795
  %357 = sub nsw i32 %345, %108, !dbg !796
  %ispos88 = icmp sgt i32 %357, -1, !dbg !797
  %neg89 = sub i32 0, %357, !dbg !797
  %358 = select i1 %ispos88, i32 %357, i32 %neg89, !dbg !797
  %359 = icmp sgt i32 %356, %358, !dbg !798
  %360 = add nsw i32 %bpotential.0158, -800, !dbg !799
  call void @llvm.dbg.value(metadata i32 %360, i64 0, metadata !103, metadata !176), !dbg !793
  %.bpotential.0118 = select i1 %359, i32 %360, i32 %bpotential.0158, !dbg !801
  br label %361, !dbg !801

; <label>:361                                     ; preds = %355, %350
  %bpotential.1 = phi i32 [ %.bpotential.0, %350 ], [ %.bpotential.0118, %355 ]
  switch i32 %105, label %365 [
    i32 1, label %362
    i32 8, label %362
  ], !dbg !802

; <label>:362                                     ; preds = %361, %361
  %363 = shl i32 %268, 1, !dbg !804
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %.neg131 = sub i32 -12, %363, !dbg !805
  %364 = add i32 %.neg131, %329, !dbg !806
  call void @llvm.dbg.value(metadata i32 %364, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %364, i32* %score, align 4, !dbg !806, !tbaa !183
  br label %365, !dbg !807

; <label>:365                                     ; preds = %361, %362
  %366 = phi i32 [ %329, %361 ], [ %364, %362 ]
  %367 = icmp eq i32 %isolated.1, 0, !dbg !808
  br i1 %367, label %368, label %._crit_edge180, !dbg !810

; <label>:368                                     ; preds = %365
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %369 = add nsw i32 %366, -12, !dbg !811
  call void @llvm.dbg.value(metadata i32 %369, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %369, i32* %score, align 4, !dbg !811, !tbaa !183
  %370 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %272, !dbg !813
  %371 = load i32* %370, align 4, !dbg !813, !tbaa !183
  %372 = icmp eq i32 %371, 0, !dbg !813
  br i1 %372, label %391, label %373, !dbg !815

; <label>:373                                     ; preds = %368
  %374 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %272, !dbg !816
  %375 = load i32* %374, align 4, !dbg !816, !tbaa !183
  %376 = icmp eq i32 %375, 0, !dbg !816
  br i1 %376, label %377, label %391, !dbg !819

; <label>:377                                     ; preds = %373
  %378 = add nsw i32 %105, 3, !dbg !820
  %379 = sext i32 %378 to i64, !dbg !821
  %380 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %379, !dbg !821
  %381 = load i32* %380, align 4, !dbg !821, !tbaa !183
  %382 = icmp sgt i32 %274, %381, !dbg !822
  br i1 %382, label %391, label %383, !dbg !823

; <label>:383                                     ; preds = %377
  %384 = sub nsw i32 9, %108, !dbg !824
  %385 = mul i32 %384, -7, !dbg !826
  %386 = add i32 %369, %385, !dbg !826
  call void @llvm.dbg.value(metadata i32 %386, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %386, i32* %score, align 4, !dbg !826, !tbaa !183
  %387 = icmp eq i32 %108, 2, !dbg !827
  %388 = icmp slt i32 %274, 4, !dbg !829
  %or.cond186 = and i1 %387, %388, !dbg !830
  br i1 %or.cond186, label %389, label %391, !dbg !830

; <label>:389                                     ; preds = %383
  %390 = add nsw i32 %386, -50, !dbg !831
  call void @llvm.dbg.value(metadata i32 %390, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %390, i32* %score, align 4, !dbg !831, !tbaa !183
  br label %391, !dbg !833

; <label>:391                                     ; preds = %377, %373, %368, %389, %383
  %392 = phi i32 [ %369, %377 ], [ %369, %373 ], [ %369, %368 ], [ %390, %389 ], [ %386, %383 ]
  %393 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %318, !dbg !834
  %394 = load i32* %393, align 4, !dbg !834, !tbaa !183
  %395 = icmp eq i32 %394, 0, !dbg !834
  br i1 %395, label %._crit_edge180, label %396, !dbg !836

; <label>:396                                     ; preds = %391
  %397 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %318, !dbg !837
  %398 = load i32* %397, align 4, !dbg !837, !tbaa !183
  %399 = icmp eq i32 %398, 0, !dbg !837
  br i1 %399, label %400, label %._crit_edge180, !dbg !840

; <label>:400                                     ; preds = %396
  %401 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %318, !dbg !841
  %402 = load i32* %401, align 4, !dbg !841, !tbaa !183
  %403 = add nsw i32 %105, -1, !dbg !842
  %404 = sext i32 %403 to i64, !dbg !843
  %405 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %404, !dbg !843
  %406 = load i32* %405, align 4, !dbg !843, !tbaa !183
  %407 = icmp sgt i32 %402, %406, !dbg !844
  br i1 %407, label %._crit_edge180, label %408, !dbg !845

; <label>:408                                     ; preds = %400
  %409 = sub nsw i32 9, %108, !dbg !846
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %410 = mul i32 %409, -7, !dbg !848
  %411 = add i32 %392, %410, !dbg !848
  call void @llvm.dbg.value(metadata i32 %411, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %411, i32* %score, align 4, !dbg !848, !tbaa !183
  %412 = icmp eq i32 %108, 2, !dbg !849
  %413 = icmp slt i32 %402, 4, !dbg !851
  %or.cond187 = and i1 %412, %413, !dbg !852
  br i1 %or.cond187, label %414, label %._crit_edge180, !dbg !852

; <label>:414                                     ; preds = %408
  %415 = add nsw i32 %411, -50, !dbg !853
  call void @llvm.dbg.value(metadata i32 %415, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %415, i32* %score, align 4, !dbg !853, !tbaa !183
  br label %._crit_edge180, !dbg !855

._crit_edge180:                                   ; preds = %316, %400, %396, %391, %365, %323, %319, %414, %408
  %416 = phi i32 [ %392, %400 ], [ %392, %396 ], [ %392, %391 ], [ %366, %365 ], [ %317, %323 ], [ %317, %319 ], [ %415, %414 ], [ %411, %408 ], [ %317, %316 ]
  %bpotential.2 = phi i32 [ %bpotential.1, %400 ], [ %bpotential.1, %396 ], [ %bpotential.1, %391 ], [ %bpotential.1, %365 ], [ %bpotential.0158, %323 ], [ %bpotential.0158, %319 ], [ %bpotential.1, %414 ], [ %bpotential.1, %408 ], [ %bpotential.0158, %316 ]
  %417 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %318, !dbg !856
  %418 = load i32* %417, align 4, !dbg !856, !tbaa !183
  %419 = icmp eq i32 %418, 0, !dbg !856
  br i1 %419, label %420, label %666, !dbg !858

; <label>:420                                     ; preds = %._crit_edge180
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %421 = add nsw i32 %416, 7, !dbg !859
  call void @llvm.dbg.value(metadata i32 %421, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %421, i32* %score, align 4, !dbg !859, !tbaa !183
  br label %666, !dbg !860

; <label>:422                                     ; preds = %90
  %423 = add nsw i32 %wr.0151, 1, !dbg !861
  call void @llvm.dbg.value(metadata i32 %423, i64 0, metadata !96, metadata !176), !dbg !862
  %424 = icmp eq i32 %wr.0151, 0, !dbg !863
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !101, metadata !176), !dbg !865
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !100, metadata !176), !dbg !866
  %.rwrook.0 = select i1 %424, i32 %108, i32 %rwrook.0155, !dbg !867
  %.fwrook.0 = select i1 %424, i32 %105, i32 %fwrook.0156, !dbg !867
  %425 = icmp eq i32 %108, 7, !dbg !868
  br i1 %425, label %426, label %432, !dbg !870

; <label>:426                                     ; preds = %422
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %427 = add nsw i32 %103, 25, !dbg !871
  call void @llvm.dbg.value(metadata i32 %427, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %427, i32* %score, align 4, !dbg !871, !tbaa !183
  %428 = icmp eq i32 %423, 2, !dbg !873
  %429 = icmp eq i32 %.rwrook.0, 7, !dbg !875
  %or.cond = and i1 %428, %429, !dbg !876
  br i1 %or.cond, label %430, label %432, !dbg !876

; <label>:430                                     ; preds = %426
  %431 = add nsw i32 %103, 35, !dbg !877
  call void @llvm.dbg.value(metadata i32 %431, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %431, i32* %score, align 4, !dbg !877, !tbaa !183
  br label %432, !dbg !879

; <label>:432                                     ; preds = %426, %430, %422
  %433 = phi i32 [ %427, %426 ], [ %431, %430 ], [ %103, %422 ]
  %434 = sext i32 %106 to i64, !dbg !880
  %435 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %434, !dbg !880
  %436 = load i32* %435, align 4, !dbg !880, !tbaa !183
  %437 = icmp eq i32 %436, 0, !dbg !880
  br i1 %437, label %438, label %666, !dbg !882

; <label>:438                                     ; preds = %432
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %439 = add nsw i32 %433, 5, !dbg !883
  call void @llvm.dbg.value(metadata i32 %439, i64 0, metadata !83, metadata !176), !dbg !460
  %440 = icmp eq i32 %423, 2, !dbg !885
  %441 = icmp eq i32 %105, %.fwrook.0, !dbg !887
  %or.cond188 = and i1 %440, %441, !dbg !888
  %442 = add nsw i32 %433, 17, !dbg !889
  call void @llvm.dbg.value(metadata i32 %442, i64 0, metadata !83, metadata !176), !dbg !460
  %. = select i1 %or.cond188, i32 %442, i32 %439, !dbg !888
  store i32 %., i32* %score, align 4, !dbg !883, !tbaa !183
  %443 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %434, !dbg !891
  %444 = load i32* %443, align 4, !dbg !891, !tbaa !183
  %445 = icmp eq i32 %444, 0, !dbg !891
  br i1 %445, label %446, label %666, !dbg !893

; <label>:446                                     ; preds = %438
  %.192 = select i1 %or.cond188, i32 %442, i32 %439, !dbg !888
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %447 = add nsw i32 %.192, 3, !dbg !894
  call void @llvm.dbg.value(metadata i32 %447, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %447, i32* %score, align 4, !dbg !894, !tbaa !183
  br label %666, !dbg !896

; <label>:448                                     ; preds = %90
  %449 = add nsw i32 %br.0152, 1, !dbg !897
  call void @llvm.dbg.value(metadata i32 %449, i64 0, metadata !97, metadata !176), !dbg !898
  %450 = icmp eq i32 %br.0152, 0, !dbg !899
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !99, metadata !176), !dbg !901
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !98, metadata !176), !dbg !902
  %.rbrook.0 = select i1 %450, i32 %108, i32 %rbrook.0153, !dbg !903
  %.fbrook.0 = select i1 %450, i32 %105, i32 %fbrook.0154, !dbg !903
  %451 = icmp eq i32 %108, 2, !dbg !904
  br i1 %451, label %452, label %458, !dbg !906

; <label>:452                                     ; preds = %448
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %453 = add nsw i32 %103, -25, !dbg !907
  call void @llvm.dbg.value(metadata i32 %453, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %453, i32* %score, align 4, !dbg !907, !tbaa !183
  %454 = icmp eq i32 %wr.0151, 2, !dbg !909
  %455 = icmp eq i32 %.rbrook.0, 2, !dbg !911
  %or.cond6 = and i1 %454, %455, !dbg !912
  br i1 %or.cond6, label %456, label %458, !dbg !912

; <label>:456                                     ; preds = %452
  %457 = add nsw i32 %103, -35, !dbg !913
  call void @llvm.dbg.value(metadata i32 %457, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %457, i32* %score, align 4, !dbg !913, !tbaa !183
  br label %458, !dbg !915

; <label>:458                                     ; preds = %452, %456, %448
  %459 = phi i32 [ %453, %452 ], [ %457, %456 ], [ %103, %448 ]
  %460 = sext i32 %106 to i64, !dbg !916
  %461 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %460, !dbg !916
  %462 = load i32* %461, align 4, !dbg !916, !tbaa !183
  %463 = icmp eq i32 %462, 0, !dbg !916
  br i1 %463, label %464, label %666, !dbg !918

; <label>:464                                     ; preds = %458
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %465 = add nsw i32 %459, -5, !dbg !919
  call void @llvm.dbg.value(metadata i32 %465, i64 0, metadata !83, metadata !176), !dbg !460
  %466 = icmp eq i32 %449, 2, !dbg !921
  %467 = icmp eq i32 %105, %.fbrook.0, !dbg !923
  %or.cond189 = and i1 %466, %467, !dbg !924
  %468 = add nsw i32 %459, -17, !dbg !925
  call void @llvm.dbg.value(metadata i32 %468, i64 0, metadata !83, metadata !176), !dbg !460
  %.193 = select i1 %or.cond189, i32 %468, i32 %465, !dbg !924
  store i32 %.193, i32* %score, align 4, !dbg !919, !tbaa !183
  %469 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %460, !dbg !927
  %470 = load i32* %469, align 4, !dbg !927, !tbaa !183
  %471 = icmp eq i32 %470, 0, !dbg !927
  br i1 %471, label %472, label %666, !dbg !929

; <label>:472                                     ; preds = %464
  %.194 = select i1 %or.cond189, i32 %468, i32 %465, !dbg !924
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %473 = add nsw i32 %.194, -3, !dbg !930
  call void @llvm.dbg.value(metadata i32 %473, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %473, i32* %score, align 4, !dbg !930, !tbaa !183
  br label %666, !dbg !932

; <label>:474                                     ; preds = %90
  %475 = add nsw i32 %wb.0147, 1, !dbg !933
  call void @llvm.dbg.value(metadata i32 %475, i64 0, metadata !92, metadata !176), !dbg !934
  br label %666, !dbg !935

; <label>:476                                     ; preds = %90
  %477 = add nsw i32 %bb.0148, 1, !dbg !936
  call void @llvm.dbg.value(metadata i32 %477, i64 0, metadata !93, metadata !176), !dbg !937
  br label %666, !dbg !938

; <label>:478                                     ; preds = %90
  %479 = add nsw i32 %wn.0145, 1, !dbg !939
  call void @llvm.dbg.value(metadata i32 %479, i64 0, metadata !90, metadata !176), !dbg !940
  br label %666, !dbg !941

; <label>:480                                     ; preds = %90
  %481 = add nsw i32 %bn.0146, 1, !dbg !942
  call void @llvm.dbg.value(metadata i32 %481, i64 0, metadata !91, metadata !176), !dbg !943
  br label %666, !dbg !944

; <label>:482                                     ; preds = %90
  %483 = add nsw i32 %wq.0149, 1, !dbg !945
  call void @llvm.dbg.value(metadata i32 %483, i64 0, metadata !94, metadata !176), !dbg !946
  br label %666, !dbg !947

; <label>:484                                     ; preds = %90
  %485 = add nsw i32 %bq.0150, 1, !dbg !948
  call void @llvm.dbg.value(metadata i32 %485, i64 0, metadata !95, metadata !176), !dbg !949
  br label %666, !dbg !950

; <label>:486                                     ; preds = %90
  %487 = load i32* @wmat, align 4, !dbg !951, !tbaa !183
  %488 = icmp sgt i32 %487, 1300, !dbg !953
  br i1 %488, label %489, label %566, !dbg !954

; <label>:489                                     ; preds = %486
  %490 = getelementptr inbounds [144 x i32]* @swhite_king, i64 0, i64 %92, !dbg !955
  %491 = load i32* %490, align 4, !dbg !955, !tbaa !183
  %492 = add nsw i32 %491, %103, !dbg !957
  call void @llvm.dbg.value(metadata i32 %492, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %492, i32* %score, align 4, !dbg !957, !tbaa !183
  %493 = load i32* @white_castled, align 4, !dbg !958, !tbaa !183
  switch i32 %493, label %498 [
    i32 2, label %494
    i32 1, label %496
  ], !dbg !960

; <label>:494                                     ; preds = %489
  %495 = add nsw i32 %492, 15, !dbg !961
  call void @llvm.dbg.value(metadata i32 %495, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %495, i32* %score, align 4, !dbg !961, !tbaa !183
  br label %509, !dbg !962

; <label>:496                                     ; preds = %489
  %497 = add nsw i32 %492, 25, !dbg !963
  call void @llvm.dbg.value(metadata i32 %497, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %497, i32* %score, align 4, !dbg !963, !tbaa !183
  br label %509, !dbg !965

; <label>:498                                     ; preds = %489
  %499 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !966, !tbaa !183
  %500 = icmp eq i32 %499, 0, !dbg !966
  br i1 %500, label %509, label %501, !dbg !968

; <label>:501                                     ; preds = %498
  %502 = add nsw i32 %492, -10, !dbg !969
  call void @llvm.dbg.value(metadata i32 %502, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %502, i32* %score, align 4, !dbg !969, !tbaa !183
  %503 = sext i32 %106 to i64, !dbg !971
  %504 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %503, !dbg !971
  %505 = load i32* %504, align 4, !dbg !971, !tbaa !183
  %506 = icmp eq i32 %505, 0, !dbg !971
  br i1 %506, label %507, label %509, !dbg !973

; <label>:507                                     ; preds = %501
  %508 = add nsw i32 %492, -25, !dbg !974
  call void @llvm.dbg.value(metadata i32 %508, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %508, i32* %score, align 4, !dbg !974, !tbaa !183
  br label %509, !dbg !975

; <label>:509                                     ; preds = %501, %498, %496, %507, %494
  %510 = phi i32 [ %502, %501 ], [ %492, %498 ], [ %497, %496 ], [ %508, %507 ], [ %495, %494 ]
  %511 = load i32* @wking_loc, align 4, !dbg !976, !tbaa !183
  %512 = sext i32 %511 to i64, !dbg !976
  %513 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %512, !dbg !976
  %514 = load i32* %513, align 4, !dbg !976, !tbaa !183
  %515 = and i32 %514, -2, !dbg !978
  %switch = icmp eq i32 %515, 4, !dbg !978
  br i1 %switch, label %564, label %516, !dbg !978

; <label>:516                                     ; preds = %509
  %517 = sext i32 %106 to i64, !dbg !979
  %518 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %517, !dbg !979
  %519 = load i32* %518, align 4, !dbg !979, !tbaa !183
  %520 = icmp sgt i32 %519, %108, !dbg !982
  br i1 %520, label %521, label %529, !dbg !983

; <label>:521                                     ; preds = %516
  %522 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %517, !dbg !984
  %523 = load i32* %522, align 4, !dbg !984, !tbaa !183
  %524 = icmp eq i32 %523, 0, !dbg !984
  br i1 %524, label %529, label %525, !dbg !985

; <label>:525                                     ; preds = %521
  %526 = sub nsw i32 %519, %108, !dbg !986
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %527 = mul i32 %526, -9
  %.neg133 = add i32 %527, 9, !dbg !987
  %528 = add i32 %.neg133, %510, !dbg !988
  call void @llvm.dbg.value(metadata i32 %528, i64 0, metadata !83, metadata !176), !dbg !460
  br label %531, !dbg !989

; <label>:529                                     ; preds = %521, %516
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %530 = add nsw i32 %510, -22, !dbg !990
  call void @llvm.dbg.value(metadata i32 %530, i64 0, metadata !83, metadata !176), !dbg !460
  br label %531

; <label>:531                                     ; preds = %529, %525
  %532 = phi i32 [ %530, %529 ], [ %528, %525 ]
  store i32 %532, i32* %score, align 4, !dbg !988, !tbaa !183
  %533 = add nsw i32 %105, 2, !dbg !991
  %534 = sext i32 %533 to i64, !dbg !993
  %535 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %534, !dbg !993
  %536 = load i32* %535, align 4, !dbg !993, !tbaa !183
  %537 = icmp sgt i32 %536, %108, !dbg !994
  br i1 %537, label %538, label %546, !dbg !995

; <label>:538                                     ; preds = %531
  %539 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %534, !dbg !996
  %540 = load i32* %539, align 4, !dbg !996, !tbaa !183
  %541 = icmp eq i32 %540, 0, !dbg !996
  br i1 %541, label %546, label %542, !dbg !997

; <label>:542                                     ; preds = %538
  %543 = sub nsw i32 %536, %108, !dbg !998
  %544 = shl i32 %543, 3, !dbg !999
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %.neg135 = add i32 %532, 8, !dbg !999
  %545 = sub i32 %.neg135, %544, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %545, i64 0, metadata !83, metadata !176), !dbg !460
  br label %548, !dbg !1001

; <label>:546                                     ; preds = %538, %531
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %547 = add nsw i32 %532, -16, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %547, i64 0, metadata !83, metadata !176), !dbg !460
  br label %548

; <label>:548                                     ; preds = %546, %542
  %549 = phi i32 [ %547, %546 ], [ %545, %542 ]
  store i32 %549, i32* %score, align 4, !dbg !1000, !tbaa !183
  %550 = sext i32 %105 to i64, !dbg !1003
  %551 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %550, !dbg !1003
  %552 = load i32* %551, align 4, !dbg !1003, !tbaa !183
  %553 = icmp sgt i32 %552, %108, !dbg !1005
  br i1 %553, label %554, label %562, !dbg !1006

; <label>:554                                     ; preds = %548
  %555 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %550, !dbg !1007
  %556 = load i32* %555, align 4, !dbg !1007, !tbaa !183
  %557 = icmp eq i32 %556, 0, !dbg !1007
  br i1 %557, label %562, label %558, !dbg !1008

; <label>:558                                     ; preds = %554
  %559 = sub nsw i32 %552, %108, !dbg !1009
  %560 = shl i32 %559, 3, !dbg !1010
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %.neg137 = add i32 %549, 8, !dbg !1010
  %561 = sub i32 %.neg137, %560, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %561, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %561, i32* %score, align 4, !dbg !1011, !tbaa !183
  br label %666, !dbg !1012

; <label>:562                                     ; preds = %554, %548
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %563 = add nsw i32 %549, -16, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %563, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %563, i32* %score, align 4, !dbg !1013, !tbaa !183
  br label %666

; <label>:564                                     ; preds = %509
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %565 = add nsw i32 %510, -10, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %565, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %565, i32* %score, align 4, !dbg !1014, !tbaa !183
  br label %666

; <label>:566                                     ; preds = %486
  %567 = getelementptr inbounds [144 x i32]* @send_king, i64 0, i64 %92, !dbg !1016
  %568 = load i32* %567, align 4, !dbg !1016, !tbaa !183
  %569 = add nsw i32 %568, %103, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %569, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %569, i32* %score, align 4, !dbg !1018, !tbaa !183
  br label %666

; <label>:570                                     ; preds = %90
  %571 = load i32* @bmat, align 4, !dbg !1019, !tbaa !183
  %572 = icmp sgt i32 %571, 1300, !dbg !1021
  br i1 %572, label %573, label %662, !dbg !1022

; <label>:573                                     ; preds = %570
  %574 = getelementptr inbounds [144 x i32]* @sblack_king, i64 0, i64 %92, !dbg !1023
  %575 = load i32* %574, align 4, !dbg !1023, !tbaa !183
  %576 = sub nsw i32 %103, %575, !dbg !1025
  call void @llvm.dbg.value(metadata i32 %576, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %576, i32* %score, align 4, !dbg !1025, !tbaa !183
  %577 = load i32* @black_castled, align 4, !dbg !1026, !tbaa !183
  switch i32 %577, label %582 [
    i32 4, label %578
    i32 3, label %580
  ], !dbg !1028

; <label>:578                                     ; preds = %573
  %579 = add nsw i32 %576, -15, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %579, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %579, i32* %score, align 4, !dbg !1029, !tbaa !183
  br label %593, !dbg !1030

; <label>:580                                     ; preds = %573
  %581 = add nsw i32 %576, -25, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %581, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %581, i32* %score, align 4, !dbg !1031, !tbaa !183
  br label %593, !dbg !1033

; <label>:582                                     ; preds = %573
  %583 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !1034, !tbaa !183
  %584 = icmp eq i32 %583, 0, !dbg !1034
  br i1 %584, label %593, label %585, !dbg !1036

; <label>:585                                     ; preds = %582
  %586 = add nsw i32 %576, 10, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %586, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %586, i32* %score, align 4, !dbg !1037, !tbaa !183
  %587 = sext i32 %106 to i64, !dbg !1039
  %588 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %587, !dbg !1039
  %589 = load i32* %588, align 4, !dbg !1039, !tbaa !183
  %590 = icmp eq i32 %589, 0, !dbg !1039
  br i1 %590, label %591, label %593, !dbg !1041

; <label>:591                                     ; preds = %585
  %592 = add nsw i32 %576, 25, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %592, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %592, i32* %score, align 4, !dbg !1042, !tbaa !183
  br label %593, !dbg !1043

; <label>:593                                     ; preds = %585, %582, %580, %591, %578
  %594 = phi i32 [ %586, %585 ], [ %576, %582 ], [ %581, %580 ], [ %592, %591 ], [ %579, %578 ]
  %595 = load i32* @bking_loc, align 4, !dbg !1044, !tbaa !183
  %596 = sext i32 %595 to i64, !dbg !1044
  %597 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %596, !dbg !1044
  %598 = load i32* %597, align 4, !dbg !1044, !tbaa !183
  %599 = and i32 %598, -2, !dbg !1046
  %switch120 = icmp eq i32 %599, 4, !dbg !1046
  br i1 %switch120, label %660, label %600, !dbg !1046

; <label>:600                                     ; preds = %593
  %601 = sext i32 %106 to i64, !dbg !1047
  %602 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %601, !dbg !1047
  %603 = load i32* %602, align 4, !dbg !1047, !tbaa !183
  %604 = icmp sgt i32 %108, %603, !dbg !1050
  br i1 %604, label %605, label %617, !dbg !1051

; <label>:605                                     ; preds = %600
  %606 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %601, !dbg !1052
  %607 = load i32* %606, align 4, !dbg !1052, !tbaa !183
  %608 = icmp eq i32 %607, 0, !dbg !1052
  br i1 %608, label %617, label %609, !dbg !1053

; <label>:609                                     ; preds = %605
  %610 = add i32 %108, -1, !dbg !1054
  %611 = sub i32 %610, %603, !dbg !1055
  %612 = sext i32 %611 to i64, !dbg !1056
  %613 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %612, !dbg !1056
  %614 = load i32* %613, align 4, !dbg !1056, !tbaa !183
  %615 = mul nsw i32 %614, 9, !dbg !1057
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %616 = add nsw i32 %594, %615, !dbg !1058
  call void @llvm.dbg.value(metadata i32 %616, i64 0, metadata !83, metadata !176), !dbg !460
  br label %619, !dbg !1059

; <label>:617                                     ; preds = %605, %600
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %618 = add nsw i32 %594, 22, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %618, i64 0, metadata !83, metadata !176), !dbg !460
  br label %619

; <label>:619                                     ; preds = %617, %609
  %620 = phi i32 [ %618, %617 ], [ %616, %609 ]
  store i32 %620, i32* %score, align 4, !dbg !1058, !tbaa !183
  %621 = add nsw i32 %105, 2, !dbg !1061
  %622 = sext i32 %621 to i64, !dbg !1063
  %623 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %622, !dbg !1063
  %624 = load i32* %623, align 4, !dbg !1063, !tbaa !183
  %625 = icmp sgt i32 %108, %624, !dbg !1064
  br i1 %625, label %626, label %638, !dbg !1065

; <label>:626                                     ; preds = %619
  %627 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %622, !dbg !1066
  %628 = load i32* %627, align 4, !dbg !1066, !tbaa !183
  %629 = icmp eq i32 %628, 0, !dbg !1066
  br i1 %629, label %638, label %630, !dbg !1067

; <label>:630                                     ; preds = %626
  %631 = add i32 %108, -1, !dbg !1068
  %632 = sub i32 %631, %624, !dbg !1069
  %633 = sext i32 %632 to i64, !dbg !1070
  %634 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %633, !dbg !1070
  %635 = load i32* %634, align 4, !dbg !1070, !tbaa !183
  %636 = shl i32 %635, 3, !dbg !1071
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %637 = add nsw i32 %636, %620, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %637, i64 0, metadata !83, metadata !176), !dbg !460
  br label %640, !dbg !1073

; <label>:638                                     ; preds = %626, %619
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %639 = add nsw i32 %620, 16, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %639, i64 0, metadata !83, metadata !176), !dbg !460
  br label %640

; <label>:640                                     ; preds = %638, %630
  %641 = phi i32 [ %639, %638 ], [ %637, %630 ]
  store i32 %641, i32* %score, align 4, !dbg !1072, !tbaa !183
  %642 = sext i32 %105 to i64, !dbg !1075
  %643 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %642, !dbg !1075
  %644 = load i32* %643, align 4, !dbg !1075, !tbaa !183
  %645 = icmp sgt i32 %108, %644, !dbg !1077
  br i1 %645, label %646, label %658, !dbg !1078

; <label>:646                                     ; preds = %640
  %647 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %642, !dbg !1079
  %648 = load i32* %647, align 4, !dbg !1079, !tbaa !183
  %649 = icmp eq i32 %648, 0, !dbg !1079
  br i1 %649, label %658, label %650, !dbg !1080

; <label>:650                                     ; preds = %646
  %651 = add i32 %108, -1, !dbg !1081
  %652 = sub i32 %651, %644, !dbg !1082
  %653 = sext i32 %652 to i64, !dbg !1083
  %654 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %653, !dbg !1083
  %655 = load i32* %654, align 4, !dbg !1083, !tbaa !183
  %656 = shl i32 %655, 3, !dbg !1084
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %657 = add nsw i32 %656, %641, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %657, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %657, i32* %score, align 4, !dbg !1085, !tbaa !183
  br label %666, !dbg !1086

; <label>:658                                     ; preds = %646, %640
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %659 = add nsw i32 %641, 16, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %659, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %659, i32* %score, align 4, !dbg !1087, !tbaa !183
  br label %666

; <label>:660                                     ; preds = %593
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %661 = add nsw i32 %594, 10, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %661, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %661, i32* %score, align 4, !dbg !1088, !tbaa !183
  br label %666

; <label>:662                                     ; preds = %570
  %663 = getelementptr inbounds [144 x i32]* @send_king, i64 0, i64 %92, !dbg !1090
  %664 = load i32* %663, align 4, !dbg !1090, !tbaa !183
  %665 = sub nsw i32 %103, %664, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %665, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %665, i32* %score, align 4, !dbg !1092, !tbaa !183
  br label %666

; <label>:666                                     ; preds = %._crit_edge181, %._crit_edge180, %438, %432, %464, %458, %.lr.ph, %474, %476, %478, %480, %482, %484, %90, %264, %420, %446, %472, %564, %562, %558, %566, %660, %658, %650, %662
  %a.3 = phi i32 [ %91, %90 ], [ %91, %650 ], [ %91, %658 ], [ %91, %660 ], [ %91, %662 ], [ %91, %558 ], [ %91, %562 ], [ %91, %564 ], [ %91, %566 ], [ %91, %484 ], [ %91, %482 ], [ %91, %480 ], [ %91, %478 ], [ %91, %476 ], [ %91, %474 ], [ %91, %458 ], [ %91, %464 ], [ %91, %472 ], [ %91, %432 ], [ %91, %438 ], [ %91, %446 ], [ %91, %._crit_edge180 ], [ %91, %420 ], [ %91, %._crit_edge181 ], [ %91, %264 ], [ %a.2141, %.lr.ph ]
  %wp.1 = phi i32 [ %wp.0143, %90 ], [ %wp.0143, %650 ], [ %wp.0143, %658 ], [ %wp.0143, %660 ], [ %wp.0143, %662 ], [ %wp.0143, %558 ], [ %wp.0143, %562 ], [ %wp.0143, %564 ], [ %wp.0143, %566 ], [ %wp.0143, %484 ], [ %wp.0143, %482 ], [ %wp.0143, %480 ], [ %wp.0143, %478 ], [ %wp.0143, %476 ], [ %wp.0143, %474 ], [ %wp.0143, %458 ], [ %wp.0143, %464 ], [ %wp.0143, %472 ], [ %wp.0143, %432 ], [ %wp.0143, %438 ], [ %wp.0143, %446 ], [ %wp.0143, %._crit_edge180 ], [ %wp.0143, %420 ], [ %114, %._crit_edge181 ], [ %114, %264 ], [ %wp.0143, %.lr.ph ]
  %bp.1 = phi i32 [ %bp.0144, %90 ], [ %bp.0144, %650 ], [ %bp.0144, %658 ], [ %bp.0144, %660 ], [ %bp.0144, %662 ], [ %bp.0144, %558 ], [ %bp.0144, %562 ], [ %bp.0144, %564 ], [ %bp.0144, %566 ], [ %bp.0144, %484 ], [ %bp.0144, %482 ], [ %bp.0144, %480 ], [ %bp.0144, %478 ], [ %bp.0144, %476 ], [ %bp.0144, %474 ], [ %bp.0144, %458 ], [ %bp.0144, %464 ], [ %bp.0144, %472 ], [ %bp.0144, %432 ], [ %bp.0144, %438 ], [ %bp.0144, %446 ], [ %270, %._crit_edge180 ], [ %270, %420 ], [ %bp.0144, %._crit_edge181 ], [ %bp.0144, %264 ], [ %bp.0144, %.lr.ph ]
  %wn.1 = phi i32 [ %wn.0145, %90 ], [ %wn.0145, %650 ], [ %wn.0145, %658 ], [ %wn.0145, %660 ], [ %wn.0145, %662 ], [ %wn.0145, %558 ], [ %wn.0145, %562 ], [ %wn.0145, %564 ], [ %wn.0145, %566 ], [ %wn.0145, %484 ], [ %wn.0145, %482 ], [ %wn.0145, %480 ], [ %479, %478 ], [ %wn.0145, %476 ], [ %wn.0145, %474 ], [ %wn.0145, %458 ], [ %wn.0145, %464 ], [ %wn.0145, %472 ], [ %wn.0145, %432 ], [ %wn.0145, %438 ], [ %wn.0145, %446 ], [ %wn.0145, %._crit_edge180 ], [ %wn.0145, %420 ], [ %wn.0145, %._crit_edge181 ], [ %wn.0145, %264 ], [ %wn.0145, %.lr.ph ]
  %bn.1 = phi i32 [ %bn.0146, %90 ], [ %bn.0146, %650 ], [ %bn.0146, %658 ], [ %bn.0146, %660 ], [ %bn.0146, %662 ], [ %bn.0146, %558 ], [ %bn.0146, %562 ], [ %bn.0146, %564 ], [ %bn.0146, %566 ], [ %bn.0146, %484 ], [ %bn.0146, %482 ], [ %481, %480 ], [ %bn.0146, %478 ], [ %bn.0146, %476 ], [ %bn.0146, %474 ], [ %bn.0146, %458 ], [ %bn.0146, %464 ], [ %bn.0146, %472 ], [ %bn.0146, %432 ], [ %bn.0146, %438 ], [ %bn.0146, %446 ], [ %bn.0146, %._crit_edge180 ], [ %bn.0146, %420 ], [ %bn.0146, %._crit_edge181 ], [ %bn.0146, %264 ], [ %bn.0146, %.lr.ph ]
  %wb.1 = phi i32 [ %wb.0147, %90 ], [ %wb.0147, %650 ], [ %wb.0147, %658 ], [ %wb.0147, %660 ], [ %wb.0147, %662 ], [ %wb.0147, %558 ], [ %wb.0147, %562 ], [ %wb.0147, %564 ], [ %wb.0147, %566 ], [ %wb.0147, %484 ], [ %wb.0147, %482 ], [ %wb.0147, %480 ], [ %wb.0147, %478 ], [ %wb.0147, %476 ], [ %475, %474 ], [ %wb.0147, %458 ], [ %wb.0147, %464 ], [ %wb.0147, %472 ], [ %wb.0147, %432 ], [ %wb.0147, %438 ], [ %wb.0147, %446 ], [ %wb.0147, %._crit_edge180 ], [ %wb.0147, %420 ], [ %wb.0147, %._crit_edge181 ], [ %wb.0147, %264 ], [ %wb.0147, %.lr.ph ]
  %bb.1 = phi i32 [ %bb.0148, %90 ], [ %bb.0148, %650 ], [ %bb.0148, %658 ], [ %bb.0148, %660 ], [ %bb.0148, %662 ], [ %bb.0148, %558 ], [ %bb.0148, %562 ], [ %bb.0148, %564 ], [ %bb.0148, %566 ], [ %bb.0148, %484 ], [ %bb.0148, %482 ], [ %bb.0148, %480 ], [ %bb.0148, %478 ], [ %477, %476 ], [ %bb.0148, %474 ], [ %bb.0148, %458 ], [ %bb.0148, %464 ], [ %bb.0148, %472 ], [ %bb.0148, %432 ], [ %bb.0148, %438 ], [ %bb.0148, %446 ], [ %bb.0148, %._crit_edge180 ], [ %bb.0148, %420 ], [ %bb.0148, %._crit_edge181 ], [ %bb.0148, %264 ], [ %bb.0148, %.lr.ph ]
  %wq.1 = phi i32 [ %wq.0149, %90 ], [ %wq.0149, %650 ], [ %wq.0149, %658 ], [ %wq.0149, %660 ], [ %wq.0149, %662 ], [ %wq.0149, %558 ], [ %wq.0149, %562 ], [ %wq.0149, %564 ], [ %wq.0149, %566 ], [ %wq.0149, %484 ], [ %483, %482 ], [ %wq.0149, %480 ], [ %wq.0149, %478 ], [ %wq.0149, %476 ], [ %wq.0149, %474 ], [ %wq.0149, %458 ], [ %wq.0149, %464 ], [ %wq.0149, %472 ], [ %wq.0149, %432 ], [ %wq.0149, %438 ], [ %wq.0149, %446 ], [ %wq.0149, %._crit_edge180 ], [ %wq.0149, %420 ], [ %wq.0149, %._crit_edge181 ], [ %wq.0149, %264 ], [ %wq.0149, %.lr.ph ]
  %bq.1 = phi i32 [ %bq.0150, %90 ], [ %bq.0150, %650 ], [ %bq.0150, %658 ], [ %bq.0150, %660 ], [ %bq.0150, %662 ], [ %bq.0150, %558 ], [ %bq.0150, %562 ], [ %bq.0150, %564 ], [ %bq.0150, %566 ], [ %485, %484 ], [ %bq.0150, %482 ], [ %bq.0150, %480 ], [ %bq.0150, %478 ], [ %bq.0150, %476 ], [ %bq.0150, %474 ], [ %bq.0150, %458 ], [ %bq.0150, %464 ], [ %bq.0150, %472 ], [ %bq.0150, %432 ], [ %bq.0150, %438 ], [ %bq.0150, %446 ], [ %bq.0150, %._crit_edge180 ], [ %bq.0150, %420 ], [ %bq.0150, %._crit_edge181 ], [ %bq.0150, %264 ], [ %bq.0150, %.lr.ph ]
  %wr.1 = phi i32 [ %wr.0151, %90 ], [ %wr.0151, %650 ], [ %wr.0151, %658 ], [ %wr.0151, %660 ], [ %wr.0151, %662 ], [ %wr.0151, %558 ], [ %wr.0151, %562 ], [ %wr.0151, %564 ], [ %wr.0151, %566 ], [ %wr.0151, %484 ], [ %wr.0151, %482 ], [ %wr.0151, %480 ], [ %wr.0151, %478 ], [ %wr.0151, %476 ], [ %wr.0151, %474 ], [ %wr.0151, %458 ], [ %wr.0151, %464 ], [ %wr.0151, %472 ], [ %423, %432 ], [ %423, %438 ], [ %423, %446 ], [ %wr.0151, %._crit_edge180 ], [ %wr.0151, %420 ], [ %wr.0151, %._crit_edge181 ], [ %wr.0151, %264 ], [ %wr.0151, %.lr.ph ]
  %br.1 = phi i32 [ %br.0152, %90 ], [ %br.0152, %650 ], [ %br.0152, %658 ], [ %br.0152, %660 ], [ %br.0152, %662 ], [ %br.0152, %558 ], [ %br.0152, %562 ], [ %br.0152, %564 ], [ %br.0152, %566 ], [ %br.0152, %484 ], [ %br.0152, %482 ], [ %br.0152, %480 ], [ %br.0152, %478 ], [ %br.0152, %476 ], [ %br.0152, %474 ], [ %449, %458 ], [ %449, %464 ], [ %449, %472 ], [ %br.0152, %432 ], [ %br.0152, %438 ], [ %br.0152, %446 ], [ %br.0152, %._crit_edge180 ], [ %br.0152, %420 ], [ %br.0152, %._crit_edge181 ], [ %br.0152, %264 ], [ %br.0152, %.lr.ph ]
  %rbrook.2 = phi i32 [ %rbrook.0153, %90 ], [ %rbrook.0153, %650 ], [ %rbrook.0153, %658 ], [ %rbrook.0153, %660 ], [ %rbrook.0153, %662 ], [ %rbrook.0153, %558 ], [ %rbrook.0153, %562 ], [ %rbrook.0153, %564 ], [ %rbrook.0153, %566 ], [ %rbrook.0153, %484 ], [ %rbrook.0153, %482 ], [ %rbrook.0153, %480 ], [ %rbrook.0153, %478 ], [ %rbrook.0153, %476 ], [ %rbrook.0153, %474 ], [ %.rbrook.0, %458 ], [ %.rbrook.0, %464 ], [ %.rbrook.0, %472 ], [ %rbrook.0153, %432 ], [ %rbrook.0153, %438 ], [ %rbrook.0153, %446 ], [ %rbrook.0153, %._crit_edge180 ], [ %rbrook.0153, %420 ], [ %rbrook.0153, %._crit_edge181 ], [ %rbrook.0153, %264 ], [ %rbrook.0153, %.lr.ph ]
  %fbrook.2 = phi i32 [ %fbrook.0154, %90 ], [ %fbrook.0154, %650 ], [ %fbrook.0154, %658 ], [ %fbrook.0154, %660 ], [ %fbrook.0154, %662 ], [ %fbrook.0154, %558 ], [ %fbrook.0154, %562 ], [ %fbrook.0154, %564 ], [ %fbrook.0154, %566 ], [ %fbrook.0154, %484 ], [ %fbrook.0154, %482 ], [ %fbrook.0154, %480 ], [ %fbrook.0154, %478 ], [ %fbrook.0154, %476 ], [ %fbrook.0154, %474 ], [ %.fbrook.0, %458 ], [ %.fbrook.0, %464 ], [ %.fbrook.0, %472 ], [ %fbrook.0154, %432 ], [ %fbrook.0154, %438 ], [ %fbrook.0154, %446 ], [ %fbrook.0154, %._crit_edge180 ], [ %fbrook.0154, %420 ], [ %fbrook.0154, %._crit_edge181 ], [ %fbrook.0154, %264 ], [ %fbrook.0154, %.lr.ph ]
  %rwrook.2 = phi i32 [ %rwrook.0155, %90 ], [ %rwrook.0155, %650 ], [ %rwrook.0155, %658 ], [ %rwrook.0155, %660 ], [ %rwrook.0155, %662 ], [ %rwrook.0155, %558 ], [ %rwrook.0155, %562 ], [ %rwrook.0155, %564 ], [ %rwrook.0155, %566 ], [ %rwrook.0155, %484 ], [ %rwrook.0155, %482 ], [ %rwrook.0155, %480 ], [ %rwrook.0155, %478 ], [ %rwrook.0155, %476 ], [ %rwrook.0155, %474 ], [ %rwrook.0155, %458 ], [ %rwrook.0155, %464 ], [ %rwrook.0155, %472 ], [ %.rwrook.0, %432 ], [ %.rwrook.0, %438 ], [ %.rwrook.0, %446 ], [ %rwrook.0155, %._crit_edge180 ], [ %rwrook.0155, %420 ], [ %rwrook.0155, %._crit_edge181 ], [ %rwrook.0155, %264 ], [ %rwrook.0155, %.lr.ph ]
  %fwrook.2 = phi i32 [ %fwrook.0156, %90 ], [ %fwrook.0156, %650 ], [ %fwrook.0156, %658 ], [ %fwrook.0156, %660 ], [ %fwrook.0156, %662 ], [ %fwrook.0156, %558 ], [ %fwrook.0156, %562 ], [ %fwrook.0156, %564 ], [ %fwrook.0156, %566 ], [ %fwrook.0156, %484 ], [ %fwrook.0156, %482 ], [ %fwrook.0156, %480 ], [ %fwrook.0156, %478 ], [ %fwrook.0156, %476 ], [ %fwrook.0156, %474 ], [ %fwrook.0156, %458 ], [ %fwrook.0156, %464 ], [ %fwrook.0156, %472 ], [ %.fwrook.0, %432 ], [ %.fwrook.0, %438 ], [ %.fwrook.0, %446 ], [ %fwrook.0156, %._crit_edge180 ], [ %fwrook.0156, %420 ], [ %fwrook.0156, %._crit_edge181 ], [ %fwrook.0156, %264 ], [ %fwrook.0156, %.lr.ph ]
  %wpotential.3 = phi i32 [ %wpotential.0157, %90 ], [ %wpotential.0157, %650 ], [ %wpotential.0157, %658 ], [ %wpotential.0157, %660 ], [ %wpotential.0157, %662 ], [ %wpotential.0157, %558 ], [ %wpotential.0157, %562 ], [ %wpotential.0157, %564 ], [ %wpotential.0157, %566 ], [ %wpotential.0157, %484 ], [ %wpotential.0157, %482 ], [ %wpotential.0157, %480 ], [ %wpotential.0157, %478 ], [ %wpotential.0157, %476 ], [ %wpotential.0157, %474 ], [ %wpotential.0157, %458 ], [ %wpotential.0157, %464 ], [ %wpotential.0157, %472 ], [ %wpotential.0157, %432 ], [ %wpotential.0157, %438 ], [ %wpotential.0157, %446 ], [ %wpotential.0157, %._crit_edge180 ], [ %wpotential.0157, %420 ], [ %wpotential.2, %._crit_edge181 ], [ %wpotential.2, %264 ], [ %wpotential.0157, %.lr.ph ]
  %bpotential.3 = phi i32 [ %bpotential.0158, %90 ], [ %bpotential.0158, %650 ], [ %bpotential.0158, %658 ], [ %bpotential.0158, %660 ], [ %bpotential.0158, %662 ], [ %bpotential.0158, %558 ], [ %bpotential.0158, %562 ], [ %bpotential.0158, %564 ], [ %bpotential.0158, %566 ], [ %bpotential.0158, %484 ], [ %bpotential.0158, %482 ], [ %bpotential.0158, %480 ], [ %bpotential.0158, %478 ], [ %bpotential.0158, %476 ], [ %bpotential.0158, %474 ], [ %bpotential.0158, %458 ], [ %bpotential.0158, %464 ], [ %bpotential.0158, %472 ], [ %bpotential.0158, %432 ], [ %bpotential.0158, %438 ], [ %bpotential.0158, %446 ], [ %bpotential.2, %._crit_edge180 ], [ %bpotential.2, %420 ], [ %bpotential.0158, %._crit_edge181 ], [ %bpotential.0158, %264 ], [ %bpotential.0158, %.lr.ph ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !506
  %667 = load i32* @piece_count, align 4, !dbg !1093, !tbaa !183
  %668 = icmp sgt i32 %a.3, %667, !dbg !1094
  br i1 %668, label %._crit_edge, label %.lr.ph, !dbg !506

._crit_edge:                                      ; preds = %666
  %.pre = load i32* @wmat, align 4, !dbg !1095, !tbaa !183
  %.pre179 = load i32* @bmat, align 4
  br label %.preheader.thread, !dbg !506

.preheader.thread:                                ; preds = %23, %._crit_edge, %.preheader
  %669 = phi i32 [ %.pre179, %._crit_edge ], [ %85, %.preheader ], [ 0, %23 ]
  %670 = phi i32 [ %.pre, %._crit_edge ], [ %84, %.preheader ], [ 0, %23 ]
  %bpotential.0.lcssa = phi i32 [ %bpotential.3, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %wpotential.0.lcssa = phi i32 [ %wpotential.3, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %br.0.lcssa = phi i32 [ %br.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %wr.0.lcssa = phi i32 [ %wr.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %bq.0.lcssa = phi i32 [ %bq.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %wq.0.lcssa = phi i32 [ %wq.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %bb.0.lcssa = phi i32 [ %bb.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %wb.0.lcssa = phi i32 [ %wb.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %bn.0.lcssa = phi i32 [ %bn.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %wn.0.lcssa = phi i32 [ %wn.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %bp.0.lcssa = phi i32 [ %bp.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %wp.0.lcssa = phi i32 [ %wp.1, %._crit_edge ], [ 0, %.preheader ], [ 0, %23 ]
  %671 = icmp sgt i32 %670, 2200, !dbg !1097
  %672 = icmp sgt i32 %669, 2200, !dbg !1098
  %or.cond8 = or i1 %671, %672, !dbg !1099
  br i1 %or.cond8, label %673, label %705, !dbg !1099

; <label>:673                                     ; preds = %.preheader.thread
  %674 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 41), align 4, !dbg !1100, !tbaa !183
  %675 = icmp eq i32 %674, 0, !dbg !1100
  %676 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 53), align 4
  %677 = icmp ne i32 %676, 13, !dbg !1103
  %or.cond10 = and i1 %675, %677, !dbg !1104
  br i1 %or.cond10, label %678, label %681, !dbg !1104

; <label>:678                                     ; preds = %673
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %679 = load i32* %score, align 4, !dbg !1105, !tbaa !183
  %680 = add nsw i32 %679, -5, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %680, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %680, i32* %score, align 4, !dbg !1105, !tbaa !183
  br label %681, !dbg !1106

; <label>:681                                     ; preds = %673, %678
  %682 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 42), align 4, !dbg !1107, !tbaa !183
  %683 = icmp eq i32 %682, 0, !dbg !1107
  %684 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4
  %685 = icmp ne i32 %684, 13, !dbg !1109
  %or.cond12 = and i1 %683, %685, !dbg !1110
  br i1 %or.cond12, label %686, label %689, !dbg !1110

; <label>:686                                     ; preds = %681
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %687 = load i32* %score, align 4, !dbg !1111, !tbaa !183
  %688 = add nsw i32 %687, -5, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %688, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %688, i32* %score, align 4, !dbg !1111, !tbaa !183
  br label %689, !dbg !1112

; <label>:689                                     ; preds = %681, %686
  %690 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 101), align 4, !dbg !1113, !tbaa !183
  %691 = icmp eq i32 %690, 0, !dbg !1113
  %692 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 89), align 4
  %693 = icmp ne i32 %692, 13, !dbg !1115
  %or.cond14 = and i1 %691, %693, !dbg !1116
  br i1 %or.cond14, label %694, label %697, !dbg !1116

; <label>:694                                     ; preds = %689
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %695 = load i32* %score, align 4, !dbg !1117, !tbaa !183
  %696 = add nsw i32 %695, 5, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %696, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %696, i32* %score, align 4, !dbg !1117, !tbaa !183
  br label %697, !dbg !1118

; <label>:697                                     ; preds = %689, %694
  %698 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 102), align 4, !dbg !1119, !tbaa !183
  %699 = icmp eq i32 %698, 0, !dbg !1119
  %700 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4
  %701 = icmp ne i32 %700, 13, !dbg !1121
  %or.cond16 = and i1 %699, %701, !dbg !1122
  br i1 %or.cond16, label %702, label %705, !dbg !1122

; <label>:702                                     ; preds = %697
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %703 = load i32* %score, align 4, !dbg !1123, !tbaa !183
  %704 = add nsw i32 %703, 5, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %704, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %704, i32* %score, align 4, !dbg !1123, !tbaa !183
  br label %705, !dbg !1124

; <label>:705                                     ; preds = %702, %697, %.preheader.thread
  %706 = icmp sgt i32 %670, 1300, !dbg !1125
  %707 = icmp sgt i32 %669, 1300, !dbg !1127
  %or.cond18 = or i1 %706, %707, !dbg !1128
  br i1 %or.cond18, label %708, label %780, !dbg !1128

; <label>:708                                     ; preds = %705
  %709 = load i32* @wking_loc, align 4, !dbg !1129, !tbaa !183
  %710 = sext i32 %709 to i64, !dbg !1129
  %711 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %710, !dbg !1129
  %712 = load i32* %711, align 4, !dbg !1129, !tbaa !183
  %713 = add nsw i32 %712, 1, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %713, i64 0, metadata !80, metadata !176), !dbg !1132
  %714 = load i32* @bking_loc, align 4, !dbg !1133, !tbaa !183
  %715 = sext i32 %714 to i64, !dbg !1133
  %716 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %715, !dbg !1133
  %717 = load i32* %716, align 4, !dbg !1133, !tbaa !183
  %718 = add nsw i32 %717, 1, !dbg !1134
  call void @llvm.dbg.value(metadata i32 %718, i64 0, metadata !81, metadata !176), !dbg !1135
  %719 = sub nsw i32 %713, %718, !dbg !1136
  %ispos73 = icmp sgt i32 %719, -1, !dbg !1138
  %neg74 = sub i32 0, %719, !dbg !1138
  %720 = select i1 %ispos73, i32 %719, i32 %neg74, !dbg !1138
  %721 = icmp sgt i32 %720, 2, !dbg !1139
  br i1 %721, label %722, label %780, !dbg !1140

; <label>:722                                     ; preds = %708
  %723 = sext i32 %713 to i64, !dbg !1141
  %724 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %723, !dbg !1141
  %725 = load i32* %724, align 4, !dbg !1141, !tbaa !183
  %726 = sext i32 %725 to i64, !dbg !1143
  %727 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %726, !dbg !1143
  %728 = load i32* %727, align 4, !dbg !1143, !tbaa !183
  %729 = add nsw i32 %712, 2, !dbg !1144
  %730 = sext i32 %729 to i64, !dbg !1145
  %731 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %730, !dbg !1145
  %732 = load i32* %731, align 4, !dbg !1145, !tbaa !183
  %733 = sext i32 %732 to i64, !dbg !1146
  %734 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %733, !dbg !1146
  %735 = load i32* %734, align 4, !dbg !1146, !tbaa !183
  %736 = add i32 %735, %728, !dbg !1147
  %737 = sext i32 %712 to i64, !dbg !1148
  %738 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %737, !dbg !1148
  %739 = load i32* %738, align 4, !dbg !1148, !tbaa !183
  %740 = sext i32 %739 to i64, !dbg !1149
  %741 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %740, !dbg !1149
  %742 = load i32* %741, align 4, !dbg !1149, !tbaa !183
  %743 = add i32 %736, %742, !dbg !1150
  %744 = mul i32 %743, 3, !dbg !1150
  %745 = sext i32 %718 to i64, !dbg !1151
  %746 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %745, !dbg !1151
  %747 = load i32* %746, align 4, !dbg !1151, !tbaa !183
  %748 = add nsw i32 %717, 2, !dbg !1152
  %749 = sext i32 %748 to i64, !dbg !1153
  %750 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %749, !dbg !1153
  %751 = load i32* %750, align 4, !dbg !1153, !tbaa !183
  %752 = add i32 %751, %747, !dbg !1154
  %753 = sext i32 %717 to i64, !dbg !1155
  %754 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %753, !dbg !1155
  %755 = load i32* %754, align 4, !dbg !1155, !tbaa !183
  %756 = add i32 %752, %755, !dbg !1156
  %757 = mul i32 %756, 3, !dbg !1156
  %758 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %723, !dbg !1157
  %759 = load i32* %758, align 4, !dbg !1157, !tbaa !183
  %760 = icmp eq i32 %759, 0, !dbg !1157
  %.108.v = select i1 %760, i32 -10, i32 -18, !dbg !1159
  %.108 = add i32 %.108.v, %744, !dbg !1159
  %761 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %730, !dbg !1160
  %762 = load i32* %761, align 4, !dbg !1160, !tbaa !183
  %763 = icmp eq i32 %762, 0, !dbg !1160
  %764 = add nsw i32 %.108, 6, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %764, i64 0, metadata !105, metadata !176), !dbg !1163
  %wksafety.1 = select i1 %763, i32 %764, i32 %.108, !dbg !1164
  %765 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %737, !dbg !1165
  %766 = load i32* %765, align 4, !dbg !1165, !tbaa !183
  %767 = icmp eq i32 %766, 0, !dbg !1165
  %768 = add nsw i32 %wksafety.1, 6, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %768, i64 0, metadata !105, metadata !176), !dbg !1163
  %.wksafety.1 = select i1 %767, i32 %768, i32 %wksafety.1, !dbg !1168
  %769 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %745, !dbg !1169
  %770 = load i32* %769, align 4, !dbg !1169, !tbaa !183
  %771 = icmp eq i32 %770, 0, !dbg !1169
  %bksafety.0.v = select i1 %771, i32 -10, i32 -18, !dbg !1171
  %bksafety.0 = add i32 %bksafety.0.v, %757, !dbg !1171
  %772 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %749, !dbg !1172
  %773 = load i32* %772, align 4, !dbg !1172, !tbaa !183
  %774 = icmp eq i32 %773, 0, !dbg !1172
  %775 = add nsw i32 %bksafety.0, 6, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %775, i64 0, metadata !106, metadata !176), !dbg !1175
  %.bksafety.0 = select i1 %774, i32 %775, i32 %bksafety.0, !dbg !1176
  %776 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %753, !dbg !1177
  %777 = load i32* %776, align 4, !dbg !1177, !tbaa !183
  %778 = icmp eq i32 %777, 0, !dbg !1177
  %779 = add nsw i32 %.bksafety.0, 6, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %779, i64 0, metadata !106, metadata !176), !dbg !1175
  %..bksafety.0 = select i1 %778, i32 %779, i32 %.bksafety.0, !dbg !1180
  br label %780, !dbg !1180

; <label>:780                                     ; preds = %722, %708, %705
  %wksafety.3 = phi i32 [ 0, %708 ], [ 0, %705 ], [ %.wksafety.1, %722 ]
  %bksafety.2 = phi i32 [ 0, %708 ], [ 0, %705 ], [ %..bksafety.0, %722 ]
  %781 = icmp ne i32 %bq.0.lcssa, 0, !dbg !1181
  %or.cond20 = and i1 %781, %707, !dbg !1183
  br i1 %or.cond20, label %782, label %785, !dbg !1183

; <label>:782                                     ; preds = %780
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %783 = load i32* %score, align 4, !dbg !1184, !tbaa !183
  %784 = sub nsw i32 %783, %wksafety.3, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %784, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %784, i32* %score, align 4, !dbg !1184, !tbaa !183
  br label %785, !dbg !1186

; <label>:785                                     ; preds = %782, %780
  %786 = icmp ne i32 %wq.0.lcssa, 0, !dbg !1187
  %or.cond22 = and i1 %786, %706, !dbg !1189
  br i1 %or.cond22, label %787, label %790, !dbg !1189

; <label>:787                                     ; preds = %785
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %788 = load i32* %score, align 4, !dbg !1190, !tbaa !183
  %789 = add nsw i32 %788, %bksafety.2, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %789, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %789, i32* %score, align 4, !dbg !1190, !tbaa !183
  br label %790, !dbg !1192

; <label>:790                                     ; preds = %787, %785
  %791 = icmp ne i32 %wb.0.lcssa, 0, !dbg !1193
  %792 = icmp ne i32 %wn.0.lcssa, 0, !dbg !1195
  %793 = or i32 %wb.0.lcssa, %wn.0.lcssa, !dbg !1196
  %794 = or i32 %793, %wq.0.lcssa, !dbg !1196
  %795 = or i32 %794, %wr.0.lcssa, !dbg !1196
  %796 = icmp eq i32 %795, 0, !dbg !1196
  br i1 %796, label %797, label %800, !dbg !1196

; <label>:797                                     ; preds = %790
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %798 = load i32* %score, align 4, !dbg !1197, !tbaa !183
  %799 = add nsw i32 %798, %bpotential.0.lcssa, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %799, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %799, i32* %score, align 4, !dbg !1197, !tbaa !183
  br label %800, !dbg !1199

; <label>:800                                     ; preds = %790, %797
  %801 = icmp ne i32 %br.0.lcssa, 0, !dbg !1200
  %802 = icmp ne i32 %bb.0.lcssa, 0, !dbg !1202
  %803 = icmp ne i32 %bn.0.lcssa, 0, !dbg !1203
  %804 = or i32 %bb.0.lcssa, %bn.0.lcssa, !dbg !1204
  %805 = or i32 %804, %bq.0.lcssa, !dbg !1204
  %806 = or i32 %805, %br.0.lcssa, !dbg !1204
  %807 = icmp eq i32 %806, 0, !dbg !1204
  br i1 %807, label %808, label %811, !dbg !1204

; <label>:808                                     ; preds = %800
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %809 = load i32* %score, align 4, !dbg !1205, !tbaa !183
  %810 = add nsw i32 %809, %wpotential.0.lcssa, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %810, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %810, i32* %score, align 4, !dbg !1205, !tbaa !183
  br label %811, !dbg !1207

; <label>:811                                     ; preds = %800, %808
  %812 = or i32 %bp.0.lcssa, %wp.0.lcssa, !dbg !1208
  %813 = icmp eq i32 %812, 0, !dbg !1208
  br i1 %813, label %814, label %866, !dbg !1208

; <label>:814                                     ; preds = %811
  %815 = or i32 %bq.0.lcssa, %wq.0.lcssa, !dbg !1210
  %816 = or i32 %815, %wr.0.lcssa, !dbg !1210
  %817 = or i32 %816, %br.0.lcssa, !dbg !1210
  %818 = icmp eq i32 %817, 0, !dbg !1210
  br i1 %818, label %819, label %841, !dbg !1210

; <label>:819                                     ; preds = %814
  %820 = or i32 %bb.0.lcssa, %wb.0.lcssa, !dbg !1213
  %821 = icmp eq i32 %820, 0, !dbg !1213
  br i1 %821, label %822, label %826, !dbg !1213

; <label>:822                                     ; preds = %819
  %823 = icmp slt i32 %wn.0.lcssa, 3, !dbg !1216
  %824 = icmp slt i32 %bn.0.lcssa, 3, !dbg !1219
  %or.cond46 = and i1 %823, %824, !dbg !1220
  br i1 %or.cond46, label %825, label %918, !dbg !1220

; <label>:825                                     ; preds = %822
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !1221, !tbaa !183
  br label %918, !dbg !1223

; <label>:826                                     ; preds = %819
  %827 = or i32 %bn.0.lcssa, %wn.0.lcssa, !dbg !1224
  %828 = icmp eq i32 %827, 0, !dbg !1224
  br i1 %828, label %829, label %834, !dbg !1224

; <label>:829                                     ; preds = %826
  %830 = sub nsw i32 %wb.0.lcssa, %bb.0.lcssa, !dbg !1226
  %ispos69 = icmp sgt i32 %830, -1, !dbg !1229
  %neg70 = sub i32 0, %830, !dbg !1229
  %831 = select i1 %ispos69, i32 %830, i32 %neg70, !dbg !1229
  %832 = icmp slt i32 %831, 2, !dbg !1230
  br i1 %832, label %833, label %918, !dbg !1231

; <label>:833                                     ; preds = %829
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !1232, !tbaa !183
  br label %918, !dbg !1234

; <label>:834                                     ; preds = %826
  %835 = icmp sgt i32 %wn.0.lcssa, 2, !dbg !1235
  %or.cond50 = or i1 %835, %791, !dbg !1237
  %836 = icmp ne i32 %wb.0.lcssa, 1
  %or.cond52 = or i1 %792, %836, !dbg !1238
  %or.cond109 = and i1 %or.cond50, %or.cond52, !dbg !1237
  br i1 %or.cond109, label %918, label %837, !dbg !1237

; <label>:837                                     ; preds = %834
  %838 = icmp sgt i32 %bn.0.lcssa, 2, !dbg !1239
  %or.cond54 = or i1 %838, %802, !dbg !1242
  %839 = icmp ne i32 %bb.0.lcssa, 1
  %or.cond56 = or i1 %803, %839, !dbg !1243
  %or.cond110 = and i1 %or.cond54, %or.cond56, !dbg !1242
  br i1 %or.cond110, label %918, label %840, !dbg !1242

; <label>:840                                     ; preds = %837
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !1244, !tbaa !183
  br label %918, !dbg !1246

; <label>:841                                     ; preds = %814
  %842 = icmp eq i32 %815, 0, !dbg !1247
  br i1 %842, label %843, label %918, !dbg !1247

; <label>:843                                     ; preds = %841
  %844 = icmp eq i32 %wr.0.lcssa, 1, !dbg !1249
  %845 = icmp eq i32 %br.0.lcssa, 1, !dbg !1252
  %or.cond60 = and i1 %844, %845, !dbg !1253
  br i1 %or.cond60, label %846, label %852, !dbg !1253

; <label>:846                                     ; preds = %843
  %847 = add nsw i32 %wb.0.lcssa, %wn.0.lcssa, !dbg !1254
  %848 = icmp slt i32 %847, 2, !dbg !1257
  %849 = add nsw i32 %bb.0.lcssa, %bn.0.lcssa
  %850 = icmp slt i32 %849, 2, !dbg !1258
  %or.cond112 = and i1 %848, %850, !dbg !1259
  br i1 %or.cond112, label %851, label %918, !dbg !1259

; <label>:851                                     ; preds = %846
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !1260, !tbaa !183
  br label %918, !dbg !1262

; <label>:852                                     ; preds = %843
  %853 = icmp ne i32 %wr.0.lcssa, 1, !dbg !1263
  %or.cond62 = or i1 %853, %801, !dbg !1265
  br i1 %or.cond62, label %860, label %854, !dbg !1265

; <label>:854                                     ; preds = %852
  %855 = sub i32 0, %wb.0.lcssa, !dbg !1266
  %856 = icmp eq i32 %wn.0.lcssa, %855, !dbg !1266
  br i1 %856, label %857, label %918, !dbg !1269

; <label>:857                                     ; preds = %854
  %858 = add i32 %bn.0.lcssa, -1, !dbg !1270
  %.off121 = add i32 %858, %bb.0.lcssa, !dbg !1271
  %switch122 = icmp ult i32 %.off121, 2, !dbg !1271
  br i1 %switch122, label %859, label %918, !dbg !1271

; <label>:859                                     ; preds = %857
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !1272, !tbaa !183
  br label %918, !dbg !1274

; <label>:860                                     ; preds = %852
  %notrhs = icmp eq i32 %wr.0.lcssa, 0, !dbg !1275
  %or.cond64.not = and i1 %notrhs, %845, !dbg !1275
  %861 = sub i32 0, %bb.0.lcssa
  %862 = icmp eq i32 %bn.0.lcssa, %861, !dbg !1277
  %or.cond114 = and i1 %862, %or.cond64.not, !dbg !1275
  br i1 %or.cond114, label %863, label %918, !dbg !1275

; <label>:863                                     ; preds = %860
  %864 = add i32 %wn.0.lcssa, -1, !dbg !1280
  %.off123 = add i32 %864, %wb.0.lcssa, !dbg !1281
  %switch124 = icmp ult i32 %.off123, 2, !dbg !1281
  br i1 %switch124, label %865, label %918, !dbg !1281

; <label>:865                                     ; preds = %863
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 0, i32* %score, align 4, !dbg !1282, !tbaa !183
  br label %918, !dbg !1284

; <label>:866                                     ; preds = %811
  %867 = add nsw i32 %wb.0.lcssa, %wn.0.lcssa, !dbg !1285
  %868 = add nsw i32 %bb.0.lcssa, %bn.0.lcssa, !dbg !1288
  %869 = icmp eq i32 %867, %868, !dbg !1289
  %870 = add nsw i32 %wr.0.lcssa, %wq.0.lcssa, !dbg !1290
  %871 = add nsw i32 %br.0.lcssa, %bq.0.lcssa, !dbg !1293
  %872 = icmp eq i32 %870, %871, !dbg !1294
  br i1 %869, label %908, label %873, !dbg !1295

; <label>:873                                     ; preds = %866
  br i1 %872, label %874, label %881, !dbg !1296

; <label>:874                                     ; preds = %873
  %875 = icmp sgt i32 %867, %868, !dbg !1297
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %876 = load i32* %score, align 4, !dbg !1300, !tbaa !183
  br i1 %875, label %877, label %879, !dbg !1302

; <label>:877                                     ; preds = %874
  %878 = add nsw i32 %876, 120, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %878, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %878, i32* %score, align 4, !dbg !1300, !tbaa !183
  br label %918, !dbg !1303

; <label>:879                                     ; preds = %874
  %880 = add nsw i32 %876, -120, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %880, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %880, i32* %score, align 4, !dbg !1304, !tbaa !183
  br label %918

; <label>:881                                     ; preds = %873
  %882 = sub nsw i32 %870, %871, !dbg !1306
  %ispos71 = icmp sgt i32 %882, -1, !dbg !1308
  %neg72 = sub i32 0, %882, !dbg !1308
  %883 = select i1 %ispos71, i32 %882, i32 %neg72, !dbg !1308
  switch i32 %883, label %918 [
    i32 1, label %884
    i32 2, label %896
  ], !dbg !1309

; <label>:884                                     ; preds = %881
  %885 = add nsw i32 %868, 1, !dbg !1310
  %886 = icmp sgt i32 %867, %885, !dbg !1313
  br i1 %886, label %887, label %890, !dbg !1314

; <label>:887                                     ; preds = %884
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %888 = load i32* %score, align 4, !dbg !1315, !tbaa !183
  %889 = add nsw i32 %888, 120, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %889, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %889, i32* %score, align 4, !dbg !1315, !tbaa !183
  br label %918, !dbg !1317

; <label>:890                                     ; preds = %884
  %891 = add nsw i32 %867, 1, !dbg !1318
  %892 = icmp sgt i32 %868, %891, !dbg !1320
  br i1 %892, label %893, label %918, !dbg !1321

; <label>:893                                     ; preds = %890
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %894 = load i32* %score, align 4, !dbg !1322, !tbaa !183
  %895 = add nsw i32 %894, -120, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %895, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %895, i32* %score, align 4, !dbg !1322, !tbaa !183
  br label %918, !dbg !1324

; <label>:896                                     ; preds = %881
  %897 = add nsw i32 %868, 2, !dbg !1325
  %898 = icmp sgt i32 %867, %897, !dbg !1329
  br i1 %898, label %899, label %902, !dbg !1330

; <label>:899                                     ; preds = %896
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %900 = load i32* %score, align 4, !dbg !1331, !tbaa !183
  %901 = add nsw i32 %900, 120, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %901, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %901, i32* %score, align 4, !dbg !1331, !tbaa !183
  br label %918, !dbg !1333

; <label>:902                                     ; preds = %896
  %903 = add nsw i32 %867, 2, !dbg !1334
  %904 = icmp sgt i32 %868, %903, !dbg !1336
  br i1 %904, label %905, label %918, !dbg !1337

; <label>:905                                     ; preds = %902
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %906 = load i32* %score, align 4, !dbg !1338, !tbaa !183
  %907 = add nsw i32 %906, -120, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %907, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %907, i32* %score, align 4, !dbg !1338, !tbaa !183
  br label %918, !dbg !1340

; <label>:908                                     ; preds = %866
  br i1 %872, label %909, label %918, !dbg !1341

; <label>:909                                     ; preds = %908
  %910 = icmp eq i32 %wq.0.lcssa, 0, !dbg !1342
  %or.cond66 = or i1 %910, %781, !dbg !1346
  br i1 %or.cond66, label %914, label %911, !dbg !1346

; <label>:911                                     ; preds = %909
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %912 = load i32* %score, align 4, !dbg !1347, !tbaa !183
  %913 = add nsw i32 %912, 120, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %913, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %913, i32* %score, align 4, !dbg !1347, !tbaa !183
  br label %918, !dbg !1349

; <label>:914                                     ; preds = %909
  %or.cond68 = and i1 %910, %781, !dbg !1350
  br i1 %or.cond68, label %915, label %918, !dbg !1350

; <label>:915                                     ; preds = %914
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %916 = load i32* %score, align 4, !dbg !1352, !tbaa !183
  %917 = add nsw i32 %916, -120, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %917, i64 0, metadata !83, metadata !176), !dbg !460
  store i32 %917, i32* %score, align 4, !dbg !1352, !tbaa !183
  br label %918, !dbg !1354

; <label>:918                                     ; preds = %863, %857, %881, %860, %837, %834, %841, %890, %893, %887, %899, %905, %902, %877, %879, %911, %914, %915, %908, %833, %829, %840, %822, %825, %851, %846, %865, %854, %859
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %919 = load i32* %score, align 4, !dbg !1355, !tbaa !183
  call void @storeECache(i32 %919) #8, !dbg !1356
  %920 = load i32* @Material, align 4, !dbg !1357, !tbaa !183
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %921 = load i32* %score, align 4, !dbg !1359, !tbaa !183
  %922 = sub nsw i32 %920, %921, !dbg !1360
  %ispos = icmp sgt i32 %922, -1, !dbg !1361
  %neg = sub i32 0, %922, !dbg !1361
  %923 = select i1 %ispos, i32 %922, i32 %neg, !dbg !1361
  %924 = load i32* @maxposdiff, align 4, !dbg !1362, !tbaa !183
  %925 = icmp sgt i32 %923, %924, !dbg !1363
  br i1 %925, label %926, label %928, !dbg !1364

; <label>:926                                     ; preds = %918
  %927 = icmp sgt i32 %923, 1000, !dbg !1365
  %.115 = select i1 %927, i32 1000, i32 %923, !dbg !1365
  store i32 %.115, i32* @maxposdiff, align 4, !dbg !1366, !tbaa !183
  br label %928, !dbg !1367

; <label>:928                                     ; preds = %926, %918
  %929 = load i32* @white_to_move, align 4, !dbg !1368, !tbaa !183
  %930 = icmp eq i32 %929, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !83, metadata !176), !dbg !460
  %931 = sub nsw i32 0, %921, !dbg !1371
  %.125 = select i1 %930, i32 %921, i32 %931, !dbg !1373
  br label %932, !dbg !1373

; <label>:932                                     ; preds = %928, %18, %12, %0
  %.0 = phi i32 [ %10, %0 ], [ %13, %12 ], [ %.116, %18 ], [ %.125, %928 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #4, !dbg !1374
  call void @llvm.lifetime.end(i64 44, i8* %1) #4, !dbg !1374
  call void @llvm.lifetime.end(i64 88, i8* %3) #4, !dbg !1374
  ret i32 %.0, !dbg !1374
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #6

; Function Attrs: optsize
declare void @storeECache(i32) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!172, !173, !174}
!llvm.ident = !{!175}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !121, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/neval.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10, !19, !26, !33, !40, !47, !53, !59, !63, !107, !115}
!10 = !DISubprogram(name: "check_phase", scope: !1, file: !1, line: 168, type: !11, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @check_phase, variables: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14, !16, !17, !18}
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xnum_pieces", scope: !10, file: !1, line: 170, type: !15)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !10, file: !1, line: 171, type: !15)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !10, file: !1, line: 171, type: !15)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !10, file: !1, line: 171, type: !15)
!19 = !DISubprogram(name: "King", scope: !1, file: !1, line: 235, type: !20, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @King, variables: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !15, !15}
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !19, file: !1, line: 235, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !19, file: !1, line: 235, type: !15)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !19, file: !1, line: 236, type: !15)
!26 = !DISubprogram(name: "Queen", scope: !1, file: !1, line: 255, type: !20, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @Queen, variables: !27)
!27 = !{!28, !29, !30, !31, !32}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !26, file: !1, line: 255, type: !15)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !26, file: !1, line: 255, type: !15)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !26, file: !1, line: 256, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mob", scope: !26, file: !1, line: 257, type: !15)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xside", scope: !26, file: !1, line: 258, type: !15)
!33 = !DISubprogram(name: "Rook", scope: !1, file: !1, line: 283, type: !20, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @Rook, variables: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !33, file: !1, line: 283, type: !15)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !33, file: !1, line: 283, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !33, file: !1, line: 285, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mob", scope: !33, file: !1, line: 286, type: !15)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xside", scope: !33, file: !1, line: 287, type: !15)
!40 = !DISubprogram(name: "Bishop", scope: !1, file: !1, line: 322, type: !20, isLocal: false, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @Bishop, variables: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !40, file: !1, line: 322, type: !15)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !40, file: !1, line: 322, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !40, file: !1, line: 323, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mob", scope: !40, file: !1, line: 324, type: !15)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xside", scope: !40, file: !1, line: 325, type: !15)
!47 = !DISubprogram(name: "Knight", scope: !1, file: !1, line: 346, type: !20, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @Knight, variables: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !47, file: !1, line: 346, type: !15)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !47, file: !1, line: 346, type: !15)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !47, file: !1, line: 347, type: !15)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xside", scope: !47, file: !1, line: 348, type: !15)
!53 = !DISubprogram(name: "Pawn", scope: !1, file: !1, line: 360, type: !20, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @Pawn, variables: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !53, file: !1, line: 360, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !53, file: !1, line: 360, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !53, file: !1, line: 361, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xside", scope: !53, file: !1, line: 362, type: !15)
!59 = !DISubprogram(name: "ErrorIt", scope: !1, file: !1, line: 387, type: !20, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @ErrorIt, variables: !60)
!60 = !{!61, !62}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sq", arg: 1, scope: !59, file: !1, line: 387, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !59, file: !1, line: 387, type: !15)
!63 = !DISubprogram(name: "std_eval", scope: !1, file: !1, line: 392, type: !20, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @std_eval, variables: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !75, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 1, scope: !63, file: !1, line: 392, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 2, scope: !63, file: !1, line: 392, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !63, file: !1, line: 394, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !63, file: !1, line: 394, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawn_file", scope: !63, file: !1, line: 394, type: !15)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawns", scope: !63, file: !1, line: 394, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 704, align: 32, elements: !72)
!72 = !{!73, !74}
!73 = !DISubrange(count: 2)
!74 = !DISubrange(count: 11)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "white_back_pawn", scope: !63, file: !1, line: 394, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 352, align: 32, elements: !77)
!77 = !{!74}
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "black_back_pawn", scope: !63, file: !1, line: 394, type: !76)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srank", scope: !63, file: !1, line: 395, type: !15)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wking_pawn_file", scope: !63, file: !1, line: 395, type: !15)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bking_pawn_file", scope: !63, file: !1, line: 395, type: !15)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !63, file: !1, line: 395, type: !15)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !63, file: !1, line: 396, type: !15)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isolated", scope: !63, file: !1, line: 397, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "xbool", file: !4, line: 14, baseType: !3)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "backwards", scope: !63, file: !1, line: 397, type: !85)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_cache", scope: !63, file: !1, line: 398, type: !15)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !63, file: !1, line: 399, type: !15)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !63, file: !1, line: 399, type: !15)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wn", scope: !63, file: !1, line: 399, type: !15)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bn", scope: !63, file: !1, line: 399, type: !15)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wb", scope: !63, file: !1, line: 399, type: !15)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bb", scope: !63, file: !1, line: 399, type: !15)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wq", scope: !63, file: !1, line: 399, type: !15)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bq", scope: !63, file: !1, line: 399, type: !15)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !63, file: !1, line: 399, type: !15)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "br", scope: !63, file: !1, line: 399, type: !15)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbrook", scope: !63, file: !1, line: 400, type: !15)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fbrook", scope: !63, file: !1, line: 400, type: !15)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rwrook", scope: !63, file: !1, line: 400, type: !15)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fwrook", scope: !63, file: !1, line: 400, type: !15)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wpotential", scope: !63, file: !1, line: 401, type: !15)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bpotential", scope: !63, file: !1, line: 401, type: !15)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !63, file: !1, line: 401, type: !15)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wksafety", scope: !63, file: !1, line: 402, type: !15)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bksafety", scope: !63, file: !1, line: 402, type: !15)
!107 = !DISubprogram(name: "rook_mobility", scope: !1, file: !1, line: 220, type: !108, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @rook_mobility, variables: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!15, !15}
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !107, file: !1, line: 220, type: !15)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !107, file: !1, line: 222, type: !15)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !107, file: !1, line: 223, type: !15)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diridx", scope: !107, file: !1, line: 224, type: !15)
!115 = !DISubprogram(name: "bishop_mobility", scope: !1, file: !1, line: 205, type: !108, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @bishop_mobility, variables: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !115, file: !1, line: 205, type: !15)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !115, file: !1, line: 207, type: !15)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !115, file: !1, line: 208, type: !15)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diridx", scope: !115, file: !1, line: 209, type: !15)
!121 = !{!122, !127, !128, !132, !133, !134, !135, !138, !139, !143, !144, !146, !147, !148, !152, !153, !156, !157, !163, !164, !165, !166, !167, !168}
!122 = !DIGlobalVariable(name: "std_p_tropism", scope: !0, file: !1, line: 150, type: !123, isLocal: false, isDefinition: true, variable: [8 x i32]* @std_p_tropism)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, align: 32, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!125 = !{!126}
!126 = !DISubrange(count: 8)
!127 = !DIGlobalVariable(name: "std_own_p_tropism", scope: !0, file: !1, line: 153, type: !123, isLocal: false, isDefinition: true, variable: [8 x i32]* @std_own_p_tropism)
!128 = !DIGlobalVariable(name: "std_r_tropism", scope: !0, file: !1, line: 156, type: !129, isLocal: false, isDefinition: true, variable: [16 x i32]* @std_r_tropism)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 512, align: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DIGlobalVariable(name: "std_n_tropism", scope: !0, file: !1, line: 159, type: !123, isLocal: false, isDefinition: true, variable: [8 x i32]* @std_n_tropism)
!133 = !DIGlobalVariable(name: "std_q_tropism", scope: !0, file: !1, line: 162, type: !123, isLocal: false, isDefinition: true, variable: [8 x i32]* @std_q_tropism)
!134 = !DIGlobalVariable(name: "std_b_tropism", scope: !0, file: !1, line: 165, type: !123, isLocal: false, isDefinition: true, variable: [8 x i32]* @std_b_tropism)
!135 = !DIGlobalVariable(name: "square_d1", scope: !33, file: !1, line: 284, type: !136, isLocal: true, isDefinition: true, variable: [2 x i32]* @Rook.square_d1)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, align: 32, elements: !137)
!137 = !{!73}
!138 = !DIGlobalVariable(name: "maxposdiff", scope: !0, file: !1, line: 33, type: !15, isLocal: false, isDefinition: true, variable: i32* @maxposdiff)
!139 = !DIGlobalVariable(name: "distance", scope: !0, file: !1, line: 38, type: !140, isLocal: false, isDefinition: true, variable: [144 x [144 x i32]]* @distance)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 663552, align: 32, elements: !141)
!141 = !{!142, !142}
!142 = !DISubrange(count: 144)
!143 = !DIGlobalVariable(name: "rookdistance", scope: !0, file: !1, line: 39, type: !140, isLocal: false, isDefinition: true, variable: [144 x [144 x i32]]* @rookdistance)
!144 = !DIGlobalVariable(name: "king_locs", scope: !0, file: !1, line: 40, type: !145, isLocal: false, isDefinition: true, variable: [2 x i32]* @king_locs)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, align: 32, elements: !137)
!146 = !DIGlobalVariable(name: "wmat", scope: !0, file: !1, line: 41, type: !15, isLocal: false, isDefinition: true, variable: i32* @wmat)
!147 = !DIGlobalVariable(name: "bmat", scope: !0, file: !1, line: 41, type: !15, isLocal: false, isDefinition: true, variable: i32* @bmat)
!148 = !DIGlobalVariable(name: "dir", scope: !107, file: !1, line: 225, type: !149, isLocal: true, isDefinition: true, variable: [4 x i32]* @rook_mobility.dir)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, align: 32, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 4)
!152 = !DIGlobalVariable(name: "dir", scope: !115, file: !1, line: 210, type: !149, isLocal: true, isDefinition: true, variable: [4 x i32]* @bishop_mobility.dir)
!153 = !DIGlobalVariable(name: "sbishop", scope: !0, file: !1, line: 45, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @sbishop)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 4608, align: 32, elements: !155)
!155 = !{!142}
!156 = !DIGlobalVariable(name: "sknight", scope: !0, file: !1, line: 59, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @sknight)
!157 = !DIGlobalVariable(name: "evalRoutines", scope: !0, file: !1, line: 24, type: !158, isLocal: true, isDefinition: true, variable: [7 x i32 (i32, i32)*]* @evalRoutines)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 448, align: 64, elements: !161)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVALFUNC", file: !1, line: 23, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!161 = !{!162}
!162 = !DISubrange(count: 7)
!163 = !DIGlobalVariable(name: "swhite_pawn", scope: !0, file: !1, line: 73, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @swhite_pawn)
!164 = !DIGlobalVariable(name: "sblack_pawn", scope: !0, file: !1, line: 87, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @sblack_pawn)
!165 = !DIGlobalVariable(name: "swhite_king", scope: !0, file: !1, line: 102, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @swhite_king)
!166 = !DIGlobalVariable(name: "send_king", scope: !0, file: !1, line: 132, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @send_king)
!167 = !DIGlobalVariable(name: "sblack_king", scope: !0, file: !1, line: 117, type: !154, isLocal: true, isDefinition: true, variable: [144 x i32]* @sblack_king)
!168 = !DIGlobalVariable(name: "srev_rank", scope: !0, file: !1, line: 147, type: !169, isLocal: true, isDefinition: true, variable: [9 x i32]* @srev_rank)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 288, align: 32, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 9)
!172 = !{i32 2, !"Dwarf Version", i32 2}
!173 = !{i32 2, !"Debug Info Version", i32 700000003}
!174 = !{i32 1, !"PIC Level", i32 2}
!175 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!176 = !DIExpression()
!177 = !DILocation(line: 170, column: 7, scope: !10)
!178 = !DILocation(line: 171, column: 7, scope: !10)
!179 = !DILocation(line: 171, column: 10, scope: !10)
!180 = !DILocation(line: 173, column: 28, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 173, column: 3)
!182 = distinct !DILexicalBlock(scope: !10, file: !1, line: 173, column: 3)
!183 = !{!184, !184, i64 0}
!184 = !{!"int", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !DILocation(line: 173, column: 25, scope: !181)
!188 = !DILocation(line: 173, column: 3, scope: !182)
!189 = !DILocation(line: 175, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !1, line: 174, column: 5)
!191 = !DILocation(line: 171, column: 13, scope: !10)
!192 = !DILocation(line: 177, column: 12, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 177, column: 11)
!194 = !DILocation(line: 177, column: 11, scope: !190)
!195 = !DILocation(line: 180, column: 3, scope: !193)
!196 = !DILocation(line: 182, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !1, line: 182, column: 11)
!198 = !DILocation(line: 182, column: 29, scope: !197)
!199 = !DILocation(line: 185, column: 15, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 184, column: 2)
!201 = !DILocation(line: 186, column: 2, scope: !200)
!202 = !DILocation(line: 188, column: 20, scope: !203)
!203 = distinct !DILexicalBlock(scope: !10, file: !1, line: 188, column: 7)
!204 = !DILocation(line: 190, column: 7, scope: !203)
!205 = !DILocation(line: 190, column: 12, scope: !203)
!206 = !DILocation(line: 190, column: 30, scope: !203)
!207 = !DILocation(line: 190, column: 26, scope: !203)
!208 = !DILocation(line: 192, column: 11, scope: !203)
!209 = !DILocation(line: 192, column: 21, scope: !203)
!210 = !DILocation(line: 192, column: 44, scope: !203)
!211 = !DILocation(line: 192, column: 30, scope: !203)
!212 = !DILocation(line: 194, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !1, line: 193, column: 5)
!214 = !DILocation(line: 195, column: 5, scope: !213)
!215 = !DILocation(line: 196, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !203, file: !1, line: 196, column: 12)
!217 = !DILocation(line: 196, column: 12, scope: !203)
!218 = !DILocation(line: 198, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 197, column: 5)
!220 = !DILocation(line: 199, column: 5, scope: !219)
!221 = !DILocation(line: 201, column: 11, scope: !216)
!222 = !DILocation(line: 203, column: 1, scope: !10)
!223 = !DILocation(line: 235, column: 15, scope: !19)
!224 = !DILocation(line: 235, column: 22, scope: !19)
!225 = !DILocation(line: 236, column: 7, scope: !19)
!226 = !DILocation(line: 238, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !19, file: !1, line: 238, column: 7)
!228 = !DILocation(line: 238, column: 16, scope: !227)
!229 = !DILocation(line: 239, column: 4, scope: !227)
!230 = !DILocation(line: 239, column: 7, scope: !227)
!231 = !DILocation(line: 239, column: 20, scope: !227)
!232 = !DILocation(line: 240, column: 23, scope: !227)
!233 = !DILocation(line: 240, column: 4, scope: !227)
!234 = !DILocation(line: 245, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !19, file: !1, line: 244, column: 7)
!236 = !DILocation(line: 245, column: 20, scope: !235)
!237 = !DILocation(line: 246, column: 23, scope: !235)
!238 = !DILocation(line: 246, column: 4, scope: !235)
!239 = !DILocation(line: 247, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 246, column: 30)
!241 = !DILocation(line: 250, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !19, file: !1, line: 250, column: 7)
!243 = !DILocation(line: 251, column: 9, scope: !242)
!244 = !DILocation(line: 250, column: 7, scope: !19)
!245 = !DILocation(line: 252, column: 3, scope: !19)
!246 = !DILocation(line: 255, column: 16, scope: !26)
!247 = !DILocation(line: 255, column: 23, scope: !26)
!248 = !DILocation(line: 256, column: 7, scope: !26)
!249 = !DILocation(line: 258, column: 16, scope: !26)
!250 = !DILocation(line: 258, column: 7, scope: !26)
!251 = !DILocation(line: 262, column: 35, scope: !26)
!252 = !DILocation(line: 262, column: 22, scope: !26)
!253 = !DILocation(line: 262, column: 8, scope: !26)
!254 = !DILocation(line: 262, column: 5, scope: !26)
!255 = !DILocation(line: 264, column: 9, scope: !26)
!256 = !DILocation(line: 265, column: 10, scope: !26)
!257 = !DILocation(line: 265, column: 7, scope: !26)
!258 = !DILocation(line: 257, column: 7, scope: !26)
!259 = !DILocation(line: 267, column: 11, scope: !260)
!260 = distinct !DILexicalBlock(scope: !26, file: !1, line: 267, column: 7)
!261 = !DILocation(line: 267, column: 7, scope: !26)
!262 = !DILocation(line: 268, column: 10, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 267, column: 17)
!264 = !DILocation(line: 271, column: 2, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 270, column: 15)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 268, column: 10)
!267 = !DILocation(line: 273, column: 6, scope: !265)
!268 = !DILocation(line: 276, column: 5, scope: !26)
!269 = !DILocation(line: 278, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !26, file: !1, line: 278, column: 7)
!271 = !DILocation(line: 279, column: 9, scope: !270)
!272 = !DILocation(line: 278, column: 7, scope: !26)
!273 = !DILocation(line: 280, column: 3, scope: !26)
!274 = !DILocation(line: 220, column: 30, scope: !107)
!275 = !DILocation(line: 223, column: 16, scope: !107)
!276 = !DILocation(line: 224, column: 16, scope: !107)
!277 = !DILocation(line: 227, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !107, file: !1, line: 227, column: 3)
!279 = !DILocation(line: 229, column: 22, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 229, column: 6)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 228, column: 3)
!282 = distinct !DILexicalBlock(scope: !278, file: !1, line: 227, column: 3)
!283 = !DILocation(line: 229, column: 21, scope: !280)
!284 = !DILocation(line: 222, column: 16, scope: !107)
!285 = !DILocation(line: 229, column: 35, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !1, line: 229, column: 6)
!287 = !DILocation(line: 229, column: 44, scope: !286)
!288 = !DILocation(line: 229, column: 6, scope: !280)
!289 = !DILocation(line: 230, column: 10, scope: !286)
!290 = !DILocation(line: 232, column: 3, scope: !107)
!291 = !DILocation(line: 205, column: 32, scope: !115)
!292 = !DILocation(line: 208, column: 16, scope: !115)
!293 = !DILocation(line: 209, column: 16, scope: !115)
!294 = !DILocation(line: 212, column: 3, scope: !295)
!295 = distinct !DILexicalBlock(scope: !115, file: !1, line: 212, column: 3)
!296 = !DILocation(line: 214, column: 22, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 214, column: 6)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 213, column: 3)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 212, column: 3)
!300 = !DILocation(line: 214, column: 21, scope: !297)
!301 = !DILocation(line: 207, column: 16, scope: !115)
!302 = !DILocation(line: 214, column: 35, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !1, line: 214, column: 6)
!304 = !DILocation(line: 214, column: 44, scope: !303)
!305 = !DILocation(line: 214, column: 6, scope: !297)
!306 = !DILocation(line: 215, column: 10, scope: !303)
!307 = !DILocation(line: 217, column: 3, scope: !115)
!308 = !DILocation(line: 283, column: 14, scope: !33)
!309 = !DILocation(line: 283, column: 21, scope: !33)
!310 = !DILocation(line: 285, column: 7, scope: !33)
!311 = !DILocation(line: 287, column: 16, scope: !33)
!312 = !DILocation(line: 287, column: 7, scope: !33)
!313 = !DILocation(line: 291, column: 39, scope: !33)
!314 = !DILocation(line: 291, column: 22, scope: !33)
!315 = !DILocation(line: 291, column: 8, scope: !33)
!316 = !DILocation(line: 291, column: 5, scope: !33)
!317 = !DILocation(line: 293, column: 9, scope: !33)
!318 = !DILocation(line: 293, column: 27, scope: !33)
!319 = !DILocation(line: 286, column: 7, scope: !33)
!320 = !DILocation(line: 294, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !33, file: !1, line: 294, column: 7)
!322 = !DILocation(line: 294, column: 21, scope: !321)
!323 = !DILocation(line: 294, column: 7, scope: !33)
!324 = !DILocation(line: 295, column: 5, scope: !33)
!325 = !DILocation(line: 298, column: 15, scope: !326)
!326 = distinct !DILexicalBlock(scope: !33, file: !1, line: 298, column: 7)
!327 = !DILocation(line: 298, column: 7, scope: !326)
!328 = !DILocation(line: 298, column: 19, scope: !326)
!329 = !DILocation(line: 298, column: 29, scope: !326)
!330 = !DILocation(line: 298, column: 40, scope: !326)
!331 = !DILocation(line: 298, column: 32, scope: !326)
!332 = !DILocation(line: 298, column: 44, scope: !326)
!333 = !DILocation(line: 299, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !326, file: !1, line: 298, column: 55)
!335 = !DILocation(line: 298, column: 7, scope: !33)
!336 = !DILocation(line: 303, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !33, file: !1, line: 303, column: 7)
!338 = !DILocation(line: 303, column: 12, scope: !337)
!339 = !DILocation(line: 303, column: 35, scope: !337)
!340 = !DILocation(line: 303, column: 27, scope: !337)
!341 = !DILocation(line: 304, column: 15, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 304, column: 9)
!343 = distinct !DILexicalBlock(scope: !337, file: !1, line: 303, column: 52)
!344 = !DILocation(line: 304, column: 12, scope: !342)
!345 = !DILocation(line: 304, column: 9, scope: !343)
!346 = !DILocation(line: 306, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 306, column: 13)
!348 = distinct !DILexicalBlock(scope: !342, file: !1, line: 304, column: 30)
!349 = !DILocation(line: 306, column: 36, scope: !347)
!350 = !DILocation(line: 307, column: 40, scope: !347)
!351 = !DILocation(line: 307, column: 11, scope: !347)
!352 = !DILocation(line: 312, column: 27, scope: !353)
!353 = distinct !DILexicalBlock(scope: !343, file: !1, line: 312, column: 9)
!354 = !DILocation(line: 312, column: 12, scope: !353)
!355 = !DILocation(line: 313, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !1, line: 312, column: 32)
!357 = !DILocation(line: 312, column: 9, scope: !343)
!358 = !DILocation(line: 317, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !33, file: !1, line: 317, column: 7)
!360 = !DILocation(line: 318, column: 9, scope: !359)
!361 = !DILocation(line: 317, column: 7, scope: !33)
!362 = !DILocation(line: 319, column: 3, scope: !33)
!363 = !DILocation(line: 322, column: 17, scope: !40)
!364 = !DILocation(line: 322, column: 24, scope: !40)
!365 = !DILocation(line: 323, column: 7, scope: !40)
!366 = !DILocation(line: 325, column: 16, scope: !40)
!367 = !DILocation(line: 325, column: 7, scope: !40)
!368 = !DILocation(line: 328, column: 8, scope: !40)
!369 = !DILocation(line: 328, column: 5, scope: !40)
!370 = !DILocation(line: 330, column: 35, scope: !40)
!371 = !DILocation(line: 330, column: 22, scope: !40)
!372 = !DILocation(line: 330, column: 8, scope: !40)
!373 = !DILocation(line: 330, column: 5, scope: !40)
!374 = !DILocation(line: 332, column: 9, scope: !40)
!375 = !DILocation(line: 332, column: 29, scope: !40)
!376 = !DILocation(line: 324, column: 7, scope: !40)
!377 = !DILocation(line: 333, column: 11, scope: !378)
!378 = distinct !DILexicalBlock(scope: !40, file: !1, line: 333, column: 7)
!379 = !DILocation(line: 333, column: 21, scope: !378)
!380 = !DILocation(line: 333, column: 7, scope: !40)
!381 = !DILocation(line: 334, column: 5, scope: !40)
!382 = !DILocation(line: 336, column: 10, scope: !383)
!383 = distinct !DILexicalBlock(scope: !40, file: !1, line: 336, column: 7)
!384 = !DILocation(line: 336, column: 25, scope: !383)
!385 = !DILocation(line: 336, column: 19, scope: !383)
!386 = !DILocation(line: 336, column: 44, scope: !383)
!387 = !DILocation(line: 338, column: 10, scope: !383)
!388 = !DILocation(line: 338, column: 25, scope: !383)
!389 = !DILocation(line: 338, column: 19, scope: !383)
!390 = !DILocation(line: 338, column: 44, scope: !383)
!391 = !DILocation(line: 339, column: 9, scope: !383)
!392 = !DILocation(line: 339, column: 7, scope: !383)
!393 = !DILocation(line: 341, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !40, file: !1, line: 341, column: 7)
!395 = !DILocation(line: 342, column: 9, scope: !394)
!396 = !DILocation(line: 341, column: 7, scope: !40)
!397 = !DILocation(line: 343, column: 3, scope: !40)
!398 = !DILocation(line: 346, column: 17, scope: !47)
!399 = !DILocation(line: 346, column: 24, scope: !47)
!400 = !DILocation(line: 347, column: 7, scope: !47)
!401 = !DILocation(line: 348, column: 16, scope: !47)
!402 = !DILocation(line: 348, column: 7, scope: !47)
!403 = !DILocation(line: 351, column: 8, scope: !47)
!404 = !DILocation(line: 351, column: 5, scope: !47)
!405 = !DILocation(line: 353, column: 35, scope: !47)
!406 = !DILocation(line: 353, column: 22, scope: !47)
!407 = !DILocation(line: 353, column: 8, scope: !47)
!408 = !DILocation(line: 353, column: 5, scope: !47)
!409 = !DILocation(line: 355, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !47, file: !1, line: 355, column: 7)
!411 = !DILocation(line: 356, column: 9, scope: !410)
!412 = !DILocation(line: 355, column: 7, scope: !47)
!413 = !DILocation(line: 357, column: 3, scope: !47)
!414 = !DILocation(line: 360, column: 15, scope: !53)
!415 = !DILocation(line: 360, column: 22, scope: !53)
!416 = !DILocation(line: 361, column: 7, scope: !53)
!417 = !DILocation(line: 362, column: 16, scope: !53)
!418 = !DILocation(line: 362, column: 7, scope: !53)
!419 = !DILocation(line: 366, column: 35, scope: !53)
!420 = !DILocation(line: 366, column: 22, scope: !53)
!421 = !DILocation(line: 366, column: 8, scope: !53)
!422 = !DILocation(line: 366, column: 5, scope: !53)
!423 = !DILocation(line: 367, column: 39, scope: !53)
!424 = !DILocation(line: 367, column: 26, scope: !53)
!425 = !DILocation(line: 367, column: 8, scope: !53)
!426 = !DILocation(line: 367, column: 5, scope: !53)
!427 = !DILocation(line: 370, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !53, file: !1, line: 370, column: 7)
!429 = !DILocation(line: 370, column: 20, scope: !428)
!430 = !DILocation(line: 371, column: 26, scope: !428)
!431 = !DILocation(line: 371, column: 7, scope: !428)
!432 = !DILocation(line: 372, column: 9, scope: !428)
!433 = !DILocation(line: 375, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !53, file: !1, line: 375, column: 6)
!435 = !DILocation(line: 375, column: 20, scope: !434)
!436 = !DILocation(line: 376, column: 26, scope: !434)
!437 = !DILocation(line: 376, column: 6, scope: !434)
!438 = !DILocation(line: 377, column: 8, scope: !434)
!439 = !DILocation(line: 377, column: 6, scope: !434)
!440 = !DILocation(line: 378, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !1, line: 378, column: 12)
!442 = !DILocation(line: 378, column: 26, scope: !441)
!443 = !DILocation(line: 379, column: 32, scope: !441)
!444 = !DILocation(line: 379, column: 12, scope: !441)
!445 = !DILocation(line: 382, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !53, file: !1, line: 382, column: 7)
!447 = !DILocation(line: 383, column: 9, scope: !446)
!448 = !DILocation(line: 382, column: 7, scope: !53)
!449 = !DILocation(line: 384, column: 3, scope: !53)
!450 = !DILocation(line: 387, column: 18, scope: !59)
!451 = !DILocation(line: 387, column: 25, scope: !59)
!452 = !DILocation(line: 388, column: 3, scope: !59)
!453 = !DILocation(line: 389, column: 3, scope: !59)
!454 = !DILocation(line: 392, column: 19, scope: !63)
!455 = !DILocation(line: 392, column: 30, scope: !63)
!456 = !DILocation(line: 394, column: 3, scope: !63)
!457 = !DILocation(line: 394, column: 24, scope: !63)
!458 = !DILocation(line: 394, column: 38, scope: !63)
!459 = !DILocation(line: 394, column: 59, scope: !63)
!460 = !DILocation(line: 396, column: 7, scope: !63)
!461 = !DILocation(line: 404, column: 8, scope: !462)
!462 = distinct !DILexicalBlock(scope: !63, file: !1, line: 404, column: 7)
!463 = !DILocation(line: 404, column: 22, scope: !462)
!464 = !DILocation(line: 404, column: 31, scope: !462)
!465 = !DILocation(line: 404, column: 44, scope: !462)
!466 = !DILocation(line: 404, column: 42, scope: !462)
!467 = !DILocation(line: 404, column: 55, scope: !462)
!468 = !DILocation(line: 404, column: 7, scope: !63)
!469 = !DILocation(line: 406, column: 42, scope: !470)
!470 = distinct !DILexicalBlock(scope: !63, file: !1, line: 406, column: 7)
!471 = !DILocation(line: 406, column: 55, scope: !470)
!472 = !DILocation(line: 406, column: 7, scope: !63)
!473 = !DILocation(line: 398, column: 7, scope: !63)
!474 = !DILocation(line: 409, column: 12, scope: !63)
!475 = !DILocation(line: 411, column: 3, scope: !63)
!476 = !DILocation(line: 413, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !63, file: !1, line: 413, column: 6)
!478 = !DILocation(line: 413, column: 6, scope: !63)
!479 = !DILocation(line: 415, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 415, column: 11)
!481 = distinct !DILexicalBlock(scope: !477, file: !1, line: 414, column: 5)
!482 = !DILocation(line: 415, column: 25, scope: !480)
!483 = !DILocation(line: 415, column: 38, scope: !480)
!484 = !DILocation(line: 416, column: 14, scope: !481)
!485 = !DILocation(line: 415, column: 11, scope: !481)
!486 = !DILocation(line: 419, column: 3, scope: !63)
!487 = !DILocation(line: 394, column: 7, scope: !63)
!488 = !DILocation(line: 421, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 420, column: 28)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 420, column: 3)
!491 = distinct !DILexicalBlock(scope: !63, file: !1, line: 420, column: 3)
!492 = !DILocation(line: 422, column: 24, scope: !489)
!493 = !DILocation(line: 425, column: 8, scope: !63)
!494 = !DILocation(line: 426, column: 8, scope: !63)
!495 = !DILocation(line: 428, column: 22, scope: !63)
!496 = !DILocation(line: 428, column: 20, scope: !63)
!497 = !DILocation(line: 429, column: 22, scope: !63)
!498 = !DILocation(line: 429, column: 20, scope: !63)
!499 = !DILocation(line: 395, column: 48, scope: !63)
!500 = !DILocation(line: 394, column: 10, scope: !63)
!501 = !DILocation(line: 432, column: 28, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 432, column: 3)
!503 = distinct !DILexicalBlock(scope: !63, file: !1, line: 432, column: 3)
!504 = !DILocation(line: 432, column: 25, scope: !502)
!505 = !DILocation(line: 432, column: 3, scope: !503)
!506 = !DILocation(line: 493, column: 3, scope: !507)
!507 = distinct !DILexicalBlock(scope: !63, file: !1, line: 493, column: 3)
!508 = !DILocation(line: 433, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !502, file: !1, line: 432, column: 47)
!510 = !DILocation(line: 435, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !1, line: 435, column: 9)
!512 = !DILocation(line: 435, column: 9, scope: !509)
!513 = !DILocation(line: 438, column: 8, scope: !511)
!514 = !DILocation(line: 440, column: 5, scope: !509)
!515 = !{!"branch_weights", i32 64, i32 4}
!516 = !DILocation(line: 442, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !1, line: 442, column: 9)
!518 = !DILocation(line: 442, column: 27, scope: !517)
!519 = !DILocation(line: 444, column: 13, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 444, column: 13)
!521 = distinct !DILexicalBlock(scope: !517, file: !1, line: 443, column: 5)
!522 = !DILocation(line: 444, column: 26, scope: !520)
!523 = !DILocation(line: 445, column: 18, scope: !520)
!524 = !DILocation(line: 444, column: 13, scope: !521)
!525 = !DILocation(line: 445, column: 15, scope: !520)
!526 = !DILocation(line: 445, column: 10, scope: !520)
!527 = !DILocation(line: 447, column: 14, scope: !520)
!528 = !DILocation(line: 447, column: 11, scope: !520)
!529 = !DILocation(line: 450, column: 19, scope: !530)
!530 = distinct !DILexicalBlock(scope: !509, file: !1, line: 450, column: 9)
!531 = !DILocation(line: 450, column: 9, scope: !509)
!532 = !DILocation(line: 452, column: 19, scope: !533)
!533 = distinct !DILexicalBlock(scope: !530, file: !1, line: 451, column: 5)
!534 = !DILocation(line: 452, column: 27, scope: !533)
!535 = !DILocation(line: 394, column: 13, scope: !63)
!536 = !DILocation(line: 453, column: 15, scope: !533)
!537 = !DILocation(line: 395, column: 7, scope: !63)
!538 = !DILocation(line: 455, column: 11, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !1, line: 455, column: 11)
!540 = !DILocation(line: 455, column: 24, scope: !539)
!541 = !DILocation(line: 457, column: 8, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !1, line: 456, column: 7)
!543 = !DILocation(line: 455, column: 11, scope: !533)
!544 = !DILocation(line: 457, column: 27, scope: !542)
!545 = !DILocation(line: 458, column: 20, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !1, line: 458, column: 12)
!547 = !DILocation(line: 458, column: 18, scope: !546)
!548 = !DILocation(line: 458, column: 12, scope: !542)
!549 = !DILocation(line: 459, column: 30, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 458, column: 48)
!551 = !DILocation(line: 460, column: 8, scope: !550)
!552 = !DILocation(line: 464, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !539, file: !1, line: 463, column: 7)
!554 = !DILocation(line: 464, column: 27, scope: !553)
!555 = !DILocation(line: 465, column: 20, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 465, column: 12)
!557 = !DILocation(line: 465, column: 18, scope: !556)
!558 = !DILocation(line: 465, column: 12, scope: !553)
!559 = !DILocation(line: 466, column: 30, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 465, column: 48)
!561 = !DILocation(line: 467, column: 8, scope: !560)
!562 = !DILocation(line: 494, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 493, column: 47)
!564 = distinct !DILexicalBlock(scope: !507, file: !1, line: 493, column: 3)
!565 = !DILocation(line: 495, column: 10, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !1, line: 495, column: 9)
!567 = !DILocation(line: 495, column: 9, scope: !563)
!568 = !DILocation(line: 498, column: 8, scope: !566)
!569 = !DILocation(line: 500, column: 30, scope: !563)
!570 = !DILocation(line: 500, column: 17, scope: !563)
!571 = !{!572, !572, i64 0}
!572 = !{!"any pointer", !185, i64 0}
!573 = !DILocation(line: 500, column: 45, scope: !563)
!574 = !DILocation(line: 500, column: 14, scope: !563)
!575 = !DILocation(line: 500, column: 11, scope: !563)
!576 = !DILocation(line: 502, column: 17, scope: !563)
!577 = !DILocation(line: 502, column: 25, scope: !563)
!578 = !DILocation(line: 503, column: 13, scope: !563)
!579 = !DILocation(line: 504, column: 13, scope: !563)
!580 = !DILocation(line: 504, column: 5, scope: !563)
!581 = !DILocation(line: 397, column: 9, scope: !63)
!582 = !DILocation(line: 397, column: 19, scope: !63)
!583 = !DILocation(line: 508, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !563, file: !1, line: 504, column: 23)
!585 = !DILocation(line: 508, column: 8, scope: !584)
!586 = !DILocation(line: 509, column: 4, scope: !584)
!587 = !DILocation(line: 399, column: 7, scope: !63)
!588 = !DILocation(line: 512, column: 31, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !1, line: 512, column: 6)
!590 = !DILocation(line: 512, column: 6, scope: !589)
!591 = !DILocation(line: 512, column: 35, scope: !589)
!592 = !DILocation(line: 513, column: 6, scope: !589)
!593 = !DILocation(line: 513, column: 9, scope: !589)
!594 = !DILocation(line: 513, column: 38, scope: !589)
!595 = !DILocation(line: 512, column: 6, scope: !584)
!596 = !DILocation(line: 514, column: 10, scope: !597)
!597 = distinct !DILexicalBlock(scope: !589, file: !1, line: 513, column: 47)
!598 = !DILocation(line: 517, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !597, file: !1, line: 517, column: 8)
!600 = !DILocation(line: 517, column: 31, scope: !599)
!601 = !DILocation(line: 517, column: 35, scope: !599)
!602 = !DILocation(line: 517, column: 8, scope: !597)
!603 = !DILocation(line: 518, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !1, line: 517, column: 58)
!605 = !DILocation(line: 520, column: 4, scope: !604)
!606 = !DILocation(line: 524, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !584, file: !1, line: 524, column: 6)
!608 = !DILocation(line: 524, column: 6, scope: !584)
!609 = !DILocation(line: 525, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 525, column: 8)
!611 = distinct !DILexicalBlock(scope: !607, file: !1, line: 524, column: 28)
!612 = !DILocation(line: 525, column: 8, scope: !611)
!613 = !DILocation(line: 525, column: 25, scope: !610)
!614 = !DILocation(line: 525, column: 19, scope: !610)
!615 = !DILocation(line: 526, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !1, line: 526, column: 8)
!617 = !DILocation(line: 526, column: 8, scope: !611)
!618 = !DILocation(line: 526, column: 24, scope: !616)
!619 = !DILocation(line: 526, column: 18, scope: !616)
!620 = !DILocation(line: 530, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !584, file: !1, line: 530, column: 6)
!622 = !DILocation(line: 530, column: 26, scope: !621)
!623 = !DILocation(line: 530, column: 6, scope: !584)
!624 = !DILocation(line: 531, column: 14, scope: !621)
!625 = !DILocation(line: 531, column: 10, scope: !621)
!626 = !DILocation(line: 531, column: 4, scope: !621)
!627 = !DILocation(line: 534, column: 39, scope: !628)
!628 = distinct !DILexicalBlock(scope: !584, file: !1, line: 534, column: 6)
!629 = !DILocation(line: 534, column: 27, scope: !628)
!630 = !DILocation(line: 534, column: 36, scope: !628)
!631 = !DILocation(line: 534, column: 68, scope: !628)
!632 = !DILocation(line: 535, column: 15, scope: !628)
!633 = !DILocation(line: 535, column: 12, scope: !628)
!634 = !DILocation(line: 534, column: 6, scope: !584)
!635 = !DILocation(line: 536, column: 19, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !1, line: 535, column: 45)
!637 = !DILocation(line: 536, column: 16, scope: !636)
!638 = !DILocation(line: 536, column: 10, scope: !636)
!639 = !DILocation(line: 538, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !1, line: 538, column: 8)
!641 = !DILocation(line: 542, column: 25, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !1, line: 539, column: 4)
!643 = !DILocation(line: 401, column: 31, scope: !63)
!644 = !DILocation(line: 544, column: 10, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 544, column: 10)
!646 = !DILocation(line: 556, column: 11, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 556, column: 10)
!648 = distinct !DILexicalBlock(scope: !640, file: !1, line: 551, column: 4)
!649 = !DILocation(line: 538, column: 8, scope: !636)
!650 = !DILocation(line: 545, column: 20, scope: !645)
!651 = !DILocation(line: 545, column: 6, scope: !645)
!652 = !DILocation(line: 545, column: 3, scope: !645)
!653 = !DILocation(line: 547, column: 19, scope: !654)
!654 = distinct !DILexicalBlock(scope: !645, file: !1, line: 546, column: 6)
!655 = !DILocation(line: 401, column: 7, scope: !63)
!656 = !DILocation(line: 544, column: 10, scope: !642)
!657 = !DILocation(line: 556, column: 78, scope: !647)
!658 = !DILocation(line: 557, column: 20, scope: !647)
!659 = !DILocation(line: 557, column: 6, scope: !647)
!660 = !DILocation(line: 557, column: 3, scope: !647)
!661 = !DILocation(line: 559, column: 19, scope: !662)
!662 = distinct !DILexicalBlock(scope: !647, file: !1, line: 558, column: 6)
!663 = !DILocation(line: 556, column: 10, scope: !648)
!664 = !DILocation(line: 564, column: 21, scope: !665)
!665 = distinct !DILexicalBlock(scope: !636, file: !1, line: 564, column: 8)
!666 = !DILocation(line: 565, column: 21, scope: !665)
!667 = !DILocation(line: 565, column: 18, scope: !665)
!668 = !DILocation(line: 565, column: 12, scope: !665)
!669 = !DILocation(line: 565, column: 6, scope: !665)
!670 = !DILocation(line: 568, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !636, file: !1, line: 568, column: 8)
!672 = !DILocation(line: 568, column: 8, scope: !636)
!673 = !DILocation(line: 570, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !1, line: 569, column: 6)
!675 = !DILocation(line: 573, column: 12, scope: !676)
!676 = distinct !DILexicalBlock(scope: !674, file: !1, line: 573, column: 12)
!677 = !DILocation(line: 573, column: 12, scope: !674)
!678 = !DILocation(line: 575, column: 10, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 575, column: 9)
!680 = distinct !DILexicalBlock(scope: !676, file: !1, line: 574, column: 3)
!681 = !DILocation(line: 576, column: 9, scope: !679)
!682 = !DILocation(line: 576, column: 69, scope: !679)
!683 = !DILocation(line: 576, column: 44, scope: !679)
!684 = !DILocation(line: 576, column: 41, scope: !679)
!685 = !DILocation(line: 575, column: 9, scope: !680)
!686 = !DILocation(line: 578, column: 19, scope: !687)
!687 = distinct !DILexicalBlock(scope: !679, file: !1, line: 577, column: 7)
!688 = !DILocation(line: 578, column: 15, scope: !687)
!689 = !DILocation(line: 581, column: 21, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !1, line: 581, column: 13)
!691 = !DILocation(line: 581, column: 58, scope: !690)
!692 = !DILocation(line: 581, column: 26, scope: !690)
!693 = !DILocation(line: 583, column: 12, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !1, line: 582, column: 4)
!695 = !DILocation(line: 584, column: 4, scope: !694)
!696 = !DILocation(line: 587, column: 12, scope: !697)
!697 = distinct !DILexicalBlock(scope: !674, file: !1, line: 587, column: 12)
!698 = !DILocation(line: 587, column: 12, scope: !674)
!699 = !DILocation(line: 589, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 589, column: 10)
!701 = distinct !DILexicalBlock(scope: !697, file: !1, line: 588, column: 3)
!702 = !DILocation(line: 590, column: 9, scope: !700)
!703 = !DILocation(line: 590, column: 69, scope: !700)
!704 = !DILocation(line: 590, column: 44, scope: !700)
!705 = !DILocation(line: 590, column: 41, scope: !700)
!706 = !DILocation(line: 589, column: 10, scope: !701)
!707 = !DILocation(line: 592, column: 19, scope: !708)
!708 = distinct !DILexicalBlock(scope: !700, file: !1, line: 591, column: 7)
!709 = !DILocation(line: 592, column: 15, scope: !708)
!710 = !DILocation(line: 595, column: 21, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !1, line: 595, column: 13)
!712 = !DILocation(line: 595, column: 26, scope: !711)
!713 = !DILocation(line: 595, column: 29, scope: !711)
!714 = !DILocation(line: 595, column: 58, scope: !711)
!715 = !DILocation(line: 595, column: 13, scope: !708)
!716 = !DILocation(line: 597, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !711, file: !1, line: 596, column: 4)
!718 = !DILocation(line: 598, column: 4, scope: !717)
!719 = !DILocation(line: 604, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !584, file: !1, line: 604, column: 6)
!721 = !DILocation(line: 604, column: 6, scope: !584)
!722 = !DILocation(line: 605, column: 10, scope: !720)
!723 = !DILocation(line: 605, column: 4, scope: !720)
!724 = !DILocation(line: 612, column: 11, scope: !584)
!725 = !DILocation(line: 612, column: 8, scope: !584)
!726 = !DILocation(line: 613, column: 4, scope: !584)
!727 = !DILocation(line: 399, column: 11, scope: !63)
!728 = !DILocation(line: 617, column: 31, scope: !729)
!729 = distinct !DILexicalBlock(scope: !584, file: !1, line: 617, column: 6)
!730 = !DILocation(line: 617, column: 6, scope: !729)
!731 = !DILocation(line: 617, column: 35, scope: !729)
!732 = !DILocation(line: 618, column: 6, scope: !729)
!733 = !DILocation(line: 618, column: 9, scope: !729)
!734 = !DILocation(line: 618, column: 38, scope: !729)
!735 = !DILocation(line: 617, column: 6, scope: !584)
!736 = !DILocation(line: 619, column: 10, scope: !737)
!737 = distinct !DILexicalBlock(scope: !729, file: !1, line: 618, column: 47)
!738 = !DILocation(line: 622, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !737, file: !1, line: 622, column: 8)
!740 = !DILocation(line: 622, column: 31, scope: !739)
!741 = !DILocation(line: 622, column: 35, scope: !739)
!742 = !DILocation(line: 622, column: 8, scope: !737)
!743 = !DILocation(line: 623, column: 12, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !1, line: 622, column: 58)
!745 = !DILocation(line: 625, column: 4, scope: !744)
!746 = !DILocation(line: 629, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !584, file: !1, line: 629, column: 6)
!748 = !DILocation(line: 629, column: 6, scope: !584)
!749 = !DILocation(line: 630, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 630, column: 8)
!751 = distinct !DILexicalBlock(scope: !747, file: !1, line: 629, column: 28)
!752 = !DILocation(line: 630, column: 8, scope: !751)
!753 = !DILocation(line: 630, column: 25, scope: !750)
!754 = !DILocation(line: 630, column: 19, scope: !750)
!755 = !DILocation(line: 631, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !751, file: !1, line: 631, column: 8)
!757 = !DILocation(line: 631, column: 8, scope: !751)
!758 = !DILocation(line: 631, column: 24, scope: !756)
!759 = !DILocation(line: 631, column: 18, scope: !756)
!760 = !DILocation(line: 635, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !584, file: !1, line: 635, column: 6)
!762 = !DILocation(line: 635, column: 26, scope: !761)
!763 = !DILocation(line: 635, column: 6, scope: !584)
!764 = !DILocation(line: 636, column: 14, scope: !761)
!765 = !DILocation(line: 636, column: 10, scope: !761)
!766 = !DILocation(line: 636, column: 4, scope: !761)
!767 = !DILocation(line: 639, column: 39, scope: !768)
!768 = distinct !DILexicalBlock(scope: !584, file: !1, line: 639, column: 6)
!769 = !DILocation(line: 639, column: 27, scope: !768)
!770 = !DILocation(line: 639, column: 36, scope: !768)
!771 = !DILocation(line: 639, column: 68, scope: !768)
!772 = !DILocation(line: 640, column: 15, scope: !768)
!773 = !DILocation(line: 640, column: 12, scope: !768)
!774 = !DILocation(line: 639, column: 6, scope: !584)
!775 = !DILocation(line: 641, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !768, file: !1, line: 640, column: 45)
!777 = !DILocation(line: 641, column: 10, scope: !776)
!778 = !DILocation(line: 643, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !1, line: 643, column: 8)
!780 = !DILocation(line: 659, column: 25, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !1, line: 656, column: 4)
!782 = !DILocation(line: 661, column: 11, scope: !783)
!783 = distinct !DILexicalBlock(scope: !781, file: !1, line: 661, column: 10)
!784 = !DILocation(line: 649, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !1, line: 649, column: 10)
!786 = distinct !DILexicalBlock(scope: !779, file: !1, line: 644, column: 4)
!787 = !DILocation(line: 643, column: 8, scope: !776)
!788 = !DILocation(line: 650, column: 20, scope: !785)
!789 = !DILocation(line: 650, column: 6, scope: !785)
!790 = !DILocation(line: 650, column: 3, scope: !785)
!791 = !DILocation(line: 652, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !1, line: 651, column: 6)
!793 = !DILocation(line: 401, column: 19, scope: !63)
!794 = !DILocation(line: 649, column: 10, scope: !786)
!795 = !DILocation(line: 661, column: 78, scope: !783)
!796 = !DILocation(line: 662, column: 20, scope: !783)
!797 = !DILocation(line: 662, column: 5, scope: !783)
!798 = !DILocation(line: 662, column: 3, scope: !783)
!799 = !DILocation(line: 664, column: 19, scope: !800)
!800 = distinct !DILexicalBlock(scope: !783, file: !1, line: 663, column: 6)
!801 = !DILocation(line: 661, column: 10, scope: !781)
!802 = !DILocation(line: 669, column: 21, scope: !803)
!803 = distinct !DILexicalBlock(scope: !776, file: !1, line: 669, column: 8)
!804 = !DILocation(line: 670, column: 21, scope: !803)
!805 = !DILocation(line: 670, column: 18, scope: !803)
!806 = !DILocation(line: 670, column: 12, scope: !803)
!807 = !DILocation(line: 670, column: 6, scope: !803)
!808 = !DILocation(line: 673, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !776, file: !1, line: 673, column: 8)
!810 = !DILocation(line: 673, column: 8, scope: !776)
!811 = !DILocation(line: 675, column: 14, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !1, line: 674, column: 6)
!813 = !DILocation(line: 678, column: 12, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !1, line: 678, column: 12)
!815 = !DILocation(line: 678, column: 12, scope: !812)
!816 = !DILocation(line: 680, column: 10, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 680, column: 9)
!818 = distinct !DILexicalBlock(scope: !814, file: !1, line: 679, column: 3)
!819 = !DILocation(line: 681, column: 9, scope: !817)
!820 = !DILocation(line: 681, column: 69, scope: !817)
!821 = !DILocation(line: 681, column: 44, scope: !817)
!822 = !DILocation(line: 681, column: 41, scope: !817)
!823 = !DILocation(line: 680, column: 9, scope: !818)
!824 = !DILocation(line: 683, column: 22, scope: !825)
!825 = distinct !DILexicalBlock(scope: !817, file: !1, line: 682, column: 7)
!826 = !DILocation(line: 683, column: 15, scope: !825)
!827 = !DILocation(line: 686, column: 21, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 686, column: 13)
!829 = !DILocation(line: 686, column: 58, scope: !828)
!830 = !DILocation(line: 686, column: 26, scope: !828)
!831 = !DILocation(line: 688, column: 12, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !1, line: 687, column: 4)
!833 = !DILocation(line: 689, column: 4, scope: !832)
!834 = !DILocation(line: 692, column: 12, scope: !835)
!835 = distinct !DILexicalBlock(scope: !812, file: !1, line: 692, column: 12)
!836 = !DILocation(line: 692, column: 12, scope: !812)
!837 = !DILocation(line: 694, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 694, column: 10)
!839 = distinct !DILexicalBlock(scope: !835, file: !1, line: 693, column: 3)
!840 = !DILocation(line: 695, column: 9, scope: !838)
!841 = !DILocation(line: 695, column: 12, scope: !838)
!842 = !DILocation(line: 695, column: 69, scope: !838)
!843 = !DILocation(line: 695, column: 44, scope: !838)
!844 = !DILocation(line: 695, column: 41, scope: !838)
!845 = !DILocation(line: 694, column: 10, scope: !839)
!846 = !DILocation(line: 697, column: 22, scope: !847)
!847 = distinct !DILexicalBlock(scope: !838, file: !1, line: 696, column: 7)
!848 = !DILocation(line: 697, column: 15, scope: !847)
!849 = !DILocation(line: 700, column: 21, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !1, line: 700, column: 13)
!851 = !DILocation(line: 700, column: 58, scope: !850)
!852 = !DILocation(line: 700, column: 26, scope: !850)
!853 = !DILocation(line: 702, column: 12, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !1, line: 701, column: 4)
!855 = !DILocation(line: 703, column: 4, scope: !854)
!856 = !DILocation(line: 710, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !584, file: !1, line: 710, column: 6)
!858 = !DILocation(line: 710, column: 6, scope: !584)
!859 = !DILocation(line: 711, column: 10, scope: !857)
!860 = !DILocation(line: 711, column: 4, scope: !857)
!861 = !DILocation(line: 716, column: 4, scope: !584)
!862 = !DILocation(line: 399, column: 39, scope: !63)
!863 = !DILocation(line: 718, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !584, file: !1, line: 718, column: 6)
!865 = !DILocation(line: 400, column: 31, scope: !63)
!866 = !DILocation(line: 400, column: 23, scope: !63)
!867 = !DILocation(line: 718, column: 6, scope: !584)
!868 = !DILocation(line: 726, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !584, file: !1, line: 726, column: 6)
!870 = !DILocation(line: 726, column: 6, scope: !584)
!871 = !DILocation(line: 728, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !1, line: 727, column: 6)
!873 = !DILocation(line: 729, column: 22, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !1, line: 729, column: 19)
!875 = !DILocation(line: 729, column: 37, scope: !874)
!876 = !DILocation(line: 729, column: 27, scope: !874)
!877 = !DILocation(line: 731, column: 9, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !1, line: 730, column: 8)
!879 = !DILocation(line: 732, column: 8, scope: !878)
!880 = !DILocation(line: 737, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !584, file: !1, line: 737, column: 6)
!882 = !DILocation(line: 737, column: 6, scope: !584)
!883 = !DILocation(line: 739, column: 10, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 737, column: 28)
!885 = !DILocation(line: 741, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !884, file: !1, line: 741, column: 8)
!887 = !DILocation(line: 741, column: 27, scope: !886)
!888 = !DILocation(line: 741, column: 16, scope: !886)
!889 = !DILocation(line: 743, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !1, line: 742, column: 8)
!891 = !DILocation(line: 746, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !884, file: !1, line: 746, column: 8)
!893 = !DILocation(line: 746, column: 8, scope: !884)
!894 = !DILocation(line: 748, column: 12, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !1, line: 746, column: 30)
!896 = !DILocation(line: 749, column: 4, scope: !895)
!897 = !DILocation(line: 755, column: 4, scope: !584)
!898 = !DILocation(line: 399, column: 43, scope: !63)
!899 = !DILocation(line: 756, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !584, file: !1, line: 756, column: 6)
!901 = !DILocation(line: 400, column: 15, scope: !63)
!902 = !DILocation(line: 400, column: 7, scope: !63)
!903 = !DILocation(line: 756, column: 6, scope: !584)
!904 = !DILocation(line: 763, column: 12, scope: !905)
!905 = distinct !DILexicalBlock(scope: !584, file: !1, line: 763, column: 6)
!906 = !DILocation(line: 763, column: 6, scope: !584)
!907 = !DILocation(line: 765, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 764, column: 6)
!909 = !DILocation(line: 766, column: 22, scope: !910)
!910 = distinct !DILexicalBlock(scope: !908, file: !1, line: 766, column: 19)
!911 = !DILocation(line: 766, column: 37, scope: !910)
!912 = !DILocation(line: 766, column: 27, scope: !910)
!913 = !DILocation(line: 768, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !1, line: 767, column: 8)
!915 = !DILocation(line: 769, column: 8, scope: !914)
!916 = !DILocation(line: 773, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !584, file: !1, line: 773, column: 6)
!918 = !DILocation(line: 773, column: 6, scope: !584)
!919 = !DILocation(line: 775, column: 10, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !1, line: 773, column: 28)
!921 = !DILocation(line: 777, column: 11, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !1, line: 777, column: 8)
!923 = !DILocation(line: 777, column: 27, scope: !922)
!924 = !DILocation(line: 777, column: 16, scope: !922)
!925 = !DILocation(line: 779, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !1, line: 778, column: 8)
!927 = !DILocation(line: 782, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !920, file: !1, line: 782, column: 8)
!929 = !DILocation(line: 782, column: 8, scope: !920)
!930 = !DILocation(line: 784, column: 12, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !1, line: 782, column: 30)
!932 = !DILocation(line: 785, column: 4, scope: !931)
!933 = !DILocation(line: 791, column: 4, scope: !584)
!934 = !DILocation(line: 399, column: 23, scope: !63)
!935 = !DILocation(line: 792, column: 2, scope: !584)
!936 = !DILocation(line: 795, column: 4, scope: !584)
!937 = !DILocation(line: 399, column: 27, scope: !63)
!938 = !DILocation(line: 796, column: 2, scope: !584)
!939 = !DILocation(line: 799, column: 4, scope: !584)
!940 = !DILocation(line: 399, column: 15, scope: !63)
!941 = !DILocation(line: 800, column: 2, scope: !584)
!942 = !DILocation(line: 803, column: 4, scope: !584)
!943 = !DILocation(line: 399, column: 19, scope: !63)
!944 = !DILocation(line: 804, column: 2, scope: !584)
!945 = !DILocation(line: 807, column: 4, scope: !584)
!946 = !DILocation(line: 399, column: 31, scope: !63)
!947 = !DILocation(line: 808, column: 2, scope: !584)
!948 = !DILocation(line: 811, column: 4, scope: !584)
!949 = !DILocation(line: 399, column: 35, scope: !63)
!950 = !DILocation(line: 812, column: 2, scope: !584)
!951 = !DILocation(line: 815, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !584, file: !1, line: 815, column: 6)
!953 = !DILocation(line: 815, column: 11, scope: !952)
!954 = !DILocation(line: 815, column: 6, scope: !584)
!955 = !DILocation(line: 817, column: 12, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !1, line: 816, column: 2)
!957 = !DILocation(line: 817, column: 9, scope: !956)
!958 = !DILocation(line: 821, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !1, line: 821, column: 7)
!960 = !DILocation(line: 821, column: 7, scope: !956)
!961 = !DILocation(line: 822, column: 11, scope: !959)
!962 = !DILocation(line: 822, column: 5, scope: !959)
!963 = !DILocation(line: 824, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !1, line: 823, column: 12)
!965 = !DILocation(line: 824, column: 5, scope: !964)
!966 = !DILocation(line: 825, column: 12, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !1, line: 825, column: 12)
!968 = !DILocation(line: 825, column: 12, scope: !964)
!969 = !DILocation(line: 826, column: 11, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !1, line: 825, column: 23)
!971 = !DILocation(line: 830, column: 10, scope: !972)
!972 = distinct !DILexicalBlock(scope: !970, file: !1, line: 830, column: 9)
!973 = !DILocation(line: 830, column: 9, scope: !970)
!974 = !DILocation(line: 831, column: 13, scope: !972)
!975 = !DILocation(line: 831, column: 7, scope: !972)
!976 = !DILocation(line: 837, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !956, file: !1, line: 837, column: 7)
!978 = !DILocation(line: 837, column: 28, scope: !977)
!979 = !DILocation(line: 839, column: 15, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 839, column: 7)
!981 = distinct !DILexicalBlock(scope: !977, file: !1, line: 838, column: 3)
!982 = !DILocation(line: 839, column: 13, scope: !980)
!983 = !DILocation(line: 839, column: 42, scope: !980)
!984 = !DILocation(line: 839, column: 45, scope: !980)
!985 = !DILocation(line: 839, column: 7, scope: !981)
!986 = !DILocation(line: 840, column: 43, scope: !980)
!987 = !DILocation(line: 840, column: 15, scope: !980)
!988 = !DILocation(line: 840, column: 11, scope: !980)
!989 = !DILocation(line: 840, column: 5, scope: !980)
!990 = !DILocation(line: 842, column: 11, scope: !980)
!991 = !DILocation(line: 843, column: 40, scope: !992)
!992 = distinct !DILexicalBlock(scope: !981, file: !1, line: 843, column: 7)
!993 = !DILocation(line: 843, column: 15, scope: !992)
!994 = !DILocation(line: 843, column: 13, scope: !992)
!995 = !DILocation(line: 843, column: 44, scope: !992)
!996 = !DILocation(line: 843, column: 47, scope: !992)
!997 = !DILocation(line: 843, column: 7, scope: !981)
!998 = !DILocation(line: 844, column: 45, scope: !992)
!999 = !DILocation(line: 844, column: 15, scope: !992)
!1000 = !DILocation(line: 844, column: 11, scope: !992)
!1001 = !DILocation(line: 844, column: 5, scope: !992)
!1002 = !DILocation(line: 846, column: 11, scope: !992)
!1003 = !DILocation(line: 847, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !981, file: !1, line: 847, column: 7)
!1005 = !DILocation(line: 847, column: 13, scope: !1004)
!1006 = !DILocation(line: 847, column: 44, scope: !1004)
!1007 = !DILocation(line: 847, column: 47, scope: !1004)
!1008 = !DILocation(line: 847, column: 7, scope: !981)
!1009 = !DILocation(line: 848, column: 45, scope: !1004)
!1010 = !DILocation(line: 848, column: 15, scope: !1004)
!1011 = !DILocation(line: 848, column: 11, scope: !1004)
!1012 = !DILocation(line: 848, column: 5, scope: !1004)
!1013 = !DILocation(line: 850, column: 11, scope: !1004)
!1014 = !DILocation(line: 855, column: 10, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !977, file: !1, line: 853, column: 3)
!1016 = !DILocation(line: 860, column: 12, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !952, file: !1, line: 859, column: 2)
!1018 = !DILocation(line: 860, column: 9, scope: !1017)
!1019 = !DILocation(line: 865, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !584, file: !1, line: 865, column: 6)
!1021 = !DILocation(line: 865, column: 11, scope: !1020)
!1022 = !DILocation(line: 865, column: 6, scope: !584)
!1023 = !DILocation(line: 867, column: 12, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 866, column: 2)
!1025 = !DILocation(line: 867, column: 9, scope: !1024)
!1026 = !DILocation(line: 871, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 871, column: 7)
!1028 = !DILocation(line: 871, column: 7, scope: !1024)
!1029 = !DILocation(line: 872, column: 11, scope: !1027)
!1030 = !DILocation(line: 872, column: 5, scope: !1027)
!1031 = !DILocation(line: 874, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 873, column: 12)
!1033 = !DILocation(line: 874, column: 5, scope: !1032)
!1034 = !DILocation(line: 875, column: 12, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 875, column: 12)
!1036 = !DILocation(line: 875, column: 12, scope: !1032)
!1037 = !DILocation(line: 876, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 875, column: 24)
!1039 = !DILocation(line: 880, column: 10, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 880, column: 9)
!1041 = !DILocation(line: 880, column: 9, scope: !1038)
!1042 = !DILocation(line: 881, column: 13, scope: !1040)
!1043 = !DILocation(line: 881, column: 7, scope: !1040)
!1044 = !DILocation(line: 887, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 887, column: 7)
!1046 = !DILocation(line: 887, column: 28, scope: !1045)
!1047 = !DILocation(line: 889, column: 15, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 889, column: 7)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 888, column: 3)
!1050 = !DILocation(line: 889, column: 13, scope: !1048)
!1051 = !DILocation(line: 889, column: 42, scope: !1048)
!1052 = !DILocation(line: 889, column: 45, scope: !1048)
!1053 = !DILocation(line: 889, column: 7, scope: !1049)
!1054 = !DILocation(line: 890, column: 32, scope: !1048)
!1055 = !DILocation(line: 890, column: 59, scope: !1048)
!1056 = !DILocation(line: 890, column: 17, scope: !1048)
!1057 = !DILocation(line: 890, column: 15, scope: !1048)
!1058 = !DILocation(line: 890, column: 11, scope: !1048)
!1059 = !DILocation(line: 890, column: 5, scope: !1048)
!1060 = !DILocation(line: 892, column: 11, scope: !1048)
!1061 = !DILocation(line: 893, column: 40, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 893, column: 7)
!1063 = !DILocation(line: 893, column: 15, scope: !1062)
!1064 = !DILocation(line: 893, column: 13, scope: !1062)
!1065 = !DILocation(line: 893, column: 44, scope: !1062)
!1066 = !DILocation(line: 893, column: 47, scope: !1062)
!1067 = !DILocation(line: 893, column: 7, scope: !1049)
!1068 = !DILocation(line: 894, column: 32, scope: !1062)
!1069 = !DILocation(line: 894, column: 61, scope: !1062)
!1070 = !DILocation(line: 894, column: 17, scope: !1062)
!1071 = !DILocation(line: 894, column: 15, scope: !1062)
!1072 = !DILocation(line: 894, column: 11, scope: !1062)
!1073 = !DILocation(line: 894, column: 5, scope: !1062)
!1074 = !DILocation(line: 896, column: 11, scope: !1062)
!1075 = !DILocation(line: 897, column: 15, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 897, column: 7)
!1077 = !DILocation(line: 897, column: 13, scope: !1076)
!1078 = !DILocation(line: 897, column: 44, scope: !1076)
!1079 = !DILocation(line: 897, column: 47, scope: !1076)
!1080 = !DILocation(line: 897, column: 7, scope: !1049)
!1081 = !DILocation(line: 898, column: 32, scope: !1076)
!1082 = !DILocation(line: 898, column: 61, scope: !1076)
!1083 = !DILocation(line: 898, column: 17, scope: !1076)
!1084 = !DILocation(line: 898, column: 15, scope: !1076)
!1085 = !DILocation(line: 898, column: 11, scope: !1076)
!1086 = !DILocation(line: 898, column: 5, scope: !1076)
!1087 = !DILocation(line: 900, column: 11, scope: !1076)
!1088 = !DILocation(line: 904, column: 11, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 903, column: 3)
!1090 = !DILocation(line: 909, column: 12, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 908, column: 2)
!1092 = !DILocation(line: 909, column: 9, scope: !1091)
!1093 = !DILocation(line: 493, column: 28, scope: !564)
!1094 = !DILocation(line: 493, column: 25, scope: !564)
!1095 = !DILocation(line: 916, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !63, file: !1, line: 916, column: 7)
!1097 = !DILocation(line: 916, column: 12, scope: !1096)
!1098 = !DILocation(line: 916, column: 34, scope: !1096)
!1099 = !DILocation(line: 916, column: 26, scope: !1096)
!1100 = !DILocation(line: 919, column: 10, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 919, column: 9)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 917, column: 3)
!1103 = !DILocation(line: 919, column: 33, scope: !1101)
!1104 = !DILocation(line: 919, column: 20, scope: !1101)
!1105 = !DILocation(line: 920, column: 13, scope: !1101)
!1106 = !DILocation(line: 920, column: 7, scope: !1101)
!1107 = !DILocation(line: 921, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 921, column: 9)
!1109 = !DILocation(line: 921, column: 33, scope: !1108)
!1110 = !DILocation(line: 921, column: 20, scope: !1108)
!1111 = !DILocation(line: 922, column: 13, scope: !1108)
!1112 = !DILocation(line: 922, column: 7, scope: !1108)
!1113 = !DILocation(line: 923, column: 10, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 923, column: 9)
!1115 = !DILocation(line: 923, column: 34, scope: !1114)
!1116 = !DILocation(line: 923, column: 21, scope: !1114)
!1117 = !DILocation(line: 924, column: 13, scope: !1114)
!1118 = !DILocation(line: 924, column: 7, scope: !1114)
!1119 = !DILocation(line: 925, column: 10, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 925, column: 9)
!1121 = !DILocation(line: 925, column: 34, scope: !1120)
!1122 = !DILocation(line: 925, column: 21, scope: !1120)
!1123 = !DILocation(line: 926, column: 13, scope: !1120)
!1124 = !DILocation(line: 926, column: 7, scope: !1120)
!1125 = !DILocation(line: 929, column: 12, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !63, file: !1, line: 929, column: 7)
!1127 = !DILocation(line: 929, column: 34, scope: !1126)
!1128 = !DILocation(line: 929, column: 26, scope: !1126)
!1129 = !DILocation(line: 932, column: 23, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 930, column: 3)
!1131 = !DILocation(line: 932, column: 39, scope: !1130)
!1132 = !DILocation(line: 395, column: 14, scope: !63)
!1133 = !DILocation(line: 933, column: 23, scope: !1130)
!1134 = !DILocation(line: 933, column: 39, scope: !1130)
!1135 = !DILocation(line: 395, column: 31, scope: !63)
!1136 = !DILocation(line: 937, column: 28, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 937, column: 9)
!1138 = !DILocation(line: 937, column: 9, scope: !1137)
!1139 = !DILocation(line: 937, column: 46, scope: !1137)
!1140 = !DILocation(line: 937, column: 9, scope: !1130)
!1141 = !DILocation(line: 939, column: 32, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 937, column: 51)
!1143 = !DILocation(line: 939, column: 22, scope: !1142)
!1144 = !DILocation(line: 940, column: 63, scope: !1142)
!1145 = !DILocation(line: 940, column: 32, scope: !1142)
!1146 = !DILocation(line: 940, column: 22, scope: !1142)
!1147 = !DILocation(line: 940, column: 16, scope: !1142)
!1148 = !DILocation(line: 941, column: 32, scope: !1142)
!1149 = !DILocation(line: 941, column: 22, scope: !1142)
!1150 = !DILocation(line: 941, column: 16, scope: !1142)
!1151 = !DILocation(line: 944, column: 22, scope: !1142)
!1152 = !DILocation(line: 945, column: 53, scope: !1142)
!1153 = !DILocation(line: 945, column: 22, scope: !1142)
!1154 = !DILocation(line: 945, column: 16, scope: !1142)
!1155 = !DILocation(line: 946, column: 22, scope: !1142)
!1156 = !DILocation(line: 946, column: 16, scope: !1142)
!1157 = !DILocation(line: 949, column: 12, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 949, column: 11)
!1159 = !DILocation(line: 949, column: 11, scope: !1142)
!1160 = !DILocation(line: 951, column: 12, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 951, column: 11)
!1162 = !DILocation(line: 952, column: 18, scope: !1161)
!1163 = !DILocation(line: 402, column: 7, scope: !63)
!1164 = !DILocation(line: 951, column: 11, scope: !1142)
!1165 = !DILocation(line: 953, column: 12, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 953, column: 11)
!1167 = !DILocation(line: 954, column: 18, scope: !1166)
!1168 = !DILocation(line: 953, column: 11, scope: !1142)
!1169 = !DILocation(line: 957, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 957, column: 11)
!1171 = !DILocation(line: 957, column: 11, scope: !1142)
!1172 = !DILocation(line: 959, column: 12, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 959, column: 11)
!1174 = !DILocation(line: 960, column: 18, scope: !1173)
!1175 = !DILocation(line: 402, column: 17, scope: !63)
!1176 = !DILocation(line: 959, column: 11, scope: !1142)
!1177 = !DILocation(line: 961, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 961, column: 11)
!1179 = !DILocation(line: 962, column: 18, scope: !1178)
!1180 = !DILocation(line: 961, column: 11, scope: !1142)
!1181 = !DILocation(line: 966, column: 29, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !63, file: !1, line: 966, column: 7)
!1183 = !DILocation(line: 966, column: 26, scope: !1182)
!1184 = !DILocation(line: 968, column: 10, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 967, column: 3)
!1186 = !DILocation(line: 969, column: 3, scope: !1185)
!1187 = !DILocation(line: 970, column: 29, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !63, file: !1, line: 970, column: 7)
!1189 = !DILocation(line: 970, column: 26, scope: !1188)
!1190 = !DILocation(line: 972, column: 10, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 971, column: 3)
!1192 = !DILocation(line: 973, column: 3, scope: !1191)
!1193 = !DILocation(line: 978, column: 21, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !63, file: !1, line: 978, column: 6)
!1195 = !DILocation(line: 978, column: 28, scope: !1194)
!1196 = !DILocation(line: 978, column: 10, scope: !1194)
!1197 = !DILocation(line: 980, column: 10, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 979, column: 2)
!1199 = !DILocation(line: 981, column: 2, scope: !1198)
!1200 = !DILocation(line: 983, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !63, file: !1, line: 983, column: 6)
!1202 = !DILocation(line: 983, column: 21, scope: !1201)
!1203 = !DILocation(line: 983, column: 28, scope: !1201)
!1204 = !DILocation(line: 983, column: 10, scope: !1201)
!1205 = !DILocation(line: 985, column: 10, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 984, column: 2)
!1207 = !DILocation(line: 986, column: 2, scope: !1206)
!1208 = !DILocation(line: 989, column: 10, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !63, file: !1, line: 989, column: 6)
!1210 = !DILocation(line: 992, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 992, column: 11)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 990, column: 5)
!1213 = !DILocation(line: 994, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 994, column: 8)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 993, column: 2)
!1216 = !DILocation(line: 998, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 998, column: 12)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 995, column: 6)
!1219 = !DILocation(line: 998, column: 25, scope: !1217)
!1220 = !DILocation(line: 998, column: 19, scope: !1217)
!1221 = !DILocation(line: 1000, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 999, column: 3)
!1223 = !DILocation(line: 1001, column: 3, scope: !1222)
!1224 = !DILocation(line: 1003, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 1003, column: 13)
!1226 = !DILocation(line: 1008, column: 19, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 1008, column: 12)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 1004, column: 6)
!1229 = !DILocation(line: 1008, column: 12, scope: !1227)
!1230 = !DILocation(line: 1008, column: 25, scope: !1227)
!1231 = !DILocation(line: 1008, column: 12, scope: !1228)
!1232 = !DILocation(line: 1010, column: 11, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 1009, column: 3)
!1234 = !DILocation(line: 1011, column: 3, scope: !1233)
!1235 = !DILocation(line: 1013, column: 17, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 1013, column: 13)
!1237 = !DILocation(line: 1013, column: 21, scope: !1236)
!1238 = !DILocation(line: 1013, column: 41, scope: !1236)
!1239 = !DILocation(line: 1016, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 1016, column: 12)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 1014, column: 6)
!1242 = !DILocation(line: 1016, column: 20, scope: !1240)
!1243 = !DILocation(line: 1016, column: 40, scope: !1240)
!1244 = !DILocation(line: 1019, column: 11, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 1017, column: 3)
!1246 = !DILocation(line: 1020, column: 3, scope: !1245)
!1247 = !DILocation(line: 1023, column: 20, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 1023, column: 16)
!1249 = !DILocation(line: 1025, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 1025, column: 8)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 1024, column: 2)
!1252 = !DILocation(line: 1025, column: 22, scope: !1250)
!1253 = !DILocation(line: 1025, column: 16, scope: !1250)
!1254 = !DILocation(line: 1028, column: 16, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 1028, column: 12)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 1026, column: 6)
!1257 = !DILocation(line: 1028, column: 22, scope: !1255)
!1258 = !DILocation(line: 1028, column: 39, scope: !1255)
!1259 = !DILocation(line: 1028, column: 26, scope: !1255)
!1260 = !DILocation(line: 1032, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 1029, column: 3)
!1262 = !DILocation(line: 1033, column: 3, scope: !1261)
!1263 = !DILocation(line: 1035, column: 16, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 1035, column: 13)
!1265 = !DILocation(line: 1035, column: 21, scope: !1264)
!1266 = !DILocation(line: 1040, column: 21, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 1040, column: 12)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 1036, column: 6)
!1269 = !DILocation(line: 1040, column: 27, scope: !1267)
!1270 = !DILocation(line: 1040, column: 36, scope: !1267)
!1271 = !DILocation(line: 1040, column: 48, scope: !1267)
!1272 = !DILocation(line: 1042, column: 11, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 1041, column: 3)
!1274 = !DILocation(line: 1043, column: 3, scope: !1273)
!1275 = !DILocation(line: 1045, column: 21, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 1045, column: 13)
!1277 = !DILocation(line: 1050, column: 21, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 1050, column: 12)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 1046, column: 6)
!1280 = !DILocation(line: 1050, column: 36, scope: !1278)
!1281 = !DILocation(line: 1050, column: 48, scope: !1278)
!1282 = !DILocation(line: 1052, column: 11, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 1051, column: 3)
!1284 = !DILocation(line: 1053, column: 3, scope: !1283)
!1285 = !DILocation(line: 1060, column: 15, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 1060, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 1058, column: 5)
!1288 = !DILocation(line: 1060, column: 28, scope: !1286)
!1289 = !DILocation(line: 1060, column: 21, scope: !1286)
!1290 = !DILocation(line: 1063, column: 12, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 1063, column: 8)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 1061, column: 2)
!1293 = !DILocation(line: 1063, column: 25, scope: !1291)
!1294 = !DILocation(line: 1063, column: 18, scope: !1291)
!1295 = !DILocation(line: 1060, column: 11, scope: !1287)
!1296 = !DILocation(line: 1063, column: 8, scope: !1292)
!1297 = !DILocation(line: 1065, column: 22, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 1065, column: 12)
!1299 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 1064, column: 6)
!1300 = !DILocation(line: 1068, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 1066, column: 3)
!1302 = !DILocation(line: 1065, column: 12, scope: !1299)
!1303 = !DILocation(line: 1069, column: 3, scope: !1301)
!1304 = !DILocation(line: 1073, column: 11, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 1071, column: 3)
!1306 = !DILocation(line: 1076, column: 27, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 1076, column: 13)
!1308 = !DILocation(line: 1076, column: 13, scope: !1307)
!1309 = !DILocation(line: 1076, column: 13, scope: !1291)
!1310 = !DILocation(line: 1080, column: 33, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 1080, column: 12)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 1077, column: 6)
!1313 = !DILocation(line: 1080, column: 22, scope: !1311)
!1314 = !DILocation(line: 1080, column: 12, scope: !1312)
!1315 = !DILocation(line: 1083, column: 11, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 1081, column: 3)
!1317 = !DILocation(line: 1084, column: 3, scope: !1316)
!1318 = !DILocation(line: 1085, column: 38, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 1085, column: 17)
!1320 = !DILocation(line: 1085, column: 27, scope: !1319)
!1321 = !DILocation(line: 1085, column: 17, scope: !1311)
!1322 = !DILocation(line: 1087, column: 11, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 1086, column: 3)
!1324 = !DILocation(line: 1088, column: 3, scope: !1323)
!1325 = !DILocation(line: 1094, column: 33, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 1094, column: 12)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 1091, column: 6)
!1328 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 1090, column: 13)
!1329 = !DILocation(line: 1094, column: 22, scope: !1326)
!1330 = !DILocation(line: 1094, column: 12, scope: !1327)
!1331 = !DILocation(line: 1097, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 1095, column: 3)
!1333 = !DILocation(line: 1098, column: 3, scope: !1332)
!1334 = !DILocation(line: 1099, column: 38, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 1099, column: 17)
!1336 = !DILocation(line: 1099, column: 27, scope: !1335)
!1337 = !DILocation(line: 1099, column: 17, scope: !1326)
!1338 = !DILocation(line: 1101, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 1100, column: 3)
!1340 = !DILocation(line: 1102, column: 3, scope: !1339)
!1341 = !DILocation(line: 1106, column: 16, scope: !1286)
!1342 = !DILocation(line: 1108, column: 8, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 1108, column: 8)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 1107, column: 2)
!1345 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 1106, column: 16)
!1346 = !DILocation(line: 1108, column: 11, scope: !1343)
!1347 = !DILocation(line: 1110, column: 14, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 1109, column: 6)
!1349 = !DILocation(line: 1111, column: 6, scope: !1348)
!1350 = !DILocation(line: 1112, column: 17, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 1112, column: 13)
!1352 = !DILocation(line: 1114, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 1113, column: 6)
!1354 = !DILocation(line: 1115, column: 6, scope: !1353)
!1355 = !DILocation(line: 1119, column: 16, scope: !63)
!1356 = !DILocation(line: 1119, column: 4, scope: !63)
!1357 = !DILocation(line: 1121, column: 12, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !63, file: !1, line: 1121, column: 8)
!1359 = !DILocation(line: 1121, column: 23, scope: !1358)
!1360 = !DILocation(line: 1121, column: 21, scope: !1358)
!1361 = !DILocation(line: 1121, column: 8, scope: !1358)
!1362 = !DILocation(line: 1121, column: 32, scope: !1358)
!1363 = !DILocation(line: 1121, column: 30, scope: !1358)
!1364 = !DILocation(line: 1121, column: 8, scope: !63)
!1365 = !DILocation(line: 1122, column: 20, scope: !1358)
!1366 = !DILocation(line: 1122, column: 18, scope: !1358)
!1367 = !DILocation(line: 1122, column: 7, scope: !1358)
!1368 = !DILocation(line: 1125, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !63, file: !1, line: 1125, column: 7)
!1370 = !DILocation(line: 1125, column: 21, scope: !1369)
!1371 = !DILocation(line: 1129, column: 12, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 1128, column: 8)
!1373 = !DILocation(line: 1125, column: 7, scope: !63)
!1374 = !DILocation(line: 1131, column: 1, scope: !63)
