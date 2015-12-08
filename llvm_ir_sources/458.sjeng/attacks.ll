; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@board = external global [144 x i32]
@nk_attacked.rook_o = internal unnamed_addr constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@nk_attacked.bishop_o = internal unnamed_addr constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@nk_attacked.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: nounwind optsize readonly uwtable
define i32 @calc_attackers(i32 %square, i32 %color) #0 {
entry:
  %idxprom = sext i32 %square to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rem273 = and i32 %color, 1
  %tobool = icmp eq i32 %rem273, 0
  br i1 %tobool, label %for.body100, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.inc ], [ 0, %if.end ]
  %attackers.0295 = phi i32 [ %attackers.1, %for.inc ], [ 0, %if.end ]
  %arrayidx4 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv312
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %add = add nsw i32 %1, %square
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %2, 5
  br i1 %cmp7, label %if.then8, label %while.cond

if.then8:                                         ; preds = %for.body
  %inc = add nsw i32 %attackers.0295, 1
  br label %for.body34

while.cond:                                       ; preds = %for.body, %if.end26
  %3 = phi i32 [ %.pre315, %if.end26 ], [ %2, %for.body ]
  %a_sq.0 = phi i32 [ %add29, %if.end26 ], [ %add, %for.body ]
  switch i32 %3, label %for.inc [
    i32 13, label %if.end26
    i32 7, label %if.then18
    i32 9, label %if.then18
  ]

if.then18:                                        ; preds = %while.cond, %while.cond
  %inc19 = add nsw i32 %attackers.0295, 1
  br label %for.inc

if.end26:                                         ; preds = %while.cond
  %add29 = add nsw i32 %1, %a_sq.0
  %idxprom9.phi.trans.insert = sext i32 %add29 to i64
  %arrayidx10.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom9.phi.trans.insert
  %.pre315 = load i32* %arrayidx10.phi.trans.insert, align 4, !tbaa !0
  br label %while.cond

for.inc:                                          ; preds = %while.cond, %if.then18
  %attackers.1 = phi i32 [ %inc19, %if.then18 ], [ %attackers.0295, %while.cond ]
  %indvars.iv.next313 = add i64 %indvars.iv312, 1
  %4 = trunc i64 %indvars.iv.next313 to i32
  %cmp2 = icmp slt i32 %4, 4
  br i1 %cmp2, label %for.body, label %for.body34

for.body34:                                       ; preds = %if.then8, %for.inc, %for.inc79
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %for.inc79 ], [ 0, %for.inc ], [ 0, %if.then8 ]
  %attackers.3292 = phi i32 [ %attackers.4, %for.inc79 ], [ %attackers.1, %for.inc ], [ %inc, %if.then8 ]
  %arrayidx36 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv309
  %5 = load i32* %arrayidx36, align 4, !tbaa !0
  %add37 = add nsw i32 %5, %square
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom38
  %6 = load i32* %arrayidx39, align 4, !tbaa !0
  switch i32 %6, label %while.cond52 [
    i32 1, label %land.lhs.true
    i32 5, label %if.then49
  ]

land.lhs.true:                                    ; preds = %for.body34
  %rem41275 = and i64 %indvars.iv309, 1
  %tobool42 = icmp eq i64 %rem41275, 0
  br i1 %tobool42, label %while.cond52, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  %inc44 = add nsw i32 %attackers.3292, 1
  br label %for.body84

if.then49:                                        ; preds = %for.body34
  %inc50 = add nsw i32 %attackers.3292, 1
  br label %for.body84

while.cond52:                                     ; preds = %for.body34, %land.lhs.true, %if.end72
  %7 = phi i32 [ %.pre316, %if.end72 ], [ 1, %land.lhs.true ], [ %6, %for.body34 ]
  %a_sq.1 = phi i32 [ %add75, %if.end72 ], [ %add37, %land.lhs.true ], [ %add37, %for.body34 ]
  switch i32 %7, label %for.inc79 [
    i32 13, label %if.end72
    i32 11, label %if.then64
    i32 9, label %if.then64
  ]

if.then64:                                        ; preds = %while.cond52, %while.cond52
  %inc65 = add nsw i32 %attackers.3292, 1
  br label %for.inc79

if.end72:                                         ; preds = %while.cond52
  %add75 = add nsw i32 %5, %a_sq.1
  %idxprom53.phi.trans.insert = sext i32 %add75 to i64
  %arrayidx54.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom53.phi.trans.insert
  %.pre316 = load i32* %arrayidx54.phi.trans.insert, align 4, !tbaa !0
  br label %while.cond52

for.inc79:                                        ; preds = %while.cond52, %if.then64
  %attackers.4 = phi i32 [ %inc65, %if.then64 ], [ %attackers.3292, %while.cond52 ]
  %indvars.iv.next310 = add i64 %indvars.iv309, 1
  %8 = trunc i64 %indvars.iv.next310 to i32
  %cmp33 = icmp slt i32 %8, 4
  br i1 %cmp33, label %for.body34, label %for.body84

for.body84:                                       ; preds = %if.then43, %if.then49, %for.inc79, %for.body84
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %for.body84 ], [ 0, %for.inc79 ], [ 0, %if.then49 ], [ 0, %if.then43 ]
  %attackers.6288 = phi i32 [ %inc92.attackers.6, %for.body84 ], [ %attackers.4, %for.inc79 ], [ %inc50, %if.then49 ], [ %inc44, %if.then43 ]
  %arrayidx86 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv303
  %9 = load i32* %arrayidx86, align 4, !tbaa !0
  %add87 = add nsw i32 %9, %square
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom88
  %10 = load i32* %arrayidx89, align 4, !tbaa !0
  %cmp90 = icmp eq i32 %10, 3
  %inc92 = zext i1 %cmp90 to i32
  %inc92.attackers.6 = add nsw i32 %inc92, %attackers.6288
  %indvars.iv.next304 = add i64 %indvars.iv303, 1
  %lftr.wideiv305 = trunc i64 %indvars.iv.next304 to i32
  %exitcond306 = icmp eq i32 %lftr.wideiv305, 8
  br i1 %exitcond306, label %return, label %for.body84

for.body100:                                      ; preds = %if.end, %for.inc135
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %for.inc135 ], [ 0, %if.end ]
  %attackers.8285 = phi i32 [ %attackers.9, %for.inc135 ], [ 0, %if.end ]
  %arrayidx102 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv301
  %11 = load i32* %arrayidx102, align 4, !tbaa !0
  %add103 = add nsw i32 %11, %square
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom104
  %12 = load i32* %arrayidx105, align 4, !tbaa !0
  %cmp106 = icmp eq i32 %12, 6
  br i1 %cmp106, label %if.then107, label %while.cond110

if.then107:                                       ; preds = %for.body100
  %inc108 = add nsw i32 %attackers.8285, 1
  br label %for.body140

while.cond110:                                    ; preds = %for.body100, %if.end129
  %13 = phi i32 [ %.pre, %if.end129 ], [ %12, %for.body100 ]
  %a_sq.2 = phi i32 [ %add132, %if.end129 ], [ %add103, %for.body100 ]
  switch i32 %13, label %for.inc135 [
    i32 13, label %if.end129
    i32 8, label %if.then122
    i32 10, label %if.then122
  ]

if.then122:                                       ; preds = %while.cond110, %while.cond110
  %inc123 = add nsw i32 %attackers.8285, 1
  br label %for.inc135

if.end129:                                        ; preds = %while.cond110
  %add132 = add nsw i32 %11, %a_sq.2
  %idxprom111.phi.trans.insert = sext i32 %add132 to i64
  %arrayidx112.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom111.phi.trans.insert
  %.pre = load i32* %arrayidx112.phi.trans.insert, align 4, !tbaa !0
  br label %while.cond110

for.inc135:                                       ; preds = %while.cond110, %if.then122
  %attackers.9 = phi i32 [ %inc123, %if.then122 ], [ %attackers.8285, %while.cond110 ]
  %indvars.iv.next302 = add i64 %indvars.iv301, 1
  %14 = trunc i64 %indvars.iv.next302 to i32
  %cmp99 = icmp slt i32 %14, 4
  br i1 %cmp99, label %for.body100, label %for.body140

for.body140:                                      ; preds = %if.then107, %for.inc135, %for.inc186
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %for.inc186 ], [ 0, %for.inc135 ], [ 0, %if.then107 ]
  %attackers.11282 = phi i32 [ %attackers.12, %for.inc186 ], [ %attackers.9, %for.inc135 ], [ %inc108, %if.then107 ]
  %arrayidx142 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv298
  %15 = load i32* %arrayidx142, align 4, !tbaa !0
  %add143 = add nsw i32 %15, %square
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom144
  %16 = load i32* %arrayidx145, align 4, !tbaa !0
  switch i32 %16, label %while.cond159 [
    i32 2, label %land.lhs.true147
    i32 6, label %if.then156
  ]

land.lhs.true147:                                 ; preds = %for.body140
  %rem148274 = and i64 %indvars.iv298, 1
  %tobool149 = icmp eq i64 %rem148274, 0
  br i1 %tobool149, label %if.then150, label %while.cond159

if.then150:                                       ; preds = %land.lhs.true147
  %inc151 = add nsw i32 %attackers.11282, 1
  br label %for.body191

if.then156:                                       ; preds = %for.body140
  %inc157 = add nsw i32 %attackers.11282, 1
  br label %for.body191

while.cond159:                                    ; preds = %for.body140, %land.lhs.true147, %if.end179
  %17 = phi i32 [ %.pre314, %if.end179 ], [ 2, %land.lhs.true147 ], [ %16, %for.body140 ]
  %a_sq.3 = phi i32 [ %add182, %if.end179 ], [ %add143, %land.lhs.true147 ], [ %add143, %for.body140 ]
  switch i32 %17, label %for.inc186 [
    i32 13, label %if.end179
    i32 12, label %if.then171
    i32 10, label %if.then171
  ]

if.then171:                                       ; preds = %while.cond159, %while.cond159
  %inc172 = add nsw i32 %attackers.11282, 1
  br label %for.inc186

if.end179:                                        ; preds = %while.cond159
  %add182 = add nsw i32 %15, %a_sq.3
  %idxprom160.phi.trans.insert = sext i32 %add182 to i64
  %arrayidx161.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom160.phi.trans.insert
  %.pre314 = load i32* %arrayidx161.phi.trans.insert, align 4, !tbaa !0
  br label %while.cond159

for.inc186:                                       ; preds = %while.cond159, %if.then171
  %attackers.12 = phi i32 [ %inc172, %if.then171 ], [ %attackers.11282, %while.cond159 ]
  %indvars.iv.next299 = add i64 %indvars.iv298, 1
  %18 = trunc i64 %indvars.iv.next299 to i32
  %cmp139 = icmp slt i32 %18, 4
  br i1 %cmp139, label %for.body140, label %for.body191

for.body191:                                      ; preds = %if.then150, %if.then156, %for.inc186, %for.body191
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body191 ], [ 0, %for.inc186 ], [ 0, %if.then156 ], [ 0, %if.then150 ]
  %attackers.14278 = phi i32 [ %inc199.attackers.14, %for.body191 ], [ %attackers.12, %for.inc186 ], [ %inc157, %if.then156 ], [ %inc151, %if.then150 ]
  %arrayidx193 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv
  %19 = load i32* %arrayidx193, align 4, !tbaa !0
  %add194 = add nsw i32 %19, %square
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom195
  %20 = load i32* %arrayidx196, align 4, !tbaa !0
  %cmp197 = icmp eq i32 %20, 4
  %inc199 = zext i1 %cmp197 to i32
  %inc199.attackers.14 = add nsw i32 %inc199, %attackers.14278
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %return, label %for.body191

return:                                           ; preds = %for.body84, %for.body191, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc199.attackers.14, %for.body191 ], [ %inc92.attackers.6, %for.body84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_attacked(i32 %square, i32 %color) #0 {
entry:
  %and = and i32 %color, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %for.body66, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv251
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %0, %square
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  switch i32 %1, label %while.body [
    i32 1, label %land.lhs.true
    i32 5, label %return
    i32 0, label %for.inc
  ]

land.lhs.true:                                    ; preds = %for.body
  %and4 = and i64 %indvars.iv251, 1
  %tobool5 = icmp eq i64 %and4, 0
  br i1 %tobool5, label %while.body, label %return

while.body:                                       ; preds = %for.body, %land.lhs.true, %if.end17
  %basq.0230 = phi i32 [ %4, %if.end17 ], [ 1, %land.lhs.true ], [ %1, %for.body ]
  %a_sq.0229 = phi i32 [ %add18, %if.end17 ], [ %add, %land.lhs.true ], [ %add, %for.body ]
  %2 = and i32 %basq.0230, -3
  %3 = icmp eq i32 %2, 9
  br i1 %3, label %return, label %if.end14

if.end14:                                         ; preds = %while.body
  %cmp15 = icmp eq i32 %basq.0230, 13
  br i1 %cmp15, label %if.end17, label %for.inc

if.end17:                                         ; preds = %if.end14
  %add18 = add nsw i32 %a_sq.0229, %0
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom19
  %4 = load i32* %arrayidx20, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %for.inc, label %while.body

for.inc:                                          ; preds = %for.body, %if.end17, %if.end14
  %indvars.iv.next252 = add i64 %indvars.iv251, 1
  %5 = trunc i64 %indvars.iv.next252 to i32
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %for.body, label %for.body23

for.cond21:                                       ; preds = %for.body23
  %6 = trunc i64 %indvars.iv.next247 to i32
  %cmp22 = icmp slt i32 %6, 8
  br i1 %cmp22, label %for.body23, label %for.body37

for.body23:                                       ; preds = %for.inc, %for.cond21
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.cond21 ], [ 0, %for.inc ]
  %arrayidx25 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv246
  %7 = load i32* %arrayidx25, align 4, !tbaa !0
  %add26 = add nsw i32 %7, %square
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom27
  %8 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %8, 3
  %indvars.iv.next247 = add i64 %indvars.iv246, 1
  br i1 %cmp29, label %return, label %for.cond21

for.body37:                                       ; preds = %for.cond21, %for.inc61
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.inc61 ], [ 0, %for.cond21 ]
  %arrayidx39 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv244
  %9 = load i32* %arrayidx39, align 4, !tbaa !0
  %add40 = add nsw i32 %9, %square
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom41
  %10 = load i32* %arrayidx42, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %10, 5
  br i1 %cmp43, label %return, label %while.cond46

while.cond46:                                     ; preds = %for.body37, %if.end56
  %a_sq.1 = phi i32 [ %add57, %if.end56 ], [ %add40, %for.body37 ]
  %basq.1 = phi i32 [ %11, %if.end56 ], [ %10, %for.body37 ]
  switch i32 %basq.1, label %for.inc61 [
    i32 13, label %if.end56
    i32 9, label %return
    i32 7, label %return
  ]

if.end56:                                         ; preds = %while.cond46
  %add57 = add nsw i32 %a_sq.1, %9
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  %11 = load i32* %arrayidx59, align 4, !tbaa !0
  br label %while.cond46

for.inc61:                                        ; preds = %while.cond46
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  %12 = trunc i64 %indvars.iv.next245 to i32
  %cmp36 = icmp slt i32 %12, 4
  br i1 %cmp36, label %for.body37, label %return

for.body66:                                       ; preds = %entry, %for.inc96
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %for.inc96 ], [ 0, %entry ]
  %arrayidx68 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv239
  %13 = load i32* %arrayidx68, align 4, !tbaa !0
  %add69 = add nsw i32 %13, %square
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom70
  %14 = load i32* %arrayidx71, align 4, !tbaa !0
  switch i32 %14, label %while.cond81 [
    i32 2, label %land.lhs.true73
    i32 6, label %return
  ]

land.lhs.true73:                                  ; preds = %for.body66
  %and74 = and i64 %indvars.iv239, 1
  %tobool75 = icmp eq i64 %and74, 0
  br i1 %tobool75, label %return, label %while.cond81

while.cond81:                                     ; preds = %land.lhs.true73, %for.body66, %if.end91
  %a_sq.2 = phi i32 [ %add92, %if.end91 ], [ %add69, %for.body66 ], [ %add69, %land.lhs.true73 ]
  %basq.2 = phi i32 [ %15, %if.end91 ], [ %14, %for.body66 ], [ 2, %land.lhs.true73 ]
  switch i32 %basq.2, label %for.inc96 [
    i32 13, label %if.end91
    i32 12, label %return
    i32 10, label %return
  ]

if.end91:                                         ; preds = %while.cond81
  %add92 = add nsw i32 %a_sq.2, %13
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom93
  %15 = load i32* %arrayidx94, align 4, !tbaa !0
  br label %while.cond81

for.inc96:                                        ; preds = %while.cond81
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %16 = trunc i64 %indvars.iv.next240 to i32
  %cmp65 = icmp slt i32 %16, 4
  br i1 %cmp65, label %for.body66, label %for.body101

for.cond99:                                       ; preds = %for.body101
  %17 = trunc i64 %indvars.iv.next235 to i32
  %cmp100 = icmp slt i32 %17, 8
  br i1 %cmp100, label %for.body101, label %for.body115

for.body101:                                      ; preds = %for.inc96, %for.cond99
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.cond99 ], [ 0, %for.inc96 ]
  %arrayidx103 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv234
  %18 = load i32* %arrayidx103, align 4, !tbaa !0
  %add104 = add nsw i32 %18, %square
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom105
  %19 = load i32* %arrayidx106, align 4, !tbaa !0
  %cmp107 = icmp eq i32 %19, 4
  %indvars.iv.next235 = add i64 %indvars.iv234, 1
  br i1 %cmp107, label %return, label %for.cond99

for.body115:                                      ; preds = %for.cond99, %for.inc141
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc141 ], [ 0, %for.cond99 ]
  %arrayidx117 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv
  %20 = load i32* %arrayidx117, align 4, !tbaa !0
  %add120 = add nsw i32 %20, %square
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom121
  %21 = load i32* %arrayidx122, align 4, !tbaa !0
  switch i32 %21, label %while.body128 [
    i32 6, label %return
    i32 0, label %for.inc141
  ]

while.body128:                                    ; preds = %for.body115, %if.end136
  %basq.3213 = phi i32 [ %24, %if.end136 ], [ %21, %for.body115 ]
  %a_sq.3212 = phi i32 [ %add137, %if.end136 ], [ %add120, %for.body115 ]
  %22 = and i32 %basq.3213, -3
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %return, label %if.end133

if.end133:                                        ; preds = %while.body128
  %cmp134 = icmp eq i32 %basq.3213, 13
  br i1 %cmp134, label %if.end136, label %for.inc141

if.end136:                                        ; preds = %if.end133
  %add137 = add nsw i32 %a_sq.3212, %20
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom138
  %24 = load i32* %arrayidx139, align 4, !tbaa !0
  %cmp127 = icmp eq i32 %24, 0
  br i1 %cmp127, label %for.inc141, label %while.body128

for.inc141:                                       ; preds = %for.body115, %if.end136, %if.end133
  %indvars.iv.next = add i64 %indvars.iv, 1
  %25 = trunc i64 %indvars.iv.next to i32
  %cmp114 = icmp slt i32 %25, 4
  br i1 %cmp114, label %for.body115, label %return

return:                                           ; preds = %for.body115, %for.body, %land.lhs.true, %while.body, %for.body23, %for.inc61, %for.body37, %while.cond46, %while.cond46, %for.body66, %land.lhs.true73, %while.cond81, %while.cond81, %for.body101, %for.inc141, %while.body128
  %retval.0 = phi i32 [ 1, %while.body128 ], [ 0, %for.inc141 ], [ 1, %for.body115 ], [ 1, %for.body101 ], [ 1, %while.cond81 ], [ 1, %while.cond81 ], [ 1, %land.lhs.true73 ], [ 1, %for.body66 ], [ 1, %while.cond46 ], [ 1, %while.cond46 ], [ 0, %for.inc61 ], [ 1, %for.body37 ], [ 1, %for.body23 ], [ 1, %while.body ], [ 1, %for.body ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @nk_attacked(i32 %square, i32 %color) #0 {
entry:
  %and = and i32 %color, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %for.body60, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv236
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %0, %square
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  switch i32 %1, label %while.body [
    i32 1, label %land.lhs.true
    i32 0, label %for.inc
  ]

land.lhs.true:                                    ; preds = %for.body
  %and4 = and i64 %indvars.iv236, 1
  %tobool5 = icmp eq i64 %and4, 0
  br i1 %tobool5, label %while.body, label %return

while.body:                                       ; preds = %for.body, %land.lhs.true, %if.end14
  %basq.0215 = phi i32 [ %4, %if.end14 ], [ 1, %land.lhs.true ], [ %1, %for.body ]
  %a_sq.0214 = phi i32 [ %add15, %if.end14 ], [ %add, %land.lhs.true ], [ %add, %for.body ]
  %2 = and i32 %basq.0215, -3
  %3 = icmp eq i32 %2, 9
  br i1 %3, label %return, label %if.end11

if.end11:                                         ; preds = %while.body
  %cmp12 = icmp eq i32 %basq.0215, 13
  br i1 %cmp12, label %if.end14, label %for.inc

if.end14:                                         ; preds = %if.end11
  %add15 = add nsw i32 %a_sq.0214, %0
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom16
  %4 = load i32* %arrayidx17, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %for.inc, label %while.body

for.inc:                                          ; preds = %for.body, %if.end14, %if.end11
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %5 = trunc i64 %indvars.iv.next237 to i32
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %for.body, label %for.body20

for.cond18:                                       ; preds = %for.body20
  %6 = trunc i64 %indvars.iv.next232 to i32
  %cmp19 = icmp slt i32 %6, 8
  br i1 %cmp19, label %for.body20, label %for.body34

for.body20:                                       ; preds = %for.inc, %for.cond18
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %for.cond18 ], [ 0, %for.inc ]
  %arrayidx22 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv231
  %7 = load i32* %arrayidx22, align 4, !tbaa !0
  %add23 = add nsw i32 %7, %square
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom24
  %8 = load i32* %arrayidx25, align 4, !tbaa !0
  %cmp26 = icmp eq i32 %8, 3
  %indvars.iv.next232 = add i64 %indvars.iv231, 1
  br i1 %cmp26, label %return, label %for.cond18

for.body34:                                       ; preds = %for.cond18, %for.inc55
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %for.inc55 ], [ 0, %for.cond18 ]
  %arrayidx36 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv229
  %9 = load i32* %arrayidx36, align 4, !tbaa !0
  %10 = add i32 %9, %square
  %11 = sext i32 %10 to i64
  %12 = sext i32 %9 to i64
  br label %while.cond40

while.cond40:                                     ; preds = %if.end50, %for.body34
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %if.end50 ], [ %11, %for.body34 ]
  %basq.1.in = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv226
  %basq.1 = load i32* %basq.1.in, align 4
  switch i32 %basq.1, label %for.inc55 [
    i32 13, label %if.end50
    i32 9, label %return
    i32 7, label %return
  ]

if.end50:                                         ; preds = %while.cond40
  %indvars.iv.next227 = add i64 %indvars.iv226, %12
  br label %while.cond40

for.inc55:                                        ; preds = %while.cond40
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %13 = trunc i64 %indvars.iv.next230 to i32
  %cmp33 = icmp slt i32 %13, 4
  br i1 %cmp33, label %for.body34, label %return

for.body60:                                       ; preds = %entry, %for.inc87
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.inc87 ], [ 0, %entry ]
  %arrayidx62 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv224
  %14 = load i32* %arrayidx62, align 4, !tbaa !0
  %add63 = add nsw i32 %14, %square
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64
  %15 = load i32* %arrayidx65, align 4, !tbaa !0
  %cmp66 = icmp eq i32 %15, 2
  br i1 %cmp66, label %land.lhs.true67, label %while.cond72

land.lhs.true67:                                  ; preds = %for.body60
  %and68 = and i64 %indvars.iv224, 1
  %tobool69 = icmp eq i64 %and68, 0
  br i1 %tobool69, label %return, label %while.cond72

while.cond72:                                     ; preds = %land.lhs.true67, %for.body60, %if.end82
  %a_sq.2 = phi i32 [ %add83, %if.end82 ], [ %add63, %for.body60 ], [ %add63, %land.lhs.true67 ]
  %basq.2 = phi i32 [ %16, %if.end82 ], [ %15, %for.body60 ], [ 2, %land.lhs.true67 ]
  switch i32 %basq.2, label %for.inc87 [
    i32 13, label %if.end82
    i32 12, label %return
    i32 10, label %return
  ]

if.end82:                                         ; preds = %while.cond72
  %add83 = add nsw i32 %a_sq.2, %14
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom84
  %16 = load i32* %arrayidx85, align 4, !tbaa !0
  br label %while.cond72

for.inc87:                                        ; preds = %while.cond72
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %17 = trunc i64 %indvars.iv.next225 to i32
  %cmp59 = icmp slt i32 %17, 4
  br i1 %cmp59, label %for.body60, label %for.body92

for.cond90:                                       ; preds = %for.body92
  %18 = trunc i64 %indvars.iv.next220 to i32
  %cmp91 = icmp slt i32 %18, 8
  br i1 %cmp91, label %for.body92, label %for.body106

for.body92:                                       ; preds = %for.inc87, %for.cond90
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %for.cond90 ], [ 0, %for.inc87 ]
  %arrayidx94 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv219
  %19 = load i32* %arrayidx94, align 4, !tbaa !0
  %add95 = add nsw i32 %19, %square
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom96
  %20 = load i32* %arrayidx97, align 4, !tbaa !0
  %cmp98 = icmp eq i32 %20, 4
  %indvars.iv.next220 = add i64 %indvars.iv219, 1
  br i1 %cmp98, label %return, label %for.cond90

for.body106:                                      ; preds = %for.cond90, %for.inc129
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc129 ], [ 0, %for.cond90 ]
  %arrayidx108 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv
  %21 = load i32* %arrayidx108, align 4, !tbaa !0
  %add111 = add nsw i32 %21, %square
  %idxprom112.pn194 = sext i32 %add111 to i64
  %basq.3.in195 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom112.pn194
  %basq.3196 = load i32* %basq.3.in195, align 4
  %cmp115197 = icmp eq i32 %basq.3196, 0
  br i1 %cmp115197, label %for.inc129, label %while.body116

while.cond114:                                    ; preds = %if.end121
  %idxprom112.pn = sext i32 %add125 to i64
  %basq.3.in = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom112.pn
  %basq.3 = load i32* %basq.3.in, align 4
  %cmp115 = icmp eq i32 %basq.3, 0
  br i1 %cmp115, label %for.inc129, label %while.body116

while.body116:                                    ; preds = %for.body106, %while.cond114
  %basq.3199 = phi i32 [ %basq.3, %while.cond114 ], [ %basq.3196, %for.body106 ]
  %a_sq.3198 = phi i32 [ %add125, %while.cond114 ], [ %add111, %for.body106 ]
  %22 = and i32 %basq.3199, -3
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %return, label %if.end121

if.end121:                                        ; preds = %while.body116
  %cmp122 = icmp eq i32 %basq.3199, 13
  %add125 = add nsw i32 %a_sq.3198, %21
  br i1 %cmp122, label %while.cond114, label %for.inc129

for.inc129:                                       ; preds = %while.cond114, %if.end121, %for.body106
  %indvars.iv.next = add i64 %indvars.iv, 1
  %24 = trunc i64 %indvars.iv.next to i32
  %cmp105 = icmp slt i32 %24, 4
  br i1 %cmp105, label %for.body106, label %return

return:                                           ; preds = %land.lhs.true, %while.body, %for.body20, %for.inc55, %while.cond40, %while.cond40, %land.lhs.true67, %while.cond72, %while.cond72, %for.body92, %for.inc129, %while.body116
  %retval.0 = phi i32 [ 1, %while.body116 ], [ 0, %for.inc129 ], [ 1, %for.body92 ], [ 1, %while.cond72 ], [ 1, %while.cond72 ], [ 1, %land.lhs.true67 ], [ 1, %while.cond40 ], [ 1, %while.cond40 ], [ 0, %for.inc55 ], [ 1, %for.body20 ], [ 1, %while.body ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
