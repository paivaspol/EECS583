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
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %property}, i64 0, metadata !22), !dbg !84
  tail call void @llvm.dbg.value(metadata !{i32 %boardsize}, i64 0, metadata !23), !dbg !84
  %value = getelementptr inbounds %struct.SGFProperty_t* %property, i64 0, i32 2, !dbg !85
  %0 = load i8** %value, align 8, !dbg !85, !tbaa !86
  %call = tail call i64 @strlen(i8* %0) #6, !dbg !85
  %cmp = icmp ult i64 %call, 2, !dbg !85
  br i1 %cmp, label %return, label %if.end, !dbg !85

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %0, i64 1, !dbg !89
  %1 = load i8* %arrayidx, align 1, !dbg !89, !tbaa !87
  %conv = sext i8 %1 to i32, !dbg !89
  %call2 = tail call i32 @toupper(i32 %conv) #7, !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !25), !dbg !89
  %sub = add nsw i32 %call2, -65, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !24), !dbg !91
  %cmp3 = icmp slt i32 %sub, %boardsize, !dbg !92
  %sub. = select i1 %cmp3, i32 %sub, i32 -1, !dbg !93
  br label %return, !dbg !93

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %sub., %if.end ]
  ret i32 %retval.0, !dbg !94
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @get_moveY(%struct.SGFProperty_t* nocapture %property, i32 %boardsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %property}, i64 0, metadata !29), !dbg !95
  tail call void @llvm.dbg.value(metadata !{i32 %boardsize}, i64 0, metadata !30), !dbg !95
  %value = getelementptr inbounds %struct.SGFProperty_t* %property, i64 0, i32 2, !dbg !96
  %0 = load i8** %value, align 8, !dbg !96, !tbaa !86
  %call = tail call i64 @strlen(i8* %0) #6, !dbg !96
  %cmp = icmp ult i64 %call, 2, !dbg !96
  br i1 %cmp, label %return, label %if.end, !dbg !96

if.end:                                           ; preds = %entry
  %1 = load i8* %0, align 1, !dbg !97, !tbaa !87
  %conv = sext i8 %1 to i32, !dbg !97
  %call2 = tail call i32 @toupper(i32 %conv) #7, !dbg !97
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !32), !dbg !97
  %sub = add nsw i32 %call2, -65, !dbg !99
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !31), !dbg !99
  %cmp3 = icmp slt i32 %sub, %boardsize, !dbg !100
  %sub. = select i1 %cmp3, i32 %sub, i32 -1, !dbg !101
  br label %return, !dbg !101

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %sub., %if.end ]
  ret i32 %retval.0, !dbg !102
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_moveXY(%struct.SGFProperty_t* nocapture %property, i32* nocapture %i, i32* nocapture %j, i32 %boardsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %property}, i64 0, metadata !39), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !40), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !41), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %boardsize}, i64 0, metadata !42), !dbg !103
  %call = tail call i32 @get_moveX(%struct.SGFProperty_t* %property, i32 %boardsize) #8, !dbg !104
  store i32 %call, i32* %i, align 4, !dbg !104, !tbaa !105
  %call1 = tail call i32 @get_moveY(%struct.SGFProperty_t* %property, i32 %boardsize) #8, !dbg !106
  store i32 %call1, i32* %j, align 4, !dbg !106, !tbaa !105
  %0 = load i32* %i, align 4, !dbg !107, !tbaa !105
  %cmp = icmp eq i32 %0, -1, !dbg !107
  %cmp2 = icmp eq i32 %call1, -1, !dbg !107
  %or.cond = and i1 %cmp, %cmp2, !dbg !107
  %1 = zext i1 %or.cond to i32, !dbg !107
  %retval.0 = xor i32 %1, 1, !dbg !107
  ret i32 %retval.0, !dbg !108
}

; Function Attrs: nounwind optsize uwtable
define i32 @show_sgf_properties(%struct.SGFNode_t* nocapture %node) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFNode_t* %node}, i64 0, metadata !56), !dbg !109
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !110
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !111
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !112
  %0 = load %struct.SGFProperty_t** %props, align 8, !dbg !112, !tbaa !86
  %tobool = icmp eq %struct.SGFProperty_t* %0, null, !dbg !112
  br i1 %tobool, label %if.then, label %while.body, !dbg !112

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str, i64 0, i64 0)), !dbg !113
  br label %return, !dbg !115

while.body:                                       ; preds = %entry, %while.body
  %propcount.033 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %sgf_prop.032 = phi %struct.SGFProperty_t* [ %2, %while.body ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.032, i64 0, i32 1, !dbg !116
  %1 = load i16* %name, align 2, !dbg !116, !tbaa !119
  %conv = sext i16 %1 to i32, !dbg !116
  %and = and i32 %conv, 255, !dbg !116
  %and6 = lshr i32 %conv, 8, !dbg !116
  %shr30 = and i32 %and6, 255, !dbg !116
  %call7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %and, i32 %shr30) #7, !dbg !116
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.032, i64 0, i32 0, !dbg !120
  %2 = load %struct.SGFProperty_t** %next, align 8, !dbg !120, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %2}, i64 0, metadata !57), !dbg !120
  %inc = add nsw i32 %propcount.033, 1, !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !58), !dbg !121
  %tobool3 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !122
  br i1 %tobool3, label %while.end, label %while.body, !dbg !122

while.end:                                        ; preds = %while.body
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 %inc) #7, !dbg !123
  %next9 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 3, !dbg !124
  %3 = load %struct.SGFNode_t** %next9, align 8, !dbg !124, !tbaa !86
  %tobool10 = icmp eq %struct.SGFNode_t* %3, null, !dbg !124
  br i1 %tobool10, label %if.end, label %if.then11, !dbg !124

if.then11:                                        ; preds = %while.end
  %putchar29 = tail call i32 @putchar(i32 110) #5, !dbg !125
  br label %if.end, !dbg !125

if.end:                                           ; preds = %while.end, %if.then11
  %child = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 2, !dbg !126
  %4 = load %struct.SGFNode_t** %child, align 8, !dbg !126, !tbaa !86
  %tobool13 = icmp eq %struct.SGFNode_t* %4, null, !dbg !126
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !126

if.then14:                                        ; preds = %if.end
  %putchar28 = tail call i32 @putchar(i32 99) #5, !dbg !127
  br label %if.end16, !dbg !127

if.end16:                                         ; preds = %if.end, %if.then14
  %putchar = tail call i32 @putchar(i32 10) #5, !dbg !128
  br label %return, !dbg !129

return:                                           ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ %inc, %if.end16 ], [ 0, %if.then ]
  ret i32 %retval.0, !dbg !130
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @show_sgf_tree(%struct.SGFNode_t* nocapture %node) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFNode_t* %node}, i64 0, metadata !61), !dbg !131
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !62), !dbg !132
  tail call void @llvm.dbg.value(metadata !133, i64 0, metadata !62), !dbg !134
  %call = tail call i32 @show_sgf_properties(%struct.SGFNode_t* %node) #8, !dbg !135
  %child = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 2, !dbg !136
  %0 = load %struct.SGFNode_t** %child, align 8, !dbg !136, !tbaa !86
  %tobool = icmp eq %struct.SGFNode_t* %0, null, !dbg !136
  br i1 %tobool, label %if.end, label %if.then, !dbg !136

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @show_sgf_tree(%struct.SGFNode_t* %0) #8, !dbg !137
  %add = add nsw i32 %call2, 1, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !62), !dbg !137
  br label %if.end, !dbg !137

if.end:                                           ; preds = %entry, %if.then
  %n.0 = phi i32 [ %add, %if.then ], [ 1, %entry ]
  %next = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 3, !dbg !138
  %1 = load %struct.SGFNode_t** %next, align 8, !dbg !138, !tbaa !86
  %tobool3 = icmp eq %struct.SGFNode_t* %1, null, !dbg !138
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !138

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @show_sgf_tree(%struct.SGFNode_t* %1) #8, !dbg !139
  %add7 = add nsw i32 %call6, %n.0, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !62), !dbg !139
  ret i32 %add7, !dbg !140

if.end8:                                          ; preds = %if.end
  ret i32 %n.0, !dbg !140
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_markup_node(%struct.SGFNode_t* nocapture %node) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFNode_t* %node}, i64 0, metadata !65), !dbg !141
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !142
  %0 = load %struct.SGFProperty_t** %props, align 8, !dbg !142, !tbaa !86
  %tobool = icmp eq %struct.SGFProperty_t* %0, null, !dbg !142
  br i1 %tobool, label %return, label %while.body, !dbg !142

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.07 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 1, !dbg !143
  %1 = load i16* %name, align 2, !dbg !143, !tbaa !119
  %conv = sext i16 %1 to i32, !dbg !143
  switch i32 %conv, label %sw.epilog [
    i32 21059, label %return
    i32 20819, label %return
    i32 21076, label %return
    i32 16717, label %return
    i32 19778, label %return
    i32 20292, label %return
    i32 21577, label %return
    i32 17748, label %return
  ], !dbg !143

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 0, !dbg !145
  %2 = load %struct.SGFProperty_t** %next, align 8, !dbg !145, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %2}, i64 0, metadata !66), !dbg !145
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !146
  br i1 %tobool2, label %return, label %while.body, !dbg !146

return:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %sw.epilog, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 1, %while.body ], [ 0, %sw.epilog ]
  ret i32 %retval.0, !dbg !147
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_move_node(%struct.SGFNode_t* nocapture %node) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFNode_t* %node}, i64 0, metadata !69), !dbg !148
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !149
  %0 = load %struct.SGFProperty_t** %props, align 8, !dbg !149, !tbaa !86
  %tobool = icmp eq %struct.SGFProperty_t* %0, null, !dbg !149
  br i1 %tobool, label %return, label %while.body, !dbg !149

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.07 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 1, !dbg !150
  %1 = load i16* %name, align 2, !dbg !150, !tbaa !119
  %conv = sext i16 %1 to i32, !dbg !150
  switch i32 %conv, label %sw.epilog [
    i32 8258, label %return
    i32 8279, label %return
  ], !dbg !150

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.07, i64 0, i32 0, !dbg !152
  %2 = load %struct.SGFProperty_t** %next, align 8, !dbg !152, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %2}, i64 0, metadata !70), !dbg !152
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !153
  br i1 %tobool2, label %return, label %while.body, !dbg !153

return:                                           ; preds = %while.body, %while.body, %sw.epilog, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %while.body ], [ 1, %while.body ], [ 0, %sw.epilog ]
  ret i32 %retval.0, !dbg !154
}

; Function Attrs: nounwind optsize uwtable
define i32 @is_pass_node(%struct.SGFNode_t* nocapture %node, i32 %boardsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFNode_t* %node}, i64 0, metadata !75), !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %boardsize}, i64 0, metadata !76), !dbg !155
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !156
  %0 = load %struct.SGFProperty_t** %props, align 8, !dbg !156, !tbaa !86
  %tobool = icmp eq %struct.SGFProperty_t* %0, null, !dbg !156
  br i1 %tobool, label %return, label %while.body, !dbg !156

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.010 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.010, i64 0, i32 1, !dbg !157
  %1 = load i16* %name, align 2, !dbg !157, !tbaa !119
  %conv = sext i16 %1 to i32, !dbg !157
  switch i32 %conv, label %sw.epilog [
    i32 8258, label %sw.bb
    i32 8279, label %sw.bb
  ], !dbg !157

sw.bb:                                            ; preds = %while.body, %while.body
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %sgf_prop.010}, i64 0, metadata !159) #5, !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %boardsize}, i64 0, metadata !163) #5, !dbg !162
  %call.i = tail call i32 @get_moveX(%struct.SGFProperty_t* %sgf_prop.010, i32 %boardsize) #7, !dbg !164
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !78), !dbg !164
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !165), !dbg !162
  %call1.i = tail call i32 @get_moveY(%struct.SGFProperty_t* %sgf_prop.010, i32 %boardsize) #7, !dbg !166
  tail call void @llvm.dbg.value(metadata !{i32 %call1.i}, i64 0, metadata !79), !dbg !166
  tail call void @llvm.dbg.value(metadata !{i32 %call1.i}, i64 0, metadata !167), !dbg !162
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !168
  %cmp2.i = icmp eq i32 %call1.i, -1, !dbg !168
  %or.cond.i = and i1 %cmp.i, %cmp2.i, !dbg !168
  %lnot.ext = zext i1 %or.cond.i to i32, !dbg !160
  br label %return, !dbg !160

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.010, i64 0, i32 0, !dbg !169
  %2 = load %struct.SGFProperty_t** %next, align 8, !dbg !169, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %2}, i64 0, metadata !77), !dbg !169
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !170
  br i1 %tobool2, label %return, label %while.body, !dbg !170

return:                                           ; preds = %sw.epilog, %entry, %sw.bb
  %retval.0 = phi i32 [ %lnot.ext, %sw.bb ], [ 0, %entry ], [ 0, %sw.epilog ]
  ret i32 %retval.0, !dbg !171
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @find_move(%struct.SGFNode_t* nocapture %node) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.SGFNode_t* %node}, i64 0, metadata !82), !dbg !172
  %props = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !173
  %0 = load %struct.SGFProperty_t** %props, align 8, !dbg !173, !tbaa !86
  %tobool = icmp eq %struct.SGFProperty_t* %0, null, !dbg !173
  br i1 %tobool, label %return, label %while.body, !dbg !173

while.body:                                       ; preds = %entry, %sw.epilog
  %sgf_prop.08 = phi %struct.SGFProperty_t* [ %2, %sw.epilog ], [ %0, %entry ]
  %name = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.08, i64 0, i32 1, !dbg !174
  %1 = load i16* %name, align 2, !dbg !174, !tbaa !119
  %conv = sext i16 %1 to i32, !dbg !174
  switch i32 %conv, label %sw.epilog [
    i32 8258, label %return.loopexit
    i32 8279, label %return
  ], !dbg !174

sw.epilog:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.08, i64 0, i32 0, !dbg !176
  %2 = load %struct.SGFProperty_t** %next, align 8, !dbg !176, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct.SGFProperty_t* %2}, i64 0, metadata !83), !dbg !176
  %tobool2 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !177
  br i1 %tobool2, label %return.loopexit, label %while.body, !dbg !177

return.loopexit:                                  ; preds = %sw.epilog, %while.body
  %retval.0.ph = phi i32 [ 2, %while.body ], [ 0, %sw.epilog ]
  br label %return

return:                                           ; preds = %while.body, %return.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %return.loopexit ], [ 1, %while.body ]
  ret i32 %retval.0, !dbg !178
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @putchar(i32) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !27, metadata !34, metadata !43, metadata !59, metadata !63, metadata !67, metadata !71, metadata !80}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_moveX", metadata !"get_moveX", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFProperty_t*, i32)* @get_moveX, null, null, metadata !21, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [get_moveX]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SGFProperty]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"SGFProperty", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [SGFProperty] [line 58, size 0, align 0, offset 0] [from SGFProperty_t]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"SGFProperty_t", i32 54, i64 192, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [SGFProperty_t] [line 54, size 192, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgftree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !16, metadata !18}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 55, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 55, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SGFProperty_t]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"name", i32 56, i64 16, i64 16, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [name] [line 56, size 16, align 16, offset 64] [from short]
!17 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"value", i32 57, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [value] [line 57, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25}
!22 = metadata !{i32 786689, metadata !4, metadata !"property", metadata !5, i32 16777252, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [property] [line 36]
!23 = metadata !{i32 786689, metadata !4, metadata !"boardsize", metadata !5, i32 33554468, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [boardsize] [line 36]
!24 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 38]
!25 = metadata !{i32 786688, metadata !26, metadata !"__res", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 42]
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_moveY", metadata !"get_moveY", metadata !"", i32 54, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFProperty_t*, i32)* @get_moveY, null, null, metadata !28, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [get_moveY]
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786689, metadata !27, metadata !"property", metadata !5, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [property] [line 54]
!30 = metadata !{i32 786689, metadata !27, metadata !"boardsize", metadata !5, i32 33554486, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [boardsize] [line 54]
!31 = metadata !{i32 786688, metadata !27, metadata !"j", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 56]
!32 = metadata !{i32 786688, metadata !33, metadata !"__res", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 60]
!33 = metadata !{i32 786443, metadata !1, metadata !27, i32 60, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_moveXY", metadata !"get_moveXY", metadata !"", i32 76, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFProperty_t*, i32*, i32*, i32)* @get_moveXY, null, null, metadata !38, i32 77} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 77] [get_moveXY]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !8, metadata !9, metadata !37, metadata !37, metadata !8}
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42}
!39 = metadata !{i32 786689, metadata !34, metadata !"property", metadata !5, i32 16777292, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [property] [line 76]
!40 = metadata !{i32 786689, metadata !34, metadata !"i", metadata !5, i32 33554508, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 76]
!41 = metadata !{i32 786689, metadata !34, metadata !"j", metadata !5, i32 50331724, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 76]
!42 = metadata !{i32 786689, metadata !34, metadata !"boardsize", metadata !5, i32 67108940, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [boardsize] [line 76]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"show_sgf_properties", metadata !"show_sgf_properties", metadata !"", i32 93, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFNode_t*)* @show_sgf_properties, null, null, metadata !55, i32 94} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 94] [show_sgf_properties]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !8, metadata !46}
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SGFNode]
!47 = metadata !{i32 786454, metadata !1, null, metadata !"SGFNode", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [SGFNode] [line 66, size 0, align 0, offset 0] [from SGFNode_t]
!48 = metadata !{i32 786451, metadata !12, null, metadata !"SGFNode_t", i32 61, i64 256, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [SGFNode_t] [line 61, size 256, align 64, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !53, metadata !54}
!50 = metadata !{i32 786445, metadata !12, metadata !48, metadata !"props", i32 62, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [props] [line 62, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786445, metadata !12, metadata !48, metadata !"parent", i32 63, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [parent] [line 63, size 64, align 64, offset 64] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SGFNode_t]
!53 = metadata !{i32 786445, metadata !12, metadata !48, metadata !"child", i32 64, i64 64, i64 64, i64 128, i32 0, metadata !52} ; [ DW_TAG_member ] [child] [line 64, size 64, align 64, offset 128] [from ]
!54 = metadata !{i32 786445, metadata !12, metadata !48, metadata !"next", i32 65, i64 64, i64 64, i64 192, i32 0, metadata !52} ; [ DW_TAG_member ] [next] [line 65, size 64, align 64, offset 192] [from ]
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786689, metadata !43, metadata !"node", metadata !5, i32 16777309, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 93]
!57 = metadata !{i32 786688, metadata !43, metadata !"sgf_prop", metadata !5, i32 95, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sgf_prop] [line 95]
!58 = metadata !{i32 786688, metadata !43, metadata !"propcount", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [propcount] [line 96]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"show_sgf_tree", metadata !"show_sgf_tree", metadata !"", i32 130, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFNode_t*)* @show_sgf_tree, null, null, metadata !60, i32 131} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 131] [show_sgf_tree]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786689, metadata !59, metadata !"node", metadata !5, i32 16777346, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 130]
!62 = metadata !{i32 786688, metadata !59, metadata !"n", metadata !5, i32 132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 132]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"is_markup_node", metadata !"is_markup_node", metadata !"", i32 153, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFNode_t*)* @is_markup_node, null, null, metadata !64, i32 154} ; [ DW_TAG_subprogram ] [line 153] [def] [scope 154] [is_markup_node]
!64 = metadata !{metadata !65, metadata !66}
!65 = metadata !{i32 786689, metadata !63, metadata !"node", metadata !5, i32 16777369, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 153]
!66 = metadata !{i32 786688, metadata !63, metadata !"sgf_prop", metadata !5, i32 155, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sgf_prop] [line 155]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"is_move_node", metadata !"is_move_node", metadata !"", i32 191, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFNode_t*)* @is_move_node, null, null, metadata !68, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [is_move_node]
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786689, metadata !67, metadata !"node", metadata !5, i32 16777407, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 191]
!70 = metadata !{i32 786688, metadata !67, metadata !"sgf_prop", metadata !5, i32 193, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sgf_prop] [line 193]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"is_pass_node", metadata !"is_pass_node", metadata !"", i32 222, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFNode_t*, i32)* @is_pass_node, null, null, metadata !74, i32 223} ; [ DW_TAG_subprogram ] [line 222] [def] [scope 223] [is_pass_node]
!72 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !8, metadata !46, metadata !8}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!75 = metadata !{i32 786689, metadata !71, metadata !"node", metadata !5, i32 16777438, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 222]
!76 = metadata !{i32 786689, metadata !71, metadata !"boardsize", metadata !5, i32 33554654, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [boardsize] [line 222]
!77 = metadata !{i32 786688, metadata !71, metadata !"sgf_prop", metadata !5, i32 224, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sgf_prop] [line 224]
!78 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 225]
!79 = metadata !{i32 786688, metadata !71, metadata !"j", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 225]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"find_move", metadata !"find_move", metadata !"", i32 254, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.SGFNode_t*)* @find_move, null, null, metadata !81, i32 255} ; [ DW_TAG_subprogram ] [line 254] [def] [scope 255] [find_move]
!81 = metadata !{metadata !82, metadata !83}
!82 = metadata !{i32 786689, metadata !80, metadata !"node", metadata !5, i32 16777470, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 254]
!83 = metadata !{i32 786688, metadata !80, metadata !"sgf_prop", metadata !5, i32 256, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sgf_prop] [line 256]
!84 = metadata !{i32 36, i32 0, metadata !4, null}
!85 = metadata !{i32 39, i32 0, metadata !4, null}
!86 = metadata !{metadata !"any pointer", metadata !87}
!87 = metadata !{metadata !"omnipotent char", metadata !88}
!88 = metadata !{metadata !"Simple C/C++ TBAA"}
!89 = metadata !{i32 42, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !26, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!91 = metadata !{i32 42, i32 0, metadata !26, null}
!92 = metadata !{i32 43, i32 0, metadata !4, null}
!93 = metadata !{i32 46, i32 0, metadata !4, null}
!94 = metadata !{i32 47, i32 0, metadata !4, null}
!95 = metadata !{i32 54, i32 0, metadata !27, null}
!96 = metadata !{i32 57, i32 0, metadata !27, null}
!97 = metadata !{i32 60, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !33, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!99 = metadata !{i32 60, i32 0, metadata !33, null}
!100 = metadata !{i32 61, i32 0, metadata !27, null}
!101 = metadata !{i32 64, i32 0, metadata !27, null}
!102 = metadata !{i32 65, i32 0, metadata !27, null}
!103 = metadata !{i32 76, i32 0, metadata !34, null}
!104 = metadata !{i32 78, i32 0, metadata !34, null}
!105 = metadata !{metadata !"int", metadata !87}
!106 = metadata !{i32 79, i32 0, metadata !34, null}
!107 = metadata !{i32 81, i32 0, metadata !34, null}
!108 = metadata !{i32 84, i32 0, metadata !34, null}
!109 = metadata !{i32 93, i32 0, metadata !43, null}
!110 = metadata !{i32 98, i32 0, metadata !43, null}
!111 = metadata !{i32 100, i32 0, metadata !43, null}
!112 = metadata !{i32 101, i32 0, metadata !43, null}
!113 = metadata !{i32 102, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !43, i32 101, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!115 = metadata !{i32 103, i32 0, metadata !114, null}
!116 = metadata !{i32 108, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 107, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!118 = metadata !{i32 786443, metadata !1, metadata !43, i32 105, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!119 = metadata !{metadata !"short", metadata !87}
!120 = metadata !{i32 109, i32 0, metadata !117, null}
!121 = metadata !{i32 110, i32 0, metadata !117, null}
!122 = metadata !{i32 107, i32 0, metadata !118, null}
!123 = metadata !{i32 113, i32 0, metadata !118, null}
!124 = metadata !{i32 114, i32 0, metadata !118, null}
!125 = metadata !{i32 115, i32 0, metadata !118, null}
!126 = metadata !{i32 116, i32 0, metadata !118, null}
!127 = metadata !{i32 117, i32 0, metadata !118, null}
!128 = metadata !{i32 118, i32 0, metadata !118, null}
!129 = metadata !{i32 121, i32 0, metadata !43, null}
!130 = metadata !{i32 122, i32 0, metadata !43, null}
!131 = metadata !{i32 130, i32 0, metadata !59, null}
!132 = metadata !{i32 132, i32 0, metadata !59, null}
!133 = metadata !{i32 1}
!134 = metadata !{i32 134, i32 0, metadata !59, null}
!135 = metadata !{i32 135, i32 0, metadata !59, null}
!136 = metadata !{i32 138, i32 0, metadata !59, null}
!137 = metadata !{i32 139, i32 0, metadata !59, null}
!138 = metadata !{i32 141, i32 0, metadata !59, null}
!139 = metadata !{i32 142, i32 0, metadata !59, null}
!140 = metadata !{i32 144, i32 0, metadata !59, null}
!141 = metadata !{i32 153, i32 0, metadata !63, null}
!142 = metadata !{i32 159, i32 0, metadata !63, null}
!143 = metadata !{i32 164, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !63, i32 163, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!145 = metadata !{i32 178, i32 0, metadata !144, null}
!146 = metadata !{i32 163, i32 0, metadata !63, null}
!147 = metadata !{i32 182, i32 0, metadata !63, null}
!148 = metadata !{i32 191, i32 0, metadata !67, null}
!149 = metadata !{i32 197, i32 0, metadata !67, null}
!150 = metadata !{i32 202, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !67, i32 201, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!152 = metadata !{i32 210, i32 0, metadata !151, null}
!153 = metadata !{i32 201, i32 0, metadata !67, null}
!154 = metadata !{i32 213, i32 0, metadata !67, null}
!155 = metadata !{i32 222, i32 0, metadata !71, null}
!156 = metadata !{i32 229, i32 0, metadata !71, null}
!157 = metadata !{i32 234, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !71, i32 233, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!159 = metadata !{i32 786689, metadata !34, metadata !"property", metadata !5, i32 16777292, metadata !9, i32 0, metadata !160} ; [ DW_TAG_arg_variable ] [property] [line 76]
!160 = metadata !{i32 237, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !158, i32 234, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!162 = metadata !{i32 76, i32 0, metadata !34, metadata !160}
!163 = metadata !{i32 786689, metadata !34, metadata !"boardsize", metadata !5, i32 67108940, metadata !8, i32 0, metadata !160} ; [ DW_TAG_arg_variable ] [boardsize] [line 76]
!164 = metadata !{i32 78, i32 0, metadata !34, metadata !160}
!165 = metadata !{i32 786689, metadata !34, metadata !"i", metadata !5, i32 33554508, metadata !37, i32 0, metadata !160} ; [ DW_TAG_arg_variable ] [i] [line 76]
!166 = metadata !{i32 79, i32 0, metadata !34, metadata !160}
!167 = metadata !{i32 786689, metadata !34, metadata !"j", metadata !5, i32 50331724, metadata !37, i32 0, metadata !160} ; [ DW_TAG_arg_variable ] [j] [line 76]
!168 = metadata !{i32 81, i32 0, metadata !34, metadata !160}
!169 = metadata !{i32 242, i32 0, metadata !158, null}
!170 = metadata !{i32 233, i32 0, metadata !71, null}
!171 = metadata !{i32 246, i32 0, metadata !71, null}
!172 = metadata !{i32 254, i32 0, metadata !80, null}
!173 = metadata !{i32 260, i32 0, metadata !80, null}
!174 = metadata !{i32 265, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !80, i32 264, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c]
!176 = metadata !{i32 275, i32 0, metadata !175, null}
!177 = metadata !{i32 264, i32 0, metadata !80, null}
!178 = metadata !{i32 278, i32 0, metadata !80, null}
