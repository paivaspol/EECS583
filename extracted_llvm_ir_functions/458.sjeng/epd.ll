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
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8 0, i64 576, i32 16, i1 false)
  store i32 0, i32* @white_castled, align 4, !tbaa !0
  store i32 0, i32* @black_castled, align 4, !tbaa !0
  store i32 50, i32* @book_ply, align 4, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %while.cond ], [ 0, %entry ]
  %i.0 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %inbuff, i64 %indvars.iv327
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 32
  %indvars.iv.next328 = add i64 %indvars.iv327, 1
  %inc = add nsw i32 %i.0, 1
  br i1 %cmp, label %while.cond, label %while.cond2

while.cond2:                                      ; preds = %while.cond, %if.end222
  %stage.0 = phi i32 [ %stage.1, %if.end222 ], [ 0, %while.cond ]
  %fileoffset.0 = phi i32 [ %fileoffset.1, %if.end222 ], [ 0, %while.cond ]
  %rankoffset.0 = phi i32 [ %rankoffset.1, %if.end222 ], [ 110, %while.cond ]
  %rankp.0 = phi i32 [ %rankp.1, %if.end222 ], [ 0, %while.cond ]
  %i.1 = phi i32 [ %inc223, %if.end222 ], [ %i.0, %while.cond ]
  %idxprom3 = sext i32 %i.1 to i64
  %arrayidx4 = getelementptr inbounds i8* %inbuff, i64 %idxprom3
  %1 = load i8* %arrayidx4, align 1, !tbaa !1
  switch i8 %1, label %while.body13 [
    i8 10, label %while.end224
    i8 0, label %while.end224
  ]

while.body13:                                     ; preds = %while.cond2
  %cmp14 = icmp eq i32 %stage.0, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else112

land.lhs.true:                                    ; preds = %while.body13
  %idxprom19 = sext i8 %1 to i64
  %call = tail call i16** @__ctype_b_loc() #8
  %2 = load i16** %call, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds i16* %2, i64 %idxprom19
  %3 = load i16* %arrayidx20, align 2, !tbaa !4
  %and = and i16 %3, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %land.lhs.true37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %call24304 = tail call i32 @atoi(i8* %arrayidx4) #9
  %cmp25305 = icmp sgt i32 %call24304, 0
  br i1 %cmp25305, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add i32 %rankoffset.0, %fileoffset.0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = trunc i64 %indvars.iv to i32
  %add27 = add i32 %add, %4
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom28
  store i32 13, i32* %arrayidx29, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call24 = tail call i32 @atoi(i8* %arrayidx4) #9
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp25 = icmp slt i32 %5, %call24
  br i1 %cmp25, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call24.lcssa = phi i32 [ %call24304, %for.cond.preheader ], [ %call24, %for.body ]
  %add34 = add nsw i32 %call24.lcssa, %fileoffset.0
  br label %if.end222

land.lhs.true37:                                  ; preds = %land.lhs.true
  %cmp41 = icmp eq i8 %1, 47
  br i1 %cmp41, label %if.then43, label %land.lhs.true50

if.then43:                                        ; preds = %land.lhs.true37
  %inc44 = add nsw i32 %rankp.0, 1
  %idxprom45 = sext i32 %inc44 to i64
  %arrayidx46 = getelementptr inbounds [8 x i32]* @setup_epd_line.rankoffsets, i64 0, i64 %idxprom45
  %6 = load i32* %arrayidx46, align 4, !tbaa !0
  br label %if.end222

land.lhs.true50:                                  ; preds = %land.lhs.true37
  %and58 = and i16 %3, 1024
  %tobool59 = icmp eq i16 %and58, 0
  br i1 %tobool59, label %if.else112, label %if.then60

if.then60:                                        ; preds = %land.lhs.true50
  %conv53 = sext i8 %1 to i32
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
  ]

sw.bb:                                            ; preds = %if.then60
  %add64 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom65
  store i32 2, i32* %arrayidx66, align 4, !tbaa !0
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then60
  %add68 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom69
  store i32 1, i32* %arrayidx70, align 4, !tbaa !0
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.then60
  %add72 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom73
  store i32 4, i32* %arrayidx74, align 4, !tbaa !0
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.then60
  %add76 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom77
  store i32 3, i32* %arrayidx78, align 4, !tbaa !0
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.then60
  %add80 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom81
  store i32 12, i32* %arrayidx82, align 4, !tbaa !0
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.then60
  %add84 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom85
  store i32 11, i32* %arrayidx86, align 4, !tbaa !0
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.then60
  %add88 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom89
  store i32 8, i32* %arrayidx90, align 4, !tbaa !0
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.then60
  %add92 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom93
  store i32 7, i32* %arrayidx94, align 4, !tbaa !0
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.then60
  %add96 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom97
  store i32 10, i32* %arrayidx98, align 4, !tbaa !0
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.then60
  %add100 = add nsw i32 %rankoffset.0, %fileoffset.0
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom101
  store i32 9, i32* %arrayidx102, align 4, !tbaa !0
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.then60
  %add104 = add nsw i32 %rankoffset.0, %fileoffset.0
  store i32 %add104, i32* @bking_loc, align 4, !tbaa !0
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom105
  store i32 6, i32* %arrayidx106, align 4, !tbaa !0
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.then60
  %add108 = add nsw i32 %rankoffset.0, %fileoffset.0
  store i32 %add108, i32* @wking_loc, align 4, !tbaa !0
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom109
  store i32 5, i32* %arrayidx110, align 4, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then60, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb95, %sw.bb91, %sw.bb87, %sw.bb83, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb
  %inc111 = add nsw i32 %fileoffset.0, 1
  br label %if.end222

if.else112:                                       ; preds = %while.body13, %land.lhs.true50
  %cmp116 = icmp eq i8 %1, 32
  br i1 %cmp116, label %if.then118, label %if.end222

if.then118:                                       ; preds = %if.else112
  %inc119 = add nsw i32 %stage.0, 1
  br i1 %cmp14, label %while.cond123, label %if.else139

while.cond123:                                    ; preds = %if.then118, %while.body129
  %7 = phi i8 [ %.pre329, %while.body129 ], [ 32, %if.then118 ]
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %while.body129 ], [ %idxprom3, %if.then118 ]
  %i.2 = phi i32 [ %inc130, %while.body129 ], [ %i.1, %if.then118 ]
  switch i8 %7, label %if.else138 [
    i8 32, label %while.body129
    i8 119, label %if.then137
  ]

while.body129:                                    ; preds = %while.cond123
  %indvars.iv.next326 = add i64 %indvars.iv325, 1
  %inc130 = add nsw i32 %i.2, 1
  %arrayidx125.phi.trans.insert = getelementptr inbounds i8* %inbuff, i64 %indvars.iv.next326
  %.pre329 = load i8* %arrayidx125.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond123

if.then137:                                       ; preds = %while.cond123
  store i32 1, i32* @white_to_move, align 4, !tbaa !0
  br label %if.end222

if.else138:                                       ; preds = %while.cond123
  store i32 0, i32* @white_to_move, align 4, !tbaa !0
  br label %if.end222

if.else139:                                       ; preds = %if.then118
  switch i32 %stage.0, label %if.end222 [
    i32 1, label %if.then142
    i32 2, label %while.cond173
  ]

if.then142:                                       ; preds = %if.else139
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  br label %while.cond143

while.cond143:                                    ; preds = %while.cond143, %if.then142
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %while.cond143 ], [ %idxprom3, %if.then142 ]
  %i.3 = phi i32 [ %inc150, %while.cond143 ], [ %i.1, %if.then142 ]
  %arrayidx145 = getelementptr inbounds i8* %inbuff, i64 %indvars.iv320
  %8 = load i8* %arrayidx145, align 1, !tbaa !1
  %cmp147 = icmp eq i8 %8, 32
  %indvars.iv.next321 = add i64 %indvars.iv320, 1
  %inc150 = add nsw i32 %i.3, 1
  br i1 %cmp147, label %while.cond143, label %while.cond152.loopexit

while.cond152.loopexit:                           ; preds = %while.cond143
  %idxprom153309 = sext i32 %i.3 to i64
  %arrayidx154310 = getelementptr inbounds i8* %inbuff, i64 %idxprom153309
  %9 = load i8* %arrayidx154310, align 1, !tbaa !1
  %cmp156311 = icmp eq i8 %9, 32
  br i1 %cmp156311, label %while.end168, label %while.body158

while.body158:                                    ; preds = %while.cond152.loopexit, %sw.epilog166
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %sw.epilog166 ], [ %idxprom153309, %while.cond152.loopexit ]
  %10 = phi i8 [ %11, %sw.epilog166 ], [ %9, %while.cond152.loopexit ]
  %i.4312 = phi i32 [ %inc167, %sw.epilog166 ], [ %i.3, %while.cond152.loopexit ]
  %conv155 = sext i8 %10 to i32
  switch i32 %conv155, label %sw.epilog166 [
    i32 113, label %sw.bb165
    i32 75, label %sw.bb162
    i32 81, label %sw.bb163
    i32 107, label %sw.bb164
  ]

sw.bb162:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !tbaa !0
  br label %sw.epilog166

sw.bb163:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !tbaa !0
  br label %sw.epilog166

sw.bb164:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !tbaa !0
  br label %sw.epilog166

sw.bb165:                                         ; preds = %while.body158
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !tbaa !0
  br label %sw.epilog166

sw.epilog166:                                     ; preds = %while.body158, %sw.bb165, %sw.bb164, %sw.bb163, %sw.bb162
  %indvars.iv.next323 = add i64 %indvars.iv322, 1
  %inc167 = add nsw i32 %i.4312, 1
  %arrayidx154 = getelementptr inbounds i8* %inbuff, i64 %indvars.iv.next323
  %11 = load i8* %arrayidx154, align 1, !tbaa !1
  %cmp156 = icmp eq i8 %11, 32
  br i1 %cmp156, label %while.end168, label %while.body158

while.end168:                                     ; preds = %sw.epilog166, %while.cond152.loopexit
  %i.4.lcssa = phi i32 [ %i.3, %while.cond152.loopexit ], [ %inc167, %sw.epilog166 ]
  %dec = add nsw i32 %i.4.lcssa, -1
  br label %if.end222

while.cond173:                                    ; preds = %if.else139, %while.body179
  %12 = phi i8 [ %.pre, %while.body179 ], [ 32, %if.else139 ]
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %while.body179 ], [ %idxprom3, %if.else139 ]
  %i.5 = phi i32 [ %inc180, %while.body179 ], [ %i.1, %if.else139 ]
  switch i8 %12, label %if.else188 [
    i8 32, label %while.body179
    i8 45, label %if.then187
  ]

while.body179:                                    ; preds = %while.cond173
  %indvars.iv.next319 = add i64 %indvars.iv318, 1
  %inc180 = add nsw i32 %i.5, 1
  %arrayidx175.phi.trans.insert = getelementptr inbounds i8* %inbuff, i64 %indvars.iv.next319
  %.pre = load i8* %arrayidx175.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond173

if.then187:                                       ; preds = %while.cond173
  store i32 0, i32* @ep_square, align 4, !tbaa !0
  br label %if.end222

if.else188:                                       ; preds = %while.cond173
  %conv176 = sext i8 %12 to i32
  %inc189 = add nsw i32 %i.5, 1
  %inc193 = add nsw i32 %i.5, 2
  %idxprom194 = sext i32 %inc189 to i64
  %arrayidx195 = getelementptr inbounds i8* %inbuff, i64 %idxprom194
  %13 = load i8* %arrayidx195, align 1, !tbaa !1
  %conv196 = sext i8 %13 to i32
  %14 = mul i32 %conv196, 12
  %sub = add i32 %conv176, -659
  %add199 = add i32 %sub, %14
  store i32 %add199, i32* @ep_square, align 4, !tbaa !0
  br label %if.end222

if.end222:                                        ; preds = %if.else139, %if.then43, %if.else112, %while.end168, %if.then187, %if.else188, %if.then137, %if.else138, %sw.epilog, %for.end
  %stage.1 = phi i32 [ 0, %for.end ], [ 0, %if.then43 ], [ 0, %sw.epilog ], [ %inc119, %if.then137 ], [ %inc119, %if.else138 ], [ %inc119, %while.end168 ], [ %inc119, %if.then187 ], [ %inc119, %if.else188 ], [ %stage.0, %if.else112 ], [ %inc119, %if.else139 ]
  %fileoffset.1 = phi i32 [ %add34, %for.end ], [ 0, %if.then43 ], [ %inc111, %sw.epilog ], [ %fileoffset.0, %if.then137 ], [ %fileoffset.0, %if.else138 ], [ %fileoffset.0, %while.end168 ], [ %fileoffset.0, %if.then187 ], [ %fileoffset.0, %if.else188 ], [ %fileoffset.0, %if.else112 ], [ %fileoffset.0, %if.else139 ]
  %rankoffset.1 = phi i32 [ %rankoffset.0, %for.end ], [ %6, %if.then43 ], [ %rankoffset.0, %sw.epilog ], [ %rankoffset.0, %if.then137 ], [ %rankoffset.0, %if.else138 ], [ %rankoffset.0, %while.end168 ], [ %rankoffset.0, %if.then187 ], [ %rankoffset.0, %if.else188 ], [ %rankoffset.0, %if.else112 ], [ %rankoffset.0, %if.else139 ]
  %rankp.1 = phi i32 [ %rankp.0, %for.end ], [ %inc44, %if.then43 ], [ %rankp.0, %sw.epilog ], [ %rankp.0, %if.then137 ], [ %rankp.0, %if.else138 ], [ %rankp.0, %while.end168 ], [ %rankp.0, %if.then187 ], [ %rankp.0, %if.else188 ], [ %rankp.0, %if.else112 ], [ %rankp.0, %if.else139 ]
  %i.6 = phi i32 [ %i.1, %for.end ], [ %i.1, %if.then43 ], [ %i.1, %sw.epilog ], [ %i.2, %if.then137 ], [ %i.2, %if.else138 ], [ %dec, %while.end168 ], [ %i.5, %if.then187 ], [ %inc193, %if.else188 ], [ %i.1, %if.else112 ], [ %i.1, %if.else139 ]
  %inc223 = add nsw i32 %i.6, 1
  br label %while.cond2

while.end224:                                     ; preds = %while.cond2, %while.cond2
  tail call void @reset_piece_square() #10
  tail call void @initialize_hash() #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare void @reset_piece_square() #4

; Function Attrs: optsize
declare void @initialize_hash() #4

; Function Attrs: nounwind optsize uwtable
define i32 @check_solution(i8* %inbuff, %struct.move_s* byval align 8 %cmove) #0 {
entry:
  %san = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %san, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  call void @comp_to_san(%struct.move_s* byval align 8 %cmove, i8* %0) #10
  %call = call i8* @strstr(i8* %inbuff, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i8* @strstr(i8* %inbuff, i8* %0) #9
  %not.cmp3 = icmp ne i8* %call2, null
  %. = zext i1 %not.cmp3 to i32
  br label %cleanup

if.else5:                                         ; preds = %entry
  %call6 = call i8* @strstr(i8* %inbuff, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #9
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.else14, label %if.then8

if.then8:                                         ; preds = %if.else5
  %call10 = call i8* @strstr(i8* %inbuff, i8* %0) #9
  %cmp11 = icmp eq i8* %call10, null
  %.19 = zext i1 %cmp11 to i32
  br label %cleanup

if.else14:                                        ; preds = %if.else5
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then, %if.else14
  %retval.0 = phi i32 [ 0, %if.else14 ], [ %., %if.then ], [ %.19, %if.then8 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @run_epd_testsuite() #0 {
entry:
  %readbuff = alloca [2000 x i8], align 16
  %testname = alloca [4096 x i8], align 16
  %tempbuff = alloca [2000 x i8], align 16
  %comp_move = alloca %struct.move_s, align 8
  %tmp = alloca %struct.move_s, align 4
  %0 = getelementptr inbounds [2000 x i8]* %readbuff, i64 0, i64 0
  call void @llvm.lifetime.start(i64 2000, i8* %0) #1
  %1 = getelementptr inbounds [4096 x i8]* %testname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %2 = getelementptr inbounds [2000 x i8]* %tempbuff, i64 0, i64 0
  call void @llvm.lifetime.start(i64 2000, i8* %2) #1
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0)) #10
  %3 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %1, i32 256, %struct._IO_FILE* %3) #10
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0)) #10
  %4 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %0, i32 256, %struct._IO_FILE* %4) #10
  %call4 = call i64 @atol(i8* %0) #9
  %conv = trunc i64 %call4 to i32
  %putchar = call i32 @putchar(i32 10) #1
  %mul = mul nsw i32 %conv, 100
  %call7 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #10
  %call975 = call i8* @fgets(i8* %0, i32 2000, %struct._IO_FILE* %call7) #10
  %cmp76 = icmp eq i8* %call975, null
  br i1 %cmp76, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %5 = bitcast %struct.move_s* %comp_move to i8*
  %6 = bitcast %struct.move_s* %tmp to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end65
  %found.078 = phi i32 [ 0, %while.body.lr.ph ], [ %found.1, %if.end65 ]
  %tested.077 = phi i32 [ 1, %while.body.lr.ph ], [ %phitmp, %if.end65 ]
  call void @setup_epd_line(i8* %0) #11
  %7 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool = icmp eq i32 %7, 0
  %cond = zext i1 %not.tobool to i32
  store i32 %cond, i32* @root_to_move, align 4, !tbaa !0
  call void @clear_tt() #10
  call void @initialize_hash() #10
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  call void @display_board(%struct._IO_FILE* %8, i32 1) #10
  store i32 0, i32* @forcedwin, align 4, !tbaa !0
  %call12 = call i32 @interrupt() #10
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %9 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  call void @rinput(i8* %2, i32 256, %struct._IO_FILE* %9) #10
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  store i32 %mul, i32* @fixed_time, align 4, !tbaa !0
  call void @think(%struct.move_s* sret %tmp) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 4, i1 false), !tbaa.struct !5
  %10 = load i32* @nodes, align 4, !tbaa !0
  %11 = load i32* @qnodes, align 4, !tbaa !0
  %conv15 = sitofp i32 %11 to float
  %conv16 = sitofp i32 %10 to float
  %div = fdiv float %conv15, %conv16
  %conv19 = fmul float %div, 1.000000e+02
  %conv20 = fpext float %conv19 to double
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str7, i64 0, i64 0), i32 %10, double %conv20) #10
  %12 = load i32* @ECacheProbes, align 4, !tbaa !0
  %13 = load i32* @ECacheHits, align 4, !tbaa !0
  %conv22 = uitofp i32 %13 to float
  %conv23 = uitofp i32 %12 to float
  %add = fadd float %conv23, 1.000000e+00
  %div24 = fdiv float %conv22, %add
  %mul25 = fmul float %div24, 1.000000e+02
  %conv26 = fpext float %mul25 to double
  %call27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 %12, i32 %13, double %conv26) #10
  %14 = load i32* @TTStores, align 4, !tbaa !0
  %15 = load i32* @TTProbes, align 4, !tbaa !0
  %16 = load i32* @TTHits, align 4, !tbaa !0
  %conv28 = uitofp i32 %16 to float
  %conv29 = uitofp i32 %15 to float
  %add30 = fadd float %conv29, 1.000000e+00
  %div31 = fdiv float %conv28, %add30
  %mul32 = fmul float %div31, 1.000000e+02
  %conv33 = fpext float %mul32 to double
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str9, i64 0, i64 0), i32 %14, i32 %15, i32 %16, double %conv33) #10
  %17 = load i32* @NTries, align 4, !tbaa !0
  %18 = load i32* @NCuts, align 4, !tbaa !0
  %conv35 = uitofp i32 %18 to float
  %mul36 = fmul float %conv35, 1.000000e+02
  %conv37 = uitofp i32 %17 to float
  %add38 = fadd float %conv37, 1.000000e+00
  %div39 = fdiv float %mul36, %add38
  %conv40 = fpext float %div39 to double
  %19 = load i32* @TExt, align 4, !tbaa !0
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 %17, i32 %18, double %conv40, i32 %19) #10
  %20 = load i32* @ext_check, align 4, !tbaa !0
  %21 = load i32* @razor_drop, align 4, !tbaa !0
  %22 = load i32* @razor_material, align 4, !tbaa !0
  %call42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), i32 %20, i32 %21, i32 %22) #10
  %23 = load i32* @FHF, align 4, !tbaa !0
  %conv43 = uitofp i32 %23 to float
  %mul44 = fmul float %conv43, 1.000000e+02
  %24 = load i32* @FH, align 4, !tbaa !0
  %conv45 = uitofp i32 %24 to float
  %div46 = fdiv float %mul44, %conv45
  %add47 = fadd float %div46, 1.000000e+00
  %conv48 = fpext float %add47 to double
  %call49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), double %conv48) #10
  %25 = load i32* @Material, align 4, !tbaa !0
  %call50 = call i32 @eval(i32 -1000000, i32 1000000) #10
  %26 = load i32* @maxposdiff, align 4, !tbaa !0
  %call51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i32 %25, i32 %call50, i32 %26) #10
  %putchar73 = call i32 @putchar(i32 10) #1
  %27 = load i32* @forcedwin, align 4, !tbaa !0
  %tobool53 = icmp eq i32 %27, 0
  br i1 %tobool53, label %if.then54, label %if.else63

if.then54:                                        ; preds = %if.end
  %call56 = call i32 @check_solution(i8* %0, %struct.move_s* byval align 8 %comp_move) #11
  %tobool57 = icmp eq i32 %call56, 0
  br i1 %tobool57, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.then54
  %inc59 = add nsw i32 %found.078, 1
  %puts74 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str19, i64 0, i64 0))
  br label %if.end65

if.else:                                          ; preds = %if.then54
  %puts = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str, i64 0, i64 0))
  br label %if.end65

if.else63:                                        ; preds = %if.end
  %inc64 = add nsw i32 %found.078, 1
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.else, %if.else63
  %found.1 = phi i32 [ %inc64, %if.else63 ], [ %inc59, %if.then58 ], [ %found.078, %if.else ]
  %call66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i32 %found.1, i32 %tested.077) #10
  %phitmp = add i32 %tested.077, 1
  %call9 = call i8* @fgets(i8* %0, i32 2000, %struct._IO_FILE* %call7) #10
  %cmp = icmp eq i8* %call9, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %if.end65, %entry
  %putchar72 = call i32 @putchar(i32 10) #1
  call void @llvm.lifetime.end(i64 2000, i8* %2) #1
  call void @llvm.lifetime.end(i64 4096, i8* %1) #1
  call void @llvm.lifetime.end(i64 2000, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare void @rinput(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize readonly
declare i64 @atol(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: optsize
declare void @clear_tt() #4

; Function Attrs: optsize
declare void @display_board(%struct._IO_FILE*, i32) #4

; Function Attrs: optsize
declare i32 @interrupt() #4

; Function Attrs: optsize
declare void @think(%struct.move_s* sret) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare i32 @eval(i32, i32) #4

; Function Attrs: noreturn nounwind optsize uwtable
define void @run_autotest(i8* nocapture %testset) #6 {
entry:
  %readbuff = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 4
  %0 = getelementptr inbounds [256 x i8]* %readbuff, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %call = call %struct._IO_FILE* @fopen(i8* %testset, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #10
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i64 @rtime() #10
  %call222 = call i8* @fgets(i8* %0, i32 256, %struct._IO_FILE* %call) #10
  %cmp323 = icmp eq i8* %call222, null
  br i1 %cmp323, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end12
  call void @setup_epd_line(i8* %0) #11
  %1 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool = icmp eq i32 %1, 0
  %cond = zext i1 %not.tobool to i32
  store i32 %cond, i32* @root_to_move, align 4, !tbaa !0
  call void @clear_tt() #10
  call void @initialize_hash() #10
  %putchar = call i32 @putchar(i32 10) #1
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  call void @display_board(%struct._IO_FILE* %2, i32 1) #10
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* %0) #10
  %call9 = call i8* @fgets(i8* %0, i32 256, %struct._IO_FILE* %call) #10
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  call void @exit(i32 1) #12
  unreachable

if.end12:                                         ; preds = %while.body
  %call14 = call i32 @atoi(i8* %0) #9
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0), i32 %call14) #10
  store i32 %call14, i32* @maxdepth, align 4, !tbaa !0
  store i32 1000000, i32* @fixed_time, align 4, !tbaa !0
  call void @think(%struct.move_s* sret %tmp) #10
  %call2 = call i8* @fgets(i8* %0, i32 256, %struct._IO_FILE* %call) #10
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %while.end, label %while.body

while.end:                                        ; preds = %if.end12, %if.end
  %call16 = call i64 @rtime() #10
  %call17 = call i32 @fclose(%struct._IO_FILE* %call) #10
  call void @exit(i32 0) #12
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #7

; Function Attrs: optsize
declare i64 @rtime() #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !0, i64 16, i64 4, metadata !0, i64 20, i64 4, metadata !0}
