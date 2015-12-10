; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@holding = common global [2 x [16 x i32]] zeroinitializer, align 16
@hold_hash = common global i32 0, align 4
@white_hand_eval = common global i32 0, align 4
@black_hand_eval = common global i32 0, align 4
@num_holding = common global [2 x i32] zeroinitializer, align 4
@zobrist = external global [14 x [144 x i32]]
@Variant = external global i32
@userealholdings = common global i32 0, align 4
@realholdings = common global [255 x i8] zeroinitializer, align 16
@comp_color = external global i32
@SwitchColor.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 4, i32 3, i32 0, i32 0, i32 8, i32 7, i32 10, i32 9, i32 12, i32 11], align 16
@.str = private unnamed_addr constant [24 x i8] c"piece > 0 && piece < 13\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c\00", align 1
@__PRETTY_FUNCTION__.SwitchColor = private unnamed_addr constant [21 x i8] c"int SwitchColor(int)\00", align 1
@SwitchPromoted.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1], align 16
@__PRETTY_FUNCTION__.SwitchPromoted = private unnamed_addr constant [24 x i8] c"int SwitchPromoted(int)\00", align 1
@hand_value = external global [0 x i32]
@material = external global [14 x i32]
@Material = external global i32
@.str2 = private unnamed_addr constant [23 x i8] c"holding[who][what] > 0\00", align 1
@__PRETTY_FUNCTION__.removeHolding = private unnamed_addr constant [29 x i8] c"void removeHolding(int, int)\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"holding[who][what] < 20\00", align 1
@__PRETTY_FUNCTION__.DropremoveHolding = private unnamed_addr constant [33 x i8] c"void DropremoveHolding(int, int)\00", align 1
@.str4 = private unnamed_addr constant [36 x i8] c"WP: %d WR: %d WB: %d WN: %d WQ: %d\0A\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"BP: %d BR: %d BB: %d BN: %d BQ: %d\0A\00", align 1
@drop_piece = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @ProcessHoldings(i8* nocapture %str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !11), !dbg !74
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !14), !dbg !75
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false), !dbg !76
  store i32 -1056969216, i32* @hold_hash, align 4, !dbg !77, !tbaa !78
  store i32 0, i32* @white_hand_eval, align 4, !dbg !81, !tbaa !78
  store i32 0, i32* @black_hand_eval, align 4, !dbg !82, !tbaa !78
  tail call void @reset_ecache() #7, !dbg !83
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !84, !tbaa !78
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !85, !tbaa !78
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !12), !dbg !86
  br label %while.cond.preheader, !dbg !86

while.cond.preheader:                             ; preds = %entry, %for.inc
  %indvars.iv302 = phi i64 [ 0, %entry ], [ %indvars.iv.next303, %for.inc ]
  %i.0297 = phi i32 [ 0, %entry ], [ %i.2.lcssa, %for.inc ]
  %0 = sext i32 %i.0297 to i64
  %arrayidx.phi.trans.insert = getelementptr inbounds i8* %str, i64 %0
  %.pre = load i8* %arrayidx.phi.trans.insert, align 1, !dbg !88, !tbaa !79
  br label %while.cond, !dbg !88

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %1 = phi i8 [ %.pre, %while.cond.preheader ], [ %2, %while.body ]
  %indvars.iv = phi i64 [ %0, %while.cond.preheader ], [ %indvars.iv.next, %while.body ]
  %i.1 = phi i32 [ %i.0297, %while.cond.preheader ], [ %inc, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !90
  %inc = add nsw i32 %i.1, 1, !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !14), !dbg !88
  %cmp1 = icmp eq i8 %1, 91, !dbg !88
  br i1 %cmp1, label %while.cond8.loopexit, label %while.body, !dbg !88

while.body:                                       ; preds = %while.cond
  %arrayidx4 = getelementptr inbounds i8* %str, i64 %indvars.iv.next, !dbg !90
  %2 = load i8* %arrayidx4, align 1, !dbg !90, !tbaa !79
  %cmp6 = icmp eq i8 %2, 0, !dbg !90
  br i1 %cmp6, label %if.end250, label %while.cond, !dbg !90

while.cond8.loopexit:                             ; preds = %while.cond
  %idxprom9292 = sext i32 %inc to i64, !dbg !91
  %arrayidx10293 = getelementptr inbounds i8* %str, i64 %idxprom9292, !dbg !91
  %3 = load i8* %arrayidx10293, align 1, !dbg !91, !tbaa !79
  %cmp12294 = icmp eq i8 %3, 93, !dbg !91
  br i1 %cmp12294, label %for.inc, label %while.body14.lr.ph, !dbg !91

while.body14.lr.ph:                               ; preds = %while.cond8.loopexit
  %4 = trunc i64 %indvars.iv302 to i32, !dbg !92
  %cmp19 = icmp eq i32 %4, 0, !dbg !92
  %idxprom21 = select i1 %cmp19, i64 1, i64 2, !dbg !92
  %arrayidx24 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom21, !dbg !92
  %arrayidx27 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %indvars.iv302, !dbg !95
  %idxprom47 = select i1 %cmp19, i64 9, i64 10, !dbg !96
  %arrayidx50 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom47, !dbg !96
  %idxprom74 = select i1 %cmp19, i64 7, i64 8, !dbg !97
  %arrayidx77 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom74, !dbg !97
  %idxprom101 = select i1 %cmp19, i64 11, i64 12, !dbg !98
  %arrayidx104 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom101, !dbg !98
  %idxprom128 = select i1 %cmp19, i64 3, i64 4, !dbg !99
  %arrayidx131 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom128, !dbg !99
  br label %while.body14, !dbg !91

while.body14:                                     ; preds = %while.body14.lr.ph, %while.cond8.backedge
  %indvars.iv300 = phi i64 [ %idxprom9292, %while.body14.lr.ph ], [ %indvars.iv.next301, %while.cond8.backedge ]
  %5 = phi i8 [ %3, %while.body14.lr.ph ], [ %26, %while.cond8.backedge ]
  %i.2295 = phi i32 [ %inc, %while.body14.lr.ph ], [ %inc15, %while.cond8.backedge ]
  %conv11 = sext i8 %5 to i32, !dbg !91
  %indvars.iv.next301 = add i64 %indvars.iv300, 1, !dbg !91
  %inc15 = add nsw i32 %i.2295, 1, !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !14), !dbg !100
  switch i32 %conv11, label %if.end250 [
    i32 112, label %sw.bb
    i32 80, label %sw.bb
    i32 113, label %sw.bb43
    i32 81, label %sw.bb43
    i32 114, label %sw.bb70
    i32 82, label %sw.bb70
    i32 98, label %sw.bb97
    i32 66, label %sw.bb97
    i32 110, label %sw.bb124
    i32 78, label %sw.bb124
  ], !dbg !100

sw.bb:                                            ; preds = %while.body14, %while.body14
  %6 = load i32* %arrayidx24, align 4, !dbg !92, !tbaa !78
  %inc25 = add nsw i32 %6, 1, !dbg !92
  store i32 %inc25, i32* %arrayidx24, align 4, !dbg !92, !tbaa !78
  %7 = load i32* %arrayidx27, align 4, !dbg !95, !tbaa !78
  %inc28 = add nsw i32 %7, 1, !dbg !95
  store i32 %inc28, i32* %arrayidx27, align 4, !dbg !95, !tbaa !78
  %idxprom36 = sext i32 %inc25 to i64, !dbg !101
  %arrayidx42 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom21, i64 %idxprom36, !dbg !101
  %8 = load i32* %arrayidx42, align 4, !dbg !101, !tbaa !78
  %9 = load i32* @hold_hash, align 4, !dbg !101, !tbaa !78
  %xor = xor i32 %9, %8, !dbg !101
  store i32 %xor, i32* @hold_hash, align 4, !dbg !101, !tbaa !78
  br label %while.cond8.backedge, !dbg !102

sw.bb43:                                          ; preds = %while.body14, %while.body14
  %10 = load i32* %arrayidx50, align 4, !dbg !96, !tbaa !78
  %inc51 = add nsw i32 %10, 1, !dbg !96
  store i32 %inc51, i32* %arrayidx50, align 4, !dbg !96, !tbaa !78
  %11 = load i32* %arrayidx27, align 4, !dbg !103, !tbaa !78
  %inc54 = add nsw i32 %11, 1, !dbg !103
  store i32 %inc54, i32* %arrayidx27, align 4, !dbg !103, !tbaa !78
  %idxprom62 = sext i32 %inc51 to i64, !dbg !104
  %arrayidx68 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom47, i64 %idxprom62, !dbg !104
  %12 = load i32* %arrayidx68, align 4, !dbg !104, !tbaa !78
  %13 = load i32* @hold_hash, align 4, !dbg !104, !tbaa !78
  %xor69 = xor i32 %13, %12, !dbg !104
  store i32 %xor69, i32* @hold_hash, align 4, !dbg !104, !tbaa !78
  br label %while.cond8.backedge, !dbg !105

sw.bb70:                                          ; preds = %while.body14, %while.body14
  %14 = load i32* %arrayidx77, align 4, !dbg !97, !tbaa !78
  %inc78 = add nsw i32 %14, 1, !dbg !97
  store i32 %inc78, i32* %arrayidx77, align 4, !dbg !97, !tbaa !78
  %15 = load i32* %arrayidx27, align 4, !dbg !106, !tbaa !78
  %inc81 = add nsw i32 %15, 1, !dbg !106
  store i32 %inc81, i32* %arrayidx27, align 4, !dbg !106, !tbaa !78
  %idxprom89 = sext i32 %inc78 to i64, !dbg !107
  %arrayidx95 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom74, i64 %idxprom89, !dbg !107
  %16 = load i32* %arrayidx95, align 4, !dbg !107, !tbaa !78
  %17 = load i32* @hold_hash, align 4, !dbg !107, !tbaa !78
  %xor96 = xor i32 %17, %16, !dbg !107
  store i32 %xor96, i32* @hold_hash, align 4, !dbg !107, !tbaa !78
  br label %while.cond8.backedge, !dbg !108

sw.bb97:                                          ; preds = %while.body14, %while.body14
  %18 = load i32* %arrayidx104, align 4, !dbg !98, !tbaa !78
  %inc105 = add nsw i32 %18, 1, !dbg !98
  store i32 %inc105, i32* %arrayidx104, align 4, !dbg !98, !tbaa !78
  %19 = load i32* %arrayidx27, align 4, !dbg !109, !tbaa !78
  %inc108 = add nsw i32 %19, 1, !dbg !109
  store i32 %inc108, i32* %arrayidx27, align 4, !dbg !109, !tbaa !78
  %idxprom116 = sext i32 %inc105 to i64, !dbg !110
  %arrayidx122 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom101, i64 %idxprom116, !dbg !110
  %20 = load i32* %arrayidx122, align 4, !dbg !110, !tbaa !78
  %21 = load i32* @hold_hash, align 4, !dbg !110, !tbaa !78
  %xor123 = xor i32 %21, %20, !dbg !110
  store i32 %xor123, i32* @hold_hash, align 4, !dbg !110, !tbaa !78
  br label %while.cond8.backedge, !dbg !111

sw.bb124:                                         ; preds = %while.body14, %while.body14
  %22 = load i32* %arrayidx131, align 4, !dbg !99, !tbaa !78
  %inc132 = add nsw i32 %22, 1, !dbg !99
  store i32 %inc132, i32* %arrayidx131, align 4, !dbg !99, !tbaa !78
  %23 = load i32* %arrayidx27, align 4, !dbg !112, !tbaa !78
  %inc135 = add nsw i32 %23, 1, !dbg !112
  store i32 %inc135, i32* %arrayidx27, align 4, !dbg !112, !tbaa !78
  %idxprom143 = sext i32 %inc132 to i64, !dbg !113
  %arrayidx149 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom128, i64 %idxprom143, !dbg !113
  %24 = load i32* %arrayidx149, align 4, !dbg !113, !tbaa !78
  %25 = load i32* @hold_hash, align 4, !dbg !113, !tbaa !78
  %xor150 = xor i32 %25, %24, !dbg !113
  store i32 %xor150, i32* @hold_hash, align 4, !dbg !113, !tbaa !78
  br label %while.cond8.backedge, !dbg !114

while.cond8.backedge:                             ; preds = %sw.bb124, %sw.bb97, %sw.bb70, %sw.bb43, %sw.bb
  %arrayidx10 = getelementptr inbounds i8* %str, i64 %indvars.iv.next301, !dbg !91
  %26 = load i8* %arrayidx10, align 1, !dbg !91, !tbaa !79
  %cmp12 = icmp eq i8 %26, 93, !dbg !91
  br i1 %cmp12, label %for.inc, label %while.body14, !dbg !91

for.inc:                                          ; preds = %while.cond8.backedge, %while.cond8.loopexit
  %i.2.lcssa = phi i32 [ %inc, %while.cond8.loopexit ], [ %inc15, %while.cond8.backedge ]
  %indvars.iv.next303 = add i64 %indvars.iv302, 1, !dbg !86
  %27 = trunc i64 %indvars.iv.next303 to i32, !dbg !86
  %cmp = icmp slt i32 %27, 2, !dbg !86
  br i1 %cmp, label %while.cond.preheader, label %for.end, !dbg !86

for.end:                                          ; preds = %for.inc
  %28 = load i32* @Variant, align 4, !dbg !115, !tbaa !78
  %cmp153 = icmp ne i32 %28, 1, !dbg !115
  %29 = load i32* @userealholdings, align 4, !dbg !115, !tbaa !78
  %tobool = icmp ne i32 %29, 0, !dbg !115
  %or.cond = or i1 %cmp153, %tobool, !dbg !115
  br i1 %or.cond, label %if.end250, label %if.then155, !dbg !115

if.then155:                                       ; preds = %for.end
  %call = tail call i8* @strncpy(i8* getelementptr inbounds ([255 x i8]* @realholdings, i64 0, i64 0), i8* %str, i64 200) #7, !dbg !116
  %30 = load i32* @comp_color, align 4, !dbg !118, !tbaa !78
  %cmp156 = icmp eq i32 %30, 1, !dbg !118
  br i1 %cmp156, label %if.then158, label %if.else, !dbg !118

if.then158:                                       ; preds = %if.then155
  %31 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !dbg !119, !tbaa !78
  %cmp159 = icmp eq i32 %31, 0, !dbg !119
  br i1 %cmp159, label %if.then161, label %if.end167, !dbg !119

if.then161:                                       ; preds = %if.then158
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !dbg !121, !tbaa !78
  %32 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !123, !tbaa !78
  %inc163 = add nsw i32 %32, 1, !dbg !123
  store i32 %inc163, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !123, !tbaa !78
  %33 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 1), align 4, !dbg !124, !tbaa !78
  %34 = load i32* @hold_hash, align 4, !dbg !124, !tbaa !78
  %xor166 = xor i32 %34, %33, !dbg !124
  store i32 %xor166, i32* @hold_hash, align 4, !dbg !124, !tbaa !78
  br label %if.end167, !dbg !125

if.end167:                                        ; preds = %if.then161, %if.then158
  %35 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !dbg !126, !tbaa !78
  %cmp168 = icmp eq i32 %35, 0, !dbg !126
  br i1 %cmp168, label %if.then170, label %if.end176, !dbg !126

if.then170:                                       ; preds = %if.end167
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !dbg !127, !tbaa !78
  %36 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !129, !tbaa !78
  %inc172 = add nsw i32 %36, 1, !dbg !129
  store i32 %inc172, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !129, !tbaa !78
  %37 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 1), align 4, !dbg !130, !tbaa !78
  %38 = load i32* @hold_hash, align 4, !dbg !130, !tbaa !78
  %xor175 = xor i32 %38, %37, !dbg !130
  store i32 %xor175, i32* @hold_hash, align 4, !dbg !130, !tbaa !78
  br label %if.end176, !dbg !131

if.end176:                                        ; preds = %if.then170, %if.end167
  %39 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !dbg !132, !tbaa !78
  %cmp177 = icmp eq i32 %39, 0, !dbg !132
  br i1 %cmp177, label %if.then179, label %if.end185, !dbg !132

if.then179:                                       ; preds = %if.end176
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !dbg !133, !tbaa !78
  %40 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !135, !tbaa !78
  %inc181 = add nsw i32 %40, 1, !dbg !135
  store i32 %inc181, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !135, !tbaa !78
  %41 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !dbg !136, !tbaa !78
  %42 = load i32* @hold_hash, align 4, !dbg !136, !tbaa !78
  %xor184 = xor i32 %42, %41, !dbg !136
  store i32 %xor184, i32* @hold_hash, align 4, !dbg !136, !tbaa !78
  br label %if.end185, !dbg !137

if.end185:                                        ; preds = %if.then179, %if.end176
  %43 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !dbg !138, !tbaa !78
  %cmp186 = icmp eq i32 %43, 0, !dbg !138
  br i1 %cmp186, label %if.then188, label %if.end194, !dbg !138

if.then188:                                       ; preds = %if.end185
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !dbg !139, !tbaa !78
  %44 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !141, !tbaa !78
  %inc190 = add nsw i32 %44, 1, !dbg !141
  store i32 %inc190, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !141, !tbaa !78
  %45 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !dbg !142, !tbaa !78
  %46 = load i32* @hold_hash, align 4, !dbg !142, !tbaa !78
  %xor193 = xor i32 %46, %45, !dbg !142
  store i32 %xor193, i32* @hold_hash, align 4, !dbg !142, !tbaa !78
  br label %if.end194, !dbg !143

if.end194:                                        ; preds = %if.then188, %if.end185
  %47 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !dbg !144, !tbaa !78
  %cmp195 = icmp eq i32 %47, 0, !dbg !144
  br i1 %cmp195, label %if.then197, label %if.end250, !dbg !144

if.then197:                                       ; preds = %if.end194
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !dbg !145, !tbaa !78
  %48 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !147, !tbaa !78
  %inc199 = add nsw i32 %48, 1, !dbg !147
  store i32 %inc199, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !147, !tbaa !78
  %49 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !dbg !148, !tbaa !78
  %50 = load i32* @hold_hash, align 4, !dbg !148, !tbaa !78
  %xor202 = xor i32 %50, %49, !dbg !148
  store i32 %xor202, i32* @hold_hash, align 4, !dbg !148, !tbaa !78
  br label %if.end250, !dbg !149

if.else:                                          ; preds = %if.then155
  %51 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !150, !tbaa !78
  %cmp204 = icmp eq i32 %51, 0, !dbg !150
  br i1 %cmp204, label %if.then206, label %if.end212, !dbg !150

if.then206:                                       ; preds = %if.else
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !152, !tbaa !78
  %52 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !154, !tbaa !78
  %inc208 = add nsw i32 %52, 1, !dbg !154
  store i32 %inc208, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !154, !tbaa !78
  %53 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !155, !tbaa !78
  %54 = load i32* @hold_hash, align 4, !dbg !155, !tbaa !78
  %xor211 = xor i32 %54, %53, !dbg !155
  store i32 %xor211, i32* @hold_hash, align 4, !dbg !155, !tbaa !78
  br label %if.end212, !dbg !156

if.end212:                                        ; preds = %if.then206, %if.else
  %55 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !157, !tbaa !78
  %cmp213 = icmp eq i32 %55, 0, !dbg !157
  br i1 %cmp213, label %if.then215, label %if.end221, !dbg !157

if.then215:                                       ; preds = %if.end212
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !158, !tbaa !78
  %56 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !160, !tbaa !78
  %inc217 = add nsw i32 %56, 1, !dbg !160
  store i32 %inc217, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !160, !tbaa !78
  %57 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !161, !tbaa !78
  %58 = load i32* @hold_hash, align 4, !dbg !161, !tbaa !78
  %xor220 = xor i32 %58, %57, !dbg !161
  store i32 %xor220, i32* @hold_hash, align 4, !dbg !161, !tbaa !78
  br label %if.end221, !dbg !162

if.end221:                                        ; preds = %if.then215, %if.end212
  %59 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !163, !tbaa !78
  %cmp222 = icmp eq i32 %59, 0, !dbg !163
  br i1 %cmp222, label %if.then224, label %if.end230, !dbg !163

if.then224:                                       ; preds = %if.end221
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !164, !tbaa !78
  %60 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !166, !tbaa !78
  %inc226 = add nsw i32 %60, 1, !dbg !166
  store i32 %inc226, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !166, !tbaa !78
  %61 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !167, !tbaa !78
  %62 = load i32* @hold_hash, align 4, !dbg !167, !tbaa !78
  %xor229 = xor i32 %62, %61, !dbg !167
  store i32 %xor229, i32* @hold_hash, align 4, !dbg !167, !tbaa !78
  br label %if.end230, !dbg !168

if.end230:                                        ; preds = %if.then224, %if.end221
  %63 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !169, !tbaa !78
  %cmp231 = icmp eq i32 %63, 0, !dbg !169
  br i1 %cmp231, label %if.then233, label %if.end239, !dbg !169

if.then233:                                       ; preds = %if.end230
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !170, !tbaa !78
  %64 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !172, !tbaa !78
  %inc235 = add nsw i32 %64, 1, !dbg !172
  store i32 %inc235, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !172, !tbaa !78
  %65 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !173, !tbaa !78
  %66 = load i32* @hold_hash, align 4, !dbg !173, !tbaa !78
  %xor238 = xor i32 %66, %65, !dbg !173
  store i32 %xor238, i32* @hold_hash, align 4, !dbg !173, !tbaa !78
  br label %if.end239, !dbg !174

if.end239:                                        ; preds = %if.then233, %if.end230
  %67 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !175, !tbaa !78
  %cmp240 = icmp eq i32 %67, 0, !dbg !175
  br i1 %cmp240, label %if.then242, label %if.end250, !dbg !175

if.then242:                                       ; preds = %if.end239
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !176, !tbaa !78
  %68 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !178, !tbaa !78
  %inc244 = add nsw i32 %68, 1, !dbg !178
  store i32 %inc244, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !178, !tbaa !78
  %69 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !179, !tbaa !78
  %70 = load i32* @hold_hash, align 4, !dbg !179, !tbaa !78
  %xor247 = xor i32 %70, %69, !dbg !179
  store i32 %xor247, i32* @hold_hash, align 4, !dbg !179, !tbaa !78
  br label %if.end250, !dbg !180

if.end250:                                        ; preds = %while.body14, %while.body, %if.then197, %if.end194, %if.then242, %if.end239, %for.end
  ret void, !dbg !181
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare void @reset_ecache() #3

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readnone uwtable
define i32 @text_to_piece(i8 signext %txt, i32 %who) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8 %txt}, i64 0, metadata !19), !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32 %who}, i64 0, metadata !20), !dbg !182
  %conv = sext i8 %txt to i32, !dbg !183
  switch i32 %conv, label %return [
    i32 112, label %sw.bb
    i32 80, label %sw.bb
    i32 98, label %sw.bb2
    i32 66, label %sw.bb2
    i32 110, label %sw.bb6
    i32 78, label %sw.bb6
    i32 114, label %sw.bb10
    i32 82, label %sw.bb10
    i32 113, label %sw.bb14
    i32 81, label %sw.bb14
  ], !dbg !183

sw.bb:                                            ; preds = %entry, %entry
  %cmp = icmp eq i32 %who, 0, !dbg !184
  %cond = select i1 %cmp, i32 1, i32 2, !dbg !184
  br label %return, !dbg !184

sw.bb2:                                           ; preds = %entry, %entry
  %cmp3 = icmp eq i32 %who, 0, !dbg !186
  %cond5 = select i1 %cmp3, i32 11, i32 12, !dbg !186
  br label %return, !dbg !186

sw.bb6:                                           ; preds = %entry, %entry
  %cmp7 = icmp eq i32 %who, 0, !dbg !187
  %cond9 = select i1 %cmp7, i32 3, i32 4, !dbg !187
  br label %return, !dbg !187

sw.bb10:                                          ; preds = %entry, %entry
  %cmp11 = icmp eq i32 %who, 0, !dbg !188
  %cond13 = select i1 %cmp11, i32 7, i32 8, !dbg !188
  br label %return, !dbg !188

sw.bb14:                                          ; preds = %entry, %entry
  %cmp15 = icmp eq i32 %who, 0, !dbg !189
  %cond17 = select i1 %cmp15, i32 9, i32 10, !dbg !189
  br label %return, !dbg !189

return:                                           ; preds = %entry, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %cond17, %sw.bb14 ], [ %cond13, %sw.bb10 ], [ %cond9, %sw.bb6 ], [ %cond5, %sw.bb2 ], [ %cond, %sw.bb ], [ 13, %entry ]
  ret i32 %retval.0, !dbg !190
}

; Function Attrs: nounwind optsize uwtable
define i32 @SwitchColor(i32 %piece) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %piece}, i64 0, metadata !25), !dbg !191
  tail call void @llvm.dbg.declare(metadata !192, metadata !26), !dbg !193
  %piece.off = add i32 %piece, -1, !dbg !194
  %0 = icmp ult i32 %piece.off, 12, !dbg !194
  br i1 %0, label %cond.end, label %cond.false, !dbg !194

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([21 x i8]* @__PRETTY_FUNCTION__.SwitchColor, i64 0, i64 0)) #8, !dbg !194
  unreachable, !dbg !194

cond.end:                                         ; preds = %entry
  %idxprom = sext i32 %piece to i64, !dbg !195
  %arrayidx = getelementptr inbounds [13 x i32]* @SwitchColor.t, i64 0, i64 %idxprom, !dbg !195
  %1 = load i32* %arrayidx, align 4, !dbg !195, !tbaa !78
  ret i32 %1, !dbg !196
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind optsize uwtable
define i32 @SwitchPromoted(i32 %piece) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %piece}, i64 0, metadata !32), !dbg !197
  tail call void @llvm.dbg.declare(metadata !198, metadata !33), !dbg !199
  %piece.off = add i32 %piece, -1, !dbg !200
  %0 = icmp ult i32 %piece.off, 12, !dbg !200
  br i1 %0, label %cond.end, label %cond.false, !dbg !200

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([24 x i8]* @__PRETTY_FUNCTION__.SwitchPromoted, i64 0, i64 0)) #8, !dbg !200
  unreachable, !dbg !200

cond.end:                                         ; preds = %entry
  %idxprom = sext i32 %piece to i64, !dbg !201
  %arrayidx = getelementptr inbounds [13 x i32]* @SwitchPromoted.t, i64 0, i64 %idxprom, !dbg !201
  %1 = load i32* %arrayidx, align 4, !dbg !201, !tbaa !78
  ret i32 %1, !dbg !202
}

; Function Attrs: nounwind optsize uwtable
define void @addHolding(i32 %what, i32 %who) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %what}, i64 0, metadata !38), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %who}, i64 0, metadata !39), !dbg !203
  %0 = load i32* @Variant, align 4, !dbg !204, !tbaa !78
  %cmp = icmp eq i32 %0, 0, !dbg !204
  %idxprom = sext i32 %what to i64, !dbg !205
  br i1 %cmp, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %entry
  %idxprom1 = sext i32 %who to i64, !dbg !205
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !205
  %1 = load i32* %arrayidx2, align 4, !dbg !205, !tbaa !78
  %inc = add nsw i32 %1, 1, !dbg !205
  store i32 %inc, i32* %arrayidx2, align 4, !dbg !205, !tbaa !78
  %arrayidx4 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1, !dbg !207
  %2 = load i32* %arrayidx4, align 4, !dbg !207, !tbaa !78
  %inc5 = add nsw i32 %2, 1, !dbg !207
  store i32 %inc5, i32* %arrayidx4, align 4, !dbg !207, !tbaa !78
  %idxprom10 = sext i32 %inc to i64, !dbg !208
  %arrayidx13 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom10, !dbg !208
  %3 = load i32* %arrayidx13, align 4, !dbg !208, !tbaa !78
  %4 = load i32* @hold_hash, align 4, !dbg !208, !tbaa !78
  %xor = xor i32 %4, %3, !dbg !208
  store i32 %xor, i32* @hold_hash, align 4, !dbg !208, !tbaa !78
  br label %if.end, !dbg !209

if.end:                                           ; preds = %entry, %if.then
  %cmp14 = icmp eq i32 %who, 0, !dbg !210
  %arrayidx17 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom, !dbg !211
  %5 = load i32* %arrayidx17, align 4, !dbg !211, !tbaa !78
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !210

if.then15:                                        ; preds = %if.end
  %6 = load i32* @white_hand_eval, align 4, !dbg !211, !tbaa !78
  %add = add nsw i32 %6, %5, !dbg !211
  store i32 %add, i32* @white_hand_eval, align 4, !dbg !211, !tbaa !78
  br label %if.end21, !dbg !211

if.else:                                          ; preds = %if.end
  %7 = load i32* @black_hand_eval, align 4, !dbg !212, !tbaa !78
  %add20 = add nsw i32 %7, %5, !dbg !212
  store i32 %add20, i32* @black_hand_eval, align 4, !dbg !212, !tbaa !78
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %arrayidx23 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom, !dbg !213
  %8 = load i32* %arrayidx23, align 4, !dbg !213, !tbaa !78
  %9 = load i32* @Material, align 4, !dbg !213, !tbaa !78
  %add24 = add nsw i32 %9, %8, !dbg !213
  store i32 %add24, i32* @Material, align 4, !dbg !213, !tbaa !78
  ret void, !dbg !214
}

; Function Attrs: nounwind optsize uwtable
define void @removeHolding(i32 %what, i32 %who) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %what}, i64 0, metadata !42), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %who}, i64 0, metadata !43), !dbg !215
  %0 = load i32* @Variant, align 4, !dbg !216, !tbaa !78
  %cmp = icmp eq i32 %0, 0, !dbg !216
  %idxprom = sext i32 %what to i64, !dbg !217
  br i1 %cmp, label %if.then, label %if.end, !dbg !216

if.then:                                          ; preds = %entry
  %idxprom1 = sext i32 %who to i64, !dbg !217
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !217
  %1 = load i32* %arrayidx2, align 4, !dbg !217, !tbaa !78
  %cmp3 = icmp sgt i32 %1, 0, !dbg !217
  br i1 %cmp3, label %cond.end, label %cond.false, !dbg !217

cond.false:                                       ; preds = %if.then
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 245, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__.removeHolding, i64 0, i64 0)) #8, !dbg !217
  unreachable, !dbg !217

cond.end:                                         ; preds = %if.then
  %cmp8 = icmp slt i32 %1, 20, !dbg !219
  br i1 %cmp8, label %cond.end11, label %cond.false10, !dbg !219

cond.false10:                                     ; preds = %cond.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__.removeHolding, i64 0, i64 0)) #8, !dbg !219
  unreachable, !dbg !219

cond.end11:                                       ; preds = %cond.end
  %idxprom16 = sext i32 %1 to i64, !dbg !220
  %arrayidx19 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom16, !dbg !220
  %2 = load i32* %arrayidx19, align 4, !dbg !220, !tbaa !78
  %3 = load i32* @hold_hash, align 4, !dbg !220, !tbaa !78
  %xor = xor i32 %3, %2, !dbg !220
  store i32 %xor, i32* @hold_hash, align 4, !dbg !220, !tbaa !78
  %dec = add nsw i32 %1, -1, !dbg !221
  store i32 %dec, i32* %arrayidx2, align 4, !dbg !221, !tbaa !78
  %arrayidx25 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1, !dbg !222
  %4 = load i32* %arrayidx25, align 4, !dbg !222, !tbaa !78
  %dec26 = add nsw i32 %4, -1, !dbg !222
  store i32 %dec26, i32* %arrayidx25, align 4, !dbg !222, !tbaa !78
  br label %if.end, !dbg !223

if.end:                                           ; preds = %entry, %cond.end11
  %cmp27 = icmp eq i32 %who, 0, !dbg !224
  %arrayidx30 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom, !dbg !225
  %5 = load i32* %arrayidx30, align 4, !dbg !225, !tbaa !78
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !224

if.then28:                                        ; preds = %if.end
  %6 = load i32* @white_hand_eval, align 4, !dbg !225, !tbaa !78
  %sub = sub nsw i32 %6, %5, !dbg !225
  store i32 %sub, i32* @white_hand_eval, align 4, !dbg !225, !tbaa !78
  br label %if.end34, !dbg !225

if.else:                                          ; preds = %if.end
  %7 = load i32* @black_hand_eval, align 4, !dbg !226, !tbaa !78
  %sub33 = sub nsw i32 %7, %5, !dbg !226
  store i32 %sub33, i32* @black_hand_eval, align 4, !dbg !226, !tbaa !78
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then28
  %arrayidx36 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom, !dbg !227
  %8 = load i32* %arrayidx36, align 4, !dbg !227, !tbaa !78
  %9 = load i32* @Material, align 4, !dbg !227, !tbaa !78
  %sub37 = sub nsw i32 %9, %8, !dbg !227
  store i32 %sub37, i32* @Material, align 4, !dbg !227, !tbaa !78
  ret void, !dbg !228
}

; Function Attrs: nounwind optsize uwtable
define void @DropaddHolding(i32 %what, i32 %who) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %what}, i64 0, metadata !46), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %who}, i64 0, metadata !47), !dbg !229
  %idxprom = sext i32 %what to i64, !dbg !230
  %idxprom1 = sext i32 %who to i64, !dbg !230
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !230
  %0 = load i32* %arrayidx2, align 4, !dbg !230, !tbaa !78
  %inc = add nsw i32 %0, 1, !dbg !230
  store i32 %inc, i32* %arrayidx2, align 4, !dbg !230, !tbaa !78
  %arrayidx4 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1, !dbg !231
  %1 = load i32* %arrayidx4, align 4, !dbg !231, !tbaa !78
  %inc5 = add nsw i32 %1, 1, !dbg !231
  store i32 %inc5, i32* %arrayidx4, align 4, !dbg !231, !tbaa !78
  %idxprom10 = sext i32 %inc to i64, !dbg !232
  %arrayidx13 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom10, !dbg !232
  %2 = load i32* %arrayidx13, align 4, !dbg !232, !tbaa !78
  %3 = load i32* @hold_hash, align 4, !dbg !232, !tbaa !78
  %xor = xor i32 %3, %2, !dbg !232
  store i32 %xor, i32* @hold_hash, align 4, !dbg !232, !tbaa !78
  %cmp = icmp eq i32 %who, 0, !dbg !233
  %arrayidx15 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom, !dbg !234
  %4 = load i32* %arrayidx15, align 4, !dbg !234, !tbaa !78
  br i1 %cmp, label %if.then, label %if.else, !dbg !233

if.then:                                          ; preds = %entry
  %5 = load i32* @white_hand_eval, align 4, !dbg !234, !tbaa !78
  %add = add nsw i32 %5, %4, !dbg !234
  store i32 %add, i32* @white_hand_eval, align 4, !dbg !234, !tbaa !78
  br label %if.end, !dbg !234

if.else:                                          ; preds = %entry
  %6 = load i32* @black_hand_eval, align 4, !dbg !235, !tbaa !78
  %add18 = add nsw i32 %6, %4, !dbg !235
  store i32 %add18, i32* @black_hand_eval, align 4, !dbg !235, !tbaa !78
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx20 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom, !dbg !236
  %7 = load i32* %arrayidx20, align 4, !dbg !236, !tbaa !78
  %8 = load i32* @Material, align 4, !dbg !236, !tbaa !78
  %add21 = add nsw i32 %8, %7, !dbg !236
  store i32 %add21, i32* @Material, align 4, !dbg !236, !tbaa !78
  ret void, !dbg !237
}

; Function Attrs: nounwind optsize uwtable
define void @DropremoveHolding(i32 %what, i32 %who) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %what}, i64 0, metadata !50), !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32 %who}, i64 0, metadata !51), !dbg !238
  %idxprom = sext i32 %what to i64, !dbg !239
  %idxprom1 = sext i32 %who to i64, !dbg !239
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !239
  %0 = load i32* %arrayidx2, align 4, !dbg !239, !tbaa !78
  %cmp = icmp sgt i32 %0, 0, !dbg !239
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !239

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 287, i8* getelementptr inbounds ([33 x i8]* @__PRETTY_FUNCTION__.DropremoveHolding, i64 0, i64 0)) #8, !dbg !239
  unreachable, !dbg !239

cond.end:                                         ; preds = %entry
  %cmp7 = icmp slt i32 %0, 20, !dbg !240
  br i1 %cmp7, label %cond.end10, label %cond.false9, !dbg !240

cond.false9:                                      ; preds = %cond.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([33 x i8]* @__PRETTY_FUNCTION__.DropremoveHolding, i64 0, i64 0)) #8, !dbg !240
  unreachable, !dbg !240

cond.end10:                                       ; preds = %cond.end
  %idxprom15 = sext i32 %0 to i64, !dbg !241
  %arrayidx18 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom15, !dbg !241
  %1 = load i32* %arrayidx18, align 4, !dbg !241, !tbaa !78
  %2 = load i32* @hold_hash, align 4, !dbg !241, !tbaa !78
  %xor = xor i32 %2, %1, !dbg !241
  store i32 %xor, i32* @hold_hash, align 4, !dbg !241, !tbaa !78
  %dec = add nsw i32 %0, -1, !dbg !242
  store i32 %dec, i32* %arrayidx2, align 4, !dbg !242, !tbaa !78
  %arrayidx24 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1, !dbg !243
  %3 = load i32* %arrayidx24, align 4, !dbg !243, !tbaa !78
  %dec25 = add nsw i32 %3, -1, !dbg !243
  store i32 %dec25, i32* %arrayidx24, align 4, !dbg !243, !tbaa !78
  %cmp26 = icmp eq i32 %who, 0, !dbg !244
  %arrayidx28 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom, !dbg !245
  %4 = load i32* %arrayidx28, align 4, !dbg !245, !tbaa !78
  br i1 %cmp26, label %if.then, label %if.else, !dbg !244

if.then:                                          ; preds = %cond.end10
  %5 = load i32* @white_hand_eval, align 4, !dbg !245, !tbaa !78
  %sub = sub nsw i32 %5, %4, !dbg !245
  store i32 %sub, i32* @white_hand_eval, align 4, !dbg !245, !tbaa !78
  br label %if.end, !dbg !245

if.else:                                          ; preds = %cond.end10
  %6 = load i32* @black_hand_eval, align 4, !dbg !246, !tbaa !78
  %sub31 = sub nsw i32 %6, %4, !dbg !246
  store i32 %sub31, i32* @black_hand_eval, align 4, !dbg !246, !tbaa !78
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx33 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom, !dbg !247
  %7 = load i32* %arrayidx33, align 4, !dbg !247, !tbaa !78
  %8 = load i32* @Material, align 4, !dbg !247, !tbaa !78
  %sub34 = sub nsw i32 %8, %7, !dbg !247
  store i32 %sub34, i32* @Material, align 4, !dbg !247, !tbaa !78
  ret void, !dbg !248
}

; Function Attrs: nounwind optsize uwtable
define void @printHolding() #0 {
entry:
  %0 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !249, !tbaa !78
  %1 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !249, !tbaa !78
  %2 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !249, !tbaa !78
  %3 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !249, !tbaa !78
  %4 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !249, !tbaa !78
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str4, i64 0, i64 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #7, !dbg !249
  %5 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !dbg !250, !tbaa !78
  %6 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !dbg !250, !tbaa !78
  %7 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !dbg !250, !tbaa !78
  %8 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !dbg !250, !tbaa !78
  %9 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !dbg !250, !tbaa !78
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #7, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !55, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !15, metadata !21, metadata !30, metadata !34, metadata !40, metadata !44, metadata !48, metadata !52}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ProcessHoldings", metadata !"ProcessHoldings", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ProcessHoldings, null, null, metadata !10, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [ProcessHoldings]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{metadata !11, metadata !12, metadata !14}
!11 = metadata !{i32 786689, metadata !4, metadata !"str", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 32]
!12 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 34, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 34]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 34, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 34]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"text_to_piece", metadata !"text_to_piece", metadata !"", i32 172, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8, i32)* @text_to_piece, null, null, metadata !18, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [text_to_piece]
!16 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !13, metadata !9, metadata !13}
!18 = metadata !{metadata !19, metadata !20}
!19 = metadata !{i32 786689, metadata !15, metadata !"txt", metadata !5, i32 16777388, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [txt] [line 172]
!20 = metadata !{i32 786689, metadata !15, metadata !"who", metadata !5, i32 33554604, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 172]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SwitchColor", metadata !"SwitchColor", metadata !"", i32 196, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @SwitchColor, null, null, metadata !24, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [SwitchColor]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !13, metadata !13}
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786689, metadata !21, metadata !"piece", metadata !5, i32 16777412, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [piece] [line 196]
!26 = metadata !{i32 786688, metadata !21, metadata !"t", metadata !5, i32 198, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 198]
!27 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 416, i64 32, i32 0, i32 0, metadata !13, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 416, align 32, offset 0] [from int]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ] [0, 12]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SwitchPromoted", metadata !"SwitchPromoted", metadata !"", i32 205, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @SwitchPromoted, null, null, metadata !31, i32 206} ; [ DW_TAG_subprogram ] [line 205] [def] [scope 206] [SwitchPromoted]
!31 = metadata !{metadata !32, metadata !33}
!32 = metadata !{i32 786689, metadata !30, metadata !"piece", metadata !5, i32 16777421, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [piece] [line 205]
!33 = metadata !{i32 786688, metadata !30, metadata !"t", metadata !5, i32 207, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 207]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"addHolding", metadata !"addHolding", metadata !"", i32 214, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @addHolding, null, null, metadata !37, i32 215} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 215] [addHolding]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !13, metadata !13}
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 786689, metadata !34, metadata !"what", metadata !5, i32 16777430, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 214]
!39 = metadata !{i32 786689, metadata !34, metadata !"who", metadata !5, i32 33554646, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 214]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"removeHolding", metadata !"removeHolding", metadata !"", i32 239, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @removeHolding, null, null, metadata !41, i32 240} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 240] [removeHolding]
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786689, metadata !40, metadata !"what", metadata !5, i32 16777455, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 239]
!43 = metadata !{i32 786689, metadata !40, metadata !"who", metadata !5, i32 33554671, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 239]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DropaddHolding", metadata !"DropaddHolding", metadata !"", i32 267, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @DropaddHolding, null, null, metadata !45, i32 268} ; [ DW_TAG_subprogram ] [line 267] [def] [scope 268] [DropaddHolding]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786689, metadata !44, metadata !"what", metadata !5, i32 16777483, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 267]
!47 = metadata !{i32 786689, metadata !44, metadata !"who", metadata !5, i32 33554699, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 267]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DropremoveHolding", metadata !"DropremoveHolding", metadata !"", i32 285, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @DropremoveHolding, null, null, metadata !49, i32 286} ; [ DW_TAG_subprogram ] [line 285] [def] [scope 286] [DropremoveHolding]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786689, metadata !48, metadata !"what", metadata !5, i32 16777501, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 285]
!51 = metadata !{i32 786689, metadata !48, metadata !"who", metadata !5, i32 33554717, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 285]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"printHolding", metadata !"printHolding", metadata !"", i32 307, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @printHolding, null, null, metadata !2, i32 308} ; [ DW_TAG_subprogram ] [line 307] [def] [scope 308] [printHolding]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null}
!55 = metadata !{metadata !56, metadata !61, metadata !64, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!56 = metadata !{i32 786484, i32 0, null, metadata !"holding", metadata !"holding", metadata !"", metadata !5, i32 15, metadata !57, i32 0, i32 1, [2 x [16 x i32]]* @holding, null} ; [ DW_TAG_variable ] [holding] [line 15] [def]
!57 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !13, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!60 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!61 = metadata !{i32 786484, i32 0, null, metadata !"num_holding", metadata !"num_holding", metadata !"", metadata !5, i32 16, metadata !62, i32 0, i32 1, [2 x i32]* @num_holding, null} ; [ DW_TAG_variable ] [num_holding] [line 16] [def]
!62 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !13, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!63 = metadata !{metadata !59}
!64 = metadata !{i32 786484, i32 0, null, metadata !"realholdings", metadata !"realholdings", metadata !"", metadata !5, i32 18, metadata !65, i32 0, i32 1, [255 x i8]* @realholdings, null} ; [ DW_TAG_variable ] [realholdings] [line 18] [def]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2040, i64 8, i32 0, i32 0, metadata !9, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2040, align 8, offset 0] [from char]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ] [0, 254]
!68 = metadata !{i32 786484, i32 0, null, metadata !"userealholdings", metadata !"userealholdings", metadata !"", metadata !5, i32 19, metadata !13, i32 0, i32 1, i32* @userealholdings, null} ; [ DW_TAG_variable ] [userealholdings] [line 19] [def]
!69 = metadata !{i32 786484, i32 0, null, metadata !"drop_piece", metadata !"drop_piece", metadata !"", metadata !5, i32 21, metadata !13, i32 0, i32 1, i32* @drop_piece, null} ; [ DW_TAG_variable ] [drop_piece] [line 21] [def]
!70 = metadata !{i32 786484, i32 0, null, metadata !"white_hand_eval", metadata !"white_hand_eval", metadata !"", metadata !5, i32 23, metadata !13, i32 0, i32 1, i32* @white_hand_eval, null} ; [ DW_TAG_variable ] [white_hand_eval] [line 23] [def]
!71 = metadata !{i32 786484, i32 0, null, metadata !"black_hand_eval", metadata !"black_hand_eval", metadata !"", metadata !5, i32 24, metadata !13, i32 0, i32 1, i32* @black_hand_eval, null} ; [ DW_TAG_variable ] [black_hand_eval] [line 24] [def]
!72 = metadata !{i32 786484, i32 0, null, metadata !"hold_hash", metadata !"hold_hash", metadata !"", metadata !5, i32 26, metadata !73, i32 0, i32 1, i32* @hold_hash, null} ; [ DW_TAG_variable ] [hold_hash] [line 26] [def]
!73 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!74 = metadata !{i32 32, i32 0, metadata !4, null}
!75 = metadata !{i32 36, i32 0, metadata !4, null}
!76 = metadata !{i32 38, i32 0, metadata !4, null}
!77 = metadata !{i32 39, i32 0, metadata !4, null}
!78 = metadata !{metadata !"int", metadata !79}
!79 = metadata !{metadata !"omnipotent char", metadata !80}
!80 = metadata !{metadata !"Simple C/C++ TBAA"}
!81 = metadata !{i32 41, i32 0, metadata !4, null}
!82 = metadata !{i32 42, i32 0, metadata !4, null}
!83 = metadata !{i32 43, i32 0, metadata !4, null}
!84 = metadata !{i32 45, i32 0, metadata !4, null}
!85 = metadata !{i32 46, i32 0, metadata !4, null}
!86 = metadata !{i32 48, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!88 = metadata !{i32 50, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !87, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!90 = metadata !{i32 51, i32 0, metadata !89, null}
!91 = metadata !{i32 53, i32 0, metadata !89, null}
!92 = metadata !{i32 57, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 54, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!94 = metadata !{i32 786443, metadata !1, metadata !89, i32 53, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!95 = metadata !{i32 58, i32 0, metadata !93, null} ; [ DW_TAG_imported_module ]
!96 = metadata !{i32 64, i32 0, metadata !93, null}
!97 = metadata !{i32 71, i32 0, metadata !93, null}
!98 = metadata !{i32 78, i32 0, metadata !93, null}
!99 = metadata !{i32 85, i32 0, metadata !93, null}
!100 = metadata !{i32 54, i32 0, metadata !94, null}
!101 = metadata !{i32 59, i32 0, metadata !93, null}
!102 = metadata !{i32 61, i32 0, metadata !93, null}
!103 = metadata !{i32 65, i32 0, metadata !93, null}
!104 = metadata !{i32 66, i32 0, metadata !93, null}
!105 = metadata !{i32 68, i32 0, metadata !93, null}
!106 = metadata !{i32 72, i32 0, metadata !93, null}
!107 = metadata !{i32 73, i32 0, metadata !93, null}
!108 = metadata !{i32 75, i32 0, metadata !93, null}
!109 = metadata !{i32 79, i32 0, metadata !93, null}
!110 = metadata !{i32 80, i32 0, metadata !93, null}
!111 = metadata !{i32 82, i32 0, metadata !93, null}
!112 = metadata !{i32 86, i32 0, metadata !93, null}
!113 = metadata !{i32 87, i32 0, metadata !93, null}
!114 = metadata !{i32 89, i32 0, metadata !93, null}
!115 = metadata !{i32 97, i32 0, metadata !4, null}
!116 = metadata !{i32 99, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !4, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!118 = metadata !{i32 101, i32 0, metadata !117, null}
!119 = metadata !{i32 104, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !117, i32 102, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!121 = metadata !{i32 106, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !120, i32 105, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!123 = metadata !{i32 107, i32 0, metadata !122, null}
!124 = metadata !{i32 108, i32 0, metadata !122, null}
!125 = metadata !{i32 109, i32 0, metadata !122, null}
!126 = metadata !{i32 110, i32 0, metadata !120, null}
!127 = metadata !{i32 112, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !120, i32 111, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!129 = metadata !{i32 113, i32 0, metadata !128, null}
!130 = metadata !{i32 114, i32 0, metadata !128, null}
!131 = metadata !{i32 115, i32 0, metadata !128, null}
!132 = metadata !{i32 116, i32 0, metadata !120, null}
!133 = metadata !{i32 118, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !120, i32 117, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!135 = metadata !{i32 119, i32 0, metadata !134, null}
!136 = metadata !{i32 120, i32 0, metadata !134, null}
!137 = metadata !{i32 121, i32 0, metadata !134, null}
!138 = metadata !{i32 122, i32 0, metadata !120, null}
!139 = metadata !{i32 124, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !120, i32 123, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!141 = metadata !{i32 125, i32 0, metadata !140, null}
!142 = metadata !{i32 126, i32 0, metadata !140, null}
!143 = metadata !{i32 127, i32 0, metadata !140, null}
!144 = metadata !{i32 128, i32 0, metadata !120, null}
!145 = metadata !{i32 130, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !120, i32 129, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!147 = metadata !{i32 131, i32 0, metadata !146, null}
!148 = metadata !{i32 132, i32 0, metadata !146, null}
!149 = metadata !{i32 133, i32 0, metadata !146, null}
!150 = metadata !{i32 138, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !117, i32 136, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!152 = metadata !{i32 140, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !151, i32 139, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!154 = metadata !{i32 141, i32 0, metadata !153, null}
!155 = metadata !{i32 142, i32 0, metadata !153, null}
!156 = metadata !{i32 143, i32 0, metadata !153, null}
!157 = metadata !{i32 144, i32 0, metadata !151, null}
!158 = metadata !{i32 146, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !151, i32 145, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!160 = metadata !{i32 147, i32 0, metadata !159, null}
!161 = metadata !{i32 148, i32 0, metadata !159, null}
!162 = metadata !{i32 149, i32 0, metadata !159, null}
!163 = metadata !{i32 150, i32 0, metadata !151, null}
!164 = metadata !{i32 152, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !151, i32 151, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!166 = metadata !{i32 153, i32 0, metadata !165, null}
!167 = metadata !{i32 154, i32 0, metadata !165, null}
!168 = metadata !{i32 155, i32 0, metadata !165, null}
!169 = metadata !{i32 156, i32 0, metadata !151, null}
!170 = metadata !{i32 158, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !151, i32 157, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!172 = metadata !{i32 159, i32 0, metadata !171, null}
!173 = metadata !{i32 160, i32 0, metadata !171, null}
!174 = metadata !{i32 161, i32 0, metadata !171, null}
!175 = metadata !{i32 162, i32 0, metadata !151, null}
!176 = metadata !{i32 164, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !151, i32 163, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!178 = metadata !{i32 165, i32 0, metadata !177, null}
!179 = metadata !{i32 166, i32 0, metadata !177, null}
!180 = metadata !{i32 167, i32 0, metadata !177, null}
!181 = metadata !{i32 166, i32 0, metadata !4, null}
!182 = metadata !{i32 172, i32 0, metadata !15, null}
!183 = metadata !{i32 174, i32 0, metadata !15, null}
!184 = metadata !{i32 178, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !15, i32 175, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!186 = metadata !{i32 181, i32 0, metadata !185, null}
!187 = metadata !{i32 184, i32 0, metadata !185, null}
!188 = metadata !{i32 187, i32 0, metadata !185, null}
!189 = metadata !{i32 190, i32 0, metadata !185, null}
!190 = metadata !{i32 194, i32 0, metadata !15, null}
!191 = metadata !{i32 196, i32 0, metadata !21, null}
!192 = metadata !{[13 x i32]* @SwitchColor.t}
!193 = metadata !{i32 198, i32 0, metadata !21, null}
!194 = metadata !{i32 200, i32 0, metadata !21, null}
!195 = metadata !{i32 202, i32 0, metadata !21, null}
!196 = metadata !{i32 203, i32 0, metadata !21, null}
!197 = metadata !{i32 205, i32 0, metadata !30, null}
!198 = metadata !{[13 x i32]* @SwitchPromoted.t}
!199 = metadata !{i32 207, i32 0, metadata !30, null}
!200 = metadata !{i32 209, i32 0, metadata !30, null}
!201 = metadata !{i32 211, i32 0, metadata !30, null}
!202 = metadata !{i32 212, i32 0, metadata !30, null}
!203 = metadata !{i32 214, i32 0, metadata !34, null}
!204 = metadata !{i32 217, i32 0, metadata !34, null}
!205 = metadata !{i32 220, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !34, i32 218, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!207 = metadata !{i32 222, i32 0, metadata !206, null}
!208 = metadata !{i32 224, i32 0, metadata !206, null}
!209 = metadata !{i32 226, i32 0, metadata !206, null}
!210 = metadata !{i32 228, i32 0, metadata !34, null}
!211 = metadata !{i32 229, i32 0, metadata !34, null}
!212 = metadata !{i32 231, i32 0, metadata !34, null}
!213 = metadata !{i32 233, i32 0, metadata !34, null}
!214 = metadata !{i32 235, i32 0, metadata !34, null}
!215 = metadata !{i32 239, i32 0, metadata !40, null}
!216 = metadata !{i32 242, i32 0, metadata !40, null}
!217 = metadata !{i32 245, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !40, i32 243, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/crazy.c]
!219 = metadata !{i32 246, i32 0, metadata !218, null}
!220 = metadata !{i32 248, i32 0, metadata !218, null}
!221 = metadata !{i32 250, i32 0, metadata !218, null}
!222 = metadata !{i32 252, i32 0, metadata !218, null}
!223 = metadata !{i32 254, i32 0, metadata !218, null}
!224 = metadata !{i32 256, i32 0, metadata !40, null}
!225 = metadata !{i32 257, i32 0, metadata !40, null}
!226 = metadata !{i32 259, i32 0, metadata !40, null}
!227 = metadata !{i32 261, i32 0, metadata !40, null}
!228 = metadata !{i32 263, i32 0, metadata !40, null}
!229 = metadata !{i32 267, i32 0, metadata !44, null}
!230 = metadata !{i32 269, i32 0, metadata !44, null}
!231 = metadata !{i32 271, i32 0, metadata !44, null}
!232 = metadata !{i32 273, i32 0, metadata !44, null}
!233 = metadata !{i32 275, i32 0, metadata !44, null}
!234 = metadata !{i32 276, i32 0, metadata !44, null}
!235 = metadata !{i32 278, i32 0, metadata !44, null}
!236 = metadata !{i32 280, i32 0, metadata !44, null}
!237 = metadata !{i32 282, i32 0, metadata !44, null}
!238 = metadata !{i32 285, i32 0, metadata !48, null}
!239 = metadata !{i32 287, i32 0, metadata !48, null}
!240 = metadata !{i32 289, i32 0, metadata !48, null}
!241 = metadata !{i32 291, i32 0, metadata !48, null}
!242 = metadata !{i32 293, i32 0, metadata !48, null}
!243 = metadata !{i32 295, i32 0, metadata !48, null}
!244 = metadata !{i32 297, i32 0, metadata !48, null}
!245 = metadata !{i32 298, i32 0, metadata !48, null}
!246 = metadata !{i32 300, i32 0, metadata !48, null}
!247 = metadata !{i32 302, i32 0, metadata !48, null}
!248 = metadata !{i32 304, i32 0, metadata !48, null}
!249 = metadata !{i32 310, i32 0, metadata !52, null}
!250 = metadata !{i32 315, i32 0, metadata !52, null}
!251 = metadata !{i32 320, i32 0, metadata !52, null}
