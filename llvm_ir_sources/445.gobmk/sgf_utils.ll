; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }

@.str = private unnamed_addr constant [4 x i8] c"P: \00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"%c%c \00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@str = private unnamed_addr constant [5 x i8] c"None\00"

; Function Attrs: nounwind optsize uwtable
define i32 @get_moveX(%struct.SGFProperty_t* nocapture %property, i32 %boardsize) #0 {
entry:
  %value = getelementptr inbounds %struct.SGFProperty_t* %property, i64 0, i32 2
  %0 = load i8** %value, align 8, !tbaa !0
  %call = tail call i64 @strlen(i8* %0) #5
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %0, i64 1
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  %call2 = tail call i32 @toupper(i32 %conv) #6
  %sub = add nsw i32 %call2, -65
  %cmp3 = icmp slt i32 %sub, %boardsize
  %sub. = select i1 %cmp3, i32 %sub, i32 -1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %sub., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @get_moveY(%struct.SGFProperty_t* nocapture %property, i32 %boardsize) #0 {
entry:
  %value = getelementptr inbounds %struct.SGFProperty_t* %property, i64 0, i32 2
  %0 = load i8** %value, align 8, !tbaa !0
  %call = tail call i64 @strlen(i8* %0) #5
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8* %0, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  %call2 = tail call i32 @toupper(i32 %conv) #6
  %sub = add nsw i32 %call2, -65
  %cmp3 = icmp slt i32 %sub, %boardsize
  %sub. = select i1 %cmp3, i32 %sub, i32 -1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %sub., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_moveXY(%struct.SGFProperty_t* nocapture %property, i32* nocapture %i, i32* nocapture %j, i32 %boardsize) #0 {
entry:
  %call = tail call i32 @get_moveX(%struct.SGFProperty_t* %property, i32 %boardsize) #7
  store i32 %call, i32* %i, align 4, !tbaa !3
  %call1 = tail call i32 @get_moveY(%struct.SGFProperty_t* %property, i32 %boardsize) #7
  store i32 %call1, i32* %j, align 4, !tbaa !3
  %0 = load i32* %i, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, -1
  %cmp2 = icmp eq i32 %call1, -1
  %or.cond = and i1 %cmp, %cmp2
  %1 = zext i1 %or.cond to i32
  %retval.0 = xor i32 %1, 1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @show_sgf_properties(%struct.SGFNode_t* nocapture %node) #0 {
entry:
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #6
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0
  %0 = load %struct.SGFProperty_t** %props, align 8, !tbaa !0
  %tobool = icmp eq %struct.SGFProperty_t* %0, null
  br i1 %tobool, label %if.then, label %while.body

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str, i64 0, i64 0))
  br label %return

while.body:                                       ; preds = %entry, %while.body
  %propcount.033 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %sgf_prop.032 = phi %struct.SGFProperty_t* [ %2, %while.body ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.032, i64 0, i32 1
  %1 = load i16* %name, align 2, !tbaa !4
  %conv = sext i16 %1 to i32
  %and = and i32 %conv, 255
  %and6 = lshr i32 %conv, 8
  %shr30 = and i32 %and6, 255
  %call7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %and, i32 %shr30) #6
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.032, i64 0, i32 0
  %2 = load %struct.SGFProperty_t** %next, align 8, !tbaa !0
  %inc = add nsw i32 %propcount.033, 1
  %tobool3 = icmp eq %struct.SGFProperty_t* %2, null
  br i1 %tobool3, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 %inc) #6
  %next9 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 3
  %3 = load %struct.SGFNode_t** %next9, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.SGFNode_t* %3, null
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %while.end
  %putchar29 = tail call i32 @putchar(i32 110) #4
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then11
  %child = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 2
  %4 = load %struct.SGFNode_t** %child, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.SGFNode_t* %4, null
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %putchar28 = tail call i32 @putchar(i32 99) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then14
  %putchar = tail call i32 @putchar(i32 10) #4
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ %inc, %if.end16 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @show_sgf_tree(%struct.SGFNode_t* nocapture %node) #0 {
entry:
  %call = tail call i32 @show_sgf_properties(%struct.SGFNode_t* %node) #7
  %child = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 2
  %0 = load %struct.SGFNode_t** %child, align 8, !tbaa !0
  %tobool = icmp eq %struct.SGFNode_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @show_sgf_tree(%struct.SGFNode_t* %0) #7
  %add = add nsw i32 %call2, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %n.0 = phi i32 [ %add, %if.then ], [ 1, %entry ]
  %next = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 3
  %1 = load %struct.SGFNode_t** %next, align 8, !tbaa !0
  %tobool3 = icmp eq %struct.SGFNode_t* %1, null
  br i1 %tobool3, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @show_sgf_tree(%struct.SGFNode_t* %1) #7
  %add7 = add nsw i32 %call6, %n.0
  ret i32 %add7

if.end8:                                          ; preds = %if.end
  ret i32 %n.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_markup_node(%struct.SGFNode_t* nocapture %node) #3 {
entry:
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0
  %0 = load %struct.SGFProperty_t** %props, align 8, !tbaa !0
  %tobool = icmp eq %struct.SGFProperty_t* %0, null
  br i1 %tobool, label %return, label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.07 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 1
  %1 = load i16* %name, align 2, !tbaa !4
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 21059, label %return
    i32 20819, label %return
    i32 21076, label %return
    i32 16717, label %return
    i32 19778, label %return
    i32 20292, label %return
    i32 21577, label %return
    i32 17748, label %return
  ]

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 0
  %2 = load %struct.SGFProperty_t** %next, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null
  br i1 %tobool2, label %return, label %while.body

return:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %sw.epilog, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_move_node(%struct.SGFNode_t* nocapture %node) #3 {
entry:
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0
  %0 = load %struct.SGFProperty_t** %props, align 8, !tbaa !0
  %tobool = icmp eq %struct.SGFProperty_t* %0, null
  br i1 %tobool, label %return, label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.07 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 1
  %1 = load i16* %name, align 2, !tbaa !4
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 8258, label %return
    i32 8279, label %return
  ]

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 0
  %2 = load %struct.SGFProperty_t** %next, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null
  br i1 %tobool2, label %return, label %while.body

return:                                           ; preds = %while.body, %while.body, %sw.epilog, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %while.body ], [ 1, %while.body ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @is_pass_node(%struct.SGFNode_t* nocapture %node, i32 %boardsize) #0 {
entry:
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0
  %0 = load %struct.SGFProperty_t** %props, align 8, !tbaa !0
  %tobool = icmp eq %struct.SGFProperty_t* %0, null
  br i1 %tobool, label %return, label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.010 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.010, i64 0, i32 1
  %1 = load i16* %name, align 2, !tbaa !4
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 8258, label %sw.bb
    i32 8279, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %call.i = tail call i32 @get_moveX(%struct.SGFProperty_t* %sgf_prop.010, i32 %boardsize) #6
  %call1.i = tail call i32 @get_moveY(%struct.SGFProperty_t* %sgf_prop.010, i32 %boardsize) #6
  %cmp.i = icmp eq i32 %call.i, -1
  %cmp2.i = icmp eq i32 %call1.i, -1
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  %lnot.ext = zext i1 %or.cond.i to i32
  br label %return

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.010, i64 0, i32 0
  %2 = load %struct.SGFProperty_t** %next, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null
  br i1 %tobool2, label %return, label %while.body

return:                                           ; preds = %sw.epilog, %entry, %sw.bb
  %retval.0 = phi i32 [ %lnot.ext, %sw.bb ], [ 0, %entry ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @find_move(%struct.SGFNode_t* nocapture %node) #3 {
entry:
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0
  %0 = load %struct.SGFProperty_t** %props, align 8, !tbaa !0
  %tobool = icmp eq %struct.SGFProperty_t* %0, null
  br i1 %tobool, label %return, label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.08 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.08, i64 0, i32 1
  %1 = load i16* %name, align 2, !tbaa !4
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 8258, label %return.loopexit
    i32 8279, label %return
  ]

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.08, i64 0, i32 0
  %2 = load %struct.SGFProperty_t** %next, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null
  br i1 %tobool2, label %return.loopexit, label %while.body

return.loopexit:                                  ; preds = %sw.epilog, %while.body
  %retval.0.ph = phi i32 [ 2, %while.body ], [ 0, %sw.epilog ]
  br label %return

return:                                           ; preds = %while.body, %return.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %return.loopexit ], [ 1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
