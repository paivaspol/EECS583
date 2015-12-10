; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str1 = private unnamed_addr constant [21 x i8] c"(i > 0) && (i < 145)\00", align 1
@.str2 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c\00", align 1
@__PRETTY_FUNCTION__.std_eval = private unnamed_addr constant [23 x i8] c"int std_eval(int, int)\00", align 1
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
@bishop_mobility.dir = internal unnamed_addr constant [4 x i32] [i32 -13, i32 -11, i32 11, i32 13], align 16
@rook_mobility.dir = internal unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 12, i32 -12], align 16

; Function Attrs: nounwind optsize uwtable
define void @check_phase() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !15), !dbg !173
  tail call void @llvm.dbg.value(metadata !174, i64 0, metadata !17), !dbg !175
  tail call void @llvm.dbg.value(metadata !174, i64 0, metadata !18), !dbg !175
  %0 = load i32* @piece_count, align 4, !dbg !175, !tbaa !177
  %cmp43 = icmp slt i32 %0, 1, !dbg !175
  br i1 %cmp43, label %if.then30, label %for.body, !dbg !175

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %xnum_pieces.046 = phi i32 [ %xnum_pieces.1, %for.inc ], [ 0, %entry ]
  %a.045 = phi i32 [ %a.1, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !180
  %1 = load i32* %arrayidx, align 4, !dbg !180, !tbaa !177
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !19), !dbg !180
  %tobool = icmp eq i32 %1, 0, !dbg !182
  br i1 %tobool, label %for.inc, label %if.else, !dbg !182

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.045, 1, !dbg !183
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !18), !dbg !183
  %idxprom1 = sext i32 %1 to i64, !dbg !184
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !184
  %2 = load i32* %arrayidx2, align 4, !dbg !184, !tbaa !177
  switch i32 %2, label %if.then15 [
    i32 1, label %for.inc
    i32 2, label %for.inc
    i32 13, label %for.inc
    i32 0, label %for.inc
  ], !dbg !184

if.then15:                                        ; preds = %if.else
  %inc16 = add nsw i32 %xnum_pieces.046, 1, !dbg !185
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !15), !dbg !185
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %if.else, %if.else, %if.else, %if.else, %for.body, %if.then15
  %a.1 = phi i32 [ %inc, %if.then15 ], [ %inc, %if.else ], [ %a.045, %for.body ], [ %inc, %if.else ], [ %inc, %if.else ], [ %inc, %if.else ]
  %xnum_pieces.1 = phi i32 [ %inc16, %if.then15 ], [ %xnum_pieces.046, %if.else ], [ %xnum_pieces.046, %for.body ], [ %xnum_pieces.046, %if.else ], [ %xnum_pieces.046, %if.else ], [ %xnum_pieces.046, %if.else ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !175
  %cmp = icmp sgt i32 %a.1, %0, !dbg !175
  br i1 %cmp, label %for.end, label %for.body, !dbg !175

for.end:                                          ; preds = %for.inc
  %cmp19 = icmp sgt i32 %xnum_pieces.1, 11, !dbg !188
  br i1 %cmp19, label %land.lhs.true20, label %if.else28, !dbg !188

land.lhs.true20:                                  ; preds = %for.end
  %3 = load i32* @white_castled, align 4, !dbg !188, !tbaa !177
  %tobool21 = icmp ne i32 %3, 0, !dbg !188
  %4 = load i32* @black_castled, align 4, !dbg !188, !tbaa !177
  %tobool22 = icmp ne i32 %4, 0, !dbg !188
  %or.cond = and i1 %tobool21, %tobool22, !dbg !188
  br i1 %or.cond, label %if.else28, label %land.lhs.true23, !dbg !188

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %5 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 30), align 4, !dbg !188, !tbaa !177
  %cmp24 = icmp eq i32 %5, 5, !dbg !188
  %6 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 114), align 4, !dbg !188, !tbaa !177
  %cmp26 = icmp eq i32 %6, 6, !dbg !188
  %or.cond34 = or i1 %cmp24, %cmp26, !dbg !188
  br i1 %or.cond34, label %if.then27, label %if.else28, !dbg !188

if.then27:                                        ; preds = %land.lhs.true23
  store i32 0, i32* @phase, align 4, !dbg !189, !tbaa !177
  br label %if.end33, !dbg !191

if.else28:                                        ; preds = %land.lhs.true23, %land.lhs.true20, %for.end
  %cmp29 = icmp slt i32 %xnum_pieces.1, 7, !dbg !192
  br i1 %cmp29, label %if.then30, label %if.else31, !dbg !192

if.then30:                                        ; preds = %entry, %if.else28
  store i32 2, i32* @phase, align 4, !dbg !193, !tbaa !177
  br label %if.end33, !dbg !195

if.else31:                                        ; preds = %if.else28
  store i32 1, i32* @phase, align 4, !dbg !196, !tbaa !177
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else31, %if.then27
  ret void, !dbg !197
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @King(i32 %sq, i32 %c) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !24), !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !25), !dbg !198
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !26), !dbg !199
  %idxprom = sext i32 %sq to i64, !dbg !200
  %arrayidx = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom, !dbg !200
  %0 = load i32* %arrayidx, align 4, !dbg !200, !tbaa !177
  %cmp = icmp sgt i32 %0, 5, !dbg !200
  br i1 %cmp, label %land.lhs.true14, label %if.end30, !dbg !200

land.lhs.true14:                                  ; preds = %entry
  %sub = add nsw i32 %sq, -1, !dbg !200
  %idxprom1 = sext i32 %sub to i64, !dbg !200
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !200
  %1 = load i32* %arrayidx2, align 4, !dbg !200, !tbaa !177
  %add = add nsw i32 %1, 1, !dbg !200
  %shr.mask = and i32 %add, -2, !dbg !200
  %cmp3 = icmp eq i32 %shr.mask, 8, !dbg !200
  %and = and i32 %add, 1, !dbg !200
  %cmp9 = icmp eq i32 %and, %c, !dbg !200
  %or.cond = and i1 %cmp3, %cmp9, !dbg !200
  tail call void @llvm.dbg.value(metadata !201, i64 0, metadata !26), !dbg !202
  %. = select i1 %or.cond, i32 2, i32 0, !dbg !200
  %add15 = add nsw i32 %sq, 1, !dbg !204
  %idxprom16 = sext i32 %add15 to i64, !dbg !204
  %arrayidx17 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom16, !dbg !204
  %2 = load i32* %arrayidx17, align 4, !dbg !204, !tbaa !177
  %add18 = add nsw i32 %2, 1, !dbg !204
  %shr19.mask = and i32 %add18, -2, !dbg !204
  %cmp20 = icmp eq i32 %shr19.mask, 8, !dbg !204
  %and26 = and i32 %add18, 1, !dbg !204
  %cmp27 = icmp eq i32 %and26, %c, !dbg !204
  %or.cond45 = and i1 %cmp20, %cmp27, !dbg !204
  %add29 = add nsw i32 %., 2, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %add29}, i64 0, metadata !26), !dbg !205
  %add29.s.0 = select i1 %or.cond45, i32 %add29, i32 %., !dbg !204
  br label %if.end30, !dbg !204

if.end30:                                         ; preds = %entry, %land.lhs.true14
  %s.1 = phi i32 [ %add29.s.0, %land.lhs.true14 ], [ 0, %entry ]
  %cmp31 = icmp eq i32 %c, 1, !dbg !207
  %sub33 = sub nsw i32 0, %s.1, !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %sub33}, i64 0, metadata !26), !dbg !208
  %sub33.s.1 = select i1 %cmp31, i32 %sub33, i32 %s.1, !dbg !207
  ret i32 %sub33.s.1, !dbg !209
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Queen(i32 %sq, i32 %c) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !29), !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !30), !dbg !210
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !31), !dbg !211
  %xor = xor i32 %c, 1, !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !33), !dbg !212
  tail call void @llvm.dbg.value(metadata !213, i64 0, metadata !31), !dbg !214
  %idxprom = sext i32 %xor to i64, !dbg !215
  %arrayidx = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom, !dbg !215
  %0 = load i32* %arrayidx, align 4, !dbg !215, !tbaa !177
  %idxprom1 = sext i32 %0 to i64, !dbg !215
  %idxprom2 = sext i32 %sq to i64, !dbg !215
  %arrayidx4 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom2, i64 %idxprom1, !dbg !215
  %1 = load i32* %arrayidx4, align 4, !dbg !215, !tbaa !177
  %idxprom5 = sext i32 %1 to i64, !dbg !215
  %arrayidx6 = getelementptr inbounds [8 x i32]* @std_q_tropism, i64 0, i64 %idxprom5, !dbg !215
  %2 = load i32* %arrayidx6, align 4, !dbg !215, !tbaa !177
  %add7 = add nsw i32 %2, 900, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !31), !dbg !215
  %call = tail call fastcc i32 @rook_mobility(i32 %sq) #7, !dbg !216
  %shl = shl i32 %call, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !32), !dbg !216
  %call8 = tail call fastcc i32 @bishop_mobility(i32 %sq) #7, !dbg !217
  %shl9 = shl i32 %call8, 1, !dbg !217
  %add10 = add nsw i32 %shl9, %shl, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !32), !dbg !217
  %cmp = icmp slt i32 %add10, 5, !dbg !218
  br i1 %cmp, label %if.then, label %if.end19, !dbg !218

if.then:                                          ; preds = %entry
  switch i32 %add10, label %if.else16 [
    i32 0, label %if.end19
    i32 2, label %if.then14
  ], !dbg !219

if.then14:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata !221, i64 0, metadata !32), !dbg !222
  br label %if.end19, !dbg !222

if.else16:                                        ; preds = %if.then
  %sub17 = add nsw i32 %add10, -5, !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %sub17}, i64 0, metadata !32), !dbg !223
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.else16, %if.then14, %entry
  %mob.0 = phi i32 [ -8, %if.then14 ], [ %sub17, %if.else16 ], [ %add10, %entry ], [ -15, %if.then ]
  %add20 = add nsw i32 %add7, %mob.0, !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !31), !dbg !224
  %cmp21 = icmp eq i32 %c, 1, !dbg !225
  %sub23 = sub nsw i32 0, %add20, !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %sub23}, i64 0, metadata !31), !dbg !226
  %sub23.add20 = select i1 %cmp21, i32 %sub23, i32 %add20, !dbg !225
  ret i32 %sub23.add20, !dbg !227
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @rook_mobility(i32 %square) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !118), !dbg !228
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !120), !dbg !229
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !121), !dbg !230
  br label %for.body, !dbg !230

for.body:                                         ; preds = %for.inc9, %entry
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc9 ]
  %m.022 = phi i32 [ 0, %entry ], [ %m.1.lcssa, %for.inc9 ]
  %arrayidx = getelementptr inbounds [4 x i32]* @rook_mobility.dir, i64 0, i64 %indvars.iv24, !dbg !232
  %0 = load i32* %arrayidx, align 4, !dbg !232, !tbaa !177
  %add = add i32 %0, %square, !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !119), !dbg !232
  %idxprom217 = sext i32 %add to i64, !dbg !232
  %arrayidx318 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom217, !dbg !232
  %1 = load i32* %arrayidx318, align 4, !dbg !232, !tbaa !177
  %cmp419 = icmp eq i32 %1, 13, !dbg !232
  br i1 %cmp419, label %for.body5.lr.ph, label %for.inc9, !dbg !232

for.body5.lr.ph:                                  ; preds = %for.body
  %2 = sext i32 %0 to i64
  br label %for.body5, !dbg !232

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv = phi i64 [ %idxprom217, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %m.121 = phi i32 [ %m.022, %for.body5.lr.ph ], [ %inc, %for.body5 ]
  %inc = add nsw i32 %m.121, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !120), !dbg !235
  %indvars.iv.next = add i64 %indvars.iv, %2, !dbg !232
  %arrayidx3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !232
  %3 = load i32* %arrayidx3, align 4, !dbg !232, !tbaa !177
  %cmp4 = icmp eq i32 %3, 13, !dbg !232
  br i1 %cmp4, label %for.body5, label %for.inc9, !dbg !232

for.inc9:                                         ; preds = %for.body5, %for.body
  %m.1.lcssa = phi i32 [ %m.022, %for.body ], [ %inc, %for.body5 ]
  %indvars.iv.next25 = add i64 %indvars.iv24, 1, !dbg !230
  %lftr.wideiv = trunc i64 %indvars.iv.next25 to i32, !dbg !230
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !230
  br i1 %exitcond, label %for.end11, label %for.body, !dbg !230

for.end11:                                        ; preds = %for.inc9
  ret i32 %m.1.lcssa, !dbg !236
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @bishop_mobility(i32 %square) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !112), !dbg !237
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !114), !dbg !238
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !115), !dbg !239
  br label %for.body, !dbg !239

for.body:                                         ; preds = %for.inc9, %entry
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc9 ]
  %m.022 = phi i32 [ 0, %entry ], [ %m.1.lcssa, %for.inc9 ]
  %arrayidx = getelementptr inbounds [4 x i32]* @bishop_mobility.dir, i64 0, i64 %indvars.iv24, !dbg !241
  %0 = load i32* %arrayidx, align 4, !dbg !241, !tbaa !177
  %add = add i32 %0, %square, !dbg !241
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !113), !dbg !241
  %idxprom217 = sext i32 %add to i64, !dbg !241
  %arrayidx318 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom217, !dbg !241
  %1 = load i32* %arrayidx318, align 4, !dbg !241, !tbaa !177
  %cmp419 = icmp eq i32 %1, 13, !dbg !241
  br i1 %cmp419, label %for.body5.lr.ph, label %for.inc9, !dbg !241

for.body5.lr.ph:                                  ; preds = %for.body
  %2 = sext i32 %0 to i64
  br label %for.body5, !dbg !241

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv = phi i64 [ %idxprom217, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %m.121 = phi i32 [ %m.022, %for.body5.lr.ph ], [ %inc, %for.body5 ]
  %inc = add nsw i32 %m.121, 1, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !114), !dbg !244
  %indvars.iv.next = add i64 %indvars.iv, %2, !dbg !241
  %arrayidx3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !241
  %3 = load i32* %arrayidx3, align 4, !dbg !241, !tbaa !177
  %cmp4 = icmp eq i32 %3, 13, !dbg !241
  br i1 %cmp4, label %for.body5, label %for.inc9, !dbg !241

for.inc9:                                         ; preds = %for.body5, %for.body
  %m.1.lcssa = phi i32 [ %m.022, %for.body ], [ %inc, %for.body5 ]
  %indvars.iv.next25 = add i64 %indvars.iv24, 1, !dbg !239
  %lftr.wideiv = trunc i64 %indvars.iv.next25 to i32, !dbg !239
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !239
  br i1 %exitcond, label %for.end11, label %for.body, !dbg !239

for.end11:                                        ; preds = %for.inc9
  ret i32 %m.1.lcssa, !dbg !245
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Rook(i32 %sq, i32 %c) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !36), !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !37), !dbg !246
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !38), !dbg !247
  %xor = xor i32 %c, 1, !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !40), !dbg !248
  tail call void @llvm.dbg.value(metadata !249, i64 0, metadata !38), !dbg !250
  %idxprom = sext i32 %xor to i64, !dbg !251
  %arrayidx = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom, !dbg !251
  %0 = load i32* %arrayidx, align 4, !dbg !251, !tbaa !177
  %idxprom1 = sext i32 %0 to i64, !dbg !251
  %idxprom2 = sext i32 %sq to i64, !dbg !251
  %arrayidx4 = getelementptr inbounds [144 x [144 x i32]]* @rookdistance, i64 0, i64 %idxprom2, i64 %idxprom1, !dbg !251
  %1 = load i32* %arrayidx4, align 4, !dbg !251, !tbaa !177
  %idxprom5 = sext i32 %1 to i64, !dbg !251
  %arrayidx6 = getelementptr inbounds [16 x i32]* @std_r_tropism, i64 0, i64 %idxprom5, !dbg !251
  %2 = load i32* %arrayidx6, align 4, !dbg !251, !tbaa !177
  %add7 = add nsw i32 %2, 500, !dbg !251
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !38), !dbg !251
  %call = tail call fastcc i32 @rook_mobility(i32 %sq) #7, !dbg !252
  %shl = shl i32 %call, 1, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !39), !dbg !252
  %cmp = icmp slt i32 %shl, 3, !dbg !253
  %sub = add nsw i32 %shl, -5, !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !39), !dbg !253
  %sub.shl = select i1 %cmp, i32 %sub, i32 %shl, !dbg !253
  %add8 = add nsw i32 %add7, %sub.shl, !dbg !254
  tail call void @llvm.dbg.value(metadata !{i32 %add8}, i64 0, metadata !38), !dbg !254
  %sub9 = add nsw i32 %sq, -1, !dbg !255
  %idxprom10 = sext i32 %sub9 to i64, !dbg !255
  %arrayidx11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom10, !dbg !255
  %3 = load i32* %arrayidx11, align 4, !dbg !255, !tbaa !177
  %cmp12 = icmp eq i32 %3, 13, !dbg !255
  br i1 %cmp12, label %if.end19, label %land.lhs.true, !dbg !255

land.lhs.true:                                    ; preds = %entry
  %add13 = add nsw i32 %sq, 1, !dbg !255
  %idxprom14 = sext i32 %add13 to i64, !dbg !255
  %arrayidx15 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom14, !dbg !255
  %4 = load i32* %arrayidx15, align 4, !dbg !255, !tbaa !177
  %cmp16 = icmp eq i32 %4, 13, !dbg !255
  %sub18 = add nsw i32 %add8, -5, !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %sub18}, i64 0, metadata !38), !dbg !256
  %add8.sub18 = select i1 %cmp16, i32 %add8, i32 %sub18, !dbg !255
  br label %if.end19, !dbg !255

if.end19:                                         ; preds = %land.lhs.true, %entry
  %s.0 = phi i32 [ %add8, %entry ], [ %add8.sub18, %land.lhs.true ]
  %5 = load i32* @wmat, align 4, !dbg !258, !tbaa !177
  %cmp20 = icmp ne i32 %5, 1300, !dbg !258
  %6 = load i32* @bmat, align 4, !dbg !258, !tbaa !177
  %cmp21 = icmp ne i32 %6, 1300, !dbg !258
  %or.cond = or i1 %cmp20, %cmp21, !dbg !258
  br i1 %or.cond, label %if.then22, label %if.end54, !dbg !258

if.then22:                                        ; preds = %if.end19
  %idxprom23 = sext i32 %c to i64, !dbg !259
  %arrayidx24 = getelementptr inbounds [2 x i32]* @Rook.square_d1, i64 0, i64 %idxprom23, !dbg !259
  %7 = load i32* %arrayidx24, align 4, !dbg !259, !tbaa !177
  %cmp25 = icmp eq i32 %7, %sq, !dbg !259
  br i1 %cmp25, label %if.then26, label %if.end46, !dbg !259

if.then26:                                        ; preds = %if.then22
  %add30 = add nsw i32 %sq, 1, !dbg !261
  %idxprom31 = sext i32 %add30 to i64, !dbg !261
  %arrayidx32 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom31, !dbg !261
  %8 = load i32* %arrayidx32, align 4, !dbg !261, !tbaa !177
  %add33 = add nsw i32 %8, 1, !dbg !261
  %shr.mask = and i32 %add33, -2, !dbg !261
  %cmp34 = icmp eq i32 %shr.mask, 8, !dbg !261
  %and = and i32 %add33, 1, !dbg !261
  %cmp42 = icmp eq i32 %and, %c, !dbg !261
  %or.cond80 = and i1 %cmp34, %cmp42, !dbg !261
  %add44.add27.v = select i1 %or.cond80, i32 15, i32 10, !dbg !261
  %add44.add27 = add i32 %add44.add27.v, %s.0, !dbg !261
  br label %if.end46, !dbg !261

if.end46:                                         ; preds = %if.then26, %if.then22
  %s.1 = phi i32 [ %s.0, %if.then22 ], [ %add44.add27, %if.then26 ]
  %add49 = add nsw i32 %7, 1, !dbg !263
  %cmp50 = icmp eq i32 %add49, %sq, !dbg !263
  %add52 = add nsw i32 %s.1, 10, !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %add52}, i64 0, metadata !38), !dbg !264
  %add52.s.1 = select i1 %cmp50, i32 %add52, i32 %s.1, !dbg !263
  br label %if.end54, !dbg !263

if.end54:                                         ; preds = %if.end46, %if.end19
  %s.2 = phi i32 [ %s.0, %if.end19 ], [ %add52.s.1, %if.end46 ]
  %cmp55 = icmp eq i32 %c, 1, !dbg !266
  %sub57 = sub nsw i32 0, %s.2, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %sub57}, i64 0, metadata !38), !dbg !267
  %sub57.s.2 = select i1 %cmp55, i32 %sub57, i32 %s.2, !dbg !266
  ret i32 %sub57.s.2, !dbg !268
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Bishop(i32 %sq, i32 %c) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !43), !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !44), !dbg !269
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !45), !dbg !270
  %xor = xor i32 %c, 1, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !47), !dbg !271
  tail call void @llvm.dbg.value(metadata !272, i64 0, metadata !45), !dbg !273
  %idxprom = sext i32 %sq to i64, !dbg !274
  %arrayidx = getelementptr inbounds [144 x i32]* @sbishop, i64 0, i64 %idxprom, !dbg !274
  %0 = load i32* %arrayidx, align 4, !dbg !274, !tbaa !177
  %add1 = add nsw i32 %0, 325, !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32 %add1}, i64 0, metadata !45), !dbg !274
  %idxprom2 = sext i32 %xor to i64, !dbg !275
  %arrayidx3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom2, !dbg !275
  %1 = load i32* %arrayidx3, align 4, !dbg !275, !tbaa !177
  %idxprom4 = sext i32 %1 to i64, !dbg !275
  %arrayidx7 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom, i64 %idxprom4, !dbg !275
  %2 = load i32* %arrayidx7, align 4, !dbg !275, !tbaa !177
  %idxprom8 = sext i32 %2 to i64, !dbg !275
  %arrayidx9 = getelementptr inbounds [8 x i32]* @std_b_tropism, i64 0, i64 %idxprom8, !dbg !275
  %3 = load i32* %arrayidx9, align 4, !dbg !275, !tbaa !177
  %add10 = add nsw i32 %add1, %3, !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !45), !dbg !275
  %call = tail call fastcc i32 @bishop_mobility(i32 %sq) #7, !dbg !276
  %shl = shl i32 %call, 1, !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !46), !dbg !276
  %cmp = icmp slt i32 %shl, 3, !dbg !277
  %sub = add nsw i32 %shl, -5, !dbg !277
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !46), !dbg !277
  %sub.shl = select i1 %cmp, i32 %sub, i32 %shl, !dbg !277
  %add11 = add nsw i32 %add10, %sub.shl, !dbg !278
  tail call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !45), !dbg !278
  switch i32 %c, label %if.end23 [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true17
  ], !dbg !279

land.lhs.true:                                    ; preds = %entry
  %cmp13 = icmp eq i32 %sq, 39, !dbg !279
  %4 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 52), align 4, !dbg !279, !tbaa !177
  %cmp15 = icmp eq i32 %4, 1, !dbg !279
  %or.cond = and i1 %cmp13, %cmp15, !dbg !279
  br i1 %or.cond, label %if.then21, label %if.end23, !dbg !279

land.lhs.true17:                                  ; preds = %entry
  %cmp18 = icmp eq i32 %sq, 99, !dbg !279
  %5 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 88), align 4, !dbg !279, !tbaa !177
  %cmp20 = icmp eq i32 %5, 2, !dbg !279
  %or.cond28 = and i1 %cmp18, %cmp20, !dbg !279
  br i1 %or.cond28, label %if.then21, label %if.end23, !dbg !279

if.then21:                                        ; preds = %land.lhs.true17, %land.lhs.true
  %sub22 = add nsw i32 %add11, -5, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %sub22}, i64 0, metadata !45), !dbg !280
  br label %if.end23, !dbg !280

if.end23:                                         ; preds = %land.lhs.true, %entry, %if.then21, %land.lhs.true17
  %s.0 = phi i32 [ %sub22, %if.then21 ], [ %add11, %land.lhs.true17 ], [ %add11, %entry ], [ %add11, %land.lhs.true ]
  %cmp24 = icmp eq i32 %c, 1, !dbg !281
  %sub26 = sub nsw i32 0, %s.0, !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32 %sub26}, i64 0, metadata !45), !dbg !282
  %sub26.s.0 = select i1 %cmp24, i32 %sub26, i32 %s.0, !dbg !281
  ret i32 %sub26.s.0, !dbg !283
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Knight(i32 %sq, i32 %c) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !50), !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !51), !dbg !284
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !52), !dbg !285
  %xor = xor i32 %c, 1, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !53), !dbg !286
  tail call void @llvm.dbg.value(metadata !287, i64 0, metadata !52), !dbg !288
  %idxprom = sext i32 %sq to i64, !dbg !289
  %arrayidx = getelementptr inbounds [144 x i32]* @sknight, i64 0, i64 %idxprom, !dbg !289
  %0 = load i32* %arrayidx, align 4, !dbg !289, !tbaa !177
  %add1 = add nsw i32 %0, 310, !dbg !289
  tail call void @llvm.dbg.value(metadata !{i32 %add1}, i64 0, metadata !52), !dbg !289
  %idxprom2 = sext i32 %xor to i64, !dbg !290
  %arrayidx3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom2, !dbg !290
  %1 = load i32* %arrayidx3, align 4, !dbg !290, !tbaa !177
  %idxprom4 = sext i32 %1 to i64, !dbg !290
  %arrayidx7 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom, i64 %idxprom4, !dbg !290
  %2 = load i32* %arrayidx7, align 4, !dbg !290, !tbaa !177
  %idxprom8 = sext i32 %2 to i64, !dbg !290
  %arrayidx9 = getelementptr inbounds [8 x i32]* @std_n_tropism, i64 0, i64 %idxprom8, !dbg !290
  %3 = load i32* %arrayidx9, align 4, !dbg !290, !tbaa !177
  %add10 = add nsw i32 %add1, %3, !dbg !290
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !52), !dbg !290
  %cmp = icmp eq i32 %c, 1, !dbg !291
  %sub = sub nsw i32 0, %add10, !dbg !292
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !52), !dbg !292
  %sub.add10 = select i1 %cmp, i32 %sub, i32 %add10, !dbg !291
  ret i32 %sub.add10, !dbg !293
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Pawn(i32 %sq, i32 %c) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !56), !dbg !294
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !57), !dbg !294
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !58), !dbg !295
  %xor = xor i32 %c, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !59), !dbg !296
  tail call void @llvm.dbg.value(metadata !297, i64 0, metadata !58), !dbg !298
  %idxprom = sext i32 %xor to i64, !dbg !299
  %arrayidx = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom, !dbg !299
  %0 = load i32* %arrayidx, align 4, !dbg !299, !tbaa !177
  %idxprom1 = sext i32 %0 to i64, !dbg !299
  %idxprom2 = sext i32 %sq to i64, !dbg !299
  %arrayidx4 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom2, i64 %idxprom1, !dbg !299
  %1 = load i32* %arrayidx4, align 4, !dbg !299, !tbaa !177
  %idxprom5 = sext i32 %1 to i64, !dbg !299
  %arrayidx6 = getelementptr inbounds [8 x i32]* @std_p_tropism, i64 0, i64 %idxprom5, !dbg !299
  %2 = load i32* %arrayidx6, align 4, !dbg !299, !tbaa !177
  %add7 = add nsw i32 %2, 100, !dbg !299
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !58), !dbg !299
  %idxprom8 = sext i32 %c to i64, !dbg !300
  %arrayidx9 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom8, !dbg !300
  %3 = load i32* %arrayidx9, align 4, !dbg !300, !tbaa !177
  %idxprom10 = sext i32 %3 to i64, !dbg !300
  %arrayidx13 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom2, i64 %idxprom10, !dbg !300
  %4 = load i32* %arrayidx13, align 4, !dbg !300, !tbaa !177
  %idxprom14 = sext i32 %4 to i64, !dbg !300
  %arrayidx15 = getelementptr inbounds [8 x i32]* @std_own_p_tropism, i64 0, i64 %idxprom14, !dbg !300
  %5 = load i32* %arrayidx15, align 4, !dbg !300, !tbaa !177
  %add16 = add nsw i32 %add7, %5, !dbg !300
  tail call void @llvm.dbg.value(metadata !{i32 %add16}, i64 0, metadata !58), !dbg !300
  %add17 = add nsw i32 %sq, 1, !dbg !301
  %idxprom18 = sext i32 %add17 to i64, !dbg !301
  %arrayidx19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom18, !dbg !301
  %6 = load i32* %arrayidx19, align 4, !dbg !301, !tbaa !177
  %add20 = add nsw i32 %6, 1, !dbg !301
  %shr.mask = and i32 %add20, -2, !dbg !301
  %cmp = icmp eq i32 %shr.mask, 2, !dbg !301
  %and = and i32 %add20, 1, !dbg !301
  %cmp25 = icmp eq i32 %and, %c, !dbg !301
  %or.cond = and i1 %cmp, %cmp25, !dbg !301
  %add26 = add nsw i32 %add16, 5, !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !58), !dbg !302
  %s.0 = select i1 %or.cond, i32 %add26, i32 %add16, !dbg !301
  %add27 = add nsw i32 %sq, 11, !dbg !303
  %idxprom28 = sext i32 %add27 to i64, !dbg !303
  %arrayidx29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28, !dbg !303
  %7 = load i32* %arrayidx29, align 4, !dbg !303, !tbaa !177
  %add30 = add nsw i32 %7, 1, !dbg !303
  %shr31.mask = and i32 %add30, -2, !dbg !303
  %cmp32 = icmp eq i32 %shr31.mask, 2, !dbg !303
  %and38 = and i32 %add30, 1, !dbg !303
  %cmp39 = icmp eq i32 %and38, %c, !dbg !303
  %or.cond81 = and i1 %cmp32, %cmp39, !dbg !303
  br i1 %or.cond81, label %if.then40, label %if.else, !dbg !303

if.then40:                                        ; preds = %entry
  %add41 = add nsw i32 %s.0, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !58), !dbg !304
  br label %if.end58, !dbg !304

if.else:                                          ; preds = %entry
  %add42 = add nsw i32 %sq, 13, !dbg !305
  %idxprom43 = sext i32 %add42 to i64, !dbg !305
  %arrayidx44 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom43, !dbg !305
  %8 = load i32* %arrayidx44, align 4, !dbg !305, !tbaa !177
  %add45 = add nsw i32 %8, 1, !dbg !305
  %shr46.mask = and i32 %add45, -2, !dbg !305
  %cmp47 = icmp eq i32 %shr46.mask, 2, !dbg !305
  %and53 = and i32 %add45, 1, !dbg !305
  %cmp54 = icmp eq i32 %and53, %c, !dbg !305
  %or.cond82 = and i1 %cmp47, %cmp54, !dbg !305
  %add56 = zext i1 %or.cond82 to i32, !dbg !305
  %add56.s.0 = add nsw i32 %add56, %s.0, !dbg !305
  br label %if.end58, !dbg !305

if.end58:                                         ; preds = %if.else, %if.then40
  %s.1 = phi i32 [ %add41, %if.then40 ], [ %add56.s.0, %if.else ]
  %cmp59 = icmp eq i32 %c, 1, !dbg !306
  %sub = sub nsw i32 0, %s.1, !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !58), !dbg !307
  %sub.s.1 = select i1 %cmp59, i32 %sub, i32 %s.1, !dbg !306
  ret i32 %sub.s.1, !dbg !308
}

; Function Attrs: nounwind optsize uwtable
define i32 @ErrorIt(i32 %sq, i32 %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sq}, i64 0, metadata !62), !dbg !309
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !63), !dbg !309
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str, i64 0, i64 0), i32 %sq, i32 %c) #8, !dbg !310
  ret i32 0, !dbg !311
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @std_eval(i32 %alpha, i32 %beta) #0 {
entry:
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %black_back_pawn = alloca [11 x i32], align 16
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !66), !dbg !312
  call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !67), !dbg !312
  %0 = bitcast [2 x [11 x i32]]* %pawns to i8*, !dbg !313
  call void @llvm.lifetime.start(i64 88, i8* %0) #4, !dbg !313
  call void @llvm.dbg.declare(metadata !{[2 x [11 x i32]]* %pawns}, metadata !71), !dbg !314
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*, !dbg !313
  call void @llvm.lifetime.start(i64 44, i8* %1) #4, !dbg !313
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %white_back_pawn}, metadata !76), !dbg !314
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*, !dbg !313
  call void @llvm.lifetime.start(i64 44, i8* %2) #4, !dbg !313
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %black_back_pawn}, metadata !79), !dbg !314
  call void @llvm.dbg.declare(metadata !{i32* %score}, metadata !84), !dbg !315
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !315
  store i32 0, i32* %score, align 4, !dbg !315, !tbaa !177
  call void @llvm.dbg.declare(metadata !{i32* %in_cache}, metadata !88), !dbg !316
  %3 = load i32* @white_to_move, align 4, !dbg !317, !tbaa !177
  %tobool = icmp ne i32 %3, 0, !dbg !317
  %4 = load i32* @Material, align 4, !dbg !317, !tbaa !177
  %sub = sub nsw i32 0, %4, !dbg !317
  %cond = select i1 %tobool, i32 %4, i32 %sub, !dbg !317
  %5 = load i32* @maxposdiff, align 4, !dbg !317, !tbaa !177
  %sub3 = sub nsw i32 %cond, %5, !dbg !317
  %cmp = icmp slt i32 %sub3, %beta, !dbg !317
  br i1 %cmp, label %if.end, label %cleanup, !dbg !317

if.end:                                           ; preds = %entry
  %add = add nsw i32 %cond, %5, !dbg !318
  %cmp17 = icmp sgt i32 %add, %alpha, !dbg !318
  br i1 %cmp17, label %if.end26, label %cleanup, !dbg !318

if.end26:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !88), !dbg !319
  store i32 0, i32* %in_cache, align 4, !dbg !319, !tbaa !177
  call void @checkECache(i32* %score, i32* %in_cache) #8, !dbg !320
  call void @llvm.dbg.value(metadata !{i32* %in_cache}, i64 0, metadata !88), !dbg !321
  %6 = load i32* %in_cache, align 4, !dbg !321, !tbaa !177
  %tobool27 = icmp eq i32 %6, 0, !dbg !321
  br i1 %tobool27, label %if.end33, label %if.then28, !dbg !321

if.then28:                                        ; preds = %if.end26
  %7 = load i32* @white_to_move, align 4, !dbg !322, !tbaa !177
  %cmp29 = icmp eq i32 %7, 1, !dbg !322
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !322
  %8 = load i32* %score, align 4, !dbg !322, !tbaa !177
  %sub32 = sub nsw i32 0, %8, !dbg !324
  %.sub32 = select i1 %cmp29, i32 %8, i32 %sub32, !dbg !322
  br label %cleanup, !dbg !322

if.end33:                                         ; preds = %if.end26
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false), !dbg !325
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !68), !dbg !326
  br label %for.body, !dbg !326

for.body:                                         ; preds = %for.body, %if.end33
  %indvars.iv1791 = phi i64 [ 0, %if.end33 ], [ %indvars.iv.next1792, %for.body ]
  %arrayidx = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %indvars.iv1791, !dbg !328
  store i32 7, i32* %arrayidx, align 4, !dbg !328, !tbaa !177
  %arrayidx36 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %indvars.iv1791, !dbg !330
  store i32 2, i32* %arrayidx36, align 4, !dbg !330, !tbaa !177
  %indvars.iv.next1792 = add i64 %indvars.iv1791, 1, !dbg !326
  %lftr.wideiv = trunc i64 %indvars.iv.next1792 to i32, !dbg !326
  %exitcond = icmp eq i32 %lftr.wideiv, 11, !dbg !326
  br i1 %exitcond, label %for.end, label %for.body, !dbg !326

for.end:                                          ; preds = %for.body
  store i32 0, i32* @wmat, align 4, !dbg !331, !tbaa !177
  store i32 0, i32* @bmat, align 4, !dbg !332, !tbaa !177
  %9 = load i32* @wking_loc, align 4, !dbg !333, !tbaa !177
  store i32 %9, i32* getelementptr inbounds ([2 x i32]* @king_locs, i64 0, i64 0), align 4, !dbg !333, !tbaa !177
  %10 = load i32* @bking_loc, align 4, !dbg !334, !tbaa !177
  store i32 %10, i32* getelementptr inbounds ([2 x i32]* @king_locs, i64 0, i64 1), align 4, !dbg !334, !tbaa !177
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !83), !dbg !335
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !69), !dbg !335
  %11 = load i32* @piece_count, align 4, !dbg !335, !tbaa !177
  %cmp381785 = icmp slt i32 %11, 1, !dbg !335
  br i1 %cmp381785, label %for.end999, label %for.body39, !dbg !335

for.cond125.preheader:                            ; preds = %for.inc122
  br i1 %cmp381785, label %for.end999, label %for.body127, !dbg !337

for.body39:                                       ; preds = %for.end, %for.inc122
  %12 = phi i32 [ %27, %for.inc122 ], [ 0, %for.end ]
  %13 = phi i32 [ %28, %for.inc122 ], [ 0, %for.end ]
  %indvars.iv1789 = phi i64 [ %indvars.iv.next1790, %for.inc122 ], [ 1, %for.end ]
  %a.01786 = phi i32 [ %a.1, %for.inc122 ], [ 1, %for.end ]
  %arrayidx41 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv1789, !dbg !339
  %14 = load i32* %arrayidx41, align 4, !dbg !339, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !68), !dbg !339
  %tobool42 = icmp eq i32 %14, 0, !dbg !341
  br i1 %tobool42, label %for.inc122, label %if.else, !dbg !341

if.else:                                          ; preds = %for.body39
  %inc44 = add nsw i32 %a.01786, 1, !dbg !342
  call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !69), !dbg !342
  %.off = add i32 %14, -1, !dbg !343
  %15 = icmp ult i32 %.off, 144, !dbg !343
  br i1 %15, label %cond.end50, label %cond.false49, !dbg !343

cond.false49:                                     ; preds = %if.else
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.std_eval, i64 0, i64 0)) #9, !dbg !343
  unreachable, !dbg !343

cond.end50:                                       ; preds = %if.else
  %idxprom51 = sext i32 %14 to i64, !dbg !344
  %arrayidx52 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom51, !dbg !344
  %16 = load i32* %arrayidx52, align 4, !dbg !344, !tbaa !177
  %add53 = add nsw i32 %16, 1, !dbg !344
  %shr = ashr i32 %add53, 1, !dbg !344
  switch i32 %shr, label %if.then61 [
    i32 1, label %if.end79
    i32 3, label %if.end79
  ], !dbg !344

if.then61:                                        ; preds = %cond.end50
  %and = and i32 %add53, 1, !dbg !345
  %cmp65 = icmp eq i32 %and, 0, !dbg !345
  %idxprom69 = sext i32 %16 to i64, !dbg !347
  %arrayidx70 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom69, !dbg !347
  %17 = load i32* %arrayidx70, align 4, !dbg !347, !tbaa !177
  br i1 %cmp65, label %if.then66, label %if.else72, !dbg !345

if.then66:                                        ; preds = %if.then61
  %add71 = add nsw i32 %13, %17, !dbg !347
  store i32 %add71, i32* @wmat, align 4, !dbg !347, !tbaa !177
  br label %if.end79, !dbg !347

if.else72:                                        ; preds = %if.then61
  %ispos1715 = icmp sgt i32 %17, -1, !dbg !348
  %neg1716 = sub i32 0, %17, !dbg !348
  %18 = select i1 %ispos1715, i32 %17, i32 %neg1716, !dbg !348
  %add77 = add nsw i32 %12, %18, !dbg !348
  store i32 %add77, i32* @bmat, align 4, !dbg !348, !tbaa !177
  br label %if.end79

if.end79:                                         ; preds = %cond.end50, %cond.end50, %if.then66, %if.else72
  %19 = phi i32 [ %12, %cond.end50 ], [ %12, %cond.end50 ], [ %12, %if.then66 ], [ %add77, %if.else72 ]
  %20 = phi i32 [ %13, %cond.end50 ], [ %13, %cond.end50 ], [ %add71, %if.then66 ], [ %13, %if.else72 ]
  %shr83.mask = and i32 %add53, -2, !dbg !349
  %cmp84 = icmp eq i32 %shr83.mask, 2, !dbg !349
  br i1 %cmp84, label %if.then85, label %for.inc122, !dbg !349

if.then85:                                        ; preds = %if.end79
  %arrayidx87 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom51, !dbg !350
  %21 = load i32* %arrayidx87, align 4, !dbg !350, !tbaa !177
  %add88 = add nsw i32 %21, 1, !dbg !350
  call void @llvm.dbg.value(metadata !{i32 %add88}, i64 0, metadata !70), !dbg !350
  %arrayidx90 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom51, !dbg !352
  %22 = load i32* %arrayidx90, align 4, !dbg !352, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !80), !dbg !352
  %and94 = and i32 %add53, 1, !dbg !353
  %cmp95 = icmp eq i32 %and94, 0, !dbg !353
  %idxprom97 = sext i32 %add88 to i64, !dbg !354
  br i1 %cmp95, label %if.then96, label %if.else108, !dbg !353

if.then96:                                        ; preds = %if.then85
  %arrayidx99 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom97, !dbg !354
  %23 = load i32* %arrayidx99, align 4, !dbg !354, !tbaa !177
  %inc100 = add nsw i32 %23, 1, !dbg !354
  store i32 %inc100, i32* %arrayidx99, align 4, !dbg !354, !tbaa !177
  %arrayidx102 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom97, !dbg !356
  %24 = load i32* %arrayidx102, align 4, !dbg !356, !tbaa !177
  %cmp103 = icmp slt i32 %22, %24, !dbg !356
  br i1 %cmp103, label %if.then104, label %for.inc122, !dbg !356

if.then104:                                       ; preds = %if.then96
  store i32 %22, i32* %arrayidx102, align 4, !dbg !357, !tbaa !177
  br label %for.inc122, !dbg !359

if.else108:                                       ; preds = %if.then85
  %arrayidx111 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom97, !dbg !360
  %25 = load i32* %arrayidx111, align 4, !dbg !360, !tbaa !177
  %inc112 = add nsw i32 %25, 1, !dbg !360
  store i32 %inc112, i32* %arrayidx111, align 4, !dbg !360, !tbaa !177
  %arrayidx114 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom97, !dbg !362
  %26 = load i32* %arrayidx114, align 4, !dbg !362, !tbaa !177
  %cmp115 = icmp sgt i32 %22, %26, !dbg !362
  br i1 %cmp115, label %if.then116, label %for.inc122, !dbg !362

if.then116:                                       ; preds = %if.else108
  store i32 %22, i32* %arrayidx114, align 4, !dbg !363, !tbaa !177
  br label %for.inc122, !dbg !365

for.inc122:                                       ; preds = %for.body39, %if.end79, %if.else108, %if.then116, %if.then96, %if.then104
  %27 = phi i32 [ %19, %if.then104 ], [ %19, %if.then96 ], [ %19, %if.then116 ], [ %19, %if.else108 ], [ %19, %if.end79 ], [ %12, %for.body39 ]
  %28 = phi i32 [ %20, %if.then104 ], [ %20, %if.then96 ], [ %20, %if.then116 ], [ %20, %if.else108 ], [ %20, %if.end79 ], [ %13, %for.body39 ]
  %a.1 = phi i32 [ %inc44, %if.then104 ], [ %inc44, %if.then96 ], [ %inc44, %if.then116 ], [ %inc44, %if.else108 ], [ %inc44, %if.end79 ], [ %a.01786, %for.body39 ]
  %indvars.iv.next1790 = add i64 %indvars.iv1789, 1, !dbg !335
  %cmp38 = icmp sgt i32 %a.1, %11, !dbg !335
  br i1 %cmp38, label %for.cond125.preheader, label %for.body39, !dbg !335

for.body127:                                      ; preds = %for.cond125.preheader, %for.inc997
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc997 ], [ 1, %for.cond125.preheader ]
  %bpotential.01773 = phi i32 [ %bpotential.3, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %wpotential.01772 = phi i32 [ %wpotential.3, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %fwrook.01771 = phi i32 [ %fwrook.2, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %rwrook.01770 = phi i32 [ %rwrook.2, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %fbrook.01769 = phi i32 [ %fbrook.2, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %rbrook.01768 = phi i32 [ %rbrook.2, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %br.01767 = phi i32 [ %br.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %wr.01766 = phi i32 [ %wr.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %bq.01765 = phi i32 [ %bq.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %wq.01764 = phi i32 [ %wq.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %bb.01763 = phi i32 [ %bb.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %wb.01762 = phi i32 [ %wb.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %bn.01761 = phi i32 [ %bn.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %wn.01760 = phi i32 [ %wn.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %bp.01759 = phi i32 [ %bp.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %wp.01758 = phi i32 [ %wp.1, %for.inc997 ], [ 0, %for.cond125.preheader ]
  %a.21756 = phi i32 [ %a.3, %for.inc997 ], [ 1, %for.cond125.preheader ]
  %arrayidx129 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !366
  %29 = load i32* %arrayidx129, align 4, !dbg !366, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !68), !dbg !366
  %tobool130 = icmp eq i32 %29, 0, !dbg !368
  br i1 %tobool130, label %for.inc997, label %if.else132, !dbg !368

if.else132:                                       ; preds = %for.body127
  %inc133 = add nsw i32 %a.21756, 1, !dbg !369
  call void @llvm.dbg.value(metadata !{i32 %inc133}, i64 0, metadata !69), !dbg !369
  %idxprom135 = sext i32 %29 to i64, !dbg !370
  %arrayidx136 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom135, !dbg !370
  %30 = load i32* %arrayidx136, align 4, !dbg !370, !tbaa !177
  %add137 = add nsw i32 %30, 1, !dbg !370
  %shr138 = ashr i32 %add137, 1, !dbg !370
  %idxprom139 = sext i32 %shr138 to i64, !dbg !370
  %arrayidx140 = getelementptr inbounds [7 x i32 (i32, i32)*]* @evalRoutines, i64 0, i64 %idxprom139, !dbg !370
  %31 = load i32 (i32, i32)** %arrayidx140, align 8, !dbg !370, !tbaa !371
  %and144 = and i32 %add137, 1, !dbg !370
  %call145 = call i32 %31(i32 %29, i32 %and144) #8, !dbg !370
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !370
  %32 = load i32* %score, align 4, !dbg !370, !tbaa !177
  %add146 = add nsw i32 %32, %call145, !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %add146}, i64 0, metadata !84), !dbg !370
  store i32 %add146, i32* %score, align 4, !dbg !370, !tbaa !177
  %arrayidx148 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom135, !dbg !372
  %33 = load i32* %arrayidx148, align 4, !dbg !372, !tbaa !177
  %add149 = add nsw i32 %33, 1, !dbg !372
  call void @llvm.dbg.value(metadata !{i32 %add149}, i64 0, metadata !70), !dbg !372
  %arrayidx151 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom135, !dbg !373
  %34 = load i32* %arrayidx151, align 4, !dbg !373, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !80), !dbg !373
  %35 = load i32* %arrayidx136, align 4, !dbg !374, !tbaa !177
  switch i32 %35, label %for.inc997 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb420
    i32 7, label %sw.bb691
    i32 8, label %sw.bb732
    i32 11, label %sw.bb773
    i32 12, label %sw.bb775
    i32 3, label %sw.bb777
    i32 4, label %sw.bb779
    i32 9, label %sw.bb781
    i32 10, label %sw.bb783
    i32 5, label %sw.bb785
    i32 6, label %sw.bb888
  ], !dbg !374

sw.bb:                                            ; preds = %if.else132
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !85), !dbg !375
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !87), !dbg !377
  %arrayidx155 = getelementptr inbounds [144 x i32]* @swhite_pawn, i64 0, i64 %idxprom135, !dbg !378
  %36 = load i32* %arrayidx155, align 4, !dbg !378, !tbaa !177
  %add156 = add nsw i32 %36, %add146, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %add156}, i64 0, metadata !84), !dbg !378
  store i32 %add156, i32* %score, align 4, !dbg !378, !tbaa !177
  %inc157 = add nsw i32 %wp.01758, 1, !dbg !379
  call void @llvm.dbg.value(metadata !{i32 %inc157}, i64 0, metadata !89), !dbg !379
  %add158 = add nsw i32 %33, 2, !dbg !380
  %idxprom159 = sext i32 %add158 to i64, !dbg !380
  %arrayidx160 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom159, !dbg !380
  %37 = load i32* %arrayidx160, align 4, !dbg !380, !tbaa !177
  %cmp161 = icmp sgt i32 %37, %34, !dbg !380
  br i1 %cmp161, label %land.lhs.true162, label %if.end183, !dbg !380

land.lhs.true162:                                 ; preds = %sw.bb
  %idxprom164 = sext i32 %33 to i64, !dbg !380
  %arrayidx165 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom164, !dbg !380
  %38 = load i32* %arrayidx165, align 4, !dbg !380, !tbaa !177
  %cmp166 = icmp sgt i32 %38, %34, !dbg !380
  br i1 %cmp166, label %if.then167, label %if.end183, !dbg !380

if.then167:                                       ; preds = %land.lhs.true162
  %sub168 = add nsw i32 %add156, -8, !dbg !381
  call void @llvm.dbg.value(metadata !{i32 %sub168}, i64 0, metadata !84), !dbg !381
  store i32 %sub168, i32* %score, align 4, !dbg !381, !tbaa !177
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !87), !dbg !383
  %arrayidx172 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom159, !dbg !384
  %39 = load i32* %arrayidx172, align 4, !dbg !384, !tbaa !177
  %tobool173 = icmp eq i32 %39, 0, !dbg !384
  br i1 %tobool173, label %land.lhs.true174, label %if.end183, !dbg !384

land.lhs.true174:                                 ; preds = %if.then167
  %arrayidx178 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom164, !dbg !384
  %40 = load i32* %arrayidx178, align 4, !dbg !384, !tbaa !177
  %tobool179 = icmp eq i32 %40, 0, !dbg !384
  br i1 %tobool179, label %if.then180, label %if.end183, !dbg !384

if.then180:                                       ; preds = %land.lhs.true174
  %sub181 = add nsw i32 %add156, -13, !dbg !385
  call void @llvm.dbg.value(metadata !{i32 %sub181}, i64 0, metadata !84), !dbg !385
  store i32 %sub181, i32* %score, align 4, !dbg !385, !tbaa !177
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !85), !dbg !387
  br label %if.end183, !dbg !388

if.end183:                                        ; preds = %land.lhs.true174, %if.then167, %if.then180, %land.lhs.true162, %sw.bb
  %41 = phi i32 [ %sub168, %if.then167 ], [ %sub168, %land.lhs.true174 ], [ %sub181, %if.then180 ], [ %add156, %land.lhs.true162 ], [ %add156, %sw.bb ]
  %isolated.0 = phi i32 [ 0, %if.then167 ], [ 0, %land.lhs.true174 ], [ 1, %if.then180 ], [ 0, %land.lhs.true162 ], [ 0, %sw.bb ]
  %backwards.0 = phi i32 [ 1, %if.then167 ], [ 1, %land.lhs.true174 ], [ 1, %if.then180 ], [ 0, %land.lhs.true162 ], [ 0, %sw.bb ]
  %idxprom184 = sext i32 %add149 to i64, !dbg !389
  %arrayidx186 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom184, !dbg !389
  %42 = load i32* %arrayidx186, align 4, !dbg !389, !tbaa !177
  %tobool187 = icmp eq i32 %42, 0, !dbg !389
  br i1 %tobool187, label %if.then188, label %if.end197, !dbg !389

if.then188:                                       ; preds = %if.end183
  %tobool189 = icmp eq i32 %backwards.0, 0, !dbg !390
  br i1 %tobool189, label %if.end192, label %if.then190, !dbg !390

if.then190:                                       ; preds = %if.then188
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !390
  %sub191 = add nsw i32 %41, -3, !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %sub191}, i64 0, metadata !84), !dbg !390
  store i32 %sub191, i32* %score, align 4, !dbg !390, !tbaa !177
  br label %if.end192, !dbg !390

if.end192:                                        ; preds = %if.then188, %if.then190
  %43 = phi i32 [ %41, %if.then188 ], [ %sub191, %if.then190 ]
  %tobool193 = icmp eq i32 %isolated.0, 0, !dbg !392
  br i1 %tobool193, label %if.end197, label %if.then194, !dbg !392

if.then194:                                       ; preds = %if.end192
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !392
  %sub195 = add nsw i32 %43, -5, !dbg !392
  call void @llvm.dbg.value(metadata !{i32 %sub195}, i64 0, metadata !84), !dbg !392
  store i32 %sub195, i32* %score, align 4, !dbg !392, !tbaa !177
  br label %if.end197, !dbg !392

if.end197:                                        ; preds = %if.end192, %if.end183, %if.then194
  %44 = phi i32 [ %43, %if.end192 ], [ %41, %if.end183 ], [ %sub195, %if.then194 ]
  %arrayidx200 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom184, !dbg !393
  %45 = load i32* %arrayidx200, align 4, !dbg !393, !tbaa !177
  %cmp201 = icmp sgt i32 %45, 1, !dbg !393
  br i1 %cmp201, label %if.then202, label %if.end208, !dbg !393

if.then202:                                       ; preds = %if.end197
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !394
  %46 = mul i32 %45, -3
  %mul.neg = add i32 %46, 3, !dbg !394
  %sub207 = add i32 %mul.neg, %44, !dbg !394
  call void @llvm.dbg.value(metadata !{i32 %sub207}, i64 0, metadata !84), !dbg !394
  store i32 %sub207, i32* %score, align 4, !dbg !394, !tbaa !177
  br label %if.end208, !dbg !394

if.end208:                                        ; preds = %if.then202, %if.end197
  %47 = phi i32 [ %sub207, %if.then202 ], [ %44, %if.end197 ]
  %idxprom215 = sext i32 %33 to i64, !dbg !395
  br i1 %tobool187, label %land.lhs.true213, label %if.end411, !dbg !395

land.lhs.true213:                                 ; preds = %if.end208
  %arrayidx216 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom215, !dbg !395
  %48 = load i32* %arrayidx216, align 4, !dbg !395, !tbaa !177
  %cmp217 = icmp slt i32 %34, %48, !dbg !395
  br i1 %cmp217, label %if.end411, label %land.lhs.true218, !dbg !395

land.lhs.true218:                                 ; preds = %land.lhs.true213
  %arrayidx221 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom159, !dbg !395
  %49 = load i32* %arrayidx221, align 4, !dbg !395, !tbaa !177
  %cmp222 = icmp slt i32 %34, %49, !dbg !395
  br i1 %cmp222, label %if.end411, label %if.then223, !dbg !395

if.then223:                                       ; preds = %land.lhs.true218
  %mul226 = mul nsw i32 %36, 3, !dbg !396
  %add227 = add nsw i32 %mul226, 30, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !396
  %add228 = add nsw i32 %add227, %47, !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %add228}, i64 0, metadata !84), !dbg !396
  store i32 %add228, i32* %score, align 4, !dbg !396, !tbaa !177
  %50 = load i32* @white_to_move, align 4, !dbg !398, !tbaa !177
  %tobool229 = icmp eq i32 %50, 0, !dbg !398
  %sub234 = add nsw i32 %33, 109, !dbg !399
  call void @llvm.dbg.value(metadata !{i32 %sub234}, i64 0, metadata !105), !dbg !399
  %51 = load i32* @bking_loc, align 4, !dbg !401, !tbaa !177
  %idxprom235 = sext i32 %51 to i64, !dbg !401
  %arrayidx236 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom235, !dbg !401
  %52 = load i32* %arrayidx236, align 4, !dbg !401, !tbaa !177
  %idxprom237 = sext i32 %sub234 to i64, !dbg !401
  %arrayidx238 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom237, !dbg !401
  %53 = load i32* %arrayidx238, align 4, !dbg !401, !tbaa !177
  %sub239 = sub nsw i32 %52, %53, !dbg !401
  %ispos1703 = icmp sgt i32 %sub239, -1, !dbg !401
  %neg1704 = sub i32 0, %sub239, !dbg !401
  %54 = select i1 %ispos1703, i32 %sub239, i32 %neg1704, !dbg !401
  %arrayidx242 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom235, !dbg !401
  %55 = load i32* %arrayidx242, align 4, !dbg !401, !tbaa !177
  %arrayidx244 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom237, !dbg !401
  %56 = load i32* %arrayidx244, align 4, !dbg !401, !tbaa !177
  %sub245 = sub nsw i32 %55, %56, !dbg !401
  %ispos1705 = icmp sgt i32 %sub245, -1, !dbg !401
  %neg1706 = sub i32 0, %sub245, !dbg !401
  %57 = select i1 %ispos1705, i32 %sub245, i32 %neg1706, !dbg !401
  %cmp247 = icmp sgt i32 %54, %57, !dbg !401
  %sub239.sub2451717 = select i1 %cmp247, i32 %sub239, i32 %sub245, !dbg !402
  %ispos1707 = icmp sgt i32 %sub239.sub2451717, -1, !dbg !402
  %neg1708 = sub i32 0, %sub239.sub2451717, !dbg !402
  %58 = select i1 %ispos1707, i32 %sub239.sub2451717, i32 %neg1708, !dbg !402
  br i1 %tobool229, label %if.else274, label %if.then230, !dbg !398

if.then230:                                       ; preds = %if.then223
  %sub268 = sub nsw i32 %56, %34, !dbg !404
  %ispos1713 = icmp sgt i32 %sub268, -1, !dbg !404
  %neg1714 = sub i32 0, %sub268, !dbg !404
  %59 = select i1 %ispos1713, i32 %sub268, i32 %neg1714, !dbg !404
  %cmp270 = icmp sgt i32 %58, %59, !dbg !404
  %add272 = add nsw i32 %wpotential.01772, 800, !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %add272}, i64 0, metadata !103), !dbg !405
  %add272.wpotential.0 = select i1 %cmp270, i32 %add272, i32 %wpotential.01772, !dbg !404
  br label %if.end319, !dbg !404

if.else274:                                       ; preds = %if.then223
  %sub308 = add nsw i32 %58, -1, !dbg !402
  %sub313 = sub nsw i32 %56, %34, !dbg !407
  %ispos1709 = icmp sgt i32 %sub313, -1, !dbg !407
  %neg1710 = sub i32 0, %sub313, !dbg !407
  %60 = select i1 %ispos1709, i32 %sub313, i32 %neg1710, !dbg !407
  %cmp315 = icmp sgt i32 %sub308, %60, !dbg !407
  %add317 = add nsw i32 %wpotential.01772, 800, !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %add317}, i64 0, metadata !103), !dbg !408
  %add317.wpotential.0 = select i1 %cmp315, i32 %add317, i32 %wpotential.01772, !dbg !407
  br label %if.end319, !dbg !407

if.end319:                                        ; preds = %if.else274, %if.then230
  %wpotential.1 = phi i32 [ %add272.wpotential.0, %if.then230 ], [ %add317.wpotential.0, %if.else274 ]
  switch i32 %33, label %if.end332 [
    i32 1, label %if.then326
    i32 8, label %if.then326
  ], !dbg !410

if.then326:                                       ; preds = %if.end319, %if.end319
  %mul329 = shl i32 %36, 1, !dbg !411
  %add330 = add nsw i32 %mul329, 12, !dbg !411
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !411
  %add331 = add nsw i32 %add330, %add228, !dbg !411
  call void @llvm.dbg.value(metadata !{i32 %add331}, i64 0, metadata !84), !dbg !411
  store i32 %add331, i32* %score, align 4, !dbg !411, !tbaa !177
  br label %if.end332, !dbg !411

if.end332:                                        ; preds = %if.end319, %if.then326
  %61 = phi i32 [ %add228, %if.end319 ], [ %add331, %if.then326 ]
  %tobool333 = icmp eq i32 %isolated.0, 0, !dbg !412
  br i1 %tobool333, label %if.then334, label %if.end411, !dbg !412

if.then334:                                       ; preds = %if.end332
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !413
  %add335 = add nsw i32 %61, 12, !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %add335}, i64 0, metadata !84), !dbg !413
  store i32 %add335, i32* %score, align 4, !dbg !413, !tbaa !177
  %arrayidx339 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom159, !dbg !415
  %62 = load i32* %arrayidx339, align 4, !dbg !415, !tbaa !177
  %tobool340 = icmp eq i32 %62, 0, !dbg !415
  br i1 %tobool340, label %if.end372, label %if.then341, !dbg !415

if.then341:                                       ; preds = %if.then334
  %arrayidx345 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom159, !dbg !416
  %63 = load i32* %arrayidx345, align 4, !dbg !416, !tbaa !177
  %tobool346 = icmp eq i32 %63, 0, !dbg !416
  br i1 %tobool346, label %land.lhs.true347, label %if.end372, !dbg !416

land.lhs.true347:                                 ; preds = %if.then341
  %add351 = add nsw i32 %33, 3, !dbg !416
  %idxprom352 = sext i32 %add351 to i64, !dbg !416
  %arrayidx353 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom352, !dbg !416
  %64 = load i32* %arrayidx353, align 4, !dbg !416, !tbaa !177
  %cmp354 = icmp slt i32 %37, %64, !dbg !416
  br i1 %cmp354, label %if.end372, label %if.then355, !dbg !416

if.then355:                                       ; preds = %land.lhs.true347
  %mul358 = mul nsw i32 %34, 7, !dbg !418
  %add359 = add nsw i32 %mul358, %add335, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %add359}, i64 0, metadata !84), !dbg !418
  store i32 %add359, i32* %score, align 4, !dbg !418, !tbaa !177
  %cmp362 = icmp eq i32 %34, 7, !dbg !420
  br i1 %cmp362, label %land.lhs.true363, label %if.end372, !dbg !420

land.lhs.true363:                                 ; preds = %if.then355
  %cmp367 = icmp sgt i32 %37, 5, !dbg !420
  br i1 %cmp367, label %if.then368, label %if.end372, !dbg !420

if.then368:                                       ; preds = %land.lhs.true363
  %add369 = add nsw i32 %add359, 50, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %add369}, i64 0, metadata !84), !dbg !421
  store i32 %add369, i32* %score, align 4, !dbg !421, !tbaa !177
  br label %if.end372, !dbg !423

if.end372:                                        ; preds = %land.lhs.true363, %if.then355, %land.lhs.true347, %if.then341, %if.then334, %if.then368
  %65 = phi i32 [ %add369, %if.then368 ], [ %add335, %if.then334 ], [ %add335, %if.then341 ], [ %add335, %land.lhs.true347 ], [ %add359, %if.then355 ], [ %add359, %land.lhs.true363 ]
  %66 = phi i32 [ 7, %if.then368 ], [ %34, %if.then334 ], [ %34, %if.then341 ], [ %34, %land.lhs.true347 ], [ %34, %if.then355 ], [ 7, %land.lhs.true363 ]
  %arrayidx376 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom215, !dbg !424
  %67 = load i32* %arrayidx376, align 4, !dbg !424, !tbaa !177
  %tobool377 = icmp eq i32 %67, 0, !dbg !424
  br i1 %tobool377, label %if.end411, label %if.then378, !dbg !424

if.then378:                                       ; preds = %if.end372
  %arrayidx382 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom215, !dbg !425
  %68 = load i32* %arrayidx382, align 4, !dbg !425, !tbaa !177
  %tobool383 = icmp eq i32 %68, 0, !dbg !425
  br i1 %tobool383, label %land.lhs.true384, label %if.end411, !dbg !425

land.lhs.true384:                                 ; preds = %if.then378
  %sub388 = add nsw i32 %33, -1, !dbg !425
  %idxprom389 = sext i32 %sub388 to i64, !dbg !425
  %arrayidx390 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom389, !dbg !425
  %69 = load i32* %arrayidx390, align 4, !dbg !425, !tbaa !177
  %cmp391 = icmp slt i32 %37, %69, !dbg !425
  br i1 %cmp391, label %if.end411, label %if.then392, !dbg !425

if.then392:                                       ; preds = %land.lhs.true384
  %mul395 = mul nsw i32 %66, 7, !dbg !427
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !427
  %add396 = add nsw i32 %65, %mul395, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %add396}, i64 0, metadata !84), !dbg !427
  store i32 %add396, i32* %score, align 4, !dbg !427, !tbaa !177
  %cmp399 = icmp eq i32 %66, 7, !dbg !429
  br i1 %cmp399, label %land.lhs.true400, label %if.end411, !dbg !429

land.lhs.true400:                                 ; preds = %if.then392
  %arrayidx403 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom215, !dbg !429
  %70 = load i32* %arrayidx403, align 4, !dbg !429, !tbaa !177
  %cmp404 = icmp sgt i32 %70, 5, !dbg !429
  br i1 %cmp404, label %if.then405, label %if.end411, !dbg !429

if.then405:                                       ; preds = %land.lhs.true400
  %add406 = add nsw i32 %add396, 50, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %add406}, i64 0, metadata !84), !dbg !430
  store i32 %add406, i32* %score, align 4, !dbg !430, !tbaa !177
  br label %if.end411, !dbg !432

if.end411:                                        ; preds = %if.end208, %if.end332, %land.lhs.true218, %land.lhs.true213, %land.lhs.true384, %if.then378, %if.end372, %if.then405, %land.lhs.true400, %if.then392
  %71 = phi i32 [ %65, %land.lhs.true384 ], [ %65, %if.then378 ], [ %65, %if.end372 ], [ %add406, %if.then405 ], [ %add396, %land.lhs.true400 ], [ %add396, %if.then392 ], [ %47, %land.lhs.true213 ], [ %47, %land.lhs.true218 ], [ %61, %if.end332 ], [ %47, %if.end208 ]
  %wpotential.2 = phi i32 [ %wpotential.1, %land.lhs.true384 ], [ %wpotential.1, %if.then378 ], [ %wpotential.1, %if.end372 ], [ %wpotential.1, %if.then405 ], [ %wpotential.1, %land.lhs.true400 ], [ %wpotential.1, %if.then392 ], [ %wpotential.01772, %land.lhs.true213 ], [ %wpotential.01772, %land.lhs.true218 ], [ %wpotential.1, %if.end332 ], [ %wpotential.01772, %if.end208 ]
  %arrayidx415 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom215, !dbg !433
  %72 = load i32* %arrayidx415, align 4, !dbg !433, !tbaa !177
  %tobool416 = icmp eq i32 %72, 0, !dbg !433
  br i1 %tobool416, label %if.then417, label %for.inc997, !dbg !433

if.then417:                                       ; preds = %if.end411
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !434
  %sub418 = add nsw i32 %71, -7, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %sub418}, i64 0, metadata !84), !dbg !434
  store i32 %sub418, i32* %score, align 4, !dbg !434, !tbaa !177
  br label %for.inc997, !dbg !434

sw.bb420:                                         ; preds = %if.else132
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !85), !dbg !435
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !87), !dbg !436
  %arrayidx422 = getelementptr inbounds [144 x i32]* @sblack_pawn, i64 0, i64 %idxprom135, !dbg !437
  %73 = load i32* %arrayidx422, align 4, !dbg !437, !tbaa !177
  %sub423 = sub nsw i32 %add146, %73, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %sub423}, i64 0, metadata !84), !dbg !437
  store i32 %sub423, i32* %score, align 4, !dbg !437, !tbaa !177
  %inc424 = add nsw i32 %bp.01759, 1, !dbg !438
  call void @llvm.dbg.value(metadata !{i32 %inc424}, i64 0, metadata !90), !dbg !438
  %add425 = add nsw i32 %33, 2, !dbg !439
  %idxprom426 = sext i32 %add425 to i64, !dbg !439
  %arrayidx427 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom426, !dbg !439
  %74 = load i32* %arrayidx427, align 4, !dbg !439, !tbaa !177
  %cmp428 = icmp slt i32 %74, %34, !dbg !439
  br i1 %cmp428, label %land.lhs.true429, label %if.end450, !dbg !439

land.lhs.true429:                                 ; preds = %sw.bb420
  %idxprom431 = sext i32 %33 to i64, !dbg !439
  %arrayidx432 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom431, !dbg !439
  %75 = load i32* %arrayidx432, align 4, !dbg !439, !tbaa !177
  %cmp433 = icmp slt i32 %75, %34, !dbg !439
  br i1 %cmp433, label %if.then434, label %if.end450, !dbg !439

if.then434:                                       ; preds = %land.lhs.true429
  %add435 = add nsw i32 %sub423, 8, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %add435}, i64 0, metadata !84), !dbg !440
  store i32 %add435, i32* %score, align 4, !dbg !440, !tbaa !177
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !87), !dbg !442
  %arrayidx439 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom426, !dbg !443
  %76 = load i32* %arrayidx439, align 4, !dbg !443, !tbaa !177
  %tobool440 = icmp eq i32 %76, 0, !dbg !443
  br i1 %tobool440, label %land.lhs.true441, label %if.end450, !dbg !443

land.lhs.true441:                                 ; preds = %if.then434
  %arrayidx445 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom431, !dbg !443
  %77 = load i32* %arrayidx445, align 4, !dbg !443, !tbaa !177
  %tobool446 = icmp eq i32 %77, 0, !dbg !443
  br i1 %tobool446, label %if.then447, label %if.end450, !dbg !443

if.then447:                                       ; preds = %land.lhs.true441
  %add448 = add nsw i32 %sub423, 13, !dbg !444
  call void @llvm.dbg.value(metadata !{i32 %add448}, i64 0, metadata !84), !dbg !444
  store i32 %add448, i32* %score, align 4, !dbg !444, !tbaa !177
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !85), !dbg !446
  br label %if.end450, !dbg !447

if.end450:                                        ; preds = %land.lhs.true441, %if.then434, %if.then447, %land.lhs.true429, %sw.bb420
  %78 = phi i32 [ %add435, %if.then434 ], [ %add435, %land.lhs.true441 ], [ %add448, %if.then447 ], [ %sub423, %land.lhs.true429 ], [ %sub423, %sw.bb420 ]
  %isolated.1 = phi i32 [ 0, %if.then434 ], [ 0, %land.lhs.true441 ], [ 1, %if.then447 ], [ 0, %land.lhs.true429 ], [ 0, %sw.bb420 ]
  %backwards.1 = phi i32 [ 1, %if.then434 ], [ 1, %land.lhs.true441 ], [ 1, %if.then447 ], [ 0, %land.lhs.true429 ], [ 0, %sw.bb420 ]
  %idxprom451 = sext i32 %add149 to i64, !dbg !448
  %arrayidx453 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom451, !dbg !448
  %79 = load i32* %arrayidx453, align 4, !dbg !448, !tbaa !177
  %tobool454 = icmp eq i32 %79, 0, !dbg !448
  br i1 %tobool454, label %if.then455, label %if.end464, !dbg !448

if.then455:                                       ; preds = %if.end450
  %tobool456 = icmp eq i32 %backwards.1, 0, !dbg !449
  br i1 %tobool456, label %if.end459, label %if.then457, !dbg !449

if.then457:                                       ; preds = %if.then455
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !449
  %add458 = add nsw i32 %78, 3, !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %add458}, i64 0, metadata !84), !dbg !449
  store i32 %add458, i32* %score, align 4, !dbg !449, !tbaa !177
  br label %if.end459, !dbg !449

if.end459:                                        ; preds = %if.then455, %if.then457
  %80 = phi i32 [ %78, %if.then455 ], [ %add458, %if.then457 ]
  %tobool460 = icmp eq i32 %isolated.1, 0, !dbg !451
  br i1 %tobool460, label %if.end464, label %if.then461, !dbg !451

if.then461:                                       ; preds = %if.end459
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !451
  %add462 = add nsw i32 %80, 5, !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %add462}, i64 0, metadata !84), !dbg !451
  store i32 %add462, i32* %score, align 4, !dbg !451, !tbaa !177
  br label %if.end464, !dbg !451

if.end464:                                        ; preds = %if.end459, %if.end450, %if.then461
  %81 = phi i32 [ %80, %if.end459 ], [ %78, %if.end450 ], [ %add462, %if.then461 ]
  %arrayidx467 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom451, !dbg !452
  %82 = load i32* %arrayidx467, align 4, !dbg !452, !tbaa !177
  %cmp468 = icmp sgt i32 %82, 1, !dbg !452
  br i1 %cmp468, label %if.then469, label %if.end476, !dbg !452

if.then469:                                       ; preds = %if.end464
  %83 = mul i32 %82, 3, !dbg !453
  %mul474 = add i32 %83, -3, !dbg !453
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !453
  %add475 = add nsw i32 %mul474, %81, !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %add475}, i64 0, metadata !84), !dbg !453
  store i32 %add475, i32* %score, align 4, !dbg !453, !tbaa !177
  br label %if.end476, !dbg !453

if.end476:                                        ; preds = %if.then469, %if.end464
  %84 = phi i32 [ %add475, %if.then469 ], [ %81, %if.end464 ]
  %idxprom483 = sext i32 %33 to i64, !dbg !454
  br i1 %tobool454, label %land.lhs.true481, label %if.end682, !dbg !454

land.lhs.true481:                                 ; preds = %if.end476
  %arrayidx484 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom483, !dbg !454
  %85 = load i32* %arrayidx484, align 4, !dbg !454, !tbaa !177
  %cmp485 = icmp sgt i32 %34, %85, !dbg !454
  br i1 %cmp485, label %if.end682, label %land.lhs.true486, !dbg !454

land.lhs.true486:                                 ; preds = %land.lhs.true481
  %arrayidx489 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom426, !dbg !454
  %86 = load i32* %arrayidx489, align 4, !dbg !454, !tbaa !177
  %cmp490 = icmp sgt i32 %34, %86, !dbg !454
  br i1 %cmp490, label %if.end682, label %if.then491, !dbg !454

if.then491:                                       ; preds = %land.lhs.true486
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !455
  %87 = mul i32 %73, -3
  %add495.neg = add nsw i32 %87, -30, !dbg !455
  %sub496 = add i32 %add495.neg, %84, !dbg !455
  call void @llvm.dbg.value(metadata !{i32 %sub496}, i64 0, metadata !84), !dbg !455
  store i32 %sub496, i32* %score, align 4, !dbg !455, !tbaa !177
  %88 = load i32* @white_to_move, align 4, !dbg !457, !tbaa !177
  %tobool497 = icmp eq i32 %88, 0, !dbg !457
  %sub546 = add nsw i32 %33, 25, !dbg !458
  call void @llvm.dbg.value(metadata !{i32 %sub546}, i64 0, metadata !105), !dbg !458
  %89 = load i32* @wking_loc, align 4, !dbg !460, !tbaa !177
  %idxprom547 = sext i32 %89 to i64, !dbg !460
  %arrayidx548 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom547, !dbg !460
  %90 = load i32* %arrayidx548, align 4, !dbg !460, !tbaa !177
  %idxprom549 = sext i32 %sub546 to i64, !dbg !460
  %arrayidx550 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom549, !dbg !460
  %91 = load i32* %arrayidx550, align 4, !dbg !460, !tbaa !177
  %sub551 = sub nsw i32 %90, %91, !dbg !460
  %ispos1691 = icmp sgt i32 %sub551, -1, !dbg !460
  %neg1692 = sub i32 0, %sub551, !dbg !460
  %92 = select i1 %ispos1691, i32 %sub551, i32 %neg1692, !dbg !460
  %arrayidx554 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom547, !dbg !460
  %93 = load i32* %arrayidx554, align 4, !dbg !460, !tbaa !177
  %arrayidx556 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom549, !dbg !460
  %94 = load i32* %arrayidx556, align 4, !dbg !460, !tbaa !177
  %sub557 = sub nsw i32 %93, %94, !dbg !460
  %ispos1693 = icmp sgt i32 %sub557, -1, !dbg !460
  %neg1694 = sub i32 0, %sub557, !dbg !460
  %95 = select i1 %ispos1693, i32 %sub557, i32 %neg1694, !dbg !460
  %cmp559 = icmp sgt i32 %92, %95, !dbg !460
  %sub551.sub557 = select i1 %cmp559, i32 %sub551, i32 %sub557, !dbg !461
  %ispos1695 = icmp sgt i32 %sub551.sub557, -1, !dbg !461
  %neg1696 = sub i32 0, %sub551.sub557, !dbg !461
  %96 = select i1 %ispos1695, i32 %sub551.sub557, i32 %neg1696, !dbg !461
  br i1 %tobool497, label %if.then498, label %if.else542, !dbg !457

if.then498:                                       ; preds = %if.then491
  %sub536 = sub nsw i32 %94, %34, !dbg !463
  %ispos1697 = icmp sgt i32 %sub536, -1, !dbg !463
  %neg1698 = sub i32 0, %sub536, !dbg !463
  %97 = select i1 %ispos1697, i32 %sub536, i32 %neg1698, !dbg !463
  %cmp538 = icmp sgt i32 %96, %97, !dbg !463
  %sub540 = add nsw i32 %bpotential.01773, -800, !dbg !464
  call void @llvm.dbg.value(metadata !{i32 %sub540}, i64 0, metadata !104), !dbg !464
  %sub540.bpotential.0 = select i1 %cmp538, i32 %sub540, i32 %bpotential.01773, !dbg !463
  br label %if.end587, !dbg !463

if.else542:                                       ; preds = %if.then491
  %sub576 = add nsw i32 %96, -1, !dbg !460
  %sub581 = sub nsw i32 %94, %34, !dbg !466
  %ispos1701 = icmp sgt i32 %sub581, -1, !dbg !466
  %neg1702 = sub i32 0, %sub581, !dbg !466
  %98 = select i1 %ispos1701, i32 %sub581, i32 %neg1702, !dbg !466
  %cmp583 = icmp sgt i32 %sub576, %98, !dbg !466
  %sub585 = add nsw i32 %bpotential.01773, -800, !dbg !467
  call void @llvm.dbg.value(metadata !{i32 %sub585}, i64 0, metadata !104), !dbg !467
  %sub585.bpotential.0 = select i1 %cmp583, i32 %sub585, i32 %bpotential.01773, !dbg !466
  br label %if.end587, !dbg !466

if.end587:                                        ; preds = %if.else542, %if.then498
  %bpotential.1 = phi i32 [ %sub540.bpotential.0, %if.then498 ], [ %sub585.bpotential.0, %if.else542 ]
  switch i32 %33, label %if.end601 [
    i32 1, label %if.then595
    i32 8, label %if.then595
  ], !dbg !469

if.then595:                                       ; preds = %if.end587, %if.end587
  %mul598 = shl i32 %73, 1, !dbg !470
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !470
  %add599.neg = sub i32 -12, %mul598, !dbg !470
  %sub600 = add i32 %add599.neg, %sub496, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %sub600}, i64 0, metadata !84), !dbg !470
  store i32 %sub600, i32* %score, align 4, !dbg !470, !tbaa !177
  br label %if.end601, !dbg !470

if.end601:                                        ; preds = %if.end587, %if.then595
  %99 = phi i32 [ %sub496, %if.end587 ], [ %sub600, %if.then595 ]
  %tobool602 = icmp eq i32 %isolated.1, 0, !dbg !471
  br i1 %tobool602, label %if.then603, label %if.end682, !dbg !471

if.then603:                                       ; preds = %if.end601
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !472
  %sub604 = add nsw i32 %99, -12, !dbg !472
  call void @llvm.dbg.value(metadata !{i32 %sub604}, i64 0, metadata !84), !dbg !472
  store i32 %sub604, i32* %score, align 4, !dbg !472, !tbaa !177
  %arrayidx608 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom426, !dbg !474
  %100 = load i32* %arrayidx608, align 4, !dbg !474, !tbaa !177
  %tobool609 = icmp eq i32 %100, 0, !dbg !474
  br i1 %tobool609, label %if.end642, label %if.then610, !dbg !474

if.then610:                                       ; preds = %if.then603
  %arrayidx614 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom426, !dbg !475
  %101 = load i32* %arrayidx614, align 4, !dbg !475, !tbaa !177
  %tobool615 = icmp eq i32 %101, 0, !dbg !475
  br i1 %tobool615, label %land.lhs.true616, label %if.end642, !dbg !475

land.lhs.true616:                                 ; preds = %if.then610
  %add620 = add nsw i32 %33, 3, !dbg !475
  %idxprom621 = sext i32 %add620 to i64, !dbg !475
  %arrayidx622 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom621, !dbg !475
  %102 = load i32* %arrayidx622, align 4, !dbg !475, !tbaa !177
  %cmp623 = icmp sgt i32 %74, %102, !dbg !475
  br i1 %cmp623, label %if.end642, label %if.then624, !dbg !475

if.then624:                                       ; preds = %land.lhs.true616
  %sub627 = sub nsw i32 9, %34, !dbg !477
  %103 = mul i32 %sub627, -7, !dbg !477
  %sub629 = add i32 %103, %sub604, !dbg !477
  call void @llvm.dbg.value(metadata !{i32 %sub629}, i64 0, metadata !84), !dbg !477
  store i32 %sub629, i32* %score, align 4, !dbg !477, !tbaa !177
  %cmp632 = icmp eq i32 %34, 2, !dbg !479
  br i1 %cmp632, label %land.lhs.true633, label %if.end642, !dbg !479

land.lhs.true633:                                 ; preds = %if.then624
  %cmp637 = icmp slt i32 %74, 4, !dbg !479
  br i1 %cmp637, label %if.then638, label %if.end642, !dbg !479

if.then638:                                       ; preds = %land.lhs.true633
  %sub639 = add nsw i32 %sub629, -50, !dbg !480
  call void @llvm.dbg.value(metadata !{i32 %sub639}, i64 0, metadata !84), !dbg !480
  store i32 %sub639, i32* %score, align 4, !dbg !480, !tbaa !177
  br label %if.end642, !dbg !482

if.end642:                                        ; preds = %land.lhs.true633, %if.then624, %land.lhs.true616, %if.then610, %if.then603, %if.then638
  %104 = phi i32 [ %sub639, %if.then638 ], [ %sub604, %if.then603 ], [ %sub604, %if.then610 ], [ %sub604, %land.lhs.true616 ], [ %sub629, %if.then624 ], [ %sub629, %land.lhs.true633 ]
  %105 = phi i32 [ 2, %if.then638 ], [ %34, %if.then603 ], [ %34, %if.then610 ], [ %34, %land.lhs.true616 ], [ %34, %if.then624 ], [ 2, %land.lhs.true633 ]
  %arrayidx646 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom483, !dbg !483
  %106 = load i32* %arrayidx646, align 4, !dbg !483, !tbaa !177
  %tobool647 = icmp eq i32 %106, 0, !dbg !483
  br i1 %tobool647, label %if.end682, label %if.then648, !dbg !483

if.then648:                                       ; preds = %if.end642
  %arrayidx652 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom483, !dbg !484
  %107 = load i32* %arrayidx652, align 4, !dbg !484, !tbaa !177
  %tobool653 = icmp eq i32 %107, 0, !dbg !484
  br i1 %tobool653, label %land.lhs.true654, label %if.end682, !dbg !484

land.lhs.true654:                                 ; preds = %if.then648
  %arrayidx657 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom483, !dbg !484
  %108 = load i32* %arrayidx657, align 4, !dbg !484, !tbaa !177
  %sub658 = add nsw i32 %33, -1, !dbg !484
  %idxprom659 = sext i32 %sub658 to i64, !dbg !484
  %arrayidx660 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom659, !dbg !484
  %109 = load i32* %arrayidx660, align 4, !dbg !484, !tbaa !177
  %cmp661 = icmp sgt i32 %108, %109, !dbg !484
  br i1 %cmp661, label %if.end682, label %if.then662, !dbg !484

if.then662:                                       ; preds = %land.lhs.true654
  %sub665 = sub nsw i32 9, %105, !dbg !486
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !486
  %110 = mul i32 %sub665, -7, !dbg !486
  %sub667 = add i32 %110, %104, !dbg !486
  call void @llvm.dbg.value(metadata !{i32 %sub667}, i64 0, metadata !84), !dbg !486
  store i32 %sub667, i32* %score, align 4, !dbg !486, !tbaa !177
  %cmp670 = icmp eq i32 %105, 2, !dbg !488
  %cmp675 = icmp slt i32 %108, 4, !dbg !488
  %or.cond1794 = and i1 %cmp670, %cmp675, !dbg !488
  br i1 %or.cond1794, label %if.then676, label %if.end682, !dbg !488

if.then676:                                       ; preds = %if.then662
  %sub677 = add nsw i32 %sub667, -50, !dbg !489
  call void @llvm.dbg.value(metadata !{i32 %sub677}, i64 0, metadata !84), !dbg !489
  store i32 %sub677, i32* %score, align 4, !dbg !489, !tbaa !177
  br label %if.end682, !dbg !491

if.end682:                                        ; preds = %if.end476, %if.end601, %land.lhs.true486, %land.lhs.true481, %land.lhs.true654, %if.then648, %if.end642, %if.then676, %if.then662
  %111 = phi i32 [ %104, %land.lhs.true654 ], [ %104, %if.then648 ], [ %104, %if.end642 ], [ %sub677, %if.then676 ], [ %sub667, %if.then662 ], [ %84, %land.lhs.true481 ], [ %84, %land.lhs.true486 ], [ %99, %if.end601 ], [ %84, %if.end476 ]
  %bpotential.2 = phi i32 [ %bpotential.1, %land.lhs.true654 ], [ %bpotential.1, %if.then648 ], [ %bpotential.1, %if.end642 ], [ %bpotential.1, %if.then676 ], [ %bpotential.1, %if.then662 ], [ %bpotential.01773, %land.lhs.true481 ], [ %bpotential.01773, %land.lhs.true486 ], [ %bpotential.1, %if.end601 ], [ %bpotential.01773, %if.end476 ]
  %arrayidx686 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom483, !dbg !492
  %112 = load i32* %arrayidx686, align 4, !dbg !492, !tbaa !177
  %tobool687 = icmp eq i32 %112, 0, !dbg !492
  br i1 %tobool687, label %if.then688, label %for.inc997, !dbg !492

if.then688:                                       ; preds = %if.end682
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !493
  %add689 = add nsw i32 %111, 7, !dbg !493
  call void @llvm.dbg.value(metadata !{i32 %add689}, i64 0, metadata !84), !dbg !493
  store i32 %add689, i32* %score, align 4, !dbg !493, !tbaa !177
  br label %for.inc997, !dbg !493

sw.bb691:                                         ; preds = %if.else132
  %inc692 = add nsw i32 %wr.01766, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %inc692}, i64 0, metadata !97), !dbg !494
  %cmp693 = icmp eq i32 %wr.01766, 0, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !102), !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !101), !dbg !498
  %.rwrook.0 = select i1 %cmp693, i32 %34, i32 %rwrook.01770, !dbg !495
  %.fwrook.0 = select i1 %cmp693, i32 %33, i32 %fwrook.01771, !dbg !495
  %cmp700 = icmp eq i32 %34, 7, !dbg !499
  br i1 %cmp700, label %if.then701, label %if.end709, !dbg !499

if.then701:                                       ; preds = %sw.bb691
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !500
  %add702 = add nsw i32 %add146, 25, !dbg !500
  call void @llvm.dbg.value(metadata !{i32 %add702}, i64 0, metadata !84), !dbg !500
  store i32 %add702, i32* %score, align 4, !dbg !500, !tbaa !177
  %cmp703 = icmp eq i32 %inc692, 2, !dbg !502
  %cmp705 = icmp eq i32 %.rwrook.0, 7, !dbg !502
  %or.cond = and i1 %cmp703, %cmp705, !dbg !502
  br i1 %or.cond, label %if.then706, label %if.end709, !dbg !502

if.then706:                                       ; preds = %if.then701
  %add707 = add nsw i32 %add146, 35, !dbg !503
  call void @llvm.dbg.value(metadata !{i32 %add707}, i64 0, metadata !84), !dbg !503
  store i32 %add707, i32* %score, align 4, !dbg !503, !tbaa !177
  br label %if.end709, !dbg !505

if.end709:                                        ; preds = %if.then701, %if.then706, %sw.bb691
  %113 = phi i32 [ %add702, %if.then701 ], [ %add707, %if.then706 ], [ %add146, %sw.bb691 ]
  %idxprom710 = sext i32 %add149 to i64, !dbg !506
  %arrayidx712 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom710, !dbg !506
  %114 = load i32* %arrayidx712, align 4, !dbg !506, !tbaa !177
  %tobool713 = icmp eq i32 %114, 0, !dbg !506
  br i1 %tobool713, label %if.then714, label %for.inc997, !dbg !506

if.then714:                                       ; preds = %if.end709
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !507
  %add715 = add nsw i32 %113, 5, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %add715}, i64 0, metadata !84), !dbg !507
  %cmp716 = icmp eq i32 %inc692, 2, !dbg !509
  %cmp720 = icmp eq i32 %33, %.fwrook.0, !dbg !509
  %or.cond1795 = and i1 %cmp716, %cmp720, !dbg !509
  br i1 %or.cond1795, label %if.then721, label %if.end723, !dbg !509

if.then721:                                       ; preds = %if.then714
  %add722 = add nsw i32 %113, 17, !dbg !510
  call void @llvm.dbg.value(metadata !{i32 %add722}, i64 0, metadata !84), !dbg !510
  br label %if.end723, !dbg !512

if.end723:                                        ; preds = %if.then721, %if.then714
  %storemerge1797 = phi i32 [ %add722, %if.then721 ], [ %add715, %if.then714 ]
  %115 = phi i32 [ %add722, %if.then721 ], [ %add715, %if.then714 ]
  store i32 %storemerge1797, i32* %score, align 4, !dbg !507, !tbaa !177
  %arrayidx726 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom710, !dbg !513
  %116 = load i32* %arrayidx726, align 4, !dbg !513, !tbaa !177
  %tobool727 = icmp eq i32 %116, 0, !dbg !513
  br i1 %tobool727, label %if.then728, label %for.inc997, !dbg !513

if.then728:                                       ; preds = %if.end723
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !514
  %add729 = add nsw i32 %115, 3, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %add729}, i64 0, metadata !84), !dbg !514
  store i32 %add729, i32* %score, align 4, !dbg !514, !tbaa !177
  br label %for.inc997, !dbg !516

sw.bb732:                                         ; preds = %if.else132
  %inc733 = add nsw i32 %br.01767, 1, !dbg !517
  call void @llvm.dbg.value(metadata !{i32 %inc733}, i64 0, metadata !98), !dbg !517
  %cmp734 = icmp eq i32 %br.01767, 0, !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !100), !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !99), !dbg !521
  %.rbrook.0 = select i1 %cmp734, i32 %34, i32 %rbrook.01768, !dbg !518
  %.fbrook.0 = select i1 %cmp734, i32 %33, i32 %fbrook.01769, !dbg !518
  %cmp741 = icmp eq i32 %34, 2, !dbg !522
  br i1 %cmp741, label %if.then742, label %if.end750, !dbg !522

if.then742:                                       ; preds = %sw.bb732
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !523
  %sub743 = add nsw i32 %add146, -25, !dbg !523
  call void @llvm.dbg.value(metadata !{i32 %sub743}, i64 0, metadata !84), !dbg !523
  store i32 %sub743, i32* %score, align 4, !dbg !523, !tbaa !177
  %cmp744 = icmp eq i32 %wr.01766, 2, !dbg !525
  %cmp746 = icmp eq i32 %.rbrook.0, 2, !dbg !525
  %or.cond1719 = and i1 %cmp744, %cmp746, !dbg !525
  br i1 %or.cond1719, label %if.then747, label %if.end750, !dbg !525

if.then747:                                       ; preds = %if.then742
  %sub748 = add nsw i32 %add146, -35, !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %sub748}, i64 0, metadata !84), !dbg !526
  store i32 %sub748, i32* %score, align 4, !dbg !526, !tbaa !177
  br label %if.end750, !dbg !528

if.end750:                                        ; preds = %if.then742, %if.then747, %sw.bb732
  %117 = phi i32 [ %sub743, %if.then742 ], [ %sub748, %if.then747 ], [ %add146, %sw.bb732 ]
  %idxprom751 = sext i32 %add149 to i64, !dbg !529
  %arrayidx753 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom751, !dbg !529
  %118 = load i32* %arrayidx753, align 4, !dbg !529, !tbaa !177
  %tobool754 = icmp eq i32 %118, 0, !dbg !529
  br i1 %tobool754, label %if.then755, label %for.inc997, !dbg !529

if.then755:                                       ; preds = %if.end750
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !530
  %sub756 = add nsw i32 %117, -5, !dbg !530
  call void @llvm.dbg.value(metadata !{i32 %sub756}, i64 0, metadata !84), !dbg !530
  %cmp757 = icmp eq i32 %inc733, 2, !dbg !532
  %cmp761 = icmp eq i32 %33, %.fbrook.0, !dbg !532
  %or.cond1796 = and i1 %cmp757, %cmp761, !dbg !532
  br i1 %or.cond1796, label %if.then762, label %if.end764, !dbg !532

if.then762:                                       ; preds = %if.then755
  %sub763 = add nsw i32 %117, -17, !dbg !533
  call void @llvm.dbg.value(metadata !{i32 %sub763}, i64 0, metadata !84), !dbg !533
  br label %if.end764, !dbg !535

if.end764:                                        ; preds = %if.then762, %if.then755
  %storemerge = phi i32 [ %sub763, %if.then762 ], [ %sub756, %if.then755 ]
  %119 = phi i32 [ %sub763, %if.then762 ], [ %sub756, %if.then755 ]
  store i32 %storemerge, i32* %score, align 4, !dbg !530, !tbaa !177
  %arrayidx767 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom751, !dbg !536
  %120 = load i32* %arrayidx767, align 4, !dbg !536, !tbaa !177
  %tobool768 = icmp eq i32 %120, 0, !dbg !536
  br i1 %tobool768, label %if.then769, label %for.inc997, !dbg !536

if.then769:                                       ; preds = %if.end764
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !537
  %sub770 = add nsw i32 %119, -3, !dbg !537
  call void @llvm.dbg.value(metadata !{i32 %sub770}, i64 0, metadata !84), !dbg !537
  store i32 %sub770, i32* %score, align 4, !dbg !537, !tbaa !177
  br label %for.inc997, !dbg !539

sw.bb773:                                         ; preds = %if.else132
  %inc774 = add nsw i32 %wb.01762, 1, !dbg !540
  call void @llvm.dbg.value(metadata !{i32 %inc774}, i64 0, metadata !93), !dbg !540
  br label %for.inc997, !dbg !541

sw.bb775:                                         ; preds = %if.else132
  %inc776 = add nsw i32 %bb.01763, 1, !dbg !542
  call void @llvm.dbg.value(metadata !{i32 %inc776}, i64 0, metadata !94), !dbg !542
  br label %for.inc997, !dbg !543

sw.bb777:                                         ; preds = %if.else132
  %inc778 = add nsw i32 %wn.01760, 1, !dbg !544
  call void @llvm.dbg.value(metadata !{i32 %inc778}, i64 0, metadata !91), !dbg !544
  br label %for.inc997, !dbg !545

sw.bb779:                                         ; preds = %if.else132
  %inc780 = add nsw i32 %bn.01761, 1, !dbg !546
  call void @llvm.dbg.value(metadata !{i32 %inc780}, i64 0, metadata !92), !dbg !546
  br label %for.inc997, !dbg !547

sw.bb781:                                         ; preds = %if.else132
  %inc782 = add nsw i32 %wq.01764, 1, !dbg !548
  call void @llvm.dbg.value(metadata !{i32 %inc782}, i64 0, metadata !95), !dbg !548
  br label %for.inc997, !dbg !549

sw.bb783:                                         ; preds = %if.else132
  %inc784 = add nsw i32 %bq.01765, 1, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %inc784}, i64 0, metadata !96), !dbg !550
  br label %for.inc997, !dbg !551

sw.bb785:                                         ; preds = %if.else132
  %121 = load i32* @wmat, align 4, !dbg !552, !tbaa !177
  %cmp786 = icmp sgt i32 %121, 1300, !dbg !552
  br i1 %cmp786, label %if.then787, label %if.else883, !dbg !552

if.then787:                                       ; preds = %sw.bb785
  %arrayidx789 = getelementptr inbounds [144 x i32]* @swhite_king, i64 0, i64 %idxprom135, !dbg !553
  %122 = load i32* %arrayidx789, align 4, !dbg !553, !tbaa !177
  %add790 = add nsw i32 %122, %add146, !dbg !553
  call void @llvm.dbg.value(metadata !{i32 %add790}, i64 0, metadata !84), !dbg !553
  store i32 %add790, i32* %score, align 4, !dbg !553, !tbaa !177
  %123 = load i32* @white_castled, align 4, !dbg !555, !tbaa !177
  switch i32 %123, label %if.else798 [
    i32 2, label %if.then792
    i32 1, label %if.then796
  ], !dbg !555

if.then792:                                       ; preds = %if.then787
  %add793 = add nsw i32 %add790, 15, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %add793}, i64 0, metadata !84), !dbg !556
  store i32 %add793, i32* %score, align 4, !dbg !556, !tbaa !177
  br label %if.end811, !dbg !556

if.then796:                                       ; preds = %if.then787
  %add797 = add nsw i32 %add790, 25, !dbg !557
  call void @llvm.dbg.value(metadata !{i32 %add797}, i64 0, metadata !84), !dbg !557
  store i32 %add797, i32* %score, align 4, !dbg !557, !tbaa !177
  br label %if.end811, !dbg !557

if.else798:                                       ; preds = %if.then787
  %124 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !558, !tbaa !177
  %tobool799 = icmp eq i32 %124, 0, !dbg !558
  br i1 %tobool799, label %if.end811, label %if.then800, !dbg !558

if.then800:                                       ; preds = %if.else798
  %sub801 = add nsw i32 %add790, -10, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %sub801}, i64 0, metadata !84), !dbg !559
  store i32 %sub801, i32* %score, align 4, !dbg !559, !tbaa !177
  %idxprom802 = sext i32 %add149 to i64, !dbg !561
  %arrayidx804 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom802, !dbg !561
  %125 = load i32* %arrayidx804, align 4, !dbg !561, !tbaa !177
  %tobool805 = icmp eq i32 %125, 0, !dbg !561
  br i1 %tobool805, label %if.then806, label %if.end811, !dbg !561

if.then806:                                       ; preds = %if.then800
  %sub807 = add nsw i32 %add790, -25, !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %sub807}, i64 0, metadata !84), !dbg !562
  store i32 %sub807, i32* %score, align 4, !dbg !562, !tbaa !177
  br label %if.end811, !dbg !562

if.end811:                                        ; preds = %if.then800, %if.else798, %if.then796, %if.then806, %if.then792
  %126 = phi i32 [ %sub801, %if.then800 ], [ %add790, %if.else798 ], [ %add797, %if.then796 ], [ %sub807, %if.then806 ], [ %add793, %if.then792 ]
  %127 = load i32* @wking_loc, align 4, !dbg !563, !tbaa !177
  %idxprom812 = sext i32 %127 to i64, !dbg !563
  %arrayidx813 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom812, !dbg !563
  %128 = load i32* %arrayidx813, align 4, !dbg !563, !tbaa !177
  %.off1744 = add i32 %128, -4, !dbg !563
  %switch = icmp ult i32 %.off1744, 2, !dbg !563
  br i1 %switch, label %if.else880, label %if.then819, !dbg !563

if.then819:                                       ; preds = %if.end811
  %idxprom820 = sext i32 %add149 to i64, !dbg !564
  %arrayidx821 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom820, !dbg !564
  %129 = load i32* %arrayidx821, align 4, !dbg !564, !tbaa !177
  %cmp822 = icmp slt i32 %34, %129, !dbg !564
  br i1 %cmp822, label %land.lhs.true823, label %if.else835, !dbg !564

land.lhs.true823:                                 ; preds = %if.then819
  %arrayidx826 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom820, !dbg !564
  %130 = load i32* %arrayidx826, align 4, !dbg !564, !tbaa !177
  %tobool827 = icmp eq i32 %130, 0, !dbg !564
  br i1 %tobool827, label %if.else835, label %if.then828, !dbg !564

if.then828:                                       ; preds = %land.lhs.true823
  %sub831 = sub nsw i32 %129, %34, !dbg !566
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !566
  %131 = mul i32 %sub831, -9
  %mul833.neg = add i32 %131, 9, !dbg !566
  %sub834 = add i32 %mul833.neg, %126, !dbg !566
  call void @llvm.dbg.value(metadata !{i32 %sub834}, i64 0, metadata !84), !dbg !566
  br label %if.end837, !dbg !566

if.else835:                                       ; preds = %land.lhs.true823, %if.then819
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !567
  %sub836 = add nsw i32 %126, -22, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %sub836}, i64 0, metadata !84), !dbg !567
  br label %if.end837

if.end837:                                        ; preds = %if.else835, %if.then828
  %132 = phi i32 [ %sub836, %if.else835 ], [ %sub834, %if.then828 ]
  call void @llvm.dbg.value(metadata !{i32 %132}, i64 0, metadata !84), !dbg !566
  store i32 %132, i32* %score, align 4, !dbg !566, !tbaa !177
  %add838 = add nsw i32 %33, 2, !dbg !568
  %idxprom839 = sext i32 %add838 to i64, !dbg !568
  %arrayidx840 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom839, !dbg !568
  %133 = load i32* %arrayidx840, align 4, !dbg !568, !tbaa !177
  %cmp841 = icmp slt i32 %34, %133, !dbg !568
  br i1 %cmp841, label %land.lhs.true842, label %if.else856, !dbg !568

land.lhs.true842:                                 ; preds = %if.end837
  %arrayidx846 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom839, !dbg !568
  %134 = load i32* %arrayidx846, align 4, !dbg !568, !tbaa !177
  %tobool847 = icmp eq i32 %134, 0, !dbg !568
  br i1 %tobool847, label %if.else856, label %if.then848, !dbg !568

if.then848:                                       ; preds = %land.lhs.true842
  %sub852 = sub nsw i32 %133, %34, !dbg !569
  %sub853 = shl i32 %sub852, 3, !dbg !569
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !569
  %mul854.neg = add i32 %132, 8, !dbg !569
  %sub855 = sub i32 %mul854.neg, %sub853, !dbg !569
  call void @llvm.dbg.value(metadata !{i32 %sub855}, i64 0, metadata !84), !dbg !569
  br label %if.end858, !dbg !569

if.else856:                                       ; preds = %land.lhs.true842, %if.end837
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !570
  %sub857 = add nsw i32 %132, -16, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %sub857}, i64 0, metadata !84), !dbg !570
  br label %if.end858

if.end858:                                        ; preds = %if.else856, %if.then848
  %135 = phi i32 [ %sub857, %if.else856 ], [ %sub855, %if.then848 ]
  call void @llvm.dbg.value(metadata !{i32 %135}, i64 0, metadata !84), !dbg !569
  store i32 %135, i32* %score, align 4, !dbg !569, !tbaa !177
  %idxprom860 = sext i32 %33 to i64, !dbg !571
  %arrayidx861 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom860, !dbg !571
  %136 = load i32* %arrayidx861, align 4, !dbg !571, !tbaa !177
  %cmp862 = icmp slt i32 %34, %136, !dbg !571
  br i1 %cmp862, label %land.lhs.true863, label %if.else877, !dbg !571

land.lhs.true863:                                 ; preds = %if.end858
  %arrayidx867 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom860, !dbg !571
  %137 = load i32* %arrayidx867, align 4, !dbg !571, !tbaa !177
  %tobool868 = icmp eq i32 %137, 0, !dbg !571
  br i1 %tobool868, label %if.else877, label %if.then869, !dbg !571

if.then869:                                       ; preds = %land.lhs.true863
  %sub873 = sub nsw i32 %136, %34, !dbg !572
  %sub874 = shl i32 %sub873, 3, !dbg !572
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !572
  %mul875.neg = add i32 %135, 8, !dbg !572
  %sub876 = sub i32 %mul875.neg, %sub874, !dbg !572
  call void @llvm.dbg.value(metadata !{i32 %sub876}, i64 0, metadata !84), !dbg !572
  store i32 %sub876, i32* %score, align 4, !dbg !572, !tbaa !177
  br label %for.inc997, !dbg !572

if.else877:                                       ; preds = %land.lhs.true863, %if.end858
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !573
  %sub878 = add nsw i32 %135, -16, !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %sub878}, i64 0, metadata !84), !dbg !573
  store i32 %sub878, i32* %score, align 4, !dbg !573, !tbaa !177
  br label %for.inc997

if.else880:                                       ; preds = %if.end811
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !574
  %sub881 = add nsw i32 %126, -10, !dbg !574
  call void @llvm.dbg.value(metadata !{i32 %sub881}, i64 0, metadata !84), !dbg !574
  store i32 %sub881, i32* %score, align 4, !dbg !574, !tbaa !177
  br label %for.inc997

if.else883:                                       ; preds = %sw.bb785
  %arrayidx885 = getelementptr inbounds [144 x i32]* @send_king, i64 0, i64 %idxprom135, !dbg !576
  %138 = load i32* %arrayidx885, align 4, !dbg !576, !tbaa !177
  %add886 = add nsw i32 %138, %add146, !dbg !576
  call void @llvm.dbg.value(metadata !{i32 %add886}, i64 0, metadata !84), !dbg !576
  store i32 %add886, i32* %score, align 4, !dbg !576, !tbaa !177
  br label %for.inc997

sw.bb888:                                         ; preds = %if.else132
  %139 = load i32* @bmat, align 4, !dbg !578, !tbaa !177
  %cmp889 = icmp sgt i32 %139, 1300, !dbg !578
  br i1 %cmp889, label %if.then890, label %if.else992, !dbg !578

if.then890:                                       ; preds = %sw.bb888
  %arrayidx892 = getelementptr inbounds [144 x i32]* @sblack_king, i64 0, i64 %idxprom135, !dbg !579
  %140 = load i32* %arrayidx892, align 4, !dbg !579, !tbaa !177
  %sub893 = sub nsw i32 %add146, %140, !dbg !579
  call void @llvm.dbg.value(metadata !{i32 %sub893}, i64 0, metadata !84), !dbg !579
  store i32 %sub893, i32* %score, align 4, !dbg !579, !tbaa !177
  %141 = load i32* @black_castled, align 4, !dbg !581, !tbaa !177
  switch i32 %141, label %if.else901 [
    i32 4, label %if.then895
    i32 3, label %if.then899
  ], !dbg !581

if.then895:                                       ; preds = %if.then890
  %sub896 = add nsw i32 %sub893, -15, !dbg !582
  call void @llvm.dbg.value(metadata !{i32 %sub896}, i64 0, metadata !84), !dbg !582
  store i32 %sub896, i32* %score, align 4, !dbg !582, !tbaa !177
  br label %if.end914, !dbg !582

if.then899:                                       ; preds = %if.then890
  %sub900 = add nsw i32 %sub893, -25, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %sub900}, i64 0, metadata !84), !dbg !583
  store i32 %sub900, i32* %score, align 4, !dbg !583, !tbaa !177
  br label %if.end914, !dbg !583

if.else901:                                       ; preds = %if.then890
  %142 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !584, !tbaa !177
  %tobool902 = icmp eq i32 %142, 0, !dbg !584
  br i1 %tobool902, label %if.end914, label %if.then903, !dbg !584

if.then903:                                       ; preds = %if.else901
  %add904 = add nsw i32 %sub893, 10, !dbg !585
  call void @llvm.dbg.value(metadata !{i32 %add904}, i64 0, metadata !84), !dbg !585
  store i32 %add904, i32* %score, align 4, !dbg !585, !tbaa !177
  %idxprom905 = sext i32 %add149 to i64, !dbg !587
  %arrayidx907 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom905, !dbg !587
  %143 = load i32* %arrayidx907, align 4, !dbg !587, !tbaa !177
  %tobool908 = icmp eq i32 %143, 0, !dbg !587
  br i1 %tobool908, label %if.then909, label %if.end914, !dbg !587

if.then909:                                       ; preds = %if.then903
  %add910 = add nsw i32 %sub893, 25, !dbg !588
  call void @llvm.dbg.value(metadata !{i32 %add910}, i64 0, metadata !84), !dbg !588
  store i32 %add910, i32* %score, align 4, !dbg !588, !tbaa !177
  br label %if.end914, !dbg !588

if.end914:                                        ; preds = %if.then903, %if.else901, %if.then899, %if.then909, %if.then895
  %144 = phi i32 [ %add904, %if.then903 ], [ %sub893, %if.else901 ], [ %sub900, %if.then899 ], [ %add910, %if.then909 ], [ %sub896, %if.then895 ]
  %145 = load i32* @bking_loc, align 4, !dbg !589, !tbaa !177
  %idxprom915 = sext i32 %145 to i64, !dbg !589
  %arrayidx916 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom915, !dbg !589
  %146 = load i32* %arrayidx916, align 4, !dbg !589, !tbaa !177
  %.off1745 = add i32 %146, -4, !dbg !589
  %switch1746 = icmp ult i32 %.off1745, 2, !dbg !589
  br i1 %switch1746, label %if.else989, label %if.then922, !dbg !589

if.then922:                                       ; preds = %if.end914
  %idxprom923 = sext i32 %add149 to i64, !dbg !590
  %arrayidx924 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom923, !dbg !590
  %147 = load i32* %arrayidx924, align 4, !dbg !590, !tbaa !177
  %cmp925 = icmp sgt i32 %34, %147, !dbg !590
  br i1 %cmp925, label %land.lhs.true926, label %if.else940, !dbg !590

land.lhs.true926:                                 ; preds = %if.then922
  %arrayidx929 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom923, !dbg !590
  %148 = load i32* %arrayidx929, align 4, !dbg !590, !tbaa !177
  %tobool930 = icmp eq i32 %148, 0, !dbg !590
  br i1 %tobool930, label %if.else940, label %if.then931, !dbg !590

if.then931:                                       ; preds = %land.lhs.true926
  %sub934 = add i32 %34, -1, !dbg !592
  %sub935 = sub i32 %sub934, %147, !dbg !592
  %idxprom936 = sext i32 %sub935 to i64, !dbg !592
  %arrayidx937 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom936, !dbg !592
  %149 = load i32* %arrayidx937, align 4, !dbg !592, !tbaa !177
  %mul938 = mul nsw i32 %149, 9, !dbg !592
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !592
  %add939 = add nsw i32 %144, %mul938, !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %add939}, i64 0, metadata !84), !dbg !592
  br label %if.end942, !dbg !592

if.else940:                                       ; preds = %land.lhs.true926, %if.then922
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !593
  %add941 = add nsw i32 %144, 22, !dbg !593
  call void @llvm.dbg.value(metadata !{i32 %add941}, i64 0, metadata !84), !dbg !593
  br label %if.end942

if.end942:                                        ; preds = %if.else940, %if.then931
  %150 = phi i32 [ %add941, %if.else940 ], [ %add939, %if.then931 ]
  call void @llvm.dbg.value(metadata !{i32 %150}, i64 0, metadata !84), !dbg !592
  store i32 %150, i32* %score, align 4, !dbg !592, !tbaa !177
  %add943 = add nsw i32 %33, 2, !dbg !594
  %idxprom944 = sext i32 %add943 to i64, !dbg !594
  %arrayidx945 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom944, !dbg !594
  %151 = load i32* %arrayidx945, align 4, !dbg !594, !tbaa !177
  %cmp946 = icmp sgt i32 %34, %151, !dbg !594
  br i1 %cmp946, label %land.lhs.true947, label %if.else963, !dbg !594

land.lhs.true947:                                 ; preds = %if.end942
  %arrayidx951 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom944, !dbg !594
  %152 = load i32* %arrayidx951, align 4, !dbg !594, !tbaa !177
  %tobool952 = icmp eq i32 %152, 0, !dbg !594
  br i1 %tobool952, label %if.else963, label %if.then953, !dbg !594

if.then953:                                       ; preds = %land.lhs.true947
  %sub957 = add i32 %34, -1, !dbg !595
  %sub958 = sub i32 %sub957, %151, !dbg !595
  %idxprom959 = sext i32 %sub958 to i64, !dbg !595
  %arrayidx960 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom959, !dbg !595
  %153 = load i32* %arrayidx960, align 4, !dbg !595, !tbaa !177
  %mul961 = shl i32 %153, 3, !dbg !595
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !595
  %add962 = add nsw i32 %mul961, %150, !dbg !595
  call void @llvm.dbg.value(metadata !{i32 %add962}, i64 0, metadata !84), !dbg !595
  br label %if.end965, !dbg !595

if.else963:                                       ; preds = %land.lhs.true947, %if.end942
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !596
  %add964 = add nsw i32 %150, 16, !dbg !596
  call void @llvm.dbg.value(metadata !{i32 %add964}, i64 0, metadata !84), !dbg !596
  br label %if.end965

if.end965:                                        ; preds = %if.else963, %if.then953
  %154 = phi i32 [ %add964, %if.else963 ], [ %add962, %if.then953 ]
  call void @llvm.dbg.value(metadata !{i32 %154}, i64 0, metadata !84), !dbg !595
  store i32 %154, i32* %score, align 4, !dbg !595, !tbaa !177
  %idxprom967 = sext i32 %33 to i64, !dbg !597
  %arrayidx968 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom967, !dbg !597
  %155 = load i32* %arrayidx968, align 4, !dbg !597, !tbaa !177
  %cmp969 = icmp sgt i32 %34, %155, !dbg !597
  br i1 %cmp969, label %land.lhs.true970, label %if.else986, !dbg !597

land.lhs.true970:                                 ; preds = %if.end965
  %arrayidx974 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom967, !dbg !597
  %156 = load i32* %arrayidx974, align 4, !dbg !597, !tbaa !177
  %tobool975 = icmp eq i32 %156, 0, !dbg !597
  br i1 %tobool975, label %if.else986, label %if.then976, !dbg !597

if.then976:                                       ; preds = %land.lhs.true970
  %sub980 = add i32 %34, -1, !dbg !598
  %sub981 = sub i32 %sub980, %155, !dbg !598
  %idxprom982 = sext i32 %sub981 to i64, !dbg !598
  %arrayidx983 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom982, !dbg !598
  %157 = load i32* %arrayidx983, align 4, !dbg !598, !tbaa !177
  %mul984 = shl i32 %157, 3, !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !598
  %add985 = add nsw i32 %mul984, %154, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %add985}, i64 0, metadata !84), !dbg !598
  store i32 %add985, i32* %score, align 4, !dbg !598, !tbaa !177
  br label %for.inc997, !dbg !598

if.else986:                                       ; preds = %land.lhs.true970, %if.end965
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !599
  %add987 = add nsw i32 %154, 16, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %add987}, i64 0, metadata !84), !dbg !599
  store i32 %add987, i32* %score, align 4, !dbg !599, !tbaa !177
  br label %for.inc997

if.else989:                                       ; preds = %if.end914
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !600
  %add990 = add nsw i32 %144, 10, !dbg !600
  call void @llvm.dbg.value(metadata !{i32 %add990}, i64 0, metadata !84), !dbg !600
  store i32 %add990, i32* %score, align 4, !dbg !600, !tbaa !177
  br label %for.inc997

if.else992:                                       ; preds = %sw.bb888
  %arrayidx994 = getelementptr inbounds [144 x i32]* @send_king, i64 0, i64 %idxprom135, !dbg !602
  %158 = load i32* %arrayidx994, align 4, !dbg !602, !tbaa !177
  %sub995 = sub nsw i32 %add146, %158, !dbg !602
  call void @llvm.dbg.value(metadata !{i32 %sub995}, i64 0, metadata !84), !dbg !602
  store i32 %sub995, i32* %score, align 4, !dbg !602, !tbaa !177
  br label %for.inc997

for.inc997:                                       ; preds = %if.end764, %if.end750, %if.end723, %if.end709, %if.end682, %if.end411, %if.else132, %for.body127, %sw.bb773, %sw.bb775, %sw.bb777, %sw.bb779, %sw.bb781, %sw.bb783, %if.then417, %if.then688, %if.then728, %if.then769, %if.else880, %if.else877, %if.then869, %if.else883, %if.else989, %if.else986, %if.then976, %if.else992
  %a.3 = phi i32 [ %inc133, %if.then976 ], [ %inc133, %if.else986 ], [ %inc133, %if.else989 ], [ %inc133, %if.else992 ], [ %inc133, %if.then869 ], [ %inc133, %if.else877 ], [ %inc133, %if.else880 ], [ %inc133, %if.else883 ], [ %inc133, %sw.bb783 ], [ %inc133, %sw.bb781 ], [ %inc133, %sw.bb779 ], [ %inc133, %sw.bb777 ], [ %inc133, %sw.bb775 ], [ %inc133, %sw.bb773 ], [ %inc133, %if.then769 ], [ %inc133, %if.then728 ], [ %inc133, %if.then688 ], [ %inc133, %if.then417 ], [ %a.21756, %for.body127 ], [ %inc133, %if.else132 ], [ %inc133, %if.end411 ], [ %inc133, %if.end682 ], [ %inc133, %if.end709 ], [ %inc133, %if.end723 ], [ %inc133, %if.end750 ], [ %inc133, %if.end764 ]
  %wp.1 = phi i32 [ %wp.01758, %if.then976 ], [ %wp.01758, %if.else986 ], [ %wp.01758, %if.else989 ], [ %wp.01758, %if.else992 ], [ %wp.01758, %if.then869 ], [ %wp.01758, %if.else877 ], [ %wp.01758, %if.else880 ], [ %wp.01758, %if.else883 ], [ %wp.01758, %sw.bb783 ], [ %wp.01758, %sw.bb781 ], [ %wp.01758, %sw.bb779 ], [ %wp.01758, %sw.bb777 ], [ %wp.01758, %sw.bb775 ], [ %wp.01758, %sw.bb773 ], [ %wp.01758, %if.then769 ], [ %wp.01758, %if.then728 ], [ %wp.01758, %if.then688 ], [ %inc157, %if.then417 ], [ %wp.01758, %for.body127 ], [ %wp.01758, %if.else132 ], [ %inc157, %if.end411 ], [ %wp.01758, %if.end682 ], [ %wp.01758, %if.end709 ], [ %wp.01758, %if.end723 ], [ %wp.01758, %if.end750 ], [ %wp.01758, %if.end764 ]
  %bp.1 = phi i32 [ %bp.01759, %if.then976 ], [ %bp.01759, %if.else986 ], [ %bp.01759, %if.else989 ], [ %bp.01759, %if.else992 ], [ %bp.01759, %if.then869 ], [ %bp.01759, %if.else877 ], [ %bp.01759, %if.else880 ], [ %bp.01759, %if.else883 ], [ %bp.01759, %sw.bb783 ], [ %bp.01759, %sw.bb781 ], [ %bp.01759, %sw.bb779 ], [ %bp.01759, %sw.bb777 ], [ %bp.01759, %sw.bb775 ], [ %bp.01759, %sw.bb773 ], [ %bp.01759, %if.then769 ], [ %bp.01759, %if.then728 ], [ %inc424, %if.then688 ], [ %bp.01759, %if.then417 ], [ %bp.01759, %for.body127 ], [ %bp.01759, %if.else132 ], [ %bp.01759, %if.end411 ], [ %inc424, %if.end682 ], [ %bp.01759, %if.end709 ], [ %bp.01759, %if.end723 ], [ %bp.01759, %if.end750 ], [ %bp.01759, %if.end764 ]
  %wn.1 = phi i32 [ %wn.01760, %if.then976 ], [ %wn.01760, %if.else986 ], [ %wn.01760, %if.else989 ], [ %wn.01760, %if.else992 ], [ %wn.01760, %if.then869 ], [ %wn.01760, %if.else877 ], [ %wn.01760, %if.else880 ], [ %wn.01760, %if.else883 ], [ %wn.01760, %sw.bb783 ], [ %wn.01760, %sw.bb781 ], [ %wn.01760, %sw.bb779 ], [ %inc778, %sw.bb777 ], [ %wn.01760, %sw.bb775 ], [ %wn.01760, %sw.bb773 ], [ %wn.01760, %if.then769 ], [ %wn.01760, %if.then728 ], [ %wn.01760, %if.then688 ], [ %wn.01760, %if.then417 ], [ %wn.01760, %for.body127 ], [ %wn.01760, %if.else132 ], [ %wn.01760, %if.end411 ], [ %wn.01760, %if.end682 ], [ %wn.01760, %if.end709 ], [ %wn.01760, %if.end723 ], [ %wn.01760, %if.end750 ], [ %wn.01760, %if.end764 ]
  %bn.1 = phi i32 [ %bn.01761, %if.then976 ], [ %bn.01761, %if.else986 ], [ %bn.01761, %if.else989 ], [ %bn.01761, %if.else992 ], [ %bn.01761, %if.then869 ], [ %bn.01761, %if.else877 ], [ %bn.01761, %if.else880 ], [ %bn.01761, %if.else883 ], [ %bn.01761, %sw.bb783 ], [ %bn.01761, %sw.bb781 ], [ %inc780, %sw.bb779 ], [ %bn.01761, %sw.bb777 ], [ %bn.01761, %sw.bb775 ], [ %bn.01761, %sw.bb773 ], [ %bn.01761, %if.then769 ], [ %bn.01761, %if.then728 ], [ %bn.01761, %if.then688 ], [ %bn.01761, %if.then417 ], [ %bn.01761, %for.body127 ], [ %bn.01761, %if.else132 ], [ %bn.01761, %if.end411 ], [ %bn.01761, %if.end682 ], [ %bn.01761, %if.end709 ], [ %bn.01761, %if.end723 ], [ %bn.01761, %if.end750 ], [ %bn.01761, %if.end764 ]
  %wb.1 = phi i32 [ %wb.01762, %if.then976 ], [ %wb.01762, %if.else986 ], [ %wb.01762, %if.else989 ], [ %wb.01762, %if.else992 ], [ %wb.01762, %if.then869 ], [ %wb.01762, %if.else877 ], [ %wb.01762, %if.else880 ], [ %wb.01762, %if.else883 ], [ %wb.01762, %sw.bb783 ], [ %wb.01762, %sw.bb781 ], [ %wb.01762, %sw.bb779 ], [ %wb.01762, %sw.bb777 ], [ %wb.01762, %sw.bb775 ], [ %inc774, %sw.bb773 ], [ %wb.01762, %if.then769 ], [ %wb.01762, %if.then728 ], [ %wb.01762, %if.then688 ], [ %wb.01762, %if.then417 ], [ %wb.01762, %for.body127 ], [ %wb.01762, %if.else132 ], [ %wb.01762, %if.end411 ], [ %wb.01762, %if.end682 ], [ %wb.01762, %if.end709 ], [ %wb.01762, %if.end723 ], [ %wb.01762, %if.end750 ], [ %wb.01762, %if.end764 ]
  %bb.1 = phi i32 [ %bb.01763, %if.then976 ], [ %bb.01763, %if.else986 ], [ %bb.01763, %if.else989 ], [ %bb.01763, %if.else992 ], [ %bb.01763, %if.then869 ], [ %bb.01763, %if.else877 ], [ %bb.01763, %if.else880 ], [ %bb.01763, %if.else883 ], [ %bb.01763, %sw.bb783 ], [ %bb.01763, %sw.bb781 ], [ %bb.01763, %sw.bb779 ], [ %bb.01763, %sw.bb777 ], [ %inc776, %sw.bb775 ], [ %bb.01763, %sw.bb773 ], [ %bb.01763, %if.then769 ], [ %bb.01763, %if.then728 ], [ %bb.01763, %if.then688 ], [ %bb.01763, %if.then417 ], [ %bb.01763, %for.body127 ], [ %bb.01763, %if.else132 ], [ %bb.01763, %if.end411 ], [ %bb.01763, %if.end682 ], [ %bb.01763, %if.end709 ], [ %bb.01763, %if.end723 ], [ %bb.01763, %if.end750 ], [ %bb.01763, %if.end764 ]
  %wq.1 = phi i32 [ %wq.01764, %if.then976 ], [ %wq.01764, %if.else986 ], [ %wq.01764, %if.else989 ], [ %wq.01764, %if.else992 ], [ %wq.01764, %if.then869 ], [ %wq.01764, %if.else877 ], [ %wq.01764, %if.else880 ], [ %wq.01764, %if.else883 ], [ %wq.01764, %sw.bb783 ], [ %inc782, %sw.bb781 ], [ %wq.01764, %sw.bb779 ], [ %wq.01764, %sw.bb777 ], [ %wq.01764, %sw.bb775 ], [ %wq.01764, %sw.bb773 ], [ %wq.01764, %if.then769 ], [ %wq.01764, %if.then728 ], [ %wq.01764, %if.then688 ], [ %wq.01764, %if.then417 ], [ %wq.01764, %for.body127 ], [ %wq.01764, %if.else132 ], [ %wq.01764, %if.end411 ], [ %wq.01764, %if.end682 ], [ %wq.01764, %if.end709 ], [ %wq.01764, %if.end723 ], [ %wq.01764, %if.end750 ], [ %wq.01764, %if.end764 ]
  %bq.1 = phi i32 [ %bq.01765, %if.then976 ], [ %bq.01765, %if.else986 ], [ %bq.01765, %if.else989 ], [ %bq.01765, %if.else992 ], [ %bq.01765, %if.then869 ], [ %bq.01765, %if.else877 ], [ %bq.01765, %if.else880 ], [ %bq.01765, %if.else883 ], [ %inc784, %sw.bb783 ], [ %bq.01765, %sw.bb781 ], [ %bq.01765, %sw.bb779 ], [ %bq.01765, %sw.bb777 ], [ %bq.01765, %sw.bb775 ], [ %bq.01765, %sw.bb773 ], [ %bq.01765, %if.then769 ], [ %bq.01765, %if.then728 ], [ %bq.01765, %if.then688 ], [ %bq.01765, %if.then417 ], [ %bq.01765, %for.body127 ], [ %bq.01765, %if.else132 ], [ %bq.01765, %if.end411 ], [ %bq.01765, %if.end682 ], [ %bq.01765, %if.end709 ], [ %bq.01765, %if.end723 ], [ %bq.01765, %if.end750 ], [ %bq.01765, %if.end764 ]
  %wr.1 = phi i32 [ %wr.01766, %if.then976 ], [ %wr.01766, %if.else986 ], [ %wr.01766, %if.else989 ], [ %wr.01766, %if.else992 ], [ %wr.01766, %if.then869 ], [ %wr.01766, %if.else877 ], [ %wr.01766, %if.else880 ], [ %wr.01766, %if.else883 ], [ %wr.01766, %sw.bb783 ], [ %wr.01766, %sw.bb781 ], [ %wr.01766, %sw.bb779 ], [ %wr.01766, %sw.bb777 ], [ %wr.01766, %sw.bb775 ], [ %wr.01766, %sw.bb773 ], [ %wr.01766, %if.then769 ], [ %inc692, %if.then728 ], [ %wr.01766, %if.then688 ], [ %wr.01766, %if.then417 ], [ %wr.01766, %for.body127 ], [ %wr.01766, %if.else132 ], [ %wr.01766, %if.end411 ], [ %wr.01766, %if.end682 ], [ %inc692, %if.end709 ], [ %inc692, %if.end723 ], [ %wr.01766, %if.end750 ], [ %wr.01766, %if.end764 ]
  %br.1 = phi i32 [ %br.01767, %if.then976 ], [ %br.01767, %if.else986 ], [ %br.01767, %if.else989 ], [ %br.01767, %if.else992 ], [ %br.01767, %if.then869 ], [ %br.01767, %if.else877 ], [ %br.01767, %if.else880 ], [ %br.01767, %if.else883 ], [ %br.01767, %sw.bb783 ], [ %br.01767, %sw.bb781 ], [ %br.01767, %sw.bb779 ], [ %br.01767, %sw.bb777 ], [ %br.01767, %sw.bb775 ], [ %br.01767, %sw.bb773 ], [ %inc733, %if.then769 ], [ %br.01767, %if.then728 ], [ %br.01767, %if.then688 ], [ %br.01767, %if.then417 ], [ %br.01767, %for.body127 ], [ %br.01767, %if.else132 ], [ %br.01767, %if.end411 ], [ %br.01767, %if.end682 ], [ %br.01767, %if.end709 ], [ %br.01767, %if.end723 ], [ %inc733, %if.end750 ], [ %inc733, %if.end764 ]
  %rbrook.2 = phi i32 [ %rbrook.01768, %if.then976 ], [ %rbrook.01768, %if.else986 ], [ %rbrook.01768, %if.else989 ], [ %rbrook.01768, %if.else992 ], [ %rbrook.01768, %if.then869 ], [ %rbrook.01768, %if.else877 ], [ %rbrook.01768, %if.else880 ], [ %rbrook.01768, %if.else883 ], [ %rbrook.01768, %sw.bb783 ], [ %rbrook.01768, %sw.bb781 ], [ %rbrook.01768, %sw.bb779 ], [ %rbrook.01768, %sw.bb777 ], [ %rbrook.01768, %sw.bb775 ], [ %rbrook.01768, %sw.bb773 ], [ %.rbrook.0, %if.then769 ], [ %rbrook.01768, %if.then728 ], [ %rbrook.01768, %if.then688 ], [ %rbrook.01768, %if.then417 ], [ %rbrook.01768, %for.body127 ], [ %rbrook.01768, %if.else132 ], [ %rbrook.01768, %if.end411 ], [ %rbrook.01768, %if.end682 ], [ %rbrook.01768, %if.end709 ], [ %rbrook.01768, %if.end723 ], [ %.rbrook.0, %if.end750 ], [ %.rbrook.0, %if.end764 ]
  %fbrook.2 = phi i32 [ %fbrook.01769, %if.then976 ], [ %fbrook.01769, %if.else986 ], [ %fbrook.01769, %if.else989 ], [ %fbrook.01769, %if.else992 ], [ %fbrook.01769, %if.then869 ], [ %fbrook.01769, %if.else877 ], [ %fbrook.01769, %if.else880 ], [ %fbrook.01769, %if.else883 ], [ %fbrook.01769, %sw.bb783 ], [ %fbrook.01769, %sw.bb781 ], [ %fbrook.01769, %sw.bb779 ], [ %fbrook.01769, %sw.bb777 ], [ %fbrook.01769, %sw.bb775 ], [ %fbrook.01769, %sw.bb773 ], [ %.fbrook.0, %if.then769 ], [ %fbrook.01769, %if.then728 ], [ %fbrook.01769, %if.then688 ], [ %fbrook.01769, %if.then417 ], [ %fbrook.01769, %for.body127 ], [ %fbrook.01769, %if.else132 ], [ %fbrook.01769, %if.end411 ], [ %fbrook.01769, %if.end682 ], [ %fbrook.01769, %if.end709 ], [ %fbrook.01769, %if.end723 ], [ %.fbrook.0, %if.end750 ], [ %.fbrook.0, %if.end764 ]
  %rwrook.2 = phi i32 [ %rwrook.01770, %if.then976 ], [ %rwrook.01770, %if.else986 ], [ %rwrook.01770, %if.else989 ], [ %rwrook.01770, %if.else992 ], [ %rwrook.01770, %if.then869 ], [ %rwrook.01770, %if.else877 ], [ %rwrook.01770, %if.else880 ], [ %rwrook.01770, %if.else883 ], [ %rwrook.01770, %sw.bb783 ], [ %rwrook.01770, %sw.bb781 ], [ %rwrook.01770, %sw.bb779 ], [ %rwrook.01770, %sw.bb777 ], [ %rwrook.01770, %sw.bb775 ], [ %rwrook.01770, %sw.bb773 ], [ %rwrook.01770, %if.then769 ], [ %.rwrook.0, %if.then728 ], [ %rwrook.01770, %if.then688 ], [ %rwrook.01770, %if.then417 ], [ %rwrook.01770, %for.body127 ], [ %rwrook.01770, %if.else132 ], [ %rwrook.01770, %if.end411 ], [ %rwrook.01770, %if.end682 ], [ %.rwrook.0, %if.end709 ], [ %.rwrook.0, %if.end723 ], [ %rwrook.01770, %if.end750 ], [ %rwrook.01770, %if.end764 ]
  %fwrook.2 = phi i32 [ %fwrook.01771, %if.then976 ], [ %fwrook.01771, %if.else986 ], [ %fwrook.01771, %if.else989 ], [ %fwrook.01771, %if.else992 ], [ %fwrook.01771, %if.then869 ], [ %fwrook.01771, %if.else877 ], [ %fwrook.01771, %if.else880 ], [ %fwrook.01771, %if.else883 ], [ %fwrook.01771, %sw.bb783 ], [ %fwrook.01771, %sw.bb781 ], [ %fwrook.01771, %sw.bb779 ], [ %fwrook.01771, %sw.bb777 ], [ %fwrook.01771, %sw.bb775 ], [ %fwrook.01771, %sw.bb773 ], [ %fwrook.01771, %if.then769 ], [ %.fwrook.0, %if.then728 ], [ %fwrook.01771, %if.then688 ], [ %fwrook.01771, %if.then417 ], [ %fwrook.01771, %for.body127 ], [ %fwrook.01771, %if.else132 ], [ %fwrook.01771, %if.end411 ], [ %fwrook.01771, %if.end682 ], [ %.fwrook.0, %if.end709 ], [ %.fwrook.0, %if.end723 ], [ %fwrook.01771, %if.end750 ], [ %fwrook.01771, %if.end764 ]
  %wpotential.3 = phi i32 [ %wpotential.01772, %if.then976 ], [ %wpotential.01772, %if.else986 ], [ %wpotential.01772, %if.else989 ], [ %wpotential.01772, %if.else992 ], [ %wpotential.01772, %if.then869 ], [ %wpotential.01772, %if.else877 ], [ %wpotential.01772, %if.else880 ], [ %wpotential.01772, %if.else883 ], [ %wpotential.01772, %sw.bb783 ], [ %wpotential.01772, %sw.bb781 ], [ %wpotential.01772, %sw.bb779 ], [ %wpotential.01772, %sw.bb777 ], [ %wpotential.01772, %sw.bb775 ], [ %wpotential.01772, %sw.bb773 ], [ %wpotential.01772, %if.then769 ], [ %wpotential.01772, %if.then728 ], [ %wpotential.01772, %if.then688 ], [ %wpotential.2, %if.then417 ], [ %wpotential.01772, %for.body127 ], [ %wpotential.01772, %if.else132 ], [ %wpotential.2, %if.end411 ], [ %wpotential.01772, %if.end682 ], [ %wpotential.01772, %if.end709 ], [ %wpotential.01772, %if.end723 ], [ %wpotential.01772, %if.end750 ], [ %wpotential.01772, %if.end764 ]
  %bpotential.3 = phi i32 [ %bpotential.01773, %if.then976 ], [ %bpotential.01773, %if.else986 ], [ %bpotential.01773, %if.else989 ], [ %bpotential.01773, %if.else992 ], [ %bpotential.01773, %if.then869 ], [ %bpotential.01773, %if.else877 ], [ %bpotential.01773, %if.else880 ], [ %bpotential.01773, %if.else883 ], [ %bpotential.01773, %sw.bb783 ], [ %bpotential.01773, %sw.bb781 ], [ %bpotential.01773, %sw.bb779 ], [ %bpotential.01773, %sw.bb777 ], [ %bpotential.01773, %sw.bb775 ], [ %bpotential.01773, %sw.bb773 ], [ %bpotential.01773, %if.then769 ], [ %bpotential.01773, %if.then728 ], [ %bpotential.2, %if.then688 ], [ %bpotential.01773, %if.then417 ], [ %bpotential.01773, %for.body127 ], [ %bpotential.01773, %if.else132 ], [ %bpotential.01773, %if.end411 ], [ %bpotential.2, %if.end682 ], [ %bpotential.01773, %if.end709 ], [ %bpotential.01773, %if.end723 ], [ %bpotential.01773, %if.end750 ], [ %bpotential.01773, %if.end764 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !337
  %159 = load i32* @piece_count, align 4, !dbg !337, !tbaa !177
  %cmp126 = icmp sgt i32 %a.3, %159, !dbg !337
  br i1 %cmp126, label %for.cond125.for.end999_crit_edge, label %for.body127, !dbg !337

for.cond125.for.end999_crit_edge:                 ; preds = %for.inc997
  %.pre = load i32* @wmat, align 4, !dbg !604, !tbaa !177
  %.pre1793 = load i32* @bmat, align 4, !dbg !604, !tbaa !177
  br label %for.end999, !dbg !337

for.end999:                                       ; preds = %for.end, %for.cond125.for.end999_crit_edge, %for.cond125.preheader
  %160 = phi i32 [ %.pre1793, %for.cond125.for.end999_crit_edge ], [ %27, %for.cond125.preheader ], [ 0, %for.end ]
  %161 = phi i32 [ %.pre, %for.cond125.for.end999_crit_edge ], [ %28, %for.cond125.preheader ], [ 0, %for.end ]
  %bpotential.0.lcssa = phi i32 [ %bpotential.3, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %wpotential.0.lcssa = phi i32 [ %wpotential.3, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %br.0.lcssa = phi i32 [ %br.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %wr.0.lcssa = phi i32 [ %wr.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %bq.0.lcssa = phi i32 [ %bq.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %wq.0.lcssa = phi i32 [ %wq.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %bb.0.lcssa = phi i32 [ %bb.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %wb.0.lcssa = phi i32 [ %wb.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %bn.0.lcssa = phi i32 [ %bn.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %wn.0.lcssa = phi i32 [ %wn.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %bp.0.lcssa = phi i32 [ %bp.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %wp.0.lcssa = phi i32 [ %wp.1, %for.cond125.for.end999_crit_edge ], [ 0, %for.cond125.preheader ], [ 0, %for.end ]
  %cmp1000 = icmp sgt i32 %161, 2200, !dbg !604
  %cmp1002 = icmp sgt i32 %160, 2200, !dbg !604
  %or.cond1371 = or i1 %cmp1000, %cmp1002, !dbg !604
  br i1 %or.cond1371, label %if.then1003, label %if.end1028, !dbg !604

if.then1003:                                      ; preds = %for.end999
  %162 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 41), align 4, !dbg !605, !tbaa !177
  %tobool1004 = icmp eq i32 %162, 0, !dbg !605
  %163 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 53), align 4, !dbg !605, !tbaa !177
  %cmp1006 = icmp ne i32 %163, 13, !dbg !605
  %or.cond1372 = and i1 %tobool1004, %cmp1006, !dbg !605
  br i1 %or.cond1372, label %if.then1007, label %if.end1009, !dbg !605

if.then1007:                                      ; preds = %if.then1003
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !607
  %164 = load i32* %score, align 4, !dbg !607, !tbaa !177
  %sub1008 = add nsw i32 %164, -5, !dbg !607
  call void @llvm.dbg.value(metadata !{i32 %sub1008}, i64 0, metadata !84), !dbg !607
  store i32 %sub1008, i32* %score, align 4, !dbg !607, !tbaa !177
  br label %if.end1009, !dbg !607

if.end1009:                                       ; preds = %if.then1003, %if.then1007
  %165 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 42), align 4, !dbg !608, !tbaa !177
  %tobool1010 = icmp eq i32 %165, 0, !dbg !608
  %166 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !dbg !608, !tbaa !177
  %cmp1012 = icmp ne i32 %166, 13, !dbg !608
  %or.cond1373 = and i1 %tobool1010, %cmp1012, !dbg !608
  br i1 %or.cond1373, label %if.then1013, label %if.end1015, !dbg !608

if.then1013:                                      ; preds = %if.end1009
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !609
  %167 = load i32* %score, align 4, !dbg !609, !tbaa !177
  %sub1014 = add nsw i32 %167, -5, !dbg !609
  call void @llvm.dbg.value(metadata !{i32 %sub1014}, i64 0, metadata !84), !dbg !609
  store i32 %sub1014, i32* %score, align 4, !dbg !609, !tbaa !177
  br label %if.end1015, !dbg !609

if.end1015:                                       ; preds = %if.end1009, %if.then1013
  %168 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 101), align 4, !dbg !610, !tbaa !177
  %tobool1016 = icmp eq i32 %168, 0, !dbg !610
  %169 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 89), align 4, !dbg !610, !tbaa !177
  %cmp1018 = icmp ne i32 %169, 13, !dbg !610
  %or.cond1374 = and i1 %tobool1016, %cmp1018, !dbg !610
  br i1 %or.cond1374, label %if.then1019, label %if.end1021, !dbg !610

if.then1019:                                      ; preds = %if.end1015
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !611
  %170 = load i32* %score, align 4, !dbg !611, !tbaa !177
  %add1020 = add nsw i32 %170, 5, !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %add1020}, i64 0, metadata !84), !dbg !611
  store i32 %add1020, i32* %score, align 4, !dbg !611, !tbaa !177
  br label %if.end1021, !dbg !611

if.end1021:                                       ; preds = %if.end1015, %if.then1019
  %171 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 102), align 4, !dbg !612, !tbaa !177
  %tobool1022 = icmp eq i32 %171, 0, !dbg !612
  %172 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !dbg !612, !tbaa !177
  %cmp1024 = icmp ne i32 %172, 13, !dbg !612
  %or.cond1375 = and i1 %tobool1022, %cmp1024, !dbg !612
  br i1 %or.cond1375, label %if.then1025, label %if.end1028, !dbg !612

if.then1025:                                      ; preds = %if.end1021
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !613
  %173 = load i32* %score, align 4, !dbg !613, !tbaa !177
  %add1026 = add nsw i32 %173, 5, !dbg !613
  call void @llvm.dbg.value(metadata !{i32 %add1026}, i64 0, metadata !84), !dbg !613
  store i32 %add1026, i32* %score, align 4, !dbg !613, !tbaa !177
  br label %if.end1028, !dbg !613

if.end1028:                                       ; preds = %if.then1025, %if.end1021, %for.end999
  %cmp1029 = icmp sgt i32 %161, 1300, !dbg !614
  %cmp1031 = icmp sgt i32 %160, 1300, !dbg !614
  %or.cond1376 = or i1 %cmp1029, %cmp1031, !dbg !614
  br i1 %or.cond1376, label %if.then1032, label %if.end1130, !dbg !614

if.then1032:                                      ; preds = %if.end1028
  %174 = load i32* @wking_loc, align 4, !dbg !615, !tbaa !177
  %idxprom1033 = sext i32 %174 to i64, !dbg !615
  %arrayidx1034 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom1033, !dbg !615
  %175 = load i32* %arrayidx1034, align 4, !dbg !615, !tbaa !177
  %add1035 = add nsw i32 %175, 1, !dbg !615
  call void @llvm.dbg.value(metadata !{i32 %add1035}, i64 0, metadata !81), !dbg !615
  %176 = load i32* @bking_loc, align 4, !dbg !617, !tbaa !177
  %idxprom1036 = sext i32 %176 to i64, !dbg !617
  %arrayidx1037 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom1036, !dbg !617
  %177 = load i32* %arrayidx1037, align 4, !dbg !617, !tbaa !177
  %add1038 = add nsw i32 %177, 1, !dbg !617
  call void @llvm.dbg.value(metadata !{i32 %add1038}, i64 0, metadata !82), !dbg !617
  %sub1039 = sub nsw i32 %add1035, %add1038, !dbg !618
  %ispos1684 = icmp sgt i32 %sub1039, -1, !dbg !618
  %neg1685 = sub i32 0, %sub1039, !dbg !618
  %178 = select i1 %ispos1684, i32 %sub1039, i32 %neg1685, !dbg !618
  %cmp1041 = icmp sgt i32 %178, 2, !dbg !618
  br i1 %cmp1041, label %if.then1042, label %if.end1130, !dbg !618

if.then1042:                                      ; preds = %if.then1032
  %idxprom1043 = sext i32 %add1035 to i64, !dbg !619
  %arrayidx1044 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom1043, !dbg !619
  %179 = load i32* %arrayidx1044, align 4, !dbg !619, !tbaa !177
  %idxprom1045 = sext i32 %179 to i64, !dbg !619
  %arrayidx1046 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom1045, !dbg !619
  %180 = load i32* %arrayidx1046, align 4, !dbg !619, !tbaa !177
  %add1050 = add nsw i32 %175, 2, !dbg !621
  %idxprom1051 = sext i32 %add1050 to i64, !dbg !621
  %arrayidx1052 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom1051, !dbg !621
  %181 = load i32* %arrayidx1052, align 4, !dbg !621, !tbaa !177
  %idxprom1053 = sext i32 %181 to i64, !dbg !621
  %arrayidx1054 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom1053, !dbg !621
  %182 = load i32* %arrayidx1054, align 4, !dbg !621, !tbaa !177
  %183 = add i32 %182, %180, !dbg !621
  %idxprom1059 = sext i32 %175 to i64, !dbg !622
  %arrayidx1060 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom1059, !dbg !622
  %184 = load i32* %arrayidx1060, align 4, !dbg !622, !tbaa !177
  %idxprom1061 = sext i32 %184 to i64, !dbg !622
  %arrayidx1062 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom1061, !dbg !622
  %185 = load i32* %arrayidx1062, align 4, !dbg !622, !tbaa !177
  %mul10561686 = add i32 %183, %185, !dbg !622
  %mul1064 = mul i32 %mul10561686, 3, !dbg !622
  %idxprom1066 = sext i32 %add1038 to i64, !dbg !623
  %arrayidx1067 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom1066, !dbg !623
  %186 = load i32* %arrayidx1067, align 4, !dbg !623, !tbaa !177
  %add1071 = add nsw i32 %177, 2, !dbg !624
  %idxprom1072 = sext i32 %add1071 to i64, !dbg !624
  %arrayidx1073 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom1072, !dbg !624
  %187 = load i32* %arrayidx1073, align 4, !dbg !624, !tbaa !177
  %188 = add i32 %187, %186, !dbg !624
  %idxprom1078 = sext i32 %177 to i64, !dbg !625
  %arrayidx1079 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom1078, !dbg !625
  %189 = load i32* %arrayidx1079, align 4, !dbg !625, !tbaa !177
  %mul10751687 = add i32 %188, %189, !dbg !625
  %mul1081 = mul i32 %mul10751687, 3, !dbg !625
  %arrayidx1085 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom1043, !dbg !626
  %190 = load i32* %arrayidx1085, align 4, !dbg !626, !tbaa !177
  %tobool1086 = icmp eq i32 %190, 0, !dbg !626
  %add1088.add1065.v = select i1 %tobool1086, i32 -10, i32 -18, !dbg !626
  %add1088.add1065 = add i32 %add1088.add1065.v, %mul1064, !dbg !626
  %arrayidx1093 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom1051, !dbg !627
  %191 = load i32* %arrayidx1093, align 4, !dbg !627, !tbaa !177
  %tobool1094 = icmp eq i32 %191, 0, !dbg !627
  %add1096 = add nsw i32 %add1088.add1065, 6, !dbg !628
  call void @llvm.dbg.value(metadata !{i32 %add1096}, i64 0, metadata !106), !dbg !628
  %wksafety.1 = select i1 %tobool1094, i32 %add1096, i32 %add1088.add1065, !dbg !627
  %arrayidx1101 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom1059, !dbg !629
  %192 = load i32* %arrayidx1101, align 4, !dbg !629, !tbaa !177
  %tobool1102 = icmp eq i32 %192, 0, !dbg !629
  %add1104 = add nsw i32 %wksafety.1, 6, !dbg !630
  call void @llvm.dbg.value(metadata !{i32 %add1104}, i64 0, metadata !106), !dbg !630
  %add1104.wksafety.1 = select i1 %tobool1102, i32 %add1104, i32 %wksafety.1, !dbg !629
  %arrayidx1108 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom1066, !dbg !631
  %193 = load i32* %arrayidx1108, align 4, !dbg !631, !tbaa !177
  %tobool1109 = icmp eq i32 %193, 0, !dbg !631
  %bksafety.0.v = select i1 %tobool1109, i32 -10, i32 -18, !dbg !631
  %bksafety.0 = add i32 %bksafety.0.v, %mul1081, !dbg !631
  %arrayidx1116 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom1072, !dbg !632
  %194 = load i32* %arrayidx1116, align 4, !dbg !632, !tbaa !177
  %tobool1117 = icmp eq i32 %194, 0, !dbg !632
  %add1119 = add nsw i32 %bksafety.0, 6, !dbg !633
  call void @llvm.dbg.value(metadata !{i32 %add1119}, i64 0, metadata !107), !dbg !633
  %add1119.bksafety.0 = select i1 %tobool1117, i32 %add1119, i32 %bksafety.0, !dbg !632
  %arrayidx1124 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom1078, !dbg !634
  %195 = load i32* %arrayidx1124, align 4, !dbg !634, !tbaa !177
  %tobool1125 = icmp eq i32 %195, 0, !dbg !634
  %add1127 = add nsw i32 %add1119.bksafety.0, 6, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %add1127}, i64 0, metadata !107), !dbg !635
  %add1127.add1119.bksafety.0 = select i1 %tobool1125, i32 %add1127, i32 %add1119.bksafety.0, !dbg !634
  br label %if.end1130, !dbg !634

if.end1130:                                       ; preds = %if.then1042, %if.then1032, %if.end1028
  %wksafety.3 = phi i32 [ 0, %if.then1032 ], [ 0, %if.end1028 ], [ %add1104.wksafety.1, %if.then1042 ]
  %bksafety.2 = phi i32 [ 0, %if.then1032 ], [ 0, %if.end1028 ], [ %add1127.add1119.bksafety.0, %if.then1042 ]
  %cmp1131 = icmp slt i32 %160, 1301, !dbg !636
  %tobool1133 = icmp eq i32 %bq.0.lcssa, 0, !dbg !636
  %or.cond1720 = or i1 %cmp1131, %tobool1133, !dbg !636
  br i1 %or.cond1720, label %if.end1136, label %if.then1134, !dbg !636

if.then1134:                                      ; preds = %if.end1130
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !637
  %196 = load i32* %score, align 4, !dbg !637, !tbaa !177
  %sub1135 = sub nsw i32 %196, %wksafety.3, !dbg !637
  call void @llvm.dbg.value(metadata !{i32 %sub1135}, i64 0, metadata !84), !dbg !637
  store i32 %sub1135, i32* %score, align 4, !dbg !637, !tbaa !177
  br label %if.end1136, !dbg !639

if.end1136:                                       ; preds = %if.end1130, %if.then1134
  %cmp1137 = icmp slt i32 %161, 1301, !dbg !640
  %tobool1139 = icmp eq i32 %wq.0.lcssa, 0, !dbg !640
  %or.cond1721 = or i1 %cmp1137, %tobool1139, !dbg !640
  br i1 %or.cond1721, label %if.end1142, label %if.then1140, !dbg !640

if.then1140:                                      ; preds = %if.end1136
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !641
  %197 = load i32* %score, align 4, !dbg !641, !tbaa !177
  %add1141 = add nsw i32 %197, %bksafety.2, !dbg !641
  call void @llvm.dbg.value(metadata !{i32 %add1141}, i64 0, metadata !84), !dbg !641
  store i32 %add1141, i32* %score, align 4, !dbg !641, !tbaa !177
  br label %if.end1142, !dbg !643

if.end1142:                                       ; preds = %if.end1136, %if.then1140
  %tobool1143 = icmp ne i32 %wr.0.lcssa, 0, !dbg !644
  %tobool1143.not = xor i1 %tobool1143, true, !dbg !644
  %or.cond1722 = and i1 %tobool1139, %tobool1143.not, !dbg !644
  %tobool1147 = icmp eq i32 %wb.0.lcssa, 0, !dbg !644
  %or.cond1723 = and i1 %or.cond1722, %tobool1147, !dbg !644
  %tobool1149 = icmp eq i32 %wn.0.lcssa, 0, !dbg !644
  %or.cond1724 = and i1 %or.cond1723, %tobool1149, !dbg !644
  br i1 %or.cond1724, label %if.then1150, label %if.end1152, !dbg !644

if.then1150:                                      ; preds = %if.end1142
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !645
  %198 = load i32* %score, align 4, !dbg !645, !tbaa !177
  %add1151 = add nsw i32 %198, %bpotential.0.lcssa, !dbg !645
  call void @llvm.dbg.value(metadata !{i32 %add1151}, i64 0, metadata !84), !dbg !645
  store i32 %add1151, i32* %score, align 4, !dbg !645, !tbaa !177
  br label %if.end1152, !dbg !647

if.end1152:                                       ; preds = %if.end1142, %if.then1150
  %tobool1153 = icmp ne i32 %br.0.lcssa, 0, !dbg !648
  %tobool1153.not = xor i1 %tobool1153, true, !dbg !648
  %or.cond1725 = and i1 %tobool1133, %tobool1153.not, !dbg !648
  %tobool1157 = icmp eq i32 %bb.0.lcssa, 0, !dbg !648
  %or.cond1726 = and i1 %or.cond1725, %tobool1157, !dbg !648
  %tobool1159 = icmp eq i32 %bn.0.lcssa, 0, !dbg !648
  %or.cond1727 = and i1 %or.cond1726, %tobool1159, !dbg !648
  br i1 %or.cond1727, label %if.then1160, label %if.end1162, !dbg !648

if.then1160:                                      ; preds = %if.end1152
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !649
  %199 = load i32* %score, align 4, !dbg !649, !tbaa !177
  %add1161 = add nsw i32 %199, %wpotential.0.lcssa, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %add1161}, i64 0, metadata !84), !dbg !649
  store i32 %add1161, i32* %score, align 4, !dbg !649, !tbaa !177
  br label %if.end1162, !dbg !651

if.end1162:                                       ; preds = %if.end1152, %if.then1160
  %200 = or i32 %bp.0.lcssa, %wp.0.lcssa, !dbg !652
  %201 = icmp eq i32 %200, 0, !dbg !652
  br i1 %201, label %if.then1166, label %if.else1266, !dbg !652

if.then1166:                                      ; preds = %if.end1162
  %202 = or i32 %bq.0.lcssa, %wq.0.lcssa, !dbg !653
  %203 = or i32 %202, %wr.0.lcssa, !dbg !653
  %204 = or i32 %203, %br.0.lcssa, !dbg !653
  %205 = icmp eq i32 %204, 0, !dbg !653
  br i1 %205, label %if.then1174, label %if.else1215, !dbg !653

if.then1174:                                      ; preds = %if.then1166
  %tobool1175 = icmp ne i32 %bb.0.lcssa, 0, !dbg !655
  %tobool1175.not = xor i1 %tobool1175, true, !dbg !655
  %or.cond1731 = and i1 %tobool1147, %tobool1175.not, !dbg !655
  br i1 %or.cond1731, label %if.then1178, label %if.else1184, !dbg !655

if.then1178:                                      ; preds = %if.then1174
  %cmp1179 = icmp slt i32 %wn.0.lcssa, 3, !dbg !657
  %cmp1181 = icmp slt i32 %bn.0.lcssa, 3, !dbg !657
  %or.cond1732 = and i1 %cmp1179, %cmp1181, !dbg !657
  br i1 %or.cond1732, label %if.then1182, label %if.end1350, !dbg !657

if.then1182:                                      ; preds = %if.then1178
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !659
  store i32 0, i32* %score, align 4, !dbg !659, !tbaa !177
  br label %if.end1350, !dbg !661

if.else1184:                                      ; preds = %if.then1174
  %tobool1185 = icmp ne i32 %wn.0.lcssa, 0, !dbg !662
  %tobool1185.not = xor i1 %tobool1185, true, !dbg !662
  %or.cond1733 = and i1 %tobool1159, %tobool1185.not, !dbg !662
  br i1 %or.cond1733, label %if.then1188, label %if.else1194, !dbg !662

if.then1188:                                      ; preds = %if.else1184
  %sub1189 = sub nsw i32 %wb.0.lcssa, %bb.0.lcssa, !dbg !663
  %ispos1680 = icmp sgt i32 %sub1189, -1, !dbg !663
  %neg1681 = sub i32 0, %sub1189, !dbg !663
  %206 = select i1 %ispos1680, i32 %sub1189, i32 %neg1681, !dbg !663
  %cmp1191 = icmp slt i32 %206, 2, !dbg !663
  br i1 %cmp1191, label %if.then1192, label %if.end1350, !dbg !663

if.then1192:                                      ; preds = %if.then1188
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !665
  store i32 0, i32* %score, align 4, !dbg !665, !tbaa !177
  br label %if.end1350, !dbg !667

if.else1194:                                      ; preds = %if.else1184
  %cmp1195 = icmp slt i32 %wn.0.lcssa, 3, !dbg !668
  %or.cond1734 = and i1 %cmp1195, %tobool1147, !dbg !668
  %or.cond1734.not = xor i1 %or.cond1734, true, !dbg !668
  %cmp1199.not = icmp ne i32 %wb.0.lcssa, 1, !dbg !668
  %brmerge1735 = or i1 %cmp1199.not, %tobool1185, !dbg !668
  %or.cond1750 = and i1 %brmerge1735, %or.cond1734.not, !dbg !668
  br i1 %or.cond1750, label %if.end1350, label %if.then1202, !dbg !668

if.then1202:                                      ; preds = %if.else1194
  %cmp1203.not = icmp sgt i32 %bn.0.lcssa, 2, !dbg !669
  %brmerge1736 = or i1 %cmp1203.not, %tobool1175, !dbg !669
  %brmerge1736.not = xor i1 %brmerge1736, true, !dbg !669
  %cmp1207 = icmp eq i32 %bb.0.lcssa, 1, !dbg !669
  %or.cond1737 = and i1 %cmp1207, %tobool1159, !dbg !669
  %or.cond1749 = or i1 %or.cond1737, %brmerge1736.not, !dbg !669
  br i1 %or.cond1749, label %if.then1210, label %if.end1350, !dbg !669

if.then1210:                                      ; preds = %if.then1202
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !671
  store i32 0, i32* %score, align 4, !dbg !671, !tbaa !177
  br label %if.end1350, !dbg !673

if.else1215:                                      ; preds = %if.then1166
  %207 = icmp eq i32 %202, 0, !dbg !674
  br i1 %207, label %if.then1219, label %if.end1350, !dbg !674

if.then1219:                                      ; preds = %if.else1215
  %cmp1220 = icmp eq i32 %wr.0.lcssa, 1, !dbg !675
  %cmp1222 = icmp eq i32 %br.0.lcssa, 1, !dbg !675
  %or.cond1739 = and i1 %cmp1220, %cmp1222, !dbg !675
  br i1 %or.cond1739, label %if.then1223, label %if.else1231, !dbg !675

if.then1223:                                      ; preds = %if.then1219
  %add1224 = add nsw i32 %wb.0.lcssa, %wn.0.lcssa, !dbg !677
  %cmp1225 = icmp slt i32 %add1224, 2, !dbg !677
  br i1 %cmp1225, label %land.lhs.true1226, label %if.end1350, !dbg !677

land.lhs.true1226:                                ; preds = %if.then1223
  %add1227 = add nsw i32 %bb.0.lcssa, %bn.0.lcssa, !dbg !677
  %cmp1228 = icmp slt i32 %add1227, 2, !dbg !677
  br i1 %cmp1228, label %if.then1229, label %if.end1350, !dbg !677

if.then1229:                                      ; preds = %land.lhs.true1226
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !679
  store i32 0, i32* %score, align 4, !dbg !679, !tbaa !177
  br label %if.end1350, !dbg !681

if.else1231:                                      ; preds = %if.then1219
  %cmp1220.not = xor i1 %cmp1220, true, !dbg !682
  %brmerge1740 = or i1 %tobool1153, %cmp1220.not, !dbg !682
  br i1 %brmerge1740, label %if.else1246, label %if.then1235, !dbg !682

if.then1235:                                      ; preds = %if.else1231
  %add1236 = sub i32 0, %wb.0.lcssa, !dbg !683
  %cmp1237 = icmp eq i32 %wn.0.lcssa, %add1236, !dbg !683
  br i1 %cmp1237, label %land.lhs.true1238, label %if.end1350, !dbg !683

land.lhs.true1238:                                ; preds = %if.then1235
  %add1239 = add i32 %bn.0.lcssa, -1, !dbg !683
  %add1239.off = add i32 %add1239, %bb.0.lcssa, !dbg !683
  %switch1747 = icmp ult i32 %add1239.off, 2, !dbg !683
  br i1 %switch1747, label %if.then1244, label %if.end1350, !dbg !683

if.then1244:                                      ; preds = %land.lhs.true1238
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !685
  store i32 0, i32* %score, align 4, !dbg !685, !tbaa !177
  br label %if.end1350, !dbg !687

if.else1246:                                      ; preds = %if.else1231
  %cmp1247.not = xor i1 %cmp1222, true, !dbg !688
  %brmerge1741 = or i1 %tobool1143, %cmp1247.not, !dbg !688
  br i1 %brmerge1741, label %if.end1350, label %if.then1250, !dbg !688

if.then1250:                                      ; preds = %if.else1246
  %add1251 = sub i32 0, %bb.0.lcssa, !dbg !689
  %cmp1252 = icmp eq i32 %bn.0.lcssa, %add1251, !dbg !689
  br i1 %cmp1252, label %land.lhs.true1253, label %if.end1350, !dbg !689

land.lhs.true1253:                                ; preds = %if.then1250
  %add1254 = add i32 %wn.0.lcssa, -1, !dbg !689
  %add1254.off = add i32 %add1254, %wb.0.lcssa, !dbg !689
  %switch1748 = icmp ult i32 %add1254.off, 2, !dbg !689
  br i1 %switch1748, label %if.then1259, label %if.end1350, !dbg !689

if.then1259:                                      ; preds = %land.lhs.true1253
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !691
  store i32 0, i32* %score, align 4, !dbg !691, !tbaa !177
  br label %if.end1350, !dbg !693

if.else1266:                                      ; preds = %if.end1162
  %add1267 = add nsw i32 %wb.0.lcssa, %wn.0.lcssa, !dbg !694
  %add1268 = add nsw i32 %bb.0.lcssa, %bn.0.lcssa, !dbg !694
  %cmp1269 = icmp eq i32 %add1267, %add1268, !dbg !694
  %add1271 = add nsw i32 %wr.0.lcssa, %wq.0.lcssa, !dbg !696
  %add1272 = add nsw i32 %br.0.lcssa, %bq.0.lcssa, !dbg !696
  %cmp1273 = icmp eq i32 %add1271, %add1272, !dbg !696
  br i1 %cmp1269, label %if.else1330, label %if.then1270, !dbg !694

if.then1270:                                      ; preds = %if.else1266
  br i1 %cmp1273, label %if.then1274, label %if.else1283, !dbg !696

if.then1274:                                      ; preds = %if.then1270
  %cmp1277 = icmp sgt i32 %add1267, %add1268, !dbg !698
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !700
  %208 = load i32* %score, align 4, !dbg !700, !tbaa !177
  br i1 %cmp1277, label %if.then1278, label %if.else1280, !dbg !698

if.then1278:                                      ; preds = %if.then1274
  %add1279 = add nsw i32 %208, 120, !dbg !700
  call void @llvm.dbg.value(metadata !{i32 %add1279}, i64 0, metadata !84), !dbg !700
  store i32 %add1279, i32* %score, align 4, !dbg !700, !tbaa !177
  br label %if.end1350, !dbg !702

if.else1280:                                      ; preds = %if.then1274
  %sub1281 = add nsw i32 %208, -120, !dbg !703
  call void @llvm.dbg.value(metadata !{i32 %sub1281}, i64 0, metadata !84), !dbg !703
  store i32 %sub1281, i32* %score, align 4, !dbg !703, !tbaa !177
  br label %if.end1350

if.else1283:                                      ; preds = %if.then1270
  %sub1286 = sub nsw i32 %add1271, %add1272, !dbg !705
  %ispos1682 = icmp sgt i32 %sub1286, -1, !dbg !705
  %neg1683 = sub i32 0, %sub1286, !dbg !705
  %209 = select i1 %ispos1682, i32 %sub1286, i32 %neg1683, !dbg !705
  switch i32 %209, label %if.end1350 [
    i32 1, label %if.then1289
    i32 2, label %if.then1311
  ], !dbg !705

if.then1289:                                      ; preds = %if.else1283
  %add1292 = add nsw i32 %add1268, 1, !dbg !706
  %cmp1293 = icmp sgt i32 %add1267, %add1292, !dbg !706
  br i1 %cmp1293, label %if.then1294, label %if.else1296, !dbg !706

if.then1294:                                      ; preds = %if.then1289
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !708
  %210 = load i32* %score, align 4, !dbg !708, !tbaa !177
  %add1295 = add nsw i32 %210, 120, !dbg !708
  call void @llvm.dbg.value(metadata !{i32 %add1295}, i64 0, metadata !84), !dbg !708
  store i32 %add1295, i32* %score, align 4, !dbg !708, !tbaa !177
  br label %if.end1350, !dbg !710

if.else1296:                                      ; preds = %if.then1289
  %add1299 = add nsw i32 %add1267, 1, !dbg !711
  %cmp1300 = icmp sgt i32 %add1268, %add1299, !dbg !711
  br i1 %cmp1300, label %if.then1301, label %if.end1350, !dbg !711

if.then1301:                                      ; preds = %if.else1296
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !712
  %211 = load i32* %score, align 4, !dbg !712, !tbaa !177
  %sub1302 = add nsw i32 %211, -120, !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %sub1302}, i64 0, metadata !84), !dbg !712
  store i32 %sub1302, i32* %score, align 4, !dbg !712, !tbaa !177
  br label %if.end1350, !dbg !714

if.then1311:                                      ; preds = %if.else1283
  %add1314 = add nsw i32 %add1268, 2, !dbg !715
  %cmp1315 = icmp sgt i32 %add1267, %add1314, !dbg !715
  br i1 %cmp1315, label %if.then1316, label %if.else1318, !dbg !715

if.then1316:                                      ; preds = %if.then1311
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !717
  %212 = load i32* %score, align 4, !dbg !717, !tbaa !177
  %add1317 = add nsw i32 %212, 120, !dbg !717
  call void @llvm.dbg.value(metadata !{i32 %add1317}, i64 0, metadata !84), !dbg !717
  store i32 %add1317, i32* %score, align 4, !dbg !717, !tbaa !177
  br label %if.end1350, !dbg !719

if.else1318:                                      ; preds = %if.then1311
  %add1321 = add nsw i32 %add1267, 2, !dbg !720
  %cmp1322 = icmp sgt i32 %add1268, %add1321, !dbg !720
  br i1 %cmp1322, label %if.then1323, label %if.end1350, !dbg !720

if.then1323:                                      ; preds = %if.else1318
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !721
  %213 = load i32* %score, align 4, !dbg !721, !tbaa !177
  %sub1324 = add nsw i32 %213, -120, !dbg !721
  call void @llvm.dbg.value(metadata !{i32 %sub1324}, i64 0, metadata !84), !dbg !721
  store i32 %sub1324, i32* %score, align 4, !dbg !721, !tbaa !177
  br label %if.end1350, !dbg !723

if.else1330:                                      ; preds = %if.else1266
  br i1 %cmp1273, label %if.then1334, label %if.end1350, !dbg !724

if.then1334:                                      ; preds = %if.else1330
  %tobool1335 = icmp ne i32 %wq.0.lcssa, 0, !dbg !725
  %or.cond1742 = and i1 %tobool1335, %tobool1133, !dbg !725
  br i1 %or.cond1742, label %if.then1338, label %if.else1340, !dbg !725

if.then1338:                                      ; preds = %if.then1334
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !727
  %214 = load i32* %score, align 4, !dbg !727, !tbaa !177
  %add1339 = add nsw i32 %214, 120, !dbg !727
  call void @llvm.dbg.value(metadata !{i32 %add1339}, i64 0, metadata !84), !dbg !727
  store i32 %add1339, i32* %score, align 4, !dbg !727, !tbaa !177
  br label %if.end1350, !dbg !729

if.else1340:                                      ; preds = %if.then1334
  %or.cond1743 = or i1 %tobool1335, %tobool1133, !dbg !730
  br i1 %or.cond1743, label %if.end1350, label %if.then1344, !dbg !730

if.then1344:                                      ; preds = %if.else1340
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !731
  %215 = load i32* %score, align 4, !dbg !731, !tbaa !177
  %sub1345 = add nsw i32 %215, -120, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %sub1345}, i64 0, metadata !84), !dbg !731
  store i32 %sub1345, i32* %score, align 4, !dbg !731, !tbaa !177
  br label %if.end1350, !dbg !733

if.end1350:                                       ; preds = %if.else1340, %if.else1330, %if.else1318, %if.else1296, %if.else1283, %land.lhs.true1253, %if.then1250, %if.else1246, %land.lhs.true1238, %if.then1235, %land.lhs.true1226, %if.then1223, %if.else1215, %if.then1202, %if.else1194, %if.then1188, %if.then1178, %if.then1301, %if.then1294, %if.then1316, %if.then1323, %if.then1278, %if.else1280, %if.then1338, %if.then1344, %if.then1192, %if.then1210, %if.then1182, %if.then1229, %if.then1259, %if.then1244
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !734
  %216 = load i32* %score, align 4, !dbg !734, !tbaa !177
  call void @storeECache(i32 %216) #8, !dbg !734
  %217 = load i32* @Material, align 4, !dbg !735, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !735
  %218 = load i32* %score, align 4, !dbg !735, !tbaa !177
  %sub1351 = sub nsw i32 %217, %218, !dbg !735
  %ispos = icmp sgt i32 %sub1351, -1, !dbg !735
  %neg = sub i32 0, %sub1351, !dbg !735
  %219 = select i1 %ispos, i32 %sub1351, i32 %neg, !dbg !735
  %220 = load i32* @maxposdiff, align 4, !dbg !735, !tbaa !177
  %cmp1353 = icmp sgt i32 %219, %220, !dbg !735
  br i1 %cmp1353, label %if.then1354, label %if.end1364, !dbg !735

if.then1354:                                      ; preds = %if.end1350
  %cmp1357 = icmp sgt i32 %219, 1000, !dbg !736
  %. = select i1 %cmp1357, i32 1000, i32 %219, !dbg !736
  store i32 %., i32* @maxposdiff, align 4, !dbg !736, !tbaa !177
  br label %if.end1364, !dbg !736

if.end1364:                                       ; preds = %if.then1354, %if.end1350
  %221 = load i32* @white_to_move, align 4, !dbg !737, !tbaa !177
  %cmp1365 = icmp eq i32 %221, 1, !dbg !737
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !84), !dbg !738
  %sub1368 = sub nsw i32 0, %218, !dbg !740
  %.sub1368 = select i1 %cmp1365, i32 %218, i32 %sub1368, !dbg !737
  br label %cleanup, !dbg !737

cleanup:                                          ; preds = %if.end1364, %if.then28, %if.end, %entry
  %retval.0 = phi i32 [ %sub3, %entry ], [ %add, %if.end ], [ %.sub32, %if.then28 ], [ %.sub1368, %if.end1364 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #4, !dbg !742
  call void @llvm.lifetime.end(i64 44, i8* %1) #4, !dbg !742
  call void @llvm.lifetime.end(i64 88, i8* %0) #4, !dbg !742
  ret i32 %retval.0, !dbg !742
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: optsize
declare void @storeECache(i32) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !122, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !20, metadata !27, metadata !34, metadata !41, metadata !48, metadata !54, metadata !60, metadata !64, metadata !108, metadata !116}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"check_phase", metadata !"check_phase", metadata !"", i32 168, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @check_phase, null, null, metadata !14, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [check_phase]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null}
!14 = metadata !{metadata !15, metadata !17, metadata !18, metadata !19}
!15 = metadata !{i32 786688, metadata !10, metadata !"xnum_pieces", metadata !11, i32 170, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xnum_pieces] [line 170]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786688, metadata !10, metadata !"j", metadata !11, i32 171, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 171]
!18 = metadata !{i32 786688, metadata !10, metadata !"a", metadata !11, i32 171, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 171]
!19 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 171, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!20 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"King", metadata !"King", metadata !"", i32 235, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @King, null, null, metadata !23, i32 235} ; [ DW_TAG_subprogram ] [line 235] [def] [King]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !16, metadata !16, metadata !16}
!23 = metadata !{metadata !24, metadata !25, metadata !26}
!24 = metadata !{i32 786689, metadata !20, metadata !"sq", metadata !11, i32 16777451, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 235]
!25 = metadata !{i32 786689, metadata !20, metadata !"c", metadata !11, i32 33554667, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 235]
!26 = metadata !{i32 786688, metadata !20, metadata !"s", metadata !11, i32 236, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 236]
!27 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Queen", metadata !"Queen", metadata !"", i32 255, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @Queen, null, null, metadata !28, i32 255} ; [ DW_TAG_subprogram ] [line 255] [def] [Queen]
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!29 = metadata !{i32 786689, metadata !27, metadata !"sq", metadata !11, i32 16777471, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 255]
!30 = metadata !{i32 786689, metadata !27, metadata !"c", metadata !11, i32 33554687, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 255]
!31 = metadata !{i32 786688, metadata !27, metadata !"s", metadata !11, i32 256, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 256]
!32 = metadata !{i32 786688, metadata !27, metadata !"mob", metadata !11, i32 257, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mob] [line 257]
!33 = metadata !{i32 786688, metadata !27, metadata !"xside", metadata !11, i32 258, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xside] [line 258]
!34 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Rook", metadata !"Rook", metadata !"", i32 283, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @Rook, null, null, metadata !35, i32 283} ; [ DW_TAG_subprogram ] [line 283] [def] [Rook]
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!36 = metadata !{i32 786689, metadata !34, metadata !"sq", metadata !11, i32 16777499, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 283]
!37 = metadata !{i32 786689, metadata !34, metadata !"c", metadata !11, i32 33554715, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 283]
!38 = metadata !{i32 786688, metadata !34, metadata !"s", metadata !11, i32 285, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 285]
!39 = metadata !{i32 786688, metadata !34, metadata !"mob", metadata !11, i32 286, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mob] [line 286]
!40 = metadata !{i32 786688, metadata !34, metadata !"xside", metadata !11, i32 287, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xside] [line 287]
!41 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Bishop", metadata !"Bishop", metadata !"", i32 322, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @Bishop, null, null, metadata !42, i32 322} ; [ DW_TAG_subprogram ] [line 322] [def] [Bishop]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47}
!43 = metadata !{i32 786689, metadata !41, metadata !"sq", metadata !11, i32 16777538, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 322]
!44 = metadata !{i32 786689, metadata !41, metadata !"c", metadata !11, i32 33554754, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 322]
!45 = metadata !{i32 786688, metadata !41, metadata !"s", metadata !11, i32 323, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 323]
!46 = metadata !{i32 786688, metadata !41, metadata !"mob", metadata !11, i32 324, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mob] [line 324]
!47 = metadata !{i32 786688, metadata !41, metadata !"xside", metadata !11, i32 325, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xside] [line 325]
!48 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Knight", metadata !"Knight", metadata !"", i32 346, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @Knight, null, null, metadata !49, i32 346} ; [ DW_TAG_subprogram ] [line 346] [def] [Knight]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786689, metadata !48, metadata !"sq", metadata !11, i32 16777562, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 346]
!51 = metadata !{i32 786689, metadata !48, metadata !"c", metadata !11, i32 33554778, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 346]
!52 = metadata !{i32 786688, metadata !48, metadata !"s", metadata !11, i32 347, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 347]
!53 = metadata !{i32 786688, metadata !48, metadata !"xside", metadata !11, i32 348, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xside] [line 348]
!54 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Pawn", metadata !"Pawn", metadata !"", i32 360, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @Pawn, null, null, metadata !55, i32 360} ; [ DW_TAG_subprogram ] [line 360] [def] [Pawn]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59}
!56 = metadata !{i32 786689, metadata !54, metadata !"sq", metadata !11, i32 16777576, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 360]
!57 = metadata !{i32 786689, metadata !54, metadata !"c", metadata !11, i32 33554792, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 360]
!58 = metadata !{i32 786688, metadata !54, metadata !"s", metadata !11, i32 361, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 361]
!59 = metadata !{i32 786688, metadata !54, metadata !"xside", metadata !11, i32 362, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xside] [line 362]
!60 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"ErrorIt", metadata !"ErrorIt", metadata !"", i32 387, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @ErrorIt, null, null, metadata !61, i32 387} ; [ DW_TAG_subprogram ] [line 387] [def] [ErrorIt]
!61 = metadata !{metadata !62, metadata !63}
!62 = metadata !{i32 786689, metadata !60, metadata !"sq", metadata !11, i32 16777603, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq] [line 387]
!63 = metadata !{i32 786689, metadata !60, metadata !"c", metadata !11, i32 33554819, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 387]
!64 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"std_eval", metadata !"std_eval", metadata !"", i32 392, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @std_eval, null, null, metadata !65, i32 392} ; [ DW_TAG_subprogram ] [line 392] [def] [std_eval]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !76, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!66 = metadata !{i32 786689, metadata !64, metadata !"alpha", metadata !11, i32 16777608, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 392]
!67 = metadata !{i32 786689, metadata !64, metadata !"beta", metadata !11, i32 33554824, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 392]
!68 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !11, i32 394, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 394]
!69 = metadata !{i32 786688, metadata !64, metadata !"a", metadata !11, i32 394, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 394]
!70 = metadata !{i32 786688, metadata !64, metadata !"pawn_file", metadata !11, i32 394, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawn_file] [line 394]
!71 = metadata !{i32 786688, metadata !64, metadata !"pawns", metadata !11, i32 394, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawns] [line 394]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 704, i64 32, i32 0, i32 0, metadata !16, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 704, align 32, offset 0] [from int]
!73 = metadata !{metadata !74, metadata !75}
!74 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!75 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ] [0, 10]
!76 = metadata !{i32 786688, metadata !64, metadata !"white_back_pawn", metadata !11, i32 394, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [white_back_pawn] [line 394]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 352, i64 32, i32 0, i32 0, metadata !16, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 352, align 32, offset 0] [from int]
!78 = metadata !{metadata !75}
!79 = metadata !{i32 786688, metadata !64, metadata !"black_back_pawn", metadata !11, i32 394, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [black_back_pawn] [line 394]
!80 = metadata !{i32 786688, metadata !64, metadata !"srank", metadata !11, i32 395, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [srank] [line 395]
!81 = metadata !{i32 786688, metadata !64, metadata !"wking_pawn_file", metadata !11, i32 395, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wking_pawn_file] [line 395]
!82 = metadata !{i32 786688, metadata !64, metadata !"bking_pawn_file", metadata !11, i32 395, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bking_pawn_file] [line 395]
!83 = metadata !{i32 786688, metadata !64, metadata !"j", metadata !11, i32 395, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 395]
!84 = metadata !{i32 786688, metadata !64, metadata !"score", metadata !11, i32 396, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 396]
!85 = metadata !{i32 786688, metadata !64, metadata !"isolated", metadata !11, i32 397, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isolated] [line 397]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!87 = metadata !{i32 786688, metadata !64, metadata !"backwards", metadata !11, i32 397, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backwards] [line 397]
!88 = metadata !{i32 786688, metadata !64, metadata !"in_cache", metadata !11, i32 398, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_cache] [line 398]
!89 = metadata !{i32 786688, metadata !64, metadata !"wp", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wp] [line 399]
!90 = metadata !{i32 786688, metadata !64, metadata !"bp", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 399]
!91 = metadata !{i32 786688, metadata !64, metadata !"wn", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wn] [line 399]
!92 = metadata !{i32 786688, metadata !64, metadata !"bn", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bn] [line 399]
!93 = metadata !{i32 786688, metadata !64, metadata !"wb", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wb] [line 399]
!94 = metadata !{i32 786688, metadata !64, metadata !"bb", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bb] [line 399]
!95 = metadata !{i32 786688, metadata !64, metadata !"wq", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wq] [line 399]
!96 = metadata !{i32 786688, metadata !64, metadata !"bq", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bq] [line 399]
!97 = metadata !{i32 786688, metadata !64, metadata !"wr", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wr] [line 399]
!98 = metadata !{i32 786688, metadata !64, metadata !"br", metadata !11, i32 399, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br] [line 399]
!99 = metadata !{i32 786688, metadata !64, metadata !"rbrook", metadata !11, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbrook] [line 400]
!100 = metadata !{i32 786688, metadata !64, metadata !"fbrook", metadata !11, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fbrook] [line 400]
!101 = metadata !{i32 786688, metadata !64, metadata !"rwrook", metadata !11, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rwrook] [line 400]
!102 = metadata !{i32 786688, metadata !64, metadata !"fwrook", metadata !11, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fwrook] [line 400]
!103 = metadata !{i32 786688, metadata !64, metadata !"wpotential", metadata !11, i32 401, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wpotential] [line 401]
!104 = metadata !{i32 786688, metadata !64, metadata !"bpotential", metadata !11, i32 401, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpotential] [line 401]
!105 = metadata !{i32 786688, metadata !64, metadata !"tmp", metadata !11, i32 401, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 401]
!106 = metadata !{i32 786688, metadata !64, metadata !"wksafety", metadata !11, i32 402, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wksafety] [line 402]
!107 = metadata !{i32 786688, metadata !64, metadata !"bksafety", metadata !11, i32 402, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bksafety] [line 402]
!108 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"bishop_mobility", metadata !"bishop_mobility", metadata !"", i32 205, metadata !109, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @bishop_mobility, null, null, metadata !111, i32 206} ; [ DW_TAG_subprogram ] [line 205] [local] [def] [scope 206] [bishop_mobility]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !16, metadata !16}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115}
!112 = metadata !{i32 786689, metadata !108, metadata !"square", metadata !11, i32 16777421, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 205]
!113 = metadata !{i32 786688, metadata !108, metadata !"l", metadata !11, i32 207, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 207]
!114 = metadata !{i32 786688, metadata !108, metadata !"m", metadata !11, i32 208, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 208]
!115 = metadata !{i32 786688, metadata !108, metadata !"diridx", metadata !11, i32 209, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diridx] [line 209]
!116 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"rook_mobility", metadata !"rook_mobility", metadata !"", i32 220, metadata !109, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @rook_mobility, null, null, metadata !117, i32 221} ; [ DW_TAG_subprogram ] [line 220] [local] [def] [scope 221] [rook_mobility]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786689, metadata !116, metadata !"square", metadata !11, i32 16777436, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 220]
!119 = metadata !{i32 786688, metadata !116, metadata !"l", metadata !11, i32 222, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 222]
!120 = metadata !{i32 786688, metadata !116, metadata !"m", metadata !11, i32 223, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 223]
!121 = metadata !{i32 786688, metadata !116, metadata !"diridx", metadata !11, i32 224, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diridx] [line 224]
!122 = metadata !{metadata !123, metadata !128, metadata !129, metadata !133, metadata !134, metadata !135, metadata !136, metadata !139, metadata !140, metadata !144, metadata !145, metadata !147, metadata !148, metadata !149, metadata !153, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !166, metadata !167, metadata !168, metadata !172}
!123 = metadata !{i32 786484, i32 0, null, metadata !"std_p_tropism", metadata !"std_p_tropism", metadata !"", metadata !11, i32 150, metadata !124, i32 0, i32 1, [8 x i32]* @std_p_tropism, null} ; [ DW_TAG_variable ] [std_p_tropism] [line 150] [def]
!124 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !125, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!125 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!128 = metadata !{i32 786484, i32 0, null, metadata !"std_own_p_tropism", metadata !"std_own_p_tropism", metadata !"", metadata !11, i32 153, metadata !124, i32 0, i32 1, [8 x i32]* @std_own_p_tropism, null} ; [ DW_TAG_variable ] [std_own_p_tropism] [line 153] [def]
!129 = metadata !{i32 786484, i32 0, null, metadata !"std_r_tropism", metadata !"std_r_tropism", metadata !"", metadata !11, i32 156, metadata !130, i32 0, i32 1, [16 x i32]* @std_r_tropism, null} ; [ DW_TAG_variable ] [std_r_tropism] [line 156] [def]
!130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !125, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!133 = metadata !{i32 786484, i32 0, null, metadata !"std_n_tropism", metadata !"std_n_tropism", metadata !"", metadata !11, i32 159, metadata !124, i32 0, i32 1, [8 x i32]* @std_n_tropism, null} ; [ DW_TAG_variable ] [std_n_tropism] [line 159] [def]
!134 = metadata !{i32 786484, i32 0, null, metadata !"std_q_tropism", metadata !"std_q_tropism", metadata !"", metadata !11, i32 162, metadata !124, i32 0, i32 1, [8 x i32]* @std_q_tropism, null} ; [ DW_TAG_variable ] [std_q_tropism] [line 162] [def]
!135 = metadata !{i32 786484, i32 0, null, metadata !"std_b_tropism", metadata !"std_b_tropism", metadata !"", metadata !11, i32 165, metadata !124, i32 0, i32 1, [8 x i32]* @std_b_tropism, null} ; [ DW_TAG_variable ] [std_b_tropism] [line 165] [def]
!136 = metadata !{i32 786484, i32 0, metadata !34, metadata !"square_d1", metadata !"square_d1", metadata !"", metadata !11, i32 284, metadata !137, i32 1, i32 1, [2 x i32]* @Rook.square_d1, null} ; [ DW_TAG_variable ] [square_d1] [line 284] [local] [def]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !125, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from ]
!138 = metadata !{metadata !74}
!139 = metadata !{i32 786484, i32 0, null, metadata !"maxposdiff", metadata !"maxposdiff", metadata !"", metadata !11, i32 33, metadata !16, i32 0, i32 1, i32* @maxposdiff, null} ; [ DW_TAG_variable ] [maxposdiff] [line 33] [def]
!140 = metadata !{i32 786484, i32 0, null, metadata !"distance", metadata !"distance", metadata !"", metadata !11, i32 38, metadata !141, i32 0, i32 1, [144 x [144 x i32]]* @distance, null} ; [ DW_TAG_variable ] [distance] [line 38] [def]
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 663552, i64 32, i32 0, i32 0, metadata !16, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 663552, align 32, offset 0] [from int]
!142 = metadata !{metadata !143, metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 144}     ; [ DW_TAG_subrange_type ] [0, 143]
!144 = metadata !{i32 786484, i32 0, null, metadata !"rookdistance", metadata !"rookdistance", metadata !"", metadata !11, i32 39, metadata !141, i32 0, i32 1, [144 x [144 x i32]]* @rookdistance, null} ; [ DW_TAG_variable ] [rookdistance] [line 39] [def]
!145 = metadata !{i32 786484, i32 0, null, metadata !"king_locs", metadata !"king_locs", metadata !"", metadata !11, i32 40, metadata !146, i32 0, i32 1, [2 x i32]* @king_locs, null} ; [ DW_TAG_variable ] [king_locs] [line 40] [def]
!146 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !16, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!147 = metadata !{i32 786484, i32 0, null, metadata !"wmat", metadata !"wmat", metadata !"", metadata !11, i32 41, metadata !16, i32 0, i32 1, i32* @wmat, null} ; [ DW_TAG_variable ] [wmat] [line 41] [def]
!148 = metadata !{i32 786484, i32 0, null, metadata !"bmat", metadata !"bmat", metadata !"", metadata !11, i32 41, metadata !16, i32 0, i32 1, i32* @bmat, null} ; [ DW_TAG_variable ] [bmat] [line 41] [def]
!149 = metadata !{i32 786484, i32 0, null, metadata !"srev_rank", metadata !"srev_rank", metadata !"", metadata !11, i32 147, metadata !150, i32 1, i32 1, [9 x i32]* @srev_rank, null} ; [ DW_TAG_variable ] [srev_rank] [line 147] [local] [def]
!150 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !125, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!153 = metadata !{i32 786484, i32 0, null, metadata !"sblack_king", metadata !"sblack_king", metadata !"", metadata !11, i32 117, metadata !154, i32 1, i32 1, [144 x i32]* @sblack_king, null} ; [ DW_TAG_variable ] [sblack_king] [line 117] [local] [def]
!154 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !16, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4608, align 32, offset 0] [from int]
!155 = metadata !{metadata !143}
!156 = metadata !{i32 786484, i32 0, null, metadata !"send_king", metadata !"send_king", metadata !"", metadata !11, i32 132, metadata !154, i32 1, i32 1, [144 x i32]* @send_king, null} ; [ DW_TAG_variable ] [send_king] [line 132] [local] [def]
!157 = metadata !{i32 786484, i32 0, null, metadata !"swhite_king", metadata !"swhite_king", metadata !"", metadata !11, i32 102, metadata !154, i32 1, i32 1, [144 x i32]* @swhite_king, null} ; [ DW_TAG_variable ] [swhite_king] [line 102] [local] [def]
!158 = metadata !{i32 786484, i32 0, null, metadata !"sblack_pawn", metadata !"sblack_pawn", metadata !"", metadata !11, i32 87, metadata !154, i32 1, i32 1, [144 x i32]* @sblack_pawn, null} ; [ DW_TAG_variable ] [sblack_pawn] [line 87] [local] [def]
!159 = metadata !{i32 786484, i32 0, null, metadata !"swhite_pawn", metadata !"swhite_pawn", metadata !"", metadata !11, i32 73, metadata !154, i32 1, i32 1, [144 x i32]* @swhite_pawn, null} ; [ DW_TAG_variable ] [swhite_pawn] [line 73] [local] [def]
!160 = metadata !{i32 786484, i32 0, null, metadata !"evalRoutines", metadata !"evalRoutines", metadata !"", metadata !11, i32 24, metadata !161, i32 1, i32 1, [7 x i32 (i32, i32)*]* @evalRoutines, null} ; [ DW_TAG_variable ] [evalRoutines] [line 24] [local] [def]
!161 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !162, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from EVALFUNC]
!162 = metadata !{i32 786454, metadata !1, null, metadata !"EVALFUNC", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_typedef ] [EVALFUNC] [line 23, size 0, align 0, offset 0] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!166 = metadata !{i32 786484, i32 0, null, metadata !"sknight", metadata !"sknight", metadata !"", metadata !11, i32 59, metadata !154, i32 1, i32 1, [144 x i32]* @sknight, null} ; [ DW_TAG_variable ] [sknight] [line 59] [local] [def]
!167 = metadata !{i32 786484, i32 0, null, metadata !"sbishop", metadata !"sbishop", metadata !"", metadata !11, i32 45, metadata !154, i32 1, i32 1, [144 x i32]* @sbishop, null} ; [ DW_TAG_variable ] [sbishop] [line 45] [local] [def]
!168 = metadata !{i32 786484, i32 0, metadata !108, metadata !"dir", metadata !"dir", metadata !"", metadata !11, i32 210, metadata !169, i32 1, i32 1, [4 x i32]* @bishop_mobility.dir, null} ; [ DW_TAG_variable ] [dir] [line 210] [local] [def]
!169 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !125, metadata !170, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!170 = metadata !{metadata !171}
!171 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!172 = metadata !{i32 786484, i32 0, metadata !116, metadata !"dir", metadata !"dir", metadata !"", metadata !11, i32 225, metadata !169, i32 1, i32 1, [4 x i32]* @rook_mobility.dir, null} ; [ DW_TAG_variable ] [dir] [line 225] [local] [def]
!173 = metadata !{i32 170, i32 0, metadata !10, null}
!174 = metadata !{i32 1}
!175 = metadata !{i32 173, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !10, i32 173, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!177 = metadata !{metadata !"int", metadata !178}
!178 = metadata !{metadata !"omnipotent char", metadata !179}
!179 = metadata !{metadata !"Simple C/C++ TBAA"}
!180 = metadata !{i32 175, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !176, i32 174, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!182 = metadata !{i32 177, i32 0, metadata !181, null}
!183 = metadata !{i32 180, i32 0, metadata !181, null}
!184 = metadata !{i32 182, i32 0, metadata !181, null}
!185 = metadata !{i32 185, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !181, i32 184, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!187 = metadata !{i32 186, i32 0, metadata !186, null}
!188 = metadata !{i32 188, i32 0, metadata !10, null}
!189 = metadata !{i32 194, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !10, i32 193, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!191 = metadata !{i32 195, i32 0, metadata !190, null}
!192 = metadata !{i32 196, i32 0, metadata !10, null}
!193 = metadata !{i32 198, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !10, i32 197, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!195 = metadata !{i32 199, i32 0, metadata !194, null}
!196 = metadata !{i32 201, i32 0, metadata !10, null}
!197 = metadata !{i32 203, i32 0, metadata !10, null}
!198 = metadata !{i32 235, i32 0, metadata !20, null}
!199 = metadata !{i32 236, i32 0, metadata !20, null}
!200 = metadata !{i32 238, i32 0, metadata !20, null}
!201 = metadata !{i32 2}
!202 = metadata !{i32 241, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !20, i32 240, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!204 = metadata !{i32 244, i32 0, metadata !20, null}
!205 = metadata !{i32 247, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !20, i32 246, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!207 = metadata !{i32 250, i32 0, metadata !20, null}
!208 = metadata !{i32 251, i32 0, metadata !20, null}
!209 = metadata !{i32 252, i32 0, metadata !20, null}
!210 = metadata !{i32 255, i32 0, metadata !27, null}
!211 = metadata !{i32 256, i32 0, metadata !27, null}
!212 = metadata !{i32 258, i32 0, metadata !27, null}
!213 = metadata !{i32 900}
!214 = metadata !{i32 260, i32 0, metadata !27, null}
!215 = metadata !{i32 262, i32 0, metadata !27, null}
!216 = metadata !{i32 264, i32 0, metadata !27, null}
!217 = metadata !{i32 265, i32 0, metadata !27, null}
!218 = metadata !{i32 267, i32 0, metadata !27, null}
!219 = metadata !{i32 268, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !27, i32 267, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!221 = metadata !{i32 -8}
!222 = metadata !{i32 271, i32 0, metadata !220, null}
!223 = metadata !{i32 273, i32 0, metadata !220, null}
!224 = metadata !{i32 276, i32 0, metadata !27, null}
!225 = metadata !{i32 278, i32 0, metadata !27, null}
!226 = metadata !{i32 279, i32 0, metadata !27, null}
!227 = metadata !{i32 280, i32 0, metadata !27, null}
!228 = metadata !{i32 220, i32 0, metadata !116, null}
!229 = metadata !{i32 223, i32 0, metadata !116, null}
!230 = metadata !{i32 227, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !116, i32 227, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!232 = metadata !{i32 229, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 229, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!234 = metadata !{i32 786443, metadata !1, metadata !231, i32 228, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!235 = metadata !{i32 230, i32 0, metadata !233, null}
!236 = metadata !{i32 232, i32 0, metadata !116, null}
!237 = metadata !{i32 205, i32 0, metadata !108, null}
!238 = metadata !{i32 208, i32 0, metadata !108, null}
!239 = metadata !{i32 212, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !108, i32 212, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!241 = metadata !{i32 214, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !243, i32 214, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!243 = metadata !{i32 786443, metadata !1, metadata !240, i32 213, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!244 = metadata !{i32 215, i32 0, metadata !242, null}
!245 = metadata !{i32 217, i32 0, metadata !108, null}
!246 = metadata !{i32 283, i32 0, metadata !34, null}
!247 = metadata !{i32 285, i32 0, metadata !34, null}
!248 = metadata !{i32 287, i32 0, metadata !34, null}
!249 = metadata !{i32 500}
!250 = metadata !{i32 289, i32 0, metadata !34, null}
!251 = metadata !{i32 291, i32 0, metadata !34, null}
!252 = metadata !{i32 293, i32 0, metadata !34, null}
!253 = metadata !{i32 294, i32 0, metadata !34, null}
!254 = metadata !{i32 295, i32 0, metadata !34, null}
!255 = metadata !{i32 298, i32 0, metadata !34, null}
!256 = metadata !{i32 299, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !34, i32 298, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!258 = metadata !{i32 303, i32 0, metadata !34, null}
!259 = metadata !{i32 304, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !34, i32 303, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!261 = metadata !{i32 306, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !260, i32 304, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!263 = metadata !{i32 312, i32 0, metadata !260, null}
!264 = metadata !{i32 313, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !260, i32 312, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!266 = metadata !{i32 317, i32 0, metadata !34, null}
!267 = metadata !{i32 318, i32 0, metadata !34, null}
!268 = metadata !{i32 319, i32 0, metadata !34, null}
!269 = metadata !{i32 322, i32 0, metadata !41, null}
!270 = metadata !{i32 323, i32 0, metadata !41, null}
!271 = metadata !{i32 325, i32 0, metadata !41, null}
!272 = metadata !{i32 325}
!273 = metadata !{i32 327, i32 0, metadata !41, null}
!274 = metadata !{i32 328, i32 0, metadata !41, null}
!275 = metadata !{i32 330, i32 0, metadata !41, null}
!276 = metadata !{i32 332, i32 0, metadata !41, null}
!277 = metadata !{i32 333, i32 0, metadata !41, null}
!278 = metadata !{i32 334, i32 0, metadata !41, null}
!279 = metadata !{i32 336, i32 0, metadata !41, null}
!280 = metadata !{i32 339, i32 0, metadata !41, null}
!281 = metadata !{i32 341, i32 0, metadata !41, null}
!282 = metadata !{i32 342, i32 0, metadata !41, null}
!283 = metadata !{i32 343, i32 0, metadata !41, null}
!284 = metadata !{i32 346, i32 0, metadata !48, null}
!285 = metadata !{i32 347, i32 0, metadata !48, null}
!286 = metadata !{i32 348, i32 0, metadata !48, null}
!287 = metadata !{i32 310}
!288 = metadata !{i32 350, i32 0, metadata !48, null}
!289 = metadata !{i32 351, i32 0, metadata !48, null}
!290 = metadata !{i32 353, i32 0, metadata !48, null}
!291 = metadata !{i32 355, i32 0, metadata !48, null}
!292 = metadata !{i32 356, i32 0, metadata !48, null}
!293 = metadata !{i32 357, i32 0, metadata !48, null}
!294 = metadata !{i32 360, i32 0, metadata !54, null}
!295 = metadata !{i32 361, i32 0, metadata !54, null}
!296 = metadata !{i32 362, i32 0, metadata !54, null}
!297 = metadata !{i32 100}
!298 = metadata !{i32 364, i32 0, metadata !54, null}
!299 = metadata !{i32 366, i32 0, metadata !54, null}
!300 = metadata !{i32 367, i32 0, metadata !54, null}
!301 = metadata !{i32 370, i32 0, metadata !54, null}
!302 = metadata !{i32 372, i32 0, metadata !54, null}
!303 = metadata !{i32 375, i32 0, metadata !54, null}
!304 = metadata !{i32 377, i32 0, metadata !54, null}
!305 = metadata !{i32 378, i32 0, metadata !54, null}
!306 = metadata !{i32 382, i32 0, metadata !54, null}
!307 = metadata !{i32 383, i32 0, metadata !54, null}
!308 = metadata !{i32 384, i32 0, metadata !54, null}
!309 = metadata !{i32 387, i32 0, metadata !60, null}
!310 = metadata !{i32 388, i32 0, metadata !60, null}
!311 = metadata !{i32 389, i32 0, metadata !60, null}
!312 = metadata !{i32 392, i32 0, metadata !64, null}
!313 = metadata !{i32 395, i32 0, metadata !64, null}
!314 = metadata !{i32 394, i32 0, metadata !64, null}
!315 = metadata !{i32 396, i32 0, metadata !64, null}
!316 = metadata !{i32 398, i32 0, metadata !64, null}
!317 = metadata !{i32 404, i32 0, metadata !64, null}
!318 = metadata !{i32 406, i32 0, metadata !64, null}
!319 = metadata !{i32 409, i32 0, metadata !64, null}
!320 = metadata !{i32 411, i32 0, metadata !64, null}
!321 = metadata !{i32 413, i32 0, metadata !64, null}
!322 = metadata !{i32 415, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !64, i32 414, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!324 = metadata !{i32 416, i32 0, metadata !323, null}
!325 = metadata !{i32 419, i32 0, metadata !64, null}
!326 = metadata !{i32 420, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !64, i32 420, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!328 = metadata !{i32 421, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !327, i32 420, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!330 = metadata !{i32 422, i32 0, metadata !329, null}
!331 = metadata !{i32 425, i32 0, metadata !64, null}
!332 = metadata !{i32 426, i32 0, metadata !64, null}
!333 = metadata !{i32 428, i32 0, metadata !64, null}
!334 = metadata !{i32 429, i32 0, metadata !64, null}
!335 = metadata !{i32 432, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !64, i32 432, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!337 = metadata !{i32 493, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !64, i32 493, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!339 = metadata !{i32 433, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !336, i32 432, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!341 = metadata !{i32 435, i32 0, metadata !340, null}
!342 = metadata !{i32 438, i32 0, metadata !340, null}
!343 = metadata !{i32 440, i32 0, metadata !340, null}
!344 = metadata !{i32 442, i32 0, metadata !340, null}
!345 = metadata !{i32 444, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !340, i32 443, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!347 = metadata !{i32 445, i32 0, metadata !346, null}
!348 = metadata !{i32 447, i32 0, metadata !346, null}
!349 = metadata !{i32 450, i32 0, metadata !340, null}
!350 = metadata !{i32 452, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !340, i32 451, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!352 = metadata !{i32 453, i32 0, metadata !351, null}
!353 = metadata !{i32 455, i32 0, metadata !351, null}
!354 = metadata !{i32 457, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !351, i32 456, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!356 = metadata !{i32 458, i32 0, metadata !355, null}
!357 = metadata !{i32 459, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !355, i32 458, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!359 = metadata !{i32 460, i32 0, metadata !358, null}
!360 = metadata !{i32 464, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !351, i32 463, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!362 = metadata !{i32 465, i32 0, metadata !361, null}
!363 = metadata !{i32 466, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !361, i32 465, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!365 = metadata !{i32 467, i32 0, metadata !364, null}
!366 = metadata !{i32 494, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !338, i32 493, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!368 = metadata !{i32 495, i32 0, metadata !367, null}
!369 = metadata !{i32 498, i32 0, metadata !367, null}
!370 = metadata !{i32 500, i32 0, metadata !367, null}
!371 = metadata !{metadata !"any pointer", metadata !178}
!372 = metadata !{i32 502, i32 0, metadata !367, null}
!373 = metadata !{i32 503, i32 0, metadata !367, null}
!374 = metadata !{i32 504, i32 0, metadata !367, null}
!375 = metadata !{i32 506, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !367, i32 504, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!377 = metadata !{i32 507, i32 0, metadata !376, null}
!378 = metadata !{i32 508, i32 0, metadata !376, null}
!379 = metadata !{i32 509, i32 0, metadata !376, null}
!380 = metadata !{i32 512, i32 0, metadata !376, null}
!381 = metadata !{i32 514, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !376, i32 513, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!383 = metadata !{i32 515, i32 0, metadata !382, null}
!384 = metadata !{i32 517, i32 0, metadata !382, null}
!385 = metadata !{i32 518, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !382, i32 517, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!387 = metadata !{i32 519, i32 0, metadata !386, null}
!388 = metadata !{i32 520, i32 0, metadata !386, null}
!389 = metadata !{i32 524, i32 0, metadata !376, null}
!390 = metadata !{i32 525, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !376, i32 524, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!392 = metadata !{i32 526, i32 0, metadata !391, null}
!393 = metadata !{i32 530, i32 0, metadata !376, null}
!394 = metadata !{i32 531, i32 0, metadata !376, null}
!395 = metadata !{i32 534, i32 0, metadata !376, null}
!396 = metadata !{i32 536, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !376, i32 535, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!398 = metadata !{i32 538, i32 0, metadata !397, null}
!399 = metadata !{i32 542, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !397, i32 539, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!401 = metadata !{i32 544, i32 0, metadata !400, null}
!402 = metadata !{i32 556, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !397, i32 551, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!404 = metadata !{i32 545, i32 0, metadata !400, null}
!405 = metadata !{i32 547, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !400, i32 546, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!407 = metadata !{i32 557, i32 0, metadata !403, null}
!408 = metadata !{i32 559, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !403, i32 558, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!410 = metadata !{i32 564, i32 0, metadata !397, null}
!411 = metadata !{i32 565, i32 0, metadata !397, null}
!412 = metadata !{i32 568, i32 0, metadata !397, null}
!413 = metadata !{i32 570, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !397, i32 569, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!415 = metadata !{i32 573, i32 0, metadata !414, null}
!416 = metadata !{i32 575, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !414, i32 574, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!418 = metadata !{i32 578, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !417, i32 577, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!420 = metadata !{i32 581, i32 0, metadata !419, null}
!421 = metadata !{i32 583, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !419, i32 582, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!423 = metadata !{i32 584, i32 0, metadata !422, null}
!424 = metadata !{i32 587, i32 0, metadata !414, null}
!425 = metadata !{i32 589, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !414, i32 588, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!427 = metadata !{i32 592, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !426, i32 591, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!429 = metadata !{i32 595, i32 0, metadata !428, null}
!430 = metadata !{i32 597, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !428, i32 596, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!432 = metadata !{i32 598, i32 0, metadata !431, null}
!433 = metadata !{i32 604, i32 0, metadata !376, null}
!434 = metadata !{i32 605, i32 0, metadata !376, null}
!435 = metadata !{i32 610, i32 0, metadata !376, null}
!436 = metadata !{i32 611, i32 0, metadata !376, null}
!437 = metadata !{i32 612, i32 0, metadata !376, null}
!438 = metadata !{i32 613, i32 0, metadata !376, null}
!439 = metadata !{i32 617, i32 0, metadata !376, null}
!440 = metadata !{i32 619, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !376, i32 618, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!442 = metadata !{i32 620, i32 0, metadata !441, null}
!443 = metadata !{i32 622, i32 0, metadata !441, null}
!444 = metadata !{i32 623, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !441, i32 622, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!446 = metadata !{i32 624, i32 0, metadata !445, null}
!447 = metadata !{i32 625, i32 0, metadata !445, null}
!448 = metadata !{i32 629, i32 0, metadata !376, null}
!449 = metadata !{i32 630, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !376, i32 629, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!451 = metadata !{i32 631, i32 0, metadata !450, null}
!452 = metadata !{i32 635, i32 0, metadata !376, null}
!453 = metadata !{i32 636, i32 0, metadata !376, null}
!454 = metadata !{i32 639, i32 0, metadata !376, null}
!455 = metadata !{i32 641, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !376, i32 640, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!457 = metadata !{i32 643, i32 0, metadata !456, null}
!458 = metadata !{i32 659, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !456, i32 656, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!460 = metadata !{i32 661, i32 0, metadata !459, null}
!461 = metadata !{i32 649, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !456, i32 644, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!463 = metadata !{i32 650, i32 0, metadata !462, null}
!464 = metadata !{i32 652, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !462, i32 651, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!466 = metadata !{i32 662, i32 0, metadata !459, null}
!467 = metadata !{i32 664, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !459, i32 663, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!469 = metadata !{i32 669, i32 0, metadata !456, null}
!470 = metadata !{i32 670, i32 0, metadata !456, null}
!471 = metadata !{i32 673, i32 0, metadata !456, null}
!472 = metadata !{i32 675, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !456, i32 674, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!474 = metadata !{i32 678, i32 0, metadata !473, null}
!475 = metadata !{i32 680, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !473, i32 679, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!477 = metadata !{i32 683, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !476, i32 682, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!479 = metadata !{i32 686, i32 0, metadata !478, null}
!480 = metadata !{i32 688, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !478, i32 687, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!482 = metadata !{i32 689, i32 0, metadata !481, null}
!483 = metadata !{i32 692, i32 0, metadata !473, null}
!484 = metadata !{i32 694, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !473, i32 693, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!486 = metadata !{i32 697, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !485, i32 696, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!488 = metadata !{i32 700, i32 0, metadata !487, null}
!489 = metadata !{i32 702, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !487, i32 701, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!491 = metadata !{i32 703, i32 0, metadata !490, null}
!492 = metadata !{i32 710, i32 0, metadata !376, null}
!493 = metadata !{i32 711, i32 0, metadata !376, null}
!494 = metadata !{i32 716, i32 0, metadata !376, null}
!495 = metadata !{i32 718, i32 0, metadata !376, null}
!496 = metadata !{i32 720, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !376, i32 719, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!498 = metadata !{i32 721, i32 0, metadata !497, null}
!499 = metadata !{i32 726, i32 0, metadata !376, null}
!500 = metadata !{i32 728, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !376, i32 727, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!502 = metadata !{i32 729, i32 0, metadata !501, null}
!503 = metadata !{i32 731, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !501, i32 730, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!505 = metadata !{i32 732, i32 0, metadata !504, null}
!506 = metadata !{i32 737, i32 0, metadata !376, null}
!507 = metadata !{i32 739, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !376, i32 737, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!509 = metadata !{i32 741, i32 0, metadata !508, null}
!510 = metadata !{i32 743, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !508, i32 742, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!512 = metadata !{i32 744, i32 0, metadata !511, null}
!513 = metadata !{i32 746, i32 0, metadata !508, null}
!514 = metadata !{i32 748, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !508, i32 746, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!516 = metadata !{i32 749, i32 0, metadata !515, null}
!517 = metadata !{i32 755, i32 0, metadata !376, null}
!518 = metadata !{i32 756, i32 0, metadata !376, null}
!519 = metadata !{i32 758, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !376, i32 757, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!521 = metadata !{i32 759, i32 0, metadata !520, null}
!522 = metadata !{i32 763, i32 0, metadata !376, null}
!523 = metadata !{i32 765, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !376, i32 764, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!525 = metadata !{i32 766, i32 0, metadata !524, null}
!526 = metadata !{i32 768, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !524, i32 767, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!528 = metadata !{i32 769, i32 0, metadata !527, null}
!529 = metadata !{i32 773, i32 0, metadata !376, null}
!530 = metadata !{i32 775, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !376, i32 773, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!532 = metadata !{i32 777, i32 0, metadata !531, null}
!533 = metadata !{i32 779, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !531, i32 778, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!535 = metadata !{i32 780, i32 0, metadata !534, null}
!536 = metadata !{i32 782, i32 0, metadata !531, null}
!537 = metadata !{i32 784, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !531, i32 782, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!539 = metadata !{i32 785, i32 0, metadata !538, null}
!540 = metadata !{i32 791, i32 0, metadata !376, null}
!541 = metadata !{i32 792, i32 0, metadata !376, null}
!542 = metadata !{i32 795, i32 0, metadata !376, null}
!543 = metadata !{i32 796, i32 0, metadata !376, null}
!544 = metadata !{i32 799, i32 0, metadata !376, null}
!545 = metadata !{i32 800, i32 0, metadata !376, null}
!546 = metadata !{i32 803, i32 0, metadata !376, null}
!547 = metadata !{i32 804, i32 0, metadata !376, null}
!548 = metadata !{i32 807, i32 0, metadata !376, null}
!549 = metadata !{i32 808, i32 0, metadata !376, null}
!550 = metadata !{i32 811, i32 0, metadata !376, null}
!551 = metadata !{i32 812, i32 0, metadata !376, null}
!552 = metadata !{i32 815, i32 0, metadata !376, null}
!553 = metadata !{i32 817, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !376, i32 816, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!555 = metadata !{i32 821, i32 0, metadata !554, null}
!556 = metadata !{i32 822, i32 0, metadata !554, null}
!557 = metadata !{i32 824, i32 0, metadata !554, null}
!558 = metadata !{i32 825, i32 0, metadata !554, null}
!559 = metadata !{i32 826, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !554, i32 825, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!561 = metadata !{i32 830, i32 0, metadata !560, null}
!562 = metadata !{i32 831, i32 0, metadata !560, null}
!563 = metadata !{i32 837, i32 0, metadata !554, null}
!564 = metadata !{i32 839, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !554, i32 838, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!566 = metadata !{i32 840, i32 0, metadata !565, null}
!567 = metadata !{i32 842, i32 0, metadata !565, null}
!568 = metadata !{i32 843, i32 0, metadata !565, null}
!569 = metadata !{i32 844, i32 0, metadata !565, null}
!570 = metadata !{i32 846, i32 0, metadata !565, null}
!571 = metadata !{i32 847, i32 0, metadata !565, null}
!572 = metadata !{i32 848, i32 0, metadata !565, null}
!573 = metadata !{i32 850, i32 0, metadata !565, null}
!574 = metadata !{i32 855, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !554, i32 853, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!576 = metadata !{i32 860, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !376, i32 859, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!578 = metadata !{i32 865, i32 0, metadata !376, null}
!579 = metadata !{i32 867, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !376, i32 866, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!581 = metadata !{i32 871, i32 0, metadata !580, null}
!582 = metadata !{i32 872, i32 0, metadata !580, null}
!583 = metadata !{i32 874, i32 0, metadata !580, null}
!584 = metadata !{i32 875, i32 0, metadata !580, null}
!585 = metadata !{i32 876, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !1, metadata !580, i32 875, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!587 = metadata !{i32 880, i32 0, metadata !586, null}
!588 = metadata !{i32 881, i32 0, metadata !586, null}
!589 = metadata !{i32 887, i32 0, metadata !580, null}
!590 = metadata !{i32 889, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !580, i32 888, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!592 = metadata !{i32 890, i32 0, metadata !591, null}
!593 = metadata !{i32 892, i32 0, metadata !591, null}
!594 = metadata !{i32 893, i32 0, metadata !591, null}
!595 = metadata !{i32 894, i32 0, metadata !591, null}
!596 = metadata !{i32 896, i32 0, metadata !591, null}
!597 = metadata !{i32 897, i32 0, metadata !591, null}
!598 = metadata !{i32 898, i32 0, metadata !591, null}
!599 = metadata !{i32 900, i32 0, metadata !591, null}
!600 = metadata !{i32 904, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !580, i32 903, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!602 = metadata !{i32 909, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !376, i32 908, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!604 = metadata !{i32 916, i32 0, metadata !64, null}
!605 = metadata !{i32 919, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !64, i32 917, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!607 = metadata !{i32 920, i32 0, metadata !606, null}
!608 = metadata !{i32 921, i32 0, metadata !606, null}
!609 = metadata !{i32 922, i32 0, metadata !606, null}
!610 = metadata !{i32 923, i32 0, metadata !606, null}
!611 = metadata !{i32 924, i32 0, metadata !606, null}
!612 = metadata !{i32 925, i32 0, metadata !606, null}
!613 = metadata !{i32 926, i32 0, metadata !606, null}
!614 = metadata !{i32 929, i32 0, metadata !64, null}
!615 = metadata !{i32 932, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !64, i32 930, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!617 = metadata !{i32 933, i32 0, metadata !616, null}
!618 = metadata !{i32 937, i32 0, metadata !616, null}
!619 = metadata !{i32 939, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !616, i32 937, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!621 = metadata !{i32 940, i32 0, metadata !620, null}
!622 = metadata !{i32 941, i32 0, metadata !620, null}
!623 = metadata !{i32 944, i32 0, metadata !620, null}
!624 = metadata !{i32 945, i32 0, metadata !620, null}
!625 = metadata !{i32 946, i32 0, metadata !620, null}
!626 = metadata !{i32 949, i32 0, metadata !620, null}
!627 = metadata !{i32 951, i32 0, metadata !620, null}
!628 = metadata !{i32 952, i32 0, metadata !620, null}
!629 = metadata !{i32 953, i32 0, metadata !620, null}
!630 = metadata !{i32 954, i32 0, metadata !620, null}
!631 = metadata !{i32 957, i32 0, metadata !620, null}
!632 = metadata !{i32 959, i32 0, metadata !620, null}
!633 = metadata !{i32 960, i32 0, metadata !620, null}
!634 = metadata !{i32 961, i32 0, metadata !620, null}
!635 = metadata !{i32 962, i32 0, metadata !620, null}
!636 = metadata !{i32 966, i32 0, metadata !64, null}
!637 = metadata !{i32 968, i32 0, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !64, i32 967, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!639 = metadata !{i32 969, i32 0, metadata !638, null}
!640 = metadata !{i32 970, i32 0, metadata !64, null}
!641 = metadata !{i32 972, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !64, i32 971, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!643 = metadata !{i32 973, i32 0, metadata !642, null}
!644 = metadata !{i32 978, i32 0, metadata !64, null}
!645 = metadata !{i32 980, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !64, i32 979, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!647 = metadata !{i32 981, i32 0, metadata !646, null}
!648 = metadata !{i32 983, i32 0, metadata !64, null}
!649 = metadata !{i32 985, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !64, i32 984, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!651 = metadata !{i32 986, i32 0, metadata !650, null}
!652 = metadata !{i32 989, i32 0, metadata !64, null}
!653 = metadata !{i32 992, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !64, i32 990, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!655 = metadata !{i32 994, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !654, i32 993, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!657 = metadata !{i32 998, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !656, i32 995, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!659 = metadata !{i32 1000, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !658, i32 999, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!661 = metadata !{i32 1001, i32 0, metadata !660, null}
!662 = metadata !{i32 1003, i32 0, metadata !656, null}
!663 = metadata !{i32 1008, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !656, i32 1004, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!665 = metadata !{i32 1010, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !664, i32 1009, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!667 = metadata !{i32 1011, i32 0, metadata !666, null}
!668 = metadata !{i32 1013, i32 0, metadata !656, null}
!669 = metadata !{i32 1016, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !656, i32 1014, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!671 = metadata !{i32 1019, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !670, i32 1017, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!673 = metadata !{i32 1020, i32 0, metadata !672, null}
!674 = metadata !{i32 1023, i32 0, metadata !654, null}
!675 = metadata !{i32 1025, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !654, i32 1024, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!677 = metadata !{i32 1028, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !676, i32 1026, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!679 = metadata !{i32 1032, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !678, i32 1029, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!681 = metadata !{i32 1033, i32 0, metadata !680, null}
!682 = metadata !{i32 1035, i32 0, metadata !676, null}
!683 = metadata !{i32 1040, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !676, i32 1036, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!685 = metadata !{i32 1042, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !684, i32 1041, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!687 = metadata !{i32 1043, i32 0, metadata !686, null}
!688 = metadata !{i32 1045, i32 0, metadata !676, null}
!689 = metadata !{i32 1050, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !676, i32 1046, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!691 = metadata !{i32 1052, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !690, i32 1051, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!693 = metadata !{i32 1053, i32 0, metadata !692, null}
!694 = metadata !{i32 1060, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !64, i32 1058, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!696 = metadata !{i32 1063, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !695, i32 1061, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!698 = metadata !{i32 1065, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !697, i32 1064, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!700 = metadata !{i32 1068, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !699, i32 1066, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!702 = metadata !{i32 1069, i32 0, metadata !701, null}
!703 = metadata !{i32 1073, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !699, i32 1071, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!705 = metadata !{i32 1076, i32 0, metadata !697, null}
!706 = metadata !{i32 1080, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !697, i32 1077, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!708 = metadata !{i32 1083, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !707, i32 1081, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!710 = metadata !{i32 1084, i32 0, metadata !709, null}
!711 = metadata !{i32 1085, i32 0, metadata !707, null}
!712 = metadata !{i32 1087, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !707, i32 1086, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!714 = metadata !{i32 1088, i32 0, metadata !713, null}
!715 = metadata !{i32 1094, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !697, i32 1091, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!717 = metadata !{i32 1097, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !716, i32 1095, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!719 = metadata !{i32 1098, i32 0, metadata !718, null}
!720 = metadata !{i32 1099, i32 0, metadata !716, null}
!721 = metadata !{i32 1101, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !716, i32 1100, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!723 = metadata !{i32 1102, i32 0, metadata !722, null}
!724 = metadata !{i32 1106, i32 0, metadata !695, null}
!725 = metadata !{i32 1108, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !695, i32 1107, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!727 = metadata !{i32 1110, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !726, i32 1109, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!729 = metadata !{i32 1111, i32 0, metadata !728, null}
!730 = metadata !{i32 1112, i32 0, metadata !726, null}
!731 = metadata !{i32 1114, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !726, i32 1113, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!733 = metadata !{i32 1115, i32 0, metadata !732, null}
!734 = metadata !{i32 1119, i32 0, metadata !64, null}
!735 = metadata !{i32 1121, i32 0, metadata !64, null}
!736 = metadata !{i32 1122, i32 0, metadata !64, null}
!737 = metadata !{i32 1125, i32 0, metadata !64, null}
!738 = metadata !{i32 1126, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !64, i32 1125, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!740 = metadata !{i32 1129, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !64, i32 1128, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/neval.c]
!742 = metadata !{i32 1131, i32 0, metadata !64, null}
