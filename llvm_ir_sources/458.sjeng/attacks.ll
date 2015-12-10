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
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !16), !dbg !57
  tail call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !17), !dbg !57
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !20), !dbg !58
  %idxprom = sext i32 %square to i64, !dbg !59
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !59
  %0 = load i32* %arrayidx, align 4, !dbg !59, !tbaa !60
  %cmp = icmp eq i32 %0, 0, !dbg !59
  br i1 %cmp, label %return, label %if.end, !dbg !59

if.end:                                           ; preds = %entry
  %rem273 = and i32 %color, 1, !dbg !63
  %tobool = icmp eq i32 %rem273, 0, !dbg !63
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !19), !dbg !64
  br i1 %tobool, label %for.body100, label %for.body, !dbg !63

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.inc ], [ 0, %if.end ]
  %attackers.0295 = phi i32 [ %attackers.1, %for.inc ], [ 0, %if.end ]
  %arrayidx4 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv312, !dbg !67
  %1 = load i32* %arrayidx4, align 4, !dbg !67, !tbaa !60
  %add = add nsw i32 %1, %square, !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !18), !dbg !67
  %idxprom5 = sext i32 %add to i64, !dbg !69
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom5, !dbg !69
  %2 = load i32* %arrayidx6, align 4, !dbg !69, !tbaa !60
  %cmp7 = icmp eq i32 %2, 5, !dbg !69
  br i1 %cmp7, label %if.then8, label %while.cond, !dbg !69

if.then8:                                         ; preds = %for.body
  %inc = add nsw i32 %attackers.0295, 1, !dbg !70
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !20), !dbg !70
  br label %for.body34, !dbg !72

while.cond:                                       ; preds = %for.body, %if.end26
  %3 = phi i32 [ %.pre315, %if.end26 ], [ %2, %for.body ]
  %a_sq.0 = phi i32 [ %add29, %if.end26 ], [ %add, %for.body ]
  switch i32 %3, label %for.inc [
    i32 13, label %if.end26
    i32 7, label %if.then18
    i32 9, label %if.then18
  ], !dbg !73

if.then18:                                        ; preds = %while.cond, %while.cond
  %inc19 = add nsw i32 %attackers.0295, 1, !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %inc19}, i64 0, metadata !20), !dbg !75
  br label %for.inc, !dbg !78

if.end26:                                         ; preds = %while.cond
  %add29 = add nsw i32 %1, %a_sq.0, !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %add29}, i64 0, metadata !18), !dbg !79
  %idxprom9.phi.trans.insert = sext i32 %add29 to i64
  %arrayidx10.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom9.phi.trans.insert
  %.pre315 = load i32* %arrayidx10.phi.trans.insert, align 4, !dbg !73, !tbaa !60
  br label %while.cond, !dbg !80

for.inc:                                          ; preds = %while.cond, %if.then18
  %attackers.1 = phi i32 [ %inc19, %if.then18 ], [ %attackers.0295, %while.cond ]
  %indvars.iv.next313 = add i64 %indvars.iv312, 1, !dbg !64
  %4 = trunc i64 %indvars.iv.next313 to i32, !dbg !64
  %cmp2 = icmp slt i32 %4, 4, !dbg !64
  br i1 %cmp2, label %for.body, label %for.body34, !dbg !64

for.body34:                                       ; preds = %if.then8, %for.inc, %for.inc79
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %for.inc79 ], [ 0, %for.inc ], [ 0, %if.then8 ]
  %attackers.3292 = phi i32 [ %attackers.4, %for.inc79 ], [ %attackers.1, %for.inc ], [ %inc, %if.then8 ]
  %arrayidx36 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv309, !dbg !81
  %5 = load i32* %arrayidx36, align 4, !dbg !81, !tbaa !60
  %add37 = add nsw i32 %5, %square, !dbg !81
  tail call void @llvm.dbg.value(metadata !{i32 %add37}, i64 0, metadata !18), !dbg !81
  %idxprom38 = sext i32 %add37 to i64, !dbg !84
  %arrayidx39 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom38, !dbg !84
  %6 = load i32* %arrayidx39, align 4, !dbg !84, !tbaa !60
  switch i32 %6, label %while.cond52 [
    i32 1, label %land.lhs.true
    i32 5, label %if.then49
  ], !dbg !84

land.lhs.true:                                    ; preds = %for.body34
  %rem41275 = and i64 %indvars.iv309, 1, !dbg !84
  %tobool42 = icmp eq i64 %rem41275, 0, !dbg !84
  br i1 %tobool42, label %while.cond52, label %if.then43, !dbg !84

if.then43:                                        ; preds = %land.lhs.true
  %inc44 = add nsw i32 %attackers.3292, 1, !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !20), !dbg !85
  br label %for.body84, !dbg !87

if.then49:                                        ; preds = %for.body34
  %inc50 = add nsw i32 %attackers.3292, 1, !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !20), !dbg !88
  br label %for.body84, !dbg !90

while.cond52:                                     ; preds = %for.body34, %land.lhs.true, %if.end72
  %7 = phi i32 [ %.pre316, %if.end72 ], [ 1, %land.lhs.true ], [ %6, %for.body34 ]
  %a_sq.1 = phi i32 [ %add75, %if.end72 ], [ %add37, %land.lhs.true ], [ %add37, %for.body34 ]
  switch i32 %7, label %for.inc79 [
    i32 13, label %if.end72
    i32 11, label %if.then64
    i32 9, label %if.then64
  ], !dbg !91

if.then64:                                        ; preds = %while.cond52, %while.cond52
  %inc65 = add nsw i32 %attackers.3292, 1, !dbg !93
  tail call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !20), !dbg !93
  br label %for.inc79, !dbg !96

if.end72:                                         ; preds = %while.cond52
  %add75 = add nsw i32 %5, %a_sq.1, !dbg !97
  tail call void @llvm.dbg.value(metadata !{i32 %add75}, i64 0, metadata !18), !dbg !97
  %idxprom53.phi.trans.insert = sext i32 %add75 to i64
  %arrayidx54.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom53.phi.trans.insert
  %.pre316 = load i32* %arrayidx54.phi.trans.insert, align 4, !dbg !91, !tbaa !60
  br label %while.cond52, !dbg !98

for.inc79:                                        ; preds = %while.cond52, %if.then64
  %attackers.4 = phi i32 [ %inc65, %if.then64 ], [ %attackers.3292, %while.cond52 ]
  %indvars.iv.next310 = add i64 %indvars.iv309, 1, !dbg !99
  %8 = trunc i64 %indvars.iv.next310 to i32, !dbg !99
  %cmp33 = icmp slt i32 %8, 4, !dbg !99
  br i1 %cmp33, label %for.body34, label %for.body84, !dbg !99

for.body84:                                       ; preds = %if.then43, %if.then49, %for.inc79, %for.body84
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %for.body84 ], [ 0, %for.inc79 ], [ 0, %if.then49 ], [ 0, %if.then43 ]
  %attackers.6288 = phi i32 [ %inc92.attackers.6, %for.body84 ], [ %attackers.4, %for.inc79 ], [ %inc50, %if.then49 ], [ %inc44, %if.then43 ]
  %arrayidx86 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv303, !dbg !100
  %9 = load i32* %arrayidx86, align 4, !dbg !100, !tbaa !60
  %add87 = add nsw i32 %9, %square, !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %add87}, i64 0, metadata !18), !dbg !100
  %idxprom88 = sext i32 %add87 to i64, !dbg !103
  %arrayidx89 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom88, !dbg !103
  %10 = load i32* %arrayidx89, align 4, !dbg !103, !tbaa !60
  %cmp90 = icmp eq i32 %10, 3, !dbg !103
  %inc92 = zext i1 %cmp90 to i32, !dbg !103
  %inc92.attackers.6 = add nsw i32 %inc92, %attackers.6288, !dbg !103
  %indvars.iv.next304 = add i64 %indvars.iv303, 1, !dbg !104
  %lftr.wideiv305 = trunc i64 %indvars.iv.next304 to i32, !dbg !104
  %exitcond306 = icmp eq i32 %lftr.wideiv305, 8, !dbg !104
  br i1 %exitcond306, label %return, label %for.body84, !dbg !104

for.body100:                                      ; preds = %if.end, %for.inc135
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %for.inc135 ], [ 0, %if.end ]
  %attackers.8285 = phi i32 [ %attackers.9, %for.inc135 ], [ 0, %if.end ]
  %arrayidx102 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv301, !dbg !105
  %11 = load i32* %arrayidx102, align 4, !dbg !105, !tbaa !60
  %add103 = add nsw i32 %11, %square, !dbg !105
  tail call void @llvm.dbg.value(metadata !{i32 %add103}, i64 0, metadata !18), !dbg !105
  %idxprom104 = sext i32 %add103 to i64, !dbg !109
  %arrayidx105 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom104, !dbg !109
  %12 = load i32* %arrayidx105, align 4, !dbg !109, !tbaa !60
  %cmp106 = icmp eq i32 %12, 6, !dbg !109
  br i1 %cmp106, label %if.then107, label %while.cond110, !dbg !109

if.then107:                                       ; preds = %for.body100
  %inc108 = add nsw i32 %attackers.8285, 1, !dbg !110
  tail call void @llvm.dbg.value(metadata !{i32 %inc108}, i64 0, metadata !20), !dbg !110
  br label %for.body140, !dbg !112

while.cond110:                                    ; preds = %for.body100, %if.end129
  %13 = phi i32 [ %.pre, %if.end129 ], [ %12, %for.body100 ]
  %a_sq.2 = phi i32 [ %add132, %if.end129 ], [ %add103, %for.body100 ]
  switch i32 %13, label %for.inc135 [
    i32 13, label %if.end129
    i32 8, label %if.then122
    i32 10, label %if.then122
  ], !dbg !113

if.then122:                                       ; preds = %while.cond110, %while.cond110
  %inc123 = add nsw i32 %attackers.8285, 1, !dbg !115
  tail call void @llvm.dbg.value(metadata !{i32 %inc123}, i64 0, metadata !20), !dbg !115
  br label %for.inc135, !dbg !118

if.end129:                                        ; preds = %while.cond110
  %add132 = add nsw i32 %11, %a_sq.2, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %add132}, i64 0, metadata !18), !dbg !119
  %idxprom111.phi.trans.insert = sext i32 %add132 to i64
  %arrayidx112.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom111.phi.trans.insert
  %.pre = load i32* %arrayidx112.phi.trans.insert, align 4, !dbg !113, !tbaa !60
  br label %while.cond110, !dbg !120

for.inc135:                                       ; preds = %while.cond110, %if.then122
  %attackers.9 = phi i32 [ %inc123, %if.then122 ], [ %attackers.8285, %while.cond110 ]
  %indvars.iv.next302 = add i64 %indvars.iv301, 1, !dbg !121
  %14 = trunc i64 %indvars.iv.next302 to i32, !dbg !121
  %cmp99 = icmp slt i32 %14, 4, !dbg !121
  br i1 %cmp99, label %for.body100, label %for.body140, !dbg !121

for.body140:                                      ; preds = %if.then107, %for.inc135, %for.inc186
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %for.inc186 ], [ 0, %for.inc135 ], [ 0, %if.then107 ]
  %attackers.11282 = phi i32 [ %attackers.12, %for.inc186 ], [ %attackers.9, %for.inc135 ], [ %inc108, %if.then107 ]
  %arrayidx142 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv298, !dbg !122
  %15 = load i32* %arrayidx142, align 4, !dbg !122, !tbaa !60
  %add143 = add nsw i32 %15, %square, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32 %add143}, i64 0, metadata !18), !dbg !122
  %idxprom144 = sext i32 %add143 to i64, !dbg !125
  %arrayidx145 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom144, !dbg !125
  %16 = load i32* %arrayidx145, align 4, !dbg !125, !tbaa !60
  switch i32 %16, label %while.cond159 [
    i32 2, label %land.lhs.true147
    i32 6, label %if.then156
  ], !dbg !125

land.lhs.true147:                                 ; preds = %for.body140
  %rem148274 = and i64 %indvars.iv298, 1, !dbg !125
  %tobool149 = icmp eq i64 %rem148274, 0, !dbg !125
  br i1 %tobool149, label %if.then150, label %while.cond159, !dbg !125

if.then150:                                       ; preds = %land.lhs.true147
  %inc151 = add nsw i32 %attackers.11282, 1, !dbg !126
  tail call void @llvm.dbg.value(metadata !{i32 %inc151}, i64 0, metadata !20), !dbg !126
  br label %for.body191, !dbg !128

if.then156:                                       ; preds = %for.body140
  %inc157 = add nsw i32 %attackers.11282, 1, !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %inc157}, i64 0, metadata !20), !dbg !129
  br label %for.body191, !dbg !131

while.cond159:                                    ; preds = %for.body140, %land.lhs.true147, %if.end179
  %17 = phi i32 [ %.pre314, %if.end179 ], [ 2, %land.lhs.true147 ], [ %16, %for.body140 ]
  %a_sq.3 = phi i32 [ %add182, %if.end179 ], [ %add143, %land.lhs.true147 ], [ %add143, %for.body140 ]
  switch i32 %17, label %for.inc186 [
    i32 13, label %if.end179
    i32 12, label %if.then171
    i32 10, label %if.then171
  ], !dbg !132

if.then171:                                       ; preds = %while.cond159, %while.cond159
  %inc172 = add nsw i32 %attackers.11282, 1, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32 %inc172}, i64 0, metadata !20), !dbg !134
  br label %for.inc186, !dbg !137

if.end179:                                        ; preds = %while.cond159
  %add182 = add nsw i32 %15, %a_sq.3, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %add182}, i64 0, metadata !18), !dbg !138
  %idxprom160.phi.trans.insert = sext i32 %add182 to i64
  %arrayidx161.phi.trans.insert = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom160.phi.trans.insert
  %.pre314 = load i32* %arrayidx161.phi.trans.insert, align 4, !dbg !132, !tbaa !60
  br label %while.cond159, !dbg !139

for.inc186:                                       ; preds = %while.cond159, %if.then171
  %attackers.12 = phi i32 [ %inc172, %if.then171 ], [ %attackers.11282, %while.cond159 ]
  %indvars.iv.next299 = add i64 %indvars.iv298, 1, !dbg !140
  %18 = trunc i64 %indvars.iv.next299 to i32, !dbg !140
  %cmp139 = icmp slt i32 %18, 4, !dbg !140
  br i1 %cmp139, label %for.body140, label %for.body191, !dbg !140

for.body191:                                      ; preds = %if.then150, %if.then156, %for.inc186, %for.body191
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body191 ], [ 0, %for.inc186 ], [ 0, %if.then156 ], [ 0, %if.then150 ]
  %attackers.14278 = phi i32 [ %inc199.attackers.14, %for.body191 ], [ %attackers.12, %for.inc186 ], [ %inc157, %if.then156 ], [ %inc151, %if.then150 ]
  %arrayidx193 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv, !dbg !141
  %19 = load i32* %arrayidx193, align 4, !dbg !141, !tbaa !60
  %add194 = add nsw i32 %19, %square, !dbg !141
  tail call void @llvm.dbg.value(metadata !{i32 %add194}, i64 0, metadata !18), !dbg !141
  %idxprom195 = sext i32 %add194 to i64, !dbg !144
  %arrayidx196 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom195, !dbg !144
  %20 = load i32* %arrayidx196, align 4, !dbg !144, !tbaa !60
  %cmp197 = icmp eq i32 %20, 4, !dbg !144
  %inc199 = zext i1 %cmp197 to i32, !dbg !144
  %inc199.attackers.14 = add nsw i32 %inc199, %attackers.14278, !dbg !144
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !145
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !145
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !145
  br i1 %exitcond, label %return, label %for.body191, !dbg !145

return:                                           ; preds = %for.body84, %for.body191, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc199.attackers.14, %for.body191 ], [ %inc92.attackers.6, %for.body84 ]
  ret i32 %retval.0, !dbg !146
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_attacked(i32 %square, i32 %color) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !26), !dbg !147
  tail call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !27), !dbg !147
  %and = and i32 %color, 1, !dbg !148
  %tobool = icmp eq i32 %and, 0, !dbg !148
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !31), !dbg !149
  br i1 %tobool, label %for.body66, label %for.body, !dbg !148

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv251, !dbg !152
  %0 = load i32* %arrayidx, align 4, !dbg !152, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !28), !dbg !152
  %add = add nsw i32 %0, %square, !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !29), !dbg !154
  %idxprom1 = sext i32 %add to i64, !dbg !155
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !155
  %1 = load i32* %arrayidx2, align 4, !dbg !155, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !30), !dbg !155
  switch i32 %1, label %while.body [
    i32 1, label %land.lhs.true
    i32 5, label %return
    i32 0, label %for.inc
  ], !dbg !156

land.lhs.true:                                    ; preds = %for.body
  %and4 = and i64 %indvars.iv251, 1, !dbg !156
  %tobool5 = icmp eq i64 %and4, 0, !dbg !156
  br i1 %tobool5, label %while.body, label %return, !dbg !156

while.body:                                       ; preds = %for.body, %land.lhs.true, %if.end17
  %basq.0230 = phi i32 [ %4, %if.end17 ], [ 1, %land.lhs.true ], [ %1, %for.body ]
  %a_sq.0229 = phi i32 [ %add18, %if.end17 ], [ %add, %land.lhs.true ], [ %add, %for.body ]
  %2 = and i32 %basq.0230, -3, !dbg !157
  %3 = icmp eq i32 %2, 9, !dbg !157
  br i1 %3, label %return, label %if.end14, !dbg !157

if.end14:                                         ; preds = %while.body
  %cmp15 = icmp eq i32 %basq.0230, 13, !dbg !159
  br i1 %cmp15, label %if.end17, label %for.inc, !dbg !159

if.end17:                                         ; preds = %if.end14
  %add18 = add nsw i32 %a_sq.0229, %0, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !29), !dbg !160
  %idxprom19 = sext i32 %add18 to i64, !dbg !161
  %arrayidx20 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom19, !dbg !161
  %4 = load i32* %arrayidx20, align 4, !dbg !161, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !30), !dbg !161
  %cmp10 = icmp eq i32 %4, 0, !dbg !162
  br i1 %cmp10, label %for.inc, label %while.body, !dbg !162

for.inc:                                          ; preds = %for.body, %if.end17, %if.end14
  %indvars.iv.next252 = add i64 %indvars.iv251, 1, !dbg !149
  %5 = trunc i64 %indvars.iv.next252 to i32, !dbg !149
  %cmp = icmp slt i32 %5, 4, !dbg !149
  br i1 %cmp, label %for.body, label %for.body23, !dbg !149

for.cond21:                                       ; preds = %for.body23
  %6 = trunc i64 %indvars.iv.next247 to i32, !dbg !163
  %cmp22 = icmp slt i32 %6, 8, !dbg !163
  br i1 %cmp22, label %for.body23, label %for.body37, !dbg !163

for.body23:                                       ; preds = %for.inc, %for.cond21
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.cond21 ], [ 0, %for.inc ]
  %arrayidx25 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv246, !dbg !165
  %7 = load i32* %arrayidx25, align 4, !dbg !165, !tbaa !60
  %add26 = add nsw i32 %7, %square, !dbg !165
  %idxprom27 = sext i32 %add26 to i64, !dbg !165
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom27, !dbg !165
  %8 = load i32* %arrayidx28, align 4, !dbg !165, !tbaa !60
  %cmp29 = icmp eq i32 %8, 3, !dbg !165
  %indvars.iv.next247 = add i64 %indvars.iv246, 1, !dbg !163
  br i1 %cmp29, label %return, label %for.cond21, !dbg !165

for.body37:                                       ; preds = %for.cond21, %for.inc61
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.inc61 ], [ 0, %for.cond21 ]
  %arrayidx39 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv244, !dbg !167
  %9 = load i32* %arrayidx39, align 4, !dbg !167, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !28), !dbg !167
  %add40 = add nsw i32 %9, %square, !dbg !170
  tail call void @llvm.dbg.value(metadata !{i32 %add40}, i64 0, metadata !29), !dbg !170
  %idxprom41 = sext i32 %add40 to i64, !dbg !171
  %arrayidx42 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom41, !dbg !171
  %10 = load i32* %arrayidx42, align 4, !dbg !171, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !30), !dbg !171
  %cmp43 = icmp eq i32 %10, 5, !dbg !172
  br i1 %cmp43, label %return, label %while.cond46, !dbg !172

while.cond46:                                     ; preds = %for.body37, %if.end56
  %a_sq.1 = phi i32 [ %add57, %if.end56 ], [ %add40, %for.body37 ]
  %basq.1 = phi i32 [ %11, %if.end56 ], [ %10, %for.body37 ]
  switch i32 %basq.1, label %for.inc61 [
    i32 13, label %if.end56
    i32 9, label %return
    i32 7, label %return
  ], !dbg !173

if.end56:                                         ; preds = %while.cond46
  %add57 = add nsw i32 %a_sq.1, %9, !dbg !174
  tail call void @llvm.dbg.value(metadata !{i32 %add57}, i64 0, metadata !29), !dbg !174
  %idxprom58 = sext i32 %add57 to i64, !dbg !176
  %arrayidx59 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58, !dbg !176
  %11 = load i32* %arrayidx59, align 4, !dbg !176, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !30), !dbg !176
  br label %while.cond46, !dbg !177

for.inc61:                                        ; preds = %while.cond46
  %indvars.iv.next245 = add i64 %indvars.iv244, 1, !dbg !178
  %12 = trunc i64 %indvars.iv.next245 to i32, !dbg !178
  %cmp36 = icmp slt i32 %12, 4, !dbg !178
  br i1 %cmp36, label %for.body37, label %return, !dbg !178

for.body66:                                       ; preds = %entry, %for.inc96
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %for.inc96 ], [ 0, %entry ]
  %arrayidx68 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv239, !dbg !179
  %13 = load i32* %arrayidx68, align 4, !dbg !179, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !28), !dbg !179
  %add69 = add nsw i32 %13, %square, !dbg !183
  tail call void @llvm.dbg.value(metadata !{i32 %add69}, i64 0, metadata !29), !dbg !183
  %idxprom70 = sext i32 %add69 to i64, !dbg !184
  %arrayidx71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom70, !dbg !184
  %14 = load i32* %arrayidx71, align 4, !dbg !184, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !30), !dbg !184
  switch i32 %14, label %while.cond81 [
    i32 2, label %land.lhs.true73
    i32 6, label %return
  ], !dbg !185

land.lhs.true73:                                  ; preds = %for.body66
  %and74 = and i64 %indvars.iv239, 1, !dbg !185
  %tobool75 = icmp eq i64 %and74, 0, !dbg !185
  br i1 %tobool75, label %return, label %while.cond81, !dbg !185

while.cond81:                                     ; preds = %land.lhs.true73, %for.body66, %if.end91
  %a_sq.2 = phi i32 [ %add92, %if.end91 ], [ %add69, %for.body66 ], [ %add69, %land.lhs.true73 ]
  %basq.2 = phi i32 [ %15, %if.end91 ], [ %14, %for.body66 ], [ 2, %land.lhs.true73 ]
  switch i32 %basq.2, label %for.inc96 [
    i32 13, label %if.end91
    i32 12, label %return
    i32 10, label %return
  ], !dbg !186

if.end91:                                         ; preds = %while.cond81
  %add92 = add nsw i32 %a_sq.2, %13, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %add92}, i64 0, metadata !29), !dbg !187
  %idxprom93 = sext i32 %add92 to i64, !dbg !189
  %arrayidx94 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom93, !dbg !189
  %15 = load i32* %arrayidx94, align 4, !dbg !189, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !30), !dbg !189
  br label %while.cond81, !dbg !190

for.inc96:                                        ; preds = %while.cond81
  %indvars.iv.next240 = add i64 %indvars.iv239, 1, !dbg !191
  %16 = trunc i64 %indvars.iv.next240 to i32, !dbg !191
  %cmp65 = icmp slt i32 %16, 4, !dbg !191
  br i1 %cmp65, label %for.body66, label %for.body101, !dbg !191

for.cond99:                                       ; preds = %for.body101
  %17 = trunc i64 %indvars.iv.next235 to i32, !dbg !192
  %cmp100 = icmp slt i32 %17, 8, !dbg !192
  br i1 %cmp100, label %for.body101, label %for.body115, !dbg !192

for.body101:                                      ; preds = %for.inc96, %for.cond99
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.cond99 ], [ 0, %for.inc96 ]
  %arrayidx103 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv234, !dbg !194
  %18 = load i32* %arrayidx103, align 4, !dbg !194, !tbaa !60
  %add104 = add nsw i32 %18, %square, !dbg !194
  %idxprom105 = sext i32 %add104 to i64, !dbg !194
  %arrayidx106 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom105, !dbg !194
  %19 = load i32* %arrayidx106, align 4, !dbg !194, !tbaa !60
  %cmp107 = icmp eq i32 %19, 4, !dbg !194
  %indvars.iv.next235 = add i64 %indvars.iv234, 1, !dbg !192
  br i1 %cmp107, label %return, label %for.cond99, !dbg !194

for.body115:                                      ; preds = %for.cond99, %for.inc141
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc141 ], [ 0, %for.cond99 ]
  %arrayidx117 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv, !dbg !196
  %20 = load i32* %arrayidx117, align 4, !dbg !196, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !28), !dbg !196
  %add120 = add nsw i32 %20, %square, !dbg !199
  tail call void @llvm.dbg.value(metadata !{i32 %add120}, i64 0, metadata !29), !dbg !199
  %idxprom121 = sext i32 %add120 to i64, !dbg !200
  %arrayidx122 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom121, !dbg !200
  %21 = load i32* %arrayidx122, align 4, !dbg !200, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !30), !dbg !200
  switch i32 %21, label %while.body128 [
    i32 6, label %return
    i32 0, label %for.inc141
  ], !dbg !201

while.body128:                                    ; preds = %for.body115, %if.end136
  %basq.3213 = phi i32 [ %24, %if.end136 ], [ %21, %for.body115 ]
  %a_sq.3212 = phi i32 [ %add137, %if.end136 ], [ %add120, %for.body115 ]
  %22 = and i32 %basq.3213, -3, !dbg !202
  %23 = icmp eq i32 %22, 8, !dbg !202
  br i1 %23, label %return, label %if.end133, !dbg !202

if.end133:                                        ; preds = %while.body128
  %cmp134 = icmp eq i32 %basq.3213, 13, !dbg !204
  br i1 %cmp134, label %if.end136, label %for.inc141, !dbg !204

if.end136:                                        ; preds = %if.end133
  %add137 = add nsw i32 %a_sq.3212, %20, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %add137}, i64 0, metadata !29), !dbg !205
  %idxprom138 = sext i32 %add137 to i64, !dbg !206
  %arrayidx139 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom138, !dbg !206
  %24 = load i32* %arrayidx139, align 4, !dbg !206, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !30), !dbg !206
  %cmp127 = icmp eq i32 %24, 0, !dbg !207
  br i1 %cmp127, label %for.inc141, label %while.body128, !dbg !207

for.inc141:                                       ; preds = %for.body115, %if.end136, %if.end133
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !208
  %25 = trunc i64 %indvars.iv.next to i32, !dbg !208
  %cmp114 = icmp slt i32 %25, 4, !dbg !208
  br i1 %cmp114, label %for.body115, label %return, !dbg !208

return:                                           ; preds = %for.body115, %for.body, %land.lhs.true, %while.body, %for.body23, %for.inc61, %for.body37, %while.cond46, %while.cond46, %for.body66, %land.lhs.true73, %while.cond81, %while.cond81, %for.body101, %for.inc141, %while.body128
  %retval.0 = phi i32 [ 1, %while.body128 ], [ 0, %for.inc141 ], [ 1, %for.body115 ], [ 1, %for.body101 ], [ 1, %while.cond81 ], [ 1, %while.cond81 ], [ 1, %land.lhs.true73 ], [ 1, %for.body66 ], [ 1, %while.cond46 ], [ 1, %while.cond46 ], [ 0, %for.inc61 ], [ 1, %for.body37 ], [ 1, %for.body23 ], [ 1, %while.body ], [ 1, %for.body ], [ 1, %land.lhs.true ]
  ret i32 %retval.0, !dbg !209
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @nk_attacked(i32 %square, i32 %color) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !34), !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !35), !dbg !210
  %and = and i32 %color, 1, !dbg !211
  %tobool = icmp eq i32 %and, 0, !dbg !211
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !39), !dbg !212
  br i1 %tobool, label %for.body60, label %for.body, !dbg !211

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv236, !dbg !215
  %0 = load i32* %arrayidx, align 4, !dbg !215, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !36), !dbg !215
  %add = add nsw i32 %0, %square, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !37), !dbg !217
  %idxprom1 = sext i32 %add to i64, !dbg !218
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !218
  %1 = load i32* %arrayidx2, align 4, !dbg !218, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !38), !dbg !218
  switch i32 %1, label %while.body [
    i32 1, label %land.lhs.true
    i32 0, label %for.inc
  ], !dbg !219

land.lhs.true:                                    ; preds = %for.body
  %and4 = and i64 %indvars.iv236, 1, !dbg !219
  %tobool5 = icmp eq i64 %and4, 0, !dbg !219
  br i1 %tobool5, label %while.body, label %return, !dbg !219

while.body:                                       ; preds = %for.body, %land.lhs.true, %if.end14
  %basq.0215 = phi i32 [ %4, %if.end14 ], [ 1, %land.lhs.true ], [ %1, %for.body ]
  %a_sq.0214 = phi i32 [ %add15, %if.end14 ], [ %add, %land.lhs.true ], [ %add, %for.body ]
  %2 = and i32 %basq.0215, -3, !dbg !220
  %3 = icmp eq i32 %2, 9, !dbg !220
  br i1 %3, label %return, label %if.end11, !dbg !220

if.end11:                                         ; preds = %while.body
  %cmp12 = icmp eq i32 %basq.0215, 13, !dbg !222
  br i1 %cmp12, label %if.end14, label %for.inc, !dbg !222

if.end14:                                         ; preds = %if.end11
  %add15 = add nsw i32 %a_sq.0214, %0, !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %add15}, i64 0, metadata !37), !dbg !223
  %idxprom16 = sext i32 %add15 to i64, !dbg !224
  %arrayidx17 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom16, !dbg !224
  %4 = load i32* %arrayidx17, align 4, !dbg !224, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !38), !dbg !224
  %cmp7 = icmp eq i32 %4, 0, !dbg !225
  br i1 %cmp7, label %for.inc, label %while.body, !dbg !225

for.inc:                                          ; preds = %for.body, %if.end14, %if.end11
  %indvars.iv.next237 = add i64 %indvars.iv236, 1, !dbg !212
  %5 = trunc i64 %indvars.iv.next237 to i32, !dbg !212
  %cmp = icmp slt i32 %5, 4, !dbg !212
  br i1 %cmp, label %for.body, label %for.body20, !dbg !212

for.cond18:                                       ; preds = %for.body20
  %6 = trunc i64 %indvars.iv.next232 to i32, !dbg !226
  %cmp19 = icmp slt i32 %6, 8, !dbg !226
  br i1 %cmp19, label %for.body20, label %for.body34, !dbg !226

for.body20:                                       ; preds = %for.inc, %for.cond18
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %for.cond18 ], [ 0, %for.inc ]
  %arrayidx22 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv231, !dbg !228
  %7 = load i32* %arrayidx22, align 4, !dbg !228, !tbaa !60
  %add23 = add nsw i32 %7, %square, !dbg !228
  %idxprom24 = sext i32 %add23 to i64, !dbg !228
  %arrayidx25 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom24, !dbg !228
  %8 = load i32* %arrayidx25, align 4, !dbg !228, !tbaa !60
  %cmp26 = icmp eq i32 %8, 3, !dbg !228
  %indvars.iv.next232 = add i64 %indvars.iv231, 1, !dbg !226
  br i1 %cmp26, label %return, label %for.cond18, !dbg !228

for.body34:                                       ; preds = %for.cond18, %for.inc55
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %for.inc55 ], [ 0, %for.cond18 ]
  %arrayidx36 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv229, !dbg !230
  %9 = load i32* %arrayidx36, align 4, !dbg !230, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !36), !dbg !230
  %10 = add i32 %9, %square, !dbg !233
  %11 = sext i32 %10 to i64
  %12 = sext i32 %9 to i64
  br label %while.cond40, !dbg !233

while.cond40:                                     ; preds = %if.end50, %for.body34
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %if.end50 ], [ %11, %for.body34 ]
  %basq.1.in = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv226, !dbg !234
  %basq.1 = load i32* %basq.1.in, align 4, !dbg !234
  switch i32 %basq.1, label %for.inc55 [
    i32 13, label %if.end50
    i32 9, label %return
    i32 7, label %return
  ], !dbg !233

if.end50:                                         ; preds = %while.cond40
  %indvars.iv.next227 = add i64 %indvars.iv226, %12, !dbg !235
  br label %while.cond40, !dbg !235

for.inc55:                                        ; preds = %while.cond40
  %indvars.iv.next230 = add i64 %indvars.iv229, 1, !dbg !237
  %13 = trunc i64 %indvars.iv.next230 to i32, !dbg !237
  %cmp33 = icmp slt i32 %13, 4, !dbg !237
  br i1 %cmp33, label %for.body34, label %return, !dbg !237

for.body60:                                       ; preds = %entry, %for.inc87
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.inc87 ], [ 0, %entry ]
  %arrayidx62 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv224, !dbg !238
  %14 = load i32* %arrayidx62, align 4, !dbg !238, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !36), !dbg !238
  %add63 = add nsw i32 %14, %square, !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %add63}, i64 0, metadata !37), !dbg !242
  %idxprom64 = sext i32 %add63 to i64, !dbg !243
  %arrayidx65 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !243
  %15 = load i32* %arrayidx65, align 4, !dbg !243, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !38), !dbg !243
  %cmp66 = icmp eq i32 %15, 2, !dbg !244
  br i1 %cmp66, label %land.lhs.true67, label %while.cond72, !dbg !244

land.lhs.true67:                                  ; preds = %for.body60
  %and68 = and i64 %indvars.iv224, 1, !dbg !244
  %tobool69 = icmp eq i64 %and68, 0, !dbg !244
  br i1 %tobool69, label %return, label %while.cond72, !dbg !244

while.cond72:                                     ; preds = %land.lhs.true67, %for.body60, %if.end82
  %a_sq.2 = phi i32 [ %add83, %if.end82 ], [ %add63, %for.body60 ], [ %add63, %land.lhs.true67 ]
  %basq.2 = phi i32 [ %16, %if.end82 ], [ %15, %for.body60 ], [ 2, %land.lhs.true67 ]
  switch i32 %basq.2, label %for.inc87 [
    i32 13, label %if.end82
    i32 12, label %return
    i32 10, label %return
  ], !dbg !245

if.end82:                                         ; preds = %while.cond72
  %add83 = add nsw i32 %a_sq.2, %14, !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32 %add83}, i64 0, metadata !37), !dbg !246
  %idxprom84 = sext i32 %add83 to i64, !dbg !248
  %arrayidx85 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom84, !dbg !248
  %16 = load i32* %arrayidx85, align 4, !dbg !248, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !38), !dbg !248
  br label %while.cond72, !dbg !249

for.inc87:                                        ; preds = %while.cond72
  %indvars.iv.next225 = add i64 %indvars.iv224, 1, !dbg !250
  %17 = trunc i64 %indvars.iv.next225 to i32, !dbg !250
  %cmp59 = icmp slt i32 %17, 4, !dbg !250
  br i1 %cmp59, label %for.body60, label %for.body92, !dbg !250

for.cond90:                                       ; preds = %for.body92
  %18 = trunc i64 %indvars.iv.next220 to i32, !dbg !251
  %cmp91 = icmp slt i32 %18, 8, !dbg !251
  br i1 %cmp91, label %for.body92, label %for.body106, !dbg !251

for.body92:                                       ; preds = %for.inc87, %for.cond90
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %for.cond90 ], [ 0, %for.inc87 ]
  %arrayidx94 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv219, !dbg !253
  %19 = load i32* %arrayidx94, align 4, !dbg !253, !tbaa !60
  %add95 = add nsw i32 %19, %square, !dbg !253
  %idxprom96 = sext i32 %add95 to i64, !dbg !253
  %arrayidx97 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom96, !dbg !253
  %20 = load i32* %arrayidx97, align 4, !dbg !253, !tbaa !60
  %cmp98 = icmp eq i32 %20, 4, !dbg !253
  %indvars.iv.next220 = add i64 %indvars.iv219, 1, !dbg !251
  br i1 %cmp98, label %return, label %for.cond90, !dbg !253

for.body106:                                      ; preds = %for.cond90, %for.inc129
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc129 ], [ 0, %for.cond90 ]
  %arrayidx108 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv, !dbg !255
  %21 = load i32* %arrayidx108, align 4, !dbg !255, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !36), !dbg !255
  %add111 = add nsw i32 %21, %square, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %add111}, i64 0, metadata !37), !dbg !258
  %idxprom112.pn194 = sext i32 %add111 to i64, !dbg !259
  %basq.3.in195 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom112.pn194, !dbg !259
  %basq.3196 = load i32* %basq.3.in195, align 4, !dbg !259
  %cmp115197 = icmp eq i32 %basq.3196, 0, !dbg !260
  br i1 %cmp115197, label %for.inc129, label %while.body116, !dbg !260

while.cond114:                                    ; preds = %if.end121
  %idxprom112.pn = sext i32 %add125 to i64, !dbg !259
  %basq.3.in = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom112.pn, !dbg !259
  %basq.3 = load i32* %basq.3.in, align 4, !dbg !259
  %cmp115 = icmp eq i32 %basq.3, 0, !dbg !260
  br i1 %cmp115, label %for.inc129, label %while.body116, !dbg !260

while.body116:                                    ; preds = %for.body106, %while.cond114
  %basq.3199 = phi i32 [ %basq.3, %while.cond114 ], [ %basq.3196, %for.body106 ]
  %a_sq.3198 = phi i32 [ %add125, %while.cond114 ], [ %add111, %for.body106 ]
  %22 = and i32 %basq.3199, -3, !dbg !261
  %23 = icmp eq i32 %22, 8, !dbg !261
  br i1 %23, label %return, label %if.end121, !dbg !261

if.end121:                                        ; preds = %while.body116
  %cmp122 = icmp eq i32 %basq.3199, 13, !dbg !263
  %add125 = add nsw i32 %a_sq.3198, %21, !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %add125}, i64 0, metadata !37), !dbg !264
  br i1 %cmp122, label %while.cond114, label %for.inc129, !dbg !263

for.inc129:                                       ; preds = %while.cond114, %if.end121, %for.body106
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !265
  %24 = trunc i64 %indvars.iv.next to i32, !dbg !265
  %cmp105 = icmp slt i32 %24, 4, !dbg !265
  br i1 %cmp105, label %for.body106, label %return, !dbg !265

return:                                           ; preds = %land.lhs.true, %while.body, %for.body20, %for.inc55, %while.cond40, %while.cond40, %land.lhs.true67, %while.cond72, %while.cond72, %for.body92, %for.inc129, %while.body116
  %retval.0 = phi i32 [ 1, %while.body116 ], [ 0, %for.inc129 ], [ 1, %for.body92 ], [ 1, %while.cond72 ], [ 1, %while.cond72 ], [ 1, %land.lhs.true67 ], [ 1, %while.cond40 ], [ 1, %while.cond40 ], [ 0, %for.inc55 ], [ 1, %for.body20 ], [ 1, %while.body ], [ 1, %land.lhs.true ]
  ret i32 %retval.0, !dbg !266
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !40, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !21, metadata !32}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"calc_attackers", metadata !"calc_attackers", metadata !"", i32 14, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @calc_attackers, null, null, metadata !15, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [calc_attackers]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786689, metadata !10, metadata !"square", metadata !11, i32 16777230, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 14]
!17 = metadata !{i32 786689, metadata !10, metadata !"color", metadata !11, i32 33554446, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 14]
!18 = metadata !{i32 786688, metadata !10, metadata !"a_sq", metadata !11, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_sq] [line 21]
!19 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 21]
!20 = metadata !{i32 786688, metadata !10, metadata !"attackers", metadata !11, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [attackers] [line 23]
!21 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"is_attacked", metadata !"is_attacked", metadata !"", i32 162, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @is_attacked, null, null, metadata !25, i32 162} ; [ DW_TAG_subprogram ] [line 162] [def] [is_attacked]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !14, metadata !14}
!24 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{i32 786689, metadata !21, metadata !"square", metadata !11, i32 16777378, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 162]
!27 = metadata !{i32 786689, metadata !21, metadata !"color", metadata !11, i32 33554594, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 162]
!28 = metadata !{i32 786688, metadata !21, metadata !"ndir", metadata !11, i32 170, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndir] [line 170]
!29 = metadata !{i32 786688, metadata !21, metadata !"a_sq", metadata !11, i32 170, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_sq] [line 170]
!30 = metadata !{i32 786688, metadata !21, metadata !"basq", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [basq] [line 171]
!31 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!32 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"nk_attacked", metadata !"nk_attacked", metadata !"", i32 264, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @nk_attacked, null, null, metadata !33, i32 264} ; [ DW_TAG_subprogram ] [line 264] [def] [nk_attacked]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{i32 786689, metadata !32, metadata !"square", metadata !11, i32 16777480, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 264]
!35 = metadata !{i32 786689, metadata !32, metadata !"color", metadata !11, i32 33554696, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 264]
!36 = metadata !{i32 786688, metadata !32, metadata !"ndir", metadata !11, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndir] [line 272]
!37 = metadata !{i32 786688, metadata !32, metadata !"a_sq", metadata !11, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_sq] [line 272]
!38 = metadata !{i32 786688, metadata !32, metadata !"basq", metadata !11, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [basq] [line 273]
!39 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !11, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 273]
!40 = metadata !{metadata !41, metadata !46, metadata !47, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!41 = metadata !{i32 786484, i32 0, metadata !10, metadata !"rook_o", metadata !"rook_o", metadata !"", metadata !11, i32 18, metadata !42, i32 1, i32 1, [4 x i32]* @nk_attacked.rook_o, null} ; [ DW_TAG_variable ] [rook_o] [line 18] [local] [def]
!42 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !43, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!43 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!46 = metadata !{i32 786484, i32 0, metadata !10, metadata !"bishop_o", metadata !"bishop_o", metadata !"", metadata !11, i32 19, metadata !42, i32 1, i32 1, [4 x i32]* @nk_attacked.bishop_o, null} ; [ DW_TAG_variable ] [bishop_o] [line 19] [local] [def]
!47 = metadata !{i32 786484, i32 0, metadata !10, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 20, metadata !48, i32 1, i32 1, [8 x i32]* @nk_attacked.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 20] [local] [def]
!48 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !43, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!51 = metadata !{i32 786484, i32 0, metadata !21, metadata !"rook_o", metadata !"rook_o", metadata !"", metadata !11, i32 167, metadata !42, i32 1, i32 1, [4 x i32]* @nk_attacked.rook_o, null} ; [ DW_TAG_variable ] [rook_o] [line 167] [local] [def]
!52 = metadata !{i32 786484, i32 0, metadata !21, metadata !"bishop_o", metadata !"bishop_o", metadata !"", metadata !11, i32 168, metadata !42, i32 1, i32 1, [4 x i32]* @nk_attacked.bishop_o, null} ; [ DW_TAG_variable ] [bishop_o] [line 168] [local] [def]
!53 = metadata !{i32 786484, i32 0, metadata !21, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 169, metadata !48, i32 1, i32 1, [8 x i32]* @nk_attacked.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 169] [local] [def]
!54 = metadata !{i32 786484, i32 0, metadata !32, metadata !"rook_o", metadata !"rook_o", metadata !"", metadata !11, i32 269, metadata !42, i32 1, i32 1, [4 x i32]* @nk_attacked.rook_o, null} ; [ DW_TAG_variable ] [rook_o] [line 269] [local] [def]
!55 = metadata !{i32 786484, i32 0, metadata !32, metadata !"bishop_o", metadata !"bishop_o", metadata !"", metadata !11, i32 270, metadata !42, i32 1, i32 1, [4 x i32]* @nk_attacked.bishop_o, null} ; [ DW_TAG_variable ] [bishop_o] [line 270] [local] [def]
!56 = metadata !{i32 786484, i32 0, metadata !32, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 271, metadata !48, i32 1, i32 1, [8 x i32]* @nk_attacked.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 271] [local] [def]
!57 = metadata !{i32 14, i32 0, metadata !10, null}
!58 = metadata !{i32 23, i32 0, metadata !10, null}
!59 = metadata !{i32 25, i32 0, metadata !10, null}
!60 = metadata !{metadata !"int", metadata !61}
!61 = metadata !{metadata !"omnipotent char", metadata !62}
!62 = metadata !{metadata !"Simple C/C++ TBAA"}
!63 = metadata !{i32 28, i32 0, metadata !10, null}
!64 = metadata !{i32 30, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!66 = metadata !{i32 786443, metadata !1, metadata !10, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!67 = metadata !{i32 31, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !65, i32 30, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!69 = metadata !{i32 34, i32 0, metadata !68, null}
!70 = metadata !{i32 36, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !68, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!72 = metadata !{i32 37, i32 0, metadata !71, null}
!73 = metadata !{i32 42, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !68, i32 40, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!75 = metadata !{i32 45, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 44, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!77 = metadata !{i32 786443, metadata !1, metadata !74, i32 42, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!78 = metadata !{i32 46, i32 0, metadata !76, null}
!79 = metadata !{i32 49, i32 0, metadata !77, null}
!80 = metadata !{i32 50, i32 0, metadata !77, null}
!81 = metadata !{i32 56, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 55, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!83 = metadata !{i32 786443, metadata !1, metadata !66, i32 55, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!84 = metadata !{i32 58, i32 0, metadata !82, null} ; [ DW_TAG_imported_module ]
!85 = metadata !{i32 60, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !82, i32 59, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!87 = metadata !{i32 61, i32 0, metadata !86, null}
!88 = metadata !{i32 66, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !82, i32 65, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!90 = metadata !{i32 67, i32 0, metadata !89, null}
!91 = metadata !{i32 71, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !82, i32 70, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!93 = metadata !{i32 74, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 73, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!95 = metadata !{i32 786443, metadata !1, metadata !92, i32 71, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!96 = metadata !{i32 75, i32 0, metadata !94, null}
!97 = metadata !{i32 78, i32 0, metadata !95, null}
!98 = metadata !{i32 79, i32 0, metadata !95, null}
!99 = metadata !{i32 55, i32 0, metadata !83, null}
!100 = metadata !{i32 85, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !102, i32 84, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!102 = metadata !{i32 786443, metadata !1, metadata !66, i32 84, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!103 = metadata !{i32 86, i32 0, metadata !101, null}
!104 = metadata !{i32 84, i32 0, metadata !102, null}
!105 = metadata !{i32 99, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !107, i32 98, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!107 = metadata !{i32 786443, metadata !1, metadata !108, i32 98, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!108 = metadata !{i32 786443, metadata !1, metadata !10, i32 96, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!109 = metadata !{i32 101, i32 0, metadata !106, null}
!110 = metadata !{i32 103, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !106, i32 102, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!112 = metadata !{i32 104, i32 0, metadata !111, null}
!113 = metadata !{i32 108, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !106, i32 107, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!115 = metadata !{i32 111, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !117, i32 110, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!117 = metadata !{i32 786443, metadata !1, metadata !114, i32 108, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!118 = metadata !{i32 112, i32 0, metadata !116, null}
!119 = metadata !{i32 115, i32 0, metadata !117, null}
!120 = metadata !{i32 116, i32 0, metadata !117, null}
!121 = metadata !{i32 98, i32 0, metadata !107, null}
!122 = metadata !{i32 122, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 121, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!124 = metadata !{i32 786443, metadata !1, metadata !108, i32 121, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!125 = metadata !{i32 124, i32 0, metadata !123, null}
!126 = metadata !{i32 126, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !123, i32 125, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!128 = metadata !{i32 127, i32 0, metadata !127, null}
!129 = metadata !{i32 132, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !123, i32 131, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!131 = metadata !{i32 133, i32 0, metadata !130, null}
!132 = metadata !{i32 136, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !123, i32 135, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!134 = metadata !{i32 139, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !136, i32 138, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!136 = metadata !{i32 786443, metadata !1, metadata !133, i32 136, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!137 = metadata !{i32 140, i32 0, metadata !135, null}
!138 = metadata !{i32 143, i32 0, metadata !136, null}
!139 = metadata !{i32 144, i32 0, metadata !136, null}
!140 = metadata !{i32 121, i32 0, metadata !124, null}
!141 = metadata !{i32 150, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !143, i32 149, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!143 = metadata !{i32 786443, metadata !1, metadata !108, i32 149, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!144 = metadata !{i32 151, i32 0, metadata !142, null}
!145 = metadata !{i32 149, i32 0, metadata !143, null}
!146 = metadata !{i32 160, i32 0, metadata !10, null}
!147 = metadata !{i32 162, i32 0, metadata !21, null}
!148 = metadata !{i32 174, i32 0, metadata !21, null}
!149 = metadata !{i32 177, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 177, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!151 = metadata !{i32 786443, metadata !1, metadata !21, i32 174, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!152 = metadata !{i32 178, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !150, i32 177, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!154 = metadata !{i32 179, i32 0, metadata !153, null}
!155 = metadata !{i32 180, i32 0, metadata !153, null}
!156 = metadata !{i32 182, i32 0, metadata !153, null}
!157 = metadata !{i32 186, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !153, i32 185, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!159 = metadata !{i32 187, i32 0, metadata !158, null}
!160 = metadata !{i32 188, i32 0, metadata !158, null}
!161 = metadata !{i32 189, i32 0, metadata !158, null}
!162 = metadata !{i32 185, i32 0, metadata !153, null}
!163 = metadata !{i32 193, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !151, i32 193, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!165 = metadata !{i32 194, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !164, i32 193, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!167 = metadata !{i32 198, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !169, i32 197, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!169 = metadata !{i32 786443, metadata !1, metadata !151, i32 197, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!170 = metadata !{i32 199, i32 0, metadata !168, null}
!171 = metadata !{i32 200, i32 0, metadata !168, null}
!172 = metadata !{i32 202, i32 0, metadata !168, null}
!173 = metadata !{i32 204, i32 0, metadata !168, null}
!174 = metadata !{i32 207, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !168, i32 204, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!176 = metadata !{i32 208, i32 0, metadata !175, null}
!177 = metadata !{i32 209, i32 0, metadata !175, null}
!178 = metadata !{i32 197, i32 0, metadata !169, null}
!179 = metadata !{i32 221, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !181, i32 220, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!181 = metadata !{i32 786443, metadata !1, metadata !182, i32 220, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!182 = metadata !{i32 786443, metadata !1, metadata !21, i32 218, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!183 = metadata !{i32 222, i32 0, metadata !180, null}
!184 = metadata !{i32 223, i32 0, metadata !180, null}
!185 = metadata !{i32 225, i32 0, metadata !180, null}
!186 = metadata !{i32 228, i32 0, metadata !180, null}
!187 = metadata !{i32 231, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !180, i32 228, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!189 = metadata !{i32 232, i32 0, metadata !188, null}
!190 = metadata !{i32 233, i32 0, metadata !188, null}
!191 = metadata !{i32 220, i32 0, metadata !181, null}
!192 = metadata !{i32 237, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !182, i32 237, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!194 = metadata !{i32 238, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !193, i32 237, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!196 = metadata !{i32 243, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !198, i32 242, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!198 = metadata !{i32 786443, metadata !1, metadata !182, i32 242, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!199 = metadata !{i32 244, i32 0, metadata !197, null}
!200 = metadata !{i32 245, i32 0, metadata !197, null}
!201 = metadata !{i32 247, i32 0, metadata !197, null}
!202 = metadata !{i32 250, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !197, i32 249, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!204 = metadata !{i32 251, i32 0, metadata !203, null}
!205 = metadata !{i32 252, i32 0, metadata !203, null}
!206 = metadata !{i32 253, i32 0, metadata !203, null}
!207 = metadata !{i32 249, i32 0, metadata !197, null}
!208 = metadata !{i32 242, i32 0, metadata !198, null}
!209 = metadata !{i32 258, i32 0, metadata !21, null}
!210 = metadata !{i32 264, i32 0, metadata !32, null}
!211 = metadata !{i32 276, i32 0, metadata !32, null}
!212 = metadata !{i32 279, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !214, i32 279, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!214 = metadata !{i32 786443, metadata !1, metadata !32, i32 276, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!215 = metadata !{i32 280, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !213, i32 279, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!217 = metadata !{i32 281, i32 0, metadata !216, null}
!218 = metadata !{i32 282, i32 0, metadata !216, null}
!219 = metadata !{i32 284, i32 0, metadata !216, null}
!220 = metadata !{i32 287, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !216, i32 286, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!222 = metadata !{i32 288, i32 0, metadata !221, null}
!223 = metadata !{i32 289, i32 0, metadata !221, null}
!224 = metadata !{i32 290, i32 0, metadata !221, null}
!225 = metadata !{i32 286, i32 0, metadata !216, null}
!226 = metadata !{i32 294, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !214, i32 294, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!228 = metadata !{i32 295, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !227, i32 294, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!230 = metadata !{i32 299, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !232, i32 298, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!232 = metadata !{i32 786443, metadata !1, metadata !214, i32 298, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!233 = metadata !{i32 303, i32 0, metadata !231, null}
!234 = metadata !{i32 301, i32 0, metadata !231, null}
!235 = metadata !{i32 308, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !231, i32 303, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!237 = metadata !{i32 298, i32 0, metadata !232, null}
!238 = metadata !{i32 320, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !240, i32 319, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!240 = metadata !{i32 786443, metadata !1, metadata !241, i32 319, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!241 = metadata !{i32 786443, metadata !1, metadata !32, i32 317, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!242 = metadata !{i32 321, i32 0, metadata !239, null}
!243 = metadata !{i32 322, i32 0, metadata !239, null}
!244 = metadata !{i32 324, i32 0, metadata !239, null}
!245 = metadata !{i32 326, i32 0, metadata !239, null}
!246 = metadata !{i32 329, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !239, i32 326, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!248 = metadata !{i32 330, i32 0, metadata !247, null}
!249 = metadata !{i32 331, i32 0, metadata !247, null}
!250 = metadata !{i32 319, i32 0, metadata !240, null}
!251 = metadata !{i32 335, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !241, i32 335, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!253 = metadata !{i32 336, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !252, i32 335, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!255 = metadata !{i32 341, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !257, i32 340, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!257 = metadata !{i32 786443, metadata !1, metadata !241, i32 340, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!258 = metadata !{i32 342, i32 0, metadata !256, null}
!259 = metadata !{i32 343, i32 0, metadata !256, null}
!260 = metadata !{i32 345, i32 0, metadata !256, null}
!261 = metadata !{i32 346, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !256, i32 345, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/attacks.c]
!263 = metadata !{i32 347, i32 0, metadata !262, null}
!264 = metadata !{i32 348, i32 0, metadata !262, null}
!265 = metadata !{i32 340, i32 0, metadata !257, null}
!266 = metadata !{i32 354, i32 0, metadata !32, null}
