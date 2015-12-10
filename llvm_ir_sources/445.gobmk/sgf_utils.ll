; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }

@.str = private unnamed_addr constant [4 x i8] c"P: \00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"%c%c \00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@str = private unnamed_addr constant [5 x i8] c"None\00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_moveX(%struct.SGFProperty_t* nocapture readonly %property, i32 %boardsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %property, i64 0, metadata !22, metadata !90), !dbg !91
  tail call void @llvm.dbg.value(metadata i32 %boardsize, i64 0, metadata !23, metadata !90), !dbg !92
  %1 = getelementptr inbounds %struct.SGFProperty_t* %property, i64 0, i32 2, !dbg !93
  %2 = load i8** %1, align 8, !dbg !93, !tbaa !95
  %3 = tail call i64 @strlen(i8* %2) #7, !dbg !101
  %4 = icmp ult i64 %3, 2, !dbg !102
  br i1 %4, label %12, label %5, !dbg !103

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8* %2, i64 1, !dbg !104
  %7 = load i8* %6, align 1, !dbg !104, !tbaa !105
  %8 = sext i8 %7 to i32, !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !85, metadata !90) #6, !dbg !107
  %9 = tail call i32 @__toupper(i32 %8) #7, !dbg !109
  %10 = add nsw i32 %9, -65, !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !24, metadata !90), !dbg !111
  %11 = icmp slt i32 %10, %boardsize, !dbg !112
  %. = select i1 %11, i32 %10, i32 -1, !dbg !114
  br label %12, !dbg !114

; <label>:12                                      ; preds = %5, %0
  %.0 = phi i32 [ -1, %0 ], [ %., %5 ]
  ret i32 %.0, !dbg !115
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_moveY(%struct.SGFProperty_t* nocapture readonly %property, i32 %boardsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %property, i64 0, metadata !27, metadata !90), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %boardsize, i64 0, metadata !28, metadata !90), !dbg !117
  %1 = getelementptr inbounds %struct.SGFProperty_t* %property, i64 0, i32 2, !dbg !118
  %2 = load i8** %1, align 8, !dbg !118, !tbaa !95
  %3 = tail call i64 @strlen(i8* %2) #7, !dbg !120
  %4 = icmp ult i64 %3, 2, !dbg !121
  br i1 %4, label %11, label %5, !dbg !122

; <label>:5                                       ; preds = %0
  %6 = load i8* %2, align 1, !dbg !123, !tbaa !105
  %7 = sext i8 %6 to i32, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !85, metadata !90) #6, !dbg !125
  %8 = tail call i32 @__toupper(i32 %7) #7, !dbg !127
  %9 = add nsw i32 %8, -65, !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !29, metadata !90), !dbg !129
  %10 = icmp slt i32 %9, %boardsize, !dbg !130
  %. = select i1 %10, i32 %9, i32 -1, !dbg !132
  br label %11, !dbg !132

; <label>:11                                      ; preds = %5, %0
  %.0 = phi i32 [ -1, %0 ], [ %., %5 ]
  ret i32 %.0, !dbg !133
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_moveXY(%struct.SGFProperty_t* nocapture readonly %property, i32* nocapture %i, i32* nocapture %j, i32 %boardsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %property, i64 0, metadata !35, metadata !90), !dbg !134
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !36, metadata !90), !dbg !135
  tail call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !37, metadata !90), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %boardsize, i64 0, metadata !38, metadata !90), !dbg !137
  %1 = tail call i32 @get_moveX(%struct.SGFProperty_t* %property, i32 %boardsize) #8, !dbg !138
  store i32 %1, i32* %i, align 4, !dbg !139, !tbaa !140
  %2 = tail call i32 @get_moveY(%struct.SGFProperty_t* %property, i32 %boardsize) #8, !dbg !142
  store i32 %2, i32* %j, align 4, !dbg !143, !tbaa !140
  %3 = load i32* %i, align 4, !dbg !144, !tbaa !140
  %4 = and i32 %3, %2, !dbg !146
  %not. = icmp ne i32 %4, -1, !dbg !146
  %.0 = zext i1 %not. to i32, !dbg !146
  ret i32 %.0, !dbg !147
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @show_sgf_properties(%struct.SGFNode_t* nocapture readonly %node) #0 {
  tail call void @llvm.dbg.value(metadata %struct.SGFNode_t* %node, i64 0, metadata !52, metadata !90), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !54, metadata !90), !dbg !149
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !150
  %2 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !151
  %3 = load %struct.SGFProperty_t** %2, align 8, !dbg !151, !tbaa !153
  %4 = icmp eq %struct.SGFProperty_t* %3, null, !dbg !155
  br i1 %4, label %5, label %.lr.ph, !dbg !156

; <label>:5                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str, i64 0, i64 0)), !dbg !157
  br label %28, !dbg !159

.lr.ph:                                           ; preds = %0, %.lr.ph
  %propcount.04 = phi i32 [ %15, %.lr.ph ], [ 0, %0 ]
  %sgf_prop.03 = phi %struct.SGFProperty_t* [ %14, %.lr.ph ], [ %3, %0 ]
  %6 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.03, i64 0, i32 1, !dbg !160
  %7 = load i16* %6, align 2, !dbg !160, !tbaa !163
  %8 = sext i16 %7 to i32, !dbg !164
  %9 = and i32 %8, 255, !dbg !165
  %10 = lshr i32 %8, 8, !dbg !166
  %11 = and i32 %10, 255, !dbg !166
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %9, i32 %11) #7, !dbg !167
  %13 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.03, i64 0, i32 0, !dbg !168
  %14 = load %struct.SGFProperty_t** %13, align 8, !dbg !168, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %14, i64 0, metadata !53, metadata !90), !dbg !170
  %15 = add nuw nsw i32 %propcount.04, 1, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !54, metadata !90), !dbg !149
  %16 = icmp eq %struct.SGFProperty_t* %14, null, !dbg !172
  br i1 %16, label %._crit_edge, label %.lr.ph, !dbg !172

._crit_edge:                                      ; preds = %.lr.ph
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 %15) #7, !dbg !173
  %18 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 3, !dbg !174
  %19 = load %struct.SGFNode_t** %18, align 8, !dbg !174, !tbaa !176
  %20 = icmp eq %struct.SGFNode_t* %19, null, !dbg !177
  br i1 %20, label %22, label %21, !dbg !178

; <label>:21                                      ; preds = %._crit_edge
  %putchar2 = tail call i32 @putchar(i32 110) #6, !dbg !179
  br label %22, !dbg !179

; <label>:22                                      ; preds = %._crit_edge, %21
  %23 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 2, !dbg !180
  %24 = load %struct.SGFNode_t** %23, align 8, !dbg !180, !tbaa !182
  %25 = icmp eq %struct.SGFNode_t* %24, null, !dbg !183
  br i1 %25, label %27, label %26, !dbg !184

; <label>:26                                      ; preds = %22
  %putchar1 = tail call i32 @putchar(i32 99) #6, !dbg !185
  br label %27, !dbg !185

; <label>:27                                      ; preds = %22, %26
  %putchar = tail call i32 @putchar(i32 10) #6, !dbg !186
  br label %28, !dbg !187

; <label>:28                                      ; preds = %27, %5
  %.0 = phi i32 [ %15, %27 ], [ 0, %5 ]
  ret i32 %.0, !dbg !188
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @show_sgf_tree(%struct.SGFNode_t* nocapture readonly %node) #0 {
  tail call void @llvm.dbg.value(metadata %struct.SGFNode_t* %node, i64 0, metadata !57, metadata !90), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !90), !dbg !190
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !58, metadata !90), !dbg !190
  %1 = tail call i32 @show_sgf_properties(%struct.SGFNode_t* %node) #8, !dbg !191
  %2 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 2, !dbg !192
  %3 = load %struct.SGFNode_t** %2, align 8, !dbg !192, !tbaa !182
  %4 = icmp eq %struct.SGFNode_t* %3, null, !dbg !194
  br i1 %4, label %8, label %5, !dbg !195

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @show_sgf_tree(%struct.SGFNode_t* %3) #8, !dbg !196
  %7 = add nsw i32 %6, 1, !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !58, metadata !90), !dbg !190
  br label %8, !dbg !198

; <label>:8                                       ; preds = %0, %5
  %n.0 = phi i32 [ %7, %5 ], [ 1, %0 ]
  %9 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 3, !dbg !199
  %10 = load %struct.SGFNode_t** %9, align 8, !dbg !199, !tbaa !176
  %11 = icmp eq %struct.SGFNode_t* %10, null, !dbg !201
  br i1 %11, label %15, label %12, !dbg !202

; <label>:12                                      ; preds = %8
  %13 = tail call i32 @show_sgf_tree(%struct.SGFNode_t* %10) #8, !dbg !203
  %14 = add nsw i32 %13, %n.0, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !58, metadata !90), !dbg !190
  ret i32 %14, !dbg !205

; <label>:15                                      ; preds = %8
  ret i32 %n.0, !dbg !205
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_markup_node(%struct.SGFNode_t* nocapture readonly %node) #3 {
  tail call void @llvm.dbg.value(metadata %struct.SGFNode_t* %node, i64 0, metadata !61, metadata !90), !dbg !206
  %1 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !207
  %2 = load %struct.SGFProperty_t** %1, align 8, !dbg !207, !tbaa !153
  %3 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !209
  br i1 %3, label %.loopexit, label %.lr.ph, !dbg !210

.lr.ph:                                           ; preds = %0, %7
  %sgf_prop.01 = phi %struct.SGFProperty_t* [ %9, %7 ], [ %2, %0 ]
  %4 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.01, i64 0, i32 1, !dbg !211
  %5 = load i16* %4, align 2, !dbg !211, !tbaa !163
  %6 = sext i16 %5 to i32, !dbg !213
  switch i32 %6, label %7 [
    i32 21059, label %.loopexit
    i32 20819, label %.loopexit
    i32 21076, label %.loopexit
    i32 16717, label %.loopexit
    i32 19778, label %.loopexit
    i32 20292, label %.loopexit
    i32 21577, label %.loopexit
    i32 17748, label %.loopexit
  ], !dbg !214

; <label>:7                                       ; preds = %.lr.ph
  %8 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.01, i64 0, i32 0, !dbg !215
  %9 = load %struct.SGFProperty_t** %8, align 8, !dbg !215, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %9, i64 0, metadata !62, metadata !90), !dbg !216
  %10 = icmp eq %struct.SGFProperty_t* %9, null, !dbg !217
  br i1 %10, label %.loopexit, label %.lr.ph, !dbg !217

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %7, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %7 ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  ret i32 %.0, !dbg !218
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_move_node(%struct.SGFNode_t* nocapture readonly %node) #3 {
  tail call void @llvm.dbg.value(metadata %struct.SGFNode_t* %node, i64 0, metadata !65, metadata !90), !dbg !219
  %1 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !220
  %2 = load %struct.SGFProperty_t** %1, align 8, !dbg !220, !tbaa !153
  %3 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !222
  br i1 %3, label %.loopexit, label %.lr.ph, !dbg !223

.lr.ph:                                           ; preds = %0, %7
  %sgf_prop.01 = phi %struct.SGFProperty_t* [ %9, %7 ], [ %2, %0 ]
  %4 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.01, i64 0, i32 1, !dbg !224
  %5 = load i16* %4, align 2, !dbg !224, !tbaa !163
  %6 = sext i16 %5 to i32, !dbg !226
  switch i32 %6, label %7 [
    i32 8258, label %.loopexit
    i32 8279, label %.loopexit
  ], !dbg !227

; <label>:7                                       ; preds = %.lr.ph
  %8 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.01, i64 0, i32 0, !dbg !228
  %9 = load %struct.SGFProperty_t** %8, align 8, !dbg !228, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %9, i64 0, metadata !66, metadata !90), !dbg !229
  %10 = icmp eq %struct.SGFProperty_t* %9, null, !dbg !230
  br i1 %10, label %.loopexit, label %.lr.ph, !dbg !230

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph, %7, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %7 ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  ret i32 %.0, !dbg !231
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @is_pass_node(%struct.SGFNode_t* nocapture readonly %node, i32 %boardsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct.SGFNode_t* %node, i64 0, metadata !71, metadata !90), !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %boardsize, i64 0, metadata !72, metadata !90), !dbg !233
  %1 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !234
  %2 = load %struct.SGFProperty_t** %1, align 8, !dbg !234, !tbaa !153
  %3 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !236
  br i1 %3, label %.loopexit, label %.lr.ph, !dbg !237

.lr.ph:                                           ; preds = %0, %13
  %sgf_prop.02 = phi %struct.SGFProperty_t* [ %15, %13 ], [ %2, %0 ]
  %4 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.02, i64 0, i32 1, !dbg !238
  %5 = load i16* %4, align 2, !dbg !238, !tbaa !163
  %6 = sext i16 %5 to i32, !dbg !240
  switch i32 %6, label %13 [
    i32 8258, label %7
    i32 8279, label %7
  ], !dbg !241

; <label>:7                                       ; preds = %.lr.ph, %.lr.ph
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %15, i64 0, metadata !35, metadata !90) #6, !dbg !242
  tail call void @llvm.dbg.value(metadata i32 %boardsize, i64 0, metadata !38, metadata !90) #6, !dbg !245
  %8 = tail call i32 @get_moveX(%struct.SGFProperty_t* %sgf_prop.02, i32 %boardsize) #7, !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !36, metadata !90), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !74, metadata !90), !dbg !248
  %9 = tail call i32 @get_moveY(%struct.SGFProperty_t* %sgf_prop.02, i32 %boardsize) #7, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !37, metadata !90), !dbg !250
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !75, metadata !90), !dbg !251
  %10 = and i32 %9, %8, !dbg !252
  %11 = icmp eq i32 %10, -1, !dbg !253
  %12 = zext i1 %11 to i32, !dbg !253
  br label %.loopexit, !dbg !254

; <label>:13                                      ; preds = %.lr.ph
  %14 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.02, i64 0, i32 0, !dbg !255
  %15 = load %struct.SGFProperty_t** %14, align 8, !dbg !255, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %15, i64 0, metadata !73, metadata !90), !dbg !256
  %16 = icmp eq %struct.SGFProperty_t* %15, null, !dbg !257
  br i1 %16, label %.loopexit, label %.lr.ph, !dbg !257

.loopexit:                                        ; preds = %13, %0, %7
  %.0 = phi i32 [ %12, %7 ], [ 0, %0 ], [ 0, %13 ]
  ret i32 %.0, !dbg !258
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @find_move(%struct.SGFNode_t* nocapture readonly %node) #3 {
  tail call void @llvm.dbg.value(metadata %struct.SGFNode_t* %node, i64 0, metadata !78, metadata !90), !dbg !259
  %1 = getelementptr inbounds %struct.SGFNode_t* %node, i64 0, i32 0, !dbg !260
  %2 = load %struct.SGFProperty_t** %1, align 8, !dbg !260, !tbaa !153
  %3 = icmp eq %struct.SGFProperty_t* %2, null, !dbg !262
  br i1 %3, label %.loopexit, label %.lr.ph, !dbg !263

.lr.ph:                                           ; preds = %0, %7
  %sgf_prop.01 = phi %struct.SGFProperty_t* [ %9, %7 ], [ %2, %0 ]
  %4 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.01, i64 0, i32 1, !dbg !264
  %5 = load i16* %4, align 2, !dbg !264, !tbaa !163
  %6 = sext i16 %5 to i32, !dbg !266
  switch i32 %6, label %7 [
    i32 8258, label %.loopexit
    i32 8279, label %.loopexit4
  ], !dbg !267

; <label>:7                                       ; preds = %.lr.ph
  %8 = getelementptr inbounds %struct.SGFProperty_t* %sgf_prop.01, i64 0, i32 0, !dbg !268
  %9 = load %struct.SGFProperty_t** %8, align 8, !dbg !268, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.SGFProperty_t* %9, i64 0, metadata !79, metadata !90), !dbg !269
  %10 = icmp eq %struct.SGFProperty_t* %9, null, !dbg !270
  br i1 %10, label %.loopexit, label %.lr.ph, !dbg !270

.loopexit4:                                       ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %7, %.loopexit4, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %.loopexit4 ], [ 2, %.lr.ph ], [ 0, %7 ]
  ret i32 %.0, !dbg !271
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: nounwind
declare i32 @putchar(i32) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!86, !87, !88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/sgf/sgf_utils.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{!6, !25, !30, !39, !55, !59, !63, !67, !76, !80}
!6 = !DISubprogram(name: "get_moveX", scope: !1, file: !1, line: 36, type: !7, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFProperty_t*, i32)* @get_moveX, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{!4, !9, !4}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "SGFProperty", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/sgf/sgftree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "SGFProperty_t", file: !11, line: 54, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 55, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !11, line: 56, baseType: !17, size: 16, align: 16, offset: 64)
!17 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !12, file: !11, line: 57, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "property", arg: 1, scope: !6, file: !1, line: 36, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "boardsize", arg: 2, scope: !6, file: !1, line: 36, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !6, file: !1, line: 38, type: !4)
!25 = !DISubprogram(name: "get_moveY", scope: !1, file: !1, line: 54, type: !7, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFProperty_t*, i32)* @get_moveY, variables: !26)
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "property", arg: 1, scope: !25, file: !1, line: 54, type: !9)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "boardsize", arg: 2, scope: !25, file: !1, line: 54, type: !4)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !25, file: !1, line: 56, type: !4)
!30 = !DISubprogram(name: "get_moveXY", scope: !1, file: !1, line: 76, type: !31, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFProperty_t*, i32*, i32*, i32)* @get_moveXY, variables: !34)
!31 = !DISubroutineType(types: !32)
!32 = !{!4, !9, !33, !33, !4}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!34 = !{!35, !36, !37, !38}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "property", arg: 1, scope: !30, file: !1, line: 76, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !30, file: !1, line: 76, type: !33)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 3, scope: !30, file: !1, line: 76, type: !33)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "boardsize", arg: 4, scope: !30, file: !1, line: 76, type: !4)
!39 = !DISubprogram(name: "show_sgf_properties", scope: !1, file: !1, line: 93, type: !40, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFNode_t*)* @show_sgf_properties, variables: !51)
!40 = !DISubroutineType(types: !41)
!41 = !{!4, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "SGFNode", file: !11, line: 66, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "SGFNode_t", file: !11, line: 61, size: 256, align: 64, elements: !45)
!45 = !{!46, !47, !49, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !44, file: !11, line: 62, baseType: !9, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !11, line: 63, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !44, file: !11, line: 64, baseType: !48, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !11, line: 65, baseType: !48, size: 64, align: 64, offset: 192)
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !39, file: !1, line: 93, type: !42)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sgf_prop", scope: !39, file: !1, line: 95, type: !9)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "propcount", scope: !39, file: !1, line: 96, type: !4)
!55 = !DISubprogram(name: "show_sgf_tree", scope: !1, file: !1, line: 130, type: !40, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFNode_t*)* @show_sgf_tree, variables: !56)
!56 = !{!57, !58}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !55, file: !1, line: 130, type: !42)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !55, file: !1, line: 132, type: !4)
!59 = !DISubprogram(name: "is_markup_node", scope: !1, file: !1, line: 153, type: !40, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFNode_t*)* @is_markup_node, variables: !60)
!60 = !{!61, !62}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !59, file: !1, line: 153, type: !42)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sgf_prop", scope: !59, file: !1, line: 155, type: !9)
!63 = !DISubprogram(name: "is_move_node", scope: !1, file: !1, line: 191, type: !40, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFNode_t*)* @is_move_node, variables: !64)
!64 = !{!65, !66}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !63, file: !1, line: 191, type: !42)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sgf_prop", scope: !63, file: !1, line: 193, type: !9)
!67 = !DISubprogram(name: "is_pass_node", scope: !1, file: !1, line: 222, type: !68, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFNode_t*, i32)* @is_pass_node, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!4, !42, !4}
!70 = !{!71, !72, !73, !74, !75}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !67, file: !1, line: 222, type: !42)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "boardsize", arg: 2, scope: !67, file: !1, line: 222, type: !4)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sgf_prop", scope: !67, file: !1, line: 224, type: !9)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !67, file: !1, line: 225, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !67, file: !1, line: 225, type: !4)
!76 = !DISubprogram(name: "find_move", scope: !1, file: !1, line: 254, type: !40, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.SGFNode_t*)* @find_move, variables: !77)
!77 = !{!78, !79}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 1, scope: !76, file: !1, line: 254, type: !42)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sgf_prop", scope: !76, file: !1, line: 256, type: !9)
!80 = !DISubprogram(name: "toupper", scope: !81, file: !81, line: 298, type: !82, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !84)
!81 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!82 = !DISubroutineType(types: !83)
!83 = !{!4, !4}
!84 = !{!85}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !80, file: !81, line: 298, type: !4)
!86 = !{i32 2, !"Dwarf Version", i32 2}
!87 = !{i32 2, !"Debug Info Version", i32 700000003}
!88 = !{i32 1, !"PIC Level", i32 2}
!89 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!90 = !DIExpression()
!91 = !DILocation(line: 36, column: 24, scope: !6)
!92 = !DILocation(line: 36, column: 38, scope: !6)
!93 = !DILocation(line: 39, column: 24, scope: !94)
!94 = distinct !DILexicalBlock(scope: !6, file: !1, line: 39, column: 7)
!95 = !{!96, !97, i64 16}
!96 = !{!"SGFProperty_t", !97, i64 0, !100, i64 8, !97, i64 16}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!"short", !98, i64 0}
!101 = !DILocation(line: 39, column: 7, scope: !94)
!102 = !DILocation(line: 39, column: 31, scope: !94)
!103 = !DILocation(line: 39, column: 7, scope: !6)
!104 = !DILocation(line: 42, column: 21, scope: !6)
!105 = !{!98, !98, i64 0}
!106 = !DILocation(line: 42, column: 15, scope: !6)
!107 = !DILocation(line: 298, column: 13, scope: !80, inlinedAt: !108)
!108 = distinct !DILocation(line: 42, column: 7, scope: !6)
!109 = !DILocation(line: 300, column: 17, scope: !80, inlinedAt: !108)
!110 = !DILocation(line: 42, column: 41, scope: !6)
!111 = !DILocation(line: 38, column: 7, scope: !6)
!112 = !DILocation(line: 43, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !6, file: !1, line: 43, column: 7)
!114 = !DILocation(line: 46, column: 3, scope: !6)
!115 = !DILocation(line: 47, column: 1, scope: !6)
!116 = !DILocation(line: 54, column: 24, scope: !25)
!117 = !DILocation(line: 54, column: 38, scope: !25)
!118 = !DILocation(line: 57, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !25, file: !1, line: 57, column: 7)
!120 = !DILocation(line: 57, column: 7, scope: !119)
!121 = !DILocation(line: 57, column: 31, scope: !119)
!122 = !DILocation(line: 57, column: 7, scope: !25)
!123 = !DILocation(line: 60, column: 21, scope: !25)
!124 = !DILocation(line: 60, column: 15, scope: !25)
!125 = !DILocation(line: 298, column: 13, scope: !80, inlinedAt: !126)
!126 = distinct !DILocation(line: 60, column: 7, scope: !25)
!127 = !DILocation(line: 300, column: 17, scope: !80, inlinedAt: !126)
!128 = !DILocation(line: 60, column: 41, scope: !25)
!129 = !DILocation(line: 56, column: 7, scope: !25)
!130 = !DILocation(line: 61, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !25, file: !1, line: 61, column: 7)
!132 = !DILocation(line: 64, column: 3, scope: !25)
!133 = !DILocation(line: 65, column: 1, scope: !25)
!134 = !DILocation(line: 76, column: 25, scope: !30)
!135 = !DILocation(line: 76, column: 40, scope: !30)
!136 = !DILocation(line: 76, column: 48, scope: !30)
!137 = !DILocation(line: 76, column: 55, scope: !30)
!138 = !DILocation(line: 78, column: 8, scope: !30)
!139 = !DILocation(line: 78, column: 6, scope: !30)
!140 = !{!141, !141, i64 0}
!141 = !{!"int", !98, i64 0}
!142 = !DILocation(line: 79, column: 8, scope: !30)
!143 = !DILocation(line: 79, column: 6, scope: !30)
!144 = !DILocation(line: 81, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !30, file: !1, line: 81, column: 7)
!146 = !DILocation(line: 81, column: 16, scope: !145)
!147 = !DILocation(line: 85, column: 1, scope: !30)
!148 = !DILocation(line: 93, column: 30, scope: !39)
!149 = !DILocation(line: 96, column: 7, scope: !39)
!150 = !DILocation(line: 100, column: 3, scope: !39)
!151 = !DILocation(line: 101, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !39, file: !1, line: 101, column: 7)
!153 = !{!154, !97, i64 0}
!154 = !{!"SGFNode_t", !97, i64 0, !97, i64 8, !97, i64 16, !97, i64 24}
!155 = !DILocation(line: 101, column: 8, scope: !152)
!156 = !DILocation(line: 101, column: 7, scope: !39)
!157 = !DILocation(line: 102, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 101, column: 21)
!159 = !DILocation(line: 103, column: 5, scope: !158)
!160 = !DILocation(line: 108, column: 33, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 107, column: 22)
!162 = distinct !DILexicalBlock(scope: !152, file: !1, line: 105, column: 8)
!163 = !{!96, !100, i64 8}
!164 = !DILocation(line: 108, column: 23, scope: !161)
!165 = !DILocation(line: 108, column: 38, scope: !161)
!166 = !DILocation(line: 108, column: 73, scope: !161)
!167 = !DILocation(line: 108, column: 7, scope: !161)
!168 = !DILocation(line: 109, column: 28, scope: !161)
!169 = !{!96, !97, i64 0}
!170 = !DILocation(line: 95, column: 16, scope: !39)
!171 = !DILocation(line: 110, column: 16, scope: !161)
!172 = !DILocation(line: 107, column: 5, scope: !162)
!173 = !DILocation(line: 113, column: 5, scope: !162)
!174 = !DILocation(line: 114, column: 15, scope: !175)
!175 = distinct !DILexicalBlock(scope: !162, file: !1, line: 114, column: 9)
!176 = !{!154, !97, i64 24}
!177 = !DILocation(line: 114, column: 9, scope: !175)
!178 = !DILocation(line: 114, column: 9, scope: !162)
!179 = !DILocation(line: 115, column: 7, scope: !175)
!180 = !DILocation(line: 116, column: 15, scope: !181)
!181 = distinct !DILexicalBlock(scope: !162, file: !1, line: 116, column: 9)
!182 = !{!154, !97, i64 16}
!183 = !DILocation(line: 116, column: 9, scope: !181)
!184 = !DILocation(line: 116, column: 9, scope: !162)
!185 = !DILocation(line: 117, column: 7, scope: !181)
!186 = !DILocation(line: 118, column: 5, scope: !162)
!187 = !DILocation(line: 121, column: 3, scope: !39)
!188 = !DILocation(line: 122, column: 1, scope: !39)
!189 = !DILocation(line: 130, column: 24, scope: !55)
!190 = !DILocation(line: 132, column: 7, scope: !55)
!191 = !DILocation(line: 135, column: 3, scope: !55)
!192 = !DILocation(line: 138, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !55, file: !1, line: 138, column: 7)
!194 = !DILocation(line: 138, column: 7, scope: !193)
!195 = !DILocation(line: 138, column: 7, scope: !55)
!196 = !DILocation(line: 139, column: 10, scope: !193)
!197 = !DILocation(line: 139, column: 7, scope: !193)
!198 = !DILocation(line: 139, column: 5, scope: !193)
!199 = !DILocation(line: 141, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !55, file: !1, line: 141, column: 7)
!201 = !DILocation(line: 141, column: 7, scope: !200)
!202 = !DILocation(line: 141, column: 7, scope: !55)
!203 = !DILocation(line: 142, column: 10, scope: !200)
!204 = !DILocation(line: 142, column: 7, scope: !200)
!205 = !DILocation(line: 144, column: 3, scope: !55)
!206 = !DILocation(line: 153, column: 25, scope: !59)
!207 = !DILocation(line: 159, column: 14, scope: !208)
!208 = distinct !DILexicalBlock(scope: !59, file: !1, line: 159, column: 7)
!209 = !DILocation(line: 159, column: 8, scope: !208)
!210 = !DILocation(line: 159, column: 7, scope: !59)
!211 = !DILocation(line: 164, column: 23, scope: !212)
!212 = distinct !DILexicalBlock(scope: !59, file: !1, line: 163, column: 20)
!213 = !DILocation(line: 164, column: 13, scope: !212)
!214 = !DILocation(line: 164, column: 5, scope: !212)
!215 = !DILocation(line: 178, column: 26, scope: !212)
!216 = !DILocation(line: 155, column: 16, scope: !59)
!217 = !DILocation(line: 163, column: 3, scope: !59)
!218 = !DILocation(line: 183, column: 1, scope: !59)
!219 = !DILocation(line: 191, column: 23, scope: !63)
!220 = !DILocation(line: 197, column: 14, scope: !221)
!221 = distinct !DILexicalBlock(scope: !63, file: !1, line: 197, column: 7)
!222 = !DILocation(line: 197, column: 8, scope: !221)
!223 = !DILocation(line: 197, column: 7, scope: !63)
!224 = !DILocation(line: 202, column: 23, scope: !225)
!225 = distinct !DILexicalBlock(scope: !63, file: !1, line: 201, column: 20)
!226 = !DILocation(line: 202, column: 13, scope: !225)
!227 = !DILocation(line: 202, column: 5, scope: !225)
!228 = !DILocation(line: 210, column: 26, scope: !225)
!229 = !DILocation(line: 193, column: 16, scope: !63)
!230 = !DILocation(line: 201, column: 3, scope: !63)
!231 = !DILocation(line: 214, column: 1, scope: !63)
!232 = !DILocation(line: 222, column: 23, scope: !67)
!233 = !DILocation(line: 222, column: 33, scope: !67)
!234 = !DILocation(line: 229, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !67, file: !1, line: 229, column: 7)
!236 = !DILocation(line: 229, column: 8, scope: !235)
!237 = !DILocation(line: 229, column: 7, scope: !67)
!238 = !DILocation(line: 234, column: 23, scope: !239)
!239 = distinct !DILexicalBlock(scope: !67, file: !1, line: 233, column: 20)
!240 = !DILocation(line: 234, column: 13, scope: !239)
!241 = !DILocation(line: 234, column: 5, scope: !239)
!242 = !DILocation(line: 76, column: 25, scope: !30, inlinedAt: !243)
!243 = distinct !DILocation(line: 237, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !1, line: 234, column: 29)
!245 = !DILocation(line: 76, column: 55, scope: !30, inlinedAt: !243)
!246 = !DILocation(line: 78, column: 8, scope: !30, inlinedAt: !243)
!247 = !DILocation(line: 76, column: 40, scope: !30, inlinedAt: !243)
!248 = !DILocation(line: 225, column: 7, scope: !67)
!249 = !DILocation(line: 79, column: 8, scope: !30, inlinedAt: !243)
!250 = !DILocation(line: 76, column: 48, scope: !30, inlinedAt: !243)
!251 = !DILocation(line: 225, column: 10, scope: !67)
!252 = !DILocation(line: 81, column: 16, scope: !145, inlinedAt: !243)
!253 = !DILocation(line: 237, column: 14, scope: !244)
!254 = !DILocation(line: 237, column: 7, scope: !244)
!255 = !DILocation(line: 242, column: 26, scope: !239)
!256 = !DILocation(line: 224, column: 16, scope: !67)
!257 = !DILocation(line: 233, column: 3, scope: !67)
!258 = !DILocation(line: 246, column: 1, scope: !67)
!259 = !DILocation(line: 254, column: 20, scope: !76)
!260 = !DILocation(line: 260, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !76, file: !1, line: 260, column: 7)
!262 = !DILocation(line: 260, column: 8, scope: !261)
!263 = !DILocation(line: 260, column: 7, scope: !76)
!264 = !DILocation(line: 265, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !76, file: !1, line: 264, column: 20)
!266 = !DILocation(line: 265, column: 13, scope: !265)
!267 = !DILocation(line: 265, column: 5, scope: !265)
!268 = !DILocation(line: 275, column: 26, scope: !265)
!269 = !DILocation(line: 256, column: 16, scope: !76)
!270 = !DILocation(line: 264, column: 3, scope: !76)
!271 = !DILocation(line: 279, column: 1, scope: !76)
