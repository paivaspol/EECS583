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
  %0 = load i32* @bufftop, align 4, !tbaa !0
  %add = add nsw i32 %0, %size
  store i32 %add, i32* @bufftop, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %1 = load i8** @membuff, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %1, i64 %idxprom
  ret i8* %arrayidx
}

; Function Attrs: nounwind optsize uwtable
define void @Xfree() #0 {
entry:
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @freenodes(%struct.node* %node) #0 {
entry:
  %tobool = icmp eq %struct.node* %node, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.node* %node, i64 0, i32 6
  %0 = load %struct.node*** %children, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.node** %0, null
  br i1 %tobool1, label %if.end19, label %if.then2

if.then2:                                         ; preds = %if.end
  %num_children = getelementptr inbounds %struct.node* %node, i64 0, i32 1
  %1 = load i8* %num_children, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.end19, label %for.body

for.body:                                         ; preds = %for.inc, %if.then2
  %2 = phi %struct.node** [ %0, %if.then2 ], [ %.pre34, %for.inc ]
  %3 = phi i8 [ %1, %if.then2 ], [ %5, %for.inc ]
  %indvars.iv = phi i64 [ 0, %if.then2 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.node** %2, i64 %indvars.iv
  %4 = load %struct.node** %arrayidx, align 8, !tbaa !3
  %cmp10 = icmp eq %struct.node* %4, null
  br i1 %cmp10, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  tail call void @freenodes(%struct.node* %4) #5
  %.pre33 = load i8* %num_children, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then12
  %5 = phi i8 [ %3, %for.body ], [ %.pre33, %if.then12 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %conv6 = zext i8 %5 to i32
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %6, %conv6
  %.pre34 = load %struct.node*** %children, align 8, !tbaa !3
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %7 = bitcast %struct.node** %.pre34 to i8*
  tail call void @free(i8* %7) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then2, %if.end, %for.end
  %8 = getelementptr inbounds %struct.node* %node, i64 0, i32 0
  tail call void @free(i8* %8) #6
  br label %return

return:                                           ; preds = %entry, %if.end19
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @pn_eval(%struct.node* nocapture %this) #0 {
entry:
  %0 = load i32* @Variant, align 4, !tbaa !0
  switch i32 %0, label %if.else3 [
    i32 3, label %if.then
    i32 4, label %if.then2
  ]

if.then:                                          ; preds = %entry
  tail call void @suicide_pn_eval(%struct.node* %this) #5
  br label %if.end4

if.then2:                                         ; preds = %entry
  tail call void @losers_pn_eval(%struct.node* %this) #5
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @std_pn_eval(%struct.node* %this) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else3, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @suicide_pn_eval(%struct.node* nocapture %this) #0 {
entry:
  %evaluated = getelementptr inbounds %struct.node* %this, i64 0, i32 3
  store i8 1, i8* %evaluated, align 1, !tbaa !1
  %0 = load i32* @piece_count, align 4, !tbaa !0
  %cmp41 = icmp slt i32 %0, 1
  br i1 %cmp41, label %if.then12, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %bp.045 = phi i32 [ %bp.2, %for.inc ], [ 0, %entry ]
  %wp.044 = phi i32 [ %wp.2, %for.inc ], [ 0, %entry ]
  %a.042 = phi i32 [ %a.1, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.042, 1
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %2 = load i32* %arrayidx2, align 4, !tbaa !0
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
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  %inc3 = add nsw i32 %wp.044, 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  %inc5 = add nsw i32 %bp.045, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb4, %sw.bb
  %wp.1 = phi i32 [ %wp.044, %if.else ], [ %wp.044, %sw.bb4 ], [ %inc3, %sw.bb ]
  %bp.1 = phi i32 [ %bp.045, %if.else ], [ %inc5, %sw.bb4 ], [ %bp.045, %sw.bb ]
  %tobool6 = icmp eq i32 %wp.1, 0
  %tobool7 = icmp eq i32 %bp.1, 0
  %or.cond = or i1 %tobool6, %tobool7
  br i1 %or.cond, label %for.inc, label %for.end

for.inc:                                          ; preds = %sw.epilog, %for.body
  %a.1 = phi i32 [ %inc, %sw.epilog ], [ %a.042, %for.body ]
  %wp.2 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.044, %for.body ]
  %bp.2 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp = icmp sgt i32 %a.1, %0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %sw.epilog
  %wp.3 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.2, %for.inc ]
  %bp.3 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.2, %for.inc ]
  %tobool11 = icmp eq i32 %wp.3, 0
  br i1 %tobool11, label %if.then12, label %if.else18

if.then12:                                        ; preds = %entry, %for.end
  %3 = load i32* @root_to_move, align 4, !tbaa !0
  %tobool13 = icmp eq i32 %3, 0
  %value16 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then12
  store i8 1, i8* %value16, align 1, !tbaa !1
  br label %if.end30

if.else15:                                        ; preds = %if.then12
  store i8 0, i8* %value16, align 1, !tbaa !1
  br label %if.end30

if.else18:                                        ; preds = %for.end
  %tobool19 = icmp eq i32 %bp.3, 0
  br i1 %tobool19, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.else18
  %4 = load i32* @root_to_move, align 4, !tbaa !0
  %tobool21 = icmp eq i32 %4, 0
  %value25 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  br i1 %tobool21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.then20
  store i8 0, i8* %value25, align 1, !tbaa !1
  br label %if.end30

if.else24:                                        ; preds = %if.then20
  store i8 1, i8* %value25, align 1, !tbaa !1
  br label %if.end30

if.else27:                                        ; preds = %if.else18
  %value28 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  store i8 2, i8* %value28, align 1, !tbaa !1
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.else24, %if.then22, %if.then14, %if.else15
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @losers_pn_eval(%struct.node* nocapture %this) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %evaluated = getelementptr inbounds %struct.node* %this, i64 0, i32 3
  store i8 1, i8* %evaluated, align 1, !tbaa !1
  %1 = load i32* @piece_count, align 4, !tbaa !0
  %cmp126 = icmp slt i32 %1, 1
  br i1 %cmp126, label %if.then12, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %bp.0130 = phi i32 [ %bp.2, %for.inc ], [ 0, %entry ]
  %wp.0129 = phi i32 [ %wp.2, %for.inc ], [ 0, %entry ]
  %a.0128 = phi i32 [ %a.1, %for.inc ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.0128, 1
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom1
  %3 = load i32* %arrayidx2, align 4, !tbaa !0
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
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else, %if.else, %if.else
  %inc3 = add nsw i32 %wp.0129, 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.else, %if.else, %if.else, %if.else, %if.else
  %inc5 = add nsw i32 %bp.0130, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb4, %sw.bb
  %wp.1 = phi i32 [ %wp.0129, %if.else ], [ %wp.0129, %sw.bb4 ], [ %inc3, %sw.bb ]
  %bp.1 = phi i32 [ %bp.0130, %if.else ], [ %inc5, %sw.bb4 ], [ %bp.0130, %sw.bb ]
  %tobool6 = icmp eq i32 %wp.1, 0
  %tobool7 = icmp eq i32 %bp.1, 0
  %or.cond = or i1 %tobool6, %tobool7
  br i1 %or.cond, label %for.inc, label %for.end

for.inc:                                          ; preds = %sw.epilog, %for.body
  %a.1 = phi i32 [ %inc, %sw.epilog ], [ %a.0128, %for.body ]
  %wp.2 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.0129, %for.body ]
  %bp.2 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.0130, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp = icmp sgt i32 %a.1, %1
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %sw.epilog
  %wp.3 = phi i32 [ %wp.1, %sw.epilog ], [ %wp.2, %for.inc ]
  %bp.3 = phi i32 [ %bp.1, %sw.epilog ], [ %bp.2, %for.inc ]
  %tobool11 = icmp eq i32 %wp.3, 0
  br i1 %tobool11, label %if.then12, label %if.else18

if.then12:                                        ; preds = %entry, %for.end
  %4 = load i32* @root_to_move, align 4, !tbaa !0
  %tobool13 = icmp eq i32 %4, 0
  %value16 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  %. = zext i1 %tobool13 to i8
  store i8 %., i8* %value16, align 1, !tbaa !1
  br label %cleanup

if.else18:                                        ; preds = %for.end
  %tobool19 = icmp eq i32 %bp.3, 0
  br i1 %tobool19, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.else18
  %5 = load i32* @root_to_move, align 4, !tbaa !0
  %value23 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  %not.tobool21 = icmp ne i32 %5, 0
  %.112 = zext i1 %not.tobool21 to i8
  store i8 %.112, i8* %value23, align 1, !tbaa !1
  br label %cleanup

if.end28:                                         ; preds = %if.else18
  %6 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool29 = icmp eq i32 %6, 0
  br i1 %tobool29, label %land.lhs.true33, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end28
  %7 = load i32* @wking_loc, align 4, !tbaa !0
  %call = call i32 @is_attacked(i32 %7, i32 0) #6
  %tobool31 = icmp eq i32 %call, 0
  br i1 %tobool31, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %land.lhs.true30
  %.pr = load i32* @white_to_move, align 4, !tbaa !0
  %tobool32 = icmp eq i32 %.pr, 0
  br i1 %tobool32, label %land.lhs.true33, label %if.else82

land.lhs.true33:                                  ; preds = %if.end28, %lor.lhs.false
  %8 = load i32* @bking_loc, align 4, !tbaa !0
  %call34 = call i32 @is_attacked(i32 %8, i32 1) #6
  %tobool35 = icmp eq i32 %call34, 0
  br i1 %tobool35, label %if.else82, label %if.then36

if.then36:                                        ; preds = %land.lhs.true30, %land.lhs.true33
  store i32 1, i32* @captures, align 4, !tbaa !1
  %arrayidx37 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx37) #6
  %9 = load i32* @numb_moves, align 4, !tbaa !0
  store i32 0, i32* @captures, align 4, !tbaa !1
  %cmp39124 = icmp sgt i32 %9, 0
  br i1 %cmp39124, label %for.body40, label %if.then53

for.cond38:                                       ; preds = %for.body40
  %cmp39 = icmp slt i32 %inc50, %9
  br i1 %cmp39, label %for.body40, label %if.then53

for.body40:                                       ; preds = %if.then36, %for.cond38
  %i.0125 = phi i32 [ %inc50, %for.cond38 ], [ 0, %if.then36 ]
  call void @make(%struct.move_s* %arrayidx37, i32 %i.0125) #6
  %call43 = call i32 @check_legal(%struct.move_s* %arrayidx37, i32 %i.0125, i32 1) #6
  %tobool44 = icmp eq i32 %call43, 0
  call void @unmake(%struct.move_s* %arrayidx37, i32 %i.0125) #6
  %inc50 = add nsw i32 %i.0125, 1
  br i1 %tobool44, label %for.cond38, label %if.else79

if.then53:                                        ; preds = %for.cond38, %if.then36
  store i32 0, i32* @captures, align 4, !tbaa !1
  call void @gen(%struct.move_s* %arrayidx37) #6
  %10 = load i32* @numb_moves, align 4, !tbaa !0
  %cmp56121 = icmp sgt i32 %10, 0
  br i1 %cmp56121, label %for.body57, label %if.then71

for.cond55:                                       ; preds = %for.body57
  %cmp56 = icmp slt i32 %inc67, %10
  br i1 %cmp56, label %for.body57, label %if.then71

for.body57:                                       ; preds = %if.then53, %for.cond55
  %i.1122 = phi i32 [ %inc67, %for.cond55 ], [ 0, %if.then53 ]
  call void @make(%struct.move_s* %arrayidx37, i32 %i.1122) #6
  %call60 = call i32 @check_legal(%struct.move_s* %arrayidx37, i32 %i.1122, i32 1) #6
  %tobool61 = icmp eq i32 %call60, 0
  call void @unmake(%struct.move_s* %arrayidx37, i32 %i.1122) #6
  %inc67 = add nsw i32 %i.1122, 1
  br i1 %tobool61, label %for.cond55, label %if.else79

if.then71:                                        ; preds = %for.cond55, %if.then53
  %11 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool72 = icmp eq i32 %11, 0
  %cond = zext i1 %not.tobool72 to i32
  %12 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp73 = icmp eq i32 %cond, %12
  %value75 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  br i1 %cmp73, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.then71
  store i8 1, i8* %value75, align 1, !tbaa !1
  br label %cleanup

if.else76:                                        ; preds = %if.then71
  store i8 0, i8* %value75, align 1, !tbaa !1
  br label %cleanup

if.else79:                                        ; preds = %for.body40, %for.body57
  %value80 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  store i8 2, i8* %value80, align 1, !tbaa !1
  br label %cleanup

if.else82:                                        ; preds = %land.lhs.true33, %lor.lhs.false
  %value83 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  store i8 2, i8* %value83, align 1, !tbaa !1
  br label %cleanup

cleanup:                                          ; preds = %if.else82, %if.then74, %if.else76, %if.else79, %if.then20, %if.then12
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @std_pn_eval(%struct.node* nocapture %this) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %evaluated = getelementptr inbounds %struct.node* %this, i64 0, i32 3
  store i8 1, i8* %evaluated, align 1, !tbaa !1
  %1 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.lhs.true3, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* @wking_loc, align 4, !tbaa !0
  %call = call i32 @is_attacked(i32 %2, i32 0) #6
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %.pr = load i32* @white_to_move, align 4, !tbaa !0
  %tobool2 = icmp eq i32 %.pr, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.else23

land.lhs.true3:                                   ; preds = %entry, %lor.lhs.false
  %3 = load i32* @bking_loc, align 4, !tbaa !0
  %call4 = call i32 @is_attacked(i32 %3, i32 1) #6
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %if.else23, label %if.then

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true3
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #6
  %4 = load i32* @numb_moves, align 4, !tbaa !0
  %cmp35 = icmp sgt i32 %4, 0
  br i1 %cmp35, label %for.body, label %if.then14.critedge

for.cond:                                         ; preds = %for.body
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body, label %if.then14.critedge

for.body:                                         ; preds = %if.then, %for.cond
  %i.036 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  call void @make(%struct.move_s* %arrayidx, i32 %i.036) #6
  %call8 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %i.036, i32 1) #6
  %tobool9 = icmp eq i32 %call8, 0
  call void @unmake(%struct.move_s* %arrayidx, i32 %i.036) #6
  %inc = add nsw i32 %i.036, 1
  br i1 %tobool9, label %for.cond, label %if.else20

if.then14.critedge:                               ; preds = %for.cond, %if.then
  %5 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool15 = icmp eq i32 %5, 0
  %cond = zext i1 %not.tobool15 to i32
  %6 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %cond, %6
  %value = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14.critedge
  store i8 0, i8* %value, align 1, !tbaa !1
  br label %if.end25

if.else:                                          ; preds = %if.then14.critedge
  store i8 1, i8* %value, align 1, !tbaa !1
  br label %if.end25

if.else20:                                        ; preds = %for.body
  %value21 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  store i8 2, i8* %value21, align 1, !tbaa !1
  br label %if.end25

if.else23:                                        ; preds = %land.lhs.true3, %lor.lhs.false
  %value24 = getelementptr inbounds %struct.node* %this, i64 0, i32 0
  store i8 2, i8* %value24, align 1, !tbaa !1
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.else, %if.then17, %if.else23
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #3

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #3

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #3

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #3

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.node* @select_most_proving(%struct.node* %node) #0 {
entry:
  %expanded36 = getelementptr inbounds %struct.node* %node, i64 0, i32 2
  %0 = load i8* %expanded36, align 1, !tbaa !1
  %tobool37 = icmp eq i8 %0, 0
  br i1 %tobool37, label %while.end23, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %tnode.038 = phi %struct.node* [ %10, %while.cond.backedge ], [ %node, %entry ]
  %1 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool1 = icmp eq i32 %1, 0
  %cond = zext i1 %not.tobool1 to i32
  %2 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp = icmp eq i32 %cond, %2
  %children = getelementptr inbounds %struct.node* %tnode.038, i64 0, i32 6
  %3 = load %struct.node*** %children, align 8, !tbaa !3
  br i1 %cmp, label %while.cond2.preheader, label %while.cond6.preheader

while.cond2.preheader:                            ; preds = %while.body
  %proof3 = getelementptr inbounds %struct.node* %tnode.038, i64 0, i32 4
  %4 = load i32* %proof3, align 4, !tbaa !0
  br label %while.cond2

while.cond6.preheader:                            ; preds = %while.body
  %disproof10 = getelementptr inbounds %struct.node* %tnode.038, i64 0, i32 5
  %5 = load i32* %disproof10, align 4, !tbaa !0
  br label %while.cond6

while.cond2:                                      ; preds = %while.cond2, %while.cond2.preheader
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %while.cond2 ], [ 0, %while.cond2.preheader ]
  %i.0 = phi i32 [ %inc, %while.cond2 ], [ 0, %while.cond2.preheader ]
  %arrayidx = getelementptr inbounds %struct.node** %3, i64 %indvars.iv39
  %6 = load %struct.node** %arrayidx, align 8, !tbaa !3
  %proof = getelementptr inbounds %struct.node* %6, i64 0, i32 4
  %7 = load i32* %proof, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %7, %4
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %inc = add nsw i32 %i.0, 1
  br i1 %cmp4, label %if.end, label %while.cond2

while.cond6:                                      ; preds = %while.cond6, %while.cond6.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond6 ], [ 0, %while.cond6.preheader ]
  %i.1 = phi i32 [ %inc13, %while.cond6 ], [ 0, %while.cond6.preheader ]
  %arrayidx9 = getelementptr inbounds %struct.node** %3, i64 %indvars.iv
  %8 = load %struct.node** %arrayidx9, align 8, !tbaa !3
  %disproof = getelementptr inbounds %struct.node* %8, i64 0, i32 5
  %9 = load i32* %disproof, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %9, %5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc13 = add nsw i32 %i.1, 1
  br i1 %cmp11, label %if.end, label %while.cond6

if.end:                                           ; preds = %while.cond2, %while.cond6
  %i.2 = phi i32 [ %i.1, %while.cond6 ], [ %i.0, %while.cond2 ]
  %idxprom15 = sext i32 %i.2 to i64
  %arrayidx17 = getelementptr inbounds %struct.node** %3, i64 %idxprom15
  %10 = load %struct.node** %arrayidx17, align 8, !tbaa !3
  %11 = load i32* @hash, align 4, !tbaa !0
  %12 = load i32* @move_number, align 4, !tbaa !0
  %13 = load i32* @ply, align 4, !tbaa !0
  %add = add i32 %12, -1
  %sub = add i32 %add, %13
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom18
  store i32 %11, i32* %arrayidx19, align 4, !tbaa !0
  %move = getelementptr inbounds %struct.node* %10, i64 0, i32 8
  tail call void @make(%struct.move_s* %move, i32 0) #6
  %14 = load i32* @ply, align 4, !tbaa !0
  %15 = load i32* @maxply, align 4, !tbaa !0
  %cmp20 = icmp sgt i32 %14, %15
  br i1 %cmp20, label %if.then21, label %while.cond.backedge

if.then21:                                        ; preds = %if.end
  store i32 %14, i32* @maxply, align 4, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then21, %if.end
  %expanded = getelementptr inbounds %struct.node* %10, i64 0, i32 2
  %16 = load i8* %expanded, align 1, !tbaa !1
  %tobool = icmp eq i8 %16, 0
  br i1 %tobool, label %while.end23, label %while.body

while.end23:                                      ; preds = %while.cond.backedge, %entry
  %tnode.0.lcssa = phi %struct.node* [ %node, %entry ], [ %10, %while.cond.backedge ]
  ret %struct.node* %tnode.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @set_proof_and_disproof_numbers(%struct.node* %node) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %expanded = getelementptr inbounds %struct.node* %node, i64 0, i32 2
  %1 = load i8* %expanded, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.else90, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool1 = icmp eq i32 %2, 0
  %cond = zext i1 %not.tobool1 to i32
  %3 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp = icmp eq i32 %cond, %3
  %num_children38 = getelementptr inbounds %struct.node* %node, i64 0, i32 1
  %4 = load i8* %num_children38, align 1, !tbaa !1
  %cmp40421 = icmp eq i8 %4, 0
  br i1 %cmp, label %for.cond37.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  br i1 %cmp40421, label %if.then25, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children = getelementptr inbounds %struct.node* %node, i64 0, i32 6
  %5 = load %struct.node*** %children, align 8, !tbaa !3
  %conv = zext i8 %4 to i32
  br label %for.body

for.cond37.preheader:                             ; preds = %if.then
  br i1 %cmp40421, label %for.end66, label %for.body42.lr.ph

for.body42.lr.ph:                                 ; preds = %for.cond37.preheader
  %children44 = getelementptr inbounds %struct.node* %node, i64 0, i32 6
  %6 = load %struct.node*** %children44, align 8, !tbaa !3
  %conv39 = zext i8 %4 to i32
  br label %for.body42

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv436 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next437, %for.body ]
  %disproof.0430 = phi i32 [ 100000000, %for.body.lr.ph ], [ %.disproof.0, %for.body ]
  %proof.0429 = phi i32 [ 0, %for.body.lr.ph ], [ %.add, %for.body ]
  %arrayidx = getelementptr inbounds %struct.node** %5, i64 %indvars.iv436
  %7 = load %struct.node** %arrayidx, align 8, !tbaa !3
  %proof5 = getelementptr inbounds %struct.node* %7, i64 0, i32 4
  %8 = load i32* %proof5, align 4, !tbaa !0
  %add = add nsw i32 %8, %proof.0429
  %cmp6 = icmp sgt i32 %add, 100000000
  %.add = select i1 %cmp6, i32 100000000, i32 %add
  %disproof12 = getelementptr inbounds %struct.node* %7, i64 0, i32 5
  %9 = load i32* %disproof12, align 4, !tbaa !0
  %cmp13 = icmp slt i32 %9, %disproof.0430
  %.disproof.0 = select i1 %cmp13, i32 %9, i32 %disproof.0430
  %indvars.iv.next437 = add i64 %indvars.iv436, 1
  %10 = trunc i64 %indvars.iv.next437 to i32
  %cmp3 = icmp slt i32 %10, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp21 = icmp eq i32 %.add, 0
  %cmp23 = icmp eq i32 %.disproof.0, 100000000
  %or.cond400 = or i1 %cmp21, %cmp23
  br i1 %or.cond400, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.cond.preheader, %for.end
  %proof.0.lcssa442 = phi i32 [ %.add, %for.end ], [ 0, %for.cond.preheader ]
  %disproof.0.lcssa441 = phi i32 [ %.disproof.0, %for.end ], [ 100000000, %for.cond.preheader ]
  %11 = load i32* @forwards, align 4, !tbaa !0
  %inc26 = add nsw i32 %11, 1
  store i32 %inc26, i32* @forwards, align 4, !tbaa !0
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #6
  br label %if.end84

if.else:                                          ; preds = %for.end
  %cmp27 = icmp eq i32 %.disproof.0, 0
  %cmp30 = icmp eq i32 %.add, 100000000
  %or.cond401 = or i1 %cmp27, %cmp30
  br i1 %or.cond401, label %if.then32, label %if.end84

if.then32:                                        ; preds = %if.else
  %12 = load i32* @forwards, align 4, !tbaa !0
  %inc33 = add nsw i32 %12, 1
  store i32 %inc33, i32* @forwards, align 4, !tbaa !0
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #6
  br label %if.end84

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next, %for.body42 ]
  %disproof.2423 = phi i32 [ 0, %for.body42.lr.ph ], [ %.add47, %for.body42 ]
  %proof.1422 = phi i32 [ 100000000, %for.body42.lr.ph ], [ %.proof.1, %for.body42 ]
  %arrayidx45 = getelementptr inbounds %struct.node** %6, i64 %indvars.iv
  %13 = load %struct.node** %arrayidx45, align 8, !tbaa !3
  %disproof46 = getelementptr inbounds %struct.node* %13, i64 0, i32 5
  %14 = load i32* %disproof46, align 4, !tbaa !0
  %add47 = add nsw i32 %14, %disproof.2423
  %cmp48 = icmp sgt i32 %add47, 100000000
  %.add47 = select i1 %cmp48, i32 100000000, i32 %add47
  %proof55 = getelementptr inbounds %struct.node* %13, i64 0, i32 4
  %15 = load i32* %proof55, align 4, !tbaa !0
  %cmp56 = icmp slt i32 %15, %proof.1422
  %.proof.1 = select i1 %cmp56, i32 %15, i32 %proof.1422
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp40 = icmp slt i32 %16, %conv39
  br i1 %cmp40, label %for.body42, label %for.end66

for.end66:                                        ; preds = %for.body42, %for.cond37.preheader
  %disproof.2.lcssa = phi i32 [ 0, %for.cond37.preheader ], [ %.add47, %for.body42 ]
  %proof.1.lcssa = phi i32 [ 100000000, %for.cond37.preheader ], [ %.proof.1, %for.body42 ]
  %cmp67 = icmp eq i32 %proof.1.lcssa, 0
  %cmp70 = icmp eq i32 %disproof.2.lcssa, 100000000
  %or.cond402 = or i1 %cmp67, %cmp70
  br i1 %or.cond402, label %if.then72, label %if.else74

if.then72:                                        ; preds = %for.end66
  %17 = load i32* @forwards, align 4, !tbaa !0
  %inc73 = add nsw i32 %17, 1
  store i32 %inc73, i32* @forwards, align 4, !tbaa !0
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #6
  br label %if.end84

if.else74:                                        ; preds = %for.end66
  %cmp75 = icmp eq i32 %disproof.2.lcssa, 0
  %cmp78 = icmp eq i32 %proof.1.lcssa, 100000000
  %or.cond403 = or i1 %cmp75, %cmp78
  br i1 %or.cond403, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.else74
  %18 = load i32* @forwards, align 4, !tbaa !0
  %inc81 = add nsw i32 %18, 1
  store i32 %inc81, i32* @forwards, align 4, !tbaa !0
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200) #6
  br label %if.end84

if.end84:                                         ; preds = %if.else74, %if.else, %if.then72, %if.then80, %if.then25, %if.then32
  %proof.3 = phi i32 [ %proof.0.lcssa442, %if.then25 ], [ %.add, %if.then32 ], [ %proof.1.lcssa, %if.then72 ], [ %proof.1.lcssa, %if.then80 ], [ %.add, %if.else ], [ %proof.1.lcssa, %if.else74 ]
  %disproof.3 = phi i32 [ %disproof.0.lcssa441, %if.then25 ], [ %.disproof.0, %if.then32 ], [ %disproof.2.lcssa, %if.then72 ], [ %disproof.2.lcssa, %if.then80 ], [ %.disproof.0, %if.else ], [ %disproof.2.lcssa, %if.else74 ]
  %19 = load i32* @hash, align 4, !tbaa !0
  %20 = load i32* @move_number, align 4, !tbaa !0
  %21 = load i32* @ply, align 4, !tbaa !0
  %add85 = add i32 %20, -1
  %sub = add i32 %add85, %21
  %idxprom86 = sext i32 %sub to i64
  %arrayidx87 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom86
  store i32 %19, i32* %arrayidx87, align 4, !tbaa !0
  %proof88 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %proof.3, i32* %proof88, align 4, !tbaa !0
  %disproof89 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %disproof.3, i32* %disproof89, align 4, !tbaa !0
  br label %cleanup

if.else90:                                        ; preds = %entry
  %evaluated = getelementptr inbounds %struct.node* %node, i64 0, i32 3
  %22 = load i8* %evaluated, align 1, !tbaa !1
  %tobool91 = icmp eq i8 %22, 0
  br i1 %tobool91, label %if.else299, label %if.then92

if.then92:                                        ; preds = %if.else90
  %value = getelementptr inbounds %struct.node* %node, i64 0, i32 0
  %23 = load i8* %value, align 1, !tbaa !1
  switch i8 %23, label %cleanup [
    i8 2, label %if.then96
    i8 0, label %if.then276
    i8 1, label %if.then284
    i8 3, label %if.then292
  ]

if.then96:                                        ; preds = %if.then92
  %24 = load i32* @hash, align 4, !tbaa !0
  %25 = load i32* @move_number, align 4, !tbaa !0
  %26 = load i32* @ply, align 4, !tbaa !0
  %add97 = add i32 %25, -1
  %sub98 = add i32 %add97, %26
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom99
  store i32 %24, i32* %arrayidx100, align 4, !tbaa !0
  %call = call i32 @is_draw() #6
  %tobool101 = icmp ne i32 %call, 0
  %27 = load i32* @ply, align 4, !tbaa !0
  %cmp103 = icmp sgt i32 %27, 200
  %or.cond = or i1 %tobool101, %cmp103
  br i1 %or.cond, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.then96
  %proof106 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 50000, i32* %proof106, align 4, !tbaa !0
  %disproof107 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 50000, i32* %disproof107, align 4, !tbaa !0
  br label %cleanup

if.end108:                                        ; preds = %if.then96
  %28 = load i32* @Variant, align 4, !tbaa !0
  %cmp109 = icmp eq i32 %28, 4
  br i1 %cmp109, label %if.else134, label %if.then111

if.then111:                                       ; preds = %if.end108
  %arrayidx112 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx112) #6
  %29 = load i32* @numb_moves, align 4, !tbaa !0
  %call113 = call i32 @in_check() #6
  %30 = load i32* @Variant, align 4, !tbaa !0
  %cmp114 = icmp eq i32 %30, 3
  br i1 %cmp114, label %if.else132, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %if.then111
  %cmp118416 = icmp sgt i32 %29, 0
  br i1 %cmp118416, label %for.body120, label %if.then177

for.body120:                                      ; preds = %for.cond117.preheader, %for.body120
  %l.0418 = phi i32 [ %l.0.inc126, %for.body120 ], [ 0, %for.cond117.preheader ]
  %i.2417 = phi i32 [ %inc130, %for.body120 ], [ 0, %for.cond117.preheader ]
  call void @make(%struct.move_s* %arrayidx112, i32 %i.2417) #6
  %call123 = call i32 @check_legal(%struct.move_s* %arrayidx112, i32 %i.2417, i32 %call113) #6
  %not.tobool124 = icmp ne i32 %call123, 0
  %inc126 = zext i1 %not.tobool124 to i32
  %l.0.inc126 = add nsw i32 %inc126, %l.0418
  call void @unmake(%struct.move_s* %arrayidx112, i32 %i.2417) #6
  %inc130 = add nsw i32 %i.2417, 1
  %exitcond435 = icmp eq i32 %inc130, %29
  br i1 %exitcond435, label %if.end174, label %for.body120

if.else132:                                       ; preds = %if.then111
  %31 = load i32* @numb_moves, align 4, !tbaa !0
  br label %if.end174

if.else134:                                       ; preds = %if.end108
  store i32 1, i32* @captures, align 4, !tbaa !1
  %arrayidx135 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx135) #6
  %32 = load i32* @numb_moves, align 4, !tbaa !0
  store i32 0, i32* @captures, align 4, !tbaa !1
  %call136 = call i32 @in_check() #6
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %for.body142, label %if.then156

for.body142:                                      ; preds = %if.else134, %for.body142
  %l.2413 = phi i32 [ %l.2.inc148, %for.body142 ], [ 0, %if.else134 ]
  %i.3412 = phi i32 [ %inc152, %for.body142 ], [ 0, %if.else134 ]
  call void @make(%struct.move_s* %arrayidx135, i32 %i.3412) #6
  %call145 = call i32 @check_legal(%struct.move_s* %arrayidx135, i32 %i.3412, i32 %call136) #6
  %not.tobool146 = icmp ne i32 %call145, 0
  %inc148 = zext i1 %not.tobool146 to i32
  %l.2.inc148 = add nsw i32 %inc148, %l.2413
  call void @unmake(%struct.move_s* %arrayidx135, i32 %i.3412) #6
  %inc152 = add nsw i32 %i.3412, 1
  %exitcond434 = icmp eq i32 %inc152, %32
  br i1 %exitcond434, label %if.end154, label %for.body142

if.end154:                                        ; preds = %for.body142
  %tobool155 = icmp eq i32 %l.2.inc148, 0
  br i1 %tobool155, label %if.then156, label %if.else180

if.then156:                                       ; preds = %if.else134, %if.end154
  store i32 0, i32* @captures, align 4, !tbaa !1
  call void @gen(%struct.move_s* %arrayidx135) #6
  %34 = load i32* @numb_moves, align 4, !tbaa !0
  %cmp159408 = icmp sgt i32 %34, 0
  br i1 %cmp159408, label %for.body161, label %if.then177

for.body161:                                      ; preds = %if.then156, %for.body161
  %l.5410 = phi i32 [ %l.5.inc167, %for.body161 ], [ 0, %if.then156 ]
  %i.4409 = phi i32 [ %inc171, %for.body161 ], [ 0, %if.then156 ]
  call void @make(%struct.move_s* %arrayidx135, i32 %i.4409) #6
  %call164 = call i32 @check_legal(%struct.move_s* %arrayidx135, i32 %i.4409, i32 %call136) #6
  %not.tobool165 = icmp ne i32 %call164, 0
  %inc167 = zext i1 %not.tobool165 to i32
  %l.5.inc167 = add nsw i32 %inc167, %l.5410
  call void @unmake(%struct.move_s* %arrayidx135, i32 %i.4409) #6
  %inc171 = add nsw i32 %i.4409, 1
  %exitcond = icmp eq i32 %inc171, %34
  br i1 %exitcond, label %if.end174, label %for.body161

if.end174:                                        ; preds = %for.body120, %for.body161, %if.else132
  %l.7 = phi i32 [ %31, %if.else132 ], [ %l.5.inc167, %for.body161 ], [ %l.0.inc126, %for.body120 ]
  %cmp175 = icmp eq i32 %l.7, 0
  br i1 %cmp175, label %if.then177, label %if.else180

if.then177:                                       ; preds = %for.cond117.preheader, %if.then156, %if.end174
  %proof178 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 1, i32* %proof178, align 4, !tbaa !0
  %disproof179 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 1, i32* %disproof179, align 4, !tbaa !0
  br label %cleanup

if.else180:                                       ; preds = %if.end174, %if.end154
  %l.7407 = phi i32 [ %l.2.inc148, %if.end154 ], [ %l.7, %if.end174 ]
  %35 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool181 = icmp eq i32 %35, 0
  %cond182 = zext i1 %not.tobool181 to i32
  %36 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp183 = icmp eq i32 %cond182, %36
  %37 = load i32* @Variant, align 4, !tbaa !0
  %.off = add i32 %37, -3
  %38 = icmp ugt i32 %.off, 1
  br i1 %cmp183, label %if.then185, label %if.else226

if.then185:                                       ; preds = %if.else180
  br i1 %38, label %if.then190, label %if.else196

if.then190:                                       ; preds = %if.then185
  %39 = load i32* @ply, align 4, !tbaa !0
  %div = sdiv i32 %39, 50
  %add191 = add nsw i32 %div, 1
  %proof192 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add191, i32* %proof192, align 4, !tbaa !0
  %40 = load i32* @ply, align 4, !tbaa !0
  %div193 = sdiv i32 %40, 50
  %add194 = add nsw i32 %div193, %l.7407
  %disproof195 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add194, i32* %disproof195, align 4, !tbaa !0
  br label %cleanup

if.else196:                                       ; preds = %if.then185
  %cmp197 = icmp eq i32 %37, 4
  br i1 %cmp197, label %if.then199, label %if.else217

if.then199:                                       ; preds = %if.else196
  %41 = load i32* @phase, align 4, !tbaa !0
  %cmp200 = icmp eq i32 %41, 2
  %42 = load i32* @ply, align 4, !tbaa !0
  br i1 %cmp200, label %if.then202, label %if.else209

if.then202:                                       ; preds = %if.then199
  %div203 = sdiv i32 %42, 30
  %add204 = add nsw i32 %div203, 1
  %proof205 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add204, i32* %proof205, align 4, !tbaa !0
  %43 = load i32* @ply, align 4, !tbaa !0
  %div206 = sdiv i32 %43, 30
  %add207 = add nsw i32 %div206, %l.7407
  %disproof208 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add207, i32* %disproof208, align 4, !tbaa !0
  br label %cleanup

if.else209:                                       ; preds = %if.then199
  %div210 = sdiv i32 %42, 80
  %add211 = add nsw i32 %div210, 1
  %proof212 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add211, i32* %proof212, align 4, !tbaa !0
  %44 = load i32* @ply, align 4, !tbaa !0
  %div213 = sdiv i32 %44, 80
  %add214 = add nsw i32 %div213, %l.7407
  %disproof215 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add214, i32* %disproof215, align 4, !tbaa !0
  br label %cleanup

if.else217:                                       ; preds = %if.else196
  %45 = load i32* @ply, align 4, !tbaa !0
  %div218 = sdiv i32 %45, 150
  %add219 = add nsw i32 %div218, 1
  %proof220 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add219, i32* %proof220, align 4, !tbaa !0
  %46 = load i32* @ply, align 4, !tbaa !0
  %div221 = sdiv i32 %46, 150
  %add222 = add nsw i32 %div221, %l.7407
  %disproof223 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add222, i32* %disproof223, align 4, !tbaa !0
  br label %cleanup

if.else226:                                       ; preds = %if.else180
  br i1 %38, label %if.then232, label %if.else239

if.then232:                                       ; preds = %if.else226
  %47 = load i32* @ply, align 4, !tbaa !0
  %div233 = sdiv i32 %47, 50
  %add234 = add nsw i32 %div233, %l.7407
  %proof235 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add234, i32* %proof235, align 4, !tbaa !0
  %48 = load i32* @ply, align 4, !tbaa !0
  %div236 = sdiv i32 %48, 50
  %add237 = add nsw i32 %div236, 1
  %disproof238 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add237, i32* %disproof238, align 4, !tbaa !0
  br label %cleanup

if.else239:                                       ; preds = %if.else226
  %cmp240 = icmp eq i32 %37, 4
  br i1 %cmp240, label %if.then242, label %if.else260

if.then242:                                       ; preds = %if.else239
  %49 = load i32* @phase, align 4, !tbaa !0
  %cmp243 = icmp eq i32 %49, 2
  %50 = load i32* @ply, align 4, !tbaa !0
  br i1 %cmp243, label %if.then245, label %if.else252

if.then245:                                       ; preds = %if.then242
  %div246 = sdiv i32 %50, 30
  %add247 = add nsw i32 %div246, %l.7407
  %proof248 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add247, i32* %proof248, align 4, !tbaa !0
  %51 = load i32* @ply, align 4, !tbaa !0
  %div249 = sdiv i32 %51, 30
  %add250 = add nsw i32 %div249, 1
  %disproof251 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add250, i32* %disproof251, align 4, !tbaa !0
  br label %cleanup

if.else252:                                       ; preds = %if.then242
  %div253 = sdiv i32 %50, 80
  %add254 = add nsw i32 %div253, %l.7407
  %proof255 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add254, i32* %proof255, align 4, !tbaa !0
  %52 = load i32* @ply, align 4, !tbaa !0
  %div256 = sdiv i32 %52, 80
  %add257 = add nsw i32 %div256, 1
  %disproof258 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add257, i32* %disproof258, align 4, !tbaa !0
  br label %cleanup

if.else260:                                       ; preds = %if.else239
  %53 = load i32* @ply, align 4, !tbaa !0
  %div261 = sdiv i32 %53, 150
  %add262 = add nsw i32 %div261, %l.7407
  %proof263 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 %add262, i32* %proof263, align 4, !tbaa !0
  %54 = load i32* @ply, align 4, !tbaa !0
  %div264 = sdiv i32 %54, 150
  %add265 = add nsw i32 %div264, 1
  %disproof266 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 %add265, i32* %disproof266, align 4, !tbaa !0
  br label %cleanup

if.then276:                                       ; preds = %if.then92
  %proof277 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 100000000, i32* %proof277, align 4, !tbaa !0
  %disproof278 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 0, i32* %disproof278, align 4, !tbaa !0
  br label %cleanup

if.then284:                                       ; preds = %if.then92
  %proof285 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 0, i32* %proof285, align 4, !tbaa !0
  %disproof286 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 100000000, i32* %disproof286, align 4, !tbaa !0
  br label %cleanup

if.then292:                                       ; preds = %if.then92
  %proof293 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 50000, i32* %proof293, align 4, !tbaa !0
  %disproof294 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 50000, i32* %disproof294, align 4, !tbaa !0
  br label %cleanup

if.else299:                                       ; preds = %if.else90
  %disproof300 = getelementptr inbounds %struct.node* %node, i64 0, i32 5
  store i32 1, i32* %disproof300, align 4, !tbaa !0
  %proof301 = getelementptr inbounds %struct.node* %node, i64 0, i32 4
  store i32 1, i32* %proof301, align 4, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.else217, %if.else209, %if.then202, %if.then190, %if.else260, %if.else252, %if.then245, %if.then232, %if.then177, %if.then284, %if.then292, %if.then276, %if.else299, %if.then92, %if.then105
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare void @StoreTT(i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @is_draw() #3

; Function Attrs: optsize
declare i32 @in_check() #3

; Function Attrs: nounwind optsize uwtable
define void @develop_node(%struct.node* %node) #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %call = call i32 @in_check() #6
  %1 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #6
  %2 = load i32* @numb_moves, align 4, !tbaa !0
  br label %if.end13

if.else:                                          ; preds = %entry
  store i32 1, i32* @captures, align 4, !tbaa !1
  %arrayidx1 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx1) #6
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  store i32 0, i32* @captures, align 4, !tbaa !1
  %cmp2119 = icmp sgt i32 %3, 0
  br i1 %cmp2119, label %for.body, label %if.then10.critedge

for.cond:                                         ; preds = %for.body
  %cmp2 = icmp slt i32 %inc, %3
  br i1 %cmp2, label %for.body, label %if.then10.critedge

for.body:                                         ; preds = %if.else, %for.cond
  %i.0120 = phi i32 [ %inc, %for.cond ], [ 0, %if.else ]
  call void @make(%struct.move_s* %arrayidx1, i32 %i.0120) #6
  %call5 = call i32 @check_legal(%struct.move_s* %arrayidx1, i32 %i.0120, i32 %call) #6
  %tobool = icmp eq i32 %call5, 0
  call void @unmake(%struct.move_s* %arrayidx1, i32 %i.0120) #6
  %inc = add nsw i32 %i.0120, 1
  br i1 %tobool, label %for.cond, label %if.end13

if.then10.critedge:                               ; preds = %for.cond, %if.else
  store i32 0, i32* @captures, align 4, !tbaa !1
  call void @gen(%struct.move_s* %arrayidx1) #6
  %4 = load i32* @numb_moves, align 4, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %for.body, %if.then10.critedge, %if.then
  %num_moves.0 = phi i32 [ %2, %if.then ], [ %4, %if.then10.critedge ], [ %3, %for.body ]
  %mul = shl i32 %num_moves.0, 3
  %5 = load i32* @bufftop, align 4, !tbaa !0
  %add.i = add nsw i32 %5, %mul
  store i32 %add.i, i32* @bufftop, align 4, !tbaa !0
  %idxprom.i = sext i32 %5 to i64
  %6 = load i8** @membuff, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i8* %6, i64 %idxprom.i
  %7 = bitcast i8* %arrayidx.i to %struct.node**
  %children = getelementptr inbounds %struct.node* %node, i64 0, i32 6
  store %struct.node** %7, %struct.node*** %children, align 8, !tbaa !3
  %cmp17116 = icmp sgt i32 %num_moves.0, 0
  br i1 %cmp17116, label %for.body19.lr.ph, label %for.end39

for.body19.lr.ph:                                 ; preds = %if.end13
  %arrayidx21 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  br label %for.body19

for.body19:                                       ; preds = %for.inc37, %for.body19.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc37 ]
  %l.0117 = phi i32 [ 0, %for.body19.lr.ph ], [ %l.1, %for.inc37 ]
  %8 = load i32* @hash, align 4, !tbaa !0
  %9 = load i32* @move_number, align 4, !tbaa !0
  %10 = load i32* @ply, align 4, !tbaa !0
  %add = add i32 %9, -1
  %sub = add i32 %add, %10
  %idxprom = sext i32 %sub to i64
  %arrayidx20 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom
  store i32 %8, i32* %arrayidx20, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv to i32
  call void @make(%struct.move_s* %arrayidx21, i32 %11) #6
  %call23 = call i32 @check_legal(%struct.move_s* %arrayidx21, i32 %11, i32 %call) #6
  %tobool24 = icmp eq i32 %call23, 0
  br i1 %tobool24, label %if.else34, label %if.then25

if.then25:                                        ; preds = %for.body19
  %12 = load i32* @bufftop, align 4, !tbaa !0
  %add.i107 = add nsw i32 %12, 56
  store i32 %add.i107, i32* @bufftop, align 4, !tbaa !0
  %idxprom.i108 = sext i32 %12 to i64
  %13 = load i8** @membuff, align 8, !tbaa !3
  %arrayidx.i109 = getelementptr inbounds i8* %13, i64 %idxprom.i108
  %14 = bitcast i8* %arrayidx.i109 to %struct.node*
  store i8 0, i8* %arrayidx.i109, align 1, !tbaa !1
  %arrayidx.i109.sum = add i64 %idxprom.i108, 8
  %disproof = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum
  %15 = bitcast i8* %disproof to i32*
  store i32 1, i32* %15, align 4, !tbaa !0
  %arrayidx.i109.sum110 = add i64 %idxprom.i108, 4
  %proof = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum110
  %16 = bitcast i8* %proof to i32*
  store i32 1, i32* %16, align 4, !tbaa !0
  %arrayidx.i109.sum111 = add i64 %idxprom.i108, 1
  %17 = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum111
  store i8 0, i8* %17, align 1, !tbaa !1
  %arrayidx.i109.sum112 = add i64 %idxprom.i108, 24
  %parent = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum112
  %18 = bitcast i8* %parent to %struct.node**
  store %struct.node* %node, %struct.node** %18, align 8, !tbaa !3
  %arrayidx.i109.sum113 = add i64 %idxprom.i108, 3
  %19 = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum113
  store i8 0, i8* %19, align 1, !tbaa !1
  %arrayidx.i109.sum114 = add i64 %idxprom.i108, 2
  %20 = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum114
  store i8 0, i8* %20, align 1, !tbaa !1
  %arrayidx.i109.sum115 = add i64 %idxprom.i108, 32
  %move = getelementptr inbounds i8* %13, i64 %arrayidx.i109.sum115
  %arrayidx28 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv
  %21 = bitcast %struct.move_s* %arrayidx28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %move, i8* %21, i64 24, i32 4, i1 false), !tbaa.struct !4
  %idxprom29 = sext i32 %l.0117 to i64
  %22 = load %struct.node*** %children, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds %struct.node** %22, i64 %idxprom29
  store %struct.node* %14, %struct.node** %arrayidx31, align 8, !tbaa !3
  %inc32 = add nsw i32 %l.0117, 1
  call void @pn_eval(%struct.node* %14) #5
  call void @set_proof_and_disproof_numbers(%struct.node* %14) #5
  call void @unmake(%struct.move_s* %arrayidx21, i32 %11) #6
  br label %for.inc37

if.else34:                                        ; preds = %for.body19
  call void @unmake(%struct.move_s* %arrayidx21, i32 %11) #6
  br label %for.inc37

for.inc37:                                        ; preds = %if.then25, %if.else34
  %l.1 = phi i32 [ %inc32, %if.then25 ], [ %l.0117, %if.else34 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_moves.0
  br i1 %exitcond, label %for.end39, label %for.body19

for.end39:                                        ; preds = %for.inc37, %if.end13
  %l.0.lcssa = phi i32 [ 0, %if.end13 ], [ %l.1, %for.inc37 ]
  %expanded40 = getelementptr inbounds %struct.node* %node, i64 0, i32 2
  store i8 1, i8* %expanded40, align 1, !tbaa !1
  %conv41 = trunc i32 %l.0.lcssa to i8
  %num_children42 = getelementptr inbounds %struct.node* %node, i64 0, i32 1
  store i8 %conv41, i8* %num_children42, align 1, !tbaa !1
  %conv44 = and i32 %l.0.lcssa, 255
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end66

if.then47:                                        ; preds = %for.end39
  store i8 0, i8* %expanded40, align 1, !tbaa !1
  %evaluated49 = getelementptr inbounds %struct.node* %node, i64 0, i32 3
  store i8 1, i8* %evaluated49, align 1, !tbaa !1
  %23 = load i32* @Variant, align 4, !tbaa !0
  %.off = add i32 %23, -3
  %24 = icmp ugt i32 %.off, 1
  br i1 %24, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.then47
  %value55 = getelementptr inbounds %struct.node* %node, i64 0, i32 0
  store i8 3, i8* %value55, align 1, !tbaa !1
  br label %if.end66

if.else56:                                        ; preds = %if.then47
  %25 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool57 = icmp eq i32 %25, 0
  %cond = zext i1 %not.tobool57 to i32
  %26 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp58 = icmp eq i32 %cond, %26
  %value61 = getelementptr inbounds %struct.node* %node, i64 0, i32 0
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.else56
  store i8 1, i8* %value61, align 1, !tbaa !1
  br label %if.end66

if.else62:                                        ; preds = %if.else56
  store i8 0, i8* %value61, align 1, !tbaa !1
  br label %if.end66

if.end66:                                         ; preds = %if.then54, %if.else62, %if.then60, %for.end39
  %27 = load i32* @nodecount, align 4, !tbaa !0
  %add67 = add nsw i32 %27, %num_moves.0
  store i32 %add67, i32* @nodecount, align 4, !tbaa !0
  %28 = load i32* @frees, align 4, !tbaa !0
  %add68 = add nsw i32 %28, %num_moves.0
  store i32 %add68, i32* @frees, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @update_ancestors(%struct.node* %node) #0 {
entry:
  %cmp16 = icmp eq %struct.node* %node, null
  br i1 %cmp16, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %tnode.017 = phi %struct.node* [ %1, %if.end ], [ %node, %entry ]
  tail call void @set_proof_and_disproof_numbers(%struct.node* %tnode.017) #5
  %target = getelementptr inbounds %struct.node* %tnode.017, i64 0, i32 8, i32 1
  %0 = load i32* %target, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %move = getelementptr inbounds %struct.node* %tnode.017, i64 0, i32 8
  tail call void @unmake(%struct.move_s* %move, i32 0) #6
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %parent = getelementptr inbounds %struct.node* %tnode.017, i64 0, i32 7
  %1 = load %struct.node** %parent, align 8, !tbaa !3
  %cmp = icmp eq %struct.node* %1, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %prevnode.0.lcssa = phi %struct.node* [ null, %entry ], [ %tnode.017, %if.end ]
  %target4 = getelementptr inbounds %struct.node* %prevnode.0.lcssa, i64 0, i32 8, i32 1
  %2 = load i32* %target4, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %while.end
  %move3 = getelementptr inbounds %struct.node* %prevnode.0.lcssa, i64 0, i32 8
  tail call void @make(%struct.move_s* %move3, i32 0) #6
  br label %if.end8

if.end8:                                          ; preds = %while.end, %if.then6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pn2_eval(%struct.node* %root) #0 {
entry:
  store i32 0, i32* @nodecount2, align 4, !tbaa !0
  store i32 1, i32* @pn2, align 4, !tbaa !0
  %parent = getelementptr inbounds %struct.node* %root, i64 0, i32 7
  %0 = load %struct.node** %parent, align 8, !tbaa !3
  store %struct.node* null, %struct.node** %parent, align 8, !tbaa !3
  tail call void @pn_eval(%struct.node* %root) #5
  tail call void @set_proof_and_disproof_numbers(%struct.node* %root) #5
  %disproof = getelementptr inbounds %struct.node* %root, i64 0, i32 5
  %proof = getelementptr inbounds %struct.node* %root, i64 0, i32 4
  %1 = load i32* %proof, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry, %while.body
  %2 = load i32* %disproof, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32* @nodecount2, align 4, !tbaa !0
  %4 = load i32* @nodecount, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call = tail call %struct.node* @select_most_proving(%struct.node* %root) #5
  tail call void @develop_node(%struct.node* %call) #5
  tail call void @update_ancestors(%struct.node* %call) #5
  %5 = load i32* %proof, align 4, !tbaa !0
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %while.end, label %land.lhs.true

while.end:                                        ; preds = %while.body, %land.lhs.true, %land.rhs, %entry
  %expanded = getelementptr inbounds %struct.node* %root, i64 0, i32 2
  store i8 0, i8* %expanded, align 1, !tbaa !1
  %num_children = getelementptr inbounds %struct.node* %root, i64 0, i32 1
  store i8 0, i8* %num_children, align 1, !tbaa !1
  store %struct.node* %0, %struct.node** %parent, align 8, !tbaa !3
  store i32 0, i32* @pn2, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @proofnumberscan() #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %islegal = alloca [512 x i32], align 16
  %nodesspent = alloca [512 x i32], align 16
  %output = alloca [8 x i8], align 1
  %tmp = alloca %struct.move_s, align 8
  %0 = bitcast [512 x %struct.move_s]* %moves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #2
  %1 = bitcast [512 x i32]* %islegal to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %1) #2
  %2 = bitcast [512 x i32]* %nodesspent to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #2
  %call = call i64 @rtime() #6
  %3 = load i32* @PBSize, align 4, !tbaa !0
  %conv = sext i32 %3 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 56) #6
  store i8* %call1, i8** @membuff, align 8, !tbaa !3
  %call2 = call noalias i8* @calloc(i64 1, i64 56) #6
  %4 = bitcast i8* %call2 to %struct.node*
  %arrayidx = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx) #6
  %5 = load i32* @numb_moves, align 4, !tbaa !0
  store i32 0, i32* @alllosers, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 2048, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %call3 = call i32 @in_check() #6
  %cmp425 = icmp sgt i32 %5, 0
  br i1 %cmp425, label %for.body, label %if.then15

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %if.end ], [ 0, %entry ]
  %legal.0426 = phi i32 [ %legal.1, %if.end ], [ 0, %entry ]
  %6 = trunc i64 %indvars.iv440 to i32
  call void @make(%struct.move_s* %arrayidx, i32 %6) #6
  %call7 = call i32 @check_legal(%struct.move_s* %arrayidx, i32 %6, i32 %call3) #6
  %tobool = icmp eq i32 %call7, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %legal.0426, 1
  %arrayidx8 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv440
  store i32 1, i32* %arrayidx8, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv440
  store i32 0, i32* %arrayidx10, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %legal.1 = phi i32 [ %inc, %if.then ], [ %legal.0426, %if.else ]
  call void @unmake(%struct.move_s* %arrayidx, i32 %6) #6
  %indvars.iv.next441 = add i64 %indvars.iv440, 1
  %lftr.wideiv442 = trunc i64 %indvars.iv.next441 to i32
  %exitcond443 = icmp eq i32 %lftr.wideiv442, %5
  br i1 %exitcond443, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  %cmp13 = icmp eq i32 %legal.1, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %entry, %for.end
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  %7 = load i8** @membuff, align 8, !tbaa !3
  call void @free(i8* %7) #6
  call void @free(i8* %call2) #6
  br label %cleanup

if.end16:                                         ; preds = %for.end
  store i32 1, i32* @nodecount, align 4, !tbaa !0
  store i32 0, i32* @iters, align 4, !tbaa !0
  store i32 0, i32* @maxply, align 4, !tbaa !0
  store i32 0, i32* @forwards, align 4, !tbaa !0
  %8 = load i32* @hash, align 4, !tbaa !0
  %9 = load i32* @move_number, align 4, !tbaa !0
  %10 = load i32* @ply, align 4, !tbaa !0
  %add = add i32 %9, -1
  %sub = add i32 %add, %10
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom17
  store i32 %8, i32* %arrayidx18, align 4, !tbaa !0
  %11 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool19 = icmp eq i32 %11, 0
  %cond = zext i1 %not.tobool19 to i32
  store i32 %cond, i32* @root_to_move, align 4, !tbaa !0
  call void @pn_eval(%struct.node* %4) #5
  %12 = load i8* %call2, align 1, !tbaa !1
  %switch = icmp ult i8 %12, 2
  br i1 %switch, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end16
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  %13 = load i8** @membuff, align 8, !tbaa !3
  call void @free(i8* %13) #6
  call void @free(i8* %call2) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  call void @set_proof_and_disproof_numbers(%struct.node* %4) #5
  %proof = getelementptr inbounds i8* %call2, i64 4
  %14 = bitcast i8* %proof to i32*
  %disproof = getelementptr inbounds i8* %call2, i64 8
  %15 = bitcast i8* %disproof to i32*
  %call29415 = call i64 @rtime() #6
  %call30416 = call i32 @rdifftime(i64 %call29415, i64 %call) #6
  %16 = load i32* @pn_time, align 4, !tbaa !0
  %cmp31417 = icmp slt i32 %call30416, %16
  br i1 %cmp31417, label %land.lhs.true.lr.ph, label %while.end180

land.lhs.true.lr.ph:                              ; preds = %if.end28
  %children = getelementptr inbounds i8* %call2, i64 16
  %17 = bitcast i8* %children to %struct.node***
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.lr.ph, %while.cond.backedge
  %alternates.0422 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %alternates.0.be, %while.cond.backedge ]
  %firsts.0421 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %firsts.0.be, %while.cond.backedge ]
  %leastlooked_i.0419 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %leastlooked_i.0.be, %while.cond.backedge ]
  %leastlooked_l.0418 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %leastlooked_l.0.be, %while.cond.backedge ]
  %call33 = call i32 @interrupt() #6
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true35, label %while.end180

land.lhs.true35:                                  ; preds = %land.lhs.true
  %18 = load i32* @bufftop, align 4, !tbaa !0
  %conv36 = zext i32 %18 to i64
  %19 = load i32* @PBSize, align 4, !tbaa !0
  %sub37 = add nsw i32 %19, -10000
  %conv38 = sext i32 %sub37 to i64
  %mul = mul i64 %conv38, 56
  %cmp39 = icmp ult i64 %conv36, %mul
  br i1 %cmp39, label %land.lhs.true41, label %while.end180

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %20 = load i32* %14, align 4, !tbaa !0
  %cmp42 = icmp eq i32 %20, 0
  br i1 %cmp42, label %while.end180, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true41
  %21 = load i32* %15, align 4, !tbaa !0
  %cmp44 = icmp eq i32 %21, 0
  br i1 %cmp44, label %while.end180, label %while.body

while.body:                                       ; preds = %land.rhs
  %22 = load i32* @iters, align 4, !tbaa !0
  %inc46 = add nsw i32 %22, 1
  store i32 %inc46, i32* @iters, align 4, !tbaa !0
  %23 = load i32* @nodecount, align 4, !tbaa !0
  %rem = srem i32 %23, 100
  %cmp47 = icmp slt i32 %rem, 66
  br i1 %cmp47, label %if.then49, label %if.else92

if.then49:                                        ; preds = %while.body
  %call51 = call %struct.node* @select_most_proving(%struct.node* %4) #5
  call void @develop_node(%struct.node* %call51) #5
  call void @update_ancestors(%struct.node* %call51) #5
  %24 = load %struct.node*** %17, align 8, !tbaa !3
  %25 = load i32* %14, align 4, !tbaa !0
  br label %while.cond52

while.cond52:                                     ; preds = %while.cond52, %if.then49
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %while.cond52 ], [ 0, %if.then49 ]
  %arrayidx54 = getelementptr inbounds %struct.node** %24, i64 %indvars.iv436
  %26 = load %struct.node** %arrayidx54, align 8, !tbaa !3
  %proof55 = getelementptr inbounds %struct.node* %26, i64 0, i32 4
  %27 = load i32* %proof55, align 4, !tbaa !0
  %cmp57 = icmp eq i32 %27, %25
  %indvars.iv.next437 = add i64 %indvars.iv436, 1
  br i1 %cmp57, label %while.end, label %while.cond52

while.end:                                        ; preds = %while.cond52
  %inc50 = add nsw i32 %firsts.0421, 1
  %28 = load i32* @nodecount, align 4, !tbaa !0
  %sub61 = sub i32 %28, %23
  %arrayidx63 = getelementptr inbounds [512 x i32]* %nodesspent, i64 0, i64 %indvars.iv436
  %29 = load i32* %arrayidx63, align 4, !tbaa !0
  %add64 = add nsw i32 %sub61, %29
  store i32 %add64, i32* %arrayidx63, align 4, !tbaa !0
  %cmp66 = icmp eq i32 %25, 0
  %30 = load i32* %15, align 4, !tbaa !0
  %cmp70 = icmp eq i32 %30, 100000000
  %or.cond398 = and i1 %cmp66, %cmp70
  br i1 %or.cond398, label %if.then72, label %if.else80

if.then72:                                        ; preds = %while.end
  store i32 1, i32* @forcedwin, align 4, !tbaa !0
  %31 = load i32* @kibitzed, align 4, !tbaa !1
  %tobool73 = icmp eq i32 %31, 0
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then72
  store i32 1, i32* @kibitzed, align 4, !tbaa !1
  %puts397 = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str19, i64 0, i64 0))
  %.pre445 = load %struct.node*** %17, align 8, !tbaa !3
  %arrayidx79.phi.trans.insert = getelementptr inbounds %struct.node** %.pre445, i64 %indvars.iv436
  %.pre446 = load %struct.node** %arrayidx79.phi.trans.insert, align 8, !tbaa !3
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then74
  %32 = phi %struct.node* [ %26, %if.then72 ], [ %.pre446, %if.then74 ]
  %move = getelementptr inbounds %struct.node* %32, i64 0, i32 8
  %33 = bitcast %struct.move_s* %move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %33, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %while.cond.backedge

if.else80:                                        ; preds = %while.end
  %cmp82 = icmp eq i32 %30, 0
  %cmp86 = icmp eq i32 %25, 100000000
  %or.cond455 = and i1 %cmp82, %cmp86
  br i1 %or.cond455, label %if.then88, label %while.cond.backedge

if.then88:                                        ; preds = %if.else80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %while.cond.backedge

if.else92:                                        ; preds = %while.body
  %inc93 = add nsw i32 %alternates.0422, 1
  br i1 %cmp425, label %for.body97, label %if.then125

for.body97:                                       ; preds = %if.else92, %if.end113
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %if.end113 ], [ 0, %if.else92 ]
  %l.0410 = phi i32 [ %l.0.inc118, %if.end113 ], [ 0, %if.else92 ]
  %leastlooked_i.1409 = phi i32 [ %leastlooked_i.2, %if.end113 ], [ %leastlooked_i.0419, %if.else92 ]
  %leastlooked_l.1408 = phi i32 [ %leastlooked_l.2, %if.end113 ], [ %leastlooked_l.0418, %if.else92 ]
  %leastlooked.0407 = phi i32 [ %leastlooked.1, %if.end113 ], [ 100000000, %if.else92 ]
  %arrayidx99 = getelementptr inbounds [512 x i32]* %nodesspent, i64 0, i64 %indvars.iv432
  %34 = load i32* %arrayidx99, align 4, !tbaa !0
  %cmp100 = icmp slt i32 %34, %leastlooked.0407
  %arrayidx104 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv432
  %35 = load i32* %arrayidx104, align 4, !tbaa !0
  br i1 %cmp100, label %land.lhs.true102, label %if.end113

land.lhs.true102:                                 ; preds = %for.body97
  %tobool105 = icmp eq i32 %35, 0
  br i1 %tobool105, label %if.end113, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %land.lhs.true102
  %arrayidx108 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv432
  %36 = load i32* %arrayidx108, align 4, !tbaa !0
  %tobool109 = icmp eq i32 %36, 0
  %.leastlooked.0 = select i1 %tobool109, i32 %34, i32 %leastlooked.0407
  %l.0.leastlooked_l.1 = select i1 %tobool109, i32 %l.0410, i32 %leastlooked_l.1408
  %37 = trunc i64 %indvars.iv432 to i32
  %i.2.leastlooked_i.1 = select i1 %tobool109, i32 %37, i32 %leastlooked_i.1409
  br label %if.end113

if.end113:                                        ; preds = %for.body97, %land.lhs.true106, %land.lhs.true102
  %38 = phi i32 [ 0, %land.lhs.true102 ], [ %35, %land.lhs.true106 ], [ %35, %for.body97 ]
  %leastlooked.1 = phi i32 [ %leastlooked.0407, %land.lhs.true102 ], [ %.leastlooked.0, %land.lhs.true106 ], [ %leastlooked.0407, %for.body97 ]
  %leastlooked_l.2 = phi i32 [ %leastlooked_l.1408, %land.lhs.true102 ], [ %l.0.leastlooked_l.1, %land.lhs.true106 ], [ %leastlooked_l.1408, %for.body97 ]
  %leastlooked_i.2 = phi i32 [ %leastlooked_i.1409, %land.lhs.true102 ], [ %i.2.leastlooked_i.1, %land.lhs.true106 ], [ %leastlooked_i.1409, %for.body97 ]
  %not.tobool116 = icmp ne i32 %38, 0
  %inc118 = zext i1 %not.tobool116 to i32
  %l.0.inc118 = add nsw i32 %inc118, %l.0410
  %indvars.iv.next433 = add i64 %indvars.iv432, 1
  %lftr.wideiv434 = trunc i64 %indvars.iv.next433 to i32
  %exitcond435 = icmp eq i32 %lftr.wideiv434, %5
  br i1 %exitcond435, label %for.end122, label %for.body97

for.end122:                                       ; preds = %if.end113
  %cmp123 = icmp eq i32 %leastlooked.1, 100000000
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.else92, %for.end122
  %leastlooked_l.1.lcssa454 = phi i32 [ %leastlooked_l.2, %for.end122 ], [ %leastlooked_l.0418, %if.else92 ]
  %leastlooked_i.1.lcssa453 = phi i32 [ %leastlooked_i.2, %for.end122 ], [ %leastlooked_i.0419, %if.else92 ]
  %add126 = add nsw i32 %23, 30
  store i32 %add126, i32* @nodecount, align 4, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then125, %if.end154, %if.then173, %if.else159, %if.end76, %if.then88, %if.else80
  %leastlooked_l.0.be = phi i32 [ %leastlooked_l.0418, %if.end76 ], [ %leastlooked_l.0418, %if.then88 ], [ %leastlooked_l.0418, %if.else80 ], [ %leastlooked_l.1.lcssa454, %if.then125 ], [ %leastlooked_l.2, %if.end154 ], [ %leastlooked_l.2, %if.then173 ], [ %leastlooked_l.2, %if.else159 ]
  %leastlooked_i.0.be = phi i32 [ %leastlooked_i.0419, %if.end76 ], [ %leastlooked_i.0419, %if.then88 ], [ %leastlooked_i.0419, %if.else80 ], [ %leastlooked_i.1.lcssa453, %if.then125 ], [ %leastlooked_i.2, %if.end154 ], [ %leastlooked_i.2, %if.then173 ], [ %leastlooked_i.2, %if.else159 ]
  %firsts.0.be = phi i32 [ %inc50, %if.end76 ], [ %inc50, %if.then88 ], [ %inc50, %if.else80 ], [ %firsts.0421, %if.then125 ], [ %firsts.0421, %if.end154 ], [ %firsts.0421, %if.then173 ], [ %firsts.0421, %if.else159 ]
  %alternates.0.be = phi i32 [ %alternates.0422, %if.end76 ], [ %alternates.0422, %if.then88 ], [ %alternates.0422, %if.else80 ], [ %inc93, %if.then125 ], [ %inc93, %if.end154 ], [ %inc93, %if.then173 ], [ %inc93, %if.else159 ]
  %call29 = call i64 @rtime() #6
  %call30 = call i32 @rdifftime(i64 %call29, i64 %call) #6
  %39 = load i32* @pn_time, align 4, !tbaa !0
  %cmp31 = icmp slt i32 %call30, %39
  br i1 %cmp31, label %land.lhs.true, label %while.end180

if.end127:                                        ; preds = %for.end122
  call void @make(%struct.move_s* %arrayidx, i32 %leastlooked_i.2) #6
  %idxprom129 = sext i32 %leastlooked_l.2 to i64
  %40 = load %struct.node*** %17, align 8, !tbaa !3
  %arrayidx131 = getelementptr inbounds %struct.node** %40, i64 %idxprom129
  %41 = load %struct.node** %arrayidx131, align 8, !tbaa !3
  %call132 = call %struct.node* @select_most_proving(%struct.node* %41) #5
  call void @develop_node(%struct.node* %call132) #5
  call void @update_ancestors(%struct.node* %call132) #5
  %42 = load i32* @nodecount, align 4, !tbaa !0
  %sub133 = sub i32 %42, %23
  %idxprom134 = sext i32 %leastlooked_i.2 to i64
  %arrayidx135 = getelementptr inbounds [512 x i32]* %nodesspent, i64 0, i64 %idxprom134
  %43 = load i32* %arrayidx135, align 4, !tbaa !0
  %add136 = add nsw i32 %sub133, %43
  store i32 %add136, i32* %arrayidx135, align 4, !tbaa !0
  %44 = load %struct.node*** %17, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds %struct.node** %44, i64 %idxprom129
  %45 = load %struct.node** %arrayidx139, align 8, !tbaa !3
  %proof140 = getelementptr inbounds %struct.node* %45, i64 0, i32 4
  %46 = load i32* %proof140, align 4, !tbaa !0
  %cmp141 = icmp eq i32 %46, 0
  %disproof147 = getelementptr inbounds %struct.node* %45, i64 0, i32 5
  %47 = load i32* %disproof147, align 4, !tbaa !0
  %cmp148 = icmp eq i32 %47, 100000000
  %or.cond456 = and i1 %cmp141, %cmp148
  br i1 %or.cond456, label %if.then150, label %if.else159

if.then150:                                       ; preds = %if.end127
  store i32 1, i32* @forcedwin, align 4, !tbaa !0
  %48 = load i32* @kibitzed, align 4, !tbaa !1
  %tobool151 = icmp eq i32 %48, 0
  br i1 %tobool151, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.then150
  store i32 1, i32* @kibitzed, align 4, !tbaa !1
  %puts396 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str18, i64 0, i64 0))
  %.pre447 = load %struct.node*** %17, align 8, !tbaa !3
  %arrayidx157.phi.trans.insert = getelementptr inbounds %struct.node** %.pre447, i64 %idxprom129
  %.pre448 = load %struct.node** %arrayidx157.phi.trans.insert, align 8, !tbaa !3
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.then152
  %49 = phi %struct.node* [ %45, %if.then150 ], [ %.pre448, %if.then152 ]
  %move158 = getelementptr inbounds %struct.node* %49, i64 0, i32 8
  %50 = bitcast %struct.move_s* %move158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %50, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %while.cond.backedge

if.else159:                                       ; preds = %if.end127
  %cmp164 = icmp eq i32 %47, 0
  %cmp171 = icmp eq i32 %46, 100000000
  %or.cond457 = and i1 %cmp164, %cmp171
  br i1 %or.cond457, label %if.then173, label %while.cond.backedge

if.then173:                                       ; preds = %if.else159
  %arrayidx175 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %idxprom134
  store i32 1, i32* %arrayidx175, align 4, !tbaa !0
  br label %while.cond.backedge

while.end180:                                     ; preds = %while.cond.backedge, %land.rhs, %land.lhs.true41, %land.lhs.true, %land.lhs.true35, %if.end28
  %alternates.0.lcssa = phi i32 [ 0, %if.end28 ], [ %alternates.0422, %land.lhs.true35 ], [ %alternates.0422, %land.lhs.true ], [ %alternates.0422, %land.lhs.true41 ], [ %alternates.0422, %land.rhs ], [ %alternates.0.be, %while.cond.backedge ]
  %firsts.0.lcssa = phi i32 [ 0, %if.end28 ], [ %firsts.0421, %land.lhs.true35 ], [ %firsts.0421, %land.lhs.true ], [ %firsts.0421, %land.lhs.true41 ], [ %firsts.0421, %land.rhs ], [ %firsts.0.be, %while.cond.backedge ]
  %51 = getelementptr inbounds i8* %call2, i64 2
  %52 = load i8* %51, align 1, !tbaa !1
  %tobool181 = icmp eq i8 %52, 0
  %cmp425.not = xor i1 %cmp425, true
  %brmerge = or i1 %tobool181, %cmp425.not
  br i1 %brmerge, label %if.end256, label %for.body186.lr.ph

for.body186.lr.ph:                                ; preds = %while.end180
  %arraydecay = getelementptr inbounds [8 x i8]* %output, i64 0, i64 0
  %children194 = getelementptr inbounds i8* %call2, i64 16
  %53 = bitcast i8* %children194 to %struct.node***
  br label %for.body186

for.body186:                                      ; preds = %for.inc253, %for.body186.lr.ph
  %indvars.iv430 = phi i64 [ 0, %for.body186.lr.ph ], [ %indvars.iv.next431, %for.inc253 ]
  %altlosers.0405 = phi i32 [ 0, %for.body186.lr.ph ], [ %altlosers.2, %for.inc253 ]
  %bdp.0404 = phi float [ -1.000000e+00, %for.body186.lr.ph ], [ %bdp.3, %for.inc253 ]
  %l.2402 = phi i32 [ 0, %for.body186.lr.ph ], [ %l.3, %for.inc253 ]
  %arrayidx188 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv430
  %54 = load i32* %arrayidx188, align 4, !tbaa !0
  %tobool189 = icmp eq i32 %54, 0
  br i1 %tobool189, label %for.inc253, label %if.then190

if.then190:                                       ; preds = %for.body186
  %arrayidx192 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv430
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx192, i8* %arraydecay) #6
  %idxprom193 = sext i32 %l.2402 to i64
  %55 = load %struct.node*** %53, align 8, !tbaa !3
  %arrayidx195 = getelementptr inbounds %struct.node** %55, i64 %idxprom193
  %56 = load %struct.node** %arrayidx195, align 8, !tbaa !3
  %proof196 = getelementptr inbounds %struct.node* %56, i64 0, i32 4
  %57 = load i32* %proof196, align 4, !tbaa !0
  %cmp197 = icmp eq i32 %57, 0
  br i1 %cmp197, label %if.else245, label %if.then199

if.then199:                                       ; preds = %if.then190
  %disproof203 = getelementptr inbounds %struct.node* %56, i64 0, i32 5
  %58 = load i32* %disproof203, align 4, !tbaa !0
  %conv204 = sitofp i32 %58 to float
  %conv209 = sitofp i32 %57 to float
  %div = fdiv float %conv204, %conv209
  %cmp210 = fcmp ogt float %div, %bdp.0404
  br i1 %cmp210, label %if.then212, label %if.end228

if.then212:                                       ; preds = %if.then199
  %move227 = getelementptr inbounds %struct.node* %56, i64 0, i32 8
  %59 = bitcast %struct.move_s* %move227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %59, i64 24, i32 4, i1 false), !tbaa.struct !4
  %.pre = load %struct.node** %arrayidx195, align 8, !tbaa !3
  %disproof232.phi.trans.insert = getelementptr inbounds %struct.node* %.pre, i64 0, i32 5
  %.pre444 = load i32* %disproof232.phi.trans.insert, align 4, !tbaa !0
  br label %if.end228

if.end228:                                        ; preds = %if.then212, %if.then199
  %60 = phi i32 [ %.pre444, %if.then212 ], [ %58, %if.then199 ]
  %61 = phi %struct.node* [ %.pre, %if.then212 ], [ %56, %if.then199 ]
  %bdp.1 = phi float [ %div, %if.then212 ], [ %bdp.0404, %if.then199 ]
  %cmp233 = icmp eq i32 %60, 0
  br i1 %cmp233, label %land.lhs.true235, label %if.end250

land.lhs.true235:                                 ; preds = %if.end228
  %proof239 = getelementptr inbounds %struct.node* %61, i64 0, i32 4
  %62 = load i32* %proof239, align 4, !tbaa !0
  %cmp240 = icmp eq i32 %62, 100000000
  %inc243 = zext i1 %cmp240 to i32
  %inc243.altlosers.0 = add nsw i32 %inc243, %altlosers.0405
  br label %if.end250

if.else245:                                       ; preds = %if.then190
  store i32 1, i32* @forcedwin, align 4, !tbaa !0
  %move249 = getelementptr inbounds %struct.node* %56, i64 0, i32 8
  %63 = bitcast %struct.move_s* %move249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %63, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end250

if.end250:                                        ; preds = %land.lhs.true235, %if.end228, %if.else245
  %bdp.2 = phi float [ %bdp.1, %if.end228 ], [ 1.000000e+08, %if.else245 ], [ %bdp.1, %land.lhs.true235 ]
  %altlosers.1 = phi i32 [ %altlosers.0405, %if.end228 ], [ %altlosers.0405, %if.else245 ], [ %inc243.altlosers.0, %land.lhs.true235 ]
  %inc251 = add nsw i32 %l.2402, 1
  br label %for.inc253

for.inc253:                                       ; preds = %for.body186, %if.end250
  %l.3 = phi i32 [ %inc251, %if.end250 ], [ %l.2402, %for.body186 ]
  %bdp.3 = phi float [ %bdp.2, %if.end250 ], [ %bdp.0404, %for.body186 ]
  %altlosers.2 = phi i32 [ %altlosers.1, %if.end250 ], [ %altlosers.0405, %for.body186 ]
  %indvars.iv.next431 = add i64 %indvars.iv430, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next431 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end256, label %for.body186

if.end256:                                        ; preds = %while.end180, %for.inc253
  %altlosers.3 = phi i32 [ 0, %while.end180 ], [ %altlosers.2, %for.inc253 ]
  %arraydecay257 = getelementptr inbounds [8 x i8]* %output, i64 0, i64 0
  %64 = bitcast %struct.move_s* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay257) #6
  %65 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool258 = icmp ne i32 %65, 0
  %66 = load i32* @post, align 4, !tbaa !1
  %tobool260 = icmp ne i32 %66, 0
  %or.cond = and i1 %tobool258, %tobool260
  br i1 %or.cond, label %if.then261, label %if.end265

if.then261:                                       ; preds = %if.end256
  %67 = load i32* %14, align 4, !tbaa !0
  %68 = load i32* %15, align 4, !tbaa !0
  %69 = load i32* @maxply, align 4, !tbaa !0
  %call264 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([94 x i8]* @.str2, i64 0, i64 0), i32 %67, i32 %68, i32 %altlosers.3, i32 %69, i32 %firsts.0.lcssa, i32 %alternates.0.lcssa) #6
  br label %if.end265

if.end265:                                        ; preds = %if.then261, %if.end256
  %sub266 = add nsw i32 %legal.1, -1
  %cmp267 = icmp eq i32 %altlosers.3, %sub266
  br i1 %cmp267, label %if.then269, label %if.end289

if.then269:                                       ; preds = %if.end265
  %puts = call i32 @puts(i8* getelementptr inbounds ([29 x i8]* @str, i64 0, i64 0))
  br i1 %cmp425, label %for.body274, label %if.end289

for.body274:                                      ; preds = %if.then269, %for.inc286
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc286 ], [ 0, %if.then269 ]
  %arrayidx276 = getelementptr inbounds [300 x i32]* @rootlosers, i64 0, i64 %indvars.iv
  %70 = load i32* %arrayidx276, align 4, !tbaa !0
  %tobool277 = icmp eq i32 %70, 0
  br i1 %tobool277, label %land.lhs.true278, label %for.inc286

land.lhs.true278:                                 ; preds = %for.body274
  %arrayidx280 = getelementptr inbounds [512 x i32]* %islegal, i64 0, i64 %indvars.iv
  %71 = load i32* %arrayidx280, align 4, !tbaa !0
  %tobool281 = icmp eq i32 %71, 0
  br i1 %tobool281, label %for.inc286, label %if.then282

if.then282:                                       ; preds = %land.lhs.true278
  store i32 1, i32* @forcedwin, align 4, !tbaa !0
  %arrayidx284 = getelementptr inbounds [512 x %struct.move_s]* %moves, i64 0, i64 %indvars.iv
  %72 = bitcast %struct.move_s* %arrayidx284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %72, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end289

for.inc286:                                       ; preds = %land.lhs.true278, %for.body274
  %indvars.iv.next = add i64 %indvars.iv, 1
  %73 = trunc i64 %indvars.iv.next to i32
  %cmp272 = icmp slt i32 %73, %5
  br i1 %cmp272, label %for.body274, label %if.end289

if.end289:                                        ; preds = %if.then269, %for.inc286, %if.then282, %if.end265
  %cmp290 = icmp eq i32 %altlosers.3, %legal.1
  br i1 %cmp290, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.end289
  store i32 1, i32* @alllosers, align 4, !tbaa !0
  br label %if.end293

if.end293:                                        ; preds = %if.then292, %if.end289
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  %74 = load i8** @membuff, align 8, !tbaa !3
  call void @free(i8* %74) #6
  call void @free(i8* %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end293, %if.then27, %if.then15
  call void @llvm.lifetime.end(i64 2048, i8* %2) #2
  call void @llvm.lifetime.end(i64 2048, i8* %1) #2
  call void @llvm.lifetime.end(i64 12288, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare i64 @rtime() #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare i32 @rdifftime(i64, i64) #3

; Function Attrs: optsize
declare i32 @interrupt() #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @proofnumbersearch() #0 {
entry:
  %output = alloca [8192 x i8], align 16
  %PV = alloca [8192 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  %0 = getelementptr inbounds [8192 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %0) #2
  %1 = getelementptr inbounds [8192 x i8]* %PV, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %1) #2
  store i32 1, i32* @nodecount, align 4, !tbaa !0
  store i32 0, i32* @iters, align 4, !tbaa !0
  store i32 0, i32* @frees, align 4, !tbaa !0
  store i32 1, i32* @ply, align 4, !tbaa !0
  store i32 0, i32* @maxply, align 4, !tbaa !0
  store i32 0, i32* @forwards, align 4, !tbaa !0
  %2 = load i32* @hash, align 4, !tbaa !0
  %3 = load i32* @move_number, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4, !tbaa !0
  %4 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool = icmp eq i32 %4, 0
  %cond = zext i1 %not.tobool to i32
  store i32 %cond, i32* @root_to_move, align 4, !tbaa !0
  %call = call i64 @rtime() #6
  %call1 = call noalias i8* @calloc(i64 1, i64 56) #6
  %5 = bitcast i8* %call1 to %struct.node*
  %6 = load i32* @PBSize, align 4, !tbaa !0
  %conv = sext i32 %6 to i64
  %call2 = call noalias i8* @calloc(i64 %conv, i64 56) #6
  store i8* %call2, i8** @membuff, align 8, !tbaa !3
  call void @pn_eval(%struct.node* %5) #5
  %7 = load i8* %call1, align 1, !tbaa !1
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  call void @free(i8* %call1) #6
  %8 = load i8** @membuff, align 8, !tbaa !3
  call void @free(i8* %8) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @set_proof_and_disproof_numbers(%struct.node* %5) #5
  %disproof = getelementptr inbounds i8* %call1, i64 8
  %9 = bitcast i8* %disproof to i32*
  %proof = getelementptr inbounds i8* %call1, i64 4
  %10 = bitcast i8* %proof to i32*
  %11 = load i32* %10, align 4, !tbaa !0
  %cmp5283 = icmp eq i32 %11, 0
  br i1 %cmp5283, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end, %while.cond.backedge
  %.pre293 = phi i32 [ %17, %while.cond.backedge ], [ %11, %if.end ]
  %12 = load i32* %9, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i32* @bufftop, align 4, !tbaa !0
  %conv9 = zext i32 %13 to i64
  %14 = load i32* @PBSize, align 4, !tbaa !0
  %sub10 = add nsw i32 %14, -10000
  %conv11 = sext i32 %sub10 to i64
  %mul = mul i64 %conv11, 56
  %cmp12 = icmp ult i64 %conv9, %mul
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call14 = call %struct.node* @select_most_proving(%struct.node* %5) #5
  call void @develop_node(%struct.node* %call14) #5
  call void @update_ancestors(%struct.node* %call14) #5
  %15 = load i32* @iters, align 4, !tbaa !0
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @iters, align 4, !tbaa !0
  %rem269 = and i32 %inc, 31
  %cmp15 = icmp eq i32 %rem269, 0
  br i1 %cmp15, label %if.then17, label %while.cond.backedge

if.then17:                                        ; preds = %while.body
  %call18 = call i64 @rtime() #6
  %call19 = call i32 @rdifftime(i64 %call18, i64 %call) #6
  %16 = load i32* @pn_time, align 4, !tbaa !0
  %cmp20 = icmp sgt i32 %call19, %16
  br i1 %cmp20, label %land.lhs.true22, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then17, %while.body, %land.lhs.true22
  %17 = load i32* %10, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %17, 0
  br i1 %cmp5, label %while.end, label %land.lhs.true

land.lhs.true22:                                  ; preds = %if.then17
  %call23 = call i32 @interrupt() #6
  %tobool24 = icmp eq i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true22.while.endsplit_crit_edge, label %while.cond.backedge

land.lhs.true22.while.endsplit_crit_edge:         ; preds = %land.lhs.true22
  %.pre.pre = load i32* %10, align 4, !tbaa !0
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge, %land.lhs.true, %land.rhs, %land.lhs.true22.while.endsplit_crit_edge, %if.end
  %18 = phi i32 [ 0, %if.end ], [ %.pre.pre, %land.lhs.true22.while.endsplit_crit_edge ], [ %.pre293, %land.rhs ], [ %.pre293, %land.lhs.true ], [ 0, %while.cond.backedge ]
  %19 = load i32* %9, align 4, !tbaa !0
  %20 = load i32* @nodecount, align 4, !tbaa !0
  %21 = load i32* @frees, align 4, !tbaa !0
  %conv30 = sext i32 %20 to i64
  %mul31 = mul i64 %conv30, 56
  %conv32 = uitofp i64 %mul31 to float
  %div = fmul float %conv32, 0x3EB0000000000000
  %conv33 = fpext float %div to double
  %22 = load i32* @iters, align 4, !tbaa !0
  %23 = load i32* @maxply, align 4, !tbaa !0
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, double %conv33, i32 %22, i32 %23) #6
  %24 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool35 = icmp ne i32 %24, 0
  %25 = load i32* @post, align 4, !tbaa !1
  %tobool37 = icmp ne i32 %25, 0
  %or.cond = and i1 %tobool35, %tobool37
  br i1 %or.cond, label %if.then38, label %if.end42

if.then38:                                        ; preds = %while.end
  %26 = load i32* %10, align 4, !tbaa !0
  %27 = load i32* %9, align 4, !tbaa !0
  %28 = load i32* @nodecount, align 4, !tbaa !0
  %29 = load i32* @forwards, align 4, !tbaa !0
  %30 = load i32* @iters, align 4, !tbaa !0
  %31 = load i32* @maxply, align 4, !tbaa !0
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([90 x i8]* @.str5, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31) #6
  %.pr = load i32* @xb_mode, align 4, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %while.end
  %32 = phi i32 [ %.pr, %if.then38 ], [ %24, %while.end ]
  %tobool43 = icmp eq i32 %32, 0
  br i1 %tobool43, label %if.then44, label %while.end56

if.then44:                                        ; preds = %if.end42
  %call45 = call i64 @rtime() #6
  %call46 = call i32 @rdifftime(i64 %call45, i64 %call) #6
  %conv47 = sitofp i32 %call46 to float
  %conv48 = fpext float %conv47 to double
  %div49 = fdiv double %conv48, 1.000000e+02
  %call50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0), double %div49) #6
  br label %while.end56

while.end56:                                      ; preds = %if.end42, %if.then44
  %33 = load i32* %10, align 4, !tbaa !0
  %cmp58 = icmp eq i32 %33, 0
  br i1 %cmp58, label %if.then60, label %if.else147

if.then60:                                        ; preds = %while.end56
  store i8 1, i8* %call1, align 1, !tbaa !1
  %puts266 = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str22, i64 0, i64 0))
  %call63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #6
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8192, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8192, i32 16, i1 false)
  store i32 1, i32* @ply, align 4, !tbaa !0
  %34 = getelementptr inbounds i8* %call1, i64 2
  %35 = load i8* %34, align 1, !tbaa !1
  %tobool65278 = icmp eq i8 %35, 0
  br i1 %tobool65278, label %while.end118, label %while.body66.lr.ph

while.body66.lr.ph:                               ; preds = %if.then60
  %36 = bitcast %struct.move_s* %tmp to i8*
  br label %while.body66

while.body66:                                     ; preds = %while.body66.lr.ph, %if.end110
  %currentnode.1279 = phi %struct.node* [ %5, %while.body66.lr.ph ], [ %46, %if.end110 ]
  %37 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool67 = icmp eq i32 %37, 0
  %cond68 = zext i1 %not.tobool67 to i32
  %38 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp69 = icmp eq i32 %cond68, %38
  %children = getelementptr inbounds %struct.node* %currentnode.1279, i64 0, i32 6
  %39 = load %struct.node*** %children, align 8, !tbaa !3
  br i1 %cmp69, label %while.cond72.preheader, label %while.cond82.preheader

while.cond72.preheader:                           ; preds = %while.body66
  %proof76 = getelementptr inbounds %struct.node* %currentnode.1279, i64 0, i32 4
  %40 = load i32* %proof76, align 4, !tbaa !0
  br label %while.cond72

while.cond82.preheader:                           ; preds = %while.body66
  %disproof87 = getelementptr inbounds %struct.node* %currentnode.1279, i64 0, i32 5
  %41 = load i32* %disproof87, align 4, !tbaa !0
  br label %while.cond82

while.cond72:                                     ; preds = %while.cond72, %while.cond72.preheader
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %while.cond72 ], [ 0, %while.cond72.preheader ]
  %i.0 = phi i32 [ %inc80, %while.cond72 ], [ 0, %while.cond72.preheader ]
  %arrayidx74 = getelementptr inbounds %struct.node** %39, i64 %indvars.iv288
  %42 = load %struct.node** %arrayidx74, align 8, !tbaa !3
  %proof75 = getelementptr inbounds %struct.node* %42, i64 0, i32 4
  %43 = load i32* %proof75, align 4, !tbaa !0
  %cmp77 = icmp eq i32 %43, %40
  %indvars.iv.next289 = add i64 %indvars.iv288, 1
  %inc80 = add nsw i32 %i.0, 1
  br i1 %cmp77, label %if.end93, label %while.cond72

while.cond82:                                     ; preds = %while.cond82, %while.cond82.preheader
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %while.cond82 ], [ 0, %while.cond82.preheader ]
  %i.1 = phi i32 [ %inc91, %while.cond82 ], [ 0, %while.cond82.preheader ]
  %arrayidx85 = getelementptr inbounds %struct.node** %39, i64 %indvars.iv286
  %44 = load %struct.node** %arrayidx85, align 8, !tbaa !3
  %disproof86 = getelementptr inbounds %struct.node* %44, i64 0, i32 5
  %45 = load i32* %disproof86, align 4, !tbaa !0
  %cmp88 = icmp eq i32 %45, %41
  %indvars.iv.next287 = add i64 %indvars.iv286, 1
  %inc91 = add nsw i32 %i.1, 1
  br i1 %cmp88, label %if.end93, label %while.cond82

if.end93:                                         ; preds = %while.cond72, %while.cond82
  %i.2 = phi i32 [ %i.1, %while.cond82 ], [ %i.0, %while.cond72 ]
  %idxprom94 = sext i32 %i.2 to i64
  %arrayidx96 = getelementptr inbounds %struct.node** %39, i64 %idxprom94
  %46 = load %struct.node** %arrayidx96, align 8, !tbaa !3
  %move97 = getelementptr inbounds %struct.node* %46, i64 0, i32 8
  %47 = bitcast %struct.move_s* %move97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %47, i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @comp_to_coord(%struct.move_s* byval align 8 %tmp, i8* %0) #6
  %call99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* %0) #6
  %call102 = call i8* @strcat(i8* %1, i8* %0) #6
  %strlen = call i64 @strlen(i8* %1)
  %endptr = getelementptr [8192 x i8]* %PV, i64 0, i64 %strlen
  %48 = bitcast i8* %endptr to i16*
  store i16 32, i16* %48, align 1
  call void @make(%struct.move_s* %move97, i32 0) #6
  %49 = load i32* @ply, align 4, !tbaa !0
  %cmp106 = icmp eq i32 %49, 1
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %47, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end93
  store i32 1, i32* @forcedwin, align 4, !tbaa !0
  %expanded = getelementptr inbounds %struct.node* %46, i64 0, i32 2
  %50 = load i8* %expanded, align 1, !tbaa !1
  %tobool65 = icmp eq i8 %50, 0
  br i1 %tobool65, label %while.end111, label %while.body66

while.end111:                                     ; preds = %if.end110
  %cmp113274 = icmp eq %struct.node* %46, %5
  br i1 %cmp113274, label %while.end118, label %while.body115

while.body115:                                    ; preds = %while.end111, %while.body115
  %currentnode.2275 = phi %struct.node* [ %51, %while.body115 ], [ %46, %while.end111 ]
  %move116 = getelementptr inbounds %struct.node* %currentnode.2275, i64 0, i32 8
  call void @unmake(%struct.move_s* %move116, i32 0) #6
  %parent117 = getelementptr inbounds %struct.node* %currentnode.2275, i64 0, i32 7
  %51 = load %struct.node** %parent117, align 8, !tbaa !3
  %cmp113 = icmp eq %struct.node* %51, %5
  br i1 %cmp113, label %while.end118, label %while.body115

while.end118:                                     ; preds = %if.then60, %while.body115, %while.end111
  %52 = phi i32 [ %49, %while.end111 ], [ %49, %while.body115 ], [ 1, %if.then60 ]
  %53 = load i32* @kibitzed, align 4, !tbaa !1
  %tobool119 = icmp eq i32 %53, 0
  %54 = load i32* @xb_mode, align 4, !tbaa !0
  %tobool121 = icmp ne i32 %54, 0
  %or.cond208 = and i1 %tobool119, %tobool121
  %55 = load i32* @post, align 4, !tbaa !1
  %tobool123 = icmp ne i32 %55, 0
  %or.cond209 = and i1 %or.cond208, %tobool123
  br i1 %or.cond209, label %if.then124, label %if.end127

if.then124:                                       ; preds = %while.end118
  store i32 1, i32* @kibitzed, align 4, !tbaa !1
  %div125 = sdiv i32 %52, 2
  %call126 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i32 %div125) #6
  br label %if.end127

if.end127:                                        ; preds = %while.end118, %if.then124
  %cmp128 = icmp eq i32 %52, 1
  br i1 %cmp128, label %land.lhs.true130, label %if.end145

land.lhs.true130:                                 ; preds = %if.end127
  %56 = load i32* %10, align 4, !tbaa !0
  %cmp132 = icmp eq i32 %56, 0
  br i1 %cmp132, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true130
  %57 = load i32* %9, align 4, !tbaa !0
  %cmp135 = icmp eq i32 %57, 0
  br i1 %cmp135, label %if.then137, label %if.end145

if.then137:                                       ; preds = %lor.lhs.false, %land.lhs.true130
  %58 = load i32* @root_to_move, align 4, !tbaa !0
  %cmp138 = icmp eq i32 %58, 0
  br i1 %cmp138, label %if.then140, label %if.else142

if.then140:                                       ; preds = %if.then137
  %puts268 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str24, i64 0, i64 0))
  store i32 3, i32* @result, align 4, !tbaa !0
  br label %if.end145

if.else142:                                       ; preds = %if.then137
  %puts267 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str23, i64 0, i64 0))
  store i32 2, i32* @result, align 4, !tbaa !0
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.else142, %lor.lhs.false, %if.end127
  %putchar = call i32 @putchar(i32 10) #2
  br label %for.cond.preheader

if.else147:                                       ; preds = %while.end56
  %59 = load i32* %9, align 4, !tbaa !0
  %cmp149 = icmp eq i32 %59, 0
  br i1 %cmp149, label %if.then151, label %if.else154

if.then151:                                       ; preds = %if.else147
  store i8 0, i8* %call1, align 1, !tbaa !1
  %puts265 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str21, i64 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %for.cond.preheader

if.else154:                                       ; preds = %if.else147
  store i8 2, i8* %call1, align 1, !tbaa !1
  %puts = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str20, i64 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then151, %if.else154, %if.end145
  %60 = getelementptr inbounds i8* %call1, i64 1
  %61 = load i8* %60, align 1, !tbaa !1
  %cmp160271 = icmp eq i8 %61, 0
  br i1 %cmp160271, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %children163 = getelementptr inbounds i8* %call1, i64 16
  %62 = bitcast i8* %children163 to %struct.node***
  %.pre291 = load %struct.node*** %62, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %bdp.0273 = phi float [ -1.000000e+00, %for.body.lr.ph ], [ %bdp.1, %for.inc ]
  %arrayidx164 = getelementptr inbounds %struct.node** %.pre291, i64 %indvars.iv
  %63 = load %struct.node** %arrayidx164, align 8, !tbaa !3
  %proof165 = getelementptr inbounds %struct.node* %63, i64 0, i32 4
  %64 = load i32* %proof165, align 4, !tbaa !0
  %cmp166 = icmp eq i32 %64, 0
  br i1 %cmp166, label %if.else199, label %if.then168

if.then168:                                       ; preds = %for.body
  %disproof172 = getelementptr inbounds %struct.node* %63, i64 0, i32 5
  %65 = load i32* %disproof172, align 4, !tbaa !0
  %conv173 = sitofp i32 %65 to float
  %conv178 = sitofp i32 %64 to float
  %div179 = fdiv float %conv173, %conv178
  %cmp180 = fcmp ogt float %div179, %bdp.0273
  br i1 %cmp180, label %if.then182, label %for.inc

if.then182:                                       ; preds = %if.then168
  %move197 = getelementptr inbounds %struct.node* %63, i64 0, i32 8
  %66 = bitcast %struct.move_s* %move197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %66, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %for.inc

if.else199:                                       ; preds = %for.body
  %move203 = getelementptr inbounds %struct.node* %63, i64 0, i32 8
  %67 = bitcast %struct.move_s* %move203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %67, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %for.end

for.inc:                                          ; preds = %if.then182, %if.then168
  %bdp.1 = phi float [ %div179, %if.then182 ], [ %bdp.0273, %if.then168 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %conv159 = zext i8 %61 to i32
  %68 = trunc i64 %indvars.iv.next to i32
  %cmp160 = icmp slt i32 %68, %conv159
  br i1 %cmp160, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.inc, %if.else199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_saver to i8*), i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  call void @free(i8* %call1) #6
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  %69 = load i8** @membuff, align 8, !tbaa !3
  call void @free(i8* %69) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end(i64 8192, i8* %1) #2
  call void @llvm.lifetime.end(i64 8192, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #3

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @proofnumbercheck(%struct.move_s* noalias nocapture sret %agg.result, %struct.move_s* byval align 8 %compmove) #0 {
entry:
  %resmove = alloca %struct.move_s, align 4
  %0 = load i32* @piece_count, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 4
  %1 = load i32* @Variant, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 3
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.move_s* %agg.result to i8*
  %3 = bitcast %struct.move_s* %compmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* @nodecount, align 4, !tbaa !0
  store i32 0, i32* @iters, align 4, !tbaa !0
  store i32 0, i32* @frees, align 4, !tbaa !0
  store i32 1, i32* @ply, align 4, !tbaa !0
  store i32 0, i32* @maxply, align 4, !tbaa !0
  call void @make(%struct.move_s* %compmove, i32 0) #6
  %4 = load i32* @hash, align 4, !tbaa !0
  %5 = load i32* @move_number, align 4, !tbaa !0
  %6 = load i32* @ply, align 4, !tbaa !0
  %add = add i32 %5, -1
  %sub = add i32 %add, %6
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %7 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool = icmp eq i32 %7, 0
  %cond = zext i1 %not.tobool to i32
  store i32 %cond, i32* @root_to_move, align 4, !tbaa !0
  %call = call i64 @rtime() #6
  %call2 = call noalias i8* @calloc(i64 1, i64 56) #6
  %8 = bitcast i8* %call2 to %struct.node*
  %9 = load i32* @PBSize, align 4, !tbaa !0
  %conv = sext i32 %9 to i64
  %call3 = call noalias i8* @calloc(i64 %conv, i64 56) #6
  store i8* %call3, i8** @membuff, align 8, !tbaa !3
  call void @pn_eval(%struct.node* %8) #5
  call void @set_proof_and_disproof_numbers(%struct.node* %8) #5
  %disproof = getelementptr inbounds i8* %call2, i64 8
  %10 = bitcast i8* %disproof to i32*
  %proof = getelementptr inbounds i8* %call2, i64 4
  %11 = bitcast i8* %proof to i32*
  %12 = load i32* %11, align 4, !tbaa !0
  %cmp468 = icmp eq i32 %12, 0
  br i1 %cmp468, label %while.end36, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end, %while.cond.backedge
  %.pre70 = phi i32 [ %18, %while.cond.backedge ], [ %12, %if.end ]
  %13 = load i32* %10, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %while.end36, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true6
  %14 = load i32* @bufftop, align 4, !tbaa !0
  %conv9 = zext i32 %14 to i64
  %15 = load i32* @PBSize, align 4, !tbaa !0
  %sub10 = add nsw i32 %15, -10000
  %conv11 = sext i32 %sub10 to i64
  %mul = mul i64 %conv11, 56
  %cmp12 = icmp ult i64 %conv9, %mul
  br i1 %cmp12, label %while.body, label %while.end36

while.body:                                       ; preds = %land.rhs
  %call14 = call %struct.node* @select_most_proving(%struct.node* %8) #5
  call void @develop_node(%struct.node* %call14) #5
  call void @update_ancestors(%struct.node* %call14) #5
  %16 = load i32* @iters, align 4, !tbaa !0
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @iters, align 4, !tbaa !0
  %rem66 = and i32 %inc, 31
  %cmp15 = icmp eq i32 %rem66, 0
  br i1 %cmp15, label %if.then17, label %while.cond.backedge

if.then17:                                        ; preds = %while.body
  %call18 = call i64 @rtime() #6
  %call19 = call i32 @rdifftime(i64 %call18, i64 %call) #6
  %17 = load i32* @pn_time, align 4, !tbaa !0
  %cmp20 = icmp sgt i32 %call19, %17
  br i1 %cmp20, label %if.then17.while.endsplit_crit_edge, label %while.cond.backedge

if.then17.while.endsplit_crit_edge:               ; preds = %if.then17
  %.pre.pre = load i32* %11, align 4, !tbaa !0
  br label %while.end36

while.cond.backedge:                              ; preds = %if.then17, %while.body
  %18 = load i32* %11, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %18, 0
  br i1 %cmp4, label %while.end36, label %land.lhs.true6

while.end36:                                      ; preds = %if.end, %if.then17.while.endsplit_crit_edge, %land.rhs, %land.lhs.true6, %while.cond.backedge
  %19 = phi i32 [ 0, %if.end ], [ %.pre.pre, %if.then17.while.endsplit_crit_edge ], [ %.pre70, %land.rhs ], [ %.pre70, %land.lhs.true6 ], [ 0, %while.cond.backedge ]
  %20 = load i32* %10, align 4, !tbaa !0
  %21 = load i32* @nodecount, align 4, !tbaa !0
  %22 = load i32* @frees, align 4, !tbaa !0
  %conv27 = sext i32 %21 to i64
  %mul28 = mul i64 %conv27, 56
  %conv29 = uitofp i64 %mul28 to float
  %div = fmul float %conv29, 0x3EB0000000000000
  %conv30 = fpext float %div to double
  %23 = load i32* @iters, align 4, !tbaa !0
  %call31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str17, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, double %conv30, i32 %23) #6
  call void @unmake(%struct.move_s* %compmove, i32 0) #6
  %24 = load i32* %11, align 4, !tbaa !0
  %cmp38 = icmp eq i32 %24, 0
  %25 = bitcast %struct.move_s* %resmove to i8*
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %while.end36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  store i32 1, i32* @s_threat, align 4, !tbaa !0
  br label %if.end49

if.else:                                          ; preds = %while.end36
  %26 = bitcast %struct.move_s* %compmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then40
  store i32 0, i32* @bufftop, align 4, !tbaa !0
  call void @free(i8* %call2) #6
  %27 = load i8** @membuff, align 8, !tbaa !3
  call void @free(i8* %27) #6
  %28 = bitcast %struct.move_s* %agg.result to i8*
  %29 = bitcast %struct.move_s* %resmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 4, i1 false), !tbaa.struct !4
  br label %return

return:                                           ; preds = %if.end49, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !0, i64 16, i64 4, metadata !0, i64 20, i64 4, metadata !0}
