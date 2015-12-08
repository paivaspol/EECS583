; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TType = type { i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.QTType = type { i8, i8, i16, i32, i32, i32 }

@DP_TTable = common global %struct.TType* null, align 8
@TTSize = external global i32
@AS_TTable = common global %struct.TType* null, align 8
@QS_TTable = common global %struct.QTType* null, align 8
@zobrist = common global [14 x [144 x i32]] zeroinitializer, align 16
@hash = common global i32 0, align 4
@hold_hash = external global i32
@board = external global [144 x i32]
@TTStores = common global i32 0, align 4
@white_to_move = external global i32
@is_pondering = external global i32
@ply = external global i32
@Variant = external global i32
@TTProbes = common global i32 0, align 4
@TTHits = common global i32 0, align 4
@str = private unnamed_addr constant [37 x i8] c"Out of memory allocating hashtables.\00"

; Function Attrs: nounwind optsize uwtable
define void @clear_tt() #0 {
entry:
  %0 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %1 = getelementptr inbounds %struct.TType* %0, i64 0, i32 0
  %2 = load i32* @TTSize, align 4, !tbaa !3
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 20
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false)
  %3 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %4 = getelementptr inbounds %struct.TType* %3, i64 0, i32 0
  %5 = load i32* @TTSize, align 4, !tbaa !3
  %conv1 = sext i32 %5 to i64
  %mul2 = mul i64 %conv1, 20
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul2, i32 4, i1 false)
  %6 = load %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %7 = getelementptr inbounds %struct.QTType* %6, i64 0, i32 0
  %8 = load i32* @TTSize, align 4, !tbaa !3
  %conv3 = sext i32 %8 to i64
  %mul4 = shl nsw i64 %conv3, 4
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul4, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_dp_tt() #0 {
entry:
  %0 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %1 = getelementptr inbounds %struct.TType* %0, i64 0, i32 0
  %2 = load i32* @TTSize, align 4, !tbaa !3
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 20
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @initialize_zobrist() #0 {
entry:
  tail call void @seedMT(i32 31657) #5
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6, %entry
  %indvars.iv15 = phi i64 [ 0, %entry ], [ %indvars.iv.next16, %for.inc6 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %call = tail call i32 @randomMT() #5
  %arrayidx5 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  store i32 %call, i32* %arrayidx5, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 144
  br i1 %exitcond, label %for.inc6, label %for.body3

for.inc6:                                         ; preds = %for.body3
  %indvars.iv.next16 = add i64 %indvars.iv15, 1
  %lftr.wideiv17 = trunc i64 %indvars.iv.next16 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, 14
  br i1 %exitcond18, label %for.end8, label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6
  store i32 -559038737, i32* @hash, align 4, !tbaa !3
  store i32 -1056969216, i32* @hold_hash, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @seedMT(i32) #2

; Function Attrs: optsize
declare i32 @randomMT() #2

; Function Attrs: nounwind optsize uwtable
define void @initialize_hash() #0 {
entry:
  store i32 -559038737, i32* @hash, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %0 = phi i32 [ -559038737, %entry ], [ %3, %for.inc ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  switch i32 %1, label %if.then [
    i32 13, label %for.inc
    i32 0, label %for.inc
  ]

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %1 to i64
  %arrayidx10 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom8, i64 %indvars.iv
  %2 = load i32* %arrayidx10, align 4, !tbaa !3
  %xor = xor i32 %2, %0
  store i32 %xor, i32* @hash, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.body, %if.then
  %3 = phi i32 [ %0, %for.body ], [ %0, %for.body ], [ %xor, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 144
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  store i32 -1056969216, i32* @hold_hash, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @QStoreTT(i32 %score, i32 %alpha, i32 %beta, i32 %best) #0 {
entry:
  %0 = load i32* @TTStores, align 4, !tbaa !3
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTStores, align 4, !tbaa !3
  %1 = load i32* @hash, align 4, !tbaa !3
  %2 = load i32* @TTSize, align 4, !tbaa !3
  %rem = urem i32 %1, %2
  %cmp = icmp sgt i32 %score, %alpha
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %rem to i64
  %3 = load %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %Type = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 1
  store i8 1, i8* %Type, align 1, !tbaa !1
  br label %if.end10

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %score, %beta
  %idxprom3 = zext i32 %rem to i64
  %4 = load %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %Type5 = getelementptr inbounds %struct.QTType* %4, i64 %idxprom3, i32 1
  br i1 %cmp1, label %if.else6, label %if.then2

if.then2:                                         ; preds = %if.else
  store i8 2, i8* %Type5, align 1, !tbaa !1
  br label %if.end10

if.else6:                                         ; preds = %if.else
  store i8 3, i8* %Type5, align 1, !tbaa !1
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.else6, %if.then
  %5 = load i32* @hash, align 4, !tbaa !3
  %idxprom11 = zext i32 %rem to i64
  %6 = load %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %HashKey = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 3
  store i32 %5, i32* %HashKey, align 4, !tbaa !3
  %7 = load i32* @hold_hash, align 4, !tbaa !3
  %Hold_hash = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 4
  store i32 %7, i32* %Hold_hash, align 4, !tbaa !3
  %conv = trunc i32 %best to i16
  %Bestmove = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 2
  store i16 %conv, i16* %Bestmove, align 2, !tbaa !4
  %Bound = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 5
  store i32 %score, i32* %Bound, align 4, !tbaa !3
  %8 = load i32* @white_to_move, align 4, !tbaa !3
  %not.tobool = icmp eq i32 %8, 0
  %conv19 = zext i1 %not.tobool to i8
  %OnMove = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 0
  store i8 %conv19, i8* %OnMove, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @StoreTT(i32 %score, i32 %alpha, i32 %beta, i32 %best, i32 %threat, i32 %depth) #0 {
entry:
  %0 = load i32* @TTStores, align 4, !tbaa !3
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTStores, align 4, !tbaa !3
  %1 = load i32* @hash, align 4, !tbaa !3
  %2 = load i32* @TTSize, align 4, !tbaa !3
  %rem = urem i32 %1, %2
  %idxprom = zext i32 %rem to i64
  %3 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %Depth = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 0
  %4 = load i8* %Depth, align 1, !tbaa !1
  %conv = sext i8 %4 to i32
  %cmp = icmp slt i32 %conv, %depth
  br i1 %cmp, label %land.lhs.true22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i32 %conv, %depth
  br i1 %cmp6, label %land.lhs.true, label %if.else77

land.lhs.true:                                    ; preds = %lor.lhs.false
  %Type = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3
  %5 = load i8* %Type, align 1, !tbaa !1
  %cmp11 = icmp eq i8 %5, 1
  %cmp14 = icmp sgt i32 %score, %alpha
  %or.cond194 = and i1 %cmp11, %cmp14
  br i1 %or.cond194, label %land.lhs.true22, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %land.lhs.true
  br i1 %cmp14, label %land.lhs.true19, label %if.else77

land.lhs.true19:                                  ; preds = %lor.lhs.false16
  %cmp20 = icmp sge i32 %score, %beta
  %6 = load i32* @is_pondering, align 4, !tbaa !1
  %tobool = icmp ne i32 %6, 0
  %or.cond = or i1 %cmp20, %tobool
  br i1 %or.cond, label %if.else77, label %if.then

land.lhs.true22:                                  ; preds = %land.lhs.true, %entry
  %.old = load i32* @is_pondering, align 4, !tbaa !1
  %tobool.old = icmp eq i32 %.old, 0
  br i1 %tobool.old, label %if.then, label %if.else77

if.then:                                          ; preds = %land.lhs.true22, %land.lhs.true19
  %cmp23 = icmp sgt i32 %score, %alpha
  br i1 %cmp23, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then
  %Type28 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3
  store i8 1, i8* %Type28, align 1, !tbaa !1
  %cmp29 = icmp slt i32 %score, -999500
  %.score = select i1 %cmp29, i32 -999500, i32 %score
  br label %if.end56

if.else:                                          ; preds = %if.then
  %cmp32 = icmp slt i32 %score, %beta
  %Type37 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3
  br i1 %cmp32, label %if.else42, label %if.then34

if.then34:                                        ; preds = %if.else
  store i8 2, i8* %Type37, align 1, !tbaa !1
  %cmp38 = icmp sgt i32 %score, 999500
  %.score195 = select i1 %cmp38, i32 999500, i32 %score
  br label %if.end56

if.else42:                                        ; preds = %if.else
  store i8 3, i8* %Type37, align 1, !tbaa !1
  %cmp46 = icmp sgt i32 %score, 999500
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else42
  %7 = load i32* @ply, align 4, !tbaa !3
  %add = add nsw i32 %7, %score
  br label %if.end56

if.else49:                                        ; preds = %if.else42
  %cmp50 = icmp slt i32 %score, -999500
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.else49
  %8 = load i32* @ply, align 4, !tbaa !3
  %sub = sub nsw i32 %score, %8
  br label %if.end56

if.end56:                                         ; preds = %if.then34, %if.then25, %if.else49, %if.then52, %if.then48
  %score.addr.0 = phi i32 [ %add, %if.then48 ], [ %sub, %if.then52 ], [ %score, %if.else49 ], [ %.score, %if.then25 ], [ %.score195, %if.then34 ]
  %9 = load i32* @hash, align 4, !tbaa !3
  %10 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %HashKey = getelementptr inbounds %struct.TType* %10, i64 %idxprom, i32 5
  store i32 %9, i32* %HashKey, align 4, !tbaa !3
  %11 = load i32* @hold_hash, align 4, !tbaa !3
  %Hold_hash = getelementptr inbounds %struct.TType* %10, i64 %idxprom, i32 6
  store i32 %11, i32* %Hold_hash, align 4, !tbaa !3
  %conv61 = trunc i32 %depth to i8
  %Depth64 = getelementptr inbounds %struct.TType* %10, i64 %idxprom, i32 0
  store i8 %conv61, i8* %Depth64, align 1, !tbaa !1
  %conv65 = trunc i32 %best to i16
  %12 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %Bestmove = getelementptr inbounds %struct.TType* %12, i64 %idxprom, i32 4
  store i16 %conv65, i16* %Bestmove, align 2, !tbaa !4
  %Bound = getelementptr inbounds %struct.TType* %12, i64 %idxprom, i32 7
  store i32 %score.addr.0, i32* %Bound, align 4, !tbaa !3
  %13 = load i32* @white_to_move, align 4, !tbaa !3
  %not.tobool70 = icmp eq i32 %13, 0
  %conv71 = zext i1 %not.tobool70 to i8
  %OnMove = getelementptr inbounds %struct.TType* %12, i64 %idxprom, i32 1
  store i8 %conv71, i8* %OnMove, align 1, !tbaa !1
  %conv74 = trunc i32 %threat to i8
  %14 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %Threat = getelementptr inbounds %struct.TType* %14, i64 %idxprom, i32 2
  store i8 %conv74, i8* %Threat, align 1, !tbaa !1
  br label %if.end143

if.else77:                                        ; preds = %land.lhs.true22, %land.lhs.true19, %lor.lhs.false16, %lor.lhs.false
  %cmp78 = icmp sgt i32 %score, %alpha
  br i1 %cmp78, label %if.else88, label %if.then80

if.then80:                                        ; preds = %if.else77
  %15 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Type83 = getelementptr inbounds %struct.TType* %15, i64 %idxprom, i32 3
  store i8 1, i8* %Type83, align 1, !tbaa !1
  %cmp84 = icmp slt i32 %score, -999500
  %.score196 = select i1 %cmp84, i32 -999500, i32 %score
  br label %if.end115

if.else88:                                        ; preds = %if.else77
  %cmp89 = icmp slt i32 %score, %beta
  %16 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Type94 = getelementptr inbounds %struct.TType* %16, i64 %idxprom, i32 3
  br i1 %cmp89, label %if.else99, label %if.then91

if.then91:                                        ; preds = %if.else88
  store i8 2, i8* %Type94, align 1, !tbaa !1
  %cmp95 = icmp sgt i32 %score, 999500
  %.score197 = select i1 %cmp95, i32 999500, i32 %score
  br label %if.end115

if.else99:                                        ; preds = %if.else88
  store i8 3, i8* %Type94, align 1, !tbaa !1
  %cmp103 = icmp sgt i32 %score, 999500
  br i1 %cmp103, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.else99
  %17 = load i32* @ply, align 4, !tbaa !3
  %add106 = add nsw i32 %17, %score
  br label %if.end115

if.else107:                                       ; preds = %if.else99
  %cmp108 = icmp slt i32 %score, -999500
  br i1 %cmp108, label %if.then110, label %if.end115

if.then110:                                       ; preds = %if.else107
  %18 = load i32* @ply, align 4, !tbaa !3
  %sub111 = sub nsw i32 %score, %18
  br label %if.end115

if.end115:                                        ; preds = %if.then91, %if.then80, %if.else107, %if.then110, %if.then105
  %score.addr.1 = phi i32 [ %add106, %if.then105 ], [ %sub111, %if.then110 ], [ %score, %if.else107 ], [ %.score196, %if.then80 ], [ %.score197, %if.then91 ]
  %19 = load i32* @hash, align 4, !tbaa !3
  %20 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %HashKey118 = getelementptr inbounds %struct.TType* %20, i64 %idxprom, i32 5
  store i32 %19, i32* %HashKey118, align 4, !tbaa !3
  %21 = load i32* @hold_hash, align 4, !tbaa !3
  %Hold_hash121 = getelementptr inbounds %struct.TType* %20, i64 %idxprom, i32 6
  store i32 %21, i32* %Hold_hash121, align 4, !tbaa !3
  %conv122 = trunc i32 %depth to i8
  %Depth125 = getelementptr inbounds %struct.TType* %20, i64 %idxprom, i32 0
  store i8 %conv122, i8* %Depth125, align 1, !tbaa !1
  %conv126 = trunc i32 %best to i16
  %22 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Bestmove129 = getelementptr inbounds %struct.TType* %22, i64 %idxprom, i32 4
  store i16 %conv126, i16* %Bestmove129, align 2, !tbaa !4
  %Bound132 = getelementptr inbounds %struct.TType* %22, i64 %idxprom, i32 7
  store i32 %score.addr.1, i32* %Bound132, align 4, !tbaa !3
  %23 = load i32* @white_to_move, align 4, !tbaa !3
  %not.tobool133 = icmp eq i32 %23, 0
  %conv135 = zext i1 %not.tobool133 to i8
  %OnMove138 = getelementptr inbounds %struct.TType* %22, i64 %idxprom, i32 1
  store i8 %conv135, i8* %OnMove138, align 1, !tbaa !1
  %conv139 = trunc i32 %threat to i8
  %24 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Threat142 = getelementptr inbounds %struct.TType* %24, i64 %idxprom, i32 2
  store i8 %conv139, i8* %Threat142, align 1, !tbaa !1
  br label %if.end143

if.end143:                                        ; preds = %if.end115, %if.end56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LearnStoreTT(i32 %score, i32 %nhash, i32 %hhash, i32 %tomove, i32 %best, i32 %depth) #0 {
entry:
  %0 = load i32* @TTSize, align 4, !tbaa !3
  %rem = urem i32 %nhash, %0
  %conv = trunc i32 %depth to i8
  %idxprom = zext i32 %rem to i64
  %1 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Depth = getelementptr inbounds %struct.TType* %1, i64 %idxprom, i32 0
  store i8 %conv, i8* %Depth, align 1, !tbaa !1
  %2 = load i32* @Variant, align 4, !tbaa !3
  %.off = add i32 %2, -3
  %3 = icmp ugt i32 %.off, 1
  %4 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Type = getelementptr inbounds %struct.TType* %4, i64 %idxprom, i32 3
  %. = select i1 %3, i8 3, i8 1
  store i8 %., i8* %Type, align 1, !tbaa !1
  %5 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %HashKey = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 5
  store i32 %nhash, i32* %HashKey, align 4, !tbaa !3
  %Hold_hash = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 6
  store i32 %hhash, i32* %Hold_hash, align 4, !tbaa !3
  %conv13 = trunc i32 %best to i16
  %Bestmove = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 4
  store i16 %conv13, i16* %Bestmove, align 2, !tbaa !4
  %Bound = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 7
  store i32 %score, i32* %Bound, align 4, !tbaa !3
  %conv18 = trunc i32 %tomove to i8
  %OnMove = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 1
  store i8 %conv18, i8* %OnMove, align 1, !tbaa !1
  %6 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %Threat = getelementptr inbounds %struct.TType* %6, i64 %idxprom, i32 2
  store i8 0, i8* %Threat, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @ProbeTT(i32* nocapture %score, i32 %beta, i32* nocapture %best, i32* nocapture %threat, i32* nocapture %donull, i32 %depth) #0 {
entry:
  store i32 1, i32* %donull, align 4, !tbaa !3
  %0 = load i32* @TTProbes, align 4, !tbaa !3
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTProbes, align 4, !tbaa !3
  %1 = load i32* @hash, align 4, !tbaa !3
  %2 = load i32* @TTSize, align 4, !tbaa !3
  %rem = urem i32 %1, %2
  %idxprom = zext i32 %rem to i64
  %3 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %HashKey = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 5
  %4 = load i32* %HashKey, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, %1
  br i1 %cmp, label %land.lhs.true, label %if.else75

land.lhs.true:                                    ; preds = %entry
  %Hold_hash = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 6
  %5 = load i32* %Hold_hash, align 4, !tbaa !3
  %6 = load i32* @hold_hash, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %land.lhs.true4, label %if.else75

land.lhs.true4:                                   ; preds = %land.lhs.true
  %OnMove = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 1
  %7 = load i8* %OnMove, align 1, !tbaa !1
  %conv = sext i8 %7 to i32
  %8 = load i32* @white_to_move, align 4, !tbaa !3
  %not.tobool = icmp eq i32 %8, 0
  %conv8 = zext i1 %not.tobool to i32
  %cmp9 = icmp eq i32 %conv, %conv8
  br i1 %cmp9, label %if.then, label %if.else75

if.then:                                          ; preds = %land.lhs.true4
  %9 = load i32* @TTHits, align 4, !tbaa !3
  %inc11 = add i32 %9, 1
  store i32 %inc11, i32* @TTHits, align 4, !tbaa !3
  %Type = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3
  %10 = load i8* %Type, align 1, !tbaa !1
  %cmp15 = icmp eq i8 %10, 1
  br i1 %cmp15, label %land.lhs.true17, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  %Depth38.pre = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 0
  br label %if.end

land.lhs.true17:                                  ; preds = %if.then
  %sub18 = add nsw i32 %depth, -3
  %Depth = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 0
  %11 = load i8* %Depth, align 1, !tbaa !1
  %conv21 = sext i8 %11 to i32
  %cmp22 = icmp sgt i32 %sub18, %conv21
  br i1 %cmp22, label %if.end, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %Bound = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 7
  %12 = load i32* %Bound, align 4, !tbaa !3
  %cmp27 = icmp slt i32 %12, %beta
  br i1 %cmp27, label %if.then29, label %if.end

if.then29:                                        ; preds = %land.lhs.true24
  store i32 0, i32* %donull, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %land.lhs.true17, %if.then29, %land.lhs.true24
  %Depth38.pre-phi = phi i8* [ %Depth38.pre, %if.then.if.end_crit_edge ], [ %Depth, %land.lhs.true17 ], [ %Depth, %if.then29 ], [ %Depth, %land.lhs.true24 ]
  %Threat = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 2
  %13 = load i8* %Threat, align 1, !tbaa !1
  %not.tobool32 = icmp ne i8 %13, 0
  %inc34 = zext i1 %not.tobool32 to i32
  %depth.inc34 = add nsw i32 %inc34, %depth
  %14 = load i8* %Depth38.pre-phi, align 1, !tbaa !1
  %conv39 = sext i8 %14 to i32
  %cmp40 = icmp slt i32 %conv39, %depth.inc34
  br i1 %cmp40, label %if.else66, label %if.then42

if.then42:                                        ; preds = %if.end
  %Bound45 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 7
  %15 = load i32* %Bound45, align 4, !tbaa !3
  store i32 %15, i32* %score, align 4, !tbaa !3
  %cmp46 = icmp sgt i32 %15, 999500
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then42
  %16 = load i32* @ply, align 4, !tbaa !3
  %sub49 = sub nsw i32 %15, %16
  store i32 %sub49, i32* %score, align 4, !tbaa !3
  br label %if.end54

if.else:                                          ; preds = %if.then42
  %cmp50 = icmp slt i32 %15, -999500
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.else
  %17 = load i32* @ply, align 4, !tbaa !3
  %add = add nsw i32 %17, %15
  store i32 %add, i32* %score, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then52, %if.then48
  %Bestmove = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 4
  %18 = load i16* %Bestmove, align 2, !tbaa !4
  %conv57 = zext i16 %18 to i32
  store i32 %conv57, i32* %best, align 4, !tbaa !3
  %19 = load i8* %Threat, align 1, !tbaa !1
  %conv61 = sext i8 %19 to i32
  store i32 %conv61, i32* %threat, align 4, !tbaa !3
  %20 = load i8* %Type, align 1, !tbaa !1
  %conv65 = sext i8 %20 to i32
  br label %return

if.else66:                                        ; preds = %if.end
  %Bestmove69 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 4
  %21 = load i16* %Bestmove69, align 2, !tbaa !4
  %conv70 = zext i16 %21 to i32
  store i32 %conv70, i32* %best, align 4, !tbaa !3
  %22 = load i8* %Threat, align 1, !tbaa !1
  %conv74 = sext i8 %22 to i32
  store i32 %conv74, i32* %threat, align 4, !tbaa !3
  br label %return

if.else75:                                        ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %23 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %HashKey78 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 5
  %24 = load i32* %HashKey78, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %24, %1
  br i1 %cmp79, label %land.lhs.true81, label %return

land.lhs.true81:                                  ; preds = %if.else75
  %Hold_hash84 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 6
  %25 = load i32* %Hold_hash84, align 4, !tbaa !3
  %26 = load i32* @hold_hash, align 4, !tbaa !3
  %cmp85 = icmp eq i32 %25, %26
  br i1 %cmp85, label %land.lhs.true87, label %return

land.lhs.true87:                                  ; preds = %land.lhs.true81
  %OnMove90 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 1
  %27 = load i8* %OnMove90, align 1, !tbaa !1
  %conv91 = sext i8 %27 to i32
  %28 = load i32* @white_to_move, align 4, !tbaa !3
  %not.tobool92 = icmp eq i32 %28, 0
  %conv95 = zext i1 %not.tobool92 to i32
  %cmp96 = icmp eq i32 %conv91, %conv95
  br i1 %cmp96, label %if.then98, label %return

if.then98:                                        ; preds = %land.lhs.true87
  %29 = load i32* @TTHits, align 4, !tbaa !3
  %inc99 = add i32 %29, 1
  store i32 %inc99, i32* @TTHits, align 4, !tbaa !3
  %Type102 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 3
  %30 = load i8* %Type102, align 1, !tbaa !1
  %cmp104 = icmp eq i8 %30, 1
  br i1 %cmp104, label %land.lhs.true106, label %if.then98.if.end122_crit_edge

if.then98.if.end122_crit_edge:                    ; preds = %if.then98
  %Depth132.pre = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 0
  br label %if.end122

land.lhs.true106:                                 ; preds = %if.then98
  %sub108 = add nsw i32 %depth, -3
  %Depth111 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 0
  %31 = load i8* %Depth111, align 1, !tbaa !1
  %conv112 = sext i8 %31 to i32
  %cmp113 = icmp sgt i32 %sub108, %conv112
  br i1 %cmp113, label %if.end122, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true106
  %Bound118 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 7
  %32 = load i32* %Bound118, align 4, !tbaa !3
  %cmp119 = icmp slt i32 %32, %beta
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %land.lhs.true115
  store i32 0, i32* %donull, align 4, !tbaa !3
  br label %if.end122

if.end122:                                        ; preds = %if.then98.if.end122_crit_edge, %land.lhs.true106, %if.then121, %land.lhs.true115
  %Depth132.pre-phi = phi i8* [ %Depth132.pre, %if.then98.if.end122_crit_edge ], [ %Depth111, %land.lhs.true106 ], [ %Depth111, %if.then121 ], [ %Depth111, %land.lhs.true115 ]
  %Threat125 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 2
  %33 = load i8* %Threat125, align 1, !tbaa !1
  %not.tobool126 = icmp ne i8 %33, 0
  %inc128 = zext i1 %not.tobool126 to i32
  %depth.inc128 = add nsw i32 %inc128, %depth
  %34 = load i8* %Depth132.pre-phi, align 1, !tbaa !1
  %conv133 = sext i8 %34 to i32
  %cmp134 = icmp slt i32 %conv133, %depth.inc128
  br i1 %cmp134, label %if.else163, label %if.then136

if.then136:                                       ; preds = %if.end122
  %Bound139 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 7
  %35 = load i32* %Bound139, align 4, !tbaa !3
  store i32 %35, i32* %score, align 4, !tbaa !3
  %cmp140 = icmp sgt i32 %35, 999500
  br i1 %cmp140, label %if.then142, label %if.else144

if.then142:                                       ; preds = %if.then136
  %36 = load i32* @ply, align 4, !tbaa !3
  %sub143 = sub nsw i32 %35, %36
  store i32 %sub143, i32* %score, align 4, !tbaa !3
  br label %if.end150

if.else144:                                       ; preds = %if.then136
  %cmp145 = icmp slt i32 %35, -999500
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %if.else144
  %37 = load i32* @ply, align 4, !tbaa !3
  %add148 = add nsw i32 %37, %35
  store i32 %add148, i32* %score, align 4, !tbaa !3
  br label %if.end150

if.end150:                                        ; preds = %if.else144, %if.then147, %if.then142
  %Bestmove153 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 4
  %38 = load i16* %Bestmove153, align 2, !tbaa !4
  %conv154 = zext i16 %38 to i32
  store i32 %conv154, i32* %best, align 4, !tbaa !3
  %39 = load i8* %Threat125, align 1, !tbaa !1
  %conv158 = sext i8 %39 to i32
  store i32 %conv158, i32* %threat, align 4, !tbaa !3
  %40 = load i8* %Type102, align 1, !tbaa !1
  %conv162 = sext i8 %40 to i32
  br label %return

if.else163:                                       ; preds = %if.end122
  %Bestmove166 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 4
  %41 = load i16* %Bestmove166, align 2, !tbaa !4
  %conv167 = zext i16 %41 to i32
  store i32 %conv167, i32* %best, align 4, !tbaa !3
  %42 = load i8* %Threat125, align 1, !tbaa !1
  %conv171 = sext i8 %42 to i32
  store i32 %conv171, i32* %threat, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.else75, %land.lhs.true81, %land.lhs.true87, %if.else163, %if.end150, %if.else66, %if.end54
  %retval.0 = phi i32 [ %conv65, %if.end54 ], [ 0, %if.else66 ], [ %conv162, %if.end150 ], [ 0, %if.else163 ], [ 4, %land.lhs.true87 ], [ 4, %land.lhs.true81 ], [ 4, %if.else75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @QProbeTT(i32* nocapture %score, i32* nocapture %best) #0 {
entry:
  %0 = load i32* @TTProbes, align 4, !tbaa !3
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTProbes, align 4, !tbaa !3
  %1 = load i32* @hash, align 4, !tbaa !3
  %2 = load i32* @TTSize, align 4, !tbaa !3
  %rem = urem i32 %1, %2
  %idxprom = zext i32 %rem to i64
  %3 = load %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %HashKey = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 3
  %4 = load i32* %HashKey, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, %1
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %Hold_hash = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 4
  %5 = load i32* %Hold_hash, align 4, !tbaa !3
  %6 = load i32* @hold_hash, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %land.lhs.true4, label %return

land.lhs.true4:                                   ; preds = %land.lhs.true
  %OnMove = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 0
  %7 = load i8* %OnMove, align 1, !tbaa !1
  %conv = sext i8 %7 to i32
  %8 = load i32* @white_to_move, align 4, !tbaa !3
  %not.tobool = icmp eq i32 %8, 0
  %conv8 = zext i1 %not.tobool to i32
  %cmp9 = icmp eq i32 %conv, %conv8
  br i1 %cmp9, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true4
  %9 = load i32* @TTHits, align 4, !tbaa !3
  %inc11 = add i32 %9, 1
  store i32 %inc11, i32* @TTHits, align 4, !tbaa !3
  %Bound = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 5
  %10 = load i32* %Bound, align 4, !tbaa !3
  store i32 %10, i32* %score, align 4, !tbaa !3
  %Bestmove = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 2
  %11 = load i16* %Bestmove, align 2, !tbaa !4
  %conv16 = zext i16 %11 to i32
  store i32 %conv16, i32* %best, align 4, !tbaa !3
  %Type = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 1
  %12 = load i8* %Type, align 1, !tbaa !1
  %conv19 = sext i8 %12 to i32
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true4, %if.then
  %retval.0 = phi i32 [ %conv19, %if.then ], [ 4, %land.lhs.true4 ], [ 4, %land.lhs.true ], [ 4, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @alloc_hash() #0 {
entry:
  %0 = load i32* @TTSize, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 20
  %call = tail call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to %struct.TType*
  store %struct.TType* %1, %struct.TType** @AS_TTable, align 8, !tbaa !0
  %call3 = tail call noalias i8* @malloc(i64 %mul) #5
  %2 = bitcast i8* %call3 to %struct.TType*
  store %struct.TType* %2, %struct.TType** @DP_TTable, align 8, !tbaa !0
  %mul5 = shl nsw i64 %conv, 4
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #5
  %3 = bitcast i8* %call6 to %struct.QTType*
  store %struct.QTType* %3, %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  %cmp8 = icmp eq i8* %call3, null
  %or.cond = or i1 %cmp, %cmp8
  %cmp11 = icmp eq i8* %call6, null
  %or.cond14 = or i1 %or.cond, %cmp11
  br i1 %or.cond14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @free_hash() #0 {
entry:
  %0 = load %struct.TType** @AS_TTable, align 8, !tbaa !0
  %1 = getelementptr inbounds %struct.TType* %0, i64 0, i32 0
  tail call void @free(i8* %1) #5
  %2 = load %struct.TType** @DP_TTable, align 8, !tbaa !0
  %3 = getelementptr inbounds %struct.TType* %2, i64 0, i32 0
  tail call void @free(i8* %3) #5
  %4 = load %struct.QTType** @QS_TTable, align 8, !tbaa !0
  %5 = getelementptr inbounds %struct.QTType* %4, i64 0, i32 0
  tail call void @free(i8* %5) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
