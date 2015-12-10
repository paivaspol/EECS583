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
  tail call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !10), !dbg !63
  %0 = load i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !dbg !64, !tbaa !65
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !14), !dbg !64
  %1 = load i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !dbg !64, !tbaa !65
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !15), !dbg !64
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !13), !dbg !68
  br label %for.body, !dbg !68

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv358 = phi i64 [ 0, %entry ], [ %indvars.iv.next359, %for.inc ]
  %numb.0320 = phi i32 [ %1, %entry ], [ %numb.1, %for.inc ]
  %numw.0319 = phi i32 [ %0, %entry ], [ %numw.1, %for.inc ]
  %arrayidx = getelementptr inbounds [4 x i32]* @setup_attackers.rook_o, i64 0, i64 %indvars.iv358, !dbg !70
  %2 = load i32* %arrayidx, align 4, !dbg !70, !tbaa !65
  %add = add nsw i32 %2, %square, !dbg !70
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !11), !dbg !70
  %idxprom1 = sext i32 %add to i64, !dbg !72
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !72
  %3 = load i32* %arrayidx2, align 4, !dbg !72, !tbaa !65
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !12), !dbg !72
  switch i32 %3, label %while.cond [
    i32 5, label %if.then
    i32 6, label %if.then10
  ], !dbg !74

if.then:                                          ; preds = %for.body
  %idxprom4 = sext i32 %numw.0319 to i64, !dbg !75
  %piece = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom4, i32 0, !dbg !75
  store i32 5, i32* %piece, align 8, !dbg !75, !tbaa !65
  %square8 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom4, i32 1, !dbg !77
  store i32 %add, i32* %square8, align 4, !dbg !77, !tbaa !65
  %inc = add nsw i32 %numw.0319, 1, !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !14), !dbg !78
  br label %for.body57, !dbg !79

if.then10:                                        ; preds = %for.body
  %idxprom11 = sext i32 %numb.0320 to i64, !dbg !80
  %piece13 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom11, i32 0, !dbg !80
  store i32 6, i32* %piece13, align 8, !dbg !80, !tbaa !65
  %square16 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom11, i32 1, !dbg !82
  store i32 %add, i32* %square16, align 4, !dbg !82, !tbaa !65
  %inc17 = add nsw i32 %numb.0320, 1, !dbg !83
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !15), !dbg !83
  br label %for.body57, !dbg !84

while.cond:                                       ; preds = %for.body, %if.end46
  %a_sq.0 = phi i32 [ %add49, %if.end46 ], [ %add, %for.body ]
  %b_sq.0 = phi i32 [ %6, %if.end46 ], [ %3, %for.body ]
  switch i32 %b_sq.0, label %if.else30 [
    i32 0, label %for.inc
    i32 9, label %if.then22
    i32 7, label %if.then22
  ], !dbg !85

if.then22:                                        ; preds = %while.cond, %while.cond
  %idxprom23 = sext i32 %numw.0319 to i64, !dbg !87
  %piece25 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom23, i32 0, !dbg !87
  store i32 %b_sq.0, i32* %piece25, align 8, !dbg !87, !tbaa !65
  %square28 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom23, i32 1, !dbg !90
  store i32 %a_sq.0, i32* %square28, align 4, !dbg !90, !tbaa !65
  %inc29 = add nsw i32 %numw.0319, 1, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %inc29}, i64 0, metadata !14), !dbg !91
  br label %for.inc, !dbg !92

if.else30:                                        ; preds = %while.cond
  %4 = and i32 %b_sq.0, -3, !dbg !93
  %5 = icmp eq i32 %4, 8, !dbg !93
  br i1 %5, label %if.then34, label %if.else42, !dbg !93

if.then34:                                        ; preds = %if.else30
  %idxprom35 = sext i32 %numb.0320 to i64, !dbg !94
  %piece37 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom35, i32 0, !dbg !94
  store i32 %b_sq.0, i32* %piece37, align 8, !dbg !94, !tbaa !65
  %square40 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom35, i32 1, !dbg !96
  store i32 %a_sq.0, i32* %square40, align 4, !dbg !96, !tbaa !65
  %inc41 = add nsw i32 %numb.0320, 1, !dbg !97
  tail call void @llvm.dbg.value(metadata !{i32 %inc41}, i64 0, metadata !15), !dbg !97
  br label %for.inc, !dbg !98

if.else42:                                        ; preds = %if.else30
  %cmp43 = icmp eq i32 %b_sq.0, 13, !dbg !99
  br i1 %cmp43, label %if.end46, label %for.inc, !dbg !99

if.end46:                                         ; preds = %if.else42
  %add49 = add nsw i32 %2, %a_sq.0, !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %add49}, i64 0, metadata !11), !dbg !100
  %idxprom50 = sext i32 %add49 to i64, !dbg !101
  %arrayidx51 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom50, !dbg !101
  %6 = load i32* %arrayidx51, align 4, !dbg !101, !tbaa !65
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !12), !dbg !101
  br label %while.cond, !dbg !102

for.inc:                                          ; preds = %while.cond, %if.else42, %if.then22, %if.then34
  %numw.1 = phi i32 [ %inc29, %if.then22 ], [ %numw.0319, %if.then34 ], [ %numw.0319, %if.else42 ], [ %numw.0319, %while.cond ]
  %numb.1 = phi i32 [ %numb.0320, %if.then22 ], [ %inc41, %if.then34 ], [ %numb.0320, %if.else42 ], [ %numb.0320, %while.cond ]
  %indvars.iv.next359 = add i64 %indvars.iv358, 1, !dbg !68
  %7 = trunc i64 %indvars.iv.next359 to i32, !dbg !68
  %cmp = icmp slt i32 %7, 4, !dbg !68
  br i1 %cmp, label %for.body, label %for.body57, !dbg !68

for.body57:                                       ; preds = %if.then, %if.then10, %for.inc, %for.inc148
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %for.inc148 ], [ 0, %for.inc ], [ 0, %if.then10 ], [ 0, %if.then ]
  %numb.3306 = phi i32 [ %numb.4, %for.inc148 ], [ %numb.1, %for.inc ], [ %inc17, %if.then10 ], [ %numb.0320, %if.then ]
  %numw.3305 = phi i32 [ %numw.4, %for.inc148 ], [ %numw.1, %for.inc ], [ %numw.0319, %if.then10 ], [ %inc, %if.then ]
  %arrayidx59 = getelementptr inbounds [4 x i32]* @setup_attackers.bishop_o, i64 0, i64 %indvars.iv343, !dbg !103
  %8 = load i32* %arrayidx59, align 4, !dbg !103, !tbaa !65
  %add60 = add nsw i32 %8, %square, !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %add60}, i64 0, metadata !11), !dbg !103
  %idxprom61 = sext i32 %add60 to i64, !dbg !106
  %arrayidx62 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom61, !dbg !106
  %9 = load i32* %arrayidx62, align 4, !dbg !106, !tbaa !65
  tail call void @llvm.dbg.value(metadata !107, i64 0, metadata !12), !dbg !106
  switch i32 %9, label %while.body108 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true74
    i32 5, label %if.then87
    i32 6, label %if.then97
    i32 0, label %for.inc148
  ], !dbg !108

land.lhs.true:                                    ; preds = %for.body57
  %rem279 = and i64 %indvars.iv343, 1, !dbg !108
  %tobool = icmp eq i64 %rem279, 0, !dbg !108
  br i1 %tobool, label %while.body108, label %if.then64, !dbg !108

if.then64:                                        ; preds = %land.lhs.true
  %idxprom65 = sext i32 %numw.3305 to i64, !dbg !109
  %piece67 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom65, i32 0, !dbg !109
  store i32 1, i32* %piece67, align 8, !dbg !109, !tbaa !65
  %square70 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom65, i32 1, !dbg !111
  store i32 %add60, i32* %square70, align 4, !dbg !111, !tbaa !65
  %inc71 = add nsw i32 %numw.3305, 1, !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %inc71}, i64 0, metadata !14), !dbg !112
  br label %for.body153, !dbg !113

land.lhs.true74:                                  ; preds = %for.body57
  %rem75278 = and i64 %indvars.iv343, 1, !dbg !114
  %tobool76 = icmp eq i64 %rem75278, 0, !dbg !114
  br i1 %tobool76, label %if.then77, label %while.body108, !dbg !114

if.then77:                                        ; preds = %land.lhs.true74
  %idxprom78 = sext i32 %numb.3306 to i64, !dbg !115
  %piece80 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom78, i32 0, !dbg !115
  store i32 2, i32* %piece80, align 8, !dbg !115, !tbaa !65
  %square83 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom78, i32 1, !dbg !117
  store i32 %add60, i32* %square83, align 4, !dbg !117, !tbaa !65
  %inc84 = add nsw i32 %numb.3306, 1, !dbg !118
  tail call void @llvm.dbg.value(metadata !{i32 %inc84}, i64 0, metadata !15), !dbg !118
  br label %for.body153, !dbg !119

if.then87:                                        ; preds = %for.body57
  %idxprom88 = sext i32 %numw.3305 to i64, !dbg !120
  %piece90 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom88, i32 0, !dbg !120
  store i32 5, i32* %piece90, align 8, !dbg !120, !tbaa !65
  %square93 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom88, i32 1, !dbg !122
  store i32 %add60, i32* %square93, align 4, !dbg !122, !tbaa !65
  %inc94 = add nsw i32 %numw.3305, 1, !dbg !123
  tail call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !14), !dbg !123
  br label %for.body153, !dbg !124

if.then97:                                        ; preds = %for.body57
  %idxprom98 = sext i32 %numb.3306 to i64, !dbg !125
  %piece100 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom98, i32 0, !dbg !125
  store i32 6, i32* %piece100, align 8, !dbg !125, !tbaa !65
  %square103 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom98, i32 1, !dbg !127
  store i32 %add60, i32* %square103, align 4, !dbg !127, !tbaa !65
  %inc104 = add nsw i32 %numb.3306, 1, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i32 %inc104}, i64 0, metadata !15), !dbg !128
  br label %for.body153, !dbg !129

while.body108:                                    ; preds = %for.body57, %land.lhs.true, %land.lhs.true74, %if.end137
  %b_sq.1289 = phi i32 [ %12, %if.end137 ], [ 2, %land.lhs.true74 ], [ 1, %land.lhs.true ], [ %9, %for.body57 ]
  %a_sq.1288 = phi i32 [ %add140, %if.end137 ], [ %add60, %land.lhs.true74 ], [ %add60, %land.lhs.true ], [ %add60, %for.body57 ]
  %10 = and i32 %b_sq.1289, -3, !dbg !130
  %11 = icmp eq i32 %10, 9, !dbg !130
  br i1 %11, label %if.then112, label %if.else120, !dbg !130

if.then112:                                       ; preds = %while.body108
  %idxprom113 = sext i32 %numw.3305 to i64, !dbg !133
  %piece115 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom113, i32 0, !dbg !133
  store i32 %b_sq.1289, i32* %piece115, align 8, !dbg !133, !tbaa !65
  %square118 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom113, i32 1, !dbg !135
  store i32 %a_sq.1288, i32* %square118, align 4, !dbg !135, !tbaa !65
  %inc119 = add nsw i32 %numw.3305, 1, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %inc119}, i64 0, metadata !14), !dbg !136
  br label %for.inc148, !dbg !137

if.else120:                                       ; preds = %while.body108
  switch i32 %b_sq.1289, label %for.inc148 [
    i32 12, label %if.then124
    i32 10, label %if.then124
    i32 13, label %if.end137
  ], !dbg !138

if.then124:                                       ; preds = %if.else120, %if.else120
  %idxprom125 = sext i32 %numb.3306 to i64, !dbg !139
  %piece127 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom125, i32 0, !dbg !139
  store i32 %b_sq.1289, i32* %piece127, align 8, !dbg !139, !tbaa !65
  %square130 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom125, i32 1, !dbg !141
  store i32 %a_sq.1288, i32* %square130, align 4, !dbg !141, !tbaa !65
  %inc131 = add nsw i32 %numb.3306, 1, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %inc131}, i64 0, metadata !15), !dbg !142
  br label %for.inc148, !dbg !143

if.end137:                                        ; preds = %if.else120
  %add140 = add nsw i32 %8, %a_sq.1288, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %add140}, i64 0, metadata !11), !dbg !144
  %idxprom141 = sext i32 %add140 to i64, !dbg !145
  %arrayidx142 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom141, !dbg !145
  %12 = load i32* %arrayidx142, align 4, !dbg !145, !tbaa !65
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !12), !dbg !145
  %cmp107 = icmp eq i32 %12, 0, !dbg !146
  br i1 %cmp107, label %for.inc148, label %while.body108, !dbg !146

for.inc148:                                       ; preds = %for.body57, %if.else120, %if.end137, %if.then112, %if.then124
  %numw.4 = phi i32 [ %inc119, %if.then112 ], [ %numw.3305, %if.then124 ], [ %numw.3305, %if.end137 ], [ %numw.3305, %if.else120 ], [ %numw.3305, %for.body57 ]
  %numb.4 = phi i32 [ %numb.3306, %if.then112 ], [ %inc131, %if.then124 ], [ %numb.3306, %if.end137 ], [ %numb.3306, %if.else120 ], [ %numb.3306, %for.body57 ]
  %indvars.iv.next344 = add i64 %indvars.iv343, 1, !dbg !147
  %13 = trunc i64 %indvars.iv.next344 to i32, !dbg !147
  %cmp56 = icmp slt i32 %13, 4, !dbg !147
  br i1 %cmp56, label %for.body57, label %for.body153, !dbg !147

for.body153:                                      ; preds = %if.then64, %if.then77, %if.then87, %if.then97, %for.inc148, %for.inc180
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc180 ], [ 0, %for.inc148 ], [ 0, %if.then97 ], [ 0, %if.then87 ], [ 0, %if.then77 ], [ 0, %if.then64 ]
  %numb.6282 = phi i32 [ %numb.7, %for.inc180 ], [ %numb.4, %for.inc148 ], [ %inc104, %if.then97 ], [ %numb.3306, %if.then87 ], [ %inc84, %if.then77 ], [ %numb.3306, %if.then64 ]
  %numw.6281 = phi i32 [ %numw.7, %for.inc180 ], [ %numw.4, %for.inc148 ], [ %numw.3305, %if.then97 ], [ %inc94, %if.then87 ], [ %numw.3305, %if.then77 ], [ %inc71, %if.then64 ]
  %arrayidx155 = getelementptr inbounds [8 x i32]* @setup_attackers.knight_o, i64 0, i64 %indvars.iv, !dbg !148
  %14 = load i32* %arrayidx155, align 4, !dbg !148, !tbaa !65
  %add156 = add nsw i32 %14, %square, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32 %add156}, i64 0, metadata !11), !dbg !148
  %idxprom157 = sext i32 %add156 to i64, !dbg !151
  %arrayidx158 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom157, !dbg !151
  %15 = load i32* %arrayidx158, align 4, !dbg !151, !tbaa !65
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !12), !dbg !151
  switch i32 %15, label %for.inc180 [
    i32 3, label %if.then160
    i32 4, label %if.then170
  ], !dbg !152

if.then160:                                       ; preds = %for.body153
  %idxprom161 = sext i32 %numw.6281 to i64, !dbg !153
  %piece163 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom161, i32 0, !dbg !153
  store i32 3, i32* %piece163, align 8, !dbg !153, !tbaa !65
  %square166 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %idxprom161, i32 1, !dbg !155
  store i32 %add156, i32* %square166, align 4, !dbg !155, !tbaa !65
  %inc167 = add nsw i32 %numw.6281, 1, !dbg !156
  tail call void @llvm.dbg.value(metadata !{i32 %inc167}, i64 0, metadata !14), !dbg !156
  br label %for.inc180, !dbg !157

if.then170:                                       ; preds = %for.body153
  %idxprom171 = sext i32 %numb.6282 to i64, !dbg !158
  %piece173 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom171, i32 0, !dbg !158
  store i32 4, i32* %piece173, align 8, !dbg !158, !tbaa !65
  %square176 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %idxprom171, i32 1, !dbg !160
  store i32 %add156, i32* %square176, align 4, !dbg !160, !tbaa !65
  %inc177 = add nsw i32 %numb.6282, 1, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %inc177}, i64 0, metadata !15), !dbg !161
  br label %for.inc180, !dbg !162

for.inc180:                                       ; preds = %for.body153, %if.then160, %if.then170
  %numw.7 = phi i32 [ %inc167, %if.then160 ], [ %numw.6281, %if.then170 ], [ %numw.6281, %for.body153 ]
  %numb.7 = phi i32 [ %numb.6282, %if.then160 ], [ %inc177, %if.then170 ], [ %numb.6282, %for.body153 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !163
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !163
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !163
  br i1 %exitcond, label %for.end182, label %for.body153, !dbg !163

for.end182:                                       ; preds = %for.inc180
  store i32 %numw.7, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !dbg !164, !tbaa !65
  store i32 %numb.7, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !dbg !165, !tbaa !65
  ret void, !dbg !166
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @findlowest(i32 %color, i32 %next) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !20), !dbg !167
  tail call void @llvm.dbg.value(metadata !{i32 %next}, i64 0, metadata !21), !dbg !167
  tail call void @llvm.dbg.value(metadata !{i32 %next}, i64 0, metadata !22), !dbg !168
  %idxprom = sext i32 %next to i64, !dbg !169
  %idxprom1 = sext i32 %color to i64, !dbg !169
  %arrayidx2 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !169
  %piece = getelementptr inbounds %struct.see_data* %arrayidx2, i64 0, i32 0, !dbg !169
  %0 = load i32* %piece, align 8, !dbg !169, !tbaa !65
  %idxprom3 = sext i32 %0 to i64, !dbg !169
  %arrayidx4 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom3, !dbg !169
  %1 = load i32* %arrayidx4, align 4, !dbg !169, !tbaa !65
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !23), !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32 %next}, i64 0, metadata !30), !dbg !170
  %arrayidx6 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom1, !dbg !170
  %2 = load i32* %arrayidx6, align 4, !dbg !170, !tbaa !65
  %cmp58 = icmp sgt i32 %2, %next, !dbg !170
  br i1 %cmp58, label %for.body.lr.ph, label %for.end, !dbg !170

for.body.lr.ph:                                   ; preds = %entry
  %neg = sub i32 0, %1, !dbg !169
  %ispos = icmp sgt i32 %1, -1, !dbg !169
  %3 = select i1 %ispos, i32 %1, i32 %neg, !dbg !169
  br label %for.body, !dbg !170

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %lowestv.060 = phi i32 [ %3, %for.body.lr.ph ], [ %.lowestv.0, %for.body ]
  %lowestp.059 = phi i32 [ %next, %for.body.lr.ph ], [ %i.0.lowestp.0, %for.body ]
  %piece11 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom1, i64 %indvars.iv, i32 0, !dbg !172
  %4 = load i32* %piece11, align 8, !dbg !172, !tbaa !65
  %idxprom12 = sext i32 %4 to i64, !dbg !172
  %arrayidx13 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom12, !dbg !172
  %5 = load i32* %arrayidx13, align 4, !dbg !172, !tbaa !65
  %ispos56 = icmp sgt i32 %5, -1, !dbg !172
  %neg57 = sub i32 0, %5, !dbg !172
  %6 = select i1 %ispos56, i32 %5, i32 %neg57, !dbg !172
  %cmp15 = icmp slt i32 %6, %lowestv.060, !dbg !172
  tail call void @llvm.dbg.value(metadata !174, i64 0, metadata !22), !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !23), !dbg !177
  %7 = trunc i64 %indvars.iv to i32, !dbg !172
  %i.0.lowestp.0 = select i1 %cmp15, i32 %7, i32 %lowestp.059, !dbg !172
  %.lowestv.0 = select i1 %cmp15, i32 %6, i32 %lowestv.060, !dbg !172
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !170
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !170
  %cmp = icmp slt i32 %8, %2, !dbg !170
  br i1 %cmp, label %for.body, label %for.end, !dbg !170

for.end:                                          ; preds = %for.body, %entry
  %lowestp.0.lcssa = phi i32 [ %next, %entry ], [ %i.0.lowestp.0, %for.body ]
  %9 = bitcast %struct.see_data* %arrayidx2 to i64*, !dbg !178
  %10 = load i64* %9, align 8, !dbg !178
  %idxprom32 = sext i32 %lowestp.0.lcssa to i64, !dbg !179
  %arrayidx35 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom1, i64 %idxprom32, !dbg !179
  %11 = bitcast %struct.see_data* %arrayidx35 to i64*, !dbg !179
  %12 = load i64* %11, align 8, !dbg !179
  store i64 %12, i64* %9, align 8, !dbg !179
  store i64 %10, i64* %11, align 8, !dbg !180
  ret void, !dbg !181
}

; Function Attrs: nounwind optsize uwtable
define i32 @see(i32 %color, i32 %square, i32 %from) #0 {
entry:
  %caps = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{i32 %color}, i64 0, metadata !35), !dbg !182
  call void @llvm.dbg.value(metadata !{i32 %square}, i64 0, metadata !36), !dbg !182
  call void @llvm.dbg.value(metadata !{i32 %from}, i64 0, metadata !37), !dbg !182
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %caps}, metadata !39), !dbg !183
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !dbg !184, !tbaa !65
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !dbg !185, !tbaa !65
  %idxprom = sext i32 %from to i64, !dbg !186
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !186
  %0 = load i32* %arrayidx, align 4, !dbg !186, !tbaa !65
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !44), !dbg !186
  store i32 13, i32* %arrayidx, align 4, !dbg !187, !tbaa !65
  %idxprom3 = sext i32 %color to i64, !dbg !188
  %arrayidx4 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom3, !dbg !188
  %1 = load i32* %arrayidx4, align 4, !dbg !188, !tbaa !65
  %inc = add nsw i32 %1, 1, !dbg !188
  store i32 %inc, i32* %arrayidx4, align 4, !dbg !188, !tbaa !65
  %piece = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom3, i64 0, i32 0, !dbg !189
  store i32 %0, i32* %piece, align 16, !dbg !189, !tbaa !65
  %square11 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom3, i64 0, i32 1, !dbg !190
  store i32 %from, i32* %square11, align 4, !dbg !190, !tbaa !65
  call void @setup_attackers(i32 %square) #2, !dbg !191
  %idxprom12 = sext i32 %square to i64, !dbg !192
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom12, !dbg !192
  %2 = load i32* %arrayidx13, align 4, !dbg !192, !tbaa !65
  %idxprom14 = sext i32 %2 to i64, !dbg !192
  %arrayidx15 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom14, !dbg !192
  %3 = load i32* %arrayidx15, align 4, !dbg !192, !tbaa !65
  %ispos = icmp sgt i32 %3, -1, !dbg !192
  %neg = sub i32 0, %3, !dbg !192
  %4 = select i1 %ispos, i32 %3, i32 %neg, !dbg !192
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !43), !dbg !192
  %lnot = icmp eq i32 %color, 0, !dbg !193
  %idxprom16 = zext i1 %lnot to i64, !dbg !193
  %arrayidx17 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom16, !dbg !193
  %5 = load i32* %arrayidx17, align 4, !dbg !193, !tbaa !65
  %tobool18 = icmp eq i32 %5, 0, !dbg !193
  br i1 %tobool18, label %if.then, label %if.else, !dbg !193

if.then:                                          ; preds = %entry
  store i32 %0, i32* %arrayidx, align 4, !dbg !194, !tbaa !65
  br label %return, !dbg !196

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !46), !dbg !197
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !45), !dbg !200
  %arrayidx22 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom3, !dbg !201
  store i32 1, i32* %arrayidx22, align 4, !dbg !201, !tbaa !65
  %arrayidx27 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom16, !dbg !202
  store i32 0, i32* %arrayidx27, align 4, !dbg !202, !tbaa !65
  call void @llvm.dbg.value(metadata !{i32 %lnot.ext}, i64 0, metadata !38), !dbg !203
  %cmp164 = icmp sgt i32 %5, 0, !dbg !204
  br i1 %cmp164, label %while.body.lr.ph, label %while.end, !dbg !204

while.body.lr.ph:                                 ; preds = %if.else
  %lnot.ext = zext i1 %lnot to i32, !dbg !193
  br label %while.body, !dbg !204

while.body:                                       ; preds = %while.body.lr.ph, %if.end109
  %6 = phi i32 [ 0, %while.body.lr.ph ], [ %14, %if.end109 ]
  %arrayidx32169 = phi i32* [ %arrayidx27, %while.body.lr.ph ], [ %arrayidx32, %if.end109 ]
  %hisbestvalue.0168 = phi i32 [ %4, %while.body.lr.ph ], [ %hisbestvalue.1, %if.end109 ]
  %ourbestvalue.0167 = phi i32 [ -1000000, %while.body.lr.ph ], [ %ourbestvalue.3, %if.end109 ]
  %value.0166 = phi i32 [ %4, %while.body.lr.ph ], [ %value.1, %if.end109 ]
  %sside.0165 = phi i32 [ %lnot.ext, %while.body.lr.ph ], [ %xor, %if.end109 ]
  call void @findlowest(i32 %sside.0165, i32 %6) #2, !dbg !205
  %cmp37 = icmp eq i32 %sside.0165, %color, !dbg !207
  %lnot40 = icmp eq i32 %sside.0165, 0, !dbg !208
  %idxprom42 = zext i1 %lnot40 to i64, !dbg !208
  %arrayidx43 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom42, !dbg !208
  %7 = load i32* %arrayidx43, align 4, !dbg !208, !tbaa !65
  %sub = add nsw i32 %7, -1, !dbg !208
  %idxprom44 = sext i32 %sub to i64, !dbg !208
  %piece51 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %idxprom42, i64 %idxprom44, i32 0, !dbg !208
  %8 = load i32* %piece51, align 8, !dbg !208, !tbaa !65
  %idxprom52 = sext i32 %8 to i64, !dbg !208
  %arrayidx53 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom52, !dbg !208
  %9 = load i32* %arrayidx53, align 4, !dbg !208, !tbaa !65
  %ispos158 = icmp sgt i32 %9, -1, !dbg !208
  %neg159 = sub i32 0, %9, !dbg !208
  %10 = select i1 %ispos158, i32 %9, i32 %neg159, !dbg !208
  br i1 %cmp37, label %if.then38, label %if.else72, !dbg !207

if.then38:                                        ; preds = %while.body
  %add = add nsw i32 %10, %value.0166, !dbg !208
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !43), !dbg !208
  %arrayidx59 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom42, !dbg !210
  %11 = load i32* %arrayidx59, align 4, !dbg !210, !tbaa !65
  %cmp65 = icmp sle i32 %11, %7, !dbg !210
  %cmp66 = icmp sgt i32 %add, %ourbestvalue.0167, !dbg !210
  %or.cond = and i1 %cmp65, %cmp66, !dbg !210
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !45), !dbg !211
  %ourbestvalue.1 = select i1 %or.cond, i32 %add, i32 %ourbestvalue.0167, !dbg !210
  %cmp69 = icmp slt i32 %add, %hisbestvalue.0168, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !46), !dbg !212
  %add.hisbestvalue.0 = select i1 %cmp69, i32 %add, i32 %hisbestvalue.0168, !dbg !212
  br label %if.end109, !dbg !212

if.else72:                                        ; preds = %while.body
  %sub90 = sub nsw i32 %value.0166, %10, !dbg !213
  call void @llvm.dbg.value(metadata !{i32 %sub90}, i64 0, metadata !43), !dbg !213
  %cmp91 = icmp sgt i32 %sub90, %ourbestvalue.0167, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %sub90}, i64 0, metadata !45), !dbg !216
  %sub90.ourbestvalue.0 = select i1 %cmp91, i32 %sub90, i32 %ourbestvalue.0167, !dbg !215
  %arrayidx98 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom42, !dbg !218
  %12 = load i32* %arrayidx98, align 4, !dbg !218, !tbaa !65
  %cmp104 = icmp sle i32 %12, %7, !dbg !218
  %cmp106 = icmp slt i32 %sub90, %hisbestvalue.0168, !dbg !218
  %or.cond160 = and i1 %cmp104, %cmp106, !dbg !218
  call void @llvm.dbg.value(metadata !{i32 %sub90}, i64 0, metadata !46), !dbg !219
  %sub90.hisbestvalue.0 = select i1 %or.cond160, i32 %sub90, i32 %hisbestvalue.0168, !dbg !218
  br label %if.end109, !dbg !218

if.end109:                                        ; preds = %if.else72, %if.then38
  %value.1 = phi i32 [ %add, %if.then38 ], [ %sub90, %if.else72 ]
  %ourbestvalue.3 = phi i32 [ %ourbestvalue.1, %if.then38 ], [ %sub90.ourbestvalue.0, %if.else72 ]
  %hisbestvalue.1 = phi i32 [ %add.hisbestvalue.0, %if.then38 ], [ %sub90.hisbestvalue.0, %if.else72 ]
  %13 = load i32* %arrayidx32169, align 4, !dbg !220, !tbaa !65
  %inc112 = add nsw i32 %13, 1, !dbg !220
  store i32 %inc112, i32* %arrayidx32169, align 4, !dbg !220, !tbaa !65
  %xor = xor i32 %sside.0165, 1, !dbg !221
  call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !38), !dbg !221
  %idxprom31 = sext i32 %xor to i64, !dbg !204
  %arrayidx32 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %idxprom31, !dbg !204
  %14 = load i32* %arrayidx32, align 4, !dbg !204, !tbaa !65
  %arrayidx34 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %idxprom31, !dbg !204
  %15 = load i32* %arrayidx34, align 4, !dbg !204, !tbaa !65
  %cmp = icmp slt i32 %14, %15, !dbg !204
  br i1 %cmp, label %while.body, label %while.end, !dbg !204

while.end:                                        ; preds = %if.end109, %if.else
  %hisbestvalue.0.lcssa = phi i32 [ %4, %if.else ], [ %hisbestvalue.1, %if.end109 ]
  %ourbestvalue.0.lcssa = phi i32 [ -1000000, %if.else ], [ %ourbestvalue.3, %if.end109 ]
  store i32 %0, i32* %arrayidx, align 4, !dbg !222, !tbaa !65
  %cmp115 = icmp sgt i32 %ourbestvalue.0.lcssa, %hisbestvalue.0.lcssa, !dbg !223
  %cond = select i1 %cmp115, i32 %hisbestvalue.0.lcssa, i32 %ourbestvalue.0.lcssa, !dbg !223
  br label %return, !dbg !223

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %cond, %while.end ], [ %4, %if.then ]
  ret i32 %retval.0, !dbg !224
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !47, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !31}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setup_attackers", metadata !"setup_attackers", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @setup_attackers, null, null, metadata !9, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [setup_attackers]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!10 = metadata !{i32 786689, metadata !4, metadata !"square", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 22]
!11 = metadata !{i32 786688, metadata !4, metadata !"a_sq", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_sq] [line 29]
!12 = metadata !{i32 786688, metadata !4, metadata !"b_sq", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_sq] [line 29]
!13 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 29]
!14 = metadata !{i32 786688, metadata !4, metadata !"numw", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numw] [line 30]
!15 = metadata !{i32 786688, metadata !4, metadata !"numb", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numb] [line 30]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"findlowest", metadata !"findlowest", metadata !"", i32 161, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @findlowest, null, null, metadata !19, i32 162} ; [ DW_TAG_subprogram ] [line 161] [def] [scope 162] [findlowest]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !8, metadata !8}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !30}
!20 = metadata !{i32 786689, metadata !16, metadata !"color", metadata !5, i32 16777377, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 161]
!21 = metadata !{i32 786689, metadata !16, metadata !"next", metadata !5, i32 33554593, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [next] [line 161]
!22 = metadata !{i32 786688, metadata !16, metadata !"lowestp", metadata !5, i32 163, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowestp] [line 163]
!23 = metadata !{i32 786688, metadata !16, metadata !"lowestv", metadata !5, i32 164, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowestv] [line 164]
!24 = metadata !{i32 786688, metadata !16, metadata !"swap", metadata !5, i32 165, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [swap] [line 165]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"see_data", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [see_data] [line 17, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 64, i64 32, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 64, align 32, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29}
!28 = metadata !{i32 786445, metadata !1, metadata !26, metadata !"piece", i32 15, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [piece] [line 15, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !1, metadata !26, metadata !"square", i32 16, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [square] [line 16, size 32, align 32, offset 32] [from int]
!30 = metadata !{i32 786688, metadata !16, metadata !"i", metadata !5, i32 166, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 166]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"see", metadata !"see", metadata !"", i32 187, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @see, null, null, metadata !34, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [see]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !43, metadata !44, metadata !45, metadata !46}
!35 = metadata !{i32 786689, metadata !31, metadata !"color", metadata !5, i32 16777403, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 187]
!36 = metadata !{i32 786689, metadata !31, metadata !"square", metadata !5, i32 33554619, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [square] [line 187]
!37 = metadata !{i32 786689, metadata !31, metadata !"from", metadata !5, i32 50331835, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 187]
!38 = metadata !{i32 786688, metadata !31, metadata !"sside", metadata !5, i32 189, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sside] [line 189]
!39 = metadata !{i32 786688, metadata !31, metadata !"caps", metadata !5, i32 190, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [caps] [line 190]
!40 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!43 = metadata !{i32 786688, metadata !31, metadata !"value", metadata !5, i32 191, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 191]
!44 = metadata !{i32 786688, metadata !31, metadata !"origpiece", metadata !5, i32 192, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [origpiece] [line 192]
!45 = metadata !{i32 786688, metadata !31, metadata !"ourbestvalue", metadata !5, i32 193, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ourbestvalue] [line 193]
!46 = metadata !{i32 786688, metadata !31, metadata !"hisbestvalue", metadata !5, i32 194, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hisbestvalue] [line 194]
!47 = metadata !{metadata !48, metadata !53, metadata !54, metadata !58, metadata !62}
!48 = metadata !{i32 786484, i32 0, metadata !4, metadata !"rook_o", metadata !"rook_o", metadata !"", metadata !5, i32 26, metadata !49, i32 1, i32 1, [4 x i32]* @setup_attackers.rook_o, null} ; [ DW_TAG_variable ] [rook_o] [line 26] [local] [def]
!49 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !50, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!50 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!53 = metadata !{i32 786484, i32 0, metadata !4, metadata !"bishop_o", metadata !"bishop_o", metadata !"", metadata !5, i32 27, metadata !49, i32 1, i32 1, [4 x i32]* @setup_attackers.bishop_o, null} ; [ DW_TAG_variable ] [bishop_o] [line 27] [local] [def]
!54 = metadata !{i32 786484, i32 0, metadata !4, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !5, i32 28, metadata !55, i32 1, i32 1, [8 x i32]* @setup_attackers.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 28] [local] [def]
!55 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !50, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!58 = metadata !{i32 786484, i32 0, null, metadata !"see_attackers", metadata !"see_attackers", metadata !"", metadata !5, i32 19, metadata !59, i32 0, i32 1, [2 x [16 x %struct.see_data]]* @see_attackers, null} ; [ DW_TAG_variable ] [see_attackers] [line 19] [def]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !25, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from see_data]
!60 = metadata !{metadata !42, metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!62 = metadata !{i32 786484, i32 0, null, metadata !"see_num_attackers", metadata !"see_num_attackers", metadata !"", metadata !5, i32 20, metadata !40, i32 0, i32 1, [2 x i32]* @see_num_attackers, null} ; [ DW_TAG_variable ] [see_num_attackers] [line 20] [def]
!63 = metadata !{i32 22, i32 0, metadata !4, null}
!64 = metadata !{i32 30, i32 0, metadata !4, null}
!65 = metadata !{metadata !"int", metadata !66}
!66 = metadata !{metadata !"omnipotent char", metadata !67}
!67 = metadata !{metadata !"Simple C/C++ TBAA"}
!68 = metadata !{i32 33, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!70 = metadata !{i32 35, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !69, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!72 = metadata !{i32 36, i32 0, metadata !71, null}
!73 = metadata !{i32 5}
!74 = metadata !{i32 39, i32 0, metadata !71, null}
!75 = metadata !{i32 41, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !71, i32 40, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!77 = metadata !{i32 42, i32 0, metadata !76, null}
!78 = metadata !{i32 43, i32 0, metadata !76, null}
!79 = metadata !{i32 44, i32 0, metadata !76, null}
!80 = metadata !{i32 48, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !71, i32 47, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!82 = metadata !{i32 49, i32 0, metadata !81, null}
!83 = metadata !{i32 50, i32 0, metadata !81, null}
!84 = metadata !{i32 51, i32 0, metadata !81, null}
!85 = metadata !{i32 56, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !71, i32 54, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!87 = metadata !{i32 60, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 59, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!89 = metadata !{i32 786443, metadata !1, metadata !86, i32 57, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!90 = metadata !{i32 61, i32 0, metadata !88, null}
!91 = metadata !{i32 62, i32 0, metadata !88, null}
!92 = metadata !{i32 63, i32 0, metadata !88, null}
!93 = metadata !{i32 65, i32 0, metadata !89, null}
!94 = metadata !{i32 67, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !89, i32 66, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!96 = metadata !{i32 68, i32 0, metadata !95, null}
!97 = metadata !{i32 69, i32 0, metadata !95, null}
!98 = metadata !{i32 70, i32 0, metadata !95, null}
!99 = metadata !{i32 72, i32 0, metadata !89, null}
!100 = metadata !{i32 73, i32 0, metadata !89, null}
!101 = metadata !{i32 74, i32 0, metadata !89, null}
!102 = metadata !{i32 75, i32 0, metadata !89, null}
!103 = metadata !{i32 82, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !105, i32 81, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!105 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!106 = metadata !{i32 83, i32 0, metadata !104, null}
!107 = metadata !{i32 1}
!108 = metadata !{i32 85, i32 0, metadata !104, null}
!109 = metadata !{i32 87, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !104, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!111 = metadata !{i32 88, i32 0, metadata !110, null}
!112 = metadata !{i32 89, i32 0, metadata !110, null}
!113 = metadata !{i32 90, i32 0, metadata !110, null}
!114 = metadata !{i32 92, i32 0, metadata !104, null}
!115 = metadata !{i32 94, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !104, i32 93, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!117 = metadata !{i32 95, i32 0, metadata !116, null}
!118 = metadata !{i32 96, i32 0, metadata !116, null}
!119 = metadata !{i32 97, i32 0, metadata !116, null}
!120 = metadata !{i32 102, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !104, i32 101, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!122 = metadata !{i32 103, i32 0, metadata !121, null}
!123 = metadata !{i32 104, i32 0, metadata !121, null}
!124 = metadata !{i32 105, i32 0, metadata !121, null}
!125 = metadata !{i32 109, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !104, i32 108, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!127 = metadata !{i32 110, i32 0, metadata !126, null}
!128 = metadata !{i32 111, i32 0, metadata !126, null}
!129 = metadata !{i32 112, i32 0, metadata !126, null}
!130 = metadata !{i32 117, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 116, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!132 = metadata !{i32 786443, metadata !1, metadata !104, i32 115, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!133 = metadata !{i32 119, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !131, i32 118, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!135 = metadata !{i32 120, i32 0, metadata !134, null}
!136 = metadata !{i32 121, i32 0, metadata !134, null}
!137 = metadata !{i32 122, i32 0, metadata !134, null}
!138 = metadata !{i32 124, i32 0, metadata !131, null}
!139 = metadata !{i32 126, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !131, i32 125, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!141 = metadata !{i32 127, i32 0, metadata !140, null}
!142 = metadata !{i32 128, i32 0, metadata !140, null}
!143 = metadata !{i32 129, i32 0, metadata !140, null}
!144 = metadata !{i32 132, i32 0, metadata !131, null}
!145 = metadata !{i32 133, i32 0, metadata !131, null}
!146 = metadata !{i32 116, i32 0, metadata !132, null}
!147 = metadata !{i32 80, i32 0, metadata !105, null}
!148 = metadata !{i32 141, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !150, i32 140, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!150 = metadata !{i32 786443, metadata !1, metadata !4, i32 139, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!151 = metadata !{i32 142, i32 0, metadata !149, null}
!152 = metadata !{i32 143, i32 0, metadata !149, null}
!153 = metadata !{i32 145, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !149, i32 144, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!155 = metadata !{i32 146, i32 0, metadata !154, null}
!156 = metadata !{i32 147, i32 0, metadata !154, null}
!157 = metadata !{i32 148, i32 0, metadata !154, null}
!158 = metadata !{i32 151, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !149, i32 150, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!160 = metadata !{i32 152, i32 0, metadata !159, null}
!161 = metadata !{i32 153, i32 0, metadata !159, null}
!162 = metadata !{i32 154, i32 0, metadata !159, null}
!163 = metadata !{i32 139, i32 0, metadata !150, null}
!164 = metadata !{i32 157, i32 0, metadata !4, null}
!165 = metadata !{i32 158, i32 0, metadata !4, null}
!166 = metadata !{i32 159, i32 0, metadata !4, null}
!167 = metadata !{i32 161, i32 0, metadata !16, null}
!168 = metadata !{i32 168, i32 0, metadata !16, null}
!169 = metadata !{i32 169, i32 0, metadata !16, null}
!170 = metadata !{i32 171, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !16, i32 171, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!172 = metadata !{i32 173, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !171, i32 172, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!174 = metadata !{i32 undef}
!175 = metadata !{i32 175, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !173, i32 174, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!177 = metadata !{i32 176, i32 0, metadata !176, null}
!178 = metadata !{i32 181, i32 0, metadata !16, null}
!179 = metadata !{i32 182, i32 0, metadata !16, null}
!180 = metadata !{i32 183, i32 0, metadata !16, null}
!181 = metadata !{i32 184, i32 0, metadata !16, null}
!182 = metadata !{i32 187, i32 0, metadata !31, null}
!183 = metadata !{i32 190, i32 0, metadata !31, null}
!184 = metadata !{i32 197, i32 0, metadata !31, null}
!185 = metadata !{i32 198, i32 0, metadata !31, null}
!186 = metadata !{i32 201, i32 0, metadata !31, null}
!187 = metadata !{i32 202, i32 0, metadata !31, null}
!188 = metadata !{i32 204, i32 0, metadata !31, null}
!189 = metadata !{i32 205, i32 0, metadata !31, null}
!190 = metadata !{i32 206, i32 0, metadata !31, null}
!191 = metadata !{i32 209, i32 0, metadata !31, null}
!192 = metadata !{i32 212, i32 0, metadata !31, null}
!193 = metadata !{i32 215, i32 0, metadata !31, null}
!194 = metadata !{i32 217, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !31, i32 216, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!196 = metadata !{i32 218, i32 0, metadata !195, null}
!197 = metadata !{i32 225, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !31, i32 221, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!199 = metadata !{i32 -1000000}
!200 = metadata !{i32 226, i32 0, metadata !198, null}
!201 = metadata !{i32 229, i32 0, metadata !31, null}
!202 = metadata !{i32 230, i32 0, metadata !31, null}
!203 = metadata !{i32 233, i32 0, metadata !31, null}
!204 = metadata !{i32 236, i32 0, metadata !31, null}
!205 = metadata !{i32 239, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !31, i32 237, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!207 = metadata !{i32 241, i32 0, metadata !206, null}
!208 = metadata !{i32 245, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !206, i32 242, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!210 = metadata !{i32 248, i32 0, metadata !209, null}
!211 = metadata !{i32 249, i32 0, metadata !209, null}
!212 = metadata !{i32 252, i32 0, metadata !209, null}
!213 = metadata !{i32 258, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !206, i32 255, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!215 = metadata !{i32 263, i32 0, metadata !214, null}
!216 = metadata !{i32 265, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !214, i32 264, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/see.c]
!218 = metadata !{i32 268, i32 0, metadata !214, null}
!219 = metadata !{i32 269, i32 0, metadata !214, null}
!220 = metadata !{i32 273, i32 0, metadata !206, null}
!221 = metadata !{i32 276, i32 0, metadata !206, null}
!222 = metadata !{i32 281, i32 0, metadata !31, null}
!223 = metadata !{i32 285, i32 0, metadata !31, null}
!224 = metadata !{i32 286, i32 0, metadata !31, null}
