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
  %0 = load i32* @piece_count, align 4, !tbaa !0
  %cmp43 = icmp slt i32 %0, 1
  br i1 %cmp43, label %if.then30, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %xnum_pieces.046 = phi i32 [ %xnum_pieces.1, %for.inc ], [ 0, %entry ]
  %a.045 = phi i32 [ %a.1, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.045, 1
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %2 = load i32* %arrayidx2, align 4, !tbaa !0
  switch i32 %2, label %if.then15 [
    i32 1, label %for.inc
    i32 2, label %for.inc
    i32 13, label %for.inc
    i32 0, label %for.inc
  ]

if.then15:                                        ; preds = %if.else
  %inc16 = add nsw i32 %xnum_pieces.046, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.else, %if.else, %if.else, %for.body, %if.then15
  %a.1 = phi i32 [ %inc, %if.then15 ], [ %inc, %if.else ], [ %a.045, %for.body ], [ %inc, %if.else ], [ %inc, %if.else ], [ %inc, %if.else ]
  %xnum_pieces.1 = phi i32 [ %inc16, %if.then15 ], [ %xnum_pieces.046, %if.else ], [ %xnum_pieces.046, %for.body ], [ %xnum_pieces.046, %if.else ], [ %xnum_pieces.046, %if.else ], [ %xnum_pieces.046, %if.else ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp = icmp sgt i32 %a.1, %0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp19 = icmp sgt i32 %xnum_pieces.1, 11
  br i1 %cmp19, label %land.lhs.true20, label %if.else28

land.lhs.true20:                                  ; preds = %for.end
  %3 = load i32* @white_castled, align 4, !tbaa !0
  %tobool21 = icmp ne i32 %3, 0
  %4 = load i32* @black_castled, align 4, !tbaa !0
  %tobool22 = icmp ne i32 %4, 0
  %or.cond = and i1 %tobool21, %tobool22
  br i1 %or.cond, label %if.else28, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %5 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 30), align 4, !tbaa !0
  %cmp24 = icmp eq i32 %5, 5
  %6 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 114), align 4, !tbaa !0
  %cmp26 = icmp eq i32 %6, 6
  %or.cond34 = or i1 %cmp24, %cmp26
  br i1 %or.cond34, label %if.then27, label %if.else28

if.then27:                                        ; preds = %land.lhs.true23
  store i32 0, i32* @phase, align 4, !tbaa !0
  br label %if.end33

if.else28:                                        ; preds = %land.lhs.true23, %land.lhs.true20, %for.end
  %cmp29 = icmp slt i32 %xnum_pieces.1, 7
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %entry, %if.else28
  store i32 2, i32* @phase, align 4, !tbaa !0
  br label %if.end33

if.else31:                                        ; preds = %if.else28
  store i32 1, i32* @phase, align 4, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else31, %if.then27
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @King(i32 %sq, i32 %c) #1 {
entry:
  %idxprom = sext i32 %sq to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %land.lhs.true14, label %if.end30

land.lhs.true14:                                  ; preds = %entry
  %sub = add nsw i32 %sq, -1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %add = add nsw i32 %1, 1
  %shr.mask = and i32 %add, -2
  %cmp3 = icmp eq i32 %shr.mask, 8
  %and = and i32 %add, 1
  %cmp9 = icmp eq i32 %and, %c
  %or.cond = and i1 %cmp3, %cmp9
  %. = select i1 %or.cond, i32 2, i32 0
  %add15 = add nsw i32 %sq, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom16
  %2 = load i32* %arrayidx17, align 4, !tbaa !0
  %add18 = add nsw i32 %2, 1
  %shr19.mask = and i32 %add18, -2
  %cmp20 = icmp eq i32 %shr19.mask, 8
  %and26 = and i32 %add18, 1
  %cmp27 = icmp eq i32 %and26, %c
  %or.cond45 = and i1 %cmp20, %cmp27
  %add29 = add nsw i32 %., 2
  %add29.s.0 = select i1 %or.cond45, i32 %add29, i32 %.
  br label %if.end30

if.end30:                                         ; preds = %entry, %land.lhs.true14
  %s.1 = phi i32 [ %add29.s.0, %land.lhs.true14 ], [ 0, %entry ]
  %cmp31 = icmp eq i32 %c, 1
  %sub33 = sub nsw i32 0, %s.1
  %sub33.s.1 = select i1 %cmp31, i32 %sub33, i32 %s.1
  ret i32 %sub33.s.1
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Queen(i32 %sq, i32 %c) #1 {
entry:
  %xor = xor i32 %c, 1
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %0 to i64
  %idxprom2 = sext i32 %sq to i64
  %arrayidx4 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom2, i64 %idxprom1
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32]* @std_q_tropism, i64 0, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %add7 = add nsw i32 %2, 900
  %call = tail call fastcc i32 @rook_mobility(i32 %sq) #5
  %shl = shl i32 %call, 1
  %call8 = tail call fastcc i32 @bishop_mobility(i32 %sq) #5
  %shl9 = shl i32 %call8, 1
  %add10 = add nsw i32 %shl9, %shl
  %cmp = icmp slt i32 %add10, 5
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  switch i32 %add10, label %if.else16 [
    i32 0, label %if.end19
    i32 2, label %if.then14
  ]

if.then14:                                        ; preds = %if.then
  br label %if.end19

if.else16:                                        ; preds = %if.then
  %sub17 = add nsw i32 %add10, -5
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.else16, %if.then14, %entry
  %mob.0 = phi i32 [ -8, %if.then14 ], [ %sub17, %if.else16 ], [ %add10, %entry ], [ -15, %if.then ]
  %add20 = add nsw i32 %add7, %mob.0
  %cmp21 = icmp eq i32 %c, 1
  %sub23 = sub nsw i32 0, %add20
  %sub23.add20 = select i1 %cmp21, i32 %sub23, i32 %add20
  ret i32 %sub23.add20
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @rook_mobility(i32 %square) #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc9, %entry
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc9 ]
  %m.022 = phi i32 [ 0, %entry ], [ %m.1.lcssa, %for.inc9 ]
  %arrayidx = getelementptr inbounds [4 x i32]* @rook_mobility.dir, i64 0, i64 %indvars.iv24
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add i32 %0, %square
  %idxprom217 = sext i32 %add to i64
  %arrayidx318 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom217
  %1 = load i32* %arrayidx318, align 4, !tbaa !0
  %cmp419 = icmp eq i32 %1, 13
  br i1 %cmp419, label %for.body5.lr.ph, label %for.inc9

for.body5.lr.ph:                                  ; preds = %for.body
  %2 = sext i32 %0 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv = phi i64 [ %idxprom217, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %m.121 = phi i32 [ %m.022, %for.body5.lr.ph ], [ %inc, %for.body5 ]
  %inc = add nsw i32 %m.121, 1
  %indvars.iv.next = add i64 %indvars.iv, %2
  %arrayidx3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next
  %3 = load i32* %arrayidx3, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %3, 13
  br i1 %cmp4, label %for.body5, label %for.inc9

for.inc9:                                         ; preds = %for.body5, %for.body
  %m.1.lcssa = phi i32 [ %m.022, %for.body ], [ %inc, %for.body5 ]
  %indvars.iv.next25 = add i64 %indvars.iv24, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next25 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end11, label %for.body

for.end11:                                        ; preds = %for.inc9
  ret i32 %m.1.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @bishop_mobility(i32 %square) #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc9, %entry
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc9 ]
  %m.022 = phi i32 [ 0, %entry ], [ %m.1.lcssa, %for.inc9 ]
  %arrayidx = getelementptr inbounds [4 x i32]* @bishop_mobility.dir, i64 0, i64 %indvars.iv24
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add i32 %0, %square
  %idxprom217 = sext i32 %add to i64
  %arrayidx318 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom217
  %1 = load i32* %arrayidx318, align 4, !tbaa !0
  %cmp419 = icmp eq i32 %1, 13
  br i1 %cmp419, label %for.body5.lr.ph, label %for.inc9

for.body5.lr.ph:                                  ; preds = %for.body
  %2 = sext i32 %0 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv = phi i64 [ %idxprom217, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %m.121 = phi i32 [ %m.022, %for.body5.lr.ph ], [ %inc, %for.body5 ]
  %inc = add nsw i32 %m.121, 1
  %indvars.iv.next = add i64 %indvars.iv, %2
  %arrayidx3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next
  %3 = load i32* %arrayidx3, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %3, 13
  br i1 %cmp4, label %for.body5, label %for.inc9

for.inc9:                                         ; preds = %for.body5, %for.body
  %m.1.lcssa = phi i32 [ %m.022, %for.body ], [ %inc, %for.body5 ]
  %indvars.iv.next25 = add i64 %indvars.iv24, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next25 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end11, label %for.body

for.end11:                                        ; preds = %for.inc9
  ret i32 %m.1.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Rook(i32 %sq, i32 %c) #1 {
entry:
  %xor = xor i32 %c, 1
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %0 to i64
  %idxprom2 = sext i32 %sq to i64
  %arrayidx4 = getelementptr inbounds [144 x [144 x i32]]* @rookdistance, i64 0, i64 %idxprom2, i64 %idxprom1
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32]* @std_r_tropism, i64 0, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %add7 = add nsw i32 %2, 500
  %call = tail call fastcc i32 @rook_mobility(i32 %sq) #5
  %shl = shl i32 %call, 1
  %cmp = icmp slt i32 %shl, 3
  %sub = add nsw i32 %shl, -5
  %sub.shl = select i1 %cmp, i32 %sub, i32 %shl
  %add8 = add nsw i32 %add7, %sub.shl
  %sub9 = add nsw i32 %sq, -1
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom10
  %3 = load i32* %arrayidx11, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %3, 13
  br i1 %cmp12, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %add13 = add nsw i32 %sq, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom14
  %4 = load i32* %arrayidx15, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %4, 13
  %sub18 = add nsw i32 %add8, -5
  %add8.sub18 = select i1 %cmp16, i32 %add8, i32 %sub18
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %entry
  %s.0 = phi i32 [ %add8, %entry ], [ %add8.sub18, %land.lhs.true ]
  %5 = load i32* @wmat, align 4, !tbaa !0
  %cmp20 = icmp ne i32 %5, 1300
  %6 = load i32* @bmat, align 4, !tbaa !0
  %cmp21 = icmp ne i32 %6, 1300
  %or.cond = or i1 %cmp20, %cmp21
  br i1 %or.cond, label %if.then22, label %if.end54

if.then22:                                        ; preds = %if.end19
  %idxprom23 = sext i32 %c to i64
  %arrayidx24 = getelementptr inbounds [2 x i32]* @Rook.square_d1, i64 0, i64 %idxprom23
  %7 = load i32* %arrayidx24, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %7, %sq
  br i1 %cmp25, label %if.then26, label %if.end46

if.then26:                                        ; preds = %if.then22
  %add30 = add nsw i32 %sq, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom31
  %8 = load i32* %arrayidx32, align 4, !tbaa !0
  %add33 = add nsw i32 %8, 1
  %shr.mask = and i32 %add33, -2
  %cmp34 = icmp eq i32 %shr.mask, 8
  %and = and i32 %add33, 1
  %cmp42 = icmp eq i32 %and, %c
  %or.cond80 = and i1 %cmp34, %cmp42
  %add44.add27.v = select i1 %or.cond80, i32 15, i32 10
  %add44.add27 = add i32 %add44.add27.v, %s.0
  br label %if.end46

if.end46:                                         ; preds = %if.then26, %if.then22
  %s.1 = phi i32 [ %s.0, %if.then22 ], [ %add44.add27, %if.then26 ]
  %add49 = add nsw i32 %7, 1
  %cmp50 = icmp eq i32 %add49, %sq
  %add52 = add nsw i32 %s.1, 10
  %add52.s.1 = select i1 %cmp50, i32 %add52, i32 %s.1
  br label %if.end54

if.end54:                                         ; preds = %if.end46, %if.end19
  %s.2 = phi i32 [ %s.0, %if.end19 ], [ %add52.s.1, %if.end46 ]
  %cmp55 = icmp eq i32 %c, 1
  %sub57 = sub nsw i32 0, %s.2
  %sub57.s.2 = select i1 %cmp55, i32 %sub57, i32 %s.2
  ret i32 %sub57.s.2
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Bishop(i32 %sq, i32 %c) #1 {
entry:
  %xor = xor i32 %c, 1
  %idxprom = sext i32 %sq to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @sbishop, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %add1 = add nsw i32 %0, 325
  %idxprom2 = sext i32 %xor to i64
  %arrayidx3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom2
  %1 = load i32* %arrayidx3, align 4, !tbaa !0
  %idxprom4 = sext i32 %1 to i64
  %arrayidx7 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom, i64 %idxprom4
  %2 = load i32* %arrayidx7, align 4, !tbaa !0
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32]* @std_b_tropism, i64 0, i64 %idxprom8
  %3 = load i32* %arrayidx9, align 4, !tbaa !0
  %add10 = add nsw i32 %add1, %3
  %call = tail call fastcc i32 @bishop_mobility(i32 %sq) #5
  %shl = shl i32 %call, 1
  %cmp = icmp slt i32 %shl, 3
  %sub = add nsw i32 %shl, -5
  %sub.shl = select i1 %cmp, i32 %sub, i32 %shl
  %add11 = add nsw i32 %add10, %sub.shl
  switch i32 %c, label %if.end23 [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true17
  ]

land.lhs.true:                                    ; preds = %entry
  %cmp13 = icmp eq i32 %sq, 39
  %4 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 52), align 4, !tbaa !0
  %cmp15 = icmp eq i32 %4, 1
  %or.cond = and i1 %cmp13, %cmp15
  br i1 %or.cond, label %if.then21, label %if.end23

land.lhs.true17:                                  ; preds = %entry
  %cmp18 = icmp eq i32 %sq, 99
  %5 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 88), align 4, !tbaa !0
  %cmp20 = icmp eq i32 %5, 2
  %or.cond28 = and i1 %cmp18, %cmp20
  br i1 %or.cond28, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true17, %land.lhs.true
  %sub22 = add nsw i32 %add11, -5
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %entry, %if.then21, %land.lhs.true17
  %s.0 = phi i32 [ %sub22, %if.then21 ], [ %add11, %land.lhs.true17 ], [ %add11, %entry ], [ %add11, %land.lhs.true ]
  %cmp24 = icmp eq i32 %c, 1
  %sub26 = sub nsw i32 0, %s.0
  %sub26.s.0 = select i1 %cmp24, i32 %sub26, i32 %s.0
  ret i32 %sub26.s.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Knight(i32 %sq, i32 %c) #1 {
entry:
  %xor = xor i32 %c, 1
  %idxprom = sext i32 %sq to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @sknight, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %add1 = add nsw i32 %0, 310
  %idxprom2 = sext i32 %xor to i64
  %arrayidx3 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom2
  %1 = load i32* %arrayidx3, align 4, !tbaa !0
  %idxprom4 = sext i32 %1 to i64
  %arrayidx7 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom, i64 %idxprom4
  %2 = load i32* %arrayidx7, align 4, !tbaa !0
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32]* @std_n_tropism, i64 0, i64 %idxprom8
  %3 = load i32* %arrayidx9, align 4, !tbaa !0
  %add10 = add nsw i32 %add1, %3
  %cmp = icmp eq i32 %c, 1
  %sub = sub nsw i32 0, %add10
  %sub.add10 = select i1 %cmp, i32 %sub, i32 %add10
  ret i32 %sub.add10
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Pawn(i32 %sq, i32 %c) #1 {
entry:
  %xor = xor i32 %c, 1
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %0 to i64
  %idxprom2 = sext i32 %sq to i64
  %arrayidx4 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom2, i64 %idxprom1
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32]* @std_p_tropism, i64 0, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %add7 = add nsw i32 %2, 100
  %idxprom8 = sext i32 %c to i64
  %arrayidx9 = getelementptr inbounds [2 x i32]* @king_locs, i64 0, i64 %idxprom8
  %3 = load i32* %arrayidx9, align 4, !tbaa !0
  %idxprom10 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom2, i64 %idxprom10
  %4 = load i32* %arrayidx13, align 4, !tbaa !0
  %idxprom14 = sext i32 %4 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32]* @std_own_p_tropism, i64 0, i64 %idxprom14
  %5 = load i32* %arrayidx15, align 4, !tbaa !0
  %add16 = add nsw i32 %add7, %5
  %add17 = add nsw i32 %sq, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom18
  %6 = load i32* %arrayidx19, align 4, !tbaa !0
  %add20 = add nsw i32 %6, 1
  %shr.mask = and i32 %add20, -2
  %cmp = icmp eq i32 %shr.mask, 2
  %and = and i32 %add20, 1
  %cmp25 = icmp eq i32 %and, %c
  %or.cond = and i1 %cmp, %cmp25
  %add26 = add nsw i32 %add16, 5
  %s.0 = select i1 %or.cond, i32 %add26, i32 %add16
  %add27 = add nsw i32 %sq, 11
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28
  %7 = load i32* %arrayidx29, align 4, !tbaa !0
  %add30 = add nsw i32 %7, 1
  %shr31.mask = and i32 %add30, -2
  %cmp32 = icmp eq i32 %shr31.mask, 2
  %and38 = and i32 %add30, 1
  %cmp39 = icmp eq i32 %and38, %c
  %or.cond81 = and i1 %cmp32, %cmp39
  br i1 %or.cond81, label %if.then40, label %if.else

if.then40:                                        ; preds = %entry
  %add41 = add nsw i32 %s.0, 1
  br label %if.end58

if.else:                                          ; preds = %entry
  %add42 = add nsw i32 %sq, 13
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom43
  %8 = load i32* %arrayidx44, align 4, !tbaa !0
  %add45 = add nsw i32 %8, 1
  %shr46.mask = and i32 %add45, -2
  %cmp47 = icmp eq i32 %shr46.mask, 2
  %and53 = and i32 %add45, 1
  %cmp54 = icmp eq i32 %and53, %c
  %or.cond82 = and i1 %cmp47, %cmp54
  %add56 = zext i1 %or.cond82 to i32
  %add56.s.0 = add nsw i32 %add56, %s.0
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then40
  %s.1 = phi i32 [ %add41, %if.then40 ], [ %add56.s.0, %if.else ]
  %cmp59 = icmp eq i32 %c, 1
  %sub = sub nsw i32 0, %s.1
  %sub.s.1 = select i1 %cmp59, i32 %sub, i32 %s.1
  ret i32 %sub.s.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @ErrorIt(i32 %sq, i32 %c) #0 {
entry:
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str, i64 0, i64 0), i32 %sq, i32 %c) #6
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @std_eval(i32 %alpha, i32 %beta) #0 {
entry:
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %black_back_pawn = alloca [11 x i32], align 16
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %0 = bitcast [2 x [11 x i32]]* %pawns to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #3
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*
  call void @llvm.lifetime.start(i64 44, i8* %1) #3
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*
  call void @llvm.lifetime.start(i64 44, i8* %2) #3
  store i32 0, i32* %score, align 4, !tbaa !0
  %3 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool = icmp ne i32 %3, 0
  %4 = load i32* @Material, align 4, !tbaa !0
  %sub = sub nsw i32 0, %4
  %cond = select i1 %tobool, i32 %4, i32 %sub
  %5 = load i32* @maxposdiff, align 4, !tbaa !0
  %sub3 = sub nsw i32 %cond, %5
  %cmp = icmp slt i32 %sub3, %beta
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add = add nsw i32 %cond, %5
  %cmp17 = icmp sgt i32 %add, %alpha
  br i1 %cmp17, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end
  store i32 0, i32* %in_cache, align 4, !tbaa !0
  call void @checkECache(i32* %score, i32* %in_cache) #6
  %6 = load i32* %in_cache, align 4, !tbaa !0
  %tobool27 = icmp eq i32 %6, 0
  br i1 %tobool27, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end26
  %7 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %7, 1
  %8 = load i32* %score, align 4, !tbaa !0
  %sub32 = sub nsw i32 0, %8
  %.sub32 = select i1 %cmp29, i32 %8, i32 %sub32
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false)
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end33
  %indvars.iv1782 = phi i64 [ 0, %if.end33 ], [ %indvars.iv.next1783, %for.body ]
  %arrayidx = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %indvars.iv1782
  store i32 7, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx36 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %indvars.iv1782
  store i32 2, i32* %arrayidx36, align 4, !tbaa !0
  %indvars.iv.next1783 = add i64 %indvars.iv1782, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1783 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 11
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i32 0, i32* @wmat, align 4, !tbaa !0
  store i32 0, i32* @bmat, align 4, !tbaa !0
  %9 = load i32* @wking_loc, align 4, !tbaa !0
  store i32 %9, i32* getelementptr inbounds ([2 x i32]* @king_locs, i64 0, i64 0), align 4, !tbaa !0
  %10 = load i32* @bking_loc, align 4, !tbaa !0
  store i32 %10, i32* getelementptr inbounds ([2 x i32]* @king_locs, i64 0, i64 1), align 4, !tbaa !0
  %11 = load i32* @piece_count, align 4, !tbaa !0
  %cmp381776 = icmp slt i32 %11, 1
  br i1 %cmp381776, label %for.end993, label %for.body39

for.cond119.preheader:                            ; preds = %for.inc116
  br i1 %cmp381776, label %for.end993, label %for.body121

for.body39:                                       ; preds = %for.end, %for.inc116
  %12 = phi i32 [ %26, %for.inc116 ], [ 0, %for.end ]
  %13 = phi i32 [ %27, %for.inc116 ], [ 0, %for.end ]
  %indvars.iv1780 = phi i64 [ %indvars.iv.next1781, %for.inc116 ], [ 1, %for.end ]
  %a.01777 = phi i32 [ %a.1, %for.inc116 ], [ 1, %for.end ]
  %arrayidx41 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv1780
  %14 = load i32* %arrayidx41, align 4, !tbaa !0
  %tobool42 = icmp eq i32 %14, 0
  br i1 %tobool42, label %for.inc116, label %if.else

if.else:                                          ; preds = %for.body39
  %inc44 = add nsw i32 %a.01777, 1
  %idxprom46 = sext i32 %14 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom46
  %15 = load i32* %arrayidx47, align 4, !tbaa !0
  %add48 = add nsw i32 %15, 1
  %shr = ashr i32 %add48, 1
  switch i32 %shr, label %if.then55 [
    i32 1, label %if.end73
    i32 3, label %if.end73
  ]

if.then55:                                        ; preds = %if.else
  %and = and i32 %add48, 1
  %cmp59 = icmp eq i32 %and, 0
  %idxprom63 = sext i32 %15 to i64
  %arrayidx64 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom63
  %16 = load i32* %arrayidx64, align 4, !tbaa !0
  br i1 %cmp59, label %if.then60, label %if.else66

if.then60:                                        ; preds = %if.then55
  %add65 = add nsw i32 %13, %16
  store i32 %add65, i32* @wmat, align 4, !tbaa !0
  br label %if.end73

if.else66:                                        ; preds = %if.then55
  %ispos1706 = icmp sgt i32 %16, -1
  %neg1707 = sub i32 0, %16
  %17 = select i1 %ispos1706, i32 %16, i32 %neg1707
  %add71 = add nsw i32 %12, %17
  store i32 %add71, i32* @bmat, align 4, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.else, %if.then60, %if.else66
  %18 = phi i32 [ %12, %if.else ], [ %12, %if.else ], [ %12, %if.then60 ], [ %add71, %if.else66 ]
  %19 = phi i32 [ %13, %if.else ], [ %13, %if.else ], [ %add65, %if.then60 ], [ %13, %if.else66 ]
  %shr77.mask = and i32 %add48, -2
  %cmp78 = icmp eq i32 %shr77.mask, 2
  br i1 %cmp78, label %if.then79, label %for.inc116

if.then79:                                        ; preds = %if.end73
  %arrayidx81 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom46
  %20 = load i32* %arrayidx81, align 4, !tbaa !0
  %add82 = add nsw i32 %20, 1
  %arrayidx84 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom46
  %21 = load i32* %arrayidx84, align 4, !tbaa !0
  %and88 = and i32 %add48, 1
  %cmp89 = icmp eq i32 %and88, 0
  %idxprom91 = sext i32 %add82 to i64
  br i1 %cmp89, label %if.then90, label %if.else102

if.then90:                                        ; preds = %if.then79
  %arrayidx93 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom91
  %22 = load i32* %arrayidx93, align 4, !tbaa !0
  %inc94 = add nsw i32 %22, 1
  store i32 %inc94, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx96 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom91
  %23 = load i32* %arrayidx96, align 4, !tbaa !0
  %cmp97 = icmp slt i32 %21, %23
  br i1 %cmp97, label %if.then98, label %for.inc116

if.then98:                                        ; preds = %if.then90
  store i32 %21, i32* %arrayidx96, align 4, !tbaa !0
  br label %for.inc116

if.else102:                                       ; preds = %if.then79
  %arrayidx105 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom91
  %24 = load i32* %arrayidx105, align 4, !tbaa !0
  %inc106 = add nsw i32 %24, 1
  store i32 %inc106, i32* %arrayidx105, align 4, !tbaa !0
  %arrayidx108 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom91
  %25 = load i32* %arrayidx108, align 4, !tbaa !0
  %cmp109 = icmp sgt i32 %21, %25
  br i1 %cmp109, label %if.then110, label %for.inc116

if.then110:                                       ; preds = %if.else102
  store i32 %21, i32* %arrayidx108, align 4, !tbaa !0
  br label %for.inc116

for.inc116:                                       ; preds = %for.body39, %if.end73, %if.else102, %if.then110, %if.then90, %if.then98
  %26 = phi i32 [ %18, %if.then98 ], [ %18, %if.then90 ], [ %18, %if.then110 ], [ %18, %if.else102 ], [ %18, %if.end73 ], [ %12, %for.body39 ]
  %27 = phi i32 [ %19, %if.then98 ], [ %19, %if.then90 ], [ %19, %if.then110 ], [ %19, %if.else102 ], [ %19, %if.end73 ], [ %13, %for.body39 ]
  %a.1 = phi i32 [ %inc44, %if.then98 ], [ %inc44, %if.then90 ], [ %inc44, %if.then110 ], [ %inc44, %if.else102 ], [ %inc44, %if.end73 ], [ %a.01777, %for.body39 ]
  %indvars.iv.next1781 = add i64 %indvars.iv1780, 1
  %cmp38 = icmp sgt i32 %a.1, %11
  br i1 %cmp38, label %for.cond119.preheader, label %for.body39

for.body121:                                      ; preds = %for.cond119.preheader, %for.inc991
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc991 ], [ 1, %for.cond119.preheader ]
  %bpotential.01764 = phi i32 [ %bpotential.3, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %wpotential.01763 = phi i32 [ %wpotential.3, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %fwrook.01762 = phi i32 [ %fwrook.2, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %rwrook.01761 = phi i32 [ %rwrook.2, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %fbrook.01760 = phi i32 [ %fbrook.2, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %rbrook.01759 = phi i32 [ %rbrook.2, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %br.01758 = phi i32 [ %br.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %wr.01757 = phi i32 [ %wr.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %bq.01756 = phi i32 [ %bq.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %wq.01755 = phi i32 [ %wq.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %bb.01754 = phi i32 [ %bb.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %wb.01753 = phi i32 [ %wb.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %bn.01752 = phi i32 [ %bn.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %wn.01751 = phi i32 [ %wn.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %bp.01750 = phi i32 [ %bp.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %wp.01749 = phi i32 [ %wp.1, %for.inc991 ], [ 0, %for.cond119.preheader ]
  %a.21747 = phi i32 [ %a.3, %for.inc991 ], [ 1, %for.cond119.preheader ]
  %arrayidx123 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %28 = load i32* %arrayidx123, align 4, !tbaa !0
  %tobool124 = icmp eq i32 %28, 0
  br i1 %tobool124, label %for.inc991, label %if.else126

if.else126:                                       ; preds = %for.body121
  %inc127 = add nsw i32 %a.21747, 1
  %idxprom129 = sext i32 %28 to i64
  %arrayidx130 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom129
  %29 = load i32* %arrayidx130, align 4, !tbaa !0
  %add131 = add nsw i32 %29, 1
  %shr132 = ashr i32 %add131, 1
  %idxprom133 = sext i32 %shr132 to i64
  %arrayidx134 = getelementptr inbounds [7 x i32 (i32, i32)*]* @evalRoutines, i64 0, i64 %idxprom133
  %30 = load i32 (i32, i32)** %arrayidx134, align 8, !tbaa !3
  %and138 = and i32 %add131, 1
  %call139 = call i32 %30(i32 %28, i32 %and138) #6
  %31 = load i32* %score, align 4, !tbaa !0
  %add140 = add nsw i32 %31, %call139
  store i32 %add140, i32* %score, align 4, !tbaa !0
  %arrayidx142 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom129
  %32 = load i32* %arrayidx142, align 4, !tbaa !0
  %add143 = add nsw i32 %32, 1
  %arrayidx145 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom129
  %33 = load i32* %arrayidx145, align 4, !tbaa !0
  %34 = load i32* %arrayidx130, align 4, !tbaa !0
  switch i32 %34, label %for.inc991 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb414
    i32 7, label %sw.bb685
    i32 8, label %sw.bb726
    i32 11, label %sw.bb767
    i32 12, label %sw.bb769
    i32 3, label %sw.bb771
    i32 4, label %sw.bb773
    i32 9, label %sw.bb775
    i32 10, label %sw.bb777
    i32 5, label %sw.bb779
    i32 6, label %sw.bb882
  ]

sw.bb:                                            ; preds = %if.else126
  %arrayidx149 = getelementptr inbounds [144 x i32]* @swhite_pawn, i64 0, i64 %idxprom129
  %35 = load i32* %arrayidx149, align 4, !tbaa !0
  %add150 = add nsw i32 %35, %add140
  store i32 %add150, i32* %score, align 4, !tbaa !0
  %inc151 = add nsw i32 %wp.01749, 1
  %add152 = add nsw i32 %32, 2
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom153
  %36 = load i32* %arrayidx154, align 4, !tbaa !0
  %cmp155 = icmp sgt i32 %36, %33
  br i1 %cmp155, label %land.lhs.true156, label %if.end177

land.lhs.true156:                                 ; preds = %sw.bb
  %idxprom158 = sext i32 %32 to i64
  %arrayidx159 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom158
  %37 = load i32* %arrayidx159, align 4, !tbaa !0
  %cmp160 = icmp sgt i32 %37, %33
  br i1 %cmp160, label %if.then161, label %if.end177

if.then161:                                       ; preds = %land.lhs.true156
  %sub162 = add nsw i32 %add150, -8
  store i32 %sub162, i32* %score, align 4, !tbaa !0
  %arrayidx166 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom153
  %38 = load i32* %arrayidx166, align 4, !tbaa !0
  %tobool167 = icmp eq i32 %38, 0
  br i1 %tobool167, label %land.lhs.true168, label %if.end177

land.lhs.true168:                                 ; preds = %if.then161
  %arrayidx172 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom158
  %39 = load i32* %arrayidx172, align 4, !tbaa !0
  %tobool173 = icmp eq i32 %39, 0
  br i1 %tobool173, label %if.then174, label %if.end177

if.then174:                                       ; preds = %land.lhs.true168
  %sub175 = add nsw i32 %add150, -13
  store i32 %sub175, i32* %score, align 4, !tbaa !0
  br label %if.end177

if.end177:                                        ; preds = %land.lhs.true168, %if.then161, %if.then174, %land.lhs.true156, %sw.bb
  %40 = phi i32 [ %sub162, %if.then161 ], [ %sub162, %land.lhs.true168 ], [ %sub175, %if.then174 ], [ %add150, %land.lhs.true156 ], [ %add150, %sw.bb ]
  %isolated.0 = phi i32 [ 0, %if.then161 ], [ 0, %land.lhs.true168 ], [ 1, %if.then174 ], [ 0, %land.lhs.true156 ], [ 0, %sw.bb ]
  %backwards.0 = phi i32 [ 1, %if.then161 ], [ 1, %land.lhs.true168 ], [ 1, %if.then174 ], [ 0, %land.lhs.true156 ], [ 0, %sw.bb ]
  %idxprom178 = sext i32 %add143 to i64
  %arrayidx180 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom178
  %41 = load i32* %arrayidx180, align 4, !tbaa !0
  %tobool181 = icmp eq i32 %41, 0
  br i1 %tobool181, label %if.then182, label %if.end191

if.then182:                                       ; preds = %if.end177
  %tobool183 = icmp eq i32 %backwards.0, 0
  br i1 %tobool183, label %if.end186, label %if.then184

if.then184:                                       ; preds = %if.then182
  %sub185 = add nsw i32 %40, -3
  store i32 %sub185, i32* %score, align 4, !tbaa !0
  br label %if.end186

if.end186:                                        ; preds = %if.then182, %if.then184
  %42 = phi i32 [ %40, %if.then182 ], [ %sub185, %if.then184 ]
  %tobool187 = icmp eq i32 %isolated.0, 0
  br i1 %tobool187, label %if.end191, label %if.then188

if.then188:                                       ; preds = %if.end186
  %sub189 = add nsw i32 %42, -5
  store i32 %sub189, i32* %score, align 4, !tbaa !0
  br label %if.end191

if.end191:                                        ; preds = %if.end186, %if.end177, %if.then188
  %43 = phi i32 [ %42, %if.end186 ], [ %40, %if.end177 ], [ %sub189, %if.then188 ]
  %arrayidx194 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom178
  %44 = load i32* %arrayidx194, align 4, !tbaa !0
  %cmp195 = icmp sgt i32 %44, 1
  br i1 %cmp195, label %if.then196, label %if.end202

if.then196:                                       ; preds = %if.end191
  %45 = mul i32 %44, -3
  %mul.neg = add i32 %45, 3
  %sub201 = add i32 %mul.neg, %43
  store i32 %sub201, i32* %score, align 4, !tbaa !0
  br label %if.end202

if.end202:                                        ; preds = %if.then196, %if.end191
  %46 = phi i32 [ %sub201, %if.then196 ], [ %43, %if.end191 ]
  %idxprom209 = sext i32 %32 to i64
  br i1 %tobool181, label %land.lhs.true207, label %if.end405

land.lhs.true207:                                 ; preds = %if.end202
  %arrayidx210 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom209
  %47 = load i32* %arrayidx210, align 4, !tbaa !0
  %cmp211 = icmp slt i32 %33, %47
  br i1 %cmp211, label %if.end405, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %land.lhs.true207
  %arrayidx215 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom153
  %48 = load i32* %arrayidx215, align 4, !tbaa !0
  %cmp216 = icmp slt i32 %33, %48
  br i1 %cmp216, label %if.end405, label %if.then217

if.then217:                                       ; preds = %land.lhs.true212
  %mul220 = mul nsw i32 %35, 3
  %add221 = add nsw i32 %mul220, 30
  %add222 = add nsw i32 %add221, %46
  store i32 %add222, i32* %score, align 4, !tbaa !0
  %49 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool223 = icmp eq i32 %49, 0
  %sub228 = add nsw i32 %32, 109
  %50 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom229 = sext i32 %50 to i64
  %arrayidx230 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom229
  %51 = load i32* %arrayidx230, align 4, !tbaa !0
  %idxprom231 = sext i32 %sub228 to i64
  %arrayidx232 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom231
  %52 = load i32* %arrayidx232, align 4, !tbaa !0
  %sub233 = sub nsw i32 %51, %52
  %ispos1694 = icmp sgt i32 %sub233, -1
  %neg1695 = sub i32 0, %sub233
  %53 = select i1 %ispos1694, i32 %sub233, i32 %neg1695
  %arrayidx236 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom229
  %54 = load i32* %arrayidx236, align 4, !tbaa !0
  %arrayidx238 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom231
  %55 = load i32* %arrayidx238, align 4, !tbaa !0
  %sub239 = sub nsw i32 %54, %55
  %ispos1696 = icmp sgt i32 %sub239, -1
  %neg1697 = sub i32 0, %sub239
  %56 = select i1 %ispos1696, i32 %sub239, i32 %neg1697
  %cmp241 = icmp sgt i32 %53, %56
  %sub233.sub2391708 = select i1 %cmp241, i32 %sub233, i32 %sub239
  %ispos1698 = icmp sgt i32 %sub233.sub2391708, -1
  %neg1699 = sub i32 0, %sub233.sub2391708
  %57 = select i1 %ispos1698, i32 %sub233.sub2391708, i32 %neg1699
  br i1 %tobool223, label %if.else268, label %if.then224

if.then224:                                       ; preds = %if.then217
  %sub262 = sub nsw i32 %55, %33
  %ispos1704 = icmp sgt i32 %sub262, -1
  %neg1705 = sub i32 0, %sub262
  %58 = select i1 %ispos1704, i32 %sub262, i32 %neg1705
  %cmp264 = icmp sgt i32 %57, %58
  %add266 = add nsw i32 %wpotential.01763, 800
  %add266.wpotential.0 = select i1 %cmp264, i32 %add266, i32 %wpotential.01763
  br label %if.end313

if.else268:                                       ; preds = %if.then217
  %sub302 = add nsw i32 %57, -1
  %sub307 = sub nsw i32 %55, %33
  %ispos1700 = icmp sgt i32 %sub307, -1
  %neg1701 = sub i32 0, %sub307
  %59 = select i1 %ispos1700, i32 %sub307, i32 %neg1701
  %cmp309 = icmp sgt i32 %sub302, %59
  %add311 = add nsw i32 %wpotential.01763, 800
  %add311.wpotential.0 = select i1 %cmp309, i32 %add311, i32 %wpotential.01763
  br label %if.end313

if.end313:                                        ; preds = %if.else268, %if.then224
  %wpotential.1 = phi i32 [ %add266.wpotential.0, %if.then224 ], [ %add311.wpotential.0, %if.else268 ]
  switch i32 %32, label %if.end326 [
    i32 1, label %if.then320
    i32 8, label %if.then320
  ]

if.then320:                                       ; preds = %if.end313, %if.end313
  %mul323 = shl i32 %35, 1
  %add324 = add nsw i32 %mul323, 12
  %add325 = add nsw i32 %add324, %add222
  store i32 %add325, i32* %score, align 4, !tbaa !0
  br label %if.end326

if.end326:                                        ; preds = %if.end313, %if.then320
  %60 = phi i32 [ %add222, %if.end313 ], [ %add325, %if.then320 ]
  %tobool327 = icmp eq i32 %isolated.0, 0
  br i1 %tobool327, label %if.then328, label %if.end405

if.then328:                                       ; preds = %if.end326
  %add329 = add nsw i32 %60, 12
  store i32 %add329, i32* %score, align 4, !tbaa !0
  %arrayidx333 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom153
  %61 = load i32* %arrayidx333, align 4, !tbaa !0
  %tobool334 = icmp eq i32 %61, 0
  br i1 %tobool334, label %if.end366, label %if.then335

if.then335:                                       ; preds = %if.then328
  %arrayidx339 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom153
  %62 = load i32* %arrayidx339, align 4, !tbaa !0
  %tobool340 = icmp eq i32 %62, 0
  br i1 %tobool340, label %land.lhs.true341, label %if.end366

land.lhs.true341:                                 ; preds = %if.then335
  %add345 = add nsw i32 %32, 3
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom346
  %63 = load i32* %arrayidx347, align 4, !tbaa !0
  %cmp348 = icmp slt i32 %36, %63
  br i1 %cmp348, label %if.end366, label %if.then349

if.then349:                                       ; preds = %land.lhs.true341
  %mul352 = mul nsw i32 %33, 7
  %add353 = add nsw i32 %mul352, %add329
  store i32 %add353, i32* %score, align 4, !tbaa !0
  %cmp356 = icmp eq i32 %33, 7
  br i1 %cmp356, label %land.lhs.true357, label %if.end366

land.lhs.true357:                                 ; preds = %if.then349
  %cmp361 = icmp sgt i32 %36, 5
  br i1 %cmp361, label %if.then362, label %if.end366

if.then362:                                       ; preds = %land.lhs.true357
  %add363 = add nsw i32 %add353, 50
  store i32 %add363, i32* %score, align 4, !tbaa !0
  br label %if.end366

if.end366:                                        ; preds = %land.lhs.true357, %if.then349, %land.lhs.true341, %if.then335, %if.then328, %if.then362
  %64 = phi i32 [ %add363, %if.then362 ], [ %add329, %if.then328 ], [ %add329, %if.then335 ], [ %add329, %land.lhs.true341 ], [ %add353, %if.then349 ], [ %add353, %land.lhs.true357 ]
  %65 = phi i32 [ 7, %if.then362 ], [ %33, %if.then328 ], [ %33, %if.then335 ], [ %33, %land.lhs.true341 ], [ %33, %if.then349 ], [ 7, %land.lhs.true357 ]
  %arrayidx370 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom209
  %66 = load i32* %arrayidx370, align 4, !tbaa !0
  %tobool371 = icmp eq i32 %66, 0
  br i1 %tobool371, label %if.end405, label %if.then372

if.then372:                                       ; preds = %if.end366
  %arrayidx376 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom209
  %67 = load i32* %arrayidx376, align 4, !tbaa !0
  %tobool377 = icmp eq i32 %67, 0
  br i1 %tobool377, label %land.lhs.true378, label %if.end405

land.lhs.true378:                                 ; preds = %if.then372
  %sub382 = add nsw i32 %32, -1
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom383
  %68 = load i32* %arrayidx384, align 4, !tbaa !0
  %cmp385 = icmp slt i32 %36, %68
  br i1 %cmp385, label %if.end405, label %if.then386

if.then386:                                       ; preds = %land.lhs.true378
  %mul389 = mul nsw i32 %65, 7
  %add390 = add nsw i32 %64, %mul389
  store i32 %add390, i32* %score, align 4, !tbaa !0
  %cmp393 = icmp eq i32 %65, 7
  br i1 %cmp393, label %land.lhs.true394, label %if.end405

land.lhs.true394:                                 ; preds = %if.then386
  %arrayidx397 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom209
  %69 = load i32* %arrayidx397, align 4, !tbaa !0
  %cmp398 = icmp sgt i32 %69, 5
  br i1 %cmp398, label %if.then399, label %if.end405

if.then399:                                       ; preds = %land.lhs.true394
  %add400 = add nsw i32 %add390, 50
  store i32 %add400, i32* %score, align 4, !tbaa !0
  br label %if.end405

if.end405:                                        ; preds = %if.end202, %if.end326, %land.lhs.true212, %land.lhs.true207, %land.lhs.true378, %if.then372, %if.end366, %if.then399, %land.lhs.true394, %if.then386
  %70 = phi i32 [ %64, %land.lhs.true378 ], [ %64, %if.then372 ], [ %64, %if.end366 ], [ %add400, %if.then399 ], [ %add390, %land.lhs.true394 ], [ %add390, %if.then386 ], [ %46, %land.lhs.true207 ], [ %46, %land.lhs.true212 ], [ %60, %if.end326 ], [ %46, %if.end202 ]
  %wpotential.2 = phi i32 [ %wpotential.1, %land.lhs.true378 ], [ %wpotential.1, %if.then372 ], [ %wpotential.1, %if.end366 ], [ %wpotential.1, %if.then399 ], [ %wpotential.1, %land.lhs.true394 ], [ %wpotential.1, %if.then386 ], [ %wpotential.01763, %land.lhs.true207 ], [ %wpotential.01763, %land.lhs.true212 ], [ %wpotential.1, %if.end326 ], [ %wpotential.01763, %if.end202 ]
  %arrayidx409 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom209
  %71 = load i32* %arrayidx409, align 4, !tbaa !0
  %tobool410 = icmp eq i32 %71, 0
  br i1 %tobool410, label %if.then411, label %for.inc991

if.then411:                                       ; preds = %if.end405
  %sub412 = add nsw i32 %70, -7
  store i32 %sub412, i32* %score, align 4, !tbaa !0
  br label %for.inc991

sw.bb414:                                         ; preds = %if.else126
  %arrayidx416 = getelementptr inbounds [144 x i32]* @sblack_pawn, i64 0, i64 %idxprom129
  %72 = load i32* %arrayidx416, align 4, !tbaa !0
  %sub417 = sub nsw i32 %add140, %72
  store i32 %sub417, i32* %score, align 4, !tbaa !0
  %inc418 = add nsw i32 %bp.01750, 1
  %add419 = add nsw i32 %32, 2
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx421 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom420
  %73 = load i32* %arrayidx421, align 4, !tbaa !0
  %cmp422 = icmp slt i32 %73, %33
  br i1 %cmp422, label %land.lhs.true423, label %if.end444

land.lhs.true423:                                 ; preds = %sw.bb414
  %idxprom425 = sext i32 %32 to i64
  %arrayidx426 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom425
  %74 = load i32* %arrayidx426, align 4, !tbaa !0
  %cmp427 = icmp slt i32 %74, %33
  br i1 %cmp427, label %if.then428, label %if.end444

if.then428:                                       ; preds = %land.lhs.true423
  %add429 = add nsw i32 %sub417, 8
  store i32 %add429, i32* %score, align 4, !tbaa !0
  %arrayidx433 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom420
  %75 = load i32* %arrayidx433, align 4, !tbaa !0
  %tobool434 = icmp eq i32 %75, 0
  br i1 %tobool434, label %land.lhs.true435, label %if.end444

land.lhs.true435:                                 ; preds = %if.then428
  %arrayidx439 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom425
  %76 = load i32* %arrayidx439, align 4, !tbaa !0
  %tobool440 = icmp eq i32 %76, 0
  br i1 %tobool440, label %if.then441, label %if.end444

if.then441:                                       ; preds = %land.lhs.true435
  %add442 = add nsw i32 %sub417, 13
  store i32 %add442, i32* %score, align 4, !tbaa !0
  br label %if.end444

if.end444:                                        ; preds = %land.lhs.true435, %if.then428, %if.then441, %land.lhs.true423, %sw.bb414
  %77 = phi i32 [ %add429, %if.then428 ], [ %add429, %land.lhs.true435 ], [ %add442, %if.then441 ], [ %sub417, %land.lhs.true423 ], [ %sub417, %sw.bb414 ]
  %isolated.1 = phi i32 [ 0, %if.then428 ], [ 0, %land.lhs.true435 ], [ 1, %if.then441 ], [ 0, %land.lhs.true423 ], [ 0, %sw.bb414 ]
  %backwards.1 = phi i32 [ 1, %if.then428 ], [ 1, %land.lhs.true435 ], [ 1, %if.then441 ], [ 0, %land.lhs.true423 ], [ 0, %sw.bb414 ]
  %idxprom445 = sext i32 %add143 to i64
  %arrayidx447 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom445
  %78 = load i32* %arrayidx447, align 4, !tbaa !0
  %tobool448 = icmp eq i32 %78, 0
  br i1 %tobool448, label %if.then449, label %if.end458

if.then449:                                       ; preds = %if.end444
  %tobool450 = icmp eq i32 %backwards.1, 0
  br i1 %tobool450, label %if.end453, label %if.then451

if.then451:                                       ; preds = %if.then449
  %add452 = add nsw i32 %77, 3
  store i32 %add452, i32* %score, align 4, !tbaa !0
  br label %if.end453

if.end453:                                        ; preds = %if.then449, %if.then451
  %79 = phi i32 [ %77, %if.then449 ], [ %add452, %if.then451 ]
  %tobool454 = icmp eq i32 %isolated.1, 0
  br i1 %tobool454, label %if.end458, label %if.then455

if.then455:                                       ; preds = %if.end453
  %add456 = add nsw i32 %79, 5
  store i32 %add456, i32* %score, align 4, !tbaa !0
  br label %if.end458

if.end458:                                        ; preds = %if.end453, %if.end444, %if.then455
  %80 = phi i32 [ %79, %if.end453 ], [ %77, %if.end444 ], [ %add456, %if.then455 ]
  %arrayidx461 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom445
  %81 = load i32* %arrayidx461, align 4, !tbaa !0
  %cmp462 = icmp sgt i32 %81, 1
  br i1 %cmp462, label %if.then463, label %if.end470

if.then463:                                       ; preds = %if.end458
  %82 = mul i32 %81, 3
  %mul468 = add i32 %82, -3
  %add469 = add nsw i32 %mul468, %80
  store i32 %add469, i32* %score, align 4, !tbaa !0
  br label %if.end470

if.end470:                                        ; preds = %if.then463, %if.end458
  %83 = phi i32 [ %add469, %if.then463 ], [ %80, %if.end458 ]
  %idxprom477 = sext i32 %32 to i64
  br i1 %tobool448, label %land.lhs.true475, label %if.end676

land.lhs.true475:                                 ; preds = %if.end470
  %arrayidx478 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom477
  %84 = load i32* %arrayidx478, align 4, !tbaa !0
  %cmp479 = icmp sgt i32 %33, %84
  br i1 %cmp479, label %if.end676, label %land.lhs.true480

land.lhs.true480:                                 ; preds = %land.lhs.true475
  %arrayidx483 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom420
  %85 = load i32* %arrayidx483, align 4, !tbaa !0
  %cmp484 = icmp sgt i32 %33, %85
  br i1 %cmp484, label %if.end676, label %if.then485

if.then485:                                       ; preds = %land.lhs.true480
  %86 = mul i32 %72, -3
  %add489.neg = add nsw i32 %86, -30
  %sub490 = add i32 %add489.neg, %83
  store i32 %sub490, i32* %score, align 4, !tbaa !0
  %87 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool491 = icmp eq i32 %87, 0
  %sub540 = add nsw i32 %32, 25
  %88 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom541 = sext i32 %88 to i64
  %arrayidx542 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom541
  %89 = load i32* %arrayidx542, align 4, !tbaa !0
  %idxprom543 = sext i32 %sub540 to i64
  %arrayidx544 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom543
  %90 = load i32* %arrayidx544, align 4, !tbaa !0
  %sub545 = sub nsw i32 %89, %90
  %ispos1682 = icmp sgt i32 %sub545, -1
  %neg1683 = sub i32 0, %sub545
  %91 = select i1 %ispos1682, i32 %sub545, i32 %neg1683
  %arrayidx548 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom541
  %92 = load i32* %arrayidx548, align 4, !tbaa !0
  %arrayidx550 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom543
  %93 = load i32* %arrayidx550, align 4, !tbaa !0
  %sub551 = sub nsw i32 %92, %93
  %ispos1684 = icmp sgt i32 %sub551, -1
  %neg1685 = sub i32 0, %sub551
  %94 = select i1 %ispos1684, i32 %sub551, i32 %neg1685
  %cmp553 = icmp sgt i32 %91, %94
  %sub545.sub551 = select i1 %cmp553, i32 %sub545, i32 %sub551
  %ispos1686 = icmp sgt i32 %sub545.sub551, -1
  %neg1687 = sub i32 0, %sub545.sub551
  %95 = select i1 %ispos1686, i32 %sub545.sub551, i32 %neg1687
  br i1 %tobool491, label %if.then492, label %if.else536

if.then492:                                       ; preds = %if.then485
  %sub530 = sub nsw i32 %93, %33
  %ispos1688 = icmp sgt i32 %sub530, -1
  %neg1689 = sub i32 0, %sub530
  %96 = select i1 %ispos1688, i32 %sub530, i32 %neg1689
  %cmp532 = icmp sgt i32 %95, %96
  %sub534 = add nsw i32 %bpotential.01764, -800
  %sub534.bpotential.0 = select i1 %cmp532, i32 %sub534, i32 %bpotential.01764
  br label %if.end581

if.else536:                                       ; preds = %if.then485
  %sub570 = add nsw i32 %95, -1
  %sub575 = sub nsw i32 %93, %33
  %ispos1692 = icmp sgt i32 %sub575, -1
  %neg1693 = sub i32 0, %sub575
  %97 = select i1 %ispos1692, i32 %sub575, i32 %neg1693
  %cmp577 = icmp sgt i32 %sub570, %97
  %sub579 = add nsw i32 %bpotential.01764, -800
  %sub579.bpotential.0 = select i1 %cmp577, i32 %sub579, i32 %bpotential.01764
  br label %if.end581

if.end581:                                        ; preds = %if.else536, %if.then492
  %bpotential.1 = phi i32 [ %sub534.bpotential.0, %if.then492 ], [ %sub579.bpotential.0, %if.else536 ]
  switch i32 %32, label %if.end595 [
    i32 1, label %if.then589
    i32 8, label %if.then589
  ]

if.then589:                                       ; preds = %if.end581, %if.end581
  %mul592 = shl i32 %72, 1
  %add593.neg = sub i32 -12, %mul592
  %sub594 = add i32 %add593.neg, %sub490
  store i32 %sub594, i32* %score, align 4, !tbaa !0
  br label %if.end595

if.end595:                                        ; preds = %if.end581, %if.then589
  %98 = phi i32 [ %sub490, %if.end581 ], [ %sub594, %if.then589 ]
  %tobool596 = icmp eq i32 %isolated.1, 0
  br i1 %tobool596, label %if.then597, label %if.end676

if.then597:                                       ; preds = %if.end595
  %sub598 = add nsw i32 %98, -12
  store i32 %sub598, i32* %score, align 4, !tbaa !0
  %arrayidx602 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom420
  %99 = load i32* %arrayidx602, align 4, !tbaa !0
  %tobool603 = icmp eq i32 %99, 0
  br i1 %tobool603, label %if.end636, label %if.then604

if.then604:                                       ; preds = %if.then597
  %arrayidx608 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom420
  %100 = load i32* %arrayidx608, align 4, !tbaa !0
  %tobool609 = icmp eq i32 %100, 0
  br i1 %tobool609, label %land.lhs.true610, label %if.end636

land.lhs.true610:                                 ; preds = %if.then604
  %add614 = add nsw i32 %32, 3
  %idxprom615 = sext i32 %add614 to i64
  %arrayidx616 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom615
  %101 = load i32* %arrayidx616, align 4, !tbaa !0
  %cmp617 = icmp sgt i32 %73, %101
  br i1 %cmp617, label %if.end636, label %if.then618

if.then618:                                       ; preds = %land.lhs.true610
  %sub621 = sub nsw i32 9, %33
  %102 = mul i32 %sub621, -7
  %sub623 = add i32 %102, %sub598
  store i32 %sub623, i32* %score, align 4, !tbaa !0
  %cmp626 = icmp eq i32 %33, 2
  br i1 %cmp626, label %land.lhs.true627, label %if.end636

land.lhs.true627:                                 ; preds = %if.then618
  %cmp631 = icmp slt i32 %73, 4
  br i1 %cmp631, label %if.then632, label %if.end636

if.then632:                                       ; preds = %land.lhs.true627
  %sub633 = add nsw i32 %sub623, -50
  store i32 %sub633, i32* %score, align 4, !tbaa !0
  br label %if.end636

if.end636:                                        ; preds = %land.lhs.true627, %if.then618, %land.lhs.true610, %if.then604, %if.then597, %if.then632
  %103 = phi i32 [ %sub633, %if.then632 ], [ %sub598, %if.then597 ], [ %sub598, %if.then604 ], [ %sub598, %land.lhs.true610 ], [ %sub623, %if.then618 ], [ %sub623, %land.lhs.true627 ]
  %104 = phi i32 [ 2, %if.then632 ], [ %33, %if.then597 ], [ %33, %if.then604 ], [ %33, %land.lhs.true610 ], [ %33, %if.then618 ], [ 2, %land.lhs.true627 ]
  %arrayidx640 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom477
  %105 = load i32* %arrayidx640, align 4, !tbaa !0
  %tobool641 = icmp eq i32 %105, 0
  br i1 %tobool641, label %if.end676, label %if.then642

if.then642:                                       ; preds = %if.end636
  %arrayidx646 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom477
  %106 = load i32* %arrayidx646, align 4, !tbaa !0
  %tobool647 = icmp eq i32 %106, 0
  br i1 %tobool647, label %land.lhs.true648, label %if.end676

land.lhs.true648:                                 ; preds = %if.then642
  %arrayidx651 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom477
  %107 = load i32* %arrayidx651, align 4, !tbaa !0
  %sub652 = add nsw i32 %32, -1
  %idxprom653 = sext i32 %sub652 to i64
  %arrayidx654 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom653
  %108 = load i32* %arrayidx654, align 4, !tbaa !0
  %cmp655 = icmp sgt i32 %107, %108
  br i1 %cmp655, label %if.end676, label %if.then656

if.then656:                                       ; preds = %land.lhs.true648
  %sub659 = sub nsw i32 9, %104
  %109 = mul i32 %sub659, -7
  %sub661 = add i32 %109, %103
  store i32 %sub661, i32* %score, align 4, !tbaa !0
  %cmp664 = icmp eq i32 %104, 2
  %cmp669 = icmp slt i32 %107, 4
  %or.cond1785 = and i1 %cmp664, %cmp669
  br i1 %or.cond1785, label %if.then670, label %if.end676

if.then670:                                       ; preds = %if.then656
  %sub671 = add nsw i32 %sub661, -50
  store i32 %sub671, i32* %score, align 4, !tbaa !0
  br label %if.end676

if.end676:                                        ; preds = %if.end470, %if.end595, %land.lhs.true480, %land.lhs.true475, %land.lhs.true648, %if.then642, %if.end636, %if.then670, %if.then656
  %110 = phi i32 [ %103, %land.lhs.true648 ], [ %103, %if.then642 ], [ %103, %if.end636 ], [ %sub671, %if.then670 ], [ %sub661, %if.then656 ], [ %83, %land.lhs.true475 ], [ %83, %land.lhs.true480 ], [ %98, %if.end595 ], [ %83, %if.end470 ]
  %bpotential.2 = phi i32 [ %bpotential.1, %land.lhs.true648 ], [ %bpotential.1, %if.then642 ], [ %bpotential.1, %if.end636 ], [ %bpotential.1, %if.then670 ], [ %bpotential.1, %if.then656 ], [ %bpotential.01764, %land.lhs.true475 ], [ %bpotential.01764, %land.lhs.true480 ], [ %bpotential.1, %if.end595 ], [ %bpotential.01764, %if.end470 ]
  %arrayidx680 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom477
  %111 = load i32* %arrayidx680, align 4, !tbaa !0
  %tobool681 = icmp eq i32 %111, 0
  br i1 %tobool681, label %if.then682, label %for.inc991

if.then682:                                       ; preds = %if.end676
  %add683 = add nsw i32 %110, 7
  store i32 %add683, i32* %score, align 4, !tbaa !0
  br label %for.inc991

sw.bb685:                                         ; preds = %if.else126
  %inc686 = add nsw i32 %wr.01757, 1
  %cmp687 = icmp eq i32 %wr.01757, 0
  %.rwrook.0 = select i1 %cmp687, i32 %33, i32 %rwrook.01761
  %.fwrook.0 = select i1 %cmp687, i32 %32, i32 %fwrook.01762
  %cmp694 = icmp eq i32 %33, 7
  br i1 %cmp694, label %if.then695, label %if.end703

if.then695:                                       ; preds = %sw.bb685
  %add696 = add nsw i32 %add140, 25
  store i32 %add696, i32* %score, align 4, !tbaa !0
  %cmp697 = icmp eq i32 %inc686, 2
  %cmp699 = icmp eq i32 %.rwrook.0, 7
  %or.cond1710 = and i1 %cmp697, %cmp699
  br i1 %or.cond1710, label %if.then700, label %if.end703

if.then700:                                       ; preds = %if.then695
  %add701 = add nsw i32 %add140, 35
  store i32 %add701, i32* %score, align 4, !tbaa !0
  br label %if.end703

if.end703:                                        ; preds = %if.then695, %if.then700, %sw.bb685
  %112 = phi i32 [ %add696, %if.then695 ], [ %add701, %if.then700 ], [ %add140, %sw.bb685 ]
  %idxprom704 = sext i32 %add143 to i64
  %arrayidx706 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom704
  %113 = load i32* %arrayidx706, align 4, !tbaa !0
  %tobool707 = icmp eq i32 %113, 0
  br i1 %tobool707, label %if.then708, label %for.inc991

if.then708:                                       ; preds = %if.end703
  %add709 = add nsw i32 %112, 5
  %cmp710 = icmp eq i32 %inc686, 2
  %cmp714 = icmp eq i32 %32, %.fwrook.0
  %or.cond1786 = and i1 %cmp710, %cmp714
  br i1 %or.cond1786, label %if.then715, label %if.end717

if.then715:                                       ; preds = %if.then708
  %add716 = add nsw i32 %112, 17
  br label %if.end717

if.end717:                                        ; preds = %if.then715, %if.then708
  %storemerge1788 = phi i32 [ %add716, %if.then715 ], [ %add709, %if.then708 ]
  %114 = phi i32 [ %add716, %if.then715 ], [ %add709, %if.then708 ]
  store i32 %storemerge1788, i32* %score, align 4, !tbaa !0
  %arrayidx720 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom704
  %115 = load i32* %arrayidx720, align 4, !tbaa !0
  %tobool721 = icmp eq i32 %115, 0
  br i1 %tobool721, label %if.then722, label %for.inc991

if.then722:                                       ; preds = %if.end717
  %add723 = add nsw i32 %114, 3
  store i32 %add723, i32* %score, align 4, !tbaa !0
  br label %for.inc991

sw.bb726:                                         ; preds = %if.else126
  %inc727 = add nsw i32 %br.01758, 1
  %cmp728 = icmp eq i32 %br.01758, 0
  %.rbrook.0 = select i1 %cmp728, i32 %33, i32 %rbrook.01759
  %.fbrook.0 = select i1 %cmp728, i32 %32, i32 %fbrook.01760
  %cmp735 = icmp eq i32 %33, 2
  br i1 %cmp735, label %if.then736, label %if.end744

if.then736:                                       ; preds = %sw.bb726
  %sub737 = add nsw i32 %add140, -25
  store i32 %sub737, i32* %score, align 4, !tbaa !0
  %cmp738 = icmp eq i32 %wr.01757, 2
  %cmp740 = icmp eq i32 %.rbrook.0, 2
  %or.cond1711 = and i1 %cmp738, %cmp740
  br i1 %or.cond1711, label %if.then741, label %if.end744

if.then741:                                       ; preds = %if.then736
  %sub742 = add nsw i32 %add140, -35
  store i32 %sub742, i32* %score, align 4, !tbaa !0
  br label %if.end744

if.end744:                                        ; preds = %if.then736, %if.then741, %sw.bb726
  %116 = phi i32 [ %sub737, %if.then736 ], [ %sub742, %if.then741 ], [ %add140, %sw.bb726 ]
  %idxprom745 = sext i32 %add143 to i64
  %arrayidx747 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom745
  %117 = load i32* %arrayidx747, align 4, !tbaa !0
  %tobool748 = icmp eq i32 %117, 0
  br i1 %tobool748, label %if.then749, label %for.inc991

if.then749:                                       ; preds = %if.end744
  %sub750 = add nsw i32 %116, -5
  %cmp751 = icmp eq i32 %inc727, 2
  %cmp755 = icmp eq i32 %32, %.fbrook.0
  %or.cond1787 = and i1 %cmp751, %cmp755
  br i1 %or.cond1787, label %if.then756, label %if.end758

if.then756:                                       ; preds = %if.then749
  %sub757 = add nsw i32 %116, -17
  br label %if.end758

if.end758:                                        ; preds = %if.then756, %if.then749
  %storemerge = phi i32 [ %sub757, %if.then756 ], [ %sub750, %if.then749 ]
  %118 = phi i32 [ %sub757, %if.then756 ], [ %sub750, %if.then749 ]
  store i32 %storemerge, i32* %score, align 4, !tbaa !0
  %arrayidx761 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom745
  %119 = load i32* %arrayidx761, align 4, !tbaa !0
  %tobool762 = icmp eq i32 %119, 0
  br i1 %tobool762, label %if.then763, label %for.inc991

if.then763:                                       ; preds = %if.end758
  %sub764 = add nsw i32 %118, -3
  store i32 %sub764, i32* %score, align 4, !tbaa !0
  br label %for.inc991

sw.bb767:                                         ; preds = %if.else126
  %inc768 = add nsw i32 %wb.01753, 1
  br label %for.inc991

sw.bb769:                                         ; preds = %if.else126
  %inc770 = add nsw i32 %bb.01754, 1
  br label %for.inc991

sw.bb771:                                         ; preds = %if.else126
  %inc772 = add nsw i32 %wn.01751, 1
  br label %for.inc991

sw.bb773:                                         ; preds = %if.else126
  %inc774 = add nsw i32 %bn.01752, 1
  br label %for.inc991

sw.bb775:                                         ; preds = %if.else126
  %inc776 = add nsw i32 %wq.01755, 1
  br label %for.inc991

sw.bb777:                                         ; preds = %if.else126
  %inc778 = add nsw i32 %bq.01756, 1
  br label %for.inc991

sw.bb779:                                         ; preds = %if.else126
  %120 = load i32* @wmat, align 4, !tbaa !0
  %cmp780 = icmp sgt i32 %120, 1300
  br i1 %cmp780, label %if.then781, label %if.else877

if.then781:                                       ; preds = %sw.bb779
  %arrayidx783 = getelementptr inbounds [144 x i32]* @swhite_king, i64 0, i64 %idxprom129
  %121 = load i32* %arrayidx783, align 4, !tbaa !0
  %add784 = add nsw i32 %121, %add140
  store i32 %add784, i32* %score, align 4, !tbaa !0
  %122 = load i32* @white_castled, align 4, !tbaa !0
  switch i32 %122, label %if.else792 [
    i32 2, label %if.then786
    i32 1, label %if.then790
  ]

if.then786:                                       ; preds = %if.then781
  %add787 = add nsw i32 %add784, 15
  store i32 %add787, i32* %score, align 4, !tbaa !0
  br label %if.end805

if.then790:                                       ; preds = %if.then781
  %add791 = add nsw i32 %add784, 25
  store i32 %add791, i32* %score, align 4, !tbaa !0
  br label %if.end805

if.else792:                                       ; preds = %if.then781
  %123 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !tbaa !0
  %tobool793 = icmp eq i32 %123, 0
  br i1 %tobool793, label %if.end805, label %if.then794

if.then794:                                       ; preds = %if.else792
  %sub795 = add nsw i32 %add784, -10
  store i32 %sub795, i32* %score, align 4, !tbaa !0
  %idxprom796 = sext i32 %add143 to i64
  %arrayidx798 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom796
  %124 = load i32* %arrayidx798, align 4, !tbaa !0
  %tobool799 = icmp eq i32 %124, 0
  br i1 %tobool799, label %if.then800, label %if.end805

if.then800:                                       ; preds = %if.then794
  %sub801 = add nsw i32 %add784, -25
  store i32 %sub801, i32* %score, align 4, !tbaa !0
  br label %if.end805

if.end805:                                        ; preds = %if.then794, %if.else792, %if.then790, %if.then800, %if.then786
  %125 = phi i32 [ %sub795, %if.then794 ], [ %add784, %if.else792 ], [ %add791, %if.then790 ], [ %sub801, %if.then800 ], [ %add787, %if.then786 ]
  %126 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom806 = sext i32 %126 to i64
  %arrayidx807 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom806
  %127 = load i32* %arrayidx807, align 4, !tbaa !0
  %.off = add i32 %127, -4
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else874, label %if.then813

if.then813:                                       ; preds = %if.end805
  %idxprom814 = sext i32 %add143 to i64
  %arrayidx815 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom814
  %128 = load i32* %arrayidx815, align 4, !tbaa !0
  %cmp816 = icmp slt i32 %33, %128
  br i1 %cmp816, label %land.lhs.true817, label %if.else829

land.lhs.true817:                                 ; preds = %if.then813
  %arrayidx820 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom814
  %129 = load i32* %arrayidx820, align 4, !tbaa !0
  %tobool821 = icmp eq i32 %129, 0
  br i1 %tobool821, label %if.else829, label %if.then822

if.then822:                                       ; preds = %land.lhs.true817
  %sub825 = sub nsw i32 %128, %33
  %130 = mul i32 %sub825, -9
  %mul827.neg = add i32 %130, 9
  %sub828 = add i32 %mul827.neg, %125
  br label %if.end831

if.else829:                                       ; preds = %land.lhs.true817, %if.then813
  %sub830 = add nsw i32 %125, -22
  br label %if.end831

if.end831:                                        ; preds = %if.else829, %if.then822
  %131 = phi i32 [ %sub830, %if.else829 ], [ %sub828, %if.then822 ]
  store i32 %131, i32* %score, align 4, !tbaa !0
  %add832 = add nsw i32 %32, 2
  %idxprom833 = sext i32 %add832 to i64
  %arrayidx834 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom833
  %132 = load i32* %arrayidx834, align 4, !tbaa !0
  %cmp835 = icmp slt i32 %33, %132
  br i1 %cmp835, label %land.lhs.true836, label %if.else850

land.lhs.true836:                                 ; preds = %if.end831
  %arrayidx840 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom833
  %133 = load i32* %arrayidx840, align 4, !tbaa !0
  %tobool841 = icmp eq i32 %133, 0
  br i1 %tobool841, label %if.else850, label %if.then842

if.then842:                                       ; preds = %land.lhs.true836
  %sub846 = sub nsw i32 %132, %33
  %sub847 = shl i32 %sub846, 3
  %mul848.neg = add i32 %131, 8
  %sub849 = sub i32 %mul848.neg, %sub847
  br label %if.end852

if.else850:                                       ; preds = %land.lhs.true836, %if.end831
  %sub851 = add nsw i32 %131, -16
  br label %if.end852

if.end852:                                        ; preds = %if.else850, %if.then842
  %134 = phi i32 [ %sub851, %if.else850 ], [ %sub849, %if.then842 ]
  store i32 %134, i32* %score, align 4, !tbaa !0
  %idxprom854 = sext i32 %32 to i64
  %arrayidx855 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom854
  %135 = load i32* %arrayidx855, align 4, !tbaa !0
  %cmp856 = icmp slt i32 %33, %135
  br i1 %cmp856, label %land.lhs.true857, label %if.else871

land.lhs.true857:                                 ; preds = %if.end852
  %arrayidx861 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom854
  %136 = load i32* %arrayidx861, align 4, !tbaa !0
  %tobool862 = icmp eq i32 %136, 0
  br i1 %tobool862, label %if.else871, label %if.then863

if.then863:                                       ; preds = %land.lhs.true857
  %sub867 = sub nsw i32 %135, %33
  %sub868 = shl i32 %sub867, 3
  %mul869.neg = add i32 %134, 8
  %sub870 = sub i32 %mul869.neg, %sub868
  store i32 %sub870, i32* %score, align 4, !tbaa !0
  br label %for.inc991

if.else871:                                       ; preds = %land.lhs.true857, %if.end852
  %sub872 = add nsw i32 %134, -16
  store i32 %sub872, i32* %score, align 4, !tbaa !0
  br label %for.inc991

if.else874:                                       ; preds = %if.end805
  %sub875 = add nsw i32 %125, -10
  store i32 %sub875, i32* %score, align 4, !tbaa !0
  br label %for.inc991

if.else877:                                       ; preds = %sw.bb779
  %arrayidx879 = getelementptr inbounds [144 x i32]* @send_king, i64 0, i64 %idxprom129
  %137 = load i32* %arrayidx879, align 4, !tbaa !0
  %add880 = add nsw i32 %137, %add140
  store i32 %add880, i32* %score, align 4, !tbaa !0
  br label %for.inc991

sw.bb882:                                         ; preds = %if.else126
  %138 = load i32* @bmat, align 4, !tbaa !0
  %cmp883 = icmp sgt i32 %138, 1300
  br i1 %cmp883, label %if.then884, label %if.else986

if.then884:                                       ; preds = %sw.bb882
  %arrayidx886 = getelementptr inbounds [144 x i32]* @sblack_king, i64 0, i64 %idxprom129
  %139 = load i32* %arrayidx886, align 4, !tbaa !0
  %sub887 = sub nsw i32 %add140, %139
  store i32 %sub887, i32* %score, align 4, !tbaa !0
  %140 = load i32* @black_castled, align 4, !tbaa !0
  switch i32 %140, label %if.else895 [
    i32 4, label %if.then889
    i32 3, label %if.then893
  ]

if.then889:                                       ; preds = %if.then884
  %sub890 = add nsw i32 %sub887, -15
  store i32 %sub890, i32* %score, align 4, !tbaa !0
  br label %if.end908

if.then893:                                       ; preds = %if.then884
  %sub894 = add nsw i32 %sub887, -25
  store i32 %sub894, i32* %score, align 4, !tbaa !0
  br label %if.end908

if.else895:                                       ; preds = %if.then884
  %141 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !tbaa !0
  %tobool896 = icmp eq i32 %141, 0
  br i1 %tobool896, label %if.end908, label %if.then897

if.then897:                                       ; preds = %if.else895
  %add898 = add nsw i32 %sub887, 10
  store i32 %add898, i32* %score, align 4, !tbaa !0
  %idxprom899 = sext i32 %add143 to i64
  %arrayidx901 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom899
  %142 = load i32* %arrayidx901, align 4, !tbaa !0
  %tobool902 = icmp eq i32 %142, 0
  br i1 %tobool902, label %if.then903, label %if.end908

if.then903:                                       ; preds = %if.then897
  %add904 = add nsw i32 %sub887, 25
  store i32 %add904, i32* %score, align 4, !tbaa !0
  br label %if.end908

if.end908:                                        ; preds = %if.then897, %if.else895, %if.then893, %if.then903, %if.then889
  %143 = phi i32 [ %add898, %if.then897 ], [ %sub887, %if.else895 ], [ %sub894, %if.then893 ], [ %add904, %if.then903 ], [ %sub890, %if.then889 ]
  %144 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom909 = sext i32 %144 to i64
  %arrayidx910 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom909
  %145 = load i32* %arrayidx910, align 4, !tbaa !0
  %.off1736 = add i32 %145, -4
  %switch1737 = icmp ult i32 %.off1736, 2
  br i1 %switch1737, label %if.else983, label %if.then916

if.then916:                                       ; preds = %if.end908
  %idxprom917 = sext i32 %add143 to i64
  %arrayidx918 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom917
  %146 = load i32* %arrayidx918, align 4, !tbaa !0
  %cmp919 = icmp sgt i32 %33, %146
  br i1 %cmp919, label %land.lhs.true920, label %if.else934

land.lhs.true920:                                 ; preds = %if.then916
  %arrayidx923 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom917
  %147 = load i32* %arrayidx923, align 4, !tbaa !0
  %tobool924 = icmp eq i32 %147, 0
  br i1 %tobool924, label %if.else934, label %if.then925

if.then925:                                       ; preds = %land.lhs.true920
  %sub928 = add i32 %33, -1
  %sub929 = sub i32 %sub928, %146
  %idxprom930 = sext i32 %sub929 to i64
  %arrayidx931 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom930
  %148 = load i32* %arrayidx931, align 4, !tbaa !0
  %mul932 = mul nsw i32 %148, 9
  %add933 = add nsw i32 %143, %mul932
  br label %if.end936

if.else934:                                       ; preds = %land.lhs.true920, %if.then916
  %add935 = add nsw i32 %143, 22
  br label %if.end936

if.end936:                                        ; preds = %if.else934, %if.then925
  %149 = phi i32 [ %add935, %if.else934 ], [ %add933, %if.then925 ]
  store i32 %149, i32* %score, align 4, !tbaa !0
  %add937 = add nsw i32 %32, 2
  %idxprom938 = sext i32 %add937 to i64
  %arrayidx939 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom938
  %150 = load i32* %arrayidx939, align 4, !tbaa !0
  %cmp940 = icmp sgt i32 %33, %150
  br i1 %cmp940, label %land.lhs.true941, label %if.else957

land.lhs.true941:                                 ; preds = %if.end936
  %arrayidx945 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom938
  %151 = load i32* %arrayidx945, align 4, !tbaa !0
  %tobool946 = icmp eq i32 %151, 0
  br i1 %tobool946, label %if.else957, label %if.then947

if.then947:                                       ; preds = %land.lhs.true941
  %sub951 = add i32 %33, -1
  %sub952 = sub i32 %sub951, %150
  %idxprom953 = sext i32 %sub952 to i64
  %arrayidx954 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom953
  %152 = load i32* %arrayidx954, align 4, !tbaa !0
  %mul955 = shl i32 %152, 3
  %add956 = add nsw i32 %mul955, %149
  br label %if.end959

if.else957:                                       ; preds = %land.lhs.true941, %if.end936
  %add958 = add nsw i32 %149, 16
  br label %if.end959

if.end959:                                        ; preds = %if.else957, %if.then947
  %153 = phi i32 [ %add958, %if.else957 ], [ %add956, %if.then947 ]
  store i32 %153, i32* %score, align 4, !tbaa !0
  %idxprom961 = sext i32 %32 to i64
  %arrayidx962 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom961
  %154 = load i32* %arrayidx962, align 4, !tbaa !0
  %cmp963 = icmp sgt i32 %33, %154
  br i1 %cmp963, label %land.lhs.true964, label %if.else980

land.lhs.true964:                                 ; preds = %if.end959
  %arrayidx968 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom961
  %155 = load i32* %arrayidx968, align 4, !tbaa !0
  %tobool969 = icmp eq i32 %155, 0
  br i1 %tobool969, label %if.else980, label %if.then970

if.then970:                                       ; preds = %land.lhs.true964
  %sub974 = add i32 %33, -1
  %sub975 = sub i32 %sub974, %154
  %idxprom976 = sext i32 %sub975 to i64
  %arrayidx977 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom976
  %156 = load i32* %arrayidx977, align 4, !tbaa !0
  %mul978 = shl i32 %156, 3
  %add979 = add nsw i32 %mul978, %153
  store i32 %add979, i32* %score, align 4, !tbaa !0
  br label %for.inc991

if.else980:                                       ; preds = %land.lhs.true964, %if.end959
  %add981 = add nsw i32 %153, 16
  store i32 %add981, i32* %score, align 4, !tbaa !0
  br label %for.inc991

if.else983:                                       ; preds = %if.end908
  %add984 = add nsw i32 %143, 10
  store i32 %add984, i32* %score, align 4, !tbaa !0
  br label %for.inc991

if.else986:                                       ; preds = %sw.bb882
  %arrayidx988 = getelementptr inbounds [144 x i32]* @send_king, i64 0, i64 %idxprom129
  %157 = load i32* %arrayidx988, align 4, !tbaa !0
  %sub989 = sub nsw i32 %add140, %157
  store i32 %sub989, i32* %score, align 4, !tbaa !0
  br label %for.inc991

for.inc991:                                       ; preds = %if.end758, %if.end744, %if.end717, %if.end703, %if.end676, %if.end405, %if.else126, %for.body121, %sw.bb767, %sw.bb769, %sw.bb771, %sw.bb773, %sw.bb775, %sw.bb777, %if.then411, %if.then682, %if.then722, %if.then763, %if.else874, %if.else871, %if.then863, %if.else877, %if.else983, %if.else980, %if.then970, %if.else986
  %a.3 = phi i32 [ %inc127, %if.then970 ], [ %inc127, %if.else980 ], [ %inc127, %if.else983 ], [ %inc127, %if.else986 ], [ %inc127, %if.then863 ], [ %inc127, %if.else871 ], [ %inc127, %if.else874 ], [ %inc127, %if.else877 ], [ %inc127, %sw.bb777 ], [ %inc127, %sw.bb775 ], [ %inc127, %sw.bb773 ], [ %inc127, %sw.bb771 ], [ %inc127, %sw.bb769 ], [ %inc127, %sw.bb767 ], [ %inc127, %if.then763 ], [ %inc127, %if.then722 ], [ %inc127, %if.then682 ], [ %inc127, %if.then411 ], [ %a.21747, %for.body121 ], [ %inc127, %if.else126 ], [ %inc127, %if.end405 ], [ %inc127, %if.end676 ], [ %inc127, %if.end703 ], [ %inc127, %if.end717 ], [ %inc127, %if.end744 ], [ %inc127, %if.end758 ]
  %wp.1 = phi i32 [ %wp.01749, %if.then970 ], [ %wp.01749, %if.else980 ], [ %wp.01749, %if.else983 ], [ %wp.01749, %if.else986 ], [ %wp.01749, %if.then863 ], [ %wp.01749, %if.else871 ], [ %wp.01749, %if.else874 ], [ %wp.01749, %if.else877 ], [ %wp.01749, %sw.bb777 ], [ %wp.01749, %sw.bb775 ], [ %wp.01749, %sw.bb773 ], [ %wp.01749, %sw.bb771 ], [ %wp.01749, %sw.bb769 ], [ %wp.01749, %sw.bb767 ], [ %wp.01749, %if.then763 ], [ %wp.01749, %if.then722 ], [ %wp.01749, %if.then682 ], [ %inc151, %if.then411 ], [ %wp.01749, %for.body121 ], [ %wp.01749, %if.else126 ], [ %inc151, %if.end405 ], [ %wp.01749, %if.end676 ], [ %wp.01749, %if.end703 ], [ %wp.01749, %if.end717 ], [ %wp.01749, %if.end744 ], [ %wp.01749, %if.end758 ]
  %bp.1 = phi i32 [ %bp.01750, %if.then970 ], [ %bp.01750, %if.else980 ], [ %bp.01750, %if.else983 ], [ %bp.01750, %if.else986 ], [ %bp.01750, %if.then863 ], [ %bp.01750, %if.else871 ], [ %bp.01750, %if.else874 ], [ %bp.01750, %if.else877 ], [ %bp.01750, %sw.bb777 ], [ %bp.01750, %sw.bb775 ], [ %bp.01750, %sw.bb773 ], [ %bp.01750, %sw.bb771 ], [ %bp.01750, %sw.bb769 ], [ %bp.01750, %sw.bb767 ], [ %bp.01750, %if.then763 ], [ %bp.01750, %if.then722 ], [ %inc418, %if.then682 ], [ %bp.01750, %if.then411 ], [ %bp.01750, %for.body121 ], [ %bp.01750, %if.else126 ], [ %bp.01750, %if.end405 ], [ %inc418, %if.end676 ], [ %bp.01750, %if.end703 ], [ %bp.01750, %if.end717 ], [ %bp.01750, %if.end744 ], [ %bp.01750, %if.end758 ]
  %wn.1 = phi i32 [ %wn.01751, %if.then970 ], [ %wn.01751, %if.else980 ], [ %wn.01751, %if.else983 ], [ %wn.01751, %if.else986 ], [ %wn.01751, %if.then863 ], [ %wn.01751, %if.else871 ], [ %wn.01751, %if.else874 ], [ %wn.01751, %if.else877 ], [ %wn.01751, %sw.bb777 ], [ %wn.01751, %sw.bb775 ], [ %wn.01751, %sw.bb773 ], [ %inc772, %sw.bb771 ], [ %wn.01751, %sw.bb769 ], [ %wn.01751, %sw.bb767 ], [ %wn.01751, %if.then763 ], [ %wn.01751, %if.then722 ], [ %wn.01751, %if.then682 ], [ %wn.01751, %if.then411 ], [ %wn.01751, %for.body121 ], [ %wn.01751, %if.else126 ], [ %wn.01751, %if.end405 ], [ %wn.01751, %if.end676 ], [ %wn.01751, %if.end703 ], [ %wn.01751, %if.end717 ], [ %wn.01751, %if.end744 ], [ %wn.01751, %if.end758 ]
  %bn.1 = phi i32 [ %bn.01752, %if.then970 ], [ %bn.01752, %if.else980 ], [ %bn.01752, %if.else983 ], [ %bn.01752, %if.else986 ], [ %bn.01752, %if.then863 ], [ %bn.01752, %if.else871 ], [ %bn.01752, %if.else874 ], [ %bn.01752, %if.else877 ], [ %bn.01752, %sw.bb777 ], [ %bn.01752, %sw.bb775 ], [ %inc774, %sw.bb773 ], [ %bn.01752, %sw.bb771 ], [ %bn.01752, %sw.bb769 ], [ %bn.01752, %sw.bb767 ], [ %bn.01752, %if.then763 ], [ %bn.01752, %if.then722 ], [ %bn.01752, %if.then682 ], [ %bn.01752, %if.then411 ], [ %bn.01752, %for.body121 ], [ %bn.01752, %if.else126 ], [ %bn.01752, %if.end405 ], [ %bn.01752, %if.end676 ], [ %bn.01752, %if.end703 ], [ %bn.01752, %if.end717 ], [ %bn.01752, %if.end744 ], [ %bn.01752, %if.end758 ]
  %wb.1 = phi i32 [ %wb.01753, %if.then970 ], [ %wb.01753, %if.else980 ], [ %wb.01753, %if.else983 ], [ %wb.01753, %if.else986 ], [ %wb.01753, %if.then863 ], [ %wb.01753, %if.else871 ], [ %wb.01753, %if.else874 ], [ %wb.01753, %if.else877 ], [ %wb.01753, %sw.bb777 ], [ %wb.01753, %sw.bb775 ], [ %wb.01753, %sw.bb773 ], [ %wb.01753, %sw.bb771 ], [ %wb.01753, %sw.bb769 ], [ %inc768, %sw.bb767 ], [ %wb.01753, %if.then763 ], [ %wb.01753, %if.then722 ], [ %wb.01753, %if.then682 ], [ %wb.01753, %if.then411 ], [ %wb.01753, %for.body121 ], [ %wb.01753, %if.else126 ], [ %wb.01753, %if.end405 ], [ %wb.01753, %if.end676 ], [ %wb.01753, %if.end703 ], [ %wb.01753, %if.end717 ], [ %wb.01753, %if.end744 ], [ %wb.01753, %if.end758 ]
  %bb.1 = phi i32 [ %bb.01754, %if.then970 ], [ %bb.01754, %if.else980 ], [ %bb.01754, %if.else983 ], [ %bb.01754, %if.else986 ], [ %bb.01754, %if.then863 ], [ %bb.01754, %if.else871 ], [ %bb.01754, %if.else874 ], [ %bb.01754, %if.else877 ], [ %bb.01754, %sw.bb777 ], [ %bb.01754, %sw.bb775 ], [ %bb.01754, %sw.bb773 ], [ %bb.01754, %sw.bb771 ], [ %inc770, %sw.bb769 ], [ %bb.01754, %sw.bb767 ], [ %bb.01754, %if.then763 ], [ %bb.01754, %if.then722 ], [ %bb.01754, %if.then682 ], [ %bb.01754, %if.then411 ], [ %bb.01754, %for.body121 ], [ %bb.01754, %if.else126 ], [ %bb.01754, %if.end405 ], [ %bb.01754, %if.end676 ], [ %bb.01754, %if.end703 ], [ %bb.01754, %if.end717 ], [ %bb.01754, %if.end744 ], [ %bb.01754, %if.end758 ]
  %wq.1 = phi i32 [ %wq.01755, %if.then970 ], [ %wq.01755, %if.else980 ], [ %wq.01755, %if.else983 ], [ %wq.01755, %if.else986 ], [ %wq.01755, %if.then863 ], [ %wq.01755, %if.else871 ], [ %wq.01755, %if.else874 ], [ %wq.01755, %if.else877 ], [ %wq.01755, %sw.bb777 ], [ %inc776, %sw.bb775 ], [ %wq.01755, %sw.bb773 ], [ %wq.01755, %sw.bb771 ], [ %wq.01755, %sw.bb769 ], [ %wq.01755, %sw.bb767 ], [ %wq.01755, %if.then763 ], [ %wq.01755, %if.then722 ], [ %wq.01755, %if.then682 ], [ %wq.01755, %if.then411 ], [ %wq.01755, %for.body121 ], [ %wq.01755, %if.else126 ], [ %wq.01755, %if.end405 ], [ %wq.01755, %if.end676 ], [ %wq.01755, %if.end703 ], [ %wq.01755, %if.end717 ], [ %wq.01755, %if.end744 ], [ %wq.01755, %if.end758 ]
  %bq.1 = phi i32 [ %bq.01756, %if.then970 ], [ %bq.01756, %if.else980 ], [ %bq.01756, %if.else983 ], [ %bq.01756, %if.else986 ], [ %bq.01756, %if.then863 ], [ %bq.01756, %if.else871 ], [ %bq.01756, %if.else874 ], [ %bq.01756, %if.else877 ], [ %inc778, %sw.bb777 ], [ %bq.01756, %sw.bb775 ], [ %bq.01756, %sw.bb773 ], [ %bq.01756, %sw.bb771 ], [ %bq.01756, %sw.bb769 ], [ %bq.01756, %sw.bb767 ], [ %bq.01756, %if.then763 ], [ %bq.01756, %if.then722 ], [ %bq.01756, %if.then682 ], [ %bq.01756, %if.then411 ], [ %bq.01756, %for.body121 ], [ %bq.01756, %if.else126 ], [ %bq.01756, %if.end405 ], [ %bq.01756, %if.end676 ], [ %bq.01756, %if.end703 ], [ %bq.01756, %if.end717 ], [ %bq.01756, %if.end744 ], [ %bq.01756, %if.end758 ]
  %wr.1 = phi i32 [ %wr.01757, %if.then970 ], [ %wr.01757, %if.else980 ], [ %wr.01757, %if.else983 ], [ %wr.01757, %if.else986 ], [ %wr.01757, %if.then863 ], [ %wr.01757, %if.else871 ], [ %wr.01757, %if.else874 ], [ %wr.01757, %if.else877 ], [ %wr.01757, %sw.bb777 ], [ %wr.01757, %sw.bb775 ], [ %wr.01757, %sw.bb773 ], [ %wr.01757, %sw.bb771 ], [ %wr.01757, %sw.bb769 ], [ %wr.01757, %sw.bb767 ], [ %wr.01757, %if.then763 ], [ %inc686, %if.then722 ], [ %wr.01757, %if.then682 ], [ %wr.01757, %if.then411 ], [ %wr.01757, %for.body121 ], [ %wr.01757, %if.else126 ], [ %wr.01757, %if.end405 ], [ %wr.01757, %if.end676 ], [ %inc686, %if.end703 ], [ %inc686, %if.end717 ], [ %wr.01757, %if.end744 ], [ %wr.01757, %if.end758 ]
  %br.1 = phi i32 [ %br.01758, %if.then970 ], [ %br.01758, %if.else980 ], [ %br.01758, %if.else983 ], [ %br.01758, %if.else986 ], [ %br.01758, %if.then863 ], [ %br.01758, %if.else871 ], [ %br.01758, %if.else874 ], [ %br.01758, %if.else877 ], [ %br.01758, %sw.bb777 ], [ %br.01758, %sw.bb775 ], [ %br.01758, %sw.bb773 ], [ %br.01758, %sw.bb771 ], [ %br.01758, %sw.bb769 ], [ %br.01758, %sw.bb767 ], [ %inc727, %if.then763 ], [ %br.01758, %if.then722 ], [ %br.01758, %if.then682 ], [ %br.01758, %if.then411 ], [ %br.01758, %for.body121 ], [ %br.01758, %if.else126 ], [ %br.01758, %if.end405 ], [ %br.01758, %if.end676 ], [ %br.01758, %if.end703 ], [ %br.01758, %if.end717 ], [ %inc727, %if.end744 ], [ %inc727, %if.end758 ]
  %rbrook.2 = phi i32 [ %rbrook.01759, %if.then970 ], [ %rbrook.01759, %if.else980 ], [ %rbrook.01759, %if.else983 ], [ %rbrook.01759, %if.else986 ], [ %rbrook.01759, %if.then863 ], [ %rbrook.01759, %if.else871 ], [ %rbrook.01759, %if.else874 ], [ %rbrook.01759, %if.else877 ], [ %rbrook.01759, %sw.bb777 ], [ %rbrook.01759, %sw.bb775 ], [ %rbrook.01759, %sw.bb773 ], [ %rbrook.01759, %sw.bb771 ], [ %rbrook.01759, %sw.bb769 ], [ %rbrook.01759, %sw.bb767 ], [ %.rbrook.0, %if.then763 ], [ %rbrook.01759, %if.then722 ], [ %rbrook.01759, %if.then682 ], [ %rbrook.01759, %if.then411 ], [ %rbrook.01759, %for.body121 ], [ %rbrook.01759, %if.else126 ], [ %rbrook.01759, %if.end405 ], [ %rbrook.01759, %if.end676 ], [ %rbrook.01759, %if.end703 ], [ %rbrook.01759, %if.end717 ], [ %.rbrook.0, %if.end744 ], [ %.rbrook.0, %if.end758 ]
  %fbrook.2 = phi i32 [ %fbrook.01760, %if.then970 ], [ %fbrook.01760, %if.else980 ], [ %fbrook.01760, %if.else983 ], [ %fbrook.01760, %if.else986 ], [ %fbrook.01760, %if.then863 ], [ %fbrook.01760, %if.else871 ], [ %fbrook.01760, %if.else874 ], [ %fbrook.01760, %if.else877 ], [ %fbrook.01760, %sw.bb777 ], [ %fbrook.01760, %sw.bb775 ], [ %fbrook.01760, %sw.bb773 ], [ %fbrook.01760, %sw.bb771 ], [ %fbrook.01760, %sw.bb769 ], [ %fbrook.01760, %sw.bb767 ], [ %.fbrook.0, %if.then763 ], [ %fbrook.01760, %if.then722 ], [ %fbrook.01760, %if.then682 ], [ %fbrook.01760, %if.then411 ], [ %fbrook.01760, %for.body121 ], [ %fbrook.01760, %if.else126 ], [ %fbrook.01760, %if.end405 ], [ %fbrook.01760, %if.end676 ], [ %fbrook.01760, %if.end703 ], [ %fbrook.01760, %if.end717 ], [ %.fbrook.0, %if.end744 ], [ %.fbrook.0, %if.end758 ]
  %rwrook.2 = phi i32 [ %rwrook.01761, %if.then970 ], [ %rwrook.01761, %if.else980 ], [ %rwrook.01761, %if.else983 ], [ %rwrook.01761, %if.else986 ], [ %rwrook.01761, %if.then863 ], [ %rwrook.01761, %if.else871 ], [ %rwrook.01761, %if.else874 ], [ %rwrook.01761, %if.else877 ], [ %rwrook.01761, %sw.bb777 ], [ %rwrook.01761, %sw.bb775 ], [ %rwrook.01761, %sw.bb773 ], [ %rwrook.01761, %sw.bb771 ], [ %rwrook.01761, %sw.bb769 ], [ %rwrook.01761, %sw.bb767 ], [ %rwrook.01761, %if.then763 ], [ %.rwrook.0, %if.then722 ], [ %rwrook.01761, %if.then682 ], [ %rwrook.01761, %if.then411 ], [ %rwrook.01761, %for.body121 ], [ %rwrook.01761, %if.else126 ], [ %rwrook.01761, %if.end405 ], [ %rwrook.01761, %if.end676 ], [ %.rwrook.0, %if.end703 ], [ %.rwrook.0, %if.end717 ], [ %rwrook.01761, %if.end744 ], [ %rwrook.01761, %if.end758 ]
  %fwrook.2 = phi i32 [ %fwrook.01762, %if.then970 ], [ %fwrook.01762, %if.else980 ], [ %fwrook.01762, %if.else983 ], [ %fwrook.01762, %if.else986 ], [ %fwrook.01762, %if.then863 ], [ %fwrook.01762, %if.else871 ], [ %fwrook.01762, %if.else874 ], [ %fwrook.01762, %if.else877 ], [ %fwrook.01762, %sw.bb777 ], [ %fwrook.01762, %sw.bb775 ], [ %fwrook.01762, %sw.bb773 ], [ %fwrook.01762, %sw.bb771 ], [ %fwrook.01762, %sw.bb769 ], [ %fwrook.01762, %sw.bb767 ], [ %fwrook.01762, %if.then763 ], [ %.fwrook.0, %if.then722 ], [ %fwrook.01762, %if.then682 ], [ %fwrook.01762, %if.then411 ], [ %fwrook.01762, %for.body121 ], [ %fwrook.01762, %if.else126 ], [ %fwrook.01762, %if.end405 ], [ %fwrook.01762, %if.end676 ], [ %.fwrook.0, %if.end703 ], [ %.fwrook.0, %if.end717 ], [ %fwrook.01762, %if.end744 ], [ %fwrook.01762, %if.end758 ]
  %wpotential.3 = phi i32 [ %wpotential.01763, %if.then970 ], [ %wpotential.01763, %if.else980 ], [ %wpotential.01763, %if.else983 ], [ %wpotential.01763, %if.else986 ], [ %wpotential.01763, %if.then863 ], [ %wpotential.01763, %if.else871 ], [ %wpotential.01763, %if.else874 ], [ %wpotential.01763, %if.else877 ], [ %wpotential.01763, %sw.bb777 ], [ %wpotential.01763, %sw.bb775 ], [ %wpotential.01763, %sw.bb773 ], [ %wpotential.01763, %sw.bb771 ], [ %wpotential.01763, %sw.bb769 ], [ %wpotential.01763, %sw.bb767 ], [ %wpotential.01763, %if.then763 ], [ %wpotential.01763, %if.then722 ], [ %wpotential.01763, %if.then682 ], [ %wpotential.2, %if.then411 ], [ %wpotential.01763, %for.body121 ], [ %wpotential.01763, %if.else126 ], [ %wpotential.2, %if.end405 ], [ %wpotential.01763, %if.end676 ], [ %wpotential.01763, %if.end703 ], [ %wpotential.01763, %if.end717 ], [ %wpotential.01763, %if.end744 ], [ %wpotential.01763, %if.end758 ]
  %bpotential.3 = phi i32 [ %bpotential.01764, %if.then970 ], [ %bpotential.01764, %if.else980 ], [ %bpotential.01764, %if.else983 ], [ %bpotential.01764, %if.else986 ], [ %bpotential.01764, %if.then863 ], [ %bpotential.01764, %if.else871 ], [ %bpotential.01764, %if.else874 ], [ %bpotential.01764, %if.else877 ], [ %bpotential.01764, %sw.bb777 ], [ %bpotential.01764, %sw.bb775 ], [ %bpotential.01764, %sw.bb773 ], [ %bpotential.01764, %sw.bb771 ], [ %bpotential.01764, %sw.bb769 ], [ %bpotential.01764, %sw.bb767 ], [ %bpotential.01764, %if.then763 ], [ %bpotential.01764, %if.then722 ], [ %bpotential.2, %if.then682 ], [ %bpotential.01764, %if.then411 ], [ %bpotential.01764, %for.body121 ], [ %bpotential.01764, %if.else126 ], [ %bpotential.01764, %if.end405 ], [ %bpotential.2, %if.end676 ], [ %bpotential.01764, %if.end703 ], [ %bpotential.01764, %if.end717 ], [ %bpotential.01764, %if.end744 ], [ %bpotential.01764, %if.end758 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %158 = load i32* @piece_count, align 4, !tbaa !0
  %cmp120 = icmp sgt i32 %a.3, %158
  br i1 %cmp120, label %for.cond119.for.end993_crit_edge, label %for.body121

for.cond119.for.end993_crit_edge:                 ; preds = %for.inc991
  %.pre = load i32* @wmat, align 4, !tbaa !0
  %.pre1784 = load i32* @bmat, align 4, !tbaa !0
  br label %for.end993

for.end993:                                       ; preds = %for.end, %for.cond119.for.end993_crit_edge, %for.cond119.preheader
  %159 = phi i32 [ %.pre1784, %for.cond119.for.end993_crit_edge ], [ %26, %for.cond119.preheader ], [ 0, %for.end ]
  %160 = phi i32 [ %.pre, %for.cond119.for.end993_crit_edge ], [ %27, %for.cond119.preheader ], [ 0, %for.end ]
  %bpotential.0.lcssa = phi i32 [ %bpotential.3, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %wpotential.0.lcssa = phi i32 [ %wpotential.3, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %br.0.lcssa = phi i32 [ %br.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %wr.0.lcssa = phi i32 [ %wr.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %bq.0.lcssa = phi i32 [ %bq.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %wq.0.lcssa = phi i32 [ %wq.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %bb.0.lcssa = phi i32 [ %bb.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %wb.0.lcssa = phi i32 [ %wb.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %bn.0.lcssa = phi i32 [ %bn.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %wn.0.lcssa = phi i32 [ %wn.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %bp.0.lcssa = phi i32 [ %bp.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %wp.0.lcssa = phi i32 [ %wp.1, %for.cond119.for.end993_crit_edge ], [ 0, %for.cond119.preheader ], [ 0, %for.end ]
  %cmp994 = icmp sgt i32 %160, 2200
  %cmp996 = icmp sgt i32 %159, 2200
  %or.cond = or i1 %cmp994, %cmp996
  br i1 %or.cond, label %if.then997, label %if.end1022

if.then997:                                       ; preds = %for.end993
  %161 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 41), align 4, !tbaa !0
  %tobool998 = icmp eq i32 %161, 0
  %162 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 53), align 4, !tbaa !0
  %cmp1000 = icmp ne i32 %162, 13
  %or.cond1365 = and i1 %tobool998, %cmp1000
  br i1 %or.cond1365, label %if.then1001, label %if.end1003

if.then1001:                                      ; preds = %if.then997
  %163 = load i32* %score, align 4, !tbaa !0
  %sub1002 = add nsw i32 %163, -5
  store i32 %sub1002, i32* %score, align 4, !tbaa !0
  br label %if.end1003

if.end1003:                                       ; preds = %if.then997, %if.then1001
  %164 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 42), align 4, !tbaa !0
  %tobool1004 = icmp eq i32 %164, 0
  %165 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !tbaa !0
  %cmp1006 = icmp ne i32 %165, 13
  %or.cond1366 = and i1 %tobool1004, %cmp1006
  br i1 %or.cond1366, label %if.then1007, label %if.end1009

if.then1007:                                      ; preds = %if.end1003
  %166 = load i32* %score, align 4, !tbaa !0
  %sub1008 = add nsw i32 %166, -5
  store i32 %sub1008, i32* %score, align 4, !tbaa !0
  br label %if.end1009

if.end1009:                                       ; preds = %if.end1003, %if.then1007
  %167 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 101), align 4, !tbaa !0
  %tobool1010 = icmp eq i32 %167, 0
  %168 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 89), align 4, !tbaa !0
  %cmp1012 = icmp ne i32 %168, 13
  %or.cond1367 = and i1 %tobool1010, %cmp1012
  br i1 %or.cond1367, label %if.then1013, label %if.end1015

if.then1013:                                      ; preds = %if.end1009
  %169 = load i32* %score, align 4, !tbaa !0
  %add1014 = add nsw i32 %169, 5
  store i32 %add1014, i32* %score, align 4, !tbaa !0
  br label %if.end1015

if.end1015:                                       ; preds = %if.end1009, %if.then1013
  %170 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 102), align 4, !tbaa !0
  %tobool1016 = icmp eq i32 %170, 0
  %171 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !tbaa !0
  %cmp1018 = icmp ne i32 %171, 13
  %or.cond1368 = and i1 %tobool1016, %cmp1018
  br i1 %or.cond1368, label %if.then1019, label %if.end1022

if.then1019:                                      ; preds = %if.end1015
  %172 = load i32* %score, align 4, !tbaa !0
  %add1020 = add nsw i32 %172, 5
  store i32 %add1020, i32* %score, align 4, !tbaa !0
  br label %if.end1022

if.end1022:                                       ; preds = %if.then1019, %if.end1015, %for.end993
  %cmp1023 = icmp sgt i32 %160, 1300
  %cmp1025 = icmp sgt i32 %159, 1300
  %or.cond1369 = or i1 %cmp1023, %cmp1025
  br i1 %or.cond1369, label %if.then1026, label %if.end1124

if.then1026:                                      ; preds = %if.end1022
  %173 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom1027 = sext i32 %173 to i64
  %arrayidx1028 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom1027
  %174 = load i32* %arrayidx1028, align 4, !tbaa !0
  %add1029 = add nsw i32 %174, 1
  %175 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom1030 = sext i32 %175 to i64
  %arrayidx1031 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom1030
  %176 = load i32* %arrayidx1031, align 4, !tbaa !0
  %add1032 = add nsw i32 %176, 1
  %sub1033 = sub nsw i32 %add1029, %add1032
  %ispos1675 = icmp sgt i32 %sub1033, -1
  %neg1676 = sub i32 0, %sub1033
  %177 = select i1 %ispos1675, i32 %sub1033, i32 %neg1676
  %cmp1035 = icmp sgt i32 %177, 2
  br i1 %cmp1035, label %if.then1036, label %if.end1124

if.then1036:                                      ; preds = %if.then1026
  %idxprom1037 = sext i32 %add1029 to i64
  %arrayidx1038 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom1037
  %178 = load i32* %arrayidx1038, align 4, !tbaa !0
  %idxprom1039 = sext i32 %178 to i64
  %arrayidx1040 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom1039
  %179 = load i32* %arrayidx1040, align 4, !tbaa !0
  %add1044 = add nsw i32 %174, 2
  %idxprom1045 = sext i32 %add1044 to i64
  %arrayidx1046 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom1045
  %180 = load i32* %arrayidx1046, align 4, !tbaa !0
  %idxprom1047 = sext i32 %180 to i64
  %arrayidx1048 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom1047
  %181 = load i32* %arrayidx1048, align 4, !tbaa !0
  %182 = add i32 %181, %179
  %idxprom1053 = sext i32 %174 to i64
  %arrayidx1054 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %idxprom1053
  %183 = load i32* %arrayidx1054, align 4, !tbaa !0
  %idxprom1055 = sext i32 %183 to i64
  %arrayidx1056 = getelementptr inbounds [9 x i32]* @srev_rank, i64 0, i64 %idxprom1055
  %184 = load i32* %arrayidx1056, align 4, !tbaa !0
  %mul10501677 = add i32 %182, %184
  %mul1058 = mul i32 %mul10501677, 3
  %idxprom1060 = sext i32 %add1032 to i64
  %arrayidx1061 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom1060
  %185 = load i32* %arrayidx1061, align 4, !tbaa !0
  %add1065 = add nsw i32 %176, 2
  %idxprom1066 = sext i32 %add1065 to i64
  %arrayidx1067 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom1066
  %186 = load i32* %arrayidx1067, align 4, !tbaa !0
  %187 = add i32 %186, %185
  %idxprom1072 = sext i32 %176 to i64
  %arrayidx1073 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %idxprom1072
  %188 = load i32* %arrayidx1073, align 4, !tbaa !0
  %mul10691678 = add i32 %187, %188
  %mul1075 = mul i32 %mul10691678, 3
  %arrayidx1079 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom1037
  %189 = load i32* %arrayidx1079, align 4, !tbaa !0
  %tobool1080 = icmp eq i32 %189, 0
  %add1082.add1059.v = select i1 %tobool1080, i32 -10, i32 -18
  %add1082.add1059 = add i32 %add1082.add1059.v, %mul1058
  %arrayidx1087 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom1045
  %190 = load i32* %arrayidx1087, align 4, !tbaa !0
  %tobool1088 = icmp eq i32 %190, 0
  %add1090 = add nsw i32 %add1082.add1059, 6
  %wksafety.1 = select i1 %tobool1088, i32 %add1090, i32 %add1082.add1059
  %arrayidx1095 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %idxprom1053
  %191 = load i32* %arrayidx1095, align 4, !tbaa !0
  %tobool1096 = icmp eq i32 %191, 0
  %add1098 = add nsw i32 %wksafety.1, 6
  %add1098.wksafety.1 = select i1 %tobool1096, i32 %add1098, i32 %wksafety.1
  %arrayidx1102 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom1060
  %192 = load i32* %arrayidx1102, align 4, !tbaa !0
  %tobool1103 = icmp eq i32 %192, 0
  %bksafety.0.v = select i1 %tobool1103, i32 -10, i32 -18
  %bksafety.0 = add i32 %bksafety.0.v, %mul1075
  %arrayidx1110 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom1066
  %193 = load i32* %arrayidx1110, align 4, !tbaa !0
  %tobool1111 = icmp eq i32 %193, 0
  %add1113 = add nsw i32 %bksafety.0, 6
  %add1113.bksafety.0 = select i1 %tobool1111, i32 %add1113, i32 %bksafety.0
  %arrayidx1118 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %idxprom1072
  %194 = load i32* %arrayidx1118, align 4, !tbaa !0
  %tobool1119 = icmp eq i32 %194, 0
  %add1121 = add nsw i32 %add1113.bksafety.0, 6
  %add1121.add1113.bksafety.0 = select i1 %tobool1119, i32 %add1121, i32 %add1113.bksafety.0
  br label %if.end1124

if.end1124:                                       ; preds = %if.then1036, %if.then1026, %if.end1022
  %wksafety.3 = phi i32 [ 0, %if.then1026 ], [ 0, %if.end1022 ], [ %add1098.wksafety.1, %if.then1036 ]
  %bksafety.2 = phi i32 [ 0, %if.then1026 ], [ 0, %if.end1022 ], [ %add1121.add1113.bksafety.0, %if.then1036 ]
  %cmp1125 = icmp slt i32 %159, 1301
  %tobool1127 = icmp eq i32 %bq.0.lcssa, 0
  %or.cond1712 = or i1 %cmp1125, %tobool1127
  br i1 %or.cond1712, label %if.end1130, label %if.then1128

if.then1128:                                      ; preds = %if.end1124
  %195 = load i32* %score, align 4, !tbaa !0
  %sub1129 = sub nsw i32 %195, %wksafety.3
  store i32 %sub1129, i32* %score, align 4, !tbaa !0
  br label %if.end1130

if.end1130:                                       ; preds = %if.end1124, %if.then1128
  %cmp1131 = icmp slt i32 %160, 1301
  %tobool1133 = icmp eq i32 %wq.0.lcssa, 0
  %or.cond1713 = or i1 %cmp1131, %tobool1133
  br i1 %or.cond1713, label %if.end1136, label %if.then1134

if.then1134:                                      ; preds = %if.end1130
  %196 = load i32* %score, align 4, !tbaa !0
  %add1135 = add nsw i32 %196, %bksafety.2
  store i32 %add1135, i32* %score, align 4, !tbaa !0
  br label %if.end1136

if.end1136:                                       ; preds = %if.end1130, %if.then1134
  %tobool1137 = icmp ne i32 %wr.0.lcssa, 0
  %tobool1137.not = xor i1 %tobool1137, true
  %or.cond1714 = and i1 %tobool1133, %tobool1137.not
  %tobool1141 = icmp eq i32 %wb.0.lcssa, 0
  %or.cond1715 = and i1 %or.cond1714, %tobool1141
  %tobool1143 = icmp eq i32 %wn.0.lcssa, 0
  %or.cond1716 = and i1 %or.cond1715, %tobool1143
  br i1 %or.cond1716, label %if.then1144, label %if.end1146

if.then1144:                                      ; preds = %if.end1136
  %197 = load i32* %score, align 4, !tbaa !0
  %add1145 = add nsw i32 %197, %bpotential.0.lcssa
  store i32 %add1145, i32* %score, align 4, !tbaa !0
  br label %if.end1146

if.end1146:                                       ; preds = %if.end1136, %if.then1144
  %tobool1147 = icmp ne i32 %br.0.lcssa, 0
  %tobool1147.not = xor i1 %tobool1147, true
  %or.cond1717 = and i1 %tobool1127, %tobool1147.not
  %tobool1151 = icmp eq i32 %bb.0.lcssa, 0
  %or.cond1718 = and i1 %or.cond1717, %tobool1151
  %tobool1153 = icmp eq i32 %bn.0.lcssa, 0
  %or.cond1719 = and i1 %or.cond1718, %tobool1153
  br i1 %or.cond1719, label %if.then1154, label %if.end1156

if.then1154:                                      ; preds = %if.end1146
  %198 = load i32* %score, align 4, !tbaa !0
  %add1155 = add nsw i32 %198, %wpotential.0.lcssa
  store i32 %add1155, i32* %score, align 4, !tbaa !0
  br label %if.end1156

if.end1156:                                       ; preds = %if.end1146, %if.then1154
  %199 = or i32 %bp.0.lcssa, %wp.0.lcssa
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %if.then1160, label %if.else1260

if.then1160:                                      ; preds = %if.end1156
  %201 = or i32 %bq.0.lcssa, %wq.0.lcssa
  %202 = or i32 %201, %wr.0.lcssa
  %203 = or i32 %202, %br.0.lcssa
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %if.then1168, label %if.else1209

if.then1168:                                      ; preds = %if.then1160
  %tobool1169 = icmp ne i32 %bb.0.lcssa, 0
  %tobool1169.not = xor i1 %tobool1169, true
  %or.cond1723 = and i1 %tobool1141, %tobool1169.not
  br i1 %or.cond1723, label %if.then1172, label %if.else1178

if.then1172:                                      ; preds = %if.then1168
  %cmp1173 = icmp slt i32 %wn.0.lcssa, 3
  %cmp1175 = icmp slt i32 %bn.0.lcssa, 3
  %or.cond1724 = and i1 %cmp1173, %cmp1175
  br i1 %or.cond1724, label %if.then1176, label %if.end1344

if.then1176:                                      ; preds = %if.then1172
  store i32 0, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1178:                                      ; preds = %if.then1168
  %tobool1179 = icmp ne i32 %wn.0.lcssa, 0
  %tobool1179.not = xor i1 %tobool1179, true
  %or.cond1725 = and i1 %tobool1153, %tobool1179.not
  br i1 %or.cond1725, label %if.then1182, label %if.else1188

if.then1182:                                      ; preds = %if.else1178
  %sub1183 = sub nsw i32 %wb.0.lcssa, %bb.0.lcssa
  %ispos1671 = icmp sgt i32 %sub1183, -1
  %neg1672 = sub i32 0, %sub1183
  %205 = select i1 %ispos1671, i32 %sub1183, i32 %neg1672
  %cmp1185 = icmp slt i32 %205, 2
  br i1 %cmp1185, label %if.then1186, label %if.end1344

if.then1186:                                      ; preds = %if.then1182
  store i32 0, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1188:                                      ; preds = %if.else1178
  %cmp1189 = icmp slt i32 %wn.0.lcssa, 3
  %or.cond1726 = and i1 %cmp1189, %tobool1141
  %or.cond1726.not = xor i1 %or.cond1726, true
  %cmp1193.not = icmp ne i32 %wb.0.lcssa, 1
  %brmerge1727 = or i1 %cmp1193.not, %tobool1179
  %or.cond1741 = and i1 %brmerge1727, %or.cond1726.not
  br i1 %or.cond1741, label %if.end1344, label %if.then1196

if.then1196:                                      ; preds = %if.else1188
  %cmp1197.not = icmp sgt i32 %bn.0.lcssa, 2
  %brmerge1728 = or i1 %cmp1197.not, %tobool1169
  %brmerge1728.not = xor i1 %brmerge1728, true
  %cmp1201 = icmp eq i32 %bb.0.lcssa, 1
  %or.cond1729 = and i1 %cmp1201, %tobool1153
  %or.cond1740 = or i1 %or.cond1729, %brmerge1728.not
  br i1 %or.cond1740, label %if.then1204, label %if.end1344

if.then1204:                                      ; preds = %if.then1196
  store i32 0, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1209:                                      ; preds = %if.then1160
  %206 = icmp eq i32 %201, 0
  br i1 %206, label %if.then1213, label %if.end1344

if.then1213:                                      ; preds = %if.else1209
  %cmp1214 = icmp eq i32 %wr.0.lcssa, 1
  %cmp1216 = icmp eq i32 %br.0.lcssa, 1
  %or.cond1731 = and i1 %cmp1214, %cmp1216
  br i1 %or.cond1731, label %if.then1217, label %if.else1225

if.then1217:                                      ; preds = %if.then1213
  %add1218 = add nsw i32 %wb.0.lcssa, %wn.0.lcssa
  %cmp1219 = icmp slt i32 %add1218, 2
  br i1 %cmp1219, label %land.lhs.true1220, label %if.end1344

land.lhs.true1220:                                ; preds = %if.then1217
  %add1221 = add nsw i32 %bb.0.lcssa, %bn.0.lcssa
  %cmp1222 = icmp slt i32 %add1221, 2
  br i1 %cmp1222, label %if.then1223, label %if.end1344

if.then1223:                                      ; preds = %land.lhs.true1220
  store i32 0, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1225:                                      ; preds = %if.then1213
  %cmp1214.not = xor i1 %cmp1214, true
  %brmerge1732 = or i1 %tobool1147, %cmp1214.not
  br i1 %brmerge1732, label %if.else1240, label %if.then1229

if.then1229:                                      ; preds = %if.else1225
  %add1230 = sub i32 0, %wb.0.lcssa
  %cmp1231 = icmp eq i32 %wn.0.lcssa, %add1230
  br i1 %cmp1231, label %land.lhs.true1232, label %if.end1344

land.lhs.true1232:                                ; preds = %if.then1229
  %add1233 = add i32 %bn.0.lcssa, -1
  %add1233.off = add i32 %add1233, %bb.0.lcssa
  %switch1738 = icmp ult i32 %add1233.off, 2
  br i1 %switch1738, label %if.then1238, label %if.end1344

if.then1238:                                      ; preds = %land.lhs.true1232
  store i32 0, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1240:                                      ; preds = %if.else1225
  %cmp1241.not = xor i1 %cmp1216, true
  %brmerge1733 = or i1 %tobool1137, %cmp1241.not
  br i1 %brmerge1733, label %if.end1344, label %if.then1244

if.then1244:                                      ; preds = %if.else1240
  %add1245 = sub i32 0, %bb.0.lcssa
  %cmp1246 = icmp eq i32 %bn.0.lcssa, %add1245
  br i1 %cmp1246, label %land.lhs.true1247, label %if.end1344

land.lhs.true1247:                                ; preds = %if.then1244
  %add1248 = add i32 %wn.0.lcssa, -1
  %add1248.off = add i32 %add1248, %wb.0.lcssa
  %switch1739 = icmp ult i32 %add1248.off, 2
  br i1 %switch1739, label %if.then1253, label %if.end1344

if.then1253:                                      ; preds = %land.lhs.true1247
  store i32 0, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1260:                                      ; preds = %if.end1156
  %add1261 = add nsw i32 %wb.0.lcssa, %wn.0.lcssa
  %add1262 = add nsw i32 %bb.0.lcssa, %bn.0.lcssa
  %cmp1263 = icmp eq i32 %add1261, %add1262
  %add1265 = add nsw i32 %wr.0.lcssa, %wq.0.lcssa
  %add1266 = add nsw i32 %br.0.lcssa, %bq.0.lcssa
  %cmp1267 = icmp eq i32 %add1265, %add1266
  br i1 %cmp1263, label %if.else1324, label %if.then1264

if.then1264:                                      ; preds = %if.else1260
  br i1 %cmp1267, label %if.then1268, label %if.else1277

if.then1268:                                      ; preds = %if.then1264
  %cmp1271 = icmp sgt i32 %add1261, %add1262
  %207 = load i32* %score, align 4, !tbaa !0
  br i1 %cmp1271, label %if.then1272, label %if.else1274

if.then1272:                                      ; preds = %if.then1268
  %add1273 = add nsw i32 %207, 120
  store i32 %add1273, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1274:                                      ; preds = %if.then1268
  %sub1275 = add nsw i32 %207, -120
  store i32 %sub1275, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1277:                                      ; preds = %if.then1264
  %sub1280 = sub nsw i32 %add1265, %add1266
  %ispos1673 = icmp sgt i32 %sub1280, -1
  %neg1674 = sub i32 0, %sub1280
  %208 = select i1 %ispos1673, i32 %sub1280, i32 %neg1674
  switch i32 %208, label %if.end1344 [
    i32 1, label %if.then1283
    i32 2, label %if.then1305
  ]

if.then1283:                                      ; preds = %if.else1277
  %add1286 = add nsw i32 %add1262, 1
  %cmp1287 = icmp sgt i32 %add1261, %add1286
  br i1 %cmp1287, label %if.then1288, label %if.else1290

if.then1288:                                      ; preds = %if.then1283
  %209 = load i32* %score, align 4, !tbaa !0
  %add1289 = add nsw i32 %209, 120
  store i32 %add1289, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1290:                                      ; preds = %if.then1283
  %add1293 = add nsw i32 %add1261, 1
  %cmp1294 = icmp sgt i32 %add1262, %add1293
  br i1 %cmp1294, label %if.then1295, label %if.end1344

if.then1295:                                      ; preds = %if.else1290
  %210 = load i32* %score, align 4, !tbaa !0
  %sub1296 = add nsw i32 %210, -120
  store i32 %sub1296, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.then1305:                                      ; preds = %if.else1277
  %add1308 = add nsw i32 %add1262, 2
  %cmp1309 = icmp sgt i32 %add1261, %add1308
  br i1 %cmp1309, label %if.then1310, label %if.else1312

if.then1310:                                      ; preds = %if.then1305
  %211 = load i32* %score, align 4, !tbaa !0
  %add1311 = add nsw i32 %211, 120
  store i32 %add1311, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1312:                                      ; preds = %if.then1305
  %add1315 = add nsw i32 %add1261, 2
  %cmp1316 = icmp sgt i32 %add1262, %add1315
  br i1 %cmp1316, label %if.then1317, label %if.end1344

if.then1317:                                      ; preds = %if.else1312
  %212 = load i32* %score, align 4, !tbaa !0
  %sub1318 = add nsw i32 %212, -120
  store i32 %sub1318, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1324:                                      ; preds = %if.else1260
  br i1 %cmp1267, label %if.then1328, label %if.end1344

if.then1328:                                      ; preds = %if.else1324
  %tobool1329 = icmp ne i32 %wq.0.lcssa, 0
  %or.cond1734 = and i1 %tobool1329, %tobool1127
  br i1 %or.cond1734, label %if.then1332, label %if.else1334

if.then1332:                                      ; preds = %if.then1328
  %213 = load i32* %score, align 4, !tbaa !0
  %add1333 = add nsw i32 %213, 120
  store i32 %add1333, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.else1334:                                      ; preds = %if.then1328
  %or.cond1735 = or i1 %tobool1329, %tobool1127
  br i1 %or.cond1735, label %if.end1344, label %if.then1338

if.then1338:                                      ; preds = %if.else1334
  %214 = load i32* %score, align 4, !tbaa !0
  %sub1339 = add nsw i32 %214, -120
  store i32 %sub1339, i32* %score, align 4, !tbaa !0
  br label %if.end1344

if.end1344:                                       ; preds = %if.else1334, %if.else1324, %if.else1312, %if.else1290, %if.else1277, %land.lhs.true1247, %if.then1244, %if.else1240, %land.lhs.true1232, %if.then1229, %land.lhs.true1220, %if.then1217, %if.else1209, %if.then1196, %if.else1188, %if.then1182, %if.then1172, %if.then1295, %if.then1288, %if.then1310, %if.then1317, %if.then1272, %if.else1274, %if.then1332, %if.then1338, %if.then1186, %if.then1204, %if.then1176, %if.then1223, %if.then1253, %if.then1238
  %215 = load i32* %score, align 4, !tbaa !0
  call void @storeECache(i32 %215) #6
  %216 = load i32* @Material, align 4, !tbaa !0
  %217 = load i32* %score, align 4, !tbaa !0
  %sub1345 = sub nsw i32 %216, %217
  %ispos = icmp sgt i32 %sub1345, -1
  %neg = sub i32 0, %sub1345
  %218 = select i1 %ispos, i32 %sub1345, i32 %neg
  %219 = load i32* @maxposdiff, align 4, !tbaa !0
  %cmp1347 = icmp sgt i32 %218, %219
  br i1 %cmp1347, label %if.then1348, label %if.end1358

if.then1348:                                      ; preds = %if.end1344
  %cmp1351 = icmp sgt i32 %218, 1000
  %. = select i1 %cmp1351, i32 1000, i32 %218
  store i32 %., i32* @maxposdiff, align 4, !tbaa !0
  br label %if.end1358

if.end1358:                                       ; preds = %if.then1348, %if.end1344
  %220 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp1359 = icmp eq i32 %220, 1
  %sub1362 = sub nsw i32 0, %217
  %.sub1362 = select i1 %cmp1359, i32 %217, i32 %sub1362
  br label %cleanup

cleanup:                                          ; preds = %if.end1358, %if.then28, %if.end, %entry
  %retval.0 = phi i32 [ %sub3, %entry ], [ %add, %if.end ], [ %.sub32, %if.then28 ], [ %.sub1362, %if.end1358 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #3
  call void @llvm.lifetime.end(i64 44, i8* %1) #3
  call void @llvm.lifetime.end(i64 88, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: optsize
declare void @storeECache(i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
