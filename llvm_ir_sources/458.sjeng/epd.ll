; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@setup_epd_line.rankoffsets = internal unnamed_addr constant [8 x i32] [i32 110, i32 98, i32 86, i32 74, i32 62, i32 50, i32 38, i32 26], align 16
@board = external global [144 x i32]
@white_castled = external global i32
@black_castled = external global i32
@book_ply = external global i32
@bking_loc = external global i32
@wking_loc = external global i32
@white_to_move = external global i32
@moved = external global [144 x i32]
@ep_square = external global i32
@.str = private unnamed_addr constant [3 x i8] c"bm\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"No best-move or avoid-move found!\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"\0AName of EPD testsuite: \00", align 1
@stdin = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [21 x i8] c"\0ATime per move (s): \00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@root_to_move = external global i32
@stdout = external global %struct._IO_FILE*
@forcedwin = external global i32
@fixed_time = external global i32
@.str7 = private unnamed_addr constant [29 x i8] c"\0ANodes: %i (%0.2f%% qnodes)\0A\00", align 1
@nodes = external global i32
@qnodes = external global i32
@.str8 = private unnamed_addr constant [54 x i8] c"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\0A\00", align 1
@ECacheProbes = external global i32
@ECacheHits = external global i32
@.str9 = private unnamed_addr constant [60 x i8] c"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\0A\00", align 1
@TTStores = external global i32
@TTProbes = external global i32
@TTHits = external global i32
@.str10 = private unnamed_addr constant [51 x i8] c"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\0A\00", align 1
@NTries = external global i32
@NCuts = external global i32
@TExt = external global i32
@.str11 = private unnamed_addr constant [61 x i8] c"Check extensions: %u  Razor drops : %u  Razor Material : %u\0A\00", align 1
@ext_check = external global i32
@razor_drop = external global i32
@razor_material = external global i32
@.str12 = private unnamed_addr constant [22 x i8] c"Move ordering : %f%%\0A\00", align 1
@FHF = external global i32
@FH = external global i32
@.str13 = private unnamed_addr constant [47 x i8] c"Material score: %d  Eval : %d  MaxPosDiff: %d\0A\00", align 1
@Material = external global i32
@maxposdiff = external global i32
@.str16 = private unnamed_addr constant [15 x i8] c"Solved: %d/%d\0A\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"EPD: %s\0A\00", align 1
@.str18 = private unnamed_addr constant [21 x i8] c"Searching to %d ply\0A\00", align 1
@maxdepth = external global i32
@str = private unnamed_addr constant [20 x i8] c"Solution not found.\00"
@str19 = private unnamed_addr constant [16 x i8] c"Solution found.\00"

; Function Attrs: nounwind optsize uwtable
define void @setup_epd_line(i8* nocapture %inbuff) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %inbuff}, i64 0, metadata !32), !dbg !156
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !33), !dbg !157
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !35), !dbg !158
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !36), !dbg !159
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !37), !dbg !160
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !39), !dbg !161
  tail call void @llvm.dbg.value(metadata !162, i64 0, metadata !40), !dbg !163
  tail call void @llvm.dbg.value(metadata !164, i64 0, metadata !41), !dbg !165
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8 0, i64 576, i32 16, i1 false), !dbg !166
  store i32 0, i32* @white_castled, align 4, !dbg !167, !tbaa !168
  store i32 0, i32* @black_castled, align 4, !dbg !171, !tbaa !168
  store i32 50, i32* @book_ply, align 4, !dbg !172, !tbaa !168
  tail call void @llvm.dbg.value(metadata !173, i64 0, metadata !36), !dbg !174
  br label %while.cond, !dbg !175

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %while.cond ], [ 0, %entry ]
  %i.0 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %inbuff, i64 %indvars.iv327, !dbg !175
  %0 = load i8* %arrayidx, align 1, !dbg !175, !tbaa !169
  %cmp = icmp eq i8 %0, 32, !dbg !175
  %indvars.iv.next328 = add i64 %indvars.iv327, 1, !dbg !175
  %inc = add nsw i32 %i.0, 1, !dbg !176
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !33), !dbg !176
  br i1 %cmp, label %while.cond, label %while.cond2, !dbg !175

while.cond2:                                      ; preds = %while.cond, %if.end222
  %stage.0 = phi i32 [ %stage.1, %if.end222 ], [ 0, %while.cond ]
  %fileoffset.0 = phi i32 [ %fileoffset.1, %if.end222 ], [ 0, %while.cond ]
  %rankoffset.0 = phi i32 [ %rankoffset.1, %if.end222 ], [ 110, %while.cond ]
  %rankp.0 = phi i32 [ %rankp.1, %if.end222 ], [ 0, %while.cond ]
  %i.1 = phi i32 [ %inc223, %if.end222 ], [ %i.0, %while.cond ]
  %idxprom3 = sext i32 %i.1 to i64, !dbg !178
  %arrayidx4 = getelementptr inbounds i8* %inbuff, i64 %idxprom3, !dbg !178
  %1 = load i8* %arrayidx4, align 1, !dbg !178, !tbaa !169
  switch i8 %1, label %while.body13 [
    i8 10, label %while.end224
    i8 0, label %while.end224
  ], !dbg !178

while.body13:                                     ; preds = %while.cond2
  %cmp14 = icmp eq i32 %stage.0, 0, !dbg !179
  br i1 %cmp14, label %land.lhs.true, label %if.else112, !dbg !179

land.lhs.true:                                    ; preds = %while.body13
  %idxprom19 = sext i8 %1 to i64, !dbg !179
  %call = tail call i16** @__ctype_b_loc() #9, !dbg !179
  %2 = load i16** %call, align 8, !dbg !179, !tbaa !181
  %arrayidx20 = getelementptr inbounds i16* %2, i64 %idxprom19, !dbg !179
  %3 = load i16* %arrayidx20, align 2, !dbg !179, !tbaa !182
  %and = and i16 %3, 2048, !dbg !179
  %tobool = icmp eq i16 %and, 0, !dbg !179
  br i1 %tobool, label %land.lhs.true37, label %for.cond.preheader, !dbg !179

for.cond.preheader:                               ; preds = %land.lhs.true
  %call24304 = tail call i32 @atoi(i8* %arrayidx4) #10, !dbg !183
  %cmp25305 = icmp sgt i32 %call24304, 0, !dbg !183
  br i1 %cmp25305, label %for.body.lr.ph, label %for.end, !dbg !183

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add i32 %rankoffset.0, %fileoffset.0, !dbg !186
  br label %for.body, !dbg !183

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = trunc i64 %indvars.iv to i32, !dbg !186
  %add27 = add i32 %add, %4, !dbg !186
  %idxprom28 = sext i32 %add27 to i64, !dbg !186
  %arrayidx29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28, !dbg !186
  store i32 13, i32* %arrayidx29, align 4, !dbg !186, !tbaa !168
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !183
  %call24 = tail call i32 @atoi(i8* %arrayidx4) #10, !dbg !183
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !183
  %cmp25 = icmp slt i32 %5, %call24, !dbg !183
  br i1 %cmp25, label %for.body, label %for.end, !dbg !183

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call24.lcssa = phi i32 [ %call24304, %for.cond.preheader ], [ %call24, %for.body ]
  %add34 = add nsw i32 %call24.lcssa, %fileoffset.0, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %add34}, i64 0, metadata !37), !dbg !187
  br label %if.end222, !dbg !188

land.lhs.true37:                                  ; preds = %land.lhs.true
  %cmp41 = icmp eq i8 %1, 47, !dbg !189
  br i1 %cmp41, label %if.then43, label %land.lhs.true50, !dbg !189

if.then43:                                        ; preds = %land.lhs.true37
  %inc44 = add nsw i32 %rankp.0, 1, !dbg !190
  tail call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !35), !dbg !190
  %idxprom45 = sext i32 %inc44 to i64, !dbg !192
  %arrayidx46 = getelementptr inbounds [8 x i32]* @setup_epd_line.rankoffsets, i64 0, i64 %idxprom45, !dbg !192
  %6 = load i32* %arrayidx46, align 4, !dbg !192, !tbaa !168
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !36), !dbg !192
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !37), !dbg !193
  br label %if.end222, !dbg !194

land.lhs.true50:                                  ; preds = %land.lhs.true37
  %and58 = and i16 %3, 1024, !dbg !195
  %tobool59 = icmp eq i16 %and58, 0, !dbg !195
  br i1 %tobool59, label %if.else112, label %if.then60, !dbg !195

if.then60:                                        ; preds = %land.lhs.true50
  %conv53 = sext i8 %1 to i32, !dbg !195
  switch i32 %conv53, label %sw.epilog [
    i32 112, label %sw.bb
    i32 80, label %sw.bb67
    i32 110, label %sw.bb71
    i32 78, label %sw.bb75
    i32 98, label %sw.bb79
    i32 66, label %sw.bb83
    i32 114, label %sw.bb87
    i32 82, label %sw.bb91
    i32 113, label %sw.bb95
    i32 81, label %sw.bb99
    i32 107, label %sw.bb103
    i32 75, label %sw.bb107
  ], !dbg !196

sw.bb:                                            ; preds = %if.then60
  %add64 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !198
  %idxprom65 = sext i32 %add64 to i64, !dbg !198
  %arrayidx66 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom65, !dbg !198
  store i32 2, i32* %arrayidx66, align 4, !dbg !198, !tbaa !168
  br label %sw.epilog, !dbg !198

sw.bb67:                                          ; preds = %if.then60
  %add68 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !200
  %idxprom69 = sext i32 %add68 to i64, !dbg !200
  %arrayidx70 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom69, !dbg !200
  store i32 1, i32* %arrayidx70, align 4, !dbg !200, !tbaa !168
  br label %sw.epilog, !dbg !200

sw.bb71:                                          ; preds = %if.then60
  %add72 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !201
  %idxprom73 = sext i32 %add72 to i64, !dbg !201
  %arrayidx74 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom73, !dbg !201
  store i32 4, i32* %arrayidx74, align 4, !dbg !201, !tbaa !168
  br label %sw.epilog, !dbg !201

sw.bb75:                                          ; preds = %if.then60
  %add76 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !202
  %idxprom77 = sext i32 %add76 to i64, !dbg !202
  %arrayidx78 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom77, !dbg !202
  store i32 3, i32* %arrayidx78, align 4, !dbg !202, !tbaa !168
  br label %sw.epilog, !dbg !202

sw.bb79:                                          ; preds = %if.then60
  %add80 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !203
  %idxprom81 = sext i32 %add80 to i64, !dbg !203
  %arrayidx82 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom81, !dbg !203
  store i32 12, i32* %arrayidx82, align 4, !dbg !203, !tbaa !168
  br label %sw.epilog, !dbg !203

sw.bb83:                                          ; preds = %if.then60
  %add84 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !204
  %idxprom85 = sext i32 %add84 to i64, !dbg !204
  %arrayidx86 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom85, !dbg !204
  store i32 11, i32* %arrayidx86, align 4, !dbg !204, !tbaa !168
  br label %sw.epilog, !dbg !204

sw.bb87:                                          ; preds = %if.then60
  %add88 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !205
  %idxprom89 = sext i32 %add88 to i64, !dbg !205
  %arrayidx90 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom89, !dbg !205
  store i32 8, i32* %arrayidx90, align 4, !dbg !205, !tbaa !168
  br label %sw.epilog, !dbg !205

sw.bb91:                                          ; preds = %if.then60
  %add92 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !206
  %idxprom93 = sext i32 %add92 to i64, !dbg !206
  %arrayidx94 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom93, !dbg !206
  store i32 7, i32* %arrayidx94, align 4, !dbg !206, !tbaa !168
  br label %sw.epilog, !dbg !206

sw.bb95:                                          ; preds = %if.then60
  %add96 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !207
  %idxprom97 = sext i32 %add96 to i64, !dbg !207
  %arrayidx98 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom97, !dbg !207
  store i32 10, i32* %arrayidx98, align 4, !dbg !207, !tbaa !168
  br label %sw.epilog, !dbg !207

sw.bb99:                                          ; preds = %if.then60
  %add100 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !208
  %idxprom101 = sext i32 %add100 to i64, !dbg !208
  %arrayidx102 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom101, !dbg !208
  store i32 9, i32* %arrayidx102, align 4, !dbg !208, !tbaa !168
  br label %sw.epilog, !dbg !208

sw.bb103:                                         ; preds = %if.then60
  %add104 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !209
  store i32 %add104, i32* @bking_loc, align 4, !dbg !209, !tbaa !168
  %idxprom105 = sext i32 %add104 to i64, !dbg !210
  %arrayidx106 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom105, !dbg !210
  store i32 6, i32* %arrayidx106, align 4, !dbg !210, !tbaa !168
  br label %sw.epilog, !dbg !211

sw.bb107:                                         ; preds = %if.then60
  %add108 = add nsw i32 %rankoffset.0, %fileoffset.0, !dbg !212
  store i32 %add108, i32* @wking_loc, align 4, !dbg !212, !tbaa !168
  %idxprom109 = sext i32 %add108 to i64, !dbg !213
  %arrayidx110 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom109, !dbg !213
  store i32 5, i32* %arrayidx110, align 4, !dbg !213, !tbaa !168
  br label %sw.epilog, !dbg !214

sw.epilog:                                        ; preds = %if.then60, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb95, %sw.bb91, %sw.bb87, %sw.bb83, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb
  %inc111 = add nsw i32 %fileoffset.0, 1, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !37), !dbg !215
  br label %if.end222, !dbg !216

if.else112:                                       ; preds = %while.body13, %land.lhs.true50
  %cmp116 = icmp eq i8 %1, 32, !dbg !217
  br i1 %cmp116, label %if.then118, label %if.end222, !dbg !217

if.then118:                                       ; preds = %if.else112
  %inc119 = add nsw i32 %stage.0, 1, !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %inc119}, i64 0, metadata !39), !dbg !218
  br i1 %cmp14, label %while.cond123, label %if.else139, !dbg !220

while.cond123:                                    ; preds = %if.then118, %while.body129
  %7 = phi i8 [ %.pre329, %while.body129 ], [ 32, %if.then118 ]
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %while.body129 ], [ %idxprom3, %if.then118 ]
  %i.2 = phi i32 [ %inc130, %while.body129 ], [ %i.1, %if.then118 ]
  switch i8 %7, label %if.else138 [
    i8 32, label %while.body129
    i8 119, label %if.then137
  ], !dbg !221

while.body129:                                    ; preds = %while.cond123
  %indvars.iv.next326 = add i64 %indvars.iv325, 1, !dbg !221
  %inc130 = add nsw i32 %i.2, 1, !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %inc130}, i64 0, metadata !33), !dbg !221
  %arrayidx125.phi.trans.insert = getelementptr inbounds i8* %inbuff, i64 %indvars.iv.next326
  %.pre329 = load i8* %arrayidx125.phi.trans.insert, align 1, !dbg !221, !tbaa !169
  br label %while.cond123, !dbg !221

if.then137:                                       ; preds = %while.cond123
  store i32 1, i32* @white_to_move, align 4, !dbg !223, !tbaa !168
  br label %if.end222, !dbg !223

if.else138:                                       ; preds = %while.cond123
  store i32 0, i32* @white_to_move, align 4, !dbg !224, !tbaa !168
  br label %if.end222

if.else139:                                       ; preds = %if.then118
  switch i32 %stage.0, label %if.end222 [
    i32 1, label %if.then142
    i32 2, label %while.cond173
  ], !dbg !225

if.then142:                                       ; preds = %if.else139
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !226, !tbaa !168
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !226, !tbaa !168
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !226, !tbaa !168
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !228, !tbaa !168
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !228, !tbaa !168
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !228, !tbaa !168
  br label %while.cond143, !dbg !229

while.cond143:                                    ; preds = %while.cond143, %if.then142
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %while.cond143 ], [ %idxprom3, %if.then142 ]
  %i.3 = phi i32 [ %inc150, %while.cond143 ], [ %i.1, %if.then142 ]
  %arrayidx145 = getelementptr inbounds i8* %inbuff, i64 %indvars.iv320, !dbg !229
  %8 = load i8* %arrayidx145, align 1, !dbg !229, !tbaa !169
  %cmp147 = icmp eq i8 %8, 32, !dbg !229
  %indvars.iv.next321 = add i64 %indvars.iv320, 1, !dbg !229
  %inc150 = add nsw i32 %i.3, 1, !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %inc150}, i64 0, metadata !33), !dbg !229
  br i1 %cmp147, label %while.cond143, label %while.cond152.loopexit, !dbg !229

while.cond152.loopexit:                           ; preds = %while.cond143
  %idxprom153309 = sext i32 %i.3 to i64, !dbg !230
  %arrayidx154310 = getelementptr inbounds i8* %inbuff, i64 %idxprom153309, !dbg !230
  %9 = load i8* %arrayidx154310, align 1, !dbg !230, !tbaa !169
  %cmp156311 = icmp eq i8 %9, 32, !dbg !230
  br i1 %cmp156311, label %while.end168, label %while.body158, !dbg !230

while.body158:                                    ; preds = %while.cond152.loopexit, %sw.epilog166
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %sw.epilog166 ], [ %idxprom153309, %while.cond152.loopexit ]
  %10 = phi i8 [ %11, %sw.epilog166 ], [ %9, %while.cond152.loopexit ]
  %i.4312 = phi i32 [ %inc167, %sw.epilog166 ], [ %i.3, %while.cond152.loopexit ]
  %conv155 = sext i8 %10 to i32, !dbg !230
  switch i32 %conv155, label %sw.epilog166 [
    i32 113, label %sw.bb165
    i32 75, label %sw.bb162
    i32 81, label %sw.bb163
    i32 107, label %sw.bb164
  ], !dbg !231

sw.bb162:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !233, !tbaa !168
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !233, !tbaa !168
  br label %sw.epilog166, !dbg !235

sw.bb163:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !236, !tbaa !168
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !236, !tbaa !168
  br label %sw.epilog166, !dbg !237

sw.bb164:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !238, !tbaa !168
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !238, !tbaa !168
  br label %sw.epilog166, !dbg !239

sw.bb165:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !240, !tbaa !168
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !240, !tbaa !168
  br label %sw.epilog166, !dbg !241

sw.epilog166:                                     ; preds = %while.body158, %sw.bb165, %sw.bb164, %sw.bb163, %sw.bb162
  %indvars.iv.next323 = add i64 %indvars.iv322, 1, !dbg !230
  %inc167 = add nsw i32 %i.4312, 1, !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %inc167}, i64 0, metadata !33), !dbg !242
  %arrayidx154 = getelementptr inbounds i8* %inbuff, i64 %indvars.iv.next323, !dbg !230
  %11 = load i8* %arrayidx154, align 1, !dbg !230, !tbaa !169
  %cmp156 = icmp eq i8 %11, 32, !dbg !230
  br i1 %cmp156, label %while.end168, label %while.body158, !dbg !230

while.end168:                                     ; preds = %sw.epilog166, %while.cond152.loopexit
  %i.4.lcssa = phi i32 [ %i.3, %while.cond152.loopexit ], [ %inc167, %sw.epilog166 ]
  %dec = add nsw i32 %i.4.lcssa, -1, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !33), !dbg !243
  br label %if.end222, !dbg !244

while.cond173:                                    ; preds = %if.else139, %while.body179
  %12 = phi i8 [ %.pre, %while.body179 ], [ 32, %if.else139 ]
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %while.body179 ], [ %idxprom3, %if.else139 ]
  %i.5 = phi i32 [ %inc180, %while.body179 ], [ %i.1, %if.else139 ]
  switch i8 %12, label %if.else188 [
    i8 32, label %while.body179
    i8 45, label %if.then187
  ], !dbg !245

while.body179:                                    ; preds = %while.cond173
  %indvars.iv.next319 = add i64 %indvars.iv318, 1, !dbg !245
  %inc180 = add nsw i32 %i.5, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32 %inc180}, i64 0, metadata !33), !dbg !245
  %arrayidx175.phi.trans.insert = getelementptr inbounds i8* %inbuff, i64 %indvars.iv.next319
  %.pre = load i8* %arrayidx175.phi.trans.insert, align 1, !dbg !245, !tbaa !169
  br label %while.cond173, !dbg !245

if.then187:                                       ; preds = %while.cond173
  store i32 0, i32* @ep_square, align 4, !dbg !247, !tbaa !168
  br label %if.end222, !dbg !249

if.else188:                                       ; preds = %while.cond173
  %conv176 = sext i8 %12 to i32, !dbg !245
  %inc189 = add nsw i32 %i.5, 1, !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %inc189}, i64 0, metadata !33), !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %conv176}, i64 0, metadata !42), !dbg !250
  %inc193 = add nsw i32 %i.5, 2, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %inc193}, i64 0, metadata !33), !dbg !252
  %idxprom194 = sext i32 %inc189 to i64, !dbg !252
  %arrayidx195 = getelementptr inbounds i8* %inbuff, i64 %idxprom194, !dbg !252
  %13 = load i8* %arrayidx195, align 1, !dbg !252, !tbaa !169
  %conv196 = sext i8 %13 to i32, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %conv196}, i64 0, metadata !43), !dbg !252
  %14 = mul i32 %conv196, 12, !dbg !253
  %sub = add i32 %conv176, -659, !dbg !253
  %add199 = add i32 %sub, %14, !dbg !253
  store i32 %add199, i32* @ep_square, align 4, !dbg !253, !tbaa !168
  br label %if.end222

if.end222:                                        ; preds = %if.else139, %if.then43, %if.else112, %while.end168, %if.then187, %if.else188, %if.then137, %if.else138, %sw.epilog, %for.end
  %stage.1 = phi i32 [ 0, %for.end ], [ 0, %if.then43 ], [ 0, %sw.epilog ], [ %inc119, %if.then137 ], [ %inc119, %if.else138 ], [ %inc119, %while.end168 ], [ %inc119, %if.then187 ], [ %inc119, %if.else188 ], [ %stage.0, %if.else112 ], [ %inc119, %if.else139 ]
  %fileoffset.1 = phi i32 [ %add34, %for.end ], [ 0, %if.then43 ], [ %inc111, %sw.epilog ], [ %fileoffset.0, %if.then137 ], [ %fileoffset.0, %if.else138 ], [ %fileoffset.0, %while.end168 ], [ %fileoffset.0, %if.then187 ], [ %fileoffset.0, %if.else188 ], [ %fileoffset.0, %if.else112 ], [ %fileoffset.0, %if.else139 ]
  %rankoffset.1 = phi i32 [ %rankoffset.0, %for.end ], [ %6, %if.then43 ], [ %rankoffset.0, %sw.epilog ], [ %rankoffset.0, %if.then137 ], [ %rankoffset.0, %if.else138 ], [ %rankoffset.0, %while.end168 ], [ %rankoffset.0, %if.then187 ], [ %rankoffset.0, %if.else188 ], [ %rankoffset.0, %if.else112 ], [ %rankoffset.0, %if.else139 ]
  %rankp.1 = phi i32 [ %rankp.0, %for.end ], [ %inc44, %if.then43 ], [ %rankp.0, %sw.epilog ], [ %rankp.0, %if.then137 ], [ %rankp.0, %if.else138 ], [ %rankp.0, %while.end168 ], [ %rankp.0, %if.then187 ], [ %rankp.0, %if.else188 ], [ %rankp.0, %if.else112 ], [ %rankp.0, %if.else139 ]
  %i.6 = phi i32 [ %i.1, %for.end ], [ %i.1, %if.then43 ], [ %i.1, %sw.epilog ], [ %i.2, %if.then137 ], [ %i.2, %if.else138 ], [ %dec, %while.end168 ], [ %i.5, %if.then187 ], [ %inc193, %if.else188 ], [ %i.1, %if.else112 ], [ %i.1, %if.else139 ]
  %inc223 = add nsw i32 %i.6, 1, !dbg !254
  tail call void @llvm.dbg.value(metadata !{i32 %inc223}, i64 0, metadata !33), !dbg !254
  br label %while.cond2, !dbg !255

while.end224:                                     ; preds = %while.cond2, %while.cond2
  tail call void @reset_piece_square() #11, !dbg !256
  tail call void @initialize_hash() #11, !dbg !257
  ret void, !dbg !258
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: optsize
declare void @reset_piece_square() #5

; Function Attrs: optsize
declare void @initialize_hash() #5

; Function Attrs: nounwind optsize uwtable
define i32 @check_solution(i8* %inbuff, %struct.move_s* byval align 8 %cmove) #0 {
entry:
  %san = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %inbuff}, i64 0, metadata !59), !dbg !259
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %cmove}, metadata !60), !dbg !259
  %0 = getelementptr inbounds [256 x i8]* %san, i64 0, i64 0, !dbg !260
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !260
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %san}, metadata !61), !dbg !260
  call void @comp_to_san(%struct.move_s* byval align 8 %cmove, i8* %0) #11, !dbg !261
  %call = call i8* @strstr(i8* %inbuff, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #10, !dbg !262
  %cmp = icmp eq i8* %call, null, !dbg !262
  br i1 %cmp, label %if.else5, label %if.then, !dbg !262

if.then:                                          ; preds = %entry
  %call2 = call i8* @strstr(i8* %inbuff, i8* %0) #10, !dbg !263
  %not.cmp3 = icmp ne i8* %call2, null, !dbg !265
  %. = zext i1 %not.cmp3 to i32, !dbg !265
  br label %cleanup, !dbg !265

if.else5:                                         ; preds = %entry
  %call6 = call i8* @strstr(i8* %inbuff, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #10, !dbg !266
  %cmp7 = icmp eq i8* %call6, null, !dbg !266
  br i1 %cmp7, label %if.else14, label %if.then8, !dbg !266

if.then8:                                         ; preds = %if.else5
  %call10 = call i8* @strstr(i8* %inbuff, i8* %0) #10, !dbg !267
  %cmp11 = icmp eq i8* %call10, null, !dbg !267
  %.19 = zext i1 %cmp11 to i32, !dbg !269
  br label %cleanup, !dbg !269

if.else14:                                        ; preds = %if.else5
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #11, !dbg !270
  br label %cleanup, !dbg !271

cleanup:                                          ; preds = %if.then8, %if.then, %if.else14
  %retval.0 = phi i32 [ 0, %if.else14 ], [ %., %if.then ], [ %.19, %if.then8 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !271
  ret i32 %retval.0, !dbg !272
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @run_epd_testsuite() #0 {
entry:
  %readbuff = alloca [2000 x i8], align 16
  %testname = alloca [4096 x i8], align 16
  %tempbuff = alloca [2000 x i8], align 16
  %comp_move = alloca %struct.move_s, align 8
  %tmp = alloca %struct.move_s, align 4
  %0 = getelementptr inbounds [2000 x i8]* %readbuff, i64 0, i64 0, !dbg !273
  call void @llvm.lifetime.start(i64 2000, i8* %0) #2, !dbg !273
  call void @llvm.dbg.declare(metadata !{[2000 x i8]* %readbuff}, metadata !125), !dbg !273
  %1 = getelementptr inbounds [4096 x i8]* %testname, i64 0, i64 0, !dbg !274
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2, !dbg !274
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %testname}, metadata !129), !dbg !274
  %2 = getelementptr inbounds [2000 x i8]* %tempbuff, i64 0, i64 0, !dbg !275
  call void @llvm.lifetime.start(i64 2000, i8* %2) #2, !dbg !275
  call void @llvm.dbg.declare(metadata !{[2000 x i8]* %tempbuff}, metadata !133), !dbg !275
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %comp_move}, metadata !136), !dbg !276
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !137), !dbg !277
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !138), !dbg !278
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0)) #11, !dbg !279
  %3 = load %struct._IO_FILE** @stdin, align 8, !dbg !280, !tbaa !181
  call void @rinput(i8* %1, i32 256, %struct._IO_FILE* %3) #11, !dbg !280
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0)) #11, !dbg !281
  %4 = load %struct._IO_FILE** @stdin, align 8, !dbg !282, !tbaa !181
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %4) #11, !dbg !282
  %call4 = call i64 @atol(i8* %0) #10, !dbg !283
  %conv = trunc i64 %call4 to i32, !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !135), !dbg !283
  %putchar = call i32 @putchar(i32 10) #2, !dbg !284
  %mul = mul nsw i32 %conv, 100, !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !135), !dbg !285
  %call7 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #11, !dbg !286
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call7}, i64 0, metadata !69), !dbg !286
  %call975 = call i8* @fgets(i8* %0, i32 2000, %struct._IO_FILE* %call7) #11, !dbg !287
  %cmp76 = icmp eq i8* %call975, null, !dbg !287
  br i1 %cmp76, label %while.end, label %while.body.lr.ph, !dbg !287

while.body.lr.ph:                                 ; preds = %entry
  %5 = bitcast %struct.move_s* %comp_move to i8*, !dbg !288
  %6 = bitcast %struct.move_s* %tmp to i8*, !dbg !288
  br label %while.body, !dbg !287

while.body:                                       ; preds = %while.body.lr.ph, %if.end65
  %found.078 = phi i32 [ 0, %while.body.lr.ph ], [ %found.1, %if.end65 ]
  %tested.077 = phi i32 [ 1, %while.body.lr.ph ], [ %phitmp, %if.end65 ]
  call void @llvm.dbg.value(metadata !{i32 %tested.077}, i64 0, metadata !137), !dbg !290
  call void @setup_epd_line(i8* %0) #12, !dbg !291
  %7 = load i32* @white_to_move, align 4, !dbg !292, !tbaa !168
  %not.tobool = icmp eq i32 %7, 0, !dbg !292
  %cond = zext i1 %not.tobool to i32, !dbg !292
  store i32 %cond, i32* @root_to_move, align 4, !dbg !292, !tbaa !168
  call void @clear_tt() #11, !dbg !293
  call void @initialize_hash() #11, !dbg !294
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !295, !tbaa !181
  call void @display_board(%struct._IO_FILE* %8, i32 1) #11, !dbg !295
  store i32 0, i32* @forcedwin, align 4, !dbg !296, !tbaa !168
  %call12 = call i32 @interrupt() #11, !dbg !297
  %tobool13 = icmp eq i32 %call12, 0, !dbg !297
  br i1 %tobool13, label %if.end, label %if.then, !dbg !297

if.then:                                          ; preds = %while.body
  %9 = load %struct._IO_FILE** @stdin, align 8, !dbg !297, !tbaa !181
  call void @rinput(i8* %2, i32 256, %struct._IO_FILE* %9) #11, !dbg !297
  br label %if.end, !dbg !297

if.end:                                           ; preds = %while.body, %if.then
  store i32 %mul, i32* @fixed_time, align 4, !dbg !298, !tbaa !168
  call void @think(%struct.move_s* sret %tmp) #11, !dbg !288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 4, i1 false), !dbg !288, !tbaa.struct !299
  %10 = load i32* @nodes, align 4, !dbg !300, !tbaa !168
  %11 = load i32* @qnodes, align 4, !dbg !300, !tbaa !168
  %conv15 = sitofp i32 %11 to float, !dbg !300
  %conv16 = sitofp i32 %10 to float, !dbg !300
  %div = fdiv float %conv15, %conv16, !dbg !300
  %conv19 = fmul float %div, 1.000000e+02, !dbg !300
  %conv20 = fpext float %conv19 to double, !dbg !300
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str7, i64 0, i64 0), i32 %10, double %conv20) #11, !dbg !300
  %12 = load i32* @ECacheProbes, align 4, !dbg !301, !tbaa !168
  %13 = load i32* @ECacheHits, align 4, !dbg !301, !tbaa !168
  %conv22 = uitofp i32 %13 to float, !dbg !301
  %conv23 = uitofp i32 %12 to float, !dbg !301
  %add = fadd float %conv23, 1.000000e+00, !dbg !301
  %div24 = fdiv float %conv22, %add, !dbg !301
  %mul25 = fmul float %div24, 1.000000e+02, !dbg !301
  %conv26 = fpext float %mul25 to double, !dbg !301
  %call27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 %12, i32 %13, double %conv26) #11, !dbg !301
  %14 = load i32* @TTStores, align 4, !dbg !302, !tbaa !168
  %15 = load i32* @TTProbes, align 4, !dbg !302, !tbaa !168
  %16 = load i32* @TTHits, align 4, !dbg !302, !tbaa !168
  %conv28 = uitofp i32 %16 to float, !dbg !302
  %conv29 = uitofp i32 %15 to float, !dbg !302
  %add30 = fadd float %conv29, 1.000000e+00, !dbg !302
  %div31 = fdiv float %conv28, %add30, !dbg !302
  %mul32 = fmul float %div31, 1.000000e+02, !dbg !302
  %conv33 = fpext float %mul32 to double, !dbg !302
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str9, i64 0, i64 0), i32 %14, i32 %15, i32 %16, double %conv33) #11, !dbg !302
  %17 = load i32* @NTries, align 4, !dbg !303, !tbaa !168
  %18 = load i32* @NCuts, align 4, !dbg !303, !tbaa !168
  %conv35 = uitofp i32 %18 to float, !dbg !303
  %mul36 = fmul float %conv35, 1.000000e+02, !dbg !303
  %conv37 = uitofp i32 %17 to float, !dbg !303
  %add38 = fadd float %conv37, 1.000000e+00, !dbg !303
  %div39 = fdiv float %mul36, %add38, !dbg !303
  %conv40 = fpext float %div39 to double, !dbg !303
  %19 = load i32* @TExt, align 4, !dbg !303, !tbaa !168
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 %17, i32 %18, double %conv40, i32 %19) #11, !dbg !303
  %20 = load i32* @ext_check, align 4, !dbg !304, !tbaa !168
  %21 = load i32* @razor_drop, align 4, !dbg !304, !tbaa !168
  %22 = load i32* @razor_material, align 4, !dbg !304, !tbaa !168
  %call42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), i32 %20, i32 %21, i32 %22) #11, !dbg !304
  %23 = load i32* @FHF, align 4, !dbg !305, !tbaa !168
  %conv43 = uitofp i32 %23 to float, !dbg !305
  %mul44 = fmul float %conv43, 1.000000e+02, !dbg !305
  %24 = load i32* @FH, align 4, !dbg !305, !tbaa !168
  %conv45 = uitofp i32 %24 to float, !dbg !305
  %div46 = fdiv float %mul44, %conv45, !dbg !305
  %add47 = fadd float %div46, 1.000000e+00, !dbg !305
  %conv48 = fpext float %add47 to double, !dbg !305
  %call49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), double %conv48) #11, !dbg !305
  %25 = load i32* @Material, align 4, !dbg !306, !tbaa !168
  %call50 = call i32 @eval(i32 -1000000, i32 1000000) #11, !dbg !306
  %26 = load i32* @maxposdiff, align 4, !dbg !306, !tbaa !168
  %call51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i32 %25, i32 %call50, i32 %26) #11, !dbg !306
  %putchar73 = call i32 @putchar(i32 10) #2, !dbg !307
  %27 = load i32* @forcedwin, align 4, !dbg !308, !tbaa !168
  %tobool53 = icmp eq i32 %27, 0, !dbg !308
  br i1 %tobool53, label %if.then54, label %if.else63, !dbg !308

if.then54:                                        ; preds = %if.end
  %call56 = call i32 @check_solution(i8* %0, %struct.move_s* byval align 8 %comp_move) #12, !dbg !309
  %tobool57 = icmp eq i32 %call56, 0, !dbg !309
  br i1 %tobool57, label %if.else, label %if.then58, !dbg !309

if.then58:                                        ; preds = %if.then54
  %inc59 = add nsw i32 %found.078, 1, !dbg !311
  call void @llvm.dbg.value(metadata !{i32 %inc59}, i64 0, metadata !138), !dbg !311
  %puts74 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str19, i64 0, i64 0)), !dbg !313
  br label %if.end65, !dbg !314

if.else:                                          ; preds = %if.then54
  %puts = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str, i64 0, i64 0)), !dbg !315
  br label %if.end65

if.else63:                                        ; preds = %if.end
  %inc64 = add nsw i32 %found.078, 1, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %inc64}, i64 0, metadata !138), !dbg !317
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.else, %if.else63
  %found.1 = phi i32 [ %inc64, %if.else63 ], [ %inc59, %if.then58 ], [ %found.078, %if.else ]
  %call66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i32 %found.1, i32 %tested.077) #11, !dbg !319
  %phitmp = add i32 %tested.077, 1, !dbg !320
  %call9 = call i8* @fgets(i8* %0, i32 2000, %struct._IO_FILE* %call7) #11, !dbg !287
  %cmp = icmp eq i8* %call9, null, !dbg !287
  br i1 %cmp, label %while.end, label %while.body, !dbg !287

while.end:                                        ; preds = %if.end65, %entry
  %putchar72 = call i32 @putchar(i32 10) #2, !dbg !321
  call void @llvm.lifetime.end(i64 2000, i8* %2) #2, !dbg !322
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2, !dbg !322
  call void @llvm.lifetime.end(i64 2000, i8* %0) #2, !dbg !322
  ret void, !dbg !322
}

; Function Attrs: optsize
declare void @rinput(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: nounwind optsize readonly
declare i64 @atol(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: optsize
declare void @clear_tt() #5

; Function Attrs: optsize
declare void @display_board(%struct._IO_FILE*, i32) #5

; Function Attrs: optsize
declare i32 @interrupt() #5

; Function Attrs: optsize
declare void @think(%struct.move_s* sret) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare i32 @eval(i32, i32) #5

; Function Attrs: noreturn nounwind optsize uwtable
define void @run_autotest(i8* nocapture %testset) #7 {
entry:
  %readbuff = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 4
  call void @llvm.dbg.value(metadata !{i8* %testset}, i64 0, metadata !141), !dbg !323
  %0 = getelementptr inbounds [256 x i8]* %readbuff, i64 0, i64 0, !dbg !324
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !324
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %readbuff}, metadata !143), !dbg !324
  %call = call %struct._IO_FILE* @fopen(i8* %testset, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #11, !dbg !325
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !142), !dbg !325
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #13, !dbg !326
  unreachable, !dbg !326

if.end:                                           ; preds = %entry
  %call1 = call i64 @rtime() #11, !dbg !327
  call void @llvm.dbg.value(metadata !{i64 %call1}, i64 0, metadata !145), !dbg !327
  %call222 = call i8* @fgets(i8* %0, i32 256, %struct._IO_FILE* %call) #11, !dbg !328
  %cmp323 = icmp eq i8* %call222, null, !dbg !328
  br i1 %cmp323, label %while.end, label %while.body, !dbg !328

while.body:                                       ; preds = %if.end, %if.end12
  call void @setup_epd_line(i8* %0) #12, !dbg !329
  %1 = load i32* @white_to_move, align 4, !dbg !331, !tbaa !168
  %not.tobool = icmp eq i32 %1, 0, !dbg !331
  %cond = zext i1 %not.tobool to i32, !dbg !331
  store i32 %cond, i32* @root_to_move, align 4, !dbg !331, !tbaa !168
  call void @clear_tt() #11, !dbg !332
  call void @initialize_hash() #11, !dbg !333
  %putchar = call i32 @putchar(i32 10) #2, !dbg !334
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !335, !tbaa !181
  call void @display_board(%struct._IO_FILE* %2, i32 1) #11, !dbg !335
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* %0) #11, !dbg !336
  %call9 = call i8* @fgets(i8* %0, i32 256, %struct._IO_FILE* %call) #11, !dbg !337
  %cmp10 = icmp eq i8* %call9, null, !dbg !337
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !337

if.then11:                                        ; preds = %while.body
  call void @exit(i32 1) #13, !dbg !337
  unreachable, !dbg !337

if.end12:                                         ; preds = %while.body
  %call14 = call i32 @atoi(i8* %0) #10, !dbg !338
  call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !144), !dbg !338
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0), i32 %call14) #11, !dbg !339
  store i32 %call14, i32* @maxdepth, align 4, !dbg !340, !tbaa !168
  store i32 1000000, i32* @fixed_time, align 4, !dbg !341, !tbaa !168
  call void @think(%struct.move_s* sret %tmp) #11, !dbg !342
  %call2 = call i8* @fgets(i8* %0, i32 256, %struct._IO_FILE* %call) #11, !dbg !328
  %cmp3 = icmp eq i8* %call2, null, !dbg !328
  br i1 %cmp3, label %while.end, label %while.body, !dbg !328

while.end:                                        ; preds = %if.end12, %if.end
  %call16 = call i64 @rtime() #11, !dbg !343
  call void @llvm.dbg.value(metadata !{i64 %call16}, i64 0, metadata !149), !dbg !343
  %call17 = call i32 @fclose(%struct._IO_FILE* %call) #11, !dbg !344
  call void @exit(i32 0) #13, !dbg !345
  unreachable, !dbg !345
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #8

; Function Attrs: optsize
declare i64 @rtime() #5

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !151, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !18}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 786436, metadata !19, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!22 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!23 = metadata !{i32 0}
!24 = metadata !{metadata !25, metadata !46, metadata !65, metadata !139}
!25 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"setup_epd_line", metadata !"setup_epd_line", metadata !"", i32 14, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @setup_epd_line, null, null, metadata !31, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [setup_epd_line]
!26 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !29}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!30 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!31 = metadata !{metadata !32, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45}
!32 = metadata !{i32 786689, metadata !25, metadata !"inbuff", metadata !26, i32 16777230, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuff] [line 14]
!33 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !26, i32 16, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 16]
!34 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!35 = metadata !{i32 786688, metadata !25, metadata !"rankp", metadata !26, i32 17, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rankp] [line 17]
!36 = metadata !{i32 786688, metadata !25, metadata !"rankoffset", metadata !26, i32 18, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rankoffset] [line 18]
!37 = metadata !{i32 786688, metadata !25, metadata !"fileoffset", metadata !26, i32 19, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fileoffset] [line 19]
!38 = metadata !{i32 786688, metadata !25, metadata !"j", metadata !26, i32 20, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 20]
!39 = metadata !{i32 786688, metadata !25, metadata !"stage", metadata !26, i32 29, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stage] [line 29]
!40 = metadata !{i32 786688, metadata !25, metadata !"converterf", metadata !26, i32 34, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [converterf] [line 34]
!41 = metadata !{i32 786688, metadata !25, metadata !"converterr", metadata !26, i32 35, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [converterr] [line 35]
!42 = metadata !{i32 786688, metadata !25, metadata !"ep_file", metadata !26, i32 36, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep_file] [line 36]
!43 = metadata !{i32 786688, metadata !25, metadata !"ep_rank", metadata !26, i32 36, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep_rank] [line 36]
!44 = metadata !{i32 786688, metadata !25, metadata !"norm_file", metadata !26, i32 36, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_file] [line 36]
!45 = metadata !{i32 786688, metadata !25, metadata !"norm_rank", metadata !26, i32 36, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_rank] [line 36]
!46 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"check_solution", metadata !"check_solution", metadata !"", i32 177, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.move_s*)* @check_solution, null, null, metadata !58, i32 178} ; [ DW_TAG_subprogram ] [line 177] [def] [scope 178] [check_solution]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{metadata !34, metadata !29, metadata !49}
!49 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!50 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !51, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!52 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!53 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!54 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!55 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!56 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!57 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!58 = metadata !{metadata !59, metadata !60, metadata !61}
!59 = metadata !{i32 786689, metadata !46, metadata !"inbuff", metadata !26, i32 16777393, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuff] [line 177]
!60 = metadata !{i32 786689, metadata !46, metadata !"cmove", metadata !26, i32 33554609, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmove] [line 177]
!61 = metadata !{i32 786688, metadata !46, metadata !"san", metadata !26, i32 179, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [san] [line 179]
!62 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !30, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!65 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"run_epd_testsuite", metadata !"run_epd_testsuite", metadata !"", i32 206, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @run_epd_testsuite, null, null, metadata !68, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [run_epd_testsuite]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null}
!68 = metadata !{metadata !69, metadata !125, metadata !129, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!69 = metadata !{i32 786688, metadata !65, metadata !"testsuite", metadata !26, i32 208, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [testsuite] [line 208]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!73 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !95, metadata !96, metadata !97, metadata !98, metadata !101, metadata !103, metadata !105, metadata !109, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !120, metadata !121}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!77 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!78 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!79 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!80 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!82 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!86 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!87 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!89 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !94}
!91 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!94 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!95 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !93} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!96 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!97 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !34} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!98 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !99} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!99 = metadata !{i32 786454, metadata !73, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!100 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!101 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !102} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!102 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !104} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!104 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!105 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !106} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !30, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!109 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !110} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!111 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !112} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!112 = metadata !{i32 786454, metadata !73, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!113 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!114 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!115 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!116 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!117 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !118} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!118 = metadata !{i32 786454, metadata !73, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!119 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!120 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !34} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!121 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !122} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !30, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!125 = metadata !{i32 786688, metadata !65, metadata !"readbuff", metadata !26, i32 209, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [readbuff] [line 209]
!126 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16000, i64 8, i32 0, i32 0, metadata !30, metadata !127, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16000, align 8, offset 0] [from char]
!127 = metadata !{metadata !128}
!128 = metadata !{i32 786465, i64 0, i64 2000}    ; [ DW_TAG_subrange_type ] [0, 1999]
!129 = metadata !{i32 786688, metadata !65, metadata !"testname", metadata !26, i32 210, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [testname] [line 210]
!130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !30, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!133 = metadata !{i32 786688, metadata !65, metadata !"tempbuff", metadata !26, i32 211, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempbuff] [line 211]
!134 = metadata !{i32 786688, metadata !65, metadata !"nps", metadata !26, i32 212, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nps] [line 212]
!135 = metadata !{i32 786688, metadata !65, metadata !"thinktime", metadata !26, i32 213, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thinktime] [line 213]
!136 = metadata !{i32 786688, metadata !65, metadata !"comp_move", metadata !26, i32 214, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp_move] [line 214]
!137 = metadata !{i32 786688, metadata !65, metadata !"tested", metadata !26, i32 215, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tested] [line 215]
!138 = metadata !{i32 786688, metadata !65, metadata !"found", metadata !26, i32 215, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 215]
!139 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"run_autotest", metadata !"run_autotest", metadata !"", i32 298, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @run_autotest, null, null, metadata !140, i32 299} ; [ DW_TAG_subprogram ] [line 298] [def] [scope 299] [run_autotest]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !149, metadata !150}
!141 = metadata !{i32 786689, metadata !139, metadata !"testset", metadata !26, i32 16777514, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [testset] [line 298]
!142 = metadata !{i32 786688, metadata !139, metadata !"testsuite", metadata !26, i32 300, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [testsuite] [line 300]
!143 = metadata !{i32 786688, metadata !139, metadata !"readbuff", metadata !26, i32 301, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [readbuff] [line 301]
!144 = metadata !{i32 786688, metadata !139, metadata !"searchdepth", metadata !26, i32 302, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [searchdepth] [line 302]
!145 = metadata !{i32 786688, metadata !139, metadata !"start", metadata !26, i32 303, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 303]
!146 = metadata !{i32 786454, metadata !1, null, metadata !"rtime_t", i32 161, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [rtime_t] [line 161, size 0, align 0, offset 0] [from time_t]
!147 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!148 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!149 = metadata !{i32 786688, metadata !139, metadata !"end", metadata !26, i32 303, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 303]
!150 = metadata !{i32 786688, metadata !139, metadata !"comp_move", metadata !26, i32 305, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp_move] [line 305]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786484, i32 0, metadata !25, metadata !"rankoffsets", metadata !"rankoffsets", metadata !"", metadata !26, i32 31, metadata !153, i32 1, i32 1, [8 x i32]* @setup_epd_line.rankoffsets, null} ; [ DW_TAG_variable ] [rankoffsets] [line 31] [local] [def]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !34, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!156 = metadata !{i32 14, i32 0, metadata !25, null}
!157 = metadata !{i32 16, i32 0, metadata !25, null}
!158 = metadata !{i32 17, i32 0, metadata !25, null}
!159 = metadata !{i32 18, i32 0, metadata !25, null}
!160 = metadata !{i32 19, i32 0, metadata !25, null}
!161 = metadata !{i32 29, i32 0, metadata !25, null}
!162 = metadata !{i32 97}
!163 = metadata !{i32 34, i32 0, metadata !25, null}
!164 = metadata !{i32 49}
!165 = metadata !{i32 35, i32 0, metadata !25, null}
!166 = metadata !{i32 38, i32 0, metadata !25, null}
!167 = metadata !{i32 40, i32 0, metadata !25, null}
!168 = metadata !{metadata !"int", metadata !169}
!169 = metadata !{metadata !"omnipotent char", metadata !170}
!170 = metadata !{metadata !"Simple C/C++ TBAA"}
!171 = metadata !{i32 41, i32 0, metadata !25, null}
!172 = metadata !{i32 43, i32 0, metadata !25, null}
!173 = metadata !{i32 110}
!174 = metadata !{i32 45, i32 0, metadata !25, null}
!175 = metadata !{i32 47, i32 0, metadata !25, null}
!176 = metadata !{i32 47, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !25, i32 47, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!178 = metadata !{i32 49, i32 0, metadata !25, null}
!179 = metadata !{i32 51, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !25, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!181 = metadata !{metadata !"any pointer", metadata !169}
!182 = metadata !{metadata !"short", metadata !169}
!183 = metadata !{i32 53, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !185, i32 53, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!185 = metadata !{i32 786443, metadata !1, metadata !180, i32 52, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!186 = metadata !{i32 54, i32 0, metadata !184, null}
!187 = metadata !{i32 56, i32 0, metadata !185, null}
!188 = metadata !{i32 57, i32 0, metadata !185, null}
!189 = metadata !{i32 58, i32 0, metadata !180, null} ; [ DW_TAG_imported_module ]
!190 = metadata !{i32 60, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !180, i32 59, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!192 = metadata !{i32 61, i32 0, metadata !191, null}
!193 = metadata !{i32 62, i32 0, metadata !191, null}
!194 = metadata !{i32 63, i32 0, metadata !191, null}
!195 = metadata !{i32 64, i32 0, metadata !180, null}
!196 = metadata !{i32 66, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !180, i32 65, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!198 = metadata !{i32 68, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !197, i32 67, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!200 = metadata !{i32 69, i32 0, metadata !199, null}
!201 = metadata !{i32 70, i32 0, metadata !199, null}
!202 = metadata !{i32 71, i32 0, metadata !199, null}
!203 = metadata !{i32 72, i32 0, metadata !199, null}
!204 = metadata !{i32 73, i32 0, metadata !199, null}
!205 = metadata !{i32 74, i32 0, metadata !199, null}
!206 = metadata !{i32 75, i32 0, metadata !199, null}
!207 = metadata !{i32 76, i32 0, metadata !199, null}
!208 = metadata !{i32 77, i32 0, metadata !199, null}
!209 = metadata !{i32 79, i32 0, metadata !199, null}
!210 = metadata !{i32 80, i32 0, metadata !199, null}
!211 = metadata !{i32 81, i32 0, metadata !199, null}
!212 = metadata !{i32 83, i32 0, metadata !199, null}
!213 = metadata !{i32 84, i32 0, metadata !199, null}
!214 = metadata !{i32 85, i32 0, metadata !199, null}
!215 = metadata !{i32 87, i32 0, metadata !197, null}
!216 = metadata !{i32 88, i32 0, metadata !197, null}
!217 = metadata !{i32 89, i32 0, metadata !180, null}
!218 = metadata !{i32 91, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !180, i32 90, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!220 = metadata !{i32 93, i32 0, metadata !219, null}
!221 = metadata !{i32 96, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !219, i32 94, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!223 = metadata !{i32 99, i32 0, metadata !222, null}
!224 = metadata !{i32 101, i32 0, metadata !222, null}
!225 = metadata !{i32 103, i32 0, metadata !219, null}
!226 = metadata !{i32 106, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !219, i32 104, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!228 = metadata !{i32 107, i32 0, metadata !227, null}
!229 = metadata !{i32 109, i32 0, metadata !227, null}
!230 = metadata !{i32 111, i32 0, metadata !227, null}
!231 = metadata !{i32 113, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !227, i32 112, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!233 = metadata !{i32 118, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !232, i32 114, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!235 = metadata !{i32 119, i32 0, metadata !234, null}
!236 = metadata !{i32 121, i32 0, metadata !234, null}
!237 = metadata !{i32 122, i32 0, metadata !234, null}
!238 = metadata !{i32 124, i32 0, metadata !234, null}
!239 = metadata !{i32 125, i32 0, metadata !234, null}
!240 = metadata !{i32 127, i32 0, metadata !234, null}
!241 = metadata !{i32 128, i32 0, metadata !234, null}
!242 = metadata !{i32 130, i32 0, metadata !232, null}
!243 = metadata !{i32 132, i32 0, metadata !227, null}
!244 = metadata !{i32 134, i32 0, metadata !227, null}
!245 = metadata !{i32 138, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !219, i32 136, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!247 = metadata !{i32 142, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !246, i32 141, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!249 = metadata !{i32 143, i32 0, metadata !248, null}
!250 = metadata !{i32 146, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !246, i32 145, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!252 = metadata !{i32 147, i32 0, metadata !251, null}
!253 = metadata !{i32 152, i32 0, metadata !251, null}
!254 = metadata !{i32 169, i32 0, metadata !180, null}
!255 = metadata !{i32 170, i32 0, metadata !180, null}
!256 = metadata !{i32 172, i32 0, metadata !25, null}
!257 = metadata !{i32 173, i32 0, metadata !25, null}
!258 = metadata !{i32 175, i32 0, metadata !25, null}
!259 = metadata !{i32 177, i32 0, metadata !46, null}
!260 = metadata !{i32 179, i32 0, metadata !46, null}
!261 = metadata !{i32 181, i32 0, metadata !46, null}
!262 = metadata !{i32 186, i32 0, metadata !46, null}
!263 = metadata !{i32 188, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !46, i32 187, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!265 = metadata !{i32 191, i32 0, metadata !264, null}
!266 = metadata !{i32 193, i32 0, metadata !46, null}
!267 = metadata !{i32 195, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !46, i32 194, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!269 = metadata !{i32 198, i32 0, metadata !268, null}
!270 = metadata !{i32 201, i32 0, metadata !46, null}
!271 = metadata !{i32 203, i32 0, metadata !46, null}
!272 = metadata !{i32 204, i32 0, metadata !46, null}
!273 = metadata !{i32 209, i32 0, metadata !65, null}
!274 = metadata !{i32 210, i32 0, metadata !65, null}
!275 = metadata !{i32 211, i32 0, metadata !65, null}
!276 = metadata !{i32 214, i32 0, metadata !65, null}
!277 = metadata !{i32 217, i32 0, metadata !65, null}
!278 = metadata !{i32 218, i32 0, metadata !65, null}
!279 = metadata !{i32 220, i32 0, metadata !65, null}
!280 = metadata !{i32 221, i32 0, metadata !65, null}
!281 = metadata !{i32 222, i32 0, metadata !65, null}
!282 = metadata !{i32 223, i32 0, metadata !65, null}
!283 = metadata !{i32 224, i32 0, metadata !65, null}
!284 = metadata !{i32 225, i32 0, metadata !65, null}
!285 = metadata !{i32 227, i32 0, metadata !65, null}
!286 = metadata !{i32 229, i32 0, metadata !65, null}
!287 = metadata !{i32 231, i32 0, metadata !65, null}
!288 = metadata !{i32 250, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !65, i32 232, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!290 = metadata !{i32 233, i32 0, metadata !289, null}
!291 = metadata !{i32 235, i32 0, metadata !289, null}
!292 = metadata !{i32 237, i32 0, metadata !289, null}
!293 = metadata !{i32 239, i32 0, metadata !289, null}
!294 = metadata !{i32 240, i32 0, metadata !289, null}
!295 = metadata !{i32 242, i32 0, metadata !289, null}
!296 = metadata !{i32 244, i32 0, metadata !289, null}
!297 = metadata !{i32 246, i32 0, metadata !289, null}
!298 = metadata !{i32 248, i32 0, metadata !289, null}
!299 = metadata !{i64 0, i64 4, metadata !168, i64 4, i64 4, metadata !168, i64 8, i64 4, metadata !168, i64 12, i64 4, metadata !168, i64 16, i64 4, metadata !168, i64 20, i64 4, metadata !168}
!300 = metadata !{i32 253, i32 0, metadata !289, null}
!301 = metadata !{i32 256, i32 0, metadata !289, null}
!302 = metadata !{i32 260, i32 0, metadata !289, null}
!303 = metadata !{i32 264, i32 0, metadata !289, null}
!304 = metadata !{i32 267, i32 0, metadata !289, null}
!305 = metadata !{i32 269, i32 0, metadata !289, null}
!306 = metadata !{i32 271, i32 0, metadata !289, null}
!307 = metadata !{i32 272, i32 0, metadata !289, null}
!308 = metadata !{i32 274, i32 0, metadata !289, null}
!309 = metadata !{i32 276, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !289, i32 275, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!311 = metadata !{i32 278, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !310, i32 277, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!313 = metadata !{i32 279, i32 0, metadata !312, null}
!314 = metadata !{i32 280, i32 0, metadata !312, null}
!315 = metadata !{i32 283, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !310, i32 282, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!317 = metadata !{i32 288, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !289, i32 287, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!319 = metadata !{i32 291, i32 0, metadata !289, null}
!320 = metadata !{i32 293, i32 0, metadata !289, null}
!321 = metadata !{i32 295, i32 0, metadata !65, null}
!322 = metadata !{i32 296, i32 0, metadata !65, null}
!323 = metadata !{i32 298, i32 0, metadata !139, null}
!324 = metadata !{i32 301, i32 0, metadata !139, null}
!325 = metadata !{i32 307, i32 0, metadata !139, null}
!326 = metadata !{i32 309, i32 0, metadata !139, null}
!327 = metadata !{i32 311, i32 0, metadata !139, null}
!328 = metadata !{i32 313, i32 0, metadata !139, null}
!329 = metadata !{i32 315, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !139, i32 314, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/epd.c]
!331 = metadata !{i32 316, i32 0, metadata !330, null}
!332 = metadata !{i32 318, i32 0, metadata !330, null}
!333 = metadata !{i32 319, i32 0, metadata !330, null}
!334 = metadata !{i32 321, i32 0, metadata !330, null}
!335 = metadata !{i32 322, i32 0, metadata !330, null}
!336 = metadata !{i32 324, i32 0, metadata !330, null}
!337 = metadata !{i32 326, i32 0, metadata !330, null}
!338 = metadata !{i32 327, i32 0, metadata !330, null}
!339 = metadata !{i32 329, i32 0, metadata !330, null}
!340 = metadata !{i32 330, i32 0, metadata !330, null}
!341 = metadata !{i32 332, i32 0, metadata !330, null}
!342 = metadata !{i32 333, i32 0, metadata !330, null}
!343 = metadata !{i32 336, i32 0, metadata !139, null}
!344 = metadata !{i32 340, i32 0, metadata !139, null}
!345 = metadata !{i32 341, i32 0, metadata !139, null}
