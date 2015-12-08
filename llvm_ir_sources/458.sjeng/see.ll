; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_data = type { i32, i32 }

@setup_attackers.rook_o = internal unnamed_addr constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@setup_attackers.bishop_o = internal unnamed_addr constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@setup_attackers.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@see_num_attackers = common global [2 x i32] zeroinitializer, align 4
@board = external global [144 x i32]
@see_attackers = common global [2 x [16 x %struct.see_data]] zeroinitializer, align 16
@material = external global [14 x i32]

; Function Attrs: nounwind optsize uwtable
define void @setup_attackers(i32 %square) #0 {
entry:
  %0 = load i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !tbaa !0
  %1 = load i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv358 = phi i64 [ 0, %entry ], [ %indvars.iv.next359, %for.inc ]
  %numb.0320 = phi i32 [ %1, %entry ], [ %numb.1, %for.inc ]
  %numw.0319 = phi i32 [ %0, %entry ], [ %numw.1, %for.inc ]
  %arrayidx = getelementptr inbounds [4 x i32]* @setup_attackers.rook_o, i64 0, i64 %indvars.iv358
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %2, %square
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %3 = load i32* %arrayidx2, align 4, !tbaa !0
  switch i32 %3, label %while.cond [
    i32 5, label %if.then
    i32 6, label %if.then10
  ]

if.then:                                          ; preds = %for.body
  %idxprom4 = sext i32 %numw.0319 to i64
  %piece = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom4, i32 0
  store i32 5, i32* %piece, align 8, !tbaa !0
  %square8 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom4, i32 1
  store i32 %add, i32* %square8, align 4, !tbaa !0
  %inc = add nsw i32 %numw.0319, 1
  br label %for.body57

if.then10:                                        ; preds = %for.body
  %idxprom11 = sext i32 %numb.0320 to i64
  %piece13 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom11, i32 0
  store i32 6, i32* %piece13, align 8, !tbaa !0
  %square16 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom11, i32 1
  store i32 %add, i32* %square16, align 4, !tbaa !0
  %inc17 = add nsw i32 %numb.0320, 1
  br label %for.body57

while.cond:                                       ; preds = %for.body, %if.end46
  %a_sq.0 = phi i32 [ %add49, %if.end46 ], [ %add, %for.body ]
  %b_sq.0 = phi i32 [ %6, %if.end46 ], [ %3, %for.body ]
  switch i32 %b_sq.0, label %if.else30 [
    i32 0, label %for.inc
    i32 9, label %if.then22
    i32 7, label %if.then22
  ]

if.then22:                                        ; preds = %while.cond, %while.cond
  %idxprom23 = sext i32 %numw.0319 to i64
  %piece25 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom23, i32 0
  store i32 %b_sq.0, i32* %piece25, align 8, !tbaa !0
  %square28 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom23, i32 1
  store i32 %a_sq.0, i32* %square28, align 4, !tbaa !0
  %inc29 = add nsw i32 %numw.0319, 1
  br label %for.inc

if.else30:                                        ; preds = %while.cond
  %4 = and i32 %b_sq.0, -3
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %if.then34, label %if.else42

if.then34:                                        ; preds = %if.else30
  %idxprom35 = sext i32 %numb.0320 to i64
  %piece37 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom35, i32 0
  store i32 %b_sq.0, i32* %piece37, align 8, !tbaa !0
  %square40 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom35, i32 1
  store i32 %a_sq.0, i32* %square40, align 4, !tbaa !0
  %inc41 = add nsw i32 %numb.0320, 1
  br label %for.inc

if.else42:                                        ; preds = %if.else30
  %cmp43 = icmp eq i32 %b_sq.0, 13
  br i1 %cmp43, label %if.end46, label %for.inc

if.end46:                                         ; preds = %if.else42
  %add49 = add nsw i32 %2, %a_sq.0
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom50
  %6 = load i32* %arrayidx51, align 4, !tbaa !0
  br label %while.cond

for.inc:                                          ; preds = %while.cond, %if.else42, %if.then22, %if.then34
  %numw.1 = phi i32 [ %inc29, %if.then22 ], [ %numw.0319, %if.then34 ], [ %numw.0319, %if.else42 ], [ %numw.0319, %while.cond ]
  %numb.1 = phi i32 [ %numb.0320, %if.then22 ], [ %inc41, %if.then34 ], [ %numb.0320, %if.else42 ], [ %numb.0320, %while.cond ]
  %indvars.iv.next359 = add i64 %indvars.iv358, 1
  %7 = trunc i64 %indvars.iv.next359 to i32
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %for.body, label %for.body57

for.body57:                                       ; preds = %if.then, %if.then10, %for.inc, %for.inc148
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %for.inc148 ], [ 0, %for.inc ], [ 0, %if.then10 ], [ 0, %if.then ]
  %numb.3306 = phi i32 [ %numb.4, %for.inc148 ], [ %numb.1, %for.inc ], [ %inc17, %if.then10 ], [ %numb.0320, %if.then ]
  %numw.3305 = phi i32 [ %numw.4, %for.inc148 ], [ %numw.1, %for.inc ], [ %numw.0319, %if.then10 ], [ %inc, %if.then ]
  %arrayidx59 = getelementptr inbounds [4 x i32]* @setup_attackers.bishop_o, i64 0, i64 %indvars.iv343
  %8 = load i32* %arrayidx59, align 4, !tbaa !0
  %add60 = add nsw i32 %8, %square
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom61
  %9 = load i32* %arrayidx62, align 4, !tbaa !0
  switch i32 %9, label %while.body108 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true74
    i32 5, label %if.then87
    i32 6, label %if.then97
    i32 0, label %for.inc148
  ]

land.lhs.true:                                    ; preds = %for.body57
  %rem279 = and i64 %indvars.iv343, 1
  %tobool = icmp eq i64 %rem279, 0
  br i1 %tobool, label %while.body108, label %if.then64

if.then64:                                        ; preds = %land.lhs.true
  %idxprom65 = sext i32 %numw.3305 to i64
  %piece67 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom65, i32 0
  store i32 1, i32* %piece67, align 8, !tbaa !0
  %square70 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom65, i32 1
  store i32 %add60, i32* %square70, align 4, !tbaa !0
  %inc71 = add nsw i32 %numw.3305, 1
  br label %for.body153

land.lhs.true74:                                  ; preds = %for.body57
  %rem75278 = and i64 %indvars.iv343, 1
  %tobool76 = icmp eq i64 %rem75278, 0
  br i1 %tobool76, label %if.then77, label %while.body108

if.then77:                                        ; preds = %land.lhs.true74
  %idxprom78 = sext i32 %numb.3306 to i64
  %piece80 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom78, i32 0
  store i32 2, i32* %piece80, align 8, !tbaa !0
  %square83 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom78, i32 1
  store i32 %add60, i32* %square83, align 4, !tbaa !0
  %inc84 = add nsw i32 %numb.3306, 1
  br label %for.body153

if.then87:                                        ; preds = %for.body57
  %idxprom88 = sext i32 %numw.3305 to i64
  %piece90 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom88, i32 0
  store i32 5, i32* %piece90, align 8, !tbaa !0
  %square93 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom88, i32 1
  store i32 %add60, i32* %square93, align 4, !tbaa !0
  %inc94 = add nsw i32 %numw.3305, 1
  br label %for.body153

if.then97:                                        ; preds = %for.body57
  %idxprom98 = sext i32 %numb.3306 to i64
  %piece100 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom98, i32 0
  store i32 6, i32* %piece100, align 8, !tbaa !0
  %square103 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom98, i32 1
  store i32 %add60, i32* %square103, align 4, !tbaa !0
  %inc104 = add nsw i32 %numb.3306, 1
  br label %for.body153

while.body108:                                    ; preds = %for.body57, %land.lhs.true, %land.lhs.true74, %if.end137
  %b_sq.1289 = phi i32 [ %12, %if.end137 ], [ 2, %land.lhs.true74 ], [ 1, %land.lhs.true ], [ %9, %for.body57 ]
  %a_sq.1288 = phi i32 [ %add140, %if.end137 ], [ %add60, %land.lhs.true74 ], [ %add60, %land.lhs.true ], [ %add60, %for.body57 ]
  %10 = and i32 %b_sq.1289, -3
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %if.then112, label %if.else120

if.then112:                                       ; preds = %while.body108
  %idxprom113 = sext i32 %numw.3305 to i64
  %piece115 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom113, i32 0
  store i32 %b_sq.1289, i32* %piece115, align 8, !tbaa !0
  %square118 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom113, i32 1
  store i32 %a_sq.1288, i32* %square118, align 4, !tbaa !0
  %inc119 = add nsw i32 %numw.3305, 1
  br label %for.inc148

if.else120:                                       ; preds = %while.body108
  switch i32 %b_sq.1289, label %for.inc148 [
    i32 12, label %if.then124
    i32 10, label %if.then124
    i32 13, label %if.end137
  ]

if.then124:                                       ; preds = %if.else120, %if.else120
  %idxprom125 = sext i32 %numb.3306 to i64
  %piece127 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom125, i32 0
  store i32 %b_sq.1289, i32* %piece127, align 8, !tbaa !0
  %square130 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom125, i32 1
  store i32 %a_sq.1288, i32* %square130, align 4, !tbaa !0
  %inc131 = add nsw i32 %numb.3306, 1
  br label %for.inc148

if.end137:                                        ; preds = %if.else120
  %add140 = add nsw i32 %8, %a_sq.1288
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom141
  %12 = load i32* %arrayidx142, align 4, !tbaa !0
  %cmp107 = icmp eq i32 %12, 0
  br i1 %cmp107, label %for.inc148, label %while.body108

for.inc148:                                       ; preds = %for.body57, %if.else120, %if.end137, %if.then112, %if.then124
  %numw.4 = phi i32 [ %inc119, %if.then112 ], [ %numw.3305, %if.then124 ], [ %numw.3305, %if.end137 ], [ %numw.3305, %if.else120 ], [ %numw.3305, %for.body57 ]
  %numb.4 = phi i32 [ %numb.3306, %if.then112 ], [ %inc131, %if.then124 ], [ %numb.3306, %if.end137 ], [ %numb.3306, %if.else120 ], [ %numb.3306, %for.body57 ]
  %indvars.iv.next344 = add i64 %indvars.iv343, 1
  %13 = trunc i64 %indvars.iv.next344 to i32
  %cmp56 = icmp slt i32 %13, 4
  br i1 %cmp56, label %for.body57, label %for.body153

for.body153:                                      ; preds = %if.then64, %if.then77, %if.then87, %if.then97, %for.inc148, %for.inc180
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc180 ], [ 0, %for.inc148 ], [ 0, %if.then97 ], [ 0, %if.then87 ], [ 0, %if.then77 ], [ 0, %if.then64 ]
  %numb.6282 = phi i32 [ %numb.7, %for.inc180 ], [ %numb.4, %for.inc148 ], [ %inc104, %if.then97 ], [ %numb.3306, %if.then87 ], [ %inc84, %if.then77 ], [ %numb.3306, %if.then64 ]
  %numw.6281 = phi i32 [ %numw.7, %for.inc180 ], [ %numw.4, %for.inc148 ], [ %numw.3305, %if.then97 ], [ %inc94, %if.then87 ], [ %numw.3305, %if.then77 ], [ %inc71, %if.then64 ]
  %arrayidx155 = getelementptr inbounds [8 x i32]* @setup_attackers.knight_o, i64 0, i64 %indvars.iv
  %14 = load i32* %arrayidx155, align 4, !tbaa !0
  %add156 = add nsw i32 %14, %square
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom157
  %15 = load i32* %arrayidx158, align 4, !tbaa !0
  switch i32 %15, label %for.inc180 [
    i32 3, label %if.then160
    i32 4, label %if.then170
  ]

if.then160:                                       ; preds = %for.body153
  %idxprom161 = sext i32 %numw.6281 to i64
  %piece163 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom161, i32 0
  store i32 3, i32* %piece163, align 8, !tbaa !0
  %square166 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom161, i32 1
  store i32 %add156, i32* %square166, align 4, !tbaa !0
  %inc167 = add nsw i32 %numw.6281, 1
  br label %for.inc180

if.then170:                                       ; preds = %for.body153
  %idxprom171 = sext i32 %numb.6282 to i64
  %piece173 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom171, i32 0
  store i32 4, i32* %piece173, align 8, !tbaa !0
  %square176 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom171, i32 1
  store i32 %add156, i32* %square176, align 4, !tbaa !0
  %inc177 = add nsw i32 %numb.6282, 1
  br label %for.inc180

for.inc180:                                       ; preds = %for.body153, %if.then160, %if.then170
  %numw.7 = phi i32 [ %inc167, %if.then160 ], [ %numw.6281, %if.then170 ], [ %numw.6281, %for.body153 ]
  %numb.7 = phi i32 [ %numb.6282, %if.then160 ], [ %inc177, %if.then170 ], [ %numb.6282, %for.body153 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end182, label %for.body153

for.end182:                                       ; preds = %for.inc180
  store i32 %numw.7, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !tbaa !0
  store i32 %numb.7, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @findlowest(i32 %color, i32 %next) #0 {
entry:
  %idxprom = sext i32 %next to i64
  %idxprom1 = sext i32 %color to i64
  %arrayidx2 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom1, i64 %idxprom
  %piece = getelementptr inbounds %struct.see_data* %arrayidx2, i64 0, i32 0
  %0 = load i32* %piece, align 8, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom3
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom1
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %cmp58 = icmp sgt i32 %2, %next
  br i1 %cmp58, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %neg = sub i32 0, %1
  %ispos = icmp sgt i32 %1, -1
  %3 = select i1 %ispos, i32 %1, i32 %neg
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %lowestv.060 = phi i32 [ %3, %for.body.lr.ph ], [ %.lowestv.0, %for.body ]
  %lowestp.059 = phi i32 [ %next, %for.body.lr.ph ], [ %i.0.lowestp.0, %for.body ]
  %piece11 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom1, i64 %indvars.iv, i32 0
  %4 = load i32* %piece11, align 8, !tbaa !0
  %idxprom12 = sext i32 %4 to i64
  %arrayidx13 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom12
  %5 = load i32* %arrayidx13, align 4, !tbaa !0
  %ispos56 = icmp sgt i32 %5, -1
  %neg57 = sub i32 0, %5
  %6 = select i1 %ispos56, i32 %5, i32 %neg57
  %cmp15 = icmp slt i32 %6, %lowestv.060
  %7 = trunc i64 %indvars.iv to i32
  %i.0.lowestp.0 = select i1 %cmp15, i32 %7, i32 %lowestp.059
  %.lowestv.0 = select i1 %cmp15, i32 %6, i32 %lowestv.060
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %lowestp.0.lcssa = phi i32 [ %next, %entry ], [ %i.0.lowestp.0, %for.body ]
  %9 = bitcast %struct.see_data* %arrayidx2 to i64*
  %10 = load i64* %9, align 8
  %idxprom32 = sext i32 %lowestp.0.lcssa to i64
  %arrayidx35 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom1, i64 %idxprom32
  %11 = bitcast %struct.see_data* %arrayidx35 to i64*
  %12 = load i64* %11, align 8
  store i64 %12, i64* %9, align 8
  store i64 %10, i64* %11, align 8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @see(i32 %color, i32 %square, i32 %from) #0 {
entry:
  %caps = alloca [2 x i32], align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !tbaa !0
  %idxprom = sext i32 %from to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  store i32 13, i32* %arrayidx, align 4, !tbaa !0
  %idxprom3 = sext i32 %color to i64
  %arrayidx4 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom3
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %arrayidx4, align 4, !tbaa !0
  %piece = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom3, i64 0, i32 0
  store i32 %0, i32* %piece, align 16, !tbaa !0
  %square11 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom3, i64 0, i32 1
  store i32 %from, i32* %square11, align 4, !tbaa !0
  call void @setup_attackers(i32 %square) #1
  %idxprom12 = sext i32 %square to i64
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom12
  %2 = load i32* %arrayidx13, align 4, !tbaa !0
  %idxprom14 = sext i32 %2 to i64
  %arrayidx15 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom14
  %3 = load i32* %arrayidx15, align 4, !tbaa !0
  %ispos = icmp sgt i32 %3, -1
  %neg = sub i32 0, %3
  %4 = select i1 %ispos, i32 %3, i32 %neg
  %lnot = icmp eq i32 %color, 0
  %idxprom16 = zext i1 %lnot to i64
  %arrayidx17 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom16
  %5 = load i32* %arrayidx17, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %5, 0
  br i1 %tobool18, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 %0, i32* %arrayidx, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %arrayidx22 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom3
  store i32 1, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx27 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom16
  store i32 0, i32* %arrayidx27, align 4, !tbaa !0
  %cmp164 = icmp sgt i32 %5, 0
  br i1 %cmp164, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.else
  %lnot.ext = zext i1 %lnot to i32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end109
  %6 = phi i32 [ 0, %while.body.lr.ph ], [ %14, %if.end109 ]
  %arrayidx32169 = phi i32* [ %arrayidx27, %while.body.lr.ph ], [ %arrayidx32, %if.end109 ]
  %hisbestvalue.0168 = phi i32 [ %4, %while.body.lr.ph ], [ %hisbestvalue.1, %if.end109 ]
  %ourbestvalue.0167 = phi i32 [ -1000000, %while.body.lr.ph ], [ %ourbestvalue.3, %if.end109 ]
  %value.0166 = phi i32 [ %4, %while.body.lr.ph ], [ %value.1, %if.end109 ]
  %sside.0165 = phi i32 [ %lnot.ext, %while.body.lr.ph ], [ %xor, %if.end109 ]
  call void @findlowest(i32 %sside.0165, i32 %6) #1
  %cmp37 = icmp eq i32 %sside.0165, %color
  %lnot40 = icmp eq i32 %sside.0165, 0
  %idxprom42 = zext i1 %lnot40 to i64
  %arrayidx43 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom42
  %7 = load i32* %arrayidx43, align 4, !tbaa !0
  %sub = add nsw i32 %7, -1
  %idxprom44 = sext i32 %sub to i64
  %piece51 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom42, i64 %idxprom44, i32 0
  %8 = load i32* %piece51, align 8, !tbaa !0
  %idxprom52 = sext i32 %8 to i64
  %arrayidx53 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom52
  %9 = load i32* %arrayidx53, align 4, !tbaa !0
  %ispos158 = icmp sgt i32 %9, -1
  %neg159 = sub i32 0, %9
  %10 = select i1 %ispos158, i32 %9, i32 %neg159
  br i1 %cmp37, label %if.then38, label %if.else72

if.then38:                                        ; preds = %while.body
  %add = add nsw i32 %10, %value.0166
  %arrayidx59 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom42
  %11 = load i32* %arrayidx59, align 4, !tbaa !0
  %cmp65 = icmp sle i32 %11, %7
  %cmp66 = icmp sgt i32 %add, %ourbestvalue.0167
  %or.cond = and i1 %cmp65, %cmp66
  %ourbestvalue.1 = select i1 %or.cond, i32 %add, i32 %ourbestvalue.0167
  %cmp69 = icmp slt i32 %add, %hisbestvalue.0168
  %add.hisbestvalue.0 = select i1 %cmp69, i32 %add, i32 %hisbestvalue.0168
  br label %if.end109

if.else72:                                        ; preds = %while.body
  %sub90 = sub nsw i32 %value.0166, %10
  %cmp91 = icmp sgt i32 %sub90, %ourbestvalue.0167
  %sub90.ourbestvalue.0 = select i1 %cmp91, i32 %sub90, i32 %ourbestvalue.0167
  %arrayidx98 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom42
  %12 = load i32* %arrayidx98, align 4, !tbaa !0
  %cmp104 = icmp sle i32 %12, %7
  %cmp106 = icmp slt i32 %sub90, %hisbestvalue.0168
  %or.cond160 = and i1 %cmp104, %cmp106
  %sub90.hisbestvalue.0 = select i1 %or.cond160, i32 %sub90, i32 %hisbestvalue.0168
  br label %if.end109

if.end109:                                        ; preds = %if.else72, %if.then38
  %value.1 = phi i32 [ %add, %if.then38 ], [ %sub90, %if.else72 ]
  %ourbestvalue.3 = phi i32 [ %ourbestvalue.1, %if.then38 ], [ %sub90.ourbestvalue.0, %if.else72 ]
  %hisbestvalue.1 = phi i32 [ %add.hisbestvalue.0, %if.then38 ], [ %sub90.hisbestvalue.0, %if.else72 ]
  %13 = load i32* %arrayidx32169, align 4, !tbaa !0
  %inc112 = add nsw i32 %13, 1
  store i32 %inc112, i32* %arrayidx32169, align 4, !tbaa !0
  %xor = xor i32 %sside.0165, 1
  %idxprom31 = sext i32 %xor to i64
  %arrayidx32 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom31
  %14 = load i32* %arrayidx32, align 4, !tbaa !0
  %arrayidx34 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom31
  %15 = load i32* %arrayidx34, align 4, !tbaa !0
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end109, %if.else
  %hisbestvalue.0.lcssa = phi i32 [ %4, %if.else ], [ %hisbestvalue.1, %if.end109 ]
  %ourbestvalue.0.lcssa = phi i32 [ -1000000, %if.else ], [ %ourbestvalue.3, %if.end109 ]
  store i32 %0, i32* %arrayidx, align 4, !tbaa !0
  %cmp115 = icmp sgt i32 %ourbestvalue.0.lcssa, %hisbestvalue.0.lcssa
  %cond = select i1 %cmp115, i32 %hisbestvalue.0.lcssa, i32 %ourbestvalue.0.lcssa
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %cond, %while.end ], [ %4, %if.then ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
