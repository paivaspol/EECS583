; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.node = type { i8, i8, i8, i8, i32, i32, %struct.node**, %struct.node*, %struct.move_s }

@bufftop = global i32 0, align 4
@membuff = common global i8* null, align 8
@Variant = external global i32
@white_to_move = external global i32
@wking_loc = external global i32
@bking_loc = external global i32
@numb_moves = external global i32
@root_to_move = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@board = external global [144 x i32]
@captures = external global i32
@hash = external global i32
@move_number = external global i32
@ply = external global i32
@hash_history = external global [600 x i32]
@maxply = common global i32 0, align 4
@forwards = common global i32 0, align 4
@phase = external global i32
@nodecount = common global i32 0, align 4
@frees = common global i32 0, align 4
@nodecount2 = common global i32 0, align 4
@pn2 = common global i32 0, align 4
@PBSize = external global i32
@alllosers = common global i32 0, align 4
@rootlosers = common global [300 x i32] zeroinitializer, align 16
@pn_move = common global %struct.move_s zeroinitializer, align 4
@dummy = external global %struct.move_s
@iters = common global i32 0, align 4
@pn_time = common global i32 0, align 4
@forcedwin = common global i32 0, align 4
@kibitzed = common global i32 0, align 4
@xb_mode = external global i32
@post = external global i32
@.str2 = private unnamed_addr constant [94 x i8] c"tellics whisper proof %d, disproof %d, %d losers, highest depth %d, primary %d, secondary %d\0A\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d MaxDepth: %d\0A\00", align 1
@.str5 = private unnamed_addr constant [90 x i8] c"tellics whisper proof %d, disproof %d, %d nodes, %d forwards, %d iters, highest depth %d\0A\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"Time : %f\0A\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"PV: \00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"\0Atellics kibitz Forced win in %d moves.\0A\00", align 1
@result = external global i32
@pn_saver = common global %struct.move_s zeroinitializer, align 4
@.str17 = private unnamed_addr constant [47 x i8] c"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d\0A\00", align 1
@s_threat = external global i32
@str = private unnamed_addr constant [29 x i8] c"tellics whisper Forced reply\00"
@str18 = private unnamed_addr constant [33 x i8] c"tellics kibitz Forced win! (alt)\00"
@str19 = private unnamed_addr constant [27 x i8] c"tellics kibitz Forced win!\00"
@str20 = private unnamed_addr constant [26 x i8] c"This position is UNKNOWN.\00"
@str21 = private unnamed_addr constant [23 x i8] c"This position is LOST.\00"
@str22 = private unnamed_addr constant [22 x i8] c"This position is WON.\00"
@str23 = private unnamed_addr constant [19 x i8] c"\0A0-1 {Black mates}\00"
@str24 = private unnamed_addr constant [19 x i8] c"\0A1-0 {White mates}\00"

; Function Attrs: nounwind optsize uwtable
define i8* @Xmalloc(i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !17), !dbg !203
  %0 = load i32* @bufftop, align 4, !dbg !204, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !18), !dbg !204
  %add = add nsw i32 %0, %size, !dbg !208
  store i32 %add, i32* @bufftop, align 4, !dbg !208, !tbaa !205
  %idxprom = sext i32 %0 to i64, !dbg !209
  %1 = load i8** @membuff, align 8, !dbg !209, !tbaa !210
  %arrayidx = getelementptr inbounds i8* %1, i64 %idxprom, !dbg !209
  ret i8* %arrayidx, !dbg !209
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @Xfree() #0 {
entry:
  store i32 0, i32* @bufftop, align 4, !dbg !211, !tbaa !205
  ret void, !dbg !212
}

; Function Attrs: nounwind optsize uwtable
define void @freenodes(%struct.node* %node) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !51), !dbg !213
  %tobool = icmp eq %struct.node* %node, null, !dbg !214
  br i1 %tobool, label %return, label %if.end, !dbg !214

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.node* %node, i64 0, i32 6, !dbg !215
  %0 = load %struct.node*** %children, align 8, !dbg !215, !tbaa !210
  %tobool1 = icmp eq %struct.node** %0, null, !dbg !215
  br i1 %tobool1, label %if.end19, label %if.then2, !dbg !215

if.then2:                                         ; preds = %if.end
  %num_children = getelementptr inbounds %struct.node* %node, i64 0, i32 1, !dbg !216
  %1 = load i8* %num_children, align 1, !dbg !216, !tbaa !206
  %cmp = icmp eq i8 %1, 0, !dbg !216
  br i1 %cmp, label %if.end19, label %for.body, !dbg !216

for.body:                                         ; preds = %for.inc, %if.then2
  %2 = phi %struct.node** [ %0, %if.then2 ], [ %.pre34, %for.inc ], !dbg !218
  %3 = phi i8 [ %1, %if.then2 ], [ %5, %for.inc ]
  %indvars.iv = phi i64 [ 0, %if.then2 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.node** %2, i64 %indvars.iv, !dbg !218
  %4 = load %struct.node** %arrayidx, align 8, !dbg !218, !tbaa !210
  %cmp10 = icmp eq %struct.node* %4, null, !dbg !218
  br i1 %cmp10, label %for.inc, label %if.then12, !dbg !218

if.then12:                                        ; preds = %for.body
  tail call void @freenodes(%struct.node* %4) #6, !dbg !222
  %.pre33 = load i8* %num_children, align 1, !dbg !224, !tbaa !206
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %for.body, %if.then12
  %5 = phi i8 [ %3, %for.body ], [ %.pre33, %if.then12 ], !dbg !224
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !224
  %conv6 = zext i8 %5 to i32, !dbg !224
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !224
  %cmp7 = icmp slt i32 %6, %conv6, !dbg !224
  %.pre34 = load %struct.node*** %children, align 8, !dbg !218, !tbaa !210
  br i1 %cmp7, label %for.body, label %for.end, !dbg !224

for.end:                                          ; preds = %for.inc
  %7 = bitcast %struct.node** %.pre34 to i8*, !dbg !226
  tail call void @free(i8* %7) #7, !dbg !226
  br label %if.end19, !dbg !227

if.end19:                                         ; preds = %if.then2, %if.end, %for.end
  %8 = getelementptr inbounds %struct.node* %node, i64 0, i32 0, !dbg !228
  tail call void @free(i8* %8) #7, !dbg !228
  br label %return, !dbg !228

return:                                           ; preds = %entry, %if.end19
  ret void, !dbg !228
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @pn_eval(%struct.node* nocapture %this) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %this}, i64 0, metadata !55), !dbg !229
  %0 = load i32* @Variant, align 4, !dbg !230, !tbaa !205
  switch i32 %0, label %if.else3 [
    i32 3, label %if.then
    i32 4, label %if.then2
  ], !dbg !230

if.then:                                          ; preds = %entry
  tail call void @suicide_pn_eval(%struct.node* %this) #6, !dbg !231
  br label %if.end4, !dbg !233

if.then2:                                         ; preds = %entry
  tail call void @losers_pn_eval(%struct.node* %this) #6, !dbg !234
  br label %if.end4, !dbg !236

if.else3:                                         ; preds = %entry
  tail call void @std_pn_eval(%struct.node* %this) #6, !dbg !237
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else3, %if.then
  ret void, !dbg !239
}

; Function Attrs: nounwind optsize uwtable
define void @suicide_pn_eval(%struct.node* nocapture %this) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %this}, i64 0, metadata !68), !dbg !240
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !72), !dbg !241
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !73), !dbg !241
  %evaluated = getelementptr inbounds %struct.node* %this, i64 0, i32 3, !dbg !242
  store i8 1, i8* %evaluated, align 1, !dbg !242, !tbaa !206
  tail call void @llvm.dbg.value(metadata !243, i64 0, metadata !69), !dbg !244
  tail call void @llvm.dbg.value(metadata !243, i64 0, metadata !70), !dbg !244
  %0 = load i32* @piece_count, align 4, !dbg !244, !tbaa !205
  %cmp41 = icmp slt i32 %0, 1, !dbg !244
  br i1 %cmp41, label %if.then12, label %for.body, !dbg !244

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %bp.045 = phi i32 [ %bp.2, %for.inc ], [ 0, %entry ]
  %wp.044 = phi i32 [ %wp.2, %for.inc ], [ 0, %entry ]
  %a.042 = phi i32 [ %a.1, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !246
  %1 = load i32* %arrayidx, align 4, !dbg !246, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !71), !dbg !246
  %tobool = icmp eq i32 %1, 0, !dbg !248
  br i1 %tobool, label %for.inc, label %if.else, !dbg !248

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.042, 1, !dbg !249
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !70), !dbg !249
  %idxprom1 = sext i32 %1 to i64, !dbg !250
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !250
  %2 = load i32* %arrayidx2, align 4, !dbg !250, !tbaa !205
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 7, label %sw.bb
    i32 5, label %sw.bb
    i32 9, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb4
    i32 12, label %sw.bb4
    i32 8, label %sw.bb4
    i32 6, label %sw.bb4
    i32 10, label %sw.bb4
    i32 4, label %sw.bb4
  ], !dbg !250

sw.bb:                                            ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  %inc3 = add nsw i32 %wp.044, 1, !dbg !251
  tail call void @llvm.dbg.value(metadata !{i32 %inc3}, i64 0, metadata !72), !dbg !251
  br label %sw.epilog, !dbg !251

sw.bb4:                                           ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  %inc5 = add nsw i32 %bp.045, 1, !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32 %inc5}, i64 0, metadata !73), !dbg !253
  br label %sw.epilog, !dbg !253

sw.epilog:                                        ; preds = %if.else, %sw.bb4, %sw.bb
  %wp.1 = phi i32 [ %wp.044, %if.else ], [ %wp.044, %sw.bb4 ], [ %inc3, %sw.bb ]
  %bp.1 = phi i32 [ %bp.045, %if.else ], [ %inc5, %sw.bb4 ], [ %bp.045, %sw.bb ]
  %tobool6 = icmp eq i32 %wp.1, 0, !dbg !254
  %tobool7 = icmp eq i32 %bp.1, 0, !dbg !254
  %or.cond = or i1 %tobool6, %tobool7, !dbg !254
  br i1 %or.cond, label %for.inc, label %for.end, !dbg !254

for.inc:                                          ; preds = %sw.epilog, %for.body
  %a.1 = phi i32 [ %inc, %sw.epilog ], [ %a.042, %for.body ]
  %wp.2 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.044, %for.body ]
  %bp.2 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !244
  %cmp = icmp sgt i32 %a.1, %0, !dbg !244
  br i1 %cmp, label %for.end, label %for.body, !dbg !244

for.end:                                          ; preds = %for.inc, %sw.epilog
  %wp.3 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.2, %for.inc ]
  %bp.3 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.2, %for.inc ]
  %tobool11 = icmp eq i32 %wp.3, 0, !dbg !255
  br i1 %tobool11, label %if.then12, label %if.else18, !dbg !255

if.then12:                                        ; preds = %entry, %for.end
  %3 = load i32* @root_to_move, align 4, !dbg !256, !tbaa !205
  %tobool13 = icmp eq i32 %3, 0, !dbg !256
  %value16 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !258
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !256

if.then14:                                        ; preds = %if.then12
  store i8 1, i8* %value16, align 1, !dbg !260, !tbaa !206
  br label %if.end30, !dbg !262

if.else15:                                        ; preds = %if.then12
  store i8 0, i8* %value16, align 1, !dbg !258, !tbaa !206
  br label %if.end30

if.else18:                                        ; preds = %for.end
  %tobool19 = icmp eq i32 %bp.3, 0, !dbg !263
  br i1 %tobool19, label %if.then20, label %if.else27, !dbg !263

if.then20:                                        ; preds = %if.else18
  %4 = load i32* @root_to_move, align 4, !dbg !264, !tbaa !205
  %tobool21 = icmp eq i32 %4, 0, !dbg !264
  %value25 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !266
  br i1 %tobool21, label %if.then22, label %if.else24, !dbg !264

if.then22:                                        ; preds = %if.then20
  store i8 0, i8* %value25, align 1, !dbg !268, !tbaa !206
  br label %if.end30, !dbg !270

if.else24:                                        ; preds = %if.then20
  store i8 1, i8* %value25, align 1, !dbg !266, !tbaa !206
  br label %if.end30

if.else27:                                        ; preds = %if.else18
  %value28 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !271
  store i8 2, i8* %value28, align 1, !dbg !271, !tbaa !206
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.else24, %if.then22, %if.then14, %if.else15
  ret void, !dbg !273
}

; Function Attrs: nounwind optsize uwtable
define void @losers_pn_eval(%struct.node* nocapture %this) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{%struct.node* %this}, i64 0, metadata !76), !dbg !274
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !275
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !275
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !78), !dbg !275
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !83), !dbg !276
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !84), !dbg !276
  %evaluated = getelementptr inbounds %struct.node* %this, i64 0, i32 3, !dbg !277
  store i8 1, i8* %evaluated, align 1, !dbg !277, !tbaa !206
  call void @llvm.dbg.value(metadata !243, i64 0, metadata !81), !dbg !278
  call void @llvm.dbg.value(metadata !243, i64 0, metadata !82), !dbg !278
  %1 = load i32* @piece_count, align 4, !dbg !278, !tbaa !205
  %cmp126 = icmp slt i32 %1, 1, !dbg !278
  br i1 %cmp126, label %if.then12, label %for.body, !dbg !278

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %bp.0130 = phi i32 [ %bp.2, %for.inc ], [ 0, %entry ]
  %wp.0129 = phi i32 [ %wp.2, %for.inc ], [ 0, %entry ]
  %a.0128 = phi i32 [ %a.1, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !280
  %2 = load i32* %arrayidx, align 4, !dbg !280, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !80), !dbg !280
  %tobool = icmp eq i32 %2, 0, !dbg !282
  br i1 %tobool, label %for.inc, label %if.else, !dbg !282

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.0128, 1, !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !82), !dbg !283
  %idxprom1 = sext i32 %2 to i64, !dbg !284
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1, !dbg !284
  %3 = load i32* %arrayidx2, align 4, !dbg !284, !tbaa !205
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb4
    i32 12, label %sw.bb4
    i32 8, label %sw.bb4
    i32 10, label %sw.bb4
    i32 4, label %sw.bb4
  ], !dbg !284

sw.bb:                                            ; preds = %if.else, %if.else, %if.else, %if.else, %if.else
  %inc3 = add nsw i32 %wp.0129, 1, !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %inc3}, i64 0, metadata !83), !dbg !285
  br label %sw.epilog, !dbg !285

sw.bb4:                                           ; preds = %if.else, %if.else, %if.else, %if.else, %if.else
  %inc5 = add nsw i32 %bp.0130, 1, !dbg !287
  call void @llvm.dbg.value(metadata !{i32 %inc5}, i64 0, metadata !84), !dbg !287
  br label %sw.epilog, !dbg !287

sw.epilog:                                        ; preds = %if.else, %sw.bb4, %sw.bb
  %wp.1 = phi i32 [ %wp.0129, %if.else ], [ %wp.0129, %sw.bb4 ], [ %inc3, %sw.bb ]
  %bp.1 = phi i32 [ %bp.0130, %if.else ], [ %inc5, %sw.bb4 ], [ %bp.0130, %sw.bb ]
  %tobool6 = icmp eq i32 %wp.1, 0, !dbg !288
  %tobool7 = icmp eq i32 %bp.1, 0, !dbg !288
  %or.cond = or i1 %tobool6, %tobool7, !dbg !288
  br i1 %or.cond, label %for.inc, label %for.end, !dbg !288

for.inc:                                          ; preds = %sw.epilog, %for.body
  %a.1 = phi i32 [ %inc, %sw.epilog ], [ %a.0128, %for.body ]
  %wp.2 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.0129, %for.body ]
  %bp.2 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.0130, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !278
  %cmp = icmp sgt i32 %a.1, %1, !dbg !278
  br i1 %cmp, label %for.end, label %for.body, !dbg !278

for.end:                                          ; preds = %for.inc, %sw.epilog
  %wp.3 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.2, %for.inc ]
  %bp.3 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.2, %for.inc ]
  %tobool11 = icmp eq i32 %wp.3, 0, !dbg !289
  br i1 %tobool11, label %if.then12, label %if.else18, !dbg !289

if.then12:                                        ; preds = %entry, %for.end
  %4 = load i32* @root_to_move, align 4, !dbg !290, !tbaa !205
  %tobool13 = icmp eq i32 %4, 0, !dbg !290
  %value16 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !292
  %. = zext i1 %tobool13 to i8, !dbg !294
  store i8 %., i8* %value16, align 1, !dbg !292, !tbaa !206
  br label %cleanup, !dbg !296

if.else18:                                        ; preds = %for.end
  %tobool19 = icmp eq i32 %bp.3, 0, !dbg !297
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !297

if.then20:                                        ; preds = %if.else18
  %5 = load i32* @root_to_move, align 4, !dbg !298, !tbaa !205
  %value23 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !300
  %not.tobool21 = icmp ne i32 %5, 0
  %.112 = zext i1 %not.tobool21 to i8
  store i8 %.112, i8* %value23, align 1, !dbg !300, !tbaa !206
  br label %cleanup, !dbg !302

if.end28:                                         ; preds = %if.else18
  %6 = load i32* @white_to_move, align 4, !dbg !303, !tbaa !205
  %tobool29 = icmp eq i32 %6, 0, !dbg !303
  br i1 %tobool29, label %land.lhs.true33, label %land.lhs.true30, !dbg !303

land.lhs.true30:                                  ; preds = %if.end28
  %7 = load i32* @wking_loc, align 4, !dbg !303, !tbaa !205
  %call = call i32 @is_attacked(i32 %7, i32 0) #7, !dbg !303
  %tobool31 = icmp eq i32 %call, 0, !dbg !303
  br i1 %tobool31, label %lor.lhs.false, label %if.then36, !dbg !303

lor.lhs.false:                                    ; preds = %land.lhs.true30
  %.pr = load i32* @white_to_move, align 4, !dbg !303, !tbaa !205
  %tobool32 = icmp eq i32 %.pr, 0, !dbg !303
  br i1 %tobool32, label %land.lhs.true33, label %if.else82, !dbg !303

land.lhs.true33:                                  ; preds = %if.end28, %lor.lhs.false
  %8 = load i32* @bking_loc, align 4, !dbg !304, !tbaa !205
  %call34 = call i32 @is_attacked(i32 %8, i32 1) #7, !dbg !304
  %tobool35 = icmp eq i32 %call34, 0, !dbg !304
  br i1 %tobool35, label %if.else82, label %if.then36, !dbg !304

if.then36:                                        ; preds = %land.lhs.true30, %land.lhs.true33
  store i32 1, i32* @captures, align 4, !dbg !305, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !77), !dbg !307
  %arrayidx37 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !308
  call void @gen(%struct.move_s* %arrayidx37) #7, !dbg !308
  %9 = load i32* @numb_moves, align 4, !dbg !309, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !77), !dbg !309
  store i32 0, i32* @captures, align 4, !dbg !310, !tbaa !206
  call void @llvm.dbg.value(metadata !243, i64 0, metadata !79), !dbg !311
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !80), !dbg !312
  %cmp39124 = icmp sgt i32 %9, 0, !dbg !312
  br i1 %cmp39124, label %for.body40, label %if.then53, !dbg !312

for.cond38:                                       ; preds = %for.body40
  %cmp39 = icmp slt i32 %inc50, %9, !dbg !312
  br i1 %cmp39, label %for.body40, label %if.then53, !dbg !312

for.body40:                                       ; preds = %if.then36, %for.cond38
  %i.0125 = phi i32 [ %inc50, %for.cond38 ], [ 0, %if.then36 ]
  call void @make(%struct.move_s* %arrayidx37, i32 %i.0125) #7, !dbg !314
  %call43 = call i32 @check_legal(%struct.move_s* %arrayidx37, i32 %i.0125, i32 1) #7, !dbg !316
  %tobool44 = icmp eq i32 %call43, 0, !dbg !316
  call void @unmake(%struct.move_s* %arrayidx37, i32 %i.0125) #7, !dbg !317
  %inc50 = add nsw i32 %i.0125, 1, !dbg !312
  call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !80), !dbg !312
  br i1 %tobool44, label %for.cond38, label %if.else79, !dbg !316

if.then53:                                        ; preds = %for.cond38, %if.then36
  store i32 0, i32* @captures, align 4, !dbg !318, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !77), !dbg !320
  call void @gen(%struct.move_s* %arrayidx37) #7, !dbg !321
  %10 = load i32* @numb_moves, align 4, !dbg !322, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !77), !dbg !322
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !80), !dbg !323
  %cmp56121 = icmp sgt i32 %10, 0, !dbg !323
  br i1 %cmp56121, label %for.body57, label %if.then71, !dbg !323

for.cond55:                                       ; preds = %for.body57
  %cmp56 = icmp slt i32 %inc67, %10, !dbg !323
  br i1 %cmp56, label %for.body57, label %if.then71, !dbg !323

for.body57:                                       ; preds = %if.then53, %for.cond55
  %i.1122 = phi i32 [ %inc67, %for.cond55 ], [ 0, %if.then53 ]
  call void @make(%struct.move_s* %arrayidx37, i32 %i.1122) #7, !dbg !325
  %call60 = call i32 @check_legal(%struct.move_s* %arrayidx37, i32 %i.1122, i32 1) #7, !dbg !327
  %tobool61 = icmp eq i32 %call60, 0, !dbg !327
  call void @unmake(%struct.move_s* %arrayidx37, i32 %i.1122) #7, !dbg !328
  %inc67 = add nsw i32 %i.1122, 1, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %inc67}, i64 0, metadata !80), !dbg !323
  br i1 %tobool61, label %for.cond55, label %if.else79, !dbg !327

if.then71:                                        ; preds = %for.cond55, %if.then53
  %11 = load i32* @white_to_move, align 4, !dbg !329, !tbaa !205
  %not.tobool72 = icmp eq i32 %11, 0, !dbg !329
  %cond = zext i1 %not.tobool72 to i32, !dbg !329
  %12 = load i32* @root_to_move, align 4, !dbg !329, !tbaa !205
  %cmp73 = icmp eq i32 %cond, %12, !dbg !329
  %value75 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !331
  br i1 %cmp73, label %if.then74, label %if.else76, !dbg !329

if.then74:                                        ; preds = %if.then71
  store i8 1, i8* %value75, align 1, !dbg !331, !tbaa !206
  br label %cleanup, !dbg !333

if.else76:                                        ; preds = %if.then71
  store i8 0, i8* %value75, align 1, !dbg !334, !tbaa !206
  br label %cleanup

if.else79:                                        ; preds = %for.body40, %for.body57
  %value80 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !336
  store i8 2, i8* %value80, align 1, !dbg !336, !tbaa !206
  br label %cleanup

if.else82:                                        ; preds = %land.lhs.true33, %lor.lhs.false
  %value83 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !338
  store i8 2, i8* %value83, align 1, !dbg !338, !tbaa !206
  br label %cleanup

cleanup:                                          ; preds = %if.else82, %if.then74, %if.else76, %if.else79, %if.then20, %if.then12
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !340
  ret void, !dbg !341
}

; Function Attrs: nounwind optsize uwtable
define void @std_pn_eval(%struct.node* nocapture %this) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{%struct.node* %this}, i64 0, metadata !58), !dbg !342
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !343
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !343
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !60), !dbg !343
  %evaluated = getelementptr inbounds %struct.node* %this, i64 0, i32 3, !dbg !344
  store i8 1, i8* %evaluated, align 1, !dbg !344, !tbaa !206
  %1 = load i32* @white_to_move, align 4, !dbg !345, !tbaa !205
  %tobool = icmp eq i32 %1, 0, !dbg !345
  br i1 %tobool, label %land.lhs.true3, label %land.lhs.true, !dbg !345

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* @wking_loc, align 4, !dbg !345, !tbaa !205
  %call = call i32 @is_attacked(i32 %2, i32 0) #7, !dbg !345
  %tobool1 = icmp eq i32 %call, 0, !dbg !345
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !345

lor.lhs.false:                                    ; preds = %land.lhs.true
  %.pr = load i32* @white_to_move, align 4, !dbg !345, !tbaa !205
  %tobool2 = icmp eq i32 %.pr, 0, !dbg !345
  br i1 %tobool2, label %land.lhs.true3, label %if.else23, !dbg !345

land.lhs.true3:                                   ; preds = %entry, %lor.lhs.false
  %3 = load i32* @bking_loc, align 4, !dbg !346, !tbaa !205
  %call4 = call i32 @is_attacked(i32 %3, i32 1) #7, !dbg !346
  %tobool5 = icmp eq i32 %call4, 0, !dbg !346
  br i1 %tobool5, label %if.else23, label %if.then, !dbg !346

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true3
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !59), !dbg !347
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !349
  call void @gen(%struct.move_s* %arrayidx) #7, !dbg !349
  %4 = load i32* @numb_moves, align 4, !dbg !350, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !59), !dbg !350
  call void @llvm.dbg.value(metadata !243, i64 0, metadata !64), !dbg !351
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !65), !dbg !352
  %cmp35 = icmp sgt i32 %4, 0, !dbg !352
  br i1 %cmp35, label %for.body, label %if.then14.critedge, !dbg !352

for.cond:                                         ; preds = %for.body
  %cmp = icmp slt i32 %inc, %4, !dbg !352
  br i1 %cmp, label %for.body, label %if.then14.critedge, !dbg !352

for.body:                                         ; preds = %if.then, %for.cond
  %i.036 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.036) #7, !dbg !354
  %call8 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.036, i32 1) #7, !dbg !356
  %tobool9 = icmp eq i32 %call8, 0, !dbg !356
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.036) #7, !dbg !357
  %inc = add nsw i32 %i.036, 1, !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !65), !dbg !352
  br i1 %tobool9, label %for.cond, label %if.else20, !dbg !356

if.then14.critedge:                               ; preds = %for.cond, %if.then
  %5 = load i32* @white_to_move, align 4, !dbg !358, !tbaa !205
  %not.tobool15 = icmp eq i32 %5, 0, !dbg !358
  %cond = zext i1 %not.tobool15 to i32, !dbg !358
  %6 = load i32* @root_to_move, align 4, !dbg !358, !tbaa !205
  %cmp16 = icmp eq i32 %cond, %6, !dbg !358
  %value = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !360
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !358

if.then17:                                        ; preds = %if.then14.critedge
  store i8 0, i8* %value, align 1, !dbg !360, !tbaa !206
  br label %if.end25, !dbg !362

if.else:                                          ; preds = %if.then14.critedge
  store i8 1, i8* %value, align 1, !dbg !363, !tbaa !206
  br label %if.end25

if.else20:                                        ; preds = %for.body
  %value21 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !365
  store i8 2, i8* %value21, align 1, !dbg !365, !tbaa !206
  br label %if.end25

if.else23:                                        ; preds = %land.lhs.true3, %lor.lhs.false
  %value24 = getelementptr inbounds %struct.node* %this, i64 0, i32 0, !dbg !367
  store i8 2, i8* %value24, align 1, !dbg !367, !tbaa !206
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.else, %if.then17, %if.else23
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !369
  ret void, !dbg !369
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #4

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #4

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #4

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #4

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.node* @select_most_proving(%struct.node* %node) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !89), !dbg !370
  tail call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !91), !dbg !371
  %expanded36 = getelementptr inbounds %struct.node* %node, i64 0, i32 2, !dbg !372
  %0 = load i8* %expanded36, align 1, !dbg !372, !tbaa !206
  %tobool37 = icmp eq i8 %0, 0, !dbg !372
  br i1 %tobool37, label %while.end23, label %while.body, !dbg !372

while.body:                                       ; preds = %entry, %while.cond.backedge
  %tnode.038 = phi %struct.node* [ %10, %while.cond.backedge ], [ %node, %entry ]
  %1 = load i32* @white_to_move, align 4, !dbg !373, !tbaa !205
  %not.tobool1 = icmp eq i32 %1, 0, !dbg !373
  %cond = zext i1 %not.tobool1 to i32, !dbg !373
  %2 = load i32* @root_to_move, align 4, !dbg !373, !tbaa !205
  %cmp = icmp eq i32 %cond, %2, !dbg !373
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !90), !dbg !375
  %children = getelementptr inbounds %struct.node* %tnode.038, i64 0, i32 6, !dbg !377
  %3 = load %struct.node*** %children, align 8, !dbg !377, !tbaa !210
  br i1 %cmp, label %while.cond2.preheader, label %while.cond6.preheader, !dbg !373

while.cond2.preheader:                            ; preds = %while.body
  %proof3 = getelementptr inbounds %struct.node* %tnode.038, i64 0, i32 4, !dbg !377
  %4 = load i32* %proof3, align 4, !dbg !377, !tbaa !205
  br label %while.cond2, !dbg !377

while.cond6.preheader:                            ; preds = %while.body
  %disproof10 = getelementptr inbounds %struct.node* %tnode.038, i64 0, i32 5, !dbg !378
  %5 = load i32* %disproof10, align 4, !dbg !378, !tbaa !205
  br label %while.cond6, !dbg !378

while.cond2:                                      ; preds = %while.cond2, %while.cond2.preheader
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %while.cond2 ], [ 0, %while.cond2.preheader ]
  %i.0 = phi i32 [ %inc, %while.cond2 ], [ 0, %while.cond2.preheader ]
  %arrayidx = getelementptr inbounds %struct.node** %3, i64 %indvars.iv39, !dbg !377
  %6 = load %struct.node** %arrayidx, align 8, !dbg !377, !tbaa !210
  %proof = getelementptr inbounds %struct.node* %6, i64 0, i32 4, !dbg !377
  %7 = load i32* %proof, align 4, !dbg !377, !tbaa !205
  %cmp4 = icmp eq i32 %7, %4, !dbg !377
  %indvars.iv.next40 = add i64 %indvars.iv39, 1, !dbg !377
  %inc = add nsw i32 %i.0, 1, !dbg !380
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !90), !dbg !380
  br i1 %cmp4, label %if.end, label %while.cond2, !dbg !377

while.cond6:                                      ; preds = %while.cond6, %while.cond6.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond6 ], [ 0, %while.cond6.preheader ]
  %i.1 = phi i32 [ %inc13, %while.cond6 ], [ 0, %while.cond6.preheader ]
  %arrayidx9 = getelementptr inbounds %struct.node** %3, i64 %indvars.iv, !dbg !378
  %8 = load %struct.node** %arrayidx9, align 8, !dbg !378, !tbaa !210
  %disproof = getelementptr inbounds %struct.node* %8, i64 0, i32 5, !dbg !378
  %9 = load i32* %disproof, align 4, !dbg !378, !tbaa !205
  %cmp11 = icmp eq i32 %9, %5, !dbg !378
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !378
  %inc13 = add nsw i32 %i.1, 1, !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32 %inc13}, i64 0, metadata !90), !dbg !382
  br i1 %cmp11, label %if.end, label %while.cond6, !dbg !378

if.end:                                           ; preds = %while.cond2, %while.cond6
  %i.2 = phi i32 [ %i.1, %while.cond6 ], [ %i.0, %while.cond2 ]
  %idxprom15 = sext i32 %i.2 to i64, !dbg !384
  %arrayidx17 = getelementptr inbounds %struct.node** %3, i64 %idxprom15, !dbg !384
  %10 = load %struct.node** %arrayidx17, align 8, !dbg !384, !tbaa !210
  tail call void @llvm.dbg.value(metadata !{%struct.node* %10}, i64 0, metadata !91), !dbg !384
  %11 = load i32* @hash, align 4, !dbg !385, !tbaa !205
  %12 = load i32* @move_number, align 4, !dbg !385, !tbaa !205
  %13 = load i32* @ply, align 4, !dbg !385, !tbaa !205
  %add = add i32 %12, -1, !dbg !385
  %sub = add i32 %add, %13, !dbg !385
  %idxprom18 = sext i32 %sub to i64, !dbg !385
  %arrayidx19 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom18, !dbg !385
  store i32 %11, i32* %arrayidx19, align 4, !dbg !385, !tbaa !205
  %move = getelementptr inbounds %struct.node* %10, i64 0, i32 8, !dbg !386
  tail call void @make(%struct.move_s* %move, i32 0) #7, !dbg !386
  %14 = load i32* @ply, align 4, !dbg !387, !tbaa !205
  %15 = load i32* @maxply, align 4, !dbg !387, !tbaa !205
  %cmp20 = icmp sgt i32 %14, %15, !dbg !387
  br i1 %cmp20, label %if.then21, label %while.cond.backedge, !dbg !387

if.then21:                                        ; preds = %if.end
  store i32 %14, i32* @maxply, align 4, !dbg !388, !tbaa !205
  br label %while.cond.backedge, !dbg !388

while.cond.backedge:                              ; preds = %if.then21, %if.end
  %expanded = getelementptr inbounds %struct.node* %10, i64 0, i32 2, !dbg !372
  %16 = load i8* %expanded, align 1, !dbg !372, !tbaa !206
  %tobool = icmp eq i8 %16, 0, !dbg !372
  br i1 %tobool, label %while.end23, label %while.body, !dbg !372

while.end23:                                      ; preds = %while.cond.backedge, %entry
  %tnode.0.lcssa = phi %struct.node* [ %node, %entry ], [ %10, %while.cond.backedge ]
  ret %struct.node* %tnode.0.lcssa, !dbg !389
}

; Function Attrs: nounwind optsize uwtable
define void @set_proof_and_disproof_numbers(%struct.node* %node) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !94), !dbg !390
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !391
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !391
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !98), !dbg !391
  %expanded = getelementptr inbounds %struct.node* %node, i64 0, i32 2, !dbg !392
  %1 = load i8* %expanded, align 1, !dbg !392, !tbaa !206
  %tobool = icmp eq i8 %1, 0, !dbg !392
  br i1 %tobool, label %if.else90, label %if.then, !dbg !392

if.then:                                          ; preds = %entry
  %2 = load i32* @white_to_move, align 4, !dbg !393, !tbaa !205
  %not.tobool1 = icmp eq i32 %2, 0, !dbg !393
  %cond = zext i1 %not.tobool1 to i32, !dbg !393
  %3 = load i32* @root_to_move, align 4, !dbg !393, !tbaa !205
  %cmp = icmp eq i32 %cond, %3, !dbg !393
  %num_children38 = getelementptr inbounds %struct.node* %node, i64 0, i32 1, !dbg !395
  %4 = load i8* %num_children38, align 1, !dbg !395, !tbaa !206
  %cmp40421 = icmp eq i8 %4, 0, !dbg !395
  br i1 %cmp, label %for.cond37.preheader, label %for.cond.preheader, !dbg !393

for.cond.preheader:                               ; preds = %if.then
  br i1 %cmp40421, label %if.then25, label %for.body.lr.ph, !dbg !398

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children = getelementptr inbounds %struct.node* %node, i64 0, i32 6, !dbg !401
  %5 = load %struct.node*** %children, align 8, !dbg !401, !tbaa !210
  %conv = zext i8 %4 to i32, !dbg !398
  br label %for.body, !dbg !398

for.cond37.preheader:                             ; preds = %if.then
  br i1 %cmp40421, label %for.end66, label %for.body42.lr.ph, !dbg !395

for.body42.lr.ph:                                 ; preds = %for.cond37.preheader
  %children44 = getelementptr inbounds %struct.node* %node, i64 0, i32 6, !dbg !403
  %6 = load %struct.node*** %children44, align 8, !dbg !403, !tbaa !210
  %conv39 = zext i8 %4 to i32, !dbg !395
  br label %for.body42, !dbg !395

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv436 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next437, %for.body ]
  %disproof.0430 = phi i32 [ 100000000, %for.body.lr.ph ], [ %.disproof.0, %for.body ]
  %proof.0429 = phi i32 [ 0, %for.body.lr.ph ], [ %.add, %for.body ]
  %arrayidx = getelementptr inbounds %struct.node** %5, i64 %indvars.iv436, !dbg !401
  %7 = load %struct.node** %arrayidx, align 8, !dbg !401, !tbaa !210
  %proof5 = getelementptr inbounds %struct.node* %7, i64 0, i32 4, !dbg !401
  %8 = load i32* %proof5, align 4, !dbg !401, !tbaa !205
  %add = add nsw i32 %8, %proof.0429, !dbg !401
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !95), !dbg !401
  %cmp6 = icmp sgt i32 %add, 100000000, !dbg !405
  %.add = select i1 %cmp6, i32 100000000, i32 %add, !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %.add}, i64 0, metadata !95), !dbg !406
  %disproof12 = getelementptr inbounds %struct.node* %7, i64 0, i32 5, !dbg !407
  %9 = load i32* %disproof12, align 4, !dbg !407, !tbaa !205
  %cmp13 = icmp slt i32 %9, %disproof.0430, !dbg !407
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !96), !dbg !408
  %.disproof.0 = select i1 %cmp13, i32 %9, i32 %disproof.0430, !dbg !407
  %indvars.iv.next437 = add i64 %indvars.iv436, 1, !dbg !398
  %10 = trunc i64 %indvars.iv.next437 to i32, !dbg !398
  %cmp3 = icmp slt i32 %10, %conv, !dbg !398
  br i1 %cmp3, label %for.body, label %for.end, !dbg !398

for.end:                                          ; preds = %for.body
  %cmp21 = icmp eq i32 %.add, 0, !dbg !410
  %cmp23 = icmp eq i32 %.disproof.0, 100000000, !dbg !410
  %or.cond400 = or i1 %cmp21, %cmp23, !dbg !410
  br i1 %or.cond400, label %if.then25, label %if.else, !dbg !410

if.then25:                                        ; preds = %for.cond.preheader, %for.end
  %proof.0.lcssa442 = phi i32 [ %.add, %for.end ], [ 0, %for.cond.preheader ]
  %disproof.0.lcssa441 = phi i32 [ %.disproof.0, %for.end ], [ 100000000, %for.cond.preheader ]
  %11 = load i32* @forwards, align 4, !dbg !411, !tbaa !205
  %inc26 = add nsw i32 %11, 1, !dbg !411
  store i32 %inc26, i32* @forwards, align 4, !dbg !411, !tbaa !205
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #7, !dbg !413
  br label %if.end84, !dbg !414

if.else:                                          ; preds = %for.end
  %cmp27 = icmp eq i32 %.disproof.0, 0, !dbg !415
  %cmp30 = icmp eq i32 %.add, 100000000, !dbg !415
  %or.cond401 = or i1 %cmp27, %cmp30, !dbg !415
  br i1 %or.cond401, label %if.then32, label %if.end84, !dbg !415

if.then32:                                        ; preds = %if.else
  %12 = load i32* @forwards, align 4, !dbg !416, !tbaa !205
  %inc33 = add nsw i32 %12, 1, !dbg !416
  store i32 %inc33, i32* @forwards, align 4, !dbg !416, !tbaa !205
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #7, !dbg !418
  br label %if.end84, !dbg !419

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next, %for.body42 ]
  %disproof.2423 = phi i32 [ 0, %for.body42.lr.ph ], [ %.add47, %for.body42 ]
  %proof.1422 = phi i32 [ 100000000, %for.body42.lr.ph ], [ %.proof.1, %for.body42 ]
  %arrayidx45 = getelementptr inbounds %struct.node** %6, i64 %indvars.iv, !dbg !403
  %13 = load %struct.node** %arrayidx45, align 8, !dbg !403, !tbaa !210
  %disproof46 = getelementptr inbounds %struct.node* %13, i64 0, i32 5, !dbg !403
  %14 = load i32* %disproof46, align 4, !dbg !403, !tbaa !205
  %add47 = add nsw i32 %14, %disproof.2423, !dbg !403
  call void @llvm.dbg.value(metadata !{i32 %add47}, i64 0, metadata !96), !dbg !403
  %cmp48 = icmp sgt i32 %add47, 100000000, !dbg !420
  %.add47 = select i1 %cmp48, i32 100000000, i32 %add47, !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %.add47}, i64 0, metadata !96), !dbg !421
  %proof55 = getelementptr inbounds %struct.node* %13, i64 0, i32 4, !dbg !422
  %15 = load i32* %proof55, align 4, !dbg !422, !tbaa !205
  %cmp56 = icmp slt i32 %15, %proof.1422, !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !95), !dbg !423
  %.proof.1 = select i1 %cmp56, i32 %15, i32 %proof.1422, !dbg !422
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !395
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !395
  %cmp40 = icmp slt i32 %16, %conv39, !dbg !395
  br i1 %cmp40, label %for.body42, label %for.end66, !dbg !395

for.end66:                                        ; preds = %for.body42, %for.cond37.preheader
  %disproof.2.lcssa = phi i32 [ 0, %for.cond37.preheader ], [ %.add47, %for.body42 ]
  %proof.1.lcssa = phi i32 [ 100000000, %for.cond37.preheader ], [ %.proof.1, %for.body42 ]
  %cmp67 = icmp eq i32 %proof.1.lcssa, 0, !dbg !425
  %cmp70 = icmp eq i32 %disproof.2.lcssa, 100000000, !dbg !425
  %or.cond402 = or i1 %cmp67, %cmp70, !dbg !425
  br i1 %or.cond402, label %if.then72, label %if.else74, !dbg !425

if.then72:                                        ; preds = %for.end66
  %17 = load i32* @forwards, align 4, !dbg !426, !tbaa !205
  %inc73 = add nsw i32 %17, 1, !dbg !426
  store i32 %inc73, i32* @forwards, align 4, !dbg !426, !tbaa !205
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #7, !dbg !428
  br label %if.end84, !dbg !429

if.else74:                                        ; preds = %for.end66
  %cmp75 = icmp eq i32 %disproof.2.lcssa, 0, !dbg !430
  %cmp78 = icmp eq i32 %proof.1.lcssa, 100000000, !dbg !430
  %or.cond403 = or i1 %cmp75, %cmp78, !dbg !430
  br i1 %or.cond403, label %if.then80, label %if.end84, !dbg !430

if.then80:                                        ; preds = %if.else74
  %18 = load i32* @forwards, align 4, !dbg !431, !tbaa !205
  %inc81 = add nsw i32 %18, 1, !dbg !431
  store i32 %inc81, i32* @forwards, align 4, !dbg !431, !tbaa !205
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #7, !dbg !433
  br label %if.end84, !dbg !434

if.end84:                                         ; preds = %if.else74, %if.else, %if.then72, %if.then80, %if.then25, %if.then32
  %proof.3 = phi i32 [ %proof.0.lcssa442, %if.then25 ], [ %.add, %if.then32 ], [ %proof.1.lcssa, %if.then72 ], [ %proof.1.lcssa, %if.then80 ], [ %.add, %if.else ], [ %proof.1.lcssa, %if.else74 ]
  %disproof.3 = phi i32 [ %disproof.0.lcssa441, %if.then25 ], [ %.disproof.0, %if.then32 ], [ %disproof.2.lcssa, %if.then72 ], [ %disproof.2.lcssa, %if.then80 ], [ %.disproof.0, %if.else ], [ %disproof.2.lcssa, %if.else74 ]
  %19 = load i32* @hash, align 4, !dbg !435, !tbaa !205
  %20 = load i32* @move_number, align 4, !dbg !435, !tbaa !205
  %21 = load i32* @ply, align 4, !dbg !435, !tbaa !205
  %add85 = add i32 %20, -1, !dbg !435
  %sub = add i32 %add85, %21, !dbg !435
  %idxprom86 = sext i32 %sub to i64, !dbg !435
  %arrayidx87 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom86, !dbg !435
  store i32 %19, i32* %arrayidx87, align 4, !dbg !435, !tbaa !205
  %proof88 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !436
  store i32 %proof.3, i32* %proof88, align 4, !dbg !436, !tbaa !205
  %disproof89 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !437
  store i32 %disproof.3, i32* %disproof89, align 4, !dbg !437, !tbaa !205
  br label %cleanup, !dbg !438

if.else90:                                        ; preds = %entry
  %evaluated = getelementptr inbounds %struct.node* %node, i64 0, i32 3, !dbg !439
  %22 = load i8* %evaluated, align 1, !dbg !439, !tbaa !206
  %tobool91 = icmp eq i8 %22, 0, !dbg !439
  br i1 %tobool91, label %if.else299, label %if.then92, !dbg !439

if.then92:                                        ; preds = %if.else90
  %value = getelementptr inbounds %struct.node* %node, i64 0, i32 0, !dbg !440
  %23 = load i8* %value, align 1, !dbg !440, !tbaa !206
  switch i8 %23, label %cleanup [
    i8 2, label %if.then96
    i8 0, label %if.then276
    i8 1, label %if.then284
    i8 3, label %if.then292
  ], !dbg !440

if.then96:                                        ; preds = %if.then92
  %24 = load i32* @hash, align 4, !dbg !442, !tbaa !205
  %25 = load i32* @move_number, align 4, !dbg !442, !tbaa !205
  %26 = load i32* @ply, align 4, !dbg !442, !tbaa !205
  %add97 = add i32 %25, -1, !dbg !442
  %sub98 = add i32 %add97, %26, !dbg !442
  %idxprom99 = sext i32 %sub98 to i64, !dbg !442
  %arrayidx100 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom99, !dbg !442
  store i32 %24, i32* %arrayidx100, align 4, !dbg !442, !tbaa !205
  %call = call i32 @is_draw() #7, !dbg !444
  %tobool101 = icmp ne i32 %call, 0, !dbg !444
  %27 = load i32* @ply, align 4, !dbg !444, !tbaa !205
  %cmp103 = icmp sgt i32 %27, 200, !dbg !444
  %or.cond = or i1 %tobool101, %cmp103, !dbg !444
  br i1 %or.cond, label %if.then105, label %if.end108, !dbg !444

if.then105:                                       ; preds = %if.then96
  %proof106 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !445
  store i32 50000, i32* %proof106, align 4, !dbg !445, !tbaa !205
  %disproof107 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !447
  store i32 50000, i32* %disproof107, align 4, !dbg !447, !tbaa !205
  br label %cleanup, !dbg !448

if.end108:                                        ; preds = %if.then96
  %28 = load i32* @Variant, align 4, !dbg !449, !tbaa !205
  %cmp109 = icmp eq i32 %28, 4, !dbg !449
  br i1 %cmp109, label %if.else134, label %if.then111, !dbg !449

if.then111:                                       ; preds = %if.end108
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !100), !dbg !450
  %arrayidx112 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !452
  call void @gen(%struct.move_s* %arrayidx112) #7, !dbg !452
  %29 = load i32* @numb_moves, align 4, !dbg !453, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !100), !dbg !453
  %call113 = call i32 @in_check() #7, !dbg !454
  call void @llvm.dbg.value(metadata !{i32 %call113}, i64 0, metadata !101), !dbg !454
  %30 = load i32* @Variant, align 4, !dbg !455, !tbaa !205
  %cmp114 = icmp eq i32 %30, 3, !dbg !455
  br i1 %cmp114, label %if.else132, label %for.cond117.preheader, !dbg !455

for.cond117.preheader:                            ; preds = %if.then111
  %cmp118416 = icmp sgt i32 %29, 0, !dbg !456
  br i1 %cmp118416, label %for.body120, label %if.then177, !dbg !456

for.body120:                                      ; preds = %for.cond117.preheader, %for.body120
  %l.0418 = phi i32 [ %l.0.inc126, %for.body120 ], [ 0, %for.cond117.preheader ]
  %i.2417 = phi i32 [ %inc130, %for.body120 ], [ 0, %for.cond117.preheader ]
  call void @make(%struct.move_s* %arrayidx112, i32 %i.2417) #7, !dbg !459
  %call123 = call i32 @check_legal(%struct.move_s* %arrayidx112, i32 %i.2417, i32 %call113) #7, !dbg !461
  %not.tobool124 = icmp ne i32 %call123, 0, !dbg !461
  %inc126 = zext i1 %not.tobool124 to i32, !dbg !461
  %l.0.inc126 = add nsw i32 %inc126, %l.0418, !dbg !461
  call void @unmake(%struct.move_s* %arrayidx112, i32 %i.2417) #7, !dbg !462
  %inc130 = add nsw i32 %i.2417, 1, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %inc130}, i64 0, metadata !97), !dbg !456
  %exitcond435 = icmp eq i32 %inc130, %29, !dbg !456
  br i1 %exitcond435, label %if.end174, label %for.body120, !dbg !456

if.else132:                                       ; preds = %if.then111
  %31 = load i32* @numb_moves, align 4, !dbg !463, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !99), !dbg !463
  br label %if.end174

if.else134:                                       ; preds = %if.end108
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !99), !dbg !465
  store i32 1, i32* @captures, align 4, !dbg !467, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !100), !dbg !468
  %arrayidx135 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !469
  call void @gen(%struct.move_s* %arrayidx135) #7, !dbg !469
  %32 = load i32* @numb_moves, align 4, !dbg !470, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !100), !dbg !470
  store i32 0, i32* @captures, align 4, !dbg !471, !tbaa !206
  %call136 = call i32 @in_check() #7, !dbg !472
  call void @llvm.dbg.value(metadata !{i32 %call136}, i64 0, metadata !101), !dbg !472
  %33 = icmp sgt i32 %32, 0, !dbg !473
  br i1 %33, label %for.body142, label %if.then156, !dbg !473

for.body142:                                      ; preds = %if.else134, %for.body142
  %l.2413 = phi i32 [ %l.2.inc148, %for.body142 ], [ 0, %if.else134 ]
  %i.3412 = phi i32 [ %inc152, %for.body142 ], [ 0, %if.else134 ]
  call void @make(%struct.move_s* %arrayidx135, i32 %i.3412) #7, !dbg !474
  %call145 = call i32 @check_legal(%struct.move_s* %arrayidx135, i32 %i.3412, i32 %call136) #7, !dbg !478
  %not.tobool146 = icmp ne i32 %call145, 0, !dbg !478
  %inc148 = zext i1 %not.tobool146 to i32, !dbg !478
  %l.2.inc148 = add nsw i32 %inc148, %l.2413, !dbg !478
  call void @unmake(%struct.move_s* %arrayidx135, i32 %i.3412) #7, !dbg !479
  %inc152 = add nsw i32 %i.3412, 1, !dbg !480
  call void @llvm.dbg.value(metadata !{i32 %inc152}, i64 0, metadata !97), !dbg !480
  %exitcond434 = icmp eq i32 %inc152, %32, !dbg !480
  br i1 %exitcond434, label %if.end154, label %for.body142, !dbg !480

if.end154:                                        ; preds = %for.body142
  %tobool155 = icmp eq i32 %l.2.inc148, 0, !dbg !481
  br i1 %tobool155, label %if.then156, label %if.else180, !dbg !481

if.then156:                                       ; preds = %if.else134, %if.end154
  store i32 0, i32* @captures, align 4, !dbg !482, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !100), !dbg !484
  call void @gen(%struct.move_s* %arrayidx135) #7, !dbg !485
  %34 = load i32* @numb_moves, align 4, !dbg !486, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !100), !dbg !486
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !97), !dbg !487
  %cmp159408 = icmp sgt i32 %34, 0, !dbg !487
  br i1 %cmp159408, label %for.body161, label %if.then177, !dbg !487

for.body161:                                      ; preds = %if.then156, %for.body161
  %l.5410 = phi i32 [ %l.5.inc167, %for.body161 ], [ 0, %if.then156 ]
  %i.4409 = phi i32 [ %inc171, %for.body161 ], [ 0, %if.then156 ]
  call void @make(%struct.move_s* %arrayidx135, i32 %i.4409) #7, !dbg !489
  %call164 = call i32 @check_legal(%struct.move_s* %arrayidx135, i32 %i.4409, i32 %call136) #7, !dbg !491
  %not.tobool165 = icmp ne i32 %call164, 0, !dbg !491
  %inc167 = zext i1 %not.tobool165 to i32, !dbg !491
  %l.5.inc167 = add nsw i32 %inc167, %l.5410, !dbg !491
  call void @unmake(%struct.move_s* %arrayidx135, i32 %i.4409) #7, !dbg !492
  %inc171 = add nsw i32 %i.4409, 1, !dbg !487
  call void @llvm.dbg.value(metadata !{i32 %inc171}, i64 0, metadata !97), !dbg !487
  %exitcond = icmp eq i32 %inc171, %34, !dbg !487
  br i1 %exitcond, label %if.end174, label %for.body161, !dbg !487

if.end174:                                        ; preds = %for.body120, %for.body161, %if.else132
  %l.7 = phi i32 [ %31, %if.else132 ], [ %l.5.inc167, %for.body161 ], [ %l.0.inc126, %for.body120 ]
  %cmp175 = icmp eq i32 %l.7, 0, !dbg !493
  br i1 %cmp175, label %if.then177, label %if.else180, !dbg !493

if.then177:                                       ; preds = %for.cond117.preheader, %if.then156, %if.end174
  %proof178 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !494
  store i32 1, i32* %proof178, align 4, !dbg !494, !tbaa !205
  %disproof179 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !496
  store i32 1, i32* %disproof179, align 4, !dbg !496, !tbaa !205
  br label %cleanup, !dbg !497

if.else180:                                       ; preds = %if.end174, %if.end154
  %l.7407 = phi i32 [ %l.2.inc148, %if.end154 ], [ %l.7, %if.end174 ]
  %35 = load i32* @white_to_move, align 4, !dbg !498, !tbaa !205
  %not.tobool181 = icmp eq i32 %35, 0, !dbg !498
  %cond182 = zext i1 %not.tobool181 to i32, !dbg !498
  %36 = load i32* @root_to_move, align 4, !dbg !498, !tbaa !205
  %cmp183 = icmp eq i32 %cond182, %36, !dbg !498
  %37 = load i32* @Variant, align 4, !dbg !499, !tbaa !205
  %.off = add i32 %37, -3, !dbg !499
  %38 = icmp ugt i32 %.off, 1, !dbg !499
  br i1 %cmp183, label %if.then185, label %if.else226, !dbg !498

if.then185:                                       ; preds = %if.else180
  br i1 %38, label %if.then190, label %if.else196, !dbg !499

if.then190:                                       ; preds = %if.then185
  %39 = load i32* @ply, align 4, !dbg !501, !tbaa !205
  %div = sdiv i32 %39, 50, !dbg !501
  %add191 = add nsw i32 %div, 1, !dbg !501
  %proof192 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !501
  store i32 %add191, i32* %proof192, align 4, !dbg !501, !tbaa !205
  %40 = load i32* @ply, align 4, !dbg !503, !tbaa !205
  %div193 = sdiv i32 %40, 50, !dbg !503
  %add194 = add nsw i32 %div193, %l.7407, !dbg !503
  %disproof195 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !503
  store i32 %add194, i32* %disproof195, align 4, !dbg !503, !tbaa !205
  br label %cleanup, !dbg !504

if.else196:                                       ; preds = %if.then185
  %cmp197 = icmp eq i32 %37, 4, !dbg !505
  br i1 %cmp197, label %if.then199, label %if.else217, !dbg !505

if.then199:                                       ; preds = %if.else196
  %41 = load i32* @phase, align 4, !dbg !507, !tbaa !205
  %cmp200 = icmp eq i32 %41, 2, !dbg !507
  %42 = load i32* @ply, align 4, !dbg !509, !tbaa !205
  br i1 %cmp200, label %if.then202, label %if.else209, !dbg !507

if.then202:                                       ; preds = %if.then199
  %div203 = sdiv i32 %42, 30, !dbg !509
  %add204 = add nsw i32 %div203, 1, !dbg !509
  %proof205 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !509
  store i32 %add204, i32* %proof205, align 4, !dbg !509, !tbaa !205
  %43 = load i32* @ply, align 4, !dbg !511, !tbaa !205
  %div206 = sdiv i32 %43, 30, !dbg !511
  %add207 = add nsw i32 %div206, %l.7407, !dbg !511
  %disproof208 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !511
  store i32 %add207, i32* %disproof208, align 4, !dbg !511, !tbaa !205
  br label %cleanup, !dbg !512

if.else209:                                       ; preds = %if.then199
  %div210 = sdiv i32 %42, 80, !dbg !513
  %add211 = add nsw i32 %div210, 1, !dbg !513
  %proof212 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !513
  store i32 %add211, i32* %proof212, align 4, !dbg !513, !tbaa !205
  %44 = load i32* @ply, align 4, !dbg !515, !tbaa !205
  %div213 = sdiv i32 %44, 80, !dbg !515
  %add214 = add nsw i32 %div213, %l.7407, !dbg !515
  %disproof215 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !515
  store i32 %add214, i32* %disproof215, align 4, !dbg !515, !tbaa !205
  br label %cleanup

if.else217:                                       ; preds = %if.else196
  %45 = load i32* @ply, align 4, !dbg !516, !tbaa !205
  %div218 = sdiv i32 %45, 150, !dbg !516
  %add219 = add nsw i32 %div218, 1, !dbg !516
  %proof220 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !516
  store i32 %add219, i32* %proof220, align 4, !dbg !516, !tbaa !205
  %46 = load i32* @ply, align 4, !dbg !518, !tbaa !205
  %div221 = sdiv i32 %46, 150, !dbg !518
  %add222 = add nsw i32 %div221, %l.7407, !dbg !518
  %disproof223 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !518
  store i32 %add222, i32* %disproof223, align 4, !dbg !518, !tbaa !205
  br label %cleanup

if.else226:                                       ; preds = %if.else180
  br i1 %38, label %if.then232, label %if.else239, !dbg !519

if.then232:                                       ; preds = %if.else226
  %47 = load i32* @ply, align 4, !dbg !521, !tbaa !205
  %div233 = sdiv i32 %47, 50, !dbg !521
  %add234 = add nsw i32 %div233, %l.7407, !dbg !521
  %proof235 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !521
  store i32 %add234, i32* %proof235, align 4, !dbg !521, !tbaa !205
  %48 = load i32* @ply, align 4, !dbg !523, !tbaa !205
  %div236 = sdiv i32 %48, 50, !dbg !523
  %add237 = add nsw i32 %div236, 1, !dbg !523
  %disproof238 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !523
  store i32 %add237, i32* %disproof238, align 4, !dbg !523, !tbaa !205
  br label %cleanup, !dbg !524

if.else239:                                       ; preds = %if.else226
  %cmp240 = icmp eq i32 %37, 4, !dbg !525
  br i1 %cmp240, label %if.then242, label %if.else260, !dbg !525

if.then242:                                       ; preds = %if.else239
  %49 = load i32* @phase, align 4, !dbg !527, !tbaa !205
  %cmp243 = icmp eq i32 %49, 2, !dbg !527
  %50 = load i32* @ply, align 4, !dbg !529, !tbaa !205
  br i1 %cmp243, label %if.then245, label %if.else252, !dbg !527

if.then245:                                       ; preds = %if.then242
  %div246 = sdiv i32 %50, 30, !dbg !529
  %add247 = add nsw i32 %div246, %l.7407, !dbg !529
  %proof248 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !529
  store i32 %add247, i32* %proof248, align 4, !dbg !529, !tbaa !205
  %51 = load i32* @ply, align 4, !dbg !531, !tbaa !205
  %div249 = sdiv i32 %51, 30, !dbg !531
  %add250 = add nsw i32 %div249, 1, !dbg !531
  %disproof251 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !531
  store i32 %add250, i32* %disproof251, align 4, !dbg !531, !tbaa !205
  br label %cleanup, !dbg !532

if.else252:                                       ; preds = %if.then242
  %div253 = sdiv i32 %50, 80, !dbg !533
  %add254 = add nsw i32 %div253, %l.7407, !dbg !533
  %proof255 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !533
  store i32 %add254, i32* %proof255, align 4, !dbg !533, !tbaa !205
  %52 = load i32* @ply, align 4, !dbg !535, !tbaa !205
  %div256 = sdiv i32 %52, 80, !dbg !535
  %add257 = add nsw i32 %div256, 1, !dbg !535
  %disproof258 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !535
  store i32 %add257, i32* %disproof258, align 4, !dbg !535, !tbaa !205
  br label %cleanup

if.else260:                                       ; preds = %if.else239
  %53 = load i32* @ply, align 4, !dbg !536, !tbaa !205
  %div261 = sdiv i32 %53, 150, !dbg !536
  %add262 = add nsw i32 %div261, %l.7407, !dbg !536
  %proof263 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !536
  store i32 %add262, i32* %proof263, align 4, !dbg !536, !tbaa !205
  %54 = load i32* @ply, align 4, !dbg !538, !tbaa !205
  %div264 = sdiv i32 %54, 150, !dbg !538
  %add265 = add nsw i32 %div264, 1, !dbg !538
  %disproof266 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !538
  store i32 %add265, i32* %disproof266, align 4, !dbg !538, !tbaa !205
  br label %cleanup

if.then276:                                       ; preds = %if.then92
  %proof277 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !539
  store i32 100000000, i32* %proof277, align 4, !dbg !539, !tbaa !205
  %disproof278 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !541
  store i32 0, i32* %disproof278, align 4, !dbg !541, !tbaa !205
  br label %cleanup, !dbg !542

if.then284:                                       ; preds = %if.then92
  %proof285 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !543
  store i32 0, i32* %proof285, align 4, !dbg !543, !tbaa !205
  %disproof286 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !545
  store i32 100000000, i32* %disproof286, align 4, !dbg !545, !tbaa !205
  br label %cleanup, !dbg !546

if.then292:                                       ; preds = %if.then92
  %proof293 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !547
  store i32 50000, i32* %proof293, align 4, !dbg !547, !tbaa !205
  %disproof294 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !549
  store i32 50000, i32* %disproof294, align 4, !dbg !549, !tbaa !205
  br label %cleanup, !dbg !550

if.else299:                                       ; preds = %if.else90
  %disproof300 = getelementptr inbounds %struct.node* %node, i64 0, i32 5, !dbg !551
  store i32 1, i32* %disproof300, align 4, !dbg !551, !tbaa !205
  %proof301 = getelementptr inbounds %struct.node* %node, i64 0, i32 4, !dbg !551
  store i32 1, i32* %proof301, align 4, !dbg !551, !tbaa !205
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.else217, %if.else209, %if.then202, %if.then190, %if.else260, %if.else252, %if.then245, %if.then232, %if.then177, %if.then284, %if.then292, %if.then276, %if.else299, %if.then92, %if.then105
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: optsize
declare void @StoreTT(i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32 @is_draw() #4

; Function Attrs: optsize
declare i32 @in_check() #4

; Function Attrs: nounwind optsize uwtable
define void @develop_node(%struct.node* %node) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !104), !dbg !555
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !556
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !556
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !106), !dbg !556
  %call = call i32 @in_check() #7, !dbg !557
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !111), !dbg !557
  %1 = load i32* @Variant, align 4, !dbg !558, !tbaa !205
  %cmp = icmp eq i32 %1, 4, !dbg !558
  br i1 %cmp, label %if.else, label %if.then, !dbg !558

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !105), !dbg !559
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !561
  call void @gen(%struct.move_s* %arrayidx) #7, !dbg !561
  %2 = load i32* @numb_moves, align 4, !dbg !562, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !105), !dbg !562
  br label %if.end13, !dbg !563

if.else:                                          ; preds = %entry
  store i32 1, i32* @captures, align 4, !dbg !564, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !110), !dbg !566
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !105), !dbg !567
  %arrayidx1 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !568
  call void @gen(%struct.move_s* %arrayidx1) #7, !dbg !568
  %3 = load i32* @numb_moves, align 4, !dbg !569, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !105), !dbg !569
  store i32 0, i32* @captures, align 4, !dbg !570, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !107), !dbg !571
  %cmp2119 = icmp sgt i32 %3, 0, !dbg !571
  br i1 %cmp2119, label %for.body, label %if.then10.critedge, !dbg !571

for.cond:                                         ; preds = %for.body
  %cmp2 = icmp slt i32 %inc, %3, !dbg !571
  br i1 %cmp2, label %for.body, label %if.then10.critedge, !dbg !571

for.body:                                         ; preds = %if.else, %for.cond
  %i.0120 = phi i32 [ %inc, %for.cond ], [ 0, %if.else ]
  call void @make(%struct.move_s* %arrayidx1, i32 %i.0120) #7, !dbg !573
  %call5 = call i32 @check_legal(%struct.move_s* %arrayidx1, i32 %i.0120, i32 %call) #7, !dbg !575
  %tobool = icmp eq i32 %call5, 0, !dbg !575
  call void @unmake(%struct.move_s* %arrayidx1, i32 %i.0120) #7, !dbg !576
  %inc = add nsw i32 %i.0120, 1, !dbg !571
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !107), !dbg !571
  br i1 %tobool, label %for.cond, label %if.end13, !dbg !575

if.then10.critedge:                               ; preds = %for.cond, %if.else
  store i32 0, i32* @captures, align 4, !dbg !577, !tbaa !206
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !105), !dbg !579
  call void @gen(%struct.move_s* %arrayidx1) #7, !dbg !580
  %4 = load i32* @numb_moves, align 4, !dbg !581, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !105), !dbg !581
  br label %if.end13, !dbg !582

if.end13:                                         ; preds = %for.body, %if.then10.critedge, %if.then
  %num_moves.0 = phi i32 [ %2, %if.then ], [ %4, %if.then10.critedge ], [ %3, %for.body ]
  %mul = shl i32 %num_moves.0, 3, !dbg !583
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !584), !dbg !585
  %5 = load i32* @bufftop, align 4, !dbg !586, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !587), !dbg !586
  %add.i = add nsw i32 %5, %mul, !dbg !588
  store i32 %add.i, i32* @bufftop, align 4, !dbg !588, !tbaa !205
  %idxprom.i = sext i32 %5 to i64, !dbg !589
  %6 = load i8** @membuff, align 8, !dbg !589, !tbaa !210
  %arrayidx.i = getelementptr inbounds i8* %6, i64 %idxprom.i, !dbg !589
  %7 = bitcast i8* %arrayidx.i to %struct.node**, !dbg !583
  %children = getelementptr inbounds %struct.node* %node, i64 0, i32 6, !dbg !583
  store %struct.node** %7, %struct.node*** %children, align 8, !dbg !583, !tbaa !210
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !108), !dbg !590
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !107), !dbg !591
  %cmp17116 = icmp sgt i32 %num_moves.0, 0, !dbg !591
  br i1 %cmp17116, label %for.body19.lr.ph, label %for.end39, !dbg !591

for.body19.lr.ph:                                 ; preds = %if.end13
  %arrayidx21 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !593
  br label %for.body19, !dbg !591

for.body19:                                       ; preds = %for.inc37, %for.body19.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc37 ]
  %l.0117 = phi i32 [ 0, %for.body19.lr.ph ], [ %l.1, %for.inc37 ]
  %8 = load i32* @hash, align 4, !dbg !595, !tbaa !205
  %9 = load i32* @move_number, align 4, !dbg !595, !tbaa !205
  %10 = load i32* @ply, align 4, !dbg !595, !tbaa !205
  %add = add i32 %9, -1, !dbg !595
  %sub = add i32 %add, %10, !dbg !595
  %idxprom = sext i32 %sub to i64, !dbg !595
  %arrayidx20 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom, !dbg !595
  store i32 %8, i32* %arrayidx20, align 4, !dbg !595, !tbaa !205
  %11 = trunc i64 %indvars.iv to i32, !dbg !593
  call void @make(%struct.move_s* %arrayidx21, i32 %11) #7, !dbg !593
  %call23 = call i32 @check_legal(%struct.move_s* %arrayidx21, i32 %11, i32 %call) #7, !dbg !596
  %tobool24 = icmp eq i32 %call23, 0, !dbg !596
  br i1 %tobool24, label %if.else34, label %if.then25, !dbg !596

if.then25:                                        ; preds = %for.body19
  tail call void @llvm.dbg.value(metadata !597, i64 0, metadata !598), !dbg !601
  %12 = load i32* @bufftop, align 4, !dbg !602, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !603), !dbg !602
  %add.i107 = add nsw i32 %12, 56, !dbg !604
  store i32 %add.i107, i32* @bufftop, align 4, !dbg !604, !tbaa !205
  %idxprom.i108 = sext i32 %12 to i64, !dbg !605
  %13 = load i8** @membuff, align 8, !dbg !605, !tbaa !210
  %arrayidx.i109 = getelementptr inbounds i8* %13, i64 %idxprom.i108, !dbg !605
  %14 = bitcast i8* %arrayidx.i109 to %struct.node*, !dbg !599
  call void @llvm.dbg.value(metadata !{%struct.node* %14}, i64 0, metadata !109), !dbg !599
  store i8 0, i8* %arrayidx.i109, align 1, !dbg !606, !tbaa !206
  %arrayidx.i109.sum = add i64 %idxprom.i108, 8, !dbg !607
  %disproof = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum, !dbg !607
  %15 = bitcast i8* %disproof to i32*, !dbg !607
  store i32 1, i32* %15, align 4, !dbg !607, !tbaa !205
  %arrayidx.i109.sum110 = add i64 %idxprom.i108, 4, !dbg !607
  %proof = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum110, !dbg !607
  %16 = bitcast i8* %proof to i32*, !dbg !607
  store i32 1, i32* %16, align 4, !dbg !607, !tbaa !205
  %arrayidx.i109.sum111 = add i64 %idxprom.i108, 1, !dbg !608
  %17 = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum111, !dbg !608
  store i8 0, i8* %17, align 1, !dbg !608, !tbaa !206
  %arrayidx.i109.sum112 = add i64 %idxprom.i108, 24, !dbg !609
  %parent = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum112, !dbg !609
  %18 = bitcast i8* %parent to %struct.node**, !dbg !609
  store %struct.node* %node, %struct.node** %18, align 8, !dbg !609, !tbaa !210
  %arrayidx.i109.sum113 = add i64 %idxprom.i108, 3, !dbg !610
  %19 = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum113, !dbg !610
  store i8 0, i8* %19, align 1, !dbg !610, !tbaa !206
  %arrayidx.i109.sum114 = add i64 %idxprom.i108, 2, !dbg !611
  %20 = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum114, !dbg !611
  store i8 0, i8* %20, align 1, !dbg !611, !tbaa !206
  %arrayidx.i109.sum115 = add i64 %idxprom.i108, 32, !dbg !612
  %move = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum115, !dbg !612
  %arrayidx28 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, !dbg !612
  %21 = bitcast %struct.move_s* %arrayidx28 to i8*, !dbg !612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %move, i8* %21, i64 24, i32 4, i1 false), !dbg !612, !tbaa.struct !613
  %idxprom29 = sext i32 %l.0117 to i64, !dbg !614
  %22 = load %struct.node*** %children, align 8, !dbg !614, !tbaa !210
  %arrayidx31 = getelementptr inbounds %struct.node** %22, i64 %idxprom29, !dbg !614
  store %struct.node* %14, %struct.node** %arrayidx31, align 8, !dbg !614, !tbaa !210
  %inc32 = add nsw i32 %l.0117, 1, !dbg !615
  call void @llvm.dbg.value(metadata !{i32 %inc32}, i64 0, metadata !108), !dbg !615
  call void @pn_eval(%struct.node* %14) #6, !dbg !616
  call void @set_proof_and_disproof_numbers(%struct.node* %14) #6, !dbg !617
  call void @unmake(%struct.move_s* %arrayidx21, i32 %11) #7, !dbg !618
  br label %for.inc37, !dbg !619

if.else34:                                        ; preds = %for.body19
  call void @unmake(%struct.move_s* %arrayidx21, i32 %11) #7, !dbg !620
  br label %for.inc37

for.inc37:                                        ; preds = %if.then25, %if.else34
  %l.1 = phi i32 [ %inc32, %if.then25 ], [ %l.0117, %if.else34 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !591
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !591
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves.0, !dbg !591
  br i1 %exitcond, label %for.end39, label %for.body19, !dbg !591

for.end39:                                        ; preds = %for.inc37, %if.end13
  %l.0.lcssa = phi i32 [ 0, %if.end13 ], [ %l.1, %for.inc37 ]
  %expanded40 = getelementptr inbounds %struct.node* %node, i64 0, i32 2, !dbg !621
  store i8 1, i8* %expanded40, align 1, !dbg !621, !tbaa !206
  %conv41 = trunc i32 %l.0.lcssa to i8, !dbg !622
  %num_children42 = getelementptr inbounds %struct.node* %node, i64 0, i32 1, !dbg !622
  store i8 %conv41, i8* %num_children42, align 1, !dbg !622, !tbaa !206
  %conv44 = and i32 %l.0.lcssa, 255, !dbg !623
  %cmp45 = icmp eq i32 %conv44, 0, !dbg !623
  br i1 %cmp45, label %if.then47, label %if.end66, !dbg !623

if.then47:                                        ; preds = %for.end39
  store i8 0, i8* %expanded40, align 1, !dbg !624, !tbaa !206
  %evaluated49 = getelementptr inbounds %struct.node* %node, i64 0, i32 3, !dbg !626
  store i8 1, i8* %evaluated49, align 1, !dbg !626, !tbaa !206
  %23 = load i32* @Variant, align 4, !dbg !627, !tbaa !205
  %.off = add i32 %23, -3, !dbg !627
  %24 = icmp ugt i32 %.off, 1, !dbg !627
  br i1 %24, label %if.then54, label %if.else56, !dbg !627

if.then54:                                        ; preds = %if.then47
  %value55 = getelementptr inbounds %struct.node* %node, i64 0, i32 0, !dbg !628
  store i8 3, i8* %value55, align 1, !dbg !628, !tbaa !206
  br label %if.end66, !dbg !630

if.else56:                                        ; preds = %if.then47
  %25 = load i32* @white_to_move, align 4, !dbg !631, !tbaa !205
  %not.tobool57 = icmp eq i32 %25, 0, !dbg !631
  %cond = zext i1 %not.tobool57 to i32, !dbg !631
  %26 = load i32* @root_to_move, align 4, !dbg !631, !tbaa !205
  %cmp58 = icmp eq i32 %cond, %26, !dbg !631
  %value61 = getelementptr inbounds %struct.node* %node, i64 0, i32 0, !dbg !633
  br i1 %cmp58, label %if.then60, label %if.else62, !dbg !631

if.then60:                                        ; preds = %if.else56
  store i8 1, i8* %value61, align 1, !dbg !633, !tbaa !206
  br label %if.end66, !dbg !635

if.else62:                                        ; preds = %if.else56
  store i8 0, i8* %value61, align 1, !dbg !636, !tbaa !206
  br label %if.end66

if.end66:                                         ; preds = %if.then54, %if.else62, %if.then60, %for.end39
  %27 = load i32* @nodecount, align 4, !dbg !638, !tbaa !205
  %add67 = add nsw i32 %27, %num_moves.0, !dbg !638
  store i32 %add67, i32* @nodecount, align 4, !dbg !638, !tbaa !205
  %28 = load i32* @frees, align 4, !dbg !639, !tbaa !205
  %add68 = add nsw i32 %28, %num_moves.0, !dbg !639
  store i32 %add68, i32* @frees, align 4, !dbg !639, !tbaa !205
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !640
  ret void, !dbg !640
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @update_ancestors(%struct.node* %node) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !114), !dbg !641
  tail call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !115), !dbg !642
  tail call void @llvm.dbg.value(metadata !{%struct.node* %node}, i64 0, metadata !116), !dbg !643
  %cmp16 = icmp eq %struct.node* %node, null, !dbg !644
  br i1 %cmp16, label %while.end, label %while.body, !dbg !644

while.body:                                       ; preds = %entry, %if.end
  %tnode.017 = phi %struct.node* [ %1, %if.end ], [ %node, %entry ]
  tail call void @set_proof_and_disproof_numbers(%struct.node* %tnode.017) #6, !dbg !645
  tail call void @llvm.dbg.value(metadata !{%struct.node* %tnode.017}, i64 0, metadata !116), !dbg !647
  %target = getelementptr inbounds %struct.node* %tnode.017, i64 0, i32 8, i32 1, !dbg !648
  %0 = load i32* %target, align 4, !dbg !648, !tbaa !205
  %cmp1 = icmp eq i32 %0, 0, !dbg !648
  br i1 %cmp1, label %if.end, label %if.then, !dbg !648

if.then:                                          ; preds = %while.body
  %move = getelementptr inbounds %struct.node* %tnode.017, i64 0, i32 8, !dbg !648
  tail call void @unmake(%struct.move_s* %move, i32 0) #7, !dbg !649
  br label %if.end, !dbg !651

if.end:                                           ; preds = %while.body, %if.then
  %parent = getelementptr inbounds %struct.node* %tnode.017, i64 0, i32 7, !dbg !652
  %1 = load %struct.node** %parent, align 8, !dbg !652, !tbaa !210
  tail call void @llvm.dbg.value(metadata !{%struct.node* %1}, i64 0, metadata !115), !dbg !652
  %cmp = icmp eq %struct.node* %1, null, !dbg !644
  br i1 %cmp, label %while.end, label %while.body, !dbg !644

while.end:                                        ; preds = %if.end, %entry
  %prevnode.0.lcssa = phi %struct.node* [ null, %entry ], [ %tnode.017, %if.end ]
  %target4 = getelementptr inbounds %struct.node* %prevnode.0.lcssa, i64 0, i32 8, i32 1, !dbg !653
  %2 = load i32* %target4, align 4, !dbg !653, !tbaa !205
  %cmp5 = icmp eq i32 %2, 0, !dbg !653
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !653

if.then6:                                         ; preds = %while.end
  %move3 = getelementptr inbounds %struct.node* %prevnode.0.lcssa, i64 0, i32 8, !dbg !653
  tail call void @make(%struct.move_s* %move3, i32 0) #7, !dbg !654
  br label %if.end8, !dbg !656

if.end8:                                          ; preds = %while.end, %if.then6
  ret void, !dbg !657
}

; Function Attrs: nounwind optsize uwtable
define void @pn2_eval(%struct.node* %root) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %root}, i64 0, metadata !119), !dbg !658
  store i32 0, i32* @nodecount2, align 4, !dbg !659, !tbaa !205
  store i32 1, i32* @pn2, align 4, !dbg !660, !tbaa !205
  %parent = getelementptr inbounds %struct.node* %root, i64 0, i32 7, !dbg !661
  %0 = load %struct.node** %parent, align 8, !dbg !661, !tbaa !210
  tail call void @llvm.dbg.value(metadata !{%struct.node* %0}, i64 0, metadata !122), !dbg !661
  store %struct.node* null, %struct.node** %parent, align 8, !dbg !662, !tbaa !210
  tail call void @pn_eval(%struct.node* %root) #6, !dbg !663
  tail call void @set_proof_and_disproof_numbers(%struct.node* %root) #6, !dbg !664
  tail call void @llvm.dbg.value(metadata !{%struct.node* %root}, i64 0, metadata !121), !dbg !665
  %disproof = getelementptr inbounds %struct.node* %root, i64 0, i32 5, !dbg !666
  %proof = getelementptr inbounds %struct.node* %root, i64 0, i32 4, !dbg !666
  %1 = load i32* %proof, align 4, !dbg !666, !tbaa !205
  %cmp16 = icmp eq i32 %1, 0, !dbg !666
  br i1 %cmp16, label %while.end, label %land.lhs.true, !dbg !666

land.lhs.true:                                    ; preds = %entry, %while.body
  %2 = load i32* %disproof, align 4, !dbg !666, !tbaa !205
  %cmp2 = icmp eq i32 %2, 0, !dbg !666
  br i1 %cmp2, label %while.end, label %land.rhs, !dbg !666

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32* @nodecount2, align 4, !dbg !666, !tbaa !205
  %4 = load i32* @nodecount, align 4, !dbg !666, !tbaa !205
  %cmp3 = icmp slt i32 %3, %4, !dbg !666
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call = tail call %struct.node* @select_most_proving(%struct.node* %root) #6, !dbg !667
  tail call void @llvm.dbg.value(metadata !{%struct.node* %call}, i64 0, metadata !120), !dbg !667
  tail call void @develop_node(%struct.node* %call) #6, !dbg !669
  tail call void @update_ancestors(%struct.node* %call) #6, !dbg !670
  %5 = load i32* %proof, align 4, !dbg !666, !tbaa !205
  %cmp = icmp eq i32 %5, 0, !dbg !666
  br i1 %cmp, label %while.end, label %land.lhs.true, !dbg !666

while.end:                                        ; preds = %while.body, %land.lhs.true, %land.rhs, %entry
  %expanded = getelementptr inbounds %struct.node* %root, i64 0, i32 2, !dbg !671
  store i8 0, i8* %expanded, align 1, !dbg !671, !tbaa !206
  %num_children = getelementptr inbounds %struct.node* %root, i64 0, i32 1, !dbg !672
  store i8 0, i8* %num_children, align 1, !dbg !672, !tbaa !206
  store %struct.node* %0, %struct.node** %parent, align 8, !dbg !673, !tbaa !210
  store i32 0, i32* @pn2, align 4, !dbg !674, !tbaa !205
  ret void, !dbg !675
}

; Function Attrs: nounwind optsize uwtable
define void @proofnumberscan() #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %islegal = alloca [512 x i32], align 16
  %nodesspent = alloca [512 x i32], align 16
  %output = alloca [8 x i8], align 1
  %tmp = alloca %struct.move_s, align 8
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*, !dbg !676
  call void @llvm.lifetime.start(i64 12288, i8* %0) #3, !dbg !676
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %moves}, metadata !125), !dbg !676
  %1 = bitcast [512 x i32]* %islegal to i8*, !dbg !677
  call void @llvm.lifetime.start(i64 2048, i8* %1) #3, !dbg !677
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %islegal}, metadata !126), !dbg !677
  %2 = bitcast [512 x i32]* %nodesspent to i8*, !dbg !678
  call void @llvm.lifetime.start(i64 2048, i8* %2) #3, !dbg !678
  call void @llvm.dbg.declare(metadata !{[512 x i32]* %nodesspent}, metadata !128), !dbg !678
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !142), !dbg !679
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !143), !dbg !679
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %output}, metadata !148), !dbg !680
  %call = call i64 @rtime() #7, !dbg !681
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !133), !dbg !681
  %3 = load i32* @PBSize, align 4, !dbg !682, !tbaa !205
  %conv = sext i32 %3 to i64, !dbg !682
  %call1 = call noalias i8* @calloc(i64 %conv, i64 56) #7, !dbg !682
  store i8* %call1, i8** @membuff, align 8, !dbg !682, !tbaa !210
  %call2 = call noalias i8* @calloc(i64 1, i64 56) #7, !dbg !683
  %4 = bitcast i8* %call2 to %struct.node*, !dbg !683
  call void @llvm.dbg.value(metadata !{%struct.node* %4}, i64 0, metadata !138), !dbg !683
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0, !dbg !684
  call void @gen(%struct.move_s* %arrayidx) #7, !dbg !684
  %5 = load i32* @numb_moves, align 4, !dbg !685, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !132), !dbg !685
  store i32 0, i32* @alllosers, align 4, !dbg !686, !tbaa !205
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false), !dbg !687
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 2048, i32 16, i1 false), !dbg !688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !689, !tbaa.struct !613
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !131), !dbg !690
  %call3 = call i32 @in_check() #7, !dbg !691
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !153), !dbg !691
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !129), !dbg !692
  %cmp425 = icmp sgt i32 %5, 0, !dbg !692
  br i1 %cmp425, label %for.body, label %if.then15, !dbg !692

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %if.end ], [ 0, %entry ]
  %legal.0426 = phi i32 [ %legal.1, %if.end ], [ 0, %entry ]
  %6 = trunc i64 %indvars.iv440 to i32, !dbg !694
  call void @make(%struct.move_s* %arrayidx, i32 %6) #7, !dbg !694
  %call7 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %6, i32 %call3) #7, !dbg !696
  %tobool = icmp eq i32 %call7, 0, !dbg !696
  br i1 %tobool, label %if.else, label %if.then, !dbg !696

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %legal.0426, 1, !dbg !697
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !131), !dbg !697
  %arrayidx8 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv440, !dbg !699
  store i32 1, i32* %arrayidx8, align 4, !dbg !699, !tbaa !205
  br label %if.end, !dbg !700

if.else:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv440, !dbg !701
  store i32 0, i32* %arrayidx10, align 4, !dbg !701, !tbaa !205
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %legal.1 = phi i32 [ %inc, %if.then ], [ %legal.0426, %if.else ]
  call void @unmake(%struct.move_s* %arrayidx, i32 %6) #7, !dbg !703
  %indvars.iv.next441 = add i64 %indvars.iv440, 1, !dbg !692
  %lftr.wideiv442 = trunc i64 %indvars.iv.next441 to i32, !dbg !692
  %exitcond443 = icmp eq i32 %lftr.wideiv442, %5, !dbg !692
  br i1 %exitcond443, label %for.end, label %for.body, !dbg !692

for.end:                                          ; preds = %if.end
  %cmp13 = icmp eq i32 %legal.1, 0, !dbg !704
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !704

if.then15:                                        ; preds = %entry, %for.end
  store i32 0, i32* @bufftop, align 4, !dbg !705, !tbaa !205
  %7 = load i8** @membuff, align 8, !dbg !708, !tbaa !210
  call void @free(i8* %7) #7, !dbg !708
  call void @free(i8* %call2) #7, !dbg !709
  br label %cleanup, !dbg !710

if.end16:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !144), !dbg !711
  store i32 1, i32* @nodecount, align 4, !dbg !712, !tbaa !205
  store i32 0, i32* @iters, align 4, !dbg !713, !tbaa !205
  store i32 0, i32* @maxply, align 4, !dbg !714, !tbaa !205
  store i32 0, i32* @forwards, align 4, !dbg !715, !tbaa !205
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !146), !dbg !716
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !147), !dbg !717
  %8 = load i32* @hash, align 4, !dbg !718, !tbaa !205
  %9 = load i32* @move_number, align 4, !dbg !718, !tbaa !205
  %10 = load i32* @ply, align 4, !dbg !718, !tbaa !205
  %add = add i32 %9, -1, !dbg !718
  %sub = add i32 %add, %10, !dbg !718
  %idxprom17 = sext i32 %sub to i64, !dbg !718
  %arrayidx18 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom17, !dbg !718
  store i32 %8, i32* %arrayidx18, align 4, !dbg !718, !tbaa !205
  %11 = load i32* @white_to_move, align 4, !dbg !719, !tbaa !205
  %not.tobool19 = icmp eq i32 %11, 0, !dbg !719
  %cond = zext i1 %not.tobool19 to i32, !dbg !719
  store i32 %cond, i32* @root_to_move, align 4, !dbg !719, !tbaa !205
  call void @pn_eval(%struct.node* %4) #6, !dbg !720
  %12 = load i8* %call2, align 1, !dbg !721, !tbaa !206
  %switch = icmp ult i8 %12, 2, !dbg !721
  br i1 %switch, label %if.then27, label %if.end28, !dbg !721

if.then27:                                        ; preds = %if.end16
  store i32 0, i32* @bufftop, align 4, !dbg !722, !tbaa !205
  %13 = load i8** @membuff, align 8, !dbg !725, !tbaa !210
  call void @free(i8* %13) #7, !dbg !725
  call void @free(i8* %call2) #7, !dbg !726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !727, !tbaa.struct !613
  br label %cleanup, !dbg !728

if.end28:                                         ; preds = %if.end16
  call void @set_proof_and_disproof_numbers(%struct.node* %4) #6, !dbg !729
  %proof = getelementptr inbounds i8* %call2, i64 4, !dbg !730
  %14 = bitcast i8* %proof to i32*, !dbg !730
  %disproof = getelementptr inbounds i8* %call2, i64 8, !dbg !730
  %15 = bitcast i8* %disproof to i32*, !dbg !730
  %call29415 = call i64 @rtime() #7, !dbg !730
  %call30416 = call i32 @rdifftime(i64 %call29415, i64 %call) #7, !dbg !730
  %16 = load i32* @pn_time, align 4, !dbg !730, !tbaa !205
  %cmp31417 = icmp slt i32 %call30416, %16, !dbg !730
  br i1 %cmp31417, label %land.lhs.true.lr.ph, label %while.end180, !dbg !730

land.lhs.true.lr.ph:                              ; preds = %if.end28
  %children = getelementptr inbounds i8* %call2, i64 16, !dbg !731
  %17 = bitcast i8* %children to %struct.node***, !dbg !731
  br label %land.lhs.true, !dbg !730

land.lhs.true:                                    ; preds = %land.lhs.true.lr.ph, %while.cond.backedge
  %alternates.0422 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %alternates.0.be, %while.cond.backedge ]
  %firsts.0421 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %firsts.0.be, %while.cond.backedge ]
  %leastlooked_i.0419 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %leastlooked_i.0.be, %while.cond.backedge ]
  %leastlooked_l.0418 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %leastlooked_l.0.be, %while.cond.backedge ]
  %call33 = call i32 @interrupt() #7, !dbg !730
  %tobool34 = icmp eq i32 %call33, 0, !dbg !730
  br i1 %tobool34, label %land.lhs.true35, label %while.end180, !dbg !730

land.lhs.true35:                                  ; preds = %land.lhs.true
  %18 = load i32* @bufftop, align 4, !dbg !730, !tbaa !205
  %conv36 = zext i32 %18 to i64, !dbg !730
  %19 = load i32* @PBSize, align 4, !dbg !730, !tbaa !205
  %sub37 = add nsw i32 %19, -10000, !dbg !730
  %conv38 = sext i32 %sub37 to i64, !dbg !730
  %mul = mul i64 %conv38, 56, !dbg !730
  %cmp39 = icmp ult i64 %conv36, %mul, !dbg !730
  br i1 %cmp39, label %land.lhs.true41, label %while.end180, !dbg !730

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %20 = load i32* %14, align 4, !dbg !730, !tbaa !205
  %cmp42 = icmp eq i32 %20, 0, !dbg !730
  br i1 %cmp42, label %while.end180, label %land.rhs, !dbg !730

land.rhs:                                         ; preds = %land.lhs.true41
  %21 = load i32* %15, align 4, !dbg !730, !tbaa !205
  %cmp44 = icmp eq i32 %21, 0, !dbg !730
  br i1 %cmp44, label %while.end180, label %while.body

while.body:                                       ; preds = %land.rhs
  %22 = load i32* @iters, align 4, !dbg !734, !tbaa !205
  %inc46 = add nsw i32 %22, 1, !dbg !734
  store i32 %inc46, i32* @iters, align 4, !dbg !734, !tbaa !205
  %23 = load i32* @nodecount, align 4, !dbg !735, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !145), !dbg !735
  %rem = srem i32 %23, 100, !dbg !736
  %cmp47 = icmp slt i32 %rem, 66, !dbg !736
  br i1 %cmp47, label %if.then49, label %if.else92, !dbg !736

if.then49:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !146), !dbg !737
  call void @llvm.dbg.value(metadata !{%struct.node* %4}, i64 0, metadata !140), !dbg !738
  %call51 = call %struct.node* @select_most_proving(%struct.node* %4) #6, !dbg !739
  call void @llvm.dbg.value(metadata !{%struct.node* %call51}, i64 0, metadata !139), !dbg !739
  call void @develop_node(%struct.node* %call51) #6, !dbg !740
  call void @update_ancestors(%struct.node* %call51) #6, !dbg !741
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !129), !dbg !742
  %24 = load %struct.node*** %17, align 8, !dbg !731, !tbaa !210
  %25 = load i32* %14, align 4, !dbg !731, !tbaa !205
  br label %while.cond52, !dbg !731

while.cond52:                                     ; preds = %while.cond52, %if.then49
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %while.cond52 ], [ 0, %if.then49 ]
  %arrayidx54 = getelementptr inbounds %struct.node** %24, i64 %indvars.iv436, !dbg !731
  %26 = load %struct.node** %arrayidx54, align 8, !dbg !731, !tbaa !210
  %proof55 = getelementptr inbounds %struct.node* %26, i64 0, i32 4, !dbg !731
  %27 = load i32* %proof55, align 4, !dbg !731, !tbaa !205
  %cmp57 = icmp eq i32 %27, %25, !dbg !731
  %indvars.iv.next437 = add i64 %indvars.iv436, 1, !dbg !731
  br i1 %cmp57, label %while.end, label %while.cond52, !dbg !731

while.end:                                        ; preds = %while.cond52
  %inc50 = add nsw i32 %firsts.0421, 1, !dbg !737
  %28 = load i32* @nodecount, align 4, !dbg !743, !tbaa !205
  %sub61 = sub i32 %28, %23, !dbg !743
  %arrayidx63 = getelementptr inbounds [512 x i32]* %nodesspent, i64 0, i64 %indvars.iv436, !dbg !743
  %29 = load i32* %arrayidx63, align 4, !dbg !743, !tbaa !205
  %add64 = add nsw i32 %sub61, %29, !dbg !743
  store i32 %add64, i32* %arrayidx63, align 4, !dbg !743, !tbaa !205
  %cmp66 = icmp eq i32 %25, 0, !dbg !744
  %30 = load i32* %15, align 4, !dbg !744, !tbaa !205
  %cmp70 = icmp eq i32 %30, 100000000, !dbg !744
  %or.cond398 = and i1 %cmp66, %cmp70, !dbg !744
  br i1 %or.cond398, label %if.then72, label %if.else80, !dbg !744

if.then72:                                        ; preds = %while.end
  store i32 1, i32* @forcedwin, align 4, !dbg !745, !tbaa !205
  %31 = load i32* @kibitzed, align 4, !dbg !747, !tbaa !206
  %tobool73 = icmp eq i32 %31, 0, !dbg !747
  br i1 %tobool73, label %if.then74, label %if.end76, !dbg !747

if.then74:                                        ; preds = %if.then72
  store i32 1, i32* @kibitzed, align 4, !dbg !748, !tbaa !206
  %puts397 = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str19, i64 0, i64 0)), !dbg !750
  %.pre445 = load %struct.node*** %17, align 8, !dbg !751, !tbaa !210
  %arrayidx79.phi.trans.insert = getelementptr inbounds %struct.node** %.pre445, i64 %indvars.iv436
  %.pre446 = load %struct.node** %arrayidx79.phi.trans.insert, align 8, !dbg !751, !tbaa !210
  br label %if.end76, !dbg !752

if.end76:                                         ; preds = %if.then72, %if.then74
  %32 = phi %struct.node* [ %26, %if.then72 ], [ %.pre446, %if.then74 ]
  %move = getelementptr inbounds %struct.node* %32, i64 0, i32 8, !dbg !751
  %33 = bitcast %struct.move_s* %move to i8*, !dbg !751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %33, i64 24, i32 4, i1 false), !dbg !751, !tbaa.struct !613
  br label %while.cond.backedge, !dbg !753

if.else80:                                        ; preds = %while.end
  %cmp82 = icmp eq i32 %30, 0, !dbg !754
  %cmp86 = icmp eq i32 %25, 100000000, !dbg !754
  %or.cond455 = and i1 %cmp82, %cmp86, !dbg !754
  br i1 %or.cond455, label %if.then88, label %while.cond.backedge, !dbg !754

if.then88:                                        ; preds = %if.else80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !755, !tbaa.struct !613
  br label %while.cond.backedge, !dbg !757

if.else92:                                        ; preds = %while.body
  %inc93 = add nsw i32 %alternates.0422, 1, !dbg !758
  call void @llvm.dbg.value(metadata !{i32 %inc93}, i64 0, metadata !147), !dbg !758
  call void @llvm.dbg.value(metadata !760, i64 0, metadata !141), !dbg !761
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !130), !dbg !762
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !129), !dbg !763
  br i1 %cmp425, label %for.body97, label %if.then125, !dbg !763

for.body97:                                       ; preds = %if.else92, %if.end113
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %if.end113 ], [ 0, %if.else92 ]
  %l.0410 = phi i32 [ %l.0.inc118, %if.end113 ], [ 0, %if.else92 ]
  %leastlooked_i.1409 = phi i32 [ %leastlooked_i.2, %if.end113 ], [ %leastlooked_i.0419, %if.else92 ]
  %leastlooked_l.1408 = phi i32 [ %leastlooked_l.2, %if.end113 ], [ %leastlooked_l.0418, %if.else92 ]
  %leastlooked.0407 = phi i32 [ %leastlooked.1, %if.end113 ], [ 100000000, %if.else92 ]
  %arrayidx99 = getelementptr inbounds [512 x i32]* %nodesspent, i64 0, i64 %indvars.iv432, !dbg !765
  %34 = load i32* %arrayidx99, align 4, !dbg !765, !tbaa !205
  %cmp100 = icmp slt i32 %34, %leastlooked.0407, !dbg !765
  %arrayidx104 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv432, !dbg !765
  %35 = load i32* %arrayidx104, align 4, !dbg !765, !tbaa !205
  br i1 %cmp100, label %land.lhs.true102, label %if.end113, !dbg !765

land.lhs.true102:                                 ; preds = %for.body97
  %tobool105 = icmp eq i32 %35, 0, !dbg !765
  br i1 %tobool105, label %if.end113, label %land.lhs.true106, !dbg !765

land.lhs.true106:                                 ; preds = %land.lhs.true102
  %arrayidx108 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv432, !dbg !765
  %36 = load i32* %arrayidx108, align 4, !dbg !765, !tbaa !205
  %tobool109 = icmp eq i32 %36, 0, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !141), !dbg !767
  call void @llvm.dbg.value(metadata !769, i64 0, metadata !143), !dbg !770
  call void @llvm.dbg.value(metadata !{i32 %l.0410}, i64 0, metadata !142), !dbg !771
  %.leastlooked.0 = select i1 %tobool109, i32 %34, i32 %leastlooked.0407, !dbg !765
  %l.0.leastlooked_l.1 = select i1 %tobool109, i32 %l.0410, i32 %leastlooked_l.1408, !dbg !765
  %37 = trunc i64 %indvars.iv432 to i32, !dbg !765
  %i.2.leastlooked_i.1 = select i1 %tobool109, i32 %37, i32 %leastlooked_i.1409, !dbg !765
  br label %if.end113, !dbg !765

if.end113:                                        ; preds = %for.body97, %land.lhs.true106, %land.lhs.true102
  %38 = phi i32 [ 0, %land.lhs.true102 ], [ %35, %land.lhs.true106 ], [ %35, %for.body97 ]
  %leastlooked.1 = phi i32 [ %leastlooked.0407, %land.lhs.true102 ], [ %.leastlooked.0, %land.lhs.true106 ], [ %leastlooked.0407, %for.body97 ]
  %leastlooked_l.2 = phi i32 [ %leastlooked_l.1408, %land.lhs.true102 ], [ %l.0.leastlooked_l.1, %land.lhs.true106 ], [ %leastlooked_l.1408, %for.body97 ]
  %leastlooked_i.2 = phi i32 [ %leastlooked_i.1409, %land.lhs.true102 ], [ %i.2.leastlooked_i.1, %land.lhs.true106 ], [ %leastlooked_i.1409, %for.body97 ]
  %not.tobool116 = icmp ne i32 %38, 0, !dbg !772
  %inc118 = zext i1 %not.tobool116 to i32, !dbg !772
  %l.0.inc118 = add nsw i32 %inc118, %l.0410, !dbg !772
  %indvars.iv.next433 = add i64 %indvars.iv432, 1, !dbg !763
  %lftr.wideiv434 = trunc i64 %indvars.iv.next433 to i32, !dbg !763
  %exitcond435 = icmp eq i32 %lftr.wideiv434, %5, !dbg !763
  br i1 %exitcond435, label %for.end122, label %for.body97, !dbg !763

for.end122:                                       ; preds = %if.end113
  %cmp123 = icmp eq i32 %leastlooked.1, 100000000, !dbg !773
  br i1 %cmp123, label %if.then125, label %if.end127, !dbg !773

if.then125:                                       ; preds = %if.else92, %for.end122
  %leastlooked_l.1.lcssa454 = phi i32 [ %leastlooked_l.2, %for.end122 ], [ %leastlooked_l.0418, %if.else92 ]
  %leastlooked_i.1.lcssa453 = phi i32 [ %leastlooked_i.2, %for.end122 ], [ %leastlooked_i.0419, %if.else92 ]
  %add126 = add nsw i32 %23, 30, !dbg !774
  store i32 %add126, i32* @nodecount, align 4, !dbg !774, !tbaa !205
  br label %while.cond.backedge, !dbg !776

while.cond.backedge:                              ; preds = %if.then125, %if.end154, %if.then173, %if.else159, %if.end76, %if.then88, %if.else80
  %leastlooked_l.0.be = phi i32 [ %leastlooked_l.0418, %if.end76 ], [ %leastlooked_l.0418, %if.then88 ], [ %leastlooked_l.0418, %if.else80 ], [ %leastlooked_l.1.lcssa454, %if.then125 ], [ %leastlooked_l.2, %if.end154 ], [ %leastlooked_l.2, %if.then173 ], [ %leastlooked_l.2, %if.else159 ]
  %leastlooked_i.0.be = phi i32 [ %leastlooked_i.0419, %if.end76 ], [ %leastlooked_i.0419, %if.then88 ], [ %leastlooked_i.0419, %if.else80 ], [ %leastlooked_i.1.lcssa453, %if.then125 ], [ %leastlooked_i.2, %if.end154 ], [ %leastlooked_i.2, %if.then173 ], [ %leastlooked_i.2, %if.else159 ]
  %firsts.0.be = phi i32 [ %inc50, %if.end76 ], [ %inc50, %if.then88 ], [ %inc50, %if.else80 ], [ %firsts.0421, %if.then125 ], [ %firsts.0421, %if.end154 ], [ %firsts.0421, %if.then173 ], [ %firsts.0421, %if.else159 ]
  %alternates.0.be = phi i32 [ %alternates.0422, %if.end76 ], [ %alternates.0422, %if.then88 ], [ %alternates.0422, %if.else80 ], [ %inc93, %if.then125 ], [ %inc93, %if.end154 ], [ %inc93, %if.then173 ], [ %inc93, %if.else159 ]
  %call29 = call i64 @rtime() #7, !dbg !730
  %call30 = call i32 @rdifftime(i64 %call29, i64 %call) #7, !dbg !730
  %39 = load i32* @pn_time, align 4, !dbg !730, !tbaa !205
  %cmp31 = icmp slt i32 %call30, %39, !dbg !730
  br i1 %cmp31, label %land.lhs.true, label %while.end180, !dbg !730

if.end127:                                        ; preds = %for.end122
  call void @make(%struct.move_s* %arrayidx, i32 %leastlooked_i.2) #7, !dbg !777
  %idxprom129 = sext i32 %leastlooked_l.2 to i64, !dbg !778
  %40 = load %struct.node*** %17, align 8, !dbg !778, !tbaa !210
  %arrayidx131 = getelementptr inbounds %struct.node** %40, i64 %idxprom129, !dbg !778
  %41 = load %struct.node** %arrayidx131, align 8, !dbg !778, !tbaa !210
  call void @llvm.dbg.value(metadata !{%struct.node* %41}, i64 0, metadata !140), !dbg !778
  %call132 = call %struct.node* @select_most_proving(%struct.node* %41) #6, !dbg !779
  call void @llvm.dbg.value(metadata !{%struct.node* %call132}, i64 0, metadata !139), !dbg !779
  call void @develop_node(%struct.node* %call132) #6, !dbg !780
  call void @update_ancestors(%struct.node* %call132) #6, !dbg !781
  %42 = load i32* @nodecount, align 4, !dbg !782, !tbaa !205
  %sub133 = sub i32 %42, %23, !dbg !782
  %idxprom134 = sext i32 %leastlooked_i.2 to i64, !dbg !782
  %arrayidx135 = getelementptr inbounds [512 x i32]* %nodesspent, i64 0, i64 %idxprom134, !dbg !782
  %43 = load i32* %arrayidx135, align 4, !dbg !782, !tbaa !205
  %add136 = add nsw i32 %sub133, %43, !dbg !782
  store i32 %add136, i32* %arrayidx135, align 4, !dbg !782, !tbaa !205
  %44 = load %struct.node*** %17, align 8, !dbg !783, !tbaa !210
  %arrayidx139 = getelementptr inbounds %struct.node** %44, i64 %idxprom129, !dbg !783
  %45 = load %struct.node** %arrayidx139, align 8, !dbg !783, !tbaa !210
  %proof140 = getelementptr inbounds %struct.node* %45, i64 0, i32 4, !dbg !783
  %46 = load i32* %proof140, align 4, !dbg !783, !tbaa !205
  %cmp141 = icmp eq i32 %46, 0, !dbg !783
  %disproof147 = getelementptr inbounds %struct.node* %45, i64 0, i32 5, !dbg !783
  %47 = load i32* %disproof147, align 4, !dbg !783, !tbaa !205
  %cmp148 = icmp eq i32 %47, 100000000, !dbg !783
  %or.cond456 = and i1 %cmp141, %cmp148, !dbg !783
  br i1 %or.cond456, label %if.then150, label %if.else159, !dbg !783

if.then150:                                       ; preds = %if.end127
  store i32 1, i32* @forcedwin, align 4, !dbg !784, !tbaa !205
  %48 = load i32* @kibitzed, align 4, !dbg !786, !tbaa !206
  %tobool151 = icmp eq i32 %48, 0, !dbg !786
  br i1 %tobool151, label %if.then152, label %if.end154, !dbg !786

if.then152:                                       ; preds = %if.then150
  store i32 1, i32* @kibitzed, align 4, !dbg !787, !tbaa !206
  %puts396 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str18, i64 0, i64 0)), !dbg !789
  %.pre447 = load %struct.node*** %17, align 8, !dbg !790, !tbaa !210
  %arrayidx157.phi.trans.insert = getelementptr inbounds %struct.node** %.pre447, i64 %idxprom129
  %.pre448 = load %struct.node** %arrayidx157.phi.trans.insert, align 8, !dbg !790, !tbaa !210
  br label %if.end154, !dbg !791

if.end154:                                        ; preds = %if.then150, %if.then152
  %49 = phi %struct.node* [ %45, %if.then150 ], [ %.pre448, %if.then152 ]
  %move158 = getelementptr inbounds %struct.node* %49, i64 0, i32 8, !dbg !790
  %50 = bitcast %struct.move_s* %move158 to i8*, !dbg !790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %50, i64 24, i32 4, i1 false), !dbg !790, !tbaa.struct !613
  br label %while.cond.backedge, !dbg !792

if.else159:                                       ; preds = %if.end127
  %cmp164 = icmp eq i32 %47, 0, !dbg !793
  %cmp171 = icmp eq i32 %46, 100000000, !dbg !793
  %or.cond457 = and i1 %cmp164, %cmp171, !dbg !793
  br i1 %or.cond457, label %if.then173, label %while.cond.backedge, !dbg !793

if.then173:                                       ; preds = %if.else159
  %arrayidx175 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %idxprom134, !dbg !794
  store i32 1, i32* %arrayidx175, align 4, !dbg !794, !tbaa !205
  br label %while.cond.backedge, !dbg !796

while.end180:                                     ; preds = %while.cond.backedge, %land.rhs, %land.lhs.true41, %land.lhs.true, %land.lhs.true35, %if.end28
  %alternates.0.lcssa = phi i32 [ 0, %if.end28 ], [ %alternates.0422, %land.lhs.true35 ], [ %alternates.0422, %land.lhs.true ], [ %alternates.0422, %land.lhs.true41 ], [ %alternates.0422, %land.rhs ], [ %alternates.0.be, %while.cond.backedge ]
  %firsts.0.lcssa = phi i32 [ 0, %if.end28 ], [ %firsts.0421, %land.lhs.true35 ], [ %firsts.0421, %land.lhs.true ], [ %firsts.0421, %land.lhs.true41 ], [ %firsts.0421, %land.rhs ], [ %firsts.0.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !130), !dbg !797
  call void @llvm.dbg.value(metadata !798, i64 0, metadata !154), !dbg !799
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !156), !dbg !800
  %51 = getelementptr inbounds i8* %call2, i64 2, !dbg !801
  %52 = load i8* %51, align 1, !dbg !801, !tbaa !206
  %tobool181 = icmp eq i8 %52, 0, !dbg !801
  %cmp425.not = xor i1 %cmp425, true, !dbg !801
  %brmerge = or i1 %tobool181, %cmp425.not, !dbg !801
  br i1 %brmerge, label %if.end256, label %for.body186.lr.ph, !dbg !801

for.body186.lr.ph:                                ; preds = %while.end180
  %arraydecay = getelementptr inbounds [8 x i8]* %output, i64 0, i64 0, !dbg !802
  %children194 = getelementptr inbounds i8* %call2, i64 16, !dbg !807
  %53 = bitcast i8* %children194 to %struct.node***, !dbg !807
  br label %for.body186, !dbg !808

for.body186:                                      ; preds = %for.inc253, %for.body186.lr.ph
  %indvars.iv430 = phi i64 [ 0, %for.body186.lr.ph ], [ %indvars.iv.next431, %for.inc253 ]
  %altlosers.0405 = phi i32 [ 0, %for.body186.lr.ph ], [ %altlosers.2, %for.inc253 ]
  %bdp.0404 = phi float [ -1.000000e+00, %for.body186.lr.ph ], [ %bdp.3, %for.inc253 ]
  %l.2402 = phi i32 [ 0, %for.body186.lr.ph ], [ %l.3, %for.inc253 ]
  %arrayidx188 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv430, !dbg !809
  %54 = load i32* %arrayidx188, align 4, !dbg !809, !tbaa !205
  %tobool189 = icmp eq i32 %54, 0, !dbg !809
  br i1 %tobool189, label %for.inc253, label %if.then190, !dbg !809

if.then190:                                       ; preds = %for.body186
  %arrayidx192 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv430, !dbg !802
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx192, i8* %arraydecay) #7, !dbg !802
  %idxprom193 = sext i32 %l.2402 to i64, !dbg !807
  %55 = load %struct.node*** %53, align 8, !dbg !807, !tbaa !210
  %arrayidx195 = getelementptr inbounds %struct.node** %55, i64 %idxprom193, !dbg !807
  %56 = load %struct.node** %arrayidx195, align 8, !dbg !807, !tbaa !210
  %proof196 = getelementptr inbounds %struct.node* %56, i64 0, i32 4, !dbg !807
  %57 = load i32* %proof196, align 4, !dbg !807, !tbaa !205
  %cmp197 = icmp eq i32 %57, 0, !dbg !807
  br i1 %cmp197, label %if.else245, label %if.then199, !dbg !807

if.then199:                                       ; preds = %if.then190
  %disproof203 = getelementptr inbounds %struct.node* %56, i64 0, i32 5, !dbg !810
  %58 = load i32* %disproof203, align 4, !dbg !810, !tbaa !205
  %conv204 = sitofp i32 %58 to float, !dbg !810
  %conv209 = sitofp i32 %57 to float, !dbg !810
  %div = fdiv float %conv204, %conv209, !dbg !810
  %cmp210 = fcmp ogt float %div, %bdp.0404, !dbg !810
  br i1 %cmp210, label %if.then212, label %if.end228, !dbg !810

if.then212:                                       ; preds = %if.then199
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !154), !dbg !812
  %move227 = getelementptr inbounds %struct.node* %56, i64 0, i32 8, !dbg !814
  %59 = bitcast %struct.move_s* %move227 to i8*, !dbg !814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %59, i64 24, i32 4, i1 false), !dbg !814, !tbaa.struct !613
  %.pre = load %struct.node** %arrayidx195, align 8, !dbg !815, !tbaa !210
  %disproof232.phi.trans.insert = getelementptr inbounds %struct.node* %.pre, i64 0, i32 5
  %.pre444 = load i32* %disproof232.phi.trans.insert, align 4, !dbg !815, !tbaa !205
  br label %if.end228, !dbg !816

if.end228:                                        ; preds = %if.then212, %if.then199
  %60 = phi i32 [ %.pre444, %if.then212 ], [ %58, %if.then199 ]
  %61 = phi %struct.node* [ %.pre, %if.then212 ], [ %56, %if.then199 ]
  %bdp.1 = phi float [ %div, %if.then212 ], [ %bdp.0404, %if.then199 ]
  %cmp233 = icmp eq i32 %60, 0, !dbg !815
  br i1 %cmp233, label %land.lhs.true235, label %if.end250, !dbg !815

land.lhs.true235:                                 ; preds = %if.end228
  %proof239 = getelementptr inbounds %struct.node* %61, i64 0, i32 4, !dbg !815
  %62 = load i32* %proof239, align 4, !dbg !815, !tbaa !205
  %cmp240 = icmp eq i32 %62, 100000000, !dbg !815
  %inc243 = zext i1 %cmp240 to i32, !dbg !815
  %inc243.altlosers.0 = add nsw i32 %inc243, %altlosers.0405, !dbg !815
  br label %if.end250, !dbg !815

if.else245:                                       ; preds = %if.then190
  store i32 1, i32* @forcedwin, align 4, !dbg !817, !tbaa !205
  %move249 = getelementptr inbounds %struct.node* %56, i64 0, i32 8, !dbg !819
  %63 = bitcast %struct.move_s* %move249 to i8*, !dbg !819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %63, i64 24, i32 4, i1 false), !dbg !819, !tbaa.struct !613
  call void @llvm.dbg.value(metadata !820, i64 0, metadata !154), !dbg !821
  br label %if.end250

if.end250:                                        ; preds = %land.lhs.true235, %if.end228, %if.else245
  %bdp.2 = phi float [ %bdp.1, %if.end228 ], [ 1.000000e+08, %if.else245 ], [ %bdp.1, %land.lhs.true235 ]
  %altlosers.1 = phi i32 [ %altlosers.0405, %if.end228 ], [ %altlosers.0405, %if.else245 ], [ %inc243.altlosers.0, %land.lhs.true235 ]
  %inc251 = add nsw i32 %l.2402, 1, !dbg !822
  call void @llvm.dbg.value(metadata !{i32 %inc251}, i64 0, metadata !130), !dbg !822
  br label %for.inc253, !dbg !823

for.inc253:                                       ; preds = %for.body186, %if.end250
  %l.3 = phi i32 [ %inc251, %if.end250 ], [ %l.2402, %for.body186 ]
  %bdp.3 = phi float [ %bdp.2, %if.end250 ], [ %bdp.0404, %for.body186 ]
  %altlosers.2 = phi i32 [ %altlosers.1, %if.end250 ], [ %altlosers.0405, %for.body186 ]
  %indvars.iv.next431 = add i64 %indvars.iv430, 1, !dbg !808
  %lftr.wideiv = trunc i64 %indvars.iv.next431 to i32, !dbg !808
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !808
  br i1 %exitcond, label %if.end256, label %for.body186, !dbg !808

if.end256:                                        ; preds = %while.end180, %for.inc253
  %altlosers.3 = phi i32 [ 0, %while.end180 ], [ %altlosers.2, %for.inc253 ]
  %arraydecay257 = getelementptr inbounds [8 x i8]* %output, i64 0, i64 0, !dbg !824
  %64 = bitcast %struct.move_s* %tmp to i8*, !dbg !824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !dbg !824, !tbaa.struct !613
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay257) #7, !dbg !824
  %65 = load i32* @xb_mode, align 4, !dbg !825, !tbaa !205
  %tobool258 = icmp ne i32 %65, 0, !dbg !825
  %66 = load i32* @post, align 4, !dbg !825, !tbaa !206
  %tobool260 = icmp ne i32 %66, 0, !dbg !825
  %or.cond = and i1 %tobool258, %tobool260, !dbg !825
  br i1 %or.cond, label %if.then261, label %if.end265, !dbg !825

if.then261:                                       ; preds = %if.end256
  %67 = load i32* %14, align 4, !dbg !826, !tbaa !205
  %68 = load i32* %15, align 4, !dbg !826, !tbaa !205
  %69 = load i32* @maxply, align 4, !dbg !826, !tbaa !205
  %call264 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([94 x i8]* @.str2, i64 0, i64 0), i32 %67, i32 %68, i32 %altlosers.3, i32 %69, i32 %firsts.0.lcssa, i32 %alternates.0.lcssa) #7, !dbg !826
  br label %if.end265, !dbg !826

if.end265:                                        ; preds = %if.then261, %if.end256
  %sub266 = add nsw i32 %legal.1, -1, !dbg !827
  %cmp267 = icmp eq i32 %altlosers.3, %sub266, !dbg !827
  br i1 %cmp267, label %if.then269, label %if.end289, !dbg !827

if.then269:                                       ; preds = %if.end265
  %puts = call i32 @puts(i8* getelementptr inbounds ([29 x i8]* @str, i64 0, i64 0)), !dbg !828
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !129), !dbg !830
  br i1 %cmp425, label %for.body274, label %if.end289, !dbg !830

for.body274:                                      ; preds = %if.then269, %for.inc286
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc286 ], [ 0, %if.then269 ]
  %arrayidx276 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv, !dbg !832
  %70 = load i32* %arrayidx276, align 4, !dbg !832, !tbaa !205
  %tobool277 = icmp eq i32 %70, 0, !dbg !832
  br i1 %tobool277, label %land.lhs.true278, label %for.inc286, !dbg !832

land.lhs.true278:                                 ; preds = %for.body274
  %arrayidx280 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv, !dbg !832
  %71 = load i32* %arrayidx280, align 4, !dbg !832, !tbaa !205
  %tobool281 = icmp eq i32 %71, 0, !dbg !832
  br i1 %tobool281, label %for.inc286, label %if.then282, !dbg !832

if.then282:                                       ; preds = %land.lhs.true278
  store i32 1, i32* @forcedwin, align 4, !dbg !834, !tbaa !205
  %arrayidx284 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv, !dbg !836
  %72 = bitcast %struct.move_s* %arrayidx284 to i8*, !dbg !836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %72, i64 24, i32 4, i1 false), !dbg !836, !tbaa.struct !613
  br label %if.end289, !dbg !837

for.inc286:                                       ; preds = %land.lhs.true278, %for.body274
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !830
  %73 = trunc i64 %indvars.iv.next to i32, !dbg !830
  %cmp272 = icmp slt i32 %73, %5, !dbg !830
  br i1 %cmp272, label %for.body274, label %if.end289, !dbg !830

if.end289:                                        ; preds = %if.then269, %for.inc286, %if.then282, %if.end265
  %cmp290 = icmp eq i32 %altlosers.3, %legal.1, !dbg !838
  br i1 %cmp290, label %if.then292, label %if.end293, !dbg !838

if.then292:                                       ; preds = %if.end289
  store i32 1, i32* @alllosers, align 4, !dbg !839, !tbaa !205
  br label %if.end293, !dbg !841

if.end293:                                        ; preds = %if.then292, %if.end289
  store i32 0, i32* @bufftop, align 4, !dbg !842, !tbaa !205
  %74 = load i8** @membuff, align 8, !dbg !844, !tbaa !210
  call void @free(i8* %74) #7, !dbg !844
  call void @free(i8* %call2) #7, !dbg !845
  br label %cleanup, !dbg !846

cleanup:                                          ; preds = %if.end293, %if.then27, %if.then15
  call void @llvm.lifetime.end(i64 2048, i8* %2) #3, !dbg !846
  call void @llvm.lifetime.end(i64 2048, i8* %1) #3, !dbg !846
  call void @llvm.lifetime.end(i64 12288, i8* %0) #3, !dbg !846
  ret void, !dbg !847
}

; Function Attrs: optsize
declare i64 @rtime() #4

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #4

; Function Attrs: optsize
declare i32 @interrupt() #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #4

; Function Attrs: nounwind optsize uwtable
define void @proofnumbersearch() #0 {
entry:
  %output = alloca [8192 x i8], align 16
  %PV = alloca [8192 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [8192 x i8]* %output, i64 0, i64 0, !dbg !848
  call void @llvm.lifetime.start(i64 8192, i8* %0) #3, !dbg !848
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %output}, metadata !163), !dbg !848
  %1 = getelementptr inbounds [8192 x i8]* %PV, i64 0, i64 0, !dbg !849
  call void @llvm.lifetime.start(i64 8192, i8* %1) #3, !dbg !849
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %PV}, metadata !167), !dbg !849
  store i32 1, i32* @nodecount, align 4, !dbg !850, !tbaa !205
  store i32 0, i32* @iters, align 4, !dbg !851, !tbaa !205
  store i32 0, i32* @frees, align 4, !dbg !852, !tbaa !205
  store i32 1, i32* @ply, align 4, !dbg !853, !tbaa !205
  store i32 0, i32* @maxply, align 4, !dbg !854, !tbaa !205
  store i32 0, i32* @forwards, align 4, !dbg !855, !tbaa !205
  %2 = load i32* @hash, align 4, !dbg !856, !tbaa !205
  %3 = load i32* @move_number, align 4, !dbg !856, !tbaa !205
  %idxprom = sext i32 %3 to i64, !dbg !856
  %arrayidx = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom, !dbg !856
  store i32 %2, i32* %arrayidx, align 4, !dbg !856, !tbaa !205
  %4 = load i32* @white_to_move, align 4, !dbg !857, !tbaa !205
  %not.tobool = icmp eq i32 %4, 0, !dbg !857
  %cond = zext i1 %not.tobool to i32, !dbg !857
  store i32 %cond, i32* @root_to_move, align 4, !dbg !857, !tbaa !205
  %call = call i64 @rtime() #7, !dbg !858
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !162), !dbg !858
  %call1 = call noalias i8* @calloc(i64 1, i64 56) #7, !dbg !859
  %5 = bitcast i8* %call1 to %struct.node*, !dbg !859
  call void @llvm.dbg.value(metadata !{%struct.node* %5}, i64 0, metadata !159), !dbg !859
  %6 = load i32* @PBSize, align 4, !dbg !860, !tbaa !205
  %conv = sext i32 %6 to i64, !dbg !860
  %call2 = call noalias i8* @calloc(i64 %conv, i64 56) #7, !dbg !860
  store i8* %call2, i8** @membuff, align 8, !dbg !860, !tbaa !210
  call void @pn_eval(%struct.node* %5) #6, !dbg !861
  %7 = load i8* %call1, align 1, !dbg !862, !tbaa !206
  %cmp = icmp eq i8 %7, 0, !dbg !862
  br i1 %cmp, label %if.then, label %if.end, !dbg !862

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !863, !tbaa.struct !613
  store i32 0, i32* @bufftop, align 4, !dbg !865, !tbaa !205
  call void @free(i8* %call1) #7, !dbg !867
  %8 = load i8** @membuff, align 8, !dbg !868, !tbaa !210
  call void @free(i8* %8) #7, !dbg !868
  br label %cleanup, !dbg !869

if.end:                                           ; preds = %entry
  call void @set_proof_and_disproof_numbers(%struct.node* %5) #6, !dbg !870
  call void @llvm.dbg.value(metadata !{%struct.node* %5}, i64 0, metadata !161), !dbg !871
  %disproof = getelementptr inbounds i8* %call1, i64 8, !dbg !872
  %9 = bitcast i8* %disproof to i32*, !dbg !872
  %proof = getelementptr inbounds i8* %call1, i64 4, !dbg !872
  %10 = bitcast i8* %proof to i32*, !dbg !872
  %11 = load i32* %10, align 4, !dbg !872, !tbaa !205
  %cmp5283 = icmp eq i32 %11, 0, !dbg !872
  br i1 %cmp5283, label %while.end, label %land.lhs.true, !dbg !872

land.lhs.true:                                    ; preds = %if.end, %while.cond.backedge
  %.pre293 = phi i32 [ %17, %while.cond.backedge ], [ %11, %if.end ]
  %12 = load i32* %9, align 4, !dbg !872, !tbaa !205
  %cmp7 = icmp eq i32 %12, 0, !dbg !872
  br i1 %cmp7, label %while.end, label %land.rhs, !dbg !872

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i32* @bufftop, align 4, !dbg !872, !tbaa !205
  %conv9 = zext i32 %13 to i64, !dbg !872
  %14 = load i32* @PBSize, align 4, !dbg !872, !tbaa !205
  %sub10 = add nsw i32 %14, -10000, !dbg !872
  %conv11 = sext i32 %sub10 to i64, !dbg !872
  %mul = mul i64 %conv11, 56, !dbg !872
  %cmp12 = icmp ult i64 %conv9, %mul, !dbg !872
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call14 = call %struct.node* @select_most_proving(%struct.node* %5) #6, !dbg !873
  call void @llvm.dbg.value(metadata !{%struct.node* %call14}, i64 0, metadata !160), !dbg !873
  call void @develop_node(%struct.node* %call14) #6, !dbg !875
  call void @update_ancestors(%struct.node* %call14) #6, !dbg !876
  %15 = load i32* @iters, align 4, !dbg !877, !tbaa !205
  %inc = add nsw i32 %15, 1, !dbg !877
  store i32 %inc, i32* @iters, align 4, !dbg !877, !tbaa !205
  %rem269 = and i32 %inc, 31, !dbg !878
  %cmp15 = icmp eq i32 %rem269, 0, !dbg !878
  br i1 %cmp15, label %if.then17, label %while.cond.backedge, !dbg !878

if.then17:                                        ; preds = %while.body
  %call18 = call i64 @rtime() #7, !dbg !879
  %call19 = call i32 @rdifftime(i64 %call18, i64 %call) #7, !dbg !879
  %16 = load i32* @pn_time, align 4, !dbg !879, !tbaa !205
  %cmp20 = icmp sgt i32 %call19, %16, !dbg !879
  br i1 %cmp20, label %land.lhs.true22, label %while.cond.backedge, !dbg !879

while.cond.backedge:                              ; preds = %if.then17, %while.body, %land.lhs.true22
  %17 = load i32* %10, align 4, !dbg !872, !tbaa !205
  %cmp5 = icmp eq i32 %17, 0, !dbg !872
  br i1 %cmp5, label %while.end, label %land.lhs.true, !dbg !872

land.lhs.true22:                                  ; preds = %if.then17
  %call23 = call i32 @interrupt() #7, !dbg !879
  %tobool24 = icmp eq i32 %call23, 0, !dbg !879
  br i1 %tobool24, label %land.lhs.true22.while.endsplit_crit_edge, label %while.cond.backedge, !dbg !879

land.lhs.true22.while.endsplit_crit_edge:         ; preds = %land.lhs.true22
  %.pre.pre = load i32* %10, align 4, !dbg !881, !tbaa !205
  br label %while.end, !dbg !879

while.end:                                        ; preds = %while.cond.backedge, %land.lhs.true, %land.rhs, %land.lhs.true22.while.endsplit_crit_edge, %if.end
  %18 = phi i32 [ 0, %if.end ], [ %.pre.pre, %land.lhs.true22.while.endsplit_crit_edge ], [ %.pre293, %land.rhs ], [ %.pre293, %land.lhs.true ], [ 0, %while.cond.backedge ]
  %19 = load i32* %9, align 4, !dbg !881, !tbaa !205
  %20 = load i32* @nodecount, align 4, !dbg !881, !tbaa !205
  %21 = load i32* @frees, align 4, !dbg !881, !tbaa !205
  %conv30 = sext i32 %20 to i64, !dbg !881
  %mul31 = mul i64 %conv30, 56, !dbg !881
  %conv32 = uitofp i64 %mul31 to float, !dbg !881
  %div = fmul float %conv32, 0x3EB0000000000000, !dbg !881
  %conv33 = fpext float %div to double, !dbg !881
  %22 = load i32* @iters, align 4, !dbg !881, !tbaa !205
  %23 = load i32* @maxply, align 4, !dbg !881, !tbaa !205
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, double %conv33, i32 %22, i32 %23) #7, !dbg !881
  %24 = load i32* @xb_mode, align 4, !dbg !882, !tbaa !205
  %tobool35 = icmp ne i32 %24, 0, !dbg !882
  %25 = load i32* @post, align 4, !dbg !882, !tbaa !206
  %tobool37 = icmp ne i32 %25, 0, !dbg !882
  %or.cond = and i1 %tobool35, %tobool37, !dbg !882
  br i1 %or.cond, label %if.then38, label %if.end42, !dbg !882

if.then38:                                        ; preds = %while.end
  %26 = load i32* %10, align 4, !dbg !883, !tbaa !205
  %27 = load i32* %9, align 4, !dbg !883, !tbaa !205
  %28 = load i32* @nodecount, align 4, !dbg !883, !tbaa !205
  %29 = load i32* @forwards, align 4, !dbg !883, !tbaa !205
  %30 = load i32* @iters, align 4, !dbg !883, !tbaa !205
  %31 = load i32* @maxply, align 4, !dbg !883, !tbaa !205
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([90 x i8]* @.str5, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31) #7, !dbg !883
  %.pr = load i32* @xb_mode, align 4, !dbg !884, !tbaa !205
  br label %if.end42, !dbg !883

if.end42:                                         ; preds = %if.then38, %while.end
  %32 = phi i32 [ %.pr, %if.then38 ], [ %24, %while.end ], !dbg !884
  %tobool43 = icmp eq i32 %32, 0, !dbg !884
  br i1 %tobool43, label %if.then44, label %while.end56, !dbg !884

if.then44:                                        ; preds = %if.end42
  %call45 = call i64 @rtime() #7, !dbg !885
  %call46 = call i32 @rdifftime(i64 %call45, i64 %call) #7, !dbg !885
  %conv47 = sitofp i32 %call46 to float, !dbg !885
  %conv48 = fpext float %conv47 to double, !dbg !885
  %div49 = fdiv double %conv48, 1.000000e+02, !dbg !885
  %call50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0), double %div49) #7, !dbg !885
  br label %while.end56, !dbg !885

while.end56:                                      ; preds = %if.end42, %if.then44
  %33 = load i32* %10, align 4, !dbg !886, !tbaa !205
  %cmp58 = icmp eq i32 %33, 0, !dbg !886
  br i1 %cmp58, label %if.then60, label %if.else147, !dbg !886

if.then60:                                        ; preds = %while.end56
  store i8 1, i8* %call1, align 1, !dbg !887, !tbaa !206
  %puts266 = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str22, i64 0, i64 0)), !dbg !889
  %call63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !890
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8192, i32 16, i1 false), !dbg !891
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8192, i32 16, i1 false), !dbg !892
  store i32 1, i32* @ply, align 4, !dbg !893, !tbaa !205
  %34 = getelementptr inbounds i8* %call1, i64 2, !dbg !894
  %35 = load i8* %34, align 1, !dbg !894, !tbaa !206
  %tobool65278 = icmp eq i8 %35, 0, !dbg !894
  br i1 %tobool65278, label %while.end118, label %while.body66.lr.ph, !dbg !894

while.body66.lr.ph:                               ; preds = %if.then60
  %36 = bitcast %struct.move_s* %tmp to i8*, !dbg !895
  br label %while.body66, !dbg !894

while.body66:                                     ; preds = %while.body66.lr.ph, %if.end110
  %currentnode.1279 = phi %struct.node* [ %5, %while.body66.lr.ph ], [ %46, %if.end110 ]
  %37 = load i32* @white_to_move, align 4, !dbg !897, !tbaa !205
  %not.tobool67 = icmp eq i32 %37, 0, !dbg !897
  %cond68 = zext i1 %not.tobool67 to i32, !dbg !897
  %38 = load i32* @root_to_move, align 4, !dbg !897, !tbaa !205
  %cmp69 = icmp eq i32 %cond68, %38, !dbg !897
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !168), !dbg !898
  %children = getelementptr inbounds %struct.node* %currentnode.1279, i64 0, i32 6, !dbg !900
  %39 = load %struct.node*** %children, align 8, !dbg !900, !tbaa !210
  br i1 %cmp69, label %while.cond72.preheader, label %while.cond82.preheader, !dbg !897

while.cond72.preheader:                           ; preds = %while.body66
  %proof76 = getelementptr inbounds %struct.node* %currentnode.1279, i64 0, i32 4, !dbg !900
  %40 = load i32* %proof76, align 4, !dbg !900, !tbaa !205
  br label %while.cond72, !dbg !900

while.cond82.preheader:                           ; preds = %while.body66
  %disproof87 = getelementptr inbounds %struct.node* %currentnode.1279, i64 0, i32 5, !dbg !901
  %41 = load i32* %disproof87, align 4, !dbg !901, !tbaa !205
  br label %while.cond82, !dbg !901

while.cond72:                                     ; preds = %while.cond72, %while.cond72.preheader
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %while.cond72 ], [ 0, %while.cond72.preheader ]
  %i.0 = phi i32 [ %inc80, %while.cond72 ], [ 0, %while.cond72.preheader ]
  %arrayidx74 = getelementptr inbounds %struct.node** %39, i64 %indvars.iv288, !dbg !900
  %42 = load %struct.node** %arrayidx74, align 8, !dbg !900, !tbaa !210
  %proof75 = getelementptr inbounds %struct.node* %42, i64 0, i32 4, !dbg !900
  %43 = load i32* %proof75, align 4, !dbg !900, !tbaa !205
  %cmp77 = icmp eq i32 %43, %40, !dbg !900
  %indvars.iv.next289 = add i64 %indvars.iv288, 1, !dbg !900
  %inc80 = add nsw i32 %i.0, 1, !dbg !903
  call void @llvm.dbg.value(metadata !{i32 %inc80}, i64 0, metadata !168), !dbg !903
  br i1 %cmp77, label %if.end93, label %while.cond72, !dbg !900

while.cond82:                                     ; preds = %while.cond82, %while.cond82.preheader
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %while.cond82 ], [ 0, %while.cond82.preheader ]
  %i.1 = phi i32 [ %inc91, %while.cond82 ], [ 0, %while.cond82.preheader ]
  %arrayidx85 = getelementptr inbounds %struct.node** %39, i64 %indvars.iv286, !dbg !901
  %44 = load %struct.node** %arrayidx85, align 8, !dbg !901, !tbaa !210
  %disproof86 = getelementptr inbounds %struct.node* %44, i64 0, i32 5, !dbg !901
  %45 = load i32* %disproof86, align 4, !dbg !901, !tbaa !205
  %cmp88 = icmp eq i32 %45, %41, !dbg !901
  %indvars.iv.next287 = add i64 %indvars.iv286, 1, !dbg !901
  %inc91 = add nsw i32 %i.1, 1, !dbg !905
  call void @llvm.dbg.value(metadata !{i32 %inc91}, i64 0, metadata !168), !dbg !905
  br i1 %cmp88, label %if.end93, label %while.cond82, !dbg !901

if.end93:                                         ; preds = %while.cond72, %while.cond82
  %i.2 = phi i32 [ %i.1, %while.cond82 ], [ %i.0, %while.cond72 ]
  %idxprom94 = sext i32 %i.2 to i64, !dbg !907
  %arrayidx96 = getelementptr inbounds %struct.node** %39, i64 %idxprom94, !dbg !907
  %46 = load %struct.node** %arrayidx96, align 8, !dbg !907, !tbaa !210
  call void @llvm.dbg.value(metadata !{%struct.node* %46}, i64 0, metadata !161), !dbg !907
  %move97 = getelementptr inbounds %struct.node* %46, i64 0, i32 8, !dbg !895
  %47 = bitcast %struct.move_s* %move97 to i8*, !dbg !895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %47, i64 24, i32 4, i1 false), !dbg !895, !tbaa.struct !613
  call void @comp_to_coord(%struct.move_s* byval align 8 %tmp, i8* %0) #7, !dbg !895
  %call99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %0) #7, !dbg !908
  %call102 = call i8* @strcat(i8* %1, i8* %0) #7, !dbg !909
  %strlen = call i64 @strlen(i8* %1), !dbg !910
  %endptr = getelementptr [8192 x i8]* %PV, i64 0, i64 %strlen, !dbg !910
  %48 = bitcast i8* %endptr to i16*, !dbg !910
  store i16 32, i16* %48, align 1, !dbg !910
  call void @make(%struct.move_s* %move97, i32 0) #7, !dbg !911
  %49 = load i32* @ply, align 4, !dbg !912, !tbaa !205
  %cmp106 = icmp eq i32 %49, 1, !dbg !912
  br i1 %cmp106, label %if.then108, label %if.end110, !dbg !912

if.then108:                                       ; preds = %if.end93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %47, i64 24, i32 4, i1 false), !dbg !913, !tbaa.struct !613
  br label %if.end110, !dbg !913

if.end110:                                        ; preds = %if.then108, %if.end93
  store i32 1, i32* @forcedwin, align 4, !dbg !914, !tbaa !205
  %expanded = getelementptr inbounds %struct.node* %46, i64 0, i32 2, !dbg !894
  %50 = load i8* %expanded, align 1, !dbg !894, !tbaa !206
  %tobool65 = icmp eq i8 %50, 0, !dbg !894
  br i1 %tobool65, label %while.end111, label %while.body66, !dbg !894

while.end111:                                     ; preds = %if.end110
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !170), !dbg !915
  %cmp113274 = icmp eq %struct.node* %46, %5, !dbg !916
  br i1 %cmp113274, label %while.end118, label %while.body115, !dbg !916

while.body115:                                    ; preds = %while.end111, %while.body115
  %currentnode.2275 = phi %struct.node* [ %51, %while.body115 ], [ %46, %while.end111 ]
  %move116 = getelementptr inbounds %struct.node* %currentnode.2275, i64 0, i32 8, !dbg !917
  call void @unmake(%struct.move_s* %move116, i32 0) #7, !dbg !917
  %parent117 = getelementptr inbounds %struct.node* %currentnode.2275, i64 0, i32 7, !dbg !919
  %51 = load %struct.node** %parent117, align 8, !dbg !919, !tbaa !210
  call void @llvm.dbg.value(metadata !{%struct.node* %51}, i64 0, metadata !161), !dbg !919
  %cmp113 = icmp eq %struct.node* %51, %5, !dbg !916
  br i1 %cmp113, label %while.end118, label %while.body115, !dbg !916

while.end118:                                     ; preds = %if.then60, %while.body115, %while.end111
  %52 = phi i32 [ %49, %while.end111 ], [ %49, %while.body115 ], [ 1, %if.then60 ]
  %53 = load i32* @kibitzed, align 4, !dbg !920, !tbaa !206
  %tobool119 = icmp eq i32 %53, 0, !dbg !920
  %54 = load i32* @xb_mode, align 4, !dbg !920, !tbaa !205
  %tobool121 = icmp ne i32 %54, 0, !dbg !920
  %or.cond208 = and i1 %tobool119, %tobool121, !dbg !920
  %55 = load i32* @post, align 4, !dbg !920, !tbaa !206
  %tobool123 = icmp ne i32 %55, 0, !dbg !920
  %or.cond209 = and i1 %or.cond208, %tobool123, !dbg !920
  br i1 %or.cond209, label %if.then124, label %if.end127, !dbg !920

if.then124:                                       ; preds = %while.end118
  store i32 1, i32* @kibitzed, align 4, !dbg !921, !tbaa !206
  %div125 = sdiv i32 %52, 2, !dbg !923
  %call126 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i32 %div125) #7, !dbg !923
  br label %if.end127, !dbg !924

if.end127:                                        ; preds = %while.end118, %if.then124
  %cmp128 = icmp eq i32 %52, 1, !dbg !925
  br i1 %cmp128, label %land.lhs.true130, label %if.end145, !dbg !925

land.lhs.true130:                                 ; preds = %if.end127
  %56 = load i32* %10, align 4, !dbg !925, !tbaa !205
  %cmp132 = icmp eq i32 %56, 0, !dbg !925
  br i1 %cmp132, label %if.then137, label %lor.lhs.false, !dbg !925

lor.lhs.false:                                    ; preds = %land.lhs.true130
  %57 = load i32* %9, align 4, !dbg !925, !tbaa !205
  %cmp135 = icmp eq i32 %57, 0, !dbg !925
  br i1 %cmp135, label %if.then137, label %if.end145, !dbg !925

if.then137:                                       ; preds = %lor.lhs.false, %land.lhs.true130
  %58 = load i32* @root_to_move, align 4, !dbg !926, !tbaa !205
  %cmp138 = icmp eq i32 %58, 0, !dbg !926
  br i1 %cmp138, label %if.then140, label %if.else142, !dbg !926

if.then140:                                       ; preds = %if.then137
  %puts268 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str24, i64 0, i64 0)), !dbg !928
  store i32 3, i32* @result, align 4, !dbg !930, !tbaa !205
  br label %if.end145, !dbg !931

if.else142:                                       ; preds = %if.then137
  %puts267 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str23, i64 0, i64 0)), !dbg !932
  store i32 2, i32* @result, align 4, !dbg !934, !tbaa !205
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.else142, %lor.lhs.false, %if.end127
  %putchar = call i32 @putchar(i32 10) #3, !dbg !935
  br label %for.cond.preheader, !dbg !936

if.else147:                                       ; preds = %while.end56
  %59 = load i32* %9, align 4, !dbg !937, !tbaa !205
  %cmp149 = icmp eq i32 %59, 0, !dbg !937
  br i1 %cmp149, label %if.then151, label %if.else154, !dbg !937

if.then151:                                       ; preds = %if.else147
  store i8 0, i8* %call1, align 1, !dbg !938, !tbaa !206
  %puts265 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str21, i64 0, i64 0)), !dbg !940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !941, !tbaa.struct !613
  br label %for.cond.preheader, !dbg !942

if.else154:                                       ; preds = %if.else147
  store i8 2, i8* %call1, align 1, !dbg !943, !tbaa !206
  %puts = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str20, i64 0, i64 0)), !dbg !945
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !946, !tbaa.struct !613
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then151, %if.else154, %if.end145
  %60 = getelementptr inbounds i8* %call1, i64 1, !dbg !947
  %61 = load i8* %60, align 1, !dbg !947, !tbaa !206
  %cmp160271 = icmp eq i8 %61, 0, !dbg !947
  br i1 %cmp160271, label %for.end, label %for.body.lr.ph, !dbg !947

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children163 = getelementptr inbounds i8* %call1, i64 16, !dbg !949
  %62 = bitcast i8* %children163 to %struct.node***, !dbg !949
  %.pre291 = load %struct.node*** %62, align 8, !dbg !949, !tbaa !210
  br label %for.body, !dbg !947

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %bdp.0273 = phi float [ -1.000000e+00, %for.body.lr.ph ], [ %bdp.1, %for.inc ]
  %arrayidx164 = getelementptr inbounds %struct.node** %.pre291, i64 %indvars.iv, !dbg !949
  %63 = load %struct.node** %arrayidx164, align 8, !dbg !949, !tbaa !210
  %proof165 = getelementptr inbounds %struct.node* %63, i64 0, i32 4, !dbg !949
  %64 = load i32* %proof165, align 4, !dbg !949, !tbaa !205
  %cmp166 = icmp eq i32 %64, 0, !dbg !949
  br i1 %cmp166, label %if.else199, label %if.then168, !dbg !949

if.then168:                                       ; preds = %for.body
  %disproof172 = getelementptr inbounds %struct.node* %63, i64 0, i32 5, !dbg !951
  %65 = load i32* %disproof172, align 4, !dbg !951, !tbaa !205
  %conv173 = sitofp i32 %65 to float, !dbg !951
  %conv178 = sitofp i32 %64 to float, !dbg !951
  %div179 = fdiv float %conv173, %conv178, !dbg !951
  %cmp180 = fcmp ogt float %div179, %bdp.0273, !dbg !951
  br i1 %cmp180, label %if.then182, label %for.inc, !dbg !951

if.then182:                                       ; preds = %if.then168
  call void @llvm.dbg.value(metadata !{float %div179}, i64 0, metadata !169), !dbg !953
  %move197 = getelementptr inbounds %struct.node* %63, i64 0, i32 8, !dbg !955
  %66 = bitcast %struct.move_s* %move197 to i8*, !dbg !955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %66, i64 24, i32 4, i1 false), !dbg !955, !tbaa.struct !613
  br label %for.inc, !dbg !956

if.else199:                                       ; preds = %for.body
  %move203 = getelementptr inbounds %struct.node* %63, i64 0, i32 8, !dbg !957
  %67 = bitcast %struct.move_s* %move203 to i8*, !dbg !957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %67, i64 24, i32 4, i1 false), !dbg !957, !tbaa.struct !613
  br label %for.end, !dbg !959

for.inc:                                          ; preds = %if.then182, %if.then168
  %bdp.1 = phi float [ %div179, %if.then182 ], [ %bdp.0273, %if.then168 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !947
  %conv159 = zext i8 %61 to i32, !dbg !947
  %68 = trunc i64 %indvars.iv.next to i32, !dbg !947
  %cmp160 = icmp slt i32 %68, %conv159, !dbg !947
  br i1 %cmp160, label %for.body, label %for.end, !dbg !947

for.end:                                          ; preds = %for.cond.preheader, %for.inc, %if.else199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_saver to i8*), i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !dbg !960, !tbaa.struct !613
  call void @free(i8* %call1) #7, !dbg !961
  store i32 0, i32* @bufftop, align 4, !dbg !962, !tbaa !205
  %69 = load i8** @membuff, align 8, !dbg !964, !tbaa !210
  call void @free(i8* %69) #7, !dbg !964
  br label %cleanup, !dbg !965

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end(i64 8192, i8* %1) #3, !dbg !965
  call void @llvm.lifetime.end(i64 8192, i8* %0) #3, !dbg !965
  ret void, !dbg !966
}

; Function Attrs: optsize
declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #4

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @proofnumbercheck(%struct.move_s* noalias nocapture sret %agg.result, %struct.move_s* byval align 8 %compmove) #0 {
entry:
  %resmove = alloca %struct.move_s, align 4
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %compmove}, metadata !175), !dbg !967
  call void @llvm.dbg.declare(metadata !{%struct.move_s* %resmove}, metadata !180), !dbg !968
  %0 = load i32* @piece_count, align 4, !dbg !969, !tbaa !205
  %cmp = icmp slt i32 %0, 4, !dbg !969
  %1 = load i32* @Variant, align 4, !dbg !969, !tbaa !205
  %cmp1 = icmp eq i32 %1, 3, !dbg !969
  %or.cond = and i1 %cmp, %cmp1, !dbg !969
  br i1 %or.cond, label %if.then, label %if.end, !dbg !969

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.move_s* %agg.result to i8*, !dbg !970
  %3 = bitcast %struct.move_s* %compmove to i8*, !dbg !970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false), !dbg !970, !tbaa.struct !613
  br label %return, !dbg !970

if.end:                                           ; preds = %entry
  store i32 0, i32* @nodecount, align 4, !dbg !972, !tbaa !205
  store i32 0, i32* @iters, align 4, !dbg !973, !tbaa !205
  store i32 0, i32* @frees, align 4, !dbg !974, !tbaa !205
  store i32 1, i32* @ply, align 4, !dbg !975, !tbaa !205
  store i32 0, i32* @maxply, align 4, !dbg !976, !tbaa !205
  call void @make(%struct.move_s* %compmove, i32 0) #7, !dbg !977
  %4 = load i32* @hash, align 4, !dbg !978, !tbaa !205
  %5 = load i32* @move_number, align 4, !dbg !978, !tbaa !205
  %6 = load i32* @ply, align 4, !dbg !978, !tbaa !205
  %add = add i32 %5, -1, !dbg !978
  %sub = add i32 %add, %6, !dbg !978
  %idxprom = sext i32 %sub to i64, !dbg !978
  %arrayidx = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom, !dbg !978
  store i32 %4, i32* %arrayidx, align 4, !dbg !978, !tbaa !205
  %7 = load i32* @white_to_move, align 4, !dbg !979, !tbaa !205
  %not.tobool = icmp eq i32 %7, 0, !dbg !979
  %cond = zext i1 %not.tobool to i32, !dbg !979
  store i32 %cond, i32* @root_to_move, align 4, !dbg !979, !tbaa !205
  %call = call i64 @rtime() #7, !dbg !980
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !179), !dbg !980
  %call2 = call noalias i8* @calloc(i64 1, i64 56) #7, !dbg !981
  %8 = bitcast i8* %call2 to %struct.node*, !dbg !981
  call void @llvm.dbg.value(metadata !{%struct.node* %8}, i64 0, metadata !176), !dbg !981
  %9 = load i32* @PBSize, align 4, !dbg !982, !tbaa !205
  %conv = sext i32 %9 to i64, !dbg !982
  %call3 = call noalias i8* @calloc(i64 %conv, i64 56) #7, !dbg !982
  store i8* %call3, i8** @membuff, align 8, !dbg !982, !tbaa !210
  call void @pn_eval(%struct.node* %8) #6, !dbg !983
  call void @set_proof_and_disproof_numbers(%struct.node* %8) #6, !dbg !984
  call void @llvm.dbg.value(metadata !{%struct.node* %8}, i64 0, metadata !178), !dbg !985
  %disproof = getelementptr inbounds i8* %call2, i64 8, !dbg !986
  %10 = bitcast i8* %disproof to i32*, !dbg !986
  %proof = getelementptr inbounds i8* %call2, i64 4, !dbg !986
  %11 = bitcast i8* %proof to i32*, !dbg !986
  %12 = load i32* %11, align 4, !dbg !986, !tbaa !205
  %cmp468 = icmp eq i32 %12, 0, !dbg !986
  br i1 %cmp468, label %while.end36, label %land.lhs.true6, !dbg !986

land.lhs.true6:                                   ; preds = %if.end, %while.cond.backedge
  %.pre70 = phi i32 [ %18, %while.cond.backedge ], [ %12, %if.end ]
  %13 = load i32* %10, align 4, !dbg !986, !tbaa !205
  %cmp7 = icmp eq i32 %13, 0, !dbg !986
  br i1 %cmp7, label %while.end36, label %land.rhs, !dbg !986

land.rhs:                                         ; preds = %land.lhs.true6
  %14 = load i32* @bufftop, align 4, !dbg !986, !tbaa !205
  %conv9 = zext i32 %14 to i64, !dbg !986
  %15 = load i32* @PBSize, align 4, !dbg !986, !tbaa !205
  %sub10 = add nsw i32 %15, -10000, !dbg !986
  %conv11 = sext i32 %sub10 to i64, !dbg !986
  %mul = mul i64 %conv11, 56, !dbg !986
  %cmp12 = icmp ult i64 %conv9, %mul, !dbg !986
  br i1 %cmp12, label %while.body, label %while.end36

while.body:                                       ; preds = %land.rhs
  %call14 = call %struct.node* @select_most_proving(%struct.node* %8) #6, !dbg !987
  call void @llvm.dbg.value(metadata !{%struct.node* %call14}, i64 0, metadata !177), !dbg !987
  call void @develop_node(%struct.node* %call14) #6, !dbg !989
  call void @update_ancestors(%struct.node* %call14) #6, !dbg !990
  %16 = load i32* @iters, align 4, !dbg !991, !tbaa !205
  %inc = add nsw i32 %16, 1, !dbg !991
  store i32 %inc, i32* @iters, align 4, !dbg !991, !tbaa !205
  %rem66 = and i32 %inc, 31, !dbg !992
  %cmp15 = icmp eq i32 %rem66, 0, !dbg !992
  br i1 %cmp15, label %if.then17, label %while.cond.backedge, !dbg !992

if.then17:                                        ; preds = %while.body
  %call18 = call i64 @rtime() #7, !dbg !993
  %call19 = call i32 @rdifftime(i64 %call18, i64 %call) #7, !dbg !993
  %17 = load i32* @pn_time, align 4, !dbg !993, !tbaa !205
  %cmp20 = icmp sgt i32 %call19, %17, !dbg !993
  br i1 %cmp20, label %if.then17.while.endsplit_crit_edge, label %while.cond.backedge, !dbg !993

if.then17.while.endsplit_crit_edge:               ; preds = %if.then17
  %.pre.pre = load i32* %11, align 4, !dbg !995, !tbaa !205
  br label %while.end36, !dbg !993

while.cond.backedge:                              ; preds = %if.then17, %while.body
  %18 = load i32* %11, align 4, !dbg !986, !tbaa !205
  %cmp4 = icmp eq i32 %18, 0, !dbg !986
  br i1 %cmp4, label %while.end36, label %land.lhs.true6, !dbg !986

while.end36:                                      ; preds = %if.end, %if.then17.while.endsplit_crit_edge, %land.rhs, %land.lhs.true6, %while.cond.backedge
  %19 = phi i32 [ 0, %if.end ], [ %.pre.pre, %if.then17.while.endsplit_crit_edge ], [ %.pre70, %land.rhs ], [ %.pre70, %land.lhs.true6 ], [ 0, %while.cond.backedge ]
  %20 = load i32* %10, align 4, !dbg !995, !tbaa !205
  %21 = load i32* @nodecount, align 4, !dbg !995, !tbaa !205
  %22 = load i32* @frees, align 4, !dbg !995, !tbaa !205
  %conv27 = sext i32 %21 to i64, !dbg !995
  %mul28 = mul i64 %conv27, 56, !dbg !995
  %conv29 = uitofp i64 %mul28 to float, !dbg !995
  %div = fmul float %conv29, 0x3EB0000000000000, !dbg !995
  %conv30 = fpext float %div to double, !dbg !995
  %23 = load i32* @iters, align 4, !dbg !995, !tbaa !205
  %call31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str17, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, double %conv30, i32 %23) #7, !dbg !995
  call void @unmake(%struct.move_s* %compmove, i32 0) #7, !dbg !996
  %24 = load i32* %11, align 4, !dbg !997, !tbaa !205
  %cmp38 = icmp eq i32 %24, 0, !dbg !997
  %25 = bitcast %struct.move_s* %resmove to i8*, !dbg !998
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !997

if.then40:                                        ; preds = %while.end36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !dbg !998, !tbaa.struct !613
  store i32 1, i32* @s_threat, align 4, !dbg !1000, !tbaa !205
  br label %if.end49, !dbg !1001

if.else:                                          ; preds = %while.end36
  %26 = bitcast %struct.move_s* %compmove to i8*, !dbg !1002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !dbg !1002, !tbaa.struct !613
  br label %if.end49, !dbg !1004

if.end49:                                         ; preds = %if.else, %if.then40
  store i32 0, i32* @bufftop, align 4, !dbg !1005, !tbaa !205
  call void @free(i8* %call2) #7, !dbg !1007
  %27 = load i8** @membuff, align 8, !dbg !1008, !tbaa !210
  call void @free(i8* %27) #7, !dbg !1008
  %28 = bitcast %struct.move_s* %agg.result to i8*, !dbg !1009
  %29 = bitcast %struct.move_s* %resmove to i8*, !dbg !1009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 4, i1 false), !dbg !1009, !tbaa.struct !613
  br label %return, !dbg !1009

return:                                           ; preds = %if.end49, %if.then
  ret void, !dbg !1010
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !181, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !19, metadata !22, metadata !53, metadata !56, metadata !66, metadata !74, metadata !85, metadata !92, metadata !102, metadata !112, metadata !117, metadata !123, metadata !157, metadata !171}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Xmalloc", metadata !"Xmalloc", metadata !"", i32 67, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @Xmalloc, null, null, metadata !16, i32 68} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 68] [Xmalloc]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !11, i32 16777283, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 67]
!18 = metadata !{i32 786688, metadata !10, metadata !"oldtop", metadata !11, i32 69, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldtop] [line 69]
!19 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Xfree", metadata !"Xfree", metadata !"", i32 76, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @Xfree, null, null, metadata !8, i32 77} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 77] [Xfree]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{null}
!22 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"freenodes", metadata !"freenodes", metadata !"", i32 81, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @freenodes, null, null, metadata !50, i32 82} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 82] [freenodes]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !25}
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [node_t] [line 57, size 0, align 0, offset 0] [from node]
!27 = metadata !{i32 786451, metadata !1, null, metadata !"node", i32 45, i64 448, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 45, size 448, align 64, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !39, metadata !40}
!29 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"value", i32 47, i64 8, i64 8, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [value] [line 47, size 8, align 8, offset 0] [from unsigned char]
!30 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!31 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"num_children", i32 48, i64 8, i64 8, i64 8, i32 0, metadata !30} ; [ DW_TAG_member ] [num_children] [line 48, size 8, align 8, offset 8] [from unsigned char]
!32 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"expanded", i32 49, i64 8, i64 8, i64 16, i32 0, metadata !30} ; [ DW_TAG_member ] [expanded] [line 49, size 8, align 8, offset 16] [from unsigned char]
!33 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"evaluated", i32 50, i64 8, i64 8, i64 24, i32 0, metadata !30} ; [ DW_TAG_member ] [evaluated] [line 50, size 8, align 8, offset 24] [from unsigned char]
!34 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"proof", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [proof] [line 51, size 32, align 32, offset 32] [from int]
!35 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"disproof", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [disproof] [line 52, size 32, align 32, offset 64] [from int]
!36 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"children", i32 53, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [children] [line 53, size 64, align 64, offset 128] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!39 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"parent", i32 54, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [parent] [line 54, size 64, align 64, offset 192] [from ]
!40 = metadata !{i32 786445, metadata !1, metadata !27, metadata !"move", i32 55, i64 192, i64 32, i64 256, i32 0, metadata !41} ; [ DW_TAG_member ] [move] [line 55, size 192, align 32, offset 256] [from move_s]
!41 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!42 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!44 = metadata !{i32 786445, metadata !4, metadata !42, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !4, metadata !42, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!46 = metadata !{i32 786445, metadata !4, metadata !42, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!47 = metadata !{i32 786445, metadata !4, metadata !42, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!48 = metadata !{i32 786445, metadata !4, metadata !42, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!49 = metadata !{i32 786445, metadata !4, metadata !42, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786689, metadata !22, metadata !"node", metadata !11, i32 16777297, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 81]
!52 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !11, i32 83, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!53 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"pn_eval", metadata !"pn_eval", metadata !"", i32 106, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @pn_eval, null, null, metadata !54, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [pn_eval]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786689, metadata !53, metadata !"this", metadata !11, i32 16777322, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 106]
!56 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"std_pn_eval", metadata !"std_pn_eval", metadata !"", i32 122, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @std_pn_eval, null, null, metadata !57, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [std_pn_eval]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !64, metadata !65}
!58 = metadata !{i32 786689, metadata !56, metadata !"this", metadata !11, i32 16777338, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 122]
!59 = metadata !{i32 786688, metadata !56, metadata !"num_moves", metadata !11, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 124]
!60 = metadata !{i32 786688, metadata !56, metadata !"moves", metadata !11, i32 125, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 125]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 98304, i64 32, i32 0, i32 0, metadata !41, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 98304, align 32, offset 0] [from move_s]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 512}      ; [ DW_TAG_subrange_type ] [0, 511]
!64 = metadata !{i32 786688, metadata !56, metadata !"mate", metadata !11, i32 126, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mate] [line 126]
!65 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !11, i32 127, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 127]
!66 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"suicide_pn_eval", metadata !"suicide_pn_eval", metadata !"", i32 185, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @suicide_pn_eval, null, null, metadata !67, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [suicide_pn_eval]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!68 = metadata !{i32 786689, metadata !66, metadata !"this", metadata !11, i32 16777401, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 185]
!69 = metadata !{i32 786688, metadata !66, metadata !"j", metadata !11, i32 187, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 187]
!70 = metadata !{i32 786688, metadata !66, metadata !"a", metadata !11, i32 187, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 187]
!71 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !11, i32 187, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 187]
!72 = metadata !{i32 786688, metadata !66, metadata !"wp", metadata !11, i32 188, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wp] [line 188]
!73 = metadata !{i32 786688, metadata !66, metadata !"bp", metadata !11, i32 188, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 188]
!74 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"losers_pn_eval", metadata !"losers_pn_eval", metadata !"", i32 253, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @losers_pn_eval, null, null, metadata !75, i32 254} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 254] [losers_pn_eval]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!76 = metadata !{i32 786689, metadata !74, metadata !"this", metadata !11, i32 16777469, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 253]
!77 = metadata !{i32 786688, metadata !74, metadata !"num_moves", metadata !11, i32 255, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 255]
!78 = metadata !{i32 786688, metadata !74, metadata !"moves", metadata !11, i32 256, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 256]
!79 = metadata !{i32 786688, metadata !74, metadata !"mate", metadata !11, i32 257, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mate] [line 257]
!80 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !11, i32 258, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 258]
!81 = metadata !{i32 786688, metadata !74, metadata !"j", metadata !11, i32 259, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 259]
!82 = metadata !{i32 786688, metadata !74, metadata !"a", metadata !11, i32 259, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 259]
!83 = metadata !{i32 786688, metadata !74, metadata !"wp", metadata !11, i32 260, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wp] [line 260]
!84 = metadata !{i32 786688, metadata !74, metadata !"bp", metadata !11, i32 260, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 260]
!85 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"select_most_proving", metadata !"select_most_proving", metadata !"", i32 401, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.node* (%struct.node*)* @select_most_proving, null, null, metadata !88, i32 402} ; [ DW_TAG_subprogram ] [line 401] [def] [scope 402] [select_most_proving]
!86 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !25, metadata !25}
!88 = metadata !{metadata !89, metadata !90, metadata !91}
!89 = metadata !{i32 786689, metadata !85, metadata !"node", metadata !11, i32 16777617, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 401]
!90 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !11, i32 403, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 403]
!91 = metadata !{i32 786688, metadata !85, metadata !"tnode", metadata !11, i32 404, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tnode] [line 404]
!92 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"set_proof_and_disproof_numbers", metadata !"set_proof_and_disproof_numbers", metadata !"", i32 444, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @set_proof_and_disproof_numbers, null, null, metadata !93, i32 445} ; [ DW_TAG_subprogram ] [line 444] [def] [scope 445] [set_proof_and_disproof_numbers]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!94 = metadata !{i32 786689, metadata !92, metadata !"node", metadata !11, i32 16777660, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 444]
!95 = metadata !{i32 786688, metadata !92, metadata !"proof", metadata !11, i32 446, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proof] [line 446]
!96 = metadata !{i32 786688, metadata !92, metadata !"disproof", metadata !11, i32 447, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disproof] [line 447]
!97 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !11, i32 448, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 448]
!98 = metadata !{i32 786688, metadata !92, metadata !"moves", metadata !11, i32 449, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 449]
!99 = metadata !{i32 786688, metadata !92, metadata !"l", metadata !11, i32 450, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 450]
!100 = metadata !{i32 786688, metadata !92, metadata !"num_moves", metadata !11, i32 450, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 450]
!101 = metadata !{i32 786688, metadata !92, metadata !"ic", metadata !11, i32 451, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 451]
!102 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"develop_node", metadata !"develop_node", metadata !"", i32 707, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @develop_node, null, null, metadata !103, i32 708} ; [ DW_TAG_subprogram ] [line 707] [def] [scope 708] [develop_node]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!104 = metadata !{i32 786689, metadata !102, metadata !"node", metadata !11, i32 16777923, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 707]
!105 = metadata !{i32 786688, metadata !102, metadata !"num_moves", metadata !11, i32 709, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 709]
!106 = metadata !{i32 786688, metadata !102, metadata !"moves", metadata !11, i32 710, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 710]
!107 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !11, i32 711, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 711]
!108 = metadata !{i32 786688, metadata !102, metadata !"l", metadata !11, i32 711, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 711]
!109 = metadata !{i32 786688, metadata !102, metadata !"newnode", metadata !11, i32 712, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newnode] [line 712]
!110 = metadata !{i32 786688, metadata !102, metadata !"leg", metadata !11, i32 716, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [leg] [line 716]
!111 = metadata !{i32 786688, metadata !102, metadata !"ic", metadata !11, i32 717, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 717]
!112 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"update_ancestors", metadata !"update_ancestors", metadata !"", i32 888, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @update_ancestors, null, null, metadata !113, i32 889} ; [ DW_TAG_subprogram ] [line 888] [def] [scope 889] [update_ancestors]
!113 = metadata !{metadata !114, metadata !115, metadata !116}
!114 = metadata !{i32 786689, metadata !112, metadata !"node", metadata !11, i32 16778104, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 888]
!115 = metadata !{i32 786688, metadata !112, metadata !"tnode", metadata !11, i32 890, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tnode] [line 890]
!116 = metadata !{i32 786688, metadata !112, metadata !"prevnode", metadata !11, i32 890, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevnode] [line 890]
!117 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"pn2_eval", metadata !"pn2_eval", metadata !"", i32 919, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*)* @pn2_eval, null, null, metadata !118, i32 920} ; [ DW_TAG_subprogram ] [line 919] [def] [scope 920] [pn2_eval]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122}
!119 = metadata !{i32 786689, metadata !117, metadata !"root", metadata !11, i32 16778135, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [root] [line 919]
!120 = metadata !{i32 786688, metadata !117, metadata !"mostproving", metadata !11, i32 921, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mostproving] [line 921]
!121 = metadata !{i32 786688, metadata !117, metadata !"currentnode", metadata !11, i32 925, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currentnode] [line 925]
!122 = metadata !{i32 786688, metadata !117, metadata !"oldparent", metadata !11, i32 926, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldparent] [line 926]
!123 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"proofnumberscan", metadata !"proofnumberscan", metadata !"", i32 956, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @proofnumberscan, null, null, metadata !124, i32 957} ; [ DW_TAG_subprogram ] [line 956] [def] [scope 957] [proofnumberscan]
!124 = metadata !{metadata !125, metadata !126, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !153, metadata !154, metadata !156}
!125 = metadata !{i32 786688, metadata !123, metadata !"moves", metadata !11, i32 958, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moves] [line 958]
!126 = metadata !{i32 786688, metadata !123, metadata !"islegal", metadata !11, i32 959, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [islegal] [line 959]
!127 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16384, i64 32, i32 0, i32 0, metadata !15, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16384, align 32, offset 0] [from int]
!128 = metadata !{i32 786688, metadata !123, metadata !"nodesspent", metadata !11, i32 960, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodesspent] [line 960]
!129 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !11, i32 961, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 961]
!130 = metadata !{i32 786688, metadata !123, metadata !"l", metadata !11, i32 961, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 961]
!131 = metadata !{i32 786688, metadata !123, metadata !"legal", metadata !11, i32 961, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [legal] [line 961]
!132 = metadata !{i32 786688, metadata !123, metadata !"num_moves", metadata !11, i32 962, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_moves] [line 962]
!133 = metadata !{i32 786688, metadata !123, metadata !"xstart_time", metadata !11, i32 963, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xstart_time] [line 963]
!134 = metadata !{i32 786454, metadata !1, null, metadata !"rtime_t", i32 161, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ] [rtime_t] [line 161, size 0, align 0, offset 0] [from time_t]
!135 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!136 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!137 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!138 = metadata !{i32 786688, metadata !123, metadata !"root", metadata !11, i32 964, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 964]
!139 = metadata !{i32 786688, metadata !123, metadata !"mostproving", metadata !11, i32 965, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mostproving] [line 965]
!140 = metadata !{i32 786688, metadata !123, metadata !"currentnode", metadata !11, i32 966, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currentnode] [line 966]
!141 = metadata !{i32 786688, metadata !123, metadata !"leastlooked", metadata !11, i32 967, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [leastlooked] [line 967]
!142 = metadata !{i32 786688, metadata !123, metadata !"leastlooked_l", metadata !11, i32 967, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [leastlooked_l] [line 967]
!143 = metadata !{i32 786688, metadata !123, metadata !"leastlooked_i", metadata !11, i32 967, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [leastlooked_i] [line 967]
!144 = metadata !{i32 786688, metadata !123, metadata !"losers", metadata !11, i32 968, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [losers] [line 968]
!145 = metadata !{i32 786688, metadata !123, metadata !"xnodecount", metadata !11, i32 969, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xnodecount] [line 969]
!146 = metadata !{i32 786688, metadata !123, metadata !"firsts", metadata !11, i32 970, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firsts] [line 970]
!147 = metadata !{i32 786688, metadata !123, metadata !"alternates", metadata !11, i32 970, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alternates] [line 970]
!148 = metadata !{i32 786688, metadata !123, metadata !"output", metadata !11, i32 971, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 971]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !150, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!150 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!153 = metadata !{i32 786688, metadata !123, metadata !"ic", metadata !11, i32 972, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 972]
!154 = metadata !{i32 786688, metadata !123, metadata !"bdp", metadata !11, i32 973, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bdp] [line 973]
!155 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!156 = metadata !{i32 786688, metadata !123, metadata !"altlosers", metadata !11, i32 974, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [altlosers] [line 974]
!157 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"proofnumbersearch", metadata !"proofnumbersearch", metadata !"", i32 1240, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @proofnumbersearch, null, null, metadata !158, i32 1241} ; [ DW_TAG_subprogram ] [line 1240] [def] [scope 1241] [proofnumbersearch]
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !167, metadata !168, metadata !169, metadata !170}
!159 = metadata !{i32 786688, metadata !157, metadata !"root", metadata !11, i32 1242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 1242]
!160 = metadata !{i32 786688, metadata !157, metadata !"mostproving", metadata !11, i32 1243, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mostproving] [line 1243]
!161 = metadata !{i32 786688, metadata !157, metadata !"currentnode", metadata !11, i32 1244, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currentnode] [line 1244]
!162 = metadata !{i32 786688, metadata !157, metadata !"xstart_time", metadata !11, i32 1245, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xstart_time] [line 1245]
!163 = metadata !{i32 786688, metadata !157, metadata !"output", metadata !11, i32 1246, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 1246]
!164 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !150, metadata !165, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!167 = metadata !{i32 786688, metadata !157, metadata !"PV", metadata !11, i32 1247, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PV] [line 1247]
!168 = metadata !{i32 786688, metadata !157, metadata !"i", metadata !11, i32 1248, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1248]
!169 = metadata !{i32 786688, metadata !157, metadata !"bdp", metadata !11, i32 1249, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bdp] [line 1249]
!170 = metadata !{i32 786688, metadata !157, metadata !"oldply", metadata !11, i32 1250, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldply] [line 1250]
!171 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"proofnumbercheck", metadata !"proofnumbercheck", metadata !"", i32 1487, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, %struct.move_s*)* @proofnumbercheck, null, null, metadata !174, i32 1488} ; [ DW_TAG_subprogram ] [line 1487] [def] [scope 1488] [proofnumbercheck]
!172 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !41, metadata !41}
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!175 = metadata !{i32 786689, metadata !171, metadata !"compmove", metadata !11, i32 16778703, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [compmove] [line 1487]
!176 = metadata !{i32 786688, metadata !171, metadata !"root", metadata !11, i32 1489, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 1489]
!177 = metadata !{i32 786688, metadata !171, metadata !"mostproving", metadata !11, i32 1490, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mostproving] [line 1490]
!178 = metadata !{i32 786688, metadata !171, metadata !"currentnode", metadata !11, i32 1491, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currentnode] [line 1491]
!179 = metadata !{i32 786688, metadata !171, metadata !"xstart_time", metadata !11, i32 1492, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xstart_time] [line 1492]
!180 = metadata !{i32 786688, metadata !171, metadata !"resmove", metadata !11, i32 1493, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resmove] [line 1493]
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !195, metadata !196, metadata !200, metadata !201}
!182 = metadata !{i32 786484, i32 0, null, metadata !"bufftop", metadata !"bufftop", metadata !"", metadata !11, i32 65, metadata !15, i32 0, i32 1, i32* @bufftop, null} ; [ DW_TAG_variable ] [bufftop] [line 65] [def]
!183 = metadata !{i32 786484, i32 0, null, metadata !"nodecount", metadata !"nodecount", metadata !"", metadata !11, i32 28, metadata !15, i32 0, i32 1, i32* @nodecount, null} ; [ DW_TAG_variable ] [nodecount] [line 28] [def]
!184 = metadata !{i32 786484, i32 0, null, metadata !"nodecount2", metadata !"nodecount2", metadata !"", metadata !11, i32 29, metadata !15, i32 0, i32 1, i32* @nodecount2, null} ; [ DW_TAG_variable ] [nodecount2] [line 29] [def]
!185 = metadata !{i32 786484, i32 0, null, metadata !"pn2", metadata !"pn2", metadata !"", metadata !11, i32 30, metadata !15, i32 0, i32 1, i32* @pn2, null} ; [ DW_TAG_variable ] [pn2] [line 30] [def]
!186 = metadata !{i32 786484, i32 0, null, metadata !"frees", metadata !"frees", metadata !"", metadata !11, i32 31, metadata !15, i32 0, i32 1, i32* @frees, null} ; [ DW_TAG_variable ] [frees] [line 31] [def]
!187 = metadata !{i32 786484, i32 0, null, metadata !"iters", metadata !"iters", metadata !"", metadata !11, i32 32, metadata !15, i32 0, i32 1, i32* @iters, null} ; [ DW_TAG_variable ] [iters] [line 32] [def]
!188 = metadata !{i32 786484, i32 0, null, metadata !"forwards", metadata !"forwards", metadata !"", metadata !11, i32 33, metadata !15, i32 0, i32 1, i32* @forwards, null} ; [ DW_TAG_variable ] [forwards] [line 33] [def]
!189 = metadata !{i32 786484, i32 0, null, metadata !"maxply", metadata !"maxply", metadata !"", metadata !11, i32 34, metadata !15, i32 0, i32 1, i32* @maxply, null} ; [ DW_TAG_variable ] [maxply] [line 34] [def]
!190 = metadata !{i32 786484, i32 0, null, metadata !"pn_time", metadata !"pn_time", metadata !"", metadata !11, i32 35, metadata !15, i32 0, i32 1, i32* @pn_time, null} ; [ DW_TAG_variable ] [pn_time] [line 35] [def]
!191 = metadata !{i32 786484, i32 0, null, metadata !"pn_move", metadata !"pn_move", metadata !"", metadata !11, i32 36, metadata !41, i32 0, i32 1, %struct.move_s* @pn_move, null} ; [ DW_TAG_variable ] [pn_move] [line 36] [def]
!192 = metadata !{i32 786484, i32 0, null, metadata !"pn_saver", metadata !"pn_saver", metadata !"", metadata !11, i32 37, metadata !41, i32 0, i32 1, %struct.move_s* @pn_saver, null} ; [ DW_TAG_variable ] [pn_saver] [line 37] [def]
!193 = metadata !{i32 786484, i32 0, null, metadata !"kibitzed", metadata !"kibitzed", metadata !"", metadata !11, i32 39, metadata !194, i32 0, i32 1, i32* @kibitzed, null} ; [ DW_TAG_variable ] [kibitzed] [line 39] [def]
!194 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!195 = metadata !{i32 786484, i32 0, null, metadata !"forcedwin", metadata !"forcedwin", metadata !"", metadata !11, i32 40, metadata !15, i32 0, i32 1, i32* @forcedwin, null} ; [ DW_TAG_variable ] [forcedwin] [line 40] [def]
!196 = metadata !{i32 786484, i32 0, null, metadata !"rootlosers", metadata !"rootlosers", metadata !"", metadata !11, i32 42, metadata !197, i32 0, i32 1, [300 x i32]* @rootlosers, null} ; [ DW_TAG_variable ] [rootlosers] [line 42] [def]
!197 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9600, i64 32, i32 0, i32 0, metadata !15, metadata !198, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9600, align 32, offset 0] [from int]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!200 = metadata !{i32 786484, i32 0, null, metadata !"alllosers", metadata !"alllosers", metadata !"", metadata !11, i32 43, metadata !15, i32 0, i32 1, i32* @alllosers, null} ; [ DW_TAG_variable ] [alllosers] [line 43] [def]
!201 = metadata !{i32 786484, i32 0, null, metadata !"membuff", metadata !"membuff", metadata !"", metadata !11, i32 64, metadata !202, i32 0, i32 1, i8** @membuff, null} ; [ DW_TAG_variable ] [membuff] [line 64] [def]
!202 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!203 = metadata !{i32 67, i32 0, metadata !10, null}
!204 = metadata !{i32 69, i32 0, metadata !10, null}
!205 = metadata !{metadata !"int", metadata !206}
!206 = metadata !{metadata !"omnipotent char", metadata !207}
!207 = metadata !{metadata !"Simple C/C++ TBAA"}
!208 = metadata !{i32 71, i32 0, metadata !10, null}
!209 = metadata !{i32 73, i32 0, metadata !10, null}
!210 = metadata !{metadata !"any pointer", metadata !206}
!211 = metadata !{i32 78, i32 0, metadata !19, null}
!212 = metadata !{i32 79, i32 0, metadata !19, null}
!213 = metadata !{i32 81, i32 0, metadata !22, null}
!214 = metadata !{i32 85, i32 0, metadata !22, null}
!215 = metadata !{i32 88, i32 0, metadata !22, null}
!216 = metadata !{i32 90, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !22, i32 89, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!218 = metadata !{i32 94, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !220, i32 93, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!220 = metadata !{i32 786443, metadata !1, metadata !221, i32 92, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!221 = metadata !{i32 786443, metadata !1, metadata !217, i32 91, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!222 = metadata !{i32 96, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !219, i32 95, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!224 = metadata !{i32 92, i32 0, metadata !220, null}
!225 = metadata !{i32 97, i32 0, metadata !223, null}
!226 = metadata !{i32 99, i32 0, metadata !221, null}
!227 = metadata !{i32 100, i32 0, metadata !221, null}
!228 = metadata !{i32 103, i32 0, metadata !22, null}
!229 = metadata !{i32 106, i32 0, metadata !53, null}
!230 = metadata !{i32 108, i32 0, metadata !53, null}
!231 = metadata !{i32 110, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !53, i32 109, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!233 = metadata !{i32 111, i32 0, metadata !232, null}
!234 = metadata !{i32 114, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !53, i32 113, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!236 = metadata !{i32 115, i32 0, metadata !235, null}
!237 = metadata !{i32 118, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !53, i32 117, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!239 = metadata !{i32 120, i32 0, metadata !53, null}
!240 = metadata !{i32 185, i32 0, metadata !66, null}
!241 = metadata !{i32 188, i32 0, metadata !66, null}
!242 = metadata !{i32 190, i32 0, metadata !66, null}
!243 = metadata !{i32 1}
!244 = metadata !{i32 192, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !66, i32 192, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!246 = metadata !{i32 194, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !245, i32 193, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!248 = metadata !{i32 196, i32 0, metadata !247, null}
!249 = metadata !{i32 199, i32 0, metadata !247, null}
!250 = metadata !{i32 201, i32 0, metadata !247, null}
!251 = metadata !{i32 208, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !247, i32 202, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!253 = metadata !{i32 214, i32 0, metadata !252, null}
!254 = metadata !{i32 217, i32 0, metadata !247, null}
!255 = metadata !{i32 220, i32 0, metadata !66, null}
!256 = metadata !{i32 224, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !66, i32 221, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!258 = metadata !{i32 231, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 230, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!260 = metadata !{i32 227, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !257, i32 225, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!262 = metadata !{i32 228, i32 0, metadata !261, null}
!263 = metadata !{i32 234, i32 0, metadata !66, null}
!264 = metadata !{i32 237, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !66, i32 235, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!266 = metadata !{i32 244, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 243, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!268 = metadata !{i32 240, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !265, i32 238, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!270 = metadata !{i32 241, i32 0, metadata !269, null}
!271 = metadata !{i32 249, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !66, i32 248, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!273 = metadata !{i32 251, i32 0, metadata !66, null}
!274 = metadata !{i32 253, i32 0, metadata !74, null}
!275 = metadata !{i32 256, i32 0, metadata !74, null}
!276 = metadata !{i32 260, i32 0, metadata !74, null}
!277 = metadata !{i32 262, i32 0, metadata !74, null}
!278 = metadata !{i32 266, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !74, i32 266, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!280 = metadata !{i32 268, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !279, i32 267, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!282 = metadata !{i32 270, i32 0, metadata !281, null}
!283 = metadata !{i32 273, i32 0, metadata !281, null}
!284 = metadata !{i32 275, i32 0, metadata !281, null}
!285 = metadata !{i32 281, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !281, i32 276, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!287 = metadata !{i32 286, i32 0, metadata !286, null}
!288 = metadata !{i32 289, i32 0, metadata !281, null}
!289 = metadata !{i32 293, i32 0, metadata !74, null}
!290 = metadata !{i32 296, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !74, i32 294, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!292 = metadata !{i32 303, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 302, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!294 = metadata !{i32 300, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !291, i32 297, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!296 = metadata !{i32 305, i32 0, metadata !291, null}
!297 = metadata !{i32 307, i32 0, metadata !74, null}
!298 = metadata !{i32 309, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !74, i32 308, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!300 = metadata !{i32 312, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !299, i32 310, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!302 = metadata !{i32 318, i32 0, metadata !299, null}
!303 = metadata !{i32 321, i32 0, metadata !74, null}
!304 = metadata !{i32 322, i32 0, metadata !74, null}
!305 = metadata !{i32 325, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !74, i32 323, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!307 = metadata !{i32 327, i32 0, metadata !306, null}
!308 = metadata !{i32 328, i32 0, metadata !306, null}
!309 = metadata !{i32 329, i32 0, metadata !306, null}
!310 = metadata !{i32 330, i32 0, metadata !306, null}
!311 = metadata !{i32 332, i32 0, metadata !306, null}
!312 = metadata !{i32 334, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !306, i32 334, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!314 = metadata !{i32 336, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !313, i32 335, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!316 = metadata !{i32 339, i32 0, metadata !315, null}
!317 = metadata !{i32 346, i32 0, metadata !315, null}
!318 = metadata !{i32 352, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !306, i32 350, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!320 = metadata !{i32 353, i32 0, metadata !319, null}
!321 = metadata !{i32 354, i32 0, metadata !319, null}
!322 = metadata !{i32 355, i32 0, metadata !319, null}
!323 = metadata !{i32 357, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !319, i32 357, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!325 = metadata !{i32 359, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !324, i32 358, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!327 = metadata !{i32 362, i32 0, metadata !326, null}
!328 = metadata !{i32 369, i32 0, metadata !326, null}
!329 = metadata !{i32 376, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !306, i32 374, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!331 = metadata !{i32 379, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !330, i32 377, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!333 = metadata !{i32 380, i32 0, metadata !332, null}
!334 = metadata !{i32 383, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !330, i32 382, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!336 = metadata !{i32 388, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !306, i32 387, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!338 = metadata !{i32 393, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !74, i32 392, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!340 = metadata !{i32 393, i32 0, metadata !74, null}
!341 = metadata !{i32 398, i32 0, metadata !74, null}
!342 = metadata !{i32 122, i32 0, metadata !56, null}
!343 = metadata !{i32 125, i32 0, metadata !56, null}
!344 = metadata !{i32 129, i32 0, metadata !56, null}
!345 = metadata !{i32 133, i32 0, metadata !56, null}
!346 = metadata !{i32 134, i32 0, metadata !56, null}
!347 = metadata !{i32 137, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !56, i32 135, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!349 = metadata !{i32 138, i32 0, metadata !348, null}
!350 = metadata !{i32 139, i32 0, metadata !348, null}
!351 = metadata !{i32 141, i32 0, metadata !348, null}
!352 = metadata !{i32 143, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !348, i32 143, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!354 = metadata !{i32 145, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !353, i32 144, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!356 = metadata !{i32 148, i32 0, metadata !355, null}
!357 = metadata !{i32 155, i32 0, metadata !355, null}
!358 = metadata !{i32 161, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !348, i32 159, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!360 = metadata !{i32 164, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !359, i32 162, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!362 = metadata !{i32 165, i32 0, metadata !361, null}
!363 = metadata !{i32 168, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !359, i32 167, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!365 = metadata !{i32 173, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !348, i32 172, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!367 = metadata !{i32 178, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !56, i32 177, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!369 = metadata !{i32 183, i32 0, metadata !56, null}
!370 = metadata !{i32 401, i32 0, metadata !85, null}
!371 = metadata !{i32 406, i32 0, metadata !85, null}
!372 = metadata !{i32 408, i32 0, metadata !85, null}
!373 = metadata !{i32 410, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !85, i32 409, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!375 = metadata !{i32 412, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !374, i32 411, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!377 = metadata !{i32 414, i32 0, metadata !376, null}
!378 = metadata !{i32 423, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !374, i32 420, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!380 = metadata !{i32 416, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !376, i32 415, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!382 = metadata !{i32 425, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !379, i32 424, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!384 = metadata !{i32 429, i32 0, metadata !374, null}
!385 = metadata !{i32 431, i32 0, metadata !374, null}
!386 = metadata !{i32 433, i32 0, metadata !374, null}
!387 = metadata !{i32 435, i32 0, metadata !374, null}
!388 = metadata !{i32 436, i32 0, metadata !374, null}
!389 = metadata !{i32 440, i32 0, metadata !85, null}
!390 = metadata !{i32 444, i32 0, metadata !92, null}
!391 = metadata !{i32 449, i32 0, metadata !92, null}
!392 = metadata !{i32 453, i32 0, metadata !92, null}
!393 = metadata !{i32 455, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !92, i32 454, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!395 = metadata !{i32 489, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !397, i32 489, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!397 = metadata !{i32 786443, metadata !1, metadata !394, i32 485, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!398 = metadata !{i32 460, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !400, i32 460, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!400 = metadata !{i32 786443, metadata !1, metadata !394, i32 456, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!401 = metadata !{i32 462, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !399, i32 461, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!403 = metadata !{i32 492, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !396, i32 490, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!405 = metadata !{i32 464, i32 0, metadata !402, null}
!406 = metadata !{i32 465, i32 0, metadata !402, null}
!407 = metadata !{i32 467, i32 0, metadata !402, null}
!408 = metadata !{i32 469, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !402, i32 468, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!410 = metadata !{i32 473, i32 0, metadata !400, null}
!411 = metadata !{i32 475, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !400, i32 474, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!413 = metadata !{i32 476, i32 0, metadata !412, null}
!414 = metadata !{i32 477, i32 0, metadata !412, null}
!415 = metadata !{i32 478, i32 0, metadata !400, null}
!416 = metadata !{i32 480, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !400, i32 479, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!418 = metadata !{i32 481, i32 0, metadata !417, null}
!419 = metadata !{i32 482, i32 0, metadata !417, null}
!420 = metadata !{i32 494, i32 0, metadata !404, null}
!421 = metadata !{i32 495, i32 0, metadata !404, null}
!422 = metadata !{i32 497, i32 0, metadata !404, null}
!423 = metadata !{i32 499, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !404, i32 498, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!425 = metadata !{i32 503, i32 0, metadata !397, null}
!426 = metadata !{i32 505, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !397, i32 504, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!428 = metadata !{i32 506, i32 0, metadata !427, null}
!429 = metadata !{i32 507, i32 0, metadata !427, null}
!430 = metadata !{i32 508, i32 0, metadata !397, null}
!431 = metadata !{i32 510, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !397, i32 509, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!433 = metadata !{i32 511, i32 0, metadata !432, null}
!434 = metadata !{i32 512, i32 0, metadata !432, null}
!435 = metadata !{i32 515, i32 0, metadata !394, null}
!436 = metadata !{i32 517, i32 0, metadata !394, null}
!437 = metadata !{i32 518, i32 0, metadata !394, null}
!438 = metadata !{i32 520, i32 0, metadata !394, null}
!439 = metadata !{i32 521, i32 0, metadata !92, null}
!440 = metadata !{i32 523, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !92, i32 522, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!442 = metadata !{i32 526, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !441, i32 524, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!444 = metadata !{i32 528, i32 0, metadata !443, null}
!445 = metadata !{i32 530, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !443, i32 529, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!447 = metadata !{i32 531, i32 0, metadata !446, null}
!448 = metadata !{i32 532, i32 0, metadata !446, null}
!449 = metadata !{i32 537, i32 0, metadata !443, null}
!450 = metadata !{i32 539, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !443, i32 538, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!452 = metadata !{i32 540, i32 0, metadata !451, null}
!453 = metadata !{i32 541, i32 0, metadata !451, null}
!454 = metadata !{i32 543, i32 0, metadata !451, null}
!455 = metadata !{i32 545, i32 0, metadata !451, null}
!456 = metadata !{i32 549, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !458, i32 549, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!458 = metadata !{i32 786443, metadata !1, metadata !451, i32 546, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!459 = metadata !{i32 551, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !457, i32 550, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!461 = metadata !{i32 553, i32 0, metadata !460, null}
!462 = metadata !{i32 557, i32 0, metadata !460, null}
!463 = metadata !{i32 562, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !451, i32 561, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!465 = metadata !{i32 569, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !443, i32 566, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!467 = metadata !{i32 570, i32 0, metadata !466, null}
!468 = metadata !{i32 571, i32 0, metadata !466, null}
!469 = metadata !{i32 572, i32 0, metadata !466, null}
!470 = metadata !{i32 573, i32 0, metadata !466, null}
!471 = metadata !{i32 574, i32 0, metadata !466, null}
!472 = metadata !{i32 576, i32 0, metadata !466, null}
!473 = metadata !{i32 578, i32 0, metadata !466, null}
!474 = metadata !{i32 582, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !476, i32 581, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!476 = metadata !{i32 786443, metadata !1, metadata !477, i32 580, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!477 = metadata !{i32 786443, metadata !1, metadata !466, i32 579, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!478 = metadata !{i32 584, i32 0, metadata !475, null}
!479 = metadata !{i32 588, i32 0, metadata !475, null}
!480 = metadata !{i32 580, i32 0, metadata !476, null}
!481 = metadata !{i32 594, i32 0, metadata !466, null}
!482 = metadata !{i32 596, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !466, i32 595, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!484 = metadata !{i32 597, i32 0, metadata !483, null}
!485 = metadata !{i32 598, i32 0, metadata !483, null}
!486 = metadata !{i32 599, i32 0, metadata !483, null}
!487 = metadata !{i32 601, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !483, i32 601, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!489 = metadata !{i32 603, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !488, i32 602, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!491 = metadata !{i32 605, i32 0, metadata !490, null}
!492 = metadata !{i32 609, i32 0, metadata !490, null}
!493 = metadata !{i32 614, i32 0, metadata !443, null}
!494 = metadata !{i32 617, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !443, i32 615, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!496 = metadata !{i32 618, i32 0, metadata !495, null}
!497 = metadata !{i32 619, i32 0, metadata !495, null}
!498 = metadata !{i32 620, i32 0, metadata !443, null}
!499 = metadata !{i32 622, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !443, i32 621, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!501 = metadata !{i32 624, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !500, i32 623, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!503 = metadata !{i32 625, i32 0, metadata !502, null}
!504 = metadata !{i32 626, i32 0, metadata !502, null}
!505 = metadata !{i32 629, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !500, i32 628, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!507 = metadata !{i32 633, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !506, i32 630, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!509 = metadata !{i32 635, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !508, i32 634, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!511 = metadata !{i32 636, i32 0, metadata !510, null}
!512 = metadata !{i32 637, i32 0, metadata !510, null}
!513 = metadata !{i32 640, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !508, i32 639, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!515 = metadata !{i32 641, i32 0, metadata !514, null}
!516 = metadata !{i32 646, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !506, i32 645, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!518 = metadata !{i32 647, i32 0, metadata !517, null}
!519 = metadata !{i32 653, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !443, i32 652, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!521 = metadata !{i32 655, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !520, i32 654, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!523 = metadata !{i32 656, i32 0, metadata !522, null}
!524 = metadata !{i32 657, i32 0, metadata !522, null}
!525 = metadata !{i32 660, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !520, i32 659, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!527 = metadata !{i32 662, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !526, i32 661, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!529 = metadata !{i32 664, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 663, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!531 = metadata !{i32 665, i32 0, metadata !530, null}
!532 = metadata !{i32 667, i32 0, metadata !530, null}
!533 = metadata !{i32 670, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !528, i32 669, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!535 = metadata !{i32 671, i32 0, metadata !534, null}
!536 = metadata !{i32 676, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !526, i32 675, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!538 = metadata !{i32 677, i32 0, metadata !537, null}
!539 = metadata !{i32 686, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !441, i32 685, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!541 = metadata !{i32 687, i32 0, metadata !540, null}
!542 = metadata !{i32 688, i32 0, metadata !540, null}
!543 = metadata !{i32 691, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !441, i32 690, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!545 = metadata !{i32 692, i32 0, metadata !544, null}
!546 = metadata !{i32 693, i32 0, metadata !544, null}
!547 = metadata !{i32 697, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !441, i32 695, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!549 = metadata !{i32 698, i32 0, metadata !548, null}
!550 = metadata !{i32 699, i32 0, metadata !548, null}
!551 = metadata !{i32 703, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !92, i32 702, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!553 = metadata !{i32 703, i32 0, metadata !92, null}
!554 = metadata !{i32 705, i32 0, metadata !92, null}
!555 = metadata !{i32 707, i32 0, metadata !102, null}
!556 = metadata !{i32 710, i32 0, metadata !102, null}
!557 = metadata !{i32 726, i32 0, metadata !102, null}
!558 = metadata !{i32 728, i32 0, metadata !102, null}
!559 = metadata !{i32 730, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !102, i32 729, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!561 = metadata !{i32 731, i32 0, metadata !560, null}
!562 = metadata !{i32 732, i32 0, metadata !560, null}
!563 = metadata !{i32 733, i32 0, metadata !560, null}
!564 = metadata !{i32 736, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !102, i32 735, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!566 = metadata !{i32 737, i32 0, metadata !565, null}
!567 = metadata !{i32 738, i32 0, metadata !565, null}
!568 = metadata !{i32 740, i32 0, metadata !565, null}
!569 = metadata !{i32 741, i32 0, metadata !565, null}
!570 = metadata !{i32 742, i32 0, metadata !565, null}
!571 = metadata !{i32 744, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !565, i32 744, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!573 = metadata !{i32 746, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !572, i32 745, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!575 = metadata !{i32 749, i32 0, metadata !574, null}
!576 = metadata !{i32 756, i32 0, metadata !574, null}
!577 = metadata !{i32 761, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !565, i32 760, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!579 = metadata !{i32 762, i32 0, metadata !578, null}
!580 = metadata !{i32 763, i32 0, metadata !578, null}
!581 = metadata !{i32 764, i32 0, metadata !578, null}
!582 = metadata !{i32 765, i32 0, metadata !578, null}
!583 = metadata !{i32 771, i32 0, metadata !102, null}
!584 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !11, i32 16777283, metadata !15, i32 0, metadata !583} ; [ DW_TAG_arg_variable ] [size] [line 67]
!585 = metadata !{i32 67, i32 0, metadata !10, metadata !583}
!586 = metadata !{i32 69, i32 0, metadata !10, metadata !583}
!587 = metadata !{i32 786688, metadata !10, metadata !"oldtop", metadata !11, i32 69, metadata !15, i32 0, metadata !583} ; [ DW_TAG_auto_variable ] [oldtop] [line 69]
!588 = metadata !{i32 71, i32 0, metadata !10, metadata !583}
!589 = metadata !{i32 73, i32 0, metadata !10, metadata !583}
!590 = metadata !{i32 777, i32 0, metadata !102, null}
!591 = metadata !{i32 779, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !102, i32 779, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!593 = metadata !{i32 783, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !592, i32 780, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!595 = metadata !{i32 781, i32 0, metadata !594, null}
!596 = metadata !{i32 786, i32 0, metadata !594, null}
!597 = metadata !{i32 56}
!598 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !11, i32 16777283, metadata !15, i32 0, metadata !599} ; [ DW_TAG_arg_variable ] [size] [line 67]
!599 = metadata !{i32 791, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !594, i32 787, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!601 = metadata !{i32 67, i32 0, metadata !10, metadata !599}
!602 = metadata !{i32 69, i32 0, metadata !10, metadata !599}
!603 = metadata !{i32 786688, metadata !10, metadata !"oldtop", metadata !11, i32 69, metadata !15, i32 0, metadata !599} ; [ DW_TAG_auto_variable ] [oldtop] [line 69]
!604 = metadata !{i32 71, i32 0, metadata !10, metadata !599}
!605 = metadata !{i32 73, i32 0, metadata !10, metadata !599}
!606 = metadata !{i32 796, i32 0, metadata !600, null}
!607 = metadata !{i32 806, i32 0, metadata !600, null}
!608 = metadata !{i32 811, i32 0, metadata !600, null}
!609 = metadata !{i32 812, i32 0, metadata !600, null}
!610 = metadata !{i32 813, i32 0, metadata !600, null}
!611 = metadata !{i32 814, i32 0, metadata !600, null}
!612 = metadata !{i32 815, i32 0, metadata !600, null}
!613 = metadata !{i64 0, i64 4, metadata !205, i64 4, i64 4, metadata !205, i64 8, i64 4, metadata !205, i64 12, i64 4, metadata !205, i64 16, i64 4, metadata !205, i64 20, i64 4, metadata !205}
!614 = metadata !{i32 822, i32 0, metadata !600, null}
!615 = metadata !{i32 824, i32 0, metadata !600, null}
!616 = metadata !{i32 830, i32 0, metadata !600, null}
!617 = metadata !{i32 834, i32 0, metadata !600, null}
!618 = metadata !{i32 836, i32 0, metadata !600, null}
!619 = metadata !{i32 838, i32 0, metadata !600, null}
!620 = metadata !{i32 840, i32 0, metadata !594, null}
!621 = metadata !{i32 843, i32 0, metadata !102, null}
!622 = metadata !{i32 844, i32 0, metadata !102, null}
!623 = metadata !{i32 852, i32 0, metadata !102, null}
!624 = metadata !{i32 854, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !102, i32 853, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!626 = metadata !{i32 855, i32 0, metadata !625, null}
!627 = metadata !{i32 856, i32 0, metadata !625, null}
!628 = metadata !{i32 858, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !625, i32 857, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!630 = metadata !{i32 859, i32 0, metadata !629, null}
!631 = metadata !{i32 862, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !625, i32 861, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!633 = metadata !{i32 864, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !632, i32 863, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!635 = metadata !{i32 865, i32 0, metadata !634, null}
!636 = metadata !{i32 868, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !632, i32 867, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!638 = metadata !{i32 878, i32 0, metadata !102, null}
!639 = metadata !{i32 880, i32 0, metadata !102, null}
!640 = metadata !{i32 886, i32 0, metadata !102, null}
!641 = metadata !{i32 888, i32 0, metadata !112, null}
!642 = metadata !{i32 892, i32 0, metadata !112, null}
!643 = metadata !{i32 893, i32 0, metadata !112, null}
!644 = metadata !{i32 895, i32 0, metadata !112, null}
!645 = metadata !{i32 897, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !112, i32 896, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!647 = metadata !{i32 899, i32 0, metadata !646, null}
!648 = metadata !{i32 901, i32 0, metadata !646, null}
!649 = metadata !{i32 903, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !646, i32 902, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!651 = metadata !{i32 904, i32 0, metadata !650, null}
!652 = metadata !{i32 906, i32 0, metadata !646, null}
!653 = metadata !{i32 909, i32 0, metadata !112, null}
!654 = metadata !{i32 911, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !112, i32 910, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!656 = metadata !{i32 912, i32 0, metadata !655, null}
!657 = metadata !{i32 914, i32 0, metadata !112, null}
!658 = metadata !{i32 919, i32 0, metadata !117, null}
!659 = metadata !{i32 928, i32 0, metadata !117, null}
!660 = metadata !{i32 929, i32 0, metadata !117, null}
!661 = metadata !{i32 931, i32 0, metadata !117, null}
!662 = metadata !{i32 932, i32 0, metadata !117, null}
!663 = metadata !{i32 934, i32 0, metadata !117, null}
!664 = metadata !{i32 936, i32 0, metadata !117, null}
!665 = metadata !{i32 938, i32 0, metadata !117, null}
!666 = metadata !{i32 940, i32 0, metadata !117, null}
!667 = metadata !{i32 942, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !117, i32 941, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!669 = metadata !{i32 943, i32 0, metadata !668, null}
!670 = metadata !{i32 944, i32 0, metadata !668, null}
!671 = metadata !{i32 947, i32 0, metadata !117, null}
!672 = metadata !{i32 948, i32 0, metadata !117, null}
!673 = metadata !{i32 950, i32 0, metadata !117, null}
!674 = metadata !{i32 952, i32 0, metadata !117, null}
!675 = metadata !{i32 954, i32 0, metadata !117, null}
!676 = metadata !{i32 958, i32 0, metadata !123, null}
!677 = metadata !{i32 959, i32 0, metadata !123, null}
!678 = metadata !{i32 960, i32 0, metadata !123, null}
!679 = metadata !{i32 967, i32 0, metadata !123, null}
!680 = metadata !{i32 971, i32 0, metadata !123, null}
!681 = metadata !{i32 976, i32 0, metadata !123, null}
!682 = metadata !{i32 978, i32 0, metadata !123, null}
!683 = metadata !{i32 980, i32 0, metadata !123, null}
!684 = metadata !{i32 982, i32 0, metadata !123, null}
!685 = metadata !{i32 983, i32 0, metadata !123, null}
!686 = metadata !{i32 985, i32 0, metadata !123, null}
!687 = metadata !{i32 986, i32 0, metadata !123, null}
!688 = metadata !{i32 987, i32 0, metadata !123, null}
!689 = metadata !{i32 989, i32 0, metadata !123, null}
!690 = metadata !{i32 991, i32 0, metadata !123, null}
!691 = metadata !{i32 993, i32 0, metadata !123, null}
!692 = metadata !{i32 995, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !123, i32 995, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!694 = metadata !{i32 997, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !693, i32 996, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!696 = metadata !{i32 1000, i32 0, metadata !695, null}
!697 = metadata !{i32 1002, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !695, i32 1001, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!699 = metadata !{i32 1003, i32 0, metadata !698, null}
!700 = metadata !{i32 1004, i32 0, metadata !698, null}
!701 = metadata !{i32 1007, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !695, i32 1006, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!703 = metadata !{i32 1010, i32 0, metadata !695, null}
!704 = metadata !{i32 1013, i32 0, metadata !123, null}
!705 = metadata !{i32 78, i32 0, metadata !19, metadata !706}
!706 = metadata !{i32 1015, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !123, i32 1014, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!708 = metadata !{i32 1016, i32 0, metadata !707, null}
!709 = metadata !{i32 1017, i32 0, metadata !707, null}
!710 = metadata !{i32 1018, i32 0, metadata !707, null}
!711 = metadata !{i32 1021, i32 0, metadata !123, null}
!712 = metadata !{i32 1023, i32 0, metadata !123, null}
!713 = metadata !{i32 1024, i32 0, metadata !123, null}
!714 = metadata !{i32 1025, i32 0, metadata !123, null}
!715 = metadata !{i32 1026, i32 0, metadata !123, null}
!716 = metadata !{i32 1027, i32 0, metadata !123, null}
!717 = metadata !{i32 1028, i32 0, metadata !123, null}
!718 = metadata !{i32 1029, i32 0, metadata !123, null}
!719 = metadata !{i32 1030, i32 0, metadata !123, null}
!720 = metadata !{i32 1032, i32 0, metadata !123, null}
!721 = metadata !{i32 1034, i32 0, metadata !123, null}
!722 = metadata !{i32 78, i32 0, metadata !19, metadata !723}
!723 = metadata !{i32 1036, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !123, i32 1035, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!725 = metadata !{i32 1037, i32 0, metadata !724, null}
!726 = metadata !{i32 1038, i32 0, metadata !724, null}
!727 = metadata !{i32 1039, i32 0, metadata !724, null}
!728 = metadata !{i32 1040, i32 0, metadata !724, null}
!729 = metadata !{i32 1043, i32 0, metadata !123, null}
!730 = metadata !{i32 1045, i32 0, metadata !123, null}
!731 = metadata !{i32 1066, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !733, i32 1054, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!733 = metadata !{i32 786443, metadata !1, metadata !123, i32 1048, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!734 = metadata !{i32 1050, i32 0, metadata !733, null}
!735 = metadata !{i32 1051, i32 0, metadata !733, null}
!736 = metadata !{i32 1053, i32 0, metadata !733, null}
!737 = metadata !{i32 1055, i32 0, metadata !732, null}
!738 = metadata !{i32 1058, i32 0, metadata !732, null}
!739 = metadata !{i32 1060, i32 0, metadata !732, null}
!740 = metadata !{i32 1061, i32 0, metadata !732, null}
!741 = metadata !{i32 1062, i32 0, metadata !732, null}
!742 = metadata !{i32 1065, i32 0, metadata !732, null}
!743 = metadata !{i32 1068, i32 0, metadata !732, null}
!744 = metadata !{i32 1070, i32 0, metadata !732, null}
!745 = metadata !{i32 1072, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !732, i32 1071, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!747 = metadata !{i32 1074, i32 0, metadata !746, null}
!748 = metadata !{i32 1076, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !746, i32 1075, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!750 = metadata !{i32 1077, i32 0, metadata !749, null}
!751 = metadata !{i32 1080, i32 0, metadata !746, null}
!752 = metadata !{i32 1078, i32 0, metadata !749, null}
!753 = metadata !{i32 1082, i32 0, metadata !746, null}
!754 = metadata !{i32 1083, i32 0, metadata !732, null}
!755 = metadata !{i32 1085, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !732, i32 1084, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!757 = metadata !{i32 1087, i32 0, metadata !756, null}
!758 = metadata !{i32 1092, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !733, i32 1090, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!760 = metadata !{i32 100000000}
!761 = metadata !{i32 1094, i32 0, metadata !759, null}
!762 = metadata !{i32 1095, i32 0, metadata !759, null}
!763 = metadata !{i32 1097, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !759, i32 1097, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!765 = metadata !{i32 1099, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !764, i32 1098, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!767 = metadata !{i32 1101, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !766, i32 1100, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!769 = metadata !{i32 undef}
!770 = metadata !{i32 1102, i32 0, metadata !768, null}
!771 = metadata !{i32 1103, i32 0, metadata !768, null}
!772 = metadata !{i32 1105, i32 0, metadata !766, null}
!773 = metadata !{i32 1108, i32 0, metadata !759, null}
!774 = metadata !{i32 1111, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !759, i32 1109, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!776 = metadata !{i32 1112, i32 0, metadata !775, null}
!777 = metadata !{i32 1115, i32 0, metadata !759, null}
!778 = metadata !{i32 1117, i32 0, metadata !759, null}
!779 = metadata !{i32 1119, i32 0, metadata !759, null}
!780 = metadata !{i32 1120, i32 0, metadata !759, null}
!781 = metadata !{i32 1121, i32 0, metadata !759, null}
!782 = metadata !{i32 1123, i32 0, metadata !759, null}
!783 = metadata !{i32 1127, i32 0, metadata !759, null}
!784 = metadata !{i32 1131, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !759, i32 1129, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!786 = metadata !{i32 1133, i32 0, metadata !785, null}
!787 = metadata !{i32 1135, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !785, i32 1134, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!789 = metadata !{i32 1136, i32 0, metadata !788, null}
!790 = metadata !{i32 1139, i32 0, metadata !785, null}
!791 = metadata !{i32 1137, i32 0, metadata !788, null}
!792 = metadata !{i32 1140, i32 0, metadata !785, null}
!793 = metadata !{i32 1141, i32 0, metadata !759, null}
!794 = metadata !{i32 1145, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !759, i32 1143, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!796 = metadata !{i32 1147, i32 0, metadata !795, null}
!797 = metadata !{i32 1151, i32 0, metadata !123, null}
!798 = metadata !{float -1.000000e+00}
!799 = metadata !{i32 1152, i32 0, metadata !123, null}
!800 = metadata !{i32 1153, i32 0, metadata !123, null}
!801 = metadata !{i32 1155, i32 0, metadata !123, null}
!802 = metadata !{i32 1161, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !804, i32 1160, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!804 = metadata !{i32 786443, metadata !1, metadata !805, i32 1158, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!805 = metadata !{i32 786443, metadata !1, metadata !806, i32 1157, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!806 = metadata !{i32 786443, metadata !1, metadata !123, i32 1156, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!807 = metadata !{i32 1166, i32 0, metadata !803, null}
!808 = metadata !{i32 1157, i32 0, metadata !805, null}
!809 = metadata !{i32 1159, i32 0, metadata !804, null}
!810 = metadata !{i32 1168, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !803, i32 1167, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!812 = metadata !{i32 1170, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !811, i32 1169, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!814 = metadata !{i32 1171, i32 0, metadata !813, null}
!815 = metadata !{i32 1173, i32 0, metadata !811, null}
!816 = metadata !{i32 1172, i32 0, metadata !813, null}
!817 = metadata !{i32 1180, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !803, i32 1179, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!819 = metadata !{i32 1181, i32 0, metadata !818, null}
!820 = metadata !{float 1.000000e+08}
!821 = metadata !{i32 1182, i32 0, metadata !818, null}
!822 = metadata !{i32 1184, i32 0, metadata !803, null}
!823 = metadata !{i32 1185, i32 0, metadata !803, null}
!824 = metadata !{i32 1189, i32 0, metadata !123, null}
!825 = metadata !{i32 1191, i32 0, metadata !123, null}
!826 = metadata !{i32 1192, i32 0, metadata !123, null}
!827 = metadata !{i32 1208, i32 0, metadata !123, null}
!828 = metadata !{i32 1210, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !123, i32 1209, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!830 = metadata !{i32 1212, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !829, i32 1212, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!832 = metadata !{i32 1214, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !831, i32 1213, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!834 = metadata !{i32 1218, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !833, i32 1215, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!836 = metadata !{i32 1219, i32 0, metadata !835, null}
!837 = metadata !{i32 1220, i32 0, metadata !835, null}
!838 = metadata !{i32 1225, i32 0, metadata !123, null}
!839 = metadata !{i32 1227, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !123, i32 1226, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!841 = metadata !{i32 1228, i32 0, metadata !840, null}
!842 = metadata !{i32 78, i32 0, metadata !19, metadata !843}
!843 = metadata !{i32 1230, i32 0, metadata !123, null}
!844 = metadata !{i32 1231, i32 0, metadata !123, null}
!845 = metadata !{i32 1232, i32 0, metadata !123, null}
!846 = metadata !{i32 1234, i32 0, metadata !123, null}
!847 = metadata !{i32 1236, i32 0, metadata !123, null}
!848 = metadata !{i32 1246, i32 0, metadata !157, null}
!849 = metadata !{i32 1247, i32 0, metadata !157, null}
!850 = metadata !{i32 1252, i32 0, metadata !157, null}
!851 = metadata !{i32 1253, i32 0, metadata !157, null}
!852 = metadata !{i32 1254, i32 0, metadata !157, null}
!853 = metadata !{i32 1255, i32 0, metadata !157, null}
!854 = metadata !{i32 1256, i32 0, metadata !157, null}
!855 = metadata !{i32 1257, i32 0, metadata !157, null}
!856 = metadata !{i32 1258, i32 0, metadata !157, null}
!857 = metadata !{i32 1259, i32 0, metadata !157, null}
!858 = metadata !{i32 1263, i32 0, metadata !157, null}
!859 = metadata !{i32 1265, i32 0, metadata !157, null}
!860 = metadata !{i32 1267, i32 0, metadata !157, null}
!861 = metadata !{i32 1269, i32 0, metadata !157, null}
!862 = metadata !{i32 1271, i32 0, metadata !157, null}
!863 = metadata !{i32 1273, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !1, metadata !157, i32 1272, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!865 = metadata !{i32 78, i32 0, metadata !19, metadata !866}
!866 = metadata !{i32 1274, i32 0, metadata !864, null}
!867 = metadata !{i32 1275, i32 0, metadata !864, null}
!868 = metadata !{i32 1276, i32 0, metadata !864, null}
!869 = metadata !{i32 1277, i32 0, metadata !864, null}
!870 = metadata !{i32 1280, i32 0, metadata !157, null}
!871 = metadata !{i32 1282, i32 0, metadata !157, null}
!872 = metadata !{i32 1284, i32 0, metadata !157, null}
!873 = metadata !{i32 1287, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !157, i32 1286, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!875 = metadata !{i32 1288, i32 0, metadata !874, null}
!876 = metadata !{i32 1289, i32 0, metadata !874, null}
!877 = metadata !{i32 1291, i32 0, metadata !874, null}
!878 = metadata !{i32 1296, i32 0, metadata !874, null}
!879 = metadata !{i32 1346, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !874, i32 1298, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!881 = metadata !{i32 1351, i32 0, metadata !157, null}
!882 = metadata !{i32 1353, i32 0, metadata !157, null}
!883 = metadata !{i32 1354, i32 0, metadata !157, null}
!884 = metadata !{i32 1356, i32 0, metadata !157, null}
!885 = metadata !{i32 1357, i32 0, metadata !157, null}
!886 = metadata !{i32 1365, i32 0, metadata !157, null}
!887 = metadata !{i32 1367, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !157, i32 1366, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!889 = metadata !{i32 1369, i32 0, metadata !888, null}
!890 = metadata !{i32 1370, i32 0, metadata !888, null}
!891 = metadata !{i32 1372, i32 0, metadata !888, null}
!892 = metadata !{i32 1373, i32 0, metadata !888, null}
!893 = metadata !{i32 1375, i32 0, metadata !888, null}
!894 = metadata !{i32 1377, i32 0, metadata !888, null}
!895 = metadata !{i32 1398, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !888, i32 1378, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!897 = metadata !{i32 1379, i32 0, metadata !896, null}
!898 = metadata !{i32 1381, i32 0, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !896, i32 1380, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!900 = metadata !{i32 1382, i32 0, metadata !899, null}
!901 = metadata !{i32 1390, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !896, i32 1388, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!903 = metadata !{i32 1384, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !899, i32 1383, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!905 = metadata !{i32 1392, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !902, i32 1391, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!907 = metadata !{i32 1396, i32 0, metadata !896, null}
!908 = metadata !{i32 1399, i32 0, metadata !896, null}
!909 = metadata !{i32 1400, i32 0, metadata !896, null}
!910 = metadata !{i32 1401, i32 0, metadata !896, null}
!911 = metadata !{i32 1403, i32 0, metadata !896, null}
!912 = metadata !{i32 1405, i32 0, metadata !896, null}
!913 = metadata !{i32 1406, i32 0, metadata !896, null}
!914 = metadata !{i32 1408, i32 0, metadata !896, null}
!915 = metadata !{i32 1411, i32 0, metadata !888, null}
!916 = metadata !{i32 1413, i32 0, metadata !888, null}
!917 = metadata !{i32 1415, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !888, i32 1414, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!919 = metadata !{i32 1416, i32 0, metadata !918, null}
!920 = metadata !{i32 1419, i32 0, metadata !888, null}
!921 = metadata !{i32 1421, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !888, i32 1420, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!923 = metadata !{i32 1422, i32 0, metadata !922, null}
!924 = metadata !{i32 1423, i32 0, metadata !922, null}
!925 = metadata !{i32 1425, i32 0, metadata !888, null}
!926 = metadata !{i32 1427, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !888, i32 1426, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!928 = metadata !{i32 1429, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !927, i32 1428, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!930 = metadata !{i32 1430, i32 0, metadata !929, null}
!931 = metadata !{i32 1431, i32 0, metadata !929, null}
!932 = metadata !{i32 1434, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !927, i32 1433, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!934 = metadata !{i32 1435, i32 0, metadata !933, null}
!935 = metadata !{i32 1439, i32 0, metadata !888, null}
!936 = metadata !{i32 1440, i32 0, metadata !888, null}
!937 = metadata !{i32 1441, i32 0, metadata !157, null}
!938 = metadata !{i32 1443, i32 0, metadata !939, null}
!939 = metadata !{i32 786443, metadata !1, metadata !157, i32 1442, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!940 = metadata !{i32 1444, i32 0, metadata !939, null}
!941 = metadata !{i32 1446, i32 0, metadata !939, null}
!942 = metadata !{i32 1447, i32 0, metadata !939, null}
!943 = metadata !{i32 1450, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !157, i32 1449, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!945 = metadata !{i32 1451, i32 0, metadata !944, null}
!946 = metadata !{i32 1453, i32 0, metadata !944, null}
!947 = metadata !{i32 1459, i32 0, metadata !948, null}
!948 = metadata !{i32 786443, metadata !1, metadata !157, i32 1459, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!949 = metadata !{i32 1461, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !948, i32 1460, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!951 = metadata !{i32 1463, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !1, metadata !950, i32 1462, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!953 = metadata !{i32 1465, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !952, i32 1464, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!955 = metadata !{i32 1466, i32 0, metadata !954, null}
!956 = metadata !{i32 1467, i32 0, metadata !954, null}
!957 = metadata !{i32 1471, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !950, i32 1470, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!959 = metadata !{i32 1472, i32 0, metadata !958, null}
!960 = metadata !{i32 1476, i32 0, metadata !157, null}
!961 = metadata !{i32 1478, i32 0, metadata !157, null}
!962 = metadata !{i32 78, i32 0, metadata !19, metadata !963}
!963 = metadata !{i32 1479, i32 0, metadata !157, null}
!964 = metadata !{i32 1480, i32 0, metadata !157, null}
!965 = metadata !{i32 1484, i32 0, metadata !157, null}
!966 = metadata !{i32 1485, i32 0, metadata !157, null}
!967 = metadata !{i32 1487, i32 0, metadata !171, null}
!968 = metadata !{i32 1493, i32 0, metadata !171, null}
!969 = metadata !{i32 1495, i32 0, metadata !171, null}
!970 = metadata !{i32 1497, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !171, i32 1496, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!972 = metadata !{i32 1500, i32 0, metadata !171, null}
!973 = metadata !{i32 1501, i32 0, metadata !171, null}
!974 = metadata !{i32 1502, i32 0, metadata !171, null}
!975 = metadata !{i32 1503, i32 0, metadata !171, null}
!976 = metadata !{i32 1504, i32 0, metadata !171, null}
!977 = metadata !{i32 1507, i32 0, metadata !171, null}
!978 = metadata !{i32 1509, i32 0, metadata !171, null}
!979 = metadata !{i32 1511, i32 0, metadata !171, null}
!980 = metadata !{i32 1515, i32 0, metadata !171, null}
!981 = metadata !{i32 1517, i32 0, metadata !171, null}
!982 = metadata !{i32 1519, i32 0, metadata !171, null}
!983 = metadata !{i32 1521, i32 0, metadata !171, null}
!984 = metadata !{i32 1523, i32 0, metadata !171, null}
!985 = metadata !{i32 1525, i32 0, metadata !171, null}
!986 = metadata !{i32 1527, i32 0, metadata !171, null}
!987 = metadata !{i32 1530, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !171, i32 1529, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!989 = metadata !{i32 1531, i32 0, metadata !988, null}
!990 = metadata !{i32 1532, i32 0, metadata !988, null}
!991 = metadata !{i32 1534, i32 0, metadata !988, null}
!992 = metadata !{i32 1536, i32 0, metadata !988, null}
!993 = metadata !{i32 1539, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !988, i32 1537, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!995 = metadata !{i32 1544, i32 0, metadata !171, null}
!996 = metadata !{i32 1552, i32 0, metadata !171, null}
!997 = metadata !{i32 1554, i32 0, metadata !171, null}
!998 = metadata !{i32 1560, i32 0, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !171, i32 1555, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!1000 = metadata !{i32 1562, i32 0, metadata !999, null}
!1001 = metadata !{i32 1563, i32 0, metadata !999, null}
!1002 = metadata !{i32 1569, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !171, i32 1565, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/proof.c]
!1004 = metadata !{i32 1571, i32 0, metadata !1003, null}
!1005 = metadata !{i32 78, i32 0, metadata !19, metadata !1006}
!1006 = metadata !{i32 1579, i32 0, metadata !171, null}
!1007 = metadata !{i32 1580, i32 0, metadata !171, null}
!1008 = metadata !{i32 1581, i32 0, metadata !171, null}
!1009 = metadata !{i32 1585, i32 0, metadata !171, null}
!1010 = metadata !{i32 1586, i32 0, metadata !171, null}
