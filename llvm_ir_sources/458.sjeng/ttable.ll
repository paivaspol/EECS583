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
  %0 = load %struct.TType** @DP_TTable, align 8, !dbg !113, !tbaa !114
  %1 = getelementptr inbounds %struct.TType* %0, i64 0, i32 0, !dbg !113
  %2 = load i32* @TTSize, align 4, !dbg !113, !tbaa !117
  %conv = sext i32 %2 to i64, !dbg !113
  %mul = mul i64 %conv, 20, !dbg !113
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false), !dbg !113
  %3 = load %struct.TType** @AS_TTable, align 8, !dbg !118, !tbaa !114
  %4 = getelementptr inbounds %struct.TType* %3, i64 0, i32 0, !dbg !118
  %5 = load i32* @TTSize, align 4, !dbg !118, !tbaa !117
  %conv1 = sext i32 %5 to i64, !dbg !118
  %mul2 = mul i64 %conv1, 20, !dbg !118
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul2, i32 4, i1 false), !dbg !118
  %6 = load %struct.QTType** @QS_TTable, align 8, !dbg !119, !tbaa !114
  %7 = getelementptr inbounds %struct.QTType* %6, i64 0, i32 0, !dbg !119
  %8 = load i32* @TTSize, align 4, !dbg !119, !tbaa !117
  %conv3 = sext i32 %8 to i64, !dbg !119
  %mul4 = shl nsw i64 %conv3, 4, !dbg !119
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul4, i32 4, i1 false), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_dp_tt() #0 {
entry:
  %0 = load %struct.TType** @DP_TTable, align 8, !dbg !121, !tbaa !114
  %1 = getelementptr inbounds %struct.TType* %0, i64 0, i32 0, !dbg !121
  %2 = load i32* @TTSize, align 4, !dbg !121, !tbaa !117
  %conv = sext i32 %2 to i64, !dbg !121
  %mul = mul i64 %conv, 20, !dbg !121
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false), !dbg !121
  ret void, !dbg !122
}

; Function Attrs: nounwind optsize uwtable
define void @initialize_zobrist() #0 {
entry:
  tail call void @seedMT(i32 31657) #6, !dbg !123
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !17), !dbg !124
  br label %for.cond1.preheader, !dbg !124

for.cond1.preheader:                              ; preds = %for.inc6, %entry
  %indvars.iv15 = phi i64 [ 0, %entry ], [ %indvars.iv.next16, %for.inc6 ]
  br label %for.body3, !dbg !126

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %call = tail call i32 @randomMT() #6, !dbg !129
  %arrayidx5 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %indvars.iv15, i64 %indvars.iv, !dbg !129
  store i32 %call, i32* %arrayidx5, align 4, !dbg !129, !tbaa !117
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !126
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !126
  %exitcond = icmp eq i32 %lftr.wideiv, 144, !dbg !126
  br i1 %exitcond, label %for.inc6, label %for.body3, !dbg !126

for.inc6:                                         ; preds = %for.body3
  %indvars.iv.next16 = add i64 %indvars.iv15, 1, !dbg !124
  %lftr.wideiv17 = trunc i64 %indvars.iv.next16 to i32, !dbg !124
  %exitcond18 = icmp eq i32 %lftr.wideiv17, 14, !dbg !124
  br i1 %exitcond18, label %for.end8, label %for.cond1.preheader, !dbg !124

for.end8:                                         ; preds = %for.inc6
  store i32 -559038737, i32* @hash, align 4, !dbg !131, !tbaa !117
  store i32 -1056969216, i32* @hold_hash, align 4, !dbg !132, !tbaa !117
  ret void, !dbg !133
}

; Function Attrs: optsize
declare void @seedMT(i32) #2

; Function Attrs: optsize
declare i32 @randomMT() #2

; Function Attrs: nounwind optsize uwtable
define void @initialize_hash() #0 {
entry:
  store i32 -559038737, i32* @hash, align 4, !dbg !134, !tbaa !117
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !22), !dbg !135
  br label %for.body, !dbg !135

for.body:                                         ; preds = %for.inc, %entry
  %0 = phi i32 [ -559038737, %entry ], [ %3, %for.inc ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv, !dbg !137
  %1 = load i32* %arrayidx, align 4, !dbg !137, !tbaa !117
  switch i32 %1, label %if.then [
    i32 13, label %for.inc
    i32 0, label %for.inc
  ], !dbg !137

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %1 to i64, !dbg !139
  %arrayidx10 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom8, i64 %indvars.iv, !dbg !139
  %2 = load i32* %arrayidx10, align 4, !dbg !139, !tbaa !117
  %xor = xor i32 %2, %0, !dbg !139
  store i32 %xor, i32* @hash, align 4, !dbg !139, !tbaa !117
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body, %for.body, %if.then
  %3 = phi i32 [ %0, %for.body ], [ %0, %for.body ], [ %xor, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !135
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !135
  %exitcond = icmp eq i32 %lftr.wideiv, 144, !dbg !135
  br i1 %exitcond, label %for.end, label %for.body, !dbg !135

for.end:                                          ; preds = %for.inc
  store i32 -1056969216, i32* @hold_hash, align 4, !dbg !140, !tbaa !117
  ret void, !dbg !141
}

; Function Attrs: nounwind optsize uwtable
define void @QStoreTT(i32 %score, i32 %alpha, i32 %beta, i32 %best) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !27), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !28), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !29), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %best}, i64 0, metadata !30), !dbg !142
  %0 = load i32* @TTStores, align 4, !dbg !143, !tbaa !117
  %inc = add i32 %0, 1, !dbg !143
  store i32 %inc, i32* @TTStores, align 4, !dbg !143, !tbaa !117
  %1 = load i32* @hash, align 4, !dbg !144, !tbaa !117
  %2 = load i32* @TTSize, align 4, !dbg !144, !tbaa !117
  %rem = urem i32 %1, %2, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !31), !dbg !144
  %cmp = icmp sgt i32 %score, %alpha, !dbg !145
  br i1 %cmp, label %if.else, label %if.then, !dbg !145

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %rem to i64, !dbg !146
  %3 = load %struct.QTType** @QS_TTable, align 8, !dbg !146, !tbaa !114
  %Type = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 1, !dbg !146
  store i8 1, i8* %Type, align 1, !dbg !146, !tbaa !115
  br label %if.end10, !dbg !146

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %score, %beta, !dbg !147
  %idxprom3 = zext i32 %rem to i64, !dbg !148
  %4 = load %struct.QTType** @QS_TTable, align 8, !dbg !148, !tbaa !114
  %Type5 = getelementptr inbounds %struct.QTType* %4, i64 %idxprom3, i32 1, !dbg !148
  br i1 %cmp1, label %if.else6, label %if.then2, !dbg !147

if.then2:                                         ; preds = %if.else
  store i8 2, i8* %Type5, align 1, !dbg !148, !tbaa !115
  br label %if.end10, !dbg !148

if.else6:                                         ; preds = %if.else
  store i8 3, i8* %Type5, align 1, !dbg !149, !tbaa !115
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.else6, %if.then
  %5 = load i32* @hash, align 4, !dbg !150, !tbaa !117
  %idxprom11 = zext i32 %rem to i64, !dbg !150
  %6 = load %struct.QTType** @QS_TTable, align 8, !dbg !150, !tbaa !114
  %HashKey = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 3, !dbg !150
  store i32 %5, i32* %HashKey, align 4, !dbg !150, !tbaa !117
  %7 = load i32* @hold_hash, align 4, !dbg !151, !tbaa !117
  %Hold_hash = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 4, !dbg !151
  store i32 %7, i32* %Hold_hash, align 4, !dbg !151, !tbaa !117
  %conv = trunc i32 %best to i16, !dbg !152
  %Bestmove = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 2, !dbg !152
  store i16 %conv, i16* %Bestmove, align 2, !dbg !152, !tbaa !153
  %Bound = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 5, !dbg !154
  store i32 %score, i32* %Bound, align 4, !dbg !154, !tbaa !117
  %8 = load i32* @white_to_move, align 4, !dbg !155, !tbaa !117
  %not.tobool = icmp eq i32 %8, 0, !dbg !155
  %conv19 = zext i1 %not.tobool to i8, !dbg !155
  %OnMove = getelementptr inbounds %struct.QTType* %6, i64 %idxprom11, i32 0, !dbg !155
  store i8 %conv19, i8* %OnMove, align 1, !dbg !155, !tbaa !115
  ret void, !dbg !156
}

; Function Attrs: nounwind optsize uwtable
define void @StoreTT(i32 %score, i32 %alpha, i32 %beta, i32 %best, i32 %threat, i32 %depth) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !37), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !38), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !39), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %best}, i64 0, metadata !40), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %threat}, i64 0, metadata !41), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !42), !dbg !157
  %0 = load i32* @TTStores, align 4, !dbg !158, !tbaa !117
  %inc = add i32 %0, 1, !dbg !158
  store i32 %inc, i32* @TTStores, align 4, !dbg !158, !tbaa !117
  %1 = load i32* @hash, align 4, !dbg !159, !tbaa !117
  %2 = load i32* @TTSize, align 4, !dbg !159, !tbaa !117
  %rem = urem i32 %1, %2, !dbg !159
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !43), !dbg !159
  %idxprom = zext i32 %rem to i64, !dbg !160
  %3 = load %struct.TType** @DP_TTable, align 8, !dbg !160, !tbaa !114
  %Depth = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 0, !dbg !160
  %4 = load i8* %Depth, align 1, !dbg !160, !tbaa !115
  %conv = sext i8 %4 to i32, !dbg !160
  %cmp = icmp slt i32 %conv, %depth, !dbg !160
  br i1 %cmp, label %land.lhs.true22, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i32 %conv, %depth, !dbg !160
  br i1 %cmp6, label %land.lhs.true, label %if.else77, !dbg !160

land.lhs.true:                                    ; preds = %lor.lhs.false
  %Type = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3, !dbg !160
  %5 = load i8* %Type, align 1, !dbg !160, !tbaa !115
  %cmp11 = icmp eq i8 %5, 1, !dbg !160
  %cmp14 = icmp sgt i32 %score, %alpha, !dbg !160
  %or.cond194 = and i1 %cmp11, %cmp14, !dbg !160
  br i1 %or.cond194, label %land.lhs.true22, label %lor.lhs.false16, !dbg !160

lor.lhs.false16:                                  ; preds = %land.lhs.true
  br i1 %cmp14, label %land.lhs.true19, label %if.else77, !dbg !160

land.lhs.true19:                                  ; preds = %lor.lhs.false16
  %cmp20 = icmp sge i32 %score, %beta, !dbg !160
  %6 = load i32* @is_pondering, align 4, !dbg !160, !tbaa !115
  %tobool = icmp ne i32 %6, 0, !dbg !160
  %or.cond = or i1 %cmp20, %tobool, !dbg !160
  br i1 %or.cond, label %if.else77, label %if.then, !dbg !160

land.lhs.true22:                                  ; preds = %land.lhs.true, %entry
  %.old = load i32* @is_pondering, align 4, !dbg !160, !tbaa !115
  %tobool.old = icmp eq i32 %.old, 0, !dbg !160
  br i1 %tobool.old, label %if.then, label %if.else77, !dbg !160

if.then:                                          ; preds = %land.lhs.true22, %land.lhs.true19
  %cmp23 = icmp sgt i32 %score, %alpha, !dbg !161
  br i1 %cmp23, label %if.else, label %if.then25, !dbg !161

if.then25:                                        ; preds = %if.then
  %Type28 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3, !dbg !163
  store i8 1, i8* %Type28, align 1, !dbg !163, !tbaa !115
  %cmp29 = icmp slt i32 %score, -999500, !dbg !165
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !37), !dbg !165
  %.score = select i1 %cmp29, i32 -999500, i32 %score, !dbg !165
  br label %if.end56, !dbg !165

if.else:                                          ; preds = %if.then
  %cmp32 = icmp slt i32 %score, %beta, !dbg !167
  %Type37 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3, !dbg !168
  br i1 %cmp32, label %if.else42, label %if.then34, !dbg !167

if.then34:                                        ; preds = %if.else
  store i8 2, i8* %Type37, align 1, !dbg !168, !tbaa !115
  %cmp38 = icmp sgt i32 %score, 999500, !dbg !170
  tail call void @llvm.dbg.value(metadata !171, i64 0, metadata !37), !dbg !170
  %.score195 = select i1 %cmp38, i32 999500, i32 %score, !dbg !170
  br label %if.end56, !dbg !170

if.else42:                                        ; preds = %if.else
  store i8 3, i8* %Type37, align 1, !dbg !172, !tbaa !115
  %cmp46 = icmp sgt i32 %score, 999500, !dbg !174
  br i1 %cmp46, label %if.then48, label %if.else49, !dbg !174

if.then48:                                        ; preds = %if.else42
  %7 = load i32* @ply, align 4, !dbg !175, !tbaa !117
  %add = add nsw i32 %7, %score, !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !37), !dbg !175
  br label %if.end56, !dbg !175

if.else49:                                        ; preds = %if.else42
  %cmp50 = icmp slt i32 %score, -999500, !dbg !176
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !176

if.then52:                                        ; preds = %if.else49
  %8 = load i32* @ply, align 4, !dbg !177, !tbaa !117
  %sub = sub nsw i32 %score, %8, !dbg !177
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !37), !dbg !177
  br label %if.end56, !dbg !177

if.end56:                                         ; preds = %if.then34, %if.then25, %if.else49, %if.then52, %if.then48
  %score.addr.0 = phi i32 [ %add, %if.then48 ], [ %sub, %if.then52 ], [ %score, %if.else49 ], [ %.score, %if.then25 ], [ %.score195, %if.then34 ]
  %9 = load i32* @hash, align 4, !dbg !178, !tbaa !117
  %10 = load %struct.TType** @DP_TTable, align 8, !dbg !178, !tbaa !114
  %HashKey = getelementptr inbounds %struct.TType* %10, i64 %idxprom, i32 5, !dbg !178
  store i32 %9, i32* %HashKey, align 4, !dbg !178, !tbaa !117
  %11 = load i32* @hold_hash, align 4, !dbg !179, !tbaa !117
  %Hold_hash = getelementptr inbounds %struct.TType* %10, i64 %idxprom, i32 6, !dbg !179
  store i32 %11, i32* %Hold_hash, align 4, !dbg !179, !tbaa !117
  %conv61 = trunc i32 %depth to i8, !dbg !180
  %Depth64 = getelementptr inbounds %struct.TType* %10, i64 %idxprom, i32 0, !dbg !180
  store i8 %conv61, i8* %Depth64, align 1, !dbg !180, !tbaa !115
  %conv65 = trunc i32 %best to i16, !dbg !181
  %12 = load %struct.TType** @DP_TTable, align 8, !dbg !181, !tbaa !114
  %Bestmove = getelementptr inbounds %struct.TType* %12, i64 %idxprom, i32 4, !dbg !181
  store i16 %conv65, i16* %Bestmove, align 2, !dbg !181, !tbaa !153
  %Bound = getelementptr inbounds %struct.TType* %12, i64 %idxprom, i32 7, !dbg !182
  store i32 %score.addr.0, i32* %Bound, align 4, !dbg !182, !tbaa !117
  %13 = load i32* @white_to_move, align 4, !dbg !183, !tbaa !117
  %not.tobool70 = icmp eq i32 %13, 0, !dbg !183
  %conv71 = zext i1 %not.tobool70 to i8, !dbg !183
  %OnMove = getelementptr inbounds %struct.TType* %12, i64 %idxprom, i32 1, !dbg !183
  store i8 %conv71, i8* %OnMove, align 1, !dbg !183, !tbaa !115
  %conv74 = trunc i32 %threat to i8, !dbg !184
  %14 = load %struct.TType** @DP_TTable, align 8, !dbg !184, !tbaa !114
  %Threat = getelementptr inbounds %struct.TType* %14, i64 %idxprom, i32 2, !dbg !184
  store i8 %conv74, i8* %Threat, align 1, !dbg !184, !tbaa !115
  br label %if.end143, !dbg !185

if.else77:                                        ; preds = %land.lhs.true22, %land.lhs.true19, %lor.lhs.false16, %lor.lhs.false
  %cmp78 = icmp sgt i32 %score, %alpha, !dbg !186
  br i1 %cmp78, label %if.else88, label %if.then80, !dbg !186

if.then80:                                        ; preds = %if.else77
  %15 = load %struct.TType** @AS_TTable, align 8, !dbg !188, !tbaa !114
  %Type83 = getelementptr inbounds %struct.TType* %15, i64 %idxprom, i32 3, !dbg !188
  store i8 1, i8* %Type83, align 1, !dbg !188, !tbaa !115
  %cmp84 = icmp slt i32 %score, -999500, !dbg !190
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !37), !dbg !190
  %.score196 = select i1 %cmp84, i32 -999500, i32 %score, !dbg !190
  br label %if.end115, !dbg !190

if.else88:                                        ; preds = %if.else77
  %cmp89 = icmp slt i32 %score, %beta, !dbg !191
  %16 = load %struct.TType** @AS_TTable, align 8, !dbg !192, !tbaa !114
  %Type94 = getelementptr inbounds %struct.TType* %16, i64 %idxprom, i32 3, !dbg !192
  br i1 %cmp89, label %if.else99, label %if.then91, !dbg !191

if.then91:                                        ; preds = %if.else88
  store i8 2, i8* %Type94, align 1, !dbg !192, !tbaa !115
  %cmp95 = icmp sgt i32 %score, 999500, !dbg !194
  tail call void @llvm.dbg.value(metadata !171, i64 0, metadata !37), !dbg !194
  %.score197 = select i1 %cmp95, i32 999500, i32 %score, !dbg !194
  br label %if.end115, !dbg !194

if.else99:                                        ; preds = %if.else88
  store i8 3, i8* %Type94, align 1, !dbg !195, !tbaa !115
  %cmp103 = icmp sgt i32 %score, 999500, !dbg !197
  br i1 %cmp103, label %if.then105, label %if.else107, !dbg !197

if.then105:                                       ; preds = %if.else99
  %17 = load i32* @ply, align 4, !dbg !198, !tbaa !117
  %add106 = add nsw i32 %17, %score, !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32 %add106}, i64 0, metadata !37), !dbg !198
  br label %if.end115, !dbg !198

if.else107:                                       ; preds = %if.else99
  %cmp108 = icmp slt i32 %score, -999500, !dbg !199
  br i1 %cmp108, label %if.then110, label %if.end115, !dbg !199

if.then110:                                       ; preds = %if.else107
  %18 = load i32* @ply, align 4, !dbg !200, !tbaa !117
  %sub111 = sub nsw i32 %score, %18, !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %sub111}, i64 0, metadata !37), !dbg !200
  br label %if.end115, !dbg !200

if.end115:                                        ; preds = %if.then91, %if.then80, %if.else107, %if.then110, %if.then105
  %score.addr.1 = phi i32 [ %add106, %if.then105 ], [ %sub111, %if.then110 ], [ %score, %if.else107 ], [ %.score196, %if.then80 ], [ %.score197, %if.then91 ]
  %19 = load i32* @hash, align 4, !dbg !201, !tbaa !117
  %20 = load %struct.TType** @AS_TTable, align 8, !dbg !201, !tbaa !114
  %HashKey118 = getelementptr inbounds %struct.TType* %20, i64 %idxprom, i32 5, !dbg !201
  store i32 %19, i32* %HashKey118, align 4, !dbg !201, !tbaa !117
  %21 = load i32* @hold_hash, align 4, !dbg !202, !tbaa !117
  %Hold_hash121 = getelementptr inbounds %struct.TType* %20, i64 %idxprom, i32 6, !dbg !202
  store i32 %21, i32* %Hold_hash121, align 4, !dbg !202, !tbaa !117
  %conv122 = trunc i32 %depth to i8, !dbg !203
  %Depth125 = getelementptr inbounds %struct.TType* %20, i64 %idxprom, i32 0, !dbg !203
  store i8 %conv122, i8* %Depth125, align 1, !dbg !203, !tbaa !115
  %conv126 = trunc i32 %best to i16, !dbg !204
  %22 = load %struct.TType** @AS_TTable, align 8, !dbg !204, !tbaa !114
  %Bestmove129 = getelementptr inbounds %struct.TType* %22, i64 %idxprom, i32 4, !dbg !204
  store i16 %conv126, i16* %Bestmove129, align 2, !dbg !204, !tbaa !153
  %Bound132 = getelementptr inbounds %struct.TType* %22, i64 %idxprom, i32 7, !dbg !205
  store i32 %score.addr.1, i32* %Bound132, align 4, !dbg !205, !tbaa !117
  %23 = load i32* @white_to_move, align 4, !dbg !206, !tbaa !117
  %not.tobool133 = icmp eq i32 %23, 0, !dbg !206
  %conv135 = zext i1 %not.tobool133 to i8, !dbg !206
  %OnMove138 = getelementptr inbounds %struct.TType* %22, i64 %idxprom, i32 1, !dbg !206
  store i8 %conv135, i8* %OnMove138, align 1, !dbg !206, !tbaa !115
  %conv139 = trunc i32 %threat to i8, !dbg !207
  %24 = load %struct.TType** @AS_TTable, align 8, !dbg !207, !tbaa !114
  %Threat142 = getelementptr inbounds %struct.TType* %24, i64 %idxprom, i32 2, !dbg !207
  store i8 %conv139, i8* %Threat142, align 1, !dbg !207, !tbaa !115
  br label %if.end143

if.end143:                                        ; preds = %if.end115, %if.end56
  ret void, !dbg !208
}

; Function Attrs: nounwind optsize uwtable
define void @LearnStoreTT(i32 %score, i32 %nhash, i32 %hhash, i32 %tomove, i32 %best, i32 %depth) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !48), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %nhash}, i64 0, metadata !49), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %hhash}, i64 0, metadata !50), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %tomove}, i64 0, metadata !51), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %best}, i64 0, metadata !52), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !53), !dbg !209
  %0 = load i32* @TTSize, align 4, !dbg !210, !tbaa !117
  %rem = urem i32 %nhash, %0, !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !54), !dbg !210
  %conv = trunc i32 %depth to i8, !dbg !211
  %idxprom = zext i32 %rem to i64, !dbg !211
  %1 = load %struct.TType** @AS_TTable, align 8, !dbg !211, !tbaa !114
  %Depth = getelementptr inbounds %struct.TType* %1, i64 %idxprom, i32 0, !dbg !211
  store i8 %conv, i8* %Depth, align 1, !dbg !211, !tbaa !115
  %2 = load i32* @Variant, align 4, !dbg !212, !tbaa !117
  %.off = add i32 %2, -3, !dbg !212
  %3 = icmp ugt i32 %.off, 1, !dbg !212
  %4 = load %struct.TType** @AS_TTable, align 8, !dbg !213, !tbaa !114
  %Type = getelementptr inbounds %struct.TType* %4, i64 %idxprom, i32 3, !dbg !213
  %. = select i1 %3, i8 3, i8 1, !dbg !215
  store i8 %., i8* %Type, align 1, !dbg !213, !tbaa !115
  %5 = load %struct.TType** @AS_TTable, align 8, !dbg !216, !tbaa !114
  %HashKey = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 5, !dbg !216
  store i32 %nhash, i32* %HashKey, align 4, !dbg !216, !tbaa !117
  %Hold_hash = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 6, !dbg !217
  store i32 %hhash, i32* %Hold_hash, align 4, !dbg !217, !tbaa !117
  %conv13 = trunc i32 %best to i16, !dbg !218
  %Bestmove = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 4, !dbg !218
  store i16 %conv13, i16* %Bestmove, align 2, !dbg !218, !tbaa !153
  %Bound = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 7, !dbg !219
  store i32 %score, i32* %Bound, align 4, !dbg !219, !tbaa !117
  %conv18 = trunc i32 %tomove to i8, !dbg !220
  %OnMove = getelementptr inbounds %struct.TType* %5, i64 %idxprom, i32 1, !dbg !220
  store i8 %conv18, i8* %OnMove, align 1, !dbg !220, !tbaa !115
  %6 = load %struct.TType** @AS_TTable, align 8, !dbg !221, !tbaa !114
  %Threat = getelementptr inbounds %struct.TType* %6, i64 %idxprom, i32 2, !dbg !221
  store i8 0, i8* %Threat, align 1, !dbg !221, !tbaa !115
  ret void, !dbg !222
}

; Function Attrs: nounwind optsize uwtable
define i32 @ProbeTT(i32* nocapture %score, i32 %beta, i32* nocapture %best, i32* nocapture %threat, i32* nocapture %donull, i32 %depth) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !60), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !61), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !62), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32* %threat}, i64 0, metadata !63), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32* %donull}, i64 0, metadata !64), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %depth}, i64 0, metadata !65), !dbg !223
  store i32 1, i32* %donull, align 4, !dbg !224, !tbaa !117
  %0 = load i32* @TTProbes, align 4, !dbg !225, !tbaa !117
  %inc = add i32 %0, 1, !dbg !225
  store i32 %inc, i32* @TTProbes, align 4, !dbg !225, !tbaa !117
  %1 = load i32* @hash, align 4, !dbg !226, !tbaa !117
  %2 = load i32* @TTSize, align 4, !dbg !226, !tbaa !117
  %rem = urem i32 %1, %2, !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !66), !dbg !226
  %idxprom = zext i32 %rem to i64, !dbg !227
  %3 = load %struct.TType** @DP_TTable, align 8, !dbg !227, !tbaa !114
  %HashKey = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 5, !dbg !227
  %4 = load i32* %HashKey, align 4, !dbg !227, !tbaa !117
  %cmp = icmp eq i32 %4, %1, !dbg !227
  br i1 %cmp, label %land.lhs.true, label %if.else75, !dbg !227

land.lhs.true:                                    ; preds = %entry
  %Hold_hash = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 6, !dbg !227
  %5 = load i32* %Hold_hash, align 4, !dbg !227, !tbaa !117
  %6 = load i32* @hold_hash, align 4, !dbg !227, !tbaa !117
  %cmp3 = icmp eq i32 %5, %6, !dbg !227
  br i1 %cmp3, label %land.lhs.true4, label %if.else75, !dbg !227

land.lhs.true4:                                   ; preds = %land.lhs.true
  %OnMove = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 1, !dbg !227
  %7 = load i8* %OnMove, align 1, !dbg !227, !tbaa !115
  %conv = sext i8 %7 to i32, !dbg !227
  %8 = load i32* @white_to_move, align 4, !dbg !227, !tbaa !117
  %not.tobool = icmp eq i32 %8, 0, !dbg !227
  %conv8 = zext i1 %not.tobool to i32, !dbg !227
  %cmp9 = icmp eq i32 %conv, %conv8, !dbg !227
  br i1 %cmp9, label %if.then, label %if.else75, !dbg !227

if.then:                                          ; preds = %land.lhs.true4
  %9 = load i32* @TTHits, align 4, !dbg !228, !tbaa !117
  %inc11 = add i32 %9, 1, !dbg !228
  store i32 %inc11, i32* @TTHits, align 4, !dbg !228, !tbaa !117
  %Type = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 3, !dbg !230
  %10 = load i8* %Type, align 1, !dbg !230, !tbaa !115
  %cmp15 = icmp eq i8 %10, 1, !dbg !230
  br i1 %cmp15, label %land.lhs.true17, label %if.then.if.end_crit_edge, !dbg !230

if.then.if.end_crit_edge:                         ; preds = %if.then
  %Depth38.pre = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 0, !dbg !231
  br label %if.end, !dbg !230

land.lhs.true17:                                  ; preds = %if.then
  %sub18 = add nsw i32 %depth, -3, !dbg !230
  %Depth = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 0, !dbg !230
  %11 = load i8* %Depth, align 1, !dbg !230, !tbaa !115
  %conv21 = sext i8 %11 to i32, !dbg !230
  %cmp22 = icmp sgt i32 %sub18, %conv21, !dbg !230
  br i1 %cmp22, label %if.end, label %land.lhs.true24, !dbg !230

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %Bound = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 7, !dbg !230
  %12 = load i32* %Bound, align 4, !dbg !230, !tbaa !117
  %cmp27 = icmp slt i32 %12, %beta, !dbg !230
  br i1 %cmp27, label %if.then29, label %if.end, !dbg !230

if.then29:                                        ; preds = %land.lhs.true24
  store i32 0, i32* %donull, align 4, !dbg !232, !tbaa !117
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then.if.end_crit_edge, %land.lhs.true17, %if.then29, %land.lhs.true24
  %Depth38.pre-phi = phi i8* [ %Depth38.pre, %if.then.if.end_crit_edge ], [ %Depth, %land.lhs.true17 ], [ %Depth, %if.then29 ], [ %Depth, %land.lhs.true24 ], !dbg !231
  %Threat = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 2, !dbg !233
  %13 = load i8* %Threat, align 1, !dbg !233, !tbaa !115
  %not.tobool32 = icmp ne i8 %13, 0, !dbg !233
  %inc34 = zext i1 %not.tobool32 to i32, !dbg !233
  %depth.inc34 = add nsw i32 %inc34, %depth, !dbg !233
  %14 = load i8* %Depth38.pre-phi, align 1, !dbg !231, !tbaa !115
  %conv39 = sext i8 %14 to i32, !dbg !231
  %cmp40 = icmp slt i32 %conv39, %depth.inc34, !dbg !231
  br i1 %cmp40, label %if.else66, label %if.then42, !dbg !231

if.then42:                                        ; preds = %if.end
  %Bound45 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 7, !dbg !234
  %15 = load i32* %Bound45, align 4, !dbg !234, !tbaa !117
  store i32 %15, i32* %score, align 4, !dbg !234, !tbaa !117
  %cmp46 = icmp sgt i32 %15, 999500, !dbg !236
  br i1 %cmp46, label %if.then48, label %if.else, !dbg !236

if.then48:                                        ; preds = %if.then42
  %16 = load i32* @ply, align 4, !dbg !237, !tbaa !117
  %sub49 = sub nsw i32 %15, %16, !dbg !237
  store i32 %sub49, i32* %score, align 4, !dbg !237, !tbaa !117
  br label %if.end54, !dbg !237

if.else:                                          ; preds = %if.then42
  %cmp50 = icmp slt i32 %15, -999500, !dbg !238
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !238

if.then52:                                        ; preds = %if.else
  %17 = load i32* @ply, align 4, !dbg !239, !tbaa !117
  %add = add nsw i32 %17, %15, !dbg !239
  store i32 %add, i32* %score, align 4, !dbg !239, !tbaa !117
  br label %if.end54, !dbg !239

if.end54:                                         ; preds = %if.else, %if.then52, %if.then48
  %Bestmove = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 4, !dbg !240
  %18 = load i16* %Bestmove, align 2, !dbg !240, !tbaa !153
  %conv57 = zext i16 %18 to i32, !dbg !240
  store i32 %conv57, i32* %best, align 4, !dbg !240, !tbaa !117
  %19 = load i8* %Threat, align 1, !dbg !241, !tbaa !115
  %conv61 = sext i8 %19 to i32, !dbg !241
  store i32 %conv61, i32* %threat, align 4, !dbg !241, !tbaa !117
  %20 = load i8* %Type, align 1, !dbg !242, !tbaa !115
  %conv65 = sext i8 %20 to i32, !dbg !242
  br label %return, !dbg !242

if.else66:                                        ; preds = %if.end
  %Bestmove69 = getelementptr inbounds %struct.TType* %3, i64 %idxprom, i32 4, !dbg !243
  %21 = load i16* %Bestmove69, align 2, !dbg !243, !tbaa !153
  %conv70 = zext i16 %21 to i32, !dbg !243
  store i32 %conv70, i32* %best, align 4, !dbg !243, !tbaa !117
  %22 = load i8* %Threat, align 1, !dbg !245, !tbaa !115
  %conv74 = sext i8 %22 to i32, !dbg !245
  store i32 %conv74, i32* %threat, align 4, !dbg !245, !tbaa !117
  br label %return, !dbg !246

if.else75:                                        ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %23 = load %struct.TType** @AS_TTable, align 8, !dbg !247, !tbaa !114
  %HashKey78 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 5, !dbg !247
  %24 = load i32* %HashKey78, align 4, !dbg !247, !tbaa !117
  %cmp79 = icmp eq i32 %24, %1, !dbg !247
  br i1 %cmp79, label %land.lhs.true81, label %return, !dbg !247

land.lhs.true81:                                  ; preds = %if.else75
  %Hold_hash84 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 6, !dbg !247
  %25 = load i32* %Hold_hash84, align 4, !dbg !247, !tbaa !117
  %26 = load i32* @hold_hash, align 4, !dbg !247, !tbaa !117
  %cmp85 = icmp eq i32 %25, %26, !dbg !247
  br i1 %cmp85, label %land.lhs.true87, label %return, !dbg !247

land.lhs.true87:                                  ; preds = %land.lhs.true81
  %OnMove90 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 1, !dbg !247
  %27 = load i8* %OnMove90, align 1, !dbg !247, !tbaa !115
  %conv91 = sext i8 %27 to i32, !dbg !247
  %28 = load i32* @white_to_move, align 4, !dbg !247, !tbaa !117
  %not.tobool92 = icmp eq i32 %28, 0, !dbg !247
  %conv95 = zext i1 %not.tobool92 to i32, !dbg !247
  %cmp96 = icmp eq i32 %conv91, %conv95, !dbg !247
  br i1 %cmp96, label %if.then98, label %return, !dbg !247

if.then98:                                        ; preds = %land.lhs.true87
  %29 = load i32* @TTHits, align 4, !dbg !248, !tbaa !117
  %inc99 = add i32 %29, 1, !dbg !248
  store i32 %inc99, i32* @TTHits, align 4, !dbg !248, !tbaa !117
  %Type102 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 3, !dbg !250
  %30 = load i8* %Type102, align 1, !dbg !250, !tbaa !115
  %cmp104 = icmp eq i8 %30, 1, !dbg !250
  br i1 %cmp104, label %land.lhs.true106, label %if.then98.if.end122_crit_edge, !dbg !250

if.then98.if.end122_crit_edge:                    ; preds = %if.then98
  %Depth132.pre = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 0, !dbg !251
  br label %if.end122, !dbg !250

land.lhs.true106:                                 ; preds = %if.then98
  %sub108 = add nsw i32 %depth, -3, !dbg !250
  %Depth111 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 0, !dbg !250
  %31 = load i8* %Depth111, align 1, !dbg !250, !tbaa !115
  %conv112 = sext i8 %31 to i32, !dbg !250
  %cmp113 = icmp sgt i32 %sub108, %conv112, !dbg !250
  br i1 %cmp113, label %if.end122, label %land.lhs.true115, !dbg !250

land.lhs.true115:                                 ; preds = %land.lhs.true106
  %Bound118 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 7, !dbg !250
  %32 = load i32* %Bound118, align 4, !dbg !250, !tbaa !117
  %cmp119 = icmp slt i32 %32, %beta, !dbg !250
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !250

if.then121:                                       ; preds = %land.lhs.true115
  store i32 0, i32* %donull, align 4, !dbg !252, !tbaa !117
  br label %if.end122, !dbg !252

if.end122:                                        ; preds = %if.then98.if.end122_crit_edge, %land.lhs.true106, %if.then121, %land.lhs.true115
  %Depth132.pre-phi = phi i8* [ %Depth132.pre, %if.then98.if.end122_crit_edge ], [ %Depth111, %land.lhs.true106 ], [ %Depth111, %if.then121 ], [ %Depth111, %land.lhs.true115 ], !dbg !251
  %Threat125 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 2, !dbg !253
  %33 = load i8* %Threat125, align 1, !dbg !253, !tbaa !115
  %not.tobool126 = icmp ne i8 %33, 0, !dbg !253
  %inc128 = zext i1 %not.tobool126 to i32, !dbg !253
  %depth.inc128 = add nsw i32 %inc128, %depth, !dbg !253
  %34 = load i8* %Depth132.pre-phi, align 1, !dbg !251, !tbaa !115
  %conv133 = sext i8 %34 to i32, !dbg !251
  %cmp134 = icmp slt i32 %conv133, %depth.inc128, !dbg !251
  br i1 %cmp134, label %if.else163, label %if.then136, !dbg !251

if.then136:                                       ; preds = %if.end122
  %Bound139 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 7, !dbg !254
  %35 = load i32* %Bound139, align 4, !dbg !254, !tbaa !117
  store i32 %35, i32* %score, align 4, !dbg !254, !tbaa !117
  %cmp140 = icmp sgt i32 %35, 999500, !dbg !256
  br i1 %cmp140, label %if.then142, label %if.else144, !dbg !256

if.then142:                                       ; preds = %if.then136
  %36 = load i32* @ply, align 4, !dbg !257, !tbaa !117
  %sub143 = sub nsw i32 %35, %36, !dbg !257
  store i32 %sub143, i32* %score, align 4, !dbg !257, !tbaa !117
  br label %if.end150, !dbg !257

if.else144:                                       ; preds = %if.then136
  %cmp145 = icmp slt i32 %35, -999500, !dbg !258
  br i1 %cmp145, label %if.then147, label %if.end150, !dbg !258

if.then147:                                       ; preds = %if.else144
  %37 = load i32* @ply, align 4, !dbg !259, !tbaa !117
  %add148 = add nsw i32 %37, %35, !dbg !259
  store i32 %add148, i32* %score, align 4, !dbg !259, !tbaa !117
  br label %if.end150, !dbg !259

if.end150:                                        ; preds = %if.else144, %if.then147, %if.then142
  %Bestmove153 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 4, !dbg !260
  %38 = load i16* %Bestmove153, align 2, !dbg !260, !tbaa !153
  %conv154 = zext i16 %38 to i32, !dbg !260
  store i32 %conv154, i32* %best, align 4, !dbg !260, !tbaa !117
  %39 = load i8* %Threat125, align 1, !dbg !261, !tbaa !115
  %conv158 = sext i8 %39 to i32, !dbg !261
  store i32 %conv158, i32* %threat, align 4, !dbg !261, !tbaa !117
  %40 = load i8* %Type102, align 1, !dbg !262, !tbaa !115
  %conv162 = sext i8 %40 to i32, !dbg !262
  br label %return, !dbg !262

if.else163:                                       ; preds = %if.end122
  %Bestmove166 = getelementptr inbounds %struct.TType* %23, i64 %idxprom, i32 4, !dbg !263
  %41 = load i16* %Bestmove166, align 2, !dbg !263, !tbaa !153
  %conv167 = zext i16 %41 to i32, !dbg !263
  store i32 %conv167, i32* %best, align 4, !dbg !263, !tbaa !117
  %42 = load i8* %Threat125, align 1, !dbg !265, !tbaa !115
  %conv171 = sext i8 %42 to i32, !dbg !265
  store i32 %conv171, i32* %threat, align 4, !dbg !265, !tbaa !117
  br label %return, !dbg !266

return:                                           ; preds = %if.else75, %land.lhs.true81, %land.lhs.true87, %if.else163, %if.end150, %if.else66, %if.end54
  %retval.0 = phi i32 [ %conv65, %if.end54 ], [ 0, %if.else66 ], [ %conv162, %if.end150 ], [ 0, %if.else163 ], [ 4, %land.lhs.true87 ], [ 4, %land.lhs.true81 ], [ 4, %if.else75 ]
  ret i32 %retval.0, !dbg !267
}

; Function Attrs: nounwind optsize uwtable
define i32 @QProbeTT(i32* nocapture %score, i32* nocapture %best) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !71), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32* %best}, i64 0, metadata !72), !dbg !268
  %0 = load i32* @TTProbes, align 4, !dbg !269, !tbaa !117
  %inc = add i32 %0, 1, !dbg !269
  store i32 %inc, i32* @TTProbes, align 4, !dbg !269, !tbaa !117
  %1 = load i32* @hash, align 4, !dbg !270, !tbaa !117
  %2 = load i32* @TTSize, align 4, !dbg !270, !tbaa !117
  %rem = urem i32 %1, %2, !dbg !270
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !73), !dbg !270
  %idxprom = zext i32 %rem to i64, !dbg !271
  %3 = load %struct.QTType** @QS_TTable, align 8, !dbg !271, !tbaa !114
  %HashKey = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 3, !dbg !271
  %4 = load i32* %HashKey, align 4, !dbg !271, !tbaa !117
  %cmp = icmp eq i32 %4, %1, !dbg !271
  br i1 %cmp, label %land.lhs.true, label %return, !dbg !271

land.lhs.true:                                    ; preds = %entry
  %Hold_hash = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 4, !dbg !271
  %5 = load i32* %Hold_hash, align 4, !dbg !271, !tbaa !117
  %6 = load i32* @hold_hash, align 4, !dbg !271, !tbaa !117
  %cmp3 = icmp eq i32 %5, %6, !dbg !271
  br i1 %cmp3, label %land.lhs.true4, label %return, !dbg !271

land.lhs.true4:                                   ; preds = %land.lhs.true
  %OnMove = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 0, !dbg !271
  %7 = load i8* %OnMove, align 1, !dbg !271, !tbaa !115
  %conv = sext i8 %7 to i32, !dbg !271
  %8 = load i32* @white_to_move, align 4, !dbg !271, !tbaa !117
  %not.tobool = icmp eq i32 %8, 0, !dbg !271
  %conv8 = zext i1 %not.tobool to i32, !dbg !271
  %cmp9 = icmp eq i32 %conv, %conv8, !dbg !271
  br i1 %cmp9, label %if.then, label %return, !dbg !271

if.then:                                          ; preds = %land.lhs.true4
  %9 = load i32* @TTHits, align 4, !dbg !272, !tbaa !117
  %inc11 = add i32 %9, 1, !dbg !272
  store i32 %inc11, i32* @TTHits, align 4, !dbg !272, !tbaa !117
  %Bound = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 5, !dbg !274
  %10 = load i32* %Bound, align 4, !dbg !274, !tbaa !117
  store i32 %10, i32* %score, align 4, !dbg !274, !tbaa !117
  %Bestmove = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 2, !dbg !275
  %11 = load i16* %Bestmove, align 2, !dbg !275, !tbaa !153
  %conv16 = zext i16 %11 to i32, !dbg !275
  store i32 %conv16, i32* %best, align 4, !dbg !275, !tbaa !117
  %Type = getelementptr inbounds %struct.QTType* %3, i64 %idxprom, i32 1, !dbg !276
  %12 = load i8* %Type, align 1, !dbg !276, !tbaa !115
  %conv19 = sext i8 %12 to i32, !dbg !276
  br label %return, !dbg !276

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true4, %if.then
  %retval.0 = phi i32 [ %conv19, %if.then ], [ 4, %land.lhs.true4 ], [ 4, %land.lhs.true ], [ 4, %entry ]
  ret i32 %retval.0, !dbg !277
}

; Function Attrs: nounwind optsize uwtable
define void @alloc_hash() #0 {
entry:
  %0 = load i32* @TTSize, align 4, !dbg !278, !tbaa !117
  %conv = sext i32 %0 to i64, !dbg !278
  %mul = mul i64 %conv, 20, !dbg !278
  %call = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !278
  %1 = bitcast i8* %call to %struct.TType*, !dbg !278
  store %struct.TType* %1, %struct.TType** @AS_TTable, align 8, !dbg !278, !tbaa !114
  %call3 = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !279
  %2 = bitcast i8* %call3 to %struct.TType*, !dbg !279
  store %struct.TType* %2, %struct.TType** @DP_TTable, align 8, !dbg !279, !tbaa !114
  %mul5 = shl nsw i64 %conv, 4, !dbg !280
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #6, !dbg !280
  %3 = bitcast i8* %call6 to %struct.QTType*, !dbg !280
  store %struct.QTType* %3, %struct.QTType** @QS_TTable, align 8, !dbg !280, !tbaa !114
  %cmp = icmp eq i8* %call, null, !dbg !281
  %cmp8 = icmp eq i8* %call3, null, !dbg !281
  %or.cond = or i1 %cmp, %cmp8, !dbg !281
  %cmp11 = icmp eq i8* %call6, null, !dbg !281
  %or.cond14 = or i1 %or.cond, %cmp11, !dbg !281
  br i1 %or.cond14, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str, i64 0, i64 0)), !dbg !282
  tail call void @exit(i32 1) #7, !dbg !284
  unreachable, !dbg !284

if.end:                                           ; preds = %entry
  ret void, !dbg !285
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @free_hash() #0 {
entry:
  %0 = load %struct.TType** @AS_TTable, align 8, !dbg !286, !tbaa !114
  %1 = getelementptr inbounds %struct.TType* %0, i64 0, i32 0, !dbg !286
  tail call void @free(i8* %1) #6, !dbg !286
  %2 = load %struct.TType** @DP_TTable, align 8, !dbg !287, !tbaa !114
  %3 = getelementptr inbounds %struct.TType* %2, i64 0, i32 0, !dbg !287
  tail call void @free(i8* %3) #6, !dbg !287
  %4 = load %struct.QTType** @QS_TTable, align 8, !dbg !288, !tbaa !114
  %5 = getelementptr inbounds %struct.QTType* %4, i64 0, i32 0, !dbg !288
  tail call void @free(i8* %5) #6, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !76, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !14, metadata !15, metadata !20, metadata !23, metadata !33, metadata !44, metadata !55, metadata !67, metadata !74, metadata !75}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"clear_tt", metadata !"clear_tt", metadata !"", i32 51, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @clear_tt, null, null, metadata !8, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [clear_tt]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null}
!14 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"clear_dp_tt", metadata !"clear_dp_tt", metadata !"", i32 58, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @clear_dp_tt, null, null, metadata !8, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [clear_dp_tt]
!15 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"initialize_zobrist", metadata !"initialize_zobrist", metadata !"", i32 63, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @initialize_zobrist, null, null, metadata !16, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [initialize_zobrist]
!16 = metadata !{metadata !17, metadata !19}
!17 = metadata !{i32 786688, metadata !15, metadata !"p", metadata !11, i32 65, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 65]
!18 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!19 = metadata !{i32 786688, metadata !15, metadata !"q", metadata !11, i32 65, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 65]
!20 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"initialize_hash", metadata !"initialize_hash", metadata !"", i32 82, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @initialize_hash, null, null, metadata !21, i32 83} ; [ DW_TAG_subprogram ] [line 82] [def] [scope 83] [initialize_hash]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786688, metadata !20, metadata !"p", metadata !11, i32 84, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 84]
!23 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"QStoreTT", metadata !"QStoreTT", metadata !"", i32 99, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32)* @QStoreTT, null, null, metadata !26, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [QStoreTT]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !18, metadata !18, metadata !18, metadata !18}
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!27 = metadata !{i32 786689, metadata !23, metadata !"score", metadata !11, i32 16777315, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 99]
!28 = metadata !{i32 786689, metadata !23, metadata !"alpha", metadata !11, i32 33554531, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 99]
!29 = metadata !{i32 786689, metadata !23, metadata !"beta", metadata !11, i32 50331747, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 99]
!30 = metadata !{i32 786689, metadata !23, metadata !"best", metadata !11, i32 67108963, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 99]
!31 = metadata !{i32 786688, metadata !23, metadata !"ttindex", metadata !11, i32 101, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttindex] [line 101]
!32 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!33 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"StoreTT", metadata !"StoreTT", metadata !"", i32 123, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32)* @StoreTT, null, null, metadata !36, i32 124} ; [ DW_TAG_subprogram ] [line 123] [def] [scope 124] [StoreTT]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!37 = metadata !{i32 786689, metadata !33, metadata !"score", metadata !11, i32 16777339, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 123]
!38 = metadata !{i32 786689, metadata !33, metadata !"alpha", metadata !11, i32 33554555, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 123]
!39 = metadata !{i32 786689, metadata !33, metadata !"beta", metadata !11, i32 50331771, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 123]
!40 = metadata !{i32 786689, metadata !33, metadata !"best", metadata !11, i32 67108987, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 123]
!41 = metadata !{i32 786689, metadata !33, metadata !"threat", metadata !11, i32 83886203, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [threat] [line 123]
!42 = metadata !{i32 786689, metadata !33, metadata !"depth", metadata !11, i32 100663419, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 123]
!43 = metadata !{i32 786688, metadata !33, metadata !"ttindex", metadata !11, i32 125, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttindex] [line 125]
!44 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"LearnStoreTT", metadata !"LearnStoreTT", metadata !"", i32 205, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32)* @LearnStoreTT, null, null, metadata !47, i32 206} ; [ DW_TAG_subprogram ] [line 205] [def] [scope 206] [LearnStoreTT]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !18, metadata !32, metadata !32, metadata !18, metadata !18, metadata !18}
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!48 = metadata !{i32 786689, metadata !44, metadata !"score", metadata !11, i32 16777421, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 205]
!49 = metadata !{i32 786689, metadata !44, metadata !"nhash", metadata !11, i32 33554637, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nhash] [line 205]
!50 = metadata !{i32 786689, metadata !44, metadata !"hhash", metadata !11, i32 50331853, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hhash] [line 205]
!51 = metadata !{i32 786689, metadata !44, metadata !"tomove", metadata !11, i32 67109069, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tomove] [line 205]
!52 = metadata !{i32 786689, metadata !44, metadata !"best", metadata !11, i32 83886285, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 205]
!53 = metadata !{i32 786689, metadata !44, metadata !"depth", metadata !11, i32 100663501, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 205]
!54 = metadata !{i32 786688, metadata !44, metadata !"ttindex", metadata !11, i32 207, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttindex] [line 207]
!55 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"ProbeTT", metadata !"ProbeTT", metadata !"", i32 231, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32, i32*, i32*, i32*, i32)* @ProbeTT, null, null, metadata !59, i32 232} ; [ DW_TAG_subprogram ] [line 231] [def] [scope 232] [ProbeTT]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{metadata !18, metadata !58, metadata !18, metadata !58, metadata !58, metadata !58, metadata !18}
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!60 = metadata !{i32 786689, metadata !55, metadata !"score", metadata !11, i32 16777447, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 231]
!61 = metadata !{i32 786689, metadata !55, metadata !"beta", metadata !11, i32 33554663, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 231]
!62 = metadata !{i32 786689, metadata !55, metadata !"best", metadata !11, i32 50331879, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 231]
!63 = metadata !{i32 786689, metadata !55, metadata !"threat", metadata !11, i32 67109095, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [threat] [line 231]
!64 = metadata !{i32 786689, metadata !55, metadata !"donull", metadata !11, i32 83886311, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [donull] [line 231]
!65 = metadata !{i32 786689, metadata !55, metadata !"depth", metadata !11, i32 100663527, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [depth] [line 231]
!66 = metadata !{i32 786688, metadata !55, metadata !"ttindex", metadata !11, i32 234, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttindex] [line 234]
!67 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"QProbeTT", metadata !"QProbeTT", metadata !"", i32 317, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*)* @QProbeTT, null, null, metadata !70, i32 318} ; [ DW_TAG_subprogram ] [line 317] [def] [scope 318] [QProbeTT]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !18, metadata !58, metadata !58}
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 786689, metadata !67, metadata !"score", metadata !11, i32 16777533, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 317]
!72 = metadata !{i32 786689, metadata !67, metadata !"best", metadata !11, i32 33554749, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 317]
!73 = metadata !{i32 786688, metadata !67, metadata !"ttindex", metadata !11, i32 320, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttindex] [line 320]
!74 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"alloc_hash", metadata !"alloc_hash", metadata !"", i32 344, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @alloc_hash, null, null, metadata !8, i32 345} ; [ DW_TAG_subprogram ] [line 344] [def] [scope 345] [alloc_hash]
!75 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"free_hash", metadata !"free_hash", metadata !"", i32 364, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @free_hash, null, null, metadata !8, i32 365} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 365] [free_hash]
!76 = metadata !{metadata !77, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !101, metadata !102}
!77 = metadata !{i32 786484, i32 0, null, metadata !"zobrist", metadata !"zobrist", metadata !"", metadata !11, i32 15, metadata !78, i32 0, i32 1, [14 x [144 x i32]]* @zobrist, null} ; [ DW_TAG_variable ] [zobrist] [line 15] [def]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64512, i64 32, i32 0, i32 0, metadata !32, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64512, align 32, offset 0] [from unsigned int]
!79 = metadata !{metadata !80, metadata !81}
!80 = metadata !{i32 786465, i64 0, i64 14}       ; [ DW_TAG_subrange_type ] [0, 13]
!81 = metadata !{i32 786465, i64 0, i64 144}      ; [ DW_TAG_subrange_type ] [0, 143]
!82 = metadata !{i32 786484, i32 0, null, metadata !"hash", metadata !"hash", metadata !"", metadata !11, i32 17, metadata !32, i32 0, i32 1, i32* @hash, null} ; [ DW_TAG_variable ] [hash] [line 17] [def]
!83 = metadata !{i32 786484, i32 0, null, metadata !"TTProbes", metadata !"TTProbes", metadata !"", metadata !11, i32 19, metadata !32, i32 0, i32 1, i32* @TTProbes, null} ; [ DW_TAG_variable ] [TTProbes] [line 19] [def]
!84 = metadata !{i32 786484, i32 0, null, metadata !"TTHits", metadata !"TTHits", metadata !"", metadata !11, i32 20, metadata !32, i32 0, i32 1, i32* @TTHits, null} ; [ DW_TAG_variable ] [TTHits] [line 20] [def]
!85 = metadata !{i32 786484, i32 0, null, metadata !"TTStores", metadata !"TTStores", metadata !"", metadata !11, i32 21, metadata !32, i32 0, i32 1, i32* @TTStores, null} ; [ DW_TAG_variable ] [TTStores] [line 21] [def]
!86 = metadata !{i32 786484, i32 0, null, metadata !"DP_TTable", metadata !"DP_TTable", metadata !"", metadata !11, i32 47, metadata !87, i32 0, i32 1, %struct.TType** @DP_TTable, null} ; [ DW_TAG_variable ] [DP_TTable] [line 47] [def]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TType]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"TType", i32 34, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [TType] [line 34, size 0, align 0, offset 0] [from ]
!89 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 23, i64 160, i64 32, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 160, align 32, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !98, metadata !99, metadata !100}
!91 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"Depth", i32 25, i64 8, i64 8, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [Depth] [line 25, size 8, align 8, offset 0] [from char]
!92 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!93 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"OnMove", i32 26, i64 8, i64 8, i64 8, i32 0, metadata !92} ; [ DW_TAG_member ] [OnMove] [line 26, size 8, align 8, offset 8] [from char]
!94 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"Threat", i32 27, i64 8, i64 8, i64 16, i32 0, metadata !92} ; [ DW_TAG_member ] [Threat] [line 27, size 8, align 8, offset 16] [from char]
!95 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"Type", i32 28, i64 8, i64 8, i64 24, i32 0, metadata !92} ; [ DW_TAG_member ] [Type] [line 28, size 8, align 8, offset 24] [from char]
!96 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"Bestmove", i32 29, i64 16, i64 16, i64 32, i32 0, metadata !97} ; [ DW_TAG_member ] [Bestmove] [line 29, size 16, align 16, offset 32] [from unsigned short]
!97 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"HashKey", i32 30, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [HashKey] [line 30, size 32, align 32, offset 64] [from unsigned int]
!99 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"Hold_hash", i32 31, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [Hold_hash] [line 31, size 32, align 32, offset 96] [from unsigned int]
!100 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"Bound", i32 32, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [Bound] [line 32, size 32, align 32, offset 128] [from int]
!101 = metadata !{i32 786484, i32 0, null, metadata !"AS_TTable", metadata !"AS_TTable", metadata !"", metadata !11, i32 48, metadata !87, i32 0, i32 1, %struct.TType** @AS_TTable, null} ; [ DW_TAG_variable ] [AS_TTable] [line 48] [def]
!102 = metadata !{i32 786484, i32 0, null, metadata !"QS_TTable", metadata !"QS_TTable", metadata !"", metadata !11, i32 49, metadata !103, i32 0, i32 1, %struct.QTType** @QS_TTable, null} ; [ DW_TAG_variable ] [QS_TTable] [line 49] [def]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from QTType]
!104 = metadata !{i32 786454, metadata !1, null, metadata !"QTType", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [QTType] [line 45, size 0, align 0, offset 0] [from ]
!105 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 36, i64 128, i64 32, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 128, align 32, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!107 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"OnMove", i32 38, i64 8, i64 8, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [OnMove] [line 38, size 8, align 8, offset 0] [from char]
!108 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"Type", i32 39, i64 8, i64 8, i64 8, i32 0, metadata !92} ; [ DW_TAG_member ] [Type] [line 39, size 8, align 8, offset 8] [from char]
!109 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"Bestmove", i32 40, i64 16, i64 16, i64 16, i32 0, metadata !97} ; [ DW_TAG_member ] [Bestmove] [line 40, size 16, align 16, offset 16] [from unsigned short]
!110 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"HashKey", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [HashKey] [line 41, size 32, align 32, offset 32] [from unsigned int]
!111 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"Hold_hash", i32 42, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [Hold_hash] [line 42, size 32, align 32, offset 64] [from unsigned int]
!112 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"Bound", i32 43, i64 32, i64 32, i64 96, i32 0, metadata !18} ; [ DW_TAG_member ] [Bound] [line 43, size 32, align 32, offset 96] [from int]
!113 = metadata !{i32 53, i32 0, metadata !10, null}
!114 = metadata !{metadata !"any pointer", metadata !115}
!115 = metadata !{metadata !"omnipotent char", metadata !116}
!116 = metadata !{metadata !"Simple C/C++ TBAA"}
!117 = metadata !{metadata !"int", metadata !115}
!118 = metadata !{i32 54, i32 0, metadata !10, null}
!119 = metadata !{i32 55, i32 0, metadata !10, null}
!120 = metadata !{i32 56, i32 0, metadata !10, null}
!121 = metadata !{i32 60, i32 0, metadata !14, null}
!122 = metadata !{i32 61, i32 0, metadata !14, null}
!123 = metadata !{i32 67, i32 0, metadata !15, null}
!124 = metadata !{i32 69, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !15, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!126 = metadata !{i32 71, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!128 = metadata !{i32 786443, metadata !1, metadata !125, i32 70, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!129 = metadata !{i32 73, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !127, i32 72, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!131 = metadata !{i32 78, i32 0, metadata !15, null}
!132 = metadata !{i32 79, i32 0, metadata !15, null}
!133 = metadata !{i32 80, i32 0, metadata !15, null}
!134 = metadata !{i32 86, i32 0, metadata !20, null}
!135 = metadata !{i32 88, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !20, i32 88, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!137 = metadata !{i32 90, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !136, i32 89, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!139 = metadata !{i32 91, i32 0, metadata !138, null}
!140 = metadata !{i32 94, i32 0, metadata !20, null}
!141 = metadata !{i32 97, i32 0, metadata !20, null}
!142 = metadata !{i32 99, i32 0, metadata !23, null}
!143 = metadata !{i32 103, i32 0, metadata !23, null}
!144 = metadata !{i32 105, i32 0, metadata !23, null}
!145 = metadata !{i32 107, i32 0, metadata !23, null}
!146 = metadata !{i32 108, i32 0, metadata !23, null}
!147 = metadata !{i32 109, i32 0, metadata !23, null}
!148 = metadata !{i32 110, i32 0, metadata !23, null}
!149 = metadata !{i32 112, i32 0, metadata !23, null}
!150 = metadata !{i32 114, i32 0, metadata !23, null}
!151 = metadata !{i32 115, i32 0, metadata !23, null}
!152 = metadata !{i32 116, i32 0, metadata !23, null}
!153 = metadata !{metadata !"short", metadata !115}
!154 = metadata !{i32 117, i32 0, metadata !23, null}
!155 = metadata !{i32 118, i32 0, metadata !23, null}
!156 = metadata !{i32 120, i32 0, metadata !23, null}
!157 = metadata !{i32 123, i32 0, metadata !33, null}
!158 = metadata !{i32 127, i32 0, metadata !33, null}
!159 = metadata !{i32 129, i32 0, metadata !33, null}
!160 = metadata !{i32 132, i32 0, metadata !33, null}
!161 = metadata !{i32 141, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !33, i32 140, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!163 = metadata !{i32 143, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !162, i32 142, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!165 = metadata !{i32 144, i32 0, metadata !164, null}
!166 = metadata !{i32 -999500}
!167 = metadata !{i32 146, i32 0, metadata !162, null}
!168 = metadata !{i32 148, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !162, i32 147, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!170 = metadata !{i32 149, i32 0, metadata !169, null}
!171 = metadata !{i32 999500}
!172 = metadata !{i32 153, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !162, i32 152, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!174 = metadata !{i32 156, i32 0, metadata !173, null}
!175 = metadata !{i32 157, i32 0, metadata !173, null}
!176 = metadata !{i32 158, i32 0, metadata !173, null}
!177 = metadata !{i32 159, i32 0, metadata !173, null}
!178 = metadata !{i32 162, i32 0, metadata !162, null}
!179 = metadata !{i32 163, i32 0, metadata !162, null}
!180 = metadata !{i32 164, i32 0, metadata !162, null}
!181 = metadata !{i32 165, i32 0, metadata !162, null}
!182 = metadata !{i32 166, i32 0, metadata !162, null}
!183 = metadata !{i32 167, i32 0, metadata !162, null}
!184 = metadata !{i32 168, i32 0, metadata !162, null}
!185 = metadata !{i32 169, i32 0, metadata !162, null}
!186 = metadata !{i32 172, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !33, i32 171, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!188 = metadata !{i32 174, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !187, i32 173, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!190 = metadata !{i32 175, i32 0, metadata !189, null}
!191 = metadata !{i32 177, i32 0, metadata !187, null}
!192 = metadata !{i32 179, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !187, i32 178, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!194 = metadata !{i32 180, i32 0, metadata !193, null}
!195 = metadata !{i32 184, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !187, i32 183, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!197 = metadata !{i32 187, i32 0, metadata !196, null}
!198 = metadata !{i32 188, i32 0, metadata !196, null}
!199 = metadata !{i32 189, i32 0, metadata !196, null}
!200 = metadata !{i32 190, i32 0, metadata !196, null}
!201 = metadata !{i32 193, i32 0, metadata !187, null}
!202 = metadata !{i32 194, i32 0, metadata !187, null}
!203 = metadata !{i32 195, i32 0, metadata !187, null}
!204 = metadata !{i32 196, i32 0, metadata !187, null}
!205 = metadata !{i32 197, i32 0, metadata !187, null}
!206 = metadata !{i32 198, i32 0, metadata !187, null}
!207 = metadata !{i32 199, i32 0, metadata !187, null}
!208 = metadata !{i32 202, i32 0, metadata !33, null}
!209 = metadata !{i32 205, i32 0, metadata !44, null}
!210 = metadata !{i32 209, i32 0, metadata !44, null}
!211 = metadata !{i32 211, i32 0, metadata !44, null}
!212 = metadata !{i32 213, i32 0, metadata !44, null}
!213 = metadata !{i32 215, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !44, i32 214, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!215 = metadata !{i32 216, i32 0, metadata !214, null}
!216 = metadata !{i32 222, i32 0, metadata !44, null}
!217 = metadata !{i32 223, i32 0, metadata !44, null}
!218 = metadata !{i32 224, i32 0, metadata !44, null}
!219 = metadata !{i32 225, i32 0, metadata !44, null}
!220 = metadata !{i32 226, i32 0, metadata !44, null}
!221 = metadata !{i32 227, i32 0, metadata !44, null}
!222 = metadata !{i32 229, i32 0, metadata !44, null}
!223 = metadata !{i32 231, i32 0, metadata !55, null}
!224 = metadata !{i32 236, i32 0, metadata !55, null}
!225 = metadata !{i32 238, i32 0, metadata !55, null}
!226 = metadata !{i32 240, i32 0, metadata !55, null}
!227 = metadata !{i32 242, i32 0, metadata !55, null}
!228 = metadata !{i32 246, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !55, i32 245, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!230 = metadata !{i32 248, i32 0, metadata !229, null}
!231 = metadata !{i32 255, i32 0, metadata !229, null}
!232 = metadata !{i32 251, i32 0, metadata !229, null}
!233 = metadata !{i32 253, i32 0, metadata !229, null}
!234 = metadata !{i32 257, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !229, i32 256, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!236 = metadata !{i32 259, i32 0, metadata !235, null}
!237 = metadata !{i32 260, i32 0, metadata !235, null}
!238 = metadata !{i32 261, i32 0, metadata !235, null}
!239 = metadata !{i32 262, i32 0, metadata !235, null}
!240 = metadata !{i32 264, i32 0, metadata !235, null}
!241 = metadata !{i32 265, i32 0, metadata !235, null}
!242 = metadata !{i32 267, i32 0, metadata !235, null}
!243 = metadata !{i32 271, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !229, i32 270, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!245 = metadata !{i32 272, i32 0, metadata !244, null}
!246 = metadata !{i32 274, i32 0, metadata !244, null}
!247 = metadata !{i32 277, i32 0, metadata !55, null}
!248 = metadata !{i32 281, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !55, i32 280, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!250 = metadata !{i32 283, i32 0, metadata !249, null}
!251 = metadata !{i32 290, i32 0, metadata !249, null}
!252 = metadata !{i32 286, i32 0, metadata !249, null}
!253 = metadata !{i32 288, i32 0, metadata !249, null}
!254 = metadata !{i32 292, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !249, i32 291, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!256 = metadata !{i32 294, i32 0, metadata !255, null}
!257 = metadata !{i32 295, i32 0, metadata !255, null}
!258 = metadata !{i32 296, i32 0, metadata !255, null}
!259 = metadata !{i32 297, i32 0, metadata !255, null}
!260 = metadata !{i32 299, i32 0, metadata !255, null}
!261 = metadata !{i32 300, i32 0, metadata !255, null}
!262 = metadata !{i32 302, i32 0, metadata !255, null}
!263 = metadata !{i32 306, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !249, i32 305, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!265 = metadata !{i32 307, i32 0, metadata !264, null}
!266 = metadata !{i32 309, i32 0, metadata !264, null}
!267 = metadata !{i32 315, i32 0, metadata !55, null}
!268 = metadata !{i32 317, i32 0, metadata !67, null}
!269 = metadata !{i32 322, i32 0, metadata !67, null}
!270 = metadata !{i32 324, i32 0, metadata !67, null}
!271 = metadata !{i32 326, i32 0, metadata !67, null}
!272 = metadata !{i32 330, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !67, i32 329, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!274 = metadata !{i32 332, i32 0, metadata !273, null}
!275 = metadata !{i32 334, i32 0, metadata !273, null}
!276 = metadata !{i32 336, i32 0, metadata !273, null}
!277 = metadata !{i32 341, i32 0, metadata !67, null}
!278 = metadata !{i32 346, i32 0, metadata !74, null}
!279 = metadata !{i32 347, i32 0, metadata !74, null}
!280 = metadata !{i32 348, i32 0, metadata !74, null}
!281 = metadata !{i32 350, i32 0, metadata !74, null}
!282 = metadata !{i32 352, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !74, i32 351, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ttable.c]
!284 = metadata !{i32 353, i32 0, metadata !283, null}
!285 = metadata !{i32 361, i32 0, metadata !74, null}
!286 = metadata !{i32 366, i32 0, metadata !75, null}
!287 = metadata !{i32 367, i32 0, metadata !75, null}
!288 = metadata !{i32 368, i32 0, metadata !75, null}
!289 = metadata !{i32 369, i32 0, metadata !75, null}
