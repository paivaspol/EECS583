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
@SwitchPromoted.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1], align 16
@hand_value = external global [0 x i32]
@material = external global [14 x i32]
@Material = external global i32
@.str = private unnamed_addr constant [36 x i8] c"WP: %d WR: %d WB: %d WN: %d WQ: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [36 x i8] c"BP: %d BR: %d BB: %d BN: %d BQ: %d\0A\00", align 1
@drop_piece = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @ProcessHoldings(i8* nocapture %str) #0 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 -1056969216, i32* @hold_hash, align 4, !tbaa !0
  store i32 0, i32* @white_hand_eval, align 4, !tbaa !0
  store i32 0, i32* @black_hand_eval, align 4, !tbaa !0
  tail call void @reset_ecache() #5
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry, %for.inc
  %indvars.iv302 = phi i64 [ 0, %entry ], [ %indvars.iv.next303, %for.inc ]
  %i.0297 = phi i32 [ 0, %entry ], [ %i.2.lcssa, %for.inc ]
  %0 = sext i32 %i.0297 to i64
  %arrayidx.phi.trans.insert = getelementptr inbounds i8* %str, i64 %0
  %.pre = load i8* %arrayidx.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %1 = phi i8 [ %.pre, %while.cond.preheader ], [ %2, %while.body ]
  %indvars.iv = phi i64 [ %0, %while.cond.preheader ], [ %indvars.iv.next, %while.body ]
  %i.1 = phi i32 [ %i.0297, %while.cond.preheader ], [ %inc, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.1, 1
  %cmp1 = icmp eq i8 %1, 91
  br i1 %cmp1, label %while.cond8.loopexit, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx4 = getelementptr inbounds i8* %str, i64 %indvars.iv.next
  %2 = load i8* %arrayidx4, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %2, 0
  br i1 %cmp6, label %if.end250, label %while.cond

while.cond8.loopexit:                             ; preds = %while.cond
  %idxprom9292 = sext i32 %inc to i64
  %arrayidx10293 = getelementptr inbounds i8* %str, i64 %idxprom9292
  %3 = load i8* %arrayidx10293, align 1, !tbaa !1
  %cmp12294 = icmp eq i8 %3, 93
  br i1 %cmp12294, label %for.inc, label %while.body14.lr.ph

while.body14.lr.ph:                               ; preds = %while.cond8.loopexit
  %4 = trunc i64 %indvars.iv302 to i32
  %cmp19 = icmp eq i32 %4, 0
  %idxprom21 = select i1 %cmp19, i64 1, i64 2
  %arrayidx24 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom21
  %arrayidx27 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %indvars.iv302
  %idxprom47 = select i1 %cmp19, i64 9, i64 10
  %arrayidx50 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom47
  %idxprom74 = select i1 %cmp19, i64 7, i64 8
  %arrayidx77 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom74
  %idxprom101 = select i1 %cmp19, i64 11, i64 12
  %arrayidx104 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom101
  %idxprom128 = select i1 %cmp19, i64 3, i64 4
  %arrayidx131 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv302, i64 %idxprom128
  br label %while.body14

while.body14:                                     ; preds = %while.body14.lr.ph, %while.cond8.backedge
  %indvars.iv300 = phi i64 [ %idxprom9292, %while.body14.lr.ph ], [ %indvars.iv.next301, %while.cond8.backedge ]
  %5 = phi i8 [ %3, %while.body14.lr.ph ], [ %26, %while.cond8.backedge ]
  %i.2295 = phi i32 [ %inc, %while.body14.lr.ph ], [ %inc15, %while.cond8.backedge ]
  %conv11 = sext i8 %5 to i32
  %indvars.iv.next301 = add i64 %indvars.iv300, 1
  %inc15 = add nsw i32 %i.2295, 1
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
  ]

sw.bb:                                            ; preds = %while.body14, %while.body14
  %6 = load i32* %arrayidx24, align 4, !tbaa !0
  %inc25 = add nsw i32 %6, 1
  store i32 %inc25, i32* %arrayidx24, align 4, !tbaa !0
  %7 = load i32* %arrayidx27, align 4, !tbaa !0
  %inc28 = add nsw i32 %7, 1
  store i32 %inc28, i32* %arrayidx27, align 4, !tbaa !0
  %idxprom36 = sext i32 %inc25 to i64
  %arrayidx42 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom21, i64 %idxprom36
  %8 = load i32* %arrayidx42, align 4, !tbaa !0
  %9 = load i32* @hold_hash, align 4, !tbaa !0
  %xor = xor i32 %9, %8
  store i32 %xor, i32* @hold_hash, align 4, !tbaa !0
  br label %while.cond8.backedge

sw.bb43:                                          ; preds = %while.body14, %while.body14
  %10 = load i32* %arrayidx50, align 4, !tbaa !0
  %inc51 = add nsw i32 %10, 1
  store i32 %inc51, i32* %arrayidx50, align 4, !tbaa !0
  %11 = load i32* %arrayidx27, align 4, !tbaa !0
  %inc54 = add nsw i32 %11, 1
  store i32 %inc54, i32* %arrayidx27, align 4, !tbaa !0
  %idxprom62 = sext i32 %inc51 to i64
  %arrayidx68 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom47, i64 %idxprom62
  %12 = load i32* %arrayidx68, align 4, !tbaa !0
  %13 = load i32* @hold_hash, align 4, !tbaa !0
  %xor69 = xor i32 %13, %12
  store i32 %xor69, i32* @hold_hash, align 4, !tbaa !0
  br label %while.cond8.backedge

sw.bb70:                                          ; preds = %while.body14, %while.body14
  %14 = load i32* %arrayidx77, align 4, !tbaa !0
  %inc78 = add nsw i32 %14, 1
  store i32 %inc78, i32* %arrayidx77, align 4, !tbaa !0
  %15 = load i32* %arrayidx27, align 4, !tbaa !0
  %inc81 = add nsw i32 %15, 1
  store i32 %inc81, i32* %arrayidx27, align 4, !tbaa !0
  %idxprom89 = sext i32 %inc78 to i64
  %arrayidx95 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom74, i64 %idxprom89
  %16 = load i32* %arrayidx95, align 4, !tbaa !0
  %17 = load i32* @hold_hash, align 4, !tbaa !0
  %xor96 = xor i32 %17, %16
  store i32 %xor96, i32* @hold_hash, align 4, !tbaa !0
  br label %while.cond8.backedge

sw.bb97:                                          ; preds = %while.body14, %while.body14
  %18 = load i32* %arrayidx104, align 4, !tbaa !0
  %inc105 = add nsw i32 %18, 1
  store i32 %inc105, i32* %arrayidx104, align 4, !tbaa !0
  %19 = load i32* %arrayidx27, align 4, !tbaa !0
  %inc108 = add nsw i32 %19, 1
  store i32 %inc108, i32* %arrayidx27, align 4, !tbaa !0
  %idxprom116 = sext i32 %inc105 to i64
  %arrayidx122 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom101, i64 %idxprom116
  %20 = load i32* %arrayidx122, align 4, !tbaa !0
  %21 = load i32* @hold_hash, align 4, !tbaa !0
  %xor123 = xor i32 %21, %20
  store i32 %xor123, i32* @hold_hash, align 4, !tbaa !0
  br label %while.cond8.backedge

sw.bb124:                                         ; preds = %while.body14, %while.body14
  %22 = load i32* %arrayidx131, align 4, !tbaa !0
  %inc132 = add nsw i32 %22, 1
  store i32 %inc132, i32* %arrayidx131, align 4, !tbaa !0
  %23 = load i32* %arrayidx27, align 4, !tbaa !0
  %inc135 = add nsw i32 %23, 1
  store i32 %inc135, i32* %arrayidx27, align 4, !tbaa !0
  %idxprom143 = sext i32 %inc132 to i64
  %arrayidx149 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom128, i64 %idxprom143
  %24 = load i32* %arrayidx149, align 4, !tbaa !0
  %25 = load i32* @hold_hash, align 4, !tbaa !0
  %xor150 = xor i32 %25, %24
  store i32 %xor150, i32* @hold_hash, align 4, !tbaa !0
  br label %while.cond8.backedge

while.cond8.backedge:                             ; preds = %sw.bb124, %sw.bb97, %sw.bb70, %sw.bb43, %sw.bb
  %arrayidx10 = getelementptr inbounds i8* %str, i64 %indvars.iv.next301
  %26 = load i8* %arrayidx10, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %26, 93
  br i1 %cmp12, label %for.inc, label %while.body14

for.inc:                                          ; preds = %while.cond8.backedge, %while.cond8.loopexit
  %i.2.lcssa = phi i32 [ %inc, %while.cond8.loopexit ], [ %inc15, %while.cond8.backedge ]
  %indvars.iv.next303 = add i64 %indvars.iv302, 1
  %27 = trunc i64 %indvars.iv.next303 to i32
  %cmp = icmp slt i32 %27, 2
  br i1 %cmp, label %while.cond.preheader, label %for.end

for.end:                                          ; preds = %for.inc
  %28 = load i32* @Variant, align 4, !tbaa !0
  %cmp153 = icmp ne i32 %28, 1
  %29 = load i32* @userealholdings, align 4, !tbaa !0
  %tobool = icmp ne i32 %29, 0
  %or.cond = or i1 %cmp153, %tobool
  br i1 %or.cond, label %if.end250, label %if.then155

if.then155:                                       ; preds = %for.end
  %call = tail call i8* @strncpy(i8* getelementptr inbounds ([255 x i8]* @realholdings, i64 0, i64 0), i8* %str, i64 200) #5
  %30 = load i32* @comp_color, align 4, !tbaa !0
  %cmp156 = icmp eq i32 %30, 1
  br i1 %cmp156, label %if.then158, label %if.else

if.then158:                                       ; preds = %if.then155
  %31 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !tbaa !0
  %cmp159 = icmp eq i32 %31, 0
  br i1 %cmp159, label %if.then161, label %if.end167

if.then161:                                       ; preds = %if.then158
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !tbaa !0
  %32 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %inc163 = add nsw i32 %32, 1
  store i32 %inc163, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %33 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 1), align 4, !tbaa !0
  %34 = load i32* @hold_hash, align 4, !tbaa !0
  %xor166 = xor i32 %34, %33
  store i32 %xor166, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %if.then161, %if.then158
  %35 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !tbaa !0
  %cmp168 = icmp eq i32 %35, 0
  br i1 %cmp168, label %if.then170, label %if.end176

if.then170:                                       ; preds = %if.end167
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !tbaa !0
  %36 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %inc172 = add nsw i32 %36, 1
  store i32 %inc172, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %37 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 1), align 4, !tbaa !0
  %38 = load i32* @hold_hash, align 4, !tbaa !0
  %xor175 = xor i32 %38, %37
  store i32 %xor175, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end176

if.end176:                                        ; preds = %if.then170, %if.end167
  %39 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !tbaa !0
  %cmp177 = icmp eq i32 %39, 0
  br i1 %cmp177, label %if.then179, label %if.end185

if.then179:                                       ; preds = %if.end176
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !tbaa !0
  %40 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %inc181 = add nsw i32 %40, 1
  store i32 %inc181, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %41 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !tbaa !0
  %42 = load i32* @hold_hash, align 4, !tbaa !0
  %xor184 = xor i32 %42, %41
  store i32 %xor184, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end185

if.end185:                                        ; preds = %if.then179, %if.end176
  %43 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !tbaa !0
  %cmp186 = icmp eq i32 %43, 0
  br i1 %cmp186, label %if.then188, label %if.end194

if.then188:                                       ; preds = %if.end185
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !tbaa !0
  %44 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %inc190 = add nsw i32 %44, 1
  store i32 %inc190, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %45 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !tbaa !0
  %46 = load i32* @hold_hash, align 4, !tbaa !0
  %xor193 = xor i32 %46, %45
  store i32 %xor193, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end194

if.end194:                                        ; preds = %if.then188, %if.end185
  %47 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !tbaa !0
  %cmp195 = icmp eq i32 %47, 0
  br i1 %cmp195, label %if.then197, label %if.end250

if.then197:                                       ; preds = %if.end194
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !tbaa !0
  %48 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %inc199 = add nsw i32 %48, 1
  store i32 %inc199, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !tbaa !0
  %49 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !tbaa !0
  %50 = load i32* @hold_hash, align 4, !tbaa !0
  %xor202 = xor i32 %50, %49
  store i32 %xor202, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end250

if.else:                                          ; preds = %if.then155
  %51 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !tbaa !0
  %cmp204 = icmp eq i32 %51, 0
  br i1 %cmp204, label %if.then206, label %if.end212

if.then206:                                       ; preds = %if.else
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !tbaa !0
  %52 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %inc208 = add nsw i32 %52, 1
  store i32 %inc208, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %53 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !tbaa !0
  %54 = load i32* @hold_hash, align 4, !tbaa !0
  %xor211 = xor i32 %54, %53
  store i32 %xor211, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end212

if.end212:                                        ; preds = %if.then206, %if.else
  %55 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !tbaa !0
  %cmp213 = icmp eq i32 %55, 0
  br i1 %cmp213, label %if.then215, label %if.end221

if.then215:                                       ; preds = %if.end212
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !tbaa !0
  %56 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %inc217 = add nsw i32 %56, 1
  store i32 %inc217, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %57 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !tbaa !0
  %58 = load i32* @hold_hash, align 4, !tbaa !0
  %xor220 = xor i32 %58, %57
  store i32 %xor220, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end221

if.end221:                                        ; preds = %if.then215, %if.end212
  %59 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !tbaa !0
  %cmp222 = icmp eq i32 %59, 0
  br i1 %cmp222, label %if.then224, label %if.end230

if.then224:                                       ; preds = %if.end221
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !tbaa !0
  %60 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %inc226 = add nsw i32 %60, 1
  store i32 %inc226, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %61 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !tbaa !0
  %62 = load i32* @hold_hash, align 4, !tbaa !0
  %xor229 = xor i32 %62, %61
  store i32 %xor229, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end230

if.end230:                                        ; preds = %if.then224, %if.end221
  %63 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !tbaa !0
  %cmp231 = icmp eq i32 %63, 0
  br i1 %cmp231, label %if.then233, label %if.end239

if.then233:                                       ; preds = %if.end230
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !tbaa !0
  %64 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %inc235 = add nsw i32 %64, 1
  store i32 %inc235, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %65 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !tbaa !0
  %66 = load i32* @hold_hash, align 4, !tbaa !0
  %xor238 = xor i32 %66, %65
  store i32 %xor238, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end239

if.end239:                                        ; preds = %if.then233, %if.end230
  %67 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !tbaa !0
  %cmp240 = icmp eq i32 %67, 0
  br i1 %cmp240, label %if.then242, label %if.end250

if.then242:                                       ; preds = %if.end239
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !tbaa !0
  %68 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %inc244 = add nsw i32 %68, 1
  store i32 %inc244, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !tbaa !0
  %69 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !tbaa !0
  %70 = load i32* @hold_hash, align 4, !tbaa !0
  %xor247 = xor i32 %70, %69
  store i32 %xor247, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end250

if.end250:                                        ; preds = %while.body14, %while.body, %if.then197, %if.end194, %if.then242, %if.end239, %for.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: optsize
declare void @reset_ecache() #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @text_to_piece(i8 signext %txt, i32 %who) #4 {
entry:
  %conv = sext i8 %txt to i32
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
  ]

sw.bb:                                            ; preds = %entry, %entry
  %cmp = icmp eq i32 %who, 0
  %cond = select i1 %cmp, i32 1, i32 2
  br label %return

sw.bb2:                                           ; preds = %entry, %entry
  %cmp3 = icmp eq i32 %who, 0
  %cond5 = select i1 %cmp3, i32 11, i32 12
  br label %return

sw.bb6:                                           ; preds = %entry, %entry
  %cmp7 = icmp eq i32 %who, 0
  %cond9 = select i1 %cmp7, i32 3, i32 4
  br label %return

sw.bb10:                                          ; preds = %entry, %entry
  %cmp11 = icmp eq i32 %who, 0
  %cond13 = select i1 %cmp11, i32 7, i32 8
  br label %return

sw.bb14:                                          ; preds = %entry, %entry
  %cmp15 = icmp eq i32 %who, 0
  %cond17 = select i1 %cmp15, i32 9, i32 10
  br label %return

return:                                           ; preds = %entry, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %cond17, %sw.bb14 ], [ %cond13, %sw.bb10 ], [ %cond9, %sw.bb6 ], [ %cond5, %sw.bb2 ], [ %cond, %sw.bb ], [ 13, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @SwitchColor(i32 %piece) #4 {
entry:
  %idxprom = sext i32 %piece to i64
  %arrayidx = getelementptr inbounds [13 x i32]* @SwitchColor.t, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @SwitchPromoted(i32 %piece) #4 {
entry:
  %idxprom = sext i32 %piece to i64
  %arrayidx = getelementptr inbounds [13 x i32]* @SwitchPromoted.t, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define void @addHolding(i32 %what, i32 %who) #0 {
entry:
  %0 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  %idxprom = sext i32 %what to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom1 = sext i32 %who to i64
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1
  %2 = load i32* %arrayidx4, align 4, !tbaa !0
  %inc5 = add nsw i32 %2, 1
  store i32 %inc5, i32* %arrayidx4, align 4, !tbaa !0
  %idxprom10 = sext i32 %inc to i64
  %arrayidx13 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom10
  %3 = load i32* %arrayidx13, align 4, !tbaa !0
  %4 = load i32* @hold_hash, align 4, !tbaa !0
  %xor = xor i32 %4, %3
  store i32 %xor, i32* @hold_hash, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp14 = icmp eq i32 %who, 0
  %arrayidx17 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom
  %5 = load i32* %arrayidx17, align 4, !tbaa !0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %6 = load i32* @white_hand_eval, align 4, !tbaa !0
  %add = add nsw i32 %6, %5
  store i32 %add, i32* @white_hand_eval, align 4, !tbaa !0
  br label %if.end21

if.else:                                          ; preds = %if.end
  %7 = load i32* @black_hand_eval, align 4, !tbaa !0
  %add20 = add nsw i32 %7, %5
  store i32 %add20, i32* @black_hand_eval, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %arrayidx23 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom
  %8 = load i32* %arrayidx23, align 4, !tbaa !0
  %9 = load i32* @Material, align 4, !tbaa !0
  %add24 = add nsw i32 %9, %8
  store i32 %add24, i32* @Material, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @removeHolding(i32 %what, i32 %who) #0 {
entry:
  %0 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  %idxprom = sext i32 %what to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom1 = sext i32 %who to i64
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %idxprom3 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom3
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %3 = load i32* @hold_hash, align 4, !tbaa !0
  %xor = xor i32 %3, %2
  store i32 %xor, i32* @hold_hash, align 4, !tbaa !0
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1
  %4 = load i32* %arrayidx12, align 4, !tbaa !0
  %dec13 = add nsw i32 %4, -1
  store i32 %dec13, i32* %arrayidx12, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp14 = icmp eq i32 %who, 0
  %arrayidx17 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom
  %5 = load i32* %arrayidx17, align 4, !tbaa !0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %6 = load i32* @white_hand_eval, align 4, !tbaa !0
  %sub = sub nsw i32 %6, %5
  store i32 %sub, i32* @white_hand_eval, align 4, !tbaa !0
  br label %if.end21

if.else:                                          ; preds = %if.end
  %7 = load i32* @black_hand_eval, align 4, !tbaa !0
  %sub20 = sub nsw i32 %7, %5
  store i32 %sub20, i32* @black_hand_eval, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %arrayidx23 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom
  %8 = load i32* %arrayidx23, align 4, !tbaa !0
  %9 = load i32* @Material, align 4, !tbaa !0
  %sub24 = sub nsw i32 %9, %8
  store i32 %sub24, i32* @Material, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DropaddHolding(i32 %what, i32 %who) #0 {
entry:
  %idxprom = sext i32 %what to i64
  %idxprom1 = sext i32 %who to i64
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom
  %0 = load i32* %arrayidx2, align 4, !tbaa !0
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %inc5 = add nsw i32 %1, 1
  store i32 %inc5, i32* %arrayidx4, align 4, !tbaa !0
  %idxprom10 = sext i32 %inc to i64
  %arrayidx13 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom10
  %2 = load i32* %arrayidx13, align 4, !tbaa !0
  %3 = load i32* @hold_hash, align 4, !tbaa !0
  %xor = xor i32 %3, %2
  store i32 %xor, i32* @hold_hash, align 4, !tbaa !0
  %cmp = icmp eq i32 %who, 0
  %arrayidx15 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom
  %4 = load i32* %arrayidx15, align 4, !tbaa !0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32* @white_hand_eval, align 4, !tbaa !0
  %add = add nsw i32 %5, %4
  store i32 %add, i32* @white_hand_eval, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32* @black_hand_eval, align 4, !tbaa !0
  %add18 = add nsw i32 %6, %4
  store i32 %add18, i32* @black_hand_eval, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx20 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom
  %7 = load i32* %arrayidx20, align 4, !tbaa !0
  %8 = load i32* @Material, align 4, !tbaa !0
  %add21 = add nsw i32 %8, %7
  store i32 %add21, i32* @Material, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DropremoveHolding(i32 %what, i32 %who) #0 {
entry:
  %idxprom = sext i32 %what to i64
  %idxprom1 = sext i32 %who to i64
  %arrayidx2 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom1, i64 %idxprom
  %0 = load i32* %arrayidx2, align 4, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  %arrayidx6 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom, i64 %idxprom3
  %1 = load i32* %arrayidx6, align 4, !tbaa !0
  %2 = load i32* @hold_hash, align 4, !tbaa !0
  %xor = xor i32 %2, %1
  store i32 %xor, i32* @hold_hash, align 4, !tbaa !0
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %idxprom1
  %3 = load i32* %arrayidx12, align 4, !tbaa !0
  %dec13 = add nsw i32 %3, -1
  store i32 %dec13, i32* %arrayidx12, align 4, !tbaa !0
  %cmp = icmp eq i32 %who, 0
  %arrayidx15 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %idxprom
  %4 = load i32* %arrayidx15, align 4, !tbaa !0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32* @white_hand_eval, align 4, !tbaa !0
  %sub = sub nsw i32 %5, %4
  store i32 %sub, i32* @white_hand_eval, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32* @black_hand_eval, align 4, !tbaa !0
  %sub18 = sub nsw i32 %6, %4
  store i32 %sub18, i32* @black_hand_eval, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx20 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom
  %7 = load i32* %arrayidx20, align 4, !tbaa !0
  %8 = load i32* @Material, align 4, !tbaa !0
  %sub21 = sub nsw i32 %8, %7
  store i32 %sub21, i32* @Material, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @printHolding() #0 {
entry:
  %0 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !tbaa !0
  %1 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !tbaa !0
  %2 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !tbaa !0
  %3 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !tbaa !0
  %4 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !tbaa !0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #5
  %5 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !tbaa !0
  %6 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !tbaa !0
  %7 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !tbaa !0
  %8 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !tbaa !0
  %9 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !tbaa !0
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str1, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
